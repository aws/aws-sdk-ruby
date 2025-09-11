# frozen_string_literal: true

# This is generated code!

module Aws::ApplicationDiscoveryService
  # This module contains the types returned by client operations.
  module Types

    # <p>Information about agents that were instructed to start collecting data.
    #       Information includes the agent ID, a description of the operation, and whether the
    #       agent configuration was updated.</p>
    # @!attribute agent_id
    #   <p>The agent ID.</p>
    #   @return [String]
    # @!attribute operation_succeeded
    #   <p>Information about the status of the <code>StartDataCollection</code> and
    #           <code>StopDataCollection</code> operations. The system has recorded the data collection
    #         operation. The agent receives this command the next time it polls for a new command.
    #       </p>
    #   @return [Boolean]
    # @!attribute description
    #   <p>A description of the operation performed.</p>
    #   @return [String]
    class AgentConfigurationStatus < Struct.new(
      :agent_id,
      :operation_succeeded,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:operation_succeeded] = false unless options.key?(:operation_succeeded)
        super
      end
    end

    # <p>Information about agents associated with the user’s Amazon Web Services account.
    #       Information includes agent IDs, IP addresses, media access control (MAC)
    #       addresses, agent or collector status, hostname where the agent resides, and agent
    #       version for each agent.</p>
    # @!attribute agent_id
    #   <p>The agent or collector ID.</p>
    #   @return [String]
    # @!attribute host_name
    #   <p>The name of the host where the agent or collector resides. The host can be a server or
    #         virtual machine.</p>
    #   @return [String]
    # @!attribute agent_network_info_list
    #   <p>Network details about the host where the agent or collector resides.</p>
    #   @return [Array<Types::AgentNetworkInfo>]
    # @!attribute connector_id
    #   <p>The ID of the connector.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The agent or collector version.</p>
    #   @return [String]
    # @!attribute health
    #   <p>The health of the agent.</p>
    #   @return [String]
    # @!attribute last_health_ping_time
    #   <p>Time since agent health was reported.</p>
    #   @return [String]
    # @!attribute collection_status
    #   <p>Status of the collection process for an agent.</p>
    #   @return [String]
    # @!attribute agent_type
    #   <p>Type of agent.</p>
    #   @return [String]
    # @!attribute registered_time
    #   <p>Agent's first registration timestamp in UTC.</p>
    #   @return [String]
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
      :registered_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Network details about the host where the agent/collector resides.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute ip_address
    #   <p>The IP address for the host where the agent/collector resides.</p>
    #   @return [String]
    # @!attribute mac_address
    #   <p>The MAC address for the host where the agent/collector resides.</p>
    #   @return [String]
    class AgentNetworkInfo < Struct.new(
      :ip_address,
      :mac_address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_configuration_id
    #   <p>The configuration ID of an application with which items are to be associated.</p>
    #   @return [String]
    # @!attribute configuration_ids
    #   <p>The ID of each configuration item to be associated with an application.</p>
    #   @return [Array<String>]
    class AssociateConfigurationItemsToApplicationRequest < Struct.new(
      :application_configuration_id,
      :configuration_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class AssociateConfigurationItemsToApplicationResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The user does not have permission to perform the action. Check the IAM
    #       policy associated with this user.</p>
    # @!attribute message
    #   @return [String]
    class AuthorizationErrorException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       An object representing the agent or data collector that failed to delete, each containing agentId, 
    #       errorMessage, and errorCode. 
    #     </p>
    # @!attribute agent_id
    #   <p>
    #         The ID of the agent or data collector to delete.
    #       </p>
    #   @return [String]
    # @!attribute error_message
    #   <p>
    #         The description of the error that occurred for the delete failed agent.
    #       </p>
    #   @return [String]
    # @!attribute error_code
    #   <p>
    #         The type of error that occurred for the delete failed agent. 
    #         Valid status are: AGENT_IN_USE | NOT_FOUND | INTERNAL_SERVER_ERROR.
    #       </p>
    #   @return [String]
    class BatchDeleteAgentError < Struct.new(
      :agent_id,
      :error_message,
      :error_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute delete_agents
    #   <p>
    #         The list of agents to delete.
    #       </p>
    #   @return [Array<Types::DeleteAgent>]
    class BatchDeleteAgentsRequest < Struct.new(
      :delete_agents,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute errors
    #   <p>
    #         A list of agent IDs that failed to delete during the deletion task, each paired with an error message.
    #       </p>
    #   @return [Array<Types::BatchDeleteAgentError>]
    class BatchDeleteAgentsResponse < Struct.new(
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       A metadata object that represents the deletion task being executed.
    #     </p>
    # @!attribute task_id
    #   <p>
    #         The deletion task's unique identifier. 
    #       </p>
    #   @return [String]
    # @!attribute status
    #   <p>
    #         The current execution status of the deletion task. 
    #         Valid status are: INITIALIZING | VALIDATING | DELETING | COMPLETED | FAILED.
    #       </p>
    #   @return [String]
    # @!attribute start_time
    #   <p>
    #         An epoch seconds timestamp (UTC) of when the deletion task was started.
    #       </p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>
    #         An epoch seconds timestamp (UTC) of when the deletion task was completed or failed.
    #       </p>
    #   @return [Time]
    # @!attribute configuration_type
    #   <p>
    #         The type of configuration item to delete. Supported types are: SERVER.
    #       </p>
    #   @return [String]
    # @!attribute requested_configurations
    #   <p>
    #         The list of configuration IDs that were originally requested to be deleted by the deletion task.
    #       </p>
    #   @return [Array<String>]
    # @!attribute deleted_configurations
    #   <p>
    #         The list of configuration IDs that were successfully deleted by the deletion task.
    #       </p>
    #   @return [Array<String>]
    # @!attribute failed_configurations
    #   <p>
    #         A list of configuration IDs that failed to delete during the deletion task, 
    #         each paired with an error message.
    #       </p>
    #   @return [Array<Types::FailedConfiguration>]
    # @!attribute deletion_warnings
    #   <p>
    #         A list of configuration IDs that produced warnings regarding their deletion, 
    #         paired with a warning message.
    #       </p>
    #   @return [Array<Types::DeletionWarning>]
    class BatchDeleteConfigurationTask < Struct.new(
      :task_id,
      :status,
      :start_time,
      :end_time,
      :configuration_type,
      :requested_configurations,
      :deleted_configurations,
      :failed_configurations,
      :deletion_warnings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Error messages returned for each import task that you deleted as a response for this
    #       command.</p>
    # @!attribute import_task_id
    #   <p>The unique import ID associated with the error that occurred.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The type of error that occurred for a specific import task.</p>
    #   @return [String]
    # @!attribute error_description
    #   <p>The description of the error that occurred for a specific import task.</p>
    #   @return [String]
    class BatchDeleteImportDataError < Struct.new(
      :import_task_id,
      :error_code,
      :error_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute import_task_ids
    #   <p>The IDs for the import tasks that you want to delete.</p>
    #   @return [Array<String>]
    # @!attribute delete_history
    #   <p>
    #         Set to <code>true</code> to remove the deleted import task from 
    #         <a>DescribeImportTasks</a>.
    #       </p>
    #   @return [Boolean]
    class BatchDeleteImportDataRequest < Struct.new(
      :import_task_ids,
      :delete_history,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute errors
    #   <p>Error messages returned for each import task that you deleted as a response for this
    #         command.</p>
    #   @return [Array<Types::BatchDeleteImportDataError>]
    class BatchDeleteImportDataResponse < Struct.new(
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Tags for a configuration item. Tags are metadata that help you categorize IT
    #       assets.</p>
    # @!attribute configuration_type
    #   <p>A type of IT asset to tag.</p>
    #   @return [String]
    # @!attribute configuration_id
    #   <p>The configuration ID for the item to tag. You can specify a list of keys and
    #         values.</p>
    #   @return [String]
    # @!attribute key
    #   <p>A type of tag on which to filter. For example,
    #         <i>serverType</i>.</p>
    #   @return [String]
    # @!attribute value
    #   <p>A value on which to filter. For example <i>key = serverType</i> and
    #           <i>value = web server</i>.</p>
    #   @return [String]
    # @!attribute time_of_creation
    #   <p>The time the configuration tag was created in Coordinated Universal Time
    #         (UTC).</p>
    #   @return [Time]
    class ConfigurationTag < Struct.new(
      :configuration_type,
      :configuration_id,
      :key,
      :value,
      :time_of_creation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Conflict error.</p>
    # @!attribute message
    #   @return [String]
    class ConflictErrorException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A list of continuous export descriptions.</p>
    # @!attribute export_id
    #   <p>The unique ID assigned to this export.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Describes the status of the export. Can be one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>START_IN_PROGRESS - setting up resources to start continuous export.</p>
    #               </li>
    #               <li>
    #                  <p>START_FAILED - an error occurred setting up continuous export. To recover, call
    #             start-continuous-export again.</p>
    #               </li>
    #               <li>
    #                  <p>ACTIVE - data is being exported to the customer bucket.</p>
    #               </li>
    #               <li>
    #                  <p>ERROR - an error occurred during export. To fix the issue, call
    #             stop-continuous-export and start-continuous-export.</p>
    #               </li>
    #               <li>
    #                  <p>STOP_IN_PROGRESS - stopping the export.</p>
    #               </li>
    #               <li>
    #                  <p>STOP_FAILED - an error occurred stopping the export. To recover, call
    #             stop-continuous-export again.</p>
    #               </li>
    #               <li>
    #                  <p>INACTIVE - the continuous export has been stopped. Data is no longer being exported
    #             to the customer bucket.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute status_detail
    #   <p>Contains information about any errors that have occurred. This data type can have the
    #         following values:</p>
    #            <ul>
    #               <li>
    #                  <p>ACCESS_DENIED - You don’t have permission to start Data Exploration in Amazon
    #             Athena. Contact your Amazon Web Services administrator for help. For more information, see <a href="http://docs.aws.amazon.com/application-discovery/latest/userguide/setting-up.html">Setting Up Amazon Web Services Application Discovery Service</a> in the Application Discovery
    #             Service User Guide.</p>
    #               </li>
    #               <li>
    #                  <p>DELIVERY_STREAM_LIMIT_FAILURE - You reached the limit for Amazon Kinesis Data
    #             Firehose delivery streams. Reduce the number of streams or request a limit increase and
    #             try again. For more information, see <a href="http://docs.aws.amazon.com/streams/latest/dev/service-sizes-and-limits.html">Kinesis Data Streams Limits</a> in the Amazon Kinesis Data Streams Developer
    #             Guide.</p>
    #               </li>
    #               <li>
    #                  <p>FIREHOSE_ROLE_MISSING - The Data Exploration feature is in an error state because
    #             your user is missing the Amazon Web ServicesApplicationDiscoveryServiceFirehose role. Turn on Data
    #             Exploration in Amazon Athena and try again. For more information, see <a href="https://docs.aws.amazon.com/application-discovery/latest/userguide/security-iam-awsmanpol.html#security-iam-awsmanpol-create-firehose-role">Creating the Amazon Web ServicesApplicationDiscoveryServiceFirehose Role</a> in the Application Discovery Service User Guide.</p>
    #               </li>
    #               <li>
    #                  <p>FIREHOSE_STREAM_DOES_NOT_EXIST - The Data Exploration feature is in an error state
    #             because your user is missing one or more of the Kinesis data delivery
    #             streams.</p>
    #               </li>
    #               <li>
    #                  <p>INTERNAL_FAILURE - The Data Exploration feature is in an error state because of an
    #             internal failure. Try again later. If this problem persists, contact Amazon Web Services
    #             Support.</p>
    #               </li>
    #               <li>
    #                  <p>LAKE_FORMATION_ACCESS_DENIED - You don't have sufficient lake formation permissions
    #             to start continuous export. For more information, see <a href="http://docs.aws.amazon.com/lake-formation/latest/dg/upgrade-glue-lake-formation.html">
    #               Upgrading Amazon Web Services Glue Data Permissions to the Amazon Web Services Lake Formation Model </a> in the
    #             Amazon Web Services <i>Lake Formation Developer Guide</i>. </p>
    #                  <p>You can use one of the following two ways to resolve this issue.</p>
    #                  <ol>
    #                     <li>
    #                        <p>If you don’t want to use the Lake Formation permission model, you can change
    #                 the default Data Catalog settings to use only Amazon Web Services Identity and Access Management
    #                 (IAM) access control for new databases. For more information, see <a href="https://docs.aws.amazon.com/lake-formation/latest/dg/getting-started-setup.html#setup-change-cat-settings">Change Data Catalog Settings</a> in the <i>Lake Formation Developer
    #                   Guide</i>.</p>
    #                     </li>
    #                     <li>
    #                        <p>You can give the service-linked IAM roles
    #                 AWSServiceRoleForApplicationDiscoveryServiceContinuousExport and
    #                 AWSApplicationDiscoveryServiceFirehose the required Lake Formation permissions. For
    #                 more information, see <a href="https://docs.aws.amazon.com/lake-formation/latest/dg/granting-database-permissions.html">
    #                   Granting Database Permissions</a> in the <i>Lake Formation Developer
    #                   Guide</i>. </p>
    #                        <ol>
    #                           <li>
    #                              <p>AWSServiceRoleForApplicationDiscoveryServiceContinuousExport - Grant
    #                     database creator permissions, which gives the role database creation ability and
    #                     implicit permissions for any created tables. For more information, see <a href="https://docs.aws.amazon.com/lake-formation/latest/dg/implicit-permissions.html">
    #                       Implicit Lake Formation Permissions </a> in the <i>Lake Formation
    #                       Developer Guide</i>.</p>
    #                           </li>
    #                           <li>
    #                              <p>AWSApplicationDiscoveryServiceFirehose - Grant describe permissions for all
    #                     tables in the database.</p>
    #                           </li>
    #                        </ol>
    #                     </li>
    #                  </ol>
    #               </li>
    #               <li>
    #                  <p>S3_BUCKET_LIMIT_FAILURE - You reached the limit for Amazon S3 buckets. Reduce the
    #             number of S3 buckets or request a limit increase and try again. For more information, see
    #               <a href="http://docs.aws.amazon.com/AmazonS3/latest/dev/BucketRestrictions.html">Bucket Restrictions and Limitations</a> in the Amazon Simple Storage Service
    #             Developer Guide.</p>
    #               </li>
    #               <li>
    #                  <p>S3_NOT_SIGNED_UP - Your account is not signed up for the  Amazon S3 service. You
    #             must sign up before you can use Amazon S3. You can sign up at the following URL: <a href="https://aws.amazon.com/s3">https://aws.amazon.com/s3</a>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute s3_bucket
    #   <p>The name of the s3 bucket where the export data parquet files are stored.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The timestamp representing when the continuous export was started.</p>
    #   @return [Time]
    # @!attribute stop_time
    #   <p>The timestamp that represents when this continuous export was stopped.</p>
    #   @return [Time]
    # @!attribute data_source
    #   <p>The type of data collector used to gather this data (currently only offered for
    #         AGENT).</p>
    #   @return [String]
    # @!attribute schema_storage_config
    #   <p>An object which describes how the data is stored.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>databaseName</code> - the name of the Glue database used to store the
    #             schema.</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    class ContinuousExportDescription < Struct.new(
      :export_id,
      :status,
      :status_detail,
      :s3_bucket,
      :start_time,
      :stop_time,
      :data_source,
      :schema_storage_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the application to be created.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the application to be created.</p>
    #   @return [String]
    # @!attribute wave
    #   <p>The name of the migration wave of the application to be created.</p>
    #   @return [String]
    class CreateApplicationRequest < Struct.new(
      :name,
      :description,
      :wave,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_id
    #   <p>The configuration ID of an application to be created.</p>
    #   @return [String]
    class CreateApplicationResponse < Struct.new(
      :configuration_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_ids
    #   <p>A list of configuration items that you want to tag.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>Tags that you want to associate with one or more configuration items. Specify the tags
    #         that you want to create in a <i>key</i>-<i>value</i> format. For
    #         example:</p>
    #            <p>
    #               <code>{"key": "serverType", "value": "webServer"}</code>
    #            </p>
    #   @return [Array<Types::Tag>]
    class CreateTagsRequest < Struct.new(
      :configuration_ids,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CreateTagsResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Inventory data for installed discovery agents.</p>
    # @!attribute active_agents
    #   <p>Number of active discovery agents.</p>
    #   @return [Integer]
    # @!attribute healthy_agents
    #   <p>Number of healthy discovery agents</p>
    #   @return [Integer]
    # @!attribute black_listed_agents
    #   <p>Number of blacklisted discovery agents.</p>
    #   @return [Integer]
    # @!attribute shutdown_agents
    #   <p>Number of discovery agents with status SHUTDOWN.</p>
    #   @return [Integer]
    # @!attribute unhealthy_agents
    #   <p>Number of unhealthy discovery agents.</p>
    #   @return [Integer]
    # @!attribute total_agents
    #   <p>Total number of discovery agents.</p>
    #   @return [Integer]
    # @!attribute unknown_agents
    #   <p>Number of unknown discovery agents.</p>
    #   @return [Integer]
    class CustomerAgentInfo < Struct.new(
      :active_agents,
      :healthy_agents,
      :black_listed_agents,
      :shutdown_agents,
      :unhealthy_agents,
      :total_agents,
      :unknown_agents,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:active_agents] = 0 unless options.key?(:active_agents)
        options[:healthy_agents] = 0 unless options.key?(:healthy_agents)
        options[:black_listed_agents] = 0 unless options.key?(:black_listed_agents)
        options[:shutdown_agents] = 0 unless options.key?(:shutdown_agents)
        options[:unhealthy_agents] = 0 unless options.key?(:unhealthy_agents)
        options[:total_agents] = 0 unless options.key?(:total_agents)
        options[:unknown_agents] = 0 unless options.key?(:unknown_agents)
        super
      end
    end

    # <p>The inventory data for installed Agentless Collector collectors. </p>
    # @!attribute active_agentless_collectors
    #   <p>The number of active Agentless Collector collectors. </p>
    #   @return [Integer]
    # @!attribute healthy_agentless_collectors
    #   <p>The number of healthy Agentless Collector collectors. </p>
    #   @return [Integer]
    # @!attribute deny_listed_agentless_collectors
    #   <p>The number of deny-listed Agentless Collector collectors. </p>
    #   @return [Integer]
    # @!attribute shutdown_agentless_collectors
    #   <p>The number of Agentless Collector collectors with <code>SHUTDOWN</code> status.
    #       </p>
    #   @return [Integer]
    # @!attribute unhealthy_agentless_collectors
    #   <p> The number of unhealthy Agentless Collector collectors. </p>
    #   @return [Integer]
    # @!attribute total_agentless_collectors
    #   <p> The total number of Agentless Collector collectors. </p>
    #   @return [Integer]
    # @!attribute unknown_agentless_collectors
    #   <p> The number of unknown Agentless Collector collectors. </p>
    #   @return [Integer]
    class CustomerAgentlessCollectorInfo < Struct.new(
      :active_agentless_collectors,
      :healthy_agentless_collectors,
      :deny_listed_agentless_collectors,
      :shutdown_agentless_collectors,
      :unhealthy_agentless_collectors,
      :total_agentless_collectors,
      :unknown_agentless_collectors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:active_agentless_collectors] = 0 unless options.key?(:active_agentless_collectors)
        options[:healthy_agentless_collectors] = 0 unless options.key?(:healthy_agentless_collectors)
        options[:deny_listed_agentless_collectors] = 0 unless options.key?(:deny_listed_agentless_collectors)
        options[:shutdown_agentless_collectors] = 0 unless options.key?(:shutdown_agentless_collectors)
        options[:unhealthy_agentless_collectors] = 0 unless options.key?(:unhealthy_agentless_collectors)
        options[:total_agentless_collectors] = 0 unless options.key?(:total_agentless_collectors)
        options[:unknown_agentless_collectors] = 0 unless options.key?(:unknown_agentless_collectors)
        super
      end
    end

    # <p>Inventory data for installed discovery connectors.</p>
    # @!attribute active_connectors
    #   <p>Number of active discovery connectors.</p>
    #   @return [Integer]
    # @!attribute healthy_connectors
    #   <p>Number of healthy discovery connectors.</p>
    #   @return [Integer]
    # @!attribute black_listed_connectors
    #   <p>Number of blacklisted discovery connectors.</p>
    #   @return [Integer]
    # @!attribute shutdown_connectors
    #   <p>Number of discovery connectors with status SHUTDOWN,</p>
    #   @return [Integer]
    # @!attribute unhealthy_connectors
    #   <p>Number of unhealthy discovery connectors.</p>
    #   @return [Integer]
    # @!attribute total_connectors
    #   <p>Total number of discovery connectors.</p>
    #   @return [Integer]
    # @!attribute unknown_connectors
    #   <p>Number of unknown discovery connectors.</p>
    #   @return [Integer]
    class CustomerConnectorInfo < Struct.new(
      :active_connectors,
      :healthy_connectors,
      :black_listed_connectors,
      :shutdown_connectors,
      :unhealthy_connectors,
      :total_connectors,
      :unknown_connectors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:active_connectors] = 0 unless options.key?(:active_connectors)
        options[:healthy_connectors] = 0 unless options.key?(:healthy_connectors)
        options[:black_listed_connectors] = 0 unless options.key?(:black_listed_connectors)
        options[:shutdown_connectors] = 0 unless options.key?(:shutdown_connectors)
        options[:unhealthy_connectors] = 0 unless options.key?(:unhealthy_connectors)
        options[:total_connectors] = 0 unless options.key?(:total_connectors)
        options[:unknown_connectors] = 0 unless options.key?(:unknown_connectors)
        super
      end
    end

    # <p> The inventory data for installed Migration Evaluator collectors. </p>
    # @!attribute active_me_collectors
    #   <p> The number of active Migration Evaluator collectors. </p>
    #   @return [Integer]
    # @!attribute healthy_me_collectors
    #   <p> The number of healthy Migration Evaluator collectors. </p>
    #   @return [Integer]
    # @!attribute deny_listed_me_collectors
    #   <p> The number of deny-listed Migration Evaluator collectors. </p>
    #   @return [Integer]
    # @!attribute shutdown_me_collectors
    #   <p> The number of Migration Evaluator collectors with <code>SHUTDOWN</code> status. </p>
    #   @return [Integer]
    # @!attribute unhealthy_me_collectors
    #   <p> The number of unhealthy Migration Evaluator collectors. </p>
    #   @return [Integer]
    # @!attribute total_me_collectors
    #   <p> The total number of Migration Evaluator collectors. </p>
    #   @return [Integer]
    # @!attribute unknown_me_collectors
    #   <p> The number of unknown Migration Evaluator collectors. </p>
    #   @return [Integer]
    class CustomerMeCollectorInfo < Struct.new(
      :active_me_collectors,
      :healthy_me_collectors,
      :deny_listed_me_collectors,
      :shutdown_me_collectors,
      :unhealthy_me_collectors,
      :total_me_collectors,
      :unknown_me_collectors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:active_me_collectors] = 0 unless options.key?(:active_me_collectors)
        options[:healthy_me_collectors] = 0 unless options.key?(:healthy_me_collectors)
        options[:deny_listed_me_collectors] = 0 unless options.key?(:deny_listed_me_collectors)
        options[:shutdown_me_collectors] = 0 unless options.key?(:shutdown_me_collectors)
        options[:unhealthy_me_collectors] = 0 unless options.key?(:unhealthy_me_collectors)
        options[:total_me_collectors] = 0 unless options.key?(:total_me_collectors)
        options[:unknown_me_collectors] = 0 unless options.key?(:unknown_me_collectors)
        super
      end
    end

    # <p>
    #       An object representing the agent or data collector to be deleted along with 
    #       the optional configurations for error handling.
    #     </p>
    # @!attribute agent_id
    #   <p>
    #         The ID of the agent or data collector to delete.
    #       </p>
    #   @return [String]
    # @!attribute force
    #   <p>
    #         Optional flag used to force delete an agent or data collector. It is needed to delete any agent in 
    #         HEALTHY/UNHEALTHY/RUNNING status. Note that deleting an agent that is actively reporting health causes it 
    #         to be re-registered with a different agent ID after data collector re-connects with Amazon Web Services.
    #       </p>
    #   @return [Boolean]
    class DeleteAgent < Struct.new(
      :agent_id,
      :force,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:force] = false unless options.key?(:force)
        super
      end
    end

    # @!attribute configuration_ids
    #   <p>Configuration ID of an application to be deleted.</p>
    #   @return [Array<String>]
    class DeleteApplicationsRequest < Struct.new(
      :configuration_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteApplicationsResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_ids
    #   <p>A list of configuration items with tags that you want to delete.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>Tags that you want to delete from one or more configuration items. Specify the tags
    #         that you want to delete in a <i>key</i>-<i>value</i> format. For
    #         example:</p>
    #            <p>
    #               <code>{"key": "serverType", "value": "webServer"}</code>
    #            </p>
    #   @return [Array<Types::Tag>]
    class DeleteTagsRequest < Struct.new(
      :configuration_ids,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteTagsResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       A configuration ID paired with a warning message.
    #     </p>
    # @!attribute configuration_id
    #   <p>
    #         The unique identifier of the configuration that produced a warning.
    #       </p>
    #   @return [String]
    # @!attribute warning_code
    #   <p>
    #         The integer warning code associated with the warning message.
    #       </p>
    #   @return [Integer]
    # @!attribute warning_text
    #   <p>
    #         A descriptive message of the warning the associated configuration ID produced. 
    #       </p>
    #   @return [String]
    class DeletionWarning < Struct.new(
      :configuration_id,
      :warning_code,
      :warning_text,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:warning_code] = 0 unless options.key?(:warning_code)
        super
      end
    end

    # @!attribute agent_ids
    #   <p>The agent or the collector IDs for which you want information. If you specify no IDs,
    #         the system returns information about all agents/collectors associated with your user.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>You can filter the request using various logical operators and a
    #           <i>key</i>-<i>value</i> format. For example: </p>
    #            <p>
    #               <code>{"key": "collectionStatus", "value": "STARTED"}</code>
    #            </p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_results
    #   <p>The total number of agents/collectors to return in a single page of output. The maximum
    #         value is 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Token to retrieve the next set of results. For example, if you previously specified 100
    #         IDs for <code>DescribeAgentsRequest$agentIds</code> but set
    #           <code>DescribeAgentsRequest$maxResults</code> to 10, you received a set of 10 results along
    #         with a token. Use that token in this query to get the next set of 10.</p>
    #   @return [String]
    class DescribeAgentsRequest < Struct.new(
      :agent_ids,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agents_info
    #   <p>Lists agents or the collector by ID or lists all agents/collectors associated with your
    #         user, if you did not specify an agent/collector ID. The output includes agent/collector
    #         IDs, IP addresses, media access control (MAC) addresses, agent/collector health, host name
    #         where the agent/collector resides, and the version number of each agent/collector.</p>
    #   @return [Array<Types::AgentInfo>]
    # @!attribute next_token
    #   <p>Token to retrieve the next set of results. For example, if you specified 100 IDs for
    #           <code>DescribeAgentsRequest$agentIds</code> but set
    #           <code>DescribeAgentsRequest$maxResults</code> to 10, you received a set of 10 results along
    #         with this token. Use this token in the next query to retrieve the next set of 10.</p>
    #   @return [String]
    class DescribeAgentsResponse < Struct.new(
      :agents_info,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>
    #           The ID of the task to delete.
    #         </p>
    #   @return [String]
    class DescribeBatchDeleteConfigurationTaskRequest < Struct.new(
      :task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task
    #   <p>
    #           The <code>BatchDeleteConfigurationTask</code> that represents the deletion task being executed.
    #         </p>
    #   @return [Types::BatchDeleteConfigurationTask]
    class DescribeBatchDeleteConfigurationTaskResponse < Struct.new(
      :task,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_ids
    #   <p>One or more configuration IDs.</p>
    #   @return [Array<String>]
    class DescribeConfigurationsRequest < Struct.new(
      :configuration_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configurations
    #   <p>A key in the response map. The value is an array of data.</p>
    #   @return [Array<Hash<String, String>>]
    class DescribeConfigurationsResponse < Struct.new(
      :configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute export_ids
    #   <p>The unique IDs assigned to the exports.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>A number between 1 and 100 specifying the maximum number of continuous export
    #         descriptions returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token from the previous call to <code>DescribeExportTasks</code>.</p>
    #   @return [String]
    class DescribeContinuousExportsRequest < Struct.new(
      :export_ids,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute descriptions
    #   <p>A list of continuous export descriptions.</p>
    #   @return [Array<Types::ContinuousExportDescription>]
    # @!attribute next_token
    #   <p>The token from the previous call to <code>DescribeExportTasks</code>.</p>
    #   @return [String]
    class DescribeContinuousExportsResponse < Struct.new(
      :descriptions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute export_ids
    #   <p>A list of continuous export IDs to search for.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>A number between 1 and 100 specifying the maximum number of continuous export
    #         descriptions returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token from the previous call to describe-export-tasks.</p>
    #   @return [String]
    class DescribeExportConfigurationsRequest < Struct.new(
      :export_ids,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute exports_info
    #   <p></p>
    #   @return [Array<Types::ExportInfo>]
    # @!attribute next_token
    #   <p>The token from the previous call to describe-export-tasks.</p>
    #   @return [String]
    class DescribeExportConfigurationsResponse < Struct.new(
      :exports_info,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute export_ids
    #   <p>One or more unique identifiers used to query the status of an export request.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>One or more filters.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AgentId</code> - ID of the agent whose collected data will be
    #             exported</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::ExportFilter>]
    # @!attribute max_results
    #   <p>The maximum number of volume results returned by <code>DescribeExportTasks</code> in
    #         paginated output. When this parameter is used, <code>DescribeExportTasks</code> only returns
    #           <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #         response element.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #           <code>DescribeExportTasks</code> request where <code>maxResults</code> was used and the
    #         results exceeded the value of that parameter. Pagination continues from the end of the
    #         previous results that returned the <code>nextToken</code> value. This value is null when there
    #         are no more results to return.</p>
    #   @return [String]
    class DescribeExportTasksRequest < Struct.new(
      :export_ids,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute exports_info
    #   <p>Contains one or more sets of export request details. When the status of a request is
    #           <code>SUCCEEDED</code>, the response includes a URL for an Amazon S3 bucket where you can
    #         view the data in a CSV file.</p>
    #   @return [Array<Types::ExportInfo>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future
    #           <code>DescribeExportTasks</code> request. When the results of a
    #           <code>DescribeExportTasks</code> request exceed <code>maxResults</code>, this value can be
    #         used to retrieve the next page of results. This value is null when there are no more results
    #         to return.</p>
    #   @return [String]
    class DescribeExportTasksResponse < Struct.new(
      :exports_info,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>An array of name-value pairs that you provide to filter the results for the
    #           <code>DescribeImportTask</code> request to a specific subset of results. Currently, wildcard
    #         values aren't supported for filters.</p>
    #   @return [Array<Types::ImportTaskFilter>]
    # @!attribute max_results
    #   <p>The maximum number of results that you want this request to return, up to 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to request a specific page of results.</p>
    #   @return [String]
    class DescribeImportTasksRequest < Struct.new(
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to request the next page of results.</p>
    #   @return [String]
    # @!attribute tasks
    #   <p>A returned array of import tasks that match any applied filters, up to the specified
    #         number of maximum results.</p>
    #   @return [Array<Types::ImportTask>]
    class DescribeImportTasksResponse < Struct.new(
      :next_token,
      :tasks,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>You can filter the list using a <i>key</i>-<i>value</i>
    #         format. You can separate these items by using logical operators. Allowed filters include
    #           <code>tagKey</code>, <code>tagValue</code>, and <code>configurationId</code>. </p>
    #   @return [Array<Types::TagFilter>]
    # @!attribute max_results
    #   <p>The total number of items to return in a single page of output. The maximum value is
    #         100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to start the list. Use this token to get the next set of results.</p>
    #   @return [String]
    class DescribeTagsRequest < Struct.new(
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>Depending on the input, this is a list of configuration items tagged with a specific
    #         tag, or a list of tags for a specific configuration item.</p>
    #   @return [Array<Types::ConfigurationTag>]
    # @!attribute next_token
    #   <p>The call returns a token. Use this token to get the next set of results.</p>
    #   @return [String]
    class DescribeTagsResponse < Struct.new(
      :tags,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_configuration_id
    #   <p>Configuration ID of an application from which each item is disassociated.</p>
    #   @return [String]
    # @!attribute configuration_ids
    #   <p>Configuration ID of each item to be disassociated from an application.</p>
    #   @return [Array<String>]
    class DisassociateConfigurationItemsFromApplicationRequest < Struct.new(
      :application_configuration_id,
      :configuration_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DisassociateConfigurationItemsFromApplicationResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Indicates that the exported data must include EC2 instance type matches for on-premises servers 
    #       that are discovered through Amazon Web Services Application Discovery Service.
    #     </p>
    # @!attribute enabled
    #   <p>
    #         If set to true, the export 
    #         <a href="https://docs.aws.amazon.com/application-discovery/latest/APIReference/API_StartExportTask.html#API_StartExportTask_RequestSyntax">preferences</a>
    #         is set to <code>Ec2RecommendationsExportPreferences</code>.
    #       </p>
    #   @return [Boolean]
    # @!attribute cpu_performance_metric_basis
    #   <p>
    #         The recommended EC2 instance type that matches the CPU usage metric of server performance data.
    #       </p>
    #   @return [Types::UsageMetricBasis]
    # @!attribute ram_performance_metric_basis
    #   <p>
    #         The recommended EC2 instance type that matches the Memory usage metric of server performance data.
    #       </p>
    #   @return [Types::UsageMetricBasis]
    # @!attribute tenancy
    #   <p>
    #         The target tenancy to use for your recommended EC2 instances.
    #       </p>
    #   @return [String]
    # @!attribute excluded_instance_types
    #   <p>
    #         An array of instance types to exclude from recommendations.
    #       </p>
    #   @return [Array<String>]
    # @!attribute preferred_region
    #   <p>
    #         The target Amazon Web Services Region for the recommendations. 
    #         You can use any of the Region codes available for the chosen service, 
    #         as listed in <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html">Amazon Web Services service endpoints</a> in the <i>Amazon Web Services General Reference</i>.
    #       </p>
    #   @return [String]
    # @!attribute reserved_instance_options
    #   <p>
    #         The contract type for a reserved instance. 
    #         If blank, we assume an On-Demand instance is preferred.
    #       </p>
    #   @return [Types::ReservedInstanceOptions]
    class Ec2RecommendationsExportPreferences < Struct.new(
      :enabled,
      :cpu_performance_metric_basis,
      :ram_performance_metric_basis,
      :tenancy,
      :excluded_instance_types,
      :preferred_region,
      :reserved_instance_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # @!attribute export_id
    #   <p>A unique identifier that you can use to query the export status.</p>
    #   @return [String]
    class ExportConfigurationsResponse < Struct.new(
      :export_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Used to select which agent's data is to be exported. A single agent ID may be selected
    #       for export using the <a href="http://docs.aws.amazon.com/application-discovery/latest/APIReference/API_StartExportTask.html">StartExportTask</a> action.</p>
    # @!attribute name
    #   <p>A single <code>ExportFilter</code> name. Supported filters:
    #         <code>agentIds</code>.</p>
    #   @return [String]
    # @!attribute values
    #   <p>A single agent ID for a Discovery Agent. An agent ID can be found using the <a href="http://docs.aws.amazon.com/application-discovery/latest/APIReference/API_DescribeAgents.html">DescribeAgents</a> action. Typically an ADS agent ID is in the form
    #           <code>o-0123456789abcdef0</code>.</p>
    #   @return [Array<String>]
    # @!attribute condition
    #   <p>Supported condition: <code>EQUALS</code>
    #            </p>
    #   @return [String]
    class ExportFilter < Struct.new(
      :name,
      :values,
      :condition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information regarding the export status of discovered data. The value is an array of
    #       objects.</p>
    # @!attribute export_id
    #   <p>A unique identifier used to query an export.</p>
    #   @return [String]
    # @!attribute export_status
    #   <p>The status of the data export job.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>A status message provided for API callers.</p>
    #   @return [String]
    # @!attribute configurations_download_url
    #   <p>A URL for an Amazon S3 bucket where you can review the exported data. The URL is
    #         displayed only if the export succeeded.</p>
    #   @return [String]
    # @!attribute export_request_time
    #   <p>The time that the data export was initiated.</p>
    #   @return [Time]
    # @!attribute is_truncated
    #   <p>If true, the export of agent information exceeded the size limit for a single export
    #         and the exported data is incomplete for the requested time range. To address this, select a
    #         smaller time range for the export by using <code>startDate</code> and
    #         <code>endDate</code>.</p>
    #   @return [Boolean]
    # @!attribute requested_start_time
    #   <p>The value of <code>startTime</code> parameter in the <code>StartExportTask</code>
    #         request. If no <code>startTime</code> was requested, this result does not appear in
    #           <code>ExportInfo</code>.</p>
    #   @return [Time]
    # @!attribute requested_end_time
    #   <p>The <code>endTime</code> used in the <code>StartExportTask</code> request. If no
    #           <code>endTime</code> was requested, this result does not appear in
    #         <code>ExportInfo</code>.</p>
    #   @return [Time]
    class ExportInfo < Struct.new(
      :export_id,
      :export_status,
      :status_message,
      :configurations_download_url,
      :export_request_time,
      :is_truncated,
      :requested_start_time,
      :requested_end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_truncated] = false unless options.key?(:is_truncated)
        super
      end
    end

    # <p>
    #       Indicates the type of data that is being exported. Only one 
    #       <code>ExportPreferences</code> can be enabled for a 
    #       <a href="https://docs.aws.amazon.com/application-discovery/latest/APIReference/API_StartExportTask.html">StartExportTask</a> action. 
    #     </p>
    # @!attribute ec2_recommendations_preferences
    #   <p>
    #         If enabled, exported data includes EC2 instance type matches for on-premises servers 
    #         discovered through Amazon Web Services Application Discovery Service.
    #       </p>
    #   @return [Types::Ec2RecommendationsExportPreferences]
    class ExportPreferences < Struct.new(
      :ec2_recommendations_preferences,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Ec2RecommendationsPreferences < ExportPreferences; end
      class Unknown < ExportPreferences; end
    end

    # <p>
    #       A configuration ID paired with an error message.
    #     </p>
    # @!attribute configuration_id
    #   <p>
    #         The unique identifier of the configuration the failed to delete.
    #       </p>
    #   @return [String]
    # @!attribute error_status_code
    #   <p>
    #         The integer error code associated with the error message.
    #       </p>
    #   @return [Integer]
    # @!attribute error_message
    #   <p>
    #         A descriptive message indicating why the associated configuration failed to delete.
    #       </p>
    #   @return [String]
    class FailedConfiguration < Struct.new(
      :configuration_id,
      :error_status_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:error_status_code] = 0 unless options.key?(:error_status_code)
        super
      end
    end

    # <p>A filter that can use conditional operators.</p>
    #          <p>For more information about filters, see <a href="https://docs.aws.amazon.com/application-discovery/latest/userguide/discovery-api-queries.html">Querying Discovered
    #         Configuration Items</a> in the <i>Amazon Web Services Application Discovery Service User
    #         Guide</i>. </p>
    # @!attribute name
    #   <p>The name of the filter.</p>
    #   @return [String]
    # @!attribute values
    #   <p>A string value on which to filter. For example, if you choose the
    #           <code>destinationServer.osVersion</code> filter name, you could specify <code>Ubuntu</code>
    #         for the value.</p>
    #   @return [Array<String>]
    # @!attribute condition
    #   <p>A conditional operator. The following operators are valid: EQUALS, NOT_EQUALS,
    #         CONTAINS, NOT_CONTAINS. If you specify multiple filters, the system utilizes all filters as
    #         though concatenated by <i>AND</i>. If you specify multiple values for a
    #         particular filter, the system differentiates the values using <i>OR</i>. Calling
    #         either <i>DescribeConfigurations</i> or <i>ListConfigurations</i>
    #         returns attributes of matching configuration items.</p>
    #   @return [String]
    class Filter < Struct.new(
      :name,
      :values,
      :condition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class GetDiscoverySummaryRequest < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute servers
    #   <p>The number of servers discovered.</p>
    #   @return [Integer]
    # @!attribute applications
    #   <p>The number of applications discovered.</p>
    #   @return [Integer]
    # @!attribute servers_mapped_to_applications
    #   <p>The number of servers mapped to applications.</p>
    #   @return [Integer]
    # @!attribute servers_mappedto_tags
    #   <p>The number of servers mapped to tags.</p>
    #   @return [Integer]
    # @!attribute agent_summary
    #   <p>Details about discovered agents, including agent status and health.</p>
    #   @return [Types::CustomerAgentInfo]
    # @!attribute connector_summary
    #   <p>Details about discovered connectors, including connector status and health.</p>
    #   @return [Types::CustomerConnectorInfo]
    # @!attribute me_collector_summary
    #   <p> Details about Migration Evaluator collectors, including collector status and health. </p>
    #   @return [Types::CustomerMeCollectorInfo]
    # @!attribute agentless_collector_summary
    #   <p> Details about Agentless Collector collectors, including status. </p>
    #   @return [Types::CustomerAgentlessCollectorInfo]
    class GetDiscoverySummaryResponse < Struct.new(
      :servers,
      :applications,
      :servers_mapped_to_applications,
      :servers_mappedto_tags,
      :agent_summary,
      :connector_summary,
      :me_collector_summary,
      :agentless_collector_summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:servers] = 0 unless options.key?(:servers)
        options[:applications] = 0 unless options.key?(:applications)
        options[:servers_mapped_to_applications] = 0 unless options.key?(:servers_mapped_to_applications)
        options[:servers_mappedto_tags] = 0 unless options.key?(:servers_mappedto_tags)
        super
      end
    end

    # <p>The home Region is not set. Set the home Region to continue.</p>
    # @!attribute message
    #   @return [String]
    class HomeRegionNotSetException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An array of information related to the import task request that includes status
    #       information, times, IDs, the Amazon S3 Object URL for the import file, and more.</p>
    # @!attribute import_task_id
    #   <p>The unique ID for a specific import task. These IDs aren't globally unique, but they are
    #         unique within an Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique token used to prevent the same import request from occurring more than once. If
    #         you didn't provide a token, a token was automatically generated when the import task request
    #         was sent.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A descriptive name for an import task. You can use this name to filter future requests
    #         related to this import task, such as identifying applications and servers that were included
    #         in this import task. We recommend that you use a meaningful name for each import task.</p>
    #   @return [String]
    # @!attribute import_url
    #   <p>The URL for your import file that you've uploaded to Amazon S3.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the import task. An import can have the status of
    #           <code>IMPORT_COMPLETE</code> and still have some records fail to import from the overall
    #         request. More information can be found in the downloadable archive defined in the
    #           <code>errorsAndFailedEntriesZip</code> field, or in the Migration Hub management
    #         console.</p>
    #   @return [String]
    # @!attribute import_request_time
    #   <p>The time that the import task request was made, presented in the Unix time stamp
    #         format.</p>
    #   @return [Time]
    # @!attribute import_completion_time
    #   <p>The time that the import task request finished, presented in the Unix time stamp
    #         format.</p>
    #   @return [Time]
    # @!attribute import_deleted_time
    #   <p>The time that the import task request was deleted, presented in the Unix time stamp
    #         format.</p>
    #   @return [Time]
    # @!attribute file_classification
    #   <p>The type of file detected by the import task.</p>
    #   @return [String]
    # @!attribute server_import_success
    #   <p>The total number of server records in the import file that were successfully
    #         imported.</p>
    #   @return [Integer]
    # @!attribute server_import_failure
    #   <p>The total number of server records in the import file that failed to be imported.</p>
    #   @return [Integer]
    # @!attribute application_import_success
    #   <p>The total number of application records in the import file that were successfully
    #         imported.</p>
    #   @return [Integer]
    # @!attribute application_import_failure
    #   <p>The total number of application records in the import file that failed to be
    #         imported.</p>
    #   @return [Integer]
    # @!attribute errors_and_failed_entries_zip
    #   <p>A link to a compressed archive folder (in the ZIP format) that contains an error log and a
    #         file of failed records. You can use these two files to quickly identify records that failed,
    #         why they failed, and correct those records. Afterward, you can upload the corrected file to
    #         your Amazon S3 bucket and create another import task request.</p>
    #            <p>This field also includes authorization information so you can confirm the authenticity of
    #         the compressed archive before you download it.</p>
    #            <p>If some records failed to be imported we recommend that you correct the records in the
    #         failed entries file and then imports that failed entries file. This prevents you from having
    #         to correct and update the larger original file and attempt importing it again.</p>
    #   @return [String]
    class ImportTask < Struct.new(
      :import_task_id,
      :client_request_token,
      :name,
      :import_url,
      :status,
      :import_request_time,
      :import_completion_time,
      :import_deleted_time,
      :file_classification,
      :server_import_success,
      :server_import_failure,
      :application_import_success,
      :application_import_failure,
      :errors_and_failed_entries_zip,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:server_import_success] = 0 unless options.key?(:server_import_success)
        options[:server_import_failure] = 0 unless options.key?(:server_import_failure)
        options[:application_import_success] = 0 unless options.key?(:application_import_success)
        options[:application_import_failure] = 0 unless options.key?(:application_import_failure)
        super
      end
    end

    # <p>A name-values pair of elements you can use to filter the results when querying your import
    #       tasks. Currently, wildcards are not supported for filters.</p>
    #          <note>
    #             <p>When filtering by import status, all other filter values are ignored.</p>
    #          </note>
    # @!attribute name
    #   <p>The name, status, or import task ID for a specific import task.</p>
    #   @return [String]
    # @!attribute values
    #   <p>An array of strings that you can provide to match against a specific name, status, or
    #         import task ID to filter the results for your import task queries.</p>
    #   @return [Array<String>]
    class ImportTaskFilter < Struct.new(
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>One or more parameters are not valid. Verify the parameters and try again.</p>
    # @!attribute message
    #   @return [String]
    class InvalidParameterException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The value of one or more parameters are either invalid or out of range. Verify the
    #       parameter values and try again.</p>
    # @!attribute message
    #   @return [String]
    class InvalidParameterValueException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       The limit of 200 configuration IDs per request has been exceeded.
    #     </p>
    # @!attribute message
    #   @return [String]
    class LimitExceededException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_type
    #   <p>A valid configuration identified by Application Discovery Service. </p>
    #   @return [String]
    # @!attribute filters
    #   <p>You can filter the request using various logical operators and a
    #           <i>key</i>-<i>value</i> format. For example: </p>
    #            <p>
    #               <code>{"key": "serverType", "value": "webServer"}</code>
    #            </p>
    #            <p>For a complete list of filter options and guidance about using them with this action,
    #         see <a href="https://docs.aws.amazon.com/application-discovery/latest/userguide/discovery-api-queries.html#ListConfigurations">Using the ListConfigurations Action</a> in the <i>Amazon Web Services Application Discovery
    #           Service User Guide</i>.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_results
    #   <p>The total number of items to return. The maximum value is 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Token to retrieve the next set of results. For example, if a previous call to
    #         ListConfigurations returned 100 items, but you set
    #           <code>ListConfigurationsRequest$maxResults</code> to 10, you received a set of 10 results
    #         along with a token. Use that token in this query to get the next set of 10.</p>
    #   @return [String]
    # @!attribute order_by
    #   <p>Certain filter criteria return output that can be sorted in ascending or descending
    #         order. For a list of output characteristics for each filter, see <a href="https://docs.aws.amazon.com/application-discovery/latest/userguide/discovery-api-queries.html#ListConfigurations">Using the ListConfigurations Action</a> in the <i>Amazon Web Services Application Discovery
    #           Service User Guide</i>.</p>
    #   @return [Array<Types::OrderByElement>]
    class ListConfigurationsRequest < Struct.new(
      :configuration_type,
      :filters,
      :max_results,
      :next_token,
      :order_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configurations
    #   <p>Returns configuration details, including the configuration ID, attribute names, and
    #         attribute values.</p>
    #   @return [Array<Hash<String, String>>]
    # @!attribute next_token
    #   <p>Token to retrieve the next set of results. For example, if your call to
    #         ListConfigurations returned 100 items, but you set
    #           <code>ListConfigurationsRequest$maxResults</code> to 10, you received a set of 10 results
    #         along with this token. Use this token in the next query to retrieve the next set of
    #         10.</p>
    #   @return [String]
    class ListConfigurationsResponse < Struct.new(
      :configurations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_id
    #   <p>Configuration ID of the server for which neighbors are being listed.</p>
    #   @return [String]
    # @!attribute port_information_needed
    #   <p>Flag to indicate if port and protocol information is needed as part of the
    #         response.</p>
    #   @return [Boolean]
    # @!attribute neighbor_configuration_ids
    #   <p>List of configuration IDs to test for one-hop-away.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>Maximum number of results to return in a single page of output.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Token to retrieve the next set of results. For example, if you previously specified 100
    #         IDs for <code>ListServerNeighborsRequest$neighborConfigurationIds</code> but set
    #           <code>ListServerNeighborsRequest$maxResults</code> to 10, you received a set of 10 results
    #         along with a token. Use that token in this query to get the next set of 10.</p>
    #   @return [String]
    class ListServerNeighborsRequest < Struct.new(
      :configuration_id,
      :port_information_needed,
      :neighbor_configuration_ids,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute neighbors
    #   <p>List of distinct servers that are one hop away from the given server.</p>
    #   @return [Array<Types::NeighborConnectionDetail>]
    # @!attribute next_token
    #   <p>Token to retrieve the next set of results. For example, if you specified 100 IDs for
    #           <code>ListServerNeighborsRequest$neighborConfigurationIds</code> but set
    #           <code>ListServerNeighborsRequest$maxResults</code> to 10, you received a set of 10 results
    #         along with this token. Use this token in the next query to retrieve the next set of
    #         10.</p>
    #   @return [String]
    # @!attribute known_dependency_count
    #   <p>Count of distinct servers that are one hop away from the given server.</p>
    #   @return [Integer]
    class ListServerNeighborsResponse < Struct.new(
      :neighbors,
      :next_token,
      :known_dependency_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:known_dependency_count] = 0 unless options.key?(:known_dependency_count)
        super
      end
    end

    # <p>Details about neighboring servers.</p>
    # @!attribute source_server_id
    #   <p>The ID of the server that opened the network connection.</p>
    #   @return [String]
    # @!attribute destination_server_id
    #   <p>The ID of the server that accepted the network connection.</p>
    #   @return [String]
    # @!attribute destination_port
    #   <p>The destination network port for the connection.</p>
    #   @return [Integer]
    # @!attribute transport_protocol
    #   <p>The network protocol used for the connection.</p>
    #   @return [String]
    # @!attribute connections_count
    #   <p>The number of open network connections with the neighboring server.</p>
    #   @return [Integer]
    class NeighborConnectionDetail < Struct.new(
      :source_server_id,
      :destination_server_id,
      :destination_port,
      :transport_protocol,
      :connections_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:connections_count] = 0 unless options.key?(:connections_count)
        super
      end
    end

    # <p>This operation is not permitted.</p>
    # @!attribute message
    #   @return [String]
    class OperationNotPermittedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A field and direction for ordered output.</p>
    # @!attribute field_name
    #   <p>The field on which to order.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>Ordering direction.</p>
    #   @return [String]
    class OrderByElement < Struct.new(
      :field_name,
      :sort_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Used to provide Reserved Instance preferences for the recommendation.
    #     </p>
    # @!attribute purchasing_option
    #   <p>
    #         The payment plan to use for your Reserved Instance.
    #       </p>
    #   @return [String]
    # @!attribute offering_class
    #   <p>
    #       The flexibility to change the instance types needed for your Reserved Instance.
    #       </p>
    #   @return [String]
    # @!attribute term_length
    #   <p>
    #         The preferred duration of the Reserved Instance term.
    #       </p>
    #   @return [String]
    class ReservedInstanceOptions < Struct.new(
      :purchasing_option,
      :offering_class,
      :term_length,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This issue occurs when the same <code>clientRequestToken</code> is used with the
    #         <code>StartImportTask</code> action, but with different parameters. For example, you use the
    #       same request token but have two different import URLs, you can encounter this issue. If the
    #       import tasks are meant to be different, use a different <code>clientRequestToken</code>, and
    #       try again.</p>
    # @!attribute message
    #   @return [String]
    class ResourceInUseException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified configuration ID was not located. Verify the configuration ID and try
    #       again.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The server experienced an internal error. Try again.</p>
    # @!attribute message
    #   @return [String]
    class ServerInternalErrorException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_type
    #   <p>
    #           The type of configuration item to delete. Supported types are: SERVER.
    #         </p>
    #   @return [String]
    # @!attribute configuration_ids
    #   <p>
    #           The list of configuration IDs that will be deleted by the task.
    #         </p>
    #   @return [Array<String>]
    class StartBatchDeleteConfigurationTaskRequest < Struct.new(
      :configuration_type,
      :configuration_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>
    #           The unique identifier associated with the newly started deletion task.
    #         </p>
    #   @return [String]
    class StartBatchDeleteConfigurationTaskResponse < Struct.new(
      :task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StartContinuousExportRequest < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute export_id
    #   <p>The unique ID assigned to this export.</p>
    #   @return [String]
    # @!attribute s3_bucket
    #   <p>The name of the s3 bucket where the export data parquet files are stored.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The timestamp representing when the continuous export was started.</p>
    #   @return [Time]
    # @!attribute data_source
    #   <p>The type of data collector used to gather this data (currently only offered for
    #         AGENT).</p>
    #   @return [String]
    # @!attribute schema_storage_config
    #   <p>A dictionary which describes how the data is stored.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>databaseName</code> - the name of the Glue database used to store the
    #             schema.</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    class StartContinuousExportResponse < Struct.new(
      :export_id,
      :s3_bucket,
      :start_time,
      :data_source,
      :schema_storage_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_ids
    #   <p>The IDs of the agents from which to start collecting data. If you send a request to an
    #         agent ID that you do not have permission to contact, according to your Amazon Web Services account, the
    #         service does not throw an exception. Instead, it returns the error in the
    #           <i>Description</i> field. If you send a request to multiple agents and you do
    #         not have permission to contact some of those agents, the system does not throw an exception.
    #         Instead, the system shows <code>Failed</code> in the <i>Description</i>
    #         field.</p>
    #   @return [Array<String>]
    class StartDataCollectionByAgentIdsRequest < Struct.new(
      :agent_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agents_configuration_status
    #   <p>Information about agents that were instructed to start collecting data. Information
    #         includes the agent ID, a description of the operation performed, and whether the agent
    #         configuration was updated.</p>
    #   @return [Array<Types::AgentConfigurationStatus>]
    class StartDataCollectionByAgentIdsResponse < Struct.new(
      :agents_configuration_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute export_data_format
    #   <p>The file format for the returned export data. Default value is <code>CSV</code>.
    #           <b>Note:</b>
    #               <i>The</i>
    #               <code>GRAPHML</code>
    #               <i>option has been deprecated.</i>
    #            </p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>If a filter is present, it selects the single <code>agentId</code> of the Application
    #         Discovery Agent for which data is exported. The <code>agentId</code> can be found in the
    #         results of the <code>DescribeAgents</code> API or CLI. If no filter is present,
    #           <code>startTime</code> and <code>endTime</code> are ignored and exported data includes both
    #         Amazon Web Services Application Discovery Service Agentless Collector collectors data and summary data from Application Discovery
    #         Agent agents. </p>
    #   @return [Array<Types::ExportFilter>]
    # @!attribute start_time
    #   <p>The start timestamp for exported data from the single Application Discovery Agent
    #         selected in the filters. If no value is specified, data is exported starting from the first
    #         data collected by the agent.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end timestamp for exported data from the single Application Discovery Agent
    #         selected in the filters. If no value is specified, exported data includes the most recent data
    #         collected by the agent.</p>
    #   @return [Time]
    # @!attribute preferences
    #   <p>
    #         Indicates the type of data that needs to be exported. Only one 
    #         <a href="https://docs.aws.amazon.com/application-discovery/latest/APIReference/API_ExportPreferences.html">ExportPreferences</a> can be enabled at any time.
    #       </p>
    #   @return [Types::ExportPreferences]
    class StartExportTaskRequest < Struct.new(
      :export_data_format,
      :filters,
      :start_time,
      :end_time,
      :preferences,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute export_id
    #   <p>A unique identifier used to query the status of an export request.</p>
    #   @return [String]
    class StartExportTaskResponse < Struct.new(
      :export_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_request_token
    #   <p>Optional. A unique token that you can provide to prevent the same import request from
    #         occurring more than once. If you don't provide a token, a token is automatically
    #         generated.</p>
    #            <p>Sending more than one <code>StartImportTask</code> request with the same client request
    #         token will return information about the original import task with that client request
    #         token.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A descriptive name for this request. You can use this name to filter future requests
    #         related to this import task, such as identifying applications and servers that were included
    #         in this import task. We recommend that you use a meaningful name for each import task.</p>
    #   @return [String]
    # @!attribute import_url
    #   <p>The URL for your import file that you've uploaded to Amazon S3.</p>
    #            <note>
    #               <p>If you're using the Amazon Web Services CLI, this URL is structured as follows:
    #             <code>s3://BucketName/ImportFileName.CSV</code>
    #               </p>
    #            </note>
    #   @return [String]
    class StartImportTaskRequest < Struct.new(
      :client_request_token,
      :name,
      :import_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task
    #   <p>An array of information related to the import task request including status information,
    #         times, IDs, the Amazon S3 Object URL for the import file, and more. </p>
    #   @return [Types::ImportTask]
    class StartImportTaskResponse < Struct.new(
      :task,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute export_id
    #   <p>The unique ID assigned to this export.</p>
    #   @return [String]
    class StopContinuousExportRequest < Struct.new(
      :export_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute start_time
    #   <p>Timestamp that represents when this continuous export started collecting
    #         data.</p>
    #   @return [Time]
    # @!attribute stop_time
    #   <p>Timestamp that represents when this continuous export was stopped.</p>
    #   @return [Time]
    class StopContinuousExportResponse < Struct.new(
      :start_time,
      :stop_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_ids
    #   <p>The IDs of the agents from which to stop collecting data.</p>
    #   @return [Array<String>]
    class StopDataCollectionByAgentIdsRequest < Struct.new(
      :agent_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agents_configuration_status
    #   <p>Information about the agents that were instructed to stop collecting data. Information
    #         includes the agent ID, a description of the operation performed, and whether the agent
    #         configuration was updated.</p>
    #   @return [Array<Types::AgentConfigurationStatus>]
    class StopDataCollectionByAgentIdsResponse < Struct.new(
      :agents_configuration_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata that help you categorize IT assets.</p>
    #          <important>
    #             <p>Do not store sensitive information (like personal data) in tags.</p>
    #          </important>
    # @!attribute key
    #   <p>The type of tag on which to filter.</p>
    #   @return [String]
    # @!attribute value
    #   <p>A value for a tag key on which to filter.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The tag filter. Valid names are: <code>tagKey</code>, <code>tagValue</code>,
    #         <code>configurationId</code>.</p>
    # @!attribute name
    #   <p>A name of the tag filter.</p>
    #   @return [String]
    # @!attribute values
    #   <p>Values for the tag filter.</p>
    #   @return [Array<String>]
    class TagFilter < Struct.new(
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_id
    #   <p>Configuration ID of the application to be updated.</p>
    #   @return [String]
    # @!attribute name
    #   <p>New name of the application to be updated.</p>
    #   @return [String]
    # @!attribute description
    #   <p>New description of the application to be updated.</p>
    #   @return [String]
    # @!attribute wave
    #   <p>The new migration wave of the application that you want to update.</p>
    #   @return [String]
    class UpdateApplicationRequest < Struct.new(
      :configuration_id,
      :name,
      :description,
      :wave,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateApplicationResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Specifies the performance metrics to use for the server that is used for recommendations.
    #     </p>
    # @!attribute name
    #   <p>
    #         A utilization metric that is used by the recommendations.
    #       </p>
    #   @return [String]
    # @!attribute percentage_adjust
    #   <p>
    #         Specifies the percentage of the specified utilization metric that is used by the recommendations.
    #       </p>
    #   @return [Float]
    class UsageMetricBasis < Struct.new(
      :name,
      :percentage_adjust,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
