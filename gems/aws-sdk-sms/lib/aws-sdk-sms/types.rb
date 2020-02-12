# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SMS
  module Types

    # Information about the application.
    #
    # @!attribute [rw] app_id
    #   Unique ID of the application.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the application.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the application.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of the application.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A message related to the status of the application
    #   @return [String]
    #
    # @!attribute [rw] replication_status
    #   Replication status of the application.
    #   @return [String]
    #
    # @!attribute [rw] replication_status_message
    #   A message related to the replication status of the application.
    #   @return [String]
    #
    # @!attribute [rw] latest_replication_time
    #   Timestamp of the application's most recent successful replication.
    #   @return [Time]
    #
    # @!attribute [rw] launch_status
    #   Launch status of the application.
    #   @return [String]
    #
    # @!attribute [rw] launch_status_message
    #   A message related to the launch status of the application.
    #   @return [String]
    #
    # @!attribute [rw] launch_details
    #   Details about the latest launch of the application.
    #   @return [Types::LaunchDetails]
    #
    # @!attribute [rw] creation_time
    #   Time of creation of this application.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified
    #   Timestamp of the application's creation.
    #   @return [Time]
    #
    # @!attribute [rw] role_name
    #   Name of the service role in the customer's account used by AWS SMS.
    #   @return [String]
    #
    # @!attribute [rw] total_server_groups
    #   Number of server groups present in the application.
    #   @return [Integer]
    #
    # @!attribute [rw] total_servers
    #   Number of servers present in the application.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/AppSummary AWS API Documentation
    #
    class AppSummary < Struct.new(
      :app_id,
      :name,
      :description,
      :status,
      :status_message,
      :replication_status,
      :replication_status_message,
      :latest_replication_time,
      :launch_status,
      :launch_status_message,
      :launch_details,
      :creation_time,
      :last_modified,
      :role_name,
      :total_server_groups,
      :total_servers)
      include Aws::Structure
    end

    # Represents a connector.
    #
    # @!attribute [rw] connector_id
    #   The identifier of the connector.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The connector version.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the connector.
    #   @return [String]
    #
    # @!attribute [rw] capability_list
    #   The capabilities of the connector.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vm_manager_name
    #   The name of the VM manager.
    #   @return [String]
    #
    # @!attribute [rw] vm_manager_type
    #   The VM management product.
    #   @return [String]
    #
    # @!attribute [rw] vm_manager_id
    #   The identifier of the VM manager.
    #   @return [String]
    #
    # @!attribute [rw] ip_address
    #   The IP address of the connector.
    #   @return [String]
    #
    # @!attribute [rw] mac_address
    #   The MAC address of the connector.
    #   @return [String]
    #
    # @!attribute [rw] associated_on
    #   The time the connector was associated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/Connector AWS API Documentation
    #
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
      :associated_on)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateAppRequest
    #   data as a hash:
    #
    #       {
    #         name: "AppName",
    #         description: "AppDescription",
    #         role_name: "RoleName",
    #         client_token: "ClientToken",
    #         server_groups: [
    #           {
    #             server_group_id: "ServerGroupId",
    #             name: "ServerGroupName",
    #             server_list: [
    #               {
    #                 server_id: "ServerId",
    #                 server_type: "VIRTUAL_MACHINE", # accepts VIRTUAL_MACHINE
    #                 vm_server: {
    #                   vm_server_address: {
    #                     vm_manager_id: "VmManagerId",
    #                     vm_id: "VmId",
    #                   },
    #                   vm_name: "VmName",
    #                   vm_manager_name: "VmManagerName",
    #                   vm_manager_type: "VSPHERE", # accepts VSPHERE, SCVMM, HYPERV-MANAGER
    #                   vm_path: "VmPath",
    #                 },
    #                 replication_job_id: "ReplicationJobId",
    #                 replication_job_terminated: false,
    #               },
    #             ],
    #           },
    #         ],
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   Name of the new application.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the new application
    #   @return [String]
    #
    # @!attribute [rw] role_name
    #   Name of service role in customer's account to be used by AWS SMS.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier you provide to ensure
    #   idempotency of application creation.
    #   @return [String]
    #
    # @!attribute [rw] server_groups
    #   List of server groups to include in the application.
    #   @return [Array<Types::ServerGroup>]
    #
    # @!attribute [rw] tags
    #   List of tags to be associated with the application.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/CreateAppRequest AWS API Documentation
    #
    class CreateAppRequest < Struct.new(
      :name,
      :description,
      :role_name,
      :client_token,
      :server_groups,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] app_summary
    #   Summary description of the application.
    #   @return [Types::AppSummary]
    #
    # @!attribute [rw] server_groups
    #   List of server groups included in the application.
    #   @return [Array<Types::ServerGroup>]
    #
    # @!attribute [rw] tags
    #   List of taags associated with the application.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/CreateAppResponse AWS API Documentation
    #
    class CreateAppResponse < Struct.new(
      :app_summary,
      :server_groups,
      :tags)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateReplicationJobRequest
    #   data as a hash:
    #
    #       {
    #         server_id: "ServerId", # required
    #         seed_replication_time: Time.now, # required
    #         frequency: 1,
    #         run_once: false,
    #         license_type: "AWS", # accepts AWS, BYOL
    #         role_name: "RoleName",
    #         description: "Description",
    #         number_of_recent_amis_to_keep: 1,
    #         encrypted: false,
    #         kms_key_id: "KmsKeyId",
    #       }
    #
    # @!attribute [rw] server_id
    #   The identifier of the server.
    #   @return [String]
    #
    # @!attribute [rw] seed_replication_time
    #   The seed replication time.
    #   @return [Time]
    #
    # @!attribute [rw] frequency
    #   The time between consecutive replication runs, in hours.
    #   @return [Integer]
    #
    # @!attribute [rw] run_once
    #   @return [Boolean]
    #
    # @!attribute [rw] license_type
    #   The license type to be used for the AMI created by a successful
    #   replication run.
    #   @return [String]
    #
    # @!attribute [rw] role_name
    #   The name of the IAM role to be used by the AWS SMS.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the replication job.
    #   @return [String]
    #
    # @!attribute [rw] number_of_recent_amis_to_keep
    #   The maximum number of SMS-created AMIs to retain. The oldest will be
    #   deleted once the maximum number is reached and a new AMI is created.
    #   @return [Integer]
    #
    # @!attribute [rw] encrypted
    #   When *true*, the replication job produces encrypted AMIs. See also
    #   `KmsKeyId` below.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   KMS key ID for replication jobs that produce encrypted AMIs. Can be
    #   any of the following:
    #
    #   * KMS key ID
    #
    #   * KMS key alias
    #
    #   * ARN referring to KMS key ID
    #
    #   * ARN referring to KMS key alias
    #
    #   If encrypted is *true* but a KMS key id is not specified, the
    #   customer's default KMS key for EBS is used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/CreateReplicationJobRequest AWS API Documentation
    #
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
      :kms_key_id)
      include Aws::Structure
    end

    # @!attribute [rw] replication_job_id
    #   The unique identifier of the replication job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/CreateReplicationJobResponse AWS API Documentation
    #
    class CreateReplicationJobResponse < Struct.new(
      :replication_job_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAppLaunchConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId",
    #       }
    #
    # @!attribute [rw] app_id
    #   ID of the application associated with the launch configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/DeleteAppLaunchConfigurationRequest AWS API Documentation
    #
    class DeleteAppLaunchConfigurationRequest < Struct.new(
      :app_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/DeleteAppLaunchConfigurationResponse AWS API Documentation
    #
    class DeleteAppLaunchConfigurationResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteAppReplicationConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId",
    #       }
    #
    # @!attribute [rw] app_id
    #   ID of the application associated with the replication configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/DeleteAppReplicationConfigurationRequest AWS API Documentation
    #
    class DeleteAppReplicationConfigurationRequest < Struct.new(
      :app_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/DeleteAppReplicationConfigurationResponse AWS API Documentation
    #
    class DeleteAppReplicationConfigurationResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteAppRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId",
    #         force_stop_app_replication: false,
    #         force_terminate_app: false,
    #       }
    #
    # @!attribute [rw] app_id
    #   ID of the application to delete.
    #   @return [String]
    #
    # @!attribute [rw] force_stop_app_replication
    #   While deleting the application, stop all replication jobs
    #   corresponding to the servers in the application.
    #   @return [Boolean]
    #
    # @!attribute [rw] force_terminate_app
    #   While deleting the application, terminate the stack corresponding to
    #   the application.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/DeleteAppRequest AWS API Documentation
    #
    class DeleteAppRequest < Struct.new(
      :app_id,
      :force_stop_app_replication,
      :force_terminate_app)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/DeleteAppResponse AWS API Documentation
    #
    class DeleteAppResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteReplicationJobRequest
    #   data as a hash:
    #
    #       {
    #         replication_job_id: "ReplicationJobId", # required
    #       }
    #
    # @!attribute [rw] replication_job_id
    #   The identifier of the replication job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/DeleteReplicationJobRequest AWS API Documentation
    #
    class DeleteReplicationJobRequest < Struct.new(
      :replication_job_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/DeleteReplicationJobResponse AWS API Documentation
    #
    class DeleteReplicationJobResponse < Aws::EmptyStructure; end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/DeleteServerCatalogRequest AWS API Documentation
    #
    class DeleteServerCatalogRequest < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/DeleteServerCatalogResponse AWS API Documentation
    #
    class DeleteServerCatalogResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DisassociateConnectorRequest
    #   data as a hash:
    #
    #       {
    #         connector_id: "ConnectorId", # required
    #       }
    #
    # @!attribute [rw] connector_id
    #   The identifier of the connector.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/DisassociateConnectorRequest AWS API Documentation
    #
    class DisassociateConnectorRequest < Struct.new(
      :connector_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/DisassociateConnectorResponse AWS API Documentation
    #
    class DisassociateConnectorResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass GenerateChangeSetRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId",
    #         changeset_format: "JSON", # accepts JSON, YAML
    #       }
    #
    # @!attribute [rw] app_id
    #   ID of the application associated with the change set.
    #   @return [String]
    #
    # @!attribute [rw] changeset_format
    #   Format for the change set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/GenerateChangeSetRequest AWS API Documentation
    #
    class GenerateChangeSetRequest < Struct.new(
      :app_id,
      :changeset_format)
      include Aws::Structure
    end

    # @!attribute [rw] s3_location
    #   Location of the Amazon S3 object.
    #   @return [Types::S3Location]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/GenerateChangeSetResponse AWS API Documentation
    #
    class GenerateChangeSetResponse < Struct.new(
      :s3_location)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GenerateTemplateRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId",
    #         template_format: "JSON", # accepts JSON, YAML
    #       }
    #
    # @!attribute [rw] app_id
    #   ID of the application associated with the Amazon CloudFormation
    #   template.
    #   @return [String]
    #
    # @!attribute [rw] template_format
    #   Format for generating the Amazon CloudFormation template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/GenerateTemplateRequest AWS API Documentation
    #
    class GenerateTemplateRequest < Struct.new(
      :app_id,
      :template_format)
      include Aws::Structure
    end

    # @!attribute [rw] s3_location
    #   Location of the Amazon S3 object.
    #   @return [Types::S3Location]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/GenerateTemplateResponse AWS API Documentation
    #
    class GenerateTemplateResponse < Struct.new(
      :s3_location)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetAppLaunchConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId",
    #       }
    #
    # @!attribute [rw] app_id
    #   ID of the application launch configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/GetAppLaunchConfigurationRequest AWS API Documentation
    #
    class GetAppLaunchConfigurationRequest < Struct.new(
      :app_id)
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   ID of the application associated with the launch configuration.
    #   @return [String]
    #
    # @!attribute [rw] role_name
    #   Name of the service role in the customer's account that Amazon
    #   CloudFormation uses to launch the application.
    #   @return [String]
    #
    # @!attribute [rw] server_group_launch_configurations
    #   List of launch configurations for server groups in this application.
    #   @return [Array<Types::ServerGroupLaunchConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/GetAppLaunchConfigurationResponse AWS API Documentation
    #
    class GetAppLaunchConfigurationResponse < Struct.new(
      :app_id,
      :role_name,
      :server_group_launch_configurations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetAppReplicationConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId",
    #       }
    #
    # @!attribute [rw] app_id
    #   ID of the application associated with the replication configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/GetAppReplicationConfigurationRequest AWS API Documentation
    #
    class GetAppReplicationConfigurationRequest < Struct.new(
      :app_id)
      include Aws::Structure
    end

    # @!attribute [rw] server_group_replication_configurations
    #   Replication configurations associated with server groups in this
    #   application.
    #   @return [Array<Types::ServerGroupReplicationConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/GetAppReplicationConfigurationResponse AWS API Documentation
    #
    class GetAppReplicationConfigurationResponse < Struct.new(
      :server_group_replication_configurations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetAppRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId",
    #       }
    #
    # @!attribute [rw] app_id
    #   ID of the application whose information is being retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/GetAppRequest AWS API Documentation
    #
    class GetAppRequest < Struct.new(
      :app_id)
      include Aws::Structure
    end

    # @!attribute [rw] app_summary
    #   Information about the application.
    #   @return [Types::AppSummary]
    #
    # @!attribute [rw] server_groups
    #   List of server groups belonging to the application.
    #   @return [Array<Types::ServerGroup>]
    #
    # @!attribute [rw] tags
    #   List of tags associated with the application.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/GetAppResponse AWS API Documentation
    #
    class GetAppResponse < Struct.new(
      :app_summary,
      :server_groups,
      :tags)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetConnectorsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. The
    #   default value is 50. To retrieve the remaining results, make another
    #   call with the returned `NextToken` value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/GetConnectorsRequest AWS API Documentation
    #
    class GetConnectorsRequest < Struct.new(
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] connector_list
    #   Information about the registered connectors.
    #   @return [Array<Types::Connector>]
    #
    # @!attribute [rw] next_token
    #   The token required to retrieve the next set of results. This value
    #   is null when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/GetConnectorsResponse AWS API Documentation
    #
    class GetConnectorsResponse < Struct.new(
      :connector_list,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetReplicationJobsRequest
    #   data as a hash:
    #
    #       {
    #         replication_job_id: "ReplicationJobId",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] replication_job_id
    #   The identifier of the replication job.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. The
    #   default value is 50. To retrieve the remaining results, make another
    #   call with the returned `NextToken` value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/GetReplicationJobsRequest AWS API Documentation
    #
    class GetReplicationJobsRequest < Struct.new(
      :replication_job_id,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] replication_job_list
    #   Information about the replication jobs.
    #   @return [Array<Types::ReplicationJob>]
    #
    # @!attribute [rw] next_token
    #   The token required to retrieve the next set of results. This value
    #   is null when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/GetReplicationJobsResponse AWS API Documentation
    #
    class GetReplicationJobsResponse < Struct.new(
      :replication_job_list,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetReplicationRunsRequest
    #   data as a hash:
    #
    #       {
    #         replication_job_id: "ReplicationJobId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] replication_job_id
    #   The identifier of the replication job.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. The
    #   default value is 50. To retrieve the remaining results, make another
    #   call with the returned `NextToken` value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/GetReplicationRunsRequest AWS API Documentation
    #
    class GetReplicationRunsRequest < Struct.new(
      :replication_job_id,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] replication_job
    #   Information about the replication job.
    #   @return [Types::ReplicationJob]
    #
    # @!attribute [rw] replication_run_list
    #   Information about the replication runs.
    #   @return [Array<Types::ReplicationRun>]
    #
    # @!attribute [rw] next_token
    #   The token required to retrieve the next set of results. This value
    #   is null when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/GetReplicationRunsResponse AWS API Documentation
    #
    class GetReplicationRunsResponse < Struct.new(
      :replication_job,
      :replication_run_list,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetServersRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         vm_server_address_list: [
    #           {
    #             vm_manager_id: "VmManagerId",
    #             vm_id: "VmId",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. The
    #   default value is 50. To retrieve the remaining results, make another
    #   call with the returned `NextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] vm_server_address_list
    #   List of `VmServerAddress` objects
    #   @return [Array<Types::VmServerAddress>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/GetServersRequest AWS API Documentation
    #
    class GetServersRequest < Struct.new(
      :next_token,
      :max_results,
      :vm_server_address_list)
      include Aws::Structure
    end

    # @!attribute [rw] last_modified_on
    #   The time when the server was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] server_catalog_status
    #   The status of the server catalog.
    #   @return [String]
    #
    # @!attribute [rw] server_list
    #   Information about the servers.
    #   @return [Array<Types::Server>]
    #
    # @!attribute [rw] next_token
    #   The token required to retrieve the next set of results. This value
    #   is null when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/GetServersResponse AWS API Documentation
    #
    class GetServersResponse < Struct.new(
      :last_modified_on,
      :server_catalog_status,
      :server_list,
      :next_token)
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/ImportServerCatalogRequest AWS API Documentation
    #
    class ImportServerCatalogRequest < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/ImportServerCatalogResponse AWS API Documentation
    #
    class ImportServerCatalogResponse < Aws::EmptyStructure; end

    # An internal error occurred.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/InternalError AWS API Documentation
    #
    class InternalError < Struct.new(
      :message)
      include Aws::Structure
    end

    # A specified parameter is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/InvalidParameterException AWS API Documentation
    #
    class InvalidParameterException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass LaunchAppRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId",
    #       }
    #
    # @!attribute [rw] app_id
    #   ID of the application to launch.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/LaunchAppRequest AWS API Documentation
    #
    class LaunchAppRequest < Struct.new(
      :app_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/LaunchAppResponse AWS API Documentation
    #
    class LaunchAppResponse < Aws::EmptyStructure; end

    # Details about the latest launch of an application.
    #
    # @!attribute [rw] latest_launch_time
    #   Latest time this application was launched successfully.
    #   @return [Time]
    #
    # @!attribute [rw] stack_name
    #   Name of the latest stack launched for this application.
    #   @return [String]
    #
    # @!attribute [rw] stack_id
    #   Identifier of the latest stack launched for this application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/LaunchDetails AWS API Documentation
    #
    class LaunchDetails < Struct.new(
      :latest_launch_time,
      :stack_name,
      :stack_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAppsRequest
    #   data as a hash:
    #
    #       {
    #         app_ids: ["AppId"],
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] app_ids
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. The
    #   default value is 50. To retrieve the remaining results, make another
    #   call with the returned `NextToken` value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/ListAppsRequest AWS API Documentation
    #
    class ListAppsRequest < Struct.new(
      :app_ids,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] apps
    #   A list of application summaries.
    #   @return [Array<Types::AppSummary>]
    #
    # @!attribute [rw] next_token
    #   The token required to retrieve the next set of results. This value
    #   is null when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/ListAppsResponse AWS API Documentation
    #
    class ListAppsResponse < Struct.new(
      :apps,
      :next_token)
      include Aws::Structure
    end

    # A required parameter is missing.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/MissingRequiredParameterException AWS API Documentation
    #
    class MissingRequiredParameterException < Struct.new(
      :message)
      include Aws::Structure
    end

    # There are no connectors available.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/NoConnectorsAvailableException AWS API Documentation
    #
    class NoConnectorsAvailableException < Struct.new(
      :message)
      include Aws::Structure
    end

    # This operation is not allowed.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/OperationNotPermittedException AWS API Documentation
    #
    class OperationNotPermittedException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutAppLaunchConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId",
    #         role_name: "RoleName",
    #         server_group_launch_configurations: [
    #           {
    #             server_group_id: "ServerGroupId",
    #             launch_order: 1,
    #             server_launch_configurations: [
    #               {
    #                 server: {
    #                   server_id: "ServerId",
    #                   server_type: "VIRTUAL_MACHINE", # accepts VIRTUAL_MACHINE
    #                   vm_server: {
    #                     vm_server_address: {
    #                       vm_manager_id: "VmManagerId",
    #                       vm_id: "VmId",
    #                     },
    #                     vm_name: "VmName",
    #                     vm_manager_name: "VmManagerName",
    #                     vm_manager_type: "VSPHERE", # accepts VSPHERE, SCVMM, HYPERV-MANAGER
    #                     vm_path: "VmPath",
    #                   },
    #                   replication_job_id: "ReplicationJobId",
    #                   replication_job_terminated: false,
    #                 },
    #                 logical_id: "LogicalId",
    #                 vpc: "VPC",
    #                 subnet: "Subnet",
    #                 security_group: "SecurityGroup",
    #                 ec2_key_name: "EC2KeyName",
    #                 user_data: {
    #                   s3_location: {
    #                     bucket: "BucketName",
    #                     key: "KeyName",
    #                   },
    #                 },
    #                 instance_type: "InstanceType",
    #                 associate_public_ip_address: false,
    #               },
    #             ],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] app_id
    #   ID of the application associated with the launch configuration.
    #   @return [String]
    #
    # @!attribute [rw] role_name
    #   Name of service role in the customer's account that Amazon
    #   CloudFormation uses to launch the application.
    #   @return [String]
    #
    # @!attribute [rw] server_group_launch_configurations
    #   Launch configurations for server groups in the application.
    #   @return [Array<Types::ServerGroupLaunchConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/PutAppLaunchConfigurationRequest AWS API Documentation
    #
    class PutAppLaunchConfigurationRequest < Struct.new(
      :app_id,
      :role_name,
      :server_group_launch_configurations)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/PutAppLaunchConfigurationResponse AWS API Documentation
    #
    class PutAppLaunchConfigurationResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass PutAppReplicationConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId",
    #         server_group_replication_configurations: [
    #           {
    #             server_group_id: "ServerGroupId",
    #             server_replication_configurations: [
    #               {
    #                 server: {
    #                   server_id: "ServerId",
    #                   server_type: "VIRTUAL_MACHINE", # accepts VIRTUAL_MACHINE
    #                   vm_server: {
    #                     vm_server_address: {
    #                       vm_manager_id: "VmManagerId",
    #                       vm_id: "VmId",
    #                     },
    #                     vm_name: "VmName",
    #                     vm_manager_name: "VmManagerName",
    #                     vm_manager_type: "VSPHERE", # accepts VSPHERE, SCVMM, HYPERV-MANAGER
    #                     vm_path: "VmPath",
    #                   },
    #                   replication_job_id: "ReplicationJobId",
    #                   replication_job_terminated: false,
    #                 },
    #                 server_replication_parameters: {
    #                   seed_time: Time.now,
    #                   frequency: 1,
    #                   run_once: false,
    #                   license_type: "AWS", # accepts AWS, BYOL
    #                   number_of_recent_amis_to_keep: 1,
    #                   encrypted: false,
    #                   kms_key_id: "KmsKeyId",
    #                 },
    #               },
    #             ],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] app_id
    #   ID of the application tassociated with the replication
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] server_group_replication_configurations
    #   Replication configurations for server groups in the application.
    #   @return [Array<Types::ServerGroupReplicationConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/PutAppReplicationConfigurationRequest AWS API Documentation
    #
    class PutAppReplicationConfigurationRequest < Struct.new(
      :app_id,
      :server_group_replication_configurations)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/PutAppReplicationConfigurationResponse AWS API Documentation
    #
    class PutAppReplicationConfigurationResponse < Aws::EmptyStructure; end

    # Represents a replication job.
    #
    # @!attribute [rw] replication_job_id
    #   The identifier of the replication job.
    #   @return [String]
    #
    # @!attribute [rw] server_id
    #   The identifier of the server.
    #   @return [String]
    #
    # @!attribute [rw] server_type
    #   The type of server.
    #   @return [String]
    #
    # @!attribute [rw] vm_server
    #   Information about the VM server.
    #   @return [Types::VmServer]
    #
    # @!attribute [rw] seed_replication_time
    #   The seed replication time.
    #   @return [Time]
    #
    # @!attribute [rw] frequency
    #   The time between consecutive replication runs, in hours.
    #   @return [Integer]
    #
    # @!attribute [rw] run_once
    #   @return [Boolean]
    #
    # @!attribute [rw] next_replication_run_start_time
    #   The start time of the next replication run.
    #   @return [Time]
    #
    # @!attribute [rw] license_type
    #   The license type to be used for the AMI created by a successful
    #   replication run.
    #   @return [String]
    #
    # @!attribute [rw] role_name
    #   The name of the IAM role to be used by the Server Migration Service.
    #   @return [String]
    #
    # @!attribute [rw] latest_ami_id
    #   The ID of the latest Amazon Machine Image (AMI).
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the replication job.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The description of the current status of the replication job.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the replication job.
    #   @return [String]
    #
    # @!attribute [rw] number_of_recent_amis_to_keep
    #   Number of recent AMIs to keep in the customer's account for a
    #   replication job. By default the value is set to zero, meaning that
    #   all AMIs are kept.
    #   @return [Integer]
    #
    # @!attribute [rw] encrypted
    #   Whether the replication job should produce encrypted AMIs or not.
    #   See also `KmsKeyId` below.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   KMS key ID for replication jobs that produce encrypted AMIs. Can be
    #   any of the following:
    #
    #   * KMS key ID
    #
    #   * KMS key alias
    #
    #   * ARN referring to KMS key ID
    #
    #   * ARN referring to KMS key alias
    #
    #   If encrypted is *true* but a KMS key id is not specified, the
    #   customer's default KMS key for EBS is used.
    #   @return [String]
    #
    # @!attribute [rw] replication_run_list
    #   Information about the replication runs.
    #   @return [Array<Types::ReplicationRun>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/ReplicationJob AWS API Documentation
    #
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
      :replication_run_list)
      include Aws::Structure
    end

    # The specified replication job already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/ReplicationJobAlreadyExistsException AWS API Documentation
    #
    class ReplicationJobAlreadyExistsException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The specified replication job does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/ReplicationJobNotFoundException AWS API Documentation
    #
    class ReplicationJobNotFoundException < Struct.new(
      :message)
      include Aws::Structure
    end

    # Represents a replication run.
    #
    # @!attribute [rw] replication_run_id
    #   The identifier of the replication run.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the replication run.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of replication run.
    #   @return [String]
    #
    # @!attribute [rw] stage_details
    #   Details of the current stage of the replication run.
    #   @return [Types::ReplicationRunStageDetails]
    #
    # @!attribute [rw] status_message
    #   The description of the current status of the replication job.
    #   @return [String]
    #
    # @!attribute [rw] ami_id
    #   The identifier of the Amazon Machine Image (AMI) from the
    #   replication run.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_start_time
    #   The start time of the next replication run.
    #   @return [Time]
    #
    # @!attribute [rw] completed_time
    #   The completion time of the last replication run.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the replication run.
    #   @return [String]
    #
    # @!attribute [rw] encrypted
    #   Whether the replication run should produce encrypted AMI or not. See
    #   also `KmsKeyId` below.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   KMS key ID for replication jobs that produce encrypted AMIs. Can be
    #   any of the following:
    #
    #   * KMS key ID
    #
    #   * KMS key alias
    #
    #   * ARN referring to KMS key ID
    #
    #   * ARN referring to KMS key alias
    #
    #   If encrypted is *true* but a KMS key id is not specified, the
    #   customer's default KMS key for EBS is used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/ReplicationRun AWS API Documentation
    #
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
      :kms_key_id)
      include Aws::Structure
    end

    # You have exceeded the number of on-demand replication runs you can
    # request in a 24-hour period.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/ReplicationRunLimitExceededException AWS API Documentation
    #
    class ReplicationRunLimitExceededException < Struct.new(
      :message)
      include Aws::Structure
    end

    # Details of the current stage of a replication run.
    #
    # @!attribute [rw] stage
    #   String describing the current stage of a replication run.
    #   @return [String]
    #
    # @!attribute [rw] stage_progress
    #   String describing the progress of the current stage of a replication
    #   run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/ReplicationRunStageDetails AWS API Documentation
    #
    class ReplicationRunStageDetails < Struct.new(
      :stage,
      :stage_progress)
      include Aws::Structure
    end

    # Location of the Amazon S3 object in the customer's account.
    #
    # @note When making an API call, you may pass S3Location
    #   data as a hash:
    #
    #       {
    #         bucket: "BucketName",
    #         key: "KeyName",
    #       }
    #
    # @!attribute [rw] bucket
    #   Amazon S3 bucket name.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   Amazon S3 bucket key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/S3Location AWS API Documentation
    #
    class S3Location < Struct.new(
      :bucket,
      :key)
      include Aws::Structure
    end

    # Represents a server.
    #
    # @note When making an API call, you may pass Server
    #   data as a hash:
    #
    #       {
    #         server_id: "ServerId",
    #         server_type: "VIRTUAL_MACHINE", # accepts VIRTUAL_MACHINE
    #         vm_server: {
    #           vm_server_address: {
    #             vm_manager_id: "VmManagerId",
    #             vm_id: "VmId",
    #           },
    #           vm_name: "VmName",
    #           vm_manager_name: "VmManagerName",
    #           vm_manager_type: "VSPHERE", # accepts VSPHERE, SCVMM, HYPERV-MANAGER
    #           vm_path: "VmPath",
    #         },
    #         replication_job_id: "ReplicationJobId",
    #         replication_job_terminated: false,
    #       }
    #
    # @!attribute [rw] server_id
    #   The identifier of the server.
    #   @return [String]
    #
    # @!attribute [rw] server_type
    #   The type of server.
    #   @return [String]
    #
    # @!attribute [rw] vm_server
    #   Information about the VM server.
    #   @return [Types::VmServer]
    #
    # @!attribute [rw] replication_job_id
    #   The identifier of the replication job.
    #   @return [String]
    #
    # @!attribute [rw] replication_job_terminated
    #   Indicates whether the replication job is deleted or failed.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/Server AWS API Documentation
    #
    class Server < Struct.new(
      :server_id,
      :server_type,
      :vm_server,
      :replication_job_id,
      :replication_job_terminated)
      include Aws::Structure
    end

    # The specified server cannot be replicated.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/ServerCannotBeReplicatedException AWS API Documentation
    #
    class ServerCannotBeReplicatedException < Struct.new(
      :message)
      include Aws::Structure
    end

    # A logical grouping of servers.
    #
    # @note When making an API call, you may pass ServerGroup
    #   data as a hash:
    #
    #       {
    #         server_group_id: "ServerGroupId",
    #         name: "ServerGroupName",
    #         server_list: [
    #           {
    #             server_id: "ServerId",
    #             server_type: "VIRTUAL_MACHINE", # accepts VIRTUAL_MACHINE
    #             vm_server: {
    #               vm_server_address: {
    #                 vm_manager_id: "VmManagerId",
    #                 vm_id: "VmId",
    #               },
    #               vm_name: "VmName",
    #               vm_manager_name: "VmManagerName",
    #               vm_manager_type: "VSPHERE", # accepts VSPHERE, SCVMM, HYPERV-MANAGER
    #               vm_path: "VmPath",
    #             },
    #             replication_job_id: "ReplicationJobId",
    #             replication_job_terminated: false,
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] server_group_id
    #   Identifier of a server group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of a server group.
    #   @return [String]
    #
    # @!attribute [rw] server_list
    #   List of servers belonging to a server group.
    #   @return [Array<Types::Server>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/ServerGroup AWS API Documentation
    #
    class ServerGroup < Struct.new(
      :server_group_id,
      :name,
      :server_list)
      include Aws::Structure
    end

    # Launch configuration for a server group.
    #
    # @note When making an API call, you may pass ServerGroupLaunchConfiguration
    #   data as a hash:
    #
    #       {
    #         server_group_id: "ServerGroupId",
    #         launch_order: 1,
    #         server_launch_configurations: [
    #           {
    #             server: {
    #               server_id: "ServerId",
    #               server_type: "VIRTUAL_MACHINE", # accepts VIRTUAL_MACHINE
    #               vm_server: {
    #                 vm_server_address: {
    #                   vm_manager_id: "VmManagerId",
    #                   vm_id: "VmId",
    #                 },
    #                 vm_name: "VmName",
    #                 vm_manager_name: "VmManagerName",
    #                 vm_manager_type: "VSPHERE", # accepts VSPHERE, SCVMM, HYPERV-MANAGER
    #                 vm_path: "VmPath",
    #               },
    #               replication_job_id: "ReplicationJobId",
    #               replication_job_terminated: false,
    #             },
    #             logical_id: "LogicalId",
    #             vpc: "VPC",
    #             subnet: "Subnet",
    #             security_group: "SecurityGroup",
    #             ec2_key_name: "EC2KeyName",
    #             user_data: {
    #               s3_location: {
    #                 bucket: "BucketName",
    #                 key: "KeyName",
    #               },
    #             },
    #             instance_type: "InstanceType",
    #             associate_public_ip_address: false,
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] server_group_id
    #   Identifier of the server group the launch configuration is
    #   associated with.
    #   @return [String]
    #
    # @!attribute [rw] launch_order
    #   Launch order of servers in the server group.
    #   @return [Integer]
    #
    # @!attribute [rw] server_launch_configurations
    #   Launch configuration for servers in the server group.
    #   @return [Array<Types::ServerLaunchConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/ServerGroupLaunchConfiguration AWS API Documentation
    #
    class ServerGroupLaunchConfiguration < Struct.new(
      :server_group_id,
      :launch_order,
      :server_launch_configurations)
      include Aws::Structure
    end

    # Replication configuration for a server group.
    #
    # @note When making an API call, you may pass ServerGroupReplicationConfiguration
    #   data as a hash:
    #
    #       {
    #         server_group_id: "ServerGroupId",
    #         server_replication_configurations: [
    #           {
    #             server: {
    #               server_id: "ServerId",
    #               server_type: "VIRTUAL_MACHINE", # accepts VIRTUAL_MACHINE
    #               vm_server: {
    #                 vm_server_address: {
    #                   vm_manager_id: "VmManagerId",
    #                   vm_id: "VmId",
    #                 },
    #                 vm_name: "VmName",
    #                 vm_manager_name: "VmManagerName",
    #                 vm_manager_type: "VSPHERE", # accepts VSPHERE, SCVMM, HYPERV-MANAGER
    #                 vm_path: "VmPath",
    #               },
    #               replication_job_id: "ReplicationJobId",
    #               replication_job_terminated: false,
    #             },
    #             server_replication_parameters: {
    #               seed_time: Time.now,
    #               frequency: 1,
    #               run_once: false,
    #               license_type: "AWS", # accepts AWS, BYOL
    #               number_of_recent_amis_to_keep: 1,
    #               encrypted: false,
    #               kms_key_id: "KmsKeyId",
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] server_group_id
    #   Identifier of the server group this replication configuration is
    #   associated with.
    #   @return [String]
    #
    # @!attribute [rw] server_replication_configurations
    #   Replication configuration for servers in the server group.
    #   @return [Array<Types::ServerReplicationConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/ServerGroupReplicationConfiguration AWS API Documentation
    #
    class ServerGroupReplicationConfiguration < Struct.new(
      :server_group_id,
      :server_replication_configurations)
      include Aws::Structure
    end

    # Launch configuration for a server.
    #
    # @note When making an API call, you may pass ServerLaunchConfiguration
    #   data as a hash:
    #
    #       {
    #         server: {
    #           server_id: "ServerId",
    #           server_type: "VIRTUAL_MACHINE", # accepts VIRTUAL_MACHINE
    #           vm_server: {
    #             vm_server_address: {
    #               vm_manager_id: "VmManagerId",
    #               vm_id: "VmId",
    #             },
    #             vm_name: "VmName",
    #             vm_manager_name: "VmManagerName",
    #             vm_manager_type: "VSPHERE", # accepts VSPHERE, SCVMM, HYPERV-MANAGER
    #             vm_path: "VmPath",
    #           },
    #           replication_job_id: "ReplicationJobId",
    #           replication_job_terminated: false,
    #         },
    #         logical_id: "LogicalId",
    #         vpc: "VPC",
    #         subnet: "Subnet",
    #         security_group: "SecurityGroup",
    #         ec2_key_name: "EC2KeyName",
    #         user_data: {
    #           s3_location: {
    #             bucket: "BucketName",
    #             key: "KeyName",
    #           },
    #         },
    #         instance_type: "InstanceType",
    #         associate_public_ip_address: false,
    #       }
    #
    # @!attribute [rw] server
    #   Identifier of the server the launch configuration is associated
    #   with.
    #   @return [Types::Server]
    #
    # @!attribute [rw] logical_id
    #   Logical ID of the server in the Amazon CloudFormation template.
    #   @return [String]
    #
    # @!attribute [rw] vpc
    #   Identifier of the VPC the server should be launched into.
    #   @return [String]
    #
    # @!attribute [rw] subnet
    #   Identifier of the subnet the server should be launched into.
    #   @return [String]
    #
    # @!attribute [rw] security_group
    #   Identifier of the security group that applies to the launched
    #   server.
    #   @return [String]
    #
    # @!attribute [rw] ec2_key_name
    #   Name of the EC2 SSH Key to be used for connecting to the launched
    #   server.
    #   @return [String]
    #
    # @!attribute [rw] user_data
    #   Location of the user-data script to be executed when launching the
    #   server.
    #   @return [Types::UserData]
    #
    # @!attribute [rw] instance_type
    #   Instance type to be used for launching the server.
    #   @return [String]
    #
    # @!attribute [rw] associate_public_ip_address
    #   If true, a publicly accessible IP address is created when launching
    #   the server.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/ServerLaunchConfiguration AWS API Documentation
    #
    class ServerLaunchConfiguration < Struct.new(
      :server,
      :logical_id,
      :vpc,
      :subnet,
      :security_group,
      :ec2_key_name,
      :user_data,
      :instance_type,
      :associate_public_ip_address)
      include Aws::Structure
    end

    # Replication configuration of a server.
    #
    # @note When making an API call, you may pass ServerReplicationConfiguration
    #   data as a hash:
    #
    #       {
    #         server: {
    #           server_id: "ServerId",
    #           server_type: "VIRTUAL_MACHINE", # accepts VIRTUAL_MACHINE
    #           vm_server: {
    #             vm_server_address: {
    #               vm_manager_id: "VmManagerId",
    #               vm_id: "VmId",
    #             },
    #             vm_name: "VmName",
    #             vm_manager_name: "VmManagerName",
    #             vm_manager_type: "VSPHERE", # accepts VSPHERE, SCVMM, HYPERV-MANAGER
    #             vm_path: "VmPath",
    #           },
    #           replication_job_id: "ReplicationJobId",
    #           replication_job_terminated: false,
    #         },
    #         server_replication_parameters: {
    #           seed_time: Time.now,
    #           frequency: 1,
    #           run_once: false,
    #           license_type: "AWS", # accepts AWS, BYOL
    #           number_of_recent_amis_to_keep: 1,
    #           encrypted: false,
    #           kms_key_id: "KmsKeyId",
    #         },
    #       }
    #
    # @!attribute [rw] server
    #   Identifier of the server this replication configuration is
    #   associated with.
    #   @return [Types::Server]
    #
    # @!attribute [rw] server_replication_parameters
    #   Parameters for replicating the server.
    #   @return [Types::ServerReplicationParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/ServerReplicationConfiguration AWS API Documentation
    #
    class ServerReplicationConfiguration < Struct.new(
      :server,
      :server_replication_parameters)
      include Aws::Structure
    end

    # Replication parameters for replicating a server.
    #
    # @note When making an API call, you may pass ServerReplicationParameters
    #   data as a hash:
    #
    #       {
    #         seed_time: Time.now,
    #         frequency: 1,
    #         run_once: false,
    #         license_type: "AWS", # accepts AWS, BYOL
    #         number_of_recent_amis_to_keep: 1,
    #         encrypted: false,
    #         kms_key_id: "KmsKeyId",
    #       }
    #
    # @!attribute [rw] seed_time
    #   Seed time for creating a replication job for the server.
    #   @return [Time]
    #
    # @!attribute [rw] frequency
    #   Frequency of creating replication jobs for the server.
    #   @return [Integer]
    #
    # @!attribute [rw] run_once
    #   @return [Boolean]
    #
    # @!attribute [rw] license_type
    #   License type for creating a replication job for the server.
    #   @return [String]
    #
    # @!attribute [rw] number_of_recent_amis_to_keep
    #   Number of recent AMIs to keep when creating a replication job for
    #   this server.
    #   @return [Integer]
    #
    # @!attribute [rw] encrypted
    #   When true, the replication job produces encrypted AMIs. See also
    #   `KmsKeyId` below.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   KMS key ID for replication jobs that produce encrypted AMIs. Can be
    #   any of the following:
    #
    #   * KMS key ID
    #
    #   * KMS key alias
    #
    #   * ARN referring to KMS key ID
    #
    #   * ARN referring to KMS key alias
    #
    #   If encrypted is *true* but a KMS key id is not specified, the
    #   customer's default KMS key for EBS is used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/ServerReplicationParameters AWS API Documentation
    #
    class ServerReplicationParameters < Struct.new(
      :seed_time,
      :frequency,
      :run_once,
      :license_type,
      :number_of_recent_amis_to_keep,
      :encrypted,
      :kms_key_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartAppReplicationRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId",
    #       }
    #
    # @!attribute [rw] app_id
    #   ID of the application to replicate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/StartAppReplicationRequest AWS API Documentation
    #
    class StartAppReplicationRequest < Struct.new(
      :app_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/StartAppReplicationResponse AWS API Documentation
    #
    class StartAppReplicationResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass StartOnDemandReplicationRunRequest
    #   data as a hash:
    #
    #       {
    #         replication_job_id: "ReplicationJobId", # required
    #         description: "Description",
    #       }
    #
    # @!attribute [rw] replication_job_id
    #   The identifier of the replication job.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the replication run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/StartOnDemandReplicationRunRequest AWS API Documentation
    #
    class StartOnDemandReplicationRunRequest < Struct.new(
      :replication_job_id,
      :description)
      include Aws::Structure
    end

    # @!attribute [rw] replication_run_id
    #   The identifier of the replication run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/StartOnDemandReplicationRunResponse AWS API Documentation
    #
    class StartOnDemandReplicationRunResponse < Struct.new(
      :replication_run_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopAppReplicationRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId",
    #       }
    #
    # @!attribute [rw] app_id
    #   ID of the application to stop replicating.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/StopAppReplicationRequest AWS API Documentation
    #
    class StopAppReplicationRequest < Struct.new(
      :app_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/StopAppReplicationResponse AWS API Documentation
    #
    class StopAppReplicationResponse < Aws::EmptyStructure; end

    # A label that can be assigned to an application.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       }
    #
    # @!attribute [rw] key
    #   Tag key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Tag value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # @note When making an API call, you may pass TerminateAppRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId",
    #       }
    #
    # @!attribute [rw] app_id
    #   ID of the application to terminate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/TerminateAppRequest AWS API Documentation
    #
    class TerminateAppRequest < Struct.new(
      :app_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/TerminateAppResponse AWS API Documentation
    #
    class TerminateAppResponse < Aws::EmptyStructure; end

    # You lack permissions needed to perform this operation. Check your IAM
    # policies, and ensure that you are using the correct access keys.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/UnauthorizedOperationException AWS API Documentation
    #
    class UnauthorizedOperationException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateAppRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId",
    #         name: "AppName",
    #         description: "AppDescription",
    #         role_name: "RoleName",
    #         server_groups: [
    #           {
    #             server_group_id: "ServerGroupId",
    #             name: "ServerGroupName",
    #             server_list: [
    #               {
    #                 server_id: "ServerId",
    #                 server_type: "VIRTUAL_MACHINE", # accepts VIRTUAL_MACHINE
    #                 vm_server: {
    #                   vm_server_address: {
    #                     vm_manager_id: "VmManagerId",
    #                     vm_id: "VmId",
    #                   },
    #                   vm_name: "VmName",
    #                   vm_manager_name: "VmManagerName",
    #                   vm_manager_type: "VSPHERE", # accepts VSPHERE, SCVMM, HYPERV-MANAGER
    #                   vm_path: "VmPath",
    #                 },
    #                 replication_job_id: "ReplicationJobId",
    #                 replication_job_terminated: false,
    #               },
    #             ],
    #           },
    #         ],
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] app_id
    #   ID of the application to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   New name of the application.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   New description of the application.
    #   @return [String]
    #
    # @!attribute [rw] role_name
    #   Name of the service role in the customer's account used by AWS SMS.
    #   @return [String]
    #
    # @!attribute [rw] server_groups
    #   List of server groups in the application to update.
    #   @return [Array<Types::ServerGroup>]
    #
    # @!attribute [rw] tags
    #   List of tags to associate with the application.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/UpdateAppRequest AWS API Documentation
    #
    class UpdateAppRequest < Struct.new(
      :app_id,
      :name,
      :description,
      :role_name,
      :server_groups,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] app_summary
    #   Summary description of the application.
    #   @return [Types::AppSummary]
    #
    # @!attribute [rw] server_groups
    #   List of updated server groups in the application.
    #   @return [Array<Types::ServerGroup>]
    #
    # @!attribute [rw] tags
    #   List of tags associated with the application.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/UpdateAppResponse AWS API Documentation
    #
    class UpdateAppResponse < Struct.new(
      :app_summary,
      :server_groups,
      :tags)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateReplicationJobRequest
    #   data as a hash:
    #
    #       {
    #         replication_job_id: "ReplicationJobId", # required
    #         frequency: 1,
    #         next_replication_run_start_time: Time.now,
    #         license_type: "AWS", # accepts AWS, BYOL
    #         role_name: "RoleName",
    #         description: "Description",
    #         number_of_recent_amis_to_keep: 1,
    #         encrypted: false,
    #         kms_key_id: "KmsKeyId",
    #       }
    #
    # @!attribute [rw] replication_job_id
    #   The identifier of the replication job.
    #   @return [String]
    #
    # @!attribute [rw] frequency
    #   The time between consecutive replication runs, in hours.
    #   @return [Integer]
    #
    # @!attribute [rw] next_replication_run_start_time
    #   The start time of the next replication run.
    #   @return [Time]
    #
    # @!attribute [rw] license_type
    #   The license type to be used for the AMI created by a successful
    #   replication run.
    #   @return [String]
    #
    # @!attribute [rw] role_name
    #   The name of the IAM role to be used by AWS SMS.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the replication job.
    #   @return [String]
    #
    # @!attribute [rw] number_of_recent_amis_to_keep
    #   The maximum number of SMS-created AMIs to retain. The oldest will be
    #   deleted once the maximum number is reached and a new AMI is created.
    #   @return [Integer]
    #
    # @!attribute [rw] encrypted
    #   When true, the replication job produces encrypted AMIs . See also
    #   `KmsKeyId` below.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   KMS key ID for replication jobs that produce encrypted AMIs. Can be
    #   any of the following:
    #
    #   * KMS key ID
    #
    #   * KMS key alias
    #
    #   * ARN referring to KMS key ID
    #
    #   * ARN referring to KMS key alias
    #
    #   If encrypted is *true* but a KMS key id is not specified, the
    #   customer's default KMS key for EBS is used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/UpdateReplicationJobRequest AWS API Documentation
    #
    class UpdateReplicationJobRequest < Struct.new(
      :replication_job_id,
      :frequency,
      :next_replication_run_start_time,
      :license_type,
      :role_name,
      :description,
      :number_of_recent_amis_to_keep,
      :encrypted,
      :kms_key_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/UpdateReplicationJobResponse AWS API Documentation
    #
    class UpdateReplicationJobResponse < Aws::EmptyStructure; end

    # A script that runs on first launch of an Amazon EC2 instance. Used for
    # configuring the server during launch.
    #
    # @note When making an API call, you may pass UserData
    #   data as a hash:
    #
    #       {
    #         s3_location: {
    #           bucket: "BucketName",
    #           key: "KeyName",
    #         },
    #       }
    #
    # @!attribute [rw] s3_location
    #   Amazon S3 location of the user-data script.
    #   @return [Types::S3Location]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/UserData AWS API Documentation
    #
    class UserData < Struct.new(
      :s3_location)
      include Aws::Structure
    end

    # Represents a VM server.
    #
    # @note When making an API call, you may pass VmServer
    #   data as a hash:
    #
    #       {
    #         vm_server_address: {
    #           vm_manager_id: "VmManagerId",
    #           vm_id: "VmId",
    #         },
    #         vm_name: "VmName",
    #         vm_manager_name: "VmManagerName",
    #         vm_manager_type: "VSPHERE", # accepts VSPHERE, SCVMM, HYPERV-MANAGER
    #         vm_path: "VmPath",
    #       }
    #
    # @!attribute [rw] vm_server_address
    #   Information about the VM server location.
    #   @return [Types::VmServerAddress]
    #
    # @!attribute [rw] vm_name
    #   The name of the VM.
    #   @return [String]
    #
    # @!attribute [rw] vm_manager_name
    #   The name of the VM manager.
    #   @return [String]
    #
    # @!attribute [rw] vm_manager_type
    #   The type of VM management product.
    #   @return [String]
    #
    # @!attribute [rw] vm_path
    #   The VM folder path in the vCenter Server virtual machine inventory
    #   tree.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/VmServer AWS API Documentation
    #
    class VmServer < Struct.new(
      :vm_server_address,
      :vm_name,
      :vm_manager_name,
      :vm_manager_type,
      :vm_path)
      include Aws::Structure
    end

    # Represents a VM server location.
    #
    # @note When making an API call, you may pass VmServerAddress
    #   data as a hash:
    #
    #       {
    #         vm_manager_id: "VmManagerId",
    #         vm_id: "VmId",
    #       }
    #
    # @!attribute [rw] vm_manager_id
    #   The identifier of the VM manager.
    #   @return [String]
    #
    # @!attribute [rw] vm_id
    #   The identifier of the VM.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/VmServerAddress AWS API Documentation
    #
    class VmServerAddress < Struct.new(
      :vm_manager_id,
      :vm_id)
      include Aws::Structure
    end

  end
end
