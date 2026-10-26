# frozen_string_literal: true

# This is generated code!

module Aws::GameLiftStreams
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AddStreamGroupLocationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#AddStreamGroupLocationsInput", name: "AddStreamGroupLocationsInput")
    AddStreamGroupLocationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#AddStreamGroupLocationsOutput", name: "AddStreamGroupLocationsOutput")
    AlwaysOnCapacity = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.gameliftstreams#AlwaysOnCapacity", name: "AlwaysOnCapacity", traits: {"smithy.api#range" => {"min" => 0}})
    ApplicationLogOutputUri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gameliftstreams#ApplicationLogOutputUri", name: "ApplicationLogOutputUri", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^$|^s3://([a-zA-Z0-9][a-zA-Z0-9._-]{1,61}[a-zA-Z0-9])(/[a-zA-Z0-9._-]+)*/?$"})
    ApplicationSourceUri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gameliftstreams#ApplicationSourceUri", name: "ApplicationSourceUri", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ApplicationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gameliftstreams#ApplicationStatus", name: "ApplicationStatus")
    ApplicationStatusReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gameliftstreams#ApplicationStatusReason", name: "ApplicationStatusReason")
    ApplicationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#ApplicationSummary", name: "ApplicationSummary")
    ApplicationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gameliftstreams#ApplicationSummaryList", name: "ApplicationSummaryList")
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gameliftstreams#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:aws:gameliftstreams:([^:\n]*):([0-9]{12}):([^:\n]*)$"})
    ArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gameliftstreams#ArnList", name: "ArnList")
    AssociateApplicationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#AssociateApplicationsInput", name: "AssociateApplicationsInput")
    AssociateApplicationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#AssociateApplicationsOutput", name: "AssociateApplicationsOutput")
    CapacityValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.gameliftstreams#CapacityValue", name: "CapacityValue", traits: {"smithy.api#range" => {"min" => 0}})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gameliftstreams#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 32, "max" => 128}, "smithy.api#pattern" => "^[\\x21-\\x7E]+$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConnectionTimeoutSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.gameliftstreams#ConnectionTimeoutSeconds", name: "ConnectionTimeoutSeconds", traits: {"smithy.api#range" => {"min" => 1, "max" => 3600}})
    CreateApplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#CreateApplicationInput", name: "CreateApplicationInput")
    CreateApplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#CreateApplicationOutput", name: "CreateApplicationOutput")
    CreateStreamGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#CreateStreamGroupInput", name: "CreateStreamGroupInput")
    CreateStreamGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#CreateStreamGroupOutput", name: "CreateStreamGroupOutput")
    CreateStreamSessionAdminShellInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#CreateStreamSessionAdminShellInput", name: "CreateStreamSessionAdminShellInput")
    CreateStreamSessionAdminShellOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#CreateStreamSessionAdminShellOutput", name: "CreateStreamSessionAdminShellOutput")
    CreateStreamSessionConnectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#CreateStreamSessionConnectionInput", name: "CreateStreamSessionConnectionInput")
    CreateStreamSessionConnectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#CreateStreamSessionConnectionOutput", name: "CreateStreamSessionConnectionOutput")
    CreateStreamUrlInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#CreateStreamUrlInput", name: "CreateStreamUrlInput")
    CreateStreamUrlOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#CreateStreamUrlOutput", name: "CreateStreamUrlOutput")
    DefaultApplication = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#DefaultApplication", name: "DefaultApplication")
    DeleteApplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#DeleteApplicationInput", name: "DeleteApplicationInput")
    DeleteStreamGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#DeleteStreamGroupInput", name: "DeleteStreamGroupInput")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gameliftstreams#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 1, "max" => 80}, "smithy.api#pattern" => "^[a-zA-Z0-9-_.!+@/][a-zA-Z0-9-_.!+@/ ]*$"})
    DisassociateApplicationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#DisassociateApplicationsInput", name: "DisassociateApplicationsInput")
    DisassociateApplicationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#DisassociateApplicationsOutput", name: "DisassociateApplicationsOutput")
    DisplayConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#DisplayConfiguration", name: "DisplayConfiguration")
    EnvironmentVariables = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.gameliftstreams#EnvironmentVariables", name: "EnvironmentVariables", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ExecutablePath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gameliftstreams#ExecutablePath", name: "ExecutablePath", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ExportFilesMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#ExportFilesMetadata", name: "ExportFilesMetadata")
    ExportFilesReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gameliftstreams#ExportFilesReason", name: "ExportFilesReason", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    ExportFilesStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gameliftstreams#ExportFilesStatus", name: "ExportFilesStatus")
    ExportStreamSessionFilesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#ExportStreamSessionFilesInput", name: "ExportStreamSessionFilesInput")
    ExportStreamSessionFilesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#ExportStreamSessionFilesOutput", name: "ExportStreamSessionFilesOutput")
    FileLocationUri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gameliftstreams#FileLocationUri", name: "FileLocationUri")
    FilePath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gameliftstreams#FilePath", name: "FilePath", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    FilePaths = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gameliftstreams#FilePaths", name: "FilePaths", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    GameLaunchArgList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gameliftstreams#GameLaunchArgList", name: "GameLaunchArgList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    GetApplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#GetApplicationInput", name: "GetApplicationInput")
    GetApplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#GetApplicationOutput", name: "GetApplicationOutput")
    GetStreamGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#GetStreamGroupInput", name: "GetStreamGroupInput")
    GetStreamGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#GetStreamGroupOutput", name: "GetStreamGroupOutput")
    GetStreamSessionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#GetStreamSessionInput", name: "GetStreamSessionInput")
    GetStreamSessionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#GetStreamSessionOutput", name: "GetStreamSessionOutput")
    GetStreamUrlInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#GetStreamUrlInput", name: "GetStreamUrlInput")
    GetStreamUrlOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#GetStreamUrlOutput", name: "GetStreamUrlOutput")
    IamRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gameliftstreams#IamRoleArn", name: "IamRoleArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[a-zA-Z-]*:iam::\\d{12}:role/.+$", "smithy.api#sensitive" => {}})
    Id = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gameliftstreams#Id", name: "Id", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    Identifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gameliftstreams#Identifier", name: "Identifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(^[a-zA-Z0-9-]+$)|(^arn:aws:gameliftstreams:([^:\n]*):([0-9]{12}):([^:\n]*)$)$"})
    Identifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gameliftstreams#Identifiers", name: "Identifiers", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    Ipv4CidrBlock = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gameliftstreams#Ipv4CidrBlock", name: "Ipv4CidrBlock", traits: {"smithy.api#pattern" => "^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])/([0-9]|[1-2][0-9]|3[0-2])$"})
    Ipv4CidrBlockList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gameliftstreams#Ipv4CidrBlockList", name: "Ipv4CidrBlockList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#uniqueItems" => {}})
    ListApplicationShaderCachesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#ListApplicationShaderCachesInput", name: "ListApplicationShaderCachesInput")
    ListApplicationShaderCachesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#ListApplicationShaderCachesOutput", name: "ListApplicationShaderCachesOutput")
    ListApplicationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#ListApplicationsInput", name: "ListApplicationsInput")
    ListApplicationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#ListApplicationsOutput", name: "ListApplicationsOutput")
    ListStreamGroupsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#ListStreamGroupsInput", name: "ListStreamGroupsInput")
    ListStreamGroupsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#ListStreamGroupsOutput", name: "ListStreamGroupsOutput")
    ListStreamSessionsByAccountInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#ListStreamSessionsByAccountInput", name: "ListStreamSessionsByAccountInput")
    ListStreamSessionsByAccountOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#ListStreamSessionsByAccountOutput", name: "ListStreamSessionsByAccountOutput")
    ListStreamSessionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#ListStreamSessionsInput", name: "ListStreamSessionsInput")
    ListStreamSessionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#ListStreamSessionsOutput", name: "ListStreamSessionsOutput")
    ListStreamUrlsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#ListStreamUrlsInput", name: "ListStreamUrlsInput")
    ListStreamUrlsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#ListStreamUrlsOutput", name: "ListStreamUrlsOutput")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    LocationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#LocationConfiguration", name: "LocationConfiguration")
    LocationConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gameliftstreams#LocationConfigurations", name: "LocationConfigurations", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#uniqueItems" => {}})
    LocationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gameliftstreams#LocationList", name: "LocationList", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#uniqueItems" => {}})
    LocationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gameliftstreams#LocationName", name: "LocationName", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    LocationState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#LocationState", name: "LocationState")
    LocationStates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gameliftstreams#LocationStates", name: "LocationStates")
    LocationsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gameliftstreams#LocationsList", name: "LocationsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.gameliftstreams#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaximumCapacity = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.gameliftstreams#MaximumCapacity", name: "MaximumCapacity", traits: {"smithy.api#range" => {"min" => 0}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gameliftstreams#NextToken", name: "NextToken")
    OnDemandCapacity = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.gameliftstreams#OnDemandCapacity", name: "OnDemandCapacity", traits: {"smithy.api#range" => {"min" => 0}})
    OutputUri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gameliftstreams#OutputUri", name: "OutputUri", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^s3://.*(/|\\.zip|\\.ZIP)$"})
    PerformanceStatsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#PerformanceStatsConfiguration", name: "PerformanceStatsConfiguration")
    Protocol = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gameliftstreams#Protocol", name: "Protocol")
    RemainingUses = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.gameliftstreams#RemainingUses", name: "RemainingUses", traits: {"smithy.api#range" => {"min" => 0}})
    RemoveStreamGroupLocationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#RemoveStreamGroupLocationsInput", name: "RemoveStreamGroupLocationsInput")
    ReplicationStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#ReplicationStatus", name: "ReplicationStatus")
    ReplicationStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gameliftstreams#ReplicationStatusType", name: "ReplicationStatusType")
    ReplicationStatuses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gameliftstreams#ReplicationStatuses", name: "ReplicationStatuses")
    Resolution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#Resolution", name: "Resolution")
    ResolutionHeight = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.gameliftstreams#ResolutionHeight", name: "ResolutionHeight", traits: {"smithy.api#range" => {"min" => 320, "max" => 4096}})
    ResolutionWidth = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.gameliftstreams#ResolutionWidth", name: "ResolutionWidth", traits: {"smithy.api#range" => {"min" => 320, "max" => 4096}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RevocationMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gameliftstreams#RevocationMode", name: "RevocationMode")
    RevokeStreamUrlInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#RevokeStreamUrlInput", name: "RevokeStreamUrlInput")
    RuntimeEnvironment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#RuntimeEnvironment", name: "RuntimeEnvironment")
    RuntimeEnvironmentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gameliftstreams#RuntimeEnvironmentType", name: "RuntimeEnvironmentType")
    RuntimeEnvironmentVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gameliftstreams#RuntimeEnvironmentVersion", name: "RuntimeEnvironmentVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SessionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gameliftstreams#SessionId", name: "SessionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    SessionLengthSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.gameliftstreams#SessionLengthSeconds", name: "SessionLengthSeconds", traits: {"smithy.api#range" => {"min" => 1, "max" => 86400}})
    ShaderCacheStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gameliftstreams#ShaderCacheStatus", name: "ShaderCacheStatus")
    ShaderCacheSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#ShaderCacheSummary", name: "ShaderCacheSummary")
    ShaderCacheSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gameliftstreams#ShaderCacheSummaryList", name: "ShaderCacheSummaryList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    SignalRequest = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gameliftstreams#SignalRequest", name: "SignalRequest", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#sensitive" => {}})
    SignalResponse = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gameliftstreams#SignalResponse", name: "SignalResponse", traits: {"smithy.api#sensitive" => {}})
    StartStreamSessionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#StartStreamSessionInput", name: "StartStreamSessionInput")
    StartStreamSessionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#StartStreamSessionOutput", name: "StartStreamSessionOutput")
    StreamClass = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gameliftstreams#StreamClass", name: "StreamClass")
    StreamGroupLocationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gameliftstreams#StreamGroupLocationStatus", name: "StreamGroupLocationStatus")
    StreamGroupStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gameliftstreams#StreamGroupStatus", name: "StreamGroupStatus")
    StreamGroupStatusReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gameliftstreams#StreamGroupStatusReason", name: "StreamGroupStatusReason")
    StreamGroupSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#StreamGroupSummary", name: "StreamGroupSummary")
    StreamGroupSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gameliftstreams#StreamGroupSummaryList", name: "StreamGroupSummaryList")
    StreamSessionAccessNotReadyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#StreamSessionAccessNotReadyException", name: "StreamSessionAccessNotReadyException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409, "smithy.api#retryable" => {}})
    StreamSessionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gameliftstreams#StreamSessionStatus", name: "StreamSessionStatus")
    StreamSessionStatusReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gameliftstreams#StreamSessionStatusReason", name: "StreamSessionStatusReason")
    StreamSessionStreamUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gameliftstreams#StreamSessionStreamUrl", name: "StreamSessionStreamUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#sensitive" => {}})
    StreamSessionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#StreamSessionSummary", name: "StreamSessionSummary")
    StreamSessionSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gameliftstreams#StreamSessionSummaryList", name: "StreamSessionSummaryList")
    StreamUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gameliftstreams#StreamUrl", name: "StreamUrl")
    StreamUrlStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gameliftstreams#StreamUrlStatus", name: "StreamUrlStatus")
    StreamUrlStatusReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gameliftstreams#StreamUrlStatusReason", name: "StreamUrlStatusReason")
    StreamUrlSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#StreamUrlSummary", name: "StreamUrlSummary")
    StreamUrlSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gameliftstreams#StreamUrlSummaryList", name: "StreamUrlSummaryList")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gameliftstreams#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gameliftstreams#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#TagResourceRequest", name: "TagResourceRequest", traits: {"aws.api#data" => "tagging"})
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gameliftstreams#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.gameliftstreams#Tags", name: "Tags", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TargetIdleCapacity = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.gameliftstreams#TargetIdleCapacity", name: "TargetIdleCapacity", traits: {"smithy.api#range" => {"min" => 0}})
    TerminateStreamSessionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#TerminateStreamSessionInput", name: "TerminateStreamSessionInput")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    TokenValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gameliftstreams#TokenValue", name: "TokenValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#sensitive" => {}})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#UntagResourceRequest", name: "UntagResourceRequest", traits: {"aws.api#data" => "tagging"})
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateApplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#UpdateApplicationInput", name: "UpdateApplicationInput")
    UpdateApplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#UpdateApplicationOutput", name: "UpdateApplicationOutput")
    UpdateStreamGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#UpdateStreamGroupInput", name: "UpdateStreamGroupInput")
    UpdateStreamGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#UpdateStreamGroupOutput", name: "UpdateStreamGroupOutput")
    UrlExpiresAfterMinutes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.gameliftstreams#UrlExpiresAfterMinutes", name: "UrlExpiresAfterMinutes", traits: {"smithy.api#range" => {"min" => 1}})
    UsageLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.gameliftstreams#UsageLimit", name: "UsageLimit", traits: {"smithy.api#range" => {"min" => 1}})
    UserId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gameliftstreams#UserId", name: "UserId", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[-_a-zA-Z0-9/=+]*$"})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VpcId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gameliftstreams#VpcId", name: "VpcId", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    VpcTransitConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#VpcTransitConfiguration", name: "VpcTransitConfiguration")
    VpcTransitConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gameliftstreams#VpcTransitConfigurationResponse", name: "VpcTransitConfigurationResponse")
    WebSdkProtocolUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gameliftstreams#WebSdkProtocolUrl", name: "WebSdkProtocolUrl")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AddStreamGroupLocationsInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Arn"}))
    AddStreamGroupLocationsInput.add_member(:location_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationConfigurations, name: "LocationConfigurations", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    AddStreamGroupLocationsInput.type = Types::AddStreamGroupLocationsInput
    AddStreamGroupLocationsOutput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Identifier", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Arn"}))
    AddStreamGroupLocationsOutput.add_member(:locations, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationStates, name: "Locations", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    AddStreamGroupLocationsOutput.type = Types::AddStreamGroupLocationsOutput
    ApplicationStatus.add_member(:initialized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INITIALIZED", traits: {"smithy.api#enumValue" => "INITIALIZED"}))
    ApplicationStatus.add_member(:processing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROCESSING", traits: {"smithy.api#enumValue" => "PROCESSING"}))
    ApplicationStatus.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READY", traits: {"smithy.api#enumValue" => "READY"}))
    ApplicationStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ApplicationStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    ApplicationStatusReason.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "internalError"}))
    ApplicationStatusReason.add_member(:access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS_DENIED", traits: {"smithy.api#enumValue" => "accessDenied"}))
    ApplicationStatusReason.add_member(:source_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOURCE_MODIFIED", traits: {"smithy.api#enumValue" => "sourceModified"}))
    ApplicationSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Arn", traits: {"smithy.api#required" => {}}))
    ApplicationSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    ApplicationSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    ApplicationSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationStatus, name: "Status"))
    ApplicationSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt"))
    ApplicationSummary.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastUpdatedAt"))
    ApplicationSummary.add_member(:runtime_environment, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeEnvironment, name: "RuntimeEnvironment"))
    ApplicationSummary.type = Types::ApplicationSummary
    ApplicationSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSummary, name: "member"))
    ArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "member"))
    AssociateApplicationsInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Arn"}))
    AssociateApplicationsInput.add_member(:application_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifiers, name: "ApplicationIdentifiers", traits: {"smithy.api#required" => {}}))
    AssociateApplicationsInput.type = Types::AssociateApplicationsInput
    AssociateApplicationsOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    AssociateApplicationsOutput.add_member(:application_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnList, name: "ApplicationArns"))
    AssociateApplicationsOutput.type = Types::AssociateApplicationsOutput
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateApplicationInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description", traits: {"smithy.api#required" => {}}))
    CreateApplicationInput.add_member(:runtime_environment, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeEnvironment, name: "RuntimeEnvironment", traits: {"smithy.api#required" => {}}))
    CreateApplicationInput.add_member(:executable_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutablePath, name: "ExecutablePath", traits: {"smithy.api#required" => {}}))
    CreateApplicationInput.add_member(:application_source_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSourceUri, name: "ApplicationSourceUri", traits: {"smithy.api#required" => {}}))
    CreateApplicationInput.add_member(:application_log_paths, ::Smithy::Schema::Shapes::MemberShape.new(target: FilePaths, name: "ApplicationLogPaths"))
    CreateApplicationInput.add_member(:application_log_output_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationLogOutputUri, name: "ApplicationLogOutputUri"))
    CreateApplicationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    CreateApplicationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateApplicationInput.type = Types::CreateApplicationInput
    CreateApplicationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Arn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Arn"}))
    CreateApplicationOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateApplicationOutput.add_member(:runtime_environment, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeEnvironment, name: "RuntimeEnvironment", traits: {"aws.cloudformation#cfnMutability" => "create-and-read"}))
    CreateApplicationOutput.add_member(:executable_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutablePath, name: "ExecutablePath"))
    CreateApplicationOutput.add_member(:application_log_paths, ::Smithy::Schema::Shapes::MemberShape.new(target: FilePaths, name: "ApplicationLogPaths"))
    CreateApplicationOutput.add_member(:application_log_output_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationLogOutputUri, name: "ApplicationLogOutputUri"))
    CreateApplicationOutput.add_member(:application_source_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSourceUri, name: "ApplicationSourceUri"))
    CreateApplicationOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    CreateApplicationOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationStatus, name: "Status", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    CreateApplicationOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationStatusReason, name: "StatusReason", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    CreateApplicationOutput.add_member(:replication_statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationStatuses, name: "ReplicationStatuses", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    CreateApplicationOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    CreateApplicationOutput.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastUpdatedAt", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    CreateApplicationOutput.add_member(:associated_stream_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnList, name: "AssociatedStreamGroups", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    CreateApplicationOutput.type = Types::CreateApplicationOutput
    CreateStreamGroupInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description", traits: {"smithy.api#required" => {}}))
    CreateStreamGroupInput.add_member(:stream_class, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamClass, name: "StreamClass", traits: {"smithy.api#required" => {}}))
    CreateStreamGroupInput.add_member(:default_application_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "DefaultApplicationIdentifier", traits: {"smithy.api#notProperty" => {}}))
    CreateStreamGroupInput.add_member(:location_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationConfigurations, name: "LocationConfigurations", traits: {"smithy.api#notProperty" => {}}))
    CreateStreamGroupInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"aws.cloudformation#cfnMutability" => "full"}))
    CreateStreamGroupInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateStreamGroupInput.type = Types::CreateStreamGroupInput
    CreateStreamGroupOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Arn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Arn"}))
    CreateStreamGroupOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateStreamGroupOutput.add_member(:default_application, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultApplication, name: "DefaultApplication", traits: {"aws.cloudformation#cfnMutability" => "create-and-read"}))
    CreateStreamGroupOutput.add_member(:location_states, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationStates, name: "LocationStates", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    CreateStreamGroupOutput.add_member(:stream_class, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamClass, name: "StreamClass", traits: {"aws.cloudformation#cfnMutability" => "create-and-read"}))
    CreateStreamGroupOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    CreateStreamGroupOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamGroupStatus, name: "Status", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    CreateStreamGroupOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamGroupStatusReason, name: "StatusReason", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    CreateStreamGroupOutput.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastUpdatedAt", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    CreateStreamGroupOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    CreateStreamGroupOutput.add_member(:expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ExpiresAt", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    CreateStreamGroupOutput.add_member(:associated_applications, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnList, name: "AssociatedApplications", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    CreateStreamGroupOutput.type = Types::CreateStreamGroupOutput
    CreateStreamSessionAdminShellInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateStreamSessionAdminShellInput.add_member(:stream_session_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "StreamSessionIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateStreamSessionAdminShellInput.type = Types::CreateStreamSessionAdminShellInput
    CreateStreamSessionAdminShellOutput.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "SessionId"))
    CreateStreamSessionAdminShellOutput.add_member(:stream_url, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamUrl, name: "StreamUrl"))
    CreateStreamSessionAdminShellOutput.add_member(:token_value, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenValue, name: "TokenValue"))
    CreateStreamSessionAdminShellOutput.type = Types::CreateStreamSessionAdminShellOutput
    CreateStreamSessionConnectionInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateStreamSessionConnectionInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateStreamSessionConnectionInput.add_member(:stream_session_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "StreamSessionIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateStreamSessionConnectionInput.add_member(:signal_request, ::Smithy::Schema::Shapes::MemberShape.new(target: SignalRequest, name: "SignalRequest", traits: {"smithy.api#required" => {}}))
    CreateStreamSessionConnectionInput.type = Types::CreateStreamSessionConnectionInput
    CreateStreamSessionConnectionOutput.add_member(:signal_response, ::Smithy::Schema::Shapes::MemberShape.new(target: SignalResponse, name: "SignalResponse"))
    CreateStreamSessionConnectionOutput.type = Types::CreateStreamSessionConnectionOutput
    CreateStreamUrlInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateStreamUrlInput.add_member(:application_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "ApplicationIdentifier", traits: {"smithy.api#required" => {}}))
    CreateStreamUrlInput.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, name: "Protocol", traits: {"smithy.api#required" => {}}))
    CreateStreamUrlInput.add_member(:url_expires_after_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: UrlExpiresAfterMinutes, name: "UrlExpiresAfterMinutes", traits: {"smithy.api#required" => {}}))
    CreateStreamUrlInput.add_member(:usage_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageLimit, name: "UsageLimit"))
    CreateStreamUrlInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateStreamUrlInput.add_member(:locations, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationList, name: "Locations", traits: {"smithy.api#required" => {}}))
    CreateStreamUrlInput.add_member(:session_length_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionLengthSeconds, name: "SessionLengthSeconds"))
    CreateStreamUrlInput.add_member(:additional_launch_args, ::Smithy::Schema::Shapes::MemberShape.new(target: GameLaunchArgList, name: "AdditionalLaunchArgs"))
    CreateStreamUrlInput.add_member(:additional_environment_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariables, name: "AdditionalEnvironmentVariables"))
    CreateStreamUrlInput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "RoleArn"))
    CreateStreamUrlInput.add_member(:display_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayConfiguration, name: "DisplayConfiguration"))
    CreateStreamUrlInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateStreamUrlInput.type = Types::CreateStreamUrlInput
    CreateStreamUrlOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn", traits: {"smithy.api#required" => {}}))
    CreateStreamUrlOutput.add_member(:stream_url_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "StreamUrlId"))
    CreateStreamUrlOutput.add_member(:stream_url, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamSessionStreamUrl, name: "StreamUrl"))
    CreateStreamUrlOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamUrlStatus, name: "Status"))
    CreateStreamUrlOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamUrlStatusReason, name: "StatusReason"))
    CreateStreamUrlOutput.add_member(:expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ExpiresAt"))
    CreateStreamUrlOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt"))
    CreateStreamUrlOutput.add_member(:usage_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageLimit, name: "UsageLimit"))
    CreateStreamUrlOutput.add_member(:remaining_uses, ::Smithy::Schema::Shapes::MemberShape.new(target: RemainingUses, name: "RemainingUses"))
    CreateStreamUrlOutput.add_member(:stream_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "StreamGroupArn"))
    CreateStreamUrlOutput.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ApplicationArn"))
    CreateStreamUrlOutput.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, name: "Protocol"))
    CreateStreamUrlOutput.add_member(:locations, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationList, name: "Locations"))
    CreateStreamUrlOutput.add_member(:session_length_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionLengthSeconds, name: "SessionLengthSeconds"))
    CreateStreamUrlOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateStreamUrlOutput.add_member(:additional_launch_args, ::Smithy::Schema::Shapes::MemberShape.new(target: GameLaunchArgList, name: "AdditionalLaunchArgs"))
    CreateStreamUrlOutput.add_member(:additional_environment_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariables, name: "AdditionalEnvironmentVariables"))
    CreateStreamUrlOutput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "RoleArn"))
    CreateStreamUrlOutput.add_member(:display_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayConfiguration, name: "DisplayConfiguration"))
    CreateStreamUrlOutput.type = Types::CreateStreamUrlOutput
    DefaultApplication.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    DefaultApplication.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    DefaultApplication.type = Types::DefaultApplication
    DeleteApplicationInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Arn"}))
    DeleteApplicationInput.type = Types::DeleteApplicationInput
    DeleteStreamGroupInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Arn"}))
    DeleteStreamGroupInput.type = Types::DeleteStreamGroupInput
    DisassociateApplicationsInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Arn"}))
    DisassociateApplicationsInput.add_member(:application_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifiers, name: "ApplicationIdentifiers", traits: {"smithy.api#required" => {}}))
    DisassociateApplicationsInput.type = Types::DisassociateApplicationsInput
    DisassociateApplicationsOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    DisassociateApplicationsOutput.add_member(:application_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnList, name: "ApplicationArns"))
    DisassociateApplicationsOutput.type = Types::DisassociateApplicationsOutput
    DisplayConfiguration.add_member(:resolution, ::Smithy::Schema::Shapes::MemberShape.new(target: Resolution, name: "Resolution"))
    DisplayConfiguration.type = Types::DisplayConfiguration
    EnvironmentVariables.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[_a-zA-Z][_a-zA-Z0-9]*$"}))
    EnvironmentVariables.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}}))
    ExportFilesMetadata.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportFilesStatus, name: "Status"))
    ExportFilesMetadata.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportFilesReason, name: "StatusReason"))
    ExportFilesMetadata.add_member(:output_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputUri, name: "OutputUri"))
    ExportFilesMetadata.type = Types::ExportFilesMetadata
    ExportFilesStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    ExportFilesStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ExportFilesStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    ExportStreamSessionFilesInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ExportStreamSessionFilesInput.add_member(:stream_session_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "StreamSessionIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ExportStreamSessionFilesInput.add_member(:output_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputUri, name: "OutputUri", traits: {"smithy.api#required" => {}}))
    ExportStreamSessionFilesInput.type = Types::ExportStreamSessionFilesInput
    ExportStreamSessionFilesOutput.type = Types::ExportStreamSessionFilesOutput
    FilePaths.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FilePath, name: "member"))
    GameLaunchArgList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    GetApplicationInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Arn"}))
    GetApplicationInput.type = Types::GetApplicationInput
    GetApplicationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Arn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Arn"}))
    GetApplicationOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    GetApplicationOutput.add_member(:runtime_environment, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeEnvironment, name: "RuntimeEnvironment", traits: {"aws.cloudformation#cfnMutability" => "create-and-read"}))
    GetApplicationOutput.add_member(:executable_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutablePath, name: "ExecutablePath"))
    GetApplicationOutput.add_member(:application_log_paths, ::Smithy::Schema::Shapes::MemberShape.new(target: FilePaths, name: "ApplicationLogPaths"))
    GetApplicationOutput.add_member(:application_log_output_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationLogOutputUri, name: "ApplicationLogOutputUri"))
    GetApplicationOutput.add_member(:application_source_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSourceUri, name: "ApplicationSourceUri"))
    GetApplicationOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    GetApplicationOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationStatus, name: "Status", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetApplicationOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationStatusReason, name: "StatusReason", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetApplicationOutput.add_member(:replication_statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationStatuses, name: "ReplicationStatuses", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetApplicationOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetApplicationOutput.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastUpdatedAt", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetApplicationOutput.add_member(:associated_stream_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnList, name: "AssociatedStreamGroups", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetApplicationOutput.type = Types::GetApplicationOutput
    GetStreamGroupInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Arn"}))
    GetStreamGroupInput.type = Types::GetStreamGroupInput
    GetStreamGroupOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Arn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Arn"}))
    GetStreamGroupOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    GetStreamGroupOutput.add_member(:default_application, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultApplication, name: "DefaultApplication", traits: {"aws.cloudformation#cfnMutability" => "create-and-read"}))
    GetStreamGroupOutput.add_member(:location_states, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationStates, name: "LocationStates", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetStreamGroupOutput.add_member(:stream_class, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamClass, name: "StreamClass", traits: {"aws.cloudformation#cfnMutability" => "create-and-read"}))
    GetStreamGroupOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    GetStreamGroupOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamGroupStatus, name: "Status", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetStreamGroupOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamGroupStatusReason, name: "StatusReason", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetStreamGroupOutput.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastUpdatedAt", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetStreamGroupOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetStreamGroupOutput.add_member(:expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ExpiresAt", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetStreamGroupOutput.add_member(:associated_applications, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnList, name: "AssociatedApplications", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetStreamGroupOutput.type = Types::GetStreamGroupOutput
    GetStreamSessionInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStreamSessionInput.add_member(:stream_session_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "StreamSessionIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStreamSessionInput.type = Types::GetStreamSessionInput
    GetStreamSessionOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    GetStreamSessionOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    GetStreamSessionOutput.add_member(:stream_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "StreamGroupId"))
    GetStreamSessionOutput.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "UserId"))
    GetStreamSessionOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamSessionStatus, name: "Status"))
    GetStreamSessionOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamSessionStatusReason, name: "StatusReason"))
    GetStreamSessionOutput.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, name: "Protocol"))
    GetStreamSessionOutput.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationName, name: "Location"))
    GetStreamSessionOutput.add_member(:signal_request, ::Smithy::Schema::Shapes::MemberShape.new(target: SignalRequest, name: "SignalRequest"))
    GetStreamSessionOutput.add_member(:signal_response, ::Smithy::Schema::Shapes::MemberShape.new(target: SignalResponse, name: "SignalResponse"))
    GetStreamSessionOutput.add_member(:connection_timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionTimeoutSeconds, name: "ConnectionTimeoutSeconds"))
    GetStreamSessionOutput.add_member(:session_length_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionLengthSeconds, name: "SessionLengthSeconds"))
    GetStreamSessionOutput.add_member(:additional_launch_args, ::Smithy::Schema::Shapes::MemberShape.new(target: GameLaunchArgList, name: "AdditionalLaunchArgs"))
    GetStreamSessionOutput.add_member(:additional_environment_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariables, name: "AdditionalEnvironmentVariables"))
    GetStreamSessionOutput.add_member(:performance_stats_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceStatsConfiguration, name: "PerformanceStatsConfiguration"))
    GetStreamSessionOutput.add_member(:log_file_location_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: FileLocationUri, name: "LogFileLocationUri"))
    GetStreamSessionOutput.add_member(:web_sdk_protocol_url, ::Smithy::Schema::Shapes::MemberShape.new(target: WebSdkProtocolUrl, name: "WebSdkProtocolUrl"))
    GetStreamSessionOutput.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastUpdatedAt"))
    GetStreamSessionOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt"))
    GetStreamSessionOutput.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ApplicationArn"))
    GetStreamSessionOutput.add_member(:export_files_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportFilesMetadata, name: "ExportFilesMetadata"))
    GetStreamSessionOutput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "RoleArn"))
    GetStreamSessionOutput.add_member(:display_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayConfiguration, name: "DisplayConfiguration"))
    GetStreamSessionOutput.type = Types::GetStreamSessionOutput
    GetStreamUrlInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStreamUrlInput.add_member(:stream_url_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "StreamUrlIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStreamUrlInput.type = Types::GetStreamUrlInput
    GetStreamUrlOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn", traits: {"smithy.api#required" => {}}))
    GetStreamUrlOutput.add_member(:stream_url_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "StreamUrlId"))
    GetStreamUrlOutput.add_member(:stream_url, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamSessionStreamUrl, name: "StreamUrl"))
    GetStreamUrlOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamUrlStatus, name: "Status"))
    GetStreamUrlOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamUrlStatusReason, name: "StatusReason"))
    GetStreamUrlOutput.add_member(:expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ExpiresAt"))
    GetStreamUrlOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt"))
    GetStreamUrlOutput.add_member(:usage_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageLimit, name: "UsageLimit"))
    GetStreamUrlOutput.add_member(:remaining_uses, ::Smithy::Schema::Shapes::MemberShape.new(target: RemainingUses, name: "RemainingUses"))
    GetStreamUrlOutput.add_member(:stream_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "StreamGroupArn"))
    GetStreamUrlOutput.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ApplicationArn"))
    GetStreamUrlOutput.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, name: "Protocol"))
    GetStreamUrlOutput.add_member(:locations, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationList, name: "Locations"))
    GetStreamUrlOutput.add_member(:session_length_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionLengthSeconds, name: "SessionLengthSeconds"))
    GetStreamUrlOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    GetStreamUrlOutput.add_member(:additional_launch_args, ::Smithy::Schema::Shapes::MemberShape.new(target: GameLaunchArgList, name: "AdditionalLaunchArgs"))
    GetStreamUrlOutput.add_member(:additional_environment_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariables, name: "AdditionalEnvironmentVariables"))
    GetStreamUrlOutput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "RoleArn"))
    GetStreamUrlOutput.add_member(:display_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayConfiguration, name: "DisplayConfiguration"))
    GetStreamUrlOutput.add_member(:stream_sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamSessionSummaryList, name: "StreamSessions"))
    GetStreamUrlOutput.type = Types::GetStreamUrlOutput
    Identifiers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "member"))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    Ipv4CidrBlockList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv4CidrBlock, name: "member"))
    ListApplicationShaderCachesInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Arn"}))
    ListApplicationShaderCachesInput.type = Types::ListApplicationShaderCachesInput
    ListApplicationShaderCachesOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ShaderCacheSummaryList, name: "Items"))
    ListApplicationShaderCachesOutput.type = Types::ListApplicationShaderCachesOutput
    ListApplicationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListApplicationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListApplicationsInput.type = Types::ListApplicationsInput
    ListApplicationsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSummaryList, name: "Items"))
    ListApplicationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListApplicationsOutput.type = Types::ListApplicationsOutput
    ListStreamGroupsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListStreamGroupsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListStreamGroupsInput.type = Types::ListStreamGroupsInput
    ListStreamGroupsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamGroupSummaryList, name: "Items"))
    ListStreamGroupsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListStreamGroupsOutput.type = Types::ListStreamGroupsOutput
    ListStreamSessionsByAccountInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamSessionStatus, name: "Status", traits: {"smithy.api#httpQuery" => "Status"}))
    ListStreamSessionsByAccountInput.add_member(:export_files_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportFilesStatus, name: "ExportFilesStatus", traits: {"smithy.api#httpQuery" => "ExportFilesStatus"}))
    ListStreamSessionsByAccountInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListStreamSessionsByAccountInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListStreamSessionsByAccountInput.type = Types::ListStreamSessionsByAccountInput
    ListStreamSessionsByAccountOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamSessionSummaryList, name: "Items"))
    ListStreamSessionsByAccountOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListStreamSessionsByAccountOutput.type = Types::ListStreamSessionsByAccountOutput
    ListStreamSessionsInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamSessionStatus, name: "Status", traits: {"smithy.api#httpQuery" => "Status"}))
    ListStreamSessionsInput.add_member(:export_files_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportFilesStatus, name: "ExportFilesStatus", traits: {"smithy.api#httpQuery" => "ExportFilesStatus"}))
    ListStreamSessionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListStreamSessionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListStreamSessionsInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListStreamSessionsInput.type = Types::ListStreamSessionsInput
    ListStreamSessionsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamSessionSummaryList, name: "Items"))
    ListStreamSessionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListStreamSessionsOutput.type = Types::ListStreamSessionsOutput
    ListStreamUrlsInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamUrlStatus, name: "Status", traits: {"smithy.api#httpQuery" => "Status"}))
    ListStreamUrlsInput.add_member(:stream_group_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "StreamGroupIdentifier", traits: {"smithy.api#httpQuery" => "StreamGroupIdentifier"}))
    ListStreamUrlsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListStreamUrlsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListStreamUrlsInput.type = Types::ListStreamUrlsInput
    ListStreamUrlsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamUrlSummaryList, name: "Items"))
    ListStreamUrlsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListStreamUrlsOutput.type = Types::ListStreamUrlsOutput
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LocationConfiguration.add_member(:location_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationName, name: "LocationName", traits: {"smithy.api#required" => {}}))
    LocationConfiguration.add_member(:always_on_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: AlwaysOnCapacity, name: "AlwaysOnCapacity"))
    LocationConfiguration.add_member(:on_demand_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: OnDemandCapacity, name: "OnDemandCapacity", traits: {"smithy.api#deprecated" => {"message" => "This input field is deprecated in favor of explicit MaximumCapacity values.", "since" => "2025-12-17"}}))
    LocationConfiguration.add_member(:target_idle_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetIdleCapacity, name: "TargetIdleCapacity"))
    LocationConfiguration.add_member(:maximum_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumCapacity, name: "MaximumCapacity"))
    LocationConfiguration.add_member(:vpc_transit_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcTransitConfiguration, name: "VpcTransitConfiguration"))
    LocationConfiguration.type = Types::LocationConfiguration
    LocationConfigurations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationConfiguration, name: "member"))
    LocationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationName, name: "member"))
    LocationState.add_member(:location_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationName, name: "LocationName"))
    LocationState.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamGroupLocationStatus, name: "Status", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    LocationState.add_member(:always_on_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: AlwaysOnCapacity, name: "AlwaysOnCapacity", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    LocationState.add_member(:on_demand_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: OnDemandCapacity, name: "OnDemandCapacity", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    LocationState.add_member(:target_idle_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetIdleCapacity, name: "TargetIdleCapacity", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    LocationState.add_member(:maximum_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumCapacity, name: "MaximumCapacity", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    LocationState.add_member(:requested_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityValue, name: "RequestedCapacity", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    LocationState.add_member(:allocated_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityValue, name: "AllocatedCapacity", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    LocationState.add_member(:idle_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityValue, name: "IdleCapacity", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    LocationState.add_member(:internal_vpc_ipv4_cidr_block, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv4CidrBlock, name: "InternalVpcIpv4CidrBlock", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    LocationState.add_member(:vpc_transit_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcTransitConfigurationResponse, name: "VpcTransitConfiguration", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    LocationState.type = Types::LocationState
    LocationStates.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationState, name: "member"))
    LocationsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    PerformanceStatsConfiguration.add_member(:shared_with_client, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "SharedWithClient"))
    PerformanceStatsConfiguration.type = Types::PerformanceStatsConfiguration
    Protocol.add_member(:webrtc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WEBRTC", traits: {"smithy.api#enumValue" => "WebRTC"}))
    RemoveStreamGroupLocationsInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Arn"}))
    RemoveStreamGroupLocationsInput.add_member(:locations, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationsList, name: "Locations", traits: {"smithy.api#httpQuery" => "locations", "smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    RemoveStreamGroupLocationsInput.type = Types::RemoveStreamGroupLocationsInput
    ReplicationStatus.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationName, name: "Location"))
    ReplicationStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationStatusType, name: "Status"))
    ReplicationStatus.type = Types::ReplicationStatus
    ReplicationStatusType.add_member(:replicating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPLICATING", traits: {"smithy.api#enumValue" => "REPLICATING"}))
    ReplicationStatusType.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ReplicationStatuses.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationStatus, name: "member"))
    Resolution.add_member(:width, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolutionWidth, name: "Width", traits: {"smithy.api#required" => {}}))
    Resolution.add_member(:height, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolutionHeight, name: "Height", traits: {"smithy.api#required" => {}}))
    Resolution.type = Types::Resolution
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RevocationMode.add_member(:revoke_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REVOKE_URL", traits: {"smithy.api#enumValue" => "REVOKE_URL"}))
    RevocationMode.add_member(:revoke_and_terminate_sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REVOKE_AND_TERMINATE_SESSIONS", traits: {"smithy.api#enumValue" => "REVOKE_AND_TERMINATE_SESSIONS"}))
    RevokeStreamUrlInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RevokeStreamUrlInput.add_member(:stream_url_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "StreamUrlIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RevokeStreamUrlInput.add_member(:revocation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: RevocationMode, name: "RevocationMode"))
    RevokeStreamUrlInput.type = Types::RevokeStreamUrlInput
    RuntimeEnvironment.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeEnvironmentType, name: "Type", traits: {"smithy.api#required" => {}}))
    RuntimeEnvironment.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeEnvironmentVersion, name: "Version", traits: {"smithy.api#required" => {}}))
    RuntimeEnvironment.type = Types::RuntimeEnvironment
    RuntimeEnvironmentType.add_member(:proton, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROTON", traits: {"smithy.api#enumValue" => "PROTON"}))
    RuntimeEnvironmentType.add_member(:windows, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WINDOWS", traits: {"smithy.api#enumValue" => "WINDOWS"}))
    RuntimeEnvironmentType.add_member(:ubuntu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UBUNTU", traits: {"smithy.api#enumValue" => "UBUNTU"}))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ShaderCacheStatus.add_member(:initialized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INITIALIZED", traits: {"smithy.api#enumValue" => "INITIALIZED"}))
    ShaderCacheStatus.add_member(:processing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROCESSING", traits: {"smithy.api#enumValue" => "PROCESSING"}))
    ShaderCacheStatus.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READY", traits: {"smithy.api#enumValue" => "READY"}))
    ShaderCacheStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ShaderCacheStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    ShaderCacheSummary.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    ShaderCacheSummary.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ApplicationArn", traits: {"smithy.api#required" => {}}))
    ShaderCacheSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ShaderCacheStatus, name: "Status"))
    ShaderCacheSummary.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastUpdatedAt"))
    ShaderCacheSummary.add_member(:storage_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "StorageBytes"))
    ShaderCacheSummary.add_member(:associated_stream_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnList, name: "AssociatedStreamGroups"))
    ShaderCacheSummary.type = Types::ShaderCacheSummary
    ShaderCacheSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ShaderCacheSummary, name: "member"))
    StartStreamSessionInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartStreamSessionInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    StartStreamSessionInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartStreamSessionInput.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, name: "Protocol", traits: {"smithy.api#required" => {}}))
    StartStreamSessionInput.add_member(:signal_request, ::Smithy::Schema::Shapes::MemberShape.new(target: SignalRequest, name: "SignalRequest", traits: {"smithy.api#required" => {}}))
    StartStreamSessionInput.add_member(:application_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "ApplicationIdentifier", traits: {"smithy.api#required" => {}}))
    StartStreamSessionInput.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "UserId"))
    StartStreamSessionInput.add_member(:locations, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationList, name: "Locations"))
    StartStreamSessionInput.add_member(:connection_timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionTimeoutSeconds, name: "ConnectionTimeoutSeconds"))
    StartStreamSessionInput.add_member(:session_length_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionLengthSeconds, name: "SessionLengthSeconds"))
    StartStreamSessionInput.add_member(:additional_launch_args, ::Smithy::Schema::Shapes::MemberShape.new(target: GameLaunchArgList, name: "AdditionalLaunchArgs"))
    StartStreamSessionInput.add_member(:additional_environment_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariables, name: "AdditionalEnvironmentVariables"))
    StartStreamSessionInput.add_member(:performance_stats_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceStatsConfiguration, name: "PerformanceStatsConfiguration"))
    StartStreamSessionInput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "RoleArn"))
    StartStreamSessionInput.add_member(:display_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayConfiguration, name: "DisplayConfiguration"))
    StartStreamSessionInput.type = Types::StartStreamSessionInput
    StartStreamSessionOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    StartStreamSessionOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    StartStreamSessionOutput.add_member(:stream_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "StreamGroupId"))
    StartStreamSessionOutput.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "UserId"))
    StartStreamSessionOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamSessionStatus, name: "Status"))
    StartStreamSessionOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamSessionStatusReason, name: "StatusReason"))
    StartStreamSessionOutput.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, name: "Protocol"))
    StartStreamSessionOutput.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationName, name: "Location"))
    StartStreamSessionOutput.add_member(:signal_request, ::Smithy::Schema::Shapes::MemberShape.new(target: SignalRequest, name: "SignalRequest"))
    StartStreamSessionOutput.add_member(:signal_response, ::Smithy::Schema::Shapes::MemberShape.new(target: SignalResponse, name: "SignalResponse"))
    StartStreamSessionOutput.add_member(:connection_timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionTimeoutSeconds, name: "ConnectionTimeoutSeconds"))
    StartStreamSessionOutput.add_member(:session_length_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionLengthSeconds, name: "SessionLengthSeconds"))
    StartStreamSessionOutput.add_member(:additional_launch_args, ::Smithy::Schema::Shapes::MemberShape.new(target: GameLaunchArgList, name: "AdditionalLaunchArgs"))
    StartStreamSessionOutput.add_member(:additional_environment_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariables, name: "AdditionalEnvironmentVariables"))
    StartStreamSessionOutput.add_member(:performance_stats_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceStatsConfiguration, name: "PerformanceStatsConfiguration"))
    StartStreamSessionOutput.add_member(:log_file_location_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: FileLocationUri, name: "LogFileLocationUri"))
    StartStreamSessionOutput.add_member(:web_sdk_protocol_url, ::Smithy::Schema::Shapes::MemberShape.new(target: WebSdkProtocolUrl, name: "WebSdkProtocolUrl"))
    StartStreamSessionOutput.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastUpdatedAt"))
    StartStreamSessionOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt"))
    StartStreamSessionOutput.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ApplicationArn"))
    StartStreamSessionOutput.add_member(:export_files_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportFilesMetadata, name: "ExportFilesMetadata"))
    StartStreamSessionOutput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "RoleArn"))
    StartStreamSessionOutput.add_member(:display_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayConfiguration, name: "DisplayConfiguration"))
    StartStreamSessionOutput.type = Types::StartStreamSessionOutput
    StreamClass.add_member(:gen4n_high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "gen4n_high", traits: {"smithy.api#enumValue" => "gen4n_high"}))
    StreamClass.add_member(:gen4n_ultra, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "gen4n_ultra", traits: {"smithy.api#enumValue" => "gen4n_ultra"}))
    StreamClass.add_member(:gen4n_win2022, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "gen4n_win2022", traits: {"smithy.api#enumValue" => "gen4n_win2022"}))
    StreamClass.add_member(:gen5n_high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "gen5n_high", traits: {"smithy.api#enumValue" => "gen5n_high"}))
    StreamClass.add_member(:gen5n_ultra, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "gen5n_ultra", traits: {"smithy.api#enumValue" => "gen5n_ultra"}))
    StreamClass.add_member(:gen5n_win2022, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "gen5n_win2022", traits: {"smithy.api#enumValue" => "gen5n_win2022"}))
    StreamClass.add_member(:gen6n_small, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "gen6n_small", traits: {"smithy.api#enumValue" => "gen6n_small"}))
    StreamClass.add_member(:gen6n_medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "gen6n_medium", traits: {"smithy.api#enumValue" => "gen6n_medium"}))
    StreamClass.add_member(:gen6n_high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "gen6n_high", traits: {"smithy.api#enumValue" => "gen6n_high"}))
    StreamClass.add_member(:gen6n_ultra, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "gen6n_ultra", traits: {"smithy.api#enumValue" => "gen6n_ultra"}))
    StreamClass.add_member(:gen6n_ultra_win2022, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "gen6n_ultra_win2022", traits: {"smithy.api#enumValue" => "gen6n_ultra_win2022"}))
    StreamClass.add_member(:gen6n_pro, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "gen6n_pro", traits: {"smithy.api#enumValue" => "gen6n_pro"}))
    StreamClass.add_member(:gen6n_pro_win2022, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "gen6n_pro_win2022", traits: {"smithy.api#enumValue" => "gen6n_pro_win2022"}))
    StreamClass.add_member(:gen6n_small_win2022, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "gen6n_small_win2022", traits: {"smithy.api#enumValue" => "gen6n_small_win2022"}))
    StreamClass.add_member(:gen6n_medium_win2022, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "gen6n_medium_win2022", traits: {"smithy.api#enumValue" => "gen6n_medium_win2022"}))
    StreamClass.add_member(:gen6e_pro, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "gen6e_pro", traits: {"smithy.api#enumValue" => "gen6e_pro"}))
    StreamClass.add_member(:gen6e_pro_win2022, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "gen6e_pro_win2022", traits: {"smithy.api#enumValue" => "gen6e_pro_win2022"}))
    StreamGroupLocationStatus.add_member(:activating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVATING", traits: {"smithy.api#enumValue" => "ACTIVATING"}))
    StreamGroupLocationStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    StreamGroupLocationStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    StreamGroupLocationStatus.add_member(:removing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REMOVING", traits: {"smithy.api#enumValue" => "REMOVING"}))
    StreamGroupStatus.add_member(:activating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVATING", traits: {"smithy.api#enumValue" => "ACTIVATING"}))
    StreamGroupStatus.add_member(:updating_locations, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING_LOCATIONS", traits: {"smithy.api#enumValue" => "UPDATING_LOCATIONS"}))
    StreamGroupStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    StreamGroupStatus.add_member(:active_with_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE_WITH_ERRORS", traits: {"smithy.api#enumValue" => "ACTIVE_WITH_ERRORS"}))
    StreamGroupStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    StreamGroupStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    StreamGroupStatus.add_member(:expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPIRED", traits: {"smithy.api#enumValue" => "EXPIRED"}))
    StreamGroupStatusReason.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "internalError"}))
    StreamGroupStatusReason.add_member(:no_available_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_AVAILABLE_INSTANCES", traits: {"smithy.api#enumValue" => "noAvailableInstances"}))
    StreamGroupSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Arn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Arn"}))
    StreamGroupSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    StreamGroupSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    StreamGroupSummary.add_member(:default_application, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultApplication, name: "DefaultApplication"))
    StreamGroupSummary.add_member(:stream_class, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamClass, name: "StreamClass"))
    StreamGroupSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamGroupStatus, name: "Status"))
    StreamGroupSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt"))
    StreamGroupSummary.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastUpdatedAt"))
    StreamGroupSummary.add_member(:expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ExpiresAt"))
    StreamGroupSummary.type = Types::StreamGroupSummary
    StreamGroupSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamGroupSummary, name: "member"))
    StreamSessionAccessNotReadyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    StreamSessionAccessNotReadyException.type = Types::StreamSessionAccessNotReadyException
    StreamSessionStatus.add_member(:activating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVATING", traits: {"smithy.api#enumValue" => "ACTIVATING"}))
    StreamSessionStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    StreamSessionStatus.add_member(:connected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONNECTED", traits: {"smithy.api#enumValue" => "CONNECTED"}))
    StreamSessionStatus.add_member(:pending_client_reconnection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_CLIENT_RECONNECTION", traits: {"smithy.api#enumValue" => "PENDING_CLIENT_RECONNECTION"}))
    StreamSessionStatus.add_member(:reconnecting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECONNECTING", traits: {"smithy.api#enumValue" => "RECONNECTING"}))
    StreamSessionStatus.add_member(:terminating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATING", traits: {"smithy.api#enumValue" => "TERMINATING"}))
    StreamSessionStatus.add_member(:terminated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATED", traits: {"smithy.api#enumValue" => "TERMINATED"}))
    StreamSessionStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    StreamSessionStatusReason.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "internalError"}))
    StreamSessionStatusReason.add_member(:invalid_signal_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_SIGNAL_REQUEST", traits: {"smithy.api#enumValue" => "invalidSignalRequest"}))
    StreamSessionStatusReason.add_member(:placement_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PLACEMENT_TIMEOUT", traits: {"smithy.api#enumValue" => "placementTimeout"}))
    StreamSessionStatusReason.add_member(:app_log_s3_destination_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APP_LOG_S3_DESTINATION_ERROR", traits: {"smithy.api#enumValue" => "applicationLogS3DestinationError"}))
    StreamSessionStatusReason.add_member(:assume_role_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASSUME_ROLE_FAILED", traits: {"smithy.api#enumValue" => "assumeRoleFailed"}))
    StreamSessionStatusReason.add_member(:application_exit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPLICATION_EXIT", traits: {"smithy.api#enumValue" => "applicationExit"}))
    StreamSessionStatusReason.add_member(:connection_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONNECTION_TIMEOUT", traits: {"smithy.api#enumValue" => "connectionTimeout"}))
    StreamSessionStatusReason.add_member(:reconnection_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECONNECTION_TIMEOUT", traits: {"smithy.api#enumValue" => "reconnectionTimeout"}))
    StreamSessionStatusReason.add_member(:max_session_length_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAX_SESSION_LENGTH_TIMEOUT", traits: {"smithy.api#enumValue" => "maxSessionLengthTimeout"}))
    StreamSessionStatusReason.add_member(:idle_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IDLE_TIMEOUT", traits: {"smithy.api#enumValue" => "idleTimeout"}))
    StreamSessionStatusReason.add_member(:api_terminated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "API_TERMINATED", traits: {"smithy.api#enumValue" => "apiTerminated"}))
    StreamSessionSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    StreamSessionSummary.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "UserId"))
    StreamSessionSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamSessionStatus, name: "Status"))
    StreamSessionSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamSessionStatusReason, name: "StatusReason"))
    StreamSessionSummary.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, name: "Protocol"))
    StreamSessionSummary.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastUpdatedAt"))
    StreamSessionSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt"))
    StreamSessionSummary.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ApplicationArn"))
    StreamSessionSummary.add_member(:export_files_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportFilesMetadata, name: "ExportFilesMetadata"))
    StreamSessionSummary.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationName, name: "Location"))
    StreamSessionSummary.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "RoleArn"))
    StreamSessionSummary.type = Types::StreamSessionSummary
    StreamSessionSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamSessionSummary, name: "member"))
    StreamUrlStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    StreamUrlStatus.add_member(:expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPIRED", traits: {"smithy.api#enumValue" => "EXPIRED"}))
    StreamUrlStatus.add_member(:revoked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REVOKED", traits: {"smithy.api#enumValue" => "REVOKED"}))
    StreamUrlStatus.add_member(:limit_reached, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LIMIT_REACHED", traits: {"smithy.api#enumValue" => "LIMIT_REACHED"}))
    StreamUrlStatusReason.add_member(:user_revoked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER_REVOKED", traits: {"smithy.api#enumValue" => "userRevoked"}))
    StreamUrlStatusReason.add_member(:revoked_and_terminating_sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REVOKED_AND_TERMINATING_SESSIONS", traits: {"smithy.api#enumValue" => "revokedAndTerminatingSessions"}))
    StreamUrlStatusReason.add_member(:revoked_and_sessions_terminated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REVOKED_AND_SESSIONS_TERMINATED", traits: {"smithy.api#enumValue" => "revokedAndSessionsTerminated"}))
    StreamUrlStatusReason.add_member(:stream_group_deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STREAM_GROUP_DELETED", traits: {"smithy.api#enumValue" => "streamGroupDeleted"}))
    StreamUrlStatusReason.add_member(:application_deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPLICATION_DELETED", traits: {"smithy.api#enumValue" => "applicationDeleted"}))
    StreamUrlSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn", traits: {"smithy.api#required" => {}}))
    StreamUrlSummary.add_member(:stream_url_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "StreamUrlId"))
    StreamUrlSummary.add_member(:stream_url, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamSessionStreamUrl, name: "StreamUrl"))
    StreamUrlSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamUrlStatus, name: "Status"))
    StreamUrlSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamUrlStatusReason, name: "StatusReason"))
    StreamUrlSummary.add_member(:expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ExpiresAt"))
    StreamUrlSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt"))
    StreamUrlSummary.add_member(:usage_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageLimit, name: "UsageLimit"))
    StreamUrlSummary.add_member(:remaining_uses, ::Smithy::Schema::Shapes::MemberShape.new(target: RemainingUses, name: "RemainingUses"))
    StreamUrlSummary.add_member(:stream_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "StreamGroupArn"))
    StreamUrlSummary.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ApplicationArn"))
    StreamUrlSummary.add_member(:session_length_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionLengthSeconds, name: "SessionLengthSeconds"))
    StreamUrlSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    StreamUrlSummary.type = Types::StreamUrlSummary
    StreamUrlSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamUrlSummary, name: "member"))
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    Tags.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TerminateStreamSessionInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TerminateStreamSessionInput.add_member(:stream_session_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "StreamSessionIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TerminateStreamSessionInput.type = Types::TerminateStreamSessionInput
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateApplicationInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Arn"}))
    UpdateApplicationInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateApplicationInput.add_member(:application_log_paths, ::Smithy::Schema::Shapes::MemberShape.new(target: FilePaths, name: "ApplicationLogPaths"))
    UpdateApplicationInput.add_member(:application_log_output_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationLogOutputUri, name: "ApplicationLogOutputUri"))
    UpdateApplicationInput.type = Types::UpdateApplicationInput
    UpdateApplicationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Arn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Arn"}))
    UpdateApplicationOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateApplicationOutput.add_member(:runtime_environment, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeEnvironment, name: "RuntimeEnvironment", traits: {"aws.cloudformation#cfnMutability" => "create-and-read"}))
    UpdateApplicationOutput.add_member(:executable_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutablePath, name: "ExecutablePath"))
    UpdateApplicationOutput.add_member(:application_log_paths, ::Smithy::Schema::Shapes::MemberShape.new(target: FilePaths, name: "ApplicationLogPaths"))
    UpdateApplicationOutput.add_member(:application_log_output_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationLogOutputUri, name: "ApplicationLogOutputUri"))
    UpdateApplicationOutput.add_member(:application_source_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSourceUri, name: "ApplicationSourceUri"))
    UpdateApplicationOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    UpdateApplicationOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationStatus, name: "Status", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    UpdateApplicationOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationStatusReason, name: "StatusReason", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    UpdateApplicationOutput.add_member(:replication_statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationStatuses, name: "ReplicationStatuses", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    UpdateApplicationOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    UpdateApplicationOutput.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastUpdatedAt", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    UpdateApplicationOutput.add_member(:associated_stream_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnList, name: "AssociatedStreamGroups", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    UpdateApplicationOutput.type = Types::UpdateApplicationOutput
    UpdateStreamGroupInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Identifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Arn"}))
    UpdateStreamGroupInput.add_member(:location_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationConfigurations, name: "LocationConfigurations", traits: {"smithy.api#notProperty" => {}}))
    UpdateStreamGroupInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateStreamGroupInput.add_member(:default_application_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "DefaultApplicationIdentifier", traits: {"smithy.api#notProperty" => {}}))
    UpdateStreamGroupInput.type = Types::UpdateStreamGroupInput
    UpdateStreamGroupOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Arn", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Arn"}))
    UpdateStreamGroupOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateStreamGroupOutput.add_member(:default_application, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultApplication, name: "DefaultApplication", traits: {"aws.cloudformation#cfnMutability" => "create-and-read"}))
    UpdateStreamGroupOutput.add_member(:location_states, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationStates, name: "LocationStates", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    UpdateStreamGroupOutput.add_member(:stream_class, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamClass, name: "StreamClass", traits: {"aws.cloudformation#cfnMutability" => "create-and-read"}))
    UpdateStreamGroupOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    UpdateStreamGroupOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamGroupStatus, name: "Status", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    UpdateStreamGroupOutput.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamGroupStatusReason, name: "StatusReason", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    UpdateStreamGroupOutput.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastUpdatedAt", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    UpdateStreamGroupOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    UpdateStreamGroupOutput.add_member(:expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "ExpiresAt", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    UpdateStreamGroupOutput.add_member(:associated_applications, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnList, name: "AssociatedApplications", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    UpdateStreamGroupOutput.type = Types::UpdateStreamGroupOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException
    VpcTransitConfiguration.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "VpcId", traits: {"smithy.api#required" => {}}))
    VpcTransitConfiguration.add_member(:ipv4_cidr_blocks, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv4CidrBlockList, name: "Ipv4CidrBlocks", traits: {"smithy.api#required" => {}}))
    VpcTransitConfiguration.type = Types::VpcTransitConfiguration
    VpcTransitConfigurationResponse.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "VpcId"))
    VpcTransitConfigurationResponse.add_member(:ipv4_cidr_blocks, ::Smithy::Schema::Shapes::MemberShape.new(target: Ipv4CidrBlockList, name: "Ipv4CidrBlocks"))
    VpcTransitConfigurationResponse.add_member(:transit_gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "TransitGatewayId"))
    VpcTransitConfigurationResponse.add_member(:transit_gateway_resource_share_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "TransitGatewayResourceShareArn"))
    VpcTransitConfigurationResponse.type = Types::VpcTransitConfigurationResponse

    GameLiftStreams = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.gameliftstreams#GameLiftStreams"
      service.name = "GameLiftStreams"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "GameLiftStreams", "cloudFormationName" => "GameLiftStreams", "arnNamespace" => "gameliftstreams", "cloudTrailEventSource" => "gameliftstreams.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "gameliftstreams"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardRegionalEndpoints" => {}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the tags associated with the resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by tags that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by a list of tag keys that are allowed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}, "gameliftstreams:RoleArn" => {"type" => "ARN", "documentation" => "Filters access by the ARN of the IAM role passed to Amazon GameLift Streams to assume for the stream session", "externalDocumentation" => "${DocHomeURL}service-authorization/latest/reference/list_gameliftstreams.html#list_gameliftstreams-policy-keys"}}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["x-amz-gameliftstreams-raw-errors"]}, "smithy.api#title" => "Amazon GameLift Streams", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}, "Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://gameliftstreams-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://gameliftstreams.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 6, "nodes" => "/////wAAAAH/////AAAAAAAAAAYAAAADAAAAAQAAAAQF9eEFAAAAAgAAAAUF9eEFAAAAAwX14QMF9eEEAAAAAwX14QEF9eEC"}}
      service.add_operation(:add_stream_group_locations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gameliftstreams#AddStreamGroupLocations"
        operation.name = "AddStreamGroupLocations"
        operation.input = AddStreamGroupLocationsInput
        operation.output = AddStreamGroupLocationsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to attach a StreamGroup remote location", "resources" => {"required" => {"stream group" => {}}}, "requiredActions" => ["ec2:DescribeRegions"]}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/streamgroups/{Identifier}/locations"}}
      end)
      service.add_operation(:associate_applications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gameliftstreams#AssociateApplications"
        operation.name = "AssociateApplications"
        operation.input = AssociateApplicationsInput
        operation.output = AssociateApplicationsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to associate Applications to a StreamGroup", "resources" => {"required" => {"stream group" => {}, "application" => {}}}}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/streamgroups/{Identifier}/associations"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gameliftstreams#CreateApplication"
        operation.name = "CreateApplication"
        operation.input = CreateApplicationInput
        operation.output = CreateApplicationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create application", "requiredActions" => ["gameliftstreams:TagResource", "s3:ListBucket", "s3:GetObject"], "resources" => {"required" => {}}}, "smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/applications"}}
      end)
      service.add_operation(:create_stream_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gameliftstreams#CreateStreamGroup"
        operation.name = "CreateStreamGroup"
        operation.input = CreateStreamGroupInput
        operation.output = CreateStreamGroupOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create a StreamGroup", "requiredActions" => ["gameliftstreams:TagResource"], "resources" => {"required" => {}}}, "smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/streamgroups"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_stream_session_admin_shell, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gameliftstreams#CreateStreamSessionAdminShell"
        operation.name = "CreateStreamSessionAdminShell"
        operation.input = CreateStreamSessionAdminShellInput
        operation.output = CreateStreamSessionAdminShellOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << StreamSessionAccessNotReadyException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to establish an administrative terminal connection to a stream session", "resources" => {"required" => {"stream group" => {}}}}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/streamgroups/{Identifier}/streamsessions/{StreamSessionIdentifier}/access"}}
      end)
      service.add_operation(:create_stream_session_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gameliftstreams#CreateStreamSessionConnection"
        operation.name = "CreateStreamSessionConnection"
        operation.input = CreateStreamSessionConnectionInput
        operation.output = CreateStreamSessionConnectionOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to create a stream session connection", "resources" => {"required" => {"stream group" => {}}}}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/streamgroups/{Identifier}/streamsessions/{StreamSessionIdentifier}/connections"}}
      end)
      service.add_operation(:create_stream_url, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gameliftstreams#CreateStreamUrl"
        operation.name = "CreateStreamUrl"
        operation.input = CreateStreamUrlInput
        operation.output = CreateStreamUrlOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "aws.iam#conditionKeys" => ["gameliftstreams:RoleArn"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create a stream URL", "resources" => {"required" => {"stream group" => {}, "application" => {}}}}, "smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/streamgroups/{Identifier}/streamurls"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gameliftstreams#DeleteApplication"
        operation.name = "DeleteApplication"
        operation.input = DeleteApplicationInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete an application"}, "smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/applications/{Identifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_stream_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gameliftstreams#DeleteStreamGroup"
        operation.name = "DeleteStreamGroup"
        operation.input = DeleteStreamGroupInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete a StreamGroup"}, "smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/streamgroups/{Identifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_applications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gameliftstreams#DisassociateApplications"
        operation.name = "DisassociateApplications"
        operation.input = DisassociateApplicationsInput
        operation.output = DisassociateApplicationsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to disassociate Applications from a StreamGroup", "resources" => {"required" => {"stream group" => {}, "application" => {}}}}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/streamgroups/{Identifier}/disassociations"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:export_stream_session_files, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gameliftstreams#ExportStreamSessionFiles"
        operation.name = "ExportStreamSessionFiles"
        operation.input = ExportStreamSessionFilesInput
        operation.output = ExportStreamSessionFilesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to export stream session files that your application generates", "requiredActions" => ["s3:PutObject"], "resources" => {"required" => {"stream group" => {}}}}, "smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/streamgroups/{Identifier}/streamsessions/{StreamSessionIdentifier}/exportfiles"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gameliftstreams#GetApplication"
        operation.name = "GetApplication"
        operation.input = GetApplicationInput
        operation.output = GetApplicationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get an application"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/applications/{Identifier}"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetApplication", "params" => {"Identifier" => "aBcDeFgHi"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.gameliftstreams#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
      end)
      service.add_operation(:get_stream_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gameliftstreams#GetStreamGroup"
        operation.name = "GetStreamGroup"
        operation.input = GetStreamGroupInput
        operation.output = GetStreamGroupOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants `permission` to get a StreamGroup"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/streamgroups/{Identifier}"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetStreamGroup", "params" => {"Identifier" => "12ab34cd5"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.gameliftstreams#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
      end)
      service.add_operation(:get_stream_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gameliftstreams#GetStreamSession"
        operation.name = "GetStreamSession"
        operation.input = GetStreamSessionInput
        operation.output = GetStreamSessionOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to get a stream session", "resources" => {"required" => {"stream group" => {}}}}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/streamgroups/{Identifier}/streamsessions/{StreamSessionIdentifier}"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetStreamSession", "params" => {"Identifier" => "abcdefghi", "StreamSessionIdentifier" => "jklmnopqr"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.gameliftstreams#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
      end)
      service.add_operation(:get_stream_url, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gameliftstreams#GetStreamUrl"
        operation.name = "GetStreamUrl"
        operation.input = GetStreamUrlInput
        operation.output = GetStreamUrlOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to get a stream URL", "resources" => {"required" => {"stream group" => {}}}}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/streamgroups/{Identifier}/streamurls/{StreamUrlIdentifier}"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetStreamUrl", "params" => {"Identifier" => "abcdefghi", "StreamUrlIdentifier" => "su-jklmnopqr"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.gameliftstreams#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
      end)
      service.add_operation(:list_application_shader_caches, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gameliftstreams#ListApplicationShaderCaches"
        operation.name = "ListApplicationShaderCaches"
        operation.input = ListApplicationShaderCachesInput
        operation.output = ListApplicationShaderCachesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list application shader caches", "resources" => {"required" => {"application" => {}}}}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/applications/{Identifier}/shadercaches"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListApplicationShaderCaches", "params" => {"Identifier" => "aBcDeFgHi"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.gameliftstreams#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
      end)
      service.add_operation(:list_applications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gameliftstreams#ListApplications"
        operation.name = "ListApplications"
        operation.input = ListApplicationsInput
        operation.output = ListApplicationsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list applications"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/applications"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListApplications", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
        operation[:paginator] = Paginators::ListApplications.new
      end)
      service.add_operation(:list_stream_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gameliftstreams#ListStreamGroups"
        operation.name = "ListStreamGroups"
        operation.input = ListStreamGroupsInput
        operation.output = ListStreamGroupsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list StreamGroups"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/streamgroups"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListStreamGroups", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
        operation[:paginator] = Paginators::ListStreamGroups.new
      end)
      service.add_operation(:list_stream_sessions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gameliftstreams#ListStreamSessions"
        operation.name = "ListStreamSessions"
        operation.input = ListStreamSessionsInput
        operation.output = ListStreamSessionsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to list stream sessions", "resources" => {"required" => {"stream group" => {}}}}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/streamgroups/{Identifier}/streamsessions"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListStreamSessions", "params" => {"Identifier" => "abcdefghi"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.gameliftstreams#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
        operation[:paginator] = Paginators::ListStreamSessions.new
      end)
      service.add_operation(:list_stream_sessions_by_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gameliftstreams#ListStreamSessionsByAccount"
        operation.name = "ListStreamSessionsByAccount"
        operation.input = ListStreamSessionsByAccountInput
        operation.output = ListStreamSessionsByAccountOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to list stream sessions"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/streamsessions"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListStreamSessionsByAccount", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
        operation[:paginator] = Paginators::ListStreamSessionsByAccount.new
      end)
      service.add_operation(:list_stream_urls, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gameliftstreams#ListStreamUrls"
        operation.name = "ListStreamUrls"
        operation.input = ListStreamUrlsInput
        operation.output = ListStreamUrlsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to list stream URLs"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/streamurls"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListStreamUrls", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
        operation[:paginator] = Paginators::ListStreamUrls.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gameliftstreams#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list tags for a resource", "resources" => {"optional" => {"stream group" => {}, "application" => {}}}}, "smithy.api#http" => {"uri" => "/tags/{ResourceArn}", "method" => "GET"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListTagsForResource", "params" => {"ResourceArn" => "arn:aws:gameliftstreams:us-west-2:012345678901:abcdefghi"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.gameliftstreams#ValidationException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
      end)
      service.add_operation(:remove_stream_group_locations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gameliftstreams#RemoveStreamGroupLocations"
        operation.name = "RemoveStreamGroupLocations"
        operation.input = RemoveStreamGroupLocationsInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to detach a StreamGroup remote location", "resources" => {"required" => {"stream group" => {}}}}, "smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/streamgroups/{Identifier}/locations"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:revoke_stream_url, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gameliftstreams#RevokeStreamUrl"
        operation.name = "RevokeStreamUrl"
        operation.input = RevokeStreamUrlInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to revoke a stream URL", "resources" => {"required" => {"stream group" => {}}}}, "smithy.api#http" => {"code" => 204, "method" => "POST", "uri" => "/streamgroups/{Identifier}/streamurls/{StreamUrlIdentifier}/revoke"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_stream_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gameliftstreams#StartStreamSession"
        operation.name = "StartStreamSession"
        operation.input = StartStreamSessionInput
        operation.output = StartStreamSessionOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "aws.iam#conditionKeys" => ["gameliftstreams:RoleArn"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create a stream session", "resources" => {"required" => {"stream group" => {}}}}, "smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/streamgroups/{Identifier}/streamsessions"}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gameliftstreams#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "aws.iam#iamAction" => {"documentation" => "Grants permission to tag a resource", "resources" => {"optional" => {"stream group" => {}, "application" => {}}}}, "smithy.api#http" => {"uri" => "/tags/{ResourceArn}", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:terminate_stream_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gameliftstreams#TerminateStreamSession"
        operation.name = "TerminateStreamSession"
        operation.input = TerminateStreamSessionInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to terminate a stream session", "resources" => {"required" => {"stream group" => {}}}}, "smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/streamgroups/{Identifier}/streamsessions/{StreamSessionIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gameliftstreams#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to untag a resource", "resources" => {"optional" => {"stream group" => {}, "application" => {}}}}, "smithy.api#http" => {"uri" => "/tags/{ResourceArn}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gameliftstreams#UpdateApplication"
        operation.name = "UpdateApplication"
        operation.input = UpdateApplicationInput
        operation.output = UpdateApplicationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update an application"}, "smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/applications/{Identifier}"}}
      end)
      service.add_operation(:update_stream_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gameliftstreams#UpdateStreamGroup"
        operation.name = "UpdateStreamGroup"
        operation.input = UpdateStreamGroupInput
        operation.output = UpdateStreamGroupOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update a StreamGroup"}, "smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/streamgroups/{Identifier}"}}
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
