# WARNING ABOUT GENERATED CODE
#
# This file is generated from a JSON service definition. See the contributing
# guide for more information:
#
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE
module Aws
  module ApplicationDiscoveryService
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
      AuthorizationErrorException = Shapes::StructureShape.new(name: 'AuthorizationErrorException')
      Boolean = Shapes::BooleanShape.new(name: 'Boolean')
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
      CreateTagsRequest = Shapes::StructureShape.new(name: 'CreateTagsRequest')
      CreateTagsResponse = Shapes::StructureShape.new(name: 'CreateTagsResponse')
      DeleteTagsRequest = Shapes::StructureShape.new(name: 'DeleteTagsRequest')
      DeleteTagsResponse = Shapes::StructureShape.new(name: 'DeleteTagsResponse')
      DescribeAgentsRequest = Shapes::StructureShape.new(name: 'DescribeAgentsRequest')
      DescribeAgentsResponse = Shapes::StructureShape.new(name: 'DescribeAgentsResponse')
      DescribeConfigurationsAttribute = Shapes::MapShape.new(name: 'DescribeConfigurationsAttribute')
      DescribeConfigurationsAttributes = Shapes::ListShape.new(name: 'DescribeConfigurationsAttributes')
      DescribeConfigurationsRequest = Shapes::StructureShape.new(name: 'DescribeConfigurationsRequest')
      DescribeConfigurationsResponse = Shapes::StructureShape.new(name: 'DescribeConfigurationsResponse')
      DescribeExportConfigurationsRequest = Shapes::StructureShape.new(name: 'DescribeExportConfigurationsRequest')
      DescribeExportConfigurationsResponse = Shapes::StructureShape.new(name: 'DescribeExportConfigurationsResponse')
      DescribeTagsRequest = Shapes::StructureShape.new(name: 'DescribeTagsRequest')
      DescribeTagsResponse = Shapes::StructureShape.new(name: 'DescribeTagsResponse')
      ExportConfigurationsResponse = Shapes::StructureShape.new(name: 'ExportConfigurationsResponse')
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
      Integer = Shapes::IntegerShape.new(name: 'Integer')
      InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
      InvalidParameterValueException = Shapes::StructureShape.new(name: 'InvalidParameterValueException')
      ListConfigurationsRequest = Shapes::StructureShape.new(name: 'ListConfigurationsRequest')
      ListConfigurationsResponse = Shapes::StructureShape.new(name: 'ListConfigurationsResponse')
      Message = Shapes::StringShape.new(name: 'Message')
      NextToken = Shapes::StringShape.new(name: 'NextToken')
      OperationNotPermittedException = Shapes::StructureShape.new(name: 'OperationNotPermittedException')
      ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
      ServerInternalErrorException = Shapes::StructureShape.new(name: 'ServerInternalErrorException')
      StartDataCollectionByAgentIdsRequest = Shapes::StructureShape.new(name: 'StartDataCollectionByAgentIdsRequest')
      StartDataCollectionByAgentIdsResponse = Shapes::StructureShape.new(name: 'StartDataCollectionByAgentIdsResponse')
      StopDataCollectionByAgentIdsRequest = Shapes::StructureShape.new(name: 'StopDataCollectionByAgentIdsRequest')
      StopDataCollectionByAgentIdsResponse = Shapes::StructureShape.new(name: 'StopDataCollectionByAgentIdsResponse')
      String = Shapes::StringShape.new(name: 'String')
      Tag = Shapes::StructureShape.new(name: 'Tag')
      TagFilter = Shapes::StructureShape.new(name: 'TagFilter')
      TagFilters = Shapes::ListShape.new(name: 'TagFilters')
      TagKey = Shapes::StringShape.new(name: 'TagKey')
      TagSet = Shapes::ListShape.new(name: 'TagSet')
      TagValue = Shapes::StringShape.new(name: 'TagValue')
      TimeStamp = Shapes::TimestampShape.new(name: 'TimeStamp')

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
      AgentInfo.struct_class = Types::AgentInfo

      AgentNetworkInfo.add_member(:ip_address, Shapes::ShapeRef.new(shape: String, location_name: "ipAddress"))
      AgentNetworkInfo.add_member(:mac_address, Shapes::ShapeRef.new(shape: String, location_name: "macAddress"))
      AgentNetworkInfo.struct_class = Types::AgentNetworkInfo

      AgentNetworkInfoList.member = Shapes::ShapeRef.new(shape: AgentNetworkInfo)

      AgentsInfo.member = Shapes::ShapeRef.new(shape: AgentInfo)

      Configuration.key = Shapes::ShapeRef.new(shape: String)
      Configuration.value = Shapes::ShapeRef.new(shape: String)

      ConfigurationIdList.member = Shapes::ShapeRef.new(shape: ConfigurationId)

      ConfigurationTag.add_member(:configuration_type, Shapes::ShapeRef.new(shape: ConfigurationItemType, location_name: "configurationType"))
      ConfigurationTag.add_member(:configuration_id, Shapes::ShapeRef.new(shape: ConfigurationId, location_name: "configurationId"))
      ConfigurationTag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, location_name: "key"))
      ConfigurationTag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "value"))
      ConfigurationTag.add_member(:time_of_creation, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "timeOfCreation"))
      ConfigurationTag.struct_class = Types::ConfigurationTag

      ConfigurationTagSet.member = Shapes::ShapeRef.new(shape: ConfigurationTag, location_name: "item")

      Configurations.member = Shapes::ShapeRef.new(shape: Configuration)

      CreateTagsRequest.add_member(:configuration_ids, Shapes::ShapeRef.new(shape: ConfigurationIdList, required: true, location_name: "configurationIds"))
      CreateTagsRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagSet, required: true, location_name: "tags"))
      CreateTagsRequest.struct_class = Types::CreateTagsRequest

      CreateTagsResponse.struct_class = Types::CreateTagsResponse

      DeleteTagsRequest.add_member(:configuration_ids, Shapes::ShapeRef.new(shape: ConfigurationIdList, required: true, location_name: "configurationIds"))
      DeleteTagsRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagSet, location_name: "tags"))
      DeleteTagsRequest.struct_class = Types::DeleteTagsRequest

      DeleteTagsResponse.struct_class = Types::DeleteTagsResponse

      DescribeAgentsRequest.add_member(:agent_ids, Shapes::ShapeRef.new(shape: AgentIds, location_name: "agentIds"))
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

      DescribeExportConfigurationsRequest.add_member(:export_ids, Shapes::ShapeRef.new(shape: ExportIds, location_name: "exportIds"))
      DescribeExportConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "maxResults"))
      DescribeExportConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
      DescribeExportConfigurationsRequest.struct_class = Types::DescribeExportConfigurationsRequest

      DescribeExportConfigurationsResponse.add_member(:exports_info, Shapes::ShapeRef.new(shape: ExportsInfo, location_name: "exportsInfo"))
      DescribeExportConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
      DescribeExportConfigurationsResponse.struct_class = Types::DescribeExportConfigurationsResponse

      DescribeTagsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: TagFilters, location_name: "filters"))
      DescribeTagsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "maxResults"))
      DescribeTagsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
      DescribeTagsRequest.struct_class = Types::DescribeTagsRequest

      DescribeTagsResponse.add_member(:tags, Shapes::ShapeRef.new(shape: ConfigurationTagSet, location_name: "tags"))
      DescribeTagsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
      DescribeTagsResponse.struct_class = Types::DescribeTagsResponse

      ExportConfigurationsResponse.add_member(:export_id, Shapes::ShapeRef.new(shape: ConfigurationsExportId, location_name: "exportId"))
      ExportConfigurationsResponse.struct_class = Types::ExportConfigurationsResponse

      ExportIds.member = Shapes::ShapeRef.new(shape: ConfigurationsExportId)

      ExportInfo.add_member(:export_id, Shapes::ShapeRef.new(shape: ConfigurationsExportId, required: true, location_name: "exportId"))
      ExportInfo.add_member(:export_status, Shapes::ShapeRef.new(shape: ExportStatus, required: true, location_name: "exportStatus"))
      ExportInfo.add_member(:status_message, Shapes::ShapeRef.new(shape: ExportStatusMessage, required: true, location_name: "statusMessage"))
      ExportInfo.add_member(:configurations_download_url, Shapes::ShapeRef.new(shape: ConfigurationsDownloadUrl, location_name: "configurationsDownloadUrl"))
      ExportInfo.add_member(:export_request_time, Shapes::ShapeRef.new(shape: ExportRequestTime, required: true, location_name: "exportRequestTime"))
      ExportInfo.struct_class = Types::ExportInfo

      ExportsInfo.member = Shapes::ShapeRef.new(shape: ExportInfo)

      Filter.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
      Filter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValues, required: true, location_name: "values"))
      Filter.add_member(:condition, Shapes::ShapeRef.new(shape: Condition, required: true, location_name: "condition"))
      Filter.struct_class = Types::Filter

      FilterValues.member = Shapes::ShapeRef.new(shape: FilterValue, location_name: "item")

      Filters.member = Shapes::ShapeRef.new(shape: Filter)

      ListConfigurationsRequest.add_member(:configuration_type, Shapes::ShapeRef.new(shape: ConfigurationItemType, required: true, location_name: "configurationType"))
      ListConfigurationsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "filters"))
      ListConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "maxResults"))
      ListConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
      ListConfigurationsRequest.struct_class = Types::ListConfigurationsRequest

      ListConfigurationsResponse.add_member(:configurations, Shapes::ShapeRef.new(shape: Configurations, location_name: "configurations"))
      ListConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
      ListConfigurationsResponse.struct_class = Types::ListConfigurationsResponse

      StartDataCollectionByAgentIdsRequest.add_member(:agent_ids, Shapes::ShapeRef.new(shape: AgentIds, required: true, location_name: "agentIds"))
      StartDataCollectionByAgentIdsRequest.struct_class = Types::StartDataCollectionByAgentIdsRequest

      StartDataCollectionByAgentIdsResponse.add_member(:agents_configuration_status, Shapes::ShapeRef.new(shape: AgentConfigurationStatusList, location_name: "agentsConfigurationStatus"))
      StartDataCollectionByAgentIdsResponse.struct_class = Types::StartDataCollectionByAgentIdsResponse

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

      TagSet.member = Shapes::ShapeRef.new(shape: Tag, location_name: "item")


      # @api private
      API = Seahorse::Model::Api.new.tap do |api|

        api.version = "2015-11-01"

        api.metadata = {
          "endpointPrefix" => "discovery",
          "jsonVersion" => "1.1",
          "protocol" => "json",
          "serviceFullName" => "AWS Application Discovery Service",
          "signatureVersion" => "v4",
          "targetPrefix" => "AWSPoseidonService_V2015_11_01",
        }

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

        api.add_operation(:describe_export_configurations, Seahorse::Model::Operation.new.tap do |o|
          o.name = "DescribeExportConfigurations"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: DescribeExportConfigurationsRequest)
          o.output = Shapes::ShapeRef.new(shape: DescribeExportConfigurationsResponse)
          o.errors << Shapes::ShapeRef.new(shape: AuthorizationErrorException)
          o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

        api.add_operation(:export_configurations, Seahorse::Model::Operation.new.tap do |o|
          o.name = "ExportConfigurations"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
          o.output = Shapes::ShapeRef.new(shape: ExportConfigurationsResponse)
          o.errors << Shapes::ShapeRef.new(shape: AuthorizationErrorException)
          o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
          o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
          o.errors << Shapes::ShapeRef.new(shape: ServerInternalErrorException)
          o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
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
      end

    end
  end
end
