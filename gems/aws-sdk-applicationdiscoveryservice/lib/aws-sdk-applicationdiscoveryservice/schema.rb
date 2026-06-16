# frozen_string_literal: true

# This is generated code!

module Aws::ApplicationDiscoveryService
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AgentConfigurationStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#AgentConfigurationStatus", name: "AgentConfigurationStatus")
    AgentConfigurationStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationdiscoveryservice#AgentConfigurationStatusList", name: "AgentConfigurationStatusList")
    AgentId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationdiscoveryservice#AgentId", name: "AgentId", traits: {"smithy.api#length" => {"min" => 10, "max" => 20}, "smithy.api#pattern" => "^\\S+$"})
    AgentIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationdiscoveryservice#AgentIds", name: "AgentIds")
    AgentInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#AgentInfo", name: "AgentInfo")
    AgentNetworkInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#AgentNetworkInfo", name: "AgentNetworkInfo", traits: {"smithy.api#sensitive" => {}})
    AgentNetworkInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationdiscoveryservice#AgentNetworkInfoList", name: "AgentNetworkInfoList")
    AgentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationdiscoveryservice#AgentStatus", name: "AgentStatus")
    AgentsInfo = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationdiscoveryservice#AgentsInfo", name: "AgentsInfo")
    ApplicationDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationdiscoveryservice#ApplicationDescription", name: "ApplicationDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^(^$|[\\s\\S]*\\S[\\s\\S]*)$"})
    ApplicationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationdiscoveryservice#ApplicationId", name: "ApplicationId", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#pattern" => "^\\S+$"})
    ApplicationIdsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationdiscoveryservice#ApplicationIdsList", name: "ApplicationIdsList")
    ApplicationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationdiscoveryservice#ApplicationName", name: "ApplicationName", traits: {"smithy.api#length" => {"min" => 0, "max" => 127}, "smithy.api#pattern" => "^[\\s\\S]*\\S[\\s\\S]*$"})
    ApplicationWave = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationdiscoveryservice#ApplicationWave", name: "ApplicationWave", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^($|[^\\s\\x00]( *[^\\s\\x00])*$)$"})
    AssociateConfigurationItemsToApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#AssociateConfigurationItemsToApplicationRequest", name: "AssociateConfigurationItemsToApplicationRequest")
    AssociateConfigurationItemsToApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#AssociateConfigurationItemsToApplicationResponse", name: "AssociateConfigurationItemsToApplicationResponse")
    AuthorizationErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#AuthorizationErrorException", name: "AuthorizationErrorException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    BatchDeleteAgentError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#BatchDeleteAgentError", name: "BatchDeleteAgentError")
    BatchDeleteAgentErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationdiscoveryservice#BatchDeleteAgentErrors", name: "BatchDeleteAgentErrors")
    BatchDeleteAgentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#BatchDeleteAgentsRequest", name: "BatchDeleteAgentsRequest")
    BatchDeleteAgentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#BatchDeleteAgentsResponse", name: "BatchDeleteAgentsResponse")
    BatchDeleteConfigurationTask = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#BatchDeleteConfigurationTask", name: "BatchDeleteConfigurationTask")
    BatchDeleteConfigurationTaskStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationdiscoveryservice#BatchDeleteConfigurationTaskStatus", name: "BatchDeleteConfigurationTaskStatus")
    BatchDeleteImportDataError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#BatchDeleteImportDataError", name: "BatchDeleteImportDataError")
    BatchDeleteImportDataErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationdiscoveryservice#BatchDeleteImportDataErrorCode", name: "BatchDeleteImportDataErrorCode")
    BatchDeleteImportDataErrorDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationdiscoveryservice#BatchDeleteImportDataErrorDescription", name: "BatchDeleteImportDataErrorDescription")
    BatchDeleteImportDataErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationdiscoveryservice#BatchDeleteImportDataErrorList", name: "BatchDeleteImportDataErrorList")
    BatchDeleteImportDataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#BatchDeleteImportDataRequest", name: "BatchDeleteImportDataRequest")
    BatchDeleteImportDataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#BatchDeleteImportDataResponse", name: "BatchDeleteImportDataResponse")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.applicationdiscoveryservice#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    BoxedInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.applicationdiscoveryservice#BoxedInteger", name: "BoxedInteger")
    ClientRequestToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationdiscoveryservice#ClientRequestToken", name: "ClientRequestToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    Condition = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationdiscoveryservice#Condition", name: "Condition", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#pattern" => "^\\S+$"})
    Configuration = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.applicationdiscoveryservice#Configuration", name: "Configuration")
    ConfigurationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationdiscoveryservice#ConfigurationId", name: "ConfigurationId", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#pattern" => "^\\S*$"})
    ConfigurationIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationdiscoveryservice#ConfigurationIdList", name: "ConfigurationIdList")
    ConfigurationItemType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationdiscoveryservice#ConfigurationItemType", name: "ConfigurationItemType")
    ConfigurationTag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#ConfigurationTag", name: "ConfigurationTag")
    ConfigurationTagSet = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationdiscoveryservice#ConfigurationTagSet", name: "ConfigurationTagSet")
    Configurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationdiscoveryservice#Configurations", name: "Configurations")
    ConfigurationsDownloadUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationdiscoveryservice#ConfigurationsDownloadUrl", name: "ConfigurationsDownloadUrl")
    ConfigurationsExportId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationdiscoveryservice#ConfigurationsExportId", name: "ConfigurationsExportId", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#pattern" => "^\\S*$"})
    ConflictErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#ConflictErrorException", name: "ConflictErrorException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContinuousExportDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#ContinuousExportDescription", name: "ContinuousExportDescription")
    ContinuousExportDescriptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationdiscoveryservice#ContinuousExportDescriptions", name: "ContinuousExportDescriptions")
    ContinuousExportIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationdiscoveryservice#ContinuousExportIds", name: "ContinuousExportIds")
    ContinuousExportStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationdiscoveryservice#ContinuousExportStatus", name: "ContinuousExportStatus")
    CreateApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#CreateApplicationRequest", name: "CreateApplicationRequest")
    CreateApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#CreateApplicationResponse", name: "CreateApplicationResponse")
    CreateTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#CreateTagsRequest", name: "CreateTagsRequest")
    CreateTagsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#CreateTagsResponse", name: "CreateTagsResponse")
    CustomerAgentInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#CustomerAgentInfo", name: "CustomerAgentInfo")
    CustomerAgentlessCollectorInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#CustomerAgentlessCollectorInfo", name: "CustomerAgentlessCollectorInfo")
    CustomerConnectorInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#CustomerConnectorInfo", name: "CustomerConnectorInfo")
    CustomerMeCollectorInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#CustomerMeCollectorInfo", name: "CustomerMeCollectorInfo")
    DataSource = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationdiscoveryservice#DataSource", name: "DataSource")
    DatabaseName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationdiscoveryservice#DatabaseName", name: "DatabaseName", traits: {"smithy.api#length" => {"min" => 1, "max" => 252}})
    DeleteAgent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#DeleteAgent", name: "DeleteAgent")
    DeleteAgentErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationdiscoveryservice#DeleteAgentErrorCode", name: "DeleteAgentErrorCode")
    DeleteAgents = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationdiscoveryservice#DeleteAgents", name: "DeleteAgents", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    DeleteApplicationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#DeleteApplicationsRequest", name: "DeleteApplicationsRequest")
    DeleteApplicationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#DeleteApplicationsResponse", name: "DeleteApplicationsResponse")
    DeleteTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#DeleteTagsRequest", name: "DeleteTagsRequest")
    DeleteTagsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#DeleteTagsResponse", name: "DeleteTagsResponse")
    DeletionConfigurationItemType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationdiscoveryservice#DeletionConfigurationItemType", name: "DeletionConfigurationItemType")
    DeletionWarning = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#DeletionWarning", name: "DeletionWarning")
    DeletionWarningsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationdiscoveryservice#DeletionWarningsList", name: "DeletionWarningsList")
    DescribeAgentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#DescribeAgentsRequest", name: "DescribeAgentsRequest")
    DescribeAgentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#DescribeAgentsResponse", name: "DescribeAgentsResponse")
    DescribeBatchDeleteConfigurationTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#DescribeBatchDeleteConfigurationTaskRequest", name: "DescribeBatchDeleteConfigurationTaskRequest")
    DescribeBatchDeleteConfigurationTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#DescribeBatchDeleteConfigurationTaskResponse", name: "DescribeBatchDeleteConfigurationTaskResponse")
    DescribeConfigurationsAttribute = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.applicationdiscoveryservice#DescribeConfigurationsAttribute", name: "DescribeConfigurationsAttribute")
    DescribeConfigurationsAttributes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationdiscoveryservice#DescribeConfigurationsAttributes", name: "DescribeConfigurationsAttributes")
    DescribeConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#DescribeConfigurationsRequest", name: "DescribeConfigurationsRequest")
    DescribeConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#DescribeConfigurationsResponse", name: "DescribeConfigurationsResponse")
    DescribeContinuousExportsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.applicationdiscoveryservice#DescribeContinuousExportsMaxResults", name: "DescribeContinuousExportsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    DescribeContinuousExportsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#DescribeContinuousExportsRequest", name: "DescribeContinuousExportsRequest")
    DescribeContinuousExportsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#DescribeContinuousExportsResponse", name: "DescribeContinuousExportsResponse")
    DescribeExportConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#DescribeExportConfigurationsRequest", name: "DescribeExportConfigurationsRequest")
    DescribeExportConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#DescribeExportConfigurationsResponse", name: "DescribeExportConfigurationsResponse")
    DescribeExportTasksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#DescribeExportTasksRequest", name: "DescribeExportTasksRequest")
    DescribeExportTasksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#DescribeExportTasksResponse", name: "DescribeExportTasksResponse")
    DescribeImportTasksFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationdiscoveryservice#DescribeImportTasksFilterList", name: "DescribeImportTasksFilterList")
    DescribeImportTasksMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.applicationdiscoveryservice#DescribeImportTasksMaxResults", name: "DescribeImportTasksMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    DescribeImportTasksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#DescribeImportTasksRequest", name: "DescribeImportTasksRequest")
    DescribeImportTasksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#DescribeImportTasksResponse", name: "DescribeImportTasksResponse")
    DescribeTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#DescribeTagsRequest", name: "DescribeTagsRequest")
    DescribeTagsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#DescribeTagsResponse", name: "DescribeTagsResponse")
    DisassociateConfigurationItemsFromApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#DisassociateConfigurationItemsFromApplicationRequest", name: "DisassociateConfigurationItemsFromApplicationRequest")
    DisassociateConfigurationItemsFromApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#DisassociateConfigurationItemsFromApplicationResponse", name: "DisassociateConfigurationItemsFromApplicationResponse")
    EC2InstanceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationdiscoveryservice#EC2InstanceType", name: "EC2InstanceType", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}, "smithy.api#pattern" => "^[a-zA-Z0-9\\d\\.\\-]+$"})
    Ec2RecommendationsExportPreferences = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#Ec2RecommendationsExportPreferences", name: "Ec2RecommendationsExportPreferences")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationdiscoveryservice#ErrorMessage", name: "ErrorMessage")
    ErrorStatusCode = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.applicationdiscoveryservice#ErrorStatusCode", name: "ErrorStatusCode", traits: {"smithy.api#default" => 0})
    ExcludedInstanceTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationdiscoveryservice#ExcludedInstanceTypes", name: "ExcludedInstanceTypes")
    ExportConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#ExportConfigurationsResponse", name: "ExportConfigurationsResponse")
    ExportDataFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationdiscoveryservice#ExportDataFormat", name: "ExportDataFormat")
    ExportDataFormats = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationdiscoveryservice#ExportDataFormats", name: "ExportDataFormats")
    ExportEnabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.applicationdiscoveryservice#ExportEnabled", name: "ExportEnabled", traits: {"smithy.api#default" => false})
    ExportFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#ExportFilter", name: "ExportFilter")
    ExportFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationdiscoveryservice#ExportFilters", name: "ExportFilters")
    ExportIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationdiscoveryservice#ExportIds", name: "ExportIds")
    ExportInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#ExportInfo", name: "ExportInfo")
    ExportPreferences = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.applicationdiscoveryservice#ExportPreferences", name: "ExportPreferences")
    ExportRequestTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.applicationdiscoveryservice#ExportRequestTime", name: "ExportRequestTime")
    ExportStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationdiscoveryservice#ExportStatus", name: "ExportStatus")
    ExportStatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationdiscoveryservice#ExportStatusMessage", name: "ExportStatusMessage")
    ExportsInfo = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationdiscoveryservice#ExportsInfo", name: "ExportsInfo")
    FailedConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#FailedConfiguration", name: "FailedConfiguration")
    FailedConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationdiscoveryservice#FailedConfigurationList", name: "FailedConfigurationList")
    FileClassification = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationdiscoveryservice#FileClassification", name: "FileClassification")
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#Filter", name: "Filter")
    FilterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationdiscoveryservice#FilterName", name: "FilterName", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^[\\s\\S]*\\S[\\s\\S]*$"})
    FilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationdiscoveryservice#FilterValue", name: "FilterValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^(^$|[\\s\\S]*\\S[\\s\\S]*)$"})
    FilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationdiscoveryservice#FilterValues", name: "FilterValues")
    Filters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationdiscoveryservice#Filters", name: "Filters")
    GetDiscoverySummaryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#GetDiscoverySummaryRequest", name: "GetDiscoverySummaryRequest")
    GetDiscoverySummaryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#GetDiscoverySummaryResponse", name: "GetDiscoverySummaryResponse")
    HomeRegionNotSetException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#HomeRegionNotSetException", name: "HomeRegionNotSetException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ImportStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationdiscoveryservice#ImportStatus", name: "ImportStatus")
    ImportTask = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#ImportTask", name: "ImportTask")
    ImportTaskFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#ImportTaskFilter", name: "ImportTaskFilter")
    ImportTaskFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationdiscoveryservice#ImportTaskFilterName", name: "ImportTaskFilterName")
    ImportTaskFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationdiscoveryservice#ImportTaskFilterValue", name: "ImportTaskFilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    ImportTaskFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationdiscoveryservice#ImportTaskFilterValueList", name: "ImportTaskFilterValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ImportTaskIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationdiscoveryservice#ImportTaskIdentifier", name: "ImportTaskIdentifier", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#pattern" => "^import-task-[a-fA-F0-9]{32}$"})
    ImportTaskList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationdiscoveryservice#ImportTaskList", name: "ImportTaskList")
    ImportTaskName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationdiscoveryservice#ImportTaskName", name: "ImportTaskName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\s\\S]*\\S[\\s\\S]*$"})
    ImportURL = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationdiscoveryservice#ImportURL", name: "ImportURL", traits: {"smithy.api#length" => {"min" => 1, "max" => 4000}, "smithy.api#pattern" => "^\\S+://\\S+/[\\s\\S]*\\S[\\s\\S]*$"})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.applicationdiscoveryservice#Integer", name: "Integer", traits: {"smithy.api#default" => 0})
    InvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#InvalidParameterException", name: "InvalidParameterException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterValueException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#InvalidParameterValueException", name: "InvalidParameterValueException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#ListConfigurationsRequest", name: "ListConfigurationsRequest")
    ListConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#ListConfigurationsResponse", name: "ListConfigurationsResponse")
    ListServerNeighborsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#ListServerNeighborsRequest", name: "ListServerNeighborsRequest")
    ListServerNeighborsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#ListServerNeighborsResponse", name: "ListServerNeighborsResponse")
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.applicationdiscoveryservice#Long", name: "Long", traits: {"smithy.api#default" => 0})
    Message = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationdiscoveryservice#Message", name: "Message")
    NeighborConnectionDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#NeighborConnectionDetail", name: "NeighborConnectionDetail")
    NeighborDetailsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationdiscoveryservice#NeighborDetailsList", name: "NeighborDetailsList")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationdiscoveryservice#NextToken", name: "NextToken")
    OfferingClass = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationdiscoveryservice#OfferingClass", name: "OfferingClass")
    OperationNotPermittedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#OperationNotPermittedException", name: "OperationNotPermittedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    OrderByElement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#OrderByElement", name: "OrderByElement")
    OrderByElementFieldName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationdiscoveryservice#OrderByElementFieldName", name: "OrderByElementFieldName", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^[\\s\\S]*\\S[\\s\\S]*$"})
    OrderByList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationdiscoveryservice#OrderByList", name: "OrderByList")
    PurchasingOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationdiscoveryservice#PurchasingOption", name: "PurchasingOption")
    ReservedInstanceOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#ReservedInstanceOptions", name: "ReservedInstanceOptions")
    ResourceInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#ResourceInUseException", name: "ResourceInUseException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    S3Bucket = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationdiscoveryservice#S3Bucket", name: "S3Bucket")
    S3PresignedUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationdiscoveryservice#S3PresignedUrl", name: "S3PresignedUrl")
    SchemaStorageConfig = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.applicationdiscoveryservice#SchemaStorageConfig", name: "SchemaStorageConfig")
    ServerInternalErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#ServerInternalErrorException", name: "ServerInternalErrorException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    StartBatchDeleteConfigurationTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#StartBatchDeleteConfigurationTaskRequest", name: "StartBatchDeleteConfigurationTaskRequest")
    StartBatchDeleteConfigurationTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#StartBatchDeleteConfigurationTaskResponse", name: "StartBatchDeleteConfigurationTaskResponse")
    StartContinuousExportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#StartContinuousExportRequest", name: "StartContinuousExportRequest")
    StartContinuousExportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#StartContinuousExportResponse", name: "StartContinuousExportResponse")
    StartDataCollectionByAgentIdsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#StartDataCollectionByAgentIdsRequest", name: "StartDataCollectionByAgentIdsRequest")
    StartDataCollectionByAgentIdsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#StartDataCollectionByAgentIdsResponse", name: "StartDataCollectionByAgentIdsResponse")
    StartExportTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#StartExportTaskRequest", name: "StartExportTaskRequest")
    StartExportTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#StartExportTaskResponse", name: "StartExportTaskResponse")
    StartImportTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#StartImportTaskRequest", name: "StartImportTaskRequest")
    StartImportTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#StartImportTaskResponse", name: "StartImportTaskResponse")
    StopContinuousExportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#StopContinuousExportRequest", name: "StopContinuousExportRequest")
    StopContinuousExportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#StopContinuousExportResponse", name: "StopContinuousExportResponse")
    StopDataCollectionByAgentIdsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#StopDataCollectionByAgentIdsRequest", name: "StopDataCollectionByAgentIdsRequest")
    StopDataCollectionByAgentIdsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#StopDataCollectionByAgentIdsResponse", name: "StopDataCollectionByAgentIdsResponse")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationdiscoveryservice#String", name: "String", traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    StringMax255 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationdiscoveryservice#StringMax255", name: "StringMax255", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\s\\S]*\\S[\\s\\S]*$"})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#Tag", name: "Tag")
    TagFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#TagFilter", name: "TagFilter")
    TagFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationdiscoveryservice#TagFilters", name: "TagFilters")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationdiscoveryservice#TagKey", name: "TagKey")
    TagSet = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationdiscoveryservice#TagSet", name: "TagSet")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationdiscoveryservice#TagValue", name: "TagValue")
    Tenancy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationdiscoveryservice#Tenancy", name: "Tenancy")
    TermLength = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationdiscoveryservice#TermLength", name: "TermLength")
    TimeStamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.applicationdiscoveryservice#TimeStamp", name: "TimeStamp")
    ToDeleteIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationdiscoveryservice#ToDeleteIdentifierList", name: "ToDeleteIdentifierList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    UUID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationdiscoveryservice#UUID", name: "UUID", traits: {"smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    UpdateApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#UpdateApplicationRequest", name: "UpdateApplicationRequest")
    UpdateApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#UpdateApplicationResponse", name: "UpdateApplicationResponse")
    UsageMetricBasis = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationdiscoveryservice#UsageMetricBasis", name: "UsageMetricBasis")
    UsageMetricBasisName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationdiscoveryservice#UsageMetricBasisName", name: "UsageMetricBasisName", traits: {"smithy.api#pattern" => "^(p(\\d{1,2}|100)|AVG|SPEC|MAX)$"})
    UsageMetricPercentageAdjust = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.applicationdiscoveryservice#UsageMetricPercentageAdjust", name: "UsageMetricPercentageAdjust", traits: {"smithy.api#range" => {"min" => 0.0, "max" => 100.0}})
    UserPreferredRegion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationdiscoveryservice#UserPreferredRegion", name: "UserPreferredRegion", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}, "smithy.api#pattern" => "^[a-z]{2}-[a-z\\-]+-[0-9]+$"})
    WarningCode = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.applicationdiscoveryservice#WarningCode", name: "WarningCode", traits: {"smithy.api#default" => 0})
    WarningText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationdiscoveryservice#WarningText", name: "WarningText")
    OrderString = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationdiscoveryservice#orderString", name: "OrderString")

    AgentConfigurationStatus.add_member(:agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "agentId"))
    AgentConfigurationStatus.add_member(:operation_succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "operationSucceeded", traits: {"smithy.api#default" => false}))
    AgentConfigurationStatus.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "description"))
    AgentConfigurationStatus.type = Types::AgentConfigurationStatus
    AgentConfigurationStatusList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AgentConfigurationStatus)
    AgentIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AgentId)
    AgentInfo.add_member(:agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentId, location_name: "agentId"))
    AgentInfo.add_member(:host_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "hostName"))
    AgentInfo.add_member(:agent_network_info_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentNetworkInfoList, location_name: "agentNetworkInfoList"))
    AgentInfo.add_member(:connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "connectorId"))
    AgentInfo.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "version"))
    AgentInfo.add_member(:health, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentStatus, location_name: "health"))
    AgentInfo.add_member(:last_health_ping_time, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "lastHealthPingTime"))
    AgentInfo.add_member(:collection_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "collectionStatus"))
    AgentInfo.add_member(:agent_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "agentType"))
    AgentInfo.add_member(:registered_time, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "registeredTime"))
    AgentInfo.type = Types::AgentInfo
    AgentNetworkInfo.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "ipAddress"))
    AgentNetworkInfo.add_member(:mac_address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "macAddress"))
    AgentNetworkInfo.type = Types::AgentNetworkInfo
    AgentNetworkInfoList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AgentNetworkInfo)
    AgentStatus.add_member(:healthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HEALTHY", traits: {"smithy.api#enumValue" => "HEALTHY"}))
    AgentStatus.add_member(:unhealthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNHEALTHY", traits: {"smithy.api#enumValue" => "UNHEALTHY"}))
    AgentStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    AgentStatus.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNKNOWN", traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    AgentStatus.add_member(:blacklisted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BLACKLISTED", traits: {"smithy.api#enumValue" => "BLACKLISTED"}))
    AgentStatus.add_member(:shutdown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SHUTDOWN", traits: {"smithy.api#enumValue" => "SHUTDOWN"}))
    AgentsInfo.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AgentInfo)
    ApplicationIdsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId)
    AssociateConfigurationItemsToApplicationRequest.add_member(:application_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationConfigurationId", traits: {"smithy.api#required" => {}}))
    AssociateConfigurationItemsToApplicationRequest.add_member(:configuration_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationIdList, location_name: "configurationIds", traits: {"smithy.api#required" => {}}))
    AssociateConfigurationItemsToApplicationRequest.type = Types::AssociateConfigurationItemsToApplicationRequest
    AssociateConfigurationItemsToApplicationResponse.type = Types::AssociateConfigurationItemsToApplicationResponse
    AuthorizationErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "message"))
    AuthorizationErrorException.type = Types::AuthorizationErrorException
    BatchDeleteAgentError.add_member(:agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentId, location_name: "agentId", traits: {"smithy.api#required" => {}}))
    BatchDeleteAgentError.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "errorMessage", traits: {"smithy.api#required" => {}}))
    BatchDeleteAgentError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteAgentErrorCode, location_name: "errorCode", traits: {"smithy.api#required" => {}}))
    BatchDeleteAgentError.type = Types::BatchDeleteAgentError
    BatchDeleteAgentErrors.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDeleteAgentError)
    BatchDeleteAgentsRequest.add_member(:delete_agents, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteAgents, location_name: "deleteAgents", traits: {"smithy.api#required" => {}}))
    BatchDeleteAgentsRequest.type = Types::BatchDeleteAgentsRequest
    BatchDeleteAgentsResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDeleteAgentErrors, location_name: "errors"))
    BatchDeleteAgentsResponse.type = Types::BatchDeleteAgentsResponse
    BatchDeleteConfigurationTask.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, location_name: "taskId"))
    BatchDeleteConfigurationTask.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDeleteConfigurationTaskStatus, location_name: "status"))
    BatchDeleteConfigurationTask.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, location_name: "startTime"))
    BatchDeleteConfigurationTask.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, location_name: "endTime"))
    BatchDeleteConfigurationTask.add_member(:configuration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionConfigurationItemType, location_name: "configurationType"))
    BatchDeleteConfigurationTask.add_member(:requested_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationIdList, location_name: "requestedConfigurations"))
    BatchDeleteConfigurationTask.add_member(:deleted_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationIdList, location_name: "deletedConfigurations"))
    BatchDeleteConfigurationTask.add_member(:failed_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedConfigurationList, location_name: "failedConfigurations"))
    BatchDeleteConfigurationTask.add_member(:deletion_warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionWarningsList, location_name: "deletionWarnings"))
    BatchDeleteConfigurationTask.type = Types::BatchDeleteConfigurationTask
    BatchDeleteConfigurationTaskStatus.add_member(:initializing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INITIALIZING", traits: {"smithy.api#enumValue" => "INITIALIZING"}))
    BatchDeleteConfigurationTaskStatus.add_member(:validating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATING", traits: {"smithy.api#enumValue" => "VALIDATING"}))
    BatchDeleteConfigurationTaskStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    BatchDeleteConfigurationTaskStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    BatchDeleteConfigurationTaskStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    BatchDeleteImportDataError.add_member(:import_task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTaskIdentifier, location_name: "importTaskId"))
    BatchDeleteImportDataError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDeleteImportDataErrorCode, location_name: "errorCode"))
    BatchDeleteImportDataError.add_member(:error_description, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDeleteImportDataErrorDescription, location_name: "errorDescription"))
    BatchDeleteImportDataError.type = Types::BatchDeleteImportDataError
    BatchDeleteImportDataErrorCode.add_member(:not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_FOUND", traits: {"smithy.api#enumValue" => "NOT_FOUND"}))
    BatchDeleteImportDataErrorCode.add_member(:internal_server_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTERNAL_SERVER_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_SERVER_ERROR"}))
    BatchDeleteImportDataErrorCode.add_member(:over_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OVER_LIMIT", traits: {"smithy.api#enumValue" => "OVER_LIMIT"}))
    BatchDeleteImportDataErrorList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDeleteImportDataError)
    BatchDeleteImportDataRequest.add_member(:import_task_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ToDeleteIdentifierList, location_name: "importTaskIds", traits: {"smithy.api#required" => {}}))
    BatchDeleteImportDataRequest.add_member(:delete_history, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "deleteHistory", traits: {"smithy.api#default" => false}))
    BatchDeleteImportDataRequest.type = Types::BatchDeleteImportDataRequest
    BatchDeleteImportDataResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDeleteImportDataErrorList, location_name: "errors"))
    BatchDeleteImportDataResponse.type = Types::BatchDeleteImportDataResponse
    Configuration.key = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    Configuration.value = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    ConfigurationIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationId)
    ConfigurationItemType.add_member(:server, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SERVER", traits: {"smithy.api#enumValue" => "SERVER"}))
    ConfigurationItemType.add_member(:process, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROCESS", traits: {"smithy.api#enumValue" => "PROCESS"}))
    ConfigurationItemType.add_member(:connections, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONNECTIONS", traits: {"smithy.api#enumValue" => "CONNECTION"}))
    ConfigurationItemType.add_member(:application, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "APPLICATION", traits: {"smithy.api#enumValue" => "APPLICATION"}))
    ConfigurationTag.add_member(:configuration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationItemType, location_name: "configurationType"))
    ConfigurationTag.add_member(:configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationId, location_name: "configurationId"))
    ConfigurationTag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, location_name: "key"))
    ConfigurationTag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, location_name: "value"))
    ConfigurationTag.add_member(:time_of_creation, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, location_name: "timeOfCreation"))
    ConfigurationTag.type = Types::ConfigurationTag
    ConfigurationTagSet.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationTag, traits: {"smithy.api#xmlName" => "item"})
    Configurations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Configuration)
    ConflictErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "message"))
    ConflictErrorException.type = Types::ConflictErrorException
    ContinuousExportDescription.add_member(:export_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationsExportId, location_name: "exportId"))
    ContinuousExportDescription.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuousExportStatus, location_name: "status"))
    ContinuousExportDescription.add_member(:status_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMax255, location_name: "statusDetail"))
    ContinuousExportDescription.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Bucket, location_name: "s3Bucket"))
    ContinuousExportDescription.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, location_name: "startTime"))
    ContinuousExportDescription.add_member(:stop_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, location_name: "stopTime"))
    ContinuousExportDescription.add_member(:data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSource, location_name: "dataSource"))
    ContinuousExportDescription.add_member(:schema_storage_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaStorageConfig, location_name: "schemaStorageConfig"))
    ContinuousExportDescription.type = Types::ContinuousExportDescription
    ContinuousExportDescriptions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuousExportDescription)
    ContinuousExportIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationsExportId)
    ContinuousExportStatus.add_member(:start_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "START_IN_PROGRESS", traits: {"smithy.api#enumValue" => "START_IN_PROGRESS"}))
    ContinuousExportStatus.add_member(:start_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "START_FAILED", traits: {"smithy.api#enumValue" => "START_FAILED"}))
    ContinuousExportStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ContinuousExportStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    ContinuousExportStatus.add_member(:stop_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOP_IN_PROGRESS", traits: {"smithy.api#enumValue" => "STOP_IN_PROGRESS"}))
    ContinuousExportStatus.add_member(:stop_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOP_FAILED", traits: {"smithy.api#enumValue" => "STOP_FAILED"}))
    ContinuousExportStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    CreateApplicationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationDescription, location_name: "description"))
    CreateApplicationRequest.add_member(:wave, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationWave, location_name: "wave"))
    CreateApplicationRequest.type = Types::CreateApplicationRequest
    CreateApplicationResponse.add_member(:configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "configurationId"))
    CreateApplicationResponse.type = Types::CreateApplicationResponse
    CreateTagsRequest.add_member(:configuration_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationIdList, location_name: "configurationIds", traits: {"smithy.api#required" => {}}))
    CreateTagsRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagSet, location_name: "tags", traits: {"smithy.api#required" => {}}))
    CreateTagsRequest.type = Types::CreateTagsRequest
    CreateTagsResponse.type = Types::CreateTagsResponse
    CustomerAgentInfo.add_member(:active_agents, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "activeAgents", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CustomerAgentInfo.add_member(:healthy_agents, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "healthyAgents", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CustomerAgentInfo.add_member(:black_listed_agents, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "blackListedAgents", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CustomerAgentInfo.add_member(:shutdown_agents, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "shutdownAgents", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CustomerAgentInfo.add_member(:unhealthy_agents, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "unhealthyAgents", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CustomerAgentInfo.add_member(:total_agents, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "totalAgents", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CustomerAgentInfo.add_member(:unknown_agents, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "unknownAgents", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CustomerAgentInfo.type = Types::CustomerAgentInfo
    CustomerAgentlessCollectorInfo.add_member(:active_agentless_collectors, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "activeAgentlessCollectors", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CustomerAgentlessCollectorInfo.add_member(:healthy_agentless_collectors, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "healthyAgentlessCollectors", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CustomerAgentlessCollectorInfo.add_member(:deny_listed_agentless_collectors, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "denyListedAgentlessCollectors", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CustomerAgentlessCollectorInfo.add_member(:shutdown_agentless_collectors, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "shutdownAgentlessCollectors", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CustomerAgentlessCollectorInfo.add_member(:unhealthy_agentless_collectors, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "unhealthyAgentlessCollectors", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CustomerAgentlessCollectorInfo.add_member(:total_agentless_collectors, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "totalAgentlessCollectors", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CustomerAgentlessCollectorInfo.add_member(:unknown_agentless_collectors, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "unknownAgentlessCollectors", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CustomerAgentlessCollectorInfo.type = Types::CustomerAgentlessCollectorInfo
    CustomerConnectorInfo.add_member(:active_connectors, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "activeConnectors", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CustomerConnectorInfo.add_member(:healthy_connectors, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "healthyConnectors", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CustomerConnectorInfo.add_member(:black_listed_connectors, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "blackListedConnectors", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CustomerConnectorInfo.add_member(:shutdown_connectors, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "shutdownConnectors", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CustomerConnectorInfo.add_member(:unhealthy_connectors, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "unhealthyConnectors", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CustomerConnectorInfo.add_member(:total_connectors, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "totalConnectors", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CustomerConnectorInfo.add_member(:unknown_connectors, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "unknownConnectors", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CustomerConnectorInfo.type = Types::CustomerConnectorInfo
    CustomerMeCollectorInfo.add_member(:active_me_collectors, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "activeMeCollectors", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CustomerMeCollectorInfo.add_member(:healthy_me_collectors, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "healthyMeCollectors", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CustomerMeCollectorInfo.add_member(:deny_listed_me_collectors, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "denyListedMeCollectors", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CustomerMeCollectorInfo.add_member(:shutdown_me_collectors, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "shutdownMeCollectors", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CustomerMeCollectorInfo.add_member(:unhealthy_me_collectors, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "unhealthyMeCollectors", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CustomerMeCollectorInfo.add_member(:total_me_collectors, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "totalMeCollectors", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CustomerMeCollectorInfo.add_member(:unknown_me_collectors, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "unknownMeCollectors", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    CustomerMeCollectorInfo.type = Types::CustomerMeCollectorInfo
    DataSource.add_member(:agent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AGENT", traits: {"smithy.api#enumValue" => "AGENT"}))
    DeleteAgent.add_member(:agent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentId, location_name: "agentId", traits: {"smithy.api#required" => {}}))
    DeleteAgent.add_member(:force, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "force", traits: {"smithy.api#default" => false}))
    DeleteAgent.type = Types::DeleteAgent
    DeleteAgentErrorCode.add_member(:not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_FOUND", traits: {"smithy.api#enumValue" => "NOT_FOUND"}))
    DeleteAgentErrorCode.add_member(:internal_server_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTERNAL_SERVER_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_SERVER_ERROR"}))
    DeleteAgentErrorCode.add_member(:agent_in_use, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AGENT_IN_USE", traits: {"smithy.api#enumValue" => "AGENT_IN_USE"}))
    DeleteAgents.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteAgent)
    DeleteApplicationsRequest.add_member(:configuration_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationIdsList, location_name: "configurationIds", traits: {"smithy.api#required" => {}}))
    DeleteApplicationsRequest.type = Types::DeleteApplicationsRequest
    DeleteApplicationsResponse.type = Types::DeleteApplicationsResponse
    DeleteTagsRequest.add_member(:configuration_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationIdList, location_name: "configurationIds", traits: {"smithy.api#required" => {}}))
    DeleteTagsRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagSet, location_name: "tags"))
    DeleteTagsRequest.type = Types::DeleteTagsRequest
    DeleteTagsResponse.type = Types::DeleteTagsResponse
    DeletionConfigurationItemType.add_member(:server, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SERVER", traits: {"smithy.api#enumValue" => "SERVER"}))
    DeletionWarning.add_member(:configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationId, location_name: "configurationId"))
    DeletionWarning.add_member(:warning_code, ::Smithy::Schema::Shapes::MemberShape.new(target: WarningCode, location_name: "warningCode", traits: {"smithy.api#default" => 0}))
    DeletionWarning.add_member(:warning_text, ::Smithy::Schema::Shapes::MemberShape.new(target: WarningText, location_name: "warningText"))
    DeletionWarning.type = Types::DeletionWarning
    DeletionWarningsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionWarning)
    DescribeAgentsRequest.add_member(:agent_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentIds, location_name: "agentIds"))
    DescribeAgentsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, location_name: "filters"))
    DescribeAgentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "maxResults", traits: {"smithy.api#default" => 0}))
    DescribeAgentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeAgentsRequest.type = Types::DescribeAgentsRequest
    DescribeAgentsResponse.add_member(:agents_info, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentsInfo, location_name: "agentsInfo"))
    DescribeAgentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeAgentsResponse.type = Types::DescribeAgentsResponse
    DescribeBatchDeleteConfigurationTaskRequest.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, location_name: "taskId", traits: {"smithy.api#required" => {}}))
    DescribeBatchDeleteConfigurationTaskRequest.type = Types::DescribeBatchDeleteConfigurationTaskRequest
    DescribeBatchDeleteConfigurationTaskResponse.add_member(:task, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDeleteConfigurationTask, location_name: "task"))
    DescribeBatchDeleteConfigurationTaskResponse.type = Types::DescribeBatchDeleteConfigurationTaskResponse
    DescribeConfigurationsAttribute.key = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    DescribeConfigurationsAttribute.value = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    DescribeConfigurationsAttributes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeConfigurationsAttribute)
    DescribeConfigurationsRequest.add_member(:configuration_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationIdList, location_name: "configurationIds", traits: {"smithy.api#required" => {}}))
    DescribeConfigurationsRequest.type = Types::DescribeConfigurationsRequest
    DescribeConfigurationsResponse.add_member(:configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeConfigurationsAttributes, location_name: "configurations"))
    DescribeConfigurationsResponse.type = Types::DescribeConfigurationsResponse
    DescribeContinuousExportsRequest.add_member(:export_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuousExportIds, location_name: "exportIds"))
    DescribeContinuousExportsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeContinuousExportsMaxResults, location_name: "maxResults"))
    DescribeContinuousExportsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeContinuousExportsRequest.type = Types::DescribeContinuousExportsRequest
    DescribeContinuousExportsResponse.add_member(:descriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuousExportDescriptions, location_name: "descriptions"))
    DescribeContinuousExportsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeContinuousExportsResponse.type = Types::DescribeContinuousExportsResponse
    DescribeExportConfigurationsRequest.add_member(:export_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportIds, location_name: "exportIds"))
    DescribeExportConfigurationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "maxResults", traits: {"smithy.api#default" => 0}))
    DescribeExportConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeExportConfigurationsRequest.type = Types::DescribeExportConfigurationsRequest
    DescribeExportConfigurationsResponse.add_member(:exports_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportsInfo, location_name: "exportsInfo"))
    DescribeExportConfigurationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeExportConfigurationsResponse.type = Types::DescribeExportConfigurationsResponse
    DescribeExportTasksRequest.add_member(:export_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportIds, location_name: "exportIds"))
    DescribeExportTasksRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportFilters, location_name: "filters"))
    DescribeExportTasksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "maxResults", traits: {"smithy.api#default" => 0}))
    DescribeExportTasksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeExportTasksRequest.type = Types::DescribeExportTasksRequest
    DescribeExportTasksResponse.add_member(:exports_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportsInfo, location_name: "exportsInfo"))
    DescribeExportTasksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeExportTasksResponse.type = Types::DescribeExportTasksResponse
    DescribeImportTasksFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTaskFilter)
    DescribeImportTasksRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeImportTasksFilterList, location_name: "filters"))
    DescribeImportTasksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeImportTasksMaxResults, location_name: "maxResults"))
    DescribeImportTasksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeImportTasksRequest.type = Types::DescribeImportTasksRequest
    DescribeImportTasksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeImportTasksResponse.add_member(:tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTaskList, location_name: "tasks"))
    DescribeImportTasksResponse.type = Types::DescribeImportTasksResponse
    DescribeTagsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: TagFilters, location_name: "filters"))
    DescribeTagsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "maxResults", traits: {"smithy.api#default" => 0}))
    DescribeTagsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeTagsRequest.type = Types::DescribeTagsRequest
    DescribeTagsResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationTagSet, location_name: "tags"))
    DescribeTagsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    DescribeTagsResponse.type = Types::DescribeTagsResponse
    DisassociateConfigurationItemsFromApplicationRequest.add_member(:application_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "applicationConfigurationId", traits: {"smithy.api#required" => {}}))
    DisassociateConfigurationItemsFromApplicationRequest.add_member(:configuration_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationIdList, location_name: "configurationIds", traits: {"smithy.api#required" => {}}))
    DisassociateConfigurationItemsFromApplicationRequest.type = Types::DisassociateConfigurationItemsFromApplicationRequest
    DisassociateConfigurationItemsFromApplicationResponse.type = Types::DisassociateConfigurationItemsFromApplicationResponse
    Ec2RecommendationsExportPreferences.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportEnabled, location_name: "enabled", traits: {"smithy.api#default" => false}))
    Ec2RecommendationsExportPreferences.add_member(:cpu_performance_metric_basis, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageMetricBasis, location_name: "cpuPerformanceMetricBasis"))
    Ec2RecommendationsExportPreferences.add_member(:ram_performance_metric_basis, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageMetricBasis, location_name: "ramPerformanceMetricBasis"))
    Ec2RecommendationsExportPreferences.add_member(:tenancy, ::Smithy::Schema::Shapes::MemberShape.new(target: Tenancy, location_name: "tenancy"))
    Ec2RecommendationsExportPreferences.add_member(:excluded_instance_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludedInstanceTypes, location_name: "excludedInstanceTypes"))
    Ec2RecommendationsExportPreferences.add_member(:preferred_region, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPreferredRegion, location_name: "preferredRegion"))
    Ec2RecommendationsExportPreferences.add_member(:reserved_instance_options, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedInstanceOptions, location_name: "reservedInstanceOptions"))
    Ec2RecommendationsExportPreferences.type = Types::Ec2RecommendationsExportPreferences
    ExcludedInstanceTypes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceType)
    ExportConfigurationsResponse.add_member(:export_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationsExportId, location_name: "exportId"))
    ExportConfigurationsResponse.type = Types::ExportConfigurationsResponse
    ExportDataFormat.add_member(:csv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CSV", traits: {"smithy.api#enumValue" => "CSV"}))
    ExportDataFormats.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExportDataFormat)
    ExportFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterName, location_name: "name", traits: {"smithy.api#required" => {}}))
    ExportFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValues, location_name: "values", traits: {"smithy.api#required" => {}}))
    ExportFilter.add_member(:condition, ::Smithy::Schema::Shapes::MemberShape.new(target: Condition, location_name: "condition", traits: {"smithy.api#required" => {}}))
    ExportFilter.type = Types::ExportFilter
    ExportFilters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExportFilter)
    ExportIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationsExportId)
    ExportInfo.add_member(:export_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationsExportId, location_name: "exportId", traits: {"smithy.api#required" => {}}))
    ExportInfo.add_member(:export_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportStatus, location_name: "exportStatus", traits: {"smithy.api#required" => {}}))
    ExportInfo.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportStatusMessage, location_name: "statusMessage", traits: {"smithy.api#required" => {}}))
    ExportInfo.add_member(:configurations_download_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationsDownloadUrl, location_name: "configurationsDownloadUrl"))
    ExportInfo.add_member(:export_request_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportRequestTime, location_name: "exportRequestTime", traits: {"smithy.api#required" => {}}))
    ExportInfo.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "isTruncated", traits: {"smithy.api#default" => false}))
    ExportInfo.add_member(:requested_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, location_name: "requestedStartTime"))
    ExportInfo.add_member(:requested_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, location_name: "requestedEndTime"))
    ExportInfo.type = Types::ExportInfo
    ExportPreferences.add_member(:ec2_recommendations_preferences, Types::ExportPreferences::Ec2RecommendationsPreferences, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2RecommendationsExportPreferences, location_name: "ec2RecommendationsPreferences"))
    ExportPreferences.add_member(:unknown, Types::ExportPreferences::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ExportPreferences.type = Types::ExportPreferences
    ExportStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ExportStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    ExportStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ExportsInfo.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExportInfo)
    FailedConfiguration.add_member(:configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationId, location_name: "configurationId"))
    FailedConfiguration.add_member(:error_status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorStatusCode, location_name: "errorStatusCode", traits: {"smithy.api#default" => 0}))
    FailedConfiguration.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "errorMessage"))
    FailedConfiguration.type = Types::FailedConfiguration
    FailedConfigurationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FailedConfiguration)
    FileClassification.add_member(:modelizeit_export, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MODELIZEIT_EXPORT", traits: {"smithy.api#enumValue" => "MODELIZEIT_EXPORT"}))
    FileClassification.add_member(:rvtools_export, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RVTOOLS_EXPORT", traits: {"smithy.api#enumValue" => "RVTOOLS_EXPORT"}))
    FileClassification.add_member(:vmware_nsx_export, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VMWARE_NSX_EXPORT", traits: {"smithy.api#enumValue" => "VMWARE_NSX_EXPORT"}))
    FileClassification.add_member(:import_template, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IMPORT_TEMPLATE", traits: {"smithy.api#enumValue" => "IMPORT_TEMPLATE"}))
    Filter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "name", traits: {"smithy.api#required" => {}}))
    Filter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValues, location_name: "values", traits: {"smithy.api#required" => {}}))
    Filter.add_member(:condition, ::Smithy::Schema::Shapes::MemberShape.new(target: Condition, location_name: "condition", traits: {"smithy.api#required" => {}}))
    Filter.type = Types::Filter
    FilterValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValue, traits: {"smithy.api#xmlName" => "item"})
    Filters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Filter)
    GetDiscoverySummaryRequest.type = Types::GetDiscoverySummaryRequest
    GetDiscoverySummaryResponse.add_member(:servers, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, location_name: "servers", traits: {"smithy.api#default" => 0}))
    GetDiscoverySummaryResponse.add_member(:applications, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, location_name: "applications", traits: {"smithy.api#default" => 0}))
    GetDiscoverySummaryResponse.add_member(:servers_mapped_to_applications, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, location_name: "serversMappedToApplications", traits: {"smithy.api#default" => 0}))
    GetDiscoverySummaryResponse.add_member(:servers_mappedto_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, location_name: "serversMappedtoTags", traits: {"smithy.api#default" => 0}))
    GetDiscoverySummaryResponse.add_member(:agent_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerAgentInfo, location_name: "agentSummary"))
    GetDiscoverySummaryResponse.add_member(:connector_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerConnectorInfo, location_name: "connectorSummary"))
    GetDiscoverySummaryResponse.add_member(:me_collector_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerMeCollectorInfo, location_name: "meCollectorSummary"))
    GetDiscoverySummaryResponse.add_member(:agentless_collector_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerAgentlessCollectorInfo, location_name: "agentlessCollectorSummary"))
    GetDiscoverySummaryResponse.type = Types::GetDiscoverySummaryResponse
    HomeRegionNotSetException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "message"))
    HomeRegionNotSetException.type = Types::HomeRegionNotSetException
    ImportStatus.add_member(:import_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IMPORT_IN_PROGRESS", traits: {"smithy.api#enumValue" => "IMPORT_IN_PROGRESS"}))
    ImportStatus.add_member(:import_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IMPORT_COMPLETE", traits: {"smithy.api#enumValue" => "IMPORT_COMPLETE"}))
    ImportStatus.add_member(:import_complete_with_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IMPORT_COMPLETE_WITH_ERRORS", traits: {"smithy.api#enumValue" => "IMPORT_COMPLETE_WITH_ERRORS"}))
    ImportStatus.add_member(:import_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IMPORT_FAILED", traits: {"smithy.api#enumValue" => "IMPORT_FAILED"}))
    ImportStatus.add_member(:import_failed_server_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IMPORT_FAILED_SERVER_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "IMPORT_FAILED_SERVER_LIMIT_EXCEEDED"}))
    ImportStatus.add_member(:import_failed_record_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IMPORT_FAILED_RECORD_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "IMPORT_FAILED_RECORD_LIMIT_EXCEEDED"}))
    ImportStatus.add_member(:import_failed_unsupported_file_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IMPORT_FAILED_UNSUPPORTED_FILE_TYPE", traits: {"smithy.api#enumValue" => "IMPORT_FAILED_UNSUPPORTED_FILE_TYPE"}))
    ImportStatus.add_member(:delete_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    ImportStatus.add_member(:delete_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETE_COMPLETE", traits: {"smithy.api#enumValue" => "DELETE_COMPLETE"}))
    ImportStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETE_FAILED", traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    ImportStatus.add_member(:delete_failed_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETE_FAILED_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "DELETE_FAILED_LIMIT_EXCEEDED"}))
    ImportStatus.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    ImportTask.add_member(:import_task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTaskIdentifier, location_name: "importTaskId"))
    ImportTask.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, location_name: "clientRequestToken"))
    ImportTask.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTaskName, location_name: "name"))
    ImportTask.add_member(:import_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportURL, location_name: "importUrl"))
    ImportTask.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportStatus, location_name: "status"))
    ImportTask.add_member(:import_request_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, location_name: "importRequestTime"))
    ImportTask.add_member(:import_completion_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, location_name: "importCompletionTime"))
    ImportTask.add_member(:import_deleted_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, location_name: "importDeletedTime"))
    ImportTask.add_member(:file_classification, ::Smithy::Schema::Shapes::MemberShape.new(target: FileClassification, location_name: "fileClassification"))
    ImportTask.add_member(:server_import_success, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "serverImportSuccess", traits: {"smithy.api#default" => 0}))
    ImportTask.add_member(:server_import_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "serverImportFailure", traits: {"smithy.api#default" => 0}))
    ImportTask.add_member(:application_import_success, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "applicationImportSuccess", traits: {"smithy.api#default" => 0}))
    ImportTask.add_member(:application_import_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "applicationImportFailure", traits: {"smithy.api#default" => 0}))
    ImportTask.add_member(:errors_and_failed_entries_zip, ::Smithy::Schema::Shapes::MemberShape.new(target: S3PresignedUrl, location_name: "errorsAndFailedEntriesZip"))
    ImportTask.type = Types::ImportTask
    ImportTaskFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTaskFilterName, location_name: "name"))
    ImportTaskFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTaskFilterValueList, location_name: "values"))
    ImportTaskFilter.type = Types::ImportTaskFilter
    ImportTaskFilterName.add_member(:import_task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IMPORT_TASK_ID", traits: {"smithy.api#enumValue" => "IMPORT_TASK_ID"}))
    ImportTaskFilterName.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STATUS", traits: {"smithy.api#enumValue" => "STATUS"}))
    ImportTaskFilterName.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NAME", traits: {"smithy.api#enumValue" => "NAME"}))
    ImportTaskFilterName.add_member(:file_classification, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FILE_CLASSIFICATION", traits: {"smithy.api#enumValue" => "FILE_CLASSIFICATION"}))
    ImportTaskFilterValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTaskFilterValue)
    ImportTaskList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTask)
    InvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "message"))
    InvalidParameterException.type = Types::InvalidParameterException
    InvalidParameterValueException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "message"))
    InvalidParameterValueException.type = Types::InvalidParameterValueException
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "message"))
    LimitExceededException.type = Types::LimitExceededException
    ListConfigurationsRequest.add_member(:configuration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationItemType, location_name: "configurationType", traits: {"smithy.api#required" => {}}))
    ListConfigurationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, location_name: "filters"))
    ListConfigurationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "maxResults", traits: {"smithy.api#default" => 0}))
    ListConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListConfigurationsRequest.add_member(:order_by, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderByList, location_name: "orderBy"))
    ListConfigurationsRequest.type = Types::ListConfigurationsRequest
    ListConfigurationsResponse.add_member(:configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: Configurations, location_name: "configurations"))
    ListConfigurationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListConfigurationsResponse.type = Types::ListConfigurationsResponse
    ListServerNeighborsRequest.add_member(:configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationId, location_name: "configurationId", traits: {"smithy.api#required" => {}}))
    ListServerNeighborsRequest.add_member(:port_information_needed, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "portInformationNeeded", traits: {"smithy.api#default" => false}))
    ListServerNeighborsRequest.add_member(:neighbor_configuration_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationIdList, location_name: "neighborConfigurationIds"))
    ListServerNeighborsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "maxResults", traits: {"smithy.api#default" => 0}))
    ListServerNeighborsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "nextToken"))
    ListServerNeighborsRequest.type = Types::ListServerNeighborsRequest
    ListServerNeighborsResponse.add_member(:neighbors, ::Smithy::Schema::Shapes::MemberShape.new(target: NeighborDetailsList, location_name: "neighbors", traits: {"smithy.api#required" => {}}))
    ListServerNeighborsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "nextToken"))
    ListServerNeighborsResponse.add_member(:known_dependency_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, location_name: "knownDependencyCount", traits: {"smithy.api#default" => 0}))
    ListServerNeighborsResponse.type = Types::ListServerNeighborsResponse
    NeighborConnectionDetail.add_member(:source_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationId, location_name: "sourceServerId", traits: {"smithy.api#required" => {}}))
    NeighborConnectionDetail.add_member(:destination_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationId, location_name: "destinationServerId", traits: {"smithy.api#required" => {}}))
    NeighborConnectionDetail.add_member(:destination_port, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, location_name: "destinationPort"))
    NeighborConnectionDetail.add_member(:transport_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "transportProtocol"))
    NeighborConnectionDetail.add_member(:connections_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, location_name: "connectionsCount", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    NeighborConnectionDetail.type = Types::NeighborConnectionDetail
    NeighborDetailsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: NeighborConnectionDetail)
    OfferingClass.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    OfferingClass.add_member(:convertible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONVERTIBLE", traits: {"smithy.api#enumValue" => "CONVERTIBLE"}))
    OperationNotPermittedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "message"))
    OperationNotPermittedException.type = Types::OperationNotPermittedException
    OrderByElement.add_member(:field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderByElementFieldName, location_name: "fieldName", traits: {"smithy.api#required" => {}}))
    OrderByElement.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderString, location_name: "sortOrder"))
    OrderByElement.type = Types::OrderByElement
    OrderByList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OrderByElement)
    PurchasingOption.add_member(:all_upfront, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALL_UPFRONT", traits: {"smithy.api#enumValue" => "ALL_UPFRONT"}))
    PurchasingOption.add_member(:partial_upfront, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PARTIAL_UPFRONT", traits: {"smithy.api#enumValue" => "PARTIAL_UPFRONT"}))
    PurchasingOption.add_member(:no_upfront, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO_UPFRONT", traits: {"smithy.api#enumValue" => "NO_UPFRONT"}))
    ReservedInstanceOptions.add_member(:purchasing_option, ::Smithy::Schema::Shapes::MemberShape.new(target: PurchasingOption, location_name: "purchasingOption", traits: {"smithy.api#required" => {}}))
    ReservedInstanceOptions.add_member(:offering_class, ::Smithy::Schema::Shapes::MemberShape.new(target: OfferingClass, location_name: "offeringClass", traits: {"smithy.api#required" => {}}))
    ReservedInstanceOptions.add_member(:term_length, ::Smithy::Schema::Shapes::MemberShape.new(target: TermLength, location_name: "termLength", traits: {"smithy.api#required" => {}}))
    ReservedInstanceOptions.type = Types::ReservedInstanceOptions
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "message"))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SchemaStorageConfig.key = ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseName)
    SchemaStorageConfig.value = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    ServerInternalErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "message"))
    ServerInternalErrorException.type = Types::ServerInternalErrorException
    StartBatchDeleteConfigurationTaskRequest.add_member(:configuration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionConfigurationItemType, location_name: "configurationType", traits: {"smithy.api#required" => {}}))
    StartBatchDeleteConfigurationTaskRequest.add_member(:configuration_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationIdList, location_name: "configurationIds", traits: {"smithy.api#required" => {}}))
    StartBatchDeleteConfigurationTaskRequest.type = Types::StartBatchDeleteConfigurationTaskRequest
    StartBatchDeleteConfigurationTaskResponse.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, location_name: "taskId"))
    StartBatchDeleteConfigurationTaskResponse.type = Types::StartBatchDeleteConfigurationTaskResponse
    StartContinuousExportRequest.type = Types::StartContinuousExportRequest
    StartContinuousExportResponse.add_member(:export_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationsExportId, location_name: "exportId"))
    StartContinuousExportResponse.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Bucket, location_name: "s3Bucket"))
    StartContinuousExportResponse.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, location_name: "startTime"))
    StartContinuousExportResponse.add_member(:data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSource, location_name: "dataSource"))
    StartContinuousExportResponse.add_member(:schema_storage_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaStorageConfig, location_name: "schemaStorageConfig"))
    StartContinuousExportResponse.type = Types::StartContinuousExportResponse
    StartDataCollectionByAgentIdsRequest.add_member(:agent_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentIds, location_name: "agentIds", traits: {"smithy.api#required" => {}}))
    StartDataCollectionByAgentIdsRequest.type = Types::StartDataCollectionByAgentIdsRequest
    StartDataCollectionByAgentIdsResponse.add_member(:agents_configuration_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentConfigurationStatusList, location_name: "agentsConfigurationStatus"))
    StartDataCollectionByAgentIdsResponse.type = Types::StartDataCollectionByAgentIdsResponse
    StartExportTaskRequest.add_member(:export_data_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportDataFormats, location_name: "exportDataFormat"))
    StartExportTaskRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportFilters, location_name: "filters"))
    StartExportTaskRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, location_name: "startTime"))
    StartExportTaskRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, location_name: "endTime"))
    StartExportTaskRequest.add_member(:preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportPreferences, location_name: "preferences"))
    StartExportTaskRequest.type = Types::StartExportTaskRequest
    StartExportTaskResponse.add_member(:export_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationsExportId, location_name: "exportId"))
    StartExportTaskResponse.type = Types::StartExportTaskResponse
    StartImportTaskRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, location_name: "clientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartImportTaskRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTaskName, location_name: "name", traits: {"smithy.api#required" => {}}))
    StartImportTaskRequest.add_member(:import_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportURL, location_name: "importUrl", traits: {"smithy.api#required" => {}}))
    StartImportTaskRequest.type = Types::StartImportTaskRequest
    StartImportTaskResponse.add_member(:task, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTask, location_name: "task"))
    StartImportTaskResponse.type = Types::StartImportTaskResponse
    StopContinuousExportRequest.add_member(:export_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationsExportId, location_name: "exportId", traits: {"smithy.api#required" => {}}))
    StopContinuousExportRequest.type = Types::StopContinuousExportRequest
    StopContinuousExportResponse.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, location_name: "startTime"))
    StopContinuousExportResponse.add_member(:stop_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, location_name: "stopTime"))
    StopContinuousExportResponse.type = Types::StopContinuousExportResponse
    StopDataCollectionByAgentIdsRequest.add_member(:agent_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentIds, location_name: "agentIds", traits: {"smithy.api#required" => {}}))
    StopDataCollectionByAgentIdsRequest.type = Types::StopDataCollectionByAgentIdsRequest
    StopDataCollectionByAgentIdsResponse.add_member(:agents_configuration_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentConfigurationStatusList, location_name: "agentsConfigurationStatus"))
    StopDataCollectionByAgentIdsResponse.type = Types::StopDataCollectionByAgentIdsResponse
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, location_name: "key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, location_name: "value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterName, location_name: "name", traits: {"smithy.api#required" => {}}))
    TagFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValues, location_name: "values", traits: {"smithy.api#required" => {}}))
    TagFilter.type = Types::TagFilter
    TagFilters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagFilter)
    TagSet.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, traits: {"smithy.api#xmlName" => "item"})
    Tenancy.add_member(:dedicated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEDICATED", traits: {"smithy.api#enumValue" => "DEDICATED"}))
    Tenancy.add_member(:shared, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SHARED", traits: {"smithy.api#enumValue" => "SHARED"}))
    TermLength.add_member(:one_year, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ONE_YEAR", traits: {"smithy.api#enumValue" => "ONE_YEAR"}))
    TermLength.add_member(:three_year, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "THREE_YEAR", traits: {"smithy.api#enumValue" => "THREE_YEAR"}))
    ToDeleteIdentifierList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTaskIdentifier)
    UpdateApplicationRequest.add_member(:configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, location_name: "configurationId", traits: {"smithy.api#required" => {}}))
    UpdateApplicationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, location_name: "name"))
    UpdateApplicationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationDescription, location_name: "description"))
    UpdateApplicationRequest.add_member(:wave, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationWave, location_name: "wave"))
    UpdateApplicationRequest.type = Types::UpdateApplicationRequest
    UpdateApplicationResponse.type = Types::UpdateApplicationResponse
    UsageMetricBasis.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageMetricBasisName, location_name: "name"))
    UsageMetricBasis.add_member(:percentage_adjust, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageMetricPercentageAdjust, location_name: "percentageAdjust"))
    UsageMetricBasis.type = Types::UsageMetricBasis
    OrderString.add_member(:asc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ASC", traits: {"smithy.api#enumValue" => "ASC"}))
    OrderString.add_member(:desc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DESC", traits: {"smithy.api#enumValue" => "DESC"}))

    AWSPoseidonServiceV20151101 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.applicationdiscoveryservice#AWSPoseidonService_V2015_11_01"
      service.name = "AWSPoseidonServiceV20151101"
      service.version = "2015-11-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Application Discovery Service", "arnNamespace" => "discovery", "cloudFormationName" => "ApplicationDiscoveryService", "cloudTrailEventSource" => "applicationdiscoveryservice.amazonaws.com", "docId" => "discovery-2015-11-01", "endpointPrefix" => "discovery"}, "aws.auth#sigv4" => {"name" => "discovery"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Application Discovery Service", "smithy.api#xmlNamespace" => {"uri" => "http://ec2.amazon.com/awsposiedon/V2015_11_01/"}}
      service.add_operation(:associate_configuration_items_to_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#AssociateConfigurationItemsToApplication"
        operation.name = "AssociateConfigurationItemsToApplication"
        operation.input = AssociateConfigurationItemsToApplicationRequest
        operation.output = AssociateConfigurationItemsToApplicationResponse
        operation.errors << AuthorizationErrorException
        operation.errors << HomeRegionNotSetException
        operation.errors << InvalidParameterException
        operation.errors << InvalidParameterValueException
        operation.errors << ServerInternalErrorException
        operation.traits = {}
      end)
      service.add_operation(:batch_delete_agents, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#BatchDeleteAgents"
        operation.name = "BatchDeleteAgents"
        operation.input = BatchDeleteAgentsRequest
        operation.output = BatchDeleteAgentsResponse
        operation.errors << AuthorizationErrorException
        operation.errors << InvalidParameterException
        operation.errors << InvalidParameterValueException
        operation.errors << ServerInternalErrorException
        operation.traits = {}
      end)
      service.add_operation(:batch_delete_import_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#BatchDeleteImportData"
        operation.name = "BatchDeleteImportData"
        operation.input = BatchDeleteImportDataRequest
        operation.output = BatchDeleteImportDataResponse
        operation.errors << AuthorizationErrorException
        operation.errors << HomeRegionNotSetException
        operation.errors << InvalidParameterException
        operation.errors << InvalidParameterValueException
        operation.errors << ServerInternalErrorException
        operation.traits = {}
      end)
      service.add_operation(:create_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#CreateApplication"
        operation.name = "CreateApplication"
        operation.input = CreateApplicationRequest
        operation.output = CreateApplicationResponse
        operation.errors << AuthorizationErrorException
        operation.errors << HomeRegionNotSetException
        operation.errors << InvalidParameterException
        operation.errors << InvalidParameterValueException
        operation.errors << ServerInternalErrorException
        operation.traits = {}
      end)
      service.add_operation(:create_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#CreateTags"
        operation.name = "CreateTags"
        operation.input = CreateTagsRequest
        operation.output = CreateTagsResponse
        operation.errors << AuthorizationErrorException
        operation.errors << HomeRegionNotSetException
        operation.errors << InvalidParameterException
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerInternalErrorException
        operation.traits = {}
      end)
      service.add_operation(:delete_applications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#DeleteApplications"
        operation.name = "DeleteApplications"
        operation.input = DeleteApplicationsRequest
        operation.output = DeleteApplicationsResponse
        operation.errors << AuthorizationErrorException
        operation.errors << HomeRegionNotSetException
        operation.errors << InvalidParameterException
        operation.errors << InvalidParameterValueException
        operation.errors << ServerInternalErrorException
        operation.traits = {}
      end)
      service.add_operation(:delete_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#DeleteTags"
        operation.name = "DeleteTags"
        operation.input = DeleteTagsRequest
        operation.output = DeleteTagsResponse
        operation.errors << AuthorizationErrorException
        operation.errors << HomeRegionNotSetException
        operation.errors << InvalidParameterException
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerInternalErrorException
        operation.traits = {}
      end)
      service.add_operation(:describe_agents, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#DescribeAgents"
        operation.name = "DescribeAgents"
        operation.input = DescribeAgentsRequest
        operation.output = DescribeAgentsResponse
        operation.errors << AuthorizationErrorException
        operation.errors << HomeRegionNotSetException
        operation.errors << InvalidParameterException
        operation.errors << InvalidParameterValueException
        operation.errors << ServerInternalErrorException
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "DescribeAgentsSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::DescribeAgents.new
      end)
      service.add_operation(:describe_batch_delete_configuration_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#DescribeBatchDeleteConfigurationTask"
        operation.name = "DescribeBatchDeleteConfigurationTask"
        operation.input = DescribeBatchDeleteConfigurationTaskRequest
        operation.output = DescribeBatchDeleteConfigurationTaskResponse
        operation.errors << AuthorizationErrorException
        operation.errors << HomeRegionNotSetException
        operation.errors << InvalidParameterValueException
        operation.errors << ServerInternalErrorException
        operation.traits = {}
      end)
      service.add_operation(:describe_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#DescribeConfigurations"
        operation.name = "DescribeConfigurations"
        operation.input = DescribeConfigurationsRequest
        operation.output = DescribeConfigurationsResponse
        operation.errors << AuthorizationErrorException
        operation.errors << HomeRegionNotSetException
        operation.errors << InvalidParameterException
        operation.errors << InvalidParameterValueException
        operation.errors << ServerInternalErrorException
        operation.traits = {}
      end)
      service.add_operation(:describe_continuous_exports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#DescribeContinuousExports"
        operation.name = "DescribeContinuousExports"
        operation.input = DescribeContinuousExportsRequest
        operation.output = DescribeContinuousExportsResponse
        operation.errors << AuthorizationErrorException
        operation.errors << HomeRegionNotSetException
        operation.errors << InvalidParameterException
        operation.errors << InvalidParameterValueException
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerInternalErrorException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeContinuousExports.new
      end)
      service.add_operation(:describe_export_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#DescribeExportConfigurations"
        operation.name = "DescribeExportConfigurations"
        operation.input = DescribeExportConfigurationsRequest
        operation.output = DescribeExportConfigurationsResponse
        operation.errors << AuthorizationErrorException
        operation.errors << HomeRegionNotSetException
        operation.errors << InvalidParameterException
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerInternalErrorException
        operation.traits = {"smithy.api#deprecated" => {}}
        operation[:paginator] = Paginators::DescribeExportConfigurations.new
      end)
      service.add_operation(:describe_export_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#DescribeExportTasks"
        operation.name = "DescribeExportTasks"
        operation.input = DescribeExportTasksRequest
        operation.output = DescribeExportTasksResponse
        operation.errors << AuthorizationErrorException
        operation.errors << HomeRegionNotSetException
        operation.errors << InvalidParameterException
        operation.errors << InvalidParameterValueException
        operation.errors << ServerInternalErrorException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeExportTasks.new
      end)
      service.add_operation(:describe_import_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#DescribeImportTasks"
        operation.name = "DescribeImportTasks"
        operation.input = DescribeImportTasksRequest
        operation.output = DescribeImportTasksResponse
        operation.errors << AuthorizationErrorException
        operation.errors << HomeRegionNotSetException
        operation.errors << InvalidParameterException
        operation.errors << InvalidParameterValueException
        operation.errors << ServerInternalErrorException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeImportTasks.new
      end)
      service.add_operation(:describe_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#DescribeTags"
        operation.name = "DescribeTags"
        operation.input = DescribeTagsRequest
        operation.output = DescribeTagsResponse
        operation.errors << AuthorizationErrorException
        operation.errors << HomeRegionNotSetException
        operation.errors << InvalidParameterException
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerInternalErrorException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeTags.new
      end)
      service.add_operation(:disassociate_configuration_items_from_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#DisassociateConfigurationItemsFromApplication"
        operation.name = "DisassociateConfigurationItemsFromApplication"
        operation.input = DisassociateConfigurationItemsFromApplicationRequest
        operation.output = DisassociateConfigurationItemsFromApplicationResponse
        operation.errors << AuthorizationErrorException
        operation.errors << HomeRegionNotSetException
        operation.errors << InvalidParameterException
        operation.errors << InvalidParameterValueException
        operation.errors << ServerInternalErrorException
        operation.traits = {}
      end)
      service.add_operation(:export_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#ExportConfigurations"
        operation.name = "ExportConfigurations"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = ExportConfigurationsResponse
        operation.errors << AuthorizationErrorException
        operation.errors << HomeRegionNotSetException
        operation.errors << InvalidParameterException
        operation.errors << InvalidParameterValueException
        operation.errors << OperationNotPermittedException
        operation.errors << ServerInternalErrorException
        operation.traits = {"smithy.api#deprecated" => {}}
      end)
      service.add_operation(:get_discovery_summary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#GetDiscoverySummary"
        operation.name = "GetDiscoverySummary"
        operation.input = GetDiscoverySummaryRequest
        operation.output = GetDiscoverySummaryResponse
        operation.errors << AuthorizationErrorException
        operation.errors << HomeRegionNotSetException
        operation.errors << InvalidParameterException
        operation.errors << InvalidParameterValueException
        operation.errors << ServerInternalErrorException
        operation.traits = {}
      end)
      service.add_operation(:list_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#ListConfigurations"
        operation.name = "ListConfigurations"
        operation.input = ListConfigurationsRequest
        operation.output = ListConfigurationsResponse
        operation.errors << AuthorizationErrorException
        operation.errors << HomeRegionNotSetException
        operation.errors << InvalidParameterException
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerInternalErrorException
        operation.traits = {}
        operation[:paginator] = Paginators::ListConfigurations.new
      end)
      service.add_operation(:list_server_neighbors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#ListServerNeighbors"
        operation.name = "ListServerNeighbors"
        operation.input = ListServerNeighborsRequest
        operation.output = ListServerNeighborsResponse
        operation.errors << AuthorizationErrorException
        operation.errors << HomeRegionNotSetException
        operation.errors << InvalidParameterException
        operation.errors << InvalidParameterValueException
        operation.errors << ServerInternalErrorException
        operation.traits = {}
      end)
      service.add_operation(:start_batch_delete_configuration_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#StartBatchDeleteConfigurationTask"
        operation.name = "StartBatchDeleteConfigurationTask"
        operation.input = StartBatchDeleteConfigurationTaskRequest
        operation.output = StartBatchDeleteConfigurationTaskResponse
        operation.errors << AuthorizationErrorException
        operation.errors << HomeRegionNotSetException
        operation.errors << InvalidParameterException
        operation.errors << InvalidParameterValueException
        operation.errors << LimitExceededException
        operation.errors << OperationNotPermittedException
        operation.errors << ServerInternalErrorException
        operation.traits = {}
      end)
      service.add_operation(:start_continuous_export, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#StartContinuousExport"
        operation.name = "StartContinuousExport"
        operation.input = StartContinuousExportRequest
        operation.output = StartContinuousExportResponse
        operation.errors << AuthorizationErrorException
        operation.errors << ConflictErrorException
        operation.errors << HomeRegionNotSetException
        operation.errors << InvalidParameterException
        operation.errors << InvalidParameterValueException
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceInUseException
        operation.errors << ServerInternalErrorException
        operation.traits = {}
      end)
      service.add_operation(:start_data_collection_by_agent_ids, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#StartDataCollectionByAgentIds"
        operation.name = "StartDataCollectionByAgentIds"
        operation.input = StartDataCollectionByAgentIdsRequest
        operation.output = StartDataCollectionByAgentIdsResponse
        operation.errors << AuthorizationErrorException
        operation.errors << HomeRegionNotSetException
        operation.errors << InvalidParameterException
        operation.errors << InvalidParameterValueException
        operation.errors << ServerInternalErrorException
        operation.traits = {}
      end)
      service.add_operation(:start_export_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#StartExportTask"
        operation.name = "StartExportTask"
        operation.input = StartExportTaskRequest
        operation.output = StartExportTaskResponse
        operation.errors << AuthorizationErrorException
        operation.errors << HomeRegionNotSetException
        operation.errors << InvalidParameterException
        operation.errors << InvalidParameterValueException
        operation.errors << OperationNotPermittedException
        operation.errors << ServerInternalErrorException
        operation.traits = {}
      end)
      service.add_operation(:start_import_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#StartImportTask"
        operation.name = "StartImportTask"
        operation.input = StartImportTaskRequest
        operation.output = StartImportTaskResponse
        operation.errors << AuthorizationErrorException
        operation.errors << HomeRegionNotSetException
        operation.errors << InvalidParameterException
        operation.errors << InvalidParameterValueException
        operation.errors << ResourceInUseException
        operation.errors << ServerInternalErrorException
        operation.traits = {}
      end)
      service.add_operation(:stop_continuous_export, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#StopContinuousExport"
        operation.name = "StopContinuousExport"
        operation.input = StopContinuousExportRequest
        operation.output = StopContinuousExportResponse
        operation.errors << AuthorizationErrorException
        operation.errors << HomeRegionNotSetException
        operation.errors << InvalidParameterException
        operation.errors << InvalidParameterValueException
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerInternalErrorException
        operation.traits = {}
      end)
      service.add_operation(:stop_data_collection_by_agent_ids, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#StopDataCollectionByAgentIds"
        operation.name = "StopDataCollectionByAgentIds"
        operation.input = StopDataCollectionByAgentIdsRequest
        operation.output = StopDataCollectionByAgentIdsResponse
        operation.errors << AuthorizationErrorException
        operation.errors << HomeRegionNotSetException
        operation.errors << InvalidParameterException
        operation.errors << InvalidParameterValueException
        operation.errors << ServerInternalErrorException
        operation.traits = {}
      end)
      service.add_operation(:update_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#UpdateApplication"
        operation.name = "UpdateApplication"
        operation.input = UpdateApplicationRequest
        operation.output = UpdateApplicationResponse
        operation.errors << AuthorizationErrorException
        operation.errors << HomeRegionNotSetException
        operation.errors << InvalidParameterException
        operation.errors << InvalidParameterValueException
        operation.errors << ServerInternalErrorException
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
