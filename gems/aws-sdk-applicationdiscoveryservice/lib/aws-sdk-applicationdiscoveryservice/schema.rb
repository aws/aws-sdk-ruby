# frozen_string_literal: true

# This is generated code!

module Aws::ApplicationDiscoveryService
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AgentConfigurationStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#AgentConfigurationStatus', name: 'AgentConfigurationStatus')
    AgentConfigurationStatusList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationdiscoveryservice#AgentConfigurationStatusList', name: 'AgentConfigurationStatusList')
    AgentId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationdiscoveryservice#AgentId', name: 'AgentId', traits: {"smithy.api#length" => {"min" => 10, "max" => 20}, "smithy.api#pattern" => "^\\S+$"})
    AgentIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationdiscoveryservice#AgentIds', name: 'AgentIds')
    AgentInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#AgentInfo', name: 'AgentInfo')
    AgentNetworkInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#AgentNetworkInfo', name: 'AgentNetworkInfo', traits: {"smithy.api#sensitive" => {}})
    AgentNetworkInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationdiscoveryservice#AgentNetworkInfoList', name: 'AgentNetworkInfoList')
    AgentStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationdiscoveryservice#AgentStatus', name: 'AgentStatus')
    AgentsInfo = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationdiscoveryservice#AgentsInfo', name: 'AgentsInfo')
    ApplicationDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ApplicationDescription', name: 'ApplicationDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^(^$|[\\s\\S]*\\S[\\s\\S]*)$"})
    ApplicationId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ApplicationId', name: 'ApplicationId', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#pattern" => "^\\S+$"})
    ApplicationIdsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ApplicationIdsList', name: 'ApplicationIdsList')
    ApplicationName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ApplicationName', name: 'ApplicationName', traits: {"smithy.api#length" => {"min" => 0, "max" => 127}, "smithy.api#pattern" => "^[\\s\\S]*\\S[\\s\\S]*$"})
    ApplicationWave = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ApplicationWave', name: 'ApplicationWave', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^($|[^\\s\\x00]( *[^\\s\\x00])*$)$"})
    AssociateConfigurationItemsToApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#AssociateConfigurationItemsToApplicationRequest', name: 'AssociateConfigurationItemsToApplicationRequest')
    AssociateConfigurationItemsToApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#AssociateConfigurationItemsToApplicationResponse', name: 'AssociateConfigurationItemsToApplicationResponse')
    AuthorizationErrorException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#AuthorizationErrorException', name: 'AuthorizationErrorException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    BatchDeleteAgentError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#BatchDeleteAgentError', name: 'BatchDeleteAgentError')
    BatchDeleteAgentErrors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationdiscoveryservice#BatchDeleteAgentErrors', name: 'BatchDeleteAgentErrors')
    BatchDeleteAgentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#BatchDeleteAgentsRequest', name: 'BatchDeleteAgentsRequest')
    BatchDeleteAgentsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#BatchDeleteAgentsResponse', name: 'BatchDeleteAgentsResponse')
    BatchDeleteConfigurationTask = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#BatchDeleteConfigurationTask', name: 'BatchDeleteConfigurationTask')
    BatchDeleteConfigurationTaskStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationdiscoveryservice#BatchDeleteConfigurationTaskStatus', name: 'BatchDeleteConfigurationTaskStatus')
    BatchDeleteImportDataError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#BatchDeleteImportDataError', name: 'BatchDeleteImportDataError')
    BatchDeleteImportDataErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationdiscoveryservice#BatchDeleteImportDataErrorCode', name: 'BatchDeleteImportDataErrorCode')
    BatchDeleteImportDataErrorDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationdiscoveryservice#BatchDeleteImportDataErrorDescription', name: 'BatchDeleteImportDataErrorDescription')
    BatchDeleteImportDataErrorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationdiscoveryservice#BatchDeleteImportDataErrorList', name: 'BatchDeleteImportDataErrorList')
    BatchDeleteImportDataRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#BatchDeleteImportDataRequest', name: 'BatchDeleteImportDataRequest')
    BatchDeleteImportDataResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#BatchDeleteImportDataResponse', name: 'BatchDeleteImportDataResponse')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.applicationdiscoveryservice#Boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    BoxedInteger = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.applicationdiscoveryservice#BoxedInteger', name: 'BoxedInteger')
    ClientRequestToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ClientRequestToken', name: 'ClientRequestToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    Condition = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationdiscoveryservice#Condition', name: 'Condition', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#pattern" => "^\\S+$"})
    Configuration = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.applicationdiscoveryservice#Configuration', name: 'Configuration')
    ConfigurationId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ConfigurationId', name: 'ConfigurationId', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#pattern" => "^\\S*$"})
    ConfigurationIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ConfigurationIdList', name: 'ConfigurationIdList')
    ConfigurationItemType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ConfigurationItemType', name: 'ConfigurationItemType')
    ConfigurationTag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ConfigurationTag', name: 'ConfigurationTag')
    ConfigurationTagSet = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ConfigurationTagSet', name: 'ConfigurationTagSet')
    Configurations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationdiscoveryservice#Configurations', name: 'Configurations')
    ConfigurationsDownloadUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ConfigurationsDownloadUrl', name: 'ConfigurationsDownloadUrl')
    ConfigurationsExportId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ConfigurationsExportId', name: 'ConfigurationsExportId', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#pattern" => "^\\S*$"})
    ConflictErrorException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ConflictErrorException', name: 'ConflictErrorException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContinuousExportDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ContinuousExportDescription', name: 'ContinuousExportDescription')
    ContinuousExportDescriptions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ContinuousExportDescriptions', name: 'ContinuousExportDescriptions')
    ContinuousExportIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ContinuousExportIds', name: 'ContinuousExportIds')
    ContinuousExportStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ContinuousExportStatus', name: 'ContinuousExportStatus')
    CreateApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#CreateApplicationRequest', name: 'CreateApplicationRequest')
    CreateApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#CreateApplicationResponse', name: 'CreateApplicationResponse')
    CreateTagsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#CreateTagsRequest', name: 'CreateTagsRequest')
    CreateTagsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#CreateTagsResponse', name: 'CreateTagsResponse')
    CustomerAgentInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#CustomerAgentInfo', name: 'CustomerAgentInfo')
    CustomerAgentlessCollectorInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#CustomerAgentlessCollectorInfo', name: 'CustomerAgentlessCollectorInfo')
    CustomerConnectorInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#CustomerConnectorInfo', name: 'CustomerConnectorInfo')
    CustomerMeCollectorInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#CustomerMeCollectorInfo', name: 'CustomerMeCollectorInfo')
    DataSource = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationdiscoveryservice#DataSource', name: 'DataSource')
    DatabaseName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationdiscoveryservice#DatabaseName', name: 'DatabaseName', traits: {"smithy.api#length" => {"min" => 1, "max" => 252}})
    DeleteAgent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#DeleteAgent', name: 'DeleteAgent')
    DeleteAgentErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationdiscoveryservice#DeleteAgentErrorCode', name: 'DeleteAgentErrorCode')
    DeleteAgents = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationdiscoveryservice#DeleteAgents', name: 'DeleteAgents', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    DeleteApplicationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#DeleteApplicationsRequest', name: 'DeleteApplicationsRequest')
    DeleteApplicationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#DeleteApplicationsResponse', name: 'DeleteApplicationsResponse')
    DeleteTagsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#DeleteTagsRequest', name: 'DeleteTagsRequest')
    DeleteTagsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#DeleteTagsResponse', name: 'DeleteTagsResponse')
    DeletionConfigurationItemType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationdiscoveryservice#DeletionConfigurationItemType', name: 'DeletionConfigurationItemType')
    DeletionWarning = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#DeletionWarning', name: 'DeletionWarning')
    DeletionWarningsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationdiscoveryservice#DeletionWarningsList', name: 'DeletionWarningsList')
    DescribeAgentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#DescribeAgentsRequest', name: 'DescribeAgentsRequest')
    DescribeAgentsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#DescribeAgentsResponse', name: 'DescribeAgentsResponse')
    DescribeBatchDeleteConfigurationTaskRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#DescribeBatchDeleteConfigurationTaskRequest', name: 'DescribeBatchDeleteConfigurationTaskRequest')
    DescribeBatchDeleteConfigurationTaskResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#DescribeBatchDeleteConfigurationTaskResponse', name: 'DescribeBatchDeleteConfigurationTaskResponse')
    DescribeConfigurationsAttribute = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.applicationdiscoveryservice#DescribeConfigurationsAttribute', name: 'DescribeConfigurationsAttribute')
    DescribeConfigurationsAttributes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationdiscoveryservice#DescribeConfigurationsAttributes', name: 'DescribeConfigurationsAttributes')
    DescribeConfigurationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#DescribeConfigurationsRequest', name: 'DescribeConfigurationsRequest')
    DescribeConfigurationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#DescribeConfigurationsResponse', name: 'DescribeConfigurationsResponse')
    DescribeContinuousExportsMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.applicationdiscoveryservice#DescribeContinuousExportsMaxResults', name: 'DescribeContinuousExportsMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    DescribeContinuousExportsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#DescribeContinuousExportsRequest', name: 'DescribeContinuousExportsRequest')
    DescribeContinuousExportsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#DescribeContinuousExportsResponse', name: 'DescribeContinuousExportsResponse')
    DescribeExportConfigurationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#DescribeExportConfigurationsRequest', name: 'DescribeExportConfigurationsRequest')
    DescribeExportConfigurationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#DescribeExportConfigurationsResponse', name: 'DescribeExportConfigurationsResponse')
    DescribeExportTasksRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#DescribeExportTasksRequest', name: 'DescribeExportTasksRequest')
    DescribeExportTasksResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#DescribeExportTasksResponse', name: 'DescribeExportTasksResponse')
    DescribeImportTasksFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationdiscoveryservice#DescribeImportTasksFilterList', name: 'DescribeImportTasksFilterList')
    DescribeImportTasksMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.applicationdiscoveryservice#DescribeImportTasksMaxResults', name: 'DescribeImportTasksMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    DescribeImportTasksRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#DescribeImportTasksRequest', name: 'DescribeImportTasksRequest')
    DescribeImportTasksResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#DescribeImportTasksResponse', name: 'DescribeImportTasksResponse')
    DescribeTagsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#DescribeTagsRequest', name: 'DescribeTagsRequest')
    DescribeTagsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#DescribeTagsResponse', name: 'DescribeTagsResponse')
    DisassociateConfigurationItemsFromApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#DisassociateConfigurationItemsFromApplicationRequest', name: 'DisassociateConfigurationItemsFromApplicationRequest')
    DisassociateConfigurationItemsFromApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#DisassociateConfigurationItemsFromApplicationResponse', name: 'DisassociateConfigurationItemsFromApplicationResponse')
    EC2InstanceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationdiscoveryservice#EC2InstanceType', name: 'EC2InstanceType', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}, "smithy.api#pattern" => "^[a-zA-Z0-9\\d\\.\\-]+$"})
    Ec2RecommendationsExportPreferences = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#Ec2RecommendationsExportPreferences', name: 'Ec2RecommendationsExportPreferences')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ErrorMessage', name: 'ErrorMessage')
    ErrorStatusCode = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ErrorStatusCode', name: 'ErrorStatusCode', traits: {"smithy.api#default" => 0})
    ExcludedInstanceTypes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ExcludedInstanceTypes', name: 'ExcludedInstanceTypes')
    ExportConfigurationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ExportConfigurationsResponse', name: 'ExportConfigurationsResponse')
    ExportDataFormat = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ExportDataFormat', name: 'ExportDataFormat')
    ExportDataFormats = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ExportDataFormats', name: 'ExportDataFormats')
    ExportEnabled = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ExportEnabled', name: 'ExportEnabled', traits: {"smithy.api#default" => false})
    ExportFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ExportFilter', name: 'ExportFilter')
    ExportFilters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ExportFilters', name: 'ExportFilters')
    ExportIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ExportIds', name: 'ExportIds')
    ExportInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ExportInfo', name: 'ExportInfo')
    ExportPreferences = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ExportPreferences', name: 'ExportPreferences')
    ExportRequestTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ExportRequestTime', name: 'ExportRequestTime')
    ExportStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ExportStatus', name: 'ExportStatus')
    ExportStatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ExportStatusMessage', name: 'ExportStatusMessage')
    ExportsInfo = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ExportsInfo', name: 'ExportsInfo')
    FailedConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#FailedConfiguration', name: 'FailedConfiguration')
    FailedConfigurationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationdiscoveryservice#FailedConfigurationList', name: 'FailedConfigurationList')
    FileClassification = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationdiscoveryservice#FileClassification', name: 'FileClassification')
    Filter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#Filter', name: 'Filter')
    FilterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationdiscoveryservice#FilterName', name: 'FilterName', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^[\\s\\S]*\\S[\\s\\S]*$"})
    FilterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationdiscoveryservice#FilterValue', name: 'FilterValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^(^$|[\\s\\S]*\\S[\\s\\S]*)$"})
    FilterValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationdiscoveryservice#FilterValues', name: 'FilterValues')
    Filters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationdiscoveryservice#Filters', name: 'Filters')
    GetDiscoverySummaryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#GetDiscoverySummaryRequest', name: 'GetDiscoverySummaryRequest')
    GetDiscoverySummaryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#GetDiscoverySummaryResponse', name: 'GetDiscoverySummaryResponse')
    HomeRegionNotSetException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#HomeRegionNotSetException', name: 'HomeRegionNotSetException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ImportStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ImportStatus', name: 'ImportStatus')
    ImportTask = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ImportTask', name: 'ImportTask')
    ImportTaskFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ImportTaskFilter', name: 'ImportTaskFilter')
    ImportTaskFilterName = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ImportTaskFilterName', name: 'ImportTaskFilterName')
    ImportTaskFilterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ImportTaskFilterValue', name: 'ImportTaskFilterValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    ImportTaskFilterValueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ImportTaskFilterValueList', name: 'ImportTaskFilterValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ImportTaskIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ImportTaskIdentifier', name: 'ImportTaskIdentifier', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#pattern" => "^import-task-[a-fA-F0-9]{32}$"})
    ImportTaskList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ImportTaskList', name: 'ImportTaskList')
    ImportTaskName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ImportTaskName', name: 'ImportTaskName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\s\\S]*\\S[\\s\\S]*$"})
    ImportURL = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ImportURL', name: 'ImportURL', traits: {"smithy.api#length" => {"min" => 1, "max" => 4000}, "smithy.api#pattern" => "^\\S+://\\S+/[\\s\\S]*\\S[\\s\\S]*$"})
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.applicationdiscoveryservice#Integer', name: 'Integer', traits: {"smithy.api#default" => 0})
    InvalidParameterException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#InvalidParameterException', name: 'InvalidParameterException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterValueException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#InvalidParameterValueException', name: 'InvalidParameterValueException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListConfigurationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ListConfigurationsRequest', name: 'ListConfigurationsRequest')
    ListConfigurationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ListConfigurationsResponse', name: 'ListConfigurationsResponse')
    ListServerNeighborsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ListServerNeighborsRequest', name: 'ListServerNeighborsRequest')
    ListServerNeighborsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ListServerNeighborsResponse', name: 'ListServerNeighborsResponse')
    Long = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.applicationdiscoveryservice#Long', name: 'Long', traits: {"smithy.api#default" => 0})
    Message = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationdiscoveryservice#Message', name: 'Message')
    NeighborConnectionDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#NeighborConnectionDetail', name: 'NeighborConnectionDetail')
    NeighborDetailsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationdiscoveryservice#NeighborDetailsList', name: 'NeighborDetailsList')
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationdiscoveryservice#NextToken', name: 'NextToken')
    OfferingClass = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationdiscoveryservice#OfferingClass', name: 'OfferingClass')
    OperationNotPermittedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#OperationNotPermittedException', name: 'OperationNotPermittedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    OrderByElement = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#OrderByElement', name: 'OrderByElement')
    OrderByElementFieldName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationdiscoveryservice#OrderByElementFieldName', name: 'OrderByElementFieldName', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^[\\s\\S]*\\S[\\s\\S]*$"})
    OrderByList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationdiscoveryservice#OrderByList', name: 'OrderByList')
    PurchasingOption = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationdiscoveryservice#PurchasingOption', name: 'PurchasingOption')
    ReservedInstanceOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ReservedInstanceOptions', name: 'ReservedInstanceOptions')
    ResourceInUseException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ResourceInUseException', name: 'ResourceInUseException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    S3Bucket = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationdiscoveryservice#S3Bucket', name: 'S3Bucket')
    S3PresignedUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationdiscoveryservice#S3PresignedUrl', name: 'S3PresignedUrl')
    SchemaStorageConfig = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.applicationdiscoveryservice#SchemaStorageConfig', name: 'SchemaStorageConfig')
    ServerInternalErrorException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ServerInternalErrorException', name: 'ServerInternalErrorException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    StartBatchDeleteConfigurationTaskRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#StartBatchDeleteConfigurationTaskRequest', name: 'StartBatchDeleteConfigurationTaskRequest')
    StartBatchDeleteConfigurationTaskResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#StartBatchDeleteConfigurationTaskResponse', name: 'StartBatchDeleteConfigurationTaskResponse')
    StartContinuousExportRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#StartContinuousExportRequest', name: 'StartContinuousExportRequest')
    StartContinuousExportResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#StartContinuousExportResponse', name: 'StartContinuousExportResponse')
    StartDataCollectionByAgentIdsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#StartDataCollectionByAgentIdsRequest', name: 'StartDataCollectionByAgentIdsRequest')
    StartDataCollectionByAgentIdsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#StartDataCollectionByAgentIdsResponse', name: 'StartDataCollectionByAgentIdsResponse')
    StartExportTaskRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#StartExportTaskRequest', name: 'StartExportTaskRequest')
    StartExportTaskResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#StartExportTaskResponse', name: 'StartExportTaskResponse')
    StartImportTaskRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#StartImportTaskRequest', name: 'StartImportTaskRequest')
    StartImportTaskResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#StartImportTaskResponse', name: 'StartImportTaskResponse')
    StopContinuousExportRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#StopContinuousExportRequest', name: 'StopContinuousExportRequest')
    StopContinuousExportResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#StopContinuousExportResponse', name: 'StopContinuousExportResponse')
    StopDataCollectionByAgentIdsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#StopDataCollectionByAgentIdsRequest', name: 'StopDataCollectionByAgentIdsRequest')
    StopDataCollectionByAgentIdsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#StopDataCollectionByAgentIdsResponse', name: 'StopDataCollectionByAgentIdsResponse')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationdiscoveryservice#String', name: 'String', traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    StringMax255 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationdiscoveryservice#StringMax255', name: 'StringMax255', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\s\\S]*\\S[\\s\\S]*$"})
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#Tag', name: 'Tag')
    TagFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#TagFilter', name: 'TagFilter')
    TagFilters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationdiscoveryservice#TagFilters', name: 'TagFilters')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationdiscoveryservice#TagKey', name: 'TagKey')
    TagSet = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationdiscoveryservice#TagSet', name: 'TagSet')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationdiscoveryservice#TagValue', name: 'TagValue')
    Tenancy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationdiscoveryservice#Tenancy', name: 'Tenancy')
    TermLength = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationdiscoveryservice#TermLength', name: 'TermLength')
    TimeStamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.applicationdiscoveryservice#TimeStamp', name: 'TimeStamp')
    ToDeleteIdentifierList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.applicationdiscoveryservice#ToDeleteIdentifierList', name: 'ToDeleteIdentifierList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    UUID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationdiscoveryservice#UUID', name: 'UUID', traits: {"smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    UpdateApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#UpdateApplicationRequest', name: 'UpdateApplicationRequest')
    UpdateApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#UpdateApplicationResponse', name: 'UpdateApplicationResponse')
    UsageMetricBasis = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.applicationdiscoveryservice#UsageMetricBasis', name: 'UsageMetricBasis')
    UsageMetricBasisName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationdiscoveryservice#UsageMetricBasisName', name: 'UsageMetricBasisName', traits: {"smithy.api#pattern" => "^(p(\\d{1,2}|100)|AVG|SPEC|MAX)$"})
    UsageMetricPercentageAdjust = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.applicationdiscoveryservice#UsageMetricPercentageAdjust', name: 'UsageMetricPercentageAdjust', traits: {"smithy.api#range" => {"min" => 0.0, "max" => 100.0}})
    UserPreferredRegion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationdiscoveryservice#UserPreferredRegion', name: 'UserPreferredRegion', traits: {"smithy.api#length" => {"min" => 1, "max" => 30}, "smithy.api#pattern" => "^[a-z]{2}-[a-z\\-]+-[0-9]+$"})
    WarningCode = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.applicationdiscoveryservice#WarningCode', name: 'WarningCode', traits: {"smithy.api#default" => 0})
    WarningText = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.applicationdiscoveryservice#WarningText', name: 'WarningText')
    OrderString = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.applicationdiscoveryservice#orderString', name: 'OrderString')

    AgentConfigurationStatus.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>The agent ID.</p>"}))
    AgentConfigurationStatus.add_member(:operation_succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'operationSucceeded', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Information about the status of the <code>StartDataCollection</code> and\n        <code>StopDataCollection</code> operations. The system has recorded the data collection\n      operation. The agent receives this command the next time it polls for a new command.\n    </p>"}))
    AgentConfigurationStatus.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the operation performed.</p>"}))
    AgentConfigurationStatus.type = Types::AgentConfigurationStatus
    AgentConfigurationStatusList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AgentConfigurationStatus)
    AgentIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AgentId)
    AgentInfo.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentId, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>The agent or collector ID.</p>"}))
    AgentInfo.add_member(:host_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'hostName', traits: {"smithy.api#documentation" => "<p>The name of the host where the agent or collector resides. The host can be a server or\n      virtual machine.</p>"}))
    AgentInfo.add_member(:agent_network_info_list, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentNetworkInfoList, location_name: 'agentNetworkInfoList', traits: {"smithy.api#documentation" => "<p>Network details about the host where the agent or collector resides.</p>"}))
    AgentInfo.add_member(:connector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'connectorId', traits: {"smithy.api#documentation" => "<p>The ID of the connector.</p>"}))
    AgentInfo.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The agent or collector version.</p>"}))
    AgentInfo.add_member(:health, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentStatus, location_name: 'health', traits: {"smithy.api#documentation" => "<p>The health of the agent.</p>"}))
    AgentInfo.add_member(:last_health_ping_time, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'lastHealthPingTime', traits: {"smithy.api#documentation" => "<p>Time since agent health was reported.</p>"}))
    AgentInfo.add_member(:collection_status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'collectionStatus', traits: {"smithy.api#documentation" => "<p>Status of the collection process for an agent.</p>"}))
    AgentInfo.add_member(:agent_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'agentType', traits: {"smithy.api#documentation" => "<p>Type of agent.</p>"}))
    AgentInfo.add_member(:registered_time, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'registeredTime', traits: {"smithy.api#documentation" => "<p>Agent's first registration timestamp in UTC.</p>"}))
    AgentInfo.type = Types::AgentInfo
    AgentNetworkInfo.add_member(:ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ipAddress', traits: {"smithy.api#documentation" => "<p>The IP address for the host where the agent/collector resides.</p>"}))
    AgentNetworkInfo.add_member(:mac_address, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'macAddress', traits: {"smithy.api#documentation" => "<p>The MAC address for the host where the agent/collector resides.</p>"}))
    AgentNetworkInfo.type = Types::AgentNetworkInfo
    AgentNetworkInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AgentNetworkInfo)
    AgentStatus.add_member(:healthy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HEALTHY', traits: {"smithy.api#enumValue" => "HEALTHY"}))
    AgentStatus.add_member(:unhealthy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNHEALTHY', traits: {"smithy.api#enumValue" => "UNHEALTHY"}))
    AgentStatus.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    AgentStatus.add_member(:unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    AgentStatus.add_member(:blacklisted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BLACKLISTED', traits: {"smithy.api#enumValue" => "BLACKLISTED"}))
    AgentStatus.add_member(:shutdown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHUTDOWN', traits: {"smithy.api#enumValue" => "SHUTDOWN"}))
    AgentsInfo.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AgentInfo)
    ApplicationIdsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId)
    AssociateConfigurationItemsToApplicationRequest.add_member(:application_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationConfigurationId', traits: {"smithy.api#documentation" => "<p>The configuration ID of an application with which items are to be associated.</p>", "smithy.api#required" => {}}))
    AssociateConfigurationItemsToApplicationRequest.add_member(:configuration_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationIdList, location_name: 'configurationIds', traits: {"smithy.api#documentation" => "<p>The ID of each configuration item to be associated with an application.</p>", "smithy.api#required" => {}}))
    AssociateConfigurationItemsToApplicationRequest.type = Types::AssociateConfigurationItemsToApplicationRequest
    AssociateConfigurationItemsToApplicationResponse.type = Types::AssociateConfigurationItemsToApplicationResponse
    AuthorizationErrorException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    AuthorizationErrorException.type = Types::AuthorizationErrorException
    BatchDeleteAgentError.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentId, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>\n      The ID of the agent or data collector to delete.\n    </p>", "smithy.api#required" => {}}))
    BatchDeleteAgentError.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>\n      The description of the error that occurred for the delete failed agent.\n    </p>", "smithy.api#required" => {}}))
    BatchDeleteAgentError.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAgentErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>\n      The type of error that occurred for the delete failed agent. \n      Valid status are: AGENT_IN_USE | NOT_FOUND | INTERNAL_SERVER_ERROR.\n    </p>", "smithy.api#required" => {}}))
    BatchDeleteAgentError.type = Types::BatchDeleteAgentError
    BatchDeleteAgentErrors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteAgentError)
    BatchDeleteAgentsRequest.add_member(:delete_agents, Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAgents, location_name: 'deleteAgents', traits: {"smithy.api#documentation" => "<p>\n      The list of agents to delete.\n    </p>", "smithy.api#required" => {}}))
    BatchDeleteAgentsRequest.type = Types::BatchDeleteAgentsRequest
    BatchDeleteAgentsResponse.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteAgentErrors, location_name: 'errors', traits: {"smithy.api#documentation" => "<p>\n      A list of agent IDs that failed to delete during the deletion task, each paired with an error message.\n    </p>"}))
    BatchDeleteAgentsResponse.type = Types::BatchDeleteAgentsResponse
    BatchDeleteConfigurationTask.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'taskId', traits: {"smithy.api#documentation" => "<p>\n      The deletion task's unique identifier. \n    </p>"}))
    BatchDeleteConfigurationTask.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteConfigurationTaskStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>\n      The current execution status of the deletion task. \n      Valid status are: INITIALIZING | VALIDATING | DELETING | COMPLETED | FAILED.\n    </p>"}))
    BatchDeleteConfigurationTask.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>\n      An epoch seconds timestamp (UTC) of when the deletion task was started.\n    </p>"}))
    BatchDeleteConfigurationTask.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>\n      An epoch seconds timestamp (UTC) of when the deletion task was completed or failed.\n    </p>"}))
    BatchDeleteConfigurationTask.add_member(:configuration_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DeletionConfigurationItemType, location_name: 'configurationType', traits: {"smithy.api#documentation" => "<p>\n      The type of configuration item to delete. Supported types are: SERVER.\n    </p>"}))
    BatchDeleteConfigurationTask.add_member(:requested_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationIdList, location_name: 'requestedConfigurations', traits: {"smithy.api#documentation" => "<p>\n      The list of configuration IDs that were originally requested to be deleted by the deletion task.\n    </p>"}))
    BatchDeleteConfigurationTask.add_member(:deleted_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationIdList, location_name: 'deletedConfigurations', traits: {"smithy.api#documentation" => "<p>\n      The list of configuration IDs that were successfully deleted by the deletion task.\n    </p>"}))
    BatchDeleteConfigurationTask.add_member(:failed_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedConfigurationList, location_name: 'failedConfigurations', traits: {"smithy.api#documentation" => "<p>\n      A list of configuration IDs that failed to delete during the deletion task, \n      each paired with an error message.\n    </p>"}))
    BatchDeleteConfigurationTask.add_member(:deletion_warnings, Smithy::Schema::Shapes::ShapeRef.new(shape: DeletionWarningsList, location_name: 'deletionWarnings', traits: {"smithy.api#documentation" => "<p>\n      A list of configuration IDs that produced warnings regarding their deletion, \n      paired with a warning message.\n    </p>"}))
    BatchDeleteConfigurationTask.type = Types::BatchDeleteConfigurationTask
    BatchDeleteConfigurationTaskStatus.add_member(:initializing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INITIALIZING', traits: {"smithy.api#enumValue" => "INITIALIZING"}))
    BatchDeleteConfigurationTaskStatus.add_member(:validating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALIDATING', traits: {"smithy.api#enumValue" => "VALIDATING"}))
    BatchDeleteConfigurationTaskStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    BatchDeleteConfigurationTaskStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    BatchDeleteConfigurationTaskStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    BatchDeleteImportDataError.add_member(:import_task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTaskIdentifier, location_name: 'importTaskId', traits: {"smithy.api#documentation" => "<p>The unique import ID associated with the error that occurred.</p>"}))
    BatchDeleteImportDataError.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteImportDataErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>The type of error that occurred for a specific import task.</p>"}))
    BatchDeleteImportDataError.add_member(:error_description, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteImportDataErrorDescription, location_name: 'errorDescription', traits: {"smithy.api#documentation" => "<p>The description of the error that occurred for a specific import task.</p>"}))
    BatchDeleteImportDataError.type = Types::BatchDeleteImportDataError
    BatchDeleteImportDataErrorCode.add_member(:not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_FOUND', traits: {"smithy.api#enumValue" => "NOT_FOUND"}))
    BatchDeleteImportDataErrorCode.add_member(:internal_server_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_SERVER_ERROR', traits: {"smithy.api#enumValue" => "INTERNAL_SERVER_ERROR"}))
    BatchDeleteImportDataErrorCode.add_member(:over_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OVER_LIMIT', traits: {"smithy.api#enumValue" => "OVER_LIMIT"}))
    BatchDeleteImportDataErrorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteImportDataError)
    BatchDeleteImportDataRequest.add_member(:import_task_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ToDeleteIdentifierList, location_name: 'importTaskIds', traits: {"smithy.api#documentation" => "<p>The IDs for the import tasks that you want to delete.</p>", "smithy.api#required" => {}}))
    BatchDeleteImportDataRequest.add_member(:delete_history, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'deleteHistory', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>\n      Set to <code>true</code> to remove the deleted import task from \n      <a>DescribeImportTasks</a>.\n    </p>"}))
    BatchDeleteImportDataRequest.type = Types::BatchDeleteImportDataRequest
    BatchDeleteImportDataResponse.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteImportDataErrorList, location_name: 'errors', traits: {"smithy.api#documentation" => "<p>Error messages returned for each import task that you deleted as a response for this\n      command.</p>"}))
    BatchDeleteImportDataResponse.type = Types::BatchDeleteImportDataResponse
    Configuration.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Configuration.value = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ConfigurationIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationId)
    ConfigurationItemType.add_member(:server, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVER', traits: {"smithy.api#enumValue" => "SERVER"}))
    ConfigurationItemType.add_member(:process, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROCESS', traits: {"smithy.api#enumValue" => "PROCESS"}))
    ConfigurationItemType.add_member(:connections, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONNECTIONS', traits: {"smithy.api#enumValue" => "CONNECTION"}))
    ConfigurationItemType.add_member(:application, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPLICATION', traits: {"smithy.api#enumValue" => "APPLICATION"}))
    ConfigurationTag.add_member(:configuration_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationItemType, location_name: 'configurationType', traits: {"smithy.api#documentation" => "<p>A type of IT asset to tag.</p>"}))
    ConfigurationTag.add_member(:configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationId, location_name: 'configurationId', traits: {"smithy.api#documentation" => "<p>The configuration ID for the item to tag. You can specify a list of keys and\n      values.</p>"}))
    ConfigurationTag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'key', traits: {"smithy.api#documentation" => "<p>A type of tag on which to filter. For example,\n      <i>serverType</i>.</p>"}))
    ConfigurationTag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>A value on which to filter. For example <i>key = serverType</i> and\n        <i>value = web server</i>.</p>"}))
    ConfigurationTag.add_member(:time_of_creation, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'timeOfCreation', traits: {"smithy.api#documentation" => "<p>The time the configuration tag was created in Coordinated Universal Time\n      (UTC).</p>"}))
    ConfigurationTag.type = Types::ConfigurationTag
    ConfigurationTagSet.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationTag, traits: {"smithy.api#xmlName" => "item"})
    Configurations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Configuration)
    ConflictErrorException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    ConflictErrorException.type = Types::ConflictErrorException
    ContinuousExportDescription.add_member(:export_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationsExportId, location_name: 'exportId', traits: {"smithy.api#documentation" => "<p>The unique ID assigned to this export.</p>"}))
    ContinuousExportDescription.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuousExportStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>Describes the status of the export. Can be one of the following values:</p>\n         <ul>\n            <li>\n               <p>START_IN_PROGRESS - setting up resources to start continuous export.</p>\n            </li>\n            <li>\n               <p>START_FAILED - an error occurred setting up continuous export. To recover, call\n          start-continuous-export again.</p>\n            </li>\n            <li>\n               <p>ACTIVE - data is being exported to the customer bucket.</p>\n            </li>\n            <li>\n               <p>ERROR - an error occurred during export. To fix the issue, call\n          stop-continuous-export and start-continuous-export.</p>\n            </li>\n            <li>\n               <p>STOP_IN_PROGRESS - stopping the export.</p>\n            </li>\n            <li>\n               <p>STOP_FAILED - an error occurred stopping the export. To recover, call\n          stop-continuous-export again.</p>\n            </li>\n            <li>\n               <p>INACTIVE - the continuous export has been stopped. Data is no longer being exported\n          to the customer bucket.</p>\n            </li>\n         </ul>"}))
    ContinuousExportDescription.add_member(:status_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: StringMax255, location_name: 'statusDetail', traits: {"smithy.api#documentation" => "<p>Contains information about any errors that have occurred. This data type can have the\n      following values:</p>\n         <ul>\n            <li>\n               <p>ACCESS_DENIED - You don’t have permission to start Data Exploration in Amazon\n          Athena. Contact your Amazon Web Services administrator for help. For more information, see <a href=\"http://docs.aws.amazon.com/application-discovery/latest/userguide/setting-up.html\">Setting Up Amazon Web Services Application Discovery Service</a> in the Application Discovery\n          Service User Guide.</p>\n            </li>\n            <li>\n               <p>DELIVERY_STREAM_LIMIT_FAILURE - You reached the limit for Amazon Kinesis Data\n          Firehose delivery streams. Reduce the number of streams or request a limit increase and\n          try again. For more information, see <a href=\"http://docs.aws.amazon.com/streams/latest/dev/service-sizes-and-limits.html\">Kinesis Data Streams Limits</a> in the Amazon Kinesis Data Streams Developer\n          Guide.</p>\n            </li>\n            <li>\n               <p>FIREHOSE_ROLE_MISSING - The Data Exploration feature is in an error state because\n          your user is missing the Amazon Web ServicesApplicationDiscoveryServiceFirehose role. Turn on Data\n          Exploration in Amazon Athena and try again. For more information, see <a href=\"https://docs.aws.amazon.com/application-discovery/latest/userguide/security-iam-awsmanpol.html#security-iam-awsmanpol-create-firehose-role\">Creating the Amazon Web ServicesApplicationDiscoveryServiceFirehose Role</a> in the Application Discovery Service User Guide.</p>\n            </li>\n            <li>\n               <p>FIREHOSE_STREAM_DOES_NOT_EXIST - The Data Exploration feature is in an error state\n          because your user is missing one or more of the Kinesis data delivery\n          streams.</p>\n            </li>\n            <li>\n               <p>INTERNAL_FAILURE - The Data Exploration feature is in an error state because of an\n          internal failure. Try again later. If this problem persists, contact Amazon Web Services\n          Support.</p>\n            </li>\n            <li>\n               <p>LAKE_FORMATION_ACCESS_DENIED - You don't have sufficient lake formation permissions\n          to start continuous export. For more information, see <a href=\"http://docs.aws.amazon.com/lake-formation/latest/dg/upgrade-glue-lake-formation.html\">\n            Upgrading Amazon Web Services Glue Data Permissions to the Amazon Web Services Lake Formation Model </a> in the\n          Amazon Web Services <i>Lake Formation Developer Guide</i>. </p>\n               <p>You can use one of the following two ways to resolve this issue.</p>\n               <ol>\n                  <li>\n                     <p>If you don’t want to use the Lake Formation permission model, you can change\n              the default Data Catalog settings to use only Amazon Web Services Identity and Access Management\n              (IAM) access control for new databases. For more information, see <a href=\"https://docs.aws.amazon.com/lake-formation/latest/dg/getting-started-setup.html#setup-change-cat-settings\">Change Data Catalog Settings</a> in the <i>Lake Formation Developer\n                Guide</i>.</p>\n                  </li>\n                  <li>\n                     <p>You can give the service-linked IAM roles\n              AWSServiceRoleForApplicationDiscoveryServiceContinuousExport and\n              AWSApplicationDiscoveryServiceFirehose the required Lake Formation permissions. For\n              more information, see <a href=\"https://docs.aws.amazon.com/lake-formation/latest/dg/granting-database-permissions.html\">\n                Granting Database Permissions</a> in the <i>Lake Formation Developer\n                Guide</i>. </p>\n                     <ol>\n                        <li>\n                           <p>AWSServiceRoleForApplicationDiscoveryServiceContinuousExport - Grant\n                  database creator permissions, which gives the role database creation ability and\n                  implicit permissions for any created tables. For more information, see <a href=\"https://docs.aws.amazon.com/lake-formation/latest/dg/implicit-permissions.html\">\n                    Implicit Lake Formation Permissions </a> in the <i>Lake Formation\n                    Developer Guide</i>.</p>\n                        </li>\n                        <li>\n                           <p>AWSApplicationDiscoveryServiceFirehose - Grant describe permissions for all\n                  tables in the database.</p>\n                        </li>\n                     </ol>\n                  </li>\n               </ol>\n            </li>\n            <li>\n               <p>S3_BUCKET_LIMIT_FAILURE - You reached the limit for Amazon S3 buckets. Reduce the\n          number of S3 buckets or request a limit increase and try again. For more information, see\n            <a href=\"http://docs.aws.amazon.com/AmazonS3/latest/dev/BucketRestrictions.html\">Bucket Restrictions and Limitations</a> in the Amazon Simple Storage Service\n          Developer Guide.</p>\n            </li>\n            <li>\n               <p>S3_NOT_SIGNED_UP - Your account is not signed up for the  Amazon S3 service. You\n          must sign up before you can use Amazon S3. You can sign up at the following URL: <a href=\"https://aws.amazon.com/s3\">https://aws.amazon.com/s3</a>.</p>\n            </li>\n         </ul>"}))
    ContinuousExportDescription.add_member(:s3_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 's3Bucket', traits: {"smithy.api#documentation" => "<p>The name of the s3 bucket where the export data parquet files are stored.</p>"}))
    ContinuousExportDescription.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>The timestamp representing when the continuous export was started.</p>"}))
    ContinuousExportDescription.add_member(:stop_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'stopTime', traits: {"smithy.api#documentation" => "<p>The timestamp that represents when this continuous export was stopped.</p>"}))
    ContinuousExportDescription.add_member(:data_source, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSource, location_name: 'dataSource', traits: {"smithy.api#documentation" => "<p>The type of data collector used to gather this data (currently only offered for\n      AGENT).</p>"}))
    ContinuousExportDescription.add_member(:schema_storage_config, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaStorageConfig, location_name: 'schemaStorageConfig', traits: {"smithy.api#documentation" => "<p>An object which describes how the data is stored.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>databaseName</code> - the name of the Glue database used to store the\n          schema.</p>\n            </li>\n         </ul>"}))
    ContinuousExportDescription.type = Types::ContinuousExportDescription
    ContinuousExportDescriptions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuousExportDescription)
    ContinuousExportIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationsExportId)
    ContinuousExportStatus.add_member(:start_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'START_IN_PROGRESS', traits: {"smithy.api#enumValue" => "START_IN_PROGRESS"}))
    ContinuousExportStatus.add_member(:start_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'START_FAILED', traits: {"smithy.api#enumValue" => "START_FAILED"}))
    ContinuousExportStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ContinuousExportStatus.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    ContinuousExportStatus.add_member(:stop_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOP_IN_PROGRESS', traits: {"smithy.api#enumValue" => "STOP_IN_PROGRESS"}))
    ContinuousExportStatus.add_member(:stop_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOP_FAILED', traits: {"smithy.api#enumValue" => "STOP_FAILED"}))
    ContinuousExportStatus.add_member(:inactive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    CreateApplicationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the application to be created.</p>", "smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the application to be created.</p>"}))
    CreateApplicationRequest.add_member(:wave, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationWave, location_name: 'wave', traits: {"smithy.api#documentation" => "<p>The name of the migration wave of the application to be created.</p>"}))
    CreateApplicationRequest.type = Types::CreateApplicationRequest
    CreateApplicationResponse.add_member(:configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'configurationId', traits: {"smithy.api#documentation" => "<p>The configuration ID of an application to be created.</p>"}))
    CreateApplicationResponse.type = Types::CreateApplicationResponse
    CreateTagsRequest.add_member(:configuration_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationIdList, location_name: 'configurationIds', traits: {"smithy.api#documentation" => "<p>A list of configuration items that you want to tag.</p>", "smithy.api#required" => {}}))
    CreateTagsRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagSet, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags that you want to associate with one or more configuration items. Specify the tags\n      that you want to create in a <i>key</i>-<i>value</i> format. For\n      example:</p>\n         <p>\n            <code>{\"key\": \"serverType\", \"value\": \"webServer\"}</code>\n         </p>", "smithy.api#required" => {}}))
    CreateTagsRequest.type = Types::CreateTagsRequest
    CreateTagsResponse.type = Types::CreateTagsResponse
    CustomerAgentInfo.add_member(:active_agents, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'activeAgents', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Number of active discovery agents.</p>", "smithy.api#required" => {}}))
    CustomerAgentInfo.add_member(:healthy_agents, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'healthyAgents', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Number of healthy discovery agents</p>", "smithy.api#required" => {}}))
    CustomerAgentInfo.add_member(:black_listed_agents, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'blackListedAgents', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Number of blacklisted discovery agents.</p>", "smithy.api#required" => {}}))
    CustomerAgentInfo.add_member(:shutdown_agents, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'shutdownAgents', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Number of discovery agents with status SHUTDOWN.</p>", "smithy.api#required" => {}}))
    CustomerAgentInfo.add_member(:unhealthy_agents, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'unhealthyAgents', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Number of unhealthy discovery agents.</p>", "smithy.api#required" => {}}))
    CustomerAgentInfo.add_member(:total_agents, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'totalAgents', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Total number of discovery agents.</p>", "smithy.api#required" => {}}))
    CustomerAgentInfo.add_member(:unknown_agents, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'unknownAgents', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Number of unknown discovery agents.</p>", "smithy.api#required" => {}}))
    CustomerAgentInfo.type = Types::CustomerAgentInfo
    CustomerAgentlessCollectorInfo.add_member(:active_agentless_collectors, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'activeAgentlessCollectors', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of active Agentless Collector collectors. </p>", "smithy.api#required" => {}}))
    CustomerAgentlessCollectorInfo.add_member(:healthy_agentless_collectors, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'healthyAgentlessCollectors', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of healthy Agentless Collector collectors. </p>", "smithy.api#required" => {}}))
    CustomerAgentlessCollectorInfo.add_member(:deny_listed_agentless_collectors, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'denyListedAgentlessCollectors', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of deny-listed Agentless Collector collectors. </p>", "smithy.api#required" => {}}))
    CustomerAgentlessCollectorInfo.add_member(:shutdown_agentless_collectors, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'shutdownAgentlessCollectors', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of Agentless Collector collectors with <code>SHUTDOWN</code> status.\n    </p>", "smithy.api#required" => {}}))
    CustomerAgentlessCollectorInfo.add_member(:unhealthy_agentless_collectors, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'unhealthyAgentlessCollectors', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> The number of unhealthy Agentless Collector collectors. </p>", "smithy.api#required" => {}}))
    CustomerAgentlessCollectorInfo.add_member(:total_agentless_collectors, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'totalAgentlessCollectors', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> The total number of Agentless Collector collectors. </p>", "smithy.api#required" => {}}))
    CustomerAgentlessCollectorInfo.add_member(:unknown_agentless_collectors, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'unknownAgentlessCollectors', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> The number of unknown Agentless Collector collectors. </p>", "smithy.api#required" => {}}))
    CustomerAgentlessCollectorInfo.type = Types::CustomerAgentlessCollectorInfo
    CustomerConnectorInfo.add_member(:active_connectors, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'activeConnectors', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Number of active discovery connectors.</p>", "smithy.api#required" => {}}))
    CustomerConnectorInfo.add_member(:healthy_connectors, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'healthyConnectors', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Number of healthy discovery connectors.</p>", "smithy.api#required" => {}}))
    CustomerConnectorInfo.add_member(:black_listed_connectors, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'blackListedConnectors', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Number of blacklisted discovery connectors.</p>", "smithy.api#required" => {}}))
    CustomerConnectorInfo.add_member(:shutdown_connectors, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'shutdownConnectors', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Number of discovery connectors with status SHUTDOWN,</p>", "smithy.api#required" => {}}))
    CustomerConnectorInfo.add_member(:unhealthy_connectors, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'unhealthyConnectors', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Number of unhealthy discovery connectors.</p>", "smithy.api#required" => {}}))
    CustomerConnectorInfo.add_member(:total_connectors, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'totalConnectors', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Total number of discovery connectors.</p>", "smithy.api#required" => {}}))
    CustomerConnectorInfo.add_member(:unknown_connectors, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'unknownConnectors', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Number of unknown discovery connectors.</p>", "smithy.api#required" => {}}))
    CustomerConnectorInfo.type = Types::CustomerConnectorInfo
    CustomerMeCollectorInfo.add_member(:active_me_collectors, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'activeMeCollectors', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> The number of active Migration Evaluator collectors. </p>", "smithy.api#required" => {}}))
    CustomerMeCollectorInfo.add_member(:healthy_me_collectors, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'healthyMeCollectors', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> The number of healthy Migration Evaluator collectors. </p>", "smithy.api#required" => {}}))
    CustomerMeCollectorInfo.add_member(:deny_listed_me_collectors, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'denyListedMeCollectors', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> The number of deny-listed Migration Evaluator collectors. </p>", "smithy.api#required" => {}}))
    CustomerMeCollectorInfo.add_member(:shutdown_me_collectors, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'shutdownMeCollectors', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> The number of Migration Evaluator collectors with <code>SHUTDOWN</code> status. </p>", "smithy.api#required" => {}}))
    CustomerMeCollectorInfo.add_member(:unhealthy_me_collectors, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'unhealthyMeCollectors', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> The number of unhealthy Migration Evaluator collectors. </p>", "smithy.api#required" => {}}))
    CustomerMeCollectorInfo.add_member(:total_me_collectors, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'totalMeCollectors', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> The total number of Migration Evaluator collectors. </p>", "smithy.api#required" => {}}))
    CustomerMeCollectorInfo.add_member(:unknown_me_collectors, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'unknownMeCollectors', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> The number of unknown Migration Evaluator collectors. </p>", "smithy.api#required" => {}}))
    CustomerMeCollectorInfo.type = Types::CustomerMeCollectorInfo
    DataSource.add_member(:agent, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AGENT', traits: {"smithy.api#enumValue" => "AGENT"}))
    DeleteAgent.add_member(:agent_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentId, location_name: 'agentId', traits: {"smithy.api#documentation" => "<p>\n      The ID of the agent or data collector to delete.\n    </p>", "smithy.api#required" => {}}))
    DeleteAgent.add_member(:force, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'force', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>\n      Optional flag used to force delete an agent or data collector. It is needed to delete any agent in \n      HEALTHY/UNHEALTHY/RUNNING status. Note that deleting an agent that is actively reporting health causes it \n      to be re-registered with a different agent ID after data collector re-connects with Amazon Web Services.\n    </p>"}))
    DeleteAgent.type = Types::DeleteAgent
    DeleteAgentErrorCode.add_member(:not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_FOUND', traits: {"smithy.api#enumValue" => "NOT_FOUND"}))
    DeleteAgentErrorCode.add_member(:internal_server_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_SERVER_ERROR', traits: {"smithy.api#enumValue" => "INTERNAL_SERVER_ERROR"}))
    DeleteAgentErrorCode.add_member(:agent_in_use, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AGENT_IN_USE', traits: {"smithy.api#enumValue" => "AGENT_IN_USE"}))
    DeleteAgents.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAgent)
    DeleteApplicationsRequest.add_member(:configuration_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationIdsList, location_name: 'configurationIds', traits: {"smithy.api#documentation" => "<p>Configuration ID of an application to be deleted.</p>", "smithy.api#required" => {}}))
    DeleteApplicationsRequest.type = Types::DeleteApplicationsRequest
    DeleteApplicationsResponse.type = Types::DeleteApplicationsResponse
    DeleteTagsRequest.add_member(:configuration_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationIdList, location_name: 'configurationIds', traits: {"smithy.api#documentation" => "<p>A list of configuration items with tags that you want to delete.</p>", "smithy.api#required" => {}}))
    DeleteTagsRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagSet, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags that you want to delete from one or more configuration items. Specify the tags\n      that you want to delete in a <i>key</i>-<i>value</i> format. For\n      example:</p>\n         <p>\n            <code>{\"key\": \"serverType\", \"value\": \"webServer\"}</code>\n         </p>"}))
    DeleteTagsRequest.type = Types::DeleteTagsRequest
    DeleteTagsResponse.type = Types::DeleteTagsResponse
    DeletionConfigurationItemType.add_member(:server, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVER', traits: {"smithy.api#enumValue" => "SERVER"}))
    DeletionWarning.add_member(:configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationId, location_name: 'configurationId', traits: {"smithy.api#documentation" => "<p>\n      The unique identifier of the configuration that produced a warning.\n    </p>"}))
    DeletionWarning.add_member(:warning_code, Smithy::Schema::Shapes::ShapeRef.new(shape: WarningCode, location_name: 'warningCode', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>\n      The integer warning code associated with the warning message.\n    </p>"}))
    DeletionWarning.add_member(:warning_text, Smithy::Schema::Shapes::ShapeRef.new(shape: WarningText, location_name: 'warningText', traits: {"smithy.api#documentation" => "<p>\n      A descriptive message of the warning the associated configuration ID produced. \n    </p>"}))
    DeletionWarning.type = Types::DeletionWarning
    DeletionWarningsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletionWarning)
    DescribeAgentsRequest.add_member(:agent_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentIds, location_name: 'agentIds', traits: {"smithy.api#documentation" => "<p>The agent or the collector IDs for which you want information. If you specify no IDs,\n      the system returns information about all agents/collectors associated with your user.</p>"}))
    DescribeAgentsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>You can filter the request using various logical operators and a\n        <i>key</i>-<i>value</i> format. For example: </p>\n         <p>\n            <code>{\"key\": \"collectionStatus\", \"value\": \"STARTED\"}</code>\n         </p>"}))
    DescribeAgentsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of agents/collectors to return in a single page of output. The maximum\n      value is 100.</p>"}))
    DescribeAgentsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Token to retrieve the next set of results. For example, if you previously specified 100\n      IDs for <code>DescribeAgentsRequest$agentIds</code> but set\n        <code>DescribeAgentsRequest$maxResults</code> to 10, you received a set of 10 results along\n      with a token. Use that token in this query to get the next set of 10.</p>"}))
    DescribeAgentsRequest.type = Types::DescribeAgentsRequest
    DescribeAgentsResponse.add_member(:agents_info, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentsInfo, location_name: 'agentsInfo', traits: {"smithy.api#documentation" => "<p>Lists agents or the collector by ID or lists all agents/collectors associated with your\n      user, if you did not specify an agent/collector ID. The output includes agent/collector\n      IDs, IP addresses, media access control (MAC) addresses, agent/collector health, host name\n      where the agent/collector resides, and the version number of each agent/collector.</p>"}))
    DescribeAgentsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Token to retrieve the next set of results. For example, if you specified 100 IDs for\n        <code>DescribeAgentsRequest$agentIds</code> but set\n        <code>DescribeAgentsRequest$maxResults</code> to 10, you received a set of 10 results along\n      with this token. Use this token in the next query to retrieve the next set of 10.</p>"}))
    DescribeAgentsResponse.type = Types::DescribeAgentsResponse
    DescribeBatchDeleteConfigurationTaskRequest.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'taskId', traits: {"smithy.api#documentation" => "<p>\n        The ID of the task to delete.\n      </p>", "smithy.api#required" => {}}))
    DescribeBatchDeleteConfigurationTaskRequest.type = Types::DescribeBatchDeleteConfigurationTaskRequest
    DescribeBatchDeleteConfigurationTaskResponse.add_member(:task, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteConfigurationTask, location_name: 'task', traits: {"smithy.api#documentation" => "<p>\n        The <code>BatchDeleteConfigurationTask</code> that represents the deletion task being executed.\n      </p>"}))
    DescribeBatchDeleteConfigurationTaskResponse.type = Types::DescribeBatchDeleteConfigurationTaskResponse
    DescribeConfigurationsAttribute.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    DescribeConfigurationsAttribute.value = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    DescribeConfigurationsAttributes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConfigurationsAttribute)
    DescribeConfigurationsRequest.add_member(:configuration_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationIdList, location_name: 'configurationIds', traits: {"smithy.api#documentation" => "<p>One or more configuration IDs.</p>", "smithy.api#required" => {}}))
    DescribeConfigurationsRequest.type = Types::DescribeConfigurationsRequest
    DescribeConfigurationsResponse.add_member(:configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConfigurationsAttributes, location_name: 'configurations', traits: {"smithy.api#documentation" => "<p>A key in the response map. The value is an array of data.</p>"}))
    DescribeConfigurationsResponse.type = Types::DescribeConfigurationsResponse
    DescribeContinuousExportsRequest.add_member(:export_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuousExportIds, location_name: 'exportIds', traits: {"smithy.api#documentation" => "<p>The unique IDs assigned to the exports.</p>"}))
    DescribeContinuousExportsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeContinuousExportsMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>A number between 1 and 100 specifying the maximum number of continuous export\n      descriptions returned.</p>"}))
    DescribeContinuousExportsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token from the previous call to <code>DescribeExportTasks</code>.</p>"}))
    DescribeContinuousExportsRequest.type = Types::DescribeContinuousExportsRequest
    DescribeContinuousExportsResponse.add_member(:descriptions, Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuousExportDescriptions, location_name: 'descriptions', traits: {"smithy.api#documentation" => "<p>A list of continuous export descriptions.</p>"}))
    DescribeContinuousExportsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token from the previous call to <code>DescribeExportTasks</code>.</p>"}))
    DescribeContinuousExportsResponse.type = Types::DescribeContinuousExportsResponse
    DescribeExportConfigurationsRequest.add_member(:export_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportIds, location_name: 'exportIds', traits: {"smithy.api#documentation" => "<p>A list of continuous export IDs to search for.</p>"}))
    DescribeExportConfigurationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>A number between 1 and 100 specifying the maximum number of continuous export\n      descriptions returned.</p>"}))
    DescribeExportConfigurationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token from the previous call to describe-export-tasks.</p>"}))
    DescribeExportConfigurationsRequest.type = Types::DescribeExportConfigurationsRequest
    DescribeExportConfigurationsResponse.add_member(:exports_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportsInfo, location_name: 'exportsInfo', traits: {"smithy.api#documentation" => "<p></p>"}))
    DescribeExportConfigurationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token from the previous call to describe-export-tasks.</p>"}))
    DescribeExportConfigurationsResponse.type = Types::DescribeExportConfigurationsResponse
    DescribeExportTasksRequest.add_member(:export_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportIds, location_name: 'exportIds', traits: {"smithy.api#documentation" => "<p>One or more unique identifiers used to query the status of an export request.</p>"}))
    DescribeExportTasksRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportFilters, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>One or more filters.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>AgentId</code> - ID of the agent whose collected data will be\n          exported</p>\n            </li>\n         </ul>"}))
    DescribeExportTasksRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of volume results returned by <code>DescribeExportTasks</code> in\n      paginated output. When this parameter is used, <code>DescribeExportTasks</code> only returns\n        <code>maxResults</code> results in a single page along with a <code>nextToken</code>\n      response element.</p>"}))
    DescribeExportTasksRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The <code>nextToken</code> value returned from a previous paginated\n        <code>DescribeExportTasks</code> request where <code>maxResults</code> was used and the\n      results exceeded the value of that parameter. Pagination continues from the end of the\n      previous results that returned the <code>nextToken</code> value. This value is null when there\n      are no more results to return.</p>"}))
    DescribeExportTasksRequest.type = Types::DescribeExportTasksRequest
    DescribeExportTasksResponse.add_member(:exports_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportsInfo, location_name: 'exportsInfo', traits: {"smithy.api#documentation" => "<p>Contains one or more sets of export request details. When the status of a request is\n        <code>SUCCEEDED</code>, the response includes a URL for an Amazon S3 bucket where you can\n      view the data in a CSV file.</p>"}))
    DescribeExportTasksResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The <code>nextToken</code> value to include in a future\n        <code>DescribeExportTasks</code> request. When the results of a\n        <code>DescribeExportTasks</code> request exceed <code>maxResults</code>, this value can be\n      used to retrieve the next page of results. This value is null when there are no more results\n      to return.</p>"}))
    DescribeExportTasksResponse.type = Types::DescribeExportTasksResponse
    DescribeImportTasksFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTaskFilter)
    DescribeImportTasksRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeImportTasksFilterList, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>An array of name-value pairs that you provide to filter the results for the\n        <code>DescribeImportTask</code> request to a specific subset of results. Currently, wildcard\n      values aren't supported for filters.</p>"}))
    DescribeImportTasksRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeImportTasksMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results that you want this request to return, up to 100.</p>"}))
    DescribeImportTasksRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to request a specific page of results.</p>"}))
    DescribeImportTasksRequest.type = Types::DescribeImportTasksRequest
    DescribeImportTasksResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to request the next page of results.</p>"}))
    DescribeImportTasksResponse.add_member(:tasks, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTaskList, location_name: 'tasks', traits: {"smithy.api#documentation" => "<p>A returned array of import tasks that match any applied filters, up to the specified\n      number of maximum results.</p>"}))
    DescribeImportTasksResponse.type = Types::DescribeImportTasksResponse
    DescribeTagsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: TagFilters, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>You can filter the list using a <i>key</i>-<i>value</i>\n      format. You can separate these items by using logical operators. Allowed filters include\n        <code>tagKey</code>, <code>tagValue</code>, and <code>configurationId</code>. </p>"}))
    DescribeTagsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of items to return in a single page of output. The maximum value is\n      100.</p>"}))
    DescribeTagsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token to start the list. Use this token to get the next set of results.</p>"}))
    DescribeTagsRequest.type = Types::DescribeTagsRequest
    DescribeTagsResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationTagSet, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Depending on the input, this is a list of configuration items tagged with a specific\n      tag, or a list of tags for a specific configuration item.</p>"}))
    DescribeTagsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The call returns a token. Use this token to get the next set of results.</p>"}))
    DescribeTagsResponse.type = Types::DescribeTagsResponse
    DisassociateConfigurationItemsFromApplicationRequest.add_member(:application_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationConfigurationId', traits: {"smithy.api#documentation" => "<p>Configuration ID of an application from which each item is disassociated.</p>", "smithy.api#required" => {}}))
    DisassociateConfigurationItemsFromApplicationRequest.add_member(:configuration_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationIdList, location_name: 'configurationIds', traits: {"smithy.api#documentation" => "<p>Configuration ID of each item to be disassociated from an application.</p>", "smithy.api#required" => {}}))
    DisassociateConfigurationItemsFromApplicationRequest.type = Types::DisassociateConfigurationItemsFromApplicationRequest
    DisassociateConfigurationItemsFromApplicationResponse.type = Types::DisassociateConfigurationItemsFromApplicationResponse
    Ec2RecommendationsExportPreferences.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportEnabled, location_name: 'enabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>\n      If set to true, the export \n      <a href=\"https://docs.aws.amazon.com/application-discovery/latest/APIReference/API_StartExportTask.html#API_StartExportTask_RequestSyntax\">preferences</a>\n      is set to <code>Ec2RecommendationsExportPreferences</code>.\n    </p>"}))
    Ec2RecommendationsExportPreferences.add_member(:cpu_performance_metric_basis, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageMetricBasis, location_name: 'cpuPerformanceMetricBasis', traits: {"smithy.api#documentation" => "<p>\n      The recommended EC2 instance type that matches the CPU usage metric of server performance data.\n    </p>"}))
    Ec2RecommendationsExportPreferences.add_member(:ram_performance_metric_basis, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageMetricBasis, location_name: 'ramPerformanceMetricBasis', traits: {"smithy.api#documentation" => "<p>\n      The recommended EC2 instance type that matches the Memory usage metric of server performance data.\n    </p>"}))
    Ec2RecommendationsExportPreferences.add_member(:tenancy, Smithy::Schema::Shapes::ShapeRef.new(shape: Tenancy, location_name: 'tenancy', traits: {"smithy.api#documentation" => "<p>\n      The target tenancy to use for your recommended EC2 instances.\n    </p>"}))
    Ec2RecommendationsExportPreferences.add_member(:excluded_instance_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ExcludedInstanceTypes, location_name: 'excludedInstanceTypes', traits: {"smithy.api#documentation" => "<p>\n      An array of instance types to exclude from recommendations.\n    </p>"}))
    Ec2RecommendationsExportPreferences.add_member(:preferred_region, Smithy::Schema::Shapes::ShapeRef.new(shape: UserPreferredRegion, location_name: 'preferredRegion', traits: {"smithy.api#documentation" => "<p>\n      The target Amazon Web Services Region for the recommendations. \n      You can use any of the Region codes available for the chosen service, \n      as listed in <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html\">Amazon Web Services service endpoints</a> in the <i>Amazon Web Services General Reference</i>.\n    </p>"}))
    Ec2RecommendationsExportPreferences.add_member(:reserved_instance_options, Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedInstanceOptions, location_name: 'reservedInstanceOptions', traits: {"smithy.api#documentation" => "<p>\n      The contract type for a reserved instance. \n      If blank, we assume an On-Demand instance is preferred.\n    </p>"}))
    Ec2RecommendationsExportPreferences.type = Types::Ec2RecommendationsExportPreferences
    ExcludedInstanceTypes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceType)
    ExportConfigurationsResponse.add_member(:export_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationsExportId, location_name: 'exportId', traits: {"smithy.api#documentation" => "<p>A unique identifier that you can use to query the export status.</p>"}))
    ExportConfigurationsResponse.type = Types::ExportConfigurationsResponse
    ExportDataFormat.add_member(:csv, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CSV', traits: {"smithy.api#enumValue" => "CSV"}))
    ExportDataFormats.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExportDataFormat)
    ExportFilter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A single <code>ExportFilter</code> name. Supported filters:\n      <code>agentIds</code>.</p>", "smithy.api#required" => {}}))
    ExportFilter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValues, location_name: 'values', traits: {"smithy.api#documentation" => "<p>A single agent ID for a Discovery Agent. An agent ID can be found using the <a href=\"http://docs.aws.amazon.com/application-discovery/latest/APIReference/API_DescribeAgents.html\">DescribeAgents</a> action. Typically an ADS agent ID is in the form\n        <code>o-0123456789abcdef0</code>.</p>", "smithy.api#required" => {}}))
    ExportFilter.add_member(:condition, Smithy::Schema::Shapes::ShapeRef.new(shape: Condition, location_name: 'condition', traits: {"smithy.api#documentation" => "<p>Supported condition: <code>EQUALS</code>\n         </p>", "smithy.api#required" => {}}))
    ExportFilter.type = Types::ExportFilter
    ExportFilters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExportFilter)
    ExportIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationsExportId)
    ExportInfo.add_member(:export_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationsExportId, location_name: 'exportId', traits: {"smithy.api#documentation" => "<p>A unique identifier used to query an export.</p>", "smithy.api#required" => {}}))
    ExportInfo.add_member(:export_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportStatus, location_name: 'exportStatus', traits: {"smithy.api#documentation" => "<p>The status of the data export job.</p>", "smithy.api#required" => {}}))
    ExportInfo.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportStatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>A status message provided for API callers.</p>", "smithy.api#required" => {}}))
    ExportInfo.add_member(:configurations_download_url, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationsDownloadUrl, location_name: 'configurationsDownloadUrl', traits: {"smithy.api#documentation" => "<p>A URL for an Amazon S3 bucket where you can review the exported data. The URL is\n      displayed only if the export succeeded.</p>"}))
    ExportInfo.add_member(:export_request_time, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportRequestTime, location_name: 'exportRequestTime', traits: {"smithy.api#documentation" => "<p>The time that the data export was initiated.</p>", "smithy.api#required" => {}}))
    ExportInfo.add_member(:is_truncated, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'isTruncated', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If true, the export of agent information exceeded the size limit for a single export\n      and the exported data is incomplete for the requested time range. To address this, select a\n      smaller time range for the export by using <code>startDate</code> and\n      <code>endDate</code>.</p>"}))
    ExportInfo.add_member(:requested_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'requestedStartTime', traits: {"smithy.api#documentation" => "<p>The value of <code>startTime</code> parameter in the <code>StartExportTask</code>\n      request. If no <code>startTime</code> was requested, this result does not appear in\n        <code>ExportInfo</code>.</p>"}))
    ExportInfo.add_member(:requested_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'requestedEndTime', traits: {"smithy.api#documentation" => "<p>The <code>endTime</code> used in the <code>StartExportTask</code> request. If no\n        <code>endTime</code> was requested, this result does not appear in\n      <code>ExportInfo</code>.</p>"}))
    ExportInfo.type = Types::ExportInfo
    ExportPreferences.add_member(:ec2_recommendations_preferences, Types::ExportPreferences::Ec2RecommendationsPreferences, Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2RecommendationsExportPreferences, location_name: 'ec2RecommendationsPreferences', traits: {"smithy.api#documentation" => "<p>\n      If enabled, exported data includes EC2 instance type matches for on-premises servers \n      discovered through Amazon Web Services Application Discovery Service.\n    </p>"}))
    ExportPreferences.add_member(:unknown, Types::ExportPreferences::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ExportPreferences.type = Types::ExportPreferences
    ExportStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ExportStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    ExportStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ExportsInfo.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExportInfo)
    FailedConfiguration.add_member(:configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationId, location_name: 'configurationId', traits: {"smithy.api#documentation" => "<p>\n      The unique identifier of the configuration the failed to delete.\n    </p>"}))
    FailedConfiguration.add_member(:error_status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorStatusCode, location_name: 'errorStatusCode', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>\n      The integer error code associated with the error message.\n    </p>"}))
    FailedConfiguration.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>\n      A descriptive message indicating why the associated configuration failed to delete.\n    </p>"}))
    FailedConfiguration.type = Types::FailedConfiguration
    FailedConfigurationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FailedConfiguration)
    FileClassification.add_member(:modelizeit_export, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MODELIZEIT_EXPORT', traits: {"smithy.api#enumValue" => "MODELIZEIT_EXPORT"}))
    FileClassification.add_member(:rvtools_export, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RVTOOLS_EXPORT', traits: {"smithy.api#enumValue" => "RVTOOLS_EXPORT"}))
    FileClassification.add_member(:vmware_nsx_export, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VMWARE_NSX_EXPORT', traits: {"smithy.api#enumValue" => "VMWARE_NSX_EXPORT"}))
    FileClassification.add_member(:import_template, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMPORT_TEMPLATE', traits: {"smithy.api#enumValue" => "IMPORT_TEMPLATE"}))
    Filter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the filter.</p>", "smithy.api#required" => {}}))
    Filter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValues, location_name: 'values', traits: {"smithy.api#documentation" => "<p>A string value on which to filter. For example, if you choose the\n        <code>destinationServer.osVersion</code> filter name, you could specify <code>Ubuntu</code>\n      for the value.</p>", "smithy.api#required" => {}}))
    Filter.add_member(:condition, Smithy::Schema::Shapes::ShapeRef.new(shape: Condition, location_name: 'condition', traits: {"smithy.api#documentation" => "<p>A conditional operator. The following operators are valid: EQUALS, NOT_EQUALS,\n      CONTAINS, NOT_CONTAINS. If you specify multiple filters, the system utilizes all filters as\n      though concatenated by <i>AND</i>. If you specify multiple values for a\n      particular filter, the system differentiates the values using <i>OR</i>. Calling\n      either <i>DescribeConfigurations</i> or <i>ListConfigurations</i>\n      returns attributes of matching configuration items.</p>", "smithy.api#required" => {}}))
    Filter.type = Types::Filter
    FilterValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValue, traits: {"smithy.api#xmlName" => "item"})
    Filters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Filter)
    GetDiscoverySummaryRequest.type = Types::GetDiscoverySummaryRequest
    GetDiscoverySummaryResponse.add_member(:servers, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'servers', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of servers discovered.</p>"}))
    GetDiscoverySummaryResponse.add_member(:applications, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'applications', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of applications discovered.</p>"}))
    GetDiscoverySummaryResponse.add_member(:servers_mapped_to_applications, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'serversMappedToApplications', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of servers mapped to applications.</p>"}))
    GetDiscoverySummaryResponse.add_member(:servers_mappedto_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'serversMappedtoTags', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of servers mapped to tags.</p>"}))
    GetDiscoverySummaryResponse.add_member(:agent_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerAgentInfo, location_name: 'agentSummary', traits: {"smithy.api#documentation" => "<p>Details about discovered agents, including agent status and health.</p>"}))
    GetDiscoverySummaryResponse.add_member(:connector_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerConnectorInfo, location_name: 'connectorSummary', traits: {"smithy.api#documentation" => "<p>Details about discovered connectors, including connector status and health.</p>"}))
    GetDiscoverySummaryResponse.add_member(:me_collector_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerMeCollectorInfo, location_name: 'meCollectorSummary', traits: {"smithy.api#documentation" => "<p> Details about Migration Evaluator collectors, including collector status and health. </p>"}))
    GetDiscoverySummaryResponse.add_member(:agentless_collector_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerAgentlessCollectorInfo, location_name: 'agentlessCollectorSummary', traits: {"smithy.api#documentation" => "<p> Details about Agentless Collector collectors, including status. </p>"}))
    GetDiscoverySummaryResponse.type = Types::GetDiscoverySummaryResponse
    HomeRegionNotSetException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    HomeRegionNotSetException.type = Types::HomeRegionNotSetException
    ImportStatus.add_member(:import_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMPORT_IN_PROGRESS', traits: {"smithy.api#enumValue" => "IMPORT_IN_PROGRESS"}))
    ImportStatus.add_member(:import_complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMPORT_COMPLETE', traits: {"smithy.api#enumValue" => "IMPORT_COMPLETE"}))
    ImportStatus.add_member(:import_complete_with_errors, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMPORT_COMPLETE_WITH_ERRORS', traits: {"smithy.api#enumValue" => "IMPORT_COMPLETE_WITH_ERRORS"}))
    ImportStatus.add_member(:import_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMPORT_FAILED', traits: {"smithy.api#enumValue" => "IMPORT_FAILED"}))
    ImportStatus.add_member(:import_failed_server_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMPORT_FAILED_SERVER_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "IMPORT_FAILED_SERVER_LIMIT_EXCEEDED"}))
    ImportStatus.add_member(:import_failed_record_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMPORT_FAILED_RECORD_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "IMPORT_FAILED_RECORD_LIMIT_EXCEEDED"}))
    ImportStatus.add_member(:import_failed_unsupported_file_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMPORT_FAILED_UNSUPPORTED_FILE_TYPE', traits: {"smithy.api#enumValue" => "IMPORT_FAILED_UNSUPPORTED_FILE_TYPE"}))
    ImportStatus.add_member(:delete_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    ImportStatus.add_member(:delete_complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_COMPLETE', traits: {"smithy.api#enumValue" => "DELETE_COMPLETE"}))
    ImportStatus.add_member(:delete_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_FAILED', traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    ImportStatus.add_member(:delete_failed_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_FAILED_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "DELETE_FAILED_LIMIT_EXCEEDED"}))
    ImportStatus.add_member(:internal_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_ERROR', traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    ImportTask.add_member(:import_task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTaskIdentifier, location_name: 'importTaskId', traits: {"smithy.api#documentation" => "<p>The unique ID for a specific import task. These IDs aren't globally unique, but they are\n      unique within an Amazon Web Services account.</p>"}))
    ImportTask.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken', traits: {"smithy.api#documentation" => "<p>A unique token used to prevent the same import request from occurring more than once. If\n      you didn't provide a token, a token was automatically generated when the import task request\n      was sent.</p>"}))
    ImportTask.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTaskName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A descriptive name for an import task. You can use this name to filter future requests\n      related to this import task, such as identifying applications and servers that were included\n      in this import task. We recommend that you use a meaningful name for each import task.</p>"}))
    ImportTask.add_member(:import_url, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportURL, location_name: 'importUrl', traits: {"smithy.api#documentation" => "<p>The URL for your import file that you've uploaded to Amazon S3.</p>"}))
    ImportTask.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the import task. An import can have the status of\n        <code>IMPORT_COMPLETE</code> and still have some records fail to import from the overall\n      request. More information can be found in the downloadable archive defined in the\n        <code>errorsAndFailedEntriesZip</code> field, or in the Migration Hub management\n      console.</p>"}))
    ImportTask.add_member(:import_request_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'importRequestTime', traits: {"smithy.api#documentation" => "<p>The time that the import task request was made, presented in the Unix time stamp\n      format.</p>"}))
    ImportTask.add_member(:import_completion_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'importCompletionTime', traits: {"smithy.api#documentation" => "<p>The time that the import task request finished, presented in the Unix time stamp\n      format.</p>"}))
    ImportTask.add_member(:import_deleted_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'importDeletedTime', traits: {"smithy.api#documentation" => "<p>The time that the import task request was deleted, presented in the Unix time stamp\n      format.</p>"}))
    ImportTask.add_member(:file_classification, Smithy::Schema::Shapes::ShapeRef.new(shape: FileClassification, location_name: 'fileClassification', traits: {"smithy.api#documentation" => "<p>The type of file detected by the import task.</p>"}))
    ImportTask.add_member(:server_import_success, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'serverImportSuccess', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of server records in the import file that were successfully\n      imported.</p>"}))
    ImportTask.add_member(:server_import_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'serverImportFailure', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of server records in the import file that failed to be imported.</p>"}))
    ImportTask.add_member(:application_import_success, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'applicationImportSuccess', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of application records in the import file that were successfully\n      imported.</p>"}))
    ImportTask.add_member(:application_import_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'applicationImportFailure', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of application records in the import file that failed to be\n      imported.</p>"}))
    ImportTask.add_member(:errors_and_failed_entries_zip, Smithy::Schema::Shapes::ShapeRef.new(shape: S3PresignedUrl, location_name: 'errorsAndFailedEntriesZip', traits: {"smithy.api#documentation" => "<p>A link to a compressed archive folder (in the ZIP format) that contains an error log and a\n      file of failed records. You can use these two files to quickly identify records that failed,\n      why they failed, and correct those records. Afterward, you can upload the corrected file to\n      your Amazon S3 bucket and create another import task request.</p>\n         <p>This field also includes authorization information so you can confirm the authenticity of\n      the compressed archive before you download it.</p>\n         <p>If some records failed to be imported we recommend that you correct the records in the\n      failed entries file and then imports that failed entries file. This prevents you from having\n      to correct and update the larger original file and attempt importing it again.</p>"}))
    ImportTask.type = Types::ImportTask
    ImportTaskFilter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTaskFilterName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name, status, or import task ID for a specific import task.</p>"}))
    ImportTaskFilter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTaskFilterValueList, location_name: 'values', traits: {"smithy.api#documentation" => "<p>An array of strings that you can provide to match against a specific name, status, or\n      import task ID to filter the results for your import task queries.</p>"}))
    ImportTaskFilter.type = Types::ImportTaskFilter
    ImportTaskFilterName.add_member(:import_task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMPORT_TASK_ID', traits: {"smithy.api#enumValue" => "IMPORT_TASK_ID"}))
    ImportTaskFilterName.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STATUS', traits: {"smithy.api#enumValue" => "STATUS"}))
    ImportTaskFilterName.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NAME', traits: {"smithy.api#enumValue" => "NAME"}))
    ImportTaskFilterName.add_member(:file_classification, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FILE_CLASSIFICATION', traits: {"smithy.api#enumValue" => "FILE_CLASSIFICATION"}))
    ImportTaskFilterValueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTaskFilterValue)
    ImportTaskList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTask)
    InvalidParameterException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    InvalidParameterException.type = Types::InvalidParameterException
    InvalidParameterValueException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    InvalidParameterValueException.type = Types::InvalidParameterValueException
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    LimitExceededException.type = Types::LimitExceededException
    ListConfigurationsRequest.add_member(:configuration_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationItemType, location_name: 'configurationType', traits: {"smithy.api#documentation" => "<p>A valid configuration identified by Application Discovery Service. </p>", "smithy.api#required" => {}}))
    ListConfigurationsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>You can filter the request using various logical operators and a\n        <i>key</i>-<i>value</i> format. For example: </p>\n         <p>\n            <code>{\"key\": \"serverType\", \"value\": \"webServer\"}</code>\n         </p>\n         <p>For a complete list of filter options and guidance about using them with this action,\n      see <a href=\"https://docs.aws.amazon.com/application-discovery/latest/userguide/discovery-api-queries.html#ListConfigurations\">Using the ListConfigurations Action</a> in the <i>Amazon Web Services Application Discovery\n        Service User Guide</i>.</p>"}))
    ListConfigurationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The total number of items to return. The maximum value is 100.</p>"}))
    ListConfigurationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Token to retrieve the next set of results. For example, if a previous call to\n      ListConfigurations returned 100 items, but you set\n        <code>ListConfigurationsRequest$maxResults</code> to 10, you received a set of 10 results\n      along with a token. Use that token in this query to get the next set of 10.</p>"}))
    ListConfigurationsRequest.add_member(:order_by, Smithy::Schema::Shapes::ShapeRef.new(shape: OrderByList, location_name: 'orderBy', traits: {"smithy.api#documentation" => "<p>Certain filter criteria return output that can be sorted in ascending or descending\n      order. For a list of output characteristics for each filter, see <a href=\"https://docs.aws.amazon.com/application-discovery/latest/userguide/discovery-api-queries.html#ListConfigurations\">Using the ListConfigurations Action</a> in the <i>Amazon Web Services Application Discovery\n        Service User Guide</i>.</p>"}))
    ListConfigurationsRequest.type = Types::ListConfigurationsRequest
    ListConfigurationsResponse.add_member(:configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: Configurations, location_name: 'configurations', traits: {"smithy.api#documentation" => "<p>Returns configuration details, including the configuration ID, attribute names, and\n      attribute values.</p>"}))
    ListConfigurationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Token to retrieve the next set of results. For example, if your call to\n      ListConfigurations returned 100 items, but you set\n        <code>ListConfigurationsRequest$maxResults</code> to 10, you received a set of 10 results\n      along with this token. Use this token in the next query to retrieve the next set of\n      10.</p>"}))
    ListConfigurationsResponse.type = Types::ListConfigurationsResponse
    ListServerNeighborsRequest.add_member(:configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationId, location_name: 'configurationId', traits: {"smithy.api#documentation" => "<p>Configuration ID of the server for which neighbors are being listed.</p>", "smithy.api#required" => {}}))
    ListServerNeighborsRequest.add_member(:port_information_needed, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'portInformationNeeded', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Flag to indicate if port and protocol information is needed as part of the\n      response.</p>"}))
    ListServerNeighborsRequest.add_member(:neighbor_configuration_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationIdList, location_name: 'neighborConfigurationIds', traits: {"smithy.api#documentation" => "<p>List of configuration IDs to test for one-hop-away.</p>"}))
    ListServerNeighborsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Maximum number of results to return in a single page of output.</p>"}))
    ListServerNeighborsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Token to retrieve the next set of results. For example, if you previously specified 100\n      IDs for <code>ListServerNeighborsRequest$neighborConfigurationIds</code> but set\n        <code>ListServerNeighborsRequest$maxResults</code> to 10, you received a set of 10 results\n      along with a token. Use that token in this query to get the next set of 10.</p>"}))
    ListServerNeighborsRequest.type = Types::ListServerNeighborsRequest
    ListServerNeighborsResponse.add_member(:neighbors, Smithy::Schema::Shapes::ShapeRef.new(shape: NeighborDetailsList, location_name: 'neighbors', traits: {"smithy.api#documentation" => "<p>List of distinct servers that are one hop away from the given server.</p>", "smithy.api#required" => {}}))
    ListServerNeighborsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Token to retrieve the next set of results. For example, if you specified 100 IDs for\n        <code>ListServerNeighborsRequest$neighborConfigurationIds</code> but set\n        <code>ListServerNeighborsRequest$maxResults</code> to 10, you received a set of 10 results\n      along with this token. Use this token in the next query to retrieve the next set of\n      10.</p>"}))
    ListServerNeighborsResponse.add_member(:known_dependency_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'knownDependencyCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Count of distinct servers that are one hop away from the given server.</p>"}))
    ListServerNeighborsResponse.type = Types::ListServerNeighborsResponse
    NeighborConnectionDetail.add_member(:source_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationId, location_name: 'sourceServerId', traits: {"smithy.api#documentation" => "<p>The ID of the server that opened the network connection.</p>", "smithy.api#required" => {}}))
    NeighborConnectionDetail.add_member(:destination_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationId, location_name: 'destinationServerId', traits: {"smithy.api#documentation" => "<p>The ID of the server that accepted the network connection.</p>", "smithy.api#required" => {}}))
    NeighborConnectionDetail.add_member(:destination_port, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedInteger, location_name: 'destinationPort', traits: {"smithy.api#documentation" => "<p>The destination network port for the connection.</p>"}))
    NeighborConnectionDetail.add_member(:transport_protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'transportProtocol', traits: {"smithy.api#documentation" => "<p>The network protocol used for the connection.</p>"}))
    NeighborConnectionDetail.add_member(:connections_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'connectionsCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of open network connections with the neighboring server.</p>", "smithy.api#required" => {}}))
    NeighborConnectionDetail.type = Types::NeighborConnectionDetail
    NeighborDetailsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NeighborConnectionDetail)
    OfferingClass.add_member(:standard, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STANDARD', traits: {"smithy.api#enumValue" => "STANDARD"}))
    OfferingClass.add_member(:convertible, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONVERTIBLE', traits: {"smithy.api#enumValue" => "CONVERTIBLE"}))
    OperationNotPermittedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    OperationNotPermittedException.type = Types::OperationNotPermittedException
    OrderByElement.add_member(:field_name, Smithy::Schema::Shapes::ShapeRef.new(shape: OrderByElementFieldName, location_name: 'fieldName', traits: {"smithy.api#documentation" => "<p>The field on which to order.</p>", "smithy.api#required" => {}}))
    OrderByElement.add_member(:sort_order, Smithy::Schema::Shapes::ShapeRef.new(shape: OrderString, location_name: 'sortOrder', traits: {"smithy.api#documentation" => "<p>Ordering direction.</p>"}))
    OrderByElement.type = Types::OrderByElement
    OrderByList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OrderByElement)
    PurchasingOption.add_member(:all_upfront, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL_UPFRONT', traits: {"smithy.api#enumValue" => "ALL_UPFRONT"}))
    PurchasingOption.add_member(:partial_upfront, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARTIAL_UPFRONT', traits: {"smithy.api#enumValue" => "PARTIAL_UPFRONT"}))
    PurchasingOption.add_member(:no_upfront, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_UPFRONT', traits: {"smithy.api#enumValue" => "NO_UPFRONT"}))
    ReservedInstanceOptions.add_member(:purchasing_option, Smithy::Schema::Shapes::ShapeRef.new(shape: PurchasingOption, location_name: 'purchasingOption', traits: {"smithy.api#documentation" => "<p>\n      The payment plan to use for your Reserved Instance.\n    </p>", "smithy.api#required" => {}}))
    ReservedInstanceOptions.add_member(:offering_class, Smithy::Schema::Shapes::ShapeRef.new(shape: OfferingClass, location_name: 'offeringClass', traits: {"smithy.api#documentation" => "<p>\n    The flexibility to change the instance types needed for your Reserved Instance.\n    </p>", "smithy.api#required" => {}}))
    ReservedInstanceOptions.add_member(:term_length, Smithy::Schema::Shapes::ShapeRef.new(shape: TermLength, location_name: 'termLength', traits: {"smithy.api#documentation" => "<p>\n      The preferred duration of the Reserved Instance term.\n    </p>", "smithy.api#required" => {}}))
    ReservedInstanceOptions.type = Types::ReservedInstanceOptions
    ResourceInUseException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SchemaStorageConfig.key = Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseName)
    SchemaStorageConfig.value = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ServerInternalErrorException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    ServerInternalErrorException.type = Types::ServerInternalErrorException
    StartBatchDeleteConfigurationTaskRequest.add_member(:configuration_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DeletionConfigurationItemType, location_name: 'configurationType', traits: {"smithy.api#documentation" => "<p>\n        The type of configuration item to delete. Supported types are: SERVER.\n      </p>", "smithy.api#required" => {}}))
    StartBatchDeleteConfigurationTaskRequest.add_member(:configuration_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationIdList, location_name: 'configurationIds', traits: {"smithy.api#documentation" => "<p>\n        The list of configuration IDs that will be deleted by the task.\n      </p>", "smithy.api#required" => {}}))
    StartBatchDeleteConfigurationTaskRequest.type = Types::StartBatchDeleteConfigurationTaskRequest
    StartBatchDeleteConfigurationTaskResponse.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'taskId', traits: {"smithy.api#documentation" => "<p>\n        The unique identifier associated with the newly started deletion task.\n      </p>"}))
    StartBatchDeleteConfigurationTaskResponse.type = Types::StartBatchDeleteConfigurationTaskResponse
    StartContinuousExportRequest.type = Types::StartContinuousExportRequest
    StartContinuousExportResponse.add_member(:export_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationsExportId, location_name: 'exportId', traits: {"smithy.api#documentation" => "<p>The unique ID assigned to this export.</p>"}))
    StartContinuousExportResponse.add_member(:s3_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 's3Bucket', traits: {"smithy.api#documentation" => "<p>The name of the s3 bucket where the export data parquet files are stored.</p>"}))
    StartContinuousExportResponse.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>The timestamp representing when the continuous export was started.</p>"}))
    StartContinuousExportResponse.add_member(:data_source, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSource, location_name: 'dataSource', traits: {"smithy.api#documentation" => "<p>The type of data collector used to gather this data (currently only offered for\n      AGENT).</p>"}))
    StartContinuousExportResponse.add_member(:schema_storage_config, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaStorageConfig, location_name: 'schemaStorageConfig', traits: {"smithy.api#documentation" => "<p>A dictionary which describes how the data is stored.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>databaseName</code> - the name of the Glue database used to store the\n          schema.</p>\n            </li>\n         </ul>"}))
    StartContinuousExportResponse.type = Types::StartContinuousExportResponse
    StartDataCollectionByAgentIdsRequest.add_member(:agent_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentIds, location_name: 'agentIds', traits: {"smithy.api#documentation" => "<p>The IDs of the agents from which to start collecting data. If you send a request to an\n      agent ID that you do not have permission to contact, according to your Amazon Web Services account, the\n      service does not throw an exception. Instead, it returns the error in the\n        <i>Description</i> field. If you send a request to multiple agents and you do\n      not have permission to contact some of those agents, the system does not throw an exception.\n      Instead, the system shows <code>Failed</code> in the <i>Description</i>\n      field.</p>", "smithy.api#required" => {}}))
    StartDataCollectionByAgentIdsRequest.type = Types::StartDataCollectionByAgentIdsRequest
    StartDataCollectionByAgentIdsResponse.add_member(:agents_configuration_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentConfigurationStatusList, location_name: 'agentsConfigurationStatus', traits: {"smithy.api#documentation" => "<p>Information about agents that were instructed to start collecting data. Information\n      includes the agent ID, a description of the operation performed, and whether the agent\n      configuration was updated.</p>"}))
    StartDataCollectionByAgentIdsResponse.type = Types::StartDataCollectionByAgentIdsResponse
    StartExportTaskRequest.add_member(:export_data_format, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportDataFormats, location_name: 'exportDataFormat', traits: {"smithy.api#documentation" => "<p>The file format for the returned export data. Default value is <code>CSV</code>.\n        <b>Note:</b>\n            <i>The</i>\n            <code>GRAPHML</code>\n            <i>option has been deprecated.</i>\n         </p>"}))
    StartExportTaskRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportFilters, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>If a filter is present, it selects the single <code>agentId</code> of the Application\n      Discovery Agent for which data is exported. The <code>agentId</code> can be found in the\n      results of the <code>DescribeAgents</code> API or CLI. If no filter is present,\n        <code>startTime</code> and <code>endTime</code> are ignored and exported data includes both\n      Amazon Web Services Application Discovery Service Agentless Collector collectors data and summary data from Application Discovery\n      Agent agents. </p>"}))
    StartExportTaskRequest.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>The start timestamp for exported data from the single Application Discovery Agent\n      selected in the filters. If no value is specified, data is exported starting from the first\n      data collected by the agent.</p>"}))
    StartExportTaskRequest.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>The end timestamp for exported data from the single Application Discovery Agent\n      selected in the filters. If no value is specified, exported data includes the most recent data\n      collected by the agent.</p>"}))
    StartExportTaskRequest.add_member(:preferences, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportPreferences, location_name: 'preferences', traits: {"smithy.api#documentation" => "<p>\n      Indicates the type of data that needs to be exported. Only one \n      <a href=\"https://docs.aws.amazon.com/application-discovery/latest/APIReference/API_ExportPreferences.html\">ExportPreferences</a> can be enabled at any time.\n    </p>"}))
    StartExportTaskRequest.type = Types::StartExportTaskRequest
    StartExportTaskResponse.add_member(:export_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationsExportId, location_name: 'exportId', traits: {"smithy.api#documentation" => "<p>A unique identifier used to query the status of an export request.</p>"}))
    StartExportTaskResponse.type = Types::StartExportTaskResponse
    StartImportTaskRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken', traits: {"smithy.api#documentation" => "<p>Optional. A unique token that you can provide to prevent the same import request from\n      occurring more than once. If you don't provide a token, a token is automatically\n      generated.</p>\n         <p>Sending more than one <code>StartImportTask</code> request with the same client request\n      token will return information about the original import task with that client request\n      token.</p>", "smithy.api#idempotencyToken" => {}}))
    StartImportTaskRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTaskName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A descriptive name for this request. You can use this name to filter future requests\n      related to this import task, such as identifying applications and servers that were included\n      in this import task. We recommend that you use a meaningful name for each import task.</p>", "smithy.api#required" => {}}))
    StartImportTaskRequest.add_member(:import_url, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportURL, location_name: 'importUrl', traits: {"smithy.api#documentation" => "<p>The URL for your import file that you've uploaded to Amazon S3.</p>\n         <note>\n            <p>If you're using the Amazon Web Services CLI, this URL is structured as follows:\n          <code>s3://BucketName/ImportFileName.CSV</code>\n            </p>\n         </note>", "smithy.api#required" => {}}))
    StartImportTaskRequest.type = Types::StartImportTaskRequest
    StartImportTaskResponse.add_member(:task, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTask, location_name: 'task', traits: {"smithy.api#documentation" => "<p>An array of information related to the import task request including status information,\n      times, IDs, the Amazon S3 Object URL for the import file, and more. </p>"}))
    StartImportTaskResponse.type = Types::StartImportTaskResponse
    StopContinuousExportRequest.add_member(:export_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationsExportId, location_name: 'exportId', traits: {"smithy.api#documentation" => "<p>The unique ID assigned to this export.</p>", "smithy.api#required" => {}}))
    StopContinuousExportRequest.type = Types::StopContinuousExportRequest
    StopContinuousExportResponse.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>Timestamp that represents when this continuous export started collecting\n      data.</p>"}))
    StopContinuousExportResponse.add_member(:stop_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'stopTime', traits: {"smithy.api#documentation" => "<p>Timestamp that represents when this continuous export was stopped.</p>"}))
    StopContinuousExportResponse.type = Types::StopContinuousExportResponse
    StopDataCollectionByAgentIdsRequest.add_member(:agent_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentIds, location_name: 'agentIds', traits: {"smithy.api#documentation" => "<p>The IDs of the agents from which to stop collecting data.</p>", "smithy.api#required" => {}}))
    StopDataCollectionByAgentIdsRequest.type = Types::StopDataCollectionByAgentIdsRequest
    StopDataCollectionByAgentIdsResponse.add_member(:agents_configuration_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentConfigurationStatusList, location_name: 'agentsConfigurationStatus', traits: {"smithy.api#documentation" => "<p>Information about the agents that were instructed to stop collecting data. Information\n      includes the agent ID, a description of the operation performed, and whether the agent\n      configuration was updated.</p>"}))
    StopDataCollectionByAgentIdsResponse.type = Types::StopDataCollectionByAgentIdsResponse
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The type of tag on which to filter.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>A value for a tag key on which to filter.</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagFilter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name of the tag filter.</p>", "smithy.api#required" => {}}))
    TagFilter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValues, location_name: 'values', traits: {"smithy.api#documentation" => "<p>Values for the tag filter.</p>", "smithy.api#required" => {}}))
    TagFilter.type = Types::TagFilter
    TagFilters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagFilter)
    TagSet.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag, traits: {"smithy.api#xmlName" => "item"})
    Tenancy.add_member(:dedicated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEDICATED', traits: {"smithy.api#enumValue" => "DEDICATED"}))
    Tenancy.add_member(:shared, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHARED', traits: {"smithy.api#enumValue" => "SHARED"}))
    TermLength.add_member(:one_year, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ONE_YEAR', traits: {"smithy.api#enumValue" => "ONE_YEAR"}))
    TermLength.add_member(:three_year, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'THREE_YEAR', traits: {"smithy.api#enumValue" => "THREE_YEAR"}))
    ToDeleteIdentifierList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTaskIdentifier)
    UpdateApplicationRequest.add_member(:configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'configurationId', traits: {"smithy.api#documentation" => "<p>Configuration ID of the application to be updated.</p>", "smithy.api#required" => {}}))
    UpdateApplicationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>New name of the application to be updated.</p>"}))
    UpdateApplicationRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>New description of the application to be updated.</p>"}))
    UpdateApplicationRequest.add_member(:wave, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationWave, location_name: 'wave', traits: {"smithy.api#documentation" => "<p>The new migration wave of the application that you want to update.</p>"}))
    UpdateApplicationRequest.type = Types::UpdateApplicationRequest
    UpdateApplicationResponse.type = Types::UpdateApplicationResponse
    UsageMetricBasis.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageMetricBasisName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>\n      A utilization metric that is used by the recommendations.\n    </p>"}))
    UsageMetricBasis.add_member(:percentage_adjust, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageMetricPercentageAdjust, location_name: 'percentageAdjust', traits: {"smithy.api#documentation" => "<p>\n      Specifies the percentage of the specified utilization metric that is used by the recommendations.\n    </p>"}))
    UsageMetricBasis.type = Types::UsageMetricBasis
    OrderString.add_member(:asc, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASC', traits: {"smithy.api#enumValue" => "ASC"}))
    OrderString.add_member(:desc, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DESC', traits: {"smithy.api#enumValue" => "DESC"}))

    AWSPoseidonServiceV20151101 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.applicationdiscoveryservice#AWSPoseidonService_V2015_11_01"
      service.name = "AWSPoseidonServiceV20151101"
      service.version = "2015-11-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Application Discovery Service", "arnNamespace" => "discovery", "cloudFormationName" => "ApplicationDiscoveryService", "cloudTrailEventSource" => "applicationdiscoveryservice.amazonaws.com", "docId" => "discovery-2015-11-01", "endpointPrefix" => "discovery"}, "aws.auth#sigv4" => {"name" => "discovery"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Application Discovery Service", "smithy.api#xmlNamespace" => {"uri" => "http://ec2.amazon.com/awsposiedon/V2015_11_01/"}}
      service.add_operation(:associate_configuration_items_to_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#AssociateConfigurationItemsToApplication"
        operation.name = "AssociateConfigurationItemsToApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateConfigurationItemsToApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateConfigurationItemsToApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionNotSetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:batch_delete_agents, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#BatchDeleteAgents"
        operation.name = "BatchDeleteAgents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteAgentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteAgentsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:batch_delete_import_data, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#BatchDeleteImportData"
        operation.name = "BatchDeleteImportData"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteImportDataRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteImportDataResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionNotSetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:create_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#CreateApplication"
        operation.name = "CreateApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionNotSetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:create_tags, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#CreateTags"
        operation.name = "CreateTags"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTagsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTagsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionNotSetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:delete_applications, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#DeleteApplications"
        operation.name = "DeleteApplications"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionNotSetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:delete_tags, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#DeleteTags"
        operation.name = "DeleteTags"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTagsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTagsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionNotSetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:describe_agents, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#DescribeAgents"
        operation.name = "DescribeAgents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAgentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAgentsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionNotSetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalErrorException)
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "DescribeAgentsSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::DescribeAgents.new
      end)
      service.add_operation(:describe_batch_delete_configuration_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#DescribeBatchDeleteConfigurationTask"
        operation.name = "DescribeBatchDeleteConfigurationTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBatchDeleteConfigurationTaskRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBatchDeleteConfigurationTaskResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionNotSetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:describe_configurations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#DescribeConfigurations"
        operation.name = "DescribeConfigurations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConfigurationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConfigurationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionNotSetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:describe_continuous_exports, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#DescribeContinuousExports"
        operation.name = "DescribeContinuousExports"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeContinuousExportsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeContinuousExportsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionNotSetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalErrorException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeContinuousExports.new
      end)
      service.add_operation(:describe_export_configurations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#DescribeExportConfigurations"
        operation.name = "DescribeExportConfigurations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeExportConfigurationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeExportConfigurationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionNotSetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalErrorException)
        operation.traits = {"smithy.api#deprecated" => {}}
        operation[:paginator] = Paginators::DescribeExportConfigurations.new
      end)
      service.add_operation(:describe_export_tasks, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#DescribeExportTasks"
        operation.name = "DescribeExportTasks"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeExportTasksRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeExportTasksResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionNotSetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalErrorException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeExportTasks.new
      end)
      service.add_operation(:describe_import_tasks, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#DescribeImportTasks"
        operation.name = "DescribeImportTasks"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeImportTasksRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeImportTasksResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionNotSetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalErrorException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeImportTasks.new
      end)
      service.add_operation(:describe_tags, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#DescribeTags"
        operation.name = "DescribeTags"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTagsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTagsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionNotSetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalErrorException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeTags.new
      end)
      service.add_operation(:disassociate_configuration_items_from_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#DisassociateConfigurationItemsFromApplication"
        operation.name = "DisassociateConfigurationItemsFromApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateConfigurationItemsFromApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateConfigurationItemsFromApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionNotSetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:export_configurations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#ExportConfigurations"
        operation.name = "ExportConfigurations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ExportConfigurationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionNotSetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalErrorException)
        operation.traits = {"smithy.api#deprecated" => {}}
      end)
      service.add_operation(:get_discovery_summary, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#GetDiscoverySummary"
        operation.name = "GetDiscoverySummary"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDiscoverySummaryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDiscoverySummaryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionNotSetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:list_configurations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#ListConfigurations"
        operation.name = "ListConfigurations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConfigurationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConfigurationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionNotSetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalErrorException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListConfigurations.new
      end)
      service.add_operation(:list_server_neighbors, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#ListServerNeighbors"
        operation.name = "ListServerNeighbors"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServerNeighborsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServerNeighborsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionNotSetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:start_batch_delete_configuration_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#StartBatchDeleteConfigurationTask"
        operation.name = "StartBatchDeleteConfigurationTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartBatchDeleteConfigurationTaskRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartBatchDeleteConfigurationTaskResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionNotSetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:start_continuous_export, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#StartContinuousExport"
        operation.name = "StartContinuousExport"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartContinuousExportRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartContinuousExportResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionNotSetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:start_data_collection_by_agent_ids, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#StartDataCollectionByAgentIds"
        operation.name = "StartDataCollectionByAgentIds"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartDataCollectionByAgentIdsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartDataCollectionByAgentIdsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionNotSetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:start_export_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#StartExportTask"
        operation.name = "StartExportTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartExportTaskRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartExportTaskResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionNotSetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:start_import_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#StartImportTask"
        operation.name = "StartImportTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartImportTaskRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartImportTaskResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionNotSetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:stop_continuous_export, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#StopContinuousExport"
        operation.name = "StopContinuousExport"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopContinuousExportRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopContinuousExportResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionNotSetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:stop_data_collection_by_agent_ids, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#StopDataCollectionByAgentIds"
        operation.name = "StopDataCollectionByAgentIds"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopDataCollectionByAgentIdsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopDataCollectionByAgentIdsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionNotSetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalErrorException)
        operation.traits = {}
      end)
      service.add_operation(:update_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationdiscoveryservice#UpdateApplication"
        operation.name = "UpdateApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionNotSetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalErrorException)
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
