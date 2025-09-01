# frozen_string_literal: true

# This is generated code!

module Aws::PCS
  # This module contains the types returned by client operations.
  module Types

    # <p>You don't have permission to perform the action.</p> <p> <u>Examples</u> </p> <ul> <li> <p>The launch template instance profile doesn't pass <code>iam:PassRole</code> verification.</p> </li> <li> <p>There is a mismatch between the account ID and cluster ID.</p> </li> <li> <p>The cluster ID doesn't exist.</p> </li> <li> <p>The EC2 instance isn't present.</p> </li> </ul>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The accounting configuration includes configurable settings for Slurm accounting. It's a property of the <b>ClusterSlurmConfiguration</b> object.</p>
    # @!attribute mode
    #   <p>The default value for <code>mode</code> is <code>STANDARD</code>. A value of <code>STANDARD</code> means Slurm accounting is enabled.</p>
    #   @return [String]
    # @!attribute default_purge_time_in_days
    #   <p>The default value for all purge settings for <code>slurmdbd.conf</code>. For more information, see the <a href="https://slurm.schedmd.com/slurmdbd.conf.html">slurmdbd.conf documentation at SchedMD</a>.</p> <p>The default value for <code>defaultPurgeTimeInDays</code> is <code>-1</code>.</p> <p>A value of <code>-1</code> means there is no purge time and records persist as long as the cluster exists.</p> <important> <p> <code>0</code> isn't a valid value.</p> </important>
    #   @return [Integer]
    class Accounting < Struct.new(
      :mode,
      :default_purge_time_in_days,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AccountingMode
      STANDARD = 'STANDARD'
      NONE = 'NONE'
    end

    # <p>The accounting configuration includes configurable settings for Slurm accounting. It's a property of the <b>ClusterSlurmConfiguration</b> object.</p>
    # @!attribute mode
    #   <p>The default value for <code>mode</code> is <code>STANDARD</code>. A value of <code>STANDARD</code> means Slurm accounting is enabled.</p>
    #   @return [String]
    # @!attribute default_purge_time_in_days
    #   <p>The default value for all purge settings for <code>slurmdbd.conf</code>. For more information, see the <a href="https://slurm.schedmd.com/slurmdbd.conf.html">slurmdbd.conf documentation at SchedMD</a>.</p> <p>The default value for <code>defaultPurgeTimeInDays</code> is <code>-1</code>.</p> <p>A value of <code>-1</code> means there is no purge time and records persist as long as the cluster exists.</p> <important> <p> <code>0</code> isn't a valid value.</p> </important>
    #   @return [Integer]
    class AccountingRequest < Struct.new(
      :mode,
      :default_purge_time_in_days,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The cluster resource and configuration.</p>
    # @!attribute name
    #   <p>The name that identifies the cluster.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The generated unique ID of the cluster.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The unique Amazon Resource Name (ARN) of the cluster.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The provisioning status of the cluster.</p> <note> <p>The provisioning status doesn't indicate the overall health of the cluster.</p> </note> <important> <p>The resource enters the <code>SUSPENDING</code> and <code>SUSPENDED</code> states when the scheduler is beyond end of life and we have suspended the cluster. When in these states, you can't use the cluster. The cluster controller is down and all compute instances are terminated. The resources still count toward your service quotas. You can delete a resource if its status is <code>SUSPENDED</code>. For more information, see <a href="https://docs.aws.amazon.com/pcs/latest/userguide/slurm-versions_faq.html">Frequently asked questions about Slurm versions in PCS</a> in the <i>PCS User Guide</i>.</p> </important>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the resource was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The date and time the resource was modified.</p>
    #   @return [Time]
    # @!attribute scheduler
    #   <p>The cluster management and job scheduling software associated with the cluster.</p>
    #   @return [Types::Scheduler]
    # @!attribute size
    #   <p>The size of the cluster.</p> <ul> <li> <p> <code>SMALL</code>: 32 compute nodes and 256 jobs</p> </li> <li> <p> <code>MEDIUM</code>: 512 compute nodes and 8192 jobs</p> </li> <li> <p> <code>LARGE</code>: 2048 compute nodes and 16,384 jobs</p> </li> </ul>
    #   @return [String]
    # @!attribute slurm_configuration
    #   <p>Additional options related to the Slurm scheduler.</p>
    #   @return [Types::ClusterSlurmConfiguration]
    # @!attribute networking
    #   <p>The networking configuration for the cluster's control plane.</p>
    #   @return [Types::Networking]
    # @!attribute endpoints
    #   <p>The list of endpoints available for interaction with the scheduler.</p>
    #   @return [Array<Types::Endpoint>]
    # @!attribute error_info
    #   <p>The list of errors that occurred during cluster provisioning.</p>
    #   @return [Array<Types::ErrorInfo>]
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
      :error_info,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Additional options related to the Slurm scheduler.</p>
    # @!attribute scale_down_idle_time_in_seconds
    #   <p>The time (in seconds) before an idle node is scaled down.</p> <p>Default: <code>600</code> </p>
    #   @return [Integer]
    # @!attribute slurm_custom_settings
    #   <p>Additional Slurm-specific configuration that directly maps to Slurm settings.</p>
    #   @return [Array<Types::SlurmCustomSetting>]
    # @!attribute auth_key
    #   <p>The shared Slurm key for authentication, also known as the <b>cluster secret</b>.</p>
    #   @return [Types::SlurmAuthKey]
    # @!attribute accounting
    #   <p>The accounting configuration includes configurable settings for Slurm accounting.</p>
    #   @return [Types::Accounting]
    class ClusterSlurmConfiguration < Struct.new(
      :scale_down_idle_time_in_seconds,
      :slurm_custom_settings,
      :auth_key,
      :accounting,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Additional options related to the Slurm scheduler.</p>
    # @!attribute scale_down_idle_time_in_seconds
    #   <p>The time (in seconds) before an idle node is scaled down.</p> <p>Default: <code>600</code> </p>
    #   @return [Integer]
    # @!attribute slurm_custom_settings
    #   <p>Additional Slurm-specific configuration that directly maps to Slurm settings.</p>
    #   @return [Array<Types::SlurmCustomSetting>]
    # @!attribute accounting
    #   <p>The accounting configuration includes configurable settings for Slurm accounting.</p>
    #   @return [Types::AccountingRequest]
    class ClusterSlurmConfigurationRequest < Struct.new(
      :scale_down_idle_time_in_seconds,
      :slurm_custom_settings,
      :accounting,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ClusterStatus
      CREATING = 'CREATING'
      ACTIVE = 'ACTIVE'
      UPDATING = 'UPDATING'
      DELETING = 'DELETING'
      CREATE_FAILED = 'CREATE_FAILED'
      DELETE_FAILED = 'DELETE_FAILED'
      UPDATE_FAILED = 'UPDATE_FAILED'
      SUSPENDING = 'SUSPENDING'
      SUSPENDED = 'SUSPENDED'
    end

    # <p>The object returned by the <code>ListClusters</code> API action.</p>
    # @!attribute name
    #   <p>The name that identifies the cluster.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The generated unique ID of the cluster.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The unique Amazon Resource Name (ARN) of the cluster.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the resource was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The date and time the resource was modified.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The provisioning status of the cluster.</p> <note> <p>The provisioning status doesn't indicate the overall health of the cluster.</p> </note> <important> <p>The resource enters the <code>SUSPENDING</code> and <code>SUSPENDED</code> states when the scheduler is beyond end of life and we have suspended the cluster. When in these states, you can't use the cluster. The cluster controller is down and all compute instances are terminated. The resources still count toward your service quotas. You can delete a resource if its status is <code>SUSPENDED</code>. For more information, see <a href="https://docs.aws.amazon.com/pcs/latest/userguide/slurm-versions_faq.html">Frequently asked questions about Slurm versions in PCS</a> in the <i>PCS User Guide</i>.</p> </important>
    #   @return [String]
    class ClusterSummary < Struct.new(
      :name,
      :id,
      :arn,
      :created_at,
      :modified_at,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A compute node group associated with a cluster.</p>
    # @!attribute name
    #   <p>The name that identifies the compute node group.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The generated unique ID of the compute node group.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The unique Amazon Resource Name (ARN) of the compute node group.</p>
    #   @return [String]
    # @!attribute cluster_id
    #   <p>The ID of the cluster of the compute node group.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the resource was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The date and time the resource was modified.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The provisioning status of the compute node group.</p> <note> <p>The provisioning status doesn't indicate the overall health of the compute node group.</p> </note> <important> <p>The resource enters the <code>SUSPENDING</code> and <code>SUSPENDED</code> states when the scheduler is beyond end of life and we have suspended the cluster. When in these states, you can't use the cluster. The cluster controller is down and all compute instances are terminated. The resources still count toward your service quotas. You can delete a resource if its status is <code>SUSPENDED</code>. For more information, see <a href="https://docs.aws.amazon.com/pcs/latest/userguide/slurm-versions_faq.html">Frequently asked questions about Slurm versions in PCS</a> in the <i>PCS User Guide</i>.</p> </important>
    #   @return [String]
    # @!attribute ami_id
    #   <p>The ID of the Amazon Machine Image (AMI) that Amazon Web Services PCS uses to launch instances. If not provided, Amazon Web Services PCS uses the AMI ID specified in the custom launch template.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>The list of subnet IDs where instances are provisioned by the compute node group. The subnets must be in the same VPC as the cluster.</p>
    #   @return [Array<String>]
    # @!attribute purchase_option
    #   <p>Specifies how EC2 instances are purchased on your behalf. Amazon Web Services PCS supports On-Demand and Spot instances. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-purchasing-options.html">Instance purchasing options</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>. If you don't provide this option, it defaults to On-Demand.</p>
    #   @return [String]
    # @!attribute custom_launch_template
    #   <p>An Amazon EC2 launch template Amazon Web Services PCS uses to launch compute nodes.</p>
    #   @return [Types::CustomLaunchTemplate]
    # @!attribute iam_instance_profile_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM instance profile used to pass an IAM role when launching EC2 instances. The role contained in your instance profile must have the <code>pcs:RegisterComputeNodeGroupInstance</code> permission. The resource identifier of the ARN must start with <code>AWSPCS</code> or it must have <code>/aws-pcs/</code> in its path.</p> <p class="title"> <b>Examples</b> </p> <ul> <li> <p> <code>arn:aws:iam::111122223333:instance-profile/AWSPCS-example-role-1</code> </p> </li> <li> <p> <code>arn:aws:iam::111122223333:instance-profile/aws-pcs/example-role-2</code> </p> </li> </ul>
    #   @return [String]
    # @!attribute scaling_configuration
    #   <p>Specifies the boundaries of the compute node group auto scaling.</p>
    #   @return [Types::ScalingConfiguration]
    # @!attribute instance_configs
    #   <p>A list of EC2 instance configurations that Amazon Web Services PCS can provision in the compute node group.</p>
    #   @return [Array<Types::InstanceConfig>]
    # @!attribute spot_options
    #   <p>Additional configuration when you specify <code>SPOT</code> as the <code>purchaseOption</code> for the <code>CreateComputeNodeGroup</code> API action.</p>
    #   @return [Types::SpotOptions]
    # @!attribute slurm_configuration
    #   <p>Additional options related to the Slurm scheduler.</p>
    #   @return [Types::ComputeNodeGroupSlurmConfiguration]
    # @!attribute error_info
    #   <p>The list of errors that occurred during compute node group provisioning.</p>
    #   @return [Array<Types::ErrorInfo>]
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
      :error_info,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The compute node group configuration for a queue.</p>
    # @!attribute compute_node_group_id
    #   <p>The compute node group ID for the compute node group configuration.</p>
    #   @return [String]
    class ComputeNodeGroupConfiguration < Struct.new(
      :compute_node_group_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Additional options related to the Slurm scheduler.</p>
    # @!attribute slurm_custom_settings
    #   <p>Additional Slurm-specific configuration that directly maps to Slurm settings.</p>
    #   @return [Array<Types::SlurmCustomSetting>]
    class ComputeNodeGroupSlurmConfiguration < Struct.new(
      :slurm_custom_settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Additional options related to the Slurm scheduler.</p>
    # @!attribute slurm_custom_settings
    #   <p>Additional Slurm-specific configuration that directly maps to Slurm settings.</p>
    #   @return [Array<Types::SlurmCustomSetting>]
    class ComputeNodeGroupSlurmConfigurationRequest < Struct.new(
      :slurm_custom_settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ComputeNodeGroupStatus
      CREATING = 'CREATING'
      ACTIVE = 'ACTIVE'
      UPDATING = 'UPDATING'
      DELETING = 'DELETING'
      CREATE_FAILED = 'CREATE_FAILED'
      DELETE_FAILED = 'DELETE_FAILED'
      UPDATE_FAILED = 'UPDATE_FAILED'
      DELETED = 'DELETED'
      SUSPENDING = 'SUSPENDING'
      SUSPENDED = 'SUSPENDED'
    end

    # <p>The object returned by the <code>ListComputeNodeGroups</code> API action.</p>
    # @!attribute name
    #   <p>The name that identifies the compute node group.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The generated unique ID of the compute node group.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The unique Amazon Resource Name (ARN) of the compute node group.</p>
    #   @return [String]
    # @!attribute cluster_id
    #   <p>The ID of the cluster of the compute node group.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the resource was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The date and time the resource was modified.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The provisioning status of the compute node group.</p> <note> <p>The provisioning status doesn't indicate the overall health of the compute node group.</p> </note> <important> <p>The resource enters the <code>SUSPENDING</code> and <code>SUSPENDED</code> states when the scheduler is beyond end of life and we have suspended the cluster. When in these states, you can't use the cluster. The cluster controller is down and all compute instances are terminated. The resources still count toward your service quotas. You can delete a resource if its status is <code>SUSPENDED</code>. For more information, see <a href="https://docs.aws.amazon.com/pcs/latest/userguide/slurm-versions_faq.html">Frequently asked questions about Slurm versions in PCS</a> in the <i>PCS User Guide</i>.</p> </important>
    #   @return [String]
    class ComputeNodeGroupSummary < Struct.new(
      :name,
      :id,
      :arn,
      :cluster_id,
      :created_at,
      :modified_at,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Your request has conflicting operations. This can occur if you're trying to perform more than 1 operation on the same resource at the same time.</p> <p> <u>Examples</u> </p> <ul> <li> <p>A cluster with the same name already exists.</p> </li> <li> <p>A cluster isn't in <code>ACTIVE</code> status.</p> </li> <li> <p>A cluster to delete is in an unstable state. For example, because it still has <code>ACTIVE</code> node groups or queues.</p> </li> <li> <p>A queue already exists in a cluster.</p> </li> </ul>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p> The unique identifier of the resource that caused the conflict exception. </p>
    #   @return [String]
    # @!attribute resource_type
    #   <p> The type or category of the resource that caused the conflict exception." </p>
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>A name to identify the cluster. Example: <code>MyCluster</code> </p>
    #   @return [String]
    # @!attribute scheduler
    #   <p>The cluster management and job scheduling software associated with the cluster.</p>
    #   @return [Types::SchedulerRequest]
    # @!attribute size
    #   <p>A value that determines the maximum number of compute nodes in the cluster and the maximum number of jobs (active and queued).</p> <ul> <li> <p> <code>SMALL</code>: 32 compute nodes and 256 jobs</p> </li> <li> <p> <code>MEDIUM</code>: 512 compute nodes and 8192 jobs</p> </li> <li> <p> <code>LARGE</code>: 2048 compute nodes and 16,384 jobs</p> </li> </ul>
    #   @return [String]
    # @!attribute networking
    #   <p>The networking configuration used to set up the cluster's control plane.</p>
    #   @return [Types::NetworkingRequest]
    # @!attribute slurm_configuration
    #   <p>Additional options related to the Slurm scheduler.</p>
    #   @return [Types::ClusterSlurmConfigurationRequest]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Idempotency ensures that an API request completes only once. With an idempotent request, if the original request completes successfully, the subsequent retries with the same client token return the result from the original successful request and they have no additional effect. If you don't specify a client token, the CLI and SDK automatically generate 1 for you.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>1 or more tags added to the resource. Each tag consists of a tag key and tag value. The tag value is optional and can be an empty string.</p>
    #   @return [Hash<String, String>]
    class CreateClusterRequest < Struct.new(
      :cluster_name,
      :scheduler,
      :size,
      :networking,
      :slurm_configuration,
      :client_token,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute cluster
    #   <p>The cluster resource.</p>
    #   @return [Types::Cluster]
    class CreateClusterResponse < Struct.new(
      :cluster,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute cluster_identifier
    #   <p>The name or ID of the cluster to create a compute node group in.</p>
    #   @return [String]
    # @!attribute compute_node_group_name
    #   <p>A name to identify the cluster. Example: <code>MyCluster</code> </p>
    #   @return [String]
    # @!attribute ami_id
    #   <p> The ID of the Amazon Machine Image (AMI) that Amazon Web Services PCS uses to launch compute nodes (Amazon EC2 instances). If you don't provide this value, Amazon Web Services PCS uses the AMI ID specified in the custom launch template.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>The list of subnet IDs where the compute node group launches instances. Subnets must be in the same VPC as the cluster.</p>
    #   @return [Array<String>]
    # @!attribute purchase_option
    #   <p>Specifies how EC2 instances are purchased on your behalf. Amazon Web Services PCS supports On-Demand and Spot instances. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-purchasing-options.html">Instance purchasing options</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>. If you don't provide this option, it defaults to On-Demand.</p>
    #   @return [String]
    # @!attribute custom_launch_template
    #   <p>An Amazon EC2 launch template Amazon Web Services PCS uses to launch compute nodes.</p>
    #   @return [Types::CustomLaunchTemplate]
    # @!attribute iam_instance_profile_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM instance profile used to pass an IAM role when launching EC2 instances. The role contained in your instance profile must have the <code>pcs:RegisterComputeNodeGroupInstance</code> permission. The resource identifier of the ARN must start with <code>AWSPCS</code> or it must have <code>/aws-pcs/</code> in its path.</p> <p class="title"> <b>Examples</b> </p> <ul> <li> <p> <code>arn:aws:iam::111122223333:instance-profile/AWSPCS-example-role-1</code> </p> </li> <li> <p> <code>arn:aws:iam::111122223333:instance-profile/aws-pcs/example-role-2</code> </p> </li> </ul>
    #   @return [String]
    # @!attribute scaling_configuration
    #   <p>Specifies the boundaries of the compute node group auto scaling.</p>
    #   @return [Types::ScalingConfigurationRequest]
    # @!attribute instance_configs
    #   <p>A list of EC2 instance configurations that Amazon Web Services PCS can provision in the compute node group.</p>
    #   @return [Array<Types::InstanceConfig>]
    # @!attribute spot_options
    #   <p>Additional configuration when you specify <code>SPOT</code> as the <code>purchaseOption</code> for the <code>CreateComputeNodeGroup</code> API action.</p>
    #   @return [Types::SpotOptions]
    # @!attribute slurm_configuration
    #   <p>Additional options related to the Slurm scheduler.</p>
    #   @return [Types::ComputeNodeGroupSlurmConfigurationRequest]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Idempotency ensures that an API request completes only once. With an idempotent request, if the original request completes successfully, the subsequent retries with the same client token return the result from the original successful request and they have no additional effect. If you don't specify a client token, the CLI and SDK automatically generate 1 for you.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>1 or more tags added to the resource. Each tag consists of a tag key and tag value. The tag value is optional and can be an empty string.</p>
    #   @return [Hash<String, String>]
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
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute compute_node_group
    #   <p>A compute node group associated with a cluster.</p>
    #   @return [Types::ComputeNodeGroup]
    class CreateComputeNodeGroupResponse < Struct.new(
      :compute_node_group,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute cluster_identifier
    #   <p>The name or ID of the cluster for which to create a queue.</p>
    #   @return [String]
    # @!attribute queue_name
    #   <p>A name to identify the queue.</p>
    #   @return [String]
    # @!attribute compute_node_group_configurations
    #   <p>The list of compute node group configurations to associate with the queue. Queues assign jobs to associated compute node groups.</p>
    #   @return [Array<Types::ComputeNodeGroupConfiguration>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Idempotency ensures that an API request completes only once. With an idempotent request, if the original request completes successfully, the subsequent retries with the same client token return the result from the original successful request and they have no additional effect. If you don't specify a client token, the CLI and SDK automatically generate 1 for you.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>1 or more tags added to the resource. Each tag consists of a tag key and tag value. The tag value is optional and can be an empty string.</p>
    #   @return [Hash<String, String>]
    class CreateQueueRequest < Struct.new(
      :cluster_identifier,
      :queue_name,
      :compute_node_group_configurations,
      :client_token,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute queue
    #   <p>A queue resource.</p>
    #   @return [Types::Queue]
    class CreateQueueResponse < Struct.new(
      :queue,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An Amazon EC2 launch template Amazon Web Services PCS uses to launch compute nodes.</p>
    # @!attribute id
    #   <p>The ID of the EC2 launch template to use to provision instances.</p> <p> Example: <code>lt-xxxx</code> </p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the EC2 launch template to use to provision instances.</p>
    #   @return [String]
    class CustomLaunchTemplate < Struct.new(
      :id,
      :version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute cluster_identifier
    #   <p>The name or ID of the cluster to delete.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Idempotency ensures that an API request completes only once. With an idempotent request, if the original request completes successfully, the subsequent retries with the same client token return the result from the original successful request and they have no additional effect. If you don't specify a client token, the CLI and SDK automatically generate 1 for you.</p>
    #   @return [String]
    class DeleteClusterRequest < Struct.new(
      :cluster_identifier,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteClusterResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute cluster_identifier
    #   <p>The name or ID of the cluster of the compute node group.</p>
    #   @return [String]
    # @!attribute compute_node_group_identifier
    #   <p>The name or ID of the compute node group to delete.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Idempotency ensures that an API request completes only once. With an idempotent request, if the original request completes successfully, the subsequent retries with the same client token return the result from the original successful request and they have no additional effect. If you don't specify a client token, the CLI and SDK automatically generate 1 for you.</p>
    #   @return [String]
    class DeleteComputeNodeGroupRequest < Struct.new(
      :cluster_identifier,
      :compute_node_group_identifier,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteComputeNodeGroupResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute cluster_identifier
    #   <p>The name or ID of the cluster of the queue.</p>
    #   @return [String]
    # @!attribute queue_identifier
    #   <p>The name or ID of the queue to delete.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Idempotency ensures that an API request completes only once. With an idempotent request, if the original request completes successfully, the subsequent retries with the same client token return the result from the original successful request and they have no additional effect. If you don't specify a client token, the CLI and SDK automatically generate 1 for you.</p>
    #   @return [String]
    class DeleteQueueRequest < Struct.new(
      :cluster_identifier,
      :queue_identifier,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteQueueResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An endpoint available for interaction with the scheduler.</p>
    # @!attribute type
    #   <p>Indicates the type of endpoint running at the specific IP address.</p>
    #   @return [String]
    # @!attribute private_ip_address
    #   <p>For clusters that use IPv4, this is the endpoint's private IP address.</p> <p>Example: <code>10.1.2.3</code> </p> <p>For clusters configured to use IPv6, this is an empty string.</p>
    #   @return [String]
    # @!attribute public_ip_address
    #   <p>The endpoint's public IP address.</p> <p>Example: <code>192.0.2.1</code> </p>
    #   @return [String]
    # @!attribute ipv6_address
    #   <p>The endpoint's IPv6 address.</p> <p>Example: <code>2001:db8::1</code> </p>
    #   @return [String]
    # @!attribute port
    #   <p>The endpoint's connection port number.</p> <p> Example: <code>1234</code> </p>
    #   @return [String]
    class Endpoint < Struct.new(
      :type,
      :private_ip_address,
      :public_ip_address,
      :ipv6_address,
      :port,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module EndpointType
      SLURMCTLD = 'SLURMCTLD'
      SLURMDBD = 'SLURMDBD'
    end

    # <p>An error that occurred during resource creation.</p>
    # @!attribute code
    #   <p>The short-form error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The detailed error information.</p>
    #   @return [String]
    class ErrorInfo < Struct.new(
      :code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute cluster_identifier
    #   <p>The name or ID of the cluster of the queue.</p>
    #   @return [String]
    class GetClusterRequest < Struct.new(
      :cluster_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute cluster
    #   <p>The cluster resource.</p>
    #   @return [Types::Cluster]
    class GetClusterResponse < Struct.new(
      :cluster,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute cluster_identifier
    #   <p>The name or ID of the cluster.</p>
    #   @return [String]
    # @!attribute compute_node_group_identifier
    #   <p>The name or ID of the compute node group.</p>
    #   @return [String]
    class GetComputeNodeGroupRequest < Struct.new(
      :cluster_identifier,
      :compute_node_group_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute compute_node_group
    #   <p>A compute node group associated with a cluster.</p>
    #   @return [Types::ComputeNodeGroup]
    class GetComputeNodeGroupResponse < Struct.new(
      :compute_node_group,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute cluster_identifier
    #   <p>The name or ID of the cluster of the queue.</p>
    #   @return [String]
    # @!attribute queue_identifier
    #   <p>The name or ID of the queue.</p>
    #   @return [String]
    class GetQueueRequest < Struct.new(
      :cluster_identifier,
      :queue_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute queue
    #   <p>A queue resource.</p>
    #   @return [Types::Queue]
    class GetQueueResponse < Struct.new(
      :queue,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An EC2 instance configuration Amazon Web Services PCS uses to launch compute nodes.</p>
    # @!attribute instance_type
    #   <p>The EC2 instance type that Amazon Web Services PCS can provision in the compute node group.</p> <p> Example: <code>t2.xlarge</code> </p>
    #   @return [String]
    class InstanceConfig < Struct.new(
      :instance_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Amazon Web Services PCS can't process your request right now. Try again later.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The value of <code>nextToken</code> is a unique pagination token for each page of results returned. If <code>nextToken</code> is returned, there are more results available. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token returns an <code>HTTP 400 InvalidToken</code> error.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results. The default is 10 results, and the maximum allowed page size is 100 results. A value of 0 uses the default.</p>
    #   @return [Integer]
    class ListClustersRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute clusters
    #   <p>The list of clusters.</p>
    #   @return [Array<Types::ClusterSummary>]
    # @!attribute next_token
    #   <p>The value of <code>nextToken</code> is a unique pagination token for each page of results returned. If <code>nextToken</code> is returned, there are more results available. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token returns an <code>HTTP 400 InvalidToken</code> error.</p>
    #   @return [String]
    class ListClustersResponse < Struct.new(
      :clusters,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute cluster_identifier
    #   <p>The name or ID of the cluster to list compute node groups for.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The value of <code>nextToken</code> is a unique pagination token for each page of results returned. If <code>nextToken</code> is returned, there are more results available. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token returns an <code>HTTP 400 InvalidToken</code> error.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results. The default is 10 results, and the maximum allowed page size is 100 results. A value of 0 uses the default.</p>
    #   @return [Integer]
    class ListComputeNodeGroupsRequest < Struct.new(
      :cluster_identifier,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute compute_node_groups
    #   <p>The list of compute node groups for the cluster.</p>
    #   @return [Array<Types::ComputeNodeGroupSummary>]
    # @!attribute next_token
    #   <p>The value of <code>nextToken</code> is a unique pagination token for each page of results returned. If <code>nextToken</code> is returned, there are more results available. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token returns an <code>HTTP 400 InvalidToken</code> error.</p>
    #   @return [String]
    class ListComputeNodeGroupsResponse < Struct.new(
      :compute_node_groups,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute cluster_identifier
    #   <p>The name or ID of the cluster to list queues for.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The value of <code>nextToken</code> is a unique pagination token for each page of results returned. If <code>nextToken</code> is returned, there are more results available. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token returns an <code>HTTP 400 InvalidToken</code> error.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results. The default is 10 results, and the maximum allowed page size is 100 results. A value of 0 uses the default.</p>
    #   @return [Integer]
    class ListQueuesRequest < Struct.new(
      :cluster_identifier,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute queues
    #   <p>The list of queues associated with the cluster.</p>
    #   @return [Array<Types::QueueSummary>]
    # @!attribute next_token
    #   <p>The value of <code>nextToken</code> is a unique pagination token for each page of results returned. If <code>nextToken</code> is returned, there are more results available. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token returns an <code>HTTP 400 InvalidToken</code> error.</p>
    #   @return [String]
    class ListQueuesResponse < Struct.new(
      :queues,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which to list tags.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>1 or more tags added to the resource. Each tag consists of a tag key and tag value. The tag value is optional and can be an empty string.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module NetworkType
      IPV4 = 'IPV4'
      IPV6 = 'IPV6'
    end

    # <p>The networking configuration for the cluster's control plane.</p>
    # @!attribute subnet_ids
    #   <p>The ID of the subnet where Amazon Web Services PCS creates an Elastic Network Interface (ENI) to enable communication between managed controllers and Amazon Web Services PCS resources. The subnet must have an available IP address, cannot reside in AWS Outposts, AWS Wavelength, or an AWS Local Zone.</p> <p> Example: <code>subnet-abcd1234</code> </p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>The list of security group IDs associated with the Elastic Network Interface (ENI) created in subnets.</p> <p>The following rules are required:</p> <ul> <li> <p>Inbound rule 1</p> <ul> <li> <p>Protocol: All</p> </li> <li> <p>Ports: All</p> </li> <li> <p>Source: Self</p> </li> </ul> </li> <li> <p>Outbound rule 1</p> <ul> <li> <p>Protocol: All</p> </li> <li> <p>Ports: All</p> </li> <li> <p>Destination: 0.0.0.0/0 (IPv4) or ::/0 (IPv6)</p> </li> </ul> </li> <li> <p>Outbound rule 2</p> <ul> <li> <p>Protocol: All</p> </li> <li> <p>Ports: All</p> </li> <li> <p>Destination: Self</p> </li> </ul> </li> </ul>
    #   @return [Array<String>]
    # @!attribute network_type
    #   <p>The IP address version the cluster uses. The default is <code>IPV4</code>.</p>
    #   @return [String]
    class Networking < Struct.new(
      :subnet_ids,
      :security_group_ids,
      :network_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The networking configuration for the cluster's control plane.</p>
    # @!attribute subnet_ids
    #   <p>The list of subnet IDs where Amazon Web Services PCS creates an Elastic Network Interface (ENI) to enable communication between managed controllers and Amazon Web Services PCS resources. Subnet IDs have the form <code>subnet-0123456789abcdef0</code>.</p> <p>Subnets can't be in Outposts, Wavelength or an Amazon Web Services Local Zone.</p> <note> <p>Amazon Web Services PCS currently supports only 1 subnet in this list.</p> </note>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>A list of security group IDs associated with the Elastic Network Interface (ENI) created in subnets.</p>
    #   @return [Array<String>]
    # @!attribute network_type
    #   <p>The IP address version the cluster uses. The default is <code>IPV4</code>.</p>
    #   @return [String]
    class NetworkingRequest < Struct.new(
      :subnet_ids,
      :security_group_ids,
      :network_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module PurchaseOption
      ONDEMAND = 'ONDEMAND'
      SPOT = 'SPOT'
    end

    # <p>A queue resource.</p>
    # @!attribute name
    #   <p>The name that identifies the queue.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The generated unique ID of the queue.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The unique Amazon Resource Name (ARN) of the queue.</p>
    #   @return [String]
    # @!attribute cluster_id
    #   <p>The ID of the cluster of the queue.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the resource was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The date and time the resource was modified.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The provisioning status of the queue.</p> <note> <p>The provisioning status doesn't indicate the overall health of the queue.</p> </note> <important> <p>The resource enters the <code>SUSPENDING</code> and <code>SUSPENDED</code> states when the scheduler is beyond end of life and we have suspended the cluster. When in these states, you can't use the cluster. The cluster controller is down and all compute instances are terminated. The resources still count toward your service quotas. You can delete a resource if its status is <code>SUSPENDED</code>. For more information, see <a href="https://docs.aws.amazon.com/pcs/latest/userguide/slurm-versions_faq.html">Frequently asked questions about Slurm versions in PCS</a> in the <i>PCS User Guide</i>.</p> </important>
    #   @return [String]
    # @!attribute compute_node_group_configurations
    #   <p>The list of compute node group configurations associated with the queue. Queues assign jobs to associated compute node groups.</p>
    #   @return [Array<Types::ComputeNodeGroupConfiguration>]
    # @!attribute error_info
    #   <p>The list of errors that occurred during queue provisioning.</p>
    #   @return [Array<Types::ErrorInfo>]
    class Queue < Struct.new(
      :name,
      :id,
      :arn,
      :cluster_id,
      :created_at,
      :modified_at,
      :status,
      :compute_node_group_configurations,
      :error_info,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module QueueStatus
      CREATING = 'CREATING'
      ACTIVE = 'ACTIVE'
      UPDATING = 'UPDATING'
      DELETING = 'DELETING'
      CREATE_FAILED = 'CREATE_FAILED'
      DELETE_FAILED = 'DELETE_FAILED'
      UPDATE_FAILED = 'UPDATE_FAILED'
      SUSPENDING = 'SUSPENDING'
      SUSPENDED = 'SUSPENDED'
    end

    # <p>The object returned by the <code>ListQueues</code> API action.</p>
    # @!attribute name
    #   <p>The name that identifies the queue.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The generated unique ID of the queue.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The unique Amazon Resource Name (ARN) of the queue.</p>
    #   @return [String]
    # @!attribute cluster_id
    #   <p>The ID of the cluster of the queue.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the resource was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The date and time the resource was modified.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The provisioning status of the queue.</p> <note> <p> The provisioning status doesn't indicate the overall health of the queue.</p> </note> <important> <p>The resource enters the <code>SUSPENDING</code> and <code>SUSPENDED</code> states when the scheduler is beyond end of life and we have suspended the cluster. When in these states, you can't use the cluster. The cluster controller is down and all compute instances are terminated. The resources still count toward your service quotas. You can delete a resource if its status is <code>SUSPENDED</code>. For more information, see <a href="https://docs.aws.amazon.com/pcs/latest/userguide/slurm-versions_faq.html">Frequently asked questions about Slurm versions in PCS</a> in the <i>PCS User Guide</i>.</p> </important>
    #   @return [String]
    class QueueSummary < Struct.new(
      :name,
      :id,
      :arn,
      :cluster_id,
      :created_at,
      :modified_at,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute cluster_identifier
    #   <p>The name or ID of the cluster to register the compute node group instance in.</p>
    #   @return [String]
    # @!attribute bootstrap_id
    #   <p>The client-generated token to allow for retries.</p>
    #   @return [String]
    class RegisterComputeNodeGroupInstanceRequest < Struct.new(
      :cluster_identifier,
      :bootstrap_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute node_id
    #   <p>The scheduler node ID for this instance.</p>
    #   @return [String]
    # @!attribute shared_secret
    #   <p>For the Slurm scheduler, this is the shared Munge key the scheduler uses to authenticate compute node group instances.</p>
    #   @return [String]
    # @!attribute endpoints
    #   <p>The list of endpoints available for interaction with the scheduler.</p>
    #   @return [Array<Types::Endpoint>]
    class RegisterComputeNodeGroupInstanceResponse < Struct.new(
      :node_id,
      :shared_secret,
      :endpoints,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The requested resource can't be found. The cluster, node group, or queue you're attempting to get, update, list, or delete doesn't exist.</p> <p> <u>Examples</u> </p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p> The unique identifier of the resource that was not found. </p>
    #   @return [String]
    # @!attribute resource_type
    #   <p> The type or category of the resource that was not found. </p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the boundaries of the compute node group auto scaling.</p>
    # @!attribute min_instance_count
    #   <p>The lower bound of the number of instances allowed in the compute fleet.</p>
    #   @return [Integer]
    # @!attribute max_instance_count
    #   <p>The upper bound of the number of instances allowed in the compute fleet.</p>
    #   @return [Integer]
    class ScalingConfiguration < Struct.new(
      :min_instance_count,
      :max_instance_count,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:min_instance_count] = 0 unless options.key?(:min_instance_count)
        options[:max_instance_count] = 0 unless options.key?(:max_instance_count)
        super
      end
    end

    # <p>Specifies the boundaries of the compute node group auto scaling.</p>
    # @!attribute min_instance_count
    #   <p>The lower bound of the number of instances allowed in the compute fleet.</p>
    #   @return [Integer]
    # @!attribute max_instance_count
    #   <p>The upper bound of the number of instances allowed in the compute fleet.</p>
    #   @return [Integer]
    class ScalingConfigurationRequest < Struct.new(
      :min_instance_count,
      :max_instance_count,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:min_instance_count] = 0 unless options.key?(:min_instance_count)
        options[:max_instance_count] = 0 unless options.key?(:max_instance_count)
        super
      end
    end

    # <p>The cluster management and job scheduling software associated with the cluster.</p>
    # @!attribute type
    #   <p>The software Amazon Web Services PCS uses to manage cluster scaling and job scheduling.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the specified scheduling software that Amazon Web Services PCS uses to manage cluster scaling and job scheduling. For more information, see <a href="https://docs.aws.amazon.com/pcs/latest/userguide/slurm-versions.html">Slurm versions in Amazon Web Services PCS</a> in the <i>Amazon Web Services PCS User Guide</i>.</p> <p>Valid Values: <code>23.11 | 24.05 | 24.11</code> </p>
    #   @return [String]
    class Scheduler < Struct.new(
      :type,
      :version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The cluster management and job scheduling software associated with the cluster.</p>
    # @!attribute type
    #   <p>The software Amazon Web Services PCS uses to manage cluster scaling and job scheduling.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the specified scheduling software that Amazon Web Services PCS uses to manage cluster scaling and job scheduling. For more information, see <a href="https://docs.aws.amazon.com/pcs/latest/userguide/slurm-versions.html">Slurm versions in Amazon Web Services PCS</a> in the <i>Amazon Web Services PCS User Guide</i>.</p> <p>Valid Values: <code>23.11 | 24.05 | 24.11</code> </p>
    #   @return [String]
    class SchedulerRequest < Struct.new(
      :type,
      :version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SchedulerType
      SLURM = 'SLURM'
    end

    # <p>You exceeded your service quota. Service quotas, also referred to as limits, are the maximum number of service resources or operations for your Amazon Web Services account. To learn how to increase your service quota, see <a href="https://docs.aws.amazon.com/servicequotas/latest/userguide/request-quota-increase.html">Requesting a quota increase</a> in the <i>Service Quotas User Guide</i> </p> <p> <u>Examples</u> </p> <ul> <li> <p>The max number of clusters or queues has been reached for the account.</p> </li> <li> <p>The max number of compute node groups has been reached for the associated cluster.</p> </li> <li> <p>The total of <code>maxInstances</code> across all compute node groups has been reached for associated cluster.</p> </li> </ul>
    # @!attribute message
    #   @return [String]
    # @!attribute service_code
    #   <p> The service code associated with the quota that was exceeded. </p>
    #   @return [String]
    # @!attribute resource_id
    #   <p> The unique identifier of the resource that caused the quota to be exceeded. </p>
    #   @return [String]
    # @!attribute resource_type
    #   <p> The type or category of the resource that caused the quota to be exceeded. </p>
    #   @return [String]
    # @!attribute quota_code
    #   <p> The <b>quota code</b> of the service quota that was exceeded. </p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :service_code,
      :resource_id,
      :resource_type,
      :quota_code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module Size
      SMALL = 'SMALL'
      MEDIUM = 'MEDIUM'
      LARGE = 'LARGE'
    end

    # <p>The shared Slurm key for authentication, also known as the <b>cluster secret</b>.</p>
    # @!attribute secret_arn
    #   <p>The Amazon Resource Name (ARN) of the the shared Slurm key.</p>
    #   @return [String]
    # @!attribute secret_version
    #   <p>The version of the shared Slurm key.</p>
    #   @return [String]
    class SlurmAuthKey < Struct.new(
      :secret_arn,
      :secret_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Additional settings that directly map to Slurm settings.</p>
    # @!attribute parameter_name
    #   <p>Amazon Web Services PCS supports configuration of the following Slurm parameters:</p> <ul> <li> <p>For <b>clusters</b> </p> <ul> <li> <p> <a href="https://slurm.schedmd.com/slurm.conf.html#OPT_Prolog_1"> <code>Prolog</code> </a> </p> </li> <li> <p> <a href="https://slurm.schedmd.com/slurm.conf.html#OPT_Epilog_1"> <code>Epilog</code> </a> </p> </li> <li> <p> <a href="https://slurm.schedmd.com/slurm.conf.html#OPT_SelectTypeParameters"> <code>SelectTypeParameters</code> </a> </p> </li> </ul> </li> <li> <p>For <b>compute node groups</b> </p> <ul> <li> <p> <a href="https://slurm.schedmd.com/slurm.conf.html#OPT_Weight"> <code>Weight</code> </a> </p> </li> <li> <p> <a href="https://slurm.schedmd.com/slurm.conf.html#OPT_Weight"> <code>RealMemory</code> </a> </p> </li> </ul> </li> </ul>
    #   @return [String]
    # @!attribute parameter_value
    #   <p>The values for the configured Slurm settings.</p>
    #   @return [String]
    class SlurmCustomSetting < Struct.new(
      :parameter_name,
      :parameter_value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SpotAllocationStrategy
      LOWEST_PRICE = 'lowest-price'
      CAPACITY_OPTIMIZED = 'capacity-optimized'
      PRICE_CAPACITY_OPTIMIZED = 'price-capacity-optimized'
    end

    # <p>Additional configuration when you specify <code>SPOT</code> as the <code>purchaseOption</code> for the <code>CreateComputeNodeGroup</code> API action.</p>
    # @!attribute allocation_strategy
    #   <p>The Amazon EC2 allocation strategy Amazon Web Services PCS uses to provision EC2 instances. Amazon Web Services PCS supports <b>lowest price</b>, <b>capacity optimized</b>, and <b>price capacity optimized</b>. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-allocation-strategy.html">Use allocation strategies to determine how EC2 Fleet or Spot Fleet fulfills Spot and On-Demand capacity</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>. If you don't provide this option, it defaults to <b>price capacity optimized</b>.</p>
    #   @return [String]
    class SpotOptions < Struct.new(
      :allocation_strategy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>1 or more tags added to the resource. Each tag consists of a tag key and tag value. The tag value is optional and can be an empty string.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Your request exceeded a request rate quota. Check the resource's request rate quota and try again.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p> The number of seconds to wait before retrying the request. </p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>1 or more tag keys to remove from the resource. Specify only tag keys and not tag values.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute cluster_identifier
    #   <p>The name or ID of the cluster of the compute node group.</p>
    #   @return [String]
    # @!attribute compute_node_group_identifier
    #   <p>The name or ID of the compute node group.</p>
    #   @return [String]
    # @!attribute ami_id
    #   <p>The ID of the Amazon Machine Image (AMI) that Amazon Web Services PCS uses to launch instances. If not provided, Amazon Web Services PCS uses the AMI ID specified in the custom launch template.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>The list of subnet IDs where the compute node group provisions instances. The subnets must be in the same VPC as the cluster.</p>
    #   @return [Array<String>]
    # @!attribute custom_launch_template
    #   <p>An Amazon EC2 launch template Amazon Web Services PCS uses to launch compute nodes.</p>
    #   @return [Types::CustomLaunchTemplate]
    # @!attribute purchase_option
    #   <p>Specifies how EC2 instances are purchased on your behalf. Amazon Web Services PCS supports On-Demand and Spot instances. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-purchasing-options.html">Instance purchasing options</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>. If you don't provide this option, it defaults to On-Demand.</p>
    #   @return [String]
    # @!attribute spot_options
    #   <p>Additional configuration when you specify <code>SPOT</code> as the <code>purchaseOption</code> for the <code>CreateComputeNodeGroup</code> API action.</p>
    #   @return [Types::SpotOptions]
    # @!attribute scaling_configuration
    #   <p>Specifies the boundaries of the compute node group auto scaling.</p>
    #   @return [Types::ScalingConfigurationRequest]
    # @!attribute iam_instance_profile_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM instance profile used to pass an IAM role when launching EC2 instances. The role contained in your instance profile must have the <code>pcs:RegisterComputeNodeGroupInstance</code> permission. The resource identifier of the ARN must start with <code>AWSPCS</code> or it must have <code>/aws-pcs/</code> in its path.</p> <p class="title"> <b>Examples</b> </p> <ul> <li> <p> <code>arn:aws:iam::111122223333:instance-profile/AWSPCS-example-role-1</code> </p> </li> <li> <p> <code>arn:aws:iam::111122223333:instance-profile/aws-pcs/example-role-2</code> </p> </li> </ul>
    #   @return [String]
    # @!attribute slurm_configuration
    #   <p>Additional options related to the Slurm scheduler.</p>
    #   @return [Types::UpdateComputeNodeGroupSlurmConfigurationRequest]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Idempotency ensures that an API request completes only once. With an idempotent request, if the original request completes successfully, the subsequent retries with the same client token return the result from the original successful request and they have no additional effect. If you don't specify a client token, the CLI and SDK automatically generate 1 for you.</p>
    #   @return [String]
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
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute compute_node_group
    #   <p>A compute node group associated with a cluster.</p>
    #   @return [Types::ComputeNodeGroup]
    class UpdateComputeNodeGroupResponse < Struct.new(
      :compute_node_group,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Additional options related to the Slurm scheduler.</p>
    # @!attribute slurm_custom_settings
    #   <p>Additional Slurm-specific configuration that directly maps to Slurm settings.</p>
    #   @return [Array<Types::SlurmCustomSetting>]
    class UpdateComputeNodeGroupSlurmConfigurationRequest < Struct.new(
      :slurm_custom_settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute cluster_identifier
    #   <p>The name or ID of the cluster of the queue.</p>
    #   @return [String]
    # @!attribute queue_identifier
    #   <p>The name or ID of the queue.</p>
    #   @return [String]
    # @!attribute compute_node_group_configurations
    #   <p>The list of compute node group configurations to associate with the queue. Queues assign jobs to associated compute node groups.</p>
    #   @return [Array<Types::ComputeNodeGroupConfiguration>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Idempotency ensures that an API request completes only once. With an idempotent request, if the original request completes successfully, the subsequent retries with the same client token return the result from the original successful request and they have no additional effect. If you don't specify a client token, the CLI and SDK automatically generate 1 for you.</p>
    #   @return [String]
    class UpdateQueueRequest < Struct.new(
      :cluster_identifier,
      :queue_identifier,
      :compute_node_group_configurations,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute queue
    #   <p>A queue resource.</p>
    #   @return [Types::Queue]
    class UpdateQueueResponse < Struct.new(
      :queue,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request isn't valid.</p> <p> <u>Examples</u> </p> <ul> <li> <p>Your request contains malformed JSON or unsupported characters.</p> </li> <li> <p>The scheduler version isn't supported.</p> </li> <li> <p>There are networking related errors, such as network validation failure.</p> </li> <li> <p>AMI type is <code>CUSTOM</code> and the launch template doesn't define the AMI ID, or the AMI type is AL2 and the launch template defines the AMI.</p> </li> </ul>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p> The specific reason or cause of the validation error. </p>
    #   @return [String]
    # @!attribute field_list
    #   <p> A list of fields or properties that failed validation. </p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Stores information about a field in a request that caused an exception.</p>
    # @!attribute name
    #   <p>The name of the exception.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message body of the exception.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      :name,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ValidationExceptionReason
      UNKNOWN_OPERATION = 'unknownOperation'
      CANNOT_PARSE = 'cannotParse'
      FIELD_VALIDATION_FAILED = 'fieldValidationFailed'
      OTHER = 'other'
    end

  end
end
