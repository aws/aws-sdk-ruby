# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Mgn
  module Types

    # Operating denied due to a file permission or access check error.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Source server CPU information.
    #
    # @!attribute [rw] cores
    #   The number of CPU cores on the source server.
    #   @return [Integer]
    #
    # @!attribute [rw] model_name
    #   The source server's CPU model name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/CPU AWS API Documentation
    #
    class CPU < Struct.new(
      :cores,
      :model_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ChangeServerLifeCycleStateRequest
    #   data as a hash:
    #
    #       {
    #         life_cycle: { # required
    #           state: "READY_FOR_TEST", # required, accepts READY_FOR_TEST, READY_FOR_CUTOVER, CUTOVER
    #         },
    #         source_server_id: "SourceServerID", # required
    #       }
    #
    # @!attribute [rw] life_cycle
    #   The request to change the source server migration lifecycle state.
    #   @return [Types::ChangeServerLifeCycleStateSourceServerLifecycle]
    #
    # @!attribute [rw] source_server_id
    #   The request to change the source server migration lifecycle state by
    #   source server ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ChangeServerLifeCycleStateRequest AWS API Documentation
    #
    class ChangeServerLifeCycleStateRequest < Struct.new(
      :life_cycle,
      :source_server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to change the source server migration lifecycle state.
    #
    # @note When making an API call, you may pass ChangeServerLifeCycleStateSourceServerLifecycle
    #   data as a hash:
    #
    #       {
    #         state: "READY_FOR_TEST", # required, accepts READY_FOR_TEST, READY_FOR_CUTOVER, CUTOVER
    #       }
    #
    # @!attribute [rw] state
    #   The request to change the source server migration lifecycle state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ChangeServerLifeCycleStateSourceServerLifecycle AWS API Documentation
    #
    class ChangeServerLifeCycleStateSourceServerLifecycle < Struct.new(
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request could not be completed due to a conflict with the current
    # state of the target resource.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   A conflict occured when prompting for the Resource ID.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   A conflict occured when prompting for resource type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :code,
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateReplicationConfigurationTemplateRequest
    #   data as a hash:
    #
    #       {
    #         associate_default_security_group: false, # required
    #         bandwidth_throttling: 1, # required
    #         create_public_ip: false, # required
    #         data_plane_routing: "PRIVATE_IP", # required, accepts PRIVATE_IP, PUBLIC_IP
    #         default_large_staging_disk_type: "GP2", # required, accepts GP2, ST1
    #         ebs_encryption: "DEFAULT", # required, accepts DEFAULT, CUSTOM
    #         ebs_encryption_key_arn: "ARN",
    #         replication_server_instance_type: "EC2InstanceType", # required
    #         replication_servers_security_groups_i_ds: ["SecurityGroupID"], # required
    #         staging_area_subnet_id: "SubnetID", # required
    #         staging_area_tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         use_dedicated_replication_server: false, # required
    #       }
    #
    # @!attribute [rw] associate_default_security_group
    #   Request to associate the default Application Migration Service
    #   Security group with the Replication Settings template.
    #   @return [Boolean]
    #
    # @!attribute [rw] bandwidth_throttling
    #   Request to configure bandwidth throttling during Replication
    #   Settings template creation.
    #   @return [Integer]
    #
    # @!attribute [rw] create_public_ip
    #   Request to create Public IP during Replication Settings template
    #   creation.
    #   @return [Boolean]
    #
    # @!attribute [rw] data_plane_routing
    #   Request to configure data plane routing during Replication Settings
    #   template creation.
    #   @return [String]
    #
    # @!attribute [rw] default_large_staging_disk_type
    #   Request to configure the Staging Disk EBS volume type to "gp2"
    #   during Replication Settings template creation.
    #   @return [String]
    #
    # @!attribute [rw] ebs_encryption
    #   Request to configure EBS enryption during Replication Settings
    #   template creation.
    #   @return [String]
    #
    # @!attribute [rw] ebs_encryption_key_arn
    #   Request to configure an EBS enryption key during Replication
    #   Settings template creation.
    #   @return [String]
    #
    # @!attribute [rw] replication_server_instance_type
    #   Request to configure the Replication Server instance type during
    #   Replication Settings template creation.
    #   @return [String]
    #
    # @!attribute [rw] replication_servers_security_groups_i_ds
    #   Request to configure the Replication Server Secuirity group ID
    #   during Replication Settings template creation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] staging_area_subnet_id
    #   Request to configure the Staging Area subnet ID during Replication
    #   Settings template creation.
    #   @return [String]
    #
    # @!attribute [rw] staging_area_tags
    #   Request to configure Staiging Area tags during Replication Settings
    #   template creation.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tags
    #   Request to configure tags during Replication Settings template
    #   creation.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] use_dedicated_replication_server
    #   Request to use Dedicated Replication Servers during Replication
    #   Settings template creation.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/CreateReplicationConfigurationTemplateRequest AWS API Documentation
    #
    class CreateReplicationConfigurationTemplateRequest < Struct.new(
      :associate_default_security_group,
      :bandwidth_throttling,
      :create_public_ip,
      :data_plane_routing,
      :default_large_staging_disk_type,
      :ebs_encryption,
      :ebs_encryption_key_arn,
      :replication_server_instance_type,
      :replication_servers_security_groups_i_ds,
      :staging_area_subnet_id,
      :staging_area_tags,
      :tags,
      :use_dedicated_replication_server)
      SENSITIVE = [:staging_area_tags, :tags]
      include Aws::Structure
    end

    # Error in data replication.
    #
    # @!attribute [rw] error
    #   Error in data replication.
    #   @return [String]
    #
    # @!attribute [rw] raw_error
    #   Error in data replication.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DataReplicationError AWS API Documentation
    #
    class DataReplicationError < Struct.new(
      :error,
      :raw_error)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request data replication info.
    #
    # @!attribute [rw] data_replication_error
    #   Error in obtaining data replication info.
    #   @return [Types::DataReplicationError]
    #
    # @!attribute [rw] data_replication_initiation
    #   Request to query whether data replication has been initiated.
    #   @return [Types::DataReplicationInitiation]
    #
    # @!attribute [rw] data_replication_state
    #   Request to query the data replication state.
    #   @return [String]
    #
    # @!attribute [rw] eta_date_time
    #   Request to query the time when data replication will be complete.
    #   @return [String]
    #
    # @!attribute [rw] lag_duration
    #   Request to query data replication lag durating.
    #   @return [String]
    #
    # @!attribute [rw] last_snapshot_date_time
    #   Request to query data replication last snapshot time.
    #   @return [String]
    #
    # @!attribute [rw] replicated_disks
    #   Request to query disks replicated.
    #   @return [Array<Types::DataReplicationInfoReplicatedDisk>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DataReplicationInfo AWS API Documentation
    #
    class DataReplicationInfo < Struct.new(
      :data_replication_error,
      :data_replication_initiation,
      :data_replication_state,
      :eta_date_time,
      :lag_duration,
      :last_snapshot_date_time,
      :replicated_disks)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to query disks replicated.
    #
    # @!attribute [rw] backlogged_storage_bytes
    #   Request to query data replication backlog size in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] device_name
    #   Request to query device name.
    #   @return [String]
    #
    # @!attribute [rw] replicated_storage_bytes
    #   Request to query amount of data replicated in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] rescanned_storage_bytes
    #   Request to query amount of data rescanned in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] total_storage_bytes
    #   Request to query total amount of data replicated in bytes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DataReplicationInfoReplicatedDisk AWS API Documentation
    #
    class DataReplicationInfoReplicatedDisk < Struct.new(
      :backlogged_storage_bytes,
      :device_name,
      :replicated_storage_bytes,
      :rescanned_storage_bytes,
      :total_storage_bytes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Data replication initiation.
    #
    # @!attribute [rw] next_attempt_date_time
    #   Request to query next data initiation date and time.
    #   @return [String]
    #
    # @!attribute [rw] start_date_time
    #   Request to query data initiation start date and time.
    #   @return [String]
    #
    # @!attribute [rw] steps
    #   Request to query data initiation steps.
    #   @return [Array<Types::DataReplicationInitiationStep>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DataReplicationInitiation AWS API Documentation
    #
    class DataReplicationInitiation < Struct.new(
      :next_attempt_date_time,
      :start_date_time,
      :steps)
      SENSITIVE = []
      include Aws::Structure
    end

    # Data replication intiation step.
    #
    # @!attribute [rw] name
    #   Request to query data initiation step name.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Request to query data initiation status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DataReplicationInitiationStep AWS API Documentation
    #
    class DataReplicationInitiationStep < Struct.new(
      :name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteJobRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobID", # required
    #       }
    #
    # @!attribute [rw] job_id
    #   Request to delete Job from service by Job ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DeleteJobRequest AWS API Documentation
    #
    class DeleteJobRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DeleteJobResponse AWS API Documentation
    #
    class DeleteJobResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteReplicationConfigurationTemplateRequest
    #   data as a hash:
    #
    #       {
    #         replication_configuration_template_id: "ReplicationConfigurationTemplateID", # required
    #       }
    #
    # @!attribute [rw] replication_configuration_template_id
    #   Request to delete Replication Configuration Template from service by
    #   Replication Configuration Template ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DeleteReplicationConfigurationTemplateRequest AWS API Documentation
    #
    class DeleteReplicationConfigurationTemplateRequest < Struct.new(
      :replication_configuration_template_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DeleteReplicationConfigurationTemplateResponse AWS API Documentation
    #
    class DeleteReplicationConfigurationTemplateResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteSourceServerRequest
    #   data as a hash:
    #
    #       {
    #         source_server_id: "SourceServerID", # required
    #       }
    #
    # @!attribute [rw] source_server_id
    #   Request to delete Source Server from service by Server ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DeleteSourceServerRequest AWS API Documentation
    #
    class DeleteSourceServerRequest < Struct.new(
      :source_server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DeleteSourceServerResponse AWS API Documentation
    #
    class DeleteSourceServerResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteVcenterClientRequest
    #   data as a hash:
    #
    #       {
    #         vcenter_client_id: "VcenterClientID", # required
    #       }
    #
    # @!attribute [rw] vcenter_client_id
    #   ID of resource to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DeleteVcenterClientRequest AWS API Documentation
    #
    class DeleteVcenterClientRequest < Struct.new(
      :vcenter_client_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeJobLogItemsRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobID", # required
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] job_id
    #   Request to describe Job log job ID.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Request to describe Job log item maximum results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Request to describe Job log next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DescribeJobLogItemsRequest AWS API Documentation
    #
    class DescribeJobLogItemsRequest < Struct.new(
      :job_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   Request to describe Job log response items.
    #   @return [Array<Types::JobLog>]
    #
    # @!attribute [rw] next_token
    #   Request to describe Job log response next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DescribeJobLogItemsResponse AWS API Documentation
    #
    class DescribeJobLogItemsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeJobsRequest
    #   data as a hash:
    #
    #       {
    #         filters: { # required
    #           from_date: "ISO8601DatetimeString",
    #           job_i_ds: ["JobID"],
    #           to_date: "ISO8601DatetimeString",
    #         },
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] filters
    #   Request to describe Job log filters.
    #   @return [Types::DescribeJobsRequestFilters]
    #
    # @!attribute [rw] max_results
    #   Request to describe Job log by max results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Request to describe Job logby next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DescribeJobsRequest AWS API Documentation
    #
    class DescribeJobsRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to describe Job log filters.
    #
    # @note When making an API call, you may pass DescribeJobsRequestFilters
    #   data as a hash:
    #
    #       {
    #         from_date: "ISO8601DatetimeString",
    #         job_i_ds: ["JobID"],
    #         to_date: "ISO8601DatetimeString",
    #       }
    #
    # @!attribute [rw] from_date
    #   Request to describe Job log filters by date.
    #   @return [String]
    #
    # @!attribute [rw] job_i_ds
    #   Request to describe Job log filters by job ID.
    #   @return [Array<String>]
    #
    # @!attribute [rw] to_date
    #   Request to describe Job log by last date.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DescribeJobsRequestFilters AWS API Documentation
    #
    class DescribeJobsRequestFilters < Struct.new(
      :from_date,
      :job_i_ds,
      :to_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   Request to describe Job log items.
    #   @return [Array<Types::Job>]
    #
    # @!attribute [rw] next_token
    #   Request to describe Job response by next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DescribeJobsResponse AWS API Documentation
    #
    class DescribeJobsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeReplicationConfigurationTemplatesRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #         replication_configuration_template_i_ds: ["ReplicationConfigurationTemplateID"], # required
    #       }
    #
    # @!attribute [rw] max_results
    #   Request to describe Replication Configuration template by max
    #   results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Request to describe Replication Configuration template by next
    #   token.
    #   @return [String]
    #
    # @!attribute [rw] replication_configuration_template_i_ds
    #   Request to describe Replication Configuration template by template
    #   IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DescribeReplicationConfigurationTemplatesRequest AWS API Documentation
    #
    class DescribeReplicationConfigurationTemplatesRequest < Struct.new(
      :max_results,
      :next_token,
      :replication_configuration_template_i_ds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   Request to describe Replication Configuration template by items.
    #   @return [Array<Types::ReplicationConfigurationTemplate>]
    #
    # @!attribute [rw] next_token
    #   Request to describe Replication Configuration template by next
    #   token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DescribeReplicationConfigurationTemplatesResponse AWS API Documentation
    #
    class DescribeReplicationConfigurationTemplatesResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeSourceServersRequest
    #   data as a hash:
    #
    #       {
    #         filters: { # required
    #           is_archived: false,
    #           life_cycle_states: ["STOPPED"], # accepts STOPPED, NOT_READY, READY_FOR_TEST, TESTING, READY_FOR_CUTOVER, CUTTING_OVER, CUTOVER, DISCONNECTED, DISCOVERED
    #           replication_types: ["AGENT_BASED"], # accepts AGENT_BASED, SNAPSHOT_SHIPPING
    #           source_server_i_ds: ["SourceServerID"],
    #         },
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] filters
    #   Request to filter Source Servers list.
    #   @return [Types::DescribeSourceServersRequestFilters]
    #
    # @!attribute [rw] max_results
    #   Request to filter Source Servers list by maximum results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Request to filter Source Servers list by next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DescribeSourceServersRequest AWS API Documentation
    #
    class DescribeSourceServersRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to filter Source Servers list.
    #
    # @note When making an API call, you may pass DescribeSourceServersRequestFilters
    #   data as a hash:
    #
    #       {
    #         is_archived: false,
    #         life_cycle_states: ["STOPPED"], # accepts STOPPED, NOT_READY, READY_FOR_TEST, TESTING, READY_FOR_CUTOVER, CUTTING_OVER, CUTOVER, DISCONNECTED, DISCOVERED
    #         replication_types: ["AGENT_BASED"], # accepts AGENT_BASED, SNAPSHOT_SHIPPING
    #         source_server_i_ds: ["SourceServerID"],
    #       }
    #
    # @!attribute [rw] is_archived
    #   Request to filter Source Servers list by archived.
    #   @return [Boolean]
    #
    # @!attribute [rw] life_cycle_states
    #   Request to filter Source Servers list by life cycle states.
    #   @return [Array<String>]
    #
    # @!attribute [rw] replication_types
    #   Request to filter Source Servers list by replication type.
    #   @return [Array<String>]
    #
    # @!attribute [rw] source_server_i_ds
    #   Request to filter Source Servers list by Source Server ID.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DescribeSourceServersRequestFilters AWS API Documentation
    #
    class DescribeSourceServersRequestFilters < Struct.new(
      :is_archived,
      :life_cycle_states,
      :replication_types,
      :source_server_i_ds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   Request to filter Source Servers list by item.
    #   @return [Array<Types::SourceServer>]
    #
    # @!attribute [rw] next_token
    #   Request to filter Source Servers next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DescribeSourceServersResponse AWS API Documentation
    #
    class DescribeSourceServersResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeVcenterClientsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] max_results
    #   Maximum results to be returned in DescribeVcenterClients.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Next pagination token to be provided for DescribeVcenterClients.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DescribeVcenterClientsRequest AWS API Documentation
    #
    class DescribeVcenterClientsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   List of items returned by DescribeVcenterClients.
    #   @return [Array<Types::VcenterClient>]
    #
    # @!attribute [rw] next_token
    #   Next pagination token returned from DescribeVcenterClients.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DescribeVcenterClientsResponse AWS API Documentation
    #
    class DescribeVcenterClientsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisconnectFromServiceRequest
    #   data as a hash:
    #
    #       {
    #         source_server_id: "SourceServerID", # required
    #       }
    #
    # @!attribute [rw] source_server_id
    #   Request to disconnect Source Server from service by Server ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DisconnectFromServiceRequest AWS API Documentation
    #
    class DisconnectFromServiceRequest < Struct.new(
      :source_server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The disk identifier.
    #
    # @!attribute [rw] bytes
    #   The amount of storage on the disk in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] device_name
    #   The disk or device name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/Disk AWS API Documentation
    #
    class Disk < Struct.new(
      :bytes,
      :device_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass FinalizeCutoverRequest
    #   data as a hash:
    #
    #       {
    #         source_server_id: "SourceServerID", # required
    #       }
    #
    # @!attribute [rw] source_server_id
    #   Request to finalize Cutover by Soure Server ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/FinalizeCutoverRequest AWS API Documentation
    #
    class FinalizeCutoverRequest < Struct.new(
      :source_server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetLaunchConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         source_server_id: "SourceServerID", # required
    #       }
    #
    # @!attribute [rw] source_server_id
    #   Request to get Launch Configuration information by Source Server ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/GetLaunchConfigurationRequest AWS API Documentation
    #
    class GetLaunchConfigurationRequest < Struct.new(
      :source_server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetReplicationConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         source_server_id: "SourceServerID", # required
    #       }
    #
    # @!attribute [rw] source_server_id
    #   Request to get Replication Configuaration by Source Server ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/GetReplicationConfigurationRequest AWS API Documentation
    #
    class GetReplicationConfigurationRequest < Struct.new(
      :source_server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identification hints.
    #
    # @!attribute [rw] aws_instance_id
    #   AWS Instance ID identification hint.
    #   @return [String]
    #
    # @!attribute [rw] fqdn
    #   FQDN address identification hint.
    #   @return [String]
    #
    # @!attribute [rw] hostname
    #   Hostname identification hint.
    #   @return [String]
    #
    # @!attribute [rw] vm_path
    #   vCenter VM path identification hint.
    #   @return [String]
    #
    # @!attribute [rw] vm_ware_uuid
    #   vmWare UUID identification hint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/IdentificationHints AWS API Documentation
    #
    class IdentificationHints < Struct.new(
      :aws_instance_id,
      :fqdn,
      :hostname,
      :vm_path,
      :vm_ware_uuid)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/InitializeServiceRequest AWS API Documentation
    #
    class InitializeServiceRequest < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/InitializeServiceResponse AWS API Documentation
    #
    class InitializeServiceResponse < Aws::EmptyStructure; end

    # The server encountered an unexpected condition that prevented it from
    # fulfilling the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The server encountered an unexpected condition that prevented it
    #   from fulfilling the request. The request will be retried again after
    #   x seconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Job.
    #
    # @!attribute [rw] arn
    #   the ARN of the specific Job.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   Job creation time.
    #   @return [String]
    #
    # @!attribute [rw] end_date_time
    #   Job end time.
    #   @return [String]
    #
    # @!attribute [rw] initiated_by
    #   Job initiated by field.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   Job ID.
    #   @return [String]
    #
    # @!attribute [rw] participating_servers
    #   Servers participating in a specific Job.
    #   @return [Array<Types::ParticipatingServer>]
    #
    # @!attribute [rw] status
    #   Job status.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags associated with spcific Job.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   Job type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/Job AWS API Documentation
    #
    class Job < Struct.new(
      :arn,
      :creation_date_time,
      :end_date_time,
      :initiated_by,
      :job_id,
      :participating_servers,
      :status,
      :tags,
      :type)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # Job log.
    #
    # @!attribute [rw] event
    #   Job log event.
    #   @return [String]
    #
    # @!attribute [rw] event_data
    #   Job event data
    #   @return [Types::JobLogEventData]
    #
    # @!attribute [rw] log_date_time
    #   Job log event date and time.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/JobLog AWS API Documentation
    #
    class JobLog < Struct.new(
      :event,
      :event_data,
      :log_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Job log data
    #
    # @!attribute [rw] conversion_server_id
    #   Job Event conversion Server ID.
    #   @return [String]
    #
    # @!attribute [rw] raw_error
    #   Job error.
    #   @return [String]
    #
    # @!attribute [rw] source_server_id
    #   Job Event Source Server ID.
    #   @return [String]
    #
    # @!attribute [rw] target_instance_id
    #   Job Event Target instance ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/JobLogEventData AWS API Documentation
    #
    class JobLogEventData < Struct.new(
      :conversion_server_id,
      :raw_error,
      :source_server_id,
      :target_instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] copy_private_ip
    #   Copy Private IP during Launch Configuration.
    #   @return [Boolean]
    #
    # @!attribute [rw] copy_tags
    #   Copy Tags during Launch Configuration.
    #   @return [Boolean]
    #
    # @!attribute [rw] ec2_launch_template_id
    #   Configure EC2 lauch configuration template ID.
    #   @return [String]
    #
    # @!attribute [rw] launch_disposition
    #   Configure launch dispostion for launch configuration.
    #   @return [String]
    #
    # @!attribute [rw] licensing
    #   Configure launch configuration OS licensing.
    #   @return [Types::Licensing]
    #
    # @!attribute [rw] name
    #   Configure launch configuration name.
    #   @return [String]
    #
    # @!attribute [rw] source_server_id
    #   Configure launch configuration Source Server ID.
    #   @return [String]
    #
    # @!attribute [rw] target_instance_type_right_sizing_method
    #   Configure launch configuration Target instance type right sizing
    #   method.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/LaunchConfiguration AWS API Documentation
    #
    class LaunchConfiguration < Struct.new(
      :copy_private_ip,
      :copy_tags,
      :ec2_launch_template_id,
      :launch_disposition,
      :licensing,
      :name,
      :source_server_id,
      :target_instance_type_right_sizing_method)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configure launced instance.
    #
    # @!attribute [rw] ec2_instance_id
    #   Configure launced instance EC2 ID.
    #   @return [String]
    #
    # @!attribute [rw] first_boot
    #   Configure launced instance first boot.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   Configure launced instance Job ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/LaunchedInstance AWS API Documentation
    #
    class LaunchedInstance < Struct.new(
      :ec2_instance_id,
      :first_boot,
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configure Licensing.
    #
    # @note When making an API call, you may pass Licensing
    #   data as a hash:
    #
    #       {
    #         os_byol: false,
    #       }
    #
    # @!attribute [rw] os_byol
    #   Configure BYOL OS licensing.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/Licensing AWS API Documentation
    #
    class Licensing < Struct.new(
      :os_byol)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lifecycle.
    #
    # @!attribute [rw] added_to_service_date_time
    #   Lifecycle added to service data and time.
    #   @return [String]
    #
    # @!attribute [rw] elapsed_replication_duration
    #   Lifecycle elapsed time and duration.
    #   @return [String]
    #
    # @!attribute [rw] first_byte_date_time
    #   Lifecycle replication initiation date and time.
    #   @return [String]
    #
    # @!attribute [rw] last_cutover
    #   Lifecycle last Cutover.
    #   @return [Types::LifeCycleLastCutover]
    #
    # @!attribute [rw] last_seen_by_service_date_time
    #   Lifecycle last seen date and time.
    #   @return [String]
    #
    # @!attribute [rw] last_test
    #   Lifecycle last Test.
    #   @return [Types::LifeCycleLastTest]
    #
    # @!attribute [rw] state
    #   Lifecycle state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/LifeCycle AWS API Documentation
    #
    class LifeCycle < Struct.new(
      :added_to_service_date_time,
      :elapsed_replication_duration,
      :first_byte_date_time,
      :last_cutover,
      :last_seen_by_service_date_time,
      :last_test,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lifecycle last Cutover .
    #
    # @!attribute [rw] finalized
    #   Lifecycle Cutover finalized date and time.
    #   @return [Types::LifeCycleLastCutoverFinalized]
    #
    # @!attribute [rw] initiated
    #   Lifecycle last Cutover initiated.
    #   @return [Types::LifeCycleLastCutoverInitiated]
    #
    # @!attribute [rw] reverted
    #   Lifecycle last Cutover reverted.
    #   @return [Types::LifeCycleLastCutoverReverted]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/LifeCycleLastCutover AWS API Documentation
    #
    class LifeCycleLastCutover < Struct.new(
      :finalized,
      :initiated,
      :reverted)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lifecycle Cutover finalized
    #
    # @!attribute [rw] api_call_date_time
    #   Lifecycle Cutover finalized date and time.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/LifeCycleLastCutoverFinalized AWS API Documentation
    #
    class LifeCycleLastCutoverFinalized < Struct.new(
      :api_call_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lifecycle last Cutover initiated.
    #
    # @!attribute [rw] api_call_date_time
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   Lifecycle last Cutover initiated by Job ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/LifeCycleLastCutoverInitiated AWS API Documentation
    #
    class LifeCycleLastCutoverInitiated < Struct.new(
      :api_call_date_time,
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lifecycle last Cutover reverted.
    #
    # @!attribute [rw] api_call_date_time
    #   Lifecycle last Cutover reverted API call date time.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/LifeCycleLastCutoverReverted AWS API Documentation
    #
    class LifeCycleLastCutoverReverted < Struct.new(
      :api_call_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lifecycle last Test.
    #
    # @!attribute [rw] finalized
    #   Lifecycle last Test finlized.
    #   @return [Types::LifeCycleLastTestFinalized]
    #
    # @!attribute [rw] initiated
    #   Lifecycle last Test initiated.
    #   @return [Types::LifeCycleLastTestInitiated]
    #
    # @!attribute [rw] reverted
    #   Lifecycle last Test reverted.
    #   @return [Types::LifeCycleLastTestReverted]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/LifeCycleLastTest AWS API Documentation
    #
    class LifeCycleLastTest < Struct.new(
      :finalized,
      :initiated,
      :reverted)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lifecycle last Test finlized.
    #
    # @!attribute [rw] api_call_date_time
    #   Lifecycle Test failed API call date and time.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/LifeCycleLastTestFinalized AWS API Documentation
    #
    class LifeCycleLastTestFinalized < Struct.new(
      :api_call_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lifecycle last Test initiated.
    #
    # @!attribute [rw] api_call_date_time
    #   Lifecycle last Test initiated API call date and time.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   Lifecycle last Test initiated Job ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/LifeCycleLastTestInitiated AWS API Documentation
    #
    class LifeCycleLastTestInitiated < Struct.new(
      :api_call_date_time,
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lifecycle last Test reverted.
    #
    # @!attribute [rw] api_call_date_time
    #   Lifecycle last Test reverted API call date and time.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/LifeCycleLastTestReverted AWS API Documentation
    #
    class LifeCycleLastTestReverted < Struct.new(
      :api_call_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ARN", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   List tags for resource request by ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   List tags for resource response.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @note When making an API call, you may pass MarkAsArchivedRequest
    #   data as a hash:
    #
    #       {
    #         source_server_id: "SourceServerID", # required
    #       }
    #
    # @!attribute [rw] source_server_id
    #   Mark as archived by Source Server ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/MarkAsArchivedRequest AWS API Documentation
    #
    class MarkAsArchivedRequest < Struct.new(
      :source_server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Network interface.
    #
    # @!attribute [rw] ips
    #   Network interface IPs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] is_primary
    #   Network interface primary IP.
    #   @return [Boolean]
    #
    # @!attribute [rw] mac_address
    #   Network interface Mac address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/NetworkInterface AWS API Documentation
    #
    class NetworkInterface < Struct.new(
      :ips,
      :is_primary,
      :mac_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # Operating System.
    #
    # @!attribute [rw] full_string
    #   OS full string.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/OS AWS API Documentation
    #
    class OS < Struct.new(
      :full_string)
      SENSITIVE = []
      include Aws::Structure
    end

    # Server participating in Job.
    #
    # @!attribute [rw] launch_status
    #   Participating server launch status.
    #   @return [String]
    #
    # @!attribute [rw] source_server_id
    #   Participating server Source Server ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ParticipatingServer AWS API Documentation
    #
    class ParticipatingServer < Struct.new(
      :launch_status,
      :source_server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] associate_default_security_group
    #   Replication Configuration associate default Application Migration
    #   Service Security Group.
    #   @return [Boolean]
    #
    # @!attribute [rw] bandwidth_throttling
    #   Replication Configuration set bandwidth throttling.
    #   @return [Integer]
    #
    # @!attribute [rw] create_public_ip
    #   Replication Configuration create Public IP.
    #   @return [Boolean]
    #
    # @!attribute [rw] data_plane_routing
    #   Replication Configuration data plane routing.
    #   @return [String]
    #
    # @!attribute [rw] default_large_staging_disk_type
    #   Replication Configuration use default large Staging Disks.
    #   @return [String]
    #
    # @!attribute [rw] ebs_encryption
    #   Replication Configuration EBS encryption.
    #   @return [String]
    #
    # @!attribute [rw] ebs_encryption_key_arn
    #   Replication Configuration EBS encryption key ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Replication Configuration name.
    #   @return [String]
    #
    # @!attribute [rw] replicated_disks
    #   Replication Configuration replicated disks.
    #   @return [Array<Types::ReplicationConfigurationReplicatedDisk>]
    #
    # @!attribute [rw] replication_server_instance_type
    #   Replication Configuration Replication Server instance type.
    #   @return [String]
    #
    # @!attribute [rw] replication_servers_security_groups_i_ds
    #   Replication Configuration Replication Server Security Group IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] source_server_id
    #   Replication Configuration Source Server ID.
    #   @return [String]
    #
    # @!attribute [rw] staging_area_subnet_id
    #   Replication Configuration Staging Area subnet ID.
    #   @return [String]
    #
    # @!attribute [rw] staging_area_tags
    #   Replication Configuration Staging Area tags.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] use_dedicated_replication_server
    #   Replication Configuration use Dedicated Replication Server.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ReplicationConfiguration AWS API Documentation
    #
    class ReplicationConfiguration < Struct.new(
      :associate_default_security_group,
      :bandwidth_throttling,
      :create_public_ip,
      :data_plane_routing,
      :default_large_staging_disk_type,
      :ebs_encryption,
      :ebs_encryption_key_arn,
      :name,
      :replicated_disks,
      :replication_server_instance_type,
      :replication_servers_security_groups_i_ds,
      :source_server_id,
      :staging_area_subnet_id,
      :staging_area_tags,
      :use_dedicated_replication_server)
      SENSITIVE = [:staging_area_tags]
      include Aws::Structure
    end

    # Replication Configuration replicated disk.
    #
    # @note When making an API call, you may pass ReplicationConfigurationReplicatedDisk
    #   data as a hash:
    #
    #       {
    #         device_name: "BoundedString",
    #         iops: 1,
    #         is_boot_disk: false,
    #         staging_disk_type: "AUTO", # accepts AUTO, GP2, IO1, SC1, ST1, STANDARD
    #       }
    #
    # @!attribute [rw] device_name
    #   Replication Configuration replicated disk device name.
    #   @return [String]
    #
    # @!attribute [rw] iops
    #   Replication Configuration replicated disk IOPs.
    #   @return [Integer]
    #
    # @!attribute [rw] is_boot_disk
    #   Replication Configuration replicated disk boot disk.
    #   @return [Boolean]
    #
    # @!attribute [rw] staging_disk_type
    #   Replication Configuration replicated disk staging disk type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ReplicationConfigurationReplicatedDisk AWS API Documentation
    #
    class ReplicationConfigurationReplicatedDisk < Struct.new(
      :device_name,
      :iops,
      :is_boot_disk,
      :staging_disk_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   Replication Configuration template ARN.
    #   @return [String]
    #
    # @!attribute [rw] associate_default_security_group
    #   Replication Configuration template associate default Application
    #   Migration Service Security group.
    #   @return [Boolean]
    #
    # @!attribute [rw] bandwidth_throttling
    #   Replication Configuration template bandwidth throtting.
    #   @return [Integer]
    #
    # @!attribute [rw] create_public_ip
    #   Replication Configuration template create Public IP.
    #   @return [Boolean]
    #
    # @!attribute [rw] data_plane_routing
    #   Replication Configuration template data plane routing.
    #   @return [String]
    #
    # @!attribute [rw] default_large_staging_disk_type
    #   Replication Configuration template use dedault large Staging Disk
    #   type.
    #   @return [String]
    #
    # @!attribute [rw] ebs_encryption
    #   Replication Configuration template EBS encryption.
    #   @return [String]
    #
    # @!attribute [rw] ebs_encryption_key_arn
    #   Replication Configuration template EBS encryption key ARN.
    #   @return [String]
    #
    # @!attribute [rw] replication_configuration_template_id
    #   Replication Configuration template template ID.
    #   @return [String]
    #
    # @!attribute [rw] replication_server_instance_type
    #   Replication Configuration template server instance type.
    #   @return [String]
    #
    # @!attribute [rw] replication_servers_security_groups_i_ds
    #   Replication Configuration template server Security Groups IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] staging_area_subnet_id
    #   Replication Configuration template Staging Area subnet ID.
    #   @return [String]
    #
    # @!attribute [rw] staging_area_tags
    #   Replication Configuration template Staging Area Tags.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tags
    #   Replication Configuration template Tags.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] use_dedicated_replication_server
    #   Replication Configuration template use Dedicated Replication Server.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ReplicationConfigurationTemplate AWS API Documentation
    #
    class ReplicationConfigurationTemplate < Struct.new(
      :arn,
      :associate_default_security_group,
      :bandwidth_throttling,
      :create_public_ip,
      :data_plane_routing,
      :default_large_staging_disk_type,
      :ebs_encryption,
      :ebs_encryption_key_arn,
      :replication_configuration_template_id,
      :replication_server_instance_type,
      :replication_servers_security_groups_i_ds,
      :staging_area_subnet_id,
      :staging_area_tags,
      :tags,
      :use_dedicated_replication_server)
      SENSITIVE = [:staging_area_tags, :tags]
      include Aws::Structure
    end

    # Resource not found exception.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Resource ID not found error.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Resource type not found error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :code,
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RetryDataReplicationRequest
    #   data as a hash:
    #
    #       {
    #         source_server_id: "SourceServerID", # required
    #       }
    #
    # @!attribute [rw] source_server_id
    #   Retry data replication for Source Server ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/RetryDataReplicationRequest AWS API Documentation
    #
    class RetryDataReplicationRequest < Struct.new(
      :source_server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request could not be completed because its exceeded the service
    # quota.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   Exceeded the service quota code.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Exceeded the service quota resource Id.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Exceeded the service quota resource type.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   Exceeded the service quota service code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :code,
      :message,
      :quota_code,
      :resource_id,
      :resource_type,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Source server properties.
    #
    # @!attribute [rw] cpus
    #   Source Server CPUs.
    #   @return [Array<Types::CPU>]
    #
    # @!attribute [rw] disks
    #   Source Server disks.
    #   @return [Array<Types::Disk>]
    #
    # @!attribute [rw] identification_hints
    #   Source server identification hints.
    #   @return [Types::IdentificationHints]
    #
    # @!attribute [rw] last_updated_date_time
    #   Source server last update date and time.
    #   @return [String]
    #
    # @!attribute [rw] network_interfaces
    #   Source server network interfaces.
    #   @return [Array<Types::NetworkInterface>]
    #
    # @!attribute [rw] os
    #   Source server OS.
    #   @return [Types::OS]
    #
    # @!attribute [rw] ram_bytes
    #   Source server RAM in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] recommended_instance_type
    #   Source server recommended instance type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/SourceProperties AWS API Documentation
    #
    class SourceProperties < Struct.new(
      :cpus,
      :disks,
      :identification_hints,
      :last_updated_date_time,
      :network_interfaces,
      :os,
      :ram_bytes,
      :recommended_instance_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   Source server ARN.
    #   @return [String]
    #
    # @!attribute [rw] data_replication_info
    #   Source server data replication info.
    #   @return [Types::DataReplicationInfo]
    #
    # @!attribute [rw] is_archived
    #   Source server archived status.
    #   @return [Boolean]
    #
    # @!attribute [rw] launched_instance
    #   Source server launched instance.
    #   @return [Types::LaunchedInstance]
    #
    # @!attribute [rw] life_cycle
    #   Source server lifecycle state.
    #   @return [Types::LifeCycle]
    #
    # @!attribute [rw] replication_type
    #   Source server replication type.
    #   @return [String]
    #
    # @!attribute [rw] source_properties
    #   Source server properties.
    #   @return [Types::SourceProperties]
    #
    # @!attribute [rw] source_server_id
    #   Source server ID.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Source server Tags.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] vcenter_client_id
    #   Source server vCenter client id.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/SourceServer AWS API Documentation
    #
    class SourceServer < Struct.new(
      :arn,
      :data_replication_info,
      :is_archived,
      :launched_instance,
      :life_cycle,
      :replication_type,
      :source_properties,
      :source_server_id,
      :tags,
      :vcenter_client_id)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartCutoverRequest
    #   data as a hash:
    #
    #       {
    #         source_server_i_ds: ["SourceServerID"], # required
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] source_server_i_ds
    #   Start Cutover by Source Server IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Start Cutover by Tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/StartCutoverRequest AWS API Documentation
    #
    class StartCutoverRequest < Struct.new(
      :source_server_i_ds,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] job
    #   Start Cutover Job response.
    #   @return [Types::Job]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/StartCutoverResponse AWS API Documentation
    #
    class StartCutoverResponse < Struct.new(
      :job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartReplicationRequest
    #   data as a hash:
    #
    #       {
    #         source_server_id: "SourceServerID", # required
    #       }
    #
    # @!attribute [rw] source_server_id
    #   ID of source server on which to start replication.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/StartReplicationRequest AWS API Documentation
    #
    class StartReplicationRequest < Struct.new(
      :source_server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartTestRequest
    #   data as a hash:
    #
    #       {
    #         source_server_i_ds: ["SourceServerID"], # required
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] source_server_i_ds
    #   Start Test for Source Server IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Start Test by Tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/StartTestRequest AWS API Documentation
    #
    class StartTestRequest < Struct.new(
      :source_server_i_ds,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] job
    #   Start Test Job response.
    #   @return [Types::Job]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/StartTestResponse AWS API Documentation
    #
    class StartTestResponse < Struct.new(
      :job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ARN", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   Tag resource by ARN.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tag resource by Tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @note When making an API call, you may pass TerminateTargetInstancesRequest
    #   data as a hash:
    #
    #       {
    #         source_server_i_ds: ["SourceServerID"], # required
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] source_server_i_ds
    #   Terminate Target instance by Source Server IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Terminate Target instance by Tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/TerminateTargetInstancesRequest AWS API Documentation
    #
    class TerminateTargetInstancesRequest < Struct.new(
      :source_server_i_ds,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] job
    #   Terminate Target instance Job response.
    #   @return [Types::Job]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/TerminateTargetInstancesResponse AWS API Documentation
    #
    class TerminateTargetInstancesResponse < Struct.new(
      :job)
      SENSITIVE = []
      include Aws::Structure
    end

    # Reached throttling quota exception.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   Reached throttling quota exception.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   Reached throttling quota exception will retry after x seconds.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   Reached throttling quota exception service code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :quota_code,
      :retry_after_seconds,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Unitialized account exception.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/UninitializedAccountException AWS API Documentation
    #
    class UninitializedAccountException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ARN", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   Untag resource by ARN.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Untag resource by Keys.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = [:tag_keys]
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateLaunchConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         copy_private_ip: false,
    #         copy_tags: false,
    #         launch_disposition: "STOPPED", # accepts STOPPED, STARTED
    #         licensing: {
    #           os_byol: false,
    #         },
    #         name: "SmallBoundedString",
    #         source_server_id: "SourceServerID", # required
    #         target_instance_type_right_sizing_method: "NONE", # accepts NONE, BASIC
    #       }
    #
    # @!attribute [rw] copy_private_ip
    #   Update Launch configuration copy Private IP request.
    #   @return [Boolean]
    #
    # @!attribute [rw] copy_tags
    #   Update Launch configuration copy Tags request.
    #   @return [Boolean]
    #
    # @!attribute [rw] launch_disposition
    #   Update Launch configuration launch disposition request.
    #   @return [String]
    #
    # @!attribute [rw] licensing
    #   Update Launch configuration licensing request.
    #   @return [Types::Licensing]
    #
    # @!attribute [rw] name
    #   Update Launch configuration name request.
    #   @return [String]
    #
    # @!attribute [rw] source_server_id
    #   Update Launch configuration by Source Server ID request.
    #   @return [String]
    #
    # @!attribute [rw] target_instance_type_right_sizing_method
    #   Update Launch configuration Target instance right sizing request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/UpdateLaunchConfigurationRequest AWS API Documentation
    #
    class UpdateLaunchConfigurationRequest < Struct.new(
      :copy_private_ip,
      :copy_tags,
      :launch_disposition,
      :licensing,
      :name,
      :source_server_id,
      :target_instance_type_right_sizing_method)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateReplicationConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         associate_default_security_group: false,
    #         bandwidth_throttling: 1,
    #         create_public_ip: false,
    #         data_plane_routing: "PRIVATE_IP", # accepts PRIVATE_IP, PUBLIC_IP
    #         default_large_staging_disk_type: "GP2", # accepts GP2, ST1
    #         ebs_encryption: "DEFAULT", # accepts DEFAULT, CUSTOM
    #         ebs_encryption_key_arn: "ARN",
    #         name: "SmallBoundedString",
    #         replicated_disks: [
    #           {
    #             device_name: "BoundedString",
    #             iops: 1,
    #             is_boot_disk: false,
    #             staging_disk_type: "AUTO", # accepts AUTO, GP2, IO1, SC1, ST1, STANDARD
    #           },
    #         ],
    #         replication_server_instance_type: "EC2InstanceType",
    #         replication_servers_security_groups_i_ds: ["SecurityGroupID"],
    #         source_server_id: "SourceServerID", # required
    #         staging_area_subnet_id: "SubnetID",
    #         staging_area_tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         use_dedicated_replication_server: false,
    #       }
    #
    # @!attribute [rw] associate_default_security_group
    #   Update replication configuration associate default Application
    #   Migration Service Security group request.
    #   @return [Boolean]
    #
    # @!attribute [rw] bandwidth_throttling
    #   Update replication configuration bandwidth throttling request.
    #   @return [Integer]
    #
    # @!attribute [rw] create_public_ip
    #   Update replication configuration create Public IP request.
    #   @return [Boolean]
    #
    # @!attribute [rw] data_plane_routing
    #   Update replication configuration data plane routing request.
    #   @return [String]
    #
    # @!attribute [rw] default_large_staging_disk_type
    #   Update replication configuration use default large Staging Disk type
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] ebs_encryption
    #   Update replication configuration EBS encryption request.
    #   @return [String]
    #
    # @!attribute [rw] ebs_encryption_key_arn
    #   Update replication configuration EBS encryption key ARN request.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Update replication configuration name request.
    #   @return [String]
    #
    # @!attribute [rw] replicated_disks
    #   Update replication configuration replicated disks request.
    #   @return [Array<Types::ReplicationConfigurationReplicatedDisk>]
    #
    # @!attribute [rw] replication_server_instance_type
    #   Update replication configuration Replication Server instance type
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] replication_servers_security_groups_i_ds
    #   Update replication configuration Replication Server Security Groups
    #   IDs request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] source_server_id
    #   Update replication configuration Source Server ID request.
    #   @return [String]
    #
    # @!attribute [rw] staging_area_subnet_id
    #   Update replication configuration Staging Area subnet request.
    #   @return [String]
    #
    # @!attribute [rw] staging_area_tags
    #   Update replication configuration Staging Area Tags request.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] use_dedicated_replication_server
    #   Update replication configuration use dedicated Replication Server
    #   request.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/UpdateReplicationConfigurationRequest AWS API Documentation
    #
    class UpdateReplicationConfigurationRequest < Struct.new(
      :associate_default_security_group,
      :bandwidth_throttling,
      :create_public_ip,
      :data_plane_routing,
      :default_large_staging_disk_type,
      :ebs_encryption,
      :ebs_encryption_key_arn,
      :name,
      :replicated_disks,
      :replication_server_instance_type,
      :replication_servers_security_groups_i_ds,
      :source_server_id,
      :staging_area_subnet_id,
      :staging_area_tags,
      :use_dedicated_replication_server)
      SENSITIVE = [:staging_area_tags]
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateReplicationConfigurationTemplateRequest
    #   data as a hash:
    #
    #       {
    #         arn: "ARN",
    #         associate_default_security_group: false,
    #         bandwidth_throttling: 1,
    #         create_public_ip: false,
    #         data_plane_routing: "PRIVATE_IP", # accepts PRIVATE_IP, PUBLIC_IP
    #         default_large_staging_disk_type: "GP2", # accepts GP2, ST1
    #         ebs_encryption: "DEFAULT", # accepts DEFAULT, CUSTOM
    #         ebs_encryption_key_arn: "ARN",
    #         replication_configuration_template_id: "ReplicationConfigurationTemplateID", # required
    #         replication_server_instance_type: "EC2InstanceType",
    #         replication_servers_security_groups_i_ds: ["SecurityGroupID"],
    #         staging_area_subnet_id: "SubnetID",
    #         staging_area_tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         use_dedicated_replication_server: false,
    #       }
    #
    # @!attribute [rw] arn
    #   Update replication configuration template ARN request.
    #   @return [String]
    #
    # @!attribute [rw] associate_default_security_group
    #   Update replication configuration template associate default
    #   Application Migration Service Security group request.
    #   @return [Boolean]
    #
    # @!attribute [rw] bandwidth_throttling
    #   Update replication configuration template bandwidth throttling
    #   request.
    #   @return [Integer]
    #
    # @!attribute [rw] create_public_ip
    #   Update replication configuration template create Public IP request.
    #   @return [Boolean]
    #
    # @!attribute [rw] data_plane_routing
    #   Update replication configuration template data plane routing
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] default_large_staging_disk_type
    #   Update replication configuration template use default large Staging
    #   Disk type request.
    #   @return [String]
    #
    # @!attribute [rw] ebs_encryption
    #   Update replication configuration template EBS encryption request.
    #   @return [String]
    #
    # @!attribute [rw] ebs_encryption_key_arn
    #   Update replication configuration template EBS encryption key ARN
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] replication_configuration_template_id
    #   Update replication configuration template template ID request.
    #   @return [String]
    #
    # @!attribute [rw] replication_server_instance_type
    #   Update replication configuration template Replication Server
    #   instance type request.
    #   @return [String]
    #
    # @!attribute [rw] replication_servers_security_groups_i_ds
    #   Update replication configuration template Replication Server
    #   Security groups IDs request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] staging_area_subnet_id
    #   Update replication configuration template Staging Area subnet ID
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] staging_area_tags
    #   Update replication configuration template Staging Area Tags request.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] use_dedicated_replication_server
    #   Update replication configuration template use dedicated Replication
    #   Server request.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/UpdateReplicationConfigurationTemplateRequest AWS API Documentation
    #
    class UpdateReplicationConfigurationTemplateRequest < Struct.new(
      :arn,
      :associate_default_security_group,
      :bandwidth_throttling,
      :create_public_ip,
      :data_plane_routing,
      :default_large_staging_disk_type,
      :ebs_encryption,
      :ebs_encryption_key_arn,
      :replication_configuration_template_id,
      :replication_server_instance_type,
      :replication_servers_security_groups_i_ds,
      :staging_area_subnet_id,
      :staging_area_tags,
      :use_dedicated_replication_server)
      SENSITIVE = [:staging_area_tags]
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateSourceServerReplicationTypeRequest
    #   data as a hash:
    #
    #       {
    #         replication_type: "AGENT_BASED", # required, accepts AGENT_BASED, SNAPSHOT_SHIPPING
    #         source_server_id: "SourceServerID", # required
    #       }
    #
    # @!attribute [rw] replication_type
    #   Replication type to which to update source server.
    #   @return [String]
    #
    # @!attribute [rw] source_server_id
    #   ID of source server on which to update replication type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/UpdateSourceServerReplicationTypeRequest AWS API Documentation
    #
    class UpdateSourceServerReplicationTypeRequest < Struct.new(
      :replication_type,
      :source_server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Validate exception.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   Validate exception field list.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   Validate exception reason.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :code,
      :field_list,
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Validate exception field.
    #
    # @!attribute [rw] message
    #   Validate exception field message.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Validate exception field name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :message,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # vCenter client.
    #
    # @!attribute [rw] arn
    #   Arn of vCenter client.
    #   @return [String]
    #
    # @!attribute [rw] datacenter_name
    #   Datacenter name of vCenter client.
    #   @return [String]
    #
    # @!attribute [rw] hostname
    #   Hostname of vCenter client .
    #   @return [String]
    #
    # @!attribute [rw] last_seen_datetime
    #   Last seen time of vCenter client.
    #   @return [String]
    #
    # @!attribute [rw] source_server_tags
    #   Tags for Source Server of vCenter client.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tags
    #   Tags for vCenter client.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] vcenter_client_id
    #   ID of vCenter client.
    #   @return [String]
    #
    # @!attribute [rw] vcenter_uuid
    #   Vcenter UUID of vCenter client.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/VcenterClient AWS API Documentation
    #
    class VcenterClient < Struct.new(
      :arn,
      :datacenter_name,
      :hostname,
      :last_seen_datetime,
      :source_server_tags,
      :tags,
      :vcenter_client_id,
      :vcenter_uuid)
      SENSITIVE = [:source_server_tags, :tags]
      include Aws::Structure
    end

  end
end
