# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Drs
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # AWS account.
    #
    # @!attribute [rw] account_id
    #   Account ID of AWS account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/Account AWS API Documentation
    #
    class Account < Struct.new(
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cfn_stack_name
    #   CloudFormation template to associate with a Source Network.
    #   @return [String]
    #
    # @!attribute [rw] source_network_id
    #   The Source Network ID to associate with CloudFormation template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/AssociateSourceNetworkStackRequest AWS API Documentation
    #
    class AssociateSourceNetworkStackRequest < Struct.new(
      :cfn_stack_name,
      :source_network_id)
      SENSITIVE = [:cfn_stack_name]
      include Aws::Structure
    end

    # @!attribute [rw] job
    #   The Source Network association Job.
    #   @return [Types::Job]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/AssociateSourceNetworkStackResponse AWS API Documentation
    #
    class AssociateSourceNetworkStackResponse < Struct.new(
      :job)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a server's CPU.
    #
    # @!attribute [rw] cores
    #   The number of CPU cores.
    #   @return [Integer]
    #
    # @!attribute [rw] model_name
    #   The model name of the CPU.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/CPU AWS API Documentation
    #
    class CPU < Struct.new(
      :cores,
      :model_name)
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
    #   The ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :code,
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Properties of a conversion job
    #
    # @!attribute [rw] data_timestamp
    #   The timestamp of when the snapshot being converted was taken
    #   @return [String]
    #
    # @!attribute [rw] force_uefi
    #   Whether the volume being converted uses UEFI or not
    #   @return [Boolean]
    #
    # @!attribute [rw] root_volume_name
    #   The root volume name of a conversion job
    #   @return [String]
    #
    # @!attribute [rw] volume_to_conversion_map
    #   A mapping between the volumes being converted and the converted
    #   snapshot ids
    #   @return [Hash<String,Hash<String,String>>]
    #
    # @!attribute [rw] volume_to_volume_size
    #   A mapping between the volumes and their sizes
    #   @return [Hash<String,Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/ConversionProperties AWS API Documentation
    #
    class ConversionProperties < Struct.new(
      :data_timestamp,
      :force_uefi,
      :root_volume_name,
      :volume_to_conversion_map,
      :volume_to_volume_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_server_arn
    #   This defines the ARN of the source server in staging Account based
    #   on which you want to create an extended source server.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags associated with the extended source server.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/CreateExtendedSourceServerRequest AWS API Documentation
    #
    class CreateExtendedSourceServerRequest < Struct.new(
      :source_server_arn,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] source_server
    #   Created extended source server.
    #   @return [Types::SourceServer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/CreateExtendedSourceServerResponse AWS API Documentation
    #
    class CreateExtendedSourceServerResponse < Struct.new(
      :source_server)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] copy_private_ip
    #   Copy private IP.
    #   @return [Boolean]
    #
    # @!attribute [rw] copy_tags
    #   Copy tags.
    #   @return [Boolean]
    #
    # @!attribute [rw] export_bucket_arn
    #   S3 bucket ARN to export Source Network templates.
    #   @return [String]
    #
    # @!attribute [rw] launch_disposition
    #   Launch disposition.
    #   @return [String]
    #
    # @!attribute [rw] licensing
    #   Licensing.
    #   @return [Types::Licensing]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/CreateLaunchConfigurationTemplateRequest AWS API Documentation
    #
    class CreateLaunchConfigurationTemplateRequest < Struct.new(
      :copy_private_ip,
      :copy_tags,
      :export_bucket_arn,
      :launch_disposition,
      :licensing,
      :tags,
      :target_instance_type_right_sizing_method)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] launch_configuration_template
    #   Created Launch Configuration Template.
    #   @return [Types::LaunchConfigurationTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/CreateLaunchConfigurationTemplateResponse AWS API Documentation
    #
    class CreateLaunchConfigurationTemplateResponse < Struct.new(
      :launch_configuration_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] associate_default_security_group
    #   Whether to associate the default Elastic Disaster Recovery Security
    #   group with the Replication Configuration Template.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_replicate_new_disks
    #   Whether to allow the AWS replication agent to automatically
    #   replicate newly added disks.
    #   @return [Boolean]
    #
    # @!attribute [rw] bandwidth_throttling
    #   Configure bandwidth throttling for the outbound data transfer rate
    #   of the Source Server in Mbps.
    #   @return [Integer]
    #
    # @!attribute [rw] create_public_ip
    #   Whether to create a Public IP for the Recovery Instance by default.
    #   @return [Boolean]
    #
    # @!attribute [rw] data_plane_routing
    #   The data plane routing mechanism that will be used for replication.
    #   @return [String]
    #
    # @!attribute [rw] default_large_staging_disk_type
    #   The Staging Disk EBS volume type to be used during replication.
    #   @return [String]
    #
    # @!attribute [rw] ebs_encryption
    #   The type of EBS encryption to be used during replication.
    #   @return [String]
    #
    # @!attribute [rw] ebs_encryption_key_arn
    #   The ARN of the EBS encryption key to be used during replication.
    #   @return [String]
    #
    # @!attribute [rw] pit_policy
    #   The Point in time (PIT) policy to manage snapshots taken during
    #   replication.
    #   @return [Array<Types::PITPolicyRule>]
    #
    # @!attribute [rw] replication_server_instance_type
    #   The instance type to be used for the replication server.
    #   @return [String]
    #
    # @!attribute [rw] replication_servers_security_groups_i_ds
    #   The security group IDs that will be used by the replication server.
    #   @return [Array<String>]
    #
    # @!attribute [rw] staging_area_subnet_id
    #   The subnet to be used by the replication staging area.
    #   @return [String]
    #
    # @!attribute [rw] staging_area_tags
    #   A set of tags to be associated with all resources created in the
    #   replication staging area: EC2 replication server, EBS volumes, EBS
    #   snapshots, etc.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tags
    #   A set of tags to be associated with the Replication Configuration
    #   Template resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] use_dedicated_replication_server
    #   Whether to use a dedicated Replication Server in the replication
    #   staging area.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/CreateReplicationConfigurationTemplateRequest AWS API Documentation
    #
    class CreateReplicationConfigurationTemplateRequest < Struct.new(
      :associate_default_security_group,
      :auto_replicate_new_disks,
      :bandwidth_throttling,
      :create_public_ip,
      :data_plane_routing,
      :default_large_staging_disk_type,
      :ebs_encryption,
      :ebs_encryption_key_arn,
      :pit_policy,
      :replication_server_instance_type,
      :replication_servers_security_groups_i_ds,
      :staging_area_subnet_id,
      :staging_area_tags,
      :tags,
      :use_dedicated_replication_server)
      SENSITIVE = [:staging_area_tags, :tags]
      include Aws::Structure
    end

    # @!attribute [rw] origin_account_id
    #   Account containing the VPC to protect.
    #   @return [String]
    #
    # @!attribute [rw] origin_region
    #   Region containing the VPC to protect.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A set of tags to be associated with the Source Network resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] vpc_id
    #   Which VPC ID to protect.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/CreateSourceNetworkRequest AWS API Documentation
    #
    class CreateSourceNetworkRequest < Struct.new(
      :origin_account_id,
      :origin_region,
      :tags,
      :vpc_id)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] source_network_id
    #   ID of the created Source Network.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/CreateSourceNetworkResponse AWS API Documentation
    #
    class CreateSourceNetworkResponse < Struct.new(
      :source_network_id)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DataReplicationError AWS API Documentation
    #
    class DataReplicationError < Struct.new(
      :error,
      :raw_error)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about Data Replication
    #
    # @!attribute [rw] data_replication_error
    #   Error in data replication.
    #   @return [Types::DataReplicationError]
    #
    # @!attribute [rw] data_replication_initiation
    #   Information about whether the data replication has been initiated.
    #   @return [Types::DataReplicationInitiation]
    #
    # @!attribute [rw] data_replication_state
    #   The state of the data replication.
    #   @return [String]
    #
    # @!attribute [rw] eta_date_time
    #   An estimate of when the data replication will be completed.
    #   @return [String]
    #
    # @!attribute [rw] lag_duration
    #   Data replication lag duration.
    #   @return [String]
    #
    # @!attribute [rw] replicated_disks
    #   The disks that should be replicated.
    #   @return [Array<Types::DataReplicationInfoReplicatedDisk>]
    #
    # @!attribute [rw] staging_availability_zone
    #   AWS Availability zone into which data is being replicated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DataReplicationInfo AWS API Documentation
    #
    class DataReplicationInfo < Struct.new(
      :data_replication_error,
      :data_replication_initiation,
      :data_replication_state,
      :eta_date_time,
      :lag_duration,
      :replicated_disks,
      :staging_availability_zone)
      SENSITIVE = []
      include Aws::Structure
    end

    # A disk that should be replicated.
    #
    # @!attribute [rw] backlogged_storage_bytes
    #   The size of the replication backlog in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] device_name
    #   The name of the device.
    #   @return [String]
    #
    # @!attribute [rw] replicated_storage_bytes
    #   The amount of data replicated so far in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] rescanned_storage_bytes
    #   The amount of data to be rescanned in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] total_storage_bytes
    #   The total amount of data to be replicated in bytes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DataReplicationInfoReplicatedDisk AWS API Documentation
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
    #   The date and time of the next attempt to initiate data replication.
    #   @return [String]
    #
    # @!attribute [rw] start_date_time
    #   The date and time of the current attempt to initiate data
    #   replication.
    #   @return [String]
    #
    # @!attribute [rw] steps
    #   The steps of the current attempt to initiate data replication.
    #   @return [Array<Types::DataReplicationInitiationStep>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DataReplicationInitiation AWS API Documentation
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
    #   The name of the step.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the step.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DataReplicationInitiationStep AWS API Documentation
    #
    class DataReplicationInitiationStep < Struct.new(
      :name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The ID of the Job to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DeleteJobRequest AWS API Documentation
    #
    class DeleteJobRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DeleteJobResponse AWS API Documentation
    #
    class DeleteJobResponse < Aws::EmptyStructure; end

    # @!attribute [rw] launch_configuration_template_id
    #   The ID of the Launch Configuration Template to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DeleteLaunchConfigurationTemplateRequest AWS API Documentation
    #
    class DeleteLaunchConfigurationTemplateRequest < Struct.new(
      :launch_configuration_template_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DeleteLaunchConfigurationTemplateResponse AWS API Documentation
    #
    class DeleteLaunchConfigurationTemplateResponse < Aws::EmptyStructure; end

    # @!attribute [rw] recovery_instance_id
    #   The ID of the Recovery Instance to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DeleteRecoveryInstanceRequest AWS API Documentation
    #
    class DeleteRecoveryInstanceRequest < Struct.new(
      :recovery_instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_configuration_template_id
    #   The ID of the Replication Configuration Template to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DeleteReplicationConfigurationTemplateRequest AWS API Documentation
    #
    class DeleteReplicationConfigurationTemplateRequest < Struct.new(
      :replication_configuration_template_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DeleteReplicationConfigurationTemplateResponse AWS API Documentation
    #
    class DeleteReplicationConfigurationTemplateResponse < Aws::EmptyStructure; end

    # @!attribute [rw] source_network_id
    #   ID of the Source Network to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DeleteSourceNetworkRequest AWS API Documentation
    #
    class DeleteSourceNetworkRequest < Struct.new(
      :source_network_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DeleteSourceNetworkResponse AWS API Documentation
    #
    class DeleteSourceNetworkResponse < Aws::EmptyStructure; end

    # @!attribute [rw] source_server_id
    #   The ID of the Source Server to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DeleteSourceServerRequest AWS API Documentation
    #
    class DeleteSourceServerRequest < Struct.new(
      :source_server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DeleteSourceServerResponse AWS API Documentation
    #
    class DeleteSourceServerResponse < Aws::EmptyStructure; end

    # @!attribute [rw] job_id
    #   The ID of the Job for which Job log items will be retrieved.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of Job log items to retrieve.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token of the next Job log items to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DescribeJobLogItemsRequest AWS API Documentation
    #
    class DescribeJobLogItemsRequest < Struct.new(
      :job_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   An array of Job log items.
    #   @return [Array<Types::JobLog>]
    #
    # @!attribute [rw] next_token
    #   The token of the next Job log items to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DescribeJobLogItemsResponse AWS API Documentation
    #
    class DescribeJobLogItemsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   A set of filters by which to return Jobs.
    #   @return [Types::DescribeJobsRequestFilters]
    #
    # @!attribute [rw] max_results
    #   Maximum number of Jobs to retrieve.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token of the next Job to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DescribeJobsRequest AWS API Documentation
    #
    class DescribeJobsRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A set of filters by which to return Jobs.
    #
    # @!attribute [rw] from_date
    #   The start date in a date range query.
    #   @return [String]
    #
    # @!attribute [rw] job_i_ds
    #   An array of Job IDs that should be returned. An empty array means
    #   all jobs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] to_date
    #   The end date in a date range query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DescribeJobsRequestFilters AWS API Documentation
    #
    class DescribeJobsRequestFilters < Struct.new(
      :from_date,
      :job_i_ds,
      :to_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   An array of Jobs.
    #   @return [Array<Types::Job>]
    #
    # @!attribute [rw] next_token
    #   The token of the next Job to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DescribeJobsResponse AWS API Documentation
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
    #   The token of the next Launch Configuration Template to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DescribeLaunchConfigurationTemplatesRequest AWS API Documentation
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
    #   The token of the next Launch Configuration Template to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DescribeLaunchConfigurationTemplatesResponse AWS API Documentation
    #
    class DescribeLaunchConfigurationTemplatesResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   A set of filters by which to return Recovery Instances.
    #   @return [Types::DescribeRecoveryInstancesRequestFilters]
    #
    # @!attribute [rw] max_results
    #   Maximum number of Recovery Instances to retrieve.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token of the next Recovery Instance to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DescribeRecoveryInstancesRequest AWS API Documentation
    #
    class DescribeRecoveryInstancesRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A set of filters by which to return Recovery Instances.
    #
    # @!attribute [rw] recovery_instance_i_ds
    #   An array of Recovery Instance IDs that should be returned. An empty
    #   array means all Recovery Instances.
    #   @return [Array<String>]
    #
    # @!attribute [rw] source_server_i_ds
    #   An array of Source Server IDs for which associated Recovery
    #   Instances should be returned.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DescribeRecoveryInstancesRequestFilters AWS API Documentation
    #
    class DescribeRecoveryInstancesRequestFilters < Struct.new(
      :recovery_instance_i_ds,
      :source_server_i_ds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   An array of Recovery Instances.
    #   @return [Array<Types::RecoveryInstance>]
    #
    # @!attribute [rw] next_token
    #   The token of the next Recovery Instance to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DescribeRecoveryInstancesResponse AWS API Documentation
    #
    class DescribeRecoveryInstancesResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   A set of filters by which to return Recovery Snapshots.
    #   @return [Types::DescribeRecoverySnapshotsRequestFilters]
    #
    # @!attribute [rw] max_results
    #   Maximum number of Recovery Snapshots to retrieve.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token of the next Recovery Snapshot to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] order
    #   The sorted ordering by which to return Recovery Snapshots.
    #   @return [String]
    #
    # @!attribute [rw] source_server_id
    #   Filter Recovery Snapshots by Source Server ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DescribeRecoverySnapshotsRequest AWS API Documentation
    #
    class DescribeRecoverySnapshotsRequest < Struct.new(
      :filters,
      :max_results,
      :next_token,
      :order,
      :source_server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A set of filters by which to return Recovery Snapshots.
    #
    # @!attribute [rw] from_date_time
    #   The start date in a date range query.
    #   @return [String]
    #
    # @!attribute [rw] to_date_time
    #   The end date in a date range query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DescribeRecoverySnapshotsRequestFilters AWS API Documentation
    #
    class DescribeRecoverySnapshotsRequestFilters < Struct.new(
      :from_date_time,
      :to_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   An array of Recovery Snapshots.
    #   @return [Array<Types::RecoverySnapshot>]
    #
    # @!attribute [rw] next_token
    #   The token of the next Recovery Snapshot to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DescribeRecoverySnapshotsResponse AWS API Documentation
    #
    class DescribeRecoverySnapshotsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   Maximum number of Replication Configuration Templates to retrieve.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token of the next Replication Configuration Template to
    #   retrieve.
    #   @return [String]
    #
    # @!attribute [rw] replication_configuration_template_i_ds
    #   The IDs of the Replication Configuration Templates to retrieve. An
    #   empty list means all Replication Configuration Templates.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DescribeReplicationConfigurationTemplatesRequest AWS API Documentation
    #
    class DescribeReplicationConfigurationTemplatesRequest < Struct.new(
      :max_results,
      :next_token,
      :replication_configuration_template_i_ds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   An array of Replication Configuration Templates.
    #   @return [Array<Types::ReplicationConfigurationTemplate>]
    #
    # @!attribute [rw] next_token
    #   The token of the next Replication Configuration Template to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DescribeReplicationConfigurationTemplatesResponse AWS API Documentation
    #
    class DescribeReplicationConfigurationTemplatesResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   A set of filters by which to return Source Networks.
    #   @return [Types::DescribeSourceNetworksRequestFilters]
    #
    # @!attribute [rw] max_results
    #   Maximum number of Source Networks to retrieve.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token of the next Source Networks to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DescribeSourceNetworksRequest AWS API Documentation
    #
    class DescribeSourceNetworksRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A set of filters by which to return Source Networks.
    #
    # @!attribute [rw] origin_account_id
    #   Filter Source Networks by account ID containing the protected VPCs.
    #   @return [String]
    #
    # @!attribute [rw] origin_region
    #   Filter Source Networks by the region containing the protected VPCs.
    #   @return [String]
    #
    # @!attribute [rw] source_network_i_ds
    #   An array of Source Network IDs that should be returned. An empty
    #   array means all Source Networks.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DescribeSourceNetworksRequestFilters AWS API Documentation
    #
    class DescribeSourceNetworksRequestFilters < Struct.new(
      :origin_account_id,
      :origin_region,
      :source_network_i_ds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   An array of Source Networks.
    #   @return [Array<Types::SourceNetwork>]
    #
    # @!attribute [rw] next_token
    #   The token of the next Source Networks to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DescribeSourceNetworksResponse AWS API Documentation
    #
    class DescribeSourceNetworksResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   A set of filters by which to return Source Servers.
    #   @return [Types::DescribeSourceServersRequestFilters]
    #
    # @!attribute [rw] max_results
    #   Maximum number of Source Servers to retrieve.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token of the next Source Server to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DescribeSourceServersRequest AWS API Documentation
    #
    class DescribeSourceServersRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A set of filters by which to return Source Servers.
    #
    # @!attribute [rw] hardware_id
    #   An ID that describes the hardware of the Source Server. This is
    #   either an EC2 instance id, a VMware uuid or a mac address.
    #   @return [String]
    #
    # @!attribute [rw] source_server_i_ds
    #   An array of Source Servers IDs that should be returned. An empty
    #   array means all Source Servers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] staging_account_i_ds
    #   An array of staging account IDs that extended source servers belong
    #   to. An empty array means all source servers will be shown.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DescribeSourceServersRequestFilters AWS API Documentation
    #
    class DescribeSourceServersRequestFilters < Struct.new(
      :hardware_id,
      :source_server_i_ds,
      :staging_account_i_ds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   An array of Source Servers.
    #   @return [Array<Types::SourceServer>]
    #
    # @!attribute [rw] next_token
    #   The token of the next Source Server to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DescribeSourceServersResponse AWS API Documentation
    #
    class DescribeSourceServersResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recovery_instance_id
    #   The ID of the Recovery Instance to disconnect.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DisconnectRecoveryInstanceRequest AWS API Documentation
    #
    class DisconnectRecoveryInstanceRequest < Struct.new(
      :recovery_instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_server_id
    #   The ID of the Source Server to disconnect.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DisconnectSourceServerRequest AWS API Documentation
    #
    class DisconnectSourceServerRequest < Struct.new(
      :source_server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing a data storage device on a server.
    #
    # @!attribute [rw] bytes
    #   The amount of storage on the disk in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] device_name
    #   The disk or device name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/Disk AWS API Documentation
    #
    class Disk < Struct.new(
      :bytes,
      :device_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Properties of resource related to a job event.
    #
    # @note EventResourceData is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of EventResourceData corresponding to the set member.
    #
    # @!attribute [rw] source_network_data
    #   Source Network properties.
    #   @return [Types::SourceNetworkData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/EventResourceData AWS API Documentation
    #
    class EventResourceData < Struct.new(
      :source_network_data,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class SourceNetworkData < EventResourceData; end
      class Unknown < EventResourceData; end
    end

    # @!attribute [rw] source_network_id
    #   The Source Network ID to export its CloudFormation template to an S3
    #   bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/ExportSourceNetworkCfnTemplateRequest AWS API Documentation
    #
    class ExportSourceNetworkCfnTemplateRequest < Struct.new(
      :source_network_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] s3_destination_url
    #   S3 bucket URL where the Source Network CloudFormation template was
    #   exported to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/ExportSourceNetworkCfnTemplateResponse AWS API Documentation
    #
    class ExportSourceNetworkCfnTemplateResponse < Struct.new(
      :s3_destination_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recovery_instance_id
    #   The ID of the Recovery Instance whose failback replication
    #   configuration should be returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/GetFailbackReplicationConfigurationRequest AWS API Documentation
    #
    class GetFailbackReplicationConfigurationRequest < Struct.new(
      :recovery_instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bandwidth_throttling
    #   Configure bandwidth throttling for the outbound data transfer rate
    #   of the Recovery Instance in Mbps.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the Failback Replication Configuration.
    #   @return [String]
    #
    # @!attribute [rw] recovery_instance_id
    #   The ID of the Recovery Instance.
    #   @return [String]
    #
    # @!attribute [rw] use_private_ip
    #   Whether to use Private IP for the failback replication of the
    #   Recovery Instance.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/GetFailbackReplicationConfigurationResponse AWS API Documentation
    #
    class GetFailbackReplicationConfigurationResponse < Struct.new(
      :bandwidth_throttling,
      :name,
      :recovery_instance_id,
      :use_private_ip)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_server_id
    #   The ID of the Source Server that we want to retrieve a Launch
    #   Configuration for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/GetLaunchConfigurationRequest AWS API Documentation
    #
    class GetLaunchConfigurationRequest < Struct.new(
      :source_server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_server_id
    #   The ID of the Source Serve for this Replication Configuration.r
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/GetReplicationConfigurationRequest AWS API Documentation
    #
    class GetReplicationConfigurationRequest < Struct.new(
      :source_server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Hints used to uniquely identify a machine.
    #
    # @!attribute [rw] aws_instance_id
    #   AWS Instance ID identification hint.
    #   @return [String]
    #
    # @!attribute [rw] fqdn
    #   Fully Qualified Domain Name identification hint.
    #   @return [String]
    #
    # @!attribute [rw] hostname
    #   Hostname identification hint.
    #   @return [String]
    #
    # @!attribute [rw] vm_ware_uuid
    #   vCenter VM path identification hint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/IdentificationHints AWS API Documentation
    #
    class IdentificationHints < Struct.new(
      :aws_instance_id,
      :fqdn,
      :hostname,
      :vm_ware_uuid)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/InitializeServiceRequest AWS API Documentation
    #
    class InitializeServiceRequest < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/InitializeServiceResponse AWS API Documentation
    #
    class InitializeServiceResponse < Aws::EmptyStructure; end

    # The request processing has failed because of an unknown error,
    # exception or failure.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds after which the request should be safe to
    #   retry.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # A job is an asynchronous workflow.
    #
    # @!attribute [rw] arn
    #   The ARN of a Job.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time of when the Job was created.
    #   @return [String]
    #
    # @!attribute [rw] end_date_time
    #   The date and time of when the Job ended.
    #   @return [String]
    #
    # @!attribute [rw] initiated_by
    #   A string representing who initiated the Job.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The ID of the Job.
    #   @return [String]
    #
    # @!attribute [rw] participating_resources
    #   A list of resources that the Job is acting upon.
    #   @return [Array<Types::ParticipatingResource>]
    #
    # @!attribute [rw] participating_servers
    #   A list of servers that the Job is acting upon.
    #   @return [Array<Types::ParticipatingServer>]
    #
    # @!attribute [rw] status
    #   The status of the Job.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags associated with the Job.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   The type of the Job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/Job AWS API Documentation
    #
    class Job < Struct.new(
      :arn,
      :creation_date_time,
      :end_date_time,
      :initiated_by,
      :job_id,
      :participating_resources,
      :participating_servers,
      :status,
      :tags,
      :type)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # A log outputted by a Job.
    #
    # @!attribute [rw] event
    #   The event represents the type of a log.
    #   @return [String]
    #
    # @!attribute [rw] event_data
    #   Metadata associated with a Job log.
    #   @return [Types::JobLogEventData]
    #
    # @!attribute [rw] log_date_time
    #   The date and time the log was taken.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/JobLog AWS API Documentation
    #
    class JobLog < Struct.new(
      :event,
      :event_data,
      :log_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata associated with a Job log.
    #
    # @!attribute [rw] conversion_properties
    #   Properties of a conversion job
    #   @return [Types::ConversionProperties]
    #
    # @!attribute [rw] conversion_server_id
    #   The ID of a conversion server.
    #   @return [String]
    #
    # @!attribute [rw] event_resource_data
    #   Properties of resource related to a job event.
    #   @return [Types::EventResourceData]
    #
    # @!attribute [rw] raw_error
    #   A string representing a job error.
    #   @return [String]
    #
    # @!attribute [rw] source_server_id
    #   The ID of a Source Server.
    #   @return [String]
    #
    # @!attribute [rw] target_instance_id
    #   The ID of a Recovery Instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/JobLogEventData AWS API Documentation
    #
    class JobLogEventData < Struct.new(
      :conversion_properties,
      :conversion_server_id,
      :event_resource_data,
      :raw_error,
      :source_server_id,
      :target_instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] copy_private_ip
    #   Whether we should copy the Private IP of the Source Server to the
    #   Recovery Instance.
    #   @return [Boolean]
    #
    # @!attribute [rw] copy_tags
    #   Whether we want to copy the tags of the Source Server to the EC2
    #   machine of the Recovery Instance.
    #   @return [Boolean]
    #
    # @!attribute [rw] ec2_launch_template_id
    #   The EC2 launch template ID of this launch configuration.
    #   @return [String]
    #
    # @!attribute [rw] launch_disposition
    #   The state of the Recovery Instance in EC2 after the recovery
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] licensing
    #   The licensing configuration to be used for this launch
    #   configuration.
    #   @return [Types::Licensing]
    #
    # @!attribute [rw] name
    #   The name of the launch configuration.
    #   @return [String]
    #
    # @!attribute [rw] source_server_id
    #   The ID of the Source Server for this launch configuration.
    #   @return [String]
    #
    # @!attribute [rw] target_instance_type_right_sizing_method
    #   Whether Elastic Disaster Recovery should try to automatically choose
    #   the instance type that best matches the OS, CPU, and RAM of your
    #   Source Server.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/LaunchConfiguration AWS API Documentation
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

    # Account level Launch Configuration Template.
    #
    # @!attribute [rw] arn
    #   ARN of the Launch Configuration Template.
    #   @return [String]
    #
    # @!attribute [rw] copy_private_ip
    #   Copy private IP.
    #   @return [Boolean]
    #
    # @!attribute [rw] copy_tags
    #   Copy tags.
    #   @return [Boolean]
    #
    # @!attribute [rw] export_bucket_arn
    #   S3 bucket ARN to export Source Network templates.
    #   @return [String]
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
    #   Licensing.
    #   @return [Types::Licensing]
    #
    # @!attribute [rw] tags
    #   Tags of the Launch Configuration Template.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] target_instance_type_right_sizing_method
    #   Target instance type right-sizing method.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/LaunchConfigurationTemplate AWS API Documentation
    #
    class LaunchConfigurationTemplate < Struct.new(
      :arn,
      :copy_private_ip,
      :copy_tags,
      :export_bucket_arn,
      :launch_configuration_template_id,
      :launch_disposition,
      :licensing,
      :tags,
      :target_instance_type_right_sizing_method)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # Configuration of a machine's license.
    #
    # @!attribute [rw] os_byol
    #   Whether to enable "Bring your own license" or not.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/Licensing AWS API Documentation
    #
    class Licensing < Struct.new(
      :os_byol)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the Source Server Lifecycle.
    #
    # @!attribute [rw] added_to_service_date_time
    #   The date and time of when the Source Server was added to the
    #   service.
    #   @return [String]
    #
    # @!attribute [rw] elapsed_replication_duration
    #   The amount of time that the Source Server has been replicating for.
    #   @return [String]
    #
    # @!attribute [rw] first_byte_date_time
    #   The date and time of the first byte that was replicated from the
    #   Source Server.
    #   @return [String]
    #
    # @!attribute [rw] last_launch
    #   An object containing information regarding the last launch of the
    #   Source Server.
    #   @return [Types::LifeCycleLastLaunch]
    #
    # @!attribute [rw] last_seen_by_service_date_time
    #   The date and time this Source Server was last seen by the service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/LifeCycle AWS API Documentation
    #
    class LifeCycle < Struct.new(
      :added_to_service_date_time,
      :elapsed_replication_duration,
      :first_byte_date_time,
      :last_launch,
      :last_seen_by_service_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object containing information regarding the last launch of a Source
    # Server.
    #
    # @!attribute [rw] initiated
    #   An object containing information regarding the initiation of the
    #   last launch of a Source Server.
    #   @return [Types::LifeCycleLastLaunchInitiated]
    #
    # @!attribute [rw] status
    #   Status of Source Server's last launch.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/LifeCycleLastLaunch AWS API Documentation
    #
    class LifeCycleLastLaunch < Struct.new(
      :initiated,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object containing information regarding the initiation of the last
    # launch of a Source Server.
    #
    # @!attribute [rw] api_call_date_time
    #   The date and time the last Source Server launch was initiated.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The ID of the Job that was used to last launch the Source Server.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The Job type that was used to last launch the Source Server.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/LifeCycleLastLaunchInitiated AWS API Documentation
    #
    class LifeCycleLastLaunchInitiated < Struct.new(
      :api_call_date_time,
      :job_id,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of extensible source servers to retrieve.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token of the next extensible source server to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] staging_account_id
    #   The Id of the staging Account to retrieve extensible source servers
    #   from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/ListExtensibleSourceServersRequest AWS API Documentation
    #
    class ListExtensibleSourceServersRequest < Struct.new(
      :max_results,
      :next_token,
      :staging_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   A list of source servers on a staging Account that are extensible.
    #   @return [Array<Types::StagingSourceServer>]
    #
    # @!attribute [rw] next_token
    #   The token of the next extensible source server to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/ListExtensibleSourceServersResponse AWS API Documentation
    #
    class ListExtensibleSourceServersResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of staging Accounts to retrieve.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token of the next staging Account to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/ListStagingAccountsRequest AWS API Documentation
    #
    class ListStagingAccountsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] accounts
    #   An array of staging AWS Accounts.
    #   @return [Array<Types::Account>]
    #
    # @!attribute [rw] next_token
    #   The token of the next staging Account to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/ListStagingAccountsResponse AWS API Documentation
    #
    class ListStagingAccountsResponse < Struct.new(
      :accounts,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource whose tags should be returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags of the requested resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # Network interface.
    #
    # @!attribute [rw] ips
    #   Network interface IPs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] is_primary
    #   Whether this is the primary network interface.
    #   @return [Boolean]
    #
    # @!attribute [rw] mac_address
    #   The MAC address of the network interface.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/NetworkInterface AWS API Documentation
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
    #   The long name of the Operating System.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/OS AWS API Documentation
    #
    class OS < Struct.new(
      :full_string)
      SENSITIVE = []
      include Aws::Structure
    end

    # A rule in the Point in Time (PIT) policy representing when to take
    # snapshots and how long to retain them for.
    #
    # @!attribute [rw] enabled
    #   Whether this rule is enabled or not.
    #   @return [Boolean]
    #
    # @!attribute [rw] interval
    #   How often, in the chosen units, a snapshot should be taken.
    #   @return [Integer]
    #
    # @!attribute [rw] retention_duration
    #   The duration to retain a snapshot for, in the chosen units.
    #   @return [Integer]
    #
    # @!attribute [rw] rule_id
    #   The ID of the rule.
    #   @return [Integer]
    #
    # @!attribute [rw] units
    #   The units used to measure the interval and retentionDuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/PITPolicyRule AWS API Documentation
    #
    class PITPolicyRule < Struct.new(
      :enabled,
      :interval,
      :retention_duration,
      :rule_id,
      :units)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a resource participating in an asynchronous Job.
    #
    # @!attribute [rw] launch_status
    #   The launch status of a participating resource.
    #   @return [String]
    #
    # @!attribute [rw] participating_resource_id
    #   The ID of a participating resource.
    #   @return [Types::ParticipatingResourceID]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/ParticipatingResource AWS API Documentation
    #
    class ParticipatingResource < Struct.new(
      :launch_status,
      :participating_resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # ID of a resource participating in an asynchronous Job.
    #
    # @note ParticipatingResourceID is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ParticipatingResourceID corresponding to the set member.
    #
    # @!attribute [rw] source_network_id
    #   Source Network ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/ParticipatingResourceID AWS API Documentation
    #
    class ParticipatingResourceID < Struct.new(
      :source_network_id,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class SourceNetworkId < ParticipatingResourceID; end
      class Unknown < ParticipatingResourceID; end
    end

    # Represents a server participating in an asynchronous Job.
    #
    # @!attribute [rw] launch_status
    #   The launch status of a participating server.
    #   @return [String]
    #
    # @!attribute [rw] recovery_instance_id
    #   The Recovery Instance ID of a participating server.
    #   @return [String]
    #
    # @!attribute [rw] source_server_id
    #   The Source Server ID of a participating server.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/ParticipatingServer AWS API Documentation
    #
    class ParticipatingServer < Struct.new(
      :launch_status,
      :recovery_instance_id,
      :source_server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A Recovery Instance is a replica of a Source Server running on EC2.
    #
    # @!attribute [rw] arn
    #   The ARN of the Recovery Instance.
    #   @return [String]
    #
    # @!attribute [rw] data_replication_info
    #   The Data Replication Info of the Recovery Instance.
    #   @return [Types::RecoveryInstanceDataReplicationInfo]
    #
    # @!attribute [rw] ec2_instance_id
    #   The EC2 instance ID of the Recovery Instance.
    #   @return [String]
    #
    # @!attribute [rw] ec2_instance_state
    #   The state of the EC2 instance for this Recovery Instance.
    #   @return [String]
    #
    # @!attribute [rw] failback
    #   An object representing failback related information of the Recovery
    #   Instance.
    #   @return [Types::RecoveryInstanceFailback]
    #
    # @!attribute [rw] is_drill
    #   Whether this Recovery Instance was created for a drill or for an
    #   actual Recovery event.
    #   @return [Boolean]
    #
    # @!attribute [rw] job_id
    #   The ID of the Job that created the Recovery Instance.
    #   @return [String]
    #
    # @!attribute [rw] origin_availability_zone
    #   AWS availability zone associated with the recovery instance.
    #   @return [String]
    #
    # @!attribute [rw] origin_environment
    #   Environment (On Premises / AWS) of the instance that the recovery
    #   instance originated from.
    #   @return [String]
    #
    # @!attribute [rw] point_in_time_snapshot_date_time
    #   The date and time of the Point in Time (PIT) snapshot that this
    #   Recovery Instance was launched from.
    #   @return [String]
    #
    # @!attribute [rw] recovery_instance_id
    #   The ID of the Recovery Instance.
    #   @return [String]
    #
    # @!attribute [rw] recovery_instance_properties
    #   Properties of the Recovery Instance machine.
    #   @return [Types::RecoveryInstanceProperties]
    #
    # @!attribute [rw] source_server_id
    #   The Source Server ID that this Recovery Instance is associated with.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of tags that are associated with the Recovery Instance.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/RecoveryInstance AWS API Documentation
    #
    class RecoveryInstance < Struct.new(
      :arn,
      :data_replication_info,
      :ec2_instance_id,
      :ec2_instance_state,
      :failback,
      :is_drill,
      :job_id,
      :origin_availability_zone,
      :origin_environment,
      :point_in_time_snapshot_date_time,
      :recovery_instance_id,
      :recovery_instance_properties,
      :source_server_id,
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/RecoveryInstanceDataReplicationError AWS API Documentation
    #
    class RecoveryInstanceDataReplicationError < Struct.new(
      :error,
      :raw_error)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about Data Replication
    #
    # @!attribute [rw] data_replication_error
    #   Information about Data Replication
    #   @return [Types::RecoveryInstanceDataReplicationError]
    #
    # @!attribute [rw] data_replication_initiation
    #   Information about whether the data replication has been initiated.
    #   @return [Types::RecoveryInstanceDataReplicationInitiation]
    #
    # @!attribute [rw] data_replication_state
    #   The state of the data replication.
    #   @return [String]
    #
    # @!attribute [rw] eta_date_time
    #   An estimate of when the data replication will be completed.
    #   @return [String]
    #
    # @!attribute [rw] lag_duration
    #   Data replication lag duration.
    #   @return [String]
    #
    # @!attribute [rw] replicated_disks
    #   The disks that should be replicated.
    #   @return [Array<Types::RecoveryInstanceDataReplicationInfoReplicatedDisk>]
    #
    # @!attribute [rw] staging_availability_zone
    #   AWS Availability zone into which data is being replicated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/RecoveryInstanceDataReplicationInfo AWS API Documentation
    #
    class RecoveryInstanceDataReplicationInfo < Struct.new(
      :data_replication_error,
      :data_replication_initiation,
      :data_replication_state,
      :eta_date_time,
      :lag_duration,
      :replicated_disks,
      :staging_availability_zone)
      SENSITIVE = []
      include Aws::Structure
    end

    # A disk that should be replicated.
    #
    # @!attribute [rw] backlogged_storage_bytes
    #   The size of the replication backlog in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] device_name
    #   The name of the device.
    #   @return [String]
    #
    # @!attribute [rw] replicated_storage_bytes
    #   The amount of data replicated so far in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] rescanned_storage_bytes
    #   The amount of data to be rescanned in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] total_storage_bytes
    #   The total amount of data to be replicated in bytes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/RecoveryInstanceDataReplicationInfoReplicatedDisk AWS API Documentation
    #
    class RecoveryInstanceDataReplicationInfoReplicatedDisk < Struct.new(
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
    # @!attribute [rw] start_date_time
    #   The date and time of the current attempt to initiate data
    #   replication.
    #   @return [String]
    #
    # @!attribute [rw] steps
    #   The steps of the current attempt to initiate data replication.
    #   @return [Array<Types::RecoveryInstanceDataReplicationInitiationStep>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/RecoveryInstanceDataReplicationInitiation AWS API Documentation
    #
    class RecoveryInstanceDataReplicationInitiation < Struct.new(
      :start_date_time,
      :steps)
      SENSITIVE = []
      include Aws::Structure
    end

    # Data replication initiation step.
    #
    # @!attribute [rw] name
    #   The name of the step.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the step.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/RecoveryInstanceDataReplicationInitiationStep AWS API Documentation
    #
    class RecoveryInstanceDataReplicationInitiationStep < Struct.new(
      :name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing a block storage device on the Recovery
    # Instance.
    #
    # @!attribute [rw] bytes
    #   The amount of storage on the disk in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] ebs_volume_id
    #   The EBS Volume ID of this disk.
    #   @return [String]
    #
    # @!attribute [rw] internal_device_name
    #   The internal device name of this disk. This is the name that is
    #   visible on the machine itself and not from the EC2 console.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/RecoveryInstanceDisk AWS API Documentation
    #
    class RecoveryInstanceDisk < Struct.new(
      :bytes,
      :ebs_volume_id,
      :internal_device_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing failback related information of the Recovery
    # Instance.
    #
    # @!attribute [rw] agent_last_seen_by_service_date_time
    #   The date and time the agent on the Recovery Instance was last seen
    #   by the service.
    #   @return [String]
    #
    # @!attribute [rw] elapsed_replication_duration
    #   The amount of time that the Recovery Instance has been replicating
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] failback_client_id
    #   The ID of the failback client that this Recovery Instance is
    #   associated with.
    #   @return [String]
    #
    # @!attribute [rw] failback_client_last_seen_by_service_date_time
    #   The date and time that the failback client was last seen by the
    #   service.
    #   @return [String]
    #
    # @!attribute [rw] failback_initiation_time
    #   The date and time that the failback initiation started.
    #   @return [String]
    #
    # @!attribute [rw] failback_job_id
    #   The Job ID of the last failback log for this Recovery Instance.
    #   @return [String]
    #
    # @!attribute [rw] failback_launch_type
    #   The launch type (Recovery / Drill) of the last launch for the
    #   failback replication of this recovery instance.
    #   @return [String]
    #
    # @!attribute [rw] failback_to_original_server
    #   Whether we are failing back to the original Source Server for this
    #   Recovery Instance.
    #   @return [Boolean]
    #
    # @!attribute [rw] first_byte_date_time
    #   The date and time of the first byte that was replicated from the
    #   Recovery Instance.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the failback process that this Recovery Instance is in.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/RecoveryInstanceFailback AWS API Documentation
    #
    class RecoveryInstanceFailback < Struct.new(
      :agent_last_seen_by_service_date_time,
      :elapsed_replication_duration,
      :failback_client_id,
      :failback_client_last_seen_by_service_date_time,
      :failback_initiation_time,
      :failback_job_id,
      :failback_launch_type,
      :failback_to_original_server,
      :first_byte_date_time,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Properties of the Recovery Instance machine.
    #
    # @!attribute [rw] cpus
    #   An array of CPUs.
    #   @return [Array<Types::CPU>]
    #
    # @!attribute [rw] disks
    #   An array of disks.
    #   @return [Array<Types::RecoveryInstanceDisk>]
    #
    # @!attribute [rw] identification_hints
    #   Hints used to uniquely identify a machine.
    #   @return [Types::IdentificationHints]
    #
    # @!attribute [rw] last_updated_date_time
    #   The date and time the Recovery Instance properties were last updated
    #   on.
    #   @return [String]
    #
    # @!attribute [rw] network_interfaces
    #   An array of network interfaces.
    #   @return [Array<Types::NetworkInterface>]
    #
    # @!attribute [rw] os
    #   Operating system.
    #   @return [Types::OS]
    #
    # @!attribute [rw] ram_bytes
    #   The amount of RAM in bytes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/RecoveryInstanceProperties AWS API Documentation
    #
    class RecoveryInstanceProperties < Struct.new(
      :cpus,
      :disks,
      :identification_hints,
      :last_updated_date_time,
      :network_interfaces,
      :os,
      :ram_bytes)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the Source Network recovery Lifecycle.
    #
    # @!attribute [rw] api_call_date_time
    #   The date and time the last Source Network recovery was initiated.
    #   @return [Time]
    #
    # @!attribute [rw] job_id
    #   The ID of the Job that was used to last recover the Source Network.
    #   @return [String]
    #
    # @!attribute [rw] last_recovery_result
    #   The status of the last recovery status of this Source Network.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/RecoveryLifeCycle AWS API Documentation
    #
    class RecoveryLifeCycle < Struct.new(
      :api_call_date_time,
      :job_id,
      :last_recovery_result)
      SENSITIVE = []
      include Aws::Structure
    end

    # A snapshot of a Source Server used during recovery.
    #
    # @!attribute [rw] ebs_snapshots
    #   A list of EBS snapshots.
    #   @return [Array<String>]
    #
    # @!attribute [rw] expected_timestamp
    #   The timestamp of when we expect the snapshot to be taken.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_id
    #   The ID of the Recovery Snapshot.
    #   @return [String]
    #
    # @!attribute [rw] source_server_id
    #   The ID of the Source Server that the snapshot was taken for.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The actual timestamp that the snapshot was taken.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/RecoverySnapshot AWS API Documentation
    #
    class RecoverySnapshot < Struct.new(
      :ebs_snapshots,
      :expected_timestamp,
      :snapshot_id,
      :source_server_id,
      :timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] associate_default_security_group
    #   Whether to associate the default Elastic Disaster Recovery Security
    #   group with the Replication Configuration.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_replicate_new_disks
    #   Whether to allow the AWS replication agent to automatically
    #   replicate newly added disks.
    #   @return [Boolean]
    #
    # @!attribute [rw] bandwidth_throttling
    #   Configure bandwidth throttling for the outbound data transfer rate
    #   of the Source Server in Mbps.
    #   @return [Integer]
    #
    # @!attribute [rw] create_public_ip
    #   Whether to create a Public IP for the Recovery Instance by default.
    #   @return [Boolean]
    #
    # @!attribute [rw] data_plane_routing
    #   The data plane routing mechanism that will be used for replication.
    #   @return [String]
    #
    # @!attribute [rw] default_large_staging_disk_type
    #   The Staging Disk EBS volume type to be used during replication.
    #   @return [String]
    #
    # @!attribute [rw] ebs_encryption
    #   The type of EBS encryption to be used during replication.
    #   @return [String]
    #
    # @!attribute [rw] ebs_encryption_key_arn
    #   The ARN of the EBS encryption key to be used during replication.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Replication Configuration.
    #   @return [String]
    #
    # @!attribute [rw] pit_policy
    #   The Point in time (PIT) policy to manage snapshots taken during
    #   replication.
    #   @return [Array<Types::PITPolicyRule>]
    #
    # @!attribute [rw] replicated_disks
    #   The configuration of the disks of the Source Server to be
    #   replicated.
    #   @return [Array<Types::ReplicationConfigurationReplicatedDisk>]
    #
    # @!attribute [rw] replication_server_instance_type
    #   The instance type to be used for the replication server.
    #   @return [String]
    #
    # @!attribute [rw] replication_servers_security_groups_i_ds
    #   The security group IDs that will be used by the replication server.
    #   @return [Array<String>]
    #
    # @!attribute [rw] source_server_id
    #   The ID of the Source Server for this Replication Configuration.
    #   @return [String]
    #
    # @!attribute [rw] staging_area_subnet_id
    #   The subnet to be used by the replication staging area.
    #   @return [String]
    #
    # @!attribute [rw] staging_area_tags
    #   A set of tags to be associated with all resources created in the
    #   replication staging area: EC2 replication server, EBS volumes, EBS
    #   snapshots, etc.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] use_dedicated_replication_server
    #   Whether to use a dedicated Replication Server in the replication
    #   staging area.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/ReplicationConfiguration AWS API Documentation
    #
    class ReplicationConfiguration < Struct.new(
      :associate_default_security_group,
      :auto_replicate_new_disks,
      :bandwidth_throttling,
      :create_public_ip,
      :data_plane_routing,
      :default_large_staging_disk_type,
      :ebs_encryption,
      :ebs_encryption_key_arn,
      :name,
      :pit_policy,
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

    # The configuration of a disk of the Source Server to be replicated.
    #
    # @!attribute [rw] device_name
    #   The name of the device.
    #   @return [String]
    #
    # @!attribute [rw] iops
    #   The requested number of I/O operations per second (IOPS).
    #   @return [Integer]
    #
    # @!attribute [rw] is_boot_disk
    #   Whether to boot from this disk or not.
    #   @return [Boolean]
    #
    # @!attribute [rw] optimized_staging_disk_type
    #   The Staging Disk EBS volume type to be used during replication when
    #   `stagingDiskType` is set to Auto. This is a read-only field.
    #   @return [String]
    #
    # @!attribute [rw] staging_disk_type
    #   The Staging Disk EBS volume type to be used during replication.
    #   @return [String]
    #
    # @!attribute [rw] throughput
    #   The throughput to use for the EBS volume in MiB/s. This parameter is
    #   valid only for gp3 volumes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/ReplicationConfigurationReplicatedDisk AWS API Documentation
    #
    class ReplicationConfigurationReplicatedDisk < Struct.new(
      :device_name,
      :iops,
      :is_boot_disk,
      :optimized_staging_disk_type,
      :staging_disk_type,
      :throughput)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Replication Configuration Template ARN.
    #   @return [String]
    #
    # @!attribute [rw] associate_default_security_group
    #   Whether to associate the default Elastic Disaster Recovery Security
    #   group with the Replication Configuration Template.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_replicate_new_disks
    #   Whether to allow the AWS replication agent to automatically
    #   replicate newly added disks.
    #   @return [Boolean]
    #
    # @!attribute [rw] bandwidth_throttling
    #   Configure bandwidth throttling for the outbound data transfer rate
    #   of the Source Server in Mbps.
    #   @return [Integer]
    #
    # @!attribute [rw] create_public_ip
    #   Whether to create a Public IP for the Recovery Instance by default.
    #   @return [Boolean]
    #
    # @!attribute [rw] data_plane_routing
    #   The data plane routing mechanism that will be used for replication.
    #   @return [String]
    #
    # @!attribute [rw] default_large_staging_disk_type
    #   The Staging Disk EBS volume type to be used during replication.
    #   @return [String]
    #
    # @!attribute [rw] ebs_encryption
    #   The type of EBS encryption to be used during replication.
    #   @return [String]
    #
    # @!attribute [rw] ebs_encryption_key_arn
    #   The ARN of the EBS encryption key to be used during replication.
    #   @return [String]
    #
    # @!attribute [rw] pit_policy
    #   The Point in time (PIT) policy to manage snapshots taken during
    #   replication.
    #   @return [Array<Types::PITPolicyRule>]
    #
    # @!attribute [rw] replication_configuration_template_id
    #   The Replication Configuration Template ID.
    #   @return [String]
    #
    # @!attribute [rw] replication_server_instance_type
    #   The instance type to be used for the replication server.
    #   @return [String]
    #
    # @!attribute [rw] replication_servers_security_groups_i_ds
    #   The security group IDs that will be used by the replication server.
    #   @return [Array<String>]
    #
    # @!attribute [rw] staging_area_subnet_id
    #   The subnet to be used by the replication staging area.
    #   @return [String]
    #
    # @!attribute [rw] staging_area_tags
    #   A set of tags to be associated with all resources created in the
    #   replication staging area: EC2 replication server, EBS volumes, EBS
    #   snapshots, etc.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tags
    #   A set of tags to be associated with the Replication Configuration
    #   Template resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] use_dedicated_replication_server
    #   Whether to use a dedicated Replication Server in the replication
    #   staging area.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/ReplicationConfigurationTemplate AWS API Documentation
    #
    class ReplicationConfigurationTemplate < Struct.new(
      :arn,
      :associate_default_security_group,
      :auto_replicate_new_disks,
      :bandwidth_throttling,
      :create_public_ip,
      :data_plane_routing,
      :default_large_staging_disk_type,
      :ebs_encryption,
      :ebs_encryption_key_arn,
      :pit_policy,
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

    # The resource for this operation was not found.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :code,
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_server_id
    #   The ID of the Source Server whose data replication should be
    #   retried.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/RetryDataReplicationRequest AWS API Documentation
    #
    class RetryDataReplicationRequest < Struct.new(
      :source_server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recovery_instance_id
    #   The ID of the Recovery Instance that we want to reverse the
    #   replication for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/ReverseReplicationRequest AWS API Documentation
    #
    class ReverseReplicationRequest < Struct.new(
      :recovery_instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] reversed_direction_source_server_arn
    #   ARN of created SourceServer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/ReverseReplicationResponse AWS API Documentation
    #
    class ReverseReplicationResponse < Struct.new(
      :reversed_direction_source_server_arn)
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
    #   Quota code.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   Service code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/ServiceQuotaExceededException AWS API Documentation
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

    # Properties of the cloud environment where this Source Server
    # originated from.
    #
    # @!attribute [rw] origin_account_id
    #   AWS Account ID for an EC2-originated Source Server.
    #   @return [String]
    #
    # @!attribute [rw] origin_availability_zone
    #   AWS Availability Zone for an EC2-originated Source Server.
    #   @return [String]
    #
    # @!attribute [rw] origin_region
    #   AWS Region for an EC2-originated Source Server.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/SourceCloudProperties AWS API Documentation
    #
    class SourceCloudProperties < Struct.new(
      :origin_account_id,
      :origin_availability_zone,
      :origin_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # The ARN of the Source Network.
    #
    # @!attribute [rw] arn
    #   The ARN of the Source Network.
    #   @return [String]
    #
    # @!attribute [rw] cfn_stack_name
    #   CloudFormation stack name that was deployed for recovering the
    #   Source Network.
    #   @return [String]
    #
    # @!attribute [rw] last_recovery
    #   An object containing information regarding the last recovery of the
    #   Source Network.
    #   @return [Types::RecoveryLifeCycle]
    #
    # @!attribute [rw] launched_vpc_id
    #   ID of the recovered VPC following Source Network recovery.
    #   @return [String]
    #
    # @!attribute [rw] replication_status
    #   Status of Source Network Replication. Possible values: (a) STOPPED -
    #   Source Network is not replicating. (b) IN\_PROGRESS - Source Network
    #   is being replicated. (c) PROTECTED - Source Network was replicated
    #   successfully and is being synchronized for changes. (d) ERROR -
    #   Source Network replication has failed
    #   @return [String]
    #
    # @!attribute [rw] replication_status_details
    #   Error details in case Source Network replication status is ERROR.
    #   @return [String]
    #
    # @!attribute [rw] source_account_id
    #   Account ID containing the VPC protected by the Source Network.
    #   @return [String]
    #
    # @!attribute [rw] source_network_id
    #   Source Network ID.
    #   @return [String]
    #
    # @!attribute [rw] source_region
    #   Region containing the VPC protected by the Source Network.
    #   @return [String]
    #
    # @!attribute [rw] source_vpc_id
    #   VPC ID protected by the Source Network.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags associated with the Source Network.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/SourceNetwork AWS API Documentation
    #
    class SourceNetwork < Struct.new(
      :arn,
      :cfn_stack_name,
      :last_recovery,
      :launched_vpc_id,
      :replication_status,
      :replication_status_details,
      :source_account_id,
      :source_network_id,
      :source_region,
      :source_vpc_id,
      :tags)
      SENSITIVE = [:cfn_stack_name, :replication_status_details, :tags]
      include Aws::Structure
    end

    # Properties of Source Network related to a job event.
    #
    # @!attribute [rw] source_network_id
    #   Source Network ID.
    #   @return [String]
    #
    # @!attribute [rw] source_vpc
    #   VPC ID protected by the Source Network.
    #   @return [String]
    #
    # @!attribute [rw] stack_name
    #   CloudFormation stack name that was deployed for recovering the
    #   Source Network.
    #   @return [String]
    #
    # @!attribute [rw] target_vpc
    #   ID of the recovered VPC following Source Network recovery.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/SourceNetworkData AWS API Documentation
    #
    class SourceNetworkData < Struct.new(
      :source_network_id,
      :source_vpc,
      :stack_name,
      :target_vpc)
      SENSITIVE = []
      include Aws::Structure
    end

    # Properties of the Source Server machine.
    #
    # @!attribute [rw] cpus
    #   An array of CPUs.
    #   @return [Array<Types::CPU>]
    #
    # @!attribute [rw] disks
    #   An array of disks.
    #   @return [Array<Types::Disk>]
    #
    # @!attribute [rw] identification_hints
    #   Hints used to uniquely identify a machine.
    #   @return [Types::IdentificationHints]
    #
    # @!attribute [rw] last_updated_date_time
    #   The date and time the Source Properties were last updated on.
    #   @return [String]
    #
    # @!attribute [rw] network_interfaces
    #   An array of network interfaces.
    #   @return [Array<Types::NetworkInterface>]
    #
    # @!attribute [rw] os
    #   Operating system.
    #   @return [Types::OS]
    #
    # @!attribute [rw] ram_bytes
    #   The amount of RAM in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] recommended_instance_type
    #   The recommended EC2 instance type that will be used when recovering
    #   the Source Server.
    #   @return [String]
    #
    # @!attribute [rw] supports_nitro_instances
    #   Are EC2 nitro instance types supported when recovering the Source
    #   Server.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/SourceProperties AWS API Documentation
    #
    class SourceProperties < Struct.new(
      :cpus,
      :disks,
      :identification_hints,
      :last_updated_date_time,
      :network_interfaces,
      :os,
      :ram_bytes,
      :recommended_instance_type,
      :supports_nitro_instances)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the Source Server.
    #   @return [String]
    #
    # @!attribute [rw] data_replication_info
    #   The Data Replication Info of the Source Server.
    #   @return [Types::DataReplicationInfo]
    #
    # @!attribute [rw] last_launch_result
    #   The status of the last recovery launch of this Source Server.
    #   @return [String]
    #
    # @!attribute [rw] life_cycle
    #   The lifecycle information of this Source Server.
    #   @return [Types::LifeCycle]
    #
    # @!attribute [rw] recovery_instance_id
    #   The ID of the Recovery Instance associated with this Source Server.
    #   @return [String]
    #
    # @!attribute [rw] replication_direction
    #   Replication direction of the Source Server.
    #   @return [String]
    #
    # @!attribute [rw] reversed_direction_source_server_arn
    #   For EC2-originated Source Servers which have been failed over and
    #   then failed back, this value will mean the ARN of the Source Server
    #   on the opposite replication direction.
    #   @return [String]
    #
    # @!attribute [rw] source_cloud_properties
    #   Source cloud properties of the Source Server.
    #   @return [Types::SourceCloudProperties]
    #
    # @!attribute [rw] source_network_id
    #   ID of the Source Network which is protecting this Source Server's
    #   network.
    #   @return [String]
    #
    # @!attribute [rw] source_properties
    #   The source properties of the Source Server.
    #   @return [Types::SourceProperties]
    #
    # @!attribute [rw] source_server_id
    #   The ID of the Source Server.
    #   @return [String]
    #
    # @!attribute [rw] staging_area
    #   The staging area of the source server.
    #   @return [Types::StagingArea]
    #
    # @!attribute [rw] tags
    #   The tags associated with the Source Server.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/SourceServer AWS API Documentation
    #
    class SourceServer < Struct.new(
      :arn,
      :data_replication_info,
      :last_launch_result,
      :life_cycle,
      :recovery_instance_id,
      :replication_direction,
      :reversed_direction_source_server_arn,
      :source_cloud_properties,
      :source_network_id,
      :source_properties,
      :source_server_id,
      :staging_area,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # Staging information related to source server.
    #
    # @!attribute [rw] error_message
    #   Shows an error message that occurred when DRS tried to access the
    #   staging source server. In this case StagingArea$status will have
    #   value EXTENSION\_ERROR
    #   @return [String]
    #
    # @!attribute [rw] staging_account_id
    #   Account ID of the account to which source server belongs. If this
    #   source server is extended - shows Account ID of staging source
    #   server.
    #   @return [String]
    #
    # @!attribute [rw] staging_source_server_arn
    #   Arn of the staging source server if this source server is extended
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of Source server extension. Possible values: (a)
    #   NOT\_EXTENDED - This is a source server that is replicating in the
    #   current account. (b) EXTENDED - Source server is extended from a
    #   staging source server. In this case, the value of
    #   stagingSourceServerArn is pointing to the Arn of the source server
    #   in the staging account. (c) EXTENSION\_ERROR - Some issue occurred
    #   when accessing staging source server. In this case, errorMessage
    #   field will contain an error message that explains what happened.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/StagingArea AWS API Documentation
    #
    class StagingArea < Struct.new(
      :error_message,
      :staging_account_id,
      :staging_source_server_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Source server in staging account that extended source server connected
    # to.
    #
    # @!attribute [rw] arn
    #   The ARN of the source server.
    #   @return [String]
    #
    # @!attribute [rw] hostname
    #   Hostname of staging source server.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags associated with the staging source server.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/StagingSourceServer AWS API Documentation
    #
    class StagingSourceServer < Struct.new(
      :arn,
      :hostname,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] recovery_instance_i_ds
    #   The IDs of the Recovery Instance whose failback launch we want to
    #   request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tags to be associated with the failback launch Job.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/StartFailbackLaunchRequest AWS API Documentation
    #
    class StartFailbackLaunchRequest < Struct.new(
      :recovery_instance_i_ds,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] job
    #   The failback launch Job.
    #   @return [Types::Job]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/StartFailbackLaunchResponse AWS API Documentation
    #
    class StartFailbackLaunchResponse < Struct.new(
      :job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] is_drill
    #   Whether this Source Server Recovery operation is a drill or not.
    #   @return [Boolean]
    #
    # @!attribute [rw] source_servers
    #   The Source Servers that we want to start a Recovery Job for.
    #   @return [Array<Types::StartRecoveryRequestSourceServer>]
    #
    # @!attribute [rw] tags
    #   The tags to be associated with the Recovery Job.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/StartRecoveryRequest AWS API Documentation
    #
    class StartRecoveryRequest < Struct.new(
      :is_drill,
      :source_servers,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # An object representing the Source Server to recover.
    #
    # @!attribute [rw] recovery_snapshot_id
    #   The ID of a Recovery Snapshot we want to recover from. Omit this
    #   field to launch from the latest data by taking an on-demand
    #   snapshot.
    #   @return [String]
    #
    # @!attribute [rw] source_server_id
    #   The ID of the Source Server you want to recover.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/StartRecoveryRequestSourceServer AWS API Documentation
    #
    class StartRecoveryRequestSourceServer < Struct.new(
      :recovery_snapshot_id,
      :source_server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job
    #   The Recovery Job.
    #   @return [Types::Job]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/StartRecoveryResponse AWS API Documentation
    #
    class StartRecoveryResponse < Struct.new(
      :job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_server_id
    #   The ID of the Source Server to start replication for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/StartReplicationRequest AWS API Documentation
    #
    class StartReplicationRequest < Struct.new(
      :source_server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_server
    #   The Source Server that this action was targeted on.
    #   @return [Types::SourceServer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/StartReplicationResponse AWS API Documentation
    #
    class StartReplicationResponse < Struct.new(
      :source_server)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deploy_as_new
    #   Don't update existing CloudFormation Stack, recover the network
    #   using a new stack.
    #   @return [Boolean]
    #
    # @!attribute [rw] source_networks
    #   The Source Networks that we want to start a Recovery Job for.
    #   @return [Array<Types::StartSourceNetworkRecoveryRequestNetworkEntry>]
    #
    # @!attribute [rw] tags
    #   The tags to be associated with the Source Network recovery Job.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/StartSourceNetworkRecoveryRequest AWS API Documentation
    #
    class StartSourceNetworkRecoveryRequest < Struct.new(
      :deploy_as_new,
      :source_networks,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # An object representing the Source Network to recover.
    #
    # @!attribute [rw] cfn_stack_name
    #   CloudFormation stack name to be used for recovering the network.
    #   @return [String]
    #
    # @!attribute [rw] source_network_id
    #   The ID of the Source Network you want to recover.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/StartSourceNetworkRecoveryRequestNetworkEntry AWS API Documentation
    #
    class StartSourceNetworkRecoveryRequestNetworkEntry < Struct.new(
      :cfn_stack_name,
      :source_network_id)
      SENSITIVE = [:cfn_stack_name]
      include Aws::Structure
    end

    # @!attribute [rw] job
    #   The Source Network recovery Job.
    #   @return [Types::Job]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/StartSourceNetworkRecoveryResponse AWS API Documentation
    #
    class StartSourceNetworkRecoveryResponse < Struct.new(
      :job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_network_id
    #   ID of the Source Network to replicate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/StartSourceNetworkReplicationRequest AWS API Documentation
    #
    class StartSourceNetworkReplicationRequest < Struct.new(
      :source_network_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_network
    #   Source Network which was requested for replication.
    #   @return [Types::SourceNetwork]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/StartSourceNetworkReplicationResponse AWS API Documentation
    #
    class StartSourceNetworkReplicationResponse < Struct.new(
      :source_network)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recovery_instance_id
    #   The ID of the Recovery Instance we want to stop failback for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/StopFailbackRequest AWS API Documentation
    #
    class StopFailbackRequest < Struct.new(
      :recovery_instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_server_id
    #   The ID of the Source Server to stop replication for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/StopReplicationRequest AWS API Documentation
    #
    class StopReplicationRequest < Struct.new(
      :source_server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_server
    #   The Source Server that this action was targeted on.
    #   @return [Types::SourceServer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/StopReplicationResponse AWS API Documentation
    #
    class StopReplicationResponse < Struct.new(
      :source_server)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_network_id
    #   ID of the Source Network to stop replication.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/StopSourceNetworkReplicationRequest AWS API Documentation
    #
    class StopSourceNetworkReplicationRequest < Struct.new(
      :source_network_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_network
    #   Source Network which was requested to stop replication.
    #   @return [Types::SourceNetwork]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/StopSourceNetworkReplicationResponse AWS API Documentation
    #
    class StopSourceNetworkReplicationResponse < Struct.new(
      :source_network)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   ARN of the resource for which tags are to be added or updated.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Array of tags to be added or updated.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] recovery_instance_i_ds
    #   The IDs of the Recovery Instances that should be terminated.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/TerminateRecoveryInstancesRequest AWS API Documentation
    #
    class TerminateRecoveryInstancesRequest < Struct.new(
      :recovery_instance_i_ds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job
    #   The Job for terminating the Recovery Instances.
    #   @return [Types::Job]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/TerminateRecoveryInstancesResponse AWS API Documentation
    #
    class TerminateRecoveryInstancesResponse < Struct.new(
      :job)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   Quota code.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds after which the request should be safe to
    #   retry.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   Service code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :quota_code,
      :retry_after_seconds,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The account performing the request has not been initialized.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/UninitializedAccountException AWS API Documentation
    #
    class UninitializedAccountException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   ARN of the resource for which tags are to be removed.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Array of tags to be removed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = [:tag_keys]
      include Aws::Structure
    end

    # @!attribute [rw] bandwidth_throttling
    #   Configure bandwidth throttling for the outbound data transfer rate
    #   of the Recovery Instance in Mbps.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the Failback Replication Configuration.
    #   @return [String]
    #
    # @!attribute [rw] recovery_instance_id
    #   The ID of the Recovery Instance.
    #   @return [String]
    #
    # @!attribute [rw] use_private_ip
    #   Whether to use Private IP for the failback replication of the
    #   Recovery Instance.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/UpdateFailbackReplicationConfigurationRequest AWS API Documentation
    #
    class UpdateFailbackReplicationConfigurationRequest < Struct.new(
      :bandwidth_throttling,
      :name,
      :recovery_instance_id,
      :use_private_ip)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] copy_private_ip
    #   Whether we should copy the Private IP of the Source Server to the
    #   Recovery Instance.
    #   @return [Boolean]
    #
    # @!attribute [rw] copy_tags
    #   Whether we want to copy the tags of the Source Server to the EC2
    #   machine of the Recovery Instance.
    #   @return [Boolean]
    #
    # @!attribute [rw] launch_disposition
    #   The state of the Recovery Instance in EC2 after the recovery
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] licensing
    #   The licensing configuration to be used for this launch
    #   configuration.
    #   @return [Types::Licensing]
    #
    # @!attribute [rw] name
    #   The name of the launch configuration.
    #   @return [String]
    #
    # @!attribute [rw] source_server_id
    #   The ID of the Source Server that we want to retrieve a Launch
    #   Configuration for.
    #   @return [String]
    #
    # @!attribute [rw] target_instance_type_right_sizing_method
    #   Whether Elastic Disaster Recovery should try to automatically choose
    #   the instance type that best matches the OS, CPU, and RAM of your
    #   Source Server.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/UpdateLaunchConfigurationRequest AWS API Documentation
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

    # @!attribute [rw] copy_private_ip
    #   Copy private IP.
    #   @return [Boolean]
    #
    # @!attribute [rw] copy_tags
    #   Copy tags.
    #   @return [Boolean]
    #
    # @!attribute [rw] export_bucket_arn
    #   S3 bucket ARN to export Source Network templates.
    #   @return [String]
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
    #   Licensing.
    #   @return [Types::Licensing]
    #
    # @!attribute [rw] target_instance_type_right_sizing_method
    #   Target instance type right-sizing method.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/UpdateLaunchConfigurationTemplateRequest AWS API Documentation
    #
    class UpdateLaunchConfigurationTemplateRequest < Struct.new(
      :copy_private_ip,
      :copy_tags,
      :export_bucket_arn,
      :launch_configuration_template_id,
      :launch_disposition,
      :licensing,
      :target_instance_type_right_sizing_method)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] launch_configuration_template
    #   Updated Launch Configuration Template.
    #   @return [Types::LaunchConfigurationTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/UpdateLaunchConfigurationTemplateResponse AWS API Documentation
    #
    class UpdateLaunchConfigurationTemplateResponse < Struct.new(
      :launch_configuration_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] associate_default_security_group
    #   Whether to associate the default Elastic Disaster Recovery Security
    #   group with the Replication Configuration.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_replicate_new_disks
    #   Whether to allow the AWS replication agent to automatically
    #   replicate newly added disks.
    #   @return [Boolean]
    #
    # @!attribute [rw] bandwidth_throttling
    #   Configure bandwidth throttling for the outbound data transfer rate
    #   of the Source Server in Mbps.
    #   @return [Integer]
    #
    # @!attribute [rw] create_public_ip
    #   Whether to create a Public IP for the Recovery Instance by default.
    #   @return [Boolean]
    #
    # @!attribute [rw] data_plane_routing
    #   The data plane routing mechanism that will be used for replication.
    #   @return [String]
    #
    # @!attribute [rw] default_large_staging_disk_type
    #   The Staging Disk EBS volume type to be used during replication.
    #   @return [String]
    #
    # @!attribute [rw] ebs_encryption
    #   The type of EBS encryption to be used during replication.
    #   @return [String]
    #
    # @!attribute [rw] ebs_encryption_key_arn
    #   The ARN of the EBS encryption key to be used during replication.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Replication Configuration.
    #   @return [String]
    #
    # @!attribute [rw] pit_policy
    #   The Point in time (PIT) policy to manage snapshots taken during
    #   replication.
    #   @return [Array<Types::PITPolicyRule>]
    #
    # @!attribute [rw] replicated_disks
    #   The configuration of the disks of the Source Server to be
    #   replicated.
    #   @return [Array<Types::ReplicationConfigurationReplicatedDisk>]
    #
    # @!attribute [rw] replication_server_instance_type
    #   The instance type to be used for the replication server.
    #   @return [String]
    #
    # @!attribute [rw] replication_servers_security_groups_i_ds
    #   The security group IDs that will be used by the replication server.
    #   @return [Array<String>]
    #
    # @!attribute [rw] source_server_id
    #   The ID of the Source Server for this Replication Configuration.
    #   @return [String]
    #
    # @!attribute [rw] staging_area_subnet_id
    #   The subnet to be used by the replication staging area.
    #   @return [String]
    #
    # @!attribute [rw] staging_area_tags
    #   A set of tags to be associated with all resources created in the
    #   replication staging area: EC2 replication server, EBS volumes, EBS
    #   snapshots, etc.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] use_dedicated_replication_server
    #   Whether to use a dedicated Replication Server in the replication
    #   staging area.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/UpdateReplicationConfigurationRequest AWS API Documentation
    #
    class UpdateReplicationConfigurationRequest < Struct.new(
      :associate_default_security_group,
      :auto_replicate_new_disks,
      :bandwidth_throttling,
      :create_public_ip,
      :data_plane_routing,
      :default_large_staging_disk_type,
      :ebs_encryption,
      :ebs_encryption_key_arn,
      :name,
      :pit_policy,
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

    # @!attribute [rw] arn
    #   The Replication Configuration Template ARN.
    #   @return [String]
    #
    # @!attribute [rw] associate_default_security_group
    #   Whether to associate the default Elastic Disaster Recovery Security
    #   group with the Replication Configuration Template.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_replicate_new_disks
    #   Whether to allow the AWS replication agent to automatically
    #   replicate newly added disks.
    #   @return [Boolean]
    #
    # @!attribute [rw] bandwidth_throttling
    #   Configure bandwidth throttling for the outbound data transfer rate
    #   of the Source Server in Mbps.
    #   @return [Integer]
    #
    # @!attribute [rw] create_public_ip
    #   Whether to create a Public IP for the Recovery Instance by default.
    #   @return [Boolean]
    #
    # @!attribute [rw] data_plane_routing
    #   The data plane routing mechanism that will be used for replication.
    #   @return [String]
    #
    # @!attribute [rw] default_large_staging_disk_type
    #   The Staging Disk EBS volume type to be used during replication.
    #   @return [String]
    #
    # @!attribute [rw] ebs_encryption
    #   The type of EBS encryption to be used during replication.
    #   @return [String]
    #
    # @!attribute [rw] ebs_encryption_key_arn
    #   The ARN of the EBS encryption key to be used during replication.
    #   @return [String]
    #
    # @!attribute [rw] pit_policy
    #   The Point in time (PIT) policy to manage snapshots taken during
    #   replication.
    #   @return [Array<Types::PITPolicyRule>]
    #
    # @!attribute [rw] replication_configuration_template_id
    #   The Replication Configuration Template ID.
    #   @return [String]
    #
    # @!attribute [rw] replication_server_instance_type
    #   The instance type to be used for the replication server.
    #   @return [String]
    #
    # @!attribute [rw] replication_servers_security_groups_i_ds
    #   The security group IDs that will be used by the replication server.
    #   @return [Array<String>]
    #
    # @!attribute [rw] staging_area_subnet_id
    #   The subnet to be used by the replication staging area.
    #   @return [String]
    #
    # @!attribute [rw] staging_area_tags
    #   A set of tags to be associated with all resources created in the
    #   replication staging area: EC2 replication server, EBS volumes, EBS
    #   snapshots, etc.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] use_dedicated_replication_server
    #   Whether to use a dedicated Replication Server in the replication
    #   staging area.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/UpdateReplicationConfigurationTemplateRequest AWS API Documentation
    #
    class UpdateReplicationConfigurationTemplateRequest < Struct.new(
      :arn,
      :associate_default_security_group,
      :auto_replicate_new_disks,
      :bandwidth_throttling,
      :create_public_ip,
      :data_plane_routing,
      :default_large_staging_disk_type,
      :ebs_encryption,
      :ebs_encryption_key_arn,
      :pit_policy,
      :replication_configuration_template_id,
      :replication_server_instance_type,
      :replication_servers_security_groups_i_ds,
      :staging_area_subnet_id,
      :staging_area_tags,
      :use_dedicated_replication_server)
      SENSITIVE = [:staging_area_tags]
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by the AWS
    # service.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   A list of fields that failed validation.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   Validation exception reason.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/ValidationException AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :message,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
