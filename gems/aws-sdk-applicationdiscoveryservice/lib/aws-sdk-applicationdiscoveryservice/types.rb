# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ApplicationDiscoveryService
  module Types

    # Information about agents that were instructed to start collecting
    # data. Information includes the agent ID, a description of the
    # operation, and whether or not the agent configuration was updated.
    #
    # @!attribute [rw] agent_id
    #   The agent ID.
    #   @return [String]
    #
    # @!attribute [rw] operation_succeeded
    #   Information about the status of the `StartDataCollection` and
    #   `StopDataCollection` operations. The system has recorded the data
    #   collection operation. The agent receives this command the next time
    #   it polls for a new command.
    #   @return [Boolean]
    #
    # @!attribute [rw] description
    #   A description of the operation performed.
    #   @return [String]
    #
    class AgentConfigurationStatus < Struct.new(
      :agent_id,
      :operation_succeeded,
      :description)
      include Aws::Structure
    end

    # Information about agents associated with the user’s AWS account.
    # Information includes agent IDs, IP addresses, media access control
    # (MAC) addresses, agent health, hostname where the agent resides, and
    # agent version for each agent.
    #
    # @!attribute [rw] agent_id
    #   The agent ID.
    #   @return [String]
    #
    # @!attribute [rw] host_name
    #   The name of the host where the agent resides. The host can be a
    #   server or virtual machine.
    #   @return [String]
    #
    # @!attribute [rw] agent_network_info_list
    #   Network details about the host where the agent resides.
    #   @return [Array<Types::AgentNetworkInfo>]
    #
    # @!attribute [rw] connector_id
    #   This data type is currently not valid.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The agent version.
    #   @return [String]
    #
    # @!attribute [rw] health
    #   The health of the agent.
    #   @return [String]
    #
    class AgentInfo < Struct.new(
      :agent_id,
      :host_name,
      :agent_network_info_list,
      :connector_id,
      :version,
      :health)
      include Aws::Structure
    end

    # Network details about the host where the agent resides.
    #
    # @!attribute [rw] ip_address
    #   The IP address for the host where the agent resides.
    #   @return [String]
    #
    # @!attribute [rw] mac_address
    #   The MAC address for the host where the agent resides.
    #   @return [String]
    #
    class AgentNetworkInfo < Struct.new(
      :ip_address,
      :mac_address)
      include Aws::Structure
    end

    # Tags for a configuration item. Tags are metadata that help you
    # categorize IT assets.
    #
    # @!attribute [rw] configuration_type
    #   A type of IT asset that you want to tag.
    #   @return [String]
    #
    # @!attribute [rw] configuration_id
    #   The configuration ID for the item you want to tag. You can specify a
    #   list of keys and values.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   A type of tag to filter on. For example, *serverType*.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   A value to filter on. For example *key = serverType* and *value =
    #   web server*.
    #   @return [String]
    #
    # @!attribute [rw] time_of_creation
    #   The time the configuration tag was created in Coordinated Universal
    #   Time (UTC).
    #   @return [Time]
    #
    class ConfigurationTag < Struct.new(
      :configuration_type,
      :configuration_id,
      :key,
      :value,
      :time_of_creation)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateTagsRequest
    #   data as a hash:
    #
    #       {
    #         configuration_ids: ["ConfigurationId"], # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] configuration_ids
    #   A list of configuration items that you want to tag.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Tags that you want to associate with one or more configuration
    #   items. Specify the tags that you want to create in a *key*-*value*
    #   format. For example:
    #
    #   `\{"key": "serverType", "value": "webServer"\}`
    #   @return [Array<Types::Tag>]
    #
    class CreateTagsRequest < Struct.new(
      :configuration_ids,
      :tags)
      include Aws::Structure
    end

    class CreateTagsResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteTagsRequest
    #   data as a hash:
    #
    #       {
    #         configuration_ids: ["ConfigurationId"], # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] configuration_ids
    #   A list of configuration items with tags that you want to delete.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Tags that you want to delete from one or more configuration items.
    #   Specify the tags that you want to delete in a *key*-*value* format.
    #   For example:
    #
    #   `\{"key": "serverType", "value": "webServer"\}`
    #   @return [Array<Types::Tag>]
    #
    class DeleteTagsRequest < Struct.new(
      :configuration_ids,
      :tags)
      include Aws::Structure
    end

    class DeleteTagsResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DescribeAgentsRequest
    #   data as a hash:
    #
    #       {
    #         agent_ids: ["AgentId"],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] agent_ids
    #   The agent IDs for which you want information. If you specify no IDs,
    #   the system returns information about all agents associated with your
    #   AWS user account.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The total number of agents to return. The maximum value is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #   @return [String]
    #
    class DescribeAgentsRequest < Struct.new(
      :agent_ids,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] agents_info
    #   Lists AWS agents by ID or lists all agents associated with your user
    #   account if you did not specify an agent ID. The output includes
    #   agent IDs, IP addresses, media access control (MAC) addresses, agent
    #   health, host name where the agent resides, and the version number of
    #   each agent.
    #   @return [Array<Types::AgentInfo>]
    #
    # @!attribute [rw] next_token
    #   The call returns a token. Use this token to get the next set of
    #   results.
    #   @return [String]
    #
    class DescribeAgentsResponse < Struct.new(
      :agents_info,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeConfigurationsRequest
    #   data as a hash:
    #
    #       {
    #         configuration_ids: ["ConfigurationId"], # required
    #       }
    #
    # @!attribute [rw] configuration_ids
    #   One or more configuration IDs.
    #   @return [Array<String>]
    #
    class DescribeConfigurationsRequest < Struct.new(
      :configuration_ids)
      include Aws::Structure
    end

    # @!attribute [rw] configurations
    #   A key in the response map. The value is an array of data.
    #   @return [Array<Hash<String,String>>]
    #
    class DescribeConfigurationsResponse < Struct.new(
      :configurations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeExportConfigurationsRequest
    #   data as a hash:
    #
    #       {
    #         export_ids: ["ConfigurationsExportId"],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] export_ids
    #   A unique identifier that you can use to query the export status.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that you want to display as a part of
    #   the query.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to get the next set of results. For example, if you
    #   specified 100 IDs for
    #   `DescribeConfigurationsRequest$configurationIds` but set
    #   `DescribeExportConfigurationsRequest$maxResults` to 10, you will get
    #   results in a set of 10. Use the token in the query to get the next
    #   set of 10.
    #   @return [String]
    #
    class DescribeExportConfigurationsRequest < Struct.new(
      :export_ids,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] exports_info
    #   Returns export details. When the status is complete, the response
    #   includes a URL for an Amazon S3 bucket where you can view the data
    #   in a CSV file.
    #   @return [Array<Types::ExportInfo>]
    #
    # @!attribute [rw] next_token
    #   A token to get the next set of results. For example, if you
    #   specified 100 IDs for
    #   `DescribeConfigurationsRequest$configurationIds` but set
    #   `DescribeExportConfigurationsRequest$maxResults` to 10, you will get
    #   results in a set of 10. Use the token in the query to get the next
    #   set of 10.
    #   @return [String]
    #
    class DescribeExportConfigurationsResponse < Struct.new(
      :exports_info,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeTagsRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "FilterName", # required
    #             values: ["FilterValue"], # required
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] filters
    #   You can filter the list using a *key*-*value* format. You can
    #   separate these items by using logical operators. Allowed filters
    #   include `tagKey`, `tagValue`, and `configurationId`.
    #   @return [Array<Types::TagFilter>]
    #
    # @!attribute [rw] max_results
    #   The total number of items to return. The maximum value is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #   @return [String]
    #
    class DescribeTagsRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   Depending on the input, this is a list of configuration items tagged
    #   with a specific tag, or a list of tags for a specific configuration
    #   item.
    #   @return [Array<Types::ConfigurationTag>]
    #
    # @!attribute [rw] next_token
    #   The call returns a token. Use this token to get the next set of
    #   results.
    #   @return [String]
    #
    class DescribeTagsResponse < Struct.new(
      :tags,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] export_id
    #   A unique identifier that you can use to query the export status.
    #   @return [String]
    #
    class ExportConfigurationsResponse < Struct.new(
      :export_id)
      include Aws::Structure
    end

    # Information regarding the export status of the discovered data. The
    # value is an array of objects.
    #
    # @!attribute [rw] export_id
    #   A unique identifier that you can use to query the export.
    #   @return [String]
    #
    # @!attribute [rw] export_status
    #   The status of the configuration data export. The status can succeed,
    #   fail, or be in-progress.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Helpful status messages for API callers. For example: Too many
    #   exports in the last 6 hours. Export in progress. Export was
    #   successful.
    #   @return [String]
    #
    # @!attribute [rw] configurations_download_url
    #   A URL for an Amazon S3 bucket where you can review the configuration
    #   data. The URL is displayed only if the export succeeded.
    #   @return [String]
    #
    # @!attribute [rw] export_request_time
    #   The time the configuration data export was initiated.
    #   @return [Time]
    #
    class ExportInfo < Struct.new(
      :export_id,
      :export_status,
      :status_message,
      :configurations_download_url,
      :export_request_time)
      include Aws::Structure
    end

    # A filter that can use conditional operators.
    #
    # @note When making an API call, you may pass Filter
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #         values: ["FilterValue"], # required
    #         condition: "Condition", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the filter. The following filter names are allowed for
    #   `SERVER` configuration items.
    #
    #   **Server**
    #
    #   * `server.hostName`
    #
    #   * `server.osName`
    #
    #   * `server.osVersion`
    #
    #   * `server.configurationid`
    #
    #   * `server.agentid`
    #
    #   The name of the filter. The following filter names are allowed for
    #   `PROCESS` configuration items.
    #
    #   **Process**
    #
    #   * `process.configurationid`
    #
    #   * `process.name`
    #
    #   * `process.commandLine`
    #
    #   * `server.configurationid`
    #
    #   * `server.hostName`
    #
    #   * `server.osName`
    #
    #   * `server.osVersion`
    #
    #   * `server.agentId`
    #
    #   The name of the filter. The following filter names are allowed for
    #   `CONNECTION` configuration items.
    #
    #   **Connection**
    #
    #   * `connection.sourceIp`
    #
    #   * `connection.destinationIp`
    #
    #   * `connection.destinationPort`
    #
    #   * `sourceProcess.configurationId`
    #
    #   * `sourceProcess.name`
    #
    #   * `sourceProcess.commandLine`
    #
    #   * `destinationProcess.configurationId`
    #
    #   * `destinationProcess.name`
    #
    #   * `destinationProcess.commandLine`
    #
    #   * `sourceServer.configurationId`
    #
    #   * `sourceServer.hostName`
    #
    #   * `sourceServer.osName`
    #
    #   * `sourceServer.osVersion`
    #
    #   * `sourceServer.agentId`
    #
    #   * `destinationServer.configurationId`
    #
    #   * `destinationServer.hostName`
    #
    #   * `destinationServer.osName`
    #
    #   * `destinationServer.osVersion`
    #
    #   * `destinationServer.agentId`
    #   @return [String]
    #
    # @!attribute [rw] values
    #   A string value that you want to filter on. For example, if you
    #   choose the `destinationServer.osVersion` filter name, you could
    #   specify `Ubuntu` for the value.
    #   @return [Array<String>]
    #
    # @!attribute [rw] condition
    #   A conditional operator. The following operators are valid: EQUALS,
    #   NOT\_EQUALS, CONTAINS, NOT\_CONTAINS. If you specify multiple
    #   filters, the system utilizes all filters as though concatenated by
    #   *AND*. If you specify multiple values for a particular filter, the
    #   system differentiates the values using *OR*. Calling either
    #   *DescribeConfigurations* or *ListConfigurations* returns attributes
    #   of matching configuration items.
    #   @return [String]
    #
    class Filter < Struct.new(
      :name,
      :values,
      :condition)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListConfigurationsRequest
    #   data as a hash:
    #
    #       {
    #         configuration_type: "SERVER", # required, accepts SERVER, PROCESS, CONNECTION
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["FilterValue"], # required
    #             condition: "Condition", # required
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] configuration_type
    #   A valid configuration identified by the Discovery Service.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   You can filter the list using a *key*-*value* format. For example:
    #
    #   `\{"key": "serverType", "value": "webServer"\}`
    #
    #   You can separate these items by using logical operators.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   The total number of items to return. The maximum value is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #   @return [String]
    #
    class ListConfigurationsRequest < Struct.new(
      :configuration_type,
      :filters,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] configurations
    #   Returns configuration details, including the configuration ID,
    #   attribute names, and attribute values.
    #   @return [Array<Hash<String,String>>]
    #
    # @!attribute [rw] next_token
    #   The call returns a token. Use this token to get the next set of
    #   results.
    #   @return [String]
    #
    class ListConfigurationsResponse < Struct.new(
      :configurations,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartDataCollectionByAgentIdsRequest
    #   data as a hash:
    #
    #       {
    #         agent_ids: ["AgentId"], # required
    #       }
    #
    # @!attribute [rw] agent_ids
    #   The IDs of the agents that you want to start collecting data. If you
    #   send a request to an AWS agent ID that you do not have permission to
    #   contact, according to your AWS account, the service does not throw
    #   an exception. Instead, it returns the error in the *Description*
    #   field. If you send a request to multiple agents and you do not have
    #   permission to contact some of those agents, the system does not
    #   throw an exception. Instead, the system shows `Failed` in the
    #   *Description* field.
    #   @return [Array<String>]
    #
    class StartDataCollectionByAgentIdsRequest < Struct.new(
      :agent_ids)
      include Aws::Structure
    end

    # @!attribute [rw] agents_configuration_status
    #   Information about agents that were instructed to start collecting
    #   data. Information includes the agent ID, a description of the
    #   operation performed, and whether or not the agent configuration was
    #   updated.
    #   @return [Array<Types::AgentConfigurationStatus>]
    #
    class StartDataCollectionByAgentIdsResponse < Struct.new(
      :agents_configuration_status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopDataCollectionByAgentIdsRequest
    #   data as a hash:
    #
    #       {
    #         agent_ids: ["AgentId"], # required
    #       }
    #
    # @!attribute [rw] agent_ids
    #   The IDs of the agents that you want to stop collecting data.
    #   @return [Array<String>]
    #
    class StopDataCollectionByAgentIdsRequest < Struct.new(
      :agent_ids)
      include Aws::Structure
    end

    # @!attribute [rw] agents_configuration_status
    #   Information about agents that were instructed to stop collecting
    #   data. Information includes the agent ID, a description of the
    #   operation performed, and whether or not the agent configuration was
    #   updated.
    #   @return [Array<Types::AgentConfigurationStatus>]
    #
    class StopDataCollectionByAgentIdsResponse < Struct.new(
      :agents_configuration_status)
      include Aws::Structure
    end

    # Metadata that help you categorize IT assets.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #
    # @!attribute [rw] key
    #   A type of tag to filter on.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   A value for a tag key to filter on.
    #   @return [String]
    #
    class Tag < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # The name of a tag filter. Valid names are: `tagKey`, `tagValue`,
    # `configurationId`.
    #
    # @note When making an API call, you may pass TagFilter
    #   data as a hash:
    #
    #       {
    #         name: "FilterName", # required
    #         values: ["FilterValue"], # required
    #       }
    #
    # @!attribute [rw] name
    #   A name of a tag filter.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   Values of a tag filter.
    #   @return [Array<String>]
    #
    class TagFilter < Struct.new(
      :name,
      :values)
      include Aws::Structure
    end

  end
end
