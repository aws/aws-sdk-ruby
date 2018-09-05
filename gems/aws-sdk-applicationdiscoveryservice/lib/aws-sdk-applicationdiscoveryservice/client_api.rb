# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ApplicationDiscoveryService
  # @api private
  module ClientApi

    include Seahorse::Model

    AgentConfigurationStatus = Shapes::StructureShape.new(name: 'AgentConfigurationStatus')
    AgentConfigurationStatusList = Shapes::ListShape.new(name: 'AgentConfigurationStatusList')
    AgentId = Shapes::StringShape.new(name: 'AgentId')
    AgentIds = Shapes::ListShape.new(name: 'AgentIds')
    AgentInfo = Shapes::StructureShape.new(name: 'AgentInfo')
    AgentNetworkInfo = Shapes::StructureShape.new(name: 'AgentNetworkInfo')
    AgentNetworkInfoList = Shapes::ListShape.new(name: 'AgentNetworkInfoList')
    AgentStatus = Shapes::StringShape.new(name: 'AgentStatus')
    AgentsInfo = Shapes::ListShape.new(name: 'AgentsInfo')
    ApplicationId = Shapes::StringShape.new(name: 'ApplicationId')
    ApplicationIdsList = Shapes::ListShape.new(name: 'ApplicationIdsList')
    AssociateConfigurationItemsToApplicationRequest = Shapes::StructureShape.new(name: 'AssociateConfigurationItemsToApplicationRequest')
    AssociateConfigurationItemsToApplicationResponse = Shapes::StructureShape.new(name: 'AssociateConfigurationItemsToApplicationResponse')
    AuthorizationErrorException = Shapes::StructureShape.new(name: 'AuthorizationErrorException')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BoxedInteger = Shapes::IntegerShape.new(name: 'BoxedInteger')
    Condition = Shapes::StringShape.new(name: 'Condition')
    Configuration = Shapes::MapShape.new(name: 'Configuration')
    ConfigurationId = Shapes::StringShape.new(name: 'ConfigurationId')
    ConfigurationIdList = Shapes::ListShape.new(name: 'ConfigurationIdList')
    ConfigurationItemType = Shapes::StringShape.new(name: 'ConfigurationItemType')
    ConfigurationTag = Shapes::StructureShape.new(name: 'ConfigurationTag')
    ConfigurationTagSet = Shapes::ListShape.new(name: 'ConfigurationTagSet')
    Configurations = Shapes::ListShape.new(name: 'Configurations')
    ConfigurationsDownloadUrl = Shapes::StringShape.new(name: 'ConfigurationsDownloadUrl')
    ConfigurationsExportId = Shapes::StringShape.new(name: 'ConfigurationsExportId')
    ConflictErrorException = Shapes::StructureShape.new(name: 'ConflictErrorException')
    ContinuousExportDescription = Shapes::StructureShape.new(name: 'ContinuousExportDescription')
    ContinuousExportDescriptions = Shapes::ListShape.new(name: 'ContinuousExportDescriptions')
    ContinuousExportIds = Shapes::ListShape.new(name: 'ContinuousExportIds')
    ContinuousExportStatus = Shapes::StringShape.new(name: 'ContinuousExportStatus')
    CreateApplicationRequest = Shapes::StructureShape.new(name: 'CreateApplicationRequest')
    CreateApplicationResponse = Shapes::StructureShape.new(name: 'CreateApplicationResponse')
    CreateTagsRequest = Shapes::StructureShape.new(name: 'CreateTagsRequest')
    CreateTagsResponse = Shapes::StructureShape.new(name: 'CreateTagsResponse')
    CustomerAgentInfo = Shapes::StructureShape.new(name: 'CustomerAgentInfo')
    CustomerConnectorInfo = Shapes::StructureShape.new(name: 'CustomerConnectorInfo')
    DataSource = Shapes::StringShape.new(name: 'DataSource')
    DatabaseName = Shapes::StringShape.new(name: 'DatabaseName')
    DeleteApplicationsRequest = Shapes::StructureShape.new(name: 'DeleteApplicationsRequest')
    DeleteApplicationsResponse = Shapes::StructureShape.new(name: 'DeleteApplicationsResponse')
    DeleteTagsRequest = Shapes::StructureShape.new(name: 'DeleteTagsRequest')
    DeleteTagsResponse = Shapes::StructureShape.new(name: 'DeleteTagsResponse')
    DescribeAgentsRequest = Shapes::StructureShape.new(name: 'DescribeAgentsRequest')
    DescribeAgentsResponse = Shapes::StructureShape.new(name: 'DescribeAgentsResponse')
    DescribeConfigurationsAttribute = Shapes::MapShape.new(name: 'DescribeConfigurationsAttribute')
    DescribeConfigurationsAttributes = Shapes::ListShape.new(name: 'DescribeConfigurationsAttributes')
    DescribeConfigurationsRequest = Shapes::StructureShape.new(name: 'DescribeConfigurationsRequest')
    DescribeConfigurationsResponse = Shapes::StructureShape.new(name: 'DescribeConfigurationsResponse')
    DescribeContinuousExportsMaxResults = Shapes::IntegerShape.new(name: 'DescribeContinuousExportsMaxResults')
    DescribeContinuousExportsRequest = Shapes::StructureShape.new(name: 'DescribeContinuousExportsRequest')
    DescribeContinuousExportsResponse = Shapes::StructureShape.new(name: 'DescribeContinuousExportsResponse')
    DescribeExportConfigurationsRequest = Shapes::StructureShape.new(name: 'DescribeExportConfigurationsRequest')
    DescribeExportConfigurationsResponse = Shapes::StructureShape.new(name: 'DescribeExportConfigurationsResponse')
    DescribeExportTasksRequest = Shapes::StructureShape.new(name: 'DescribeExportTasksRequest')
    DescribeExportTasksResponse = Shapes::StructureShape.new(name: 'DescribeExportTasksResponse')
    DescribeTagsRequest = Shapes::StructureShape.new(name: 'DescribeTagsRequest')
    DescribeTagsResponse = Shapes::StructureShape.new(name: 'DescribeTagsResponse')
    DisassociateConfigurationItemsFromApplicationRequest = Shapes::StructureShape.new(name: 'DisassociateConfigurationItemsFromApplicationRequest')
    DisassociateConfigurationItemsFromApplicationResponse = Shapes::StructureShape.new(name: 'DisassociateConfigurationItemsFromApplicationResponse')
    ExportConfigurationsResponse = Shapes::StructureShape.new(name: 'ExportConfigurationsResponse')
    ExportDataFormat = Shapes::StringShape.new(name: 'ExportDataFormat')
    ExportDataFormats = Shapes::ListShape.new(name: 'ExportDataFormats')
    ExportFilter = Shapes::StructureShape.new(name: 'ExportFilter')
    ExportFilters = Shapes::ListShape.new(name: 'ExportFilters')
    ExportIds = Shapes::ListShape.new(name: 'ExportIds')
    ExportInfo = Shapes::StructureShape.new(name: 'ExportInfo')
    ExportRequestTime = Shapes::TimestampShape.new(name: 'ExportRequestTime')
    ExportStatus = Shapes::StringShape.new(name: 'ExportStatus')
    ExportStatusMessage = Shapes::StringShape.new(name: 'ExportStatusMessage')
    ExportsInfo = Shapes::ListShape.new(name: 'ExportsInfo')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterName = Shapes::StringShape.new(name: 'FilterName')
    FilterValue = Shapes::StringShape.new(name: 'FilterValue')
    FilterValues = Shapes::ListShape.new(name: 'FilterValues')
    Filters = Shapes::ListShape.new(name: 'Filters')
    GetDiscoverySummaryRequest = Shapes::StructureShape.new(name: 'GetDiscoverySummaryRequest')
    GetDiscoverySummaryResponse = Shapes::StructureShape.new(name: 'GetDiscoverySummaryResponse')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    InvalidParameterValueException = Shapes::StructureShape.new(name: 'InvalidParameterValueException')
    ListConfigurationsRequest = Shapes::StructureShape.new(name: 'ListConfigurationsRequest')
    ListConfigurationsResponse = Shapes::StructureShape.new(name: 'ListConfigurationsResponse')
    ListServerNeighborsRequest = Shapes::StructureShape.new(name: 'ListServerNeighborsRequest')
    ListServerNeighborsResponse = Shapes::StructureShape.new(name: 'ListServerNeighborsResponse')
    Long = Shapes::IntegerShape.new(name: 'Long')
    Message = Shapes::StringShape.new(name: 'Message')
    NeighborConnectionDetail = Shapes::StructureShape.new(name: 'NeighborConnectionDetail')
    NeighborDetailsList = Shapes::ListShape.new(name: 'NeighborDetailsList')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OperationNotPermittedException = Shapes::StructureShape.new(name: 'OperationNotPermittedException')
    OrderByElement = Shapes::StructureShape.new(name: 'OrderByElement')
    OrderByList = Shapes::ListShape.new(name: 'OrderByList')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    S3Bucket = Shapes::StringShape.new(name: 'S3Bucket')
    SchemaStorageConfig = Shapes::MapShape.new(name: 'SchemaStorageConfig')
    ServerInternalErrorException = Shapes::StructureShape.new(name: 'ServerInternalErrorException')
    StartContinuousExportRequest = Shapes::StructureShape.new(name: 'StartContinuousExportRequest')
    StartContinuousExportResponse = Shapes::StructureShape.new(name: 'StartContinuousExportResponse')
    StartDataCollectionByAgentIdsRequest = Shapes::StructureShape.new(name: 'StartDataCollectionByAgentIdsRequest')
    StartDataCollectionByAgentIdsResponse = Shapes::StructureShape.new(name: 'StartDataCollectionByAgentIdsResponse')
    StartExportTaskRequest = Shapes::StructureShape.new(name: 'StartExportTaskRequest')
    StartExportTaskResponse = Shapes::StructureShape.new(name: 'StartExportTaskResponse')
    StopContinuousExportRequest = Shapes::StructureShape.new(name: 'StopContinuousExportRequest')
    StopContinuousExportResponse = Shapes::StructureShape.new(name: 'StopContinuousExportResponse')
    StopDataCollectionByAgentIdsRequest = Shapes::StructureShape.new(name: 'StopDataCollectionByAgentIdsRequest')
    StopDataCollectionByAgentIdsResponse = Shapes::StructureShape.new(name: 'StopDataCollectionByAgentIdsResponse')
    String = Shapes::StringShape.new(name: 'String')
    StringMax255 = Shapes::StringShape.new(name: 'StringMax255')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagFilter = Shapes::StructureShape.new(name: 'TagFilter')
    TagFilters = Shapes::ListShape.new(name: 'TagFilters')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagSet = Shapes::ListShape.new(name: 'TagSet')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TimeStamp = Shapes::TimestampShape.new(name: 'TimeStamp')
    UpdateApplicationRequest = Shapes::StructureShape.new(name: 'UpdateApplicationRequest')
    UpdateApplicationResponse = Shapes::StructureShape.new(name: 'UpdateApplicationResponse')
    orderString = Shapes::StringShape.new(name: 'orderString')

    AgentConfigurationStatus.add_member(:agent_id, Shapes::ShapeRef.new(shape: String, location_name: "agentId"))
    AgentConfigurationStatus.add_member(:operation_succeeded, Shapes::ShapeRef.new(shape: Boolean, location_name: "operationSucceeded"))
    AgentConfigurationStatus.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    AgentConfigurationStatus.struct_class = Types::AgentConfigurationStatus

    AgentConfigurationStatusList.member = Shapes::ShapeRef.new(shape: AgentConfigurationStatus)

    AgentIds.member = Shapes::ShapeRef.new(shape: AgentId)

    AgentInfo.add_member(:agent_id, Shapes::ShapeRef.new(shape: AgentId, location_name: "agentId"))
    AgentInfo.add_member(:host_name, Shapes::ShapeRef.new(shape: String, location_name: "hostName"))
    AgentInfo.add_member(:agent_network_info_list, Shapes::ShapeRef.new(shape: AgentNetworkInfoList, location_name: "agentNetworkInfoList"))
    AgentInfo.add_member(:connector_id, Shapes::ShapeRef.new(shape: String, location_name: "connectorId"))
    AgentInfo.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "version"))
    AgentInfo.add_member(:health, Shapes::ShapeRef.new(shape: AgentStatus, location_name: "health"))
    AgentInfo.add_member(:last_health_ping_time, Shapes::ShapeRef.new(shape: String, location_name: "lastHealthPingTime"))
    AgentInfo.add_member(:collection_status, Shapes::ShapeRef.new(shape: String, location_name: "collectionStatus"))
    AgentInfo.add_member(:agent_type, Shapes::ShapeRef.new(shape: String, location_name: "agentType"))
    AgentInfo.add_member(:registered_time, Shapes::ShapeRef.new(shape: String, location_name: "registeredTime"))
    AgentInfo.struct_class = Types::AgentInfo

    AgentNetworkInfo.add_member(:ip_address, Shapes::ShapeRef.new(shape: String, location_name: "ipAddress"))
    AgentNetworkInfo.add_member(:mac_address, Shapes::ShapeRef.new(shape: String, location_name: "macAddress"))
    AgentNetworkInfo.struct_class = Types::AgentNetworkInfo

    AgentNetworkInfoList.member = Shapes::ShapeRef.new(shape: AgentNetworkInfo)

    AgentsInfo.member = Shapes::ShapeRef.new(shape: AgentInfo)

    ApplicationIdsList.member = Shapes::ShapeRef.new(shape: ApplicationId)

    AssociateConfigurationItemsToApplicationRequest.add_member(:application_configuration_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location_name: "applicationConfigurationId"))
    AssociateConfigurationItemsToApplicationRequest.add_member(:configuration_ids, Shapes::ShapeRef.new(shape: ConfigurationIdList, required: true, location_name: "configurationIds"))
    AssociateConfigurationItemsToApplicationRequest.struct_class = Types::AssociateConfigurationItemsToApplicationRequest

    AssociateConfigurationItemsToApplicationResponse.struct_class = Types::AssociateConfigurationItemsToApplicationResponse

    Configuration.key = Shapes::ShapeRef.new(shape: String)
    Configuration.value = Shapes::ShapeRef.new(shape: String)

    ConfigurationIdList.member = Shapes::ShapeRef.new(shape: ConfigurationId)

    ConfigurationTag.add_member(:configuration_type, Shapes::ShapeRef.new(shape: ConfigurationItemType, location_name: "configurationType"))
    ConfigurationTag.add_member(:configuration_id, Shapes::ShapeRef.new(shape: ConfigurationId, location_name: "configurationId"))
    ConfigurationTag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, location_name: "key"))
    ConfigurationTag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "value"))
    ConfigurationTag.add_member(:time_of_creation, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "timeOfCreation"))
    ConfigurationTag.struct_class = Types::ConfigurationTag

    ConfigurationTagSet.member = Shapes::ShapeRef.new(shape: ConfigurationTag)

    Configurations.member = Shapes::ShapeRef.new(shape: Configuration)

    ContinuousExportDescription.add_member(:export_id, Shapes::ShapeRef.new(shape: ConfigurationsExportId, location_name: "exportId"))
    ContinuousExportDescription.add_member(:status, Shapes::ShapeRef.new(shape: ContinuousExportStatus, location_name: "status"))
    ContinuousExportDescription.add_member(:status_detail, Shapes::ShapeRef.new(shape: StringMax255, location_name: "statusDetail"))
    ContinuousExportDescription.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3Bucket, location_name: "s3Bucket"))
    ContinuousExportDescription.add_member(:start_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "startTime"))
    ContinuousExportDescription.add_member(:stop_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "stopTime"))
    ContinuousExportDescription.add_member(:data_source, Shapes::ShapeRef.new(shape: DataSource, location_name: "dataSource"))
    ContinuousExportDescription.add_member(:schema_storage_config, Shapes::ShapeRef.new(shape: SchemaStorageConfig, location_name: "schemaStorageConfig"))
    ContinuousExportDescription.struct_class = Types::ContinuousExportDescription

    ContinuousExportDescriptions.member = Shapes::ShapeRef.new(shape: ContinuousExportDescription)

    ContinuousExportIds.member = Shapes::ShapeRef.new(shape: ConfigurationsExportId)

    CreateApplicationRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    CreateApplicationRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    CreateApplicationRequest.struct_class = Types::CreateApplicationRequest

    CreateApplicationResponse.add_member(:configuration_id, Shapes::ShapeRef.new(shape: String, location_name: "configurationId"))
    CreateApplicationResponse.struct_class = Types::CreateApplicationResponse

    CreateTagsRequest.add_member(:configuration_ids, Shapes::ShapeRef.new(shape: ConfigurationIdList, required: true, location_name: "configurationIds"))
    CreateTagsRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagSet, required: true, location_name: "tags"))
    CreateTagsRequest.struct_class = Types::CreateTagsRequest

    CreateTagsResponse.struct_class = Types::CreateTagsResponse

    CustomerAgentInfo.add_member(:active_agents, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "activeAgents"))
    CustomerAgentInfo.add_member(:healthy_agents, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "healthyAgents"))
    CustomerAgentInfo.add_member(:black_listed_agents, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "blackListedAgents"))
    CustomerAgentInfo.add_member(:shutdown_agents, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "shutdownAgents"))
    CustomerAgentInfo.add_member(:unhealthy_agents, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "unhealthyAgents"))
    CustomerAgentInfo.add_member(:total_agents, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "totalAgents"))
    CustomerAgentInfo.add_member(:unknown_agents, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "unknownAgents"))
    CustomerAgentInfo.struct_class = Types::CustomerAgentInfo

    CustomerConnectorInfo.add_member(:active_connectors, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "activeConnectors"))
    CustomerConnectorInfo.add_member(:healthy_connectors, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "healthyConnectors"))
    CustomerConnectorInfo.add_member(:black_listed_connectors, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "blackListedConnectors"))
    CustomerConnectorInfo.add_member(:shutdown_connectors, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "shutdownConnectors"))
    CustomerConnectorInfo.add_member(:unhealthy_connectors, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "unhealthyConnectors"))
    CustomerConnectorInfo.add_member(:total_connectors, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "totalConnectors"))
    CustomerConnectorInfo.add_member(:unknown_connectors, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "unknownConnectors"))
    CustomerConnectorInfo.struct_class = Types::CustomerConnectorInfo

    DeleteApplicationsRequest.add_member(:configuration_ids, Shapes::ShapeRef.new(shape: ApplicationIdsList, required: true, location_name: "configurationIds"))
    DeleteApplicationsRequest.struct_class = Types::DeleteApplicationsRequest

    DeleteApplicationsResponse.struct_class = Types::DeleteApplicationsResponse

    DeleteTagsRequest.add_member(:configuration_ids, Shapes::ShapeRef.new(shape: ConfigurationIdList, required: true, location_name: "configurationIds"))
    DeleteTagsRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagSet, location_name: "tags"))
    DeleteTagsRequest.struct_class = Types::DeleteTagsRequest

    DeleteTagsResponse.struct_class = Types::DeleteTagsResponse

    DescribeAgentsRequest.add_member(:agent_ids, Shapes::ShapeRef.new(shape: AgentIds, location_name: "agentIds"))
    DescribeAgentsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "filters"))
    DescribeAgentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "maxResults"))
    DescribeAgentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeAgentsRequest.struct_class = Types::DescribeAgentsRequest

    DescribeAgentsResponse.add_member(:agents_info, Shapes::ShapeRef.new(shape: AgentsInfo, location_name: "agentsInfo"))
    DescribeAgentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeAgentsResponse.struct_class = Types::DescribeAgentsResponse

    DescribeConfigurationsAttribute.key = Shapes::ShapeRef.new(shape: String)
    DescribeConfigurationsAttribute.value = Shapes::ShapeRef.new(shape: String)

    DescribeConfigurationsAttributes.member = Shapes::ShapeRef.new(shape: DescribeConfigurationsAttribute)

    DescribeConfigurationsRequest.add_member(:configuration_ids, Shapes::ShapeRef.new(shape: ConfigurationIdList, required: true, location_name: "configurationIds"))
    DescribeConfigurationsRequest.struct_class = Types::DescribeConfigurationsRequest

    DescribeConfigurationsResponse.add_member(:configurations, Shapes::ShapeRef.new(shape: DescribeConfigurationsAttributes, location_name: "configurations"))
    DescribeConfigurationsResponse.struct_class = Types::DescribeConfigurationsResponse

    DescribeContinuousExportsRequest.add_member(:export_ids, Shapes::ShapeRef.new(shape: ContinuousExportIds, location_name: "exportIds"))
    DescribeContinuousExportsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: DescribeContinuousExportsMaxResults, location_name: "maxResults"))
    DescribeContinuousExportsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeContinuousExportsRequest.struct_class = Types::DescribeContinuousExportsRequest

    DescribeContinuousExportsResponse.add_member(:descriptions, Shapes::ShapeRef.new(shape: ContinuousExportDescriptions, location_name: "descriptions"))
    DescribeContinuousExportsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeContinuousExportsResponse.struct_class = Types::DescribeContinuousExportsResponse

    DescribeExportConfigurationsRequest.add_member(:export_ids, Shapes::ShapeRef.new(shape: ExportIds, location_name: "exportIds"))
    DescribeExportConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "maxResults"))
    DescribeExportConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeExportConfigurationsRequest.struct_class = Types::DescribeExportConfigurationsRequest

    DescribeExportConfigurationsResponse.add_member(:exports_info, Shapes::ShapeRef.new(shape: ExportsInfo, location_name: "exportsInfo"))
    DescribeExportConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeExportConfigurationsResponse.struct_class = Types::DescribeExportConfigurationsResponse

    DescribeExportTasksRequest.add_member(:export_ids, Shapes::ShapeRef.new(shape: ExportIds, location_name: "exportIds"))
    DescribeExportTasksRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ExportFilters, location_name: "filters"))
    DescribeExportTasksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "maxResults"))
    DescribeExportTasksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeExportTasksRequest.struct_class = Types::DescribeExportTasksRequest

    DescribeExportTasksResponse.add_member(:exports_info, Shapes::ShapeRef.new(shape: ExportsInfo, location_name: "exportsInfo"))
    DescribeExportTasksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeExportTasksResponse.struct_class = Types::DescribeExportTasksResponse

    DescribeTagsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: TagFilters, location_name: "filters"))
    DescribeTagsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "maxResults"))
    DescribeTagsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeTagsRequest.struct_class = Types::DescribeTagsRequest

    DescribeTagsResponse.add_member(:tags, Shapes::ShapeRef.new(shape: ConfigurationTagSet, location_name: "tags"))
    DescribeTagsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeTagsResponse.struct_class = Types::DescribeTagsResponse

    DisassociateConfigurationItemsFromApplicationRequest.add_member(:application_configuration_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location_name: "applicationConfigurationId"))
    DisassociateConfigurationItemsFromApplicationRequest.add_member(:configuration_ids, Shapes::ShapeRef.new(shape: ConfigurationIdList, required: true, location_name: "configurationIds"))
    DisassociateConfigurationItemsFromApplicationRequest.struct_class = Types::DisassociateConfigurationItemsFromApplicationRequest

    DisassociateConfigurationItemsFromApplicationResponse.struct_class = Types::DisassociateConfigurationItemsFromApplicationResponse

    ExportConfigurationsResponse.add_member(:export_id, Shapes::ShapeRef.new(shape: ConfigurationsExportId, location_name: "exportId"))
    ExportConfigurationsResponse.struct_class = Types::ExportConfigurationsResponse

    ExportDataFormats.member = Shapes::ShapeRef.new(shape: ExportDataFormat)

    ExportFilter.add_member(:name, Shapes::ShapeRef.new(shape: FilterName, required: true, location_name: "name"))
    ExportFilter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValues, required: true, location_name: "values"))
    ExportFilter.add_member(:condition, Shapes::ShapeRef.new(shape: Condition, required: true, location_name: "condition"))
    ExportFilter.struct_class = Types::ExportFilter

    ExportFilters.member = Shapes::ShapeRef.new(shape: ExportFilter)

    ExportIds.member = Shapes::ShapeRef.new(shape: ConfigurationsExportId)

    ExportInfo.add_member(:export_id, Shapes::ShapeRef.new(shape: ConfigurationsExportId, required: true, location_name: "exportId"))
    ExportInfo.add_member(:export_status, Shapes::ShapeRef.new(shape: ExportStatus, required: true, location_name: "exportStatus"))
    ExportInfo.add_member(:status_message, Shapes::ShapeRef.new(shape: ExportStatusMessage, required: true, location_name: "statusMessage"))
    ExportInfo.add_member(:configurations_download_url, Shapes::ShapeRef.new(shape: ConfigurationsDownloadUrl, location_name: "configurationsDownloadUrl"))
    ExportInfo.add_member(:export_request_time, Shapes::ShapeRef.new(shape: ExportRequestTime, required: true, location_name: "exportRequestTime"))
    ExportInfo.add_member(:is_truncated, Shapes::ShapeRef.new(shape: Boolean, location_name: "isTruncated"))
    ExportInfo.add_member(:requested_start_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "requestedStartTime"))
    ExportInfo.add_member(:requested_end_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "requestedEndTime"))
    ExportInfo.struct_class = Types::ExportInfo

    ExportsInfo.member = Shapes::ShapeRef.new(shape: ExportInfo)

    Filter.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    Filter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValues, required: true, location_name: "values"))
    Filter.add_member(:condition, Shapes::ShapeRef.new(shape: Condition, required: true, location_name: "condition"))
    Filter.struct_class = Types::Filter

    FilterValues.member = Shapes::ShapeRef.new(shape: FilterValue)

    Filters.member = Shapes::ShapeRef.new(shape: Filter)

    GetDiscoverySummaryRequest.struct_class = Types::GetDiscoverySummaryRequest

    GetDiscoverySummaryResponse.add_member(:servers, Shapes::ShapeRef.new(shape: Long, location_name: "servers"))
    GetDiscoverySummaryResponse.add_member(:applications, Shapes::ShapeRef.new(shape: Long, location_name: "applications"))
    GetDiscoverySummaryResponse.add_member(:servers_mapped_to_applications, Shapes::ShapeRef.new(shape: Long, location_name: "serversMappedToApplications"))
    GetDiscoverySummaryResponse.add_member(:servers_mappedto_tags, Shapes::ShapeRef.new(shape: Long, location_name: "serversMappedtoTags"))
    GetDiscoverySummaryResponse.add_member(:agent_summary, Shapes::ShapeRef.new(shape: CustomerAgentInfo, location_name: "agentSummary"))
    GetDiscoverySummaryResponse.add_member(:connector_summary, Shapes::ShapeRef.new(shape: CustomerConnectorInfo, location_name: "connectorSummary"))
    GetDiscoverySummaryResponse.struct_class = Types::GetDiscoverySummaryResponse

    ListConfigurationsRequest.add_member(:configuration_type, Shapes::ShapeRef.new(shape: ConfigurationItemType, required: true, location_name: "configurationType"))
    ListConfigurationsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "filters"))
    ListConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "maxResults"))
    ListConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListConfigurationsRequest.add_member(:order_by, Shapes::ShapeRef.new(shape: OrderByList, location_name: "orderBy"))
    ListConfigurationsRequest.struct_class = Types::ListConfigurationsRequest

    ListConfigurationsResponse.add_member(:configurations, Shapes::ShapeRef.new(shape: Configurations, location_name: "configurations"))
    ListConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListConfigurationsResponse.struct_class = Types::ListConfigurationsResponse

    ListServerNeighborsRequest.add_member(:configuration_id, Shapes::ShapeRef.new(shape: ConfigurationId, required: true, location_name: "configurationId"))
    ListServerNeighborsRequest.add_member(:port_information_needed, Shapes::ShapeRef.new(shape: Boolean, location_name: "portInformationNeeded"))
    ListServerNeighborsRequest.add_member(:neighbor_configuration_ids, Shapes::ShapeRef.new(shape: ConfigurationIdList, location_name: "neighborConfigurationIds"))
    ListServerNeighborsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "maxResults"))
    ListServerNeighborsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListServerNeighborsRequest.struct_class = Types::ListServerNeighborsRequest

    ListServerNeighborsResponse.add_member(:neighbors, Shapes::ShapeRef.new(shape: NeighborDetailsList, required: true, location_name: "neighbors"))
    ListServerNeighborsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListServerNeighborsResponse.add_member(:known_dependency_count, Shapes::ShapeRef.new(shape: Long, location_name: "knownDependencyCount"))
    ListServerNeighborsResponse.struct_class = Types::ListServerNeighborsResponse

    NeighborConnectionDetail.add_member(:source_server_id, Shapes::ShapeRef.new(shape: ConfigurationId, required: true, location_name: "sourceServerId"))
    NeighborConnectionDetail.add_member(:destination_server_id, Shapes::ShapeRef.new(shape: ConfigurationId, required: true, location_name: "destinationServerId"))
    NeighborConnectionDetail.add_member(:destination_port, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "destinationPort"))
    NeighborConnectionDetail.add_member(:transport_protocol, Shapes::ShapeRef.new(shape: String, location_name: "transportProtocol"))
    NeighborConnectionDetail.add_member(:connections_count, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "connectionsCount"))
    NeighborConnectionDetail.struct_class = Types::NeighborConnectionDetail

    NeighborDetailsList.member = Shapes::ShapeRef.new(shape: NeighborConnectionDetail)

    OrderByElement.add_member(:field_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fieldName"))
    OrderByElement.add_member(:sort_order, Shapes::ShapeRef.new(shape: orderString, location_name: "sortOrder"))
    OrderByElement.struct_class = Types::OrderByElement

    OrderByList.member = Shapes::ShapeRef.new(shape: OrderByElement)

    SchemaStorageConfig.key = Shapes::ShapeRef.new(shape: DatabaseName)
    SchemaStorageConfig.value = Shapes::ShapeRef.new(shape: String)

    StartContinuousExportRequest.struct_class = Types::StartContinuousExportRequest

    StartContinuousExportResponse.add_member(:export_id, Shapes::ShapeRef.new(shape: ConfigurationsExportId, location_name: "exportId"))
    StartContinuousExportResponse.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3Bucket, location_name: "s3Bucket"))
    StartContinuousExportResponse.add_member(:start_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "startTime"))
    StartContinuousExportResponse.add_member(:data_source, Shapes::ShapeRef.new(shape: DataSource, location_name: "dataSource"))
    StartContinuousExportResponse.add_member(:schema_storage_config, Shapes::ShapeRef.new(shape: SchemaStorageConfig, location_name: "schemaStorageConfig"))
    StartContinuousExportResponse.struct_class = Types::StartContinuousExportResponse

    StartDataCollectionByAgentIdsRequest.add_member(:agent_ids, Shapes::ShapeRef.new(shape: AgentIds, required: true, location_name: "agentIds"))
    StartDataCollectionByAgentIdsRequest.struct_class = Types::StartDataCollectionByAgentIdsRequest

    StartDataCollectionByAgentIdsResponse.add_member(:agents_configuration_status, Shapes::ShapeRef.new(shape: AgentConfigurationStatusList, location_name: "agentsConfigurationStatus"))
    StartDataCollectionByAgentIdsResponse.struct_class = Types::StartDataCollectionByAgentIdsResponse

    StartExportTaskRequest.add_member(:export_data_format, Shapes::ShapeRef.new(shape: ExportDataFormats, location_name: "exportDataFormat"))
    StartExportTaskRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ExportFilters, location_name: "filters"))
    StartExportTaskRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "startTime"))
    StartExportTaskRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "endTime"))
    StartExportTaskRequest.struct_class = Types::StartExportTaskRequest

    StartExportTaskResponse.add_member(:export_id, Shapes::ShapeRef.new(shape: ConfigurationsExportId, location_name: "exportId"))
    StartExportTaskResponse.struct_class = Types::StartExportTaskResponse

    StopContinuousExportRequest.add_member(:export_id, Shapes::ShapeRef.new(shape: ConfigurationsExportId, required: true, location_name: "exportId"))
    StopContinuousExportRequest.struct_class = Types::StopContinuousExportRequest

    StopContinuousExportResponse.add_member(:start_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "startTime"))
    StopContinuousExportResponse.add_member(:stop_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "stopTime"))
    StopContinuousExportResponse.struct_class = Types::StopContinuousExportResponse

    StopDataCollectionByAgentIdsRequest.add_member(:agent_ids, Shapes::ShapeRef.new(shape: AgentIds, required: true, location_name: "agentIds"))
    StopDataCollectionByAgentIdsRequest.struct_class = Types::StopDataCollectionByAgentIdsRequest

    StopDataCollectionByAgentIdsResponse.add_member(:agents_configuration_status, Shapes::ShapeRef.new(shape: AgentConfigurationStatusList, location_name: "agentsConfigurationStatus"))
    StopDataCollectionByAgentIdsResponse.struct_class = Types::StopDataCollectionByAgentIdsResponse

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "value"))
    Tag.struct_class = Types::Tag

    TagFilter.add_member(:name, Shapes::ShapeRef.new(shape: FilterName, required: true, location_name: "name"))
    TagFilter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValues, required: true, location_name: "values"))
    TagFilter.struct_class = Types::TagFilter

    TagFilters.member = Shapes::ShapeRef.new(shape: TagFilter)

    TagSet.member = Shapes::ShapeRef.new(shape: Tag)

    UpdateApplicationRequest.add_member(:configuration_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location_name: "configurationId"))
    UpdateApplicationRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    UpdateApplicationRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    UpdateApplicationRequest.struct_class = Types::UpdateApplicationRequest

    UpdateApplicationResponse.struct_class = Types::UpdateApplicationResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2015-11-01"

      api.metadata = {
        "apiVersion" => "2015-11-01",
        "endpointPrefix" => "discovery",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "AWS Application Discovery Service",
        "serviceId" => "Application Discovery Service",
        "signatureVersion" => "v4",
        "targetPrefix" => "AWSPoseidonService_V2015_11_01",
        "uid" => "discovery-2015-11-01",
      }

      api.add_operation(:associate_configuration_items_to_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateConfigurationItemsToApplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateConfigurationItemsToApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateConfigurationItemsToApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalErrorException)
      end)

      api.add_operation(:create_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateApplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalErrorException)
      end)

      api.add_operation(:create_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTagsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalErrorException)
      end)

      api.add_operation(:delete_applications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApplications"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteApplicationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteApplicationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalErrorException)
      end)

      api.add_operation(:delete_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTagsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalErrorException)
      end)

      api.add_operation(:describe_agents, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAgents"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAgentsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAgentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalErrorException)
      end)

      api.add_operation(:describe_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeConfigurations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeConfigurationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalErrorException)
      end)

      api.add_operation(:describe_continuous_exports, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeContinuousExports"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeContinuousExportsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeContinuousExportsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_export_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeExportConfigurations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: DescribeExportConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeExportConfigurationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalErrorException)
      end)

      api.add_operation(:describe_export_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeExportTasks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeExportTasksRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeExportTasksResponse)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalErrorException)
      end)

      api.add_operation(:describe_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTagsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalErrorException)
      end)

      api.add_operation(:disassociate_configuration_items_from_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateConfigurationItemsFromApplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateConfigurationItemsFromApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateConfigurationItemsFromApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalErrorException)
      end)

      api.add_operation(:export_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExportConfigurations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: ExportConfigurationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:get_discovery_summary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDiscoverySummary"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDiscoverySummaryRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDiscoverySummaryResponse)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalErrorException)
      end)

      api.add_operation(:list_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConfigurations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListConfigurationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalErrorException)
      end)

      api.add_operation(:list_server_neighbors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListServerNeighbors"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListServerNeighborsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListServerNeighborsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalErrorException)
      end)

      api.add_operation(:start_continuous_export, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartContinuousExport"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartContinuousExportRequest)
        o.output = Shapes::ShapeRef.new(shape: StartContinuousExportResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:start_data_collection_by_agent_ids, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartDataCollectionByAgentIds"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartDataCollectionByAgentIdsRequest)
        o.output = Shapes::ShapeRef.new(shape: StartDataCollectionByAgentIdsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalErrorException)
      end)

      api.add_operation(:start_export_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartExportTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartExportTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: StartExportTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:stop_continuous_export, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopContinuousExport"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopContinuousExportRequest)
        o.output = Shapes::ShapeRef.new(shape: StopContinuousExportResponse)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:stop_data_collection_by_agent_ids, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopDataCollectionByAgentIds"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopDataCollectionByAgentIdsRequest)
        o.output = Shapes::ShapeRef.new(shape: StopDataCollectionByAgentIdsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalErrorException)
      end)

      api.add_operation(:update_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateApplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalErrorException)
      end)
    end

  end
end
