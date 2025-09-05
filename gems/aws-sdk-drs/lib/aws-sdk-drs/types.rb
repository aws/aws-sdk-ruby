# frozen_string_literal: true

# This is generated code!

module Aws::Drs
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      :code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>AWS account.</p>
    # @!attribute account_id
    #   <p>Account ID of AWS account.</p>
    #   @return [String]
    class Account < Struct.new(
      :account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_network_id
    #   <p>The Source Network ID to associate with CloudFormation template.</p>
    #   @return [String]
    # @!attribute cfn_stack_name
    #   <p>CloudFormation template to associate with a Source Network.</p>
    #   @return [String]
    class AssociateSourceNetworkStackRequest < Struct.new(
      :source_network_id,
      :cfn_stack_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job
    #   <p>The Source Network association Job.</p>
    #   @return [Types::Job]
    class AssociateSourceNetworkStackResponse < Struct.new(
      :job,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a server's CPU.</p>
    # @!attribute cores
    #   <p>The number of CPU cores.</p>
    #   @return [Integer]
    # @!attribute model_name
    #   <p>The model name of the CPU.</p>
    #   @return [String]
    class CPU < Struct.new(
      :cores,
      :model_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:cores] = 0 unless options.key?(:cores)
        super
      end
    end

    # <p>The request could not be completed due to a conflict with the current state of the target resource.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      :code,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Properties of a conversion job</p>
    # @!attribute volume_to_conversion_map
    #   <p>A mapping between the volumes being converted and the converted snapshot ids</p>
    #   @return [Hash<String, Hash<String, String>>]
    # @!attribute root_volume_name
    #   <p>The root volume name of a conversion job</p>
    #   @return [String]
    # @!attribute force_uefi
    #   <p>Whether the volume being converted uses UEFI or not</p>
    #   @return [Boolean]
    # @!attribute data_timestamp
    #   <p>The timestamp of when the snapshot being converted was taken</p>
    #   @return [String]
    # @!attribute volume_to_volume_size
    #   <p>A mapping between the volumes and their sizes</p>
    #   @return [Hash<String, Integer>]
    # @!attribute volume_to_product_codes
    #   <p>A mapping between the volumes being converted and the product codes associated with them</p>
    #   @return [Hash<String, Array<Types::ProductCode>>]
    class ConversionProperties < Struct.new(
      :volume_to_conversion_map,
      :root_volume_name,
      :force_uefi,
      :data_timestamp,
      :volume_to_volume_size,
      :volume_to_product_codes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_server_arn
    #   <p>This defines the ARN of the source server in staging Account based on which you want to create an extended source server.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags associated with the extended source server.</p>
    #   @return [Hash<String, String>]
    class CreateExtendedSourceServerInput < Struct.new(
      :source_server_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_server
    #   <p>Created extended source server.</p>
    #   @return [Types::SourceServer]
    class CreateExtendedSourceServerOutput < Struct.new(
      :source_server,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>Request to associate tags during creation of a Launch Configuration Template.</p>
    #   @return [Hash<String, String>]
    # @!attribute launch_disposition
    #   <p>Launch disposition.</p>
    #   @return [String]
    # @!attribute target_instance_type_right_sizing_method
    #   <p>Target instance type right-sizing method.</p>
    #   @return [String]
    # @!attribute copy_private_ip
    #   <p>Copy private IP.</p>
    #   @return [Boolean]
    # @!attribute copy_tags
    #   <p>Copy tags.</p>
    #   @return [Boolean]
    # @!attribute licensing
    #   <p>Licensing.</p>
    #   @return [Types::Licensing]
    # @!attribute export_bucket_arn
    #   <p>S3 bucket ARN to export Source Network templates.</p>
    #   @return [String]
    # @!attribute post_launch_enabled
    #   <p>Whether we want to activate post-launch actions.</p>
    #   @return [Boolean]
    # @!attribute launch_into_source_instance
    #   <p>DRS will set the 'launch into instance ID' of any source server when performing a drill, recovery or failback to the previous region or availability zone, using the instance ID of the source instance.</p>
    #   @return [Boolean]
    class CreateLaunchConfigurationTemplateInput < Struct.new(
      :tags,
      :launch_disposition,
      :target_instance_type_right_sizing_method,
      :copy_private_ip,
      :copy_tags,
      :licensing,
      :export_bucket_arn,
      :post_launch_enabled,
      :launch_into_source_instance,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute launch_configuration_template
    #   <p>Created Launch Configuration Template.</p>
    #   @return [Types::LaunchConfigurationTemplate]
    class CreateLaunchConfigurationTemplateOutput < Struct.new(
      :launch_configuration_template,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute staging_area_subnet_id
    #   <p>The subnet to be used by the replication staging area.</p>
    #   @return [String]
    # @!attribute associate_default_security_group
    #   <p>Whether to associate the default Elastic Disaster Recovery Security group with the Replication Configuration Template.</p>
    #   @return [Boolean]
    # @!attribute replication_servers_security_groups_i_ds
    #   <p>The security group IDs that will be used by the replication server.</p>
    #   @return [Array<String>]
    # @!attribute replication_server_instance_type
    #   <p>The instance type to be used for the replication server.</p>
    #   @return [String]
    # @!attribute use_dedicated_replication_server
    #   <p>Whether to use a dedicated Replication Server in the replication staging area.</p>
    #   @return [Boolean]
    # @!attribute default_large_staging_disk_type
    #   <p>The Staging Disk EBS volume type to be used during replication.</p>
    #   @return [String]
    # @!attribute ebs_encryption
    #   <p>The type of EBS encryption to be used during replication.</p>
    #   @return [String]
    # @!attribute ebs_encryption_key_arn
    #   <p>The ARN of the EBS encryption key to be used during replication.</p>
    #   @return [String]
    # @!attribute bandwidth_throttling
    #   <p>Configure bandwidth throttling for the outbound data transfer rate of the Source Server in Mbps.</p>
    #   @return [Integer]
    # @!attribute data_plane_routing
    #   <p>The data plane routing mechanism that will be used for replication.</p>
    #   @return [String]
    # @!attribute create_public_ip
    #   <p>Whether to create a Public IP for the Recovery Instance by default.</p>
    #   @return [Boolean]
    # @!attribute staging_area_tags
    #   <p>A set of tags to be associated with all resources created in the replication staging area: EC2 replication server, EBS volumes, EBS snapshots, etc.</p>
    #   @return [Hash<String, String>]
    # @!attribute pit_policy
    #   <p>The Point in time (PIT) policy to manage snapshots taken during replication.</p>
    #   @return [Array<Types::PITPolicyRule>]
    # @!attribute tags
    #   <p>A set of tags to be associated with the Replication Configuration Template resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute auto_replicate_new_disks
    #   <p>Whether to allow the AWS replication agent to automatically replicate newly added disks.</p>
    #   @return [Boolean]
    class CreateReplicationConfigurationTemplateInput < Struct.new(
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
      :pit_policy,
      :tags,
      :auto_replicate_new_disks,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute replication_configuration_template_id
    #   <p>The Replication Configuration Template ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Replication Configuration Template ARN.</p>
    #   @return [String]
    # @!attribute staging_area_subnet_id
    #   <p>The subnet to be used by the replication staging area.</p>
    #   @return [String]
    # @!attribute associate_default_security_group
    #   <p>Whether to associate the default Elastic Disaster Recovery Security group with the Replication Configuration Template.</p>
    #   @return [Boolean]
    # @!attribute replication_servers_security_groups_i_ds
    #   <p>The security group IDs that will be used by the replication server.</p>
    #   @return [Array<String>]
    # @!attribute replication_server_instance_type
    #   <p>The instance type to be used for the replication server.</p>
    #   @return [String]
    # @!attribute use_dedicated_replication_server
    #   <p>Whether to use a dedicated Replication Server in the replication staging area.</p>
    #   @return [Boolean]
    # @!attribute default_large_staging_disk_type
    #   <p>The Staging Disk EBS volume type to be used during replication.</p>
    #   @return [String]
    # @!attribute ebs_encryption
    #   <p>The type of EBS encryption to be used during replication.</p>
    #   @return [String]
    # @!attribute ebs_encryption_key_arn
    #   <p>The ARN of the EBS encryption key to be used during replication.</p>
    #   @return [String]
    # @!attribute bandwidth_throttling
    #   <p>Configure bandwidth throttling for the outbound data transfer rate of the Source Server in Mbps.</p>
    #   @return [Integer]
    # @!attribute data_plane_routing
    #   <p>The data plane routing mechanism that will be used for replication.</p>
    #   @return [String]
    # @!attribute create_public_ip
    #   <p>Whether to create a Public IP for the Recovery Instance by default.</p>
    #   @return [Boolean]
    # @!attribute staging_area_tags
    #   <p>A set of tags to be associated with all resources created in the replication staging area: EC2 replication server, EBS volumes, EBS snapshots, etc.</p>
    #   @return [Hash<String, String>]
    # @!attribute tags
    #   <p>A set of tags to be associated with the Replication Configuration Template resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute pit_policy
    #   <p>The Point in time (PIT) policy to manage snapshots taken during replication.</p>
    #   @return [Array<Types::PITPolicyRule>]
    # @!attribute auto_replicate_new_disks
    #   <p>Whether to allow the AWS replication agent to automatically replicate newly added disks.</p>
    #   @return [Boolean]
    class CreateReplicationConfigurationTemplateOutput < Struct.new(
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
      :tags,
      :pit_policy,
      :auto_replicate_new_disks,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:bandwidth_throttling] = 0 unless options.key?(:bandwidth_throttling)
        super
      end
    end

    # @!attribute vpc_id
    #   <p>Which VPC ID to protect.</p>
    #   @return [String]
    # @!attribute origin_account_id
    #   <p>Account containing the VPC to protect.</p>
    #   @return [String]
    # @!attribute origin_region
    #   <p>Region containing the VPC to protect.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A set of tags to be associated with the Source Network resource.</p>
    #   @return [Hash<String, String>]
    class CreateSourceNetworkRequest < Struct.new(
      :vpc_id,
      :origin_account_id,
      :origin_region,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_network_id
    #   <p>ID of the created Source Network.</p>
    #   @return [String]
    class CreateSourceNetworkResponse < Struct.new(
      :source_network_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Error in data replication.</p>
    # @!attribute error
    #   <p>Error in data replication.</p>
    #   @return [String]
    # @!attribute raw_error
    #   <p>Error in data replication.</p>
    #   @return [String]
    class DataReplicationError < Struct.new(
      :error,
      :raw_error,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about Data Replication</p>
    # @!attribute lag_duration
    #   <p>Data replication lag duration.</p>
    #   @return [String]
    # @!attribute eta_date_time
    #   <p>An estimate of when the data replication will be completed.</p>
    #   @return [String]
    # @!attribute replicated_disks
    #   <p>The disks that should be replicated.</p>
    #   @return [Array<Types::DataReplicationInfoReplicatedDisk>]
    # @!attribute data_replication_state
    #   <p>The state of the data replication.</p>
    #   @return [String]
    # @!attribute data_replication_initiation
    #   <p>Information about whether the data replication has been initiated.</p>
    #   @return [Types::DataReplicationInitiation]
    # @!attribute data_replication_error
    #   <p>Error in data replication.</p>
    #   @return [Types::DataReplicationError]
    # @!attribute staging_availability_zone
    #   <p>AWS Availability zone into which data is being replicated.</p>
    #   @return [String]
    # @!attribute staging_outpost_arn
    #   <p>The ARN of the staging Outpost</p>
    #   @return [String]
    class DataReplicationInfo < Struct.new(
      :lag_duration,
      :eta_date_time,
      :replicated_disks,
      :data_replication_state,
      :data_replication_initiation,
      :data_replication_error,
      :staging_availability_zone,
      :staging_outpost_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A disk that should be replicated.</p>
    # @!attribute device_name
    #   <p>The name of the device.</p>
    #   @return [String]
    # @!attribute total_storage_bytes
    #   <p>The total amount of data to be replicated in bytes.</p>
    #   @return [Integer]
    # @!attribute replicated_storage_bytes
    #   <p>The amount of data replicated so far in bytes.</p>
    #   @return [Integer]
    # @!attribute rescanned_storage_bytes
    #   <p>The amount of data to be rescanned in bytes.</p>
    #   @return [Integer]
    # @!attribute backlogged_storage_bytes
    #   <p>The size of the replication backlog in bytes.</p>
    #   @return [Integer]
    # @!attribute volume_status
    #   <p>The status of the volume.</p>
    #   @return [String]
    class DataReplicationInfoReplicatedDisk < Struct.new(
      :device_name,
      :total_storage_bytes,
      :replicated_storage_bytes,
      :rescanned_storage_bytes,
      :backlogged_storage_bytes,
      :volume_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:total_storage_bytes] = 0 unless options.key?(:total_storage_bytes)
        options[:replicated_storage_bytes] = 0 unless options.key?(:replicated_storage_bytes)
        options[:rescanned_storage_bytes] = 0 unless options.key?(:rescanned_storage_bytes)
        options[:backlogged_storage_bytes] = 0 unless options.key?(:backlogged_storage_bytes)
        super
      end
    end

    # <p>Data replication initiation.</p>
    # @!attribute start_date_time
    #   <p>The date and time of the current attempt to initiate data replication.</p>
    #   @return [String]
    # @!attribute next_attempt_date_time
    #   <p>The date and time of the next attempt to initiate data replication.</p>
    #   @return [String]
    # @!attribute steps
    #   <p>The steps of the current attempt to initiate data replication.</p>
    #   @return [Array<Types::DataReplicationInitiationStep>]
    class DataReplicationInitiation < Struct.new(
      :start_date_time,
      :next_attempt_date_time,
      :steps,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Data replication initiation step.</p>
    # @!attribute name
    #   <p>The name of the step.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the step.</p>
    #   @return [String]
    class DataReplicationInitiationStep < Struct.new(
      :name,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The ID of the Job to be deleted.</p>
    #   @return [String]
    class DeleteJobInput < Struct.new(
      :job_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteJobOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_id
    #   <p>Launch configuration template Id or Source Server Id</p>
    #   @return [String]
    # @!attribute action_id
    #   <p>Launch action Id.</p>
    #   @return [String]
    class DeleteLaunchActionRequest < Struct.new(
      :resource_id,
      :action_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteLaunchActionResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute launch_configuration_template_id
    #   <p>The ID of the Launch Configuration Template to be deleted.</p>
    #   @return [String]
    class DeleteLaunchConfigurationTemplateInput < Struct.new(
      :launch_configuration_template_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteLaunchConfigurationTemplateOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute recovery_instance_id
    #   <p>The ID of the Recovery Instance to be deleted.</p>
    #   @return [String]
    class DeleteRecoveryInstanceInput < Struct.new(
      :recovery_instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute replication_configuration_template_id
    #   <p>The ID of the Replication Configuration Template to be deleted.</p>
    #   @return [String]
    class DeleteReplicationConfigurationTemplateInput < Struct.new(
      :replication_configuration_template_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteReplicationConfigurationTemplateOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_network_id
    #   <p>ID of the Source Network to delete.</p>
    #   @return [String]
    class DeleteSourceNetworkRequest < Struct.new(
      :source_network_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteSourceNetworkResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_server_id
    #   <p>The ID of the Source Server to be deleted.</p>
    #   @return [String]
    class DeleteSourceServerInput < Struct.new(
      :source_server_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteSourceServerOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The ID of the Job for which Job log items will be retrieved.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of Job log items to retrieve.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token of the next Job log items to retrieve.</p>
    #   @return [String]
    class DescribeJobLogItemsInput < Struct.new(
      :job_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>An array of Job log items.</p>
    #   @return [Array<Types::JobLog>]
    # @!attribute next_token
    #   <p>The token of the next Job log items to retrieve.</p>
    #   @return [String]
    class DescribeJobLogItemsOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>A set of filters by which to return Jobs.</p>
    #   @return [Types::DescribeJobsRequestFilters]
    # @!attribute max_results
    #   <p>Maximum number of Jobs to retrieve.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token of the next Job to retrieve.</p>
    #   @return [String]
    class DescribeJobsInput < Struct.new(
      :filters,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>An array of Jobs.</p>
    #   @return [Array<Types::Job>]
    # @!attribute next_token
    #   <p>The token of the next Job to retrieve.</p>
    #   @return [String]
    class DescribeJobsOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A set of filters by which to return Jobs.</p>
    # @!attribute job_i_ds
    #   <p>An array of Job IDs that should be returned. An empty array means all jobs.</p>
    #   @return [Array<String>]
    # @!attribute from_date
    #   <p>The start date in a date range query.</p>
    #   @return [String]
    # @!attribute to_date
    #   <p>The end date in a date range query.</p>
    #   @return [String]
    class DescribeJobsRequestFilters < Struct.new(
      :job_i_ds,
      :from_date,
      :to_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute launch_configuration_template_i_ds
    #   <p>Request to filter Launch Configuration Templates list by Launch Configuration Template ID.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>Maximum results to be returned in DescribeLaunchConfigurationTemplates.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token of the next Launch Configuration Template to retrieve.</p>
    #   @return [String]
    class DescribeLaunchConfigurationTemplatesInput < Struct.new(
      :launch_configuration_template_i_ds,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>List of items returned by DescribeLaunchConfigurationTemplates.</p>
    #   @return [Array<Types::LaunchConfigurationTemplate>]
    # @!attribute next_token
    #   <p>The token of the next Launch Configuration Template to retrieve.</p>
    #   @return [String]
    class DescribeLaunchConfigurationTemplatesOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>A set of filters by which to return Recovery Instances.</p>
    #   @return [Types::DescribeRecoveryInstancesRequestFilters]
    # @!attribute max_results
    #   <p>Maximum number of Recovery Instances to retrieve.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token of the next Recovery Instance to retrieve.</p>
    #   @return [String]
    class DescribeRecoveryInstancesInput < Struct.new(
      :filters,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token of the next Recovery Instance to retrieve.</p>
    #   @return [String]
    # @!attribute items
    #   <p>An array of Recovery Instances.</p>
    #   @return [Array<Types::RecoveryInstance>]
    class DescribeRecoveryInstancesOutput < Struct.new(
      :next_token,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A set of filters by which to return Recovery Instances.</p>
    # @!attribute recovery_instance_i_ds
    #   <p>An array of Recovery Instance IDs that should be returned. An empty array means all Recovery Instances.</p>
    #   @return [Array<String>]
    # @!attribute source_server_i_ds
    #   <p>An array of Source Server IDs for which associated Recovery Instances should be returned.</p>
    #   @return [Array<String>]
    class DescribeRecoveryInstancesRequestFilters < Struct.new(
      :recovery_instance_i_ds,
      :source_server_i_ds,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_server_id
    #   <p>Filter Recovery Snapshots by Source Server ID.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>A set of filters by which to return Recovery Snapshots.</p>
    #   @return [Types::DescribeRecoverySnapshotsRequestFilters]
    # @!attribute order
    #   <p>The sorted ordering by which to return Recovery Snapshots.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of Recovery Snapshots to retrieve.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token of the next Recovery Snapshot to retrieve.</p>
    #   @return [String]
    class DescribeRecoverySnapshotsInput < Struct.new(
      :source_server_id,
      :filters,
      :order,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>An array of Recovery Snapshots.</p>
    #   @return [Array<Types::RecoverySnapshot>]
    # @!attribute next_token
    #   <p>The token of the next Recovery Snapshot to retrieve.</p>
    #   @return [String]
    class DescribeRecoverySnapshotsOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A set of filters by which to return Recovery Snapshots.</p>
    # @!attribute from_date_time
    #   <p>The start date in a date range query.</p>
    #   @return [String]
    # @!attribute to_date_time
    #   <p>The end date in a date range query.</p>
    #   @return [String]
    class DescribeRecoverySnapshotsRequestFilters < Struct.new(
      :from_date_time,
      :to_date_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute replication_configuration_template_i_ds
    #   <p>The IDs of the Replication Configuration Templates to retrieve. An empty list means all Replication Configuration Templates.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>Maximum number of Replication Configuration Templates to retrieve.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token of the next Replication Configuration Template to retrieve.</p>
    #   @return [String]
    class DescribeReplicationConfigurationTemplatesInput < Struct.new(
      :replication_configuration_template_i_ds,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>An array of Replication Configuration Templates.</p>
    #   @return [Array<Types::ReplicationConfigurationTemplate>]
    # @!attribute next_token
    #   <p>The token of the next Replication Configuration Template to retrieve.</p>
    #   @return [String]
    class DescribeReplicationConfigurationTemplatesOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>A set of filters by which to return Source Networks.</p>
    #   @return [Types::DescribeSourceNetworksRequestFilters]
    # @!attribute max_results
    #   <p>Maximum number of Source Networks to retrieve.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token of the next Source Networks to retrieve.</p>
    #   @return [String]
    class DescribeSourceNetworksRequest < Struct.new(
      :filters,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A set of filters by which to return Source Networks.</p>
    # @!attribute source_network_i_ds
    #   <p>An array of Source Network IDs that should be returned. An empty array means all Source Networks.</p>
    #   @return [Array<String>]
    # @!attribute origin_account_id
    #   <p>Filter Source Networks by account ID containing the protected VPCs.</p>
    #   @return [String]
    # @!attribute origin_region
    #   <p>Filter Source Networks by the region containing the protected VPCs.</p>
    #   @return [String]
    class DescribeSourceNetworksRequestFilters < Struct.new(
      :source_network_i_ds,
      :origin_account_id,
      :origin_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>An array of Source Networks.</p>
    #   @return [Array<Types::SourceNetwork>]
    # @!attribute next_token
    #   <p>The token of the next Source Networks to retrieve.</p>
    #   @return [String]
    class DescribeSourceNetworksResponse < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>A set of filters by which to return Source Servers.</p>
    #   @return [Types::DescribeSourceServersRequestFilters]
    # @!attribute max_results
    #   <p>Maximum number of Source Servers to retrieve.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token of the next Source Server to retrieve.</p>
    #   @return [String]
    class DescribeSourceServersInput < Struct.new(
      :filters,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>An array of Source Servers.</p>
    #   @return [Array<Types::SourceServer>]
    # @!attribute next_token
    #   <p>The token of the next Source Server to retrieve.</p>
    #   @return [String]
    class DescribeSourceServersOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A set of filters by which to return Source Servers.</p>
    # @!attribute source_server_i_ds
    #   <p>An array of Source Servers IDs that should be returned. An empty array means all Source Servers.</p>
    #   @return [Array<String>]
    # @!attribute hardware_id
    #   <p>An ID that describes the hardware of the Source Server. This is either an EC2 instance id, a VMware uuid or a mac address.</p>
    #   @return [String]
    # @!attribute staging_account_i_ds
    #   <p>An array of staging account IDs that extended source servers belong to. An empty array means all source servers will be shown.</p>
    #   @return [Array<String>]
    class DescribeSourceServersRequestFilters < Struct.new(
      :source_server_i_ds,
      :hardware_id,
      :staging_account_i_ds,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute recovery_instance_id
    #   <p>The ID of the Recovery Instance to disconnect.</p>
    #   @return [String]
    class DisconnectRecoveryInstanceInput < Struct.new(
      :recovery_instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_server_id
    #   <p>The ID of the Source Server to disconnect.</p>
    #   @return [String]
    class DisconnectSourceServerInput < Struct.new(
      :source_server_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_server_id
    #   <p>The ID of the Source Server.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the Source Server.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the Source Server.</p>
    #   @return [Hash<String, String>]
    # @!attribute recovery_instance_id
    #   <p>The ID of the Recovery Instance associated with this Source Server.</p>
    #   @return [String]
    # @!attribute last_launch_result
    #   <p>The status of the last recovery launch of this Source Server.</p>
    #   @return [String]
    # @!attribute data_replication_info
    #   <p>The Data Replication Info of the Source Server.</p>
    #   @return [Types::DataReplicationInfo]
    # @!attribute life_cycle
    #   <p>The lifecycle information of this Source Server.</p>
    #   @return [Types::LifeCycle]
    # @!attribute source_properties
    #   <p>The source properties of the Source Server.</p>
    #   @return [Types::SourceProperties]
    # @!attribute staging_area
    #   <p>The staging area of the source server.</p>
    #   @return [Types::StagingArea]
    # @!attribute source_cloud_properties
    #   <p>Source cloud properties of the Source Server.</p>
    #   @return [Types::SourceCloudProperties]
    # @!attribute replication_direction
    #   <p>Replication direction of the Source Server.</p>
    #   @return [String]
    # @!attribute reversed_direction_source_server_arn
    #   <p>For EC2-originated Source Servers which have been failed over and then failed back, this value will mean the ARN of the Source Server on the opposite replication direction.</p>
    #   @return [String]
    # @!attribute source_network_id
    #   <p>ID of the Source Network which is protecting this Source Server's network.</p>
    #   @return [String]
    # @!attribute agent_version
    #   <p>The version of the DRS agent installed on the source server</p>
    #   @return [String]
    class DisconnectSourceServerOutput < Struct.new(
      :source_server_id,
      :arn,
      :tags,
      :recovery_instance_id,
      :last_launch_result,
      :data_replication_info,
      :life_cycle,
      :source_properties,
      :staging_area,
      :source_cloud_properties,
      :replication_direction,
      :reversed_direction_source_server_arn,
      :source_network_id,
      :agent_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing a data storage device on a server.</p>
    # @!attribute device_name
    #   <p>The disk or device name.</p>
    #   @return [String]
    # @!attribute bytes
    #   <p>The amount of storage on the disk in bytes.</p>
    #   @return [Integer]
    class Disk < Struct.new(
      :device_name,
      :bytes,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:bytes] = 0 unless options.key?(:bytes)
        super
      end
    end

    # <p>Properties of resource related to a job event.</p>
    # @!attribute source_network_data
    #   <p>Source Network properties.</p>
    #   @return [Types::SourceNetworkData]
    class EventResourceData < Struct.new(
      :source_network_data,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class SourceNetworkData < EventResourceData; end
      class Unknown < EventResourceData; end
    end

    # @!attribute source_network_id
    #   <p>The Source Network ID to export its CloudFormation template to an S3 bucket.</p>
    #   @return [String]
    class ExportSourceNetworkCfnTemplateRequest < Struct.new(
      :source_network_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute s3_destination_url
    #   <p>S3 bucket URL where the Source Network CloudFormation template was exported to.</p>
    #   @return [String]
    class ExportSourceNetworkCfnTemplateResponse < Struct.new(
      :s3_destination_url,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute recovery_instance_id
    #   <p>The ID of the Recovery Instance whose failback replication configuration should be returned.</p>
    #   @return [String]
    class GetFailbackReplicationConfigurationInput < Struct.new(
      :recovery_instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute recovery_instance_id
    #   <p>The ID of the Recovery Instance.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the Failback Replication Configuration.</p>
    #   @return [String]
    # @!attribute bandwidth_throttling
    #   <p>Configure bandwidth throttling for the outbound data transfer rate of the Recovery Instance in Mbps.</p>
    #   @return [Integer]
    # @!attribute use_private_ip
    #   <p>Whether to use Private IP for the failback replication of the Recovery Instance.</p>
    #   @return [Boolean]
    class GetFailbackReplicationConfigurationOutput < Struct.new(
      :recovery_instance_id,
      :name,
      :bandwidth_throttling,
      :use_private_ip,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:bandwidth_throttling] = 0 unless options.key?(:bandwidth_throttling)
        super
      end
    end

    # @!attribute source_server_id
    #   <p>The ID of the Source Server that we want to retrieve a Launch Configuration for.</p>
    #   @return [String]
    class GetLaunchConfigurationInput < Struct.new(
      :source_server_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_server_id
    #   <p>The ID of the Source Server for this launch configuration.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the launch configuration.</p>
    #   @return [String]
    # @!attribute ec2_launch_template_id
    #   <p>The EC2 launch template ID of this launch configuration.</p>
    #   @return [String]
    # @!attribute launch_disposition
    #   <p>The state of the Recovery Instance in EC2 after the recovery operation.</p>
    #   @return [String]
    # @!attribute target_instance_type_right_sizing_method
    #   <p>Whether Elastic Disaster Recovery should try to automatically choose the instance type that best matches the OS, CPU, and RAM of your Source Server.</p>
    #   @return [String]
    # @!attribute copy_private_ip
    #   <p>Whether we should copy the Private IP of the Source Server to the Recovery Instance.</p>
    #   @return [Boolean]
    # @!attribute copy_tags
    #   <p>Whether we want to copy the tags of the Source Server to the EC2 machine of the Recovery Instance.</p>
    #   @return [Boolean]
    # @!attribute licensing
    #   <p>The licensing configuration to be used for this launch configuration.</p>
    #   @return [Types::Licensing]
    # @!attribute post_launch_enabled
    #   <p>Whether we want to activate post-launch actions for the Source Server.</p>
    #   @return [Boolean]
    # @!attribute launch_into_instance_properties
    #   <p>Launch into existing instance properties.</p>
    #   @return [Types::LaunchIntoInstanceProperties]
    class GetLaunchConfigurationOutput < Struct.new(
      :source_server_id,
      :name,
      :ec2_launch_template_id,
      :launch_disposition,
      :target_instance_type_right_sizing_method,
      :copy_private_ip,
      :copy_tags,
      :licensing,
      :post_launch_enabled,
      :launch_into_instance_properties,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_server_id
    #   <p>The ID of the Source Serve for this Replication Configuration.r</p>
    #   @return [String]
    class GetReplicationConfigurationInput < Struct.new(
      :source_server_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_server_id
    #   <p>The ID of the Source Server for this Replication Configuration.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the Replication Configuration.</p>
    #   @return [String]
    # @!attribute staging_area_subnet_id
    #   <p>The subnet to be used by the replication staging area.</p>
    #   @return [String]
    # @!attribute associate_default_security_group
    #   <p>Whether to associate the default Elastic Disaster Recovery Security group with the Replication Configuration.</p>
    #   @return [Boolean]
    # @!attribute replication_servers_security_groups_i_ds
    #   <p>The security group IDs that will be used by the replication server.</p>
    #   @return [Array<String>]
    # @!attribute replication_server_instance_type
    #   <p>The instance type to be used for the replication server.</p>
    #   @return [String]
    # @!attribute use_dedicated_replication_server
    #   <p>Whether to use a dedicated Replication Server in the replication staging area.</p>
    #   @return [Boolean]
    # @!attribute default_large_staging_disk_type
    #   <p>The Staging Disk EBS volume type to be used during replication.</p>
    #   @return [String]
    # @!attribute replicated_disks
    #   <p>The configuration of the disks of the Source Server to be replicated.</p>
    #   @return [Array<Types::ReplicationConfigurationReplicatedDisk>]
    # @!attribute ebs_encryption
    #   <p>The type of EBS encryption to be used during replication.</p>
    #   @return [String]
    # @!attribute ebs_encryption_key_arn
    #   <p>The ARN of the EBS encryption key to be used during replication.</p>
    #   @return [String]
    # @!attribute bandwidth_throttling
    #   <p>Configure bandwidth throttling for the outbound data transfer rate of the Source Server in Mbps.</p>
    #   @return [Integer]
    # @!attribute data_plane_routing
    #   <p>The data plane routing mechanism that will be used for replication.</p>
    #   @return [String]
    # @!attribute create_public_ip
    #   <p>Whether to create a Public IP for the Recovery Instance by default.</p>
    #   @return [Boolean]
    # @!attribute staging_area_tags
    #   <p>A set of tags to be associated with all resources created in the replication staging area: EC2 replication server, EBS volumes, EBS snapshots, etc.</p>
    #   @return [Hash<String, String>]
    # @!attribute pit_policy
    #   <p>The Point in time (PIT) policy to manage snapshots taken during replication.</p>
    #   @return [Array<Types::PITPolicyRule>]
    # @!attribute auto_replicate_new_disks
    #   <p>Whether to allow the AWS replication agent to automatically replicate newly added disks.</p>
    #   @return [Boolean]
    class GetReplicationConfigurationOutput < Struct.new(
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
      :pit_policy,
      :auto_replicate_new_disks,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:bandwidth_throttling] = 0 unless options.key?(:bandwidth_throttling)
        super
      end
    end

    # <p>Hints used to uniquely identify a machine.</p>
    # @!attribute fqdn
    #   <p>Fully Qualified Domain Name identification hint.</p>
    #   @return [String]
    # @!attribute hostname
    #   <p>Hostname identification hint.</p>
    #   @return [String]
    # @!attribute vm_ware_uuid
    #   <p>vCenter VM path identification hint.</p>
    #   @return [String]
    # @!attribute aws_instance_id
    #   <p>AWS Instance ID identification hint.</p>
    #   @return [String]
    class IdentificationHints < Struct.new(
      :fqdn,
      :hostname,
      :vm_ware_uuid,
      :aws_instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class InitializeServiceInput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class InitializeServiceOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request processing has failed because of an unknown error, exception or failure.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds after which the request should be safe to retry.</p>
    #   @return [Integer]
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:retry_after_seconds] = 0 unless options.key?(:retry_after_seconds)
        super
      end
    end

    # <p>A job is an asynchronous workflow.</p>
    # @!attribute job_id
    #   <p>The ID of the Job.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of a Job.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the Job.</p>
    #   @return [String]
    # @!attribute initiated_by
    #   <p>A string representing who initiated the Job.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and time of when the Job was created.</p>
    #   @return [String]
    # @!attribute end_date_time
    #   <p>The date and time of when the Job ended.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the Job.</p>
    #   @return [String]
    # @!attribute participating_servers
    #   <p>A list of servers that the Job is acting upon.</p>
    #   @return [Array<Types::ParticipatingServer>]
    # @!attribute tags
    #   <p>A list of tags associated with the Job.</p>
    #   @return [Hash<String, String>]
    # @!attribute participating_resources
    #   <p>A list of resources that the Job is acting upon.</p>
    #   @return [Array<Types::ParticipatingResource>]
    class Job < Struct.new(
      :job_id,
      :arn,
      :type,
      :initiated_by,
      :creation_date_time,
      :end_date_time,
      :status,
      :participating_servers,
      :tags,
      :participating_resources,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A log outputted by a Job.</p>
    # @!attribute log_date_time
    #   <p>The date and time the log was taken.</p>
    #   @return [String]
    # @!attribute event
    #   <p>The event represents the type of a log.</p>
    #   @return [String]
    # @!attribute event_data
    #   <p>Metadata associated with a Job log.</p>
    #   @return [Types::JobLogEventData]
    class JobLog < Struct.new(
      :log_date_time,
      :event,
      :event_data,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata associated with a Job log.</p>
    # @!attribute source_server_id
    #   <p>The ID of a Source Server.</p>
    #   @return [String]
    # @!attribute conversion_server_id
    #   <p>The ID of a conversion server.</p>
    #   @return [String]
    # @!attribute target_instance_id
    #   <p>The ID of a Recovery Instance.</p>
    #   @return [String]
    # @!attribute raw_error
    #   <p>A string representing a job error.</p>
    #   @return [String]
    # @!attribute conversion_properties
    #   <p>Properties of a conversion job</p>
    #   @return [Types::ConversionProperties]
    # @!attribute event_resource_data
    #   <p>Properties of resource related to a job event.</p>
    #   @return [Types::EventResourceData]
    class JobLogEventData < Struct.new(
      :source_server_id,
      :conversion_server_id,
      :target_instance_id,
      :raw_error,
      :conversion_properties,
      :event_resource_data,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Launch action.</p>
    # @!attribute action_id
    #   <p>Launch action Id.</p>
    #   @return [String]
    # @!attribute action_code
    #   <p>Launch action code.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Launch action type.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Launch action name.</p>
    #   @return [String]
    # @!attribute active
    #   <p>Whether the launch action is active.</p>
    #   @return [Boolean]
    # @!attribute order
    #   <p>Launch action order.</p>
    #   @return [Integer]
    # @!attribute action_version
    #   <p>Launch action version.</p>
    #   @return [String]
    # @!attribute optional
    #   <p>Whether the launch will not be marked as failed if this action fails.</p>
    #   @return [Boolean]
    # @!attribute parameters
    #   <p>Launch action parameters.</p>
    #   @return [Hash<String, Types::LaunchActionParameter>]
    # @!attribute description
    #   <p>Launch action description.</p>
    #   @return [String]
    # @!attribute category
    #   <p>Launch action category.</p>
    #   @return [String]
    class LaunchAction < Struct.new(
      :action_id,
      :action_code,
      :type,
      :name,
      :active,
      :order,
      :action_version,
      :optional,
      :parameters,
      :description,
      :category,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Launch action parameter.</p>
    # @!attribute value
    #   <p>Value.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Type.</p>
    #   @return [String]
    class LaunchActionParameter < Struct.new(
      :value,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Launch action run.</p>
    # @!attribute action
    #   <p>Action.</p>
    #   @return [Types::LaunchAction]
    # @!attribute run_id
    #   <p>Run Id.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Run status.</p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>Failure reason.</p>
    #   @return [String]
    class LaunchActionRun < Struct.new(
      :action,
      :run_id,
      :status,
      :failure_reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Resource launch actions filter.</p>
    # @!attribute action_ids
    #   <p>Launch actions Ids.</p>
    #   @return [Array<String>]
    class LaunchActionsRequestFilters < Struct.new(
      :action_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Launch actions status.</p>
    # @!attribute ssm_agent_discovery_datetime
    #   <p>Time where the AWS Systems Manager was detected as running on the launched instance.</p>
    #   @return [String]
    # @!attribute runs
    #   <p>List of post launch action status.</p>
    #   @return [Array<Types::LaunchActionRun>]
    class LaunchActionsStatus < Struct.new(
      :ssm_agent_discovery_datetime,
      :runs,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Account level Launch Configuration Template.</p>
    # @!attribute launch_configuration_template_id
    #   <p>ID of the Launch Configuration Template.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>ARN of the Launch Configuration Template.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags of the Launch Configuration Template.</p>
    #   @return [Hash<String, String>]
    # @!attribute launch_disposition
    #   <p>Launch disposition.</p>
    #   @return [String]
    # @!attribute target_instance_type_right_sizing_method
    #   <p>Target instance type right-sizing method.</p>
    #   @return [String]
    # @!attribute copy_private_ip
    #   <p>Copy private IP.</p>
    #   @return [Boolean]
    # @!attribute copy_tags
    #   <p>Copy tags.</p>
    #   @return [Boolean]
    # @!attribute licensing
    #   <p>Licensing.</p>
    #   @return [Types::Licensing]
    # @!attribute export_bucket_arn
    #   <p>S3 bucket ARN to export Source Network templates.</p>
    #   @return [String]
    # @!attribute post_launch_enabled
    #   <p>Post-launch actions activated.</p>
    #   @return [Boolean]
    # @!attribute launch_into_source_instance
    #   <p>DRS will set the 'launch into instance ID' of any source server when performing a drill, recovery or failback to the previous region or availability zone, using the instance ID of the source instance.</p>
    #   @return [Boolean]
    class LaunchConfigurationTemplate < Struct.new(
      :launch_configuration_template_id,
      :arn,
      :tags,
      :launch_disposition,
      :target_instance_type_right_sizing_method,
      :copy_private_ip,
      :copy_tags,
      :licensing,
      :export_bucket_arn,
      :post_launch_enabled,
      :launch_into_source_instance,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Launch into existing instance.</p>
    # @!attribute launch_into_ec2_instance_id
    #   <p>Optionally holds EC2 instance ID of an instance to launch into, instead of launching a new instance during drill, recovery or failback.</p>
    #   @return [String]
    class LaunchIntoInstanceProperties < Struct.new(
      :launch_into_ec2_instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration of a machine's license.</p>
    # @!attribute os_byol
    #   <p>Whether to enable "Bring your own license" or not.</p>
    #   @return [Boolean]
    class Licensing < Struct.new(
      :os_byol,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing the Source Server Lifecycle.</p>
    # @!attribute added_to_service_date_time
    #   <p>The date and time of when the Source Server was added to the service.</p>
    #   @return [String]
    # @!attribute first_byte_date_time
    #   <p>The date and time of the first byte that was replicated from the Source Server.</p>
    #   @return [String]
    # @!attribute elapsed_replication_duration
    #   <p>The amount of time that the Source Server has been replicating for.</p>
    #   @return [String]
    # @!attribute last_seen_by_service_date_time
    #   <p>The date and time this Source Server was last seen by the service.</p>
    #   @return [String]
    # @!attribute last_launch
    #   <p>An object containing information regarding the last launch of the Source Server.</p>
    #   @return [Types::LifeCycleLastLaunch]
    class LifeCycle < Struct.new(
      :added_to_service_date_time,
      :first_byte_date_time,
      :elapsed_replication_duration,
      :last_seen_by_service_date_time,
      :last_launch,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object containing information regarding the last launch of a Source Server.</p>
    # @!attribute initiated
    #   <p>An object containing information regarding the initiation of the last launch of a Source Server.</p>
    #   @return [Types::LifeCycleLastLaunchInitiated]
    # @!attribute status
    #   <p>Status of Source Server's last launch.</p>
    #   @return [String]
    class LifeCycleLastLaunch < Struct.new(
      :initiated,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object containing information regarding the initiation of the last launch of a Source Server.</p>
    # @!attribute api_call_date_time
    #   <p>The date and time the last Source Server launch was initiated.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The ID of the Job that was used to last launch the Source Server.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The Job type that was used to last launch the Source Server.</p>
    #   @return [String]
    class LifeCycleLastLaunchInitiated < Struct.new(
      :api_call_date_time,
      :job_id,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute staging_account_id
    #   <p>The Id of the staging Account to retrieve extensible source servers from.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of extensible source servers to retrieve.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token of the next extensible source server to retrieve.</p>
    #   @return [String]
    class ListExtensibleSourceServersInput < Struct.new(
      :staging_account_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>A list of source servers on a staging Account that are extensible.</p>
    #   @return [Array<Types::StagingSourceServer>]
    # @!attribute next_token
    #   <p>The token of the next extensible source server to retrieve.</p>
    #   @return [String]
    class ListExtensibleSourceServersOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_id
    #   <p>Launch configuration template Id or Source Server Id</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Filters to apply when listing resource launch actions.</p>
    #   @return [Types::LaunchActionsRequestFilters]
    # @!attribute max_results
    #   <p>Maximum amount of items to return when listing resource launch actions.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Next token to use when listing resource launch actions.</p>
    #   @return [String]
    class ListLaunchActionsRequest < Struct.new(
      :resource_id,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>List of resource launch actions.</p>
    #   @return [Array<Types::LaunchAction>]
    # @!attribute next_token
    #   <p>Next token returned when listing resource launch actions.</p>
    #   @return [String]
    class ListLaunchActionsResponse < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of staging Accounts to retrieve.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token of the next staging Account to retrieve.</p>
    #   @return [String]
    class ListStagingAccountsInput < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accounts
    #   <p>An array of staging AWS Accounts.</p>
    #   @return [Array<Types::Account>]
    # @!attribute next_token
    #   <p>The token of the next staging Account to retrieve.</p>
    #   @return [String]
    class ListStagingAccountsOutput < Struct.new(
      :accounts,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource whose tags should be returned.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags of the requested resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Network interface.</p>
    # @!attribute mac_address
    #   <p>The MAC address of the network interface.</p>
    #   @return [String]
    # @!attribute ips
    #   <p>Network interface IPs.</p>
    #   @return [Array<String>]
    # @!attribute is_primary
    #   <p>Whether this is the primary network interface.</p>
    #   @return [Boolean]
    class NetworkInterface < Struct.new(
      :mac_address,
      :ips,
      :is_primary,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Operating System.</p>
    # @!attribute full_string
    #   <p>The long name of the Operating System.</p>
    #   @return [String]
    class OS < Struct.new(
      :full_string,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A rule in the Point in Time (PIT) policy representing when to take snapshots and how long to retain them for.</p>
    # @!attribute rule_id
    #   <p>The ID of the rule.</p>
    #   @return [Integer]
    # @!attribute units
    #   <p>The units used to measure the interval and retentionDuration.</p>
    #   @return [String]
    # @!attribute interval
    #   <p>How often, in the chosen units, a snapshot should be taken.</p>
    #   @return [Integer]
    # @!attribute retention_duration
    #   <p>The duration to retain a snapshot for, in the chosen units.</p>
    #   @return [Integer]
    # @!attribute enabled
    #   <p>Whether this rule is enabled or not.</p>
    #   @return [Boolean]
    class PITPolicyRule < Struct.new(
      :rule_id,
      :units,
      :interval,
      :retention_duration,
      :enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:rule_id] = 0 unless options.key?(:rule_id)
        super
      end
    end

    # <p>Represents a resource participating in an asynchronous Job.</p>
    # @!attribute participating_resource_id
    #   <p>The ID of a participating resource.</p>
    #   @return [Types::ParticipatingResourceID]
    # @!attribute launch_status
    #   <p>The launch status of a participating resource.</p>
    #   @return [String]
    class ParticipatingResource < Struct.new(
      :participating_resource_id,
      :launch_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>ID of a resource participating in an asynchronous Job.</p>
    # @!attribute source_network_id
    #   <p>Source Network ID.</p>
    #   @return [String]
    class ParticipatingResourceID < Struct.new(
      :source_network_id,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class SourceNetworkID < ParticipatingResourceID; end
      class Unknown < ParticipatingResourceID; end
    end

    # <p>Represents a server participating in an asynchronous Job.</p>
    # @!attribute source_server_id
    #   <p>The Source Server ID of a participating server.</p>
    #   @return [String]
    # @!attribute recovery_instance_id
    #   <p>The Recovery Instance ID of a participating server.</p>
    #   @return [String]
    # @!attribute launch_status
    #   <p>The launch status of a participating server.</p>
    #   @return [String]
    # @!attribute launch_actions_status
    #   <p>The post-launch action runs of a participating server.</p>
    #   @return [Types::LaunchActionsStatus]
    class ParticipatingServer < Struct.new(
      :source_server_id,
      :recovery_instance_id,
      :launch_status,
      :launch_actions_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Properties of a product code associated with a volume.</p>
    # @!attribute product_code_id
    #   <p>Id of a product code associated with a volume.</p>
    #   @return [String]
    # @!attribute product_code_mode
    #   <p>Mode of a product code associated with a volume.</p>
    #   @return [String]
    class ProductCode < Struct.new(
      :product_code_id,
      :product_code_mode,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_id
    #   <p>Launch configuration template Id or Source Server Id</p>
    #   @return [String]
    # @!attribute action_code
    #   <p>Launch action code.</p>
    #   @return [String]
    # @!attribute order
    #   <p>Launch action order.</p>
    #   @return [Integer]
    # @!attribute action_id
    #   <p>Launch action Id.</p>
    #   @return [String]
    # @!attribute optional
    #   <p>Whether the launch will not be marked as failed if this action fails.</p>
    #   @return [Boolean]
    # @!attribute active
    #   <p>Whether the launch action is active.</p>
    #   @return [Boolean]
    # @!attribute name
    #   <p>Launch action name.</p>
    #   @return [String]
    # @!attribute action_version
    #   <p>Launch action version.</p>
    #   @return [String]
    # @!attribute category
    #   <p>Launch action category.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>Launch action parameters.</p>
    #   @return [Hash<String, Types::LaunchActionParameter>]
    # @!attribute description
    #   <p>Launch action description.</p>
    #   @return [String]
    class PutLaunchActionRequest < Struct.new(
      :resource_id,
      :action_code,
      :order,
      :action_id,
      :optional,
      :active,
      :name,
      :action_version,
      :category,
      :parameters,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_id
    #   <p>Launch configuration template Id or Source Server Id</p>
    #   @return [String]
    # @!attribute action_id
    #   <p>Launch action Id.</p>
    #   @return [String]
    # @!attribute action_code
    #   <p>Launch action code.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Launch action type.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Launch action name.</p>
    #   @return [String]
    # @!attribute active
    #   <p>Whether the launch action is active.</p>
    #   @return [Boolean]
    # @!attribute order
    #   <p>Launch action order.</p>
    #   @return [Integer]
    # @!attribute action_version
    #   <p>Launch action version.</p>
    #   @return [String]
    # @!attribute optional
    #   <p>Whether the launch will not be marked as failed if this action fails.</p>
    #   @return [Boolean]
    # @!attribute parameters
    #   <p>Launch action parameters.</p>
    #   @return [Hash<String, Types::LaunchActionParameter>]
    # @!attribute description
    #   <p>Launch action description.</p>
    #   @return [String]
    # @!attribute category
    #   <p>Launch action category.</p>
    #   @return [String]
    class PutLaunchActionResponse < Struct.new(
      :resource_id,
      :action_id,
      :action_code,
      :type,
      :name,
      :active,
      :order,
      :action_version,
      :optional,
      :parameters,
      :description,
      :category,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A Recovery Instance is a replica of a Source Server running on EC2.</p>
    # @!attribute ec2_instance_id
    #   <p>The EC2 instance ID of the Recovery Instance.</p>
    #   @return [String]
    # @!attribute ec2_instance_state
    #   <p>The state of the EC2 instance for this Recovery Instance.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The ID of the Job that created the Recovery Instance.</p>
    #   @return [String]
    # @!attribute recovery_instance_id
    #   <p>The ID of the Recovery Instance.</p>
    #   @return [String]
    # @!attribute source_server_id
    #   <p>The Source Server ID that this Recovery Instance is associated with.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the Recovery Instance.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of tags that are associated with the Recovery Instance.</p>
    #   @return [Hash<String, String>]
    # @!attribute failback
    #   <p>An object representing failback related information of the Recovery Instance.</p>
    #   @return [Types::RecoveryInstanceFailback]
    # @!attribute data_replication_info
    #   <p>The Data Replication Info of the Recovery Instance.</p>
    #   @return [Types::RecoveryInstanceDataReplicationInfo]
    # @!attribute recovery_instance_properties
    #   <p>Properties of the Recovery Instance machine.</p>
    #   @return [Types::RecoveryInstanceProperties]
    # @!attribute point_in_time_snapshot_date_time
    #   <p>The date and time of the Point in Time (PIT) snapshot that this Recovery Instance was launched from.</p>
    #   @return [String]
    # @!attribute is_drill
    #   <p>Whether this Recovery Instance was created for a drill or for an actual Recovery event.</p>
    #   @return [Boolean]
    # @!attribute origin_environment
    #   <p>Environment (On Premises / AWS) of the instance that the recovery instance originated from.</p>
    #   @return [String]
    # @!attribute origin_availability_zone
    #   <p>AWS availability zone associated with the recovery instance.</p>
    #   @return [String]
    # @!attribute agent_version
    #   <p>The version of the DRS agent installed on the recovery instance</p>
    #   @return [String]
    # @!attribute source_outpost_arn
    #   <p>The ARN of the source Outpost</p>
    #   @return [String]
    class RecoveryInstance < Struct.new(
      :ec2_instance_id,
      :ec2_instance_state,
      :job_id,
      :recovery_instance_id,
      :source_server_id,
      :arn,
      :tags,
      :failback,
      :data_replication_info,
      :recovery_instance_properties,
      :point_in_time_snapshot_date_time,
      :is_drill,
      :origin_environment,
      :origin_availability_zone,
      :agent_version,
      :source_outpost_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Error in data replication.</p>
    # @!attribute error
    #   <p>Error in data replication.</p>
    #   @return [String]
    # @!attribute raw_error
    #   <p>Error in data replication.</p>
    #   @return [String]
    class RecoveryInstanceDataReplicationError < Struct.new(
      :error,
      :raw_error,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about Data Replication</p>
    # @!attribute lag_duration
    #   <p>Data replication lag duration.</p>
    #   @return [String]
    # @!attribute eta_date_time
    #   <p>An estimate of when the data replication will be completed.</p>
    #   @return [String]
    # @!attribute replicated_disks
    #   <p>The disks that should be replicated.</p>
    #   @return [Array<Types::RecoveryInstanceDataReplicationInfoReplicatedDisk>]
    # @!attribute data_replication_state
    #   <p>The state of the data replication.</p>
    #   @return [String]
    # @!attribute data_replication_initiation
    #   <p>Information about whether the data replication has been initiated.</p>
    #   @return [Types::RecoveryInstanceDataReplicationInitiation]
    # @!attribute data_replication_error
    #   <p>Information about Data Replication</p>
    #   @return [Types::RecoveryInstanceDataReplicationError]
    # @!attribute staging_availability_zone
    #   <p>AWS Availability zone into which data is being replicated.</p>
    #   @return [String]
    # @!attribute staging_outpost_arn
    #   <p>The ARN of the staging Outpost</p>
    #   @return [String]
    class RecoveryInstanceDataReplicationInfo < Struct.new(
      :lag_duration,
      :eta_date_time,
      :replicated_disks,
      :data_replication_state,
      :data_replication_initiation,
      :data_replication_error,
      :staging_availability_zone,
      :staging_outpost_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A disk that should be replicated.</p>
    # @!attribute device_name
    #   <p>The name of the device.</p>
    #   @return [String]
    # @!attribute total_storage_bytes
    #   <p>The total amount of data to be replicated in bytes.</p>
    #   @return [Integer]
    # @!attribute replicated_storage_bytes
    #   <p>The amount of data replicated so far in bytes.</p>
    #   @return [Integer]
    # @!attribute rescanned_storage_bytes
    #   <p>The amount of data to be rescanned in bytes.</p>
    #   @return [Integer]
    # @!attribute backlogged_storage_bytes
    #   <p>The size of the replication backlog in bytes.</p>
    #   @return [Integer]
    class RecoveryInstanceDataReplicationInfoReplicatedDisk < Struct.new(
      :device_name,
      :total_storage_bytes,
      :replicated_storage_bytes,
      :rescanned_storage_bytes,
      :backlogged_storage_bytes,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:total_storage_bytes] = 0 unless options.key?(:total_storage_bytes)
        options[:replicated_storage_bytes] = 0 unless options.key?(:replicated_storage_bytes)
        options[:rescanned_storage_bytes] = 0 unless options.key?(:rescanned_storage_bytes)
        options[:backlogged_storage_bytes] = 0 unless options.key?(:backlogged_storage_bytes)
        super
      end
    end

    # <p>Data replication initiation.</p>
    # @!attribute start_date_time
    #   <p>The date and time of the current attempt to initiate data replication.</p>
    #   @return [String]
    # @!attribute steps
    #   <p>The steps of the current attempt to initiate data replication.</p>
    #   @return [Array<Types::RecoveryInstanceDataReplicationInitiationStep>]
    class RecoveryInstanceDataReplicationInitiation < Struct.new(
      :start_date_time,
      :steps,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Data replication initiation step.</p>
    # @!attribute name
    #   <p>The name of the step.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the step.</p>
    #   @return [String]
    class RecoveryInstanceDataReplicationInitiationStep < Struct.new(
      :name,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing a block storage device on the Recovery Instance.</p>
    # @!attribute internal_device_name
    #   <p>The internal device name of this disk. This is the name that is visible on the machine itself and not from the EC2 console.</p>
    #   @return [String]
    # @!attribute bytes
    #   <p>The amount of storage on the disk in bytes.</p>
    #   @return [Integer]
    # @!attribute ebs_volume_id
    #   <p>The EBS Volume ID of this disk.</p>
    #   @return [String]
    class RecoveryInstanceDisk < Struct.new(
      :internal_device_name,
      :bytes,
      :ebs_volume_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:bytes] = 0 unless options.key?(:bytes)
        super
      end
    end

    # <p>An object representing failback related information of the Recovery Instance.</p>
    # @!attribute failback_client_id
    #   <p>The ID of the failback client that this Recovery Instance is associated with.</p>
    #   @return [String]
    # @!attribute failback_job_id
    #   <p>The Job ID of the last failback log for this Recovery Instance.</p>
    #   @return [String]
    # @!attribute failback_initiation_time
    #   <p>The date and time that the failback initiation started.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the failback process that this Recovery Instance is in.</p>
    #   @return [String]
    # @!attribute agent_last_seen_by_service_date_time
    #   <p>The date and time the agent on the Recovery Instance was last seen by the service.</p>
    #   @return [String]
    # @!attribute failback_client_last_seen_by_service_date_time
    #   <p>The date and time that the failback client was last seen by the service.</p>
    #   @return [String]
    # @!attribute failback_to_original_server
    #   <p>Whether we are failing back to the original Source Server for this Recovery Instance.</p>
    #   @return [Boolean]
    # @!attribute first_byte_date_time
    #   <p>The date and time of the first byte that was replicated from the Recovery Instance.</p>
    #   @return [String]
    # @!attribute elapsed_replication_duration
    #   <p>The amount of time that the Recovery Instance has been replicating for.</p>
    #   @return [String]
    # @!attribute failback_launch_type
    #   <p>The launch type (Recovery / Drill) of the last launch for the failback replication of this recovery instance.</p>
    #   @return [String]
    class RecoveryInstanceFailback < Struct.new(
      :failback_client_id,
      :failback_job_id,
      :failback_initiation_time,
      :state,
      :agent_last_seen_by_service_date_time,
      :failback_client_last_seen_by_service_date_time,
      :failback_to_original_server,
      :first_byte_date_time,
      :elapsed_replication_duration,
      :failback_launch_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Properties of the Recovery Instance machine.</p>
    # @!attribute last_updated_date_time
    #   <p>The date and time the Recovery Instance properties were last updated on.</p>
    #   @return [String]
    # @!attribute identification_hints
    #   <p>Hints used to uniquely identify a machine.</p>
    #   @return [Types::IdentificationHints]
    # @!attribute network_interfaces
    #   <p>An array of network interfaces.</p>
    #   @return [Array<Types::NetworkInterface>]
    # @!attribute disks
    #   <p>An array of disks.</p>
    #   @return [Array<Types::RecoveryInstanceDisk>]
    # @!attribute cpus
    #   <p>An array of CPUs.</p>
    #   @return [Array<Types::CPU>]
    # @!attribute ram_bytes
    #   <p>The amount of RAM in bytes.</p>
    #   @return [Integer]
    # @!attribute os
    #   <p>Operating system.</p>
    #   @return [Types::OS]
    class RecoveryInstanceProperties < Struct.new(
      :last_updated_date_time,
      :identification_hints,
      :network_interfaces,
      :disks,
      :cpus,
      :ram_bytes,
      :os,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:ram_bytes] = 0 unless options.key?(:ram_bytes)
        super
      end
    end

    # <p>An object representing the Source Network recovery Lifecycle.</p>
    # @!attribute api_call_date_time
    #   <p>The date and time the last Source Network recovery was initiated.</p>
    #   @return [Time]
    # @!attribute job_id
    #   <p>The ID of the Job that was used to last recover the Source Network.</p>
    #   @return [String]
    # @!attribute last_recovery_result
    #   <p>The status of the last recovery status of this Source Network.</p>
    #   @return [String]
    class RecoveryLifeCycle < Struct.new(
      :api_call_date_time,
      :job_id,
      :last_recovery_result,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A snapshot of a Source Server used during recovery.</p>
    # @!attribute snapshot_id
    #   <p>The ID of the Recovery Snapshot.</p>
    #   @return [String]
    # @!attribute source_server_id
    #   <p>The ID of the Source Server that the snapshot was taken for.</p>
    #   @return [String]
    # @!attribute expected_timestamp
    #   <p>The timestamp of when we expect the snapshot to be taken.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The actual timestamp that the snapshot was taken.</p>
    #   @return [String]
    # @!attribute ebs_snapshots
    #   <p>A list of EBS snapshots.</p>
    #   @return [Array<String>]
    class RecoverySnapshot < Struct.new(
      :snapshot_id,
      :source_server_id,
      :expected_timestamp,
      :timestamp,
      :ebs_snapshots,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of a disk of the Source Server to be replicated.</p>
    # @!attribute device_name
    #   <p>The name of the device.</p>
    #   @return [String]
    # @!attribute is_boot_disk
    #   <p>Whether to boot from this disk or not.</p>
    #   @return [Boolean]
    # @!attribute staging_disk_type
    #   <p>The Staging Disk EBS volume type to be used during replication.</p>
    #   @return [String]
    # @!attribute iops
    #   <p>The requested number of I/O operations per second (IOPS).</p>
    #   @return [Integer]
    # @!attribute throughput
    #   <p>The throughput to use for the EBS volume in MiB/s. This parameter is valid only for gp3 volumes.</p>
    #   @return [Integer]
    # @!attribute optimized_staging_disk_type
    #   <p>The Staging Disk EBS volume type to be used during replication when <code>stagingDiskType</code> is set to Auto. This is a read-only field.</p>
    #   @return [String]
    class ReplicationConfigurationReplicatedDisk < Struct.new(
      :device_name,
      :is_boot_disk,
      :staging_disk_type,
      :iops,
      :throughput,
      :optimized_staging_disk_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:iops] = 0 unless options.key?(:iops)
        options[:throughput] = 0 unless options.key?(:throughput)
        super
      end
    end

    # @!attribute replication_configuration_template_id
    #   <p>The Replication Configuration Template ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Replication Configuration Template ARN.</p>
    #   @return [String]
    # @!attribute staging_area_subnet_id
    #   <p>The subnet to be used by the replication staging area.</p>
    #   @return [String]
    # @!attribute associate_default_security_group
    #   <p>Whether to associate the default Elastic Disaster Recovery Security group with the Replication Configuration Template.</p>
    #   @return [Boolean]
    # @!attribute replication_servers_security_groups_i_ds
    #   <p>The security group IDs that will be used by the replication server.</p>
    #   @return [Array<String>]
    # @!attribute replication_server_instance_type
    #   <p>The instance type to be used for the replication server.</p>
    #   @return [String]
    # @!attribute use_dedicated_replication_server
    #   <p>Whether to use a dedicated Replication Server in the replication staging area.</p>
    #   @return [Boolean]
    # @!attribute default_large_staging_disk_type
    #   <p>The Staging Disk EBS volume type to be used during replication.</p>
    #   @return [String]
    # @!attribute ebs_encryption
    #   <p>The type of EBS encryption to be used during replication.</p>
    #   @return [String]
    # @!attribute ebs_encryption_key_arn
    #   <p>The ARN of the EBS encryption key to be used during replication.</p>
    #   @return [String]
    # @!attribute bandwidth_throttling
    #   <p>Configure bandwidth throttling for the outbound data transfer rate of the Source Server in Mbps.</p>
    #   @return [Integer]
    # @!attribute data_plane_routing
    #   <p>The data plane routing mechanism that will be used for replication.</p>
    #   @return [String]
    # @!attribute create_public_ip
    #   <p>Whether to create a Public IP for the Recovery Instance by default.</p>
    #   @return [Boolean]
    # @!attribute staging_area_tags
    #   <p>A set of tags to be associated with all resources created in the replication staging area: EC2 replication server, EBS volumes, EBS snapshots, etc.</p>
    #   @return [Hash<String, String>]
    # @!attribute tags
    #   <p>A set of tags to be associated with the Replication Configuration Template resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute pit_policy
    #   <p>The Point in time (PIT) policy to manage snapshots taken during replication.</p>
    #   @return [Array<Types::PITPolicyRule>]
    # @!attribute auto_replicate_new_disks
    #   <p>Whether to allow the AWS replication agent to automatically replicate newly added disks.</p>
    #   @return [Boolean]
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
      :tags,
      :pit_policy,
      :auto_replicate_new_disks,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:bandwidth_throttling] = 0 unless options.key?(:bandwidth_throttling)
        super
      end
    end

    # <p>The resource for this operation was not found.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :code,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @deprecated
    #   WARNING: RetryDataReplication is deprecated
    # @!attribute source_server_id
    #   <p>The ID of the Source Server whose data replication should be retried.</p>
    #   @return [String]
    class RetryDataReplicationInput < Struct.new(
      :source_server_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_server_id
    #   <p>The ID of the Source Server.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the Source Server.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the Source Server.</p>
    #   @return [Hash<String, String>]
    # @!attribute recovery_instance_id
    #   <p>The ID of the Recovery Instance associated with this Source Server.</p>
    #   @return [String]
    # @!attribute last_launch_result
    #   <p>The status of the last recovery launch of this Source Server.</p>
    #   @return [String]
    # @!attribute data_replication_info
    #   <p>The Data Replication Info of the Source Server.</p>
    #   @return [Types::DataReplicationInfo]
    # @!attribute life_cycle
    #   <p>The lifecycle information of this Source Server.</p>
    #   @return [Types::LifeCycle]
    # @!attribute source_properties
    #   <p>The source properties of the Source Server.</p>
    #   @return [Types::SourceProperties]
    # @!attribute staging_area
    #   <p>The staging area of the source server.</p>
    #   @return [Types::StagingArea]
    # @!attribute source_cloud_properties
    #   <p>Source cloud properties of the Source Server.</p>
    #   @return [Types::SourceCloudProperties]
    # @!attribute replication_direction
    #   <p>Replication direction of the Source Server.</p>
    #   @return [String]
    # @!attribute reversed_direction_source_server_arn
    #   <p>For EC2-originated Source Servers which have been failed over and then failed back, this value will mean the ARN of the Source Server on the opposite replication direction.</p>
    #   @return [String]
    # @!attribute source_network_id
    #   <p>ID of the Source Network which is protecting this Source Server's network.</p>
    #   @return [String]
    # @!attribute agent_version
    #   <p>The version of the DRS agent installed on the source server</p>
    #   @return [String]
    class RetryDataReplicationOutput < Struct.new(
      :source_server_id,
      :arn,
      :tags,
      :recovery_instance_id,
      :last_launch_result,
      :data_replication_info,
      :life_cycle,
      :source_properties,
      :staging_area,
      :source_cloud_properties,
      :replication_direction,
      :reversed_direction_source_server_arn,
      :source_network_id,
      :agent_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute recovery_instance_id
    #   <p>The ID of the Recovery Instance that we want to reverse the replication for.</p>
    #   @return [String]
    class ReverseReplicationInput < Struct.new(
      :recovery_instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute reversed_direction_source_server_arn
    #   <p>ARN of created SourceServer.</p>
    #   @return [String]
    class ReverseReplicationOutput < Struct.new(
      :reversed_direction_source_server_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request could not be completed because its exceeded the service quota.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>Service code.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>Quota code.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :code,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Properties of the cloud environment where this Source Server originated from.</p>
    # @!attribute origin_account_id
    #   <p>AWS Account ID for an EC2-originated Source Server.</p>
    #   @return [String]
    # @!attribute origin_region
    #   <p>AWS Region for an EC2-originated Source Server.</p>
    #   @return [String]
    # @!attribute origin_availability_zone
    #   <p>AWS Availability Zone for an EC2-originated Source Server.</p>
    #   @return [String]
    # @!attribute source_outpost_arn
    #   <p>The ARN of the source Outpost</p>
    #   @return [String]
    class SourceCloudProperties < Struct.new(
      :origin_account_id,
      :origin_region,
      :origin_availability_zone,
      :source_outpost_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The ARN of the Source Network.</p>
    # @!attribute source_network_id
    #   <p>Source Network ID.</p>
    #   @return [String]
    # @!attribute source_vpc_id
    #   <p>VPC ID protected by the Source Network.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the Source Network.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags associated with the Source Network.</p>
    #   @return [Hash<String, String>]
    # @!attribute replication_status
    #   <p>Status of Source Network Replication. Possible values:
    #               (a) STOPPED - Source Network is not replicating.
    #               (b) IN_PROGRESS - Source Network is being replicated.
    #               (c) PROTECTED - Source Network was replicated successfully and is being synchronized for changes.
    #               (d) ERROR - Source Network replication has failed</p>
    #   @return [String]
    # @!attribute replication_status_details
    #   <p>Error details in case Source Network replication status is ERROR.</p>
    #   @return [String]
    # @!attribute cfn_stack_name
    #   <p>CloudFormation stack name that was deployed for recovering the Source Network.</p>
    #   @return [String]
    # @!attribute source_region
    #   <p>Region containing the VPC protected by the Source Network.</p>
    #   @return [String]
    # @!attribute source_account_id
    #   <p>Account ID containing the VPC protected by the Source Network.</p>
    #   @return [String]
    # @!attribute last_recovery
    #   <p>An object containing information regarding the last recovery of the Source Network.</p>
    #   @return [Types::RecoveryLifeCycle]
    # @!attribute launched_vpc_id
    #   <p>ID of the recovered VPC following Source Network recovery.</p>
    #   @return [String]
    class SourceNetwork < Struct.new(
      :source_network_id,
      :source_vpc_id,
      :arn,
      :tags,
      :replication_status,
      :replication_status_details,
      :cfn_stack_name,
      :source_region,
      :source_account_id,
      :last_recovery,
      :launched_vpc_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Properties of Source Network related to a job event.</p>
    # @!attribute source_network_id
    #   <p>Source Network ID.</p>
    #   @return [String]
    # @!attribute source_vpc
    #   <p>VPC ID protected by the Source Network.</p>
    #   @return [String]
    # @!attribute target_vpc
    #   <p>ID of the recovered VPC following Source Network recovery.</p>
    #   @return [String]
    # @!attribute stack_name
    #   <p>CloudFormation stack name that was deployed for recovering the Source Network.</p>
    #   @return [String]
    class SourceNetworkData < Struct.new(
      :source_network_id,
      :source_vpc,
      :target_vpc,
      :stack_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Properties of the Source Server machine.</p>
    # @!attribute last_updated_date_time
    #   <p>The date and time the Source Properties were last updated on.</p>
    #   @return [String]
    # @!attribute recommended_instance_type
    #   <p>The recommended EC2 instance type that will be used when recovering the Source Server.</p>
    #   @return [String]
    # @!attribute identification_hints
    #   <p>Hints used to uniquely identify a machine.</p>
    #   @return [Types::IdentificationHints]
    # @!attribute network_interfaces
    #   <p>An array of network interfaces.</p>
    #   @return [Array<Types::NetworkInterface>]
    # @!attribute disks
    #   <p>An array of disks.</p>
    #   @return [Array<Types::Disk>]
    # @!attribute cpus
    #   <p>An array of CPUs.</p>
    #   @return [Array<Types::CPU>]
    # @!attribute ram_bytes
    #   <p>The amount of RAM in bytes.</p>
    #   @return [Integer]
    # @!attribute os
    #   <p>Operating system.</p>
    #   @return [Types::OS]
    # @!attribute supports_nitro_instances
    #   <p>Are EC2 nitro instance types supported when recovering the Source Server.</p>
    #   @return [Boolean]
    class SourceProperties < Struct.new(
      :last_updated_date_time,
      :recommended_instance_type,
      :identification_hints,
      :network_interfaces,
      :disks,
      :cpus,
      :ram_bytes,
      :os,
      :supports_nitro_instances,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:ram_bytes] = 0 unless options.key?(:ram_bytes)
        super
      end
    end

    # @!attribute source_server_id
    #   <p>The ID of the Source Server.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the Source Server.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the Source Server.</p>
    #   @return [Hash<String, String>]
    # @!attribute recovery_instance_id
    #   <p>The ID of the Recovery Instance associated with this Source Server.</p>
    #   @return [String]
    # @!attribute last_launch_result
    #   <p>The status of the last recovery launch of this Source Server.</p>
    #   @return [String]
    # @!attribute data_replication_info
    #   <p>The Data Replication Info of the Source Server.</p>
    #   @return [Types::DataReplicationInfo]
    # @!attribute life_cycle
    #   <p>The lifecycle information of this Source Server.</p>
    #   @return [Types::LifeCycle]
    # @!attribute source_properties
    #   <p>The source properties of the Source Server.</p>
    #   @return [Types::SourceProperties]
    # @!attribute staging_area
    #   <p>The staging area of the source server.</p>
    #   @return [Types::StagingArea]
    # @!attribute source_cloud_properties
    #   <p>Source cloud properties of the Source Server.</p>
    #   @return [Types::SourceCloudProperties]
    # @!attribute replication_direction
    #   <p>Replication direction of the Source Server.</p>
    #   @return [String]
    # @!attribute reversed_direction_source_server_arn
    #   <p>For EC2-originated Source Servers which have been failed over and then failed back, this value will mean the ARN of the Source Server on the opposite replication direction.</p>
    #   @return [String]
    # @!attribute source_network_id
    #   <p>ID of the Source Network which is protecting this Source Server's network.</p>
    #   @return [String]
    # @!attribute agent_version
    #   <p>The version of the DRS agent installed on the source server</p>
    #   @return [String]
    class SourceServer < Struct.new(
      :source_server_id,
      :arn,
      :tags,
      :recovery_instance_id,
      :last_launch_result,
      :data_replication_info,
      :life_cycle,
      :source_properties,
      :staging_area,
      :source_cloud_properties,
      :replication_direction,
      :reversed_direction_source_server_arn,
      :source_network_id,
      :agent_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Staging information related to source server.</p>
    # @!attribute status
    #   <p>Status of Source server extension. Possible values:
    #               (a) NOT_EXTENDED - This is a source server that is replicating in the current account.
    #               (b) EXTENDED - Source server is extended from a staging source server. In this case, the value of stagingSourceServerArn is pointing to the Arn of the source server in the staging account.
    #               (c) EXTENSION_ERROR - Some issue occurred when accessing staging source server. In this case, errorMessage field will contain an error message that explains what happened.</p>
    #   @return [String]
    # @!attribute staging_account_id
    #   <p>Account ID of the account to which source server belongs. If this source server is extended - shows Account ID of staging source server.</p>
    #   @return [String]
    # @!attribute staging_source_server_arn
    #   <p>Arn of the staging source server if this source server is extended</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>Shows an error message that occurred when DRS tried to access the staging source server. In this case StagingArea$status will have value EXTENSION_ERROR</p>
    #   @return [String]
    class StagingArea < Struct.new(
      :status,
      :staging_account_id,
      :staging_source_server_arn,
      :error_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Source server in staging account that extended source server connected to.</p>
    # @!attribute hostname
    #   <p>Hostname of staging source server.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the source server.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags associated with the staging source server.</p>
    #   @return [Hash<String, String>]
    class StagingSourceServer < Struct.new(
      :hostname,
      :arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute recovery_instance_i_ds
    #   <p>The IDs of the Recovery Instance whose failback launch we want to request.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>The tags to be associated with the failback launch Job.</p>
    #   @return [Hash<String, String>]
    class StartFailbackLaunchInput < Struct.new(
      :recovery_instance_i_ds,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job
    #   <p>The failback launch Job.</p>
    #   @return [Types::Job]
    class StartFailbackLaunchOutput < Struct.new(
      :job,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_servers
    #   <p>The Source Servers that we want to start a Recovery Job for.</p>
    #   @return [Array<Types::StartRecoveryRequestSourceServer>]
    # @!attribute is_drill
    #   <p>Whether this Source Server Recovery operation is a drill or not.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>The tags to be associated with the Recovery Job.</p>
    #   @return [Hash<String, String>]
    class StartRecoveryInput < Struct.new(
      :source_servers,
      :is_drill,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job
    #   <p>The Recovery Job.</p>
    #   @return [Types::Job]
    class StartRecoveryOutput < Struct.new(
      :job,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing the Source Server to recover.</p>
    # @!attribute source_server_id
    #   <p>The ID of the Source Server you want to recover.</p>
    #   @return [String]
    # @!attribute recovery_snapshot_id
    #   <p>The ID of a Recovery Snapshot we want to recover from. Omit this field to launch from the latest data by taking an on-demand snapshot.</p>
    #   @return [String]
    class StartRecoveryRequestSourceServer < Struct.new(
      :source_server_id,
      :recovery_snapshot_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_server_id
    #   <p>The ID of the Source Server to start replication for.</p>
    #   @return [String]
    class StartReplicationInput < Struct.new(
      :source_server_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_server
    #   <p>The Source Server that this action was targeted on.</p>
    #   @return [Types::SourceServer]
    class StartReplicationOutput < Struct.new(
      :source_server,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_networks
    #   <p>The Source Networks that we want to start a Recovery Job for.</p>
    #   @return [Array<Types::StartSourceNetworkRecoveryRequestNetworkEntry>]
    # @!attribute deploy_as_new
    #   <p>Don't update existing CloudFormation Stack, recover the network using a new stack.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>The tags to be associated with the Source Network recovery Job.</p>
    #   @return [Hash<String, String>]
    class StartSourceNetworkRecoveryRequest < Struct.new(
      :source_networks,
      :deploy_as_new,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing the Source Network to recover.</p>
    # @!attribute source_network_id
    #   <p>The ID of the Source Network you want to recover.</p>
    #   @return [String]
    # @!attribute cfn_stack_name
    #   <p>CloudFormation stack name to be used for recovering the network.</p>
    #   @return [String]
    class StartSourceNetworkRecoveryRequestNetworkEntry < Struct.new(
      :source_network_id,
      :cfn_stack_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job
    #   <p>The Source Network recovery Job.</p>
    #   @return [Types::Job]
    class StartSourceNetworkRecoveryResponse < Struct.new(
      :job,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_network_id
    #   <p>ID of the Source Network to replicate.</p>
    #   @return [String]
    class StartSourceNetworkReplicationRequest < Struct.new(
      :source_network_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_network
    #   <p>Source Network which was requested for replication.</p>
    #   @return [Types::SourceNetwork]
    class StartSourceNetworkReplicationResponse < Struct.new(
      :source_network,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute recovery_instance_id
    #   <p>The ID of the Recovery Instance we want to stop failback for.</p>
    #   @return [String]
    class StopFailbackInput < Struct.new(
      :recovery_instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_server_id
    #   <p>The ID of the Source Server to stop replication for.</p>
    #   @return [String]
    class StopReplicationInput < Struct.new(
      :source_server_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_server
    #   <p>The Source Server that this action was targeted on.</p>
    #   @return [Types::SourceServer]
    class StopReplicationOutput < Struct.new(
      :source_server,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_network_id
    #   <p>ID of the Source Network to stop replication.</p>
    #   @return [String]
    class StopSourceNetworkReplicationRequest < Struct.new(
      :source_network_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_network
    #   <p>Source Network which was requested to stop replication.</p>
    #   @return [Types::SourceNetwork]
    class StopSourceNetworkReplicationResponse < Struct.new(
      :source_network,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>ARN of the resource for which tags are to be added or updated.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Array of tags to be added or updated.</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute recovery_instance_i_ds
    #   <p>The IDs of the Recovery Instances that should be terminated.</p>
    #   @return [Array<String>]
    class TerminateRecoveryInstancesInput < Struct.new(
      :recovery_instance_i_ds,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job
    #   <p>The Job for terminating the Recovery Instances.</p>
    #   @return [Types::Job]
    class TerminateRecoveryInstancesOutput < Struct.new(
      :job,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute service_code
    #   <p>Service code.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>Quota code.</p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds after which the request should be safe to retry.</p>
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The account performing the request has not been initialized.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    class UninitializedAccountException < Struct.new(
      :message,
      :code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>ARN of the resource for which tags are to be removed.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>Array of tags to be removed.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute recovery_instance_id
    #   <p>The ID of the Recovery Instance.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the Failback Replication Configuration.</p>
    #   @return [String]
    # @!attribute bandwidth_throttling
    #   <p>Configure bandwidth throttling for the outbound data transfer rate of the Recovery Instance in Mbps.</p>
    #   @return [Integer]
    # @!attribute use_private_ip
    #   <p>Whether to use Private IP for the failback replication of the Recovery Instance.</p>
    #   @return [Boolean]
    class UpdateFailbackReplicationConfigurationInput < Struct.new(
      :recovery_instance_id,
      :name,
      :bandwidth_throttling,
      :use_private_ip,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_server_id
    #   <p>The ID of the Source Server that we want to retrieve a Launch Configuration for.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the launch configuration.</p>
    #   @return [String]
    # @!attribute launch_disposition
    #   <p>The state of the Recovery Instance in EC2 after the recovery operation.</p>
    #   @return [String]
    # @!attribute target_instance_type_right_sizing_method
    #   <p>Whether Elastic Disaster Recovery should try to automatically choose the instance type that best matches the OS, CPU, and RAM of your Source Server.</p>
    #   @return [String]
    # @!attribute copy_private_ip
    #   <p>Whether we should copy the Private IP of the Source Server to the Recovery Instance.</p>
    #   @return [Boolean]
    # @!attribute copy_tags
    #   <p>Whether we want to copy the tags of the Source Server to the EC2 machine of the Recovery Instance.</p>
    #   @return [Boolean]
    # @!attribute licensing
    #   <p>The licensing configuration to be used for this launch configuration.</p>
    #   @return [Types::Licensing]
    # @!attribute post_launch_enabled
    #   <p>Whether we want to enable post-launch actions for the Source Server.</p>
    #   @return [Boolean]
    # @!attribute launch_into_instance_properties
    #   <p>Launch into existing instance properties.</p>
    #   @return [Types::LaunchIntoInstanceProperties]
    class UpdateLaunchConfigurationInput < Struct.new(
      :source_server_id,
      :name,
      :launch_disposition,
      :target_instance_type_right_sizing_method,
      :copy_private_ip,
      :copy_tags,
      :licensing,
      :post_launch_enabled,
      :launch_into_instance_properties,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_server_id
    #   <p>The ID of the Source Server for this launch configuration.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the launch configuration.</p>
    #   @return [String]
    # @!attribute ec2_launch_template_id
    #   <p>The EC2 launch template ID of this launch configuration.</p>
    #   @return [String]
    # @!attribute launch_disposition
    #   <p>The state of the Recovery Instance in EC2 after the recovery operation.</p>
    #   @return [String]
    # @!attribute target_instance_type_right_sizing_method
    #   <p>Whether Elastic Disaster Recovery should try to automatically choose the instance type that best matches the OS, CPU, and RAM of your Source Server.</p>
    #   @return [String]
    # @!attribute copy_private_ip
    #   <p>Whether we should copy the Private IP of the Source Server to the Recovery Instance.</p>
    #   @return [Boolean]
    # @!attribute copy_tags
    #   <p>Whether we want to copy the tags of the Source Server to the EC2 machine of the Recovery Instance.</p>
    #   @return [Boolean]
    # @!attribute licensing
    #   <p>The licensing configuration to be used for this launch configuration.</p>
    #   @return [Types::Licensing]
    # @!attribute post_launch_enabled
    #   <p>Whether we want to activate post-launch actions for the Source Server.</p>
    #   @return [Boolean]
    # @!attribute launch_into_instance_properties
    #   <p>Launch into existing instance properties.</p>
    #   @return [Types::LaunchIntoInstanceProperties]
    class UpdateLaunchConfigurationOutput < Struct.new(
      :source_server_id,
      :name,
      :ec2_launch_template_id,
      :launch_disposition,
      :target_instance_type_right_sizing_method,
      :copy_private_ip,
      :copy_tags,
      :licensing,
      :post_launch_enabled,
      :launch_into_instance_properties,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute launch_configuration_template_id
    #   <p>Launch Configuration Template ID.</p>
    #   @return [String]
    # @!attribute launch_disposition
    #   <p>Launch disposition.</p>
    #   @return [String]
    # @!attribute target_instance_type_right_sizing_method
    #   <p>Target instance type right-sizing method.</p>
    #   @return [String]
    # @!attribute copy_private_ip
    #   <p>Copy private IP.</p>
    #   @return [Boolean]
    # @!attribute copy_tags
    #   <p>Copy tags.</p>
    #   @return [Boolean]
    # @!attribute licensing
    #   <p>Licensing.</p>
    #   @return [Types::Licensing]
    # @!attribute export_bucket_arn
    #   <p>S3 bucket ARN to export Source Network templates.</p>
    #   @return [String]
    # @!attribute post_launch_enabled
    #   <p>Whether we want to activate post-launch actions.</p>
    #   @return [Boolean]
    # @!attribute launch_into_source_instance
    #   <p>DRS will set the 'launch into instance ID' of any source server when performing a drill, recovery or failback to the previous region or availability zone, using the instance ID of the source instance.</p>
    #   @return [Boolean]
    class UpdateLaunchConfigurationTemplateInput < Struct.new(
      :launch_configuration_template_id,
      :launch_disposition,
      :target_instance_type_right_sizing_method,
      :copy_private_ip,
      :copy_tags,
      :licensing,
      :export_bucket_arn,
      :post_launch_enabled,
      :launch_into_source_instance,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute launch_configuration_template
    #   <p>Updated Launch Configuration Template.</p>
    #   @return [Types::LaunchConfigurationTemplate]
    class UpdateLaunchConfigurationTemplateOutput < Struct.new(
      :launch_configuration_template,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_server_id
    #   <p>The ID of the Source Server for this Replication Configuration.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the Replication Configuration.</p>
    #   @return [String]
    # @!attribute staging_area_subnet_id
    #   <p>The subnet to be used by the replication staging area.</p>
    #   @return [String]
    # @!attribute associate_default_security_group
    #   <p>Whether to associate the default Elastic Disaster Recovery Security group with the Replication Configuration.</p>
    #   @return [Boolean]
    # @!attribute replication_servers_security_groups_i_ds
    #   <p>The security group IDs that will be used by the replication server.</p>
    #   @return [Array<String>]
    # @!attribute replication_server_instance_type
    #   <p>The instance type to be used for the replication server.</p>
    #   @return [String]
    # @!attribute use_dedicated_replication_server
    #   <p>Whether to use a dedicated Replication Server in the replication staging area.</p>
    #   @return [Boolean]
    # @!attribute default_large_staging_disk_type
    #   <p>The Staging Disk EBS volume type to be used during replication.</p>
    #   @return [String]
    # @!attribute replicated_disks
    #   <p>The configuration of the disks of the Source Server to be replicated.</p>
    #   @return [Array<Types::ReplicationConfigurationReplicatedDisk>]
    # @!attribute ebs_encryption
    #   <p>The type of EBS encryption to be used during replication.</p>
    #   @return [String]
    # @!attribute ebs_encryption_key_arn
    #   <p>The ARN of the EBS encryption key to be used during replication.</p>
    #   @return [String]
    # @!attribute bandwidth_throttling
    #   <p>Configure bandwidth throttling for the outbound data transfer rate of the Source Server in Mbps.</p>
    #   @return [Integer]
    # @!attribute data_plane_routing
    #   <p>The data plane routing mechanism that will be used for replication.</p>
    #   @return [String]
    # @!attribute create_public_ip
    #   <p>Whether to create a Public IP for the Recovery Instance by default.</p>
    #   @return [Boolean]
    # @!attribute staging_area_tags
    #   <p>A set of tags to be associated with all resources created in the replication staging area: EC2 replication server, EBS volumes, EBS snapshots, etc.</p>
    #   @return [Hash<String, String>]
    # @!attribute pit_policy
    #   <p>The Point in time (PIT) policy to manage snapshots taken during replication.</p>
    #   @return [Array<Types::PITPolicyRule>]
    # @!attribute auto_replicate_new_disks
    #   <p>Whether to allow the AWS replication agent to automatically replicate newly added disks.</p>
    #   @return [Boolean]
    class UpdateReplicationConfigurationInput < Struct.new(
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
      :pit_policy,
      :auto_replicate_new_disks,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_server_id
    #   <p>The ID of the Source Server for this Replication Configuration.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the Replication Configuration.</p>
    #   @return [String]
    # @!attribute staging_area_subnet_id
    #   <p>The subnet to be used by the replication staging area.</p>
    #   @return [String]
    # @!attribute associate_default_security_group
    #   <p>Whether to associate the default Elastic Disaster Recovery Security group with the Replication Configuration.</p>
    #   @return [Boolean]
    # @!attribute replication_servers_security_groups_i_ds
    #   <p>The security group IDs that will be used by the replication server.</p>
    #   @return [Array<String>]
    # @!attribute replication_server_instance_type
    #   <p>The instance type to be used for the replication server.</p>
    #   @return [String]
    # @!attribute use_dedicated_replication_server
    #   <p>Whether to use a dedicated Replication Server in the replication staging area.</p>
    #   @return [Boolean]
    # @!attribute default_large_staging_disk_type
    #   <p>The Staging Disk EBS volume type to be used during replication.</p>
    #   @return [String]
    # @!attribute replicated_disks
    #   <p>The configuration of the disks of the Source Server to be replicated.</p>
    #   @return [Array<Types::ReplicationConfigurationReplicatedDisk>]
    # @!attribute ebs_encryption
    #   <p>The type of EBS encryption to be used during replication.</p>
    #   @return [String]
    # @!attribute ebs_encryption_key_arn
    #   <p>The ARN of the EBS encryption key to be used during replication.</p>
    #   @return [String]
    # @!attribute bandwidth_throttling
    #   <p>Configure bandwidth throttling for the outbound data transfer rate of the Source Server in Mbps.</p>
    #   @return [Integer]
    # @!attribute data_plane_routing
    #   <p>The data plane routing mechanism that will be used for replication.</p>
    #   @return [String]
    # @!attribute create_public_ip
    #   <p>Whether to create a Public IP for the Recovery Instance by default.</p>
    #   @return [Boolean]
    # @!attribute staging_area_tags
    #   <p>A set of tags to be associated with all resources created in the replication staging area: EC2 replication server, EBS volumes, EBS snapshots, etc.</p>
    #   @return [Hash<String, String>]
    # @!attribute pit_policy
    #   <p>The Point in time (PIT) policy to manage snapshots taken during replication.</p>
    #   @return [Array<Types::PITPolicyRule>]
    # @!attribute auto_replicate_new_disks
    #   <p>Whether to allow the AWS replication agent to automatically replicate newly added disks.</p>
    #   @return [Boolean]
    class UpdateReplicationConfigurationOutput < Struct.new(
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
      :pit_policy,
      :auto_replicate_new_disks,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:bandwidth_throttling] = 0 unless options.key?(:bandwidth_throttling)
        super
      end
    end

    # @!attribute replication_configuration_template_id
    #   <p>The Replication Configuration Template ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Replication Configuration Template ARN.</p>
    #   @return [String]
    # @!attribute staging_area_subnet_id
    #   <p>The subnet to be used by the replication staging area.</p>
    #   @return [String]
    # @!attribute associate_default_security_group
    #   <p>Whether to associate the default Elastic Disaster Recovery Security group with the Replication Configuration Template.</p>
    #   @return [Boolean]
    # @!attribute replication_servers_security_groups_i_ds
    #   <p>The security group IDs that will be used by the replication server.</p>
    #   @return [Array<String>]
    # @!attribute replication_server_instance_type
    #   <p>The instance type to be used for the replication server.</p>
    #   @return [String]
    # @!attribute use_dedicated_replication_server
    #   <p>Whether to use a dedicated Replication Server in the replication staging area.</p>
    #   @return [Boolean]
    # @!attribute default_large_staging_disk_type
    #   <p>The Staging Disk EBS volume type to be used during replication.</p>
    #   @return [String]
    # @!attribute ebs_encryption
    #   <p>The type of EBS encryption to be used during replication.</p>
    #   @return [String]
    # @!attribute ebs_encryption_key_arn
    #   <p>The ARN of the EBS encryption key to be used during replication.</p>
    #   @return [String]
    # @!attribute bandwidth_throttling
    #   <p>Configure bandwidth throttling for the outbound data transfer rate of the Source Server in Mbps.</p>
    #   @return [Integer]
    # @!attribute data_plane_routing
    #   <p>The data plane routing mechanism that will be used for replication.</p>
    #   @return [String]
    # @!attribute create_public_ip
    #   <p>Whether to create a Public IP for the Recovery Instance by default.</p>
    #   @return [Boolean]
    # @!attribute staging_area_tags
    #   <p>A set of tags to be associated with all resources created in the replication staging area: EC2 replication server, EBS volumes, EBS snapshots, etc.</p>
    #   @return [Hash<String, String>]
    # @!attribute pit_policy
    #   <p>The Point in time (PIT) policy to manage snapshots taken during replication.</p>
    #   @return [Array<Types::PITPolicyRule>]
    # @!attribute auto_replicate_new_disks
    #   <p>Whether to allow the AWS replication agent to automatically replicate newly added disks.</p>
    #   @return [Boolean]
    class UpdateReplicationConfigurationTemplateInput < Struct.new(
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
      :pit_policy,
      :auto_replicate_new_disks,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute replication_configuration_template_id
    #   <p>The Replication Configuration Template ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Replication Configuration Template ARN.</p>
    #   @return [String]
    # @!attribute staging_area_subnet_id
    #   <p>The subnet to be used by the replication staging area.</p>
    #   @return [String]
    # @!attribute associate_default_security_group
    #   <p>Whether to associate the default Elastic Disaster Recovery Security group with the Replication Configuration Template.</p>
    #   @return [Boolean]
    # @!attribute replication_servers_security_groups_i_ds
    #   <p>The security group IDs that will be used by the replication server.</p>
    #   @return [Array<String>]
    # @!attribute replication_server_instance_type
    #   <p>The instance type to be used for the replication server.</p>
    #   @return [String]
    # @!attribute use_dedicated_replication_server
    #   <p>Whether to use a dedicated Replication Server in the replication staging area.</p>
    #   @return [Boolean]
    # @!attribute default_large_staging_disk_type
    #   <p>The Staging Disk EBS volume type to be used during replication.</p>
    #   @return [String]
    # @!attribute ebs_encryption
    #   <p>The type of EBS encryption to be used during replication.</p>
    #   @return [String]
    # @!attribute ebs_encryption_key_arn
    #   <p>The ARN of the EBS encryption key to be used during replication.</p>
    #   @return [String]
    # @!attribute bandwidth_throttling
    #   <p>Configure bandwidth throttling for the outbound data transfer rate of the Source Server in Mbps.</p>
    #   @return [Integer]
    # @!attribute data_plane_routing
    #   <p>The data plane routing mechanism that will be used for replication.</p>
    #   @return [String]
    # @!attribute create_public_ip
    #   <p>Whether to create a Public IP for the Recovery Instance by default.</p>
    #   @return [Boolean]
    # @!attribute staging_area_tags
    #   <p>A set of tags to be associated with all resources created in the replication staging area: EC2 replication server, EBS volumes, EBS snapshots, etc.</p>
    #   @return [Hash<String, String>]
    # @!attribute tags
    #   <p>A set of tags to be associated with the Replication Configuration Template resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute pit_policy
    #   <p>The Point in time (PIT) policy to manage snapshots taken during replication.</p>
    #   @return [Array<Types::PITPolicyRule>]
    # @!attribute auto_replicate_new_disks
    #   <p>Whether to allow the AWS replication agent to automatically replicate newly added disks.</p>
    #   @return [Boolean]
    class UpdateReplicationConfigurationTemplateOutput < Struct.new(
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
      :tags,
      :pit_policy,
      :auto_replicate_new_disks,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:bandwidth_throttling] = 0 unless options.key?(:bandwidth_throttling)
        super
      end
    end

    # <p>The input fails to satisfy the constraints specified by the AWS service.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    # @!attribute reason
    #   <p>Validation exception reason.</p>
    #   @return [String]
    # @!attribute field_list
    #   <p>A list of fields that failed validation.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      :message,
      :code,
      :reason,
      :field_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Validate exception field.</p>
    # @!attribute name
    #   <p>Validate exception field name.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Validate exception field message.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      :name,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
