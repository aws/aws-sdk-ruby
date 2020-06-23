# frozen_string_literal: true

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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    class AssociateConfigurationItemsToApplicationResponse < Aws::EmptyStructure; end

    # The AWS user account does not have permission to perform the action.
    # Check the IAM policy associated with this account.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class AuthorizationErrorException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Error messages returned for each import task that you deleted as a
    # response for this command.
    #
    # @!attribute [rw] import_task_id
    #   The unique import ID associated with the error that occurred.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The type of error that occurred for a specific import task.
    #   @return [String]
    #
    # @!attribute [rw] error_description
    #   The description of the error that occurred for a specific import
    #   task.
    #   @return [String]
    #
    class BatchDeleteImportDataError < Struct.new(
      :import_task_id,
      :error_code,
      :error_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchDeleteImportDataRequest
    #   data as a hash:
    #
    #       {
    #         import_task_ids: ["ImportTaskIdentifier"], # required
    #       }
    #
    # @!attribute [rw] import_task_ids
    #   The IDs for the import tasks that you want to delete.
    #   @return [Array<String>]
    #
    class BatchDeleteImportDataRequest < Struct.new(
      :import_task_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   Error messages returned for each import task that you deleted as a
    #   response for this command.
    #   @return [Array<Types::BatchDeleteImportDataError>]
    #
    class BatchDeleteImportDataResponse < Struct.new(
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    class ConflictErrorException < Struct.new(
      :message)
      SENSITIVE = []
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
    #   Contains information about any errors that have occurred. This data
    #   type can have the following values:
    #
    #   * ACCESS\_DENIED - You don’t have permission to start Data
    #     Exploration in Amazon Athena. Contact your AWS administrator for
    #     help. For more information, see [Setting Up AWS Application
    #     Discovery Service][1] in the Application Discovery Service User
    #     Guide.
    #
    #   * DELIVERY\_STREAM\_LIMIT\_FAILURE - You reached the limit for
    #     Amazon Kinesis Data Firehose delivery streams. Reduce the number
    #     of streams or request a limit increase and try again. For more
    #     information, see [Kinesis Data Streams Limits][2] in the Amazon
    #     Kinesis Data Streams Developer Guide.
    #
    #   * FIREHOSE\_ROLE\_MISSING - The Data Exploration feature is in an
    #     error state because your IAM User is missing the
    #     AWSApplicationDiscoveryServiceFirehose role. Turn on Data
    #     Exploration in Amazon Athena and try again. For more information,
    #     see [Step 3: Provide Application Discovery Service Access to
    #     Non-Administrator Users by Attaching Policies][3] in the
    #     Application Discovery Service User Guide.
    #
    #   * FIREHOSE\_STREAM\_DOES\_NOT\_EXIST - The Data Exploration feature
    #     is in an error state because your IAM User is missing one or more
    #     of the Kinesis data delivery streams.
    #
    #   * INTERNAL\_FAILURE - The Data Exploration feature is in an error
    #     state because of an internal failure. Try again later. If this
    #     problem persists, contact AWS Support.
    #
    #   * S3\_BUCKET\_LIMIT\_FAILURE - You reached the limit for Amazon S3
    #     buckets. Reduce the number of Amazon S3 buckets or request a limit
    #     increase and try again. For more information, see [Bucket
    #     Restrictions and Limitations][4] in the Amazon Simple Storage
    #     Service Developer Guide.
    #
    #   * S3\_NOT\_SIGNED\_UP - Your account is not signed up for the Amazon
    #     S3 service. You must sign up before you can use Amazon S3. You can
    #     sign up at the following URL: [https://aws.amazon.com/s3][5].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/application-discovery/latest/userguide/setting-up.html
    #   [2]: http://docs.aws.amazon.com/streams/latest/dev/service-sizes-and-limits.html
    #   [3]: http://docs.aws.amazon.com/application-discovery/latest/userguide/setting-up.html#setting-up-user-policy
    #   [4]: http://docs.aws.amazon.com/AmazonS3/latest/dev/BucketRestrictions.html
    #   [5]: https://aws.amazon.com/s3
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_id
    #   Configuration ID of an application to be created.
    #   @return [String]
    #
    class CreateApplicationResponse < Struct.new(
      :configuration_id)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configurations
    #   A key in the response map. The value is an array of data.
    #   @return [Array<Hash<String,String>>]
    #
    class DescribeConfigurationsResponse < Struct.new(
      :configurations)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   A list of continuous export IDs to search for.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeImportTasksRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "IMPORT_TASK_ID", # accepts IMPORT_TASK_ID, STATUS, NAME
    #             values: ["ImportTaskFilterValue"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] filters
    #   An array of name-value pairs that you provide to filter the results
    #   for the `DescribeImportTask` request to a specific subset of
    #   results. Currently, wildcard values aren't supported for filters.
    #   @return [Array<Types::ImportTaskFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that you want this request to return,
    #   up to 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to request a specific page of results.
    #   @return [String]
    #
    class DescribeImportTasksRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to request the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] tasks
    #   A returned array of import tasks that match any applied filters, up
    #   to the specified number of maximum results.
    #   @return [Array<Types::ImportTask>]
    #
    class DescribeImportTasksResponse < Struct.new(
      :next_token,
      :tasks)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    class DisassociateConfigurationItemsFromApplicationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] export_id
    #   A unique identifier that you can use to query the export status.
    #   @return [String]
    #
    class ExportConfigurationsResponse < Struct.new(
      :export_id)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter that can use conditional operators.
    #
    # For more information about filters, see [Querying Discovered
    # Configuration Items][1] in the *AWS Application Discovery Service User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/application-discovery/latest/userguide/discovery-api-queries.html
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The home region is not set. Set the home region to continue.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class HomeRegionNotSetException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An array of information related to the import task request that
    # includes status information, times, IDs, the Amazon S3 Object URL for
    # the import file, and more.
    #
    # @!attribute [rw] import_task_id
    #   The unique ID for a specific import task. These IDs aren't globally
    #   unique, but they are unique within an AWS account.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique token used to prevent the same import request from
    #   occurring more than once. If you didn't provide a token, a token
    #   was automatically generated when the import task request was sent.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A descriptive name for an import task. You can use this name to
    #   filter future requests related to this import task, such as
    #   identifying applications and servers that were included in this
    #   import task. We recommend that you use a meaningful name for each
    #   import task.
    #   @return [String]
    #
    # @!attribute [rw] import_url
    #   The URL for your import file that you've uploaded to Amazon S3.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the import task. An import can have the status of
    #   `IMPORT_COMPLETE` and still have some records fail to import from
    #   the overall request. More information can be found in the
    #   downloadable archive defined in the `errorsAndFailedEntriesZip`
    #   field, or in the Migration Hub management console.
    #   @return [String]
    #
    # @!attribute [rw] import_request_time
    #   The time that the import task request was made, presented in the
    #   Unix time stamp format.
    #   @return [Time]
    #
    # @!attribute [rw] import_completion_time
    #   The time that the import task request finished, presented in the
    #   Unix time stamp format.
    #   @return [Time]
    #
    # @!attribute [rw] import_deleted_time
    #   The time that the import task request was deleted, presented in the
    #   Unix time stamp format.
    #   @return [Time]
    #
    # @!attribute [rw] server_import_success
    #   The total number of server records in the import file that were
    #   successfully imported.
    #   @return [Integer]
    #
    # @!attribute [rw] server_import_failure
    #   The total number of server records in the import file that failed to
    #   be imported.
    #   @return [Integer]
    #
    # @!attribute [rw] application_import_success
    #   The total number of application records in the import file that were
    #   successfully imported.
    #   @return [Integer]
    #
    # @!attribute [rw] application_import_failure
    #   The total number of application records in the import file that
    #   failed to be imported.
    #   @return [Integer]
    #
    # @!attribute [rw] errors_and_failed_entries_zip
    #   A link to a compressed archive folder (in the ZIP format) that
    #   contains an error log and a file of failed records. You can use
    #   these two files to quickly identify records that failed, why they
    #   failed, and correct those records. Afterward, you can upload the
    #   corrected file to your Amazon S3 bucket and create another import
    #   task request.
    #
    #   This field also includes authorization information so you can
    #   confirm the authenticity of the compressed archive before you
    #   download it.
    #
    #   If some records failed to be imported we recommend that you correct
    #   the records in the failed entries file and then imports that failed
    #   entries file. This prevents you from having to correct and update
    #   the larger original file and attempt importing it again.
    #   @return [String]
    #
    class ImportTask < Struct.new(
      :import_task_id,
      :client_request_token,
      :name,
      :import_url,
      :status,
      :import_request_time,
      :import_completion_time,
      :import_deleted_time,
      :server_import_success,
      :server_import_failure,
      :application_import_success,
      :application_import_failure,
      :errors_and_failed_entries_zip)
      SENSITIVE = []
      include Aws::Structure
    end

    # A name-values pair of elements you can use to filter the results when
    # querying your import tasks. Currently, wildcards are not supported for
    # filters.
    #
    # <note markdown="1"> When filtering by import status, all other filter values are ignored.
    #
    #  </note>
    #
    # @note When making an API call, you may pass ImportTaskFilter
    #   data as a hash:
    #
    #       {
    #         name: "IMPORT_TASK_ID", # accepts IMPORT_TASK_ID, STATUS, NAME
    #         values: ["ImportTaskFilterValue"],
    #       }
    #
    # @!attribute [rw] name
    #   The name, status, or import task ID for a specific import task.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   An array of strings that you can provide to match against a specific
    #   name, status, or import task ID to filter the results for your
    #   import task queries.
    #   @return [Array<String>]
    #
    class ImportTaskFilter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more parameters are not valid. Verify the parameters and try
    # again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class InvalidParameterException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The value of one or more parameters are either invalid or out of
    # range. Verify the parameter values and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class InvalidParameterValueException < Struct.new(
      :message)
      SENSITIVE = []
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
    #   with this action, see [Using the ListConfigurations Action][1] in
    #   the *AWS Application Discovery Service User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/application-discovery/latest/userguide/discovery-api-queries.html#ListConfigurations
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
    #   for each filter, see [Using the ListConfigurations Action][1] in the
    #   *AWS Application Discovery Service User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/application-discovery/latest/userguide/discovery-api-queries.html#ListConfigurations
    #   @return [Array<Types::OrderByElement>]
    #
    class ListConfigurationsRequest < Struct.new(
      :configuration_type,
      :filters,
      :max_results,
      :next_token,
      :order_by)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # This operation is not permitted.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class OperationNotPermittedException < Struct.new(
      :message)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # This issue occurs when the same `clientRequestToken` is used with the
    # `StartImportTask` action, but with different parameters. For example,
    # you use the same request token but have two different import URLs, you
    # can encounter this issue. If the import tasks are meant to be
    # different, use a different `clientRequestToken`, and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class ResourceInUseException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified configuration ID was not located. Verify the
    # configuration ID and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The server experienced an internal error. Try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class ServerInternalErrorException < Struct.new(
      :message)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] export_id
    #   A unique identifier used to query the status of an export request.
    #   @return [String]
    #
    class StartExportTaskResponse < Struct.new(
      :export_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartImportTaskRequest
    #   data as a hash:
    #
    #       {
    #         client_request_token: "ClientRequestToken",
    #         name: "ImportTaskName", # required
    #         import_url: "ImportURL", # required
    #       }
    #
    # @!attribute [rw] client_request_token
    #   Optional. A unique token that you can provide to prevent the same
    #   import request from occurring more than once. If you don't provide
    #   a token, a token is automatically generated.
    #
    #   Sending more than one `StartImportTask` request with the same client
    #   request token will return information about the original import task
    #   with that client request token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A descriptive name for this request. You can use this name to filter
    #   future requests related to this import task, such as identifying
    #   applications and servers that were included in this import task. We
    #   recommend that you use a meaningful name for each import task.
    #   @return [String]
    #
    # @!attribute [rw] import_url
    #   The URL for your import file that you've uploaded to Amazon S3.
    #
    #   <note markdown="1"> If you're using the AWS CLI, this URL is structured as follows:
    #   `s3://BucketName/ImportFileName.CSV`
    #
    #    </note>
    #   @return [String]
    #
    class StartImportTaskRequest < Struct.new(
      :client_request_token,
      :name,
      :import_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task
    #   An array of information related to the import task request including
    #   status information, times, IDs, the Amazon S3 Object URL for the
    #   import file, and more.
    #   @return [Types::ImportTask]
    #
    class StartImportTaskResponse < Struct.new(
      :task)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    class UpdateApplicationResponse < Aws::EmptyStructure; end

  end
end
