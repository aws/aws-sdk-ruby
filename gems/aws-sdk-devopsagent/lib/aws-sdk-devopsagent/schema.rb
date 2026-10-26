# frozen_string_literal: true

# This is generated code!

module Aws::DevOpsAgent
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AWSConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#AWSConfiguration", name: "AWSConfiguration")
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AdditionalServiceDetails = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.devopsagent#AdditionalServiceDetails", name: "AdditionalServiceDetails")
    AdditionalServiceRegistrationStep = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.devopsagent#AdditionalServiceRegistrationStep", name: "AdditionalServiceRegistrationStep")
    AgentSpace = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#AgentSpace", name: "AgentSpace")
    AgentSpaceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#AgentSpaceId", name: "AgentSpaceId", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9-]{1,64}$"})
    AgentSpaceIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#AgentSpaceIdentifier", name: "AgentSpaceIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    AgentSpaceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsagent#AgentSpaceList", name: "AgentSpaceList")
    AgentSpaceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#AgentSpaceName", name: "AgentSpaceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\p{L}\\p{N}\\p{P}\\p{S}\\p{Z}]+$"})
    AgentSpacePreferenceKey = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsagent#AgentSpacePreferenceKey", name: "AgentSpacePreferenceKey")
    AgentSpacePreferences = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.devopsagent#AgentSpacePreferences", name: "AgentSpacePreferences", traits: {"smithy.api#length" => {"max" => 25}})
    ApiKeyValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#ApiKeyValue", name: "ApiKeyValue", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#sensitive" => {}})
    ApprovalAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ApprovalAction", name: "ApprovalAction")
    ApprovalActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsagent#ApprovalActionType", name: "ApprovalActionType")
    ApprovalArgumentPins = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.devopsagent#ApprovalArgumentPins", name: "ApprovalArgumentPins", traits: {"smithy.api#length" => {"max" => 20}})
    ApprovalId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#ApprovalId", name: "ApprovalId", traits: {"smithy.api#pattern" => "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-7[0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$"})
    ApprovalPattern = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ApprovalPattern", name: "ApprovalPattern")
    ApprovalPinKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#ApprovalPinKey", name: "ApprovalPinKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ApprovalPinValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#ApprovalPinValue", name: "ApprovalPinValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 131072}})
    ApprovalReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#ApprovalReason", name: "ApprovalReason", traits: {"smithy.api#length" => {"max" => 1024}})
    ApprovalStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsagent#ApprovalStatus", name: "ApprovalStatus")
    Asset = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#Asset", name: "Asset")
    AssetContent = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.devopsagent#AssetContent", name: "AssetContent")
    AssetContentUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#AssetContentUrl", name: "AssetContentUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^https://.*$"})
    AssetFile = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#AssetFile", name: "AssetFile")
    AssetFileBody = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.devopsagent#AssetFileBody", name: "AssetFileBody")
    AssetFileBytes = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.devopsagent#AssetFileBytes", name: "AssetFileBytes", traits: {"smithy.api#length" => {"max" => 6291456}})
    AssetFileContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#AssetFileContent", name: "AssetFileContent")
    AssetFilePath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#AssetFilePath", name: "AssetFilePath", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[a-zA-Z0-9_./ ()-]+$"})
    AssetFileSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#AssetFileSummary", name: "AssetFileSummary")
    AssetFileSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsagent#AssetFileSummaryList", name: "AssetFileSummaryList")
    AssetFileText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#AssetFileText", name: "AssetFileText", traits: {"smithy.api#length" => {"max" => 6291456}})
    AssetIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsagent#AssetIdList", name: "AssetIdList", traits: {"smithy.api#length" => {"max" => 20}})
    AssetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsagent#AssetList", name: "AssetList")
    AssetSourceUrlContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#AssetSourceUrlContent", name: "AssetSourceUrlContent")
    AssetType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#AssetType", name: "AssetType", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    AssetTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsagent#AssetTypeList", name: "AssetTypeList")
    AssetTypeSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#AssetTypeSummary", name: "AssetTypeSummary")
    AssetVersionMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#AssetVersionMetadata", name: "AssetVersionMetadata")
    AssetVersionMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsagent#AssetVersionMetadataList", name: "AssetVersionMetadataList")
    AssetZipBytes = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.devopsagent#AssetZipBytes", name: "AssetZipBytes", traits: {"smithy.api#length" => {"max" => 6291456}})
    AssetZipContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#AssetZipContent", name: "AssetZipContent")
    AssistantMessage = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsagent#AssistantMessage", name: "AssistantMessage")
    AssistantMessageBlock = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.devopsagent#AssistantMessageBlock", name: "AssistantMessageBlock")
    AssociateServiceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#AssociateServiceInput", name: "AssociateServiceInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.devopsagent#ServiceResource"}, {"resource" => "com.amazonaws.devopsagent#AgentSpaceResource"}]})
    AssociateServiceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#AssociateServiceOutput", name: "AssociateServiceOutput")
    Association = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#Association", name: "Association")
    AssociationCapabilities = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.devopsagent#AssociationCapabilities", name: "AssociationCapabilities")
    AssociationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#AssociationId", name: "AssociationId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    AssociationsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsagent#AssociationsList", name: "AssociationsList")
    AuthFlow = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsagent#AuthFlow", name: "AuthFlow")
    AzureConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#AzureConfiguration", name: "AzureConfiguration")
    AzureDevOpsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#AzureDevOpsConfiguration", name: "AzureDevOpsConfiguration")
    BackLogTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.devopsagent#BackLogTimestamp", name: "BackLogTimestamp", traits: {"smithy.api#timestampFormat" => "date-time"})
    BacklogTaskDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#BacklogTaskDescription", name: "BacklogTaskDescription", traits: {"smithy.api#length" => {"max" => 10000}})
    BacklogTaskTitle = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#BacklogTaskTitle", name: "BacklogTaskTitle", traits: {"smithy.api#length" => {"min" => 1, "max" => 400}})
    ButtonText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#ButtonText", name: "ButtonText", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    CapabilityConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#CapabilityConfiguration", name: "CapabilityConfiguration")
    CapabilityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsagent#CapabilityType", name: "CapabilityType")
    CertificateString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#CertificateString", name: "CertificateString", traits: {"smithy.api#length" => {"min" => 1, "max" => 32768}})
    ChatExecution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ChatExecution", name: "ChatExecution")
    ChatExecutionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#ChatExecutionId", name: "ChatExecutionId", traits: {"smithy.api#length" => {"min" => 32, "max" => 50}, "smithy.api#pattern" => "^[A-Za-z0-9_-]+$"})
    ChatExecutionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsagent#ChatExecutionList", name: "ChatExecutionList")
    ClientId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#ClientId", name: "ClientId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\u0020-\\u007E]+$", "smithy.api#sensitive" => {}})
    ClientSecret = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#ClientSecret", name: "ClientSecret", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[\\S]+$", "smithy.api#sensitive" => {}})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContentSizeExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ContentSizeExceededException", name: "ContentSizeExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 413})
    CreateAgentSpaceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#CreateAgentSpaceInput", name: "CreateAgentSpaceInput")
    CreateAgentSpaceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#CreateAgentSpaceOutput", name: "CreateAgentSpaceOutput")
    CreateAssetFileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#CreateAssetFileRequest", name: "CreateAssetFileRequest")
    CreateAssetFileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#CreateAssetFileResponse", name: "CreateAssetFileResponse")
    CreateAssetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#CreateAssetRequest", name: "CreateAssetRequest")
    CreateAssetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#CreateAssetResponse", name: "CreateAssetResponse")
    CreateBacklogTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#CreateBacklogTaskRequest", name: "CreateBacklogTaskRequest")
    CreateBacklogTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#CreateBacklogTaskResponse", name: "CreateBacklogTaskResponse")
    CreateChatRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#CreateChatRequest", name: "CreateChatRequest")
    CreateChatResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#CreateChatResponse", name: "CreateChatResponse")
    CreatePrivateConnectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#CreatePrivateConnectionInput", name: "CreatePrivateConnectionInput")
    CreatePrivateConnectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#CreatePrivateConnectionOutput", name: "CreatePrivateConnectionOutput")
    CreateTriggerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#CreateTriggerRequest", name: "CreateTriggerRequest")
    CreateTriggerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#CreateTriggerResponse", name: "CreateTriggerResponse")
    CronSchedule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#CronSchedule", name: "CronSchedule")
    CustomHeaderName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#CustomHeaderName", name: "CustomHeaderName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]+$"})
    CustomHeaderNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsagent#CustomHeaderNames", name: "CustomHeaderNames", traits: {"smithy.api#length" => {"max" => 3}})
    CustomHeaderValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#CustomHeaderValue", name: "CustomHeaderValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^[!-~]([ \\t]*[!-~])*$", "smithy.api#sensitive" => {}})
    CustomHeaders = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.devopsagent#CustomHeaders", name: "CustomHeaders", traits: {"smithy.api#length" => {"max" => 10}})
    DailyRecurrence = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#DailyRecurrence", name: "DailyRecurrence")
    DatadogAuthorizationConfig = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.devopsagent#DatadogAuthorizationConfig", name: "DatadogAuthorizationConfig")
    DatadogServiceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#DatadogServiceDetails", name: "DatadogServiceDetails")
    DateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.devopsagent#DateTime", name: "DateTime", traits: {"smithy.api#timestampFormat" => "date-time"})
    DayOfWeek = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsagent#DayOfWeek", name: "DayOfWeek")
    DeleteAgentSpaceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#DeleteAgentSpaceInput", name: "DeleteAgentSpaceInput")
    DeleteAgentSpaceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#DeleteAgentSpaceOutput", name: "DeleteAgentSpaceOutput")
    DeleteAssetFileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#DeleteAssetFileRequest", name: "DeleteAssetFileRequest")
    DeleteAssetFileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#DeleteAssetFileResponse", name: "DeleteAssetFileResponse")
    DeleteAssetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#DeleteAssetRequest", name: "DeleteAssetRequest")
    DeleteAssetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#DeleteAssetResponse", name: "DeleteAssetResponse")
    DeletePrivateConnectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#DeletePrivateConnectionInput", name: "DeletePrivateConnectionInput")
    DeletePrivateConnectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#DeletePrivateConnectionOutput", name: "DeletePrivateConnectionOutput")
    DeleteTriggerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#DeleteTriggerRequest", name: "DeleteTriggerRequest")
    DeleteTriggerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#DeleteTriggerResponse", name: "DeleteTriggerResponse")
    DeregisterServiceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#DeregisterServiceInput", name: "DeregisterServiceInput")
    DeregisterServiceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#DeregisterServiceOutput", name: "DeregisterServiceOutput")
    DescribePrivateConnectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#DescribePrivateConnectionInput", name: "DescribePrivateConnectionInput")
    DescribePrivateConnectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#DescribePrivateConnectionOutput", name: "DescribePrivateConnectionOutput")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[\\p{L}\\p{N}\\p{P}\\p{S}\\p{Z}]+$", "smithy.api#sensitive" => {}})
    DisableOperatorAppInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#DisableOperatorAppInput", name: "DisableOperatorAppInput")
    DisassociateServiceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#DisassociateServiceInput", name: "DisassociateServiceInput")
    DisassociateServiceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#DisassociateServiceOutput", name: "DisassociateServiceOutput")
    DisplayName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#DisplayName", name: "DisplayName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}\\p{N}\\p{P}\\p{S}\\p{Z}]+$"})
    DocumentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsagent#DocumentList", name: "DocumentList")
    DynatraceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#DynatraceConfiguration", name: "DynatraceConfiguration")
    DynatraceOAuthClientCredentialsConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#DynatraceOAuthClientCredentialsConfig", name: "DynatraceOAuthClientCredentialsConfig")
    DynatraceResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsagent#DynatraceResourceList", name: "DynatraceResourceList")
    DynatraceServiceAuthorizationConfig = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.devopsagent#DynatraceServiceAuthorizationConfig", name: "DynatraceServiceAuthorizationConfig", traits: {"smithy.api#sensitive" => {}})
    DynatraceServiceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#DynatraceServiceDetails", name: "DynatraceServiceDetails")
    EmailAddress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#EmailAddress", name: "EmailAddress", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9._%+\\-]+@[a-zA-Z0-9.\\-]+\\.[a-zA-Z]{2,}$", "smithy.api#sensitive" => {}})
    EnableOperatorAppInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#EnableOperatorAppInput", name: "EnableOperatorAppInput")
    EnableOperatorAppOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#EnableOperatorAppOutput", name: "EnableOperatorAppOutput")
    EventChannelConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#EventChannelConfiguration", name: "EventChannelConfiguration")
    EventChannelDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#EventChannelDetails", name: "EventChannelDetails")
    EventChannelType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsagent#EventChannelType", name: "EventChannelType")
    ExchangeParameterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#ExchangeParameterValue", name: "ExchangeParameterValue", traits: {"smithy.api#sensitive" => {}})
    ExchangeParameters = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.devopsagent#ExchangeParameters", name: "ExchangeParameters")
    Execution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#Execution", name: "Execution")
    ExecutionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsagent#ExecutionList", name: "ExecutionList")
    ExecutionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsagent#ExecutionStatus", name: "ExecutionStatus")
    FailureMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#FailureMessage", name: "FailureMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    GenericWebhook = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#GenericWebhook", name: "GenericWebhook")
    GetAccountUsageInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#GetAccountUsageInput", name: "GetAccountUsageInput")
    GetAccountUsageOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#GetAccountUsageOutput", name: "GetAccountUsageOutput")
    GetAgentSpaceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#GetAgentSpaceInput", name: "GetAgentSpaceInput")
    GetAgentSpaceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#GetAgentSpaceOutput", name: "GetAgentSpaceOutput")
    GetAssetContentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#GetAssetContentRequest", name: "GetAssetContentRequest")
    GetAssetContentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#GetAssetContentResponse", name: "GetAssetContentResponse")
    GetAssetFileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#GetAssetFileRequest", name: "GetAssetFileRequest")
    GetAssetFileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#GetAssetFileResponse", name: "GetAssetFileResponse")
    GetAssetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#GetAssetRequest", name: "GetAssetRequest")
    GetAssetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#GetAssetResponse", name: "GetAssetResponse")
    GetAssociationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#GetAssociationInput", name: "GetAssociationInput")
    GetAssociationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#GetAssociationOutput", name: "GetAssociationOutput")
    GetBacklogTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#GetBacklogTaskRequest", name: "GetBacklogTaskRequest")
    GetBacklogTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#GetBacklogTaskResponse", name: "GetBacklogTaskResponse")
    GetOperatorAppInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#GetOperatorAppInput", name: "GetOperatorAppInput")
    GetOperatorAppOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#GetOperatorAppOutput", name: "GetOperatorAppOutput")
    GetRecommendationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#GetRecommendationRequest", name: "GetRecommendationRequest")
    GetRecommendationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#GetRecommendationResponse", name: "GetRecommendationResponse")
    GetServiceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#GetServiceInput", name: "GetServiceInput")
    GetServiceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#GetServiceOutput", name: "GetServiceOutput")
    GetTriggerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#GetTriggerRequest", name: "GetTriggerRequest")
    GetTriggerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#GetTriggerResponse", name: "GetTriggerResponse")
    GitHubConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#GitHubConfiguration", name: "GitHubConfiguration")
    GitLabConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#GitLabConfiguration", name: "GitLabConfiguration")
    GitLabDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#GitLabDetails", name: "GitLabDetails")
    GitLabTokenType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsagent#GitLabTokenType", name: "GitLabTokenType")
    GitLabTokenValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#GitLabTokenValue", name: "GitLabTokenValue", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9._-]+$", "smithy.api#sensitive" => {}})
    GithubRepoOwnerType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsagent#GithubRepoOwnerType", name: "GithubRepoOwnerType")
    Goal = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#Goal", name: "Goal")
    GoalContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#GoalContent", name: "GoalContent")
    GoalList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsagent#GoalList", name: "GoalList")
    GoalSchedule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#GoalSchedule", name: "GoalSchedule")
    GoalScheduleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#GoalScheduleInput", name: "GoalScheduleInput")
    GoalStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsagent#GoalStatus", name: "GoalStatus")
    GoalType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsagent#GoalType", name: "GoalType")
    GrafanaServiceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#GrafanaServiceDetails", name: "GrafanaServiceDetails")
    Guid = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#Guid", name: "Guid", traits: {"smithy.api#length" => {"max" => 36}, "smithy.api#pattern" => "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"})
    IamAuthConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#IamAuthConfiguration", name: "IamAuthConfiguration")
    IdcAuthConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#IdcAuthConfiguration", name: "IdcAuthConfiguration")
    IdentityCenterServiceException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#IdentityCenterServiceException", name: "IdentityCenterServiceException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IdpAuthConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#IdpAuthConfiguration", name: "IdpAuthConfiguration")
    IdpClientId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#IdpClientId", name: "IdpClientId", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    IdpClientSecret = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#IdpClientSecret", name: "IdpClientSecret", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#sensitive" => {}})
    IncludedData = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsagent#IncludedData", name: "IncludedData")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    InterruptId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#InterruptId", name: "InterruptId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    InvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#InvalidParameterException", name: "InvalidParameterException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IpAddressOrDnsName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#IpAddressOrDnsName", name: "IpAddressOrDnsName", traits: {"smithy.api#length" => {"min" => 3, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9.:\\-]+$"})
    IpAddressType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsagent#IpAddressType", name: "IpAddressType")
    JournalRecord = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#JournalRecord", name: "JournalRecord")
    JournalRecordList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsagent#JournalRecordList", name: "JournalRecordList")
    JournalTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.devopsagent#JournalTimestamp", name: "JournalTimestamp")
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#KmsKeyArn", name: "KmsKeyArn", traits: {"smithy.api#length" => {"min" => 20}, "smithy.api#pattern" => "^arn:aws[a-zA-Z-]*:kms:[a-z0-9-]+:[0-9]{12}:key/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    ListAgentSpacesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ListAgentSpacesInput", name: "ListAgentSpacesInput")
    ListAgentSpacesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ListAgentSpacesOutput", name: "ListAgentSpacesOutput")
    ListAssetFilesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ListAssetFilesRequest", name: "ListAssetFilesRequest")
    ListAssetFilesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ListAssetFilesResponse", name: "ListAssetFilesResponse")
    ListAssetTypesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ListAssetTypesRequest", name: "ListAssetTypesRequest")
    ListAssetTypesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ListAssetTypesResponse", name: "ListAssetTypesResponse")
    ListAssetVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ListAssetVersionsRequest", name: "ListAssetVersionsRequest")
    ListAssetVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ListAssetVersionsResponse", name: "ListAssetVersionsResponse")
    ListAssetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ListAssetsRequest", name: "ListAssetsRequest")
    ListAssetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ListAssetsResponse", name: "ListAssetsResponse")
    ListAssociationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ListAssociationsInput", name: "ListAssociationsInput")
    ListAssociationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ListAssociationsOutput", name: "ListAssociationsOutput")
    ListBacklogTasksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ListBacklogTasksRequest", name: "ListBacklogTasksRequest")
    ListBacklogTasksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ListBacklogTasksResponse", name: "ListBacklogTasksResponse")
    ListChatsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ListChatsRequest", name: "ListChatsRequest")
    ListChatsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ListChatsResponse", name: "ListChatsResponse")
    ListExecutionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ListExecutionsRequest", name: "ListExecutionsRequest")
    ListExecutionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ListExecutionsResponse", name: "ListExecutionsResponse")
    ListGoalsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ListGoalsRequest", name: "ListGoalsRequest")
    ListGoalsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ListGoalsResponse", name: "ListGoalsResponse")
    ListJournalRecordsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ListJournalRecordsRequest", name: "ListJournalRecordsRequest")
    ListJournalRecordsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ListJournalRecordsResponse", name: "ListJournalRecordsResponse")
    ListOfSecurityGroupIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsagent#ListOfSecurityGroupIds", name: "ListOfSecurityGroupIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    ListOfSubnetIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsagent#ListOfSubnetIds", name: "ListOfSubnetIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    ListPendingMessagesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ListPendingMessagesRequest", name: "ListPendingMessagesRequest")
    ListPendingMessagesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ListPendingMessagesResponse", name: "ListPendingMessagesResponse")
    ListPrivateConnectionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ListPrivateConnectionsInput", name: "ListPrivateConnectionsInput")
    ListPrivateConnectionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ListPrivateConnectionsOutput", name: "ListPrivateConnectionsOutput")
    ListRecommendationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ListRecommendationsRequest", name: "ListRecommendationsRequest")
    ListRecommendationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ListRecommendationsResponse", name: "ListRecommendationsResponse")
    ListServicesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ListServicesInput", name: "ListServicesInput")
    ListServicesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ListServicesOutput", name: "ListServicesOutput")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ListTagsForResourceRequest", name: "ListTagsForResourceRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.devopsagent#AgentSpaceResource", "ids" => {"agentSpaceId" => "resourceArn"}}, {"resource" => "com.amazonaws.devopsagent#AssociationResource", "ids" => {"agentSpaceId" => "resourceArn", "associationId" => "resourceArn"}}, {"resource" => "com.amazonaws.devopsagent#ServiceResource", "ids" => {"serviceId" => "resourceArn"}}, {"resource" => "com.amazonaws.devopsagent#PrivateConnectionResource", "ids" => {"name" => "resourceArn"}}], "smithy.api#suppress" => ["UnstableTrait"]})
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListTriggersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ListTriggersRequest", name: "ListTriggersRequest")
    ListTriggersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ListTriggersResponse", name: "ListTriggersResponse")
    ListWebhooksInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ListWebhooksInput", name: "ListWebhooksInput")
    ListWebhooksOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ListWebhooksOutput", name: "ListWebhooksOutput")
    Locale = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#Locale", name: "Locale", traits: {"smithy.api#length" => {"min" => 2, "max" => 35}, "smithy.api#pattern" => "^[a-zA-Z]{2,3}(-[a-zA-Z0-9]{2,8})*$"})
    MCPServerAPIKeyConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#MCPServerAPIKeyConfig", name: "MCPServerAPIKeyConfig")
    MCPServerAuthorizationConfig = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.devopsagent#MCPServerAuthorizationConfig", name: "MCPServerAuthorizationConfig")
    MCPServerAuthorizationDiscoveryConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#MCPServerAuthorizationDiscoveryConfig", name: "MCPServerAuthorizationDiscoveryConfig")
    MCPServerAuthorizationMethod = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsagent#MCPServerAuthorizationMethod", name: "MCPServerAuthorizationMethod")
    MCPServerBearerTokenConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#MCPServerBearerTokenConfig", name: "MCPServerBearerTokenConfig")
    MCPServerConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#MCPServerConfiguration", name: "MCPServerConfiguration")
    MCPServerCustomHeadersConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#MCPServerCustomHeadersConfig", name: "MCPServerCustomHeadersConfig")
    MCPServerDatadogConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#MCPServerDatadogConfiguration", name: "MCPServerDatadogConfiguration")
    MCPServerDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#MCPServerDetails", name: "MCPServerDetails")
    MCPServerEndpoint = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#MCPServerEndpoint", name: "MCPServerEndpoint", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^https://[a-zA-Z0-9.-]+(?::[0-9]+)?(?:/.*)?$"})
    MCPServerGrafanaConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#MCPServerGrafanaConfiguration", name: "MCPServerGrafanaConfiguration")
    MCPServerName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#MCPServerName", name: "MCPServerName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    MCPServerNewRelicConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#MCPServerNewRelicConfiguration", name: "MCPServerNewRelicConfiguration")
    MCPServerOAuth3LOConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#MCPServerOAuth3LOConfig", name: "MCPServerOAuth3LOConfig")
    MCPServerOAuthClientCredentialsConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#MCPServerOAuthClientCredentialsConfig", name: "MCPServerOAuthClientCredentialsConfig")
    MCPServerSigV4AuthorizationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#MCPServerSigV4AuthorizationConfig", name: "MCPServerSigV4AuthorizationConfig")
    MCPServerSigV4Configuration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#MCPServerSigV4Configuration", name: "MCPServerSigV4Configuration")
    MCPServerSigV4ServiceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#MCPServerSigV4ServiceDetails", name: "MCPServerSigV4ServiceDetails")
    MCPServerSplunkConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#MCPServerSplunkConfiguration", name: "MCPServerSplunkConfiguration")
    MCPToolDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#MCPToolDetail", name: "MCPToolDetail")
    MCPToolDetailsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsagent#MCPToolDetailsList", name: "MCPToolDetailsList", traits: {"smithy.api#length" => {"max" => 500}})
    MCPToolsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsagent#MCPToolsList", name: "MCPToolsList")
    MaxIpv4AddressesPerEni = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.devopsagent#MaxIpv4AddressesPerEni", name: "MaxIpv4AddressesPerEni", traits: {"smithy.api#range" => {"min" => 1, "max" => 62}})
    Message = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.devopsagent#Message", name: "Message")
    MessageContent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#MessageContent", name: "MessageContent", traits: {"smithy.api#length" => {"max" => 32768}})
    MonitorAccountType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsagent#MonitorAccountType", name: "MonitorAccountType")
    MonthlyRecurrence = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#MonthlyRecurrence", name: "MonthlyRecurrence")
    NetworkAccessConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.devopsagent#NetworkAccessConfiguration", name: "NetworkAccessConfiguration")
    NewRelicAlertPolicyIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsagent#NewRelicAlertPolicyIds", name: "NewRelicAlertPolicyIds")
    NewRelicApiKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#NewRelicApiKey", name: "NewRelicApiKey", traits: {"smithy.api#pattern" => "^NRAK-[A-Z0-9]+$", "smithy.api#sensitive" => {}})
    NewRelicApiKeyConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#NewRelicApiKeyConfig", name: "NewRelicApiKeyConfig")
    NewRelicApplicationIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsagent#NewRelicApplicationIds", name: "NewRelicApplicationIds")
    NewRelicEntityGuids = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsagent#NewRelicEntityGuids", name: "NewRelicEntityGuids")
    NewRelicRegion = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsagent#NewRelicRegion", name: "NewRelicRegion")
    NewRelicServiceAuthorizationConfig = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.devopsagent#NewRelicServiceAuthorizationConfig", name: "NewRelicServiceAuthorizationConfig")
    NewRelicServiceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#NewRelicServiceDetails", name: "NewRelicServiceDetails")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    OAuthAdditionalStepDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#OAuthAdditionalStepDetails", name: "OAuthAdditionalStepDetails")
    OAuthScope = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#OAuthScope", name: "OAuthScope", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[!#-\\[\\]-~]+$"})
    OperatorAppUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#OperatorAppUrl", name: "OperatorAppUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^https://[a-zA-Z0-9.-]+(/.*)?$"})
    OrderType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsagent#OrderType", name: "OrderType")
    PagerDutyAuthorizationConfig = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.devopsagent#PagerDutyAuthorizationConfig", name: "PagerDutyAuthorizationConfig")
    PagerDutyConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#PagerDutyConfiguration", name: "PagerDutyConfiguration")
    PagerDutyDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#PagerDutyDetails", name: "PagerDutyDetails")
    PagerDutyOAuthClientCredentialsConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#PagerDutyOAuthClientCredentialsConfig", name: "PagerDutyOAuthClientCredentialsConfig")
    PagerDutyScopes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsagent#PagerDutyScopes", name: "PagerDutyScopes")
    PagerDutyScopesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsagent#PagerDutyScopesList", name: "PagerDutyScopesList")
    PagerDutyServicesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsagent#PagerDutyServicesList", name: "PagerDutyServicesList")
    PatternFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#PatternFilter", name: "PatternFilter")
    PendingMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#PendingMessage", name: "PendingMessage")
    PendingMessages = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsagent#PendingMessages", name: "PendingMessages")
    PortRange = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#PortRange", name: "PortRange", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^((\\d{1,5}\\-\\d{1,5})|(\\d+))$"})
    PortRanges = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsagent#PortRanges", name: "PortRanges", traits: {"smithy.api#length" => {"min" => 1, "max" => 11}})
    PostRegisterServiceSupportedService = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsagent#PostRegisterServiceSupportedService", name: "PostRegisterServiceSupportedService")
    Priority = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsagent#Priority", name: "Priority")
    PriorityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsagent#PriorityList", name: "PriorityList")
    PrivateConnectionMode = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.devopsagent#PrivateConnectionMode", name: "PrivateConnectionMode")
    PrivateConnectionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#PrivateConnectionName", name: "PrivateConnectionName", traits: {"smithy.api#length" => {"min" => 3, "max" => 30}, "smithy.api#pattern" => "^[a-z0-9]([a-z0-9-]*[a-z0-9])?$"})
    PrivateConnectionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsagent#PrivateConnectionStatus", name: "PrivateConnectionStatus")
    PrivateConnectionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#PrivateConnectionSummary", name: "PrivateConnectionSummary")
    PrivateConnectionSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsagent#PrivateConnectionSummaryList", name: "PrivateConnectionSummaryList")
    PrivateConnectionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsagent#PrivateConnectionType", name: "PrivateConnectionType")
    PrivateNetworkAccess = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#PrivateNetworkAccess", name: "PrivateNetworkAccess")
    Recommendation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#Recommendation", name: "Recommendation")
    RecommendationContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#RecommendationContent", name: "RecommendationContent")
    RecommendationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsagent#RecommendationList", name: "RecommendationList")
    RecommendationPriority = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsagent#RecommendationPriority", name: "RecommendationPriority")
    RecommendationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsagent#RecommendationStatus", name: "RecommendationStatus")
    Recurrence = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.devopsagent#Recurrence", name: "Recurrence")
    ReferenceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ReferenceInput", name: "ReferenceInput")
    ReferenceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ReferenceOutput", name: "ReferenceOutput")
    RegisterServiceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#RegisterServiceInput", name: "RegisterServiceInput")
    RegisterServiceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#RegisterServiceOutput", name: "RegisterServiceOutput")
    RegisteredAzureDevOpsServiceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#RegisteredAzureDevOpsServiceDetails", name: "RegisteredAzureDevOpsServiceDetails")
    RegisteredAzureIdentityDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#RegisteredAzureIdentityDetails", name: "RegisteredAzureIdentityDetails")
    RegisteredGitLabServiceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#RegisteredGitLabServiceDetails", name: "RegisteredGitLabServiceDetails")
    RegisteredGithubServiceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#RegisteredGithubServiceDetails", name: "RegisteredGithubServiceDetails")
    RegisteredGrafanaServerDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#RegisteredGrafanaServerDetails", name: "RegisteredGrafanaServerDetails")
    RegisteredMCPServerDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#RegisteredMCPServerDetails", name: "RegisteredMCPServerDetails")
    RegisteredMCPServerSigV4Details = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#RegisteredMCPServerSigV4Details", name: "RegisteredMCPServerSigV4Details")
    RegisteredNewRelicDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#RegisteredNewRelicDetails", name: "RegisteredNewRelicDetails")
    RegisteredPagerDutyDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#RegisteredPagerDutyDetails", name: "RegisteredPagerDutyDetails")
    RegisteredRemoteAgentDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#RegisteredRemoteAgentDetails", name: "RegisteredRemoteAgentDetails")
    RegisteredRemoteAgentSigV4Details = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#RegisteredRemoteAgentSigV4Details", name: "RegisteredRemoteAgentSigV4Details")
    RegisteredService = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#RegisteredService", name: "RegisteredService")
    RegisteredServiceNowDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#RegisteredServiceNowDetails", name: "RegisteredServiceNowDetails")
    RegisteredServicesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsagent#RegisteredServicesList", name: "RegisteredServicesList")
    RegisteredSlackServiceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#RegisteredSlackServiceDetails", name: "RegisteredSlackServiceDetails")
    ReleaseManagementConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ReleaseManagementConfiguration", name: "ReleaseManagementConfiguration")
    RemoteAgentAPIKeyConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#RemoteAgentAPIKeyConfig", name: "RemoteAgentAPIKeyConfig")
    RemoteAgentAuthorizationConfig = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.devopsagent#RemoteAgentAuthorizationConfig", name: "RemoteAgentAuthorizationConfig")
    RemoteAgentAuthorizationMethod = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsagent#RemoteAgentAuthorizationMethod", name: "RemoteAgentAuthorizationMethod")
    RemoteAgentBearerTokenConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#RemoteAgentBearerTokenConfig", name: "RemoteAgentBearerTokenConfig")
    RemoteAgentConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#RemoteAgentConfiguration", name: "RemoteAgentConfiguration")
    RemoteAgentEndpoint = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#RemoteAgentEndpoint", name: "RemoteAgentEndpoint", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^https://[a-zA-Z0-9.-]+(?::[0-9]+)?(?:/.*)?$"})
    RemoteAgentName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#RemoteAgentName", name: "RemoteAgentName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    RemoteAgentOAuthClientCredentialsConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#RemoteAgentOAuthClientCredentialsConfig", name: "RemoteAgentOAuthClientCredentialsConfig")
    RemoteAgentServiceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#RemoteAgentServiceDetails", name: "RemoteAgentServiceDetails")
    RemoteAgentSigV4AuthorizationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#RemoteAgentSigV4AuthorizationConfig", name: "RemoteAgentSigV4AuthorizationConfig")
    RemoteAgentSigV4Configuration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#RemoteAgentSigV4Configuration", name: "RemoteAgentSigV4Configuration")
    RemoteAgentSigV4ServiceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#RemoteAgentSigV4ServiceDetails", name: "RemoteAgentSigV4ServiceDetails")
    ResourceConfigDnsResolution = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsagent#ResourceConfigDnsResolution", name: "ResourceConfigDnsResolution")
    ResourceConfigurationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#ResourceConfigurationArn", name: "ResourceConfigurationArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^(arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:resourceconfiguration/rcfg-[0-9a-z]{17}|rcfg-[0-9a-z]{17})$"})
    ResourceGatewayArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#ResourceGatewayArn", name: "ResourceGatewayArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:resourcegateway/rgw-[0-9a-z]{17}$"})
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#ResourceId", name: "ResourceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#RoleArn", name: "RoleArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov):iam::\\d{12}:role/[a-zA-Z0-9+=,.@_/-]+$"})
    ScheduleCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ScheduleCondition", name: "ScheduleCondition")
    ScheduleExpression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#ScheduleExpression", name: "ScheduleExpression", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ScheduleSpec = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.devopsagent#ScheduleSpec", name: "ScheduleSpec")
    SchedulerState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsagent#SchedulerState", name: "SchedulerState")
    Scopes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsagent#Scopes", name: "Scopes", traits: {"smithy.api#length" => {"max" => 100}})
    SecurityGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#SecurityGroupId", name: "SecurityGroupId", traits: {"smithy.api#length" => {"min" => 11, "max" => 20}, "smithy.api#pattern" => "^sg-(([0-9a-z]{8})|([0-9a-z]{17}))$"})
    SelfManagedInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#SelfManagedInput", name: "SelfManagedInput")
    SendMessageContentBlockDelta = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.devopsagent#SendMessageContentBlockDelta", name: "SendMessageContentBlockDelta")
    SendMessageContentBlockDeltaEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#SendMessageContentBlockDeltaEvent", name: "SendMessageContentBlockDeltaEvent")
    SendMessageContentBlockStartEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#SendMessageContentBlockStartEvent", name: "SendMessageContentBlockStartEvent")
    SendMessageContentBlockStopEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#SendMessageContentBlockStopEvent", name: "SendMessageContentBlockStopEvent")
    SendMessageContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#SendMessageContext", name: "SendMessageContext")
    SendMessageEvents = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.devopsagent#SendMessageEvents", name: "SendMessageEvents", traits: {"smithy.api#streaming" => {}})
    SendMessageHeartbeatEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#SendMessageHeartbeatEvent", name: "SendMessageHeartbeatEvent")
    SendMessageJsonDelta = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#SendMessageJsonDelta", name: "SendMessageJsonDelta")
    SendMessageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#SendMessageRequest", name: "SendMessageRequest")
    SendMessageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#SendMessageResponse", name: "SendMessageResponse")
    SendMessageResponseCompletedEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#SendMessageResponseCompletedEvent", name: "SendMessageResponseCompletedEvent")
    SendMessageResponseCreatedEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#SendMessageResponseCreatedEvent", name: "SendMessageResponseCreatedEvent")
    SendMessageResponseFailedEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#SendMessageResponseFailedEvent", name: "SendMessageResponseFailedEvent")
    SendMessageResponseInProgressEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#SendMessageResponseInProgressEvent", name: "SendMessageResponseInProgressEvent")
    SendMessageSummaryEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#SendMessageSummaryEvent", name: "SendMessageSummaryEvent")
    SendMessageTextDelta = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#SendMessageTextDelta", name: "SendMessageTextDelta")
    SendMessageUsageInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#SendMessageUsageInfo", name: "SendMessageUsageInfo")
    Service = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsagent#Service", name: "Service")
    ServiceConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.devopsagent#ServiceConfiguration", name: "ServiceConfiguration")
    ServiceDetails = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.devopsagent#ServiceDetails", name: "ServiceDetails")
    ServiceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#ServiceId", name: "ServiceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    ServiceManagedInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ServiceManagedInput", name: "ServiceManagedInput")
    ServiceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#ServiceName", name: "ServiceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\p{L}\\p{N}\\p{P}\\p{S}\\p{Z}]+$"})
    ServiceNameInput = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#ServiceNameInput", name: "ServiceNameInput", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\p{L}\\p{N} _-]+$"})
    ServiceNowAuthenticationScopeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsagent#ServiceNowAuthenticationScopeList", name: "ServiceNowAuthenticationScopeList")
    ServiceNowConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ServiceNowConfiguration", name: "ServiceNowConfiguration")
    ServiceNowInstanceUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#ServiceNowInstanceUrl", name: "ServiceNowInstanceUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^https://[a-zA-Z0-9]([a-zA-Z0-9.-]*[a-zA-Z0-9])\\.service-now\\.com/?$"})
    ServiceNowOAuthClientCredentialsConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ServiceNowOAuthClientCredentialsConfig", name: "ServiceNowOAuthClientCredentialsConfig")
    ServiceNowServiceAuthorizationConfig = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.devopsagent#ServiceNowServiceAuthorizationConfig", name: "ServiceNowServiceAuthorizationConfig")
    ServiceNowServiceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ServiceNowServiceDetails", name: "ServiceNowServiceDetails")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SigV4Region = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#SigV4Region", name: "SigV4Region", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^(\\*|[a-z]{2,4}(-[a-z]+)+-\\d+)$"})
    SlackBidirectionalConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#SlackBidirectionalConfiguration", name: "SlackBidirectionalConfiguration")
    SlackChannel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#SlackChannel", name: "SlackChannel")
    SlackConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#SlackConfiguration", name: "SlackConfiguration")
    SlackTransmissionTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#SlackTransmissionTarget", name: "SlackTransmissionTarget")
    SourceAccountType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsagent#SourceAccountType", name: "SourceAccountType")
    SourceAwsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#SourceAwsConfiguration", name: "SourceAwsConfiguration")
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#SubnetId", name: "SubnetId", traits: {"smithy.api#length" => {"min" => 15, "max" => 24}, "smithy.api#pattern" => "^subnet-(([0-9a-z]{8})|([0-9a-z]{17}))$"})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsagent#TagKeyList", name: "TagKeyList")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#TagResourceRequest", name: "TagResourceRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.devopsagent#AgentSpaceResource", "ids" => {"agentSpaceId" => "resourceArn"}}, {"resource" => "com.amazonaws.devopsagent#AssociationResource", "ids" => {"agentSpaceId" => "resourceArn", "associationId" => "resourceArn"}}, {"resource" => "com.amazonaws.devopsagent#ServiceResource", "ids" => {"serviceId" => "resourceArn"}}, {"resource" => "com.amazonaws.devopsagent#PrivateConnectionResource", "ids" => {"name" => "resourceArn"}}], "smithy.api#suppress" => ["UnstableTrait"]})
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*$"})
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.devopsagent#Tags", name: "Tags")
    Task = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#Task", name: "Task")
    TaskFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#TaskFilter", name: "TaskFilter")
    TaskList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsagent#TaskList", name: "TaskList")
    TaskSortField = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsagent#TaskSortField", name: "TaskSortField")
    TaskSortOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsagent#TaskSortOrder", name: "TaskSortOrder")
    TaskStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsagent#TaskStatus", name: "TaskStatus")
    TaskStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsagent#TaskStatusList", name: "TaskStatusList")
    TaskType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsagent#TaskType", name: "TaskType")
    TaskTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsagent#TaskTypeList", name: "TaskTypeList")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {}})
    TimeOfDay = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#TimeOfDay", name: "TimeOfDay", traits: {"smithy.api#length" => {"min" => 5, "max" => 5}, "smithy.api#pattern" => "^([01]\\d|2[0-3]):[0-5]\\d$"})
    TimeRangeSchedule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#TimeRangeSchedule", name: "TimeRangeSchedule")
    TokenValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#TokenValue", name: "TokenValue", traits: {"smithy.api#sensitive" => {}})
    ToolClassification = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsagent#ToolClassification", name: "ToolClassification")
    ToolIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#ToolIdentifier", name: "ToolIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ToolUseId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#ToolUseId", name: "ToolUseId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Trigger = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#Trigger", name: "Trigger")
    TriggerAction = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.devopsagent#TriggerAction", name: "TriggerAction")
    TriggerCondition = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.devopsagent#TriggerCondition", name: "TriggerCondition")
    TriggerEvent = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsagent#TriggerEvent", name: "TriggerEvent")
    TriggerEventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsagent#TriggerEventList", name: "TriggerEventList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#uniqueItems" => {}})
    TriggerFilterGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#TriggerFilterGroup", name: "TriggerFilterGroup")
    TriggerFilterGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsagent#TriggerFilterGroups", name: "TriggerFilterGroups", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    TriggerList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsagent#TriggerList", name: "TriggerList")
    TriggerRegexPattern = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#TriggerRegexPattern", name: "TriggerRegexPattern", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[^\\x00-\\x1F\\x7F-\\x9F]+$"})
    TriggerRegexPatternList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsagent#TriggerRegexPatternList", name: "TriggerRegexPatternList", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    TriggerStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#TriggerStatus", name: "TriggerStatus", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    TriggerType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#TriggerType", name: "TriggerType", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#UntagResourceRequest", name: "UntagResourceRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.devopsagent#AgentSpaceResource", "ids" => {"agentSpaceId" => "resourceArn"}}, {"resource" => "com.amazonaws.devopsagent#AssociationResource", "ids" => {"agentSpaceId" => "resourceArn", "associationId" => "resourceArn"}}, {"resource" => "com.amazonaws.devopsagent#ServiceResource", "ids" => {"serviceId" => "resourceArn"}}, {"resource" => "com.amazonaws.devopsagent#PrivateConnectionResource", "ids" => {"name" => "resourceArn"}}], "smithy.api#suppress" => ["UnstableTrait"]})
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateAgentSpaceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#UpdateAgentSpaceInput", name: "UpdateAgentSpaceInput")
    UpdateAgentSpaceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#UpdateAgentSpaceOutput", name: "UpdateAgentSpaceOutput")
    UpdateApprovalActionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#UpdateApprovalActionRequest", name: "UpdateApprovalActionRequest")
    UpdateApprovalActionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#UpdateApprovalActionResponse", name: "UpdateApprovalActionResponse")
    UpdateAssetFileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#UpdateAssetFileRequest", name: "UpdateAssetFileRequest")
    UpdateAssetFileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#UpdateAssetFileResponse", name: "UpdateAssetFileResponse")
    UpdateAssetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#UpdateAssetRequest", name: "UpdateAssetRequest")
    UpdateAssetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#UpdateAssetResponse", name: "UpdateAssetResponse")
    UpdateAssociationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#UpdateAssociationInput", name: "UpdateAssociationInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.devopsagent#AgentSpaceResource"}]})
    UpdateAssociationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#UpdateAssociationOutput", name: "UpdateAssociationOutput")
    UpdateBacklogTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#UpdateBacklogTaskRequest", name: "UpdateBacklogTaskRequest")
    UpdateBacklogTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#UpdateBacklogTaskResponse", name: "UpdateBacklogTaskResponse")
    UpdateGoalRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#UpdateGoalRequest", name: "UpdateGoalRequest")
    UpdateGoalResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#UpdateGoalResponse", name: "UpdateGoalResponse")
    UpdateOperatorAppIdpConfigInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#UpdateOperatorAppIdpConfigInput", name: "UpdateOperatorAppIdpConfigInput")
    UpdateOperatorAppIdpConfigOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#UpdateOperatorAppIdpConfigOutput", name: "UpdateOperatorAppIdpConfigOutput")
    UpdatePrivateConnectionCertificateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#UpdatePrivateConnectionCertificateInput", name: "UpdatePrivateConnectionCertificateInput")
    UpdatePrivateConnectionCertificateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#UpdatePrivateConnectionCertificateOutput", name: "UpdatePrivateConnectionCertificateOutput")
    UpdateRecommendationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#UpdateRecommendationRequest", name: "UpdateRecommendationRequest")
    UpdateRecommendationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#UpdateRecommendationResponse", name: "UpdateRecommendationResponse")
    UpdateTriggerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#UpdateTriggerRequest", name: "UpdateTriggerRequest")
    UpdateTriggerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#UpdateTriggerResponse", name: "UpdateTriggerResponse")
    UsageMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#UsageMetric", name: "UsageMetric")
    UserMessage = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsagent#UserMessage", name: "UserMessage")
    UserMessageBlock = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.devopsagent#UserMessageBlock", name: "UserMessageBlock")
    UserReference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#UserReference", name: "UserReference")
    UserType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsagent#UserType", name: "UserType")
    ValidateAwsAssociationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ValidateAwsAssociationsInput", name: "ValidateAwsAssociationsInput")
    ValidateAwsAssociationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ValidateAwsAssociationsOutput", name: "ValidateAwsAssociationsOutput")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client"})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsagent#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsagent#ValidationStatus", name: "ValidationStatus")
    VpcId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#VpcId", name: "VpcId", traits: {"smithy.api#length" => {"min" => 5, "max" => 50}, "smithy.api#pattern" => "^vpc-(([0-9a-z]{8})|([0-9a-z]{17}))$"})
    WebIdentityTokenAudienceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsagent#WebIdentityTokenAudienceList", name: "WebIdentityTokenAudienceList")
    Webhook = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#Webhook", name: "Webhook")
    WebhookSecret = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.devopsagent#WebhookSecret", name: "WebhookSecret", traits: {"smithy.api#sensitive" => {}})
    WebhookType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.devopsagent#WebhookType", name: "WebhookType")
    WebhooksList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.devopsagent#WebhooksList", name: "WebhooksList")
    WeeklyRecurrence = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.devopsagent#WeeklyRecurrence", name: "WeeklyRecurrence")

    AWSConfiguration.add_member(:assumable_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "assumableRoleArn", traits: {"smithy.api#required" => {}}))
    AWSConfiguration.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "accountId", traits: {"smithy.api#pattern" => "^\\d{12}$", "smithy.api#required" => {}}))
    AWSConfiguration.add_member(:account_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorAccountType, name: "accountType", traits: {"smithy.api#required" => {}}))
    AWSConfiguration.add_member(:agent_elevated_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "agentElevatedRoleArn"))
    AWSConfiguration.add_member(:agent_elevated_role_arn_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationStatus, name: "agentElevatedRoleArnStatus"))
    AWSConfiguration.type = Types::AWSConfiguration
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AdditionalServiceDetails.add_member(:github, Types::AdditionalServiceDetails::Github, ::Smithy::Schema::Shapes::MemberShape.new(target: RegisteredGithubServiceDetails, name: "github"))
    AdditionalServiceDetails.add_member(:slack, Types::AdditionalServiceDetails::Slack, ::Smithy::Schema::Shapes::MemberShape.new(target: RegisteredSlackServiceDetails, name: "slack"))
    AdditionalServiceDetails.add_member(:mcpserverdatadog, Types::AdditionalServiceDetails::Mcpserverdatadog, ::Smithy::Schema::Shapes::MemberShape.new(target: RegisteredMCPServerDetails, name: "mcpserverdatadog"))
    AdditionalServiceDetails.add_member(:mcpserver, Types::AdditionalServiceDetails::Mcpserver, ::Smithy::Schema::Shapes::MemberShape.new(target: RegisteredMCPServerDetails, name: "mcpserver"))
    AdditionalServiceDetails.add_member(:servicenow, Types::AdditionalServiceDetails::Servicenow, ::Smithy::Schema::Shapes::MemberShape.new(target: RegisteredServiceNowDetails, name: "servicenow"))
    AdditionalServiceDetails.add_member(:gitlab, Types::AdditionalServiceDetails::Gitlab, ::Smithy::Schema::Shapes::MemberShape.new(target: RegisteredGitLabServiceDetails, name: "gitlab"))
    AdditionalServiceDetails.add_member(:mcpserversplunk, Types::AdditionalServiceDetails::Mcpserversplunk, ::Smithy::Schema::Shapes::MemberShape.new(target: RegisteredMCPServerDetails, name: "mcpserversplunk"))
    AdditionalServiceDetails.add_member(:mcpservernewrelic, Types::AdditionalServiceDetails::Mcpservernewrelic, ::Smithy::Schema::Shapes::MemberShape.new(target: RegisteredNewRelicDetails, name: "mcpservernewrelic"))
    AdditionalServiceDetails.add_member(:azuredevops, Types::AdditionalServiceDetails::Azuredevops, ::Smithy::Schema::Shapes::MemberShape.new(target: RegisteredAzureDevOpsServiceDetails, name: "azuredevops"))
    AdditionalServiceDetails.add_member(:azureidentity, Types::AdditionalServiceDetails::Azureidentity, ::Smithy::Schema::Shapes::MemberShape.new(target: RegisteredAzureIdentityDetails, name: "azureidentity"))
    AdditionalServiceDetails.add_member(:mcpservergrafana, Types::AdditionalServiceDetails::Mcpservergrafana, ::Smithy::Schema::Shapes::MemberShape.new(target: RegisteredGrafanaServerDetails, name: "mcpservergrafana"))
    AdditionalServiceDetails.add_member(:pagerduty, Types::AdditionalServiceDetails::Pagerduty, ::Smithy::Schema::Shapes::MemberShape.new(target: RegisteredPagerDutyDetails, name: "pagerduty"))
    AdditionalServiceDetails.add_member(:mcpserversigv4, Types::AdditionalServiceDetails::Mcpserversigv4, ::Smithy::Schema::Shapes::MemberShape.new(target: RegisteredMCPServerSigV4Details, name: "mcpserversigv4"))
    AdditionalServiceDetails.add_member(:remoteagent, Types::AdditionalServiceDetails::Remoteagent, ::Smithy::Schema::Shapes::MemberShape.new(target: RegisteredRemoteAgentDetails, name: "remoteagent"))
    AdditionalServiceDetails.add_member(:remoteagentsigv4, Types::AdditionalServiceDetails::Remoteagentsigv4, ::Smithy::Schema::Shapes::MemberShape.new(target: RegisteredRemoteAgentSigV4Details, name: "remoteagentsigv4"))
    AdditionalServiceDetails.add_member(:unknown, Types::AdditionalServiceDetails::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AdditionalServiceDetails.type = Types::AdditionalServiceDetails
    AdditionalServiceRegistrationStep.add_member(:oauth, Types::AdditionalServiceRegistrationStep::Oauth, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuthAdditionalStepDetails, name: "oauth"))
    AdditionalServiceRegistrationStep.add_member(:unknown, Types::AdditionalServiceRegistrationStep::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AdditionalServiceRegistrationStep.type = Types::AdditionalServiceRegistrationStep
    AgentSpace.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceName, name: "name", traits: {"smithy.api#required" => {}}))
    AgentSpace.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    AgentSpace.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: Locale, name: "locale"))
    AgentSpace.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    AgentSpace.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    AgentSpace.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "kmsKeyArn"))
    AgentSpace.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceId, name: "agentSpaceId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "agentSpaceId"}))
    AgentSpace.add_member(:preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpacePreferences, name: "preferences"))
    AgentSpace.type = Types::AgentSpace
    AgentSpaceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpace, name: "member"))
    AgentSpacePreferenceKey.add_member(:elevated_actions_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ELEVATED_ACTIONS_ENABLED", traits: {"smithy.api#enumValue" => "elevatedActionsEnabled"}))
    AgentSpacePreferences.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpacePreferenceKey, name: "key"))
    AgentSpacePreferences.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "value"))
    ApprovalAction.add_member(:tool_use_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolUseId, name: "toolUseId"))
    ApprovalAction.add_member(:interrupt_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InterruptId, name: "interruptId"))
    ApprovalAction.add_member(:approval_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalId, name: "approvalId"))
    ApprovalAction.add_member(:button_text, ::Smithy::Schema::Shapes::MemberShape.new(target: ButtonText, name: "buttonText"))
    ApprovalAction.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalActionType, name: "action"))
    ApprovalAction.type = Types::ApprovalAction
    ApprovalActionType.add_member(:approved, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPROVED", traits: {"smithy.api#enumValue" => "APPROVED"}))
    ApprovalActionType.add_member(:rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECTED", traits: {"smithy.api#enumValue" => "REJECTED"}))
    ApprovalArgumentPins.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalPinKey, name: "key"))
    ApprovalArgumentPins.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalPinValue, name: "value"))
    ApprovalPattern.add_member(:tool, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolIdentifier, name: "tool", traits: {"smithy.api#required" => {}}))
    ApprovalPattern.add_member(:argument_pins, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalArgumentPins, name: "argumentPins", traits: {"smithy.api#required" => {}}))
    ApprovalPattern.type = Types::ApprovalPattern
    ApprovalStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    ApprovalStatus.add_member(:approved, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPROVED", traits: {"smithy.api#enumValue" => "APPROVED"}))
    ApprovalStatus.add_member(:rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECTED", traits: {"smithy.api#enumValue" => "REJECTED"}))
    ApprovalStatus.add_member(:revoked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REVOKED", traits: {"smithy.api#enumValue" => "REVOKED"}))
    ApprovalStatus.add_member(:redeemed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REDEEMED", traits: {"smithy.api#enumValue" => "REDEEMED"}))
    Asset.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "assetId", traits: {"smithy.api#required" => {}}))
    Asset.add_member(:asset_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetType, name: "assetType", traits: {"smithy.api#required" => {}}))
    Asset.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "metadata", traits: {"smithy.api#required" => {}}))
    Asset.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "version", traits: {"smithy.api#required" => {}}))
    Asset.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    Asset.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    Asset.type = Types::Asset
    AssetContent.add_member(:file, Types::AssetContent::File, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetFileContent, name: "file"))
    AssetContent.add_member(:zip, Types::AssetContent::Zip, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetZipContent, name: "zip"))
    AssetContent.add_member(:source_url, Types::AssetContent::SourceUrl, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetSourceUrlContent, name: "sourceUrl"))
    AssetContent.add_member(:unknown, Types::AssetContent::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AssetContent.type = Types::AssetContent
    AssetFile.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetFilePath, name: "path", traits: {"smithy.api#required" => {}}))
    AssetFile.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetFileBody, name: "content", traits: {"smithy.api#required" => {}}))
    AssetFile.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "metadata"))
    AssetFile.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "version", traits: {"smithy.api#required" => {}}))
    AssetFile.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    AssetFile.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    AssetFile.type = Types::AssetFile
    AssetFileBody.add_member(:bytes, Types::AssetFileBody::Bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetFileBytes, name: "bytes"))
    AssetFileBody.add_member(:text, Types::AssetFileBody::Text, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetFileText, name: "text"))
    AssetFileBody.add_member(:unknown, Types::AssetFileBody::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AssetFileBody.type = Types::AssetFileBody
    AssetFileContent.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetFilePath, name: "path", traits: {"smithy.api#required" => {}}))
    AssetFileContent.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetFileBody, name: "body", traits: {"smithy.api#required" => {}}))
    AssetFileContent.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "metadata"))
    AssetFileContent.type = Types::AssetFileContent
    AssetFileSummary.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetFilePath, name: "path", traits: {"smithy.api#required" => {}}))
    AssetFileSummary.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "metadata"))
    AssetFileSummary.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "version", traits: {"smithy.api#required" => {}}))
    AssetFileSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    AssetFileSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    AssetFileSummary.type = Types::AssetFileSummary
    AssetFileSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetFileSummary, name: "member"))
    AssetIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    AssetList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Asset, name: "member"))
    AssetSourceUrlContent.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetContentUrl, name: "url", traits: {"smithy.api#required" => {}}))
    AssetSourceUrlContent.type = Types::AssetSourceUrlContent
    AssetTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetTypeSummary, name: "member"))
    AssetTypeSummary.add_member(:asset_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetType, name: "assetType", traits: {"smithy.api#required" => {}}))
    AssetTypeSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#required" => {}}))
    AssetTypeSummary.type = Types::AssetTypeSummary
    AssetVersionMetadata.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "version", traits: {"smithy.api#required" => {}}))
    AssetVersionMetadata.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    AssetVersionMetadata.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    AssetVersionMetadata.type = Types::AssetVersionMetadata
    AssetVersionMetadataList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetVersionMetadata, name: "member"))
    AssetZipContent.add_member(:zip_file, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetZipBytes, name: "zipFile", traits: {"smithy.api#required" => {}}))
    AssetZipContent.type = Types::AssetZipContent
    AssistantMessage.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssistantMessageBlock, name: "member"))
    AssistantMessageBlock.add_member(:text, Types::AssistantMessageBlock::Text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "text"))
    AssistantMessageBlock.add_member(:tool_use, Types::AssistantMessageBlock::ToolUse, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "toolUse"))
    AssistantMessageBlock.add_member(:unknown, Types::AssistantMessageBlock::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AssistantMessageBlock.type = Types::AssistantMessageBlock
    AssociateServiceInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceId, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateServiceInput.add_member(:service_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceId, name: "serviceId", traits: {"smithy.api#required" => {}}))
    AssociateServiceInput.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceConfiguration, name: "configuration", traits: {"smithy.api#required" => {}}))
    AssociateServiceInput.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationCapabilities, name: "capabilities"))
    AssociateServiceInput.type = Types::AssociateServiceInput
    AssociateServiceOutput.add_member(:association, ::Smithy::Schema::Shapes::MemberShape.new(target: Association, name: "association", traits: {"smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    AssociateServiceOutput.add_member(:webhook, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericWebhook, name: "webhook"))
    AssociateServiceOutput.type = Types::AssociateServiceOutput
    Association.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceId, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    Association.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    Association.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    Association.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationStatus, name: "status"))
    Association.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationId, name: "associationId", traits: {"smithy.api#required" => {}}))
    Association.add_member(:service_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceId, name: "serviceId", traits: {"smithy.api#required" => {}}))
    Association.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceConfiguration, name: "configuration", traits: {"smithy.api#required" => {}}))
    Association.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationCapabilities, name: "capabilities"))
    Association.type = Types::Association
    AssociationCapabilities.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityType, name: "key"))
    AssociationCapabilities.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: CapabilityConfiguration, name: "value"))
    AssociationsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Association, name: "member"))
    AuthFlow.add_member(:iam, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM", traits: {"smithy.api#enumValue" => "iam"}))
    AuthFlow.add_member(:idc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IDC", traits: {"smithy.api#enumValue" => "idc"}))
    AuthFlow.add_member(:idp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IDP", traits: {"smithy.api#enumValue" => "idp"}))
    AzureConfiguration.add_member(:subscription_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "subscriptionId", traits: {"smithy.api#required" => {}}))
    AzureConfiguration.type = Types::AzureConfiguration
    AzureDevOpsConfiguration.add_member(:organization_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "organizationName", traits: {"smithy.api#required" => {}}))
    AzureDevOpsConfiguration.add_member(:project_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "projectId", traits: {"smithy.api#required" => {}}))
    AzureDevOpsConfiguration.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "projectName", traits: {"smithy.api#required" => {}}))
    AzureDevOpsConfiguration.type = Types::AzureDevOpsConfiguration
    CapabilityConfiguration.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enabled"))
    CapabilityConfiguration.add_member(:trigger_filter_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerFilterGroups, name: "triggerFilterGroups"))
    CapabilityConfiguration.type = Types::CapabilityConfiguration
    CapabilityType.add_member(:release_readiness_review, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RELEASE_READINESS_REVIEW", traits: {"smithy.api#enumValue" => "RELEASE_READINESS_REVIEW"}))
    CapabilityType.add_member(:release_readiness_review_automated_testing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RELEASE_READINESS_REVIEW_AUTOMATED_TESTING", traits: {"smithy.api#enumValue" => "RELEASE_READINESS_REVIEW_AUTOMATED_TESTING"}))
    ChatExecution.add_member(:execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "executionId", traits: {"smithy.api#required" => {}}))
    ChatExecution.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    ChatExecution.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt"))
    ChatExecution.add_member(:summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "summary"))
    ChatExecution.type = Types::ChatExecution
    ChatExecutionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatExecution, name: "member"))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    ContentSizeExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ContentSizeExceededException.type = Types::ContentSizeExceededException
    CreateAgentSpaceInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateAgentSpaceInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreateAgentSpaceInput.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: Locale, name: "locale"))
    CreateAgentSpaceInput.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "kmsKeyArn"))
    CreateAgentSpaceInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"max" => 64}, "smithy.api#pattern" => "^[!-~]+$"}))
    CreateAgentSpaceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags", traits: {"smithy.api#notProperty" => {}}))
    CreateAgentSpaceInput.add_member(:preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpacePreferences, name: "preferences", traits: {"smithy.api#notProperty" => {}}))
    CreateAgentSpaceInput.type = Types::CreateAgentSpaceInput
    CreateAgentSpaceOutput.add_member(:agent_space, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpace, name: "agentSpace", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    CreateAgentSpaceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags", traits: {"smithy.api#notProperty" => {}}))
    CreateAgentSpaceOutput.type = Types::CreateAgentSpaceOutput
    CreateAssetFileRequest.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceIdentifier, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAssetFileRequest.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "assetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAssetFileRequest.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetFilePath, name: "path", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAssetFileRequest.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetFileBody, name: "content", traits: {"smithy.api#required" => {}}))
    CreateAssetFileRequest.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "metadata"))
    CreateAssetFileRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 1, "max" => 128}}))
    CreateAssetFileRequest.type = Types::CreateAssetFileRequest
    CreateAssetFileResponse.add_member(:file, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetFile, name: "file", traits: {"smithy.api#required" => {}}))
    CreateAssetFileResponse.type = Types::CreateAssetFileResponse
    CreateAssetRequest.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceIdentifier, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAssetRequest.add_member(:asset_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetType, name: "assetType", traits: {"smithy.api#required" => {}}))
    CreateAssetRequest.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "metadata"))
    CreateAssetRequest.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetContent, name: "content", traits: {"smithy.api#required" => {}}))
    CreateAssetRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 1, "max" => 128}}))
    CreateAssetRequest.type = Types::CreateAssetRequest
    CreateAssetResponse.add_member(:asset, ::Smithy::Schema::Shapes::MemberShape.new(target: Asset, name: "asset", traits: {"smithy.api#required" => {}}))
    CreateAssetResponse.type = Types::CreateAssetResponse
    CreateBacklogTaskRequest.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceIdentifier, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateBacklogTaskRequest.add_member(:reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceInput, name: "reference"))
    CreateBacklogTaskRequest.add_member(:task_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskType, name: "taskType", traits: {"smithy.api#required" => {}}))
    CreateBacklogTaskRequest.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: BacklogTaskTitle, name: "title", traits: {"smithy.api#required" => {}}))
    CreateBacklogTaskRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: BacklogTaskDescription, name: "description"))
    CreateBacklogTaskRequest.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: Priority, name: "priority", traits: {"smithy.api#required" => {}}))
    CreateBacklogTaskRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\x21-\\x7E]+$"}))
    CreateBacklogTaskRequest.type = Types::CreateBacklogTaskRequest
    CreateBacklogTaskResponse.add_member(:task, ::Smithy::Schema::Shapes::MemberShape.new(target: Task, name: "task", traits: {"smithy.api#required" => {}}))
    CreateBacklogTaskResponse.type = Types::CreateBacklogTaskResponse
    CreateChatRequest.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceIdentifier, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateChatRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "userId", traits: {"smithy.api#deprecated" => {"message" => "userId is managed by the service and should not be provided by the caller", "since" => "2026-04-15"}, "smithy.api#httpQuery" => "userId"}))
    CreateChatRequest.add_member(:user_type, ::Smithy::Schema::Shapes::MemberShape.new(target: UserType, name: "userType", traits: {"smithy.api#httpQuery" => "userType"}))
    CreateChatRequest.type = Types::CreateChatRequest
    CreateChatResponse.add_member(:execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "executionId", traits: {"smithy.api#required" => {}}))
    CreateChatResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    CreateChatResponse.type = Types::CreateChatResponse
    CreatePrivateConnectionInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionName, name: "name", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "name"}))
    CreatePrivateConnectionInput.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionMode, name: "mode", traits: {"smithy.api#required" => {}}))
    CreatePrivateConnectionInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags", traits: {"smithy.api#notProperty" => {}}))
    CreatePrivateConnectionInput.type = Types::CreatePrivateConnectionInput
    CreatePrivateConnectionOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionName, name: "name", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "name"}))
    CreatePrivateConnectionOutput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionType, name: "type", traits: {"smithy.api#required" => {}}))
    CreatePrivateConnectionOutput.add_member(:resource_gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGatewayArn, name: "resourceGatewayId"))
    CreatePrivateConnectionOutput.add_member(:host_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressOrDnsName, name: "hostAddress"))
    CreatePrivateConnectionOutput.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "vpcId"))
    CreatePrivateConnectionOutput.add_member(:resource_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationArn, name: "resourceConfigurationId"))
    CreatePrivateConnectionOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CreatePrivateConnectionOutput.add_member(:certificate_expiry_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "certificateExpiryTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CreatePrivateConnectionOutput.add_member(:dns_resolution, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigDnsResolution, name: "dnsResolution"))
    CreatePrivateConnectionOutput.add_member(:failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureMessage, name: "failureMessage"))
    CreatePrivateConnectionOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags", traits: {"smithy.api#notProperty" => {}}))
    CreatePrivateConnectionOutput.type = Types::CreatePrivateConnectionOutput
    CreateTriggerRequest.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceIdentifier, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateTriggerRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerType, name: "type", traits: {"smithy.api#required" => {}}))
    CreateTriggerRequest.add_member(:condition, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerCondition, name: "condition", traits: {"smithy.api#required" => {}}))
    CreateTriggerRequest.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerAction, name: "action", traits: {"smithy.api#required" => {}}))
    CreateTriggerRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerStatus, name: "status"))
    CreateTriggerRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\x21-\\x7E]+$"}))
    CreateTriggerRequest.type = Types::CreateTriggerRequest
    CreateTriggerResponse.add_member(:trigger, ::Smithy::Schema::Shapes::MemberShape.new(target: Trigger, name: "trigger", traits: {"smithy.api#required" => {}}))
    CreateTriggerResponse.type = Types::CreateTriggerResponse
    CronSchedule.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleExpression, name: "expression", traits: {"smithy.api#required" => {}}))
    CronSchedule.type = Types::CronSchedule
    CustomHeaderNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomHeaderName, name: "member"))
    CustomHeaders.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomHeaderName, name: "key"))
    CustomHeaders.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomHeaderValue, name: "value"))
    DailyRecurrence.type = Types::DailyRecurrence
    DatadogAuthorizationConfig.add_member(:authorization_discovery, Types::DatadogAuthorizationConfig::AuthorizationDiscovery, ::Smithy::Schema::Shapes::MemberShape.new(target: MCPServerAuthorizationDiscoveryConfig, name: "authorizationDiscovery"))
    DatadogAuthorizationConfig.add_member(:unknown, Types::DatadogAuthorizationConfig::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    DatadogAuthorizationConfig.type = Types::DatadogAuthorizationConfig
    DatadogServiceDetails.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MCPServerName, name: "name", traits: {"smithy.api#required" => {}}))
    DatadogServiceDetails.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: MCPServerEndpoint, name: "endpoint", traits: {"smithy.api#required" => {}}))
    DatadogServiceDetails.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description", traits: {"smithy.api#length" => {"max" => 500}}))
    DatadogServiceDetails.add_member(:authorization_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DatadogAuthorizationConfig, name: "authorizationConfig", traits: {"smithy.api#required" => {}}))
    DatadogServiceDetails.type = Types::DatadogServiceDetails
    DayOfWeek.add_member(:monday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MONDAY", traits: {"smithy.api#enumValue" => "MONDAY"}))
    DayOfWeek.add_member(:tuesday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TUESDAY", traits: {"smithy.api#enumValue" => "TUESDAY"}))
    DayOfWeek.add_member(:wednesday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WEDNESDAY", traits: {"smithy.api#enumValue" => "WEDNESDAY"}))
    DayOfWeek.add_member(:thursday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "THURSDAY", traits: {"smithy.api#enumValue" => "THURSDAY"}))
    DayOfWeek.add_member(:friday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FRIDAY", traits: {"smithy.api#enumValue" => "FRIDAY"}))
    DayOfWeek.add_member(:saturday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SATURDAY", traits: {"smithy.api#enumValue" => "SATURDAY"}))
    DayOfWeek.add_member(:sunday, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUNDAY", traits: {"smithy.api#enumValue" => "SUNDAY"}))
    DeleteAgentSpaceInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceId, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAgentSpaceInput.type = Types::DeleteAgentSpaceInput
    DeleteAgentSpaceOutput.type = Types::DeleteAgentSpaceOutput
    DeleteAssetFileRequest.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceIdentifier, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssetFileRequest.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "assetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssetFileRequest.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetFilePath, name: "path", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssetFileRequest.type = Types::DeleteAssetFileRequest
    DeleteAssetFileResponse.type = Types::DeleteAssetFileResponse
    DeleteAssetRequest.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceIdentifier, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssetRequest.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "assetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssetRequest.type = Types::DeleteAssetRequest
    DeleteAssetResponse.type = Types::DeleteAssetResponse
    DeletePrivateConnectionInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionName, name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "name"}))
    DeletePrivateConnectionInput.type = Types::DeletePrivateConnectionInput
    DeletePrivateConnectionOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionName, name: "name", traits: {"smithy.api#required" => {}}))
    DeletePrivateConnectionOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DeletePrivateConnectionOutput.type = Types::DeletePrivateConnectionOutput
    DeleteTriggerRequest.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceIdentifier, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTriggerRequest.add_member(:trigger_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "triggerId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTriggerRequest.type = Types::DeleteTriggerRequest
    DeleteTriggerResponse.type = Types::DeleteTriggerResponse
    DeregisterServiceInput.add_member(:service_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceId, name: "serviceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "serviceId"}))
    DeregisterServiceInput.type = Types::DeregisterServiceInput
    DeregisterServiceOutput.type = Types::DeregisterServiceOutput
    DescribePrivateConnectionInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionName, name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "name"}))
    DescribePrivateConnectionInput.type = Types::DescribePrivateConnectionInput
    DescribePrivateConnectionOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionName, name: "name", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "name"}))
    DescribePrivateConnectionOutput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionType, name: "type", traits: {"smithy.api#required" => {}}))
    DescribePrivateConnectionOutput.add_member(:resource_gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGatewayArn, name: "resourceGatewayId"))
    DescribePrivateConnectionOutput.add_member(:host_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressOrDnsName, name: "hostAddress"))
    DescribePrivateConnectionOutput.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "vpcId"))
    DescribePrivateConnectionOutput.add_member(:resource_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationArn, name: "resourceConfigurationId"))
    DescribePrivateConnectionOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DescribePrivateConnectionOutput.add_member(:certificate_expiry_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "certificateExpiryTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    DescribePrivateConnectionOutput.add_member(:dns_resolution, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigDnsResolution, name: "dnsResolution"))
    DescribePrivateConnectionOutput.add_member(:failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureMessage, name: "failureMessage"))
    DescribePrivateConnectionOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags", traits: {"smithy.api#notProperty" => {}}))
    DescribePrivateConnectionOutput.type = Types::DescribePrivateConnectionOutput
    DisableOperatorAppInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceId, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    DisableOperatorAppInput.add_member(:auth_flow, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthFlow, name: "authFlow", traits: {"smithy.api#httpHeader" => "x-amzn-app-auth-flow", "smithy.api#notProperty" => {}}))
    DisableOperatorAppInput.type = Types::DisableOperatorAppInput
    DisassociateServiceInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceId, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateServiceInput.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationId, name: "associationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "associationId"}))
    DisassociateServiceInput.type = Types::DisassociateServiceInput
    DisassociateServiceOutput.type = Types::DisassociateServiceOutput
    DocumentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "member"))
    DynatraceConfiguration.add_member(:env_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "envId", traits: {"smithy.api#required" => {}}))
    DynatraceConfiguration.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: DynatraceResourceList, name: "resources"))
    DynatraceConfiguration.type = Types::DynatraceConfiguration
    DynatraceOAuthClientCredentialsConfig.add_member(:client_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[\\p{L}\\p{N}\\p{Z}._-]+$"}))
    DynatraceOAuthClientCredentialsConfig.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientId, name: "clientId", traits: {"smithy.api#required" => {}}))
    DynatraceOAuthClientCredentialsConfig.add_member(:exchange_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ExchangeParameters, name: "exchangeParameters"))
    DynatraceOAuthClientCredentialsConfig.add_member(:client_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientSecret, name: "clientSecret", traits: {"smithy.api#required" => {}}))
    DynatraceOAuthClientCredentialsConfig.type = Types::DynatraceOAuthClientCredentialsConfig
    DynatraceResourceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    DynatraceServiceAuthorizationConfig.add_member(:o_auth_client_credentials, Types::DynatraceServiceAuthorizationConfig::OAuthClientCredentials, ::Smithy::Schema::Shapes::MemberShape.new(target: DynatraceOAuthClientCredentialsConfig, name: "oAuthClientCredentials"))
    DynatraceServiceAuthorizationConfig.add_member(:unknown, Types::DynatraceServiceAuthorizationConfig::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    DynatraceServiceAuthorizationConfig.type = Types::DynatraceServiceAuthorizationConfig
    DynatraceServiceDetails.add_member(:account_urn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "accountUrn", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^urn:dtaccount:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$", "smithy.api#required" => {}}))
    DynatraceServiceDetails.add_member(:authorization_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DynatraceServiceAuthorizationConfig, name: "authorizationConfig"))
    DynatraceServiceDetails.type = Types::DynatraceServiceDetails
    EnableOperatorAppInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceId, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    EnableOperatorAppInput.add_member(:auth_flow, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthFlow, name: "authFlow", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    EnableOperatorAppInput.add_member(:operator_app_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "operatorAppRoleArn", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    EnableOperatorAppInput.add_member(:idc_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "idcInstanceArn", traits: {"smithy.api#notProperty" => {}}))
    EnableOperatorAppInput.add_member(:issuer_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "issuerUrl", traits: {"smithy.api#notProperty" => {}}))
    EnableOperatorAppInput.add_member(:idp_client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdpClientId, name: "idpClientId", traits: {"smithy.api#notProperty" => {}}))
    EnableOperatorAppInput.add_member(:idp_client_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: IdpClientSecret, name: "idpClientSecret", traits: {"smithy.api#notProperty" => {}}))
    EnableOperatorAppInput.add_member(:provider, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "provider", traits: {"smithy.api#notProperty" => {}}))
    EnableOperatorAppInput.type = Types::EnableOperatorAppInput
    EnableOperatorAppOutput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceId, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    EnableOperatorAppOutput.add_member(:operator_app_url, ::Smithy::Schema::Shapes::MemberShape.new(target: OperatorAppUrl, name: "operatorAppUrl", traits: {"smithy.api#notProperty" => {}}))
    EnableOperatorAppOutput.add_member(:iam, ::Smithy::Schema::Shapes::MemberShape.new(target: IamAuthConfiguration, name: "iam", traits: {"smithy.api#notProperty" => {}}))
    EnableOperatorAppOutput.add_member(:idc, ::Smithy::Schema::Shapes::MemberShape.new(target: IdcAuthConfiguration, name: "idc", traits: {"smithy.api#notProperty" => {}}))
    EnableOperatorAppOutput.add_member(:idp, ::Smithy::Schema::Shapes::MemberShape.new(target: IdpAuthConfiguration, name: "idp", traits: {"smithy.api#notProperty" => {}}))
    EnableOperatorAppOutput.type = Types::EnableOperatorAppOutput
    EventChannelConfiguration.type = Types::EventChannelConfiguration
    EventChannelDetails.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: EventChannelType, name: "type"))
    EventChannelDetails.type = Types::EventChannelDetails
    EventChannelType.add_member(:webhook, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WEBHOOK", traits: {"smithy.api#enumValue" => "webhook"}))
    ExchangeParameters.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    ExchangeParameters.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ExchangeParameterValue, name: "value"))
    Execution.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    Execution.add_member(:execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "executionId", traits: {"smithy.api#required" => {}}))
    Execution.add_member(:parent_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "parentExecutionId"))
    Execution.add_member(:agent_sub_task, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSubTask", traits: {"smithy.api#required" => {}}))
    Execution.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: JournalTimestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    Execution.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: JournalTimestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    Execution.add_member(:execution_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionStatus, name: "executionStatus", traits: {"smithy.api#required" => {}}))
    Execution.add_member(:agent_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentType"))
    Execution.add_member(:uid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "uid"))
    Execution.type = Types::Execution
    ExecutionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Execution, name: "member"))
    ExecutionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ExecutionStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    ExecutionStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    ExecutionStatus.add_member(:canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELED", traits: {"smithy.api#enumValue" => "CANCELED"}))
    ExecutionStatus.add_member(:timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMED_OUT", traits: {"smithy.api#enumValue" => "TIMED_OUT"}))
    ExecutionStatus.add_member(:waiting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WAITING", traits: {"smithy.api#enumValue" => "WAITING"}))
    GenericWebhook.add_member(:webhook_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "webhookUrl"))
    GenericWebhook.add_member(:webhook_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "webhookId"))
    GenericWebhook.add_member(:webhook_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WebhookType, name: "webhookType"))
    GenericWebhook.add_member(:webhook_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: WebhookSecret, name: "webhookSecret"))
    GenericWebhook.add_member(:api_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiKeyValue, name: "apiKey"))
    GenericWebhook.type = Types::GenericWebhook
    GetAccountUsageInput.type = Types::GetAccountUsageInput
    GetAccountUsageOutput.add_member(:monthly_account_investigation_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageMetric, name: "monthlyAccountInvestigationHours"))
    GetAccountUsageOutput.add_member(:monthly_account_evaluation_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageMetric, name: "monthlyAccountEvaluationHours"))
    GetAccountUsageOutput.add_member(:monthly_account_system_learning_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageMetric, name: "monthlyAccountSystemLearningHours"))
    GetAccountUsageOutput.add_member(:monthly_account_on_demand_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageMetric, name: "monthlyAccountOnDemandHours"))
    GetAccountUsageOutput.add_member(:monthly_account_grader_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageMetric, name: "monthlyAccountGraderHours"))
    GetAccountUsageOutput.add_member(:usage_period_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "usagePeriodStartTime", traits: {"smithy.api#required" => {}}))
    GetAccountUsageOutput.add_member(:usage_period_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "usagePeriodEndTime", traits: {"smithy.api#required" => {}}))
    GetAccountUsageOutput.type = Types::GetAccountUsageOutput
    GetAgentSpaceInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceId, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAgentSpaceInput.add_member(:included_data, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludedData, name: "includedData", traits: {"smithy.api#httpQuery" => "includedData", "smithy.api#notProperty" => {}}))
    GetAgentSpaceInput.type = Types::GetAgentSpaceInput
    GetAgentSpaceOutput.add_member(:agent_space, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpace, name: "agentSpace", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    GetAgentSpaceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags", traits: {"smithy.api#notProperty" => {}}))
    GetAgentSpaceOutput.type = Types::GetAgentSpaceOutput
    GetAssetContentRequest.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceIdentifier, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssetContentRequest.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "assetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssetContentRequest.add_member(:asset_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "assetVersion", traits: {"smithy.api#httpQuery" => "assetVersion", "smithy.api#range" => {"min" => 1}}))
    GetAssetContentRequest.type = Types::GetAssetContentRequest
    GetAssetContentResponse.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetZipContent, name: "content", traits: {"smithy.api#required" => {}}))
    GetAssetContentResponse.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "version", traits: {"smithy.api#required" => {}}))
    GetAssetContentResponse.type = Types::GetAssetContentResponse
    GetAssetFileRequest.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceIdentifier, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssetFileRequest.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "assetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssetFileRequest.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetFilePath, name: "path", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssetFileRequest.add_member(:asset_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "assetVersion", traits: {"smithy.api#httpQuery" => "assetVersion", "smithy.api#range" => {"min" => 1}}))
    GetAssetFileRequest.type = Types::GetAssetFileRequest
    GetAssetFileResponse.add_member(:file, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetFile, name: "file", traits: {"smithy.api#required" => {}}))
    GetAssetFileResponse.type = Types::GetAssetFileResponse
    GetAssetRequest.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceIdentifier, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssetRequest.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "assetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssetRequest.add_member(:asset_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "assetVersion", traits: {"smithy.api#httpQuery" => "assetVersion", "smithy.api#range" => {"min" => 1}}))
    GetAssetRequest.type = Types::GetAssetRequest
    GetAssetResponse.add_member(:asset, ::Smithy::Schema::Shapes::MemberShape.new(target: Asset, name: "asset", traits: {"smithy.api#required" => {}}))
    GetAssetResponse.type = Types::GetAssetResponse
    GetAssociationInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceId, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssociationInput.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationId, name: "associationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "associationId"}))
    GetAssociationInput.type = Types::GetAssociationInput
    GetAssociationOutput.add_member(:association, ::Smithy::Schema::Shapes::MemberShape.new(target: Association, name: "association", traits: {"smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    GetAssociationOutput.type = Types::GetAssociationOutput
    GetBacklogTaskRequest.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceIdentifier, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBacklogTaskRequest.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "taskId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBacklogTaskRequest.type = Types::GetBacklogTaskRequest
    GetBacklogTaskResponse.add_member(:task, ::Smithy::Schema::Shapes::MemberShape.new(target: Task, name: "task", traits: {"smithy.api#required" => {}}))
    GetBacklogTaskResponse.type = Types::GetBacklogTaskResponse
    GetOperatorAppInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceId, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    GetOperatorAppInput.type = Types::GetOperatorAppInput
    GetOperatorAppOutput.add_member(:operator_app_url, ::Smithy::Schema::Shapes::MemberShape.new(target: OperatorAppUrl, name: "operatorAppUrl", traits: {"smithy.api#notProperty" => {}}))
    GetOperatorAppOutput.add_member(:iam, ::Smithy::Schema::Shapes::MemberShape.new(target: IamAuthConfiguration, name: "iam", traits: {"smithy.api#notProperty" => {}}))
    GetOperatorAppOutput.add_member(:idc, ::Smithy::Schema::Shapes::MemberShape.new(target: IdcAuthConfiguration, name: "idc", traits: {"smithy.api#notProperty" => {}}))
    GetOperatorAppOutput.add_member(:idp, ::Smithy::Schema::Shapes::MemberShape.new(target: IdpAuthConfiguration, name: "idp", traits: {"smithy.api#notProperty" => {}}))
    GetOperatorAppOutput.type = Types::GetOperatorAppOutput
    GetRecommendationRequest.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceIdentifier, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRecommendationRequest.add_member(:recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "recommendationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRecommendationRequest.add_member(:recommendation_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "recommendationVersion", traits: {"smithy.api#httpQuery" => "recommendationVersion"}))
    GetRecommendationRequest.type = Types::GetRecommendationRequest
    GetRecommendationResponse.add_member(:recommendation, ::Smithy::Schema::Shapes::MemberShape.new(target: Recommendation, name: "recommendation", traits: {"smithy.api#required" => {}}))
    GetRecommendationResponse.type = Types::GetRecommendationResponse
    GetServiceInput.add_member(:service_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceId, name: "serviceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "serviceId"}))
    GetServiceInput.type = Types::GetServiceInput
    GetServiceOutput.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: RegisteredService, name: "service", traits: {"smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    GetServiceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags", traits: {"smithy.api#notProperty" => {}}))
    GetServiceOutput.type = Types::GetServiceOutput
    GetTriggerRequest.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceIdentifier, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTriggerRequest.add_member(:trigger_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "triggerId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTriggerRequest.type = Types::GetTriggerRequest
    GetTriggerResponse.add_member(:trigger, ::Smithy::Schema::Shapes::MemberShape.new(target: Trigger, name: "trigger", traits: {"smithy.api#required" => {}}))
    GetTriggerResponse.type = Types::GetTriggerResponse
    GitHubConfiguration.add_member(:repo_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "repoName", traits: {"smithy.api#required" => {}}))
    GitHubConfiguration.add_member(:repo_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "repoId", traits: {"smithy.api#required" => {}}))
    GitHubConfiguration.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "owner", traits: {"smithy.api#required" => {}}))
    GitHubConfiguration.add_member(:owner_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GithubRepoOwnerType, name: "ownerType", traits: {"smithy.api#required" => {}}))
    GitHubConfiguration.add_member(:instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "instanceIdentifier"))
    GitHubConfiguration.add_member(:runtime_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "runtimeRoleArn", traits: {"smithy.api#deprecated" => {"message" => "Superseded by the ReleaseManagement association. Configure the runtime role on the ReleaseManagement association and reference it via releaseManagementAssociationId.", "since" => "2026-08-04"}}))
    GitHubConfiguration.add_member(:release_management_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationId, name: "releaseManagementAssociationId"))
    GitHubConfiguration.type = Types::GitHubConfiguration
    GitLabConfiguration.add_member(:project_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "projectId", traits: {"smithy.api#required" => {}}))
    GitLabConfiguration.add_member(:project_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "projectPath", traits: {"smithy.api#required" => {}}))
    GitLabConfiguration.add_member(:instance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "instanceIdentifier"))
    GitLabConfiguration.add_member(:runtime_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "runtimeRoleArn", traits: {"smithy.api#deprecated" => {"message" => "Superseded by the ReleaseManagement association. Configure the runtime role on the ReleaseManagement association and reference it via releaseManagementAssociationId.", "since" => "2026-08-04"}}))
    GitLabConfiguration.add_member(:release_management_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationId, name: "releaseManagementAssociationId"))
    GitLabConfiguration.type = Types::GitLabConfiguration
    GitLabDetails.add_member(:target_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "targetUrl", traits: {"smithy.api#pattern" => "^https://[a-zA-Z0-9]([a-zA-Z0-9.-]*[a-zA-Z0-9])?(?::[0-9]{1,5})?/?$", "smithy.api#required" => {}}))
    GitLabDetails.add_member(:token_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GitLabTokenType, name: "tokenType", traits: {"smithy.api#required" => {}}))
    GitLabDetails.add_member(:token_value, ::Smithy::Schema::Shapes::MemberShape.new(target: GitLabTokenValue, name: "tokenValue", traits: {"smithy.api#required" => {}}))
    GitLabDetails.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "groupId"))
    GitLabDetails.type = Types::GitLabDetails
    GitLabTokenType.add_member(:personal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PERSONAL", traits: {"smithy.api#enumValue" => "personal"}))
    GitLabTokenType.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GROUP", traits: {"smithy.api#enumValue" => "group"}))
    GithubRepoOwnerType.add_member(:organization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORGANIZATION", traits: {"smithy.api#enumValue" => "organization"}))
    GithubRepoOwnerType.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER", traits: {"smithy.api#enumValue" => "user"}))
    Goal.add_member(:agent_space_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceArn", traits: {"smithy.api#required" => {}}))
    Goal.add_member(:goal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "goalId", traits: {"smithy.api#required" => {}}))
    Goal.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title", traits: {"smithy.api#required" => {}}))
    Goal.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: GoalContent, name: "content", traits: {"smithy.api#required" => {}}))
    Goal.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: GoalStatus, name: "status", traits: {"smithy.api#required" => {}}))
    Goal.add_member(:goal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GoalType, name: "goalType", traits: {"smithy.api#default" => "ONCALL_REPORT", "smithy.api#required" => {}}))
    Goal.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: BackLogTimestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    Goal.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: BackLogTimestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    Goal.add_member(:last_evaluated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: BackLogTimestamp, name: "lastEvaluatedAt"))
    Goal.add_member(:last_task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "lastTaskId"))
    Goal.add_member(:last_successful_task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "lastSuccessfulTaskId"))
    Goal.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "version", traits: {"smithy.api#required" => {}}))
    Goal.add_member(:evaluation_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: GoalSchedule, name: "evaluationSchedule"))
    Goal.type = Types::Goal
    GoalContent.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description", traits: {"smithy.api#required" => {}}))
    GoalContent.add_member(:objectives, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "objectives", traits: {"smithy.api#required" => {}}))
    GoalContent.type = Types::GoalContent
    GoalList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Goal, name: "member"))
    GoalSchedule.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: SchedulerState, name: "state", traits: {"smithy.api#required" => {}}))
    GoalSchedule.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "expression"))
    GoalSchedule.type = Types::GoalSchedule
    GoalScheduleInput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: SchedulerState, name: "state", traits: {"smithy.api#required" => {}}))
    GoalScheduleInput.type = Types::GoalScheduleInput
    GoalStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    GoalStatus.add_member(:paused, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAUSED", traits: {"smithy.api#enumValue" => "PAUSED"}))
    GoalStatus.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    GoalType.add_member(:customer_defined, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER_DEFINED", traits: {"smithy.api#enumValue" => "CUSTOMER_DEFINED"}))
    GoalType.add_member(:oncall_report, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONCALL_REPORT", traits: {"smithy.api#enumValue" => "ONCALL_REPORT"}))
    GrafanaServiceDetails.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MCPServerName, name: "name", traits: {"smithy.api#required" => {}}))
    GrafanaServiceDetails.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: MCPServerEndpoint, name: "endpoint", traits: {"smithy.api#required" => {}}))
    GrafanaServiceDetails.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description", traits: {"smithy.api#length" => {"max" => 500}}))
    GrafanaServiceDetails.add_member(:authorization_config, ::Smithy::Schema::Shapes::MemberShape.new(target: MCPServerAuthorizationConfig, name: "authorizationConfig", traits: {"smithy.api#required" => {}}))
    GrafanaServiceDetails.type = Types::GrafanaServiceDetails
    IamAuthConfiguration.add_member(:operator_app_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "operatorAppRoleArn", traits: {"smithy.api#required" => {}}))
    IamAuthConfiguration.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    IamAuthConfiguration.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    IamAuthConfiguration.type = Types::IamAuthConfiguration
    IdcAuthConfiguration.add_member(:operator_app_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "operatorAppRoleArn", traits: {"smithy.api#required" => {}}))
    IdcAuthConfiguration.add_member(:idc_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "idcInstanceArn", traits: {"smithy.api#required" => {}}))
    IdcAuthConfiguration.add_member(:idc_application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "idcApplicationArn"))
    IdcAuthConfiguration.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    IdcAuthConfiguration.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    IdcAuthConfiguration.type = Types::IdcAuthConfiguration
    IdentityCenterServiceException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    IdentityCenterServiceException.add_member(:underlying_error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "underlyingErrorCode"))
    IdentityCenterServiceException.type = Types::IdentityCenterServiceException
    IdpAuthConfiguration.add_member(:issuer_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "issuerUrl", traits: {"smithy.api#required" => {}}))
    IdpAuthConfiguration.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientId", traits: {"smithy.api#required" => {}}))
    IdpAuthConfiguration.add_member(:operator_app_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "operatorAppRoleArn", traits: {"smithy.api#required" => {}}))
    IdpAuthConfiguration.add_member(:provider, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "provider", traits: {"smithy.api#required" => {}}))
    IdpAuthConfiguration.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    IdpAuthConfiguration.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    IdpAuthConfiguration.type = Types::IdpAuthConfiguration
    IncludedData.add_member(:metadata_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "METADATA_ONLY", traits: {"smithy.api#enumValue" => "METADATA_ONLY"}))
    IncludedData.add_member(:all_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL_DATA", traits: {"smithy.api#enumValue" => "ALL_DATA"}))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    InvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InvalidParameterException.type = Types::InvalidParameterException
    IpAddressType.add_member(:ipv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV4", traits: {"smithy.api#enumValue" => "IPV4"}))
    IpAddressType.add_member(:ipv6, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV6", traits: {"smithy.api#enumValue" => "IPV6"}))
    IpAddressType.add_member(:dual_stack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DUAL_STACK", traits: {"smithy.api#enumValue" => "DUAL_STACK"}))
    JournalRecord.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    JournalRecord.add_member(:execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "executionId", traits: {"smithy.api#required" => {}}))
    JournalRecord.add_member(:record_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "recordId", traits: {"smithy.api#required" => {}}))
    JournalRecord.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "content", traits: {"smithy.api#required" => {}}))
    JournalRecord.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: JournalTimestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    JournalRecord.add_member(:record_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "recordType", traits: {"smithy.api#required" => {}}))
    JournalRecord.add_member(:user_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: UserReference, name: "userReference"))
    JournalRecord.type = Types::JournalRecord
    JournalRecordList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: JournalRecord, name: "member"))
    ListAgentSpacesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#default" => 20, "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListAgentSpacesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAgentSpacesInput.add_member(:included_data, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludedData, name: "includedData", traits: {"smithy.api#httpQuery" => "includedData", "smithy.api#notProperty" => {}}))
    ListAgentSpacesInput.type = Types::ListAgentSpacesInput
    ListAgentSpacesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAgentSpacesOutput.add_member(:agent_spaces, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceList, name: "agentSpaces", traits: {"smithy.api#required" => {}}))
    ListAgentSpacesOutput.type = Types::ListAgentSpacesOutput
    ListAssetFilesRequest.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceIdentifier, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAssetFilesRequest.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "assetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAssetFilesRequest.add_member(:asset_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "assetVersion", traits: {"smithy.api#httpQuery" => "assetVersion", "smithy.api#range" => {"min" => 1}}))
    ListAssetFilesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAssetFilesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListAssetFilesRequest.type = Types::ListAssetFilesRequest
    ListAssetFilesResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetFileSummaryList, name: "items", traits: {"smithy.api#required" => {}}))
    ListAssetFilesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAssetFilesResponse.type = Types::ListAssetFilesResponse
    ListAssetTypesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAssetTypesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListAssetTypesRequest.type = Types::ListAssetTypesRequest
    ListAssetTypesResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetTypeList, name: "items", traits: {"smithy.api#required" => {}}))
    ListAssetTypesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAssetTypesResponse.type = Types::ListAssetTypesResponse
    ListAssetVersionsRequest.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceIdentifier, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAssetVersionsRequest.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "assetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAssetVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListAssetVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAssetVersionsRequest.type = Types::ListAssetVersionsRequest
    ListAssetVersionsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetVersionMetadataList, name: "items", traits: {"smithy.api#required" => {}}))
    ListAssetVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAssetVersionsResponse.type = Types::ListAssetVersionsResponse
    ListAssetsRequest.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceIdentifier, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAssetsRequest.add_member(:asset_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetType, name: "assetType", traits: {"smithy.api#httpQuery" => "assetType"}))
    ListAssetsRequest.add_member(:updated_after, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAfter", traits: {"smithy.api#httpQuery" => "updatedAfter"}))
    ListAssetsRequest.add_member(:updated_before, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedBefore", traits: {"smithy.api#httpQuery" => "updatedBefore"}))
    ListAssetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAssetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListAssetsRequest.type = Types::ListAssetsRequest
    ListAssetsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetList, name: "items", traits: {"smithy.api#required" => {}}))
    ListAssetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAssetsResponse.type = Types::ListAssetsResponse
    ListAssociationsInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceId, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAssociationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#default" => 20, "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListAssociationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAssociationsInput.add_member(:filter_service_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "filterServiceTypes", traits: {"smithy.api#httpQuery" => "filterServiceTypes", "smithy.api#pattern" => "^\\w+(?:,\\s*\\w+)*$"}))
    ListAssociationsInput.type = Types::ListAssociationsInput
    ListAssociationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAssociationsOutput.add_member(:associations, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationsList, name: "associations", traits: {"smithy.api#required" => {}}))
    ListAssociationsOutput.type = Types::ListAssociationsOutput
    ListBacklogTasksRequest.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceIdentifier, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBacklogTasksRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskFilter, name: "filter"))
    ListBacklogTasksRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "limit", traits: {"smithy.api#default" => 100, "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListBacklogTasksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListBacklogTasksRequest.add_member(:sort_field, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskSortField, name: "sortField"))
    ListBacklogTasksRequest.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskSortOrder, name: "order", traits: {"smithy.api#default" => "DESC"}))
    ListBacklogTasksRequest.type = Types::ListBacklogTasksRequest
    ListBacklogTasksResponse.add_member(:tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskList, name: "tasks", traits: {"smithy.api#required" => {}}))
    ListBacklogTasksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListBacklogTasksResponse.type = Types::ListBacklogTasksResponse
    ListChatsRequest.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceIdentifier, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListChatsRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "userId", traits: {"smithy.api#deprecated" => {"message" => "userId is managed by the service and should not be provided by the caller", "since" => "2026-04-15"}, "smithy.api#httpQuery" => "userId"}))
    ListChatsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 20}}))
    ListChatsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListChatsRequest.type = Types::ListChatsRequest
    ListChatsResponse.add_member(:executions, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatExecutionList, name: "executions", traits: {"smithy.api#required" => {}}))
    ListChatsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListChatsResponse.type = Types::ListChatsResponse
    ListExecutionsRequest.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceIdentifier, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListExecutionsRequest.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "taskId", traits: {"smithy.api#required" => {}}))
    ListExecutionsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "limit"))
    ListExecutionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListExecutionsRequest.type = Types::ListExecutionsRequest
    ListExecutionsResponse.add_member(:executions, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionList, name: "executions", traits: {"smithy.api#required" => {}}))
    ListExecutionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListExecutionsResponse.type = Types::ListExecutionsResponse
    ListGoalsRequest.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceIdentifier, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListGoalsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: GoalStatus, name: "status"))
    ListGoalsRequest.add_member(:goal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GoalType, name: "goalType"))
    ListGoalsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "limit", traits: {"smithy.api#default" => 50, "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListGoalsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListGoalsRequest.type = Types::ListGoalsRequest
    ListGoalsResponse.add_member(:goals, ::Smithy::Schema::Shapes::MemberShape.new(target: GoalList, name: "goals", traits: {"smithy.api#required" => {}}))
    ListGoalsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListGoalsResponse.type = Types::ListGoalsResponse
    ListJournalRecordsRequest.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceIdentifier, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListJournalRecordsRequest.add_member(:execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "executionId", traits: {"smithy.api#required" => {}}))
    ListJournalRecordsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "limit", traits: {"smithy.api#default" => 100, "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListJournalRecordsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListJournalRecordsRequest.add_member(:record_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "recordType", traits: {"smithy.api#default" => ""}))
    ListJournalRecordsRequest.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderType, name: "order", traits: {"smithy.api#default" => "DESC"}))
    ListJournalRecordsRequest.type = Types::ListJournalRecordsRequest
    ListJournalRecordsResponse.add_member(:records, ::Smithy::Schema::Shapes::MemberShape.new(target: JournalRecordList, name: "records", traits: {"smithy.api#required" => {}}))
    ListJournalRecordsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListJournalRecordsResponse.type = Types::ListJournalRecordsResponse
    ListOfSecurityGroupIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupId, name: "member"))
    ListOfSubnetIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "member"))
    ListPendingMessagesRequest.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceId, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListPendingMessagesRequest.add_member(:execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "executionId", traits: {"smithy.api#required" => {}}))
    ListPendingMessagesRequest.type = Types::ListPendingMessagesRequest
    ListPendingMessagesResponse.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceId, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    ListPendingMessagesResponse.add_member(:execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "executionId", traits: {"smithy.api#required" => {}}))
    ListPendingMessagesResponse.add_member(:messages, ::Smithy::Schema::Shapes::MemberShape.new(target: PendingMessages, name: "messages", traits: {"smithy.api#default" => [], "smithy.api#required" => {}}))
    ListPendingMessagesResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    ListPendingMessagesResponse.type = Types::ListPendingMessagesResponse
    ListPrivateConnectionsInput.type = Types::ListPrivateConnectionsInput
    ListPrivateConnectionsOutput.add_member(:private_connections, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionSummaryList, name: "privateConnections", traits: {"smithy.api#required" => {}}))
    ListPrivateConnectionsOutput.type = Types::ListPrivateConnectionsOutput
    ListRecommendationsRequest.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceIdentifier, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRecommendationsRequest.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "taskId"))
    ListRecommendationsRequest.add_member(:goal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "goalId"))
    ListRecommendationsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationStatus, name: "status"))
    ListRecommendationsRequest.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationPriority, name: "priority"))
    ListRecommendationsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "limit", traits: {"smithy.api#default" => 50, "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListRecommendationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListRecommendationsRequest.type = Types::ListRecommendationsRequest
    ListRecommendationsResponse.add_member(:recommendations, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationList, name: "recommendations", traits: {"smithy.api#required" => {}}))
    ListRecommendationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListRecommendationsResponse.type = Types::ListRecommendationsResponse
    ListServicesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#default" => 20, "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListServicesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListServicesInput.add_member(:filter_service_type, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, name: "filterServiceType", traits: {"smithy.api#httpQuery" => "filterServiceType"}))
    ListServicesInput.type = Types::ListServicesInput
    ListServicesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListServicesOutput.add_member(:services, ::Smithy::Schema::Shapes::MemberShape.new(target: RegisteredServicesList, name: "services", traits: {"smithy.api#required" => {}}))
    ListServicesOutput.type = Types::ListServicesOutput
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:aws:aidevops:[a-z0-9-]+:\\d{12}:(agentspace|service|private-connection)/[a-zA-Z0-9_-]+$", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTriggersRequest.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceIdentifier, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTriggersRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerStatus, name: "status", traits: {"smithy.api#httpQuery" => "status"}))
    ListTriggersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTriggersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListTriggersRequest.type = Types::ListTriggersRequest
    ListTriggersResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerList, name: "items", traits: {"smithy.api#required" => {}}))
    ListTriggersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTriggersResponse.type = Types::ListTriggersResponse
    ListWebhooksInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceId, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListWebhooksInput.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationId, name: "associationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "associationId"}))
    ListWebhooksInput.type = Types::ListWebhooksInput
    ListWebhooksOutput.add_member(:webhooks, ::Smithy::Schema::Shapes::MemberShape.new(target: WebhooksList, name: "webhooks", traits: {"smithy.api#required" => {}}))
    ListWebhooksOutput.type = Types::ListWebhooksOutput
    MCPServerAPIKeyConfig.add_member(:api_key_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "apiKeyName", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_\\s-]+$", "smithy.api#required" => {}}))
    MCPServerAPIKeyConfig.add_member(:api_key_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiKeyValue, name: "apiKeyValue", traits: {"smithy.api#pattern" => "^[!-~]([ \\t]*[!-~])*$", "smithy.api#required" => {}}))
    MCPServerAPIKeyConfig.add_member(:api_key_header, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "apiKeyHeader", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9-_]+$", "smithy.api#required" => {}}))
    MCPServerAPIKeyConfig.type = Types::MCPServerAPIKeyConfig
    MCPServerAuthorizationConfig.add_member(:o_auth_client_credentials, Types::MCPServerAuthorizationConfig::OAuthClientCredentials, ::Smithy::Schema::Shapes::MemberShape.new(target: MCPServerOAuthClientCredentialsConfig, name: "oAuthClientCredentials"))
    MCPServerAuthorizationConfig.add_member(:o_auth3_lo, Types::MCPServerAuthorizationConfig::OAuth3LO, ::Smithy::Schema::Shapes::MemberShape.new(target: MCPServerOAuth3LOConfig, name: "oAuth3LO"))
    MCPServerAuthorizationConfig.add_member(:api_key, Types::MCPServerAuthorizationConfig::ApiKey, ::Smithy::Schema::Shapes::MemberShape.new(target: MCPServerAPIKeyConfig, name: "apiKey"))
    MCPServerAuthorizationConfig.add_member(:bearer_token, Types::MCPServerAuthorizationConfig::BearerToken, ::Smithy::Schema::Shapes::MemberShape.new(target: MCPServerBearerTokenConfig, name: "bearerToken"))
    MCPServerAuthorizationConfig.add_member(:custom_headers, Types::MCPServerAuthorizationConfig::CustomHeaders, ::Smithy::Schema::Shapes::MemberShape.new(target: MCPServerCustomHeadersConfig, name: "customHeaders"))
    MCPServerAuthorizationConfig.add_member(:authorization_discovery, Types::MCPServerAuthorizationConfig::AuthorizationDiscovery, ::Smithy::Schema::Shapes::MemberShape.new(target: MCPServerAuthorizationDiscoveryConfig, name: "authorizationDiscovery"))
    MCPServerAuthorizationConfig.add_member(:unknown, Types::MCPServerAuthorizationConfig::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    MCPServerAuthorizationConfig.type = Types::MCPServerAuthorizationConfig
    MCPServerAuthorizationDiscoveryConfig.add_member(:return_to_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "returnToEndpoint", traits: {"smithy.api#pattern" => "^https://([a-zA-Z0-9.-]*\\.(console\\.(aws|aws-dev)|awsc-(integ|preprod)\\.aws)\\.amazon\\.com|[a-zA-Z0-9-]+\\.aidevops(-beta|-gamma)?\\.global\\.app\\.aws)(/.*)?$", "smithy.api#required" => {}}))
    MCPServerAuthorizationDiscoveryConfig.type = Types::MCPServerAuthorizationDiscoveryConfig
    MCPServerAuthorizationMethod.add_member(:oauth_client_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OAUTH_CLIENT_CREDENTIALS", traits: {"smithy.api#enumValue" => "oauth-client-credentials"}))
    MCPServerAuthorizationMethod.add_member(:oauth_3_lo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OAUTH_3LO", traits: {"smithy.api#enumValue" => "oauth-3lo"}))
    MCPServerAuthorizationMethod.add_member(:api_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "API_KEY", traits: {"smithy.api#enumValue" => "api-key"}))
    MCPServerAuthorizationMethod.add_member(:bearer_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEARER_TOKEN", traits: {"smithy.api#enumValue" => "bearer-token"}))
    MCPServerAuthorizationMethod.add_member(:custom_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM_HEADERS", traits: {"smithy.api#enumValue" => "custom-headers"}))
    MCPServerBearerTokenConfig.add_member(:token_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "tokenName", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_\\s-]+$", "smithy.api#required" => {}}))
    MCPServerBearerTokenConfig.add_member(:token_value, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenValue, name: "tokenValue", traits: {"smithy.api#pattern" => "^[\\S]+$", "smithy.api#required" => {}}))
    MCPServerBearerTokenConfig.add_member(:authorization_header, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "authorizationHeader", traits: {"smithy.api#default" => "Authorization", "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"}))
    MCPServerBearerTokenConfig.type = Types::MCPServerBearerTokenConfig
    MCPServerConfiguration.add_member(:tools, ::Smithy::Schema::Shapes::MemberShape.new(target: MCPToolsList, name: "tools", traits: {"smithy.api#required" => {}}))
    MCPServerConfiguration.add_member(:tool_details, ::Smithy::Schema::Shapes::MemberShape.new(target: MCPToolDetailsList, name: "toolDetails"))
    MCPServerConfiguration.type = Types::MCPServerConfiguration
    MCPServerCustomHeadersConfig.add_member(:headers, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomHeaders, name: "headers", traits: {"smithy.api#length" => {"min" => 1, "max" => 3}, "smithy.api#required" => {}}))
    MCPServerCustomHeadersConfig.type = Types::MCPServerCustomHeadersConfig
    MCPServerDatadogConfiguration.add_member(:enabled_elevated_tools, ::Smithy::Schema::Shapes::MemberShape.new(target: MCPToolDetailsList, name: "enabledElevatedTools"))
    MCPServerDatadogConfiguration.type = Types::MCPServerDatadogConfiguration
    MCPServerDetails.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MCPServerName, name: "name", traits: {"smithy.api#required" => {}}))
    MCPServerDetails.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: MCPServerEndpoint, name: "endpoint", traits: {"smithy.api#required" => {}}))
    MCPServerDetails.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description", traits: {"smithy.api#length" => {"max" => 500}}))
    MCPServerDetails.add_member(:authorization_config, ::Smithy::Schema::Shapes::MemberShape.new(target: MCPServerAuthorizationConfig, name: "authorizationConfig", traits: {"smithy.api#required" => {}}))
    MCPServerDetails.type = Types::MCPServerDetails
    MCPServerGrafanaConfiguration.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "endpoint", traits: {"smithy.api#pattern" => "^https://[a-zA-Z0-9.-]+(?::[0-9]+)?(?:/.*)?$", "smithy.api#required" => {}}))
    MCPServerGrafanaConfiguration.add_member(:organization_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "organizationId", traits: {"smithy.api#pattern" => "^[0-9]+$"}))
    MCPServerGrafanaConfiguration.add_member(:tools, ::Smithy::Schema::Shapes::MemberShape.new(target: MCPToolsList, name: "tools"))
    MCPServerGrafanaConfiguration.add_member(:enabled_elevated_tools, ::Smithy::Schema::Shapes::MemberShape.new(target: MCPToolDetailsList, name: "enabledElevatedTools"))
    MCPServerGrafanaConfiguration.type = Types::MCPServerGrafanaConfiguration
    MCPServerNewRelicConfiguration.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "accountId", traits: {"smithy.api#length" => {"min" => 3, "max" => 7}, "smithy.api#pattern" => "^[0-9]+$", "smithy.api#required" => {}}))
    MCPServerNewRelicConfiguration.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "endpoint", traits: {"smithy.api#pattern" => "^https://[a-zA-Z0-9.-]+(?::[0-9]+)?(?:/.*)?$", "smithy.api#required" => {}}))
    MCPServerNewRelicConfiguration.type = Types::MCPServerNewRelicConfiguration
    MCPServerOAuth3LOConfig.add_member(:client_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[\\p{L}\\p{N}\\p{Z}._-]+$"}))
    MCPServerOAuth3LOConfig.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientId, name: "clientId", traits: {"smithy.api#required" => {}}))
    MCPServerOAuth3LOConfig.add_member(:exchange_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ExchangeParameters, name: "exchangeParameters"))
    MCPServerOAuth3LOConfig.add_member(:return_to_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "returnToEndpoint", traits: {"smithy.api#pattern" => "^https://([a-zA-Z0-9.-]*\\.(console\\.(aws|aws-dev)|awsc-(integ|preprod)\\.aws)\\.amazon\\.com|[a-zA-Z0-9-]+\\.aidevops(-beta|-gamma)?\\.global\\.app\\.aws)(/.*)?$", "smithy.api#required" => {}}))
    MCPServerOAuth3LOConfig.add_member(:authorization_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "authorizationUrl", traits: {"smithy.api#pattern" => "^https://[a-zA-Z0-9.-]+(?::[0-9]+)?(?:/.*)?$", "smithy.api#required" => {}}))
    MCPServerOAuth3LOConfig.add_member(:exchange_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "exchangeUrl", traits: {"smithy.api#pattern" => "^https://[a-zA-Z0-9.-]+(?::[0-9]+)?(?:/.*)?$", "smithy.api#required" => {}}))
    MCPServerOAuth3LOConfig.add_member(:client_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientSecret, name: "clientSecret", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[\\S]*$"}))
    MCPServerOAuth3LOConfig.add_member(:support_code_challenge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "supportCodeChallenge", traits: {"smithy.api#default" => false}))
    MCPServerOAuth3LOConfig.add_member(:scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: Scopes, name: "scopes"))
    MCPServerOAuth3LOConfig.type = Types::MCPServerOAuth3LOConfig
    MCPServerOAuthClientCredentialsConfig.add_member(:client_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[\\p{L}\\p{N}\\p{Z}._-]+$"}))
    MCPServerOAuthClientCredentialsConfig.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientId, name: "clientId", traits: {"smithy.api#required" => {}}))
    MCPServerOAuthClientCredentialsConfig.add_member(:exchange_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ExchangeParameters, name: "exchangeParameters"))
    MCPServerOAuthClientCredentialsConfig.add_member(:client_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientSecret, name: "clientSecret", traits: {"smithy.api#required" => {}}))
    MCPServerOAuthClientCredentialsConfig.add_member(:exchange_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "exchangeUrl", traits: {"smithy.api#pattern" => "^https://[a-zA-Z0-9.-]+(?::[0-9]+)?(?:/.*)?$", "smithy.api#required" => {}}))
    MCPServerOAuthClientCredentialsConfig.add_member(:scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: Scopes, name: "scopes"))
    MCPServerOAuthClientCredentialsConfig.type = Types::MCPServerOAuthClientCredentialsConfig
    MCPServerSigV4AuthorizationConfig.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: SigV4Region, name: "region", traits: {"smithy.api#required" => {}}))
    MCPServerSigV4AuthorizationConfig.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "service", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#required" => {}}))
    MCPServerSigV4AuthorizationConfig.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "roleArn", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => "", "smithy.api#deprecated" => {"message" => "Use mcpRoleArn instead.", "since" => "2026-05-27"}, "smithy.api#length" => {"min" => 0, "max" => 255}}))
    MCPServerSigV4AuthorizationConfig.add_member(:mcp_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "mcpRoleArn"))
    MCPServerSigV4AuthorizationConfig.add_member(:custom_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomHeaders, name: "customHeaders"))
    MCPServerSigV4AuthorizationConfig.type = Types::MCPServerSigV4AuthorizationConfig
    MCPServerSigV4Configuration.add_member(:tools, ::Smithy::Schema::Shapes::MemberShape.new(target: MCPToolsList, name: "tools", traits: {"smithy.api#required" => {}}))
    MCPServerSigV4Configuration.add_member(:tool_details, ::Smithy::Schema::Shapes::MemberShape.new(target: MCPToolDetailsList, name: "toolDetails"))
    MCPServerSigV4Configuration.type = Types::MCPServerSigV4Configuration
    MCPServerSigV4ServiceDetails.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MCPServerName, name: "name", traits: {"smithy.api#required" => {}}))
    MCPServerSigV4ServiceDetails.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: MCPServerEndpoint, name: "endpoint", traits: {"smithy.api#required" => {}}))
    MCPServerSigV4ServiceDetails.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description", traits: {"smithy.api#length" => {"max" => 500}}))
    MCPServerSigV4ServiceDetails.add_member(:authorization_config, ::Smithy::Schema::Shapes::MemberShape.new(target: MCPServerSigV4AuthorizationConfig, name: "authorizationConfig", traits: {"smithy.api#required" => {}}))
    MCPServerSigV4ServiceDetails.type = Types::MCPServerSigV4ServiceDetails
    MCPServerSplunkConfiguration.type = Types::MCPServerSplunkConfiguration
    MCPToolDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$", "smithy.api#required" => {}}))
    MCPToolDetail.add_member(:tool_classification, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolClassification, name: "toolClassification"))
    MCPToolDetail.type = Types::MCPToolDetail
    MCPToolDetailsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MCPToolDetail, name: "member"))
    MCPToolsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"}))
    Message.add_member(:user_message, Types::Message::UserMessage, ::Smithy::Schema::Shapes::MemberShape.new(target: UserMessage, name: "userMessage"))
    Message.add_member(:assistant_message, Types::Message::AssistantMessage, ::Smithy::Schema::Shapes::MemberShape.new(target: AssistantMessage, name: "assistantMessage"))
    Message.add_member(:unknown, Types::Message::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Message.type = Types::Message
    MonitorAccountType.add_member(:monitor, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MONITOR", traits: {"smithy.api#enumValue" => "monitor"}))
    MonthlyRecurrence.add_member(:day_of_month, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "dayOfMonth", traits: {"smithy.api#range" => {"min" => 1, "max" => 31}, "smithy.api#required" => {}}))
    MonthlyRecurrence.type = Types::MonthlyRecurrence
    NetworkAccessConfiguration.add_member(:private_access, Types::NetworkAccessConfiguration::PrivateAccess, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateNetworkAccess, name: "privateAccess"))
    NetworkAccessConfiguration.add_member(:unknown, Types::NetworkAccessConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    NetworkAccessConfiguration.type = Types::NetworkAccessConfiguration
    NewRelicAlertPolicyIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member", traits: {"smithy.api#pattern" => "^[0-9]+$"}))
    NewRelicApiKeyConfig.add_member(:api_key, ::Smithy::Schema::Shapes::MemberShape.new(target: NewRelicApiKey, name: "apiKey", traits: {"smithy.api#required" => {}}))
    NewRelicApiKeyConfig.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "accountId", traits: {"smithy.api#length" => {"min" => 3, "max" => 7}, "smithy.api#pattern" => "^[0-9]+$", "smithy.api#required" => {}}))
    NewRelicApiKeyConfig.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: NewRelicRegion, name: "region", traits: {"smithy.api#required" => {}}))
    NewRelicApiKeyConfig.add_member(:application_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: NewRelicApplicationIds, name: "applicationIds"))
    NewRelicApiKeyConfig.add_member(:entity_guids, ::Smithy::Schema::Shapes::MemberShape.new(target: NewRelicEntityGuids, name: "entityGuids"))
    NewRelicApiKeyConfig.add_member(:alert_policy_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: NewRelicAlertPolicyIds, name: "alertPolicyIds"))
    NewRelicApiKeyConfig.type = Types::NewRelicApiKeyConfig
    NewRelicApplicationIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member", traits: {"smithy.api#pattern" => "^[0-9]+$"}))
    NewRelicEntityGuids.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"}))
    NewRelicRegion.add_member(:us, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "US", traits: {"smithy.api#enumValue" => "US"}))
    NewRelicRegion.add_member(:eu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EU", traits: {"smithy.api#enumValue" => "EU"}))
    NewRelicRegion.add_member(:jp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JP", traits: {"smithy.api#enumValue" => "JP"}))
    NewRelicServiceAuthorizationConfig.add_member(:api_key, Types::NewRelicServiceAuthorizationConfig::ApiKey, ::Smithy::Schema::Shapes::MemberShape.new(target: NewRelicApiKeyConfig, name: "apiKey"))
    NewRelicServiceAuthorizationConfig.add_member(:unknown, Types::NewRelicServiceAuthorizationConfig::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    NewRelicServiceAuthorizationConfig.type = Types::NewRelicServiceAuthorizationConfig
    NewRelicServiceDetails.add_member(:authorization_config, ::Smithy::Schema::Shapes::MemberShape.new(target: NewRelicServiceAuthorizationConfig, name: "authorizationConfig", traits: {"smithy.api#required" => {}}))
    NewRelicServiceDetails.type = Types::NewRelicServiceDetails
    OAuthAdditionalStepDetails.add_member(:authorization_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "authorizationUrl", traits: {"smithy.api#required" => {}}))
    OAuthAdditionalStepDetails.type = Types::OAuthAdditionalStepDetails
    OrderType.add_member(:asc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASC", traits: {"smithy.api#enumValue" => "ASC"}))
    OrderType.add_member(:desc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESC", traits: {"smithy.api#enumValue" => "DESC"}))
    PagerDutyAuthorizationConfig.add_member(:o_auth_client_credentials, Types::PagerDutyAuthorizationConfig::OAuthClientCredentials, ::Smithy::Schema::Shapes::MemberShape.new(target: PagerDutyOAuthClientCredentialsConfig, name: "oAuthClientCredentials"))
    PagerDutyAuthorizationConfig.add_member(:unknown, Types::PagerDutyAuthorizationConfig::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    PagerDutyAuthorizationConfig.type = Types::PagerDutyAuthorizationConfig
    PagerDutyConfiguration.add_member(:services, ::Smithy::Schema::Shapes::MemberShape.new(target: PagerDutyServicesList, name: "services", traits: {"smithy.api#required" => {}}))
    PagerDutyConfiguration.add_member(:customer_email, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "customerEmail", traits: {"smithy.api#required" => {}}))
    PagerDutyConfiguration.type = Types::PagerDutyConfiguration
    PagerDutyDetails.add_member(:scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: PagerDutyScopes, name: "scopes", traits: {"smithy.api#required" => {}}))
    PagerDutyDetails.add_member(:authorization_config, ::Smithy::Schema::Shapes::MemberShape.new(target: PagerDutyAuthorizationConfig, name: "authorizationConfig", traits: {"smithy.api#required" => {}}))
    PagerDutyDetails.type = Types::PagerDutyDetails
    PagerDutyOAuthClientCredentialsConfig.add_member(:client_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[\\p{L}\\p{N}\\p{Z}._-]+$"}))
    PagerDutyOAuthClientCredentialsConfig.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientId, name: "clientId", traits: {"smithy.api#required" => {}}))
    PagerDutyOAuthClientCredentialsConfig.add_member(:exchange_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ExchangeParameters, name: "exchangeParameters"))
    PagerDutyOAuthClientCredentialsConfig.add_member(:client_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientSecret, name: "clientSecret", traits: {"smithy.api#required" => {}}))
    PagerDutyOAuthClientCredentialsConfig.type = Types::PagerDutyOAuthClientCredentialsConfig
    PagerDutyScopes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    PagerDutyScopesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    PagerDutyServicesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    PatternFilter.add_member(:patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerRegexPatternList, name: "patterns", traits: {"smithy.api#required" => {}}))
    PatternFilter.type = Types::PatternFilter
    PendingMessage.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "messageId", traits: {"smithy.api#required" => {}}))
    PendingMessage.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message", traits: {"smithy.api#required" => {}}))
    PendingMessage.type = Types::PendingMessage
    PendingMessages.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PendingMessage, name: "member"))
    PortRanges.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PortRange, name: "member"))
    PostRegisterServiceSupportedService.add_member(:dynatrace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DYNATRACE", traits: {"smithy.api#enumValue" => "dynatrace"}))
    PostRegisterServiceSupportedService.add_member(:servicenow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICENOW", traits: {"smithy.api#enumValue" => "servicenow"}))
    PostRegisterServiceSupportedService.add_member(:pagerduty, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAGERDUTY", traits: {"smithy.api#enumValue" => "pagerduty"}))
    PostRegisterServiceSupportedService.add_member(:gitlab, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GITLAB", traits: {"smithy.api#enumValue" => "gitlab"}))
    PostRegisterServiceSupportedService.add_member(:eventchannel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EVENTCHANNEL", traits: {"smithy.api#enumValue" => "eventChannel"}))
    PostRegisterServiceSupportedService.add_member(:mcp_server_newrelic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MCP_SERVER_NEWRELIC", traits: {"smithy.api#enumValue" => "mcpservernewrelic"}))
    PostRegisterServiceSupportedService.add_member(:mcp_server_grafana, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MCP_SERVER_GRAFANA", traits: {"smithy.api#enumValue" => "mcpservergrafana"}))
    PostRegisterServiceSupportedService.add_member(:mcp_server_datadog, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MCP_SERVER_DATADOG", traits: {"smithy.api#enumValue" => "mcpserverdatadog"}))
    PostRegisterServiceSupportedService.add_member(:mcp_server, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MCP_SERVER", traits: {"smithy.api#enumValue" => "mcpserver"}))
    PostRegisterServiceSupportedService.add_member(:mcp_server_splunk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MCP_SERVER_SPLUNK", traits: {"smithy.api#enumValue" => "mcpserversplunk"}))
    PostRegisterServiceSupportedService.add_member(:azure_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AZURE_IDENTITY", traits: {"smithy.api#enumValue" => "azureidentity"}))
    PostRegisterServiceSupportedService.add_member(:mcp_server_sigv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MCP_SERVER_SIGV4", traits: {"smithy.api#enumValue" => "mcpserversigv4"}))
    PostRegisterServiceSupportedService.add_member(:remote_agent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REMOTE_AGENT", traits: {"smithy.api#enumValue" => "remoteagent"}))
    PostRegisterServiceSupportedService.add_member(:remote_agent_sigv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REMOTE_AGENT_SIGV4", traits: {"smithy.api#enumValue" => "remoteagentsigv4"}))
    Priority.add_member(:critical, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CRITICAL", traits: {"smithy.api#enumValue" => "CRITICAL"}))
    Priority.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIGH", traits: {"smithy.api#enumValue" => "HIGH"}))
    Priority.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIUM", traits: {"smithy.api#enumValue" => "MEDIUM"}))
    Priority.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOW", traits: {"smithy.api#enumValue" => "LOW"}))
    Priority.add_member(:minimal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MINIMAL", traits: {"smithy.api#enumValue" => "MINIMAL"}))
    PriorityList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Priority, name: "member"))
    PrivateConnectionMode.add_member(:service_managed, Types::PrivateConnectionMode::ServiceManaged, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceManagedInput, name: "serviceManaged"))
    PrivateConnectionMode.add_member(:self_managed, Types::PrivateConnectionMode::SelfManaged, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfManagedInput, name: "selfManaged"))
    PrivateConnectionMode.add_member(:unknown, Types::PrivateConnectionMode::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    PrivateConnectionMode.type = Types::PrivateConnectionMode
    PrivateConnectionStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    PrivateConnectionStatus.add_member(:create_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    PrivateConnectionStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    PrivateConnectionStatus.add_member(:delete_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    PrivateConnectionStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_FAILED", traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    PrivateConnectionSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionName, name: "name", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "name"}))
    PrivateConnectionSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionType, name: "type", traits: {"smithy.api#required" => {}}))
    PrivateConnectionSummary.add_member(:resource_gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGatewayArn, name: "resourceGatewayId"))
    PrivateConnectionSummary.add_member(:host_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressOrDnsName, name: "hostAddress"))
    PrivateConnectionSummary.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "vpcId"))
    PrivateConnectionSummary.add_member(:resource_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationArn, name: "resourceConfigurationId"))
    PrivateConnectionSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    PrivateConnectionSummary.add_member(:certificate_expiry_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "certificateExpiryTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    PrivateConnectionSummary.add_member(:dns_resolution, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigDnsResolution, name: "dnsResolution"))
    PrivateConnectionSummary.add_member(:failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureMessage, name: "failureMessage"))
    PrivateConnectionSummary.type = Types::PrivateConnectionSummary
    PrivateConnectionSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionSummary, name: "member"))
    PrivateConnectionType.add_member(:self_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SELF_MANAGED", traits: {"smithy.api#enumValue" => "SELF_MANAGED"}))
    PrivateConnectionType.add_member(:service_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_MANAGED", traits: {"smithy.api#enumValue" => "SERVICE_MANAGED"}))
    PrivateNetworkAccess.add_member(:private_connection_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionName, name: "privateConnectionName", traits: {"smithy.api#required" => {}}))
    PrivateNetworkAccess.add_member(:runtime_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "runtimeRoleArn", traits: {"smithy.api#required" => {}}))
    PrivateNetworkAccess.type = Types::PrivateNetworkAccess
    Recommendation.add_member(:agent_space_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceArn", traits: {"smithy.api#required" => {}}))
    Recommendation.add_member(:recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "recommendationId", traits: {"smithy.api#required" => {}}))
    Recommendation.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "taskId", traits: {"smithy.api#required" => {}}))
    Recommendation.add_member(:goal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "goalId"))
    Recommendation.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title", traits: {"smithy.api#required" => {}}))
    Recommendation.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationContent, name: "content", traits: {"smithy.api#required" => {}}))
    Recommendation.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    Recommendation.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationPriority, name: "priority", traits: {"smithy.api#required" => {}}))
    Recommendation.add_member(:goal_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "goalVersion"))
    Recommendation.add_member(:additional_context, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "additionalContext"))
    Recommendation.add_member(:rank_position, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "rankPosition", traits: {"smithy.api#range" => {"min" => 1}}))
    Recommendation.add_member(:ranked_at, ::Smithy::Schema::Shapes::MemberShape.new(target: BackLogTimestamp, name: "rankedAt"))
    Recommendation.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: BackLogTimestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    Recommendation.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: BackLogTimestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    Recommendation.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "version", traits: {"smithy.api#required" => {}}))
    Recommendation.type = Types::Recommendation
    RecommendationContent.add_member(:summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "summary", traits: {"smithy.api#required" => {}}))
    RecommendationContent.add_member(:spec, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "spec", traits: {"smithy.api#length" => {"max" => 100000}}))
    RecommendationContent.type = Types::RecommendationContent
    RecommendationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Recommendation, name: "member"))
    RecommendationPriority.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIGH", traits: {"smithy.api#enumValue" => "HIGH"}))
    RecommendationPriority.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIUM", traits: {"smithy.api#enumValue" => "MEDIUM"}))
    RecommendationPriority.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOW", traits: {"smithy.api#enumValue" => "LOW"}))
    RecommendationStatus.add_member(:proposed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROPOSED", traits: {"smithy.api#enumValue" => "PROPOSED"}))
    RecommendationStatus.add_member(:accepted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCEPTED", traits: {"smithy.api#enumValue" => "ACCEPTED"}))
    RecommendationStatus.add_member(:rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECTED", traits: {"smithy.api#enumValue" => "REJECTED"}))
    RecommendationStatus.add_member(:closed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOSED", traits: {"smithy.api#enumValue" => "CLOSED"}))
    RecommendationStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    RecommendationStatus.add_member(:update_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "UPDATE_IN_PROGRESS"}))
    Recurrence.add_member(:daily, Types::Recurrence::Daily, ::Smithy::Schema::Shapes::MemberShape.new(target: DailyRecurrence, name: "daily"))
    Recurrence.add_member(:weekly, Types::Recurrence::Weekly, ::Smithy::Schema::Shapes::MemberShape.new(target: WeeklyRecurrence, name: "weekly"))
    Recurrence.add_member(:monthly, Types::Recurrence::Monthly, ::Smithy::Schema::Shapes::MemberShape.new(target: MonthlyRecurrence, name: "monthly"))
    Recurrence.add_member(:unknown, Types::Recurrence::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Recurrence.type = Types::Recurrence
    ReferenceInput.add_member(:system, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "system", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#required" => {}}))
    ReferenceInput.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}}))
    ReferenceInput.add_member(:reference_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "referenceId", traits: {"smithy.api#required" => {}}))
    ReferenceInput.add_member(:reference_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "referenceUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#required" => {}}))
    ReferenceInput.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "associationId", traits: {"smithy.api#required" => {}}))
    ReferenceInput.type = Types::ReferenceInput
    ReferenceOutput.add_member(:system, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "system", traits: {"smithy.api#required" => {}}))
    ReferenceOutput.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title"))
    ReferenceOutput.add_member(:reference_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "referenceId", traits: {"smithy.api#required" => {}}))
    ReferenceOutput.add_member(:reference_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "referenceUrl", traits: {"smithy.api#required" => {}}))
    ReferenceOutput.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "associationId", traits: {"smithy.api#required" => {}}))
    ReferenceOutput.type = Types::ReferenceOutput
    RegisterServiceInput.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: PostRegisterServiceSupportedService, name: "service", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RegisterServiceInput.add_member(:service_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceDetails, name: "serviceDetails", traits: {"smithy.api#required" => {}}))
    RegisterServiceInput.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "kmsKeyArn"))
    RegisterServiceInput.add_member(:private_connection_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionName, name: "privateConnectionName"))
    RegisterServiceInput.add_member(:target_url_private_connection_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionName, name: "targetUrlPrivateConnectionName"))
    RegisterServiceInput.add_member(:exchange_url_private_connection_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionName, name: "exchangeUrlPrivateConnectionName"))
    RegisterServiceInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNameInput, name: "name"))
    RegisterServiceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags", traits: {"smithy.api#notProperty" => {}}))
    RegisterServiceInput.type = Types::RegisterServiceInput
    RegisterServiceOutput.add_member(:service_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceId, name: "serviceId"))
    RegisterServiceOutput.add_member(:additional_step, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalServiceRegistrationStep, name: "additionalStep"))
    RegisterServiceOutput.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "kmsKeyArn"))
    RegisterServiceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags", traits: {"smithy.api#notProperty" => {}}))
    RegisterServiceOutput.type = Types::RegisterServiceOutput
    RegisteredAzureDevOpsServiceDetails.add_member(:organization_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "organizationName", traits: {"smithy.api#required" => {}}))
    RegisteredAzureDevOpsServiceDetails.type = Types::RegisteredAzureDevOpsServiceDetails
    RegisteredAzureIdentityDetails.add_member(:tenant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Guid, name: "tenantId", traits: {"smithy.api#required" => {}}))
    RegisteredAzureIdentityDetails.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Guid, name: "clientId", traits: {"smithy.api#required" => {}}))
    RegisteredAzureIdentityDetails.add_member(:web_identity_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "webIdentityRoleArn", traits: {"smithy.api#required" => {}}))
    RegisteredAzureIdentityDetails.add_member(:web_identity_token_audiences, ::Smithy::Schema::Shapes::MemberShape.new(target: WebIdentityTokenAudienceList, name: "webIdentityTokenAudiences", traits: {"smithy.api#required" => {}}))
    RegisteredAzureIdentityDetails.type = Types::RegisteredAzureIdentityDetails
    RegisteredGitLabServiceDetails.add_member(:target_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "targetUrl", traits: {"smithy.api#required" => {}}))
    RegisteredGitLabServiceDetails.add_member(:token_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GitLabTokenType, name: "tokenType", traits: {"smithy.api#required" => {}}))
    RegisteredGitLabServiceDetails.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "groupId"))
    RegisteredGitLabServiceDetails.type = Types::RegisteredGitLabServiceDetails
    RegisteredGithubServiceDetails.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "owner", traits: {"smithy.api#required" => {}}))
    RegisteredGithubServiceDetails.add_member(:owner_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GithubRepoOwnerType, name: "ownerType", traits: {"smithy.api#required" => {}}))
    RegisteredGithubServiceDetails.add_member(:target_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "targetUrl"))
    RegisteredGithubServiceDetails.type = Types::RegisteredGithubServiceDetails
    RegisteredGrafanaServerDetails.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: MCPServerEndpoint, name: "endpoint", traits: {"smithy.api#required" => {}}))
    RegisteredGrafanaServerDetails.add_member(:authorization_method, ::Smithy::Schema::Shapes::MemberShape.new(target: MCPServerAuthorizationMethod, name: "authorizationMethod", traits: {"smithy.api#required" => {}}))
    RegisteredGrafanaServerDetails.type = Types::RegisteredGrafanaServerDetails
    RegisteredMCPServerDetails.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    RegisteredMCPServerDetails.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "endpoint", traits: {"smithy.api#required" => {}}))
    RegisteredMCPServerDetails.add_member(:authorization_method, ::Smithy::Schema::Shapes::MemberShape.new(target: MCPServerAuthorizationMethod, name: "authorizationMethod", traits: {"smithy.api#required" => {}}))
    RegisteredMCPServerDetails.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    RegisteredMCPServerDetails.add_member(:api_key_header, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "apiKeyHeader"))
    RegisteredMCPServerDetails.add_member(:custom_header_names, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomHeaderNames, name: "customHeaderNames"))
    RegisteredMCPServerDetails.type = Types::RegisteredMCPServerDetails
    RegisteredMCPServerSigV4Details.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MCPServerName, name: "name", traits: {"smithy.api#required" => {}}))
    RegisteredMCPServerSigV4Details.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: MCPServerEndpoint, name: "endpoint", traits: {"smithy.api#required" => {}}))
    RegisteredMCPServerSigV4Details.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description", traits: {"smithy.api#length" => {"max" => 500}}))
    RegisteredMCPServerSigV4Details.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: SigV4Region, name: "region", traits: {"smithy.api#required" => {}}))
    RegisteredMCPServerSigV4Details.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "service", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#required" => {}}))
    RegisteredMCPServerSigV4Details.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "roleArn", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => "", "smithy.api#deprecated" => {"message" => "Use mcpRoleArn instead.", "since" => "2026-05-27"}, "smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#required" => {}}))
    RegisteredMCPServerSigV4Details.add_member(:mcp_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "mcpRoleArn"))
    RegisteredMCPServerSigV4Details.add_member(:custom_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomHeaders, name: "customHeaders"))
    RegisteredMCPServerSigV4Details.type = Types::RegisteredMCPServerSigV4Details
    RegisteredNewRelicDetails.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "accountId", traits: {"smithy.api#required" => {}}))
    RegisteredNewRelicDetails.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: NewRelicRegion, name: "region", traits: {"smithy.api#required" => {}}))
    RegisteredNewRelicDetails.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    RegisteredNewRelicDetails.type = Types::RegisteredNewRelicDetails
    RegisteredPagerDutyDetails.add_member(:scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: PagerDutyScopesList, name: "scopes", traits: {"smithy.api#required" => {}}))
    RegisteredPagerDutyDetails.type = Types::RegisteredPagerDutyDetails
    RegisteredRemoteAgentDetails.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteAgentName, name: "name", traits: {"smithy.api#required" => {}}))
    RegisteredRemoteAgentDetails.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteAgentEndpoint, name: "endpoint", traits: {"smithy.api#required" => {}}))
    RegisteredRemoteAgentDetails.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description", traits: {"smithy.api#length" => {"max" => 500}}))
    RegisteredRemoteAgentDetails.add_member(:authorization_method, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteAgentAuthorizationMethod, name: "authorizationMethod", traits: {"smithy.api#required" => {}}))
    RegisteredRemoteAgentDetails.add_member(:api_key_header, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "apiKeyHeader"))
    RegisteredRemoteAgentDetails.type = Types::RegisteredRemoteAgentDetails
    RegisteredRemoteAgentSigV4Details.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteAgentName, name: "name", traits: {"smithy.api#required" => {}}))
    RegisteredRemoteAgentSigV4Details.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteAgentEndpoint, name: "endpoint", traits: {"smithy.api#required" => {}}))
    RegisteredRemoteAgentSigV4Details.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description", traits: {"smithy.api#length" => {"max" => 500}}))
    RegisteredRemoteAgentSigV4Details.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: SigV4Region, name: "region", traits: {"smithy.api#required" => {}}))
    RegisteredRemoteAgentSigV4Details.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "service", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#required" => {}}))
    RegisteredRemoteAgentSigV4Details.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn"))
    RegisteredRemoteAgentSigV4Details.type = Types::RegisteredRemoteAgentSigV4Details
    RegisteredService.add_member(:service_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceId, name: "serviceId", traits: {"smithy.api#required" => {}}))
    RegisteredService.add_member(:service_type, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, name: "serviceType", traits: {"smithy.api#required" => {}}))
    RegisteredService.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, name: "name"))
    RegisteredService.add_member(:accessible_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentList, name: "accessibleResources"))
    RegisteredService.add_member(:additional_service_details, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalServiceDetails, name: "additionalServiceDetails"))
    RegisteredService.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "kmsKeyArn"))
    RegisteredService.add_member(:private_connection_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionName, name: "privateConnectionName"))
    RegisteredService.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    RegisteredService.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    RegisteredService.type = Types::RegisteredService
    RegisteredServiceNowDetails.add_member(:instance_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNowInstanceUrl, name: "instanceUrl"))
    RegisteredServiceNowDetails.type = Types::RegisteredServiceNowDetails
    RegisteredServicesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegisteredService, name: "member"))
    RegisteredSlackServiceDetails.add_member(:team_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "teamId", traits: {"smithy.api#required" => {}}))
    RegisteredSlackServiceDetails.add_member(:team_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "teamName", traits: {"smithy.api#required" => {}}))
    RegisteredSlackServiceDetails.type = Types::RegisteredSlackServiceDetails
    ReleaseManagementConfiguration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "name", traits: {"smithy.api#required" => {}}))
    ReleaseManagementConfiguration.add_member(:network_access, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkAccessConfiguration, name: "networkAccess", traits: {"smithy.api#required" => {}}))
    ReleaseManagementConfiguration.type = Types::ReleaseManagementConfiguration
    RemoteAgentAPIKeyConfig.add_member(:api_key_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "apiKeyName", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_\\s-]+$", "smithy.api#required" => {}}))
    RemoteAgentAPIKeyConfig.add_member(:api_key_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiKeyValue, name: "apiKeyValue", traits: {"smithy.api#pattern" => "^[!-~]([ \\t]*[!-~])*$", "smithy.api#required" => {}}))
    RemoteAgentAPIKeyConfig.add_member(:api_key_header, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "apiKeyHeader", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9-_]+$", "smithy.api#required" => {}}))
    RemoteAgentAPIKeyConfig.type = Types::RemoteAgentAPIKeyConfig
    RemoteAgentAuthorizationConfig.add_member(:api_key, Types::RemoteAgentAuthorizationConfig::ApiKey, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteAgentAPIKeyConfig, name: "apiKey"))
    RemoteAgentAuthorizationConfig.add_member(:o_auth_client_credentials, Types::RemoteAgentAuthorizationConfig::OAuthClientCredentials, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteAgentOAuthClientCredentialsConfig, name: "oAuthClientCredentials"))
    RemoteAgentAuthorizationConfig.add_member(:bearer_token, Types::RemoteAgentAuthorizationConfig::BearerToken, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteAgentBearerTokenConfig, name: "bearerToken"))
    RemoteAgentAuthorizationConfig.add_member(:unknown, Types::RemoteAgentAuthorizationConfig::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RemoteAgentAuthorizationConfig.type = Types::RemoteAgentAuthorizationConfig
    RemoteAgentAuthorizationMethod.add_member(:oauth_client_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OAUTH_CLIENT_CREDENTIALS", traits: {"smithy.api#enumValue" => "oauth-client-credentials"}))
    RemoteAgentAuthorizationMethod.add_member(:api_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "API_KEY", traits: {"smithy.api#enumValue" => "api-key"}))
    RemoteAgentAuthorizationMethod.add_member(:bearer_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEARER_TOKEN", traits: {"smithy.api#enumValue" => "bearer-token"}))
    RemoteAgentBearerTokenConfig.add_member(:token_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "tokenName", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_\\s-]+$", "smithy.api#required" => {}}))
    RemoteAgentBearerTokenConfig.add_member(:token_value, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenValue, name: "tokenValue", traits: {"smithy.api#pattern" => "^[\\S]+$", "smithy.api#required" => {}}))
    RemoteAgentBearerTokenConfig.add_member(:authorization_header, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "authorizationHeader", traits: {"smithy.api#default" => "Authorization", "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"}))
    RemoteAgentBearerTokenConfig.type = Types::RemoteAgentBearerTokenConfig
    RemoteAgentConfiguration.type = Types::RemoteAgentConfiguration
    RemoteAgentOAuthClientCredentialsConfig.add_member(:client_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[\\p{L}\\p{N}\\p{Z}._-]+$"}))
    RemoteAgentOAuthClientCredentialsConfig.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientId, name: "clientId", traits: {"smithy.api#required" => {}}))
    RemoteAgentOAuthClientCredentialsConfig.add_member(:exchange_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ExchangeParameters, name: "exchangeParameters"))
    RemoteAgentOAuthClientCredentialsConfig.add_member(:client_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientSecret, name: "clientSecret", traits: {"smithy.api#required" => {}}))
    RemoteAgentOAuthClientCredentialsConfig.add_member(:exchange_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "exchangeUrl", traits: {"smithy.api#pattern" => "^https://[a-zA-Z0-9.-]+(?::[0-9]+)?(?:/.*)?$", "smithy.api#required" => {}}))
    RemoteAgentOAuthClientCredentialsConfig.add_member(:scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: Scopes, name: "scopes"))
    RemoteAgentOAuthClientCredentialsConfig.type = Types::RemoteAgentOAuthClientCredentialsConfig
    RemoteAgentServiceDetails.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteAgentName, name: "name", traits: {"smithy.api#required" => {}}))
    RemoteAgentServiceDetails.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteAgentEndpoint, name: "endpoint", traits: {"smithy.api#required" => {}}))
    RemoteAgentServiceDetails.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description", traits: {"smithy.api#length" => {"max" => 500}}))
    RemoteAgentServiceDetails.add_member(:authorization_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteAgentAuthorizationConfig, name: "authorizationConfig", traits: {"smithy.api#required" => {}}))
    RemoteAgentServiceDetails.type = Types::RemoteAgentServiceDetails
    RemoteAgentSigV4AuthorizationConfig.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: SigV4Region, name: "region", traits: {"smithy.api#required" => {}}))
    RemoteAgentSigV4AuthorizationConfig.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "service", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#required" => {}}))
    RemoteAgentSigV4AuthorizationConfig.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn"))
    RemoteAgentSigV4AuthorizationConfig.type = Types::RemoteAgentSigV4AuthorizationConfig
    RemoteAgentSigV4Configuration.type = Types::RemoteAgentSigV4Configuration
    RemoteAgentSigV4ServiceDetails.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteAgentName, name: "name", traits: {"smithy.api#required" => {}}))
    RemoteAgentSigV4ServiceDetails.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteAgentEndpoint, name: "endpoint", traits: {"smithy.api#required" => {}}))
    RemoteAgentSigV4ServiceDetails.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description", traits: {"smithy.api#length" => {"max" => 500}}))
    RemoteAgentSigV4ServiceDetails.add_member(:authorization_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteAgentSigV4AuthorizationConfig, name: "authorizationConfig", traits: {"smithy.api#required" => {}}))
    RemoteAgentSigV4ServiceDetails.type = Types::RemoteAgentSigV4ServiceDetails
    ResourceConfigDnsResolution.add_member(:public, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBLIC", traits: {"smithy.api#enumValue" => "PUBLIC"}))
    ResourceConfigDnsResolution.add_member(:in_vpc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_VPC", traits: {"smithy.api#enumValue" => "IN_VPC"}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ScheduleCondition.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleExpression, name: "expression"))
    ScheduleCondition.add_member(:spec, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleSpec, name: "spec"))
    ScheduleCondition.type = Types::ScheduleCondition
    ScheduleSpec.add_member(:cron, Types::ScheduleSpec::Cron, ::Smithy::Schema::Shapes::MemberShape.new(target: CronSchedule, name: "cron"))
    ScheduleSpec.add_member(:time_range, Types::ScheduleSpec::TimeRange, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeRangeSchedule, name: "timeRange"))
    ScheduleSpec.add_member(:unknown, Types::ScheduleSpec::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ScheduleSpec.type = Types::ScheduleSpec
    SchedulerState.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    SchedulerState.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    Scopes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuthScope, name: "member"))
    SelfManagedInput.add_member(:resource_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationArn, name: "resourceConfigurationId", traits: {"smithy.api#required" => {}}))
    SelfManagedInput.add_member(:certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateString, name: "certificate"))
    SelfManagedInput.type = Types::SelfManagedInput
    SendMessageContentBlockDelta.add_member(:text_delta, Types::SendMessageContentBlockDelta::TextDelta, ::Smithy::Schema::Shapes::MemberShape.new(target: SendMessageTextDelta, name: "textDelta"))
    SendMessageContentBlockDelta.add_member(:json_delta, Types::SendMessageContentBlockDelta::JsonDelta, ::Smithy::Schema::Shapes::MemberShape.new(target: SendMessageJsonDelta, name: "jsonDelta"))
    SendMessageContentBlockDelta.add_member(:unknown, Types::SendMessageContentBlockDelta::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    SendMessageContentBlockDelta.type = Types::SendMessageContentBlockDelta
    SendMessageContentBlockDeltaEvent.add_member(:index, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "index"))
    SendMessageContentBlockDeltaEvent.add_member(:delta, ::Smithy::Schema::Shapes::MemberShape.new(target: SendMessageContentBlockDelta, name: "delta"))
    SendMessageContentBlockDeltaEvent.add_member(:sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "sequenceNumber"))
    SendMessageContentBlockDeltaEvent.type = Types::SendMessageContentBlockDeltaEvent
    SendMessageContentBlockStartEvent.add_member(:index, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "index"))
    SendMessageContentBlockStartEvent.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "type"))
    SendMessageContentBlockStartEvent.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "id"))
    SendMessageContentBlockStartEvent.add_member(:parent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "parentId"))
    SendMessageContentBlockStartEvent.add_member(:sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "sequenceNumber"))
    SendMessageContentBlockStartEvent.type = Types::SendMessageContentBlockStartEvent
    SendMessageContentBlockStopEvent.add_member(:index, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "index"))
    SendMessageContentBlockStopEvent.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "type"))
    SendMessageContentBlockStopEvent.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "text"))
    SendMessageContentBlockStopEvent.add_member(:last, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "last"))
    SendMessageContentBlockStopEvent.add_member(:sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "sequenceNumber"))
    SendMessageContentBlockStopEvent.type = Types::SendMessageContentBlockStopEvent
    SendMessageContext.add_member(:current_page, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "currentPage"))
    SendMessageContext.add_member(:last_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "lastMessage"))
    SendMessageContext.add_member(:user_action_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "userActionResponse"))
    SendMessageContext.add_member(:approval_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalAction, name: "approvalAction"))
    SendMessageContext.type = Types::SendMessageContext
    SendMessageEvents.add_member(:response_created, Types::SendMessageEvents::ResponseCreated, ::Smithy::Schema::Shapes::MemberShape.new(target: SendMessageResponseCreatedEvent, name: "responseCreated"))
    SendMessageEvents.add_member(:response_in_progress, Types::SendMessageEvents::ResponseInProgress, ::Smithy::Schema::Shapes::MemberShape.new(target: SendMessageResponseInProgressEvent, name: "responseInProgress"))
    SendMessageEvents.add_member(:response_completed, Types::SendMessageEvents::ResponseCompleted, ::Smithy::Schema::Shapes::MemberShape.new(target: SendMessageResponseCompletedEvent, name: "responseCompleted"))
    SendMessageEvents.add_member(:response_failed, Types::SendMessageEvents::ResponseFailed, ::Smithy::Schema::Shapes::MemberShape.new(target: SendMessageResponseFailedEvent, name: "responseFailed"))
    SendMessageEvents.add_member(:summary, Types::SendMessageEvents::Summary, ::Smithy::Schema::Shapes::MemberShape.new(target: SendMessageSummaryEvent, name: "summary"))
    SendMessageEvents.add_member(:heartbeat, Types::SendMessageEvents::Heartbeat, ::Smithy::Schema::Shapes::MemberShape.new(target: SendMessageHeartbeatEvent, name: "heartbeat"))
    SendMessageEvents.add_member(:content_block_start, Types::SendMessageEvents::ContentBlockStart, ::Smithy::Schema::Shapes::MemberShape.new(target: SendMessageContentBlockStartEvent, name: "contentBlockStart"))
    SendMessageEvents.add_member(:content_block_delta, Types::SendMessageEvents::ContentBlockDelta, ::Smithy::Schema::Shapes::MemberShape.new(target: SendMessageContentBlockDeltaEvent, name: "contentBlockDelta"))
    SendMessageEvents.add_member(:content_block_stop, Types::SendMessageEvents::ContentBlockStop, ::Smithy::Schema::Shapes::MemberShape.new(target: SendMessageContentBlockStopEvent, name: "contentBlockStop"))
    SendMessageEvents.add_member(:unknown, Types::SendMessageEvents::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    SendMessageEvents.type = Types::SendMessageEvents
    SendMessageHeartbeatEvent.type = Types::SendMessageHeartbeatEvent
    SendMessageJsonDelta.add_member(:partial_json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "partialJson"))
    SendMessageJsonDelta.type = Types::SendMessageJsonDelta
    SendMessageRequest.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceIdentifier, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SendMessageRequest.add_member(:execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatExecutionId, name: "executionId", traits: {"smithy.api#required" => {}}))
    SendMessageRequest.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageContent, name: "content", traits: {"smithy.api#required" => {}}))
    SendMessageRequest.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: SendMessageContext, name: "context"))
    SendMessageRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "userId", traits: {"smithy.api#deprecated" => {"message" => "userId is managed by the service and should not be provided by the caller", "since" => "2026-04-15"}}))
    SendMessageRequest.add_member(:asset_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetIdList, name: "assetIds"))
    SendMessageRequest.add_member(:model_tier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "modelTier"))
    SendMessageRequest.type = Types::SendMessageRequest
    SendMessageResponse.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: SendMessageEvents, name: "events", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    SendMessageResponse[:http_payload] = :events
    SendMessageResponse[:http_payload_member] = SendMessageResponse.member(:events)
    SendMessageResponse.type = Types::SendMessageResponse
    SendMessageResponseCompletedEvent.add_member(:response_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "responseId"))
    SendMessageResponseCompletedEvent.add_member(:usage, ::Smithy::Schema::Shapes::MemberShape.new(target: SendMessageUsageInfo, name: "usage"))
    SendMessageResponseCompletedEvent.add_member(:sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "sequenceNumber"))
    SendMessageResponseCompletedEvent.type = Types::SendMessageResponseCompletedEvent
    SendMessageResponseCreatedEvent.add_member(:response_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "responseId"))
    SendMessageResponseCreatedEvent.add_member(:sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "sequenceNumber"))
    SendMessageResponseCreatedEvent.type = Types::SendMessageResponseCreatedEvent
    SendMessageResponseFailedEvent.add_member(:response_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "responseId"))
    SendMessageResponseFailedEvent.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorCode"))
    SendMessageResponseFailedEvent.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorMessage"))
    SendMessageResponseFailedEvent.add_member(:sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "sequenceNumber"))
    SendMessageResponseFailedEvent.type = Types::SendMessageResponseFailedEvent
    SendMessageResponseInProgressEvent.add_member(:response_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "responseId"))
    SendMessageResponseInProgressEvent.add_member(:sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "sequenceNumber"))
    SendMessageResponseInProgressEvent.type = Types::SendMessageResponseInProgressEvent
    SendMessageSummaryEvent.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "content"))
    SendMessageSummaryEvent.add_member(:sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "sequenceNumber"))
    SendMessageSummaryEvent.type = Types::SendMessageSummaryEvent
    SendMessageTextDelta.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "text"))
    SendMessageTextDelta.type = Types::SendMessageTextDelta
    SendMessageUsageInfo.add_member(:input_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "inputTokens"))
    SendMessageUsageInfo.add_member(:output_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "outputTokens"))
    SendMessageUsageInfo.add_member(:total_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalTokens"))
    SendMessageUsageInfo.type = Types::SendMessageUsageInfo
    Service.add_member(:github, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GITHUB", traits: {"smithy.api#enumValue" => "github"}))
    Service.add_member(:slack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SLACK", traits: {"smithy.api#enumValue" => "slack"}))
    Service.add_member(:azure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AZURE", traits: {"smithy.api#enumValue" => "azure"}))
    Service.add_member(:azure_devops, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AZURE_DEVOPS", traits: {"smithy.api#enumValue" => "azuredevops"}))
    Service.add_member(:dynatrace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DYNATRACE", traits: {"smithy.api#enumValue" => "dynatrace"}))
    Service.add_member(:servicenow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICENOW", traits: {"smithy.api#enumValue" => "servicenow"}))
    Service.add_member(:pagerduty, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAGERDUTY", traits: {"smithy.api#enumValue" => "pagerduty"}))
    Service.add_member(:gitlab, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GITLAB", traits: {"smithy.api#enumValue" => "gitlab"}))
    Service.add_member(:eventchannel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EVENTCHANNEL", traits: {"smithy.api#enumValue" => "eventChannel"}))
    Service.add_member(:mcp_server_newrelic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MCP_SERVER_NEWRELIC", traits: {"smithy.api#enumValue" => "mcpservernewrelic"}))
    Service.add_member(:mcp_server_grafana, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MCP_SERVER_GRAFANA", traits: {"smithy.api#enumValue" => "mcpservergrafana"}))
    Service.add_member(:mcp_server_datadog, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MCP_SERVER_DATADOG", traits: {"smithy.api#enumValue" => "mcpserverdatadog"}))
    Service.add_member(:mcp_server, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MCP_SERVER", traits: {"smithy.api#enumValue" => "mcpserver"}))
    Service.add_member(:mcp_server_splunk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MCP_SERVER_SPLUNK", traits: {"smithy.api#enumValue" => "mcpserversplunk"}))
    Service.add_member(:azure_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AZURE_IDENTITY", traits: {"smithy.api#enumValue" => "azureidentity"}))
    Service.add_member(:mcp_server_sigv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MCP_SERVER_SIGV4", traits: {"smithy.api#enumValue" => "mcpserversigv4"}))
    Service.add_member(:remote_agent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REMOTE_AGENT", traits: {"smithy.api#enumValue" => "remoteagent"}))
    Service.add_member(:remote_agent_sigv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REMOTE_AGENT_SIGV4", traits: {"smithy.api#enumValue" => "remoteagentsigv4"}))
    ServiceConfiguration.add_member(:source_aws, Types::ServiceConfiguration::SourceAws, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceAwsConfiguration, name: "sourceAws"))
    ServiceConfiguration.add_member(:aws, Types::ServiceConfiguration::Aws, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSConfiguration, name: "aws"))
    ServiceConfiguration.add_member(:github, Types::ServiceConfiguration::Github, ::Smithy::Schema::Shapes::MemberShape.new(target: GitHubConfiguration, name: "github"))
    ServiceConfiguration.add_member(:slack, Types::ServiceConfiguration::Slack, ::Smithy::Schema::Shapes::MemberShape.new(target: SlackConfiguration, name: "slack"))
    ServiceConfiguration.add_member(:dynatrace, Types::ServiceConfiguration::Dynatrace, ::Smithy::Schema::Shapes::MemberShape.new(target: DynatraceConfiguration, name: "dynatrace"))
    ServiceConfiguration.add_member(:servicenow, Types::ServiceConfiguration::Servicenow, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNowConfiguration, name: "servicenow"))
    ServiceConfiguration.add_member(:mcpservernewrelic, Types::ServiceConfiguration::Mcpservernewrelic, ::Smithy::Schema::Shapes::MemberShape.new(target: MCPServerNewRelicConfiguration, name: "mcpservernewrelic"))
    ServiceConfiguration.add_member(:mcpserverdatadog, Types::ServiceConfiguration::Mcpserverdatadog, ::Smithy::Schema::Shapes::MemberShape.new(target: MCPServerDatadogConfiguration, name: "mcpserverdatadog"))
    ServiceConfiguration.add_member(:mcpserver, Types::ServiceConfiguration::Mcpserver, ::Smithy::Schema::Shapes::MemberShape.new(target: MCPServerConfiguration, name: "mcpserver"))
    ServiceConfiguration.add_member(:gitlab, Types::ServiceConfiguration::Gitlab, ::Smithy::Schema::Shapes::MemberShape.new(target: GitLabConfiguration, name: "gitlab"))
    ServiceConfiguration.add_member(:mcpserversplunk, Types::ServiceConfiguration::Mcpserversplunk, ::Smithy::Schema::Shapes::MemberShape.new(target: MCPServerSplunkConfiguration, name: "mcpserversplunk"))
    ServiceConfiguration.add_member(:event_channel, Types::ServiceConfiguration::EventChannel, ::Smithy::Schema::Shapes::MemberShape.new(target: EventChannelConfiguration, name: "eventChannel"))
    ServiceConfiguration.add_member(:azure, Types::ServiceConfiguration::Azure, ::Smithy::Schema::Shapes::MemberShape.new(target: AzureConfiguration, name: "azure"))
    ServiceConfiguration.add_member(:azuredevops, Types::ServiceConfiguration::Azuredevops, ::Smithy::Schema::Shapes::MemberShape.new(target: AzureDevOpsConfiguration, name: "azuredevops"))
    ServiceConfiguration.add_member(:mcpservergrafana, Types::ServiceConfiguration::Mcpservergrafana, ::Smithy::Schema::Shapes::MemberShape.new(target: MCPServerGrafanaConfiguration, name: "mcpservergrafana"))
    ServiceConfiguration.add_member(:pagerduty, Types::ServiceConfiguration::Pagerduty, ::Smithy::Schema::Shapes::MemberShape.new(target: PagerDutyConfiguration, name: "pagerduty"))
    ServiceConfiguration.add_member(:mcpserversigv4, Types::ServiceConfiguration::Mcpserversigv4, ::Smithy::Schema::Shapes::MemberShape.new(target: MCPServerSigV4Configuration, name: "mcpserversigv4"))
    ServiceConfiguration.add_member(:remoteagent, Types::ServiceConfiguration::Remoteagent, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteAgentConfiguration, name: "remoteagent"))
    ServiceConfiguration.add_member(:remoteagentsigv4, Types::ServiceConfiguration::Remoteagentsigv4, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteAgentSigV4Configuration, name: "remoteagentsigv4"))
    ServiceConfiguration.add_member(:release_management, Types::ServiceConfiguration::ReleaseManagement, ::Smithy::Schema::Shapes::MemberShape.new(target: ReleaseManagementConfiguration, name: "releaseManagement"))
    ServiceConfiguration.add_member(:unknown, Types::ServiceConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ServiceConfiguration.type = Types::ServiceConfiguration
    ServiceDetails.add_member(:dynatrace, Types::ServiceDetails::Dynatrace, ::Smithy::Schema::Shapes::MemberShape.new(target: DynatraceServiceDetails, name: "dynatrace"))
    ServiceDetails.add_member(:servicenow, Types::ServiceDetails::Servicenow, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNowServiceDetails, name: "servicenow"))
    ServiceDetails.add_member(:mcpserverdatadog, Types::ServiceDetails::Mcpserverdatadog, ::Smithy::Schema::Shapes::MemberShape.new(target: DatadogServiceDetails, name: "mcpserverdatadog"))
    ServiceDetails.add_member(:mcpserver, Types::ServiceDetails::Mcpserver, ::Smithy::Schema::Shapes::MemberShape.new(target: MCPServerDetails, name: "mcpserver"))
    ServiceDetails.add_member(:gitlab, Types::ServiceDetails::Gitlab, ::Smithy::Schema::Shapes::MemberShape.new(target: GitLabDetails, name: "gitlab"))
    ServiceDetails.add_member(:mcpserversplunk, Types::ServiceDetails::Mcpserversplunk, ::Smithy::Schema::Shapes::MemberShape.new(target: MCPServerDetails, name: "mcpserversplunk"))
    ServiceDetails.add_member(:mcpservernewrelic, Types::ServiceDetails::Mcpservernewrelic, ::Smithy::Schema::Shapes::MemberShape.new(target: NewRelicServiceDetails, name: "mcpservernewrelic"))
    ServiceDetails.add_member(:event_channel, Types::ServiceDetails::EventChannel, ::Smithy::Schema::Shapes::MemberShape.new(target: EventChannelDetails, name: "eventChannel"))
    ServiceDetails.add_member(:mcpservergrafana, Types::ServiceDetails::Mcpservergrafana, ::Smithy::Schema::Shapes::MemberShape.new(target: GrafanaServiceDetails, name: "mcpservergrafana"))
    ServiceDetails.add_member(:pagerduty, Types::ServiceDetails::Pagerduty, ::Smithy::Schema::Shapes::MemberShape.new(target: PagerDutyDetails, name: "pagerduty"))
    ServiceDetails.add_member(:azureidentity, Types::ServiceDetails::Azureidentity, ::Smithy::Schema::Shapes::MemberShape.new(target: RegisteredAzureIdentityDetails, name: "azureidentity"))
    ServiceDetails.add_member(:mcpserversigv4, Types::ServiceDetails::Mcpserversigv4, ::Smithy::Schema::Shapes::MemberShape.new(target: MCPServerSigV4ServiceDetails, name: "mcpserversigv4"))
    ServiceDetails.add_member(:remoteagent, Types::ServiceDetails::Remoteagent, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteAgentServiceDetails, name: "remoteagent"))
    ServiceDetails.add_member(:remoteagentsigv4, Types::ServiceDetails::Remoteagentsigv4, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteAgentSigV4ServiceDetails, name: "remoteagentsigv4"))
    ServiceDetails.add_member(:unknown, Types::ServiceDetails::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ServiceDetails.type = Types::ServiceDetails
    ServiceManagedInput.add_member(:host_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressOrDnsName, name: "hostAddress", traits: {"smithy.api#required" => {}}))
    ServiceManagedInput.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "vpcId", traits: {"smithy.api#required" => {}}))
    ServiceManagedInput.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfSubnetIds, name: "subnetIds", traits: {"smithy.api#required" => {}}))
    ServiceManagedInput.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfSecurityGroupIds, name: "securityGroupIds"))
    ServiceManagedInput.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressType, name: "ipAddressType"))
    ServiceManagedInput.add_member(:ipv4_addresses_per_eni, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxIpv4AddressesPerEni, name: "ipv4AddressesPerEni"))
    ServiceManagedInput.add_member(:port_ranges, ::Smithy::Schema::Shapes::MemberShape.new(target: PortRanges, name: "portRanges"))
    ServiceManagedInput.add_member(:certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateString, name: "certificate"))
    ServiceManagedInput.add_member(:dns_resolution, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigDnsResolution, name: "dnsResolution"))
    ServiceManagedInput.type = Types::ServiceManagedInput
    ServiceNowAuthenticationScopeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    ServiceNowConfiguration.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "instanceId"))
    ServiceNowConfiguration.add_member(:auth_scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNowAuthenticationScopeList, name: "authScopes"))
    ServiceNowConfiguration.type = Types::ServiceNowConfiguration
    ServiceNowOAuthClientCredentialsConfig.add_member(:client_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[\\p{L}\\p{N}\\p{Z}._-]+$"}))
    ServiceNowOAuthClientCredentialsConfig.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientId, name: "clientId", traits: {"smithy.api#required" => {}}))
    ServiceNowOAuthClientCredentialsConfig.add_member(:exchange_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ExchangeParameters, name: "exchangeParameters"))
    ServiceNowOAuthClientCredentialsConfig.add_member(:client_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientSecret, name: "clientSecret", traits: {"smithy.api#required" => {}}))
    ServiceNowOAuthClientCredentialsConfig.type = Types::ServiceNowOAuthClientCredentialsConfig
    ServiceNowServiceAuthorizationConfig.add_member(:o_auth_client_credentials, Types::ServiceNowServiceAuthorizationConfig::OAuthClientCredentials, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNowOAuthClientCredentialsConfig, name: "oAuthClientCredentials"))
    ServiceNowServiceAuthorizationConfig.add_member(:unknown, Types::ServiceNowServiceAuthorizationConfig::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ServiceNowServiceAuthorizationConfig.type = Types::ServiceNowServiceAuthorizationConfig
    ServiceNowServiceDetails.add_member(:instance_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNowInstanceUrl, name: "instanceUrl", traits: {"smithy.api#required" => {}}))
    ServiceNowServiceDetails.add_member(:authorization_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNowServiceAuthorizationConfig, name: "authorizationConfig"))
    ServiceNowServiceDetails.type = Types::ServiceNowServiceDetails
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SlackBidirectionalConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    SlackBidirectionalConfiguration.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enabled"))
    SlackBidirectionalConfiguration.type = Types::SlackBidirectionalConfiguration
    SlackChannel.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "channelName"))
    SlackChannel.add_member(:channel_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "channelId", traits: {"smithy.api#length" => {"min" => 8, "max" => 16}, "smithy.api#pattern" => "^[CGD][A-Z0-9]+$", "smithy.api#required" => {}}))
    SlackChannel.type = Types::SlackChannel
    SlackConfiguration.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "workspaceId", traits: {"smithy.api#pattern" => "^[TE][A-Z0-9]+$", "smithy.api#required" => {}}))
    SlackConfiguration.add_member(:workspace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "workspaceName", traits: {"smithy.api#required" => {}}))
    SlackConfiguration.add_member(:transmission_target, ::Smithy::Schema::Shapes::MemberShape.new(target: SlackTransmissionTarget, name: "transmissionTarget", traits: {"smithy.api#required" => {}}))
    SlackConfiguration.add_member(:bidirectional, ::Smithy::Schema::Shapes::MemberShape.new(target: SlackBidirectionalConfiguration, name: "bidirectional"))
    SlackConfiguration.type = Types::SlackConfiguration
    SlackTransmissionTarget.add_member(:ops_oncall_target, ::Smithy::Schema::Shapes::MemberShape.new(target: SlackChannel, name: "opsOncallTarget", traits: {"smithy.api#required" => {}}))
    SlackTransmissionTarget.add_member(:ops_sre_target, ::Smithy::Schema::Shapes::MemberShape.new(target: SlackChannel, name: "opsSRETarget"))
    SlackTransmissionTarget.type = Types::SlackTransmissionTarget
    SourceAccountType.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOURCE", traits: {"smithy.api#enumValue" => "source"}))
    SourceAwsConfiguration.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "accountId", traits: {"smithy.api#pattern" => "^\\d{12}$", "smithy.api#required" => {}}))
    SourceAwsConfiguration.add_member(:account_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceAccountType, name: "accountType", traits: {"smithy.api#required" => {}}))
    SourceAwsConfiguration.add_member(:assumable_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "assumableRoleArn", traits: {"smithy.api#required" => {}}))
    SourceAwsConfiguration.add_member(:external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "externalId"))
    SourceAwsConfiguration.add_member(:agent_elevated_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "agentElevatedRoleArn"))
    SourceAwsConfiguration.add_member(:agent_elevated_role_arn_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationStatus, name: "agentElevatedRoleArnStatus"))
    SourceAwsConfiguration.type = Types::SourceAwsConfiguration
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:aws:aidevops:[a-z0-9-]+:\\d{12}:(agentspace|service|private-connection)/[a-zA-Z0-9_-]+$", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    Tags.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    Task.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    Task.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "taskId", traits: {"smithy.api#required" => {}}))
    Task.add_member(:execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "executionId"))
    Task.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title", traits: {"smithy.api#required" => {}}))
    Task.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    Task.add_member(:reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceOutput, name: "reference"))
    Task.add_member(:task_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskType, name: "taskType", traits: {"smithy.api#required" => {}}))
    Task.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: Priority, name: "priority", traits: {"smithy.api#required" => {}}))
    Task.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskStatus, name: "status", traits: {"smithy.api#required" => {}}))
    Task.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: BackLogTimestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    Task.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: BackLogTimestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    Task.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "version", traits: {"smithy.api#required" => {}}))
    Task.add_member(:support_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "supportMetadata"))
    Task.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "metadata"))
    Task.add_member(:primary_task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "primaryTaskId"))
    Task.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    Task.add_member(:has_linked_tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "hasLinkedTasks", traits: {"smithy.api#default" => false}))
    Task.type = Types::Task
    TaskFilter.add_member(:created_after, ::Smithy::Schema::Shapes::MemberShape.new(target: BackLogTimestamp, name: "createdAfter"))
    TaskFilter.add_member(:created_before, ::Smithy::Schema::Shapes::MemberShape.new(target: BackLogTimestamp, name: "createdBefore"))
    TaskFilter.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: PriorityList, name: "priority", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}}))
    TaskFilter.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskStatusList, name: "status", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}}))
    TaskFilter.add_member(:task_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskTypeList, name: "taskType", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}}))
    TaskFilter.add_member(:primary_task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "primaryTaskId"))
    TaskFilter.type = Types::TaskFilter
    TaskList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Task, name: "member"))
    TaskSortField.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED_AT", traits: {"smithy.api#enumValue" => "CREATED_AT"}))
    TaskSortField.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIORITY", traits: {"smithy.api#enumValue" => "PRIORITY"}))
    TaskSortOrder.add_member(:asc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASC", traits: {"smithy.api#enumValue" => "ASC"}))
    TaskSortOrder.add_member(:desc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESC", traits: {"smithy.api#enumValue" => "DESC"}))
    TaskStatus.add_member(:pending_triage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_TRIAGE", traits: {"smithy.api#enumValue" => "PENDING_TRIAGE"}))
    TaskStatus.add_member(:linked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LINKED", traits: {"smithy.api#enumValue" => "LINKED"}))
    TaskStatus.add_member(:pending_start, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_START", traits: {"smithy.api#enumValue" => "PENDING_START"}))
    TaskStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    TaskStatus.add_member(:pending_customer_approval, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_CUSTOMER_APPROVAL", traits: {"smithy.api#enumValue" => "PENDING_CUSTOMER_APPROVAL"}))
    TaskStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    TaskStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    TaskStatus.add_member(:timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMED_OUT", traits: {"smithy.api#enumValue" => "TIMED_OUT"}))
    TaskStatus.add_member(:canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELED", traits: {"smithy.api#enumValue" => "CANCELED"}))
    TaskStatus.add_member(:skipped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SKIPPED", traits: {"smithy.api#enumValue" => "SKIPPED"}))
    TaskStatus.add_member(:waiting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WAITING", traits: {"smithy.api#enumValue" => "WAITING"}))
    TaskStatusList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskStatus, name: "member"))
    TaskType.add_member(:investigation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVESTIGATION", traits: {"smithy.api#enumValue" => "INVESTIGATION"}))
    TaskType.add_member(:evaluation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EVALUATION", traits: {"smithy.api#enumValue" => "EVALUATION"}))
    TaskType.add_member(:release_readiness_review, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RELEASE_READINESS_REVIEW", traits: {"smithy.api#enumValue" => "RELEASE_READINESS_REVIEW"}))
    TaskType.add_member(:release_testing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RELEASE_TESTING", traits: {"smithy.api#enumValue" => "RELEASE_TESTING"}))
    TaskTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskType, name: "member"))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    TimeRangeSchedule.add_member(:start_after, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeOfDay, name: "startAfter", traits: {"smithy.api#required" => {}}))
    TimeRangeSchedule.add_member(:start_before, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeOfDay, name: "startBefore", traits: {"smithy.api#required" => {}}))
    TimeRangeSchedule.add_member(:recurrence, ::Smithy::Schema::Shapes::MemberShape.new(target: Recurrence, name: "recurrence", traits: {"smithy.api#required" => {}}))
    TimeRangeSchedule.type = Types::TimeRangeSchedule
    ToolClassification.add_member(:read_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READ_ONLY", traits: {"smithy.api#enumValue" => "READ_ONLY"}))
    ToolClassification.add_member(:mutative, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MUTATIVE", traits: {"smithy.api#enumValue" => "MUTATIVE"}))
    ToolClassification.add_member(:destructive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESTRUCTIVE", traits: {"smithy.api#enumValue" => "DESTRUCTIVE"}))
    Trigger.add_member(:trigger_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "triggerId", traits: {"smithy.api#required" => {}}))
    Trigger.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceId, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    Trigger.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerType, name: "type", traits: {"smithy.api#required" => {}}))
    Trigger.add_member(:condition, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerCondition, name: "condition", traits: {"smithy.api#required" => {}}))
    Trigger.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerAction, name: "action", traits: {"smithy.api#required" => {}}))
    Trigger.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerStatus, name: "status", traits: {"smithy.api#required" => {}}))
    Trigger.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    Trigger.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    Trigger.type = Types::Trigger
    TriggerCondition.add_member(:schedule, Types::TriggerCondition::Schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleCondition, name: "schedule"))
    TriggerCondition.add_member(:unknown, Types::TriggerCondition::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    TriggerCondition.type = Types::TriggerCondition
    TriggerEvent.add_member(:pull_request_ready_for_review, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PULL_REQUEST_READY_FOR_REVIEW", traits: {"smithy.api#enumValue" => "PULL_REQUEST_READY_FOR_REVIEW"}))
    TriggerEvent.add_member(:pull_request_draft, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PULL_REQUEST_DRAFT", traits: {"smithy.api#enumValue" => "PULL_REQUEST_DRAFT"}))
    TriggerEventList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerEvent, name: "member"))
    TriggerFilterGroup.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerEventList, name: "events"))
    TriggerFilterGroup.add_member(:target_branches, ::Smithy::Schema::Shapes::MemberShape.new(target: PatternFilter, name: "targetBranches"))
    TriggerFilterGroup.type = Types::TriggerFilterGroup
    TriggerFilterGroups.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerFilterGroup, name: "member"))
    TriggerList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Trigger, name: "member"))
    TriggerRegexPatternList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerRegexPattern, name: "member"))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:aws:aidevops:[a-z0-9-]+:\\d{12}:(agentspace|service|private-connection)/[a-zA-Z0-9_-]+$", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAgentSpaceInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceId, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAgentSpaceInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceName, name: "name"))
    UpdateAgentSpaceInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    UpdateAgentSpaceInput.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: Locale, name: "locale"))
    UpdateAgentSpaceInput.add_member(:preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpacePreferences, name: "preferences", traits: {"smithy.api#notProperty" => {}}))
    UpdateAgentSpaceInput.type = Types::UpdateAgentSpaceInput
    UpdateAgentSpaceOutput.add_member(:agent_space, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpace, name: "agentSpace", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    UpdateAgentSpaceOutput.type = Types::UpdateAgentSpaceOutput
    UpdateApprovalActionRequest.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceIdentifier, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateApprovalActionRequest.add_member(:approval_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalId, name: "approvalId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateApprovalActionRequest.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalActionType, name: "action", traits: {"smithy.api#required" => {}}))
    UpdateApprovalActionRequest.add_member(:final_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalPattern, name: "finalPattern"))
    UpdateApprovalActionRequest.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalReason, name: "reason"))
    UpdateApprovalActionRequest.add_member(:ttl_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "ttlSeconds", traits: {"smithy.api#range" => {"min" => 1, "max" => 14400}}))
    UpdateApprovalActionRequest.add_member(:single_use, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "singleUse"))
    UpdateApprovalActionRequest.type = Types::UpdateApprovalActionRequest
    UpdateApprovalActionResponse.add_member(:approval_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalId, name: "approvalId", traits: {"smithy.api#required" => {}}))
    UpdateApprovalActionResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalStatus, name: "status", traits: {"smithy.api#required" => {}}))
    UpdateApprovalActionResponse.add_member(:expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "expiresAt"))
    UpdateApprovalActionResponse.type = Types::UpdateApprovalActionResponse
    UpdateAssetFileRequest.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceIdentifier, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAssetFileRequest.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "assetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAssetFileRequest.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetFilePath, name: "path", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAssetFileRequest.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetFileBody, name: "content"))
    UpdateAssetFileRequest.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "metadata"))
    UpdateAssetFileRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 1, "max" => 128}}))
    UpdateAssetFileRequest.type = Types::UpdateAssetFileRequest
    UpdateAssetFileResponse.add_member(:file, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetFile, name: "file", traits: {"smithy.api#required" => {}}))
    UpdateAssetFileResponse.type = Types::UpdateAssetFileResponse
    UpdateAssetRequest.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceIdentifier, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAssetRequest.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "assetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAssetRequest.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "metadata"))
    UpdateAssetRequest.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetContent, name: "content"))
    UpdateAssetRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 1, "max" => 128}}))
    UpdateAssetRequest.type = Types::UpdateAssetRequest
    UpdateAssetResponse.add_member(:asset, ::Smithy::Schema::Shapes::MemberShape.new(target: Asset, name: "asset", traits: {"smithy.api#required" => {}}))
    UpdateAssetResponse.type = Types::UpdateAssetResponse
    UpdateAssociationInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceId, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAssociationInput.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationId, name: "associationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "associationId"}))
    UpdateAssociationInput.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceConfiguration, name: "configuration", traits: {"smithy.api#required" => {}}))
    UpdateAssociationInput.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationCapabilities, name: "capabilities"))
    UpdateAssociationInput.type = Types::UpdateAssociationInput
    UpdateAssociationOutput.add_member(:association, ::Smithy::Schema::Shapes::MemberShape.new(target: Association, name: "association", traits: {"smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    UpdateAssociationOutput.add_member(:webhook, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericWebhook, name: "webhook"))
    UpdateAssociationOutput.type = Types::UpdateAssociationOutput
    UpdateBacklogTaskRequest.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceIdentifier, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBacklogTaskRequest.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "taskId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBacklogTaskRequest.add_member(:task_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskStatus, name: "taskStatus"))
    UpdateBacklogTaskRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\x21-\\x7E]+$"}))
    UpdateBacklogTaskRequest.type = Types::UpdateBacklogTaskRequest
    UpdateBacklogTaskResponse.add_member(:task, ::Smithy::Schema::Shapes::MemberShape.new(target: Task, name: "task", traits: {"smithy.api#required" => {}}))
    UpdateBacklogTaskResponse.type = Types::UpdateBacklogTaskResponse
    UpdateGoalRequest.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceIdentifier, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateGoalRequest.add_member(:goal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "goalId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateGoalRequest.add_member(:evaluation_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: GoalScheduleInput, name: "evaluationSchedule"))
    UpdateGoalRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\x21-\\x7E]+$"}))
    UpdateGoalRequest.type = Types::UpdateGoalRequest
    UpdateGoalResponse.add_member(:goal, ::Smithy::Schema::Shapes::MemberShape.new(target: Goal, name: "goal", traits: {"smithy.api#required" => {}}))
    UpdateGoalResponse.type = Types::UpdateGoalResponse
    UpdateOperatorAppIdpConfigInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceId, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    UpdateOperatorAppIdpConfigInput.add_member(:idp_client_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: IdpClientSecret, name: "idpClientSecret", traits: {"smithy.api#notProperty" => {}}))
    UpdateOperatorAppIdpConfigInput.type = Types::UpdateOperatorAppIdpConfigInput
    UpdateOperatorAppIdpConfigOutput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceId, name: "agentSpaceId", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    UpdateOperatorAppIdpConfigOutput.add_member(:idp, ::Smithy::Schema::Shapes::MemberShape.new(target: IdpAuthConfiguration, name: "idp", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    UpdateOperatorAppIdpConfigOutput.type = Types::UpdateOperatorAppIdpConfigOutput
    UpdatePrivateConnectionCertificateInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionName, name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "name"}))
    UpdatePrivateConnectionCertificateInput.add_member(:certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateString, name: "certificate", traits: {"smithy.api#required" => {}}))
    UpdatePrivateConnectionCertificateInput.type = Types::UpdatePrivateConnectionCertificateInput
    UpdatePrivateConnectionCertificateOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionName, name: "name", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "name"}))
    UpdatePrivateConnectionCertificateOutput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionType, name: "type", traits: {"smithy.api#required" => {}}))
    UpdatePrivateConnectionCertificateOutput.add_member(:resource_gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGatewayArn, name: "resourceGatewayId"))
    UpdatePrivateConnectionCertificateOutput.add_member(:host_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressOrDnsName, name: "hostAddress"))
    UpdatePrivateConnectionCertificateOutput.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "vpcId"))
    UpdatePrivateConnectionCertificateOutput.add_member(:resource_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationArn, name: "resourceConfigurationId"))
    UpdatePrivateConnectionCertificateOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    UpdatePrivateConnectionCertificateOutput.add_member(:certificate_expiry_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "certificateExpiryTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    UpdatePrivateConnectionCertificateOutput.add_member(:dns_resolution, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigDnsResolution, name: "dnsResolution"))
    UpdatePrivateConnectionCertificateOutput.add_member(:failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureMessage, name: "failureMessage"))
    UpdatePrivateConnectionCertificateOutput.type = Types::UpdatePrivateConnectionCertificateOutput
    UpdateRecommendationRequest.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceIdentifier, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRecommendationRequest.add_member(:recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "recommendationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRecommendationRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationStatus, name: "status"))
    UpdateRecommendationRequest.add_member(:additional_context, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "additionalContext"))
    UpdateRecommendationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\x21-\\x7E]+$"}))
    UpdateRecommendationRequest.type = Types::UpdateRecommendationRequest
    UpdateRecommendationResponse.add_member(:recommendation, ::Smithy::Schema::Shapes::MemberShape.new(target: Recommendation, name: "recommendation", traits: {"smithy.api#required" => {}}))
    UpdateRecommendationResponse.type = Types::UpdateRecommendationResponse
    UpdateTriggerRequest.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceIdentifier, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTriggerRequest.add_member(:trigger_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "triggerId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTriggerRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerStatus, name: "status"))
    UpdateTriggerRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\x21-\\x7E]+$"}))
    UpdateTriggerRequest.type = Types::UpdateTriggerRequest
    UpdateTriggerResponse.add_member(:trigger, ::Smithy::Schema::Shapes::MemberShape.new(target: Trigger, name: "trigger", traits: {"smithy.api#required" => {}}))
    UpdateTriggerResponse.type = Types::UpdateTriggerResponse
    UsageMetric.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "limit", traits: {"smithy.api#required" => {}}))
    UsageMetric.add_member(:usage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "usage", traits: {"smithy.api#required" => {}}))
    UsageMetric.type = Types::UsageMetric
    UserMessage.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UserMessageBlock, name: "member"))
    UserMessageBlock.add_member(:text, Types::UserMessageBlock::Text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "text"))
    UserMessageBlock.add_member(:tool_result, Types::UserMessageBlock::ToolResult, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "toolResult"))
    UserMessageBlock.add_member(:unknown, Types::UserMessageBlock::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    UserMessageBlock.type = Types::UserMessageBlock
    UserReference.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "userId", traits: {"smithy.api#required" => {}}))
    UserReference.add_member(:user_type, ::Smithy::Schema::Shapes::MemberShape.new(target: UserType, name: "userType", traits: {"smithy.api#required" => {}}))
    UserReference.type = Types::UserReference
    UserType.add_member(:iam, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM", traits: {"smithy.api#enumValue" => "IAM"}))
    UserType.add_member(:idc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IDC", traits: {"smithy.api#enumValue" => "IDC"}))
    UserType.add_member(:idp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IDP", traits: {"smithy.api#enumValue" => "IDP"}))
    ValidateAwsAssociationsInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceId, name: "agentSpaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ValidateAwsAssociationsInput.type = Types::ValidateAwsAssociationsInput
    ValidateAwsAssociationsOutput.type = Types::ValidateAwsAssociationsOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "path", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))
    ValidationStatus.add_member(:valid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALID", traits: {"smithy.api#enumValue" => "valid"}))
    ValidationStatus.add_member(:invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID", traits: {"smithy.api#enumValue" => "invalid"}))
    ValidationStatus.add_member(:pending_confirmation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_CONFIRMATION", traits: {"smithy.api#enumValue" => "pending-confirmation"}))
    WebIdentityTokenAudienceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    Webhook.add_member(:webhook_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "webhookUrl", traits: {"smithy.api#pattern" => "^https://[a-zA-Z0-9.-]+(?:/.*)?$", "smithy.api#required" => {}}))
    Webhook.add_member(:webhook_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WebhookType, name: "webhookType"))
    Webhook.add_member(:webhook_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "webhookId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "webhookId"}))
    Webhook.type = Types::Webhook
    WebhookType.add_member(:hmac, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HMAC", traits: {"smithy.api#enumValue" => "hmac"}))
    WebhookType.add_member(:api_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "API_KEY", traits: {"smithy.api#enumValue" => "apikey"}))
    WebhookType.add_member(:gitlab, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GITLAB", traits: {"smithy.api#enumValue" => "gitlab"}))
    WebhookType.add_member(:pagerduty, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAGERDUTY", traits: {"smithy.api#enumValue" => "pagerduty"}))
    WebhooksList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Webhook, name: "member"))
    WeeklyRecurrence.add_member(:day_of_week, ::Smithy::Schema::Shapes::MemberShape.new(target: DayOfWeek, name: "dayOfWeek", traits: {"smithy.api#required" => {}}))
    WeeklyRecurrence.type = Types::WeeklyRecurrence

    DevOpsAgent = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.devopsagent#DevOpsAgent"
      service.name = "DevOpsAgent"
      service.version = "2026-01-01"
      service.traits = {"aws.api#service" => {"sdkId" => "DevOps Agent", "arnNamespace" => "aidevops", "endpointPrefix" => "aidevops", "cloudTrailEventSource" => "aidevops.amazonaws.com"}, "aws.api#tagEnabled" => {"tagOnCreate" => true}, "aws.auth#sigv4" => {"name" => "aidevops"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardRegionalEndpoints" => {}, "aws.iam#defineConditionKeys" => {"aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the tags that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by tags associated with the resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by the tag keys that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aidevops:SourceAgentSpaceArn" => {"type" => "ARN", "documentation" => "Filters access by the source AgentSpace ARN on the request. Set by the service from the request context, not supplied by the caller."}, "aidevops:TargetAgentSpaceArn" => {"type" => "ARN", "documentation" => "Filters access by the target AgentSpace ARN on the request. Set by the service from the request context, not supplied by the caller."}}, "aws.iam#serviceResolvedConditionKeys" => ["aidevops:SourceAgentSpaceArn", "aidevops:TargetAgentSpaceArn", "aidevops:SourceAgentSpaceArn", "aidevops:TargetAgentSpaceArn"], "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser", "Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#restJson1" => {"http" => ["http/1.1"], "eventStreamHttp" => ["http/1.1"]}, "smithy.api#title" => "AWS DevOps Agent Service", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}, "Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://aidevops-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://aidevops.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 6, "nodes" => "/////wAAAAH/////AAAAAAAAAAYAAAADAAAAAQAAAAQF9eEFAAAAAgAAAAUF9eEFAAAAAwX14QMF9eEEAAAAAwX14QEF9eEC"}}
      service.add_operation(:associate_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#AssociateService"
        operation.name = "AssociateService"
        operation.input = AssociateServiceInput
        operation.output = AssociateServiceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to associate service"}, "smithy.api#endpoint" => {"hostPrefix" => "cp."}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/agentspaces/{agentSpaceId}/associations", "code" => 201}}
      end)
      service.add_operation(:create_agent_space, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#CreateAgentSpace"
        operation.name = "CreateAgentSpace"
        operation.input = CreateAgentSpaceInput
        operation.output = CreateAgentSpaceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create agentspace"}, "smithy.api#endpoint" => {"hostPrefix" => "cp."}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/agentspaces", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_asset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#CreateAsset"
        operation.name = "CreateAsset"
        operation.input = CreateAssetRequest
        operation.output = CreateAssetResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create an asset", "resources" => {"required" => {"AgentSpaceResource" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "dp."}, "smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/asset/agent-space/{agentSpaceId}/assets"}}
      end)
      service.add_operation(:create_asset_file, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#CreateAssetFile"
        operation.name = "CreateAssetFile"
        operation.input = CreateAssetFileRequest
        operation.output = CreateAssetFileResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create an asset file", "resources" => {"required" => {"AgentSpaceResource" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "dp."}, "smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/asset/agent-space/{agentSpaceId}/assets/{assetId}/files/{path+}"}}
      end)
      service.add_operation(:create_backlog_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#CreateBacklogTask"
        operation.name = "CreateBacklogTask"
        operation.input = CreateBacklogTaskRequest
        operation.output = CreateBacklogTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aidevops:SourceAgentSpaceArn", "aidevops:TargetAgentSpaceArn"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create a new backlog task", "resources" => {"required" => {"AgentSpaceResource" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "dp."}, "smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/backlog/agent-space/{agentSpaceId}/tasks"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_chat, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#CreateChat"
        operation.name = "CreateChat"
        operation.input = CreateChatRequest
        operation.output = CreateChatResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create a chat"}, "smithy.api#endpoint" => {"hostPrefix" => "dp."}, "smithy.api#http" => {"method" => "POST", "uri" => "/agents/agent-space/{agentSpaceId}/chat/create"}}
      end)
      service.add_operation(:create_private_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#CreatePrivateConnection"
        operation.name = "CreatePrivateConnection"
        operation.input = CreatePrivateConnectionInput
        operation.output = CreatePrivateConnectionOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create a private connection"}, "smithy.api#endpoint" => {"hostPrefix" => "cp."}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/private-connections", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_trigger, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#CreateTrigger"
        operation.name = "CreateTrigger"
        operation.input = CreateTriggerRequest
        operation.output = CreateTriggerResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create a Trigger", "resources" => {"required" => {"AgentSpaceResource" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "dp."}, "smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/trigger/agent-space/{agentSpaceId}/triggers"}}
      end)
      service.add_operation(:delete_agent_space, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#DeleteAgentSpace"
        operation.name = "DeleteAgentSpace"
        operation.input = DeleteAgentSpaceInput
        operation.output = DeleteAgentSpaceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete agentspace"}, "smithy.api#endpoint" => {"hostPrefix" => "cp."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/agentspaces/{agentSpaceId}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_asset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#DeleteAsset"
        operation.name = "DeleteAsset"
        operation.input = DeleteAssetRequest
        operation.output = DeleteAssetResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete an asset", "resources" => {"required" => {"AgentSpaceResource" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "dp."}, "smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/asset/agent-space/{agentSpaceId}/assets/{assetId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_asset_file, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#DeleteAssetFile"
        operation.name = "DeleteAssetFile"
        operation.input = DeleteAssetFileRequest
        operation.output = DeleteAssetFileResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete an asset file", "resources" => {"required" => {"AgentSpaceResource" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "dp."}, "smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/asset/agent-space/{agentSpaceId}/assets/{assetId}/files/{path+}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_private_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#DeletePrivateConnection"
        operation.name = "DeletePrivateConnection"
        operation.input = DeletePrivateConnectionInput
        operation.output = DeletePrivateConnectionOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete a private connection"}, "smithy.api#endpoint" => {"hostPrefix" => "cp."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/private-connections/{name}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_trigger, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#DeleteTrigger"
        operation.name = "DeleteTrigger"
        operation.input = DeleteTriggerRequest
        operation.output = DeleteTriggerResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete a Trigger", "resources" => {"required" => {"AgentSpaceResource" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "dp."}, "smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/trigger/agent-space/{agentSpaceId}/triggers/{triggerId}"}}
      end)
      service.add_operation(:deregister_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#DeregisterService"
        operation.name = "DeregisterService"
        operation.input = DeregisterServiceInput
        operation.output = DeregisterServiceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "cp."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/services/{serviceId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_private_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#DescribePrivateConnection"
        operation.name = "DescribePrivateConnection"
        operation.input = DescribePrivateConnectionInput
        operation.output = DescribePrivateConnectionOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to describe a private connection"}, "smithy.api#endpoint" => {"hostPrefix" => "cp."}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/private-connections/{name}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:disable_operator_app, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#DisableOperatorApp"
        operation.name = "DisableOperatorApp"
        operation.input = DisableOperatorAppInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << IdentityCenterServiceException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to disable the Operator App access to the given AgentSpace"}, "smithy.api#endpoint" => {"hostPrefix" => "cp."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/agentspaces/{agentSpaceId}/operator", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#DisassociateService"
        operation.name = "DisassociateService"
        operation.input = DisassociateServiceInput
        operation.output = DisassociateServiceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to disassociate service"}, "smithy.api#endpoint" => {"hostPrefix" => "cp."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/agentspaces/{agentSpaceId}/associations/{associationId}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:enable_operator_app, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#EnableOperatorApp"
        operation.name = "EnableOperatorApp"
        operation.input = EnableOperatorAppInput
        operation.output = EnableOperatorAppOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << IdentityCenterServiceException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to enable the Operator App to access the given AgentSpace"}, "smithy.api#endpoint" => {"hostPrefix" => "cp."}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/agentspaces/{agentSpaceId}/operator", "code" => 200}}
      end)
      service.add_operation(:get_account_usage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#GetAccountUsage"
        operation.name = "GetAccountUsage"
        operation.input = GetAccountUsageInput
        operation.output = GetAccountUsageOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve account usage information"}, "smithy.api#endpoint" => {"hostPrefix" => "dp."}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/usage/account"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetAccountUsageSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "ap-southeast-2"}}]}
      end)
      service.add_operation(:get_agent_space, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#GetAgentSpace"
        operation.name = "GetAgentSpace"
        operation.input = GetAgentSpaceInput
        operation.output = GetAgentSpaceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to get agentspace"}, "smithy.api#endpoint" => {"hostPrefix" => "cp."}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/agentspaces/{agentSpaceId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_asset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#GetAsset"
        operation.name = "GetAsset"
        operation.input = GetAssetRequest
        operation.output = GetAssetResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aidevops:SourceAgentSpaceArn", "aidevops:TargetAgentSpaceArn"], "aws.iam#iamAction" => {"documentation" => "Grants permission to get an asset", "resources" => {"required" => {"AgentSpaceResource" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "dp."}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/asset/agent-space/{agentSpaceId}/assets/{assetId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_asset_content, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#GetAssetContent"
        operation.name = "GetAssetContent"
        operation.input = GetAssetContentRequest
        operation.output = GetAssetContentResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aidevops:SourceAgentSpaceArn", "aidevops:TargetAgentSpaceArn"], "aws.iam#iamAction" => {"documentation" => "Grants permission to get asset content", "resources" => {"required" => {"AgentSpaceResource" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "dp."}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/asset/agent-space/{agentSpaceId}/assets/{assetId}/content"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_asset_file, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#GetAssetFile"
        operation.name = "GetAssetFile"
        operation.input = GetAssetFileRequest
        operation.output = GetAssetFileResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aidevops:SourceAgentSpaceArn", "aidevops:TargetAgentSpaceArn"], "aws.iam#iamAction" => {"documentation" => "Grants permission to get an asset file", "resources" => {"required" => {"AgentSpaceResource" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "dp."}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/asset/agent-space/{agentSpaceId}/assets/{assetId}/files/{path+}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#GetAssociation"
        operation.name = "GetAssociation"
        operation.input = GetAssociationInput
        operation.output = GetAssociationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to get association"}, "smithy.api#endpoint" => {"hostPrefix" => "cp."}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/agentspaces/{agentSpaceId}/associations/{associationId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_backlog_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#GetBacklogTask"
        operation.name = "GetBacklogTask"
        operation.input = GetBacklogTaskRequest
        operation.output = GetBacklogTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aidevops:SourceAgentSpaceArn", "aidevops:TargetAgentSpaceArn"], "aws.iam#iamAction" => {"documentation" => "Grants permission to get a backlog task", "resources" => {"required" => {"AgentSpaceResource" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "dp."}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/backlog/agent-space/{agentSpaceId}/tasks/{taskId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_operator_app, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#GetOperatorApp"
        operation.name = "GetOperatorApp"
        operation.input = GetOperatorAppInput
        operation.output = GetOperatorAppOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to get operator auth config for any enabled auth flow"}, "smithy.api#endpoint" => {"hostPrefix" => "cp."}, "smithy.api#http" => {"method" => "GET", "uri" => "/v2/agentspaces/{agentSpaceId}/operator", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_recommendation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#GetRecommendation"
        operation.name = "GetRecommendation"
        operation.input = GetRecommendationRequest
        operation.output = GetRecommendationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get a recommendation", "resources" => {"required" => {"AgentSpaceResource" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "dp."}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/backlog/agent-space/{agentSpaceId}/recommendations/{recommendationId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#GetService"
        operation.name = "GetService"
        operation.input = GetServiceInput
        operation.output = GetServiceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to get services"}, "smithy.api#endpoint" => {"hostPrefix" => "cp."}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/services/{serviceId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_trigger, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#GetTrigger"
        operation.name = "GetTrigger"
        operation.input = GetTriggerRequest
        operation.output = GetTriggerResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get a Trigger", "resources" => {"required" => {"AgentSpaceResource" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "dp."}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/trigger/agent-space/{agentSpaceId}/triggers/{triggerId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_agent_spaces, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#ListAgentSpaces"
        operation.name = "ListAgentSpaces"
        operation.input = ListAgentSpacesInput
        operation.output = ListAgentSpacesOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list agentspace"}, "smithy.api#endpoint" => {"hostPrefix" => "cp."}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/agentspaces/list", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListAgentSpacesSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "ap-southeast-2"}}]}
        operation[:paginator] = Paginators::ListAgentSpaces.new
      end)
      service.add_operation(:list_asset_files, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#ListAssetFiles"
        operation.name = "ListAssetFiles"
        operation.input = ListAssetFilesRequest
        operation.output = ListAssetFilesResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aidevops:SourceAgentSpaceArn", "aidevops:TargetAgentSpaceArn"], "aws.iam#iamAction" => {"documentation" => "Grants permission to list asset files", "resources" => {"required" => {"AgentSpaceResource" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "dp."}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/asset/agent-space/{agentSpaceId}/assets/{assetId}/files"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAssetFiles.new
      end)
      service.add_operation(:list_asset_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#ListAssetTypes"
        operation.name = "ListAssetTypes"
        operation.input = ListAssetTypesRequest
        operation.output = ListAssetTypesResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list asset types"}, "smithy.api#endpoint" => {"hostPrefix" => "dp."}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/asset/types"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAssetTypes.new
      end)
      service.add_operation(:list_asset_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#ListAssetVersions"
        operation.name = "ListAssetVersions"
        operation.input = ListAssetVersionsRequest
        operation.output = ListAssetVersionsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list asset versions", "resources" => {"required" => {"AgentSpaceResource" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "dp."}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/asset/agent-space/{agentSpaceId}/assets/{assetId}/versions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAssetVersions.new
      end)
      service.add_operation(:list_assets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#ListAssets"
        operation.name = "ListAssets"
        operation.input = ListAssetsRequest
        operation.output = ListAssetsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aidevops:SourceAgentSpaceArn", "aidevops:TargetAgentSpaceArn"], "aws.iam#iamAction" => {"documentation" => "Grants permission to list assets", "resources" => {"required" => {"AgentSpaceResource" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "dp."}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/asset/agent-space/{agentSpaceId}/assets"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAssets.new
      end)
      service.add_operation(:list_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#ListAssociations"
        operation.name = "ListAssociations"
        operation.input = ListAssociationsInput
        operation.output = ListAssociationsOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list associations"}, "smithy.api#endpoint" => {"hostPrefix" => "cp."}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/agentspaces/{agentSpaceId}/associations/list", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAssociations.new
      end)
      service.add_operation(:list_backlog_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#ListBacklogTasks"
        operation.name = "ListBacklogTasks"
        operation.input = ListBacklogTasksRequest
        operation.output = ListBacklogTasksResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aidevops:SourceAgentSpaceArn", "aidevops:TargetAgentSpaceArn"], "aws.iam#iamAction" => {"documentation" => "Grants permission to list backlog tasks", "resources" => {"required" => {"AgentSpaceResource" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "dp."}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/backlog/agent-space/{agentSpaceId}/tasks/list"}}
        operation[:paginator] = Paginators::ListBacklogTasks.new
      end)
      service.add_operation(:list_chats, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#ListChats"
        operation.name = "ListChats"
        operation.input = ListChatsRequest
        operation.output = ListChatsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list chats", "resources" => {"required" => {"AgentSpaceResource" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "dp."}, "smithy.api#http" => {"method" => "GET", "uri" => "/agents/agent-space/{agentSpaceId}/chat/list"}}
      end)
      service.add_operation(:list_executions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#ListExecutions"
        operation.name = "ListExecutions"
        operation.input = ListExecutionsRequest
        operation.output = ListExecutionsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aidevops:SourceAgentSpaceArn", "aidevops:TargetAgentSpaceArn"], "aws.iam#iamAction" => {"documentation" => "Grants permission to list executions", "resources" => {"required" => {"AgentSpaceResource" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "dp."}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/journal/agent-space/{agentSpaceId}/executions"}}
        operation[:paginator] = Paginators::ListExecutions.new
      end)
      service.add_operation(:list_goals, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#ListGoals"
        operation.name = "ListGoals"
        operation.input = ListGoalsRequest
        operation.output = ListGoalsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list goals", "resources" => {"required" => {"AgentSpaceResource" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "dp."}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/backlog/agent-space/{agentSpaceId}/goals/list"}}
        operation[:paginator] = Paginators::ListGoals.new
      end)
      service.add_operation(:list_journal_records, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#ListJournalRecords"
        operation.name = "ListJournalRecords"
        operation.input = ListJournalRecordsRequest
        operation.output = ListJournalRecordsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aidevops:SourceAgentSpaceArn", "aidevops:TargetAgentSpaceArn"], "aws.iam#iamAction" => {"documentation" => "Grants permission to list journal records", "resources" => {"required" => {"AgentSpaceResource" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "dp."}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/journal/agent-space/{agentSpaceId}/journalRecords"}}
        operation[:paginator] = Paginators::ListJournalRecords.new
      end)
      service.add_operation(:list_pending_messages, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#ListPendingMessages"
        operation.name = "ListPendingMessages"
        operation.input = ListPendingMessagesRequest
        operation.output = ListPendingMessagesResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list pending messages", "resources" => {"required" => {"AgentSpaceResource" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "dp."}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/agents/agent-space/{agentSpaceId}/pendingMessages"}}
      end)
      service.add_operation(:list_private_connections, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#ListPrivateConnections"
        operation.name = "ListPrivateConnections"
        operation.input = ListPrivateConnectionsInput
        operation.output = ListPrivateConnectionsOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list private connections"}, "smithy.api#endpoint" => {"hostPrefix" => "cp."}, "smithy.api#http" => {"method" => "GET", "uri" => "/v1/private-connections", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#ListRecommendations"
        operation.name = "ListRecommendations"
        operation.input = ListRecommendationsRequest
        operation.output = ListRecommendationsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list recommendations", "resources" => {"required" => {"AgentSpaceResource" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "dp."}, "smithy.api#http" => {"method" => "POST", "uri" => "/backlog/agent-space/{agentSpaceId}/recommendations/list"}}
      end)
      service.add_operation(:list_services, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#ListServices"
        operation.name = "ListServices"
        operation.input = ListServicesInput
        operation.output = ListServicesOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list services"}, "smithy.api#endpoint" => {"hostPrefix" => "cp."}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/services/list", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServices.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list tags for a resource"}, "smithy.api#endpoint" => {"hostPrefix" => "cp."}, "smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_triggers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#ListTriggers"
        operation.name = "ListTriggers"
        operation.input = ListTriggersRequest
        operation.output = ListTriggersResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list Triggers", "resources" => {"required" => {"AgentSpaceResource" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "dp."}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/trigger/agent-space/{agentSpaceId}/triggers"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTriggers.new
      end)
      service.add_operation(:list_webhooks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#ListWebhooks"
        operation.name = "ListWebhooks"
        operation.input = ListWebhooksInput
        operation.output = ListWebhooksOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list webhooks for association"}, "smithy.api#endpoint" => {"hostPrefix" => "cp."}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/agentspaces/{agentSpaceId}/associations/{associationId}/webhooks/list", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:register_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#RegisterService"
        operation.name = "RegisterService"
        operation.input = RegisterServiceInput
        operation.output = RegisterServiceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to register specific service"}, "smithy.api#endpoint" => {"hostPrefix" => "cp."}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/register/{service}", "code" => 201}}
      end)
      service.add_operation(:send_message, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#SendMessage"
        operation.name = "SendMessage"
        operation.input = SendMessageRequest
        operation.output = SendMessageResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aidevops:SourceAgentSpaceArn", "aidevops:TargetAgentSpaceArn"], "aws.iam#iamAction" => {"documentation" => "Grants permission to send chat messages", "resources" => {"required" => {"AgentSpaceResource" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "dp."}, "smithy.api#http" => {"method" => "POST", "uri" => "/agents/agent-space/{agentSpaceId}/chat/sendMessage"}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to tag a resource"}, "smithy.api#endpoint" => {"hostPrefix" => "cp."}, "smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to untag a resource"}, "smithy.api#endpoint" => {"hostPrefix" => "cp."}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_agent_space, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#UpdateAgentSpace"
        operation.name = "UpdateAgentSpace"
        operation.input = UpdateAgentSpaceInput
        operation.output = UpdateAgentSpaceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update agentspace"}, "smithy.api#endpoint" => {"hostPrefix" => "cp."}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/v1/agentspaces/{agentSpaceId}", "code" => 200}}
      end)
      service.add_operation(:update_approval_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#UpdateApprovalAction"
        operation.name = "UpdateApprovalAction"
        operation.input = UpdateApprovalActionRequest
        operation.output = UpdateApprovalActionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update an approval action (approve or reject) for an agent tool invocation", "resources" => {"required" => {"AgentSpaceResource" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "dp."}, "smithy.api#http" => {"method" => "POST", "uri" => "/agents/agent-space/{agentSpaceId}/approvals/{approvalId}/update-action"}}
      end)
      service.add_operation(:update_asset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#UpdateAsset"
        operation.name = "UpdateAsset"
        operation.input = UpdateAssetRequest
        operation.output = UpdateAssetResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update an asset", "resources" => {"required" => {"AgentSpaceResource" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "dp."}, "smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/asset/agent-space/{agentSpaceId}/assets/{assetId}"}}
      end)
      service.add_operation(:update_asset_file, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#UpdateAssetFile"
        operation.name = "UpdateAssetFile"
        operation.input = UpdateAssetFileRequest
        operation.output = UpdateAssetFileResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update an asset file", "resources" => {"required" => {"AgentSpaceResource" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "dp."}, "smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/asset/agent-space/{agentSpaceId}/assets/{assetId}/files/{path+}"}}
      end)
      service.add_operation(:update_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#UpdateAssociation"
        operation.name = "UpdateAssociation"
        operation.input = UpdateAssociationInput
        operation.output = UpdateAssociationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update association"}, "smithy.api#endpoint" => {"hostPrefix" => "cp."}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/v1/agentspaces/{agentSpaceId}/associations/{associationId}", "code" => 200}}
      end)
      service.add_operation(:update_backlog_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#UpdateBacklogTask"
        operation.name = "UpdateBacklogTask"
        operation.input = UpdateBacklogTaskRequest
        operation.output = UpdateBacklogTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aidevops:SourceAgentSpaceArn", "aidevops:TargetAgentSpaceArn"], "aws.iam#iamAction" => {"documentation" => "Grants permission to update a backlog task", "resources" => {"required" => {"AgentSpaceResource" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "dp."}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/backlog/agent-space/{agentSpaceId}/tasks/{taskId}"}}
      end)
      service.add_operation(:update_goal, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#UpdateGoal"
        operation.name = "UpdateGoal"
        operation.input = UpdateGoalRequest
        operation.output = UpdateGoalResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update a goal", "resources" => {"required" => {"AgentSpaceResource" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "dp."}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/backlog/agent-space/{agentSpaceId}/goals/{goalId}"}}
      end)
      service.add_operation(:update_operator_app_idp_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#UpdateOperatorAppIdpConfig"
        operation.name = "UpdateOperatorAppIdpConfig"
        operation.input = UpdateOperatorAppIdpConfigInput
        operation.output = UpdateOperatorAppIdpConfigOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update the external Identity Provider configuration for the Operator App"}, "smithy.api#endpoint" => {"hostPrefix" => "cp."}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/v1/agentspaces/{agentSpaceId}/operator/idp", "code" => 200}}
      end)
      service.add_operation(:update_private_connection_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#UpdatePrivateConnectionCertificate"
        operation.name = "UpdatePrivateConnectionCertificate"
        operation.input = UpdatePrivateConnectionCertificateInput
        operation.output = UpdatePrivateConnectionCertificateOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update a private connection certificate"}, "smithy.api#endpoint" => {"hostPrefix" => "cp."}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/private-connections/{name}/certificate", "code" => 200}}
      end)
      service.add_operation(:update_recommendation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#UpdateRecommendation"
        operation.name = "UpdateRecommendation"
        operation.input = UpdateRecommendationRequest
        operation.output = UpdateRecommendationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update a recommendation", "resources" => {"required" => {"AgentSpaceResource" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "dp."}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/backlog/agent-space/{agentSpaceId}/recommendations/{recommendationId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_trigger, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#UpdateTrigger"
        operation.name = "UpdateTrigger"
        operation.input = UpdateTriggerRequest
        operation.output = UpdateTriggerResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update a Trigger", "resources" => {"required" => {"AgentSpaceResource" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "dp."}, "smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/trigger/agent-space/{agentSpaceId}/triggers/{triggerId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:validate_aws_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.devopsagent#ValidateAwsAssociations"
        operation.name = "ValidateAwsAssociations"
        operation.input = ValidateAwsAssociationsInput
        operation.output = ValidateAwsAssociationsOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ContentSizeExceededException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to validate aws association"}, "smithy.api#endpoint" => {"hostPrefix" => "cp."}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1/agentspaces/{agentSpaceId}/associations/validate", "code" => 204}, "smithy.api#idempotent" => {}}
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
