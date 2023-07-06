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

    # @!attribute [rw] application_aggregated_status
    #   Application aggregated status.
    #   @return [Types::ApplicationAggregatedStatus]
    #
    # @!attribute [rw] application_id
    #   Application ID.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   Application ARN.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   Application creation dateTime.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Application description.
    #   @return [String]
    #
    # @!attribute [rw] is_archived
    #   Application archival status.
    #   @return [Boolean]
    #
    # @!attribute [rw] last_modified_date_time
    #   Application last modified dateTime.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Application name.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Application tags.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] wave_id
    #   Application wave ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/Application AWS API Documentation
    #
    class Application < Struct.new(
      :application_aggregated_status,
      :application_id,
      :arn,
      :creation_date_time,
      :description,
      :is_archived,
      :last_modified_date_time,
      :name,
      :tags,
      :wave_id)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # Application aggregated status.
    #
    # @!attribute [rw] health_status
    #   Application aggregated status health status.
    #   @return [String]
    #
    # @!attribute [rw] last_update_date_time
    #   Application aggregated status last update dateTime.
    #   @return [String]
    #
    # @!attribute [rw] progress_status
    #   Application aggregated status progress status.
    #   @return [String]
    #
    # @!attribute [rw] total_source_servers
    #   Application aggregated status total source servers amount.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ApplicationAggregatedStatus AWS API Documentation
    #
    class ApplicationAggregatedStatus < Struct.new(
      :health_status,
      :last_update_date_time,
      :progress_status,
      :total_source_servers)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   Account ID.
    #   @return [String]
    #
    # @!attribute [rw] application_id
    #   Application ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ArchiveApplicationRequest AWS API Documentation
    #
    class ArchiveApplicationRequest < Struct.new(
      :account_id,
      :application_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   Account ID.
    #   @return [String]
    #
    # @!attribute [rw] wave_id
    #   Wave ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ArchiveWaveRequest AWS API Documentation
    #
    class ArchiveWaveRequest < Struct.new(
      :account_id,
      :wave_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   Account ID.
    #   @return [String]
    #
    # @!attribute [rw] application_i_ds
    #   Application IDs list.
    #   @return [Array<String>]
    #
    # @!attribute [rw] wave_id
    #   Wave ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/AssociateApplicationsRequest AWS API Documentation
    #
    class AssociateApplicationsRequest < Struct.new(
      :account_id,
      :application_i_ds,
      :wave_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/AssociateApplicationsResponse AWS API Documentation
    #
    class AssociateApplicationsResponse < Aws::EmptyStructure; end

    # @!attribute [rw] account_id
    #   Account ID.
    #   @return [String]
    #
    # @!attribute [rw] application_id
    #   Application ID.
    #   @return [String]
    #
    # @!attribute [rw] source_server_i_ds
    #   Source server IDs list.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/AssociateSourceServersRequest AWS API Documentation
    #
    class AssociateSourceServersRequest < Struct.new(
      :account_id,
      :application_id,
      :source_server_i_ds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/AssociateSourceServersResponse AWS API Documentation
    #
    class AssociateSourceServersResponse < Aws::EmptyStructure; end

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

    # @!attribute [rw] account_id
    #   The request to change the source server migration account ID.
    #   @return [String]
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
      :account_id,
      :life_cycle,
      :source_server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to change the source server migration lifecycle state.
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
    # @!attribute [rw] errors
    #   Conflict Exception specific errors.
    #   @return [Array<Types::ErrorDetails>]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   A conflict occurred when prompting for the Resource ID.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   A conflict occurred when prompting for resource type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :code,
      :errors,
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   Account ID.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Application description.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Application name.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Application tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/CreateApplicationRequest AWS API Documentation
    #
    class CreateApplicationRequest < Struct.new(
      :account_id,
      :description,
      :name,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] associate_public_ip_address
    #   Associate public Ip address.
    #   @return [Boolean]
    #
    # @!attribute [rw] boot_mode
    #   Launch configuration template boot mode.
    #   @return [String]
    #
    # @!attribute [rw] copy_private_ip
    #   Copy private Ip.
    #   @return [Boolean]
    #
    # @!attribute [rw] copy_tags
    #   Copy tags.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_map_auto_tagging
    #   Enable map auto tagging.
    #   @return [Boolean]
    #
    # @!attribute [rw] large_volume_conf
    #   Large volume config.
    #   @return [Types::LaunchTemplateDiskConf]
    #
    # @!attribute [rw] launch_disposition
    #   Launch disposition.
    #   @return [String]
    #
    # @!attribute [rw] licensing
    #   Configure Licensing.
    #   @return [Types::Licensing]
    #
    # @!attribute [rw] map_auto_tagging_mpe_id
    #   Launch configuration template map auto tagging MPE ID.
    #   @return [String]
    #
    # @!attribute [rw] post_launch_actions
    #   Launch configuration template post launch actions.
    #   @return [Types::PostLaunchActions]
    #
    # @!attribute [rw] small_volume_conf
    #   Small volume config.
    #   @return [Types::LaunchTemplateDiskConf]
    #
    # @!attribute [rw] small_volume_max_size
    #   Small volume maximum size.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   Request to associate tags during creation of a Launch Configuration
    #   Template.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] target_instance_type_right_sizing_method
    #   Target instance type right-sizing method.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/CreateLaunchConfigurationTemplateRequest AWS API Documentation
    #
    class CreateLaunchConfigurationTemplateRequest < Struct.new(
      :associate_public_ip_address,
      :boot_mode,
      :copy_private_ip,
      :copy_tags,
      :enable_map_auto_tagging,
      :large_volume_conf,
      :launch_disposition,
      :licensing,
      :map_auto_tagging_mpe_id,
      :post_launch_actions,
      :small_volume_conf,
      :small_volume_max_size,
      :tags,
      :target_instance_type_right_sizing_method)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

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
    #   Request to configure the default large staging disk EBS volume type
    #   during Replication Settings template creation.
    #   @return [String]
    #
    # @!attribute [rw] ebs_encryption
    #   Request to configure EBS encryption during Replication Settings
    #   template creation.
    #   @return [String]
    #
    # @!attribute [rw] ebs_encryption_key_arn
    #   Request to configure an EBS encryption key during Replication
    #   Settings template creation.
    #   @return [String]
    #
    # @!attribute [rw] replication_server_instance_type
    #   Request to configure the Replication Server instance type during
    #   Replication Settings template creation.
    #   @return [String]
    #
    # @!attribute [rw] replication_servers_security_groups_i_ds
    #   Request to configure the Replication Server Security group ID during
    #   Replication Settings template creation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] staging_area_subnet_id
    #   Request to configure the Staging Area subnet ID during Replication
    #   Settings template creation.
    #   @return [String]
    #
    # @!attribute [rw] staging_area_tags
    #   Request to configure Staging Area tags during Replication Settings
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
    # @!attribute [rw] use_fips_endpoint
    #   Request to use Fips Endpoint during Replication Settings template
    #   creation.
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
      :use_dedicated_replication_server,
      :use_fips_endpoint)
      SENSITIVE = [:staging_area_tags, :tags]
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   Account ID.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Wave description.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Wave name.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Wave tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/CreateWaveRequest AWS API Documentation
    #
    class CreateWaveRequest < Struct.new(
      :account_id,
      :description,
      :name,
      :tags)
      SENSITIVE = [:tags]
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
    #   Request to query data replication lag duration.
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

    # Data replication initiation step.
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

    # @!attribute [rw] account_id
    #   Account ID.
    #   @return [String]
    #
    # @!attribute [rw] application_id
    #   Application ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DeleteApplicationRequest AWS API Documentation
    #
    class DeleteApplicationRequest < Struct.new(
      :account_id,
      :application_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DeleteApplicationResponse AWS API Documentation
    #
    class DeleteApplicationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] account_id
    #   Request to delete Job from service by Account ID.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   Request to delete Job from service by Job ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DeleteJobRequest AWS API Documentation
    #
    class DeleteJobRequest < Struct.new(
      :account_id,
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DeleteJobResponse AWS API Documentation
    #
    class DeleteJobResponse < Aws::EmptyStructure; end

    # @!attribute [rw] launch_configuration_template_id
    #   ID of resource to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DeleteLaunchConfigurationTemplateRequest AWS API Documentation
    #
    class DeleteLaunchConfigurationTemplateRequest < Struct.new(
      :launch_configuration_template_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DeleteLaunchConfigurationTemplateResponse AWS API Documentation
    #
    class DeleteLaunchConfigurationTemplateResponse < Aws::EmptyStructure; end

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

    # @!attribute [rw] account_id
    #   Request to delete Source Server from service by Account ID.
    #   @return [String]
    #
    # @!attribute [rw] source_server_id
    #   Request to delete Source Server from service by Server ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DeleteSourceServerRequest AWS API Documentation
    #
    class DeleteSourceServerRequest < Struct.new(
      :account_id,
      :source_server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DeleteSourceServerResponse AWS API Documentation
    #
    class DeleteSourceServerResponse < Aws::EmptyStructure; end

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

    # @!attribute [rw] account_id
    #   Account ID.
    #   @return [String]
    #
    # @!attribute [rw] wave_id
    #   Wave ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DeleteWaveRequest AWS API Documentation
    #
    class DeleteWaveRequest < Struct.new(
      :account_id,
      :wave_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DeleteWaveResponse AWS API Documentation
    #
    class DeleteWaveResponse < Aws::EmptyStructure; end

    # @!attribute [rw] account_id
    #   Request to describe Job log Account ID.
    #   @return [String]
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
      :account_id,
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

    # @!attribute [rw] account_id
    #   Request to describe job log items by Account ID.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Request to describe Job log filters.
    #   @return [Types::DescribeJobsRequestFilters]
    #
    # @!attribute [rw] max_results
    #   Request to describe job log items by max results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Request to describe job log items by next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DescribeJobsRequest AWS API Documentation
    #
    class DescribeJobsRequest < Struct.new(
      :account_id,
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to describe Job log filters.
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
    #   Request to describe job log items by last date.
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

    # @!attribute [rw] launch_configuration_template_i_ds
    #   Request to filter Launch Configuration Templates list by Launch
    #   Configuration Template ID.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   Maximum results to be returned in
    #   DescribeLaunchConfigurationTemplates.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Next pagination token returned from
    #   DescribeLaunchConfigurationTemplates.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DescribeLaunchConfigurationTemplatesRequest AWS API Documentation
    #
    class DescribeLaunchConfigurationTemplatesRequest < Struct.new(
      :launch_configuration_template_i_ds,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   List of items returned by DescribeLaunchConfigurationTemplates.
    #   @return [Array<Types::LaunchConfigurationTemplate>]
    #
    # @!attribute [rw] next_token
    #   Next pagination token returned from
    #   DescribeLaunchConfigurationTemplates.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DescribeLaunchConfigurationTemplatesResponse AWS API Documentation
    #
    class DescribeLaunchConfigurationTemplatesResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] account_id
    #   Request to filter Source Servers list by Accoun ID.
    #   @return [String]
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
      :account_id,
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to filter Source Servers list.
    #
    # @!attribute [rw] application_i_ds
    #   Request to filter Source Servers list by application IDs.
    #   @return [Array<String>]
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
      :application_i_ds,
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

    # @!attribute [rw] account_id
    #   Account ID.
    #   @return [String]
    #
    # @!attribute [rw] application_i_ds
    #   Application IDs list.
    #   @return [Array<String>]
    #
    # @!attribute [rw] wave_id
    #   Wave ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DisassociateApplicationsRequest AWS API Documentation
    #
    class DisassociateApplicationsRequest < Struct.new(
      :account_id,
      :application_i_ds,
      :wave_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DisassociateApplicationsResponse AWS API Documentation
    #
    class DisassociateApplicationsResponse < Aws::EmptyStructure; end

    # @!attribute [rw] account_id
    #   Account ID.
    #   @return [String]
    #
    # @!attribute [rw] application_id
    #   Application ID.
    #   @return [String]
    #
    # @!attribute [rw] source_server_i_ds
    #   Source server IDs list.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DisassociateSourceServersRequest AWS API Documentation
    #
    class DisassociateSourceServersRequest < Struct.new(
      :account_id,
      :application_id,
      :source_server_i_ds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DisassociateSourceServersResponse AWS API Documentation
    #
    class DisassociateSourceServersResponse < Aws::EmptyStructure; end

    # @!attribute [rw] account_id
    #   Request to disconnect Source Server from service by Account ID.
    #   @return [String]
    #
    # @!attribute [rw] source_server_id
    #   Request to disconnect Source Server from service by Server ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DisconnectFromServiceRequest AWS API Documentation
    #
    class DisconnectFromServiceRequest < Struct.new(
      :account_id,
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

    # Error details.
    #
    # @!attribute [rw] code
    #   Error details code.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Error details message.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Error details resourceId.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Error details resourceType.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ErrorDetails AWS API Documentation
    #
    class ErrorDetails < Struct.new(
      :code,
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Export errors data.
    #
    # @!attribute [rw] raw_error
    #   Export errors data raw error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ExportErrorData AWS API Documentation
    #
    class ExportErrorData < Struct.new(
      :raw_error)
      SENSITIVE = []
      include Aws::Structure
    end

    # Export task.
    #
    # @!attribute [rw] creation_date_time
    #   Export task creation datetime.
    #   @return [String]
    #
    # @!attribute [rw] end_date_time
    #   Export task end datetime.
    #   @return [String]
    #
    # @!attribute [rw] export_id
    #   Export task id.
    #   @return [String]
    #
    # @!attribute [rw] progress_percentage
    #   Export task progress percentage.
    #   @return [Float]
    #
    # @!attribute [rw] s3_bucket
    #   Export task s3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_owner
    #   Export task s3 bucket owner.
    #   @return [String]
    #
    # @!attribute [rw] s3_key
    #   Export task s3 key.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Export task status.
    #   @return [String]
    #
    # @!attribute [rw] summary
    #   Export task summary.
    #   @return [Types::ExportTaskSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ExportTask AWS API Documentation
    #
    class ExportTask < Struct.new(
      :creation_date_time,
      :end_date_time,
      :export_id,
      :progress_percentage,
      :s3_bucket,
      :s3_bucket_owner,
      :s3_key,
      :status,
      :summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # Export task error.
    #
    # @!attribute [rw] error_data
    #   Export task error data.
    #   @return [Types::ExportErrorData]
    #
    # @!attribute [rw] error_date_time
    #   Export task error datetime.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ExportTaskError AWS API Documentation
    #
    class ExportTaskError < Struct.new(
      :error_data,
      :error_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Export task summary.
    #
    # @!attribute [rw] applications_count
    #   Export task summary applications count.
    #   @return [Integer]
    #
    # @!attribute [rw] servers_count
    #   Export task summary servers count.
    #   @return [Integer]
    #
    # @!attribute [rw] waves_count
    #   Export task summary waves count.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ExportTaskSummary AWS API Documentation
    #
    class ExportTaskSummary < Struct.new(
      :applications_count,
      :servers_count,
      :waves_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   Request to finalize Cutover by Source Account ID.
    #   @return [String]
    #
    # @!attribute [rw] source_server_id
    #   Request to finalize Cutover by Source Server ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/FinalizeCutoverRequest AWS API Documentation
    #
    class FinalizeCutoverRequest < Struct.new(
      :account_id,
      :source_server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   Request to get Launch Configuration information by Account ID.
    #   @return [String]
    #
    # @!attribute [rw] source_server_id
    #   Request to get Launch Configuration information by Source Server ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/GetLaunchConfigurationRequest AWS API Documentation
    #
    class GetLaunchConfigurationRequest < Struct.new(
      :account_id,
      :source_server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   Request to get Replication Configuration by Account ID.
    #   @return [String]
    #
    # @!attribute [rw] source_server_id
    #   Request to get Replication Configuration by Source Server ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/GetReplicationConfigurationRequest AWS API Documentation
    #
    class GetReplicationConfigurationRequest < Struct.new(
      :account_id,
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

    # Import error data.
    #
    # @!attribute [rw] account_id
    #   Import error data source account ID.
    #   @return [String]
    #
    # @!attribute [rw] application_id
    #   Import error data application ID.
    #   @return [String]
    #
    # @!attribute [rw] ec2_launch_template_id
    #   Import error data ec2 LaunchTemplate ID.
    #   @return [String]
    #
    # @!attribute [rw] raw_error
    #   Import error data raw error.
    #   @return [String]
    #
    # @!attribute [rw] row_number
    #   Import error data row number.
    #   @return [Integer]
    #
    # @!attribute [rw] source_server_id
    #   Import error data source server ID.
    #   @return [String]
    #
    # @!attribute [rw] wave_id
    #   Import error data wave id.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ImportErrorData AWS API Documentation
    #
    class ImportErrorData < Struct.new(
      :account_id,
      :application_id,
      :ec2_launch_template_id,
      :raw_error,
      :row_number,
      :source_server_id,
      :wave_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Import task.
    #
    # @!attribute [rw] creation_date_time
    #   Import task creation datetime.
    #   @return [String]
    #
    # @!attribute [rw] end_date_time
    #   Import task end datetime.
    #   @return [String]
    #
    # @!attribute [rw] import_id
    #   Import task id.
    #   @return [String]
    #
    # @!attribute [rw] progress_percentage
    #   Import task progress percentage.
    #   @return [Float]
    #
    # @!attribute [rw] s3_bucket_source
    #   Import task s3 bucket source.
    #   @return [Types::S3BucketSource]
    #
    # @!attribute [rw] status
    #   Import task status.
    #   @return [String]
    #
    # @!attribute [rw] summary
    #   Import task summary.
    #   @return [Types::ImportTaskSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ImportTask AWS API Documentation
    #
    class ImportTask < Struct.new(
      :creation_date_time,
      :end_date_time,
      :import_id,
      :progress_percentage,
      :s3_bucket_source,
      :status,
      :summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # Import task error.
    #
    # @!attribute [rw] error_data
    #   Import task error data.
    #   @return [Types::ImportErrorData]
    #
    # @!attribute [rw] error_date_time
    #   Import task error datetime.
    #   @return [String]
    #
    # @!attribute [rw] error_type
    #   Import task error type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ImportTaskError AWS API Documentation
    #
    class ImportTaskError < Struct.new(
      :error_data,
      :error_date_time,
      :error_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Import task summary.
    #
    # @!attribute [rw] applications
    #   Import task summary applications.
    #   @return [Types::ImportTaskSummaryApplications]
    #
    # @!attribute [rw] servers
    #   Import task summary servers.
    #   @return [Types::ImportTaskSummaryServers]
    #
    # @!attribute [rw] waves
    #   Import task summary waves.
    #   @return [Types::ImportTaskSummaryWaves]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ImportTaskSummary AWS API Documentation
    #
    class ImportTaskSummary < Struct.new(
      :applications,
      :servers,
      :waves)
      SENSITIVE = []
      include Aws::Structure
    end

    # Import task summary applications.
    #
    # @!attribute [rw] created_count
    #   Import task summary applications created count.
    #   @return [Integer]
    #
    # @!attribute [rw] modified_count
    #   Import task summary applications modified count.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ImportTaskSummaryApplications AWS API Documentation
    #
    class ImportTaskSummaryApplications < Struct.new(
      :created_count,
      :modified_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Import task summary servers.
    #
    # @!attribute [rw] created_count
    #   Import task summary servers created count.
    #   @return [Integer]
    #
    # @!attribute [rw] modified_count
    #   Import task summary servers modified count.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ImportTaskSummaryServers AWS API Documentation
    #
    class ImportTaskSummaryServers < Struct.new(
      :created_count,
      :modified_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Import task summery waves.
    #
    # @!attribute [rw] created_count
    #   Import task summery waves created count.
    #   @return [Integer]
    #
    # @!attribute [rw] modified_count
    #   Import task summery waves modified count.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ImportTaskSummaryWaves AWS API Documentation
    #
    class ImportTaskSummaryWaves < Struct.new(
      :created_count,
      :modified_count)
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
    #   Tags associated with specific Job.
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

    # Launch Status of the Job Post Launch Actions.
    #
    # @!attribute [rw] execution_id
    #   AWS Systems Manager Document's execution ID of the of the Job Post
    #   Launch Actions.
    #   @return [String]
    #
    # @!attribute [rw] execution_status
    #   AWS Systems Manager Document's execution status.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   AWS Systems Manager Document's failure reason.
    #   @return [String]
    #
    # @!attribute [rw] ssm_document
    #   AWS Systems Manager's Document of the of the Job Post Launch
    #   Actions.
    #   @return [Types::SsmDocument]
    #
    # @!attribute [rw] ssm_document_type
    #   AWS Systems Manager Document type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/JobPostLaunchActionsLaunchStatus AWS API Documentation
    #
    class JobPostLaunchActionsLaunchStatus < Struct.new(
      :execution_id,
      :execution_status,
      :failure_reason,
      :ssm_document,
      :ssm_document_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] boot_mode
    #   Launch configuration boot mode.
    #   @return [String]
    #
    # @!attribute [rw] copy_private_ip
    #   Copy Private IP during Launch Configuration.
    #   @return [Boolean]
    #
    # @!attribute [rw] copy_tags
    #   Copy Tags during Launch Configuration.
    #   @return [Boolean]
    #
    # @!attribute [rw] ec2_launch_template_id
    #   Launch configuration EC2 Launch template ID.
    #   @return [String]
    #
    # @!attribute [rw] enable_map_auto_tagging
    #   Enable map auto tagging.
    #   @return [Boolean]
    #
    # @!attribute [rw] launch_disposition
    #   Launch disposition for launch configuration.
    #   @return [String]
    #
    # @!attribute [rw] licensing
    #   Launch configuration OS licensing.
    #   @return [Types::Licensing]
    #
    # @!attribute [rw] map_auto_tagging_mpe_id
    #   Map auto tagging MPE ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Launch configuration name.
    #   @return [String]
    #
    # @!attribute [rw] post_launch_actions
    #   Post Launch Actions to executed on the Test or Cutover instance.
    #   @return [Types::PostLaunchActions]
    #
    # @!attribute [rw] source_server_id
    #   Launch configuration Source Server ID.
    #   @return [String]
    #
    # @!attribute [rw] target_instance_type_right_sizing_method
    #   Launch configuration Target instance type right sizing method.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/LaunchConfiguration AWS API Documentation
    #
    class LaunchConfiguration < Struct.new(
      :boot_mode,
      :copy_private_ip,
      :copy_tags,
      :ec2_launch_template_id,
      :enable_map_auto_tagging,
      :launch_disposition,
      :licensing,
      :map_auto_tagging_mpe_id,
      :name,
      :post_launch_actions,
      :source_server_id,
      :target_instance_type_right_sizing_method)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   ARN of the Launch Configuration Template.
    #   @return [String]
    #
    # @!attribute [rw] associate_public_ip_address
    #   Associate public Ip address.
    #   @return [Boolean]
    #
    # @!attribute [rw] boot_mode
    #   Launch configuration template boot mode.
    #   @return [String]
    #
    # @!attribute [rw] copy_private_ip
    #   Copy private Ip.
    #   @return [Boolean]
    #
    # @!attribute [rw] copy_tags
    #   Copy tags.
    #   @return [Boolean]
    #
    # @!attribute [rw] ec2_launch_template_id
    #   EC2 launch template ID.
    #   @return [String]
    #
    # @!attribute [rw] enable_map_auto_tagging
    #   Enable map auto tagging.
    #   @return [Boolean]
    #
    # @!attribute [rw] large_volume_conf
    #   Large volume config.
    #   @return [Types::LaunchTemplateDiskConf]
    #
    # @!attribute [rw] launch_configuration_template_id
    #   ID of the Launch Configuration Template.
    #   @return [String]
    #
    # @!attribute [rw] launch_disposition
    #   Launch disposition.
    #   @return [String]
    #
    # @!attribute [rw] licensing
    #   Configure Licensing.
    #   @return [Types::Licensing]
    #
    # @!attribute [rw] map_auto_tagging_mpe_id
    #   Launch configuration template map auto tagging MPE ID.
    #   @return [String]
    #
    # @!attribute [rw] post_launch_actions
    #   Post Launch Actions of the Launch Configuration Template.
    #   @return [Types::PostLaunchActions]
    #
    # @!attribute [rw] small_volume_conf
    #   Small volume config.
    #   @return [Types::LaunchTemplateDiskConf]
    #
    # @!attribute [rw] small_volume_max_size
    #   Small volume maximum size.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   Tags of the Launch Configuration Template.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] target_instance_type_right_sizing_method
    #   Target instance type right-sizing method.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/LaunchConfigurationTemplate AWS API Documentation
    #
    class LaunchConfigurationTemplate < Struct.new(
      :arn,
      :associate_public_ip_address,
      :boot_mode,
      :copy_private_ip,
      :copy_tags,
      :ec2_launch_template_id,
      :enable_map_auto_tagging,
      :large_volume_conf,
      :launch_configuration_template_id,
      :launch_disposition,
      :licensing,
      :map_auto_tagging_mpe_id,
      :post_launch_actions,
      :small_volume_conf,
      :small_volume_max_size,
      :tags,
      :target_instance_type_right_sizing_method)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # Launch template disk configuration.
    #
    # @!attribute [rw] iops
    #   Launch template disk iops configuration.
    #   @return [Integer]
    #
    # @!attribute [rw] throughput
    #   Launch template disk throughput configuration.
    #   @return [Integer]
    #
    # @!attribute [rw] volume_type
    #   Launch template disk volume type configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/LaunchTemplateDiskConf AWS API Documentation
    #
    class LaunchTemplateDiskConf < Struct.new(
      :iops,
      :throughput,
      :volume_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Launched instance.
    #
    # @!attribute [rw] ec2_instance_id
    #   Launched instance EC2 ID.
    #   @return [String]
    #
    # @!attribute [rw] first_boot
    #   Launched instance first boot.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   Launched instance Job ID.
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
    #   Lifecycle last Test finalized.
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

    # Lifecycle last Test finalized.
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

    # @!attribute [rw] account_id
    #   Applications list Account ID.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Applications list filters.
    #   @return [Types::ListApplicationsRequestFilters]
    #
    # @!attribute [rw] max_results
    #   Maximum results to return when listing applications.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Request next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ListApplicationsRequest AWS API Documentation
    #
    class ListApplicationsRequest < Struct.new(
      :account_id,
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Applications list filters.
    #
    # @!attribute [rw] application_i_ds
    #   Filter applications list by application ID.
    #   @return [Array<String>]
    #
    # @!attribute [rw] is_archived
    #   Filter applications list by archival status.
    #   @return [Boolean]
    #
    # @!attribute [rw] wave_i_ds
    #   Filter applications list by wave ID.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ListApplicationsRequestFilters AWS API Documentation
    #
    class ListApplicationsRequestFilters < Struct.new(
      :application_i_ds,
      :is_archived,
      :wave_i_ds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   Applications list.
    #   @return [Array<Types::Application>]
    #
    # @!attribute [rw] next_token
    #   Response next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ListApplicationsResponse AWS API Documentation
    #
    class ListApplicationsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # List export errors request.
    #
    # @!attribute [rw] export_id
    #   List export errors request export id.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   List export errors request max results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   List export errors request next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ListExportErrorsRequest AWS API Documentation
    #
    class ListExportErrorsRequest < Struct.new(
      :export_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # List export errors response.
    #
    # @!attribute [rw] items
    #   List export errors response items.
    #   @return [Array<Types::ExportTaskError>]
    #
    # @!attribute [rw] next_token
    #   List export errors response next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ListExportErrorsResponse AWS API Documentation
    #
    class ListExportErrorsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # List export request.
    #
    # @!attribute [rw] filters
    #   List exports request filters.
    #   @return [Types::ListExportsRequestFilters]
    #
    # @!attribute [rw] max_results
    #   List export request max results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   List export request next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ListExportsRequest AWS API Documentation
    #
    class ListExportsRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # List exports request filters.
    #
    # @!attribute [rw] export_i_ds
    #   List exports request filters export ids.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ListExportsRequestFilters AWS API Documentation
    #
    class ListExportsRequestFilters < Struct.new(
      :export_i_ds)
      SENSITIVE = []
      include Aws::Structure
    end

    # List export response.
    #
    # @!attribute [rw] items
    #   List export response items.
    #   @return [Array<Types::ExportTask>]
    #
    # @!attribute [rw] next_token
    #   List export response next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ListExportsResponse AWS API Documentation
    #
    class ListExportsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # List import errors request.
    #
    # @!attribute [rw] import_id
    #   List import errors request import id.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   List import errors request max results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   List import errors request next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ListImportErrorsRequest AWS API Documentation
    #
    class ListImportErrorsRequest < Struct.new(
      :import_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # List imports errors response.
    #
    # @!attribute [rw] items
    #   List imports errors response items.
    #   @return [Array<Types::ImportTaskError>]
    #
    # @!attribute [rw] next_token
    #   List imports errors response next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ListImportErrorsResponse AWS API Documentation
    #
    class ListImportErrorsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # List imports request.
    #
    # @!attribute [rw] filters
    #   List imports request filters.
    #   @return [Types::ListImportsRequestFilters]
    #
    # @!attribute [rw] max_results
    #   List imports request max results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   List imports request next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ListImportsRequest AWS API Documentation
    #
    class ListImportsRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # List imports request filters.
    #
    # @!attribute [rw] import_i_ds
    #   List imports request filters import IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ListImportsRequestFilters AWS API Documentation
    #
    class ListImportsRequestFilters < Struct.new(
      :import_i_ds)
      SENSITIVE = []
      include Aws::Structure
    end

    # List import response.
    #
    # @!attribute [rw] items
    #   List import response items.
    #   @return [Array<Types::ImportTask>]
    #
    # @!attribute [rw] next_token
    #   List import response next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ListImportsResponse AWS API Documentation
    #
    class ListImportsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # List managed accounts request.
    #
    # @!attribute [rw] max_results
    #   List managed accounts request max results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   List managed accounts request next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ListManagedAccountsRequest AWS API Documentation
    #
    class ListManagedAccountsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # List managed accounts response.
    #
    # @!attribute [rw] items
    #   List managed accounts response items.
    #   @return [Array<Types::ManagedAccount>]
    #
    # @!attribute [rw] next_token
    #   List managed accounts response next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ListManagedAccountsResponse AWS API Documentation
    #
    class ListManagedAccountsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   Account ID to return when listing source server post migration
    #   custom actions.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters to apply when listing source server post migration custom
    #   actions.
    #   @return [Types::SourceServerActionsRequestFilters]
    #
    # @!attribute [rw] max_results
    #   Maximum amount of items to return when listing source server post
    #   migration custom actions.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Next token to use when listing source server post migration custom
    #   actions.
    #   @return [String]
    #
    # @!attribute [rw] source_server_id
    #   Source server ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ListSourceServerActionsRequest AWS API Documentation
    #
    class ListSourceServerActionsRequest < Struct.new(
      :account_id,
      :filters,
      :max_results,
      :next_token,
      :source_server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   List of source server post migration custom actions.
    #   @return [Array<Types::SourceServerActionDocument>]
    #
    # @!attribute [rw] next_token
    #   Next token returned when listing source server post migration custom
    #   actions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ListSourceServerActionsResponse AWS API Documentation
    #
    class ListSourceServerActionsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] filters
    #   Filters to apply when listing template post migration custom
    #   actions.
    #   @return [Types::TemplateActionsRequestFilters]
    #
    # @!attribute [rw] launch_configuration_template_id
    #   Launch configuration template ID.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum amount of items to return when listing template post
    #   migration custom actions.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Next token to use when listing template post migration custom
    #   actions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ListTemplateActionsRequest AWS API Documentation
    #
    class ListTemplateActionsRequest < Struct.new(
      :filters,
      :launch_configuration_template_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   List of template post migration custom actions.
    #   @return [Array<Types::TemplateActionDocument>]
    #
    # @!attribute [rw] next_token
    #   Next token returned when listing template post migration custom
    #   actions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ListTemplateActionsResponse AWS API Documentation
    #
    class ListTemplateActionsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   Request account ID.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Waves list filters.
    #   @return [Types::ListWavesRequestFilters]
    #
    # @!attribute [rw] max_results
    #   Maximum results to return when listing waves.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Request next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ListWavesRequest AWS API Documentation
    #
    class ListWavesRequest < Struct.new(
      :account_id,
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Waves list filters.
    #
    # @!attribute [rw] is_archived
    #   Filter waves list by archival status.
    #   @return [Boolean]
    #
    # @!attribute [rw] wave_i_ds
    #   Filter waves list by wave ID.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ListWavesRequestFilters AWS API Documentation
    #
    class ListWavesRequestFilters < Struct.new(
      :is_archived,
      :wave_i_ds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   Waves list.
    #   @return [Array<Types::Wave>]
    #
    # @!attribute [rw] next_token
    #   Response next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ListWavesResponse AWS API Documentation
    #
    class ListWavesResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Managed account.
    #
    # @!attribute [rw] account_id
    #   Managed account, account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ManagedAccount AWS API Documentation
    #
    class ManagedAccount < Struct.new(
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   Mark as archived by Account ID.
    #   @return [String]
    #
    # @!attribute [rw] source_server_id
    #   Mark as archived by Source Server ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/MarkAsArchivedRequest AWS API Documentation
    #
    class MarkAsArchivedRequest < Struct.new(
      :account_id,
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
    # @!attribute [rw] launched_ec2_instance_id
    #   Participating server's launched ec2 instance ID.
    #   @return [String]
    #
    # @!attribute [rw] post_launch_actions_status
    #   Participating server's Post Launch Actions Status.
    #   @return [Types::PostLaunchActionsStatus]
    #
    # @!attribute [rw] source_server_id
    #   Participating server Source Server ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ParticipatingServer AWS API Documentation
    #
    class ParticipatingServer < Struct.new(
      :launch_status,
      :launched_ec2_instance_id,
      :post_launch_actions_status,
      :source_server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   Pause Replication Request account ID.
    #   @return [String]
    #
    # @!attribute [rw] source_server_id
    #   Pause Replication Request source server ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/PauseReplicationRequest AWS API Documentation
    #
    class PauseReplicationRequest < Struct.new(
      :account_id,
      :source_server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Post Launch Actions to executed on the Test or Cutover instance.
    #
    # @!attribute [rw] cloud_watch_log_group_name
    #   AWS Systems Manager Command's CloudWatch log group name.
    #   @return [String]
    #
    # @!attribute [rw] deployment
    #   Deployment type in which AWS Systems Manager Documents will be
    #   executed.
    #   @return [String]
    #
    # @!attribute [rw] s3_log_bucket
    #   AWS Systems Manager Command's logs S3 log bucket.
    #   @return [String]
    #
    # @!attribute [rw] s3_output_key_prefix
    #   AWS Systems Manager Command's logs S3 output key prefix.
    #   @return [String]
    #
    # @!attribute [rw] ssm_documents
    #   AWS Systems Manager Documents.
    #   @return [Array<Types::SsmDocument>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/PostLaunchActions AWS API Documentation
    #
    class PostLaunchActions < Struct.new(
      :cloud_watch_log_group_name,
      :deployment,
      :s3_log_bucket,
      :s3_output_key_prefix,
      :ssm_documents)
      SENSITIVE = []
      include Aws::Structure
    end

    # Status of the Post Launch Actions running on the Test or Cutover
    # instance.
    #
    # @!attribute [rw] post_launch_actions_launch_status_list
    #   List of Post Launch Action status.
    #   @return [Array<Types::JobPostLaunchActionsLaunchStatus>]
    #
    # @!attribute [rw] ssm_agent_discovery_datetime
    #   Time where the AWS Systems Manager was detected as running on the
    #   Test or Cutover instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/PostLaunchActionsStatus AWS API Documentation
    #
    class PostLaunchActionsStatus < Struct.new(
      :post_launch_actions_launch_status_list,
      :ssm_agent_discovery_datetime)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   Source server post migration custom account ID.
    #   @return [String]
    #
    # @!attribute [rw] action_id
    #   Source server post migration custom action ID.
    #   @return [String]
    #
    # @!attribute [rw] action_name
    #   Source server post migration custom action name.
    #   @return [String]
    #
    # @!attribute [rw] active
    #   Source server post migration custom action active status.
    #   @return [Boolean]
    #
    # @!attribute [rw] category
    #   Source server post migration custom action category.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Source server post migration custom action description.
    #   @return [String]
    #
    # @!attribute [rw] document_identifier
    #   Source server post migration custom action document identifier.
    #   @return [String]
    #
    # @!attribute [rw] document_version
    #   Source server post migration custom action document version.
    #   @return [String]
    #
    # @!attribute [rw] external_parameters
    #   Source server post migration custom action external parameters.
    #   @return [Hash<String,Types::SsmExternalParameter>]
    #
    # @!attribute [rw] must_succeed_for_cutover
    #   Source server post migration custom action must succeed for cutover.
    #   @return [Boolean]
    #
    # @!attribute [rw] order
    #   Source server post migration custom action order.
    #   @return [Integer]
    #
    # @!attribute [rw] parameters
    #   Source server post migration custom action parameters.
    #   @return [Hash<String,Array<Types::SsmParameterStoreParameter>>]
    #
    # @!attribute [rw] source_server_id
    #   Source server ID.
    #   @return [String]
    #
    # @!attribute [rw] timeout_seconds
    #   Source server post migration custom action timeout in seconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/PutSourceServerActionRequest AWS API Documentation
    #
    class PutSourceServerActionRequest < Struct.new(
      :account_id,
      :action_id,
      :action_name,
      :active,
      :category,
      :description,
      :document_identifier,
      :document_version,
      :external_parameters,
      :must_succeed_for_cutover,
      :order,
      :parameters,
      :source_server_id,
      :timeout_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action_id
    #   Template post migration custom action ID.
    #   @return [String]
    #
    # @!attribute [rw] action_name
    #   Template post migration custom action name.
    #   @return [String]
    #
    # @!attribute [rw] active
    #   Template post migration custom action active status.
    #   @return [Boolean]
    #
    # @!attribute [rw] category
    #   Template post migration custom action category.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Template post migration custom action description.
    #   @return [String]
    #
    # @!attribute [rw] document_identifier
    #   Template post migration custom action document identifier.
    #   @return [String]
    #
    # @!attribute [rw] document_version
    #   Template post migration custom action document version.
    #   @return [String]
    #
    # @!attribute [rw] external_parameters
    #   Template post migration custom action external parameters.
    #   @return [Hash<String,Types::SsmExternalParameter>]
    #
    # @!attribute [rw] launch_configuration_template_id
    #   Launch configuration template ID.
    #   @return [String]
    #
    # @!attribute [rw] must_succeed_for_cutover
    #   Template post migration custom action must succeed for cutover.
    #   @return [Boolean]
    #
    # @!attribute [rw] operating_system
    #   Operating system eligible for this template post migration custom
    #   action.
    #   @return [String]
    #
    # @!attribute [rw] order
    #   Template post migration custom action order.
    #   @return [Integer]
    #
    # @!attribute [rw] parameters
    #   Template post migration custom action parameters.
    #   @return [Hash<String,Array<Types::SsmParameterStoreParameter>>]
    #
    # @!attribute [rw] timeout_seconds
    #   Template post migration custom action timeout in seconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/PutTemplateActionRequest AWS API Documentation
    #
    class PutTemplateActionRequest < Struct.new(
      :action_id,
      :action_name,
      :active,
      :category,
      :description,
      :document_identifier,
      :document_version,
      :external_parameters,
      :launch_configuration_template_id,
      :must_succeed_for_cutover,
      :operating_system,
      :order,
      :parameters,
      :timeout_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   Source server post migration account ID.
    #   @return [String]
    #
    # @!attribute [rw] action_id
    #   Source server post migration custom action ID to remove.
    #   @return [String]
    #
    # @!attribute [rw] source_server_id
    #   Source server ID of the post migration custom action to remove.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/RemoveSourceServerActionRequest AWS API Documentation
    #
    class RemoveSourceServerActionRequest < Struct.new(
      :account_id,
      :action_id,
      :source_server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/RemoveSourceServerActionResponse AWS API Documentation
    #
    class RemoveSourceServerActionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] action_id
    #   Template post migration custom action ID to remove.
    #   @return [String]
    #
    # @!attribute [rw] launch_configuration_template_id
    #   Launch configuration template ID of the post migration custom action
    #   to remove.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/RemoveTemplateActionRequest AWS API Documentation
    #
    class RemoveTemplateActionRequest < Struct.new(
      :action_id,
      :launch_configuration_template_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/RemoveTemplateActionResponse AWS API Documentation
    #
    class RemoveTemplateActionResponse < Aws::EmptyStructure; end

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
    # @!attribute [rw] use_fips_endpoint
    #   Replication Configuration use Fips Endpoint.
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
      :use_dedicated_replication_server,
      :use_fips_endpoint)
      SENSITIVE = [:staging_area_tags]
      include Aws::Structure
    end

    # Replication Configuration replicated disk.
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
    # @!attribute [rw] throughput
    #   Replication Configuration replicated disk throughput.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ReplicationConfigurationReplicatedDisk AWS API Documentation
    #
    class ReplicationConfigurationReplicatedDisk < Struct.new(
      :device_name,
      :iops,
      :is_boot_disk,
      :staging_disk_type,
      :throughput)
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
    #   Replication Configuration template bandwidth throttling.
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
    #   Replication Configuration template use default large Staging Disk
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
    #   Replication Configuration template ID.
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
    # @!attribute [rw] use_fips_endpoint
    #   Replication Configuration template use Fips Endpoint.
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
      :use_dedicated_replication_server,
      :use_fips_endpoint)
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

    # @!attribute [rw] account_id
    #   Resume Replication Request account ID.
    #   @return [String]
    #
    # @!attribute [rw] source_server_id
    #   Resume Replication Request source server ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ResumeReplicationRequest AWS API Documentation
    #
    class ResumeReplicationRequest < Struct.new(
      :account_id,
      :source_server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   Retry data replication for Account ID.
    #   @return [String]
    #
    # @!attribute [rw] source_server_id
    #   Retry data replication for Source Server ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/RetryDataReplicationRequest AWS API Documentation
    #
    class RetryDataReplicationRequest < Struct.new(
      :account_id,
      :source_server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # S3 bucket source.
    #
    # @!attribute [rw] s3_bucket
    #   S3 bucket source s3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_owner
    #   S3 bucket source s3 bucket owner.
    #   @return [String]
    #
    # @!attribute [rw] s3_key
    #   S3 bucket source s3 key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/S3BucketSource AWS API Documentation
    #
    class S3BucketSource < Struct.new(
      :s3_bucket,
      :s3_bucket_owner,
      :s3_key)
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
    # @!attribute [rw] quota_value
    #   Exceeded the service quota value.
    #   @return [Integer]
    #
    # @!attribute [rw] resource_id
    #   Exceeded the service quota resource ID.
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
      :quota_value,
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

    # @!attribute [rw] application_id
    #   Source server application ID.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   Source server ARN.
    #   @return [String]
    #
    # @!attribute [rw] data_replication_info
    #   Source server data replication info.
    #   @return [Types::DataReplicationInfo]
    #
    # @!attribute [rw] fqdn_for_action_framework
    #   Source server fqdn for action framework.
    #   @return [String]
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
    # @!attribute [rw] user_provided_id
    #   Source server user provided ID.
    #   @return [String]
    #
    # @!attribute [rw] vcenter_client_id
    #   Source server vCenter client id.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/SourceServer AWS API Documentation
    #
    class SourceServer < Struct.new(
      :application_id,
      :arn,
      :data_replication_info,
      :fqdn_for_action_framework,
      :is_archived,
      :launched_instance,
      :life_cycle,
      :replication_type,
      :source_properties,
      :source_server_id,
      :tags,
      :user_provided_id,
      :vcenter_client_id)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] action_id
    #   Source server post migration custom action ID.
    #   @return [String]
    #
    # @!attribute [rw] action_name
    #   Source server post migration custom action name.
    #   @return [String]
    #
    # @!attribute [rw] active
    #   Source server post migration custom action active status.
    #   @return [Boolean]
    #
    # @!attribute [rw] category
    #   Source server post migration custom action category.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Source server post migration custom action description.
    #   @return [String]
    #
    # @!attribute [rw] document_identifier
    #   Source server post migration custom action document identifier.
    #   @return [String]
    #
    # @!attribute [rw] document_version
    #   Source server post migration custom action document version.
    #   @return [String]
    #
    # @!attribute [rw] external_parameters
    #   Source server post migration custom action external parameters.
    #   @return [Hash<String,Types::SsmExternalParameter>]
    #
    # @!attribute [rw] must_succeed_for_cutover
    #   Source server post migration custom action must succeed for cutover.
    #   @return [Boolean]
    #
    # @!attribute [rw] order
    #   Source server post migration custom action order.
    #   @return [Integer]
    #
    # @!attribute [rw] parameters
    #   Source server post migration custom action parameters.
    #   @return [Hash<String,Array<Types::SsmParameterStoreParameter>>]
    #
    # @!attribute [rw] timeout_seconds
    #   Source server post migration custom action timeout in seconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/SourceServerActionDocument AWS API Documentation
    #
    class SourceServerActionDocument < Struct.new(
      :action_id,
      :action_name,
      :active,
      :category,
      :description,
      :document_identifier,
      :document_version,
      :external_parameters,
      :must_succeed_for_cutover,
      :order,
      :parameters,
      :timeout_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Source server post migration custom action filters.
    #
    # @!attribute [rw] action_i_ds
    #   Action IDs to filter source server post migration custom actions by.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/SourceServerActionsRequestFilters AWS API Documentation
    #
    class SourceServerActionsRequestFilters < Struct.new(
      :action_i_ds)
      SENSITIVE = []
      include Aws::Structure
    end

    # AWS Systems Manager Document.
    #
    # @!attribute [rw] action_name
    #   User-friendly name for the AWS Systems Manager Document.
    #   @return [String]
    #
    # @!attribute [rw] external_parameters
    #   AWS Systems Manager Document external parameters.
    #   @return [Hash<String,Types::SsmExternalParameter>]
    #
    # @!attribute [rw] must_succeed_for_cutover
    #   If true, Cutover will not be enabled if the document has failed.
    #   @return [Boolean]
    #
    # @!attribute [rw] parameters
    #   AWS Systems Manager Document parameters.
    #   @return [Hash<String,Array<Types::SsmParameterStoreParameter>>]
    #
    # @!attribute [rw] ssm_document_name
    #   AWS Systems Manager Document name or full ARN.
    #   @return [String]
    #
    # @!attribute [rw] timeout_seconds
    #   AWS Systems Manager Document timeout seconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/SsmDocument AWS API Documentation
    #
    class SsmDocument < Struct.new(
      :action_name,
      :external_parameters,
      :must_succeed_for_cutover,
      :parameters,
      :ssm_document_name,
      :timeout_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # AWS Systems Manager Document external parameter.
    #
    # @note SsmExternalParameter is a union - when making an API calls you must set exactly one of the members.
    #
    # @note SsmExternalParameter is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of SsmExternalParameter corresponding to the set member.
    #
    # @!attribute [rw] dynamic_path
    #   AWS Systems Manager Document external parameters dynamic path.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/SsmExternalParameter AWS API Documentation
    #
    class SsmExternalParameter < Struct.new(
      :dynamic_path,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class DynamicPath < SsmExternalParameter; end
      class Unknown < SsmExternalParameter; end
    end

    # AWS Systems Manager Parameter Store parameter.
    #
    # @!attribute [rw] parameter_name
    #   AWS Systems Manager Parameter Store parameter name.
    #   @return [String]
    #
    # @!attribute [rw] parameter_type
    #   AWS Systems Manager Parameter Store parameter type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/SsmParameterStoreParameter AWS API Documentation
    #
    class SsmParameterStoreParameter < Struct.new(
      :parameter_name,
      :parameter_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   Start Cutover by Account IDs
    #   @return [String]
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
      :account_id,
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

    # Start export request.
    #
    # @!attribute [rw] s3_bucket
    #   Start export request s3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_owner
    #   Start export request s3 bucket owner.
    #   @return [String]
    #
    # @!attribute [rw] s3_key
    #   Start export request s3key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/StartExportRequest AWS API Documentation
    #
    class StartExportRequest < Struct.new(
      :s3_bucket,
      :s3_bucket_owner,
      :s3_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Start export response.
    #
    # @!attribute [rw] export_task
    #   Start export response export task.
    #   @return [Types::ExportTask]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/StartExportResponse AWS API Documentation
    #
    class StartExportResponse < Struct.new(
      :export_task)
      SENSITIVE = []
      include Aws::Structure
    end

    # Start import request.
    #
    # @!attribute [rw] client_token
    #   Start import request client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_source
    #   Start import request s3 bucket source.
    #   @return [Types::S3BucketSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/StartImportRequest AWS API Documentation
    #
    class StartImportRequest < Struct.new(
      :client_token,
      :s3_bucket_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # Start import response.
    #
    # @!attribute [rw] import_task
    #   Start import response import task.
    #   @return [Types::ImportTask]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/StartImportResponse AWS API Documentation
    #
    class StartImportResponse < Struct.new(
      :import_task)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   Account ID on which to start replication.
    #   @return [String]
    #
    # @!attribute [rw] source_server_id
    #   ID of source server on which to start replication.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/StartReplicationRequest AWS API Documentation
    #
    class StartReplicationRequest < Struct.new(
      :account_id,
      :source_server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   Start Test for Account ID.
    #   @return [String]
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
      :account_id,
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

    # @!attribute [rw] account_id
    #   Stop Replication Request account ID.
    #   @return [String]
    #
    # @!attribute [rw] source_server_id
    #   Stop Replication Request source server ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/StopReplicationRequest AWS API Documentation
    #
    class StopReplicationRequest < Struct.new(
      :account_id,
      :source_server_id)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] action_id
    #   Template post migration custom action ID.
    #   @return [String]
    #
    # @!attribute [rw] action_name
    #   Template post migration custom action name.
    #   @return [String]
    #
    # @!attribute [rw] active
    #   Template post migration custom action active status.
    #   @return [Boolean]
    #
    # @!attribute [rw] category
    #   Template post migration custom action category.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Template post migration custom action description.
    #   @return [String]
    #
    # @!attribute [rw] document_identifier
    #   Template post migration custom action document identifier.
    #   @return [String]
    #
    # @!attribute [rw] document_version
    #   Template post migration custom action document version.
    #   @return [String]
    #
    # @!attribute [rw] external_parameters
    #   Template post migration custom action external parameters.
    #   @return [Hash<String,Types::SsmExternalParameter>]
    #
    # @!attribute [rw] must_succeed_for_cutover
    #   Template post migration custom action must succeed for cutover.
    #   @return [Boolean]
    #
    # @!attribute [rw] operating_system
    #   Operating system eligible for this template post migration custom
    #   action.
    #   @return [String]
    #
    # @!attribute [rw] order
    #   Template post migration custom action order.
    #   @return [Integer]
    #
    # @!attribute [rw] parameters
    #   Template post migration custom action parameters.
    #   @return [Hash<String,Array<Types::SsmParameterStoreParameter>>]
    #
    # @!attribute [rw] timeout_seconds
    #   Template post migration custom action timeout in seconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/TemplateActionDocument AWS API Documentation
    #
    class TemplateActionDocument < Struct.new(
      :action_id,
      :action_name,
      :active,
      :category,
      :description,
      :document_identifier,
      :document_version,
      :external_parameters,
      :must_succeed_for_cutover,
      :operating_system,
      :order,
      :parameters,
      :timeout_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Template post migration custom action filters.
    #
    # @!attribute [rw] action_i_ds
    #   Action IDs to filter template post migration custom actions by.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/TemplateActionsRequestFilters AWS API Documentation
    #
    class TemplateActionsRequestFilters < Struct.new(
      :action_i_ds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   Terminate Target instance by Account ID
    #   @return [String]
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
      :account_id,
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

    # @!attribute [rw] account_id
    #   Account ID.
    #   @return [String]
    #
    # @!attribute [rw] application_id
    #   Application ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/UnarchiveApplicationRequest AWS API Documentation
    #
    class UnarchiveApplicationRequest < Struct.new(
      :account_id,
      :application_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   Account ID.
    #   @return [String]
    #
    # @!attribute [rw] wave_id
    #   Wave ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/UnarchiveWaveRequest AWS API Documentation
    #
    class UnarchiveWaveRequest < Struct.new(
      :account_id,
      :wave_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Uninitialized account exception.
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

    # @!attribute [rw] account_id
    #   Account ID.
    #   @return [String]
    #
    # @!attribute [rw] application_id
    #   Application ID.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Application description.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Application name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/UpdateApplicationRequest AWS API Documentation
    #
    class UpdateApplicationRequest < Struct.new(
      :account_id,
      :application_id,
      :description,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   Update Launch configuration Account ID.
    #   @return [String]
    #
    # @!attribute [rw] boot_mode
    #   Update Launch configuration boot mode request.
    #   @return [String]
    #
    # @!attribute [rw] copy_private_ip
    #   Update Launch configuration copy Private IP request.
    #   @return [Boolean]
    #
    # @!attribute [rw] copy_tags
    #   Update Launch configuration copy Tags request.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_map_auto_tagging
    #   Enable map auto tagging.
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
    # @!attribute [rw] map_auto_tagging_mpe_id
    #   Launch configuration map auto tagging MPE ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Update Launch configuration name request.
    #   @return [String]
    #
    # @!attribute [rw] post_launch_actions
    #   Post Launch Actions to executed on the Test or Cutover instance.
    #   @return [Types::PostLaunchActions]
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
      :account_id,
      :boot_mode,
      :copy_private_ip,
      :copy_tags,
      :enable_map_auto_tagging,
      :launch_disposition,
      :licensing,
      :map_auto_tagging_mpe_id,
      :name,
      :post_launch_actions,
      :source_server_id,
      :target_instance_type_right_sizing_method)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] associate_public_ip_address
    #   Associate public Ip address.
    #   @return [Boolean]
    #
    # @!attribute [rw] boot_mode
    #   Launch configuration template boot mode.
    #   @return [String]
    #
    # @!attribute [rw] copy_private_ip
    #   Copy private Ip.
    #   @return [Boolean]
    #
    # @!attribute [rw] copy_tags
    #   Copy tags.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_map_auto_tagging
    #   Enable map auto tagging.
    #   @return [Boolean]
    #
    # @!attribute [rw] large_volume_conf
    #   Large volume config.
    #   @return [Types::LaunchTemplateDiskConf]
    #
    # @!attribute [rw] launch_configuration_template_id
    #   Launch Configuration Template ID.
    #   @return [String]
    #
    # @!attribute [rw] launch_disposition
    #   Launch disposition.
    #   @return [String]
    #
    # @!attribute [rw] licensing
    #   Configure Licensing.
    #   @return [Types::Licensing]
    #
    # @!attribute [rw] map_auto_tagging_mpe_id
    #   Launch configuration template map auto tagging MPE ID.
    #   @return [String]
    #
    # @!attribute [rw] post_launch_actions
    #   Post Launch Action to execute on the Test or Cutover instance.
    #   @return [Types::PostLaunchActions]
    #
    # @!attribute [rw] small_volume_conf
    #   Small volume config.
    #   @return [Types::LaunchTemplateDiskConf]
    #
    # @!attribute [rw] small_volume_max_size
    #   Small volume maximum size.
    #   @return [Integer]
    #
    # @!attribute [rw] target_instance_type_right_sizing_method
    #   Target instance type right-sizing method.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/UpdateLaunchConfigurationTemplateRequest AWS API Documentation
    #
    class UpdateLaunchConfigurationTemplateRequest < Struct.new(
      :associate_public_ip_address,
      :boot_mode,
      :copy_private_ip,
      :copy_tags,
      :enable_map_auto_tagging,
      :large_volume_conf,
      :launch_configuration_template_id,
      :launch_disposition,
      :licensing,
      :map_auto_tagging_mpe_id,
      :post_launch_actions,
      :small_volume_conf,
      :small_volume_max_size,
      :target_instance_type_right_sizing_method)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   Update replication configuration Account ID request.
    #   @return [String]
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
    # @!attribute [rw] use_fips_endpoint
    #   Update replication configuration use Fips Endpoint.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/UpdateReplicationConfigurationRequest AWS API Documentation
    #
    class UpdateReplicationConfigurationRequest < Struct.new(
      :account_id,
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
      :use_dedicated_replication_server,
      :use_fips_endpoint)
      SENSITIVE = [:staging_area_tags]
      include Aws::Structure
    end

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
    # @!attribute [rw] use_fips_endpoint
    #   Update replication configuration template use Fips Endpoint request.
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
      :use_dedicated_replication_server,
      :use_fips_endpoint)
      SENSITIVE = [:staging_area_tags]
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   Account ID on which to update replication type.
    #   @return [String]
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
      :account_id,
      :replication_type,
      :source_server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   Account ID.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Wave description.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Wave name.
    #   @return [String]
    #
    # @!attribute [rw] wave_id
    #   Wave ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/UpdateWaveRequest AWS API Documentation
    #
    class UpdateWaveRequest < Struct.new(
      :account_id,
      :description,
      :name,
      :wave_id)
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

    # @!attribute [rw] arn
    #   Wave ARN.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   Wave creation dateTime.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Wave description.
    #   @return [String]
    #
    # @!attribute [rw] is_archived
    #   Wave archival status.
    #   @return [Boolean]
    #
    # @!attribute [rw] last_modified_date_time
    #   Wave last modified dateTime.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Wave name.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Wave tags.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] wave_aggregated_status
    #   Wave aggregated status.
    #   @return [Types::WaveAggregatedStatus]
    #
    # @!attribute [rw] wave_id
    #   Wave ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/Wave AWS API Documentation
    #
    class Wave < Struct.new(
      :arn,
      :creation_date_time,
      :description,
      :is_archived,
      :last_modified_date_time,
      :name,
      :tags,
      :wave_aggregated_status,
      :wave_id)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # Wave aggregated status.
    #
    # @!attribute [rw] health_status
    #   Wave aggregated status health status.
    #   @return [String]
    #
    # @!attribute [rw] last_update_date_time
    #   Wave aggregated status last update dateTime.
    #   @return [String]
    #
    # @!attribute [rw] progress_status
    #   Wave aggregated status progress status.
    #   @return [String]
    #
    # @!attribute [rw] replication_started_date_time
    #   DateTime marking when the first source server in the wave started
    #   replication.
    #   @return [String]
    #
    # @!attribute [rw] total_applications
    #   Wave aggregated status total applications amount.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/WaveAggregatedStatus AWS API Documentation
    #
    class WaveAggregatedStatus < Struct.new(
      :health_status,
      :last_update_date_time,
      :progress_status,
      :replication_started_date_time,
      :total_applications)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
