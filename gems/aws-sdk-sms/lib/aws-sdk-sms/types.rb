# frozen_string_literal: true

# This is generated code!

module Aws::SMS
  # This module contains the types returned by client operations.
  module Types

    # <p>Information about the application.</p>
    # @!attribute app_id
    #   <p>The unique ID of the application.</p>
    #   @return [String]
    # @!attribute imported_app_id
    #   <p>The ID of the application.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the application.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the application.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Status of the application.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>A message related to the status of the application</p>
    #   @return [String]
    # @!attribute replication_configuration_status
    #   <p>Status of the replication configuration.</p>
    #   @return [String]
    # @!attribute replication_status
    #   <p>The replication status of the application.</p>
    #   @return [String]
    # @!attribute replication_status_message
    #   <p>A message related to the replication status of the application.</p>
    #   @return [String]
    # @!attribute latest_replication_time
    #   <p>The timestamp of the application's most recent successful replication.</p>
    #   @return [Time]
    # @!attribute launch_configuration_status
    #   <p>Status of the launch configuration.</p>
    #   @return [String]
    # @!attribute launch_status
    #   <p>The launch status of the application.</p>
    #   @return [String]
    # @!attribute launch_status_message
    #   <p>A message related to the launch status of the application.</p>
    #   @return [String]
    # @!attribute launch_details
    #   <p>Details about the latest launch of the application.</p>
    #   @return [Types::LaunchDetails]
    # @!attribute creation_time
    #   <p>The creation time of the application.</p>
    #   @return [Time]
    # @!attribute last_modified
    #   <p>The last modified time of the application.</p>
    #   @return [Time]
    # @!attribute role_name
    #   <p>The name of the service role in the customer's account used by Server Migration Service.</p>
    #   @return [String]
    # @!attribute total_server_groups
    #   <p>The number of server groups present in the application.</p>
    #   @return [Integer]
    # @!attribute total_servers
    #   <p>The number of servers present in the application.</p>
    #   @return [Integer]
    class AppSummary < Struct.new(
      :app_id,
      :imported_app_id,
      :name,
      :description,
      :status,
      :status_message,
      :replication_configuration_status,
      :replication_status,
      :replication_status_message,
      :latest_replication_time,
      :launch_configuration_status,
      :launch_status,
      :launch_status_message,
      :launch_details,
      :creation_time,
      :last_modified,
      :role_name,
      :total_server_groups,
      :total_servers,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for validating an application.</p>
    # @!attribute validation_id
    #   <p>The ID of the validation.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the configuration.</p>
    #   @return [String]
    # @!attribute app_validation_strategy
    #   <p>The validation strategy.</p>
    #   @return [String]
    # @!attribute ssm_validation_parameters
    #   <p>The validation parameters.</p>
    #   @return [Types::SSMValidationParameters]
    class AppValidationConfiguration < Struct.new(
      :validation_id,
      :name,
      :app_validation_strategy,
      :ssm_validation_parameters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Output from validating an application.</p>
    # @!attribute ssm_output
    #   <p>Output from using SSM to validate the application.</p>
    #   @return [Types::SSMOutput]
    class AppValidationOutput < Struct.new(
      :ssm_output,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a connector.</p>
    # @!attribute connector_id
    #   <p>The ID of the connector.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The connector version.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the connector.</p>
    #   @return [String]
    # @!attribute capability_list
    #   <p>The capabilities of the connector.</p>
    #   @return [Array<String>]
    # @!attribute vm_manager_name
    #   <p>The name of the VM manager.</p>
    #   @return [String]
    # @!attribute vm_manager_type
    #   <p>The VM management product.</p>
    #   @return [String]
    # @!attribute vm_manager_id
    #   <p>The ID of the VM manager.</p>
    #   @return [String]
    # @!attribute ip_address
    #   <p>The IP address of the connector.</p>
    #   @return [String]
    # @!attribute mac_address
    #   <p>The MAC address of the connector.</p>
    #   @return [String]
    # @!attribute associated_on
    #   <p>The time the connector was associated.</p>
    #   @return [Time]
    class Connector < Struct.new(
      :connector_id,
      :version,
      :status,
      :capability_list,
      :vm_manager_name,
      :vm_manager_type,
      :vm_manager_id,
      :ip_address,
      :mac_address,
      :associated_on,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the new application.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the new application</p>
    #   @return [String]
    # @!attribute role_name
    #   <p>The name of the service role in the customer's account to be used by Server Migration Service.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of
    #               application creation.</p>
    #   @return [String]
    # @!attribute server_groups
    #   <p>The server groups to include in the application.</p>
    #   @return [Array<Types::ServerGroup>]
    # @!attribute tags
    #   <p>The tags to be associated with the application.</p>
    #   @return [Array<Types::Tag>]
    class CreateAppRequest < Struct.new(
      :name,
      :description,
      :role_name,
      :client_token,
      :server_groups,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_summary
    #   <p>A summary description of the application.</p>
    #   @return [Types::AppSummary]
    # @!attribute server_groups
    #   <p>The server groups included in the application.</p>
    #   @return [Array<Types::ServerGroup>]
    # @!attribute tags
    #   <p>The tags associated with the application.</p>
    #   @return [Array<Types::Tag>]
    class CreateAppResponse < Struct.new(
      :app_summary,
      :server_groups,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute server_id
    #   <p>The ID of the server.</p>
    #   @return [String]
    # @!attribute seed_replication_time
    #   <p>The seed replication time.</p>
    #   @return [Time]
    # @!attribute frequency
    #   <p>The time between consecutive replication runs, in hours.</p>
    #   @return [Integer]
    # @!attribute run_once
    #   <p>Indicates whether to run the replication job one time.</p>
    #   @return [Boolean]
    # @!attribute license_type
    #   <p>The license type to be used for the AMI created by a successful replication
    #               run.</p>
    #   @return [String]
    # @!attribute role_name
    #   <p>The name of the IAM role to be used by the Server Migration Service.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the replication job.</p>
    #   @return [String]
    # @!attribute number_of_recent_amis_to_keep
    #   <p>The maximum number of SMS-created AMIs to retain. The oldest is deleted after the
    #               maximum number is reached and a new AMI is created.</p>
    #   @return [Integer]
    # @!attribute encrypted
    #   <p>Indicates whether the replication job produces encrypted AMIs.</p>
    #   @return [Boolean]
    # @!attribute kms_key_id
    #   <p>The ID of the KMS key for replication jobs that produce encrypted AMIs. 
    #               This value can be any of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS key ID</p>
    #               </li>
    #               <li>
    #                  <p>KMS key alias</p>
    #               </li>
    #               <li>
    #                  <p>ARN referring to the KMS key ID</p>
    #               </li>
    #               <li>
    #                  <p>ARN referring to the KMS key alias</p>
    #               </li>
    #            </ul>
    #            <p> If encrypted is <i>true</i> but a KMS key ID is not specified, the
    #               customer's default KMS key for Amazon EBS is used. </p>
    #   @return [String]
    class CreateReplicationJobRequest < Struct.new(
      :server_id,
      :seed_replication_time,
      :frequency,
      :run_once,
      :license_type,
      :role_name,
      :description,
      :number_of_recent_amis_to_keep,
      :encrypted,
      :kms_key_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute replication_job_id
    #   <p>The unique identifier of the replication job.</p>
    #   @return [String]
    class CreateReplicationJobResponse < Struct.new(
      :replication_job_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The ID of the application.</p>
    #   @return [String]
    class DeleteAppLaunchConfigurationRequest < Struct.new(
      :app_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteAppLaunchConfigurationResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The ID of the application.</p>
    #   @return [String]
    class DeleteAppReplicationConfigurationRequest < Struct.new(
      :app_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteAppReplicationConfigurationResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The ID of the application.</p>
    #   @return [String]
    # @!attribute force_stop_app_replication
    #   <p>Indicates whether to stop all replication jobs corresponding to the servers
    #               in the application while deleting the application.</p>
    #   @return [Boolean]
    # @!attribute force_terminate_app
    #   <p>Indicates whether to terminate the stack corresponding to the
    #               application while deleting the application.</p>
    #   @return [Boolean]
    class DeleteAppRequest < Struct.new(
      :app_id,
      :force_stop_app_replication,
      :force_terminate_app,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteAppResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The ID of the application.</p>
    #   @return [String]
    class DeleteAppValidationConfigurationRequest < Struct.new(
      :app_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteAppValidationConfigurationResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute replication_job_id
    #   <p>The ID of the replication job.</p>
    #   @return [String]
    class DeleteReplicationJobRequest < Struct.new(
      :replication_job_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteReplicationJobResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteServerCatalogRequest < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteServerCatalogResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute connector_id
    #   <p>The ID of the connector.</p>
    #   @return [String]
    class DisassociateConnectorRequest < Struct.new(
      :connector_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DisassociateConnectorResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The user has the required permissions, so the request would have succeeded, 
    #             but a dry run was performed.</p>
    # @!attribute message
    #   @return [String]
    class DryRunOperationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The ID of the application associated with the change set.</p>
    #   @return [String]
    # @!attribute changeset_format
    #   <p>The format for the change set.</p>
    #   @return [String]
    class GenerateChangeSetRequest < Struct.new(
      :app_id,
      :changeset_format,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute s3_location
    #   <p>The location of the Amazon S3 object.</p>
    #   @return [Types::S3Location]
    class GenerateChangeSetResponse < Struct.new(
      :s3_location,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The ID of the application associated with the CloudFormation template.</p>
    #   @return [String]
    # @!attribute template_format
    #   <p>The format for generating the CloudFormation template.</p>
    #   @return [String]
    class GenerateTemplateRequest < Struct.new(
      :app_id,
      :template_format,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute s3_location
    #   <p>The location of the Amazon S3 object.</p>
    #   @return [Types::S3Location]
    class GenerateTemplateResponse < Struct.new(
      :s3_location,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The ID of the application.</p>
    #   @return [String]
    class GetAppLaunchConfigurationRequest < Struct.new(
      :app_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The ID of the application.</p>
    #   @return [String]
    # @!attribute role_name
    #   <p>The name of the service role in the customer's account that CloudFormation uses to launch the
    #               application.</p>
    #   @return [String]
    # @!attribute auto_launch
    #   <p>Indicates whether the application is configured to launch automatically after replication is complete.</p>
    #   @return [Boolean]
    # @!attribute server_group_launch_configurations
    #   <p>The launch configurations for server groups in this application.</p>
    #   @return [Array<Types::ServerGroupLaunchConfiguration>]
    class GetAppLaunchConfigurationResponse < Struct.new(
      :app_id,
      :role_name,
      :auto_launch,
      :server_group_launch_configurations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The ID of the application.</p>
    #   @return [String]
    class GetAppReplicationConfigurationRequest < Struct.new(
      :app_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute server_group_replication_configurations
    #   <p>The replication configurations associated with server groups in this application.</p>
    #   @return [Array<Types::ServerGroupReplicationConfiguration>]
    class GetAppReplicationConfigurationResponse < Struct.new(
      :server_group_replication_configurations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The ID of the application.</p>
    #   @return [String]
    class GetAppRequest < Struct.new(
      :app_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_summary
    #   <p>Information about the application.</p>
    #   @return [Types::AppSummary]
    # @!attribute server_groups
    #   <p>The server groups that belong to the application.</p>
    #   @return [Array<Types::ServerGroup>]
    # @!attribute tags
    #   <p>The tags associated with the application.</p>
    #   @return [Array<Types::Tag>]
    class GetAppResponse < Struct.new(
      :app_summary,
      :server_groups,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The ID of the application.</p>
    #   @return [String]
    class GetAppValidationConfigurationRequest < Struct.new(
      :app_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_validation_configurations
    #   <p>The configuration for application validation.</p>
    #   @return [Array<Types::AppValidationConfiguration>]
    # @!attribute server_group_validation_configurations
    #   <p>The configuration for instance validation.</p>
    #   @return [Array<Types::ServerGroupValidationConfiguration>]
    class GetAppValidationConfigurationResponse < Struct.new(
      :app_validation_configurations,
      :server_group_validation_configurations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The ID of the application.</p>
    #   @return [String]
    class GetAppValidationOutputRequest < Struct.new(
      :app_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute validation_output_list
    #   <p>The validation output.</p>
    #   @return [Array<Types::ValidationOutput>]
    class GetAppValidationOutputResponse < Struct.new(
      :validation_output_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. The default value is 50.
    #               To retrieve the remaining results, make another call with the returned
    #                   <code>NextToken</code> value.</p>
    #   @return [Integer]
    class GetConnectorsRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute connector_list
    #   <p>Information about the registered connectors.</p>
    #   @return [Array<Types::Connector>]
    # @!attribute next_token
    #   <p>The token required to retrieve the next set of results. This value is null when
    #               there are no more results to return.</p>
    #   @return [String]
    class GetConnectorsResponse < Struct.new(
      :connector_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute replication_job_id
    #   <p>The ID of the replication job.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. The default value is 50.
    #               To retrieve the remaining results, make another call with the returned
    #                   <code>NextToken</code> value.</p>
    #   @return [Integer]
    class GetReplicationJobsRequest < Struct.new(
      :replication_job_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute replication_job_list
    #   <p>Information about the replication jobs.</p>
    #   @return [Array<Types::ReplicationJob>]
    # @!attribute next_token
    #   <p>The token required to retrieve the next set of results. This value is null when
    #               there are no more results to return.</p>
    #   @return [String]
    class GetReplicationJobsResponse < Struct.new(
      :replication_job_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute replication_job_id
    #   <p>The ID of the replication job.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. The default value is 50.
    #               To retrieve the remaining results, make another call with the returned
    #                   <code>NextToken</code> value.</p>
    #   @return [Integer]
    class GetReplicationRunsRequest < Struct.new(
      :replication_job_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute replication_job
    #   <p>Information about the replication job.</p>
    #   @return [Types::ReplicationJob]
    # @!attribute replication_run_list
    #   <p>Information about the replication runs.</p>
    #   @return [Array<Types::ReplicationRun>]
    # @!attribute next_token
    #   <p>The token required to retrieve the next set of results. This value is null when
    #               there are no more results to return.</p>
    #   @return [String]
    class GetReplicationRunsResponse < Struct.new(
      :replication_job,
      :replication_run_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. The default value is 50.
    #               To retrieve the remaining results, make another call with the returned
    #                   <code>NextToken</code> value.</p>
    #   @return [Integer]
    # @!attribute vm_server_address_list
    #   <p>The server addresses.</p>
    #   @return [Array<Types::VmServerAddress>]
    class GetServersRequest < Struct.new(
      :next_token,
      :max_results,
      :vm_server_address_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute last_modified_on
    #   <p>The time when the server was last modified.</p>
    #   @return [Time]
    # @!attribute server_catalog_status
    #   <p>The status of the server catalog.</p>
    #   @return [String]
    # @!attribute server_list
    #   <p>Information about the servers.</p>
    #   @return [Array<Types::Server>]
    # @!attribute next_token
    #   <p>The token required to retrieve the next set of results. This value is null when
    #               there are no more results to return.</p>
    #   @return [String]
    class GetServersResponse < Struct.new(
      :last_modified_on,
      :server_catalog_status,
      :server_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute role_name
    #   <p>The name of the service role. If you omit this parameter, we create a service-linked role
    #               for Migration Hub in your account. Otherwise, the role that you provide must have the <a href="https://docs.aws.amazon.com/migrationhub/latest/ug/new-customer-setup.html#sms-managed">policy
    #                   and trust policy</a> described in the <i>Migration Hub User Guide</i>.</p>
    #   @return [String]
    class ImportAppCatalogRequest < Struct.new(
      :role_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class ImportAppCatalogResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class ImportServerCatalogRequest < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class ImportServerCatalogResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An internal error occurred.</p>
    # @!attribute message
    #   @return [String]
    class InternalError < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A specified parameter is not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidParameterException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The ID of the application.</p>
    #   @return [String]
    class LaunchAppRequest < Struct.new(
      :app_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class LaunchAppResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the latest launch of an application.</p>
    # @!attribute latest_launch_time
    #   <p>The latest time that this application was launched successfully.</p>
    #   @return [Time]
    # @!attribute stack_name
    #   <p>The name of the latest stack launched for this application.</p>
    #   @return [String]
    # @!attribute stack_id
    #   <p>The ID of the latest stack launched for this application.</p>
    #   @return [String]
    class LaunchDetails < Struct.new(
      :latest_launch_time,
      :stack_name,
      :stack_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_ids
    #   <p>The unique application IDs.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. The default value is 100. To
    #               retrieve the remaining results, make another call with the returned
    #                   <code>NextToken</code> value. </p>
    #   @return [Integer]
    class ListAppsRequest < Struct.new(
      :app_ids,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute apps
    #   <p>The application summaries.</p>
    #   @return [Array<Types::AppSummary>]
    # @!attribute next_token
    #   <p>The token required to retrieve the next set of results. This value is null when there
    #               are no more results to return.</p>
    #   @return [String]
    class ListAppsResponse < Struct.new(
      :apps,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A required parameter is missing.</p>
    # @!attribute message
    #   @return [String]
    class MissingRequiredParameterException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>There are no connectors available.</p>
    # @!attribute message
    #   @return [String]
    class NoConnectorsAvailableException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the status of validating an application.</p>
    # @!attribute validation_id
    #   <p>The ID of the validation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the validation.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The status message.</p>
    #   @return [String]
    class NotificationContext < Struct.new(
      :validation_id,
      :status,
      :status_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The ID of the application.</p>
    #   @return [String]
    # @!attribute notification_context
    #   <p>The notification information.</p>
    #   @return [Types::NotificationContext]
    class NotifyAppValidationOutputRequest < Struct.new(
      :app_id,
      :notification_context,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class NotifyAppValidationOutputResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This operation is not allowed.</p>
    # @!attribute message
    #   @return [String]
    class OperationNotPermittedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The ID of the application.</p>
    #   @return [String]
    # @!attribute role_name
    #   <p>The name of service role in the customer's account that CloudFormation uses to launch the
    #               application.</p>
    #   @return [String]
    # @!attribute auto_launch
    #   <p>Indicates whether the application is configured to launch automatically after replication is complete.</p>
    #   @return [Boolean]
    # @!attribute server_group_launch_configurations
    #   <p>Information about the launch configurations for server groups in the application.</p>
    #   @return [Array<Types::ServerGroupLaunchConfiguration>]
    class PutAppLaunchConfigurationRequest < Struct.new(
      :app_id,
      :role_name,
      :auto_launch,
      :server_group_launch_configurations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class PutAppLaunchConfigurationResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The ID of the application.</p>
    #   @return [String]
    # @!attribute server_group_replication_configurations
    #   <p>Information about the replication configurations for server groups in the application.</p>
    #   @return [Array<Types::ServerGroupReplicationConfiguration>]
    class PutAppReplicationConfigurationRequest < Struct.new(
      :app_id,
      :server_group_replication_configurations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class PutAppReplicationConfigurationResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The ID of the application.</p>
    #   @return [String]
    # @!attribute app_validation_configurations
    #   <p>The configuration for application validation.</p>
    #   @return [Array<Types::AppValidationConfiguration>]
    # @!attribute server_group_validation_configurations
    #   <p>The configuration for instance validation.</p>
    #   @return [Array<Types::ServerGroupValidationConfiguration>]
    class PutAppValidationConfigurationRequest < Struct.new(
      :app_id,
      :app_validation_configurations,
      :server_group_validation_configurations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class PutAppValidationConfigurationResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a replication job.</p>
    # @!attribute replication_job_id
    #   <p>The ID of the replication job.</p>
    #   @return [String]
    # @!attribute server_id
    #   <p>The ID of the server.</p>
    #   @return [String]
    # @!attribute server_type
    #   <p>The type of server.</p>
    #   @return [String]
    # @!attribute vm_server
    #   <p>Information about the VM server.</p>
    #   @return [Types::VmServer]
    # @!attribute seed_replication_time
    #   <p>The seed replication time.</p>
    #   @return [Time]
    # @!attribute frequency
    #   <p>The time between consecutive replication runs, in hours.</p>
    #   @return [Integer]
    # @!attribute run_once
    #   <p>Indicates whether to run the replication job one time.</p>
    #   @return [Boolean]
    # @!attribute next_replication_run_start_time
    #   <p>The start time of the next replication run.</p>
    #   @return [Time]
    # @!attribute license_type
    #   <p>The license type to be used for the AMI created by a successful replication
    #               run.</p>
    #   @return [String]
    # @!attribute role_name
    #   <p>The name of the IAM role to be used by Server Migration Service.</p>
    #   @return [String]
    # @!attribute latest_ami_id
    #   <p>The ID of the latest Amazon Machine Image (AMI).</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the replication job.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The description of the current status of the replication job.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the replication job.</p>
    #   @return [String]
    # @!attribute number_of_recent_amis_to_keep
    #   <p>The number of recent AMIs to keep in the customer's account for a replication job. By
    #               default, the value is set to zero, meaning that all AMIs are kept.</p>
    #   @return [Integer]
    # @!attribute encrypted
    #   <p>Indicates whether the replication job should produce encrypted AMIs.</p>
    #   @return [Boolean]
    # @!attribute kms_key_id
    #   <p>The ID of the KMS key for replication jobs that produce encrypted AMIs. 
    #               This value can be any of the following: </p>
    #            <ul>
    #               <li>
    #                  <p>KMS key ID</p>
    #               </li>
    #               <li>
    #                  <p>KMS key alias</p>
    #               </li>
    #               <li>
    #                  <p>ARN referring to the KMS key ID</p>
    #               </li>
    #               <li>
    #                  <p>ARN referring to the KMS key alias</p>
    #               </li>
    #            </ul>
    #            <p>If encrypted is enabled but a KMS key ID is not specified, the
    #               customer's default KMS key for Amazon EBS is used.</p>
    #   @return [String]
    # @!attribute replication_run_list
    #   <p>Information about the replication runs.</p>
    #   @return [Array<Types::ReplicationRun>]
    class ReplicationJob < Struct.new(
      :replication_job_id,
      :server_id,
      :server_type,
      :vm_server,
      :seed_replication_time,
      :frequency,
      :run_once,
      :next_replication_run_start_time,
      :license_type,
      :role_name,
      :latest_ami_id,
      :state,
      :status_message,
      :description,
      :number_of_recent_amis_to_keep,
      :encrypted,
      :kms_key_id,
      :replication_run_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified replication job already exists.</p>
    # @!attribute message
    #   @return [String]
    class ReplicationJobAlreadyExistsException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified replication job does not exist.</p>
    # @!attribute message
    #   @return [String]
    class ReplicationJobNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a replication run.</p>
    # @!attribute replication_run_id
    #   <p>The ID of the replication run.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the replication run.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of replication run.</p>
    #   @return [String]
    # @!attribute stage_details
    #   <p>Details about the current stage of the replication run.</p>
    #   @return [Types::ReplicationRunStageDetails]
    # @!attribute status_message
    #   <p>The description of the current status of the replication job.</p>
    #   @return [String]
    # @!attribute ami_id
    #   <p>The ID of the Amazon Machine Image (AMI) from the replication
    #               run.</p>
    #   @return [String]
    # @!attribute scheduled_start_time
    #   <p>The start time of the next replication run.</p>
    #   @return [Time]
    # @!attribute completed_time
    #   <p>The completion time of the last replication run.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the replication run.</p>
    #   @return [String]
    # @!attribute encrypted
    #   <p>Indicates whether the replication run should produce an encrypted AMI.</p>
    #   @return [Boolean]
    # @!attribute kms_key_id
    #   <p>The ID of the KMS key for replication jobs that produce encrypted AMIs. 
    #               This value can be any of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS key ID</p>
    #               </li>
    #               <li>
    #                  <p>KMS key alias</p>
    #               </li>
    #               <li>
    #                  <p>ARN referring to the KMS key ID</p>
    #               </li>
    #               <li>
    #                  <p>ARN referring to the KMS key alias</p>
    #               </li>
    #            </ul>
    #            <p> If encrypted is <i>true</i> but a KMS key ID is not specified, the
    #               customer's default KMS key for Amazon EBS is used. </p>
    #   @return [String]
    class ReplicationRun < Struct.new(
      :replication_run_id,
      :state,
      :type,
      :stage_details,
      :status_message,
      :ami_id,
      :scheduled_start_time,
      :completed_time,
      :description,
      :encrypted,
      :kms_key_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You have exceeded the number of on-demand replication runs you can request in a
    #             24-hour period.</p>
    # @!attribute message
    #   @return [String]
    class ReplicationRunLimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details of the current stage of a replication run.</p>
    # @!attribute stage
    #   <p>The current stage of a replication run.</p>
    #   @return [String]
    # @!attribute stage_progress
    #   <p>The progress of the current stage of a replication run.</p>
    #   @return [String]
    class ReplicationRunStageDetails < Struct.new(
      :stage,
      :stage_progress,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Location of an Amazon S3 object.</p>
    # @!attribute bucket
    #   <p>The Amazon S3 bucket name.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The Amazon S3 bucket key.</p>
    #   @return [String]
    class S3Location < Struct.new(
      :bucket,
      :key,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the location of validation output.</p>
    # @!attribute s3_location
    #   <p>Location of an Amazon S3 object.</p>
    #   @return [Types::S3Location]
    class SSMOutput < Struct.new(
      :s3_location,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains validation parameters.</p>
    # @!attribute source
    #   <p>The location of the validation script.</p>
    #   @return [Types::Source]
    # @!attribute instance_id
    #   <p>The ID of the instance. The instance must have the following tag: UserForSMSApplicationValidation=true.</p>
    #   @return [String]
    # @!attribute script_type
    #   <p>The type of validation script.</p>
    #   @return [String]
    # @!attribute command
    #   <p>The command to run the validation script.</p>
    #   @return [String]
    # @!attribute execution_timeout_seconds
    #   <p>The timeout interval, in seconds.</p>
    #   @return [Integer]
    # @!attribute output_s3_bucket_name
    #   <p>The name of the S3 bucket for output.</p>
    #   @return [String]
    class SSMValidationParameters < Struct.new(
      :source,
      :instance_id,
      :script_type,
      :command,
      :execution_timeout_seconds,
      :output_s3_bucket_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:execution_timeout_seconds] = 0 unless options.key?(:execution_timeout_seconds)
        super
      end
    end

    # <p>Represents a server.</p>
    # @!attribute server_id
    #   <p>The ID of the server.</p>
    #   @return [String]
    # @!attribute server_type
    #   <p>The type of server.</p>
    #   @return [String]
    # @!attribute vm_server
    #   <p>Information about the VM server.</p>
    #   @return [Types::VmServer]
    # @!attribute replication_job_id
    #   <p>The ID of the replication job.</p>
    #   @return [String]
    # @!attribute replication_job_terminated
    #   <p>Indicates whether the replication job is deleted or failed.</p>
    #   @return [Boolean]
    class Server < Struct.new(
      :server_id,
      :server_type,
      :vm_server,
      :replication_job_id,
      :replication_job_terminated,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified server cannot be replicated.</p>
    # @!attribute message
    #   @return [String]
    class ServerCannotBeReplicatedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Logical grouping of servers.</p>
    # @!attribute server_group_id
    #   <p>The ID of a server group.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of a server group.</p>
    #   @return [String]
    # @!attribute server_list
    #   <p>The servers that belong to a server group.</p>
    #   @return [Array<Types::Server>]
    class ServerGroup < Struct.new(
      :server_group_id,
      :name,
      :server_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Launch configuration for a server group.</p>
    # @!attribute server_group_id
    #   <p>The ID of the server group with which the launch configuration is
    #               associated.</p>
    #   @return [String]
    # @!attribute launch_order
    #   <p>The launch order of servers in the server group.</p>
    #   @return [Integer]
    # @!attribute server_launch_configurations
    #   <p>The launch configuration for servers in the server group.</p>
    #   @return [Array<Types::ServerLaunchConfiguration>]
    class ServerGroupLaunchConfiguration < Struct.new(
      :server_group_id,
      :launch_order,
      :server_launch_configurations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Replication configuration for a server group.</p>
    # @!attribute server_group_id
    #   <p>The ID of the server group with which this replication configuration is
    #               associated.</p>
    #   @return [String]
    # @!attribute server_replication_configurations
    #   <p>The replication configuration for servers in the server group.</p>
    #   @return [Array<Types::ServerReplicationConfiguration>]
    class ServerGroupReplicationConfiguration < Struct.new(
      :server_group_id,
      :server_replication_configurations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for validating an instance.</p>
    # @!attribute server_group_id
    #   <p>The ID of the server group.</p>
    #   @return [String]
    # @!attribute server_validation_configurations
    #   <p>The validation configuration.</p>
    #   @return [Array<Types::ServerValidationConfiguration>]
    class ServerGroupValidationConfiguration < Struct.new(
      :server_group_id,
      :server_validation_configurations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Launch configuration for a server.</p>
    # @!attribute server
    #   <p>The ID of the server with which the launch configuration is associated.</p>
    #   @return [Types::Server]
    # @!attribute logical_id
    #   <p>The logical ID of the server in the CloudFormation template.</p>
    #   @return [String]
    # @!attribute vpc
    #   <p>The ID of the VPC into which the server should be launched.</p>
    #   @return [String]
    # @!attribute subnet
    #   <p>The ID of the subnet the server should be launched into.</p>
    #   @return [String]
    # @!attribute security_group
    #   <p>The ID of the security group that applies to the launched server.</p>
    #   @return [String]
    # @!attribute ec2_key_name
    #   <p>The name of the Amazon EC2 SSH key to be used for connecting to the launched server.</p>
    #   @return [String]
    # @!attribute user_data
    #   <p>Location of the user-data script to be executed when launching the server.</p>
    #   @return [Types::UserData]
    # @!attribute instance_type
    #   <p>The instance type to use when launching the server.</p>
    #   @return [String]
    # @!attribute associate_public_ip_address
    #   <p>Indicates whether a publicly accessible IP address is created when launching the server.</p>
    #   @return [Boolean]
    # @!attribute iam_instance_profile_name
    #   <p>The name of the IAM instance profile.</p>
    #   @return [String]
    # @!attribute configure_script
    #   <p>Location of an Amazon S3 object.</p>
    #   @return [Types::S3Location]
    # @!attribute configure_script_type
    #   <p>The type of configuration script.</p>
    #   @return [String]
    class ServerLaunchConfiguration < Struct.new(
      :server,
      :logical_id,
      :vpc,
      :subnet,
      :security_group,
      :ec2_key_name,
      :user_data,
      :instance_type,
      :associate_public_ip_address,
      :iam_instance_profile_name,
      :configure_script,
      :configure_script_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Replication configuration of a server.</p>
    # @!attribute server
    #   <p>The ID of the server with which this replication configuration is
    #               associated.</p>
    #   @return [Types::Server]
    # @!attribute server_replication_parameters
    #   <p>The parameters for replicating the server.</p>
    #   @return [Types::ServerReplicationParameters]
    class ServerReplicationConfiguration < Struct.new(
      :server,
      :server_replication_parameters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The replication parameters for replicating a server.</p>
    # @!attribute seed_time
    #   <p>The seed time for creating a replication job for the server.</p>
    #   @return [Time]
    # @!attribute frequency
    #   <p>The frequency of creating replication jobs for the server.</p>
    #   @return [Integer]
    # @!attribute run_once
    #   <p>Indicates whether to run the replication job one time.</p>
    #   @return [Boolean]
    # @!attribute license_type
    #   <p>The license type for creating a replication job for the server.</p>
    #   @return [String]
    # @!attribute number_of_recent_amis_to_keep
    #   <p>The number of recent AMIs to keep when creating a replication job for this server.</p>
    #   @return [Integer]
    # @!attribute encrypted
    #   <p>Indicates whether the replication job produces encrypted AMIs.</p>
    #   @return [Boolean]
    # @!attribute kms_key_id
    #   <p>The ID of the KMS key for replication jobs that produce encrypted AMIs. 
    #               This value can be any of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS key ID</p>
    #               </li>
    #               <li>
    #                  <p>KMS key alias</p>
    #               </li>
    #               <li>
    #                  <p>ARN referring to the KMS key ID</p>
    #               </li>
    #               <li>
    #                  <p>ARN referring to the KMS key alias</p>
    #               </li>
    #            </ul>
    #            <p>If encrypted is enabled but a KMS key ID is not specified, the
    #               customer's default KMS key for Amazon EBS is used.</p>
    #   @return [String]
    class ServerReplicationParameters < Struct.new(
      :seed_time,
      :frequency,
      :run_once,
      :license_type,
      :number_of_recent_amis_to_keep,
      :encrypted,
      :kms_key_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for validating an instance.</p>
    # @!attribute server
    #   <p>Represents a server.</p>
    #   @return [Types::Server]
    # @!attribute validation_id
    #   <p>The ID of the validation.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the configuration.</p>
    #   @return [String]
    # @!attribute server_validation_strategy
    #   <p>The validation strategy.</p>
    #   @return [String]
    # @!attribute user_data_validation_parameters
    #   <p>The validation parameters.</p>
    #   @return [Types::UserDataValidationParameters]
    class ServerValidationConfiguration < Struct.new(
      :server,
      :validation_id,
      :name,
      :server_validation_strategy,
      :user_data_validation_parameters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains output from validating an instance.</p>
    # @!attribute server
    #   <p>Represents a server.</p>
    #   @return [Types::Server]
    class ServerValidationOutput < Struct.new(
      :server,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the location of a validation script.</p>
    # @!attribute s3_location
    #   <p>Location of an Amazon S3 object.</p>
    #   @return [Types::S3Location]
    class Source < Struct.new(
      :s3_location,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The ID of the application.</p>
    #   @return [String]
    class StartAppReplicationRequest < Struct.new(
      :app_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class StartAppReplicationResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The ID of the application.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the replication run.</p>
    #   @return [String]
    class StartOnDemandAppReplicationRequest < Struct.new(
      :app_id,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class StartOnDemandAppReplicationResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute replication_job_id
    #   <p>The ID of the replication job.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the replication run.</p>
    #   @return [String]
    class StartOnDemandReplicationRunRequest < Struct.new(
      :replication_job_id,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute replication_run_id
    #   <p>The ID of the replication run.</p>
    #   @return [String]
    class StartOnDemandReplicationRunResponse < Struct.new(
      :replication_run_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The ID of the application.</p>
    #   @return [String]
    class StopAppReplicationRequest < Struct.new(
      :app_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class StopAppReplicationResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Key/value pair that can be assigned to an application.</p>
    # @!attribute key
    #   <p>The tag key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The tag value.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The service is temporarily unavailable.</p>
    class TemporarilyUnavailableException < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The ID of the application.</p>
    #   @return [String]
    class TerminateAppRequest < Struct.new(
      :app_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TerminateAppResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You lack permissions needed to perform this operation. Check your IAM policies,
    #             and ensure that you are using the correct access keys.</p>
    # @!attribute message
    #   @return [String]
    class UnauthorizedOperationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The ID of the application.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The new name of the application.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The new description of the application.</p>
    #   @return [String]
    # @!attribute role_name
    #   <p>The name of the service role in the customer's account used by Server Migration Service.</p>
    #   @return [String]
    # @!attribute server_groups
    #   <p>The server groups in the application to update.</p>
    #   @return [Array<Types::ServerGroup>]
    # @!attribute tags
    #   <p>The tags to associate with the application.</p>
    #   @return [Array<Types::Tag>]
    class UpdateAppRequest < Struct.new(
      :app_id,
      :name,
      :description,
      :role_name,
      :server_groups,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_summary
    #   <p>A summary description of the application.</p>
    #   @return [Types::AppSummary]
    # @!attribute server_groups
    #   <p>The updated server groups in the application.</p>
    #   @return [Array<Types::ServerGroup>]
    # @!attribute tags
    #   <p>The tags associated with the application.</p>
    #   @return [Array<Types::Tag>]
    class UpdateAppResponse < Struct.new(
      :app_summary,
      :server_groups,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute replication_job_id
    #   <p>The ID of the replication job.</p>
    #   @return [String]
    # @!attribute frequency
    #   <p>The time between consecutive replication runs, in hours.</p>
    #   @return [Integer]
    # @!attribute next_replication_run_start_time
    #   <p>The start time of the next replication run.</p>
    #   @return [Time]
    # @!attribute license_type
    #   <p>The license type to be used for the AMI created by a successful replication
    #               run.</p>
    #   @return [String]
    # @!attribute role_name
    #   <p>The name of the IAM role to be used by Server Migration Service.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the replication job.</p>
    #   @return [String]
    # @!attribute number_of_recent_amis_to_keep
    #   <p>The maximum number of SMS-created AMIs to retain. The oldest is deleted after the
    #               maximum number is reached and a new AMI is created.</p>
    #   @return [Integer]
    # @!attribute encrypted
    #   <p>When true, the replication job produces encrypted AMIs. For more information,
    #                   <code>KmsKeyId</code>.</p>
    #   @return [Boolean]
    # @!attribute kms_key_id
    #   <p>The ID of the KMS key for replication jobs that produce encrypted AMIs. 
    #               This value can be any of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS key ID</p>
    #               </li>
    #               <li>
    #                  <p>KMS key alias</p>
    #               </li>
    #               <li>
    #                  <p>ARN referring to the KMS key ID</p>
    #               </li>
    #               <li>
    #                  <p>ARN referring to the KMS key alias</p>
    #               </li>
    #            </ul>
    #            <p>If encrypted is enabled but a KMS key ID is not specified, the
    #               customer's default KMS key for Amazon EBS is used.</p>
    #   @return [String]
    class UpdateReplicationJobRequest < Struct.new(
      :replication_job_id,
      :frequency,
      :next_replication_run_start_time,
      :license_type,
      :role_name,
      :description,
      :number_of_recent_amis_to_keep,
      :encrypted,
      :kms_key_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateReplicationJobResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A script that runs on first launch of an Amazon EC2 instance. Used for configuring the
    #             server during launch.</p>
    # @!attribute s3_location
    #   <p>Amazon S3 location of the user-data script.</p>
    #   @return [Types::S3Location]
    class UserData < Struct.new(
      :s3_location,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains validation parameters.</p>
    # @!attribute source
    #   <p>The location of the validation script.</p>
    #   @return [Types::Source]
    # @!attribute script_type
    #   <p>The type of validation script.</p>
    #   @return [String]
    class UserDataValidationParameters < Struct.new(
      :source,
      :script_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains validation output.</p>
    # @!attribute validation_id
    #   <p>The ID of the validation.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the validation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the validation.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The status message.</p>
    #   @return [String]
    # @!attribute latest_validation_time
    #   <p>The latest time that the validation was performed.</p>
    #   @return [Time]
    # @!attribute app_validation_output
    #   <p>The output from validating an application.</p>
    #   @return [Types::AppValidationOutput]
    # @!attribute server_validation_output
    #   <p>The output from validation an instance.</p>
    #   @return [Types::ServerValidationOutput]
    class ValidationOutput < Struct.new(
      :validation_id,
      :name,
      :status,
      :status_message,
      :latest_validation_time,
      :app_validation_output,
      :server_validation_output,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a VM server.</p>
    # @!attribute vm_server_address
    #   <p>The VM server location.</p>
    #   @return [Types::VmServerAddress]
    # @!attribute vm_name
    #   <p>The name of the VM.</p>
    #   @return [String]
    # @!attribute vm_manager_name
    #   <p>The name of the VM manager.</p>
    #   @return [String]
    # @!attribute vm_manager_type
    #   <p>The type of VM management product.</p>
    #   @return [String]
    # @!attribute vm_path
    #   <p>The VM folder path in the vCenter Server virtual machine inventory tree.</p>
    #   @return [String]
    class VmServer < Struct.new(
      :vm_server_address,
      :vm_name,
      :vm_manager_name,
      :vm_manager_type,
      :vm_path,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a VM server location.</p>
    # @!attribute vm_manager_id
    #   <p>The ID of the VM manager.</p>
    #   @return [String]
    # @!attribute vm_id
    #   <p>The ID of the VM.</p>
    #   @return [String]
    class VmServerAddress < Struct.new(
      :vm_manager_id,
      :vm_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
