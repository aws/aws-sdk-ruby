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
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   Application ID.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   Application ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Application name.
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
    # @!attribute [rw] application_aggregated_status
    #   Application aggregated status.
    #   @return [Types::ApplicationAggregatedStatus]
    #
    # @!attribute [rw] creation_date_time
    #   Application creation dateTime.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date_time
    #   Application last modified dateTime.
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
      :application_id,
      :arn,
      :name,
      :description,
      :is_archived,
      :application_aggregated_status,
      :creation_date_time,
      :last_modified_date_time,
      :tags,
      :wave_id)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # Application aggregated status.
    #
    # @!attribute [rw] last_update_date_time
    #   Application aggregated status last update dateTime.
    #   @return [String]
    #
    # @!attribute [rw] health_status
    #   Application aggregated status health status.
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
      :last_update_date_time,
      :health_status,
      :progress_status,
      :total_source_servers)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   Application ID.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   Account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ArchiveApplicationRequest AWS API Documentation
    #
    class ArchiveApplicationRequest < Struct.new(
      :application_id,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] wave_id
    #   Wave ID.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   Account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ArchiveWaveRequest AWS API Documentation
    #
    class ArchiveWaveRequest < Struct.new(
      :wave_id,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] wave_id
    #   Wave ID.
    #   @return [String]
    #
    # @!attribute [rw] application_i_ds
    #   Application IDs list.
    #   @return [Array<String>]
    #
    # @!attribute [rw] account_id
    #   Account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/AssociateApplicationsRequest AWS API Documentation
    #
    class AssociateApplicationsRequest < Struct.new(
      :wave_id,
      :application_i_ds,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/AssociateApplicationsResponse AWS API Documentation
    #
    class AssociateApplicationsResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_id
    #   Application ID.
    #   @return [String]
    #
    # @!attribute [rw] source_server_i_ds
    #   Source server IDs list.
    #   @return [Array<String>]
    #
    # @!attribute [rw] account_id
    #   Account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/AssociateSourceServersRequest AWS API Documentation
    #
    class AssociateSourceServersRequest < Struct.new(
      :application_id,
      :source_server_i_ds,
      :account_id)
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

    # @!attribute [rw] source_server_id
    #   The request to change the source server migration lifecycle state by
    #   source server ID.
    #   @return [String]
    #
    # @!attribute [rw] life_cycle
    #   The request to change the source server migration lifecycle state.
    #   @return [Types::ChangeServerLifeCycleStateSourceServerLifecycle]
    #
    # @!attribute [rw] account_id
    #   The request to change the source server migration account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ChangeServerLifeCycleStateRequest AWS API Documentation
    #
    class ChangeServerLifeCycleStateRequest < Struct.new(
      :source_server_id,
      :life_cycle,
      :account_id)
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
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
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
    # @!attribute [rw] errors
    #   Conflict Exception specific errors.
    #   @return [Array<Types::ErrorDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :code,
      :resource_id,
      :resource_type,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_id
    #   Connector ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Connector name.
    #   @return [String]
    #
    # @!attribute [rw] ssm_instance_id
    #   Connector SSM instance ID.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   Connector arn.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Connector tags.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] ssm_command_config
    #   Connector SSM command config.
    #   @return [Types::ConnectorSsmCommandConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/Connector AWS API Documentation
    #
    class Connector < Struct.new(
      :connector_id,
      :name,
      :ssm_instance_id,
      :arn,
      :tags,
      :ssm_command_config)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # Connector SSM command config.
    #
    # @!attribute [rw] s3_output_enabled
    #   Connector SSM command config S3 output enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] output_s3_bucket_name
    #   Connector SSM command config output S3 bucket name.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_output_enabled
    #   Connector SSM command config CloudWatch output enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] cloud_watch_log_group_name
    #   Connector SSM command config CloudWatch log group name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ConnectorSsmCommandConfig AWS API Documentation
    #
    class ConnectorSsmCommandConfig < Struct.new(
      :s3_output_enabled,
      :output_s3_bucket_name,
      :cloud_watch_output_enabled,
      :cloud_watch_log_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Application name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Application description.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Application tags.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] account_id
    #   Account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/CreateApplicationRequest AWS API Documentation
    #
    class CreateApplicationRequest < Struct.new(
      :name,
      :description,
      :tags,
      :account_id)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Create Connector request name.
    #   @return [String]
    #
    # @!attribute [rw] ssm_instance_id
    #   Create Connector request SSM instance ID.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Create Connector request tags.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] ssm_command_config
    #   Create Connector request SSM command config.
    #   @return [Types::ConnectorSsmCommandConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/CreateConnectorRequest AWS API Documentation
    #
    class CreateConnectorRequest < Struct.new(
      :name,
      :ssm_instance_id,
      :tags,
      :ssm_command_config)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] post_launch_actions
    #   Launch configuration template post launch actions.
    #   @return [Types::PostLaunchActions]
    #
    # @!attribute [rw] enable_map_auto_tagging
    #   Enable map auto tagging.
    #   @return [Boolean]
    #
    # @!attribute [rw] map_auto_tagging_mpe_id
    #   Launch configuration template map auto tagging MPE ID.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Request to associate tags during creation of a Launch Configuration
    #   Template.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] launch_disposition
    #   Launch disposition.
    #   @return [String]
    #
    # @!attribute [rw] target_instance_type_right_sizing_method
    #   Target instance type right-sizing method.
    #   @return [String]
    #
    # @!attribute [rw] copy_private_ip
    #   Copy private Ip.
    #   @return [Boolean]
    #
    # @!attribute [rw] associate_public_ip_address
    #   Associate public Ip address.
    #   @return [Boolean]
    #
    # @!attribute [rw] copy_tags
    #   Copy tags.
    #   @return [Boolean]
    #
    # @!attribute [rw] licensing
    #   Configure Licensing.
    #   @return [Types::Licensing]
    #
    # @!attribute [rw] boot_mode
    #   Launch configuration template boot mode.
    #   @return [String]
    #
    # @!attribute [rw] small_volume_max_size
    #   Small volume maximum size.
    #   @return [Integer]
    #
    # @!attribute [rw] small_volume_conf
    #   Small volume config.
    #   @return [Types::LaunchTemplateDiskConf]
    #
    # @!attribute [rw] large_volume_conf
    #   Large volume config.
    #   @return [Types::LaunchTemplateDiskConf]
    #
    # @!attribute [rw] enable_parameters_encryption
    #   Enable parameters encryption.
    #   @return [Boolean]
    #
    # @!attribute [rw] parameters_encryption_key
    #   Parameters encryption key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/CreateLaunchConfigurationTemplateRequest AWS API Documentation
    #
    class CreateLaunchConfigurationTemplateRequest < Struct.new(
      :post_launch_actions,
      :enable_map_auto_tagging,
      :map_auto_tagging_mpe_id,
      :tags,
      :launch_disposition,
      :target_instance_type_right_sizing_method,
      :copy_private_ip,
      :associate_public_ip_address,
      :copy_tags,
      :licensing,
      :boot_mode,
      :small_volume_max_size,
      :small_volume_conf,
      :large_volume_conf,
      :enable_parameters_encryption,
      :parameters_encryption_key)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] staging_area_subnet_id
    #   Request to configure the Staging Area subnet ID during Replication
    #   Settings template creation.
    #   @return [String]
    #
    # @!attribute [rw] associate_default_security_group
    #   Request to associate the default Application Migration Service
    #   Security group with the Replication Settings template.
    #   @return [Boolean]
    #
    # @!attribute [rw] replication_servers_security_groups_i_ds
    #   Request to configure the Replication Server Security group ID during
    #   Replication Settings template creation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] replication_server_instance_type
    #   Request to configure the Replication Server instance type during
    #   Replication Settings template creation.
    #   @return [String]
    #
    # @!attribute [rw] use_dedicated_replication_server
    #   Request to use Dedicated Replication Servers during Replication
    #   Settings template creation.
    #   @return [Boolean]
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
    # @!attribute [rw] bandwidth_throttling
    #   Request to configure bandwidth throttling during Replication
    #   Settings template creation.
    #   @return [Integer]
    #
    # @!attribute [rw] data_plane_routing
    #   Request to configure data plane routing during Replication Settings
    #   template creation.
    #   @return [String]
    #
    # @!attribute [rw] create_public_ip
    #   Request to create Public IP during Replication Settings template
    #   creation.
    #   @return [Boolean]
    #
    # @!attribute [rw] staging_area_tags
    #   Request to configure Staging Area tags during Replication Settings
    #   template creation.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] use_fips_endpoint
    #   Request to use Fips Endpoint during Replication Settings template
    #   creation.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   Request to configure tags during Replication Settings template
    #   creation.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] internet_protocol
    #   Request to configure the internet protocol to IPv4 or IPv6.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/CreateReplicationConfigurationTemplateRequest AWS API Documentation
    #
    class CreateReplicationConfigurationTemplateRequest < Struct.new(
      :staging_area_subnet_id,
      :associate_default_security_group,
      :replication_servers_security_groups_i_ds,
      :replication_server_instance_type,
      :use_dedicated_replication_server,
      :default_large_staging_disk_type,
      :ebs_encryption,
      :ebs_encryption_key_arn,
      :bandwidth_throttling,
      :data_plane_routing,
      :create_public_ip,
      :staging_area_tags,
      :use_fips_endpoint,
      :tags,
      :internet_protocol)
      SENSITIVE = [:staging_area_tags, :tags]
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Wave name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Wave description.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Wave tags.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] account_id
    #   Account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/CreateWaveRequest AWS API Documentation
    #
    class CreateWaveRequest < Struct.new(
      :name,
      :description,
      :tags,
      :account_id)
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
    # @!attribute [rw] lag_duration
    #   Request to query data replication lag duration.
    #   @return [String]
    #
    # @!attribute [rw] eta_date_time
    #   Request to query the time when data replication will be complete.
    #   @return [String]
    #
    # @!attribute [rw] replicated_disks
    #   Request to query disks replicated.
    #   @return [Array<Types::DataReplicationInfoReplicatedDisk>]
    #
    # @!attribute [rw] data_replication_state
    #   Request to query the data replication state.
    #   @return [String]
    #
    # @!attribute [rw] data_replication_initiation
    #   Request to query whether data replication has been initiated.
    #   @return [Types::DataReplicationInitiation]
    #
    # @!attribute [rw] data_replication_error
    #   Error in obtaining data replication info.
    #   @return [Types::DataReplicationError]
    #
    # @!attribute [rw] last_snapshot_date_time
    #   Request to query data replication last snapshot time.
    #   @return [String]
    #
    # @!attribute [rw] replicator_id
    #   Replication server instance ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DataReplicationInfo AWS API Documentation
    #
    class DataReplicationInfo < Struct.new(
      :lag_duration,
      :eta_date_time,
      :replicated_disks,
      :data_replication_state,
      :data_replication_initiation,
      :data_replication_error,
      :last_snapshot_date_time,
      :replicator_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to query disks replicated.
    #
    # @!attribute [rw] device_name
    #   Request to query device name.
    #   @return [String]
    #
    # @!attribute [rw] total_storage_bytes
    #   Request to query total amount of data replicated in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] replicated_storage_bytes
    #   Request to query amount of data replicated in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] rescanned_storage_bytes
    #   Request to query amount of data rescanned in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] backlogged_storage_bytes
    #   Request to query data replication backlog size in bytes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DataReplicationInfoReplicatedDisk AWS API Documentation
    #
    class DataReplicationInfoReplicatedDisk < Struct.new(
      :device_name,
      :total_storage_bytes,
      :replicated_storage_bytes,
      :rescanned_storage_bytes,
      :backlogged_storage_bytes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Data replication initiation.
    #
    # @!attribute [rw] start_date_time
    #   Request to query data initiation start date and time.
    #   @return [String]
    #
    # @!attribute [rw] next_attempt_date_time
    #   Request to query next data initiation date and time.
    #   @return [String]
    #
    # @!attribute [rw] steps
    #   Request to query data initiation steps.
    #   @return [Array<Types::DataReplicationInitiationStep>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DataReplicationInitiation AWS API Documentation
    #
    class DataReplicationInitiation < Struct.new(
      :start_date_time,
      :next_attempt_date_time,
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

    # @!attribute [rw] application_id
    #   Application ID.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   Account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DeleteApplicationRequest AWS API Documentation
    #
    class DeleteApplicationRequest < Struct.new(
      :application_id,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DeleteApplicationResponse AWS API Documentation
    #
    class DeleteApplicationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] connector_id
    #   Delete Connector request connector ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DeleteConnectorRequest AWS API Documentation
    #
    class DeleteConnectorRequest < Struct.new(
      :connector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   Request to delete Job from service by Job ID.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   Request to delete Job from service by Account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DeleteJobRequest AWS API Documentation
    #
    class DeleteJobRequest < Struct.new(
      :job_id,
      :account_id)
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

    # @!attribute [rw] source_server_id
    #   Request to delete Source Server from service by Server ID.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   Request to delete Source Server from service by Account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DeleteSourceServerRequest AWS API Documentation
    #
    class DeleteSourceServerRequest < Struct.new(
      :source_server_id,
      :account_id)
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

    # @!attribute [rw] wave_id
    #   Wave ID.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   Account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DeleteWaveRequest AWS API Documentation
    #
    class DeleteWaveRequest < Struct.new(
      :wave_id,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DeleteWaveResponse AWS API Documentation
    #
    class DeleteWaveResponse < Aws::EmptyStructure; end

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
    # @!attribute [rw] account_id
    #   Request to describe Job log Account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DescribeJobLogItemsRequest AWS API Documentation
    #
    class DescribeJobLogItemsRequest < Struct.new(
      :job_id,
      :max_results,
      :next_token,
      :account_id)
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
    # @!attribute [rw] account_id
    #   Request to describe job log items by Account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DescribeJobsRequest AWS API Documentation
    #
    class DescribeJobsRequest < Struct.new(
      :filters,
      :max_results,
      :next_token,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to describe Job log filters.
    #
    # @!attribute [rw] job_i_ds
    #   Request to describe Job log filters by job ID.
    #   @return [Array<String>]
    #
    # @!attribute [rw] from_date
    #   Request to describe Job log filters by date.
    #   @return [String]
    #
    # @!attribute [rw] to_date
    #   Request to describe job log items by last date.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DescribeJobsRequestFilters AWS API Documentation
    #
    class DescribeJobsRequestFilters < Struct.new(
      :job_i_ds,
      :from_date,
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

    # @!attribute [rw] replication_configuration_template_i_ds
    #   Request to describe Replication Configuration template by template
    #   IDs.
    #   @return [Array<String>]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DescribeReplicationConfigurationTemplatesRequest AWS API Documentation
    #
    class DescribeReplicationConfigurationTemplatesRequest < Struct.new(
      :replication_configuration_template_i_ds,
      :max_results,
      :next_token)
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
    # @!attribute [rw] account_id
    #   Request to filter Source Servers list by Accoun ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DescribeSourceServersRequest AWS API Documentation
    #
    class DescribeSourceServersRequest < Struct.new(
      :filters,
      :max_results,
      :next_token,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request to filter Source Servers list.
    #
    # @!attribute [rw] source_server_i_ds
    #   Request to filter Source Servers list by Source Server ID.
    #   @return [Array<String>]
    #
    # @!attribute [rw] is_archived
    #   Request to filter Source Servers list by archived.
    #   @return [Boolean]
    #
    # @!attribute [rw] replication_types
    #   Request to filter Source Servers list by replication type.
    #   @return [Array<String>]
    #
    # @!attribute [rw] life_cycle_states
    #   Request to filter Source Servers list by life cycle states.
    #   @return [Array<String>]
    #
    # @!attribute [rw] application_i_ds
    #   Request to filter Source Servers list by application IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DescribeSourceServersRequestFilters AWS API Documentation
    #
    class DescribeSourceServersRequestFilters < Struct.new(
      :source_server_i_ds,
      :is_archived,
      :replication_types,
      :life_cycle_states,
      :application_i_ds)
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

    # @!attribute [rw] wave_id
    #   Wave ID.
    #   @return [String]
    #
    # @!attribute [rw] application_i_ds
    #   Application IDs list.
    #   @return [Array<String>]
    #
    # @!attribute [rw] account_id
    #   Account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DisassociateApplicationsRequest AWS API Documentation
    #
    class DisassociateApplicationsRequest < Struct.new(
      :wave_id,
      :application_i_ds,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DisassociateApplicationsResponse AWS API Documentation
    #
    class DisassociateApplicationsResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_id
    #   Application ID.
    #   @return [String]
    #
    # @!attribute [rw] source_server_i_ds
    #   Source server IDs list.
    #   @return [Array<String>]
    #
    # @!attribute [rw] account_id
    #   Account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DisassociateSourceServersRequest AWS API Documentation
    #
    class DisassociateSourceServersRequest < Struct.new(
      :application_id,
      :source_server_i_ds,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DisassociateSourceServersResponse AWS API Documentation
    #
    class DisassociateSourceServersResponse < Aws::EmptyStructure; end

    # @!attribute [rw] source_server_id
    #   Request to disconnect Source Server from service by Server ID.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   Request to disconnect Source Server from service by Account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DisconnectFromServiceRequest AWS API Documentation
    #
    class DisconnectFromServiceRequest < Struct.new(
      :source_server_id,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The disk identifier.
    #
    # @!attribute [rw] device_name
    #   The disk or device name.
    #   @return [String]
    #
    # @!attribute [rw] bytes
    #   The amount of storage on the disk in bytes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/Disk AWS API Documentation
    #
    class Disk < Struct.new(
      :device_name,
      :bytes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Error details.
    #
    # @!attribute [rw] message
    #   Error details message.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   Error details code.
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
      :message,
      :code,
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
    # @!attribute [rw] export_id
    #   Export task id.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   ExportTask arn.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket
    #   Export task s3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] s3_key
    #   Export task s3 key.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_owner
    #   Export task s3 bucket owner.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   Export task creation datetime.
    #   @return [String]
    #
    # @!attribute [rw] end_date_time
    #   Export task end datetime.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Export task status.
    #   @return [String]
    #
    # @!attribute [rw] progress_percentage
    #   Export task progress percentage.
    #   @return [Float]
    #
    # @!attribute [rw] summary
    #   Export task summary.
    #   @return [Types::ExportTaskSummary]
    #
    # @!attribute [rw] tags
    #   Export task tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ExportTask AWS API Documentation
    #
    class ExportTask < Struct.new(
      :export_id,
      :arn,
      :s3_bucket,
      :s3_key,
      :s3_bucket_owner,
      :creation_date_time,
      :end_date_time,
      :status,
      :progress_percentage,
      :summary,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # Export task error.
    #
    # @!attribute [rw] error_date_time
    #   Export task error datetime.
    #   @return [String]
    #
    # @!attribute [rw] error_data
    #   Export task error data.
    #   @return [Types::ExportErrorData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ExportTaskError AWS API Documentation
    #
    class ExportTaskError < Struct.new(
      :error_date_time,
      :error_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # Export task summary.
    #
    # @!attribute [rw] servers_count
    #   Export task summary servers count.
    #   @return [Integer]
    #
    # @!attribute [rw] applications_count
    #   Export task summary applications count.
    #   @return [Integer]
    #
    # @!attribute [rw] waves_count
    #   Export task summary waves count.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ExportTaskSummary AWS API Documentation
    #
    class ExportTaskSummary < Struct.new(
      :servers_count,
      :applications_count,
      :waves_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_server_id
    #   Request to finalize Cutover by Source Server ID.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   Request to finalize Cutover by Source Account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/FinalizeCutoverRequest AWS API Documentation
    #
    class FinalizeCutoverRequest < Struct.new(
      :source_server_id,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_server_id
    #   Request to get Launch Configuration information by Source Server ID.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   Request to get Launch Configuration information by Account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/GetLaunchConfigurationRequest AWS API Documentation
    #
    class GetLaunchConfigurationRequest < Struct.new(
      :source_server_id,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_server_id
    #   Request to get Replication Configuration by Source Server ID.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   Request to get Replication Configuration by Account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/GetReplicationConfigurationRequest AWS API Documentation
    #
    class GetReplicationConfigurationRequest < Struct.new(
      :source_server_id,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identification hints.
    #
    # @!attribute [rw] fqdn
    #   FQDN address identification hint.
    #   @return [String]
    #
    # @!attribute [rw] hostname
    #   Hostname identification hint.
    #   @return [String]
    #
    # @!attribute [rw] vm_ware_uuid
    #   vmWare UUID identification hint.
    #   @return [String]
    #
    # @!attribute [rw] aws_instance_id
    #   AWS Instance ID identification hint.
    #   @return [String]
    #
    # @!attribute [rw] vm_path
    #   vCenter VM path identification hint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/IdentificationHints AWS API Documentation
    #
    class IdentificationHints < Struct.new(
      :fqdn,
      :hostname,
      :vm_ware_uuid,
      :aws_instance_id,
      :vm_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # Import error data.
    #
    # @!attribute [rw] source_server_id
    #   Import error data source server ID.
    #   @return [String]
    #
    # @!attribute [rw] application_id
    #   Import error data application ID.
    #   @return [String]
    #
    # @!attribute [rw] wave_id
    #   Import error data wave id.
    #   @return [String]
    #
    # @!attribute [rw] ec2_launch_template_id
    #   Import error data ec2 LaunchTemplate ID.
    #   @return [String]
    #
    # @!attribute [rw] row_number
    #   Import error data row number.
    #   @return [Integer]
    #
    # @!attribute [rw] raw_error
    #   Import error data raw error.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   Import error data source account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ImportErrorData AWS API Documentation
    #
    class ImportErrorData < Struct.new(
      :source_server_id,
      :application_id,
      :wave_id,
      :ec2_launch_template_id,
      :row_number,
      :raw_error,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Import task.
    #
    # @!attribute [rw] import_id
    #   Import task id.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   ImportTask arn.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_source
    #   Import task s3 bucket source.
    #   @return [Types::S3BucketSource]
    #
    # @!attribute [rw] creation_date_time
    #   Import task creation datetime.
    #   @return [String]
    #
    # @!attribute [rw] end_date_time
    #   Import task end datetime.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Import task status.
    #   @return [String]
    #
    # @!attribute [rw] progress_percentage
    #   Import task progress percentage.
    #   @return [Float]
    #
    # @!attribute [rw] summary
    #   Import task summary.
    #   @return [Types::ImportTaskSummary]
    #
    # @!attribute [rw] tags
    #   Import task tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ImportTask AWS API Documentation
    #
    class ImportTask < Struct.new(
      :import_id,
      :arn,
      :s3_bucket_source,
      :creation_date_time,
      :end_date_time,
      :status,
      :progress_percentage,
      :summary,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # Import task error.
    #
    # @!attribute [rw] error_date_time
    #   Import task error datetime.
    #   @return [String]
    #
    # @!attribute [rw] error_type
    #   Import task error type.
    #   @return [String]
    #
    # @!attribute [rw] error_data
    #   Import task error data.
    #   @return [Types::ImportErrorData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ImportTaskError AWS API Documentation
    #
    class ImportTaskError < Struct.new(
      :error_date_time,
      :error_type,
      :error_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # Import task summary.
    #
    # @!attribute [rw] waves
    #   Import task summary waves.
    #   @return [Types::ImportTaskSummaryWaves]
    #
    # @!attribute [rw] applications
    #   Import task summary applications.
    #   @return [Types::ImportTaskSummaryApplications]
    #
    # @!attribute [rw] servers
    #   Import task summary servers.
    #   @return [Types::ImportTaskSummaryServers]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ImportTaskSummary AWS API Documentation
    #
    class ImportTaskSummary < Struct.new(
      :waves,
      :applications,
      :servers)
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
    # @!attribute [rw] job_id
    #   Job ID.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   the ARN of the specific Job.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Job type.
    #   @return [String]
    #
    # @!attribute [rw] initiated_by
    #   Job initiated by field.
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
    # @!attribute [rw] status
    #   Job status.
    #   @return [String]
    #
    # @!attribute [rw] participating_servers
    #   Servers participating in a specific Job.
    #   @return [Array<Types::ParticipatingServer>]
    #
    # @!attribute [rw] tags
    #   Tags associated with specific Job.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/Job AWS API Documentation
    #
    class Job < Struct.new(
      :job_id,
      :arn,
      :type,
      :initiated_by,
      :creation_date_time,
      :end_date_time,
      :status,
      :participating_servers,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # Job log.
    #
    # @!attribute [rw] log_date_time
    #   Job log event date and time.
    #   @return [String]
    #
    # @!attribute [rw] event
    #   Job log event.
    #   @return [String]
    #
    # @!attribute [rw] event_data
    #   Job event data
    #   @return [Types::JobLogEventData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/JobLog AWS API Documentation
    #
    class JobLog < Struct.new(
      :log_date_time,
      :event,
      :event_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # Job log data
    #
    # @!attribute [rw] source_server_id
    #   Job Event Source Server ID.
    #   @return [String]
    #
    # @!attribute [rw] conversion_server_id
    #   Job Event conversion Server ID.
    #   @return [String]
    #
    # @!attribute [rw] target_instance_id
    #   Job Event Target instance ID.
    #   @return [String]
    #
    # @!attribute [rw] raw_error
    #   Job error.
    #   @return [String]
    #
    # @!attribute [rw] attempt_count
    #   Retries for this operation.
    #   @return [Integer]
    #
    # @!attribute [rw] max_attempts_count
    #   The maximum number of retries that will be attempted if this
    #   operation failed.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/JobLogEventData AWS API Documentation
    #
    class JobLogEventData < Struct.new(
      :source_server_id,
      :conversion_server_id,
      :target_instance_id,
      :raw_error,
      :attempt_count,
      :max_attempts_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Launch Status of the Job Post Launch Actions.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/JobPostLaunchActionsLaunchStatus AWS API Documentation
    #
    class JobPostLaunchActionsLaunchStatus < Struct.new(
      :ssm_document,
      :ssm_document_type,
      :execution_id,
      :execution_status,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_server_id
    #   Launch configuration Source Server ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Launch configuration name.
    #   @return [String]
    #
    # @!attribute [rw] ec2_launch_template_id
    #   Launch configuration EC2 Launch template ID.
    #   @return [String]
    #
    # @!attribute [rw] launch_disposition
    #   Launch disposition for launch configuration.
    #   @return [String]
    #
    # @!attribute [rw] target_instance_type_right_sizing_method
    #   Launch configuration Target instance type right sizing method.
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
    # @!attribute [rw] licensing
    #   Launch configuration OS licensing.
    #   @return [Types::Licensing]
    #
    # @!attribute [rw] boot_mode
    #   Launch configuration boot mode.
    #   @return [String]
    #
    # @!attribute [rw] post_launch_actions
    #   Post Launch Actions to executed on the Test or Cutover instance.
    #   @return [Types::PostLaunchActions]
    #
    # @!attribute [rw] enable_map_auto_tagging
    #   Enable map auto tagging.
    #   @return [Boolean]
    #
    # @!attribute [rw] map_auto_tagging_mpe_id
    #   Map auto tagging MPE ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/LaunchConfiguration AWS API Documentation
    #
    class LaunchConfiguration < Struct.new(
      :source_server_id,
      :name,
      :ec2_launch_template_id,
      :launch_disposition,
      :target_instance_type_right_sizing_method,
      :copy_private_ip,
      :copy_tags,
      :licensing,
      :boot_mode,
      :post_launch_actions,
      :enable_map_auto_tagging,
      :map_auto_tagging_mpe_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] launch_configuration_template_id
    #   ID of the Launch Configuration Template.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   ARN of the Launch Configuration Template.
    #   @return [String]
    #
    # @!attribute [rw] post_launch_actions
    #   Post Launch Actions of the Launch Configuration Template.
    #   @return [Types::PostLaunchActions]
    #
    # @!attribute [rw] enable_map_auto_tagging
    #   Enable map auto tagging.
    #   @return [Boolean]
    #
    # @!attribute [rw] map_auto_tagging_mpe_id
    #   Launch configuration template map auto tagging MPE ID.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags of the Launch Configuration Template.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] ec2_launch_template_id
    #   EC2 launch template ID.
    #   @return [String]
    #
    # @!attribute [rw] launch_disposition
    #   Launch disposition.
    #   @return [String]
    #
    # @!attribute [rw] target_instance_type_right_sizing_method
    #   Target instance type right-sizing method.
    #   @return [String]
    #
    # @!attribute [rw] copy_private_ip
    #   Copy private Ip.
    #   @return [Boolean]
    #
    # @!attribute [rw] associate_public_ip_address
    #   Associate public Ip address.
    #   @return [Boolean]
    #
    # @!attribute [rw] copy_tags
    #   Copy tags.
    #   @return [Boolean]
    #
    # @!attribute [rw] licensing
    #   Configure Licensing.
    #   @return [Types::Licensing]
    #
    # @!attribute [rw] boot_mode
    #   Launch configuration template boot mode.
    #   @return [String]
    #
    # @!attribute [rw] small_volume_max_size
    #   Small volume maximum size.
    #   @return [Integer]
    #
    # @!attribute [rw] small_volume_conf
    #   Small volume config.
    #   @return [Types::LaunchTemplateDiskConf]
    #
    # @!attribute [rw] large_volume_conf
    #   Large volume config.
    #   @return [Types::LaunchTemplateDiskConf]
    #
    # @!attribute [rw] enable_parameters_encryption
    #   Enable parameters encryption.
    #   @return [Boolean]
    #
    # @!attribute [rw] parameters_encryption_key
    #   Parameters encryption key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/LaunchConfigurationTemplate AWS API Documentation
    #
    class LaunchConfigurationTemplate < Struct.new(
      :launch_configuration_template_id,
      :arn,
      :post_launch_actions,
      :enable_map_auto_tagging,
      :map_auto_tagging_mpe_id,
      :tags,
      :ec2_launch_template_id,
      :launch_disposition,
      :target_instance_type_right_sizing_method,
      :copy_private_ip,
      :associate_public_ip_address,
      :copy_tags,
      :licensing,
      :boot_mode,
      :small_volume_max_size,
      :small_volume_conf,
      :large_volume_conf,
      :enable_parameters_encryption,
      :parameters_encryption_key)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # Launch template disk configuration.
    #
    # @!attribute [rw] volume_type
    #   Launch template disk volume type configuration.
    #   @return [String]
    #
    # @!attribute [rw] iops
    #   Launch template disk iops configuration.
    #   @return [Integer]
    #
    # @!attribute [rw] throughput
    #   Launch template disk throughput configuration.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/LaunchTemplateDiskConf AWS API Documentation
    #
    class LaunchTemplateDiskConf < Struct.new(
      :volume_type,
      :iops,
      :throughput)
      SENSITIVE = []
      include Aws::Structure
    end

    # Launched instance.
    #
    # @!attribute [rw] ec2_instance_id
    #   Launched instance EC2 ID.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   Launched instance Job ID.
    #   @return [String]
    #
    # @!attribute [rw] first_boot
    #   Launched instance first boot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/LaunchedInstance AWS API Documentation
    #
    class LaunchedInstance < Struct.new(
      :ec2_instance_id,
      :job_id,
      :first_boot)
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
    # @!attribute [rw] first_byte_date_time
    #   Lifecycle replication initiation date and time.
    #   @return [String]
    #
    # @!attribute [rw] elapsed_replication_duration
    #   Lifecycle elapsed time and duration.
    #   @return [String]
    #
    # @!attribute [rw] last_seen_by_service_date_time
    #   Lifecycle last seen date and time.
    #   @return [String]
    #
    # @!attribute [rw] last_test
    #   Lifecycle last Test.
    #   @return [Types::LifeCycleLastTest]
    #
    # @!attribute [rw] last_cutover
    #   Lifecycle last Cutover.
    #   @return [Types::LifeCycleLastCutover]
    #
    # @!attribute [rw] state
    #   Lifecycle state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/LifeCycle AWS API Documentation
    #
    class LifeCycle < Struct.new(
      :added_to_service_date_time,
      :first_byte_date_time,
      :elapsed_replication_duration,
      :last_seen_by_service_date_time,
      :last_test,
      :last_cutover,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lifecycle last Cutover .
    #
    # @!attribute [rw] initiated
    #   Lifecycle last Cutover initiated.
    #   @return [Types::LifeCycleLastCutoverInitiated]
    #
    # @!attribute [rw] reverted
    #   Lifecycle last Cutover reverted.
    #   @return [Types::LifeCycleLastCutoverReverted]
    #
    # @!attribute [rw] finalized
    #   Lifecycle Cutover finalized date and time.
    #   @return [Types::LifeCycleLastCutoverFinalized]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/LifeCycleLastCutover AWS API Documentation
    #
    class LifeCycleLastCutover < Struct.new(
      :initiated,
      :reverted,
      :finalized)
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
    # @!attribute [rw] initiated
    #   Lifecycle last Test initiated.
    #   @return [Types::LifeCycleLastTestInitiated]
    #
    # @!attribute [rw] reverted
    #   Lifecycle last Test reverted.
    #   @return [Types::LifeCycleLastTestReverted]
    #
    # @!attribute [rw] finalized
    #   Lifecycle last Test finalized.
    #   @return [Types::LifeCycleLastTestFinalized]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/LifeCycleLastTest AWS API Documentation
    #
    class LifeCycleLastTest < Struct.new(
      :initiated,
      :reverted,
      :finalized)
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
    # @!attribute [rw] account_id
    #   Applications list Account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ListApplicationsRequest AWS API Documentation
    #
    class ListApplicationsRequest < Struct.new(
      :filters,
      :max_results,
      :next_token,
      :account_id)
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

    # @!attribute [rw] filters
    #   List Connectors Request filters.
    #   @return [Types::ListConnectorsRequestFilters]
    #
    # @!attribute [rw] max_results
    #   List Connectors Request max results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   List Connectors Request next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ListConnectorsRequest AWS API Documentation
    #
    class ListConnectorsRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # List Connectors Request Filters.
    #
    # @!attribute [rw] connector_i_ds
    #   List Connectors Request Filters connector IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ListConnectorsRequestFilters AWS API Documentation
    #
    class ListConnectorsRequestFilters < Struct.new(
      :connector_i_ds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   List connectors response items.
    #   @return [Array<Types::Connector>]
    #
    # @!attribute [rw] next_token
    #   List connectors response next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ListConnectorsResponse AWS API Documentation
    #
    class ListConnectorsResponse < Struct.new(
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

    # @!attribute [rw] source_server_id
    #   Source server ID.
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
    # @!attribute [rw] account_id
    #   Account ID to return when listing source server post migration
    #   custom actions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ListSourceServerActionsRequest AWS API Documentation
    #
    class ListSourceServerActionsRequest < Struct.new(
      :source_server_id,
      :filters,
      :max_results,
      :next_token,
      :account_id)
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

    # @!attribute [rw] launch_configuration_template_id
    #   Launch configuration template ID.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters to apply when listing template post migration custom
    #   actions.
    #   @return [Types::TemplateActionsRequestFilters]
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
      :launch_configuration_template_id,
      :filters,
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
    # @!attribute [rw] account_id
    #   Request account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ListWavesRequest AWS API Documentation
    #
    class ListWavesRequest < Struct.new(
      :filters,
      :max_results,
      :next_token,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Waves list filters.
    #
    # @!attribute [rw] wave_i_ds
    #   Filter waves list by wave ID.
    #   @return [Array<String>]
    #
    # @!attribute [rw] is_archived
    #   Filter waves list by archival status.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ListWavesRequestFilters AWS API Documentation
    #
    class ListWavesRequestFilters < Struct.new(
      :wave_i_ds,
      :is_archived)
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

    # @!attribute [rw] source_server_id
    #   Mark as archived by Source Server ID.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   Mark as archived by Account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/MarkAsArchivedRequest AWS API Documentation
    #
    class MarkAsArchivedRequest < Struct.new(
      :source_server_id,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Network interface.
    #
    # @!attribute [rw] mac_address
    #   Network interface Mac address.
    #   @return [String]
    #
    # @!attribute [rw] ips
    #   Network interface IPs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] is_primary
    #   Network interface primary IP.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/NetworkInterface AWS API Documentation
    #
    class NetworkInterface < Struct.new(
      :mac_address,
      :ips,
      :is_primary)
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
    # @!attribute [rw] source_server_id
    #   Participating server Source Server ID.
    #   @return [String]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ParticipatingServer AWS API Documentation
    #
    class ParticipatingServer < Struct.new(
      :source_server_id,
      :launch_status,
      :launched_ec2_instance_id,
      :post_launch_actions_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_server_id
    #   Pause Replication Request source server ID.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   Pause Replication Request account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/PauseReplicationRequest AWS API Documentation
    #
    class PauseReplicationRequest < Struct.new(
      :source_server_id,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Post Launch Actions to executed on the Test or Cutover instance.
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
    # @!attribute [rw] cloud_watch_log_group_name
    #   AWS Systems Manager Command's CloudWatch log group name.
    #   @return [String]
    #
    # @!attribute [rw] ssm_documents
    #   AWS Systems Manager Documents.
    #   @return [Array<Types::SsmDocument>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/PostLaunchActions AWS API Documentation
    #
    class PostLaunchActions < Struct.new(
      :deployment,
      :s3_log_bucket,
      :s3_output_key_prefix,
      :cloud_watch_log_group_name,
      :ssm_documents)
      SENSITIVE = []
      include Aws::Structure
    end

    # Status of the Post Launch Actions running on the Test or Cutover
    # instance.
    #
    # @!attribute [rw] ssm_agent_discovery_datetime
    #   Time where the AWS Systems Manager was detected as running on the
    #   Test or Cutover instance.
    #   @return [String]
    #
    # @!attribute [rw] post_launch_actions_launch_status_list
    #   List of Post Launch Action status.
    #   @return [Array<Types::JobPostLaunchActionsLaunchStatus>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/PostLaunchActionsStatus AWS API Documentation
    #
    class PostLaunchActionsStatus < Struct.new(
      :ssm_agent_discovery_datetime,
      :post_launch_actions_launch_status_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_server_id
    #   Source server ID.
    #   @return [String]
    #
    # @!attribute [rw] action_name
    #   Source server post migration custom action name.
    #   @return [String]
    #
    # @!attribute [rw] document_identifier
    #   Source server post migration custom action document identifier.
    #   @return [String]
    #
    # @!attribute [rw] order
    #   Source server post migration custom action order.
    #   @return [Integer]
    #
    # @!attribute [rw] action_id
    #   Source server post migration custom action ID.
    #   @return [String]
    #
    # @!attribute [rw] document_version
    #   Source server post migration custom action document version.
    #   @return [String]
    #
    # @!attribute [rw] active
    #   Source server post migration custom action active status.
    #   @return [Boolean]
    #
    # @!attribute [rw] timeout_seconds
    #   Source server post migration custom action timeout in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] must_succeed_for_cutover
    #   Source server post migration custom action must succeed for cutover.
    #   @return [Boolean]
    #
    # @!attribute [rw] parameters
    #   Source server post migration custom action parameters.
    #   @return [Hash<String,Array<Types::SsmParameterStoreParameter>>]
    #
    # @!attribute [rw] external_parameters
    #   Source server post migration custom action external parameters.
    #   @return [Hash<String,Types::SsmExternalParameter>]
    #
    # @!attribute [rw] description
    #   Source server post migration custom action description.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   Source server post migration custom action category.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   Source server post migration custom account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/PutSourceServerActionRequest AWS API Documentation
    #
    class PutSourceServerActionRequest < Struct.new(
      :source_server_id,
      :action_name,
      :document_identifier,
      :order,
      :action_id,
      :document_version,
      :active,
      :timeout_seconds,
      :must_succeed_for_cutover,
      :parameters,
      :external_parameters,
      :description,
      :category,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] launch_configuration_template_id
    #   Launch configuration template ID.
    #   @return [String]
    #
    # @!attribute [rw] action_name
    #   Template post migration custom action name.
    #   @return [String]
    #
    # @!attribute [rw] document_identifier
    #   Template post migration custom action document identifier.
    #   @return [String]
    #
    # @!attribute [rw] order
    #   Template post migration custom action order.
    #   @return [Integer]
    #
    # @!attribute [rw] action_id
    #   Template post migration custom action ID.
    #   @return [String]
    #
    # @!attribute [rw] document_version
    #   Template post migration custom action document version.
    #   @return [String]
    #
    # @!attribute [rw] active
    #   Template post migration custom action active status.
    #   @return [Boolean]
    #
    # @!attribute [rw] timeout_seconds
    #   Template post migration custom action timeout in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] must_succeed_for_cutover
    #   Template post migration custom action must succeed for cutover.
    #   @return [Boolean]
    #
    # @!attribute [rw] parameters
    #   Template post migration custom action parameters.
    #   @return [Hash<String,Array<Types::SsmParameterStoreParameter>>]
    #
    # @!attribute [rw] operating_system
    #   Operating system eligible for this template post migration custom
    #   action.
    #   @return [String]
    #
    # @!attribute [rw] external_parameters
    #   Template post migration custom action external parameters.
    #   @return [Hash<String,Types::SsmExternalParameter>]
    #
    # @!attribute [rw] description
    #   Template post migration custom action description.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   Template post migration custom action category.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/PutTemplateActionRequest AWS API Documentation
    #
    class PutTemplateActionRequest < Struct.new(
      :launch_configuration_template_id,
      :action_name,
      :document_identifier,
      :order,
      :action_id,
      :document_version,
      :active,
      :timeout_seconds,
      :must_succeed_for_cutover,
      :parameters,
      :operating_system,
      :external_parameters,
      :description,
      :category)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_server_id
    #   Source server ID of the post migration custom action to remove.
    #   @return [String]
    #
    # @!attribute [rw] action_id
    #   Source server post migration custom action ID to remove.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   Source server post migration account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/RemoveSourceServerActionRequest AWS API Documentation
    #
    class RemoveSourceServerActionRequest < Struct.new(
      :source_server_id,
      :action_id,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/RemoveSourceServerActionResponse AWS API Documentation
    #
    class RemoveSourceServerActionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] launch_configuration_template_id
    #   Launch configuration template ID of the post migration custom action
    #   to remove.
    #   @return [String]
    #
    # @!attribute [rw] action_id
    #   Template post migration custom action ID to remove.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/RemoveTemplateActionRequest AWS API Documentation
    #
    class RemoveTemplateActionRequest < Struct.new(
      :launch_configuration_template_id,
      :action_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/RemoveTemplateActionResponse AWS API Documentation
    #
    class RemoveTemplateActionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] source_server_id
    #   Replication Configuration Source Server ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Replication Configuration name.
    #   @return [String]
    #
    # @!attribute [rw] staging_area_subnet_id
    #   Replication Configuration Staging Area subnet ID.
    #   @return [String]
    #
    # @!attribute [rw] associate_default_security_group
    #   Replication Configuration associate default Application Migration
    #   Service Security Group.
    #   @return [Boolean]
    #
    # @!attribute [rw] replication_servers_security_groups_i_ds
    #   Replication Configuration Replication Server Security Group IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] replication_server_instance_type
    #   Replication Configuration Replication Server instance type.
    #   @return [String]
    #
    # @!attribute [rw] use_dedicated_replication_server
    #   Replication Configuration use Dedicated Replication Server.
    #   @return [Boolean]
    #
    # @!attribute [rw] default_large_staging_disk_type
    #   Replication Configuration use default large Staging Disks.
    #   @return [String]
    #
    # @!attribute [rw] replicated_disks
    #   Replication Configuration replicated disks.
    #   @return [Array<Types::ReplicationConfigurationReplicatedDisk>]
    #
    # @!attribute [rw] ebs_encryption
    #   Replication Configuration EBS encryption.
    #   @return [String]
    #
    # @!attribute [rw] ebs_encryption_key_arn
    #   Replication Configuration EBS encryption key ARN.
    #   @return [String]
    #
    # @!attribute [rw] bandwidth_throttling
    #   Replication Configuration set bandwidth throttling.
    #   @return [Integer]
    #
    # @!attribute [rw] data_plane_routing
    #   Replication Configuration data plane routing.
    #   @return [String]
    #
    # @!attribute [rw] create_public_ip
    #   Replication Configuration create Public IP.
    #   @return [Boolean]
    #
    # @!attribute [rw] staging_area_tags
    #   Replication Configuration Staging Area tags.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] use_fips_endpoint
    #   Replication Configuration use Fips Endpoint.
    #   @return [Boolean]
    #
    # @!attribute [rw] internet_protocol
    #   Replication Configuration internet protocol.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ReplicationConfiguration AWS API Documentation
    #
    class ReplicationConfiguration < Struct.new(
      :source_server_id,
      :name,
      :staging_area_subnet_id,
      :associate_default_security_group,
      :replication_servers_security_groups_i_ds,
      :replication_server_instance_type,
      :use_dedicated_replication_server,
      :default_large_staging_disk_type,
      :replicated_disks,
      :ebs_encryption,
      :ebs_encryption_key_arn,
      :bandwidth_throttling,
      :data_plane_routing,
      :create_public_ip,
      :staging_area_tags,
      :use_fips_endpoint,
      :internet_protocol)
      SENSITIVE = [:staging_area_tags]
      include Aws::Structure
    end

    # Replication Configuration replicated disk.
    #
    # @!attribute [rw] device_name
    #   Replication Configuration replicated disk device name.
    #   @return [String]
    #
    # @!attribute [rw] is_boot_disk
    #   Replication Configuration replicated disk boot disk.
    #   @return [Boolean]
    #
    # @!attribute [rw] staging_disk_type
    #   Replication Configuration replicated disk staging disk type.
    #   @return [String]
    #
    # @!attribute [rw] iops
    #   Replication Configuration replicated disk IOPs.
    #   @return [Integer]
    #
    # @!attribute [rw] throughput
    #   Replication Configuration replicated disk throughput.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ReplicationConfigurationReplicatedDisk AWS API Documentation
    #
    class ReplicationConfigurationReplicatedDisk < Struct.new(
      :device_name,
      :is_boot_disk,
      :staging_disk_type,
      :iops,
      :throughput)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_configuration_template_id
    #   Replication Configuration template ID.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   Replication Configuration template ARN.
    #   @return [String]
    #
    # @!attribute [rw] staging_area_subnet_id
    #   Replication Configuration template Staging Area subnet ID.
    #   @return [String]
    #
    # @!attribute [rw] associate_default_security_group
    #   Replication Configuration template associate default Application
    #   Migration Service Security group.
    #   @return [Boolean]
    #
    # @!attribute [rw] replication_servers_security_groups_i_ds
    #   Replication Configuration template server Security Groups IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] replication_server_instance_type
    #   Replication Configuration template server instance type.
    #   @return [String]
    #
    # @!attribute [rw] use_dedicated_replication_server
    #   Replication Configuration template use Dedicated Replication Server.
    #   @return [Boolean]
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
    # @!attribute [rw] bandwidth_throttling
    #   Replication Configuration template bandwidth throttling.
    #   @return [Integer]
    #
    # @!attribute [rw] data_plane_routing
    #   Replication Configuration template data plane routing.
    #   @return [String]
    #
    # @!attribute [rw] create_public_ip
    #   Replication Configuration template create Public IP.
    #   @return [Boolean]
    #
    # @!attribute [rw] staging_area_tags
    #   Replication Configuration template Staging Area Tags.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] use_fips_endpoint
    #   Replication Configuration template use Fips Endpoint.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   Replication Configuration template Tags.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] internet_protocol
    #   Replication Configuration template internet protocol.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ReplicationConfigurationTemplate AWS API Documentation
    #
    class ReplicationConfigurationTemplate < Struct.new(
      :replication_configuration_template_id,
      :arn,
      :staging_area_subnet_id,
      :associate_default_security_group,
      :replication_servers_security_groups_i_ds,
      :replication_server_instance_type,
      :use_dedicated_replication_server,
      :default_large_staging_disk_type,
      :ebs_encryption,
      :ebs_encryption_key_arn,
      :bandwidth_throttling,
      :data_plane_routing,
      :create_public_ip,
      :staging_area_tags,
      :use_fips_endpoint,
      :tags,
      :internet_protocol)
      SENSITIVE = [:staging_area_tags, :tags]
      include Aws::Structure
    end

    # Resource not found exception.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
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
      :message,
      :code,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_server_id
    #   Resume Replication Request source server ID.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   Resume Replication Request account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ResumeReplicationRequest AWS API Documentation
    #
    class ResumeReplicationRequest < Struct.new(
      :source_server_id,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_server_id
    #   Retry data replication for Source Server ID.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   Retry data replication for Account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/RetryDataReplicationRequest AWS API Documentation
    #
    class RetryDataReplicationRequest < Struct.new(
      :source_server_id,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # S3 bucket source.
    #
    # @!attribute [rw] s3_bucket
    #   S3 bucket source s3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] s3_key
    #   S3 bucket source s3 key.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_owner
    #   S3 bucket source s3 bucket owner.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/S3BucketSource AWS API Documentation
    #
    class S3BucketSource < Struct.new(
      :s3_bucket,
      :s3_key,
      :s3_bucket_owner)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request could not be completed because its exceeded the service
    # quota.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
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
    # @!attribute [rw] quota_code
    #   Exceeded the service quota code.
    #   @return [String]
    #
    # @!attribute [rw] quota_value
    #   Exceeded the service quota value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :code,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code,
      :quota_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Source server properties.
    #
    # @!attribute [rw] last_updated_date_time
    #   Source server last update date and time.
    #   @return [String]
    #
    # @!attribute [rw] recommended_instance_type
    #   Source server recommended instance type.
    #   @return [String]
    #
    # @!attribute [rw] identification_hints
    #   Source server identification hints.
    #   @return [Types::IdentificationHints]
    #
    # @!attribute [rw] network_interfaces
    #   Source server network interfaces.
    #   @return [Array<Types::NetworkInterface>]
    #
    # @!attribute [rw] disks
    #   Source Server disks.
    #   @return [Array<Types::Disk>]
    #
    # @!attribute [rw] cpus
    #   Source Server CPUs.
    #   @return [Array<Types::CPU>]
    #
    # @!attribute [rw] ram_bytes
    #   Source server RAM in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] os
    #   Source server OS.
    #   @return [Types::OS]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/SourceProperties AWS API Documentation
    #
    class SourceProperties < Struct.new(
      :last_updated_date_time,
      :recommended_instance_type,
      :identification_hints,
      :network_interfaces,
      :disks,
      :cpus,
      :ram_bytes,
      :os)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_server_id
    #   Source server ID.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   Source server ARN.
    #   @return [String]
    #
    # @!attribute [rw] is_archived
    #   Source server archived status.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   Source server Tags.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] launched_instance
    #   Source server launched instance.
    #   @return [Types::LaunchedInstance]
    #
    # @!attribute [rw] data_replication_info
    #   Source server data replication info.
    #   @return [Types::DataReplicationInfo]
    #
    # @!attribute [rw] life_cycle
    #   Source server lifecycle state.
    #   @return [Types::LifeCycle]
    #
    # @!attribute [rw] source_properties
    #   Source server properties.
    #   @return [Types::SourceProperties]
    #
    # @!attribute [rw] replication_type
    #   Source server replication type.
    #   @return [String]
    #
    # @!attribute [rw] vcenter_client_id
    #   Source server vCenter client id.
    #   @return [String]
    #
    # @!attribute [rw] application_id
    #   Source server application ID.
    #   @return [String]
    #
    # @!attribute [rw] user_provided_id
    #   Source server user provided ID.
    #   @return [String]
    #
    # @!attribute [rw] fqdn_for_action_framework
    #   Source server fqdn for action framework.
    #   @return [String]
    #
    # @!attribute [rw] connector_action
    #   Source Server connector action.
    #   @return [Types::SourceServerConnectorAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/SourceServer AWS API Documentation
    #
    class SourceServer < Struct.new(
      :source_server_id,
      :arn,
      :is_archived,
      :tags,
      :launched_instance,
      :data_replication_info,
      :life_cycle,
      :source_properties,
      :replication_type,
      :vcenter_client_id,
      :application_id,
      :user_provided_id,
      :fqdn_for_action_framework,
      :connector_action)
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
    # @!attribute [rw] document_identifier
    #   Source server post migration custom action document identifier.
    #   @return [String]
    #
    # @!attribute [rw] order
    #   Source server post migration custom action order.
    #   @return [Integer]
    #
    # @!attribute [rw] document_version
    #   Source server post migration custom action document version.
    #   @return [String]
    #
    # @!attribute [rw] active
    #   Source server post migration custom action active status.
    #   @return [Boolean]
    #
    # @!attribute [rw] timeout_seconds
    #   Source server post migration custom action timeout in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] must_succeed_for_cutover
    #   Source server post migration custom action must succeed for cutover.
    #   @return [Boolean]
    #
    # @!attribute [rw] parameters
    #   Source server post migration custom action parameters.
    #   @return [Hash<String,Array<Types::SsmParameterStoreParameter>>]
    #
    # @!attribute [rw] external_parameters
    #   Source server post migration custom action external parameters.
    #   @return [Hash<String,Types::SsmExternalParameter>]
    #
    # @!attribute [rw] description
    #   Source server post migration custom action description.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   Source server post migration custom action category.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/SourceServerActionDocument AWS API Documentation
    #
    class SourceServerActionDocument < Struct.new(
      :action_id,
      :action_name,
      :document_identifier,
      :order,
      :document_version,
      :active,
      :timeout_seconds,
      :must_succeed_for_cutover,
      :parameters,
      :external_parameters,
      :description,
      :category)
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

    # Source Server connector action.
    #
    # @!attribute [rw] credentials_secret_arn
    #   Source Server connector action credentials secret arn.
    #   @return [String]
    #
    # @!attribute [rw] connector_arn
    #   Source Server connector action connector arn.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/SourceServerConnectorAction AWS API Documentation
    #
    class SourceServerConnectorAction < Struct.new(
      :credentials_secret_arn,
      :connector_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # AWS Systems Manager Document.
    #
    # @!attribute [rw] action_name
    #   User-friendly name for the AWS Systems Manager Document.
    #   @return [String]
    #
    # @!attribute [rw] ssm_document_name
    #   AWS Systems Manager Document name or full ARN.
    #   @return [String]
    #
    # @!attribute [rw] timeout_seconds
    #   AWS Systems Manager Document timeout seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] must_succeed_for_cutover
    #   If true, Cutover will not be enabled if the document has failed.
    #   @return [Boolean]
    #
    # @!attribute [rw] parameters
    #   AWS Systems Manager Document parameters.
    #   @return [Hash<String,Array<Types::SsmParameterStoreParameter>>]
    #
    # @!attribute [rw] external_parameters
    #   AWS Systems Manager Document external parameters.
    #   @return [Hash<String,Types::SsmExternalParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/SsmDocument AWS API Documentation
    #
    class SsmDocument < Struct.new(
      :action_name,
      :ssm_document_name,
      :timeout_seconds,
      :must_succeed_for_cutover,
      :parameters,
      :external_parameters)
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
    # @!attribute [rw] parameter_type
    #   AWS Systems Manager Parameter Store parameter type.
    #   @return [String]
    #
    # @!attribute [rw] parameter_name
    #   AWS Systems Manager Parameter Store parameter name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/SsmParameterStoreParameter AWS API Documentation
    #
    class SsmParameterStoreParameter < Struct.new(
      :parameter_type,
      :parameter_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_server_i_ds
    #   Start Cutover by Source Server IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Start Cutover by Tags.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] account_id
    #   Start Cutover by Account IDs
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/StartCutoverRequest AWS API Documentation
    #
    class StartCutoverRequest < Struct.new(
      :source_server_i_ds,
      :tags,
      :account_id)
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
    # @!attribute [rw] s3_key
    #   Start export request s3key.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_owner
    #   Start export request s3 bucket owner.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Start import request tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/StartExportRequest AWS API Documentation
    #
    class StartExportRequest < Struct.new(
      :s3_bucket,
      :s3_key,
      :s3_bucket_owner,
      :tags)
      SENSITIVE = [:tags]
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
    # @!attribute [rw] tags
    #   Start import request tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/StartImportRequest AWS API Documentation
    #
    class StartImportRequest < Struct.new(
      :client_token,
      :s3_bucket_source,
      :tags)
      SENSITIVE = [:tags]
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

    # @!attribute [rw] source_server_id
    #   ID of source server on which to start replication.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   Account ID on which to start replication.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/StartReplicationRequest AWS API Documentation
    #
    class StartReplicationRequest < Struct.new(
      :source_server_id,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_server_i_ds
    #   Start Test for Source Server IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Start Test by Tags.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] account_id
    #   Start Test for Account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/StartTestRequest AWS API Documentation
    #
    class StartTestRequest < Struct.new(
      :source_server_i_ds,
      :tags,
      :account_id)
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

    # @!attribute [rw] source_server_id
    #   Stop Replication Request source server ID.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   Stop Replication Request account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/StopReplicationRequest AWS API Documentation
    #
    class StopReplicationRequest < Struct.new(
      :source_server_id,
      :account_id)
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
    # @!attribute [rw] document_identifier
    #   Template post migration custom action document identifier.
    #   @return [String]
    #
    # @!attribute [rw] order
    #   Template post migration custom action order.
    #   @return [Integer]
    #
    # @!attribute [rw] document_version
    #   Template post migration custom action document version.
    #   @return [String]
    #
    # @!attribute [rw] active
    #   Template post migration custom action active status.
    #   @return [Boolean]
    #
    # @!attribute [rw] timeout_seconds
    #   Template post migration custom action timeout in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] must_succeed_for_cutover
    #   Template post migration custom action must succeed for cutover.
    #   @return [Boolean]
    #
    # @!attribute [rw] parameters
    #   Template post migration custom action parameters.
    #   @return [Hash<String,Array<Types::SsmParameterStoreParameter>>]
    #
    # @!attribute [rw] operating_system
    #   Operating system eligible for this template post migration custom
    #   action.
    #   @return [String]
    #
    # @!attribute [rw] external_parameters
    #   Template post migration custom action external parameters.
    #   @return [Hash<String,Types::SsmExternalParameter>]
    #
    # @!attribute [rw] description
    #   Template post migration custom action description.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   Template post migration custom action category.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/TemplateActionDocument AWS API Documentation
    #
    class TemplateActionDocument < Struct.new(
      :action_id,
      :action_name,
      :document_identifier,
      :order,
      :document_version,
      :active,
      :timeout_seconds,
      :must_succeed_for_cutover,
      :parameters,
      :operating_system,
      :external_parameters,
      :description,
      :category)
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

    # @!attribute [rw] source_server_i_ds
    #   Terminate Target instance by Source Server IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Terminate Target instance by Tags.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] account_id
    #   Terminate Target instance by Account ID
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/TerminateTargetInstancesRequest AWS API Documentation
    #
    class TerminateTargetInstancesRequest < Struct.new(
      :source_server_i_ds,
      :tags,
      :account_id)
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
    # @!attribute [rw] service_code
    #   Reached throttling quota exception service code.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   Application ID.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   Account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/UnarchiveApplicationRequest AWS API Documentation
    #
    class UnarchiveApplicationRequest < Struct.new(
      :application_id,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] wave_id
    #   Wave ID.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   Account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/UnarchiveWaveRequest AWS API Documentation
    #
    class UnarchiveWaveRequest < Struct.new(
      :wave_id,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Uninitialized account exception.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/UninitializedAccountException AWS API Documentation
    #
    class UninitializedAccountException < Struct.new(
      :message,
      :code)
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

    # @!attribute [rw] application_id
    #   Application ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Application name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Application description.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   Account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/UpdateApplicationRequest AWS API Documentation
    #
    class UpdateApplicationRequest < Struct.new(
      :application_id,
      :name,
      :description,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connector_id
    #   Update Connector request connector ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Update Connector request name.
    #   @return [String]
    #
    # @!attribute [rw] ssm_command_config
    #   Update Connector request SSM command config.
    #   @return [Types::ConnectorSsmCommandConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/UpdateConnectorRequest AWS API Documentation
    #
    class UpdateConnectorRequest < Struct.new(
      :connector_id,
      :name,
      :ssm_command_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_server_id
    #   Update Launch configuration by Source Server ID request.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Update Launch configuration name request.
    #   @return [String]
    #
    # @!attribute [rw] launch_disposition
    #   Update Launch configuration launch disposition request.
    #   @return [String]
    #
    # @!attribute [rw] target_instance_type_right_sizing_method
    #   Update Launch configuration Target instance right sizing request.
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
    # @!attribute [rw] licensing
    #   Update Launch configuration licensing request.
    #   @return [Types::Licensing]
    #
    # @!attribute [rw] boot_mode
    #   Update Launch configuration boot mode request.
    #   @return [String]
    #
    # @!attribute [rw] post_launch_actions
    #   Post Launch Actions to executed on the Test or Cutover instance.
    #   @return [Types::PostLaunchActions]
    #
    # @!attribute [rw] enable_map_auto_tagging
    #   Enable map auto tagging.
    #   @return [Boolean]
    #
    # @!attribute [rw] map_auto_tagging_mpe_id
    #   Launch configuration map auto tagging MPE ID.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   Update Launch configuration Account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/UpdateLaunchConfigurationRequest AWS API Documentation
    #
    class UpdateLaunchConfigurationRequest < Struct.new(
      :source_server_id,
      :name,
      :launch_disposition,
      :target_instance_type_right_sizing_method,
      :copy_private_ip,
      :copy_tags,
      :licensing,
      :boot_mode,
      :post_launch_actions,
      :enable_map_auto_tagging,
      :map_auto_tagging_mpe_id,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] launch_configuration_template_id
    #   Launch Configuration Template ID.
    #   @return [String]
    #
    # @!attribute [rw] post_launch_actions
    #   Post Launch Action to execute on the Test or Cutover instance.
    #   @return [Types::PostLaunchActions]
    #
    # @!attribute [rw] enable_map_auto_tagging
    #   Enable map auto tagging.
    #   @return [Boolean]
    #
    # @!attribute [rw] map_auto_tagging_mpe_id
    #   Launch configuration template map auto tagging MPE ID.
    #   @return [String]
    #
    # @!attribute [rw] launch_disposition
    #   Launch disposition.
    #   @return [String]
    #
    # @!attribute [rw] target_instance_type_right_sizing_method
    #   Target instance type right-sizing method.
    #   @return [String]
    #
    # @!attribute [rw] copy_private_ip
    #   Copy private Ip.
    #   @return [Boolean]
    #
    # @!attribute [rw] associate_public_ip_address
    #   Associate public Ip address.
    #   @return [Boolean]
    #
    # @!attribute [rw] copy_tags
    #   Copy tags.
    #   @return [Boolean]
    #
    # @!attribute [rw] licensing
    #   Configure Licensing.
    #   @return [Types::Licensing]
    #
    # @!attribute [rw] boot_mode
    #   Launch configuration template boot mode.
    #   @return [String]
    #
    # @!attribute [rw] small_volume_max_size
    #   Small volume maximum size.
    #   @return [Integer]
    #
    # @!attribute [rw] small_volume_conf
    #   Small volume config.
    #   @return [Types::LaunchTemplateDiskConf]
    #
    # @!attribute [rw] large_volume_conf
    #   Large volume config.
    #   @return [Types::LaunchTemplateDiskConf]
    #
    # @!attribute [rw] enable_parameters_encryption
    #   Enable parameters encryption.
    #   @return [Boolean]
    #
    # @!attribute [rw] parameters_encryption_key
    #   Parameters encryption key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/UpdateLaunchConfigurationTemplateRequest AWS API Documentation
    #
    class UpdateLaunchConfigurationTemplateRequest < Struct.new(
      :launch_configuration_template_id,
      :post_launch_actions,
      :enable_map_auto_tagging,
      :map_auto_tagging_mpe_id,
      :launch_disposition,
      :target_instance_type_right_sizing_method,
      :copy_private_ip,
      :associate_public_ip_address,
      :copy_tags,
      :licensing,
      :boot_mode,
      :small_volume_max_size,
      :small_volume_conf,
      :large_volume_conf,
      :enable_parameters_encryption,
      :parameters_encryption_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_server_id
    #   Update replication configuration Source Server ID request.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Update replication configuration name request.
    #   @return [String]
    #
    # @!attribute [rw] staging_area_subnet_id
    #   Update replication configuration Staging Area subnet request.
    #   @return [String]
    #
    # @!attribute [rw] associate_default_security_group
    #   Update replication configuration associate default Application
    #   Migration Service Security group request.
    #   @return [Boolean]
    #
    # @!attribute [rw] replication_servers_security_groups_i_ds
    #   Update replication configuration Replication Server Security Groups
    #   IDs request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] replication_server_instance_type
    #   Update replication configuration Replication Server instance type
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] use_dedicated_replication_server
    #   Update replication configuration use dedicated Replication Server
    #   request.
    #   @return [Boolean]
    #
    # @!attribute [rw] default_large_staging_disk_type
    #   Update replication configuration use default large Staging Disk type
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] replicated_disks
    #   Update replication configuration replicated disks request.
    #   @return [Array<Types::ReplicationConfigurationReplicatedDisk>]
    #
    # @!attribute [rw] ebs_encryption
    #   Update replication configuration EBS encryption request.
    #   @return [String]
    #
    # @!attribute [rw] ebs_encryption_key_arn
    #   Update replication configuration EBS encryption key ARN request.
    #   @return [String]
    #
    # @!attribute [rw] bandwidth_throttling
    #   Update replication configuration bandwidth throttling request.
    #   @return [Integer]
    #
    # @!attribute [rw] data_plane_routing
    #   Update replication configuration data plane routing request.
    #   @return [String]
    #
    # @!attribute [rw] create_public_ip
    #   Update replication configuration create Public IP request.
    #   @return [Boolean]
    #
    # @!attribute [rw] staging_area_tags
    #   Update replication configuration Staging Area Tags request.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] use_fips_endpoint
    #   Update replication configuration use Fips Endpoint.
    #   @return [Boolean]
    #
    # @!attribute [rw] account_id
    #   Update replication configuration Account ID request.
    #   @return [String]
    #
    # @!attribute [rw] internet_protocol
    #   Update replication configuration internet protocol.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/UpdateReplicationConfigurationRequest AWS API Documentation
    #
    class UpdateReplicationConfigurationRequest < Struct.new(
      :source_server_id,
      :name,
      :staging_area_subnet_id,
      :associate_default_security_group,
      :replication_servers_security_groups_i_ds,
      :replication_server_instance_type,
      :use_dedicated_replication_server,
      :default_large_staging_disk_type,
      :replicated_disks,
      :ebs_encryption,
      :ebs_encryption_key_arn,
      :bandwidth_throttling,
      :data_plane_routing,
      :create_public_ip,
      :staging_area_tags,
      :use_fips_endpoint,
      :account_id,
      :internet_protocol)
      SENSITIVE = [:staging_area_tags]
      include Aws::Structure
    end

    # @!attribute [rw] replication_configuration_template_id
    #   Update replication configuration template template ID request.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   Update replication configuration template ARN request.
    #   @return [String]
    #
    # @!attribute [rw] staging_area_subnet_id
    #   Update replication configuration template Staging Area subnet ID
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] associate_default_security_group
    #   Update replication configuration template associate default
    #   Application Migration Service Security group request.
    #   @return [Boolean]
    #
    # @!attribute [rw] replication_servers_security_groups_i_ds
    #   Update replication configuration template Replication Server
    #   Security groups IDs request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] replication_server_instance_type
    #   Update replication configuration template Replication Server
    #   instance type request.
    #   @return [String]
    #
    # @!attribute [rw] use_dedicated_replication_server
    #   Update replication configuration template use dedicated Replication
    #   Server request.
    #   @return [Boolean]
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
    # @!attribute [rw] bandwidth_throttling
    #   Update replication configuration template bandwidth throttling
    #   request.
    #   @return [Integer]
    #
    # @!attribute [rw] data_plane_routing
    #   Update replication configuration template data plane routing
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] create_public_ip
    #   Update replication configuration template create Public IP request.
    #   @return [Boolean]
    #
    # @!attribute [rw] staging_area_tags
    #   Update replication configuration template Staging Area Tags request.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] use_fips_endpoint
    #   Update replication configuration template use Fips Endpoint request.
    #   @return [Boolean]
    #
    # @!attribute [rw] internet_protocol
    #   Update replication configuration template internet protocol request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/UpdateReplicationConfigurationTemplateRequest AWS API Documentation
    #
    class UpdateReplicationConfigurationTemplateRequest < Struct.new(
      :replication_configuration_template_id,
      :arn,
      :staging_area_subnet_id,
      :associate_default_security_group,
      :replication_servers_security_groups_i_ds,
      :replication_server_instance_type,
      :use_dedicated_replication_server,
      :default_large_staging_disk_type,
      :ebs_encryption,
      :ebs_encryption_key_arn,
      :bandwidth_throttling,
      :data_plane_routing,
      :create_public_ip,
      :staging_area_tags,
      :use_fips_endpoint,
      :internet_protocol)
      SENSITIVE = [:staging_area_tags]
      include Aws::Structure
    end

    # @!attribute [rw] source_server_id
    #   ID of source server on which to update replication type.
    #   @return [String]
    #
    # @!attribute [rw] replication_type
    #   Replication type to which to update source server.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   Account ID on which to update replication type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/UpdateSourceServerReplicationTypeRequest AWS API Documentation
    #
    class UpdateSourceServerReplicationTypeRequest < Struct.new(
      :source_server_id,
      :replication_type,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   Update Source Server request account ID.
    #   @return [String]
    #
    # @!attribute [rw] source_server_id
    #   Update Source Server request source server ID.
    #   @return [String]
    #
    # @!attribute [rw] connector_action
    #   Update Source Server request connector action.
    #   @return [Types::SourceServerConnectorAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/UpdateSourceServerRequest AWS API Documentation
    #
    class UpdateSourceServerRequest < Struct.new(
      :account_id,
      :source_server_id,
      :connector_action)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] wave_id
    #   Wave ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Wave name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Wave description.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   Account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/UpdateWaveRequest AWS API Documentation
    #
    class UpdateWaveRequest < Struct.new(
      :wave_id,
      :name,
      :description,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Validate exception.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   Validate exception reason.
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   Validate exception field list.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :code,
      :reason,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Validate exception field.
    #
    # @!attribute [rw] name
    #   Validate exception field name.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Validate exception field message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # vCenter client.
    #
    # @!attribute [rw] vcenter_client_id
    #   ID of vCenter client.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   Arn of vCenter client.
    #   @return [String]
    #
    # @!attribute [rw] hostname
    #   Hostname of vCenter client .
    #   @return [String]
    #
    # @!attribute [rw] vcenter_uuid
    #   Vcenter UUID of vCenter client.
    #   @return [String]
    #
    # @!attribute [rw] datacenter_name
    #   Datacenter name of vCenter client.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/VcenterClient AWS API Documentation
    #
    class VcenterClient < Struct.new(
      :vcenter_client_id,
      :arn,
      :hostname,
      :vcenter_uuid,
      :datacenter_name,
      :last_seen_datetime,
      :source_server_tags,
      :tags)
      SENSITIVE = [:source_server_tags, :tags]
      include Aws::Structure
    end

    # @!attribute [rw] wave_id
    #   Wave ID.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   Wave ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Wave name.
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
    # @!attribute [rw] wave_aggregated_status
    #   Wave aggregated status.
    #   @return [Types::WaveAggregatedStatus]
    #
    # @!attribute [rw] creation_date_time
    #   Wave creation dateTime.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date_time
    #   Wave last modified dateTime.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Wave tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/Wave AWS API Documentation
    #
    class Wave < Struct.new(
      :wave_id,
      :arn,
      :name,
      :description,
      :is_archived,
      :wave_aggregated_status,
      :creation_date_time,
      :last_modified_date_time,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # Wave aggregated status.
    #
    # @!attribute [rw] last_update_date_time
    #   Wave aggregated status last update dateTime.
    #   @return [String]
    #
    # @!attribute [rw] replication_started_date_time
    #   DateTime marking when the first source server in the wave started
    #   replication.
    #   @return [String]
    #
    # @!attribute [rw] health_status
    #   Wave aggregated status health status.
    #   @return [String]
    #
    # @!attribute [rw] progress_status
    #   Wave aggregated status progress status.
    #   @return [String]
    #
    # @!attribute [rw] total_applications
    #   Wave aggregated status total applications amount.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/WaveAggregatedStatus AWS API Documentation
    #
    class WaveAggregatedStatus < Struct.new(
      :last_update_date_time,
      :replication_started_date_time,
      :health_status,
      :progress_status,
      :total_applications)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

