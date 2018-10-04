# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ApplicationDiscoveryService
  module Types

    # Information about agents or connectors that were instructed to start
    # collecting data. Information includes the agent/connector ID, a
    # description of the operation, and whether the agent/connector
    # configuration was updated.
    #
    # @!attribute [rw] agent_id
    #   The agent/connector ID.
    #   @return [String]
    #
    # @!attribute [rw] operation_succeeded
    #   Information about the status of the `StartDataCollection` and
    #   `StopDataCollection` operations. The system has recorded the data
    #   collection operation. The agent/connector receives this command the
    #   next time it polls for a new command.
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

    # Information about agents or connectors associated with the user’s AWS
    # account. Information includes agent or connector IDs, IP addresses,
    # media access control (MAC) addresses, agent or connector health,
    # hostname where the agent or connector resides, and agent version for
    # each agent.
    #
    # @!attribute [rw] agent_id
    #   The agent or connector ID.
    #   @return [String]
    #
    # @!attribute [rw] host_name
    #   The name of the host where the agent or connector resides. The host
    #   can be a server or virtual machine.
    #   @return [String]
    #
    # @!attribute [rw] agent_network_info_list
    #   Network details about the host where the agent or connector resides.
    #   @return [Array<Types::AgentNetworkInfo>]
    #
    # @!attribute [rw] connector_id
    #   The ID of the connector.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The agent or connector version.
    #   @return [String]
    #
    # @!attribute [rw] health
    #   The health of the agent or connector.
    #   @return [String]
    #
    # @!attribute [rw] last_health_ping_time
    #   Time since agent or connector health was reported.
    #   @return [String]
    #
    # @!attribute [rw] collection_status
    #   Status of the collection process for an agent or connector.
    #   @return [String]
    #
    # @!attribute [rw] agent_type
    #   Type of agent.
    #   @return [String]
    #
    # @!attribute [rw] registered_time
    #   Agent's first registration timestamp in UTC.
    #   @return [String]
    #
    class AgentInfo < Struct.new(
      :agent_id,
      :host_name,
      :agent_network_info_list,
      :connector_id,
      :version,
      :health,
      :last_health_ping_time,
      :collection_status,
      :agent_type,
      :registered_time)
      include Aws::Structure
    end

    # Network details about the host where the agent/connector resides.
    #
    # @!attribute [rw] ip_address
    #   The IP address for the host where the agent/connector resides.
    #   @return [String]
    #
    # @!attribute [rw] mac_address
    #   The MAC address for the host where the agent/connector resides.
    #   @return [String]
    #
    class AgentNetworkInfo < Struct.new(
      :ip_address,
      :mac_address)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociateConfigurationItemsToApplicationRequest
    #   data as a hash:
    #
    #       {
    #         application_configuration_id: "ApplicationId", # required
    #         configuration_ids: ["ConfigurationId"], # required
    #       }
    #
    # @!attribute [rw] application_configuration_id
    #   The configuration ID of an application with which items are to be
    #   associated.
    #   @return [String]
    #
    # @!attribute [rw] configuration_ids
    #   The ID of each configuration item to be associated with an
    #   application.
    #   @return [Array<String>]
    #
    class AssociateConfigurationItemsToApplicationRequest < Struct.new(
      :application_configuration_id,
      :configuration_ids)
      include Aws::Structure
    end

    class AssociateConfigurationItemsToApplicationResponse < Aws::EmptyStructure; end

    # Tags for a configuration item. Tags are metadata that help you
    # categorize IT assets.
    #
    # @!attribute [rw] configuration_type
    #   A type of IT asset to tag.
    #   @return [String]
    #
    # @!attribute [rw] configuration_id
    #   The configuration ID for the item to tag. You can specify a list of
    #   keys and values.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   A type of tag on which to filter. For example, *serverType*.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   A value on which to filter. For example *key = serverType* and
    #   *value = web server*.
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

    # A list of continuous export descriptions.
    #
    # @!attribute [rw] export_id
    #   The unique ID assigned to this export.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Describes the status of the export. Can be one of the following
    #   values:
    #
    #   * START\_IN\_PROGRESS - setting up resources to start continuous
    #     export.
    #
    #   * START\_FAILED - an error occurred setting up continuous export. To
    #     recover, call start-continuous-export again.
    #
    #   * ACTIVE - data is being exported to the customer bucket.
    #
    #   * ERROR - an error occurred during export. To fix the issue, call
    #     stop-continuous-export and start-continuous-export.
    #
    #   * STOP\_IN\_PROGRESS - stopping the export.
    #
    #   * STOP\_FAILED - an error occurred stopping the export. To recover,
    #     call stop-continuous-export again.
    #
    #   * INACTIVE - the continuous export has been stopped. Data is no
    #     longer being exported to the customer bucket.
    #   @return [String]
    #
    # @!attribute [rw] status_detail
    #   Contains information about any errors that may have occurred.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket
    #   The name of the s3 bucket where the export data parquet files are
    #   stored.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The timestamp representing when the continuous export was started.
    #   @return [Time]
    #
    # @!attribute [rw] stop_time
    #   The timestamp that represents when this continuous export was
    #   stopped.
    #   @return [Time]
    #
    # @!attribute [rw] data_source
    #   The type of data collector used to gather this data (currently only
    #   offered for AGENT).
    #   @return [String]
    #
    # @!attribute [rw] schema_storage_config
    #   An object which describes how the data is stored.
    #
    #   * `databaseName` - the name of the Glue database used to store the
    #     schema.
    #
    #   ^
    #   @return [Hash<String,String>]
    #
    class ContinuousExportDescription < Struct.new(
      :export_id,
      :status,
      :status_detail,
      :s3_bucket,
      :start_time,
      :stop_time,
      :data_source,
      :schema_storage_config)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateApplicationRequest
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #         description: "String",
    #       }
    #
    # @!attribute [rw] name
    #   Name of the application to be created.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the application to be created.
    #   @return [String]
    #
    class CreateApplicationRequest < Struct.new(
      :name,
      :description)
      include Aws::Structure
    end

    # @!attribute [rw] configuration_id
    #   Configuration ID of an application to be created.
    #   @return [String]
    #
    class CreateApplicationResponse < Struct.new(
      :configuration_id)
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

    # Inventory data for installed discovery agents.
    #
    # @!attribute [rw] active_agents
    #   Number of active discovery agents.
    #   @return [Integer]
    #
    # @!attribute [rw] healthy_agents
    #   Number of healthy discovery agents
    #   @return [Integer]
    #
    # @!attribute [rw] black_listed_agents
    #   Number of blacklisted discovery agents.
    #   @return [Integer]
    #
    # @!attribute [rw] shutdown_agents
    #   Number of discovery agents with status SHUTDOWN.
    #   @return [Integer]
    #
    # @!attribute [rw] unhealthy_agents
    #   Number of unhealthy discovery agents.
    #   @return [Integer]
    #
    # @!attribute [rw] total_agents
    #   Total number of discovery agents.
    #   @return [Integer]
    #
    # @!attribute [rw] unknown_agents
    #   Number of unknown discovery agents.
    #   @return [Integer]
    #
    class CustomerAgentInfo < Struct.new(
      :active_agents,
      :healthy_agents,
      :black_listed_agents,
      :shutdown_agents,
      :unhealthy_agents,
      :total_agents,
      :unknown_agents)
      include Aws::Structure
    end

    # Inventory data for installed discovery connectors.
    #
    # @!attribute [rw] active_connectors
    #   Number of active discovery connectors.
    #   @return [Integer]
    #
    # @!attribute [rw] healthy_connectors
    #   Number of healthy discovery connectors.
    #   @return [Integer]
    #
    # @!attribute [rw] black_listed_connectors
    #   Number of blacklisted discovery connectors.
    #   @return [Integer]
    #
    # @!attribute [rw] shutdown_connectors
    #   Number of discovery connectors with status SHUTDOWN,
    #   @return [Integer]
    #
    # @!attribute [rw] unhealthy_connectors
    #   Number of unhealthy discovery connectors.
    #   @return [Integer]
    #
    # @!attribute [rw] total_connectors
    #   Total number of discovery connectors.
    #   @return [Integer]
    #
    # @!attribute [rw] unknown_connectors
    #   Number of unknown discovery connectors.
    #   @return [Integer]
    #
    class CustomerConnectorInfo < Struct.new(
      :active_connectors,
      :healthy_connectors,
      :black_listed_connectors,
      :shutdown_connectors,
      :unhealthy_connectors,
      :total_connectors,
      :unknown_connectors)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteApplicationsRequest
    #   data as a hash:
    #
    #       {
    #         configuration_ids: ["ApplicationId"], # required
    #       }
    #
    # @!attribute [rw] configuration_ids
    #   Configuration ID of an application to be deleted.
    #   @return [Array<String>]
    #
    class DeleteApplicationsRequest < Struct.new(
      :configuration_ids)
      include Aws::Structure
    end

    class DeleteApplicationsResponse < Aws::EmptyStructure; end

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
    # @!attribute [rw] agent_ids
    #   The agent or the Connector IDs for which you want information. If
    #   you specify no IDs, the system returns information about all
    #   agents/Connectors associated with your AWS user account.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   You can filter the request using various logical operators and a
    #   *key*-*value* format. For example:
    #
    #   `\{"key": "collectionStatus", "value": "STARTED"\}`
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   The total number of agents/Connectors to return in a single page of
    #   output. The maximum value is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token to retrieve the next set of results. For example, if you
    #   previously specified 100 IDs for `DescribeAgentsRequest$agentIds`
    #   but set `DescribeAgentsRequest$maxResults` to 10, you received a set
    #   of 10 results along with a token. Use that token in this query to
    #   get the next set of 10.
    #   @return [String]
    #
    class DescribeAgentsRequest < Struct.new(
      :agent_ids,
      :filters,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] agents_info
    #   Lists agents or the Connector by ID or lists all agents/Connectors
    #   associated with your user account if you did not specify an
    #   agent/Connector ID. The output includes agent/Connector IDs, IP
    #   addresses, media access control (MAC) addresses, agent/Connector
    #   health, host name where the agent/Connector resides, and the version
    #   number of each agent/Connector.
    #   @return [Array<Types::AgentInfo>]
    #
    # @!attribute [rw] next_token
    #   Token to retrieve the next set of results. For example, if you
    #   specified 100 IDs for `DescribeAgentsRequest$agentIds` but set
    #   `DescribeAgentsRequest$maxResults` to 10, you received a set of 10
    #   results along with this token. Use this token in the next query to
    #   retrieve the next set of 10.
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

    # @note When making an API call, you may pass DescribeContinuousExportsRequest
    #   data as a hash:
    #
    #       {
    #         export_ids: ["ConfigurationsExportId"],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] export_ids
    #   The unique IDs assigned to the exports.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   A number between 1 and 100 specifying the maximum number of
    #   continuous export descriptions returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token from the previous call to `DescribeExportTasks`.
    #   @return [String]
    #
    class DescribeContinuousExportsRequest < Struct.new(
      :export_ids,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] descriptions
    #   A list of continuous export descriptions.
    #   @return [Array<Types::ContinuousExportDescription>]
    #
    # @!attribute [rw] next_token
    #   The token from the previous call to `DescribeExportTasks`.
    #   @return [String]
    #
    class DescribeContinuousExportsResponse < Struct.new(
      :descriptions,
      :next_token)
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
    #   A list of continuous export ids to search for.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   A number between 1 and 100 specifying the maximum number of
    #   continuous export descriptions returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token from the previous call to describe-export-tasks.
    #   @return [String]
    #
    class DescribeExportConfigurationsRequest < Struct.new(
      :export_ids,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] exports_info
    #   @return [Array<Types::ExportInfo>]
    #
    # @!attribute [rw] next_token
    #   The token from the previous call to describe-export-tasks.
    #   @return [String]
    #
    class DescribeExportConfigurationsResponse < Struct.new(
      :exports_info,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeExportTasksRequest
    #   data as a hash:
    #
    #       {
    #         export_ids: ["ConfigurationsExportId"],
    #         filters: [
    #           {
    #             name: "FilterName", # required
    #             values: ["FilterValue"], # required
    #             condition: "Condition", # required
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] export_ids
    #   One or more unique identifiers used to query the status of an export
    #   request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   One or more filters.
    #
    #   * `AgentId` - ID of the agent whose collected data will be exported
    #
    #   ^
    #   @return [Array<Types::ExportFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of volume results returned by
    #   `DescribeExportTasks` in paginated output. When this parameter is
    #   used, `DescribeExportTasks` only returns `maxResults` results in a
    #   single page along with a `nextToken` response element.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `DescribeExportTasks` request where `maxResults` was used and the
    #   results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `nextToken`
    #   value. This value is null when there are no more results to return.
    #   @return [String]
    #
    class DescribeExportTasksRequest < Struct.new(
      :export_ids,
      :filters,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] exports_info
    #   Contains one or more sets of export request details. When the status
    #   of a request is `SUCCEEDED`, the response includes a URL for an
    #   Amazon S3 bucket where you can view the data in a CSV file.
    #   @return [Array<Types::ExportInfo>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `DescribeExportTasks`
    #   request. When the results of a `DescribeExportTasks` request exceed
    #   `maxResults`, this value can be used to retrieve the next page of
    #   results. This value is null when there are no more results to
    #   return.
    #   @return [String]
    #
    class DescribeExportTasksResponse < Struct.new(
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
    #   The total number of items to return in a single page of output. The
    #   maximum value is 100.
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

    # @note When making an API call, you may pass DisassociateConfigurationItemsFromApplicationRequest
    #   data as a hash:
    #
    #       {
    #         application_configuration_id: "ApplicationId", # required
    #         configuration_ids: ["ConfigurationId"], # required
    #       }
    #
    # @!attribute [rw] application_configuration_id
    #   Configuration ID of an application from which each item is
    #   disassociated.
    #   @return [String]
    #
    # @!attribute [rw] configuration_ids
    #   Configuration ID of each item to be disassociated from an
    #   application.
    #   @return [Array<String>]
    #
    class DisassociateConfigurationItemsFromApplicationRequest < Struct.new(
      :application_configuration_id,
      :configuration_ids)
      include Aws::Structure
    end

    class DisassociateConfigurationItemsFromApplicationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] export_id
    #   A unique identifier that you can use to query the export status.
    #   @return [String]
    #
    class ExportConfigurationsResponse < Struct.new(
      :export_id)
      include Aws::Structure
    end

    # Used to select which agent's data is to be exported. A single agent
    # ID may be selected for export using the [StartExportTask][1] action.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/application-discovery/latest/APIReference/API_StartExportTask.html
    #
    # @note When making an API call, you may pass ExportFilter
    #   data as a hash:
    #
    #       {
    #         name: "FilterName", # required
    #         values: ["FilterValue"], # required
    #         condition: "Condition", # required
    #       }
    #
    # @!attribute [rw] name
    #   A single `ExportFilter` name. Supported filters: `agentId`.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   A single `agentId` for a Discovery Agent. An `agentId` can be found
    #   using the [DescribeAgents][1] action. Typically an ADS `agentId` is
    #   in the form `o-0123456789abcdef0`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/application-discovery/latest/APIReference/API_DescribeExportTasks.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] condition
    #   Supported condition: `EQUALS`
    #   @return [String]
    #
    class ExportFilter < Struct.new(
      :name,
      :values,
      :condition)
      include Aws::Structure
    end

    # Information regarding the export status of discovered data. The value
    # is an array of objects.
    #
    # @!attribute [rw] export_id
    #   A unique identifier used to query an export.
    #   @return [String]
    #
    # @!attribute [rw] export_status
    #   The status of the data export job.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A status message provided for API callers.
    #   @return [String]
    #
    # @!attribute [rw] configurations_download_url
    #   A URL for an Amazon S3 bucket where you can review the exported
    #   data. The URL is displayed only if the export succeeded.
    #   @return [String]
    #
    # @!attribute [rw] export_request_time
    #   The time that the data export was initiated.
    #   @return [Time]
    #
    # @!attribute [rw] is_truncated
    #   If true, the export of agent information exceeded the size limit for
    #   a single export and the exported data is incomplete for the
    #   requested time range. To address this, select a smaller time range
    #   for the export by using `startDate` and `endDate`.
    #   @return [Boolean]
    #
    # @!attribute [rw] requested_start_time
    #   The value of `startTime` parameter in the `StartExportTask` request.
    #   If no `startTime` was requested, this result does not appear in
    #   `ExportInfo`.
    #   @return [Time]
    #
    # @!attribute [rw] requested_end_time
    #   The `endTime` used in the `StartExportTask` request. If no `endTime`
    #   was requested, this result does not appear in `ExportInfo`.
    #   @return [Time]
    #
    class ExportInfo < Struct.new(
      :export_id,
      :export_status,
      :status_message,
      :configurations_download_url,
      :export_request_time,
      :is_truncated,
      :requested_start_time,
      :requested_end_time)
      include Aws::Structure
    end

    # A filter that can use conditional operators.
    #
    # For more information about filters, see [Querying Discovered
    # Configuration Items][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/application-discovery/latest/APIReference/discovery-api-queries.html
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
    #   The name of the filter.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   A string value on which to filter. For example, if you choose the
    #   `destinationServer.osVersion` filter name, you could specify
    #   `Ubuntu` for the value.
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

    # @api private
    #
    class GetDiscoverySummaryRequest < Aws::EmptyStructure; end

    # @!attribute [rw] servers
    #   The number of servers discovered.
    #   @return [Integer]
    #
    # @!attribute [rw] applications
    #   The number of applications discovered.
    #   @return [Integer]
    #
    # @!attribute [rw] servers_mapped_to_applications
    #   The number of servers mapped to applications.
    #   @return [Integer]
    #
    # @!attribute [rw] servers_mappedto_tags
    #   The number of servers mapped to tags.
    #   @return [Integer]
    #
    # @!attribute [rw] agent_summary
    #   Details about discovered agents, including agent status and health.
    #   @return [Types::CustomerAgentInfo]
    #
    # @!attribute [rw] connector_summary
    #   Details about discovered connectors, including connector status and
    #   health.
    #   @return [Types::CustomerConnectorInfo]
    #
    class GetDiscoverySummaryResponse < Struct.new(
      :servers,
      :applications,
      :servers_mapped_to_applications,
      :servers_mappedto_tags,
      :agent_summary,
      :connector_summary)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListConfigurationsRequest
    #   data as a hash:
    #
    #       {
    #         configuration_type: "SERVER", # required, accepts SERVER, PROCESS, CONNECTION, APPLICATION
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["FilterValue"], # required
    #             condition: "Condition", # required
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #         order_by: [
    #           {
    #             field_name: "String", # required
    #             sort_order: "ASC", # accepts ASC, DESC
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] configuration_type
    #   A valid configuration identified by Application Discovery Service.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   You can filter the request using various logical operators and a
    #   *key*-*value* format. For example:
    #
    #   `\{"key": "serverType", "value": "webServer"\}`
    #
    #   For a complete list of filter options and guidance about using them
    #   with this action, see [Querying Discovered Configuration Items][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/application-discovery/latest/APIReference/discovery-api-queries.html#ListConfigurations
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   The total number of items to return. The maximum value is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token to retrieve the next set of results. For example, if a
    #   previous call to ListConfigurations returned 100 items, but you set
    #   `ListConfigurationsRequest$maxResults` to 10, you received a set of
    #   10 results along with a token. Use that token in this query to get
    #   the next set of 10.
    #   @return [String]
    #
    # @!attribute [rw] order_by
    #   Certain filter criteria return output that can be sorted in
    #   ascending or descending order. For a list of output characteristics
    #   for each filter, see [Using the ListConfigurations Action][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/application-discovery/latest/APIReference/discovery-api-queries.html#ListConfigurations
    #   @return [Array<Types::OrderByElement>]
    #
    class ListConfigurationsRequest < Struct.new(
      :configuration_type,
      :filters,
      :max_results,
      :next_token,
      :order_by)
      include Aws::Structure
    end

    # @!attribute [rw] configurations
    #   Returns configuration details, including the configuration ID,
    #   attribute names, and attribute values.
    #   @return [Array<Hash<String,String>>]
    #
    # @!attribute [rw] next_token
    #   Token to retrieve the next set of results. For example, if your call
    #   to ListConfigurations returned 100 items, but you set
    #   `ListConfigurationsRequest$maxResults` to 10, you received a set of
    #   10 results along with this token. Use this token in the next query
    #   to retrieve the next set of 10.
    #   @return [String]
    #
    class ListConfigurationsResponse < Struct.new(
      :configurations,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListServerNeighborsRequest
    #   data as a hash:
    #
    #       {
    #         configuration_id: "ConfigurationId", # required
    #         port_information_needed: false,
    #         neighbor_configuration_ids: ["ConfigurationId"],
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] configuration_id
    #   Configuration ID of the server for which neighbors are being listed.
    #   @return [String]
    #
    # @!attribute [rw] port_information_needed
    #   Flag to indicate if port and protocol information is needed as part
    #   of the response.
    #   @return [Boolean]
    #
    # @!attribute [rw] neighbor_configuration_ids
    #   List of configuration IDs to test for one-hop-away.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return in a single page of output.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token to retrieve the next set of results. For example, if you
    #   previously specified 100 IDs for
    #   `ListServerNeighborsRequest$neighborConfigurationIds` but set
    #   `ListServerNeighborsRequest$maxResults` to 10, you received a set of
    #   10 results along with a token. Use that token in this query to get
    #   the next set of 10.
    #   @return [String]
    #
    class ListServerNeighborsRequest < Struct.new(
      :configuration_id,
      :port_information_needed,
      :neighbor_configuration_ids,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] neighbors
    #   List of distinct servers that are one hop away from the given
    #   server.
    #   @return [Array<Types::NeighborConnectionDetail>]
    #
    # @!attribute [rw] next_token
    #   Token to retrieve the next set of results. For example, if you
    #   specified 100 IDs for
    #   `ListServerNeighborsRequest$neighborConfigurationIds` but set
    #   `ListServerNeighborsRequest$maxResults` to 10, you received a set of
    #   10 results along with this token. Use this token in the next query
    #   to retrieve the next set of 10.
    #   @return [String]
    #
    # @!attribute [rw] known_dependency_count
    #   Count of distinct servers that are one hop away from the given
    #   server.
    #   @return [Integer]
    #
    class ListServerNeighborsResponse < Struct.new(
      :neighbors,
      :next_token,
      :known_dependency_count)
      include Aws::Structure
    end

    # Details about neighboring servers.
    #
    # @!attribute [rw] source_server_id
    #   The ID of the server that opened the network connection.
    #   @return [String]
    #
    # @!attribute [rw] destination_server_id
    #   The ID of the server that accepted the network connection.
    #   @return [String]
    #
    # @!attribute [rw] destination_port
    #   The destination network port for the connection.
    #   @return [Integer]
    #
    # @!attribute [rw] transport_protocol
    #   The network protocol used for the connection.
    #   @return [String]
    #
    # @!attribute [rw] connections_count
    #   The number of open network connections with the neighboring server.
    #   @return [Integer]
    #
    class NeighborConnectionDetail < Struct.new(
      :source_server_id,
      :destination_server_id,
      :destination_port,
      :transport_protocol,
      :connections_count)
      include Aws::Structure
    end

    # A field and direction for ordered output.
    #
    # @note When making an API call, you may pass OrderByElement
    #   data as a hash:
    #
    #       {
    #         field_name: "String", # required
    #         sort_order: "ASC", # accepts ASC, DESC
    #       }
    #
    # @!attribute [rw] field_name
    #   The field on which to order.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   Ordering direction.
    #   @return [String]
    #
    class OrderByElement < Struct.new(
      :field_name,
      :sort_order)
      include Aws::Structure
    end

    # @api private
    #
    class StartContinuousExportRequest < Aws::EmptyStructure; end

    # @!attribute [rw] export_id
    #   The unique ID assigned to this export.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket
    #   The name of the s3 bucket where the export data parquet files are
    #   stored.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The timestamp representing when the continuous export was started.
    #   @return [Time]
    #
    # @!attribute [rw] data_source
    #   The type of data collector used to gather this data (currently only
    #   offered for AGENT).
    #   @return [String]
    #
    # @!attribute [rw] schema_storage_config
    #   A dictionary which describes how the data is stored.
    #
    #   * `databaseName` - the name of the Glue database used to store the
    #     schema.
    #
    #   ^
    #   @return [Hash<String,String>]
    #
    class StartContinuousExportResponse < Struct.new(
      :export_id,
      :s3_bucket,
      :start_time,
      :data_source,
      :schema_storage_config)
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
    #   The IDs of the agents or connectors from which to start collecting
    #   data. If you send a request to an agent/connector ID that you do not
    #   have permission to contact, according to your AWS account, the
    #   service does not throw an exception. Instead, it returns the error
    #   in the *Description* field. If you send a request to multiple
    #   agents/connectors and you do not have permission to contact some of
    #   those agents/connectors, the system does not throw an exception.
    #   Instead, the system shows `Failed` in the *Description* field.
    #   @return [Array<String>]
    #
    class StartDataCollectionByAgentIdsRequest < Struct.new(
      :agent_ids)
      include Aws::Structure
    end

    # @!attribute [rw] agents_configuration_status
    #   Information about agents or the connector that were instructed to
    #   start collecting data. Information includes the agent/connector ID,
    #   a description of the operation performed, and whether the
    #   agent/connector configuration was updated.
    #   @return [Array<Types::AgentConfigurationStatus>]
    #
    class StartDataCollectionByAgentIdsResponse < Struct.new(
      :agents_configuration_status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartExportTaskRequest
    #   data as a hash:
    #
    #       {
    #         export_data_format: ["CSV"], # accepts CSV, GRAPHML
    #         filters: [
    #           {
    #             name: "FilterName", # required
    #             values: ["FilterValue"], # required
    #             condition: "Condition", # required
    #           },
    #         ],
    #         start_time: Time.now,
    #         end_time: Time.now,
    #       }
    #
    # @!attribute [rw] export_data_format
    #   The file format for the returned export data. Default value is
    #   `CSV`. **Note:** *The* `GRAPHML` *option has been deprecated.*
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   If a filter is present, it selects the single `agentId` of the
    #   Application Discovery Agent for which data is exported. The
    #   `agentId` can be found in the results of the `DescribeAgents` API or
    #   CLI. If no filter is present, `startTime` and `endTime` are ignored
    #   and exported data includes both Agentless Discovery Connector data
    #   and summary data from Application Discovery agents.
    #   @return [Array<Types::ExportFilter>]
    #
    # @!attribute [rw] start_time
    #   The start timestamp for exported data from the single Application
    #   Discovery Agent selected in the filters. If no value is specified,
    #   data is exported starting from the first data collected by the
    #   agent.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end timestamp for exported data from the single Application
    #   Discovery Agent selected in the filters. If no value is specified,
    #   exported data includes the most recent data collected by the agent.
    #   @return [Time]
    #
    class StartExportTaskRequest < Struct.new(
      :export_data_format,
      :filters,
      :start_time,
      :end_time)
      include Aws::Structure
    end

    # @!attribute [rw] export_id
    #   A unique identifier used to query the status of an export request.
    #   @return [String]
    #
    class StartExportTaskResponse < Struct.new(
      :export_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopContinuousExportRequest
    #   data as a hash:
    #
    #       {
    #         export_id: "ConfigurationsExportId", # required
    #       }
    #
    # @!attribute [rw] export_id
    #   The unique ID assigned to this export.
    #   @return [String]
    #
    class StopContinuousExportRequest < Struct.new(
      :export_id)
      include Aws::Structure
    end

    # @!attribute [rw] start_time
    #   Timestamp that represents when this continuous export started
    #   collecting data.
    #   @return [Time]
    #
    # @!attribute [rw] stop_time
    #   Timestamp that represents when this continuous export was stopped.
    #   @return [Time]
    #
    class StopContinuousExportResponse < Struct.new(
      :start_time,
      :stop_time)
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
    #   The IDs of the agents or connectors from which to stop collecting
    #   data.
    #   @return [Array<String>]
    #
    class StopDataCollectionByAgentIdsRequest < Struct.new(
      :agent_ids)
      include Aws::Structure
    end

    # @!attribute [rw] agents_configuration_status
    #   Information about the agents or connector that were instructed to
    #   stop collecting data. Information includes the agent/connector ID, a
    #   description of the operation performed, and whether the
    #   agent/connector configuration was updated.
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
    #   The type of tag on which to filter.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   A value for a tag key on which to filter.
    #   @return [String]
    #
    class Tag < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # The tag filter. Valid names are: `tagKey`, `tagValue`,
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
    #   A name of the tag filter.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   Values for the tag filter.
    #   @return [Array<String>]
    #
    class TagFilter < Struct.new(
      :name,
      :values)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateApplicationRequest
    #   data as a hash:
    #
    #       {
    #         configuration_id: "ApplicationId", # required
    #         name: "String",
    #         description: "String",
    #       }
    #
    # @!attribute [rw] configuration_id
    #   Configuration ID of the application to be updated.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   New name of the application to be updated.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   New description of the application to be updated.
    #   @return [String]
    #
    class UpdateApplicationRequest < Struct.new(
      :configuration_id,
      :name,
      :description)
      include Aws::Structure
    end

    class UpdateApplicationResponse < Aws::EmptyStructure; end

  end
end
