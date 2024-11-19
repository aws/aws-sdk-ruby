# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::PCS
  module Types

    # You don't have permission to perform the action.
    #
    # <u>Examples</u>
    #
    # * The launch template instance profile doesn't pass `iam:PassRole`
    #   verification.
    #
    # * There is a mismatch between the account ID and cluster ID.
    #
    # * The cluster ID doesn't exist.
    #
    # * The EC2 instance isn't present.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The cluster resource and configuration.
    #
    # @!attribute [rw] name
    #   The name that identifies the cluster.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The generated unique ID of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The unique Amazon Resource Name (ARN) of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The provisioning status of the cluster.
    #
    #   <note markdown="1"> The provisioning status doesn't indicate the overall health of the
    #   cluster.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time the resource was modified.
    #   @return [Time]
    #
    # @!attribute [rw] scheduler
    #   The cluster management and job scheduling software associated with
    #   the cluster.
    #   @return [Types::Scheduler]
    #
    # @!attribute [rw] size
    #   The size of the cluster.
    #
    #   * `SMALL`: 32 compute nodes and 256 jobs
    #
    #   * `MEDIUM`: 512 compute nodes and 8192 jobs
    #
    #   * `LARGE`: 2048 compute nodes and 16,384 jobs
    #   @return [String]
    #
    # @!attribute [rw] slurm_configuration
    #   Additional options related to the Slurm scheduler.
    #   @return [Types::ClusterSlurmConfiguration]
    #
    # @!attribute [rw] networking
    #   The networking configuration for the cluster's control plane.
    #   @return [Types::Networking]
    #
    # @!attribute [rw] endpoints
    #   The list of endpoints available for interaction with the scheduler.
    #   @return [Array<Types::Endpoint>]
    #
    # @!attribute [rw] error_info
    #   The list of errors that occurred during cluster provisioning.
    #   @return [Array<Types::ErrorInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/Cluster AWS API Documentation
    #
    class Cluster < Struct.new(
      :name,
      :id,
      :arn,
      :status,
      :created_at,
      :modified_at,
      :scheduler,
      :size,
      :slurm_configuration,
      :networking,
      :endpoints,
      :error_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional options related to the Slurm scheduler.
    #
    # @!attribute [rw] scale_down_idle_time_in_seconds
    #   The time (in seconds) before an idle node is scaled down.
    #
    #   Default: `600`
    #   @return [Integer]
    #
    # @!attribute [rw] slurm_custom_settings
    #   Additional Slurm-specific configuration that directly maps to Slurm
    #   settings.
    #   @return [Array<Types::SlurmCustomSetting>]
    #
    # @!attribute [rw] auth_key
    #   The shared Slurm key for authentication, also known as the **cluster
    #   secret**.
    #   @return [Types::SlurmAuthKey]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/ClusterSlurmConfiguration AWS API Documentation
    #
    class ClusterSlurmConfiguration < Struct.new(
      :scale_down_idle_time_in_seconds,
      :slurm_custom_settings,
      :auth_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional options related to the Slurm scheduler.
    #
    # @!attribute [rw] scale_down_idle_time_in_seconds
    #   The time (in seconds) before an idle node is scaled down.
    #
    #   Default: `600`
    #   @return [Integer]
    #
    # @!attribute [rw] slurm_custom_settings
    #   Additional Slurm-specific configuration that directly maps to Slurm
    #   settings.
    #   @return [Array<Types::SlurmCustomSetting>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/ClusterSlurmConfigurationRequest AWS API Documentation
    #
    class ClusterSlurmConfigurationRequest < Struct.new(
      :scale_down_idle_time_in_seconds,
      :slurm_custom_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # The object returned by the `ListClusters` API action.
    #
    # @!attribute [rw] name
    #   The name that identifies the cluster.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The generated unique ID of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The unique Amazon Resource Name (ARN) of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time the resource was modified.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The provisioning status of the cluster.
    #
    #   <note markdown="1"> The provisioning status doesn't indicate the overall health of the
    #   cluster.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/ClusterSummary AWS API Documentation
    #
    class ClusterSummary < Struct.new(
      :name,
      :id,
      :arn,
      :created_at,
      :modified_at,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A compute node group associated with a cluster.
    #
    # @!attribute [rw] name
    #   The name that identifies the compute node group.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The generated unique ID of the compute node group.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The unique Amazon Resource Name (ARN) of the compute node group.
    #   @return [String]
    #
    # @!attribute [rw] cluster_id
    #   The ID of the cluster of the compute node group.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time the resource was modified.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The provisioning status of the compute node group.
    #
    #   <note markdown="1"> The provisioning status doesn't indicate the overall health of the
    #   compute node group.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] ami_id
    #   The ID of the Amazon Machine Image (AMI) that Amazon Web Services
    #   PCS uses to launch instances. If not provided, Amazon Web Services
    #   PCS uses the AMI ID specified in the custom launch template.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The list of subnet IDs where instances are provisioned by the
    #   compute node group. The subnets must be in the same VPC as the
    #   cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] purchase_option
    #   Specifies how EC2 instances are purchased on your behalf. Amazon Web
    #   Services PCS supports On-Demand and Spot instances. For more
    #   information, see [Instance purchasing options][1] in the *Amazon
    #   Elastic Compute Cloud User Guide*. If you don't provide this
    #   option, it defaults to On-Demand.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-purchasing-options.html
    #   @return [String]
    #
    # @!attribute [rw] custom_launch_template
    #   An Amazon EC2 launch template Amazon Web Services PCS uses to launch
    #   compute nodes.
    #   @return [Types::CustomLaunchTemplate]
    #
    # @!attribute [rw] iam_instance_profile_arn
    #   The Amazon Resource Name (ARN) of the IAM instance profile used to
    #   pass an IAM role when launching EC2 instances. The role contained in
    #   your instance profile must have the
    #   `pcs:RegisterComputeNodeGroupInstance` permission. The resource
    #   identifier of the ARN must start with `AWSPCS` or it must have
    #   `/aws-pcs/` in its path.
    #
    #   **Examples**
    #
    #   * `arn:aws:iam::111122223333:instance-profile/AWSPCS-example-role-1`
    #
    #   * `arn:aws:iam::111122223333:instance-profile/aws-pcs/example-role-2`
    #   @return [String]
    #
    # @!attribute [rw] scaling_configuration
    #   Specifies the boundaries of the compute node group auto scaling.
    #   @return [Types::ScalingConfiguration]
    #
    # @!attribute [rw] instance_configs
    #   A list of EC2 instance configurations that Amazon Web Services PCS
    #   can provision in the compute node group.
    #   @return [Array<Types::InstanceConfig>]
    #
    # @!attribute [rw] spot_options
    #   Additional configuration when you specify `SPOT` as the
    #   `purchaseOption` for the `CreateComputeNodeGroup` API action.
    #   @return [Types::SpotOptions]
    #
    # @!attribute [rw] slurm_configuration
    #   Additional options related to the Slurm scheduler.
    #   @return [Types::ComputeNodeGroupSlurmConfiguration]
    #
    # @!attribute [rw] error_info
    #   The list of errors that occurred during compute node group
    #   provisioning.
    #   @return [Array<Types::ErrorInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/ComputeNodeGroup AWS API Documentation
    #
    class ComputeNodeGroup < Struct.new(
      :name,
      :id,
      :arn,
      :cluster_id,
      :created_at,
      :modified_at,
      :status,
      :ami_id,
      :subnet_ids,
      :purchase_option,
      :custom_launch_template,
      :iam_instance_profile_arn,
      :scaling_configuration,
      :instance_configs,
      :spot_options,
      :slurm_configuration,
      :error_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # The compute node group configuration for a queue.
    #
    # @!attribute [rw] compute_node_group_id
    #   The compute node group ID for the compute node group configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/ComputeNodeGroupConfiguration AWS API Documentation
    #
    class ComputeNodeGroupConfiguration < Struct.new(
      :compute_node_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional options related to the Slurm scheduler.
    #
    # @!attribute [rw] slurm_custom_settings
    #   Additional Slurm-specific configuration that directly maps to Slurm
    #   settings.
    #   @return [Array<Types::SlurmCustomSetting>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/ComputeNodeGroupSlurmConfiguration AWS API Documentation
    #
    class ComputeNodeGroupSlurmConfiguration < Struct.new(
      :slurm_custom_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional options related to the Slurm scheduler.
    #
    # @!attribute [rw] slurm_custom_settings
    #   Additional Slurm-specific configuration that directly maps to Slurm
    #   settings.
    #   @return [Array<Types::SlurmCustomSetting>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/ComputeNodeGroupSlurmConfigurationRequest AWS API Documentation
    #
    class ComputeNodeGroupSlurmConfigurationRequest < Struct.new(
      :slurm_custom_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # The object returned by the `ListComputeNodeGroups` API action.
    #
    # @!attribute [rw] name
    #   The name that identifies the compute node group.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The generated unique ID of the compute node group.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The unique Amazon Resource Name (ARN) of the compute node group.
    #   @return [String]
    #
    # @!attribute [rw] cluster_id
    #   The ID of the cluster of the compute node group.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time the resource was modified.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The provisioning status of the compute node group.
    #
    #   <note markdown="1"> The provisioning status doesn't indicate the overall health of the
    #   compute node group.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/ComputeNodeGroupSummary AWS API Documentation
    #
    class ComputeNodeGroupSummary < Struct.new(
      :name,
      :id,
      :arn,
      :cluster_id,
      :created_at,
      :modified_at,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your request has conflicting operations. This can occur if you're
    # trying to perform more than 1 operation on the same resource at the
    # same time.
    #
    # <u>Examples</u>
    #
    # * A cluster with the same name already exists.
    #
    # * A cluster isn't in `ACTIVE` status.
    #
    # * A cluster to delete is in an unstable state. For example, because it
    #   still has `ACTIVE` node groups or queues.
    #
    # * A queue already exists in a cluster.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The unique identifier of the resource that caused the conflict
    #   exception.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type or category of the resource that caused the conflict
    #   exception."
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   A name to identify the cluster. Example: `MyCluster`
    #   @return [String]
    #
    # @!attribute [rw] scheduler
    #   The cluster management and job scheduling software associated with
    #   the cluster.
    #   @return [Types::SchedulerRequest]
    #
    # @!attribute [rw] size
    #   A value that determines the maximum number of compute nodes in the
    #   cluster and the maximum number of jobs (active and queued).
    #
    #   * `SMALL`: 32 compute nodes and 256 jobs
    #
    #   * `MEDIUM`: 512 compute nodes and 8192 jobs
    #
    #   * `LARGE`: 2048 compute nodes and 16,384 jobs
    #   @return [String]
    #
    # @!attribute [rw] networking
    #   The networking configuration used to set up the cluster's control
    #   plane.
    #   @return [Types::NetworkingRequest]
    #
    # @!attribute [rw] slurm_configuration
    #   Additional options related to the Slurm scheduler.
    #   @return [Types::ClusterSlurmConfigurationRequest]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, the subsequent retries with the same
    #   client token return the result from the original successful request
    #   and they have no additional effect. If you don't specify a client
    #   token, the CLI and SDK automatically generate 1 for you.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   1 or more tags added to the resource. Each tag consists of a tag key
    #   and tag value. The tag value is optional and can be an empty string.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/CreateClusterRequest AWS API Documentation
    #
    class CreateClusterRequest < Struct.new(
      :cluster_name,
      :scheduler,
      :size,
      :networking,
      :slurm_configuration,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The cluster resource.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/CreateClusterResponse AWS API Documentation
    #
    class CreateClusterResponse < Struct.new(
      :cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_identifier
    #   The name or ID of the cluster to create a compute node group in.
    #   @return [String]
    #
    # @!attribute [rw] compute_node_group_name
    #   A name to identify the cluster. Example: `MyCluster`
    #   @return [String]
    #
    # @!attribute [rw] ami_id
    #   The ID of the Amazon Machine Image (AMI) that Amazon Web Services
    #   PCS uses to launch compute nodes (Amazon EC2 instances). If you
    #   don't provide this value, Amazon Web Services PCS uses the AMI ID
    #   specified in the custom launch template.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The list of subnet IDs where the compute node group launches
    #   instances. Subnets must be in the same VPC as the cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] purchase_option
    #   Specifies how EC2 instances are purchased on your behalf. Amazon Web
    #   Services PCS supports On-Demand and Spot instances. For more
    #   information, see [Instance purchasing options][1] in the *Amazon
    #   Elastic Compute Cloud User Guide*. If you don't provide this
    #   option, it defaults to On-Demand.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-purchasing-options.html
    #   @return [String]
    #
    # @!attribute [rw] custom_launch_template
    #   An Amazon EC2 launch template Amazon Web Services PCS uses to launch
    #   compute nodes.
    #   @return [Types::CustomLaunchTemplate]
    #
    # @!attribute [rw] iam_instance_profile_arn
    #   The Amazon Resource Name (ARN) of the IAM instance profile used to
    #   pass an IAM role when launching EC2 instances. The role contained in
    #   your instance profile must have the
    #   `pcs:RegisterComputeNodeGroupInstance` permission. The resource
    #   identifier of the ARN must start with `AWSPCS` or it must have
    #   `/aws-pcs/` in its path.
    #
    #   **Examples**
    #
    #   * `arn:aws:iam::111122223333:instance-profile/AWSPCS-example-role-1`
    #
    #   * `arn:aws:iam::111122223333:instance-profile/aws-pcs/example-role-2`
    #   @return [String]
    #
    # @!attribute [rw] scaling_configuration
    #   Specifies the boundaries of the compute node group auto scaling.
    #   @return [Types::ScalingConfigurationRequest]
    #
    # @!attribute [rw] instance_configs
    #   A list of EC2 instance configurations that Amazon Web Services PCS
    #   can provision in the compute node group.
    #   @return [Array<Types::InstanceConfig>]
    #
    # @!attribute [rw] spot_options
    #   Additional configuration when you specify `SPOT` as the
    #   `purchaseOption` for the `CreateComputeNodeGroup` API action.
    #   @return [Types::SpotOptions]
    #
    # @!attribute [rw] slurm_configuration
    #   Additional options related to the Slurm scheduler.
    #   @return [Types::ComputeNodeGroupSlurmConfigurationRequest]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, the subsequent retries with the same
    #   client token return the result from the original successful request
    #   and they have no additional effect. If you don't specify a client
    #   token, the CLI and SDK automatically generate 1 for you.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   1 or more tags added to the resource. Each tag consists of a tag key
    #   and tag value. The tag value is optional and can be an empty string.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/CreateComputeNodeGroupRequest AWS API Documentation
    #
    class CreateComputeNodeGroupRequest < Struct.new(
      :cluster_identifier,
      :compute_node_group_name,
      :ami_id,
      :subnet_ids,
      :purchase_option,
      :custom_launch_template,
      :iam_instance_profile_arn,
      :scaling_configuration,
      :instance_configs,
      :spot_options,
      :slurm_configuration,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] compute_node_group
    #   A compute node group associated with a cluster.
    #   @return [Types::ComputeNodeGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/CreateComputeNodeGroupResponse AWS API Documentation
    #
    class CreateComputeNodeGroupResponse < Struct.new(
      :compute_node_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_identifier
    #   The name or ID of the cluster for which to create a queue.
    #   @return [String]
    #
    # @!attribute [rw] queue_name
    #   A name to identify the queue.
    #   @return [String]
    #
    # @!attribute [rw] compute_node_group_configurations
    #   The list of compute node group configurations to associate with the
    #   queue. Queues assign jobs to associated compute node groups.
    #   @return [Array<Types::ComputeNodeGroupConfiguration>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, the subsequent retries with the same
    #   client token return the result from the original successful request
    #   and they have no additional effect. If you don't specify a client
    #   token, the CLI and SDK automatically generate 1 for you.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   1 or more tags added to the resource. Each tag consists of a tag key
    #   and tag value. The tag value is optional and can be an empty string.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/CreateQueueRequest AWS API Documentation
    #
    class CreateQueueRequest < Struct.new(
      :cluster_identifier,
      :queue_name,
      :compute_node_group_configurations,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] queue
    #   A queue resource.
    #   @return [Types::Queue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/CreateQueueResponse AWS API Documentation
    #
    class CreateQueueResponse < Struct.new(
      :queue)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Amazon EC2 launch template Amazon Web Services PCS uses to launch
    # compute nodes.
    #
    # @!attribute [rw] id
    #   The ID of the EC2 launch template to use to provision instances.
    #
    #   Example: `lt-xxxx`
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the EC2 launch template to use to provision
    #   instances.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/CustomLaunchTemplate AWS API Documentation
    #
    class CustomLaunchTemplate < Struct.new(
      :id,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_identifier
    #   The name or ID of the cluster to delete.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, the subsequent retries with the same
    #   client token return the result from the original successful request
    #   and they have no additional effect. If you don't specify a client
    #   token, the CLI and SDK automatically generate 1 for you.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/DeleteClusterRequest AWS API Documentation
    #
    class DeleteClusterRequest < Struct.new(
      :cluster_identifier,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/DeleteClusterResponse AWS API Documentation
    #
    class DeleteClusterResponse < Aws::EmptyStructure; end

    # @!attribute [rw] cluster_identifier
    #   The name or ID of the cluster of the compute node group.
    #   @return [String]
    #
    # @!attribute [rw] compute_node_group_identifier
    #   The name or ID of the compute node group to delete.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, the subsequent retries with the same
    #   client token return the result from the original successful request
    #   and they have no additional effect. If you don't specify a client
    #   token, the CLI and SDK automatically generate 1 for you.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/DeleteComputeNodeGroupRequest AWS API Documentation
    #
    class DeleteComputeNodeGroupRequest < Struct.new(
      :cluster_identifier,
      :compute_node_group_identifier,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/DeleteComputeNodeGroupResponse AWS API Documentation
    #
    class DeleteComputeNodeGroupResponse < Aws::EmptyStructure; end

    # @!attribute [rw] cluster_identifier
    #   The name or ID of the cluster of the queue.
    #   @return [String]
    #
    # @!attribute [rw] queue_identifier
    #   The name or ID of the queue to delete.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, the subsequent retries with the same
    #   client token return the result from the original successful request
    #   and they have no additional effect. If you don't specify a client
    #   token, the CLI and SDK automatically generate 1 for you.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/DeleteQueueRequest AWS API Documentation
    #
    class DeleteQueueRequest < Struct.new(
      :cluster_identifier,
      :queue_identifier,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/DeleteQueueResponse AWS API Documentation
    #
    class DeleteQueueResponse < Aws::EmptyStructure; end

    # An endpoint available for interaction with the scheduler.
    #
    # @!attribute [rw] type
    #   Indicates the type of endpoint running at the specific IP address.
    #   @return [String]
    #
    # @!attribute [rw] private_ip_address
    #   The endpoint's private IP address.
    #
    #   Example: `2.2.2.2`
    #   @return [String]
    #
    # @!attribute [rw] public_ip_address
    #   The endpoint's public IP address.
    #
    #   Example: `1.1.1.1`
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The endpoint's connection port number.
    #
    #   Example: `1234`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/Endpoint AWS API Documentation
    #
    class Endpoint < Struct.new(
      :type,
      :private_ip_address,
      :public_ip_address,
      :port)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error that occurred during resource creation.
    #
    # @!attribute [rw] code
    #   The short-form error code.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The detailed error information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/ErrorInfo AWS API Documentation
    #
    class ErrorInfo < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_identifier
    #   The name or ID of the cluster of the queue.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/GetClusterRequest AWS API Documentation
    #
    class GetClusterRequest < Struct.new(
      :cluster_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The cluster resource.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/GetClusterResponse AWS API Documentation
    #
    class GetClusterResponse < Struct.new(
      :cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_identifier
    #   The name or ID of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] compute_node_group_identifier
    #   The name or ID of the compute node group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/GetComputeNodeGroupRequest AWS API Documentation
    #
    class GetComputeNodeGroupRequest < Struct.new(
      :cluster_identifier,
      :compute_node_group_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] compute_node_group
    #   A compute node group associated with a cluster.
    #   @return [Types::ComputeNodeGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/GetComputeNodeGroupResponse AWS API Documentation
    #
    class GetComputeNodeGroupResponse < Struct.new(
      :compute_node_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_identifier
    #   The name or ID of the cluster of the queue.
    #   @return [String]
    #
    # @!attribute [rw] queue_identifier
    #   The name or ID of the queue.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/GetQueueRequest AWS API Documentation
    #
    class GetQueueRequest < Struct.new(
      :cluster_identifier,
      :queue_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] queue
    #   A queue resource.
    #   @return [Types::Queue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/GetQueueResponse AWS API Documentation
    #
    class GetQueueResponse < Struct.new(
      :queue)
      SENSITIVE = []
      include Aws::Structure
    end

    # An EC2 instance configuration Amazon Web Services PCS uses to launch
    # compute nodes.
    #
    # @!attribute [rw] instance_type
    #   The EC2 instance type that Amazon Web Services PCS can provision in
    #   the compute node group.
    #
    #   Example: `t2.xlarge`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/InstanceConfig AWS API Documentation
    #
    class InstanceConfig < Struct.new(
      :instance_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon Web Services PCS can't process your request right now. Try
    # again later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The value of `nextToken` is a unique pagination token for each page
    #   of results returned. If `nextToken` is returned, there are more
    #   results available. Make the call again using the returned token to
    #   retrieve the next page. Keep all other arguments unchanged. Each
    #   pagination token expires after 24 hours. Using an expired pagination
    #   token returns an `HTTP 400 InvalidToken` error.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that are returned per call. You can
    #   use `nextToken` to obtain further pages of results. The default is
    #   10 results, and the maximum allowed page size is 100 results. A
    #   value of 0 uses the default.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/ListClustersRequest AWS API Documentation
    #
    class ListClustersRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] clusters
    #   The list of clusters.
    #   @return [Array<Types::ClusterSummary>]
    #
    # @!attribute [rw] next_token
    #   The value of `nextToken` is a unique pagination token for each page
    #   of results returned. If `nextToken` is returned, there are more
    #   results available. Make the call again using the returned token to
    #   retrieve the next page. Keep all other arguments unchanged. Each
    #   pagination token expires after 24 hours. Using an expired pagination
    #   token returns an `HTTP 400 InvalidToken` error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/ListClustersResponse AWS API Documentation
    #
    class ListClustersResponse < Struct.new(
      :clusters,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_identifier
    #   The name or ID of the cluster to list compute node groups for.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The value of `nextToken` is a unique pagination token for each page
    #   of results returned. If `nextToken` is returned, there are more
    #   results available. Make the call again using the returned token to
    #   retrieve the next page. Keep all other arguments unchanged. Each
    #   pagination token expires after 24 hours. Using an expired pagination
    #   token returns an `HTTP 400 InvalidToken` error.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that are returned per call. You can
    #   use `nextToken` to obtain further pages of results. The default is
    #   10 results, and the maximum allowed page size is 100 results. A
    #   value of 0 uses the default.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/ListComputeNodeGroupsRequest AWS API Documentation
    #
    class ListComputeNodeGroupsRequest < Struct.new(
      :cluster_identifier,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] compute_node_groups
    #   The list of compute node groups for the cluster.
    #   @return [Array<Types::ComputeNodeGroupSummary>]
    #
    # @!attribute [rw] next_token
    #   The value of `nextToken` is a unique pagination token for each page
    #   of results returned. If `nextToken` is returned, there are more
    #   results available. Make the call again using the returned token to
    #   retrieve the next page. Keep all other arguments unchanged. Each
    #   pagination token expires after 24 hours. Using an expired pagination
    #   token returns an `HTTP 400 InvalidToken` error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/ListComputeNodeGroupsResponse AWS API Documentation
    #
    class ListComputeNodeGroupsResponse < Struct.new(
      :compute_node_groups,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_identifier
    #   The name or ID of the cluster to list queues for.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The value of `nextToken` is a unique pagination token for each page
    #   of results returned. If `nextToken` is returned, there are more
    #   results available. Make the call again using the returned token to
    #   retrieve the next page. Keep all other arguments unchanged. Each
    #   pagination token expires after 24 hours. Using an expired pagination
    #   token returns an `HTTP 400 InvalidToken` error.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that are returned per call. You can
    #   use `nextToken` to obtain further pages of results. The default is
    #   10 results, and the maximum allowed page size is 100 results. A
    #   value of 0 uses the default.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/ListQueuesRequest AWS API Documentation
    #
    class ListQueuesRequest < Struct.new(
      :cluster_identifier,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] queues
    #   The list of queues associated with the cluster.
    #   @return [Array<Types::QueueSummary>]
    #
    # @!attribute [rw] next_token
    #   The value of `nextToken` is a unique pagination token for each page
    #   of results returned. If `nextToken` is returned, there are more
    #   results available. Make the call again using the returned token to
    #   retrieve the next page. Keep all other arguments unchanged. Each
    #   pagination token expires after 24 hours. Using an expired pagination
    #   token returns an `HTTP 400 InvalidToken` error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/ListQueuesResponse AWS API Documentation
    #
    class ListQueuesResponse < Struct.new(
      :queues,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which to list
    #   tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   1 or more tags added to the resource. Each tag consists of a tag key
    #   and tag value. The tag value is optional and can be an empty string.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The networking configuration for the cluster's control plane.
    #
    # @!attribute [rw] subnet_ids
    #   The ID of the subnet where Amazon Web Services PCS creates an
    #   Elastic Network Interface (ENI) to enable communication between
    #   managed controllers and Amazon Web Services PCS resources. The
    #   subnet must have an available IP address, cannot reside in AWS
    #   Outposts, AWS Wavelength, or an AWS Local Zone.
    #
    #   Example: `subnet-abcd1234`
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   The list of security group IDs associated with the Elastic Network
    #   Interface (ENI) created in subnets.
    #
    #   The following rules are required:
    #
    #   * Inbound rule 1
    #
    #     * Protocol: All
    #
    #     * Ports: All
    #
    #     * Source: Self
    #   * Outbound rule 1
    #
    #     * Protocol: All
    #
    #     * Ports: All
    #
    #     * Destination: 0.0.0.0/0 (IPv4)
    #   * Outbound rule 2
    #
    #     * Protocol: All
    #
    #     * Ports: All
    #
    #     * Destination: Self
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/Networking AWS API Documentation
    #
    class Networking < Struct.new(
      :subnet_ids,
      :security_group_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # The networking configuration for the cluster's control plane.
    #
    # @!attribute [rw] subnet_ids
    #   The list of subnet IDs where Amazon Web Services PCS creates an
    #   Elastic Network Interface (ENI) to enable communication between
    #   managed controllers and Amazon Web Services PCS resources. Subnet
    #   IDs have the form `subnet-0123456789abcdef0`.
    #
    #   Subnets can't be in Outposts, Wavelength or an Amazon Web Services
    #   Local Zone.
    #
    #   <note markdown="1"> Amazon Web Services PCS currently supports only 1 subnet in this
    #   list.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   A list of security group IDs associated with the Elastic Network
    #   Interface (ENI) created in subnets.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/NetworkingRequest AWS API Documentation
    #
    class NetworkingRequest < Struct.new(
      :subnet_ids,
      :security_group_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # A queue resource.
    #
    # @!attribute [rw] name
    #   The name that identifies the queue.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The generated unique ID of the queue.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The unique Amazon Resource Name (ARN) of the queue.
    #   @return [String]
    #
    # @!attribute [rw] cluster_id
    #   The ID of the cluster of the queue.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time the resource was modified.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The provisioning status of the queue.
    #
    #   <note markdown="1"> The provisioning status doesn't indicate the overall health of the
    #   queue.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] compute_node_group_configurations
    #   The list of compute node group configurations associated with the
    #   queue. Queues assign jobs to associated compute node groups.
    #   @return [Array<Types::ComputeNodeGroupConfiguration>]
    #
    # @!attribute [rw] error_info
    #   The list of errors that occurred during queue provisioning.
    #   @return [Array<Types::ErrorInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/Queue AWS API Documentation
    #
    class Queue < Struct.new(
      :name,
      :id,
      :arn,
      :cluster_id,
      :created_at,
      :modified_at,
      :status,
      :compute_node_group_configurations,
      :error_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # The object returned by the `ListQueues` API action.
    #
    # @!attribute [rw] name
    #   The name that identifies the queue.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The generated unique ID of the queue.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The unique Amazon Resource Name (ARN) of the queue.
    #   @return [String]
    #
    # @!attribute [rw] cluster_id
    #   The ID of the cluster of the queue.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time the resource was modified.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The provisioning status of the queue.
    #
    #   <note markdown="1"> The provisioning status doesn't indicate the overall health of the
    #   queue.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/QueueSummary AWS API Documentation
    #
    class QueueSummary < Struct.new(
      :name,
      :id,
      :arn,
      :cluster_id,
      :created_at,
      :modified_at,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_identifier
    #   The name or ID of the cluster to register the compute node group
    #   instance in.
    #   @return [String]
    #
    # @!attribute [rw] bootstrap_id
    #   The client-generated token to allow for retries.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/RegisterComputeNodeGroupInstanceRequest AWS API Documentation
    #
    class RegisterComputeNodeGroupInstanceRequest < Struct.new(
      :cluster_identifier,
      :bootstrap_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] node_id
    #   The scheduler node ID for this instance.
    #   @return [String]
    #
    # @!attribute [rw] shared_secret
    #   For the Slurm scheduler, this is the shared Munge key the scheduler
    #   uses to authenticate compute node group instances.
    #   @return [String]
    #
    # @!attribute [rw] endpoints
    #   The list of endpoints available for interaction with the scheduler.
    #   @return [Array<Types::Endpoint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/RegisterComputeNodeGroupInstanceResponse AWS API Documentation
    #
    class RegisterComputeNodeGroupInstanceResponse < Struct.new(
      :node_id,
      :shared_secret,
      :endpoints)
      SENSITIVE = [:shared_secret]
      include Aws::Structure
    end

    # The requested resource can't be found. The cluster, node group, or
    # queue you're attempting to get, update, list, or delete doesn't
    # exist.
    #
    # <u>Examples</u>
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The unique identifier of the resource that was not found.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type or category of the resource that was not found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the boundaries of the compute node group auto scaling.
    #
    # @!attribute [rw] min_instance_count
    #   The lower bound of the number of instances allowed in the compute
    #   fleet.
    #   @return [Integer]
    #
    # @!attribute [rw] max_instance_count
    #   The upper bound of the number of instances allowed in the compute
    #   fleet.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/ScalingConfiguration AWS API Documentation
    #
    class ScalingConfiguration < Struct.new(
      :min_instance_count,
      :max_instance_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the boundaries of the compute node group auto scaling.
    #
    # @!attribute [rw] min_instance_count
    #   The lower bound of the number of instances allowed in the compute
    #   fleet.
    #   @return [Integer]
    #
    # @!attribute [rw] max_instance_count
    #   The upper bound of the number of instances allowed in the compute
    #   fleet.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/ScalingConfigurationRequest AWS API Documentation
    #
    class ScalingConfigurationRequest < Struct.new(
      :min_instance_count,
      :max_instance_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # The cluster management and job scheduling software associated with the
    # cluster.
    #
    # @!attribute [rw] type
    #   The software Amazon Web Services PCS uses to manage cluster scaling
    #   and job scheduling.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the specified scheduling software that Amazon Web
    #   Services PCS uses to manage cluster scaling and job scheduling.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/Scheduler AWS API Documentation
    #
    class Scheduler < Struct.new(
      :type,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # The cluster management and job scheduling software associated with the
    # cluster.
    #
    # @!attribute [rw] type
    #   The software Amazon Web Services PCS uses to manage cluster scaling
    #   and job scheduling.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the specified scheduling software that Amazon Web
    #   Services PCS uses to manage cluster scaling and job scheduling.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/SchedulerRequest AWS API Documentation
    #
    class SchedulerRequest < Struct.new(
      :type,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # You exceeded your service quota. Service quotas, also referred to as
    # limits, are the maximum number of service resources or operations for
    # your Amazon Web Services account. To learn how to increase your
    # service quota, see [Requesting a quota increase][1] in the *Service
    # Quotas User Guide*
    #
    # <u>Examples</u>
    #
    # * The max number of clusters or queues has been reached for the
    #   account.
    #
    # * The max number of compute node groups has been reached for the
    #   associated cluster.
    #
    # * The total of `maxInstances` across all compute node groups has been
    #   reached for associated cluster.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/servicequotas/latest/userguide/request-quota-increase.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The service code associated with the quota that was exceeded.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The unique identifier of the resource that caused the quota to be
    #   exceeded.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type or category of the resource that caused the quota to be
    #   exceeded.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The **quota code** of the service quota that was exceeded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :service_code,
      :resource_id,
      :resource_type,
      :quota_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The shared Slurm key for authentication, also known as the **cluster
    # secret**.
    #
    # @!attribute [rw] secret_arn
    #   The Amazon Resource Name (ARN) of the the shared Slurm key.
    #   @return [String]
    #
    # @!attribute [rw] secret_version
    #   The version of the shared Slurm key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/SlurmAuthKey AWS API Documentation
    #
    class SlurmAuthKey < Struct.new(
      :secret_arn,
      :secret_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional settings that directly map to Slurm settings.
    #
    # @!attribute [rw] parameter_name
    #   Amazon Web Services PCS supports configuration of the following
    #   Slurm parameters:
    #
    #   * For **clusters**
    #
    #     * [ `Prolog` ][1]
    #
    #     * [ `Epilog` ][2]
    #
    #     * [ `SelectTypeParameters` ][3]
    #   * For **compute node groups**
    #
    #     * [ `Weight` ][4]
    #
    #     * [ `RealMemory` ][4]
    #
    #
    #
    #   [1]: https://slurm.schedmd.com/slurm.conf.html#OPT_Prolog_1
    #   [2]: https://slurm.schedmd.com/slurm.conf.html#OPT_Epilog_1
    #   [3]: https://slurm.schedmd.com/slurm.conf.html#OPT_SelectTypeParameters
    #   [4]: https://slurm.schedmd.com/slurm.conf.html#OPT_Weight
    #   @return [String]
    #
    # @!attribute [rw] parameter_value
    #   The values for the configured Slurm settings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/SlurmCustomSetting AWS API Documentation
    #
    class SlurmCustomSetting < Struct.new(
      :parameter_name,
      :parameter_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional configuration when you specify `SPOT` as the
    # `purchaseOption` for the `CreateComputeNodeGroup` API action.
    #
    # @!attribute [rw] allocation_strategy
    #   The Amazon EC2 allocation strategy Amazon Web Services PCS uses to
    #   provision EC2 instances. Amazon Web Services PCS supports **lowest
    #   price**, **capacity optimized**, and **price capacity optimized**.
    #   For more information, see [Use allocation strategies to determine
    #   how EC2 Fleet or Spot Fleet fulfills Spot and On-Demand capacity][1]
    #   in the *Amazon Elastic Compute Cloud User Guide*. If you don't
    #   provide this option, it defaults to **price capacity optimized**.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-allocation-strategy.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/SpotOptions AWS API Documentation
    #
    class SpotOptions < Struct.new(
      :allocation_strategy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   1 or more tags added to the resource. Each tag consists of a tag key
    #   and tag value. The tag value is optional and can be an empty string.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your request exceeded a request rate quota. Check the resource's
    # request rate quota and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds to wait before retrying the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   1 or more tag keys to remove from the resource. Specify only tag
    #   keys and not tag values.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_identifier
    #   The name or ID of the cluster of the compute node group.
    #   @return [String]
    #
    # @!attribute [rw] compute_node_group_identifier
    #   The name or ID of the compute node group.
    #   @return [String]
    #
    # @!attribute [rw] ami_id
    #   The ID of the Amazon Machine Image (AMI) that Amazon Web Services
    #   PCS uses to launch instances. If not provided, Amazon Web Services
    #   PCS uses the AMI ID specified in the custom launch template.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The list of subnet IDs where the compute node group provisions
    #   instances. The subnets must be in the same VPC as the cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] custom_launch_template
    #   An Amazon EC2 launch template Amazon Web Services PCS uses to launch
    #   compute nodes.
    #   @return [Types::CustomLaunchTemplate]
    #
    # @!attribute [rw] purchase_option
    #   Specifies how EC2 instances are purchased on your behalf. Amazon Web
    #   Services PCS supports On-Demand and Spot instances. For more
    #   information, see [Instance purchasing options][1] in the *Amazon
    #   Elastic Compute Cloud User Guide*. If you don't provide this
    #   option, it defaults to On-Demand.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-purchasing-options.html
    #   @return [String]
    #
    # @!attribute [rw] spot_options
    #   Additional configuration when you specify `SPOT` as the
    #   `purchaseOption` for the `CreateComputeNodeGroup` API action.
    #   @return [Types::SpotOptions]
    #
    # @!attribute [rw] scaling_configuration
    #   Specifies the boundaries of the compute node group auto scaling.
    #   @return [Types::ScalingConfigurationRequest]
    #
    # @!attribute [rw] iam_instance_profile_arn
    #   The Amazon Resource Name (ARN) of the IAM instance profile used to
    #   pass an IAM role when launching EC2 instances. The role contained in
    #   your instance profile must have the
    #   `pcs:RegisterComputeNodeGroupInstance` permission. The resource
    #   identifier of the ARN must start with `AWSPCS` or it must have
    #   `/aws-pcs/` in its path.
    #
    #   **Examples**
    #
    #   * `arn:aws:iam::111122223333:instance-profile/AWSPCS-example-role-1`
    #
    #   * `arn:aws:iam::111122223333:instance-profile/aws-pcs/example-role-2`
    #   @return [String]
    #
    # @!attribute [rw] slurm_configuration
    #   Additional options related to the Slurm scheduler.
    #   @return [Types::UpdateComputeNodeGroupSlurmConfigurationRequest]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, the subsequent retries with the same
    #   client token return the result from the original successful request
    #   and they have no additional effect. If you don't specify a client
    #   token, the CLI and SDK automatically generate 1 for you.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/UpdateComputeNodeGroupRequest AWS API Documentation
    #
    class UpdateComputeNodeGroupRequest < Struct.new(
      :cluster_identifier,
      :compute_node_group_identifier,
      :ami_id,
      :subnet_ids,
      :custom_launch_template,
      :purchase_option,
      :spot_options,
      :scaling_configuration,
      :iam_instance_profile_arn,
      :slurm_configuration,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] compute_node_group
    #   A compute node group associated with a cluster.
    #   @return [Types::ComputeNodeGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/UpdateComputeNodeGroupResponse AWS API Documentation
    #
    class UpdateComputeNodeGroupResponse < Struct.new(
      :compute_node_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional options related to the Slurm scheduler.
    #
    # @!attribute [rw] slurm_custom_settings
    #   Additional Slurm-specific configuration that directly maps to Slurm
    #   settings.
    #   @return [Array<Types::SlurmCustomSetting>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/UpdateComputeNodeGroupSlurmConfigurationRequest AWS API Documentation
    #
    class UpdateComputeNodeGroupSlurmConfigurationRequest < Struct.new(
      :slurm_custom_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_identifier
    #   The name or ID of the cluster of the queue.
    #   @return [String]
    #
    # @!attribute [rw] queue_identifier
    #   The name or ID of the queue.
    #   @return [String]
    #
    # @!attribute [rw] compute_node_group_configurations
    #   The list of compute node group configurations to associate with the
    #   queue. Queues assign jobs to associated compute node groups.
    #   @return [Array<Types::ComputeNodeGroupConfiguration>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, the subsequent retries with the same
    #   client token return the result from the original successful request
    #   and they have no additional effect. If you don't specify a client
    #   token, the CLI and SDK automatically generate 1 for you.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/UpdateQueueRequest AWS API Documentation
    #
    class UpdateQueueRequest < Struct.new(
      :cluster_identifier,
      :queue_identifier,
      :compute_node_group_configurations,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] queue
    #   A queue resource.
    #   @return [Types::Queue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/UpdateQueueResponse AWS API Documentation
    #
    class UpdateQueueResponse < Struct.new(
      :queue)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request isn't valid.
    #
    # <u>Examples</u>
    #
    # * Your request contains malformed JSON or unsupported characters.
    #
    # * The scheduler version isn't supported.
    #
    # * There are networking related errors, such as network validation
    #   failure.
    #
    # * AMI type is `CUSTOM` and the launch template doesn't define the AMI
    #   ID, or the AMI type is AL2 and the launch template defines the AMI.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The specific reason or cause of the validation error.
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   A list of fields or properties that failed validation.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Stores information about a field in a request that caused an
    # exception.
    #
    # @!attribute [rw] name
    #   The name of the exception.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message body of the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

