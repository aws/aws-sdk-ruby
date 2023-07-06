# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Batch
  module Types

    # An object that represents an Batch array job.
    #
    # @!attribute [rw] size
    #   The size of the array job.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/ArrayProperties AWS API Documentation
    #
    class ArrayProperties < Struct.new(
      :size)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the array properties of a job.
    #
    # @!attribute [rw] status_summary
    #   A summary of the number of array job children in each available job
    #   status. This parameter is returned for parent array jobs.
    #   @return [Hash<String,Integer>]
    #
    # @!attribute [rw] size
    #   The size of the array job. This parameter is returned for parent
    #   array jobs.
    #   @return [Integer]
    #
    # @!attribute [rw] index
    #   The job index within the array that's associated with this job.
    #   This parameter is returned for array job children.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/ArrayPropertiesDetail AWS API Documentation
    #
    class ArrayPropertiesDetail < Struct.new(
      :status_summary,
      :size,
      :index)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the array properties of a job.
    #
    # @!attribute [rw] size
    #   The size of the array job. This parameter is returned for parent
    #   array jobs.
    #   @return [Integer]
    #
    # @!attribute [rw] index
    #   The job index within the array that's associated with this job.
    #   This parameter is returned for children of array jobs.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/ArrayPropertiesSummary AWS API Documentation
    #
    class ArrayPropertiesSummary < Struct.new(
      :size,
      :index)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the details of a container that's part of a
    # job attempt.
    #
    # @!attribute [rw] container_instance_arn
    #   The Amazon Resource Name (ARN) of the Amazon ECS container instance
    #   that hosts the job attempt.
    #   @return [String]
    #
    # @!attribute [rw] task_arn
    #   The Amazon Resource Name (ARN) of the Amazon ECS task that's
    #   associated with the job attempt. Each container attempt receives a
    #   task ARN when they reach the `STARTING` status.
    #   @return [String]
    #
    # @!attribute [rw] exit_code
    #   The exit code for the job attempt. A non-zero exit code is
    #   considered failed.
    #   @return [Integer]
    #
    # @!attribute [rw] reason
    #   A short (255 max characters) human-readable string to provide
    #   additional details for a running or stopped container.
    #   @return [String]
    #
    # @!attribute [rw] log_stream_name
    #   The name of the CloudWatch Logs log stream that's associated with
    #   the container. The log group for Batch jobs is `/aws/batch/job`.
    #   Each container attempt receives a log stream name when they reach
    #   the `RUNNING` status.
    #   @return [String]
    #
    # @!attribute [rw] network_interfaces
    #   The network interfaces that are associated with the job attempt.
    #   @return [Array<Types::NetworkInterface>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/AttemptContainerDetail AWS API Documentation
    #
    class AttemptContainerDetail < Struct.new(
      :container_instance_arn,
      :task_arn,
      :exit_code,
      :reason,
      :log_stream_name,
      :network_interfaces)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a job attempt.
    #
    # @!attribute [rw] container
    #   The details for the container in this job attempt.
    #   @return [Types::AttemptContainerDetail]
    #
    # @!attribute [rw] started_at
    #   The Unix timestamp (in milliseconds) for when the attempt was
    #   started (when the attempt transitioned from the `STARTING` state to
    #   the `RUNNING` state).
    #   @return [Integer]
    #
    # @!attribute [rw] stopped_at
    #   The Unix timestamp (in milliseconds) for when the attempt was
    #   stopped (when the attempt transitioned from the `RUNNING` state to a
    #   terminal state, such as `SUCCEEDED` or `FAILED`).
    #   @return [Integer]
    #
    # @!attribute [rw] status_reason
    #   A short, human-readable string to provide additional details for the
    #   current status of the job attempt.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/AttemptDetail AWS API Documentation
    #
    class AttemptDetail < Struct.new(
      :container,
      :started_at,
      :stopped_at,
      :status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the parameters for `CancelJob`.
    #
    # @!attribute [rw] job_id
    #   The Batch job ID of the job to cancel.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   A message to attach to the job that explains the reason for
    #   canceling it. This message is returned by future DescribeJobs
    #   operations on the job. This message is also recorded in the Batch
    #   activity logs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/CancelJobRequest AWS API Documentation
    #
    class CancelJobRequest < Struct.new(
      :job_id,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/CancelJobResponse AWS API Documentation
    #
    class CancelJobResponse < Aws::EmptyStructure; end

    # These errors are usually caused by a client action. One example cause
    # is using an action or resource on behalf of a user that doesn't have
    # permissions to use the action or resource. Another cause is specifying
    # an identifier that's not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/ClientException AWS API Documentation
    #
    class ClientException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents an Batch compute environment.
    #
    # @!attribute [rw] compute_environment_name
    #   The name of the compute environment. It can be up to 128 characters
    #   long. It can contain uppercase and lowercase letters, numbers,
    #   hyphens (-), and underscores (\_).
    #   @return [String]
    #
    # @!attribute [rw] compute_environment_arn
    #   The Amazon Resource Name (ARN) of the compute environment.
    #   @return [String]
    #
    # @!attribute [rw] unmanagedv_cpus
    #   The maximum number of VCPUs expected to be used for an unmanaged
    #   compute environment.
    #   @return [Integer]
    #
    # @!attribute [rw] ecs_cluster_arn
    #   The Amazon Resource Name (ARN) of the underlying Amazon ECS cluster
    #   that the compute environment uses.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags applied to the compute environment.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   The type of the compute environment: `MANAGED` or `UNMANAGED`. For
    #   more information, see [Compute environments][1] in the *Batch User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the compute environment. The valid values are `ENABLED`
    #   or `DISABLED`.
    #
    #   If the state is `ENABLED`, then the Batch scheduler can attempt to
    #   place jobs from an associated job queue on the compute resources
    #   within the environment. If the compute environment is managed, then
    #   it can scale its instances out or in automatically based on the job
    #   queue demand.
    #
    #   If the state is `DISABLED`, then the Batch scheduler doesn't
    #   attempt to place jobs within the environment. Jobs in a `STARTING`
    #   or `RUNNING` state continue to progress normally. Managed compute
    #   environments in the `DISABLED` state don't scale out.
    #
    #   <note markdown="1"> Compute environments in a `DISABLED` state may continue to incur
    #   billing charges. To prevent additional charges, turn off and then
    #   delete the compute environment. For more information, see [State][1]
    #   in the *Batch User Guide*.
    #
    #    </note>
    #
    #   When an instance is idle, the instance scales down to the `minvCpus`
    #   value. However, the instance size doesn't change. For example,
    #   consider a `c5.8xlarge` instance with a `minvCpus` value of `4` and
    #   a `desiredvCpus` value of `36`. This instance doesn't scale down to
    #   a `c5.large` instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/compute_environment_parameters.html#compute_environment_state
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the compute environment (for example,
    #   `CREATING` or `VALID`).
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   A short, human-readable string to provide additional details for the
    #   current status of the compute environment.
    #   @return [String]
    #
    # @!attribute [rw] compute_resources
    #   The compute resources defined for the compute environment. For more
    #   information, see [Compute environments][1] in the *Batch User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html
    #   @return [Types::ComputeResource]
    #
    # @!attribute [rw] service_role
    #   The service role that's associated with the compute environment
    #   that allows Batch to make calls to Amazon Web Services API
    #   operations on your behalf. For more information, see [Batch service
    #   IAM role][1] in the *Batch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/service_IAM_role.html
    #   @return [String]
    #
    # @!attribute [rw] update_policy
    #   Specifies the infrastructure update policy for the compute
    #   environment. For more information about infrastructure updates, see
    #   [Updating compute environments][1] in the *Batch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html
    #   @return [Types::UpdatePolicy]
    #
    # @!attribute [rw] eks_configuration
    #   The configuration for the Amazon EKS cluster that supports the Batch
    #   compute environment. Only specify this parameter if the
    #   `containerOrchestrationType` is `EKS`.
    #   @return [Types::EksConfiguration]
    #
    # @!attribute [rw] container_orchestration_type
    #   The orchestration type of the compute environment. The valid values
    #   are `ECS` (default) or `EKS`.
    #   @return [String]
    #
    # @!attribute [rw] uuid
    #   Unique identifier for the compute environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/ComputeEnvironmentDetail AWS API Documentation
    #
    class ComputeEnvironmentDetail < Struct.new(
      :compute_environment_name,
      :compute_environment_arn,
      :unmanagedv_cpus,
      :ecs_cluster_arn,
      :tags,
      :type,
      :state,
      :status,
      :status_reason,
      :compute_resources,
      :service_role,
      :update_policy,
      :eks_configuration,
      :container_orchestration_type,
      :uuid)
      SENSITIVE = []
      include Aws::Structure
    end

    # The order that compute environments are tried in for job placement
    # within a queue. Compute environments are tried in ascending order. For
    # example, if two compute environments are associated with a job queue,
    # the compute environment with a lower order integer value is tried for
    # job placement first. Compute environments must be in the `VALID` state
    # before you can associate them with a job queue. All of the compute
    # environments must be either EC2 (`EC2` or `SPOT`) or Fargate
    # (`FARGATE` or `FARGATE_SPOT`); EC2 and Fargate compute environments
    # can't be mixed.
    #
    # <note markdown="1"> All compute environments that are associated with a job queue must
    # share the same architecture. Batch doesn't support mixing compute
    # environment architecture types in a single job queue.
    #
    #  </note>
    #
    # @!attribute [rw] order
    #   The order of the compute environment. Compute environments are tried
    #   in ascending order. For example, if two compute environments are
    #   associated with a job queue, the compute environment with a lower
    #   `order` integer value is tried for job placement first.
    #   @return [Integer]
    #
    # @!attribute [rw] compute_environment
    #   The Amazon Resource Name (ARN) of the compute environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/ComputeEnvironmentOrder AWS API Documentation
    #
    class ComputeEnvironmentOrder < Struct.new(
      :order,
      :compute_environment)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents an Batch compute resource. For more
    # information, see [Compute environments][1] in the *Batch User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html
    #
    # @!attribute [rw] type
    #   The type of compute environment: `EC2`, `SPOT`, `FARGATE`, or
    #   `FARGATE_SPOT`. For more information, see [Compute environments][1]
    #   in the *Batch User Guide*.
    #
    #   If you choose `SPOT`, you must also specify an Amazon EC2 Spot Fleet
    #   role with the `spotIamFleetRole` parameter. For more information,
    #   see [Amazon EC2 spot fleet role][2] in the *Batch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html
    #   [2]: https://docs.aws.amazon.com/batch/latest/userguide/spot_fleet_IAM_role.html
    #   @return [String]
    #
    # @!attribute [rw] allocation_strategy
    #   The allocation strategy to use for the compute resource if not
    #   enough instances of the best fitting instance type can be allocated.
    #   This might be because of availability of the instance type in the
    #   Region or [Amazon EC2 service limits][1]. For more information, see
    #   [Allocation strategies][2] in the *Batch User Guide*.
    #
    #   <note markdown="1"> This parameter isn't applicable to jobs that are running on Fargate
    #   resources. Don't specify it.
    #
    #    </note>
    #
    #   BEST\_FIT (default)
    #
    #   : Batch selects an instance type that best fits the needs of the
    #     jobs with a preference for the lowest-cost instance type. If
    #     additional instances of the selected instance type aren't
    #     available, Batch waits for the additional instances to be
    #     available. If there aren't enough instances available or the user
    #     is reaching [Amazon EC2 service limits][1], additional jobs
    #     aren't run until the currently running jobs are completed. This
    #     allocation strategy keeps costs lower but can limit scaling. If
    #     you're using Spot Fleets with `BEST_FIT`, the Spot Fleet IAM Role
    #     must be specified. Compute resources that use a `BEST_FIT`
    #     allocation strategy don't support infrastructure updates and
    #     can't update some parameters. For more information, see [Updating
    #     compute environments][3] in the *Batch User Guide*.
    #
    #   BEST\_FIT\_PROGRESSIVE
    #
    #   : Batch selects additional instance types that are large enough to
    #     meet the requirements of the jobs in the queue. Its preference is
    #     for instance types with lower cost vCPUs. If additional instances
    #     of the previously selected instance types aren't available, Batch
    #     selects new instance types.
    #
    #   SPOT\_CAPACITY\_OPTIMIZED
    #
    #   : Batch selects one or more instance types that are large enough to
    #     meet the requirements of the jobs in the queue. Its preference is
    #     for instance types that are less likely to be interrupted. This
    #     allocation strategy is only available for Spot Instance compute
    #     resources.
    #
    #   With both `BEST_FIT_PROGRESSIVE` and `SPOT_CAPACITY_OPTIMIZED`
    #   strategies using On-Demand or Spot Instances, and the `BEST_FIT`
    #   strategy using Spot Instances, Batch might need to exceed `maxvCpus`
    #   to meet your capacity requirements. In this event, Batch never
    #   exceeds `maxvCpus` by more than a single instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-resource-limits.html
    #   [2]: https://docs.aws.amazon.com/batch/latest/userguide/allocation-strategies.html
    #   [3]: https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html
    #   @return [String]
    #
    # @!attribute [rw] minv_cpus
    #   The minimum number of vCPUs that a compute environment should
    #   maintain (even if the compute environment is `DISABLED`).
    #
    #   <note markdown="1"> This parameter isn't applicable to jobs that are running on Fargate
    #   resources. Don't specify it.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] maxv_cpus
    #   The maximum number of vCPUs that a compute environment can support.
    #
    #   <note markdown="1"> With both `BEST_FIT_PROGRESSIVE` and `SPOT_CAPACITY_OPTIMIZED`
    #   allocation strategies using On-Demand or Spot Instances, and the
    #   `BEST_FIT` strategy using Spot Instances, Batch might need to exceed
    #   `maxvCpus` to meet your capacity requirements. In this event, Batch
    #   never exceeds `maxvCpus` by more than a single instance. For
    #   example, no more than a single instance from among those specified
    #   in your compute environment is allocated.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] desiredv_cpus
    #   The desired number of vCPUS in the compute environment. Batch
    #   modifies this value between the minimum and maximum values based on
    #   job queue demand.
    #
    #   <note markdown="1"> This parameter isn't applicable to jobs that are running on Fargate
    #   resources. Don't specify it.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] instance_types
    #   The instances types that can be launched. You can specify instance
    #   families to launch any instance type within those families (for
    #   example, `c5` or `p3`), or you can specify specific sizes within a
    #   family (such as `c5.8xlarge`). You can also choose `optimal` to
    #   select instance types (from the C4, M4, and R4 instance families)
    #   that match the demand of your job queues.
    #
    #   <note markdown="1"> This parameter isn't applicable to jobs that are running on Fargate
    #   resources. Don't specify it.
    #
    #    </note>
    #
    #   <note markdown="1"> When you create a compute environment, the instance types that you
    #   select for the compute environment must share the same architecture.
    #   For example, you can't mix x86 and ARM instances in the same
    #   compute environment.
    #
    #    </note>
    #
    #   <note markdown="1"> Currently, `optimal` uses instance types from the C4, M4, and R4
    #   instance families. In Regions that don't have instance types from
    #   those instance families, instance types from the C5, M5, and R5
    #   instance families are used.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] image_id
    #   The Amazon Machine Image (AMI) ID used for instances launched in the
    #   compute environment. This parameter is overridden by the
    #   `imageIdOverride` member of the `Ec2Configuration` structure.
    #
    #   <note markdown="1"> This parameter isn't applicable to jobs that are running on Fargate
    #   resources. Don't specify it.
    #
    #    </note>
    #
    #   <note markdown="1"> The AMI that you choose for a compute environment must match the
    #   architecture of the instance types that you intend to use for that
    #   compute environment. For example, if your compute environment uses
    #   A1 instance types, the compute resource AMI that you choose must
    #   support ARM instances. Amazon ECS vends both x86 and ARM versions of
    #   the Amazon ECS-optimized Amazon Linux 2 AMI. For more information,
    #   see [Amazon ECS-optimized Amazon Linux 2 AMI][1] in the *Amazon
    #   Elastic Container Service Developer Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html#ecs-optimized-ami-linux-variants.html
    #   @return [String]
    #
    # @!attribute [rw] subnets
    #   The VPC subnets where the compute resources are launched. These
    #   subnets must be within the same VPC. Fargate compute resources can
    #   contain up to 16 subnets. For more information, see [VPCs and
    #   subnets][1] in the *Amazon VPC User Guide*.
    #
    #   <note markdown="1"> Batch on Amazon EC2 and Batch on Amazon EKS support Local Zones. For
    #   more information, see [ Local Zones][2] in the *Amazon EC2 User
    #   Guide for Linux Instances*, [Amazon EKS and Amazon Web Services
    #   Local Zones][3] in the *Amazon EKS User Guide* and [ Amazon ECS
    #   clusters in Local Zones, Wavelength Zones, and Amazon Web Services
    #   Outposts][4] in the *Amazon ECS Developer Guide*.
    #
    #    Batch on Fargate doesn't currently support Local Zones.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html
    #   [2]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html#concepts-local-zones
    #   [3]: https://docs.aws.amazon.com/eks/latest/userguide/local-zones.html
    #   [4]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-regions-zones.html#clusters-local-zones
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   The Amazon EC2 security groups that are associated with instances
    #   launched in the compute environment. One or more security groups
    #   must be specified, either in `securityGroupIds` or using a launch
    #   template referenced in `launchTemplate`. This parameter is required
    #   for jobs that are running on Fargate resources and must contain at
    #   least one security group. Fargate doesn't support launch templates.
    #   If security groups are specified using both `securityGroupIds` and
    #   `launchTemplate`, the values in `securityGroupIds` are used.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ec2_key_pair
    #   The Amazon EC2 key pair that's used for instances launched in the
    #   compute environment. You can use this key pair to log in to your
    #   instances with SSH.
    #
    #   <note markdown="1"> This parameter isn't applicable to jobs that are running on Fargate
    #   resources. Don't specify it.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] instance_role
    #   The Amazon ECS instance profile applied to Amazon EC2 instances in a
    #   compute environment. You can specify the short name or full Amazon
    #   Resource Name (ARN) of an instance profile. For example, `
    #   ecsInstanceRole ` or
    #   `arn:aws:iam::<aws_account_id>:instance-profile/ecsInstanceRole `.
    #   For more information, see [Amazon ECS instance role][1] in the
    #   *Batch User Guide*.
    #
    #   <note markdown="1"> This parameter isn't applicable to jobs that are running on Fargate
    #   resources. Don't specify it.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/instance_IAM_role.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pair tags to be applied to EC2 resources that are launched
    #   in the compute environment. For Batch, these take the form of
    #   `"String1": "String2"`, where `String1` is the tag key and `String2`
    #   is the tag value-for example, `\{ "Name": "Batch Instance -
    #   C4OnDemand" \}`. This is helpful for recognizing your Batch
    #   instances in the Amazon EC2 console. Updating these tags requires an
    #   infrastructure update to the compute environment. For more
    #   information, see [Updating compute environments][1] in the *Batch
    #   User Guide*. These tags aren't seen when using the Batch
    #   `ListTagsForResource` API operation.
    #
    #   <note markdown="1"> This parameter isn't applicable to jobs that are running on Fargate
    #   resources. Don't specify it.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] placement_group
    #   The Amazon EC2 placement group to associate with your compute
    #   resources. If you intend to submit multi-node parallel jobs to your
    #   compute environment, you should consider creating a cluster
    #   placement group and associate it with your compute resources. This
    #   keeps your multi-node parallel job on a logical grouping of
    #   instances within a single Availability Zone with high network flow
    #   potential. For more information, see [Placement groups][1] in the
    #   *Amazon EC2 User Guide for Linux Instances*.
    #
    #   <note markdown="1"> This parameter isn't applicable to jobs that are running on Fargate
    #   resources. Don't specify it.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html
    #   @return [String]
    #
    # @!attribute [rw] bid_percentage
    #   The maximum percentage that a Spot Instance price can be when
    #   compared with the On-Demand price for that instance type before
    #   instances are launched. For example, if your maximum percentage is
    #   20%, then the Spot price must be less than 20% of the current
    #   On-Demand price for that Amazon EC2 instance. You always pay the
    #   lowest (market) price and never more than your maximum percentage.
    #   If you leave this field empty, the default value is 100% of the
    #   On-Demand price. For most use cases, we recommend leaving this field
    #   empty.
    #
    #   <note markdown="1"> This parameter isn't applicable to jobs that are running on Fargate
    #   resources. Don't specify it.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] spot_iam_fleet_role
    #   The Amazon Resource Name (ARN) of the Amazon EC2 Spot Fleet IAM role
    #   applied to a `SPOT` compute environment. This role is required if
    #   the allocation strategy set to `BEST_FIT` or if the allocation
    #   strategy isn't specified. For more information, see [Amazon EC2
    #   spot fleet role][1] in the *Batch User Guide*.
    #
    #   <note markdown="1"> This parameter isn't applicable to jobs that are running on Fargate
    #   resources. Don't specify it.
    #
    #    </note>
    #
    #   To tag your Spot Instances on creation, the Spot Fleet IAM role
    #   specified here must use the newer **AmazonEC2SpotFleetTaggingRole**
    #   managed policy. The previously recommended
    #   **AmazonEC2SpotFleetRole** managed policy doesn't have the required
    #   permissions to tag Spot Instances. For more information, see [Spot
    #   instances not tagged on creation][2] in the *Batch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/spot_fleet_IAM_role.html
    #   [2]: https://docs.aws.amazon.com/batch/latest/userguide/troubleshooting.html#spot-instance-no-tag
    #   @return [String]
    #
    # @!attribute [rw] launch_template
    #   The launch template to use for your compute resources. Any other
    #   compute resource parameters that you specify in a
    #   CreateComputeEnvironment API operation override the same parameters
    #   in the launch template. You must specify either the launch template
    #   ID or launch template name in the request, but not both. For more
    #   information, see [Launch template support][1] in the *Batch User
    #   Guide*.
    #
    #   <note markdown="1"> This parameter isn't applicable to jobs that are running on Fargate
    #   resources. Don't specify it.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/launch-templates.html
    #   @return [Types::LaunchTemplateSpecification]
    #
    # @!attribute [rw] ec2_configuration
    #   Provides information that's used to select Amazon Machine Images
    #   (AMIs) for EC2 instances in the compute environment. If
    #   `Ec2Configuration` isn't specified, the default is `ECS_AL2`.
    #
    #   One or two values can be provided.
    #
    #   <note markdown="1"> This parameter isn't applicable to jobs that are running on Fargate
    #   resources. Don't specify it.
    #
    #    </note>
    #   @return [Array<Types::Ec2Configuration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/ComputeResource AWS API Documentation
    #
    class ComputeResource < Struct.new(
      :type,
      :allocation_strategy,
      :minv_cpus,
      :maxv_cpus,
      :desiredv_cpus,
      :instance_types,
      :image_id,
      :subnets,
      :security_group_ids,
      :ec2_key_pair,
      :instance_role,
      :tags,
      :placement_group,
      :bid_percentage,
      :spot_iam_fleet_role,
      :launch_template,
      :ec2_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the attributes of a compute environment that
    # can be updated. For more information, see [Updating compute
    # environments][1] in the *Batch User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html
    #
    # @!attribute [rw] minv_cpus
    #   The minimum number of vCPUs that an environment should maintain
    #   (even if the compute environment is `DISABLED`).
    #
    #   <note markdown="1"> This parameter isn't applicable to jobs that are running on Fargate
    #   resources. Don't specify it.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] maxv_cpus
    #   The maximum number of Amazon EC2 vCPUs that an environment can
    #   reach.
    #
    #   <note markdown="1"> With both `BEST_FIT_PROGRESSIVE` and `SPOT_CAPACITY_OPTIMIZED`
    #   allocation strategies using On-Demand or Spot Instances, and the
    #   `BEST_FIT` strategy using Spot Instances, Batch might need to exceed
    #   `maxvCpus` to meet your capacity requirements. In this event, Batch
    #   never exceeds `maxvCpus` by more than a single instance. That is, no
    #   more than a single instance from among those specified in your
    #   compute environment.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] desiredv_cpus
    #   The desired number of vCPUS in the compute environment. Batch
    #   modifies this value between the minimum and maximum values based on
    #   job queue demand.
    #
    #   <note markdown="1"> This parameter isn't applicable to jobs that are running on Fargate
    #   resources. Don't specify it.
    #
    #    </note>
    #
    #   <note markdown="1"> Batch doesn't support changing the desired number of vCPUs of an
    #   existing compute environment. Don't specify this parameter for
    #   compute environments using Amazon EKS clusters.
    #
    #    </note>
    #
    #   <note markdown="1"> When you update the `desiredvCpus` setting, the value must be
    #   between the `minvCpus` and `maxvCpus` values.
    #
    #    Additionally, the updated `desiredvCpus` value must be greater than
    #   or equal to the current `desiredvCpus` value. For more information,
    #   see [Troubleshooting Batch][1] in the *Batch User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/troubleshooting.html#error-desired-vcpus-update
    #   @return [Integer]
    #
    # @!attribute [rw] subnets
    #   The VPC subnets where the compute resources are launched. Fargate
    #   compute resources can contain up to 16 subnets. For Fargate compute
    #   resources, providing an empty list will be handled as if this
    #   parameter wasn't specified and no change is made. For EC2 compute
    #   resources, providing an empty list removes the VPC subnets from the
    #   compute resource. For more information, see [VPCs and subnets][1] in
    #   the *Amazon VPC User Guide*.
    #
    #   When updating a compute environment, changing the VPC subnets
    #   requires an infrastructure update of the compute environment. For
    #   more information, see [Updating compute environments][2] in the
    #   *Batch User Guide*.
    #
    #   <note markdown="1"> Batch on Amazon EC2 and Batch on Amazon EKS support Local Zones. For
    #   more information, see [ Local Zones][3] in the *Amazon EC2 User
    #   Guide for Linux Instances*, [Amazon EKS and Amazon Web Services
    #   Local Zones][4] in the *Amazon EKS User Guide* and [ Amazon ECS
    #   clusters in Local Zones, Wavelength Zones, and Amazon Web Services
    #   Outposts][5] in the *Amazon ECS Developer Guide*.
    #
    #    Batch on Fargate doesn't currently support Local Zones.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html
    #   [2]: https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html
    #   [3]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html#concepts-local-zones
    #   [4]: https://docs.aws.amazon.com/eks/latest/userguide/local-zones.html
    #   [5]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-regions-zones.html#clusters-local-zones
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   The Amazon EC2 security groups that are associated with instances
    #   launched in the compute environment. This parameter is required for
    #   Fargate compute resources, where it can contain up to 5 security
    #   groups. For Fargate compute resources, providing an empty list is
    #   handled as if this parameter wasn't specified and no change is
    #   made. For EC2 compute resources, providing an empty list removes the
    #   security groups from the compute resource.
    #
    #   When updating a compute environment, changing the EC2 security
    #   groups requires an infrastructure update of the compute environment.
    #   For more information, see [Updating compute environments][1] in the
    #   *Batch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] allocation_strategy
    #   The allocation strategy to use for the compute resource if there's
    #   not enough instances of the best fitting instance type that can be
    #   allocated. This might be because of availability of the instance
    #   type in the Region or [Amazon EC2 service limits][1]. For more
    #   information, see [Allocation strategies][2] in the *Batch User
    #   Guide*.
    #
    #   When updating a compute environment, changing the allocation
    #   strategy requires an infrastructure update of the compute
    #   environment. For more information, see [Updating compute
    #   environments][3] in the *Batch User Guide*. `BEST_FIT` isn't
    #   supported when updating a compute environment.
    #
    #   <note markdown="1"> This parameter isn't applicable to jobs that are running on Fargate
    #   resources. Don't specify it.
    #
    #    </note>
    #
    #   BEST\_FIT\_PROGRESSIVE
    #
    #   : Batch selects additional instance types that are large enough to
    #     meet the requirements of the jobs in the queue. Its preference is
    #     for instance types with lower cost vCPUs. If additional instances
    #     of the previously selected instance types aren't available, Batch
    #     selects new instance types.
    #
    #   SPOT\_CAPACITY\_OPTIMIZED
    #
    #   : Batch selects one or more instance types that are large enough to
    #     meet the requirements of the jobs in the queue. Its preference is
    #     for instance types that are less likely to be interrupted. This
    #     allocation strategy is only available for Spot Instance compute
    #     resources.
    #
    #   With both `BEST_FIT_PROGRESSIVE` and `SPOT_CAPACITY_OPTIMIZED`
    #   strategies using On-Demand or Spot Instances, and the `BEST_FIT`
    #   strategy using Spot Instances, Batch might need to exceed `maxvCpus`
    #   to meet your capacity requirements. In this event, Batch never
    #   exceeds `maxvCpus` by more than a single instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-resource-limits.html
    #   [2]: https://docs.aws.amazon.com/batch/latest/userguide/allocation-strategies.html
    #   [3]: https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html
    #   @return [String]
    #
    # @!attribute [rw] instance_types
    #   The instances types that can be launched. You can specify instance
    #   families to launch any instance type within those families (for
    #   example, `c5` or `p3`), or you can specify specific sizes within a
    #   family (such as `c5.8xlarge`). You can also choose `optimal` to
    #   select instance types (from the C4, M4, and R4 instance families)
    #   that match the demand of your job queues.
    #
    #   When updating a compute environment, changing this setting requires
    #   an infrastructure update of the compute environment. For more
    #   information, see [Updating compute environments][1] in the *Batch
    #   User Guide*.
    #
    #   <note markdown="1"> This parameter isn't applicable to jobs that are running on Fargate
    #   resources. Don't specify it.
    #
    #    </note>
    #
    #   <note markdown="1"> When you create a compute environment, the instance types that you
    #   select for the compute environment must share the same architecture.
    #   For example, you can't mix x86 and ARM instances in the same
    #   compute environment.
    #
    #    </note>
    #
    #   <note markdown="1"> Currently, `optimal` uses instance types from the C4, M4, and R4
    #   instance families. In Regions that don't have instance types from
    #   those instance families, instance types from the C5, M5, and R5
    #   instance families are used.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] ec2_key_pair
    #   The Amazon EC2 key pair that's used for instances launched in the
    #   compute environment. You can use this key pair to log in to your
    #   instances with SSH. To remove the Amazon EC2 key pair, set this
    #   value to an empty string.
    #
    #   When updating a compute environment, changing the EC2 key pair
    #   requires an infrastructure update of the compute environment. For
    #   more information, see [Updating compute environments][1] in the
    #   *Batch User Guide*.
    #
    #   <note markdown="1"> This parameter isn't applicable to jobs that are running on Fargate
    #   resources. Don't specify it.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html
    #   @return [String]
    #
    # @!attribute [rw] instance_role
    #   The Amazon ECS instance profile applied to Amazon EC2 instances in a
    #   compute environment. You can specify the short name or full Amazon
    #   Resource Name (ARN) of an instance profile. For example, `
    #   ecsInstanceRole ` or
    #   `arn:aws:iam::<aws_account_id>:instance-profile/ecsInstanceRole `.
    #   For more information, see [Amazon ECS instance role][1] in the
    #   *Batch User Guide*.
    #
    #   When updating a compute environment, changing this setting requires
    #   an infrastructure update of the compute environment. For more
    #   information, see [Updating compute environments][2] in the *Batch
    #   User Guide*.
    #
    #   <note markdown="1"> This parameter isn't applicable to jobs that are running on Fargate
    #   resources. Don't specify it.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/instance_IAM_role.html
    #   [2]: https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pair tags to be applied to EC2 resources that are launched
    #   in the compute environment. For Batch, these take the form of
    #   `"String1": "String2"`, where `String1` is the tag key and `String2`
    #   is the tag value-for example, `\{ "Name": "Batch Instance -
    #   C4OnDemand" \}`. This is helpful for recognizing your Batch
    #   instances in the Amazon EC2 console. These tags aren't seen when
    #   using the Batch `ListTagsForResource` API operation.
    #
    #   When updating a compute environment, changing this setting requires
    #   an infrastructure update of the compute environment. For more
    #   information, see [Updating compute environments][1] in the *Batch
    #   User Guide*.
    #
    #   <note markdown="1"> This parameter isn't applicable to jobs that are running on Fargate
    #   resources. Don't specify it.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] placement_group
    #   The Amazon EC2 placement group to associate with your compute
    #   resources. If you intend to submit multi-node parallel jobs to your
    #   compute environment, you should consider creating a cluster
    #   placement group and associate it with your compute resources. This
    #   keeps your multi-node parallel job on a logical grouping of
    #   instances within a single Availability Zone with high network flow
    #   potential. For more information, see [Placement groups][1] in the
    #   *Amazon EC2 User Guide for Linux Instances*.
    #
    #   When updating a compute environment, changing the placement group
    #   requires an infrastructure update of the compute environment. For
    #   more information, see [Updating compute environments][2] in the
    #   *Batch User Guide*.
    #
    #   <note markdown="1"> This parameter isn't applicable to jobs that are running on Fargate
    #   resources. Don't specify it.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html
    #   [2]: https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html
    #   @return [String]
    #
    # @!attribute [rw] bid_percentage
    #   The maximum percentage that a Spot Instance price can be when
    #   compared with the On-Demand price for that instance type before
    #   instances are launched. For example, if your maximum percentage is
    #   20%, the Spot price must be less than 20% of the current On-Demand
    #   price for that Amazon EC2 instance. You always pay the lowest
    #   (market) price and never more than your maximum percentage. For most
    #   use cases, we recommend leaving this field empty.
    #
    #   When updating a compute environment, changing the bid percentage
    #   requires an infrastructure update of the compute environment. For
    #   more information, see [Updating compute environments][1] in the
    #   *Batch User Guide*.
    #
    #   <note markdown="1"> This parameter isn't applicable to jobs that are running on Fargate
    #   resources. Don't specify it.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html
    #   @return [Integer]
    #
    # @!attribute [rw] launch_template
    #   The updated launch template to use for your compute resources. You
    #   must specify either the launch template ID or launch template name
    #   in the request, but not both. For more information, see [Launch
    #   template support][1] in the *Batch User Guide*. To remove the custom
    #   launch template and use the default launch template, set
    #   `launchTemplateId` or `launchTemplateName` member of the launch
    #   template specification to an empty string. Removing the launch
    #   template from a compute environment will not remove the AMI
    #   specified in the launch template. In order to update the AMI
    #   specified in a launch template, the `updateToLatestImageVersion`
    #   parameter must be set to `true`.
    #
    #   When updating a compute environment, changing the launch template
    #   requires an infrastructure update of the compute environment. For
    #   more information, see [Updating compute environments][2] in the
    #   *Batch User Guide*.
    #
    #   <note markdown="1"> This parameter isn't applicable to jobs that are running on Fargate
    #   resources. Don't specify it.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/launch-templates.html
    #   [2]: https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html
    #   @return [Types::LaunchTemplateSpecification]
    #
    # @!attribute [rw] ec2_configuration
    #   Provides information used to select Amazon Machine Images (AMIs) for
    #   EC2 instances in the compute environment. If `Ec2Configuration`
    #   isn't specified, the default is `ECS_AL2`.
    #
    #   When updating a compute environment, changing this setting requires
    #   an infrastructure update of the compute environment. For more
    #   information, see [Updating compute environments][1] in the *Batch
    #   User Guide*. To remove the EC2 configuration and any custom AMI ID
    #   specified in `imageIdOverride`, set this value to an empty string.
    #
    #   One or two values can be provided.
    #
    #   <note markdown="1"> This parameter isn't applicable to jobs that are running on Fargate
    #   resources. Don't specify it.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html
    #   @return [Array<Types::Ec2Configuration>]
    #
    # @!attribute [rw] update_to_latest_image_version
    #   Specifies whether the AMI ID is updated to the latest one that's
    #   supported by Batch when the compute environment has an
    #   infrastructure update. The default value is `false`.
    #
    #   <note markdown="1"> An AMI ID can either be specified in the `imageId` or
    #   `imageIdOverride` parameters or be determined by the launch template
    #   that's specified in the `launchTemplate` parameter. If an AMI ID is
    #   specified any of these ways, this parameter is ignored. For more
    #   information about to update AMI IDs during an infrastructure update,
    #   see [Updating the AMI ID][1] in the *Batch User Guide*.
    #
    #    </note>
    #
    #   When updating a compute environment, changing this setting requires
    #   an infrastructure update of the compute environment. For more
    #   information, see [Updating compute environments][2] in the *Batch
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html#updating-compute-environments-ami
    #   [2]: https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html
    #   @return [Boolean]
    #
    # @!attribute [rw] type
    #   The type of compute environment: `EC2`, `SPOT`, `FARGATE`, or
    #   `FARGATE_SPOT`. For more information, see [Compute environments][1]
    #   in the *Batch User Guide*.
    #
    #   If you choose `SPOT`, you must also specify an Amazon EC2 Spot Fleet
    #   role with the `spotIamFleetRole` parameter. For more information,
    #   see [Amazon EC2 spot fleet role][2] in the *Batch User Guide*.
    #
    #   When updating a compute environment, changing the type of a compute
    #   environment requires an infrastructure update of the compute
    #   environment. For more information, see [Updating compute
    #   environments][3] in the *Batch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html
    #   [2]: https://docs.aws.amazon.com/batch/latest/userguide/spot_fleet_IAM_role.html
    #   [3]: https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html
    #   @return [String]
    #
    # @!attribute [rw] image_id
    #   The Amazon Machine Image (AMI) ID used for instances launched in the
    #   compute environment. This parameter is overridden by the
    #   `imageIdOverride` member of the `Ec2Configuration` structure. To
    #   remove the custom AMI ID and use the default AMI ID, set this value
    #   to an empty string.
    #
    #   When updating a compute environment, changing the AMI ID requires an
    #   infrastructure update of the compute environment. For more
    #   information, see [Updating compute environments][1] in the *Batch
    #   User Guide*.
    #
    #   <note markdown="1"> This parameter isn't applicable to jobs that are running on Fargate
    #   resources. Don't specify it.
    #
    #    </note>
    #
    #   <note markdown="1"> The AMI that you choose for a compute environment must match the
    #   architecture of the instance types that you intend to use for that
    #   compute environment. For example, if your compute environment uses
    #   A1 instance types, the compute resource AMI that you choose must
    #   support ARM instances. Amazon ECS vends both x86 and ARM versions of
    #   the Amazon ECS-optimized Amazon Linux 2 AMI. For more information,
    #   see [Amazon ECS-optimized Amazon Linux 2 AMI][2] in the *Amazon
    #   Elastic Container Service Developer Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html#ecs-optimized-ami-linux-variants.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/ComputeResourceUpdate AWS API Documentation
    #
    class ComputeResourceUpdate < Struct.new(
      :minv_cpus,
      :maxv_cpus,
      :desiredv_cpus,
      :subnets,
      :security_group_ids,
      :allocation_strategy,
      :instance_types,
      :ec2_key_pair,
      :instance_role,
      :tags,
      :placement_group,
      :bid_percentage,
      :launch_template,
      :ec2_configuration,
      :update_to_latest_image_version,
      :type,
      :image_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the details of a container that's part of a
    # job.
    #
    # @!attribute [rw] image
    #   The image used to start the container.
    #   @return [String]
    #
    # @!attribute [rw] vcpus
    #   The number of vCPUs reserved for the container. For jobs that run on
    #   EC2 resources, you can specify the vCPU requirement for the job
    #   using `resourceRequirements`, but you can't specify the vCPU
    #   requirements in both the `vcpus` and `resourceRequirements` object.
    #   This parameter maps to `CpuShares` in the [Create a container][1]
    #   section of the [Docker Remote API][2] and the `--cpu-shares` option
    #   to [docker run][3]. Each vCPU is equivalent to 1,024 CPU shares. You
    #   must specify at least one vCPU. This is required but can be
    #   specified in several places. It must be specified for each node at
    #   least once.
    #
    #   <note markdown="1"> This parameter isn't applicable to jobs that run on Fargate
    #   resources. For jobs that run on Fargate resources, you must specify
    #   the vCPU requirement for the job using `resourceRequirements`.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.23/#create-a-container
    #   [2]: https://docs.docker.com/engine/api/v1.23/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Integer]
    #
    # @!attribute [rw] memory
    #   For jobs running on EC2 resources that didn't specify memory
    #   requirements using `resourceRequirements`, the number of MiB of
    #   memory reserved for the job. For other jobs, including all run on
    #   Fargate resources, see `resourceRequirements`.
    #   @return [Integer]
    #
    # @!attribute [rw] command
    #   The command that's passed to the container.
    #   @return [Array<String>]
    #
    # @!attribute [rw] job_role_arn
    #   The Amazon Resource Name (ARN) that's associated with the job when
    #   run.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the execution role that Batch can
    #   assume. For more information, see [Batch execution IAM role][1] in
    #   the *Batch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/execution-IAM-role.html
    #   @return [String]
    #
    # @!attribute [rw] volumes
    #   A list of volumes that are associated with the job.
    #   @return [Array<Types::Volume>]
    #
    # @!attribute [rw] environment
    #   The environment variables to pass to a container.
    #
    #   <note markdown="1"> Environment variables cannot start with "`AWS_BATCH`". This naming
    #   convention is reserved for variables that Batch sets.
    #
    #    </note>
    #   @return [Array<Types::KeyValuePair>]
    #
    # @!attribute [rw] mount_points
    #   The mount points for data volumes in your container.
    #   @return [Array<Types::MountPoint>]
    #
    # @!attribute [rw] readonly_root_filesystem
    #   When this parameter is true, the container is given read-only access
    #   to its root file system. This parameter maps to `ReadonlyRootfs` in
    #   the [Create a container][1] section of the [Docker Remote API][2]
    #   and the `--read-only` option to [ `docker run` ][3].
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.23/#create-a-container
    #   [2]: https://docs.docker.com/engine/api/v1.23/
    #   [3]: https://docs.docker.com/engine/reference/commandline/run/
    #   @return [Boolean]
    #
    # @!attribute [rw] ulimits
    #   A list of `ulimit` values to set in the container. This parameter
    #   maps to `Ulimits` in the [Create a container][1] section of the
    #   [Docker Remote API][2] and the `--ulimit` option to [docker run][3].
    #
    #   <note markdown="1"> This parameter isn't applicable to jobs that are running on Fargate
    #   resources.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.23/#create-a-container
    #   [2]: https://docs.docker.com/engine/api/v1.23/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Array<Types::Ulimit>]
    #
    # @!attribute [rw] privileged
    #   When this parameter is true, the container is given elevated
    #   permissions on the host container instance (similar to the `root`
    #   user). The default value is `false`.
    #
    #   <note markdown="1"> This parameter isn't applicable to jobs that are running on Fargate
    #   resources and shouldn't be provided, or specified as `false`.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] user
    #   The user name to use inside the container. This parameter maps to
    #   `User` in the [Create a container][1] section of the [Docker Remote
    #   API][2] and the `--user` option to [docker run][3].
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.23/#create-a-container
    #   [2]: https://docs.docker.com/engine/api/v1.23/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [String]
    #
    # @!attribute [rw] exit_code
    #   The exit code to return upon completion.
    #   @return [Integer]
    #
    # @!attribute [rw] reason
    #   A short (255 max characters) human-readable string to provide
    #   additional details for a running or stopped container.
    #   @return [String]
    #
    # @!attribute [rw] container_instance_arn
    #   The Amazon Resource Name (ARN) of the container instance that the
    #   container is running on.
    #   @return [String]
    #
    # @!attribute [rw] task_arn
    #   The Amazon Resource Name (ARN) of the Amazon ECS task that's
    #   associated with the container job. Each container attempt receives a
    #   task ARN when they reach the `STARTING` status.
    #   @return [String]
    #
    # @!attribute [rw] log_stream_name
    #   The name of the Amazon CloudWatch Logs log stream that's associated
    #   with the container. The log group for Batch jobs is
    #   `/aws/batch/job`. Each container attempt receives a log stream name
    #   when they reach the `RUNNING` status.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The instance type of the underlying host infrastructure of a
    #   multi-node parallel job.
    #
    #   <note markdown="1"> This parameter isn't applicable to jobs that are running on Fargate
    #   resources.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] network_interfaces
    #   The network interfaces that are associated with the job.
    #   @return [Array<Types::NetworkInterface>]
    #
    # @!attribute [rw] resource_requirements
    #   The type and amount of resources to assign to a container. The
    #   supported resources include `GPU`, `MEMORY`, and `VCPU`.
    #   @return [Array<Types::ResourceRequirement>]
    #
    # @!attribute [rw] linux_parameters
    #   Linux-specific modifications that are applied to the container, such
    #   as details for device mappings.
    #   @return [Types::LinuxParameters]
    #
    # @!attribute [rw] log_configuration
    #   The log configuration specification for the container.
    #
    #   This parameter maps to `LogConfig` in the [Create a container][1]
    #   section of the [Docker Remote API][2] and the `--log-driver` option
    #   to [docker run][3]. By default, containers use the same logging
    #   driver that the Docker daemon uses. However, the container might use
    #   a different logging driver than the Docker daemon by specifying a
    #   log driver with this parameter in the container definition. To use a
    #   different logging driver for a container, the log system must be
    #   configured properly on the container instance. Or, alternatively, it
    #   must be configured on a different log server for remote logging
    #   options. For more information on the options for different supported
    #   log drivers, see [Configure logging drivers][4] in the Docker
    #   documentation.
    #
    #   <note markdown="1"> Batch currently supports a subset of the logging drivers available
    #   to the Docker daemon (shown in the LogConfiguration data type).
    #   Additional log drivers might be available in future releases of the
    #   Amazon ECS container agent.
    #
    #    </note>
    #
    #   This parameter requires version 1.18 of the Docker Remote API or
    #   greater on your container instance. To check the Docker Remote API
    #   version on your container instance, log in to your container
    #   instance and run the following command: `sudo docker version | grep
    #   "Server API version"`
    #
    #   <note markdown="1"> The Amazon ECS container agent running on a container instance must
    #   register the logging drivers available on that instance with the
    #   `ECS_AVAILABLE_LOGGING_DRIVERS` environment variable before
    #   containers placed on that instance can use these log configuration
    #   options. For more information, see [Amazon ECS container agent
    #   configuration][5] in the *Amazon Elastic Container Service Developer
    #   Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.23/#create-a-container
    #   [2]: https://docs.docker.com/engine/api/v1.23/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   [4]: https://docs.docker.com/engine/admin/logging/overview/
    #   [5]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html
    #   @return [Types::LogConfiguration]
    #
    # @!attribute [rw] secrets
    #   The secrets to pass to the container. For more information, see
    #   [Specifying sensitive data][1] in the *Batch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/specifying-sensitive-data.html
    #   @return [Array<Types::Secret>]
    #
    # @!attribute [rw] network_configuration
    #   The network configuration for jobs that are running on Fargate
    #   resources. Jobs that are running on EC2 resources must not specify
    #   this parameter.
    #   @return [Types::NetworkConfiguration]
    #
    # @!attribute [rw] fargate_platform_configuration
    #   The platform configuration for jobs that are running on Fargate
    #   resources. Jobs that are running on EC2 resources must not specify
    #   this parameter.
    #   @return [Types::FargatePlatformConfiguration]
    #
    # @!attribute [rw] ephemeral_storage
    #   The amount of ephemeral storage allocated for the task. This
    #   parameter is used to expand the total amount of ephemeral storage
    #   available, beyond the default amount, for tasks hosted on Fargate.
    #   @return [Types::EphemeralStorage]
    #
    # @!attribute [rw] runtime_platform
    #   An object that represents the compute environment architecture for
    #   Batch jobs on Fargate.
    #   @return [Types::RuntimePlatform]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/ContainerDetail AWS API Documentation
    #
    class ContainerDetail < Struct.new(
      :image,
      :vcpus,
      :memory,
      :command,
      :job_role_arn,
      :execution_role_arn,
      :volumes,
      :environment,
      :mount_points,
      :readonly_root_filesystem,
      :ulimits,
      :privileged,
      :user,
      :exit_code,
      :reason,
      :container_instance_arn,
      :task_arn,
      :log_stream_name,
      :instance_type,
      :network_interfaces,
      :resource_requirements,
      :linux_parameters,
      :log_configuration,
      :secrets,
      :network_configuration,
      :fargate_platform_configuration,
      :ephemeral_storage,
      :runtime_platform)
      SENSITIVE = []
      include Aws::Structure
    end

    # The overrides that should be sent to a container.
    #
    # For information about using Batch overrides when you connect event
    # sources to targets, see [BatchContainerOverrides][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/eventbridge/latest/pipes-reference/API_BatchContainerOverrides.html
    #
    # @!attribute [rw] vcpus
    #   This parameter is deprecated, use `resourceRequirements` to override
    #   the `vcpus` parameter that's set in the job definition. It's not
    #   supported for jobs running on Fargate resources. For jobs that run
    #   on EC2 resources, it overrides the `vcpus` parameter set in the job
    #   definition, but doesn't override any vCPU requirement specified in
    #   the `resourceRequirements` structure in the job definition. To
    #   override vCPU requirements that are specified in the
    #   `resourceRequirements` structure in the job definition,
    #   `resourceRequirements` must be specified in the `SubmitJob` request,
    #   with `type` set to `VCPU` and `value` set to the new value. For more
    #   information, see [Can't override job definition resource
    #   requirements][1] in the *Batch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/troubleshooting.html#override-resource-requirements
    #   @return [Integer]
    #
    # @!attribute [rw] memory
    #   This parameter is deprecated, use `resourceRequirements` to override
    #   the memory requirements specified in the job definition. It's not
    #   supported for jobs running on Fargate resources. For jobs that run
    #   on EC2 resources, it overrides the `memory` parameter set in the job
    #   definition, but doesn't override any memory requirement that's
    #   specified in the `resourceRequirements` structure in the job
    #   definition. To override memory requirements that are specified in
    #   the `resourceRequirements` structure in the job definition,
    #   `resourceRequirements` must be specified in the `SubmitJob` request,
    #   with `type` set to `MEMORY` and `value` set to the new value. For
    #   more information, see [Can't override job definition resource
    #   requirements][1] in the *Batch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/troubleshooting.html#override-resource-requirements
    #   @return [Integer]
    #
    # @!attribute [rw] command
    #   The command to send to the container that overrides the default
    #   command from the Docker image or the job definition.
    #
    #   <note markdown="1"> This parameter can't contain an empty string.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] instance_type
    #   The instance type to use for a multi-node parallel job.
    #
    #   <note markdown="1"> This parameter isn't applicable to single-node container jobs or
    #   jobs that run on Fargate resources, and shouldn't be provided.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] environment
    #   The environment variables to send to the container. You can add new
    #   environment variables, which are added to the container at launch,
    #   or you can override the existing environment variables from the
    #   Docker image or the job definition.
    #
    #   <note markdown="1"> Environment variables cannot start with "`AWS_BATCH`". This naming
    #   convention is reserved for variables that Batch sets.
    #
    #    </note>
    #   @return [Array<Types::KeyValuePair>]
    #
    # @!attribute [rw] resource_requirements
    #   The type and amount of resources to assign to a container. This
    #   overrides the settings in the job definition. The supported
    #   resources include `GPU`, `MEMORY`, and `VCPU`.
    #   @return [Array<Types::ResourceRequirement>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/ContainerOverrides AWS API Documentation
    #
    class ContainerOverrides < Struct.new(
      :vcpus,
      :memory,
      :command,
      :instance_type,
      :environment,
      :resource_requirements)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container properties are used for Amazon ECS based job definitions.
    # These properties to describe the container that's launched as part of
    # a job.
    #
    # @!attribute [rw] image
    #   The image used to start a container. This string is passed directly
    #   to the Docker daemon. Images in the Docker Hub registry are
    #   available by default. Other repositories are specified with `
    #   repository-url/image:tag `. It can be 255 characters long. It can
    #   contain uppercase and lowercase letters, numbers, hyphens (-),
    #   underscores (\_), colons (:), periods (.), forward slashes (/), and
    #   number signs (#). This parameter maps to `Image` in the [Create a
    #   container][1] section of the [Docker Remote API][2] and the `IMAGE`
    #   parameter of [docker run][3].
    #
    #   <note markdown="1"> Docker image architecture must match the processor architecture of
    #   the compute resources that they're scheduled on. For example,
    #   ARM-based Docker images can only run on ARM-based compute resources.
    #
    #    </note>
    #
    #   * Images in Amazon ECR Public repositories use the full
    #     `registry/repository[:tag]` or `registry/repository[@digest]`
    #     naming conventions. For example,
    #     `public.ecr.aws/registry_alias/my-web-app:latest `.
    #
    #   * Images in Amazon ECR repositories use the full registry and
    #     repository URI (for example,
    #     `123456789012.dkr.ecr.<region-name>.amazonaws.com/<repository-name>`).
    #
    #   * Images in official repositories on Docker Hub use a single name
    #     (for example, `ubuntu` or `mongo`).
    #
    #   * Images in other repositories on Docker Hub are qualified with an
    #     organization name (for example, `amazon/amazon-ecs-agent`).
    #
    #   * Images in other online repositories are qualified further by a
    #     domain name (for example, `quay.io/assemblyline/ubuntu`).
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.23/#create-a-container
    #   [2]: https://docs.docker.com/engine/api/v1.23/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [String]
    #
    # @!attribute [rw] vcpus
    #   This parameter is deprecated, use `resourceRequirements` to specify
    #   the vCPU requirements for the job definition. It's not supported
    #   for jobs running on Fargate resources. For jobs running on EC2
    #   resources, it specifies the number of vCPUs reserved for the job.
    #
    #   Each vCPU is equivalent to 1,024 CPU shares. This parameter maps to
    #   `CpuShares` in the [Create a container][1] section of the [Docker
    #   Remote API][2] and the `--cpu-shares` option to [docker run][3]. The
    #   number of vCPUs must be specified but can be specified in several
    #   places. You must specify it at least once for each node.
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.23/#create-a-container
    #   [2]: https://docs.docker.com/engine/api/v1.23/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Integer]
    #
    # @!attribute [rw] memory
    #   This parameter is deprecated, use `resourceRequirements` to specify
    #   the memory requirements for the job definition. It's not supported
    #   for jobs running on Fargate resources. For jobs that run on EC2
    #   resources, it specifies the memory hard limit (in MiB) for a
    #   container. If your container attempts to exceed the specified
    #   number, it's terminated. You must specify at least 4 MiB of memory
    #   for a job using this parameter. The memory hard limit can be
    #   specified in several places. It must be specified for each node at
    #   least once.
    #   @return [Integer]
    #
    # @!attribute [rw] command
    #   The command that's passed to the container. This parameter maps to
    #   `Cmd` in the [Create a container][1] section of the [Docker Remote
    #   API][2] and the `COMMAND` parameter to [docker run][3]. For more
    #   information, see
    #   [https://docs.docker.com/engine/reference/builder/#cmd][4].
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.23/#create-a-container
    #   [2]: https://docs.docker.com/engine/api/v1.23/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   [4]: https://docs.docker.com/engine/reference/builder/#cmd
    #   @return [Array<String>]
    #
    # @!attribute [rw] job_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that the container
    #   can assume for Amazon Web Services permissions. For more
    #   information, see [IAM roles for tasks][1] in the *Amazon Elastic
    #   Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the execution role that Batch can
    #   assume. For jobs that run on Fargate resources, you must provide an
    #   execution role. For more information, see [Batch execution IAM
    #   role][1] in the *Batch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/execution-IAM-role.html
    #   @return [String]
    #
    # @!attribute [rw] volumes
    #   A list of data volumes used in a job.
    #   @return [Array<Types::Volume>]
    #
    # @!attribute [rw] environment
    #   The environment variables to pass to a container. This parameter
    #   maps to `Env` in the [Create a container][1] section of the [Docker
    #   Remote API][2] and the `--env` option to [docker run][3].
    #
    #   We don't recommend using plaintext environment variables for
    #   sensitive information, such as credential data.
    #
    #   <note markdown="1"> Environment variables cannot start with "`AWS_BATCH`". This naming
    #   convention is reserved for variables that Batch sets.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.23/#create-a-container
    #   [2]: https://docs.docker.com/engine/api/v1.23/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Array<Types::KeyValuePair>]
    #
    # @!attribute [rw] mount_points
    #   The mount points for data volumes in your container. This parameter
    #   maps to `Volumes` in the [Create a container][1] section of the
    #   [Docker Remote API][2] and the `--volume` option to [docker run][3].
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.23/#create-a-container
    #   [2]: https://docs.docker.com/engine/api/v1.23/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Array<Types::MountPoint>]
    #
    # @!attribute [rw] readonly_root_filesystem
    #   When this parameter is true, the container is given read-only access
    #   to its root file system. This parameter maps to `ReadonlyRootfs` in
    #   the [Create a container][1] section of the [Docker Remote API][2]
    #   and the `--read-only` option to `docker run`.
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.23/#create-a-container
    #   [2]: https://docs.docker.com/engine/api/v1.23/
    #   @return [Boolean]
    #
    # @!attribute [rw] privileged
    #   When this parameter is true, the container is given elevated
    #   permissions on the host container instance (similar to the `root`
    #   user). This parameter maps to `Privileged` in the [Create a
    #   container][1] section of the [Docker Remote API][2] and the
    #   `--privileged` option to [docker run][3]. The default value is
    #   false.
    #
    #   <note markdown="1"> This parameter isn't applicable to jobs that are running on Fargate
    #   resources and shouldn't be provided, or specified as false.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.23/#create-a-container
    #   [2]: https://docs.docker.com/engine/api/v1.23/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Boolean]
    #
    # @!attribute [rw] ulimits
    #   A list of `ulimits` to set in the container. This parameter maps to
    #   `Ulimits` in the [Create a container][1] section of the [Docker
    #   Remote API][2] and the `--ulimit` option to [docker run][3].
    #
    #   <note markdown="1"> This parameter isn't applicable to jobs that are running on Fargate
    #   resources and shouldn't be provided.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.23/#create-a-container
    #   [2]: https://docs.docker.com/engine/api/v1.23/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Array<Types::Ulimit>]
    #
    # @!attribute [rw] user
    #   The user name to use inside the container. This parameter maps to
    #   `User` in the [Create a container][1] section of the [Docker Remote
    #   API][2] and the `--user` option to [docker run][3].
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.23/#create-a-container
    #   [2]: https://docs.docker.com/engine/api/v1.23/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The instance type to use for a multi-node parallel job. All node
    #   groups in a multi-node parallel job must use the same instance type.
    #
    #   <note markdown="1"> This parameter isn't applicable to single-node container jobs or
    #   jobs that run on Fargate resources, and shouldn't be provided.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] resource_requirements
    #   The type and amount of resources to assign to a container. The
    #   supported resources include `GPU`, `MEMORY`, and `VCPU`.
    #   @return [Array<Types::ResourceRequirement>]
    #
    # @!attribute [rw] linux_parameters
    #   Linux-specific modifications that are applied to the container, such
    #   as details for device mappings.
    #   @return [Types::LinuxParameters]
    #
    # @!attribute [rw] log_configuration
    #   The log configuration specification for the container.
    #
    #   This parameter maps to `LogConfig` in the [Create a container][1]
    #   section of the [Docker Remote API][2] and the `--log-driver` option
    #   to [docker run][3]. By default, containers use the same logging
    #   driver that the Docker daemon uses. However the container might use
    #   a different logging driver than the Docker daemon by specifying a
    #   log driver with this parameter in the container definition. To use a
    #   different logging driver for a container, the log system must be
    #   configured properly on the container instance (or on a different log
    #   server for remote logging options). For more information on the
    #   options for different supported log drivers, see [Configure logging
    #   drivers][4] in the Docker documentation.
    #
    #   <note markdown="1"> Batch currently supports a subset of the logging drivers available
    #   to the Docker daemon (shown in the LogConfiguration data type).
    #
    #    </note>
    #
    #   This parameter requires version 1.18 of the Docker Remote API or
    #   greater on your container instance. To check the Docker Remote API
    #   version on your container instance, log in to your container
    #   instance and run the following command: `sudo docker version | grep
    #   "Server API version"`
    #
    #   <note markdown="1"> The Amazon ECS container agent running on a container instance must
    #   register the logging drivers available on that instance with the
    #   `ECS_AVAILABLE_LOGGING_DRIVERS` environment variable before
    #   containers placed on that instance can use these log configuration
    #   options. For more information, see [Amazon ECS container agent
    #   configuration][5] in the *Amazon Elastic Container Service Developer
    #   Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.23/#create-a-container
    #   [2]: https://docs.docker.com/engine/api/v1.23/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   [4]: https://docs.docker.com/engine/admin/logging/overview/
    #   [5]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html
    #   @return [Types::LogConfiguration]
    #
    # @!attribute [rw] secrets
    #   The secrets for the container. For more information, see [Specifying
    #   sensitive data][1] in the *Batch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/specifying-sensitive-data.html
    #   @return [Array<Types::Secret>]
    #
    # @!attribute [rw] network_configuration
    #   The network configuration for jobs that are running on Fargate
    #   resources. Jobs that are running on EC2 resources must not specify
    #   this parameter.
    #   @return [Types::NetworkConfiguration]
    #
    # @!attribute [rw] fargate_platform_configuration
    #   The platform configuration for jobs that are running on Fargate
    #   resources. Jobs that are running on EC2 resources must not specify
    #   this parameter.
    #   @return [Types::FargatePlatformConfiguration]
    #
    # @!attribute [rw] ephemeral_storage
    #   The amount of ephemeral storage to allocate for the task. This
    #   parameter is used to expand the total amount of ephemeral storage
    #   available, beyond the default amount, for tasks hosted on Fargate.
    #   @return [Types::EphemeralStorage]
    #
    # @!attribute [rw] runtime_platform
    #   An object that represents the compute environment architecture for
    #   Batch jobs on Fargate.
    #   @return [Types::RuntimePlatform]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/ContainerProperties AWS API Documentation
    #
    class ContainerProperties < Struct.new(
      :image,
      :vcpus,
      :memory,
      :command,
      :job_role_arn,
      :execution_role_arn,
      :volumes,
      :environment,
      :mount_points,
      :readonly_root_filesystem,
      :privileged,
      :ulimits,
      :user,
      :instance_type,
      :resource_requirements,
      :linux_parameters,
      :log_configuration,
      :secrets,
      :network_configuration,
      :fargate_platform_configuration,
      :ephemeral_storage,
      :runtime_platform)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents summary details of a container within a job.
    #
    # @!attribute [rw] exit_code
    #   The exit code to return upon completion.
    #   @return [Integer]
    #
    # @!attribute [rw] reason
    #   A short (255 max characters) human-readable string to provide
    #   additional details for a running or stopped container.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/ContainerSummary AWS API Documentation
    #
    class ContainerSummary < Struct.new(
      :exit_code,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the parameters for `CreateComputeEnvironment`.
    #
    # @!attribute [rw] compute_environment_name
    #   The name for your compute environment. It can be up to 128
    #   characters long. It can contain uppercase and lowercase letters,
    #   numbers, hyphens (-), and underscores (\_).
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the compute environment: `MANAGED` or `UNMANAGED`. For
    #   more information, see [Compute Environments][1] in the *Batch User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the compute environment. If the state is `ENABLED`,
    #   then the compute environment accepts jobs from a queue and can scale
    #   out automatically based on queues.
    #
    #   If the state is `ENABLED`, then the Batch scheduler can attempt to
    #   place jobs from an associated job queue on the compute resources
    #   within the environment. If the compute environment is managed, then
    #   it can scale its instances out or in automatically, based on the job
    #   queue demand.
    #
    #   If the state is `DISABLED`, then the Batch scheduler doesn't
    #   attempt to place jobs within the environment. Jobs in a `STARTING`
    #   or `RUNNING` state continue to progress normally. Managed compute
    #   environments in the `DISABLED` state don't scale out.
    #
    #   <note markdown="1"> Compute environments in a `DISABLED` state may continue to incur
    #   billing charges. To prevent additional charges, turn off and then
    #   delete the compute environment. For more information, see [State][1]
    #   in the *Batch User Guide*.
    #
    #    </note>
    #
    #   When an instance is idle, the instance scales down to the `minvCpus`
    #   value. However, the instance size doesn't change. For example,
    #   consider a `c5.8xlarge` instance with a `minvCpus` value of `4` and
    #   a `desiredvCpus` value of `36`. This instance doesn't scale down to
    #   a `c5.large` instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/compute_environment_parameters.html#compute_environment_state
    #   @return [String]
    #
    # @!attribute [rw] unmanagedv_cpus
    #   The maximum number of vCPUs for an unmanaged compute environment.
    #   This parameter is only used for fair share scheduling to reserve
    #   vCPU capacity for new share identifiers. If this parameter isn't
    #   provided for a fair share job queue, no vCPU capacity is reserved.
    #
    #   <note markdown="1"> This parameter is only supported when the `type` parameter is set to
    #   `UNMANAGED`.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] compute_resources
    #   Details about the compute resources managed by the compute
    #   environment. This parameter is required for managed compute
    #   environments. For more information, see [Compute Environments][1] in
    #   the *Batch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html
    #   @return [Types::ComputeResource]
    #
    # @!attribute [rw] service_role
    #   The full Amazon Resource Name (ARN) of the IAM role that allows
    #   Batch to make calls to other Amazon Web Services services on your
    #   behalf. For more information, see [Batch service IAM role][1] in the
    #   *Batch User Guide*.
    #
    #   If your account already created the Batch service-linked role, that
    #   role is used by default for your compute environment unless you
    #   specify a different role here. If the Batch service-linked role
    #   doesn't exist in your account, and no role is specified here, the
    #   service attempts to create the Batch service-linked role in your
    #   account.
    #
    #   If your specified role has a path other than `/`, then you must
    #   specify either the full role ARN (recommended) or prefix the role
    #   name with the path. For example, if a role with the name `bar` has a
    #   path of `/foo/`, specify `/foo/bar` as the role name. For more
    #   information, see [Friendly names and paths][2] in the *IAM User
    #   Guide*.
    #
    #   <note markdown="1"> Depending on how you created your Batch service role, its ARN might
    #   contain the `service-role` path prefix. When you only specify the
    #   name of the service role, Batch assumes that your ARN doesn't use
    #   the `service-role` path prefix. Because of this, we recommend that
    #   you specify the full ARN of your service role when you create
    #   compute environments.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/service_IAM_role.html
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-friendly-names
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags that you apply to the compute environment to help you
    #   categorize and organize your resources. Each tag consists of a key
    #   and an optional value. For more information, see [Tagging Amazon Web
    #   Services Resources][1] in *Amazon Web Services General Reference*.
    #
    #   These tags can be updated or removed using the [TagResource][2] and
    #   [UntagResource][3] API operations. These tags don't propagate to
    #   the underlying compute resources.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   [2]: https://docs.aws.amazon.com/batch/latest/APIReference/API_TagResource.html
    #   [3]: https://docs.aws.amazon.com/batch/latest/APIReference/API_UntagResource.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] eks_configuration
    #   The details for the Amazon EKS cluster that supports the compute
    #   environment.
    #   @return [Types::EksConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/CreateComputeEnvironmentRequest AWS API Documentation
    #
    class CreateComputeEnvironmentRequest < Struct.new(
      :compute_environment_name,
      :type,
      :state,
      :unmanagedv_cpus,
      :compute_resources,
      :service_role,
      :tags,
      :eks_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] compute_environment_name
    #   The name of the compute environment. It can be up to 128 characters
    #   long. It can contain uppercase and lowercase letters, numbers,
    #   hyphens (-), and underscores (\_).
    #   @return [String]
    #
    # @!attribute [rw] compute_environment_arn
    #   The Amazon Resource Name (ARN) of the compute environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/CreateComputeEnvironmentResponse AWS API Documentation
    #
    class CreateComputeEnvironmentResponse < Struct.new(
      :compute_environment_name,
      :compute_environment_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the parameters for `CreateJobQueue`.
    #
    # @!attribute [rw] job_queue_name
    #   The name of the job queue. It can be up to 128 letters long. It can
    #   contain uppercase and lowercase letters, numbers, hyphens (-), and
    #   underscores (\_).
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the job queue. If the job queue state is `ENABLED`, it
    #   is able to accept jobs. If the job queue state is `DISABLED`, new
    #   jobs can't be added to the queue, but jobs already in the queue can
    #   finish.
    #   @return [String]
    #
    # @!attribute [rw] scheduling_policy_arn
    #   The Amazon Resource Name (ARN) of the fair share scheduling policy.
    #   If this parameter is specified, the job queue uses a fair share
    #   scheduling policy. If this parameter isn't specified, the job queue
    #   uses a first in, first out (FIFO) scheduling policy. After a job
    #   queue is created, you can replace but can't remove the fair share
    #   scheduling policy. The format is
    #   `aws:Partition:batch:Region:Account:scheduling-policy/Name `. An
    #   example is
    #   `aws:aws:batch:us-west-2:123456789012:scheduling-policy/MySchedulingPolicy`.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority of the job queue. Job queues with a higher priority (or
    #   a higher integer value for the `priority` parameter) are evaluated
    #   first when associated with the same compute environment. Priority is
    #   determined in descending order. For example, a job queue with a
    #   priority value of `10` is given scheduling preference over a job
    #   queue with a priority value of `1`. All of the compute environments
    #   must be either EC2 (`EC2` or `SPOT`) or Fargate (`FARGATE` or
    #   `FARGATE_SPOT`); EC2 and Fargate compute environments can't be
    #   mixed.
    #   @return [Integer]
    #
    # @!attribute [rw] compute_environment_order
    #   The set of compute environments mapped to a job queue and their
    #   order relative to each other. The job scheduler uses this parameter
    #   to determine which compute environment runs a specific job. Compute
    #   environments must be in the `VALID` state before you can associate
    #   them with a job queue. You can associate up to three compute
    #   environments with a job queue. All of the compute environments must
    #   be either EC2 (`EC2` or `SPOT`) or Fargate (`FARGATE` or
    #   `FARGATE_SPOT`); EC2 and Fargate compute environments can't be
    #   mixed.
    #
    #   <note markdown="1"> All compute environments that are associated with a job queue must
    #   share the same architecture. Batch doesn't support mixing compute
    #   environment architecture types in a single job queue.
    #
    #    </note>
    #   @return [Array<Types::ComputeEnvironmentOrder>]
    #
    # @!attribute [rw] tags
    #   The tags that you apply to the job queue to help you categorize and
    #   organize your resources. Each tag consists of a key and an optional
    #   value. For more information, see [Tagging your Batch resources][1]
    #   in *Batch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/using-tags.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/CreateJobQueueRequest AWS API Documentation
    #
    class CreateJobQueueRequest < Struct.new(
      :job_queue_name,
      :state,
      :scheduling_policy_arn,
      :priority,
      :compute_environment_order,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_queue_name
    #   The name of the job queue.
    #   @return [String]
    #
    # @!attribute [rw] job_queue_arn
    #   The Amazon Resource Name (ARN) of the job queue.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/CreateJobQueueResponse AWS API Documentation
    #
    class CreateJobQueueResponse < Struct.new(
      :job_queue_name,
      :job_queue_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the parameters for `CreateSchedulingPolicy`.
    #
    # @!attribute [rw] name
    #   The name of the scheduling policy. It can be up to 128 letters long.
    #   It can contain uppercase and lowercase letters, numbers, hyphens
    #   (-), and underscores (\_).
    #   @return [String]
    #
    # @!attribute [rw] fairshare_policy
    #   The fair share policy of the scheduling policy.
    #   @return [Types::FairsharePolicy]
    #
    # @!attribute [rw] tags
    #   The tags that you apply to the scheduling policy to help you
    #   categorize and organize your resources. Each tag consists of a key
    #   and an optional value. For more information, see [Tagging Amazon Web
    #   Services Resources][1] in *Amazon Web Services General Reference*.
    #
    #   These tags can be updated or removed using the [TagResource][2] and
    #   [UntagResource][3] API operations.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   [2]: https://docs.aws.amazon.com/batch/latest/APIReference/API_TagResource.html
    #   [3]: https://docs.aws.amazon.com/batch/latest/APIReference/API_UntagResource.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/CreateSchedulingPolicyRequest AWS API Documentation
    #
    class CreateSchedulingPolicyRequest < Struct.new(
      :name,
      :fairshare_policy,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the scheduling policy.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the scheduling policy. The format
    #   is `aws:Partition:batch:Region:Account:scheduling-policy/Name `. For
    #   example,
    #   `aws:aws:batch:us-west-2:123456789012:scheduling-policy/MySchedulingPolicy`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/CreateSchedulingPolicyResponse AWS API Documentation
    #
    class CreateSchedulingPolicyResponse < Struct.new(
      :name,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the parameters for `DeleteComputeEnvironment`.
    #
    # @!attribute [rw] compute_environment
    #   The name or Amazon Resource Name (ARN) of the compute environment to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/DeleteComputeEnvironmentRequest AWS API Documentation
    #
    class DeleteComputeEnvironmentRequest < Struct.new(
      :compute_environment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/DeleteComputeEnvironmentResponse AWS API Documentation
    #
    class DeleteComputeEnvironmentResponse < Aws::EmptyStructure; end

    # Contains the parameters for `DeleteJobQueue`.
    #
    # @!attribute [rw] job_queue
    #   The short name or full Amazon Resource Name (ARN) of the queue to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/DeleteJobQueueRequest AWS API Documentation
    #
    class DeleteJobQueueRequest < Struct.new(
      :job_queue)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/DeleteJobQueueResponse AWS API Documentation
    #
    class DeleteJobQueueResponse < Aws::EmptyStructure; end

    # Contains the parameters for `DeleteSchedulingPolicy`.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the scheduling policy to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/DeleteSchedulingPolicyRequest AWS API Documentation
    #
    class DeleteSchedulingPolicyRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/DeleteSchedulingPolicyResponse AWS API Documentation
    #
    class DeleteSchedulingPolicyResponse < Aws::EmptyStructure; end

    # @!attribute [rw] job_definition
    #   The name and revision (`name:revision`) or full Amazon Resource Name
    #   (ARN) of the job definition to deregister.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/DeregisterJobDefinitionRequest AWS API Documentation
    #
    class DeregisterJobDefinitionRequest < Struct.new(
      :job_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/DeregisterJobDefinitionResponse AWS API Documentation
    #
    class DeregisterJobDefinitionResponse < Aws::EmptyStructure; end

    # Contains the parameters for `DescribeComputeEnvironments`.
    #
    # @!attribute [rw] compute_environments
    #   A list of up to 100 compute environment names or full Amazon
    #   Resource Name (ARN) entries.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of cluster results returned by
    #   `DescribeComputeEnvironments` in paginated output. When this
    #   parameter is used, `DescribeComputeEnvironments` only returns
    #   `maxResults` results in a single page along with a `nextToken`
    #   response element. The remaining results of the initial request can
    #   be seen by sending another `DescribeComputeEnvironments` request
    #   with the returned `nextToken` value. This value can be between 1 and
    #   100. If this parameter isn't used, then
    #   `DescribeComputeEnvironments` returns up to 100 results and a
    #   `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `DescribeComputeEnvironments` request where `maxResults` was used
    #   and the results exceeded the value of that parameter. Pagination
    #   continues from the end of the previous results that returned the
    #   `nextToken` value. This value is `null` when there are no more
    #   results to return.
    #
    #   <note markdown="1"> Treat this token as an opaque identifier that's only used to
    #   retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/DescribeComputeEnvironmentsRequest AWS API Documentation
    #
    class DescribeComputeEnvironmentsRequest < Struct.new(
      :compute_environments,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] compute_environments
    #   The list of compute environments.
    #   @return [Array<Types::ComputeEnvironmentDetail>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future
    #   `DescribeComputeEnvironments` request. When the results of a
    #   `DescribeComputeEnvironments` request exceed `maxResults`, this
    #   value can be used to retrieve the next page of results. This value
    #   is `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/DescribeComputeEnvironmentsResponse AWS API Documentation
    #
    class DescribeComputeEnvironmentsResponse < Struct.new(
      :compute_environments,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the parameters for `DescribeJobDefinitions`.
    #
    # @!attribute [rw] job_definitions
    #   A list of up to 100 job definitions. Each entry in the list can
    #   either be an ARN in the format
    #   `arn:aws:batch:$\{Region\}:$\{Account\}:job-definition/$\{JobDefinitionName\}:$\{Revision\}`
    #   or a short version using the form
    #   `$\{JobDefinitionName\}:$\{Revision\}`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results returned by `DescribeJobDefinitions`
    #   in paginated output. When this parameter is used,
    #   `DescribeJobDefinitions` only returns `maxResults` results in a
    #   single page and a `nextToken` response element. The remaining
    #   results of the initial request can be seen by sending another
    #   `DescribeJobDefinitions` request with the returned `nextToken`
    #   value. This value can be between 1 and 100. If this parameter isn't
    #   used, then `DescribeJobDefinitions` returns up to 100 results and a
    #   `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] job_definition_name
    #   The name of the job definition to describe.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status used to filter job definitions.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `DescribeJobDefinitions` request where `maxResults` was used and the
    #   results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `nextToken`
    #   value. This value is `null` when there are no more results to
    #   return.
    #
    #   <note markdown="1"> Treat this token as an opaque identifier that's only used to
    #   retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/DescribeJobDefinitionsRequest AWS API Documentation
    #
    class DescribeJobDefinitionsRequest < Struct.new(
      :job_definitions,
      :max_results,
      :job_definition_name,
      :status,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_definitions
    #   The list of job definitions.
    #   @return [Array<Types::JobDefinition>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future
    #   `DescribeJobDefinitions` request. When the results of a
    #   `DescribeJobDefinitions` request exceed `maxResults`, this value can
    #   be used to retrieve the next page of results. This value is `null`
    #   when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/DescribeJobDefinitionsResponse AWS API Documentation
    #
    class DescribeJobDefinitionsResponse < Struct.new(
      :job_definitions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the parameters for `DescribeJobQueues`.
    #
    # @!attribute [rw] job_queues
    #   A list of up to 100 queue names or full queue Amazon Resource Name
    #   (ARN) entries.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results returned by `DescribeJobQueues` in
    #   paginated output. When this parameter is used, `DescribeJobQueues`
    #   only returns `maxResults` results in a single page and a `nextToken`
    #   response element. The remaining results of the initial request can
    #   be seen by sending another `DescribeJobQueues` request with the
    #   returned `nextToken` value. This value can be between 1 and 100. If
    #   this parameter isn't used, then `DescribeJobQueues` returns up to
    #   100 results and a `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `DescribeJobQueues` request where `maxResults` was used and the
    #   results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `nextToken`
    #   value. This value is `null` when there are no more results to
    #   return.
    #
    #   <note markdown="1"> Treat this token as an opaque identifier that's only used to
    #   retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/DescribeJobQueuesRequest AWS API Documentation
    #
    class DescribeJobQueuesRequest < Struct.new(
      :job_queues,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_queues
    #   The list of job queues.
    #   @return [Array<Types::JobQueueDetail>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `DescribeJobQueues`
    #   request. When the results of a `DescribeJobQueues` request exceed
    #   `maxResults`, this value can be used to retrieve the next page of
    #   results. This value is `null` when there are no more results to
    #   return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/DescribeJobQueuesResponse AWS API Documentation
    #
    class DescribeJobQueuesResponse < Struct.new(
      :job_queues,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the parameters for `DescribeJobs`.
    #
    # @!attribute [rw] jobs
    #   A list of up to 100 job IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/DescribeJobsRequest AWS API Documentation
    #
    class DescribeJobsRequest < Struct.new(
      :jobs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] jobs
    #   The list of jobs.
    #   @return [Array<Types::JobDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/DescribeJobsResponse AWS API Documentation
    #
    class DescribeJobsResponse < Struct.new(
      :jobs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the parameters for `DescribeSchedulingPolicies`.
    #
    # @!attribute [rw] arns
    #   A list of up to 100 scheduling policy Amazon Resource Name (ARN)
    #   entries.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/DescribeSchedulingPoliciesRequest AWS API Documentation
    #
    class DescribeSchedulingPoliciesRequest < Struct.new(
      :arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scheduling_policies
    #   The list of scheduling policies.
    #   @return [Array<Types::SchedulingPolicyDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/DescribeSchedulingPoliciesResponse AWS API Documentation
    #
    class DescribeSchedulingPoliciesResponse < Struct.new(
      :scheduling_policies)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a container instance host device.
    #
    # <note markdown="1"> This object isn't applicable to jobs that are running on Fargate
    # resources and shouldn't be provided.
    #
    #  </note>
    #
    # @!attribute [rw] host_path
    #   The path for the device on the host container instance.
    #   @return [String]
    #
    # @!attribute [rw] container_path
    #   The path inside the container that's used to expose the host
    #   device. By default, the `hostPath` value is used.
    #   @return [String]
    #
    # @!attribute [rw] permissions
    #   The explicit permissions to provide to the container for the device.
    #   By default, the container has permissions for `read`, `write`, and
    #   `mknod` for the device.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/Device AWS API Documentation
    #
    class Device < Struct.new(
      :host_path,
      :container_path,
      :permissions)
      SENSITIVE = []
      include Aws::Structure
    end

    # The authorization configuration details for the Amazon EFS file
    # system.
    #
    # @!attribute [rw] access_point_id
    #   The Amazon EFS access point ID to use. If an access point is
    #   specified, the root directory value specified in the
    #   `EFSVolumeConfiguration` must either be omitted or set to `/` which
    #   enforces the path set on the EFS access point. If an access point is
    #   used, transit encryption must be enabled in the
    #   `EFSVolumeConfiguration`. For more information, see [Working with
    #   Amazon EFS access points][1] in the *Amazon Elastic File System User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/efs/latest/ug/efs-access-points.html
    #   @return [String]
    #
    # @!attribute [rw] iam
    #   Whether or not to use the Batch job IAM role defined in a job
    #   definition when mounting the Amazon EFS file system. If enabled,
    #   transit encryption must be enabled in the `EFSVolumeConfiguration`.
    #   If this parameter is omitted, the default value of `DISABLED` is
    #   used. For more information, see [Using Amazon EFS access points][1]
    #   in the *Batch User Guide*. EFS IAM authorization requires that
    #   `TransitEncryption` be `ENABLED` and that a `JobRoleArn` is
    #   specified.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/efs-volumes.html#efs-volume-accesspoints
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/EFSAuthorizationConfig AWS API Documentation
    #
    class EFSAuthorizationConfig < Struct.new(
      :access_point_id,
      :iam)
      SENSITIVE = []
      include Aws::Structure
    end

    # This is used when you're using an Amazon Elastic File System file
    # system for job storage. For more information, see [Amazon EFS
    # Volumes][1] in the *Batch User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/batch/latest/userguide/efs-volumes.html
    #
    # @!attribute [rw] file_system_id
    #   The Amazon EFS file system ID to use.
    #   @return [String]
    #
    # @!attribute [rw] root_directory
    #   The directory within the Amazon EFS file system to mount as the root
    #   directory inside the host. If this parameter is omitted, the root of
    #   the Amazon EFS volume is used instead. Specifying `/` has the same
    #   effect as omitting this parameter. The maximum length is 4,096
    #   characters.
    #
    #   If an EFS access point is specified in the `authorizationConfig`,
    #   the root directory parameter must either be omitted or set to `/`,
    #   which enforces the path set on the Amazon EFS access point.
    #   @return [String]
    #
    # @!attribute [rw] transit_encryption
    #   Determines whether to enable encryption for Amazon EFS data in
    #   transit between the Amazon ECS host and the Amazon EFS server.
    #   Transit encryption must be enabled if Amazon EFS IAM authorization
    #   is used. If this parameter is omitted, the default value of
    #   `DISABLED` is used. For more information, see [Encrypting data in
    #   transit][1] in the *Amazon Elastic File System User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/efs/latest/ug/encryption-in-transit.html
    #   @return [String]
    #
    # @!attribute [rw] transit_encryption_port
    #   The port to use when sending encrypted data between the Amazon ECS
    #   host and the Amazon EFS server. If you don't specify a transit
    #   encryption port, it uses the port selection strategy that the Amazon
    #   EFS mount helper uses. The value must be between 0 and 65,535. For
    #   more information, see [EFS mount helper][1] in the *Amazon Elastic
    #   File System User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/efs/latest/ug/efs-mount-helper.html
    #   @return [Integer]
    #
    # @!attribute [rw] authorization_config
    #   The authorization configuration details for the Amazon EFS file
    #   system.
    #   @return [Types::EFSAuthorizationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/EFSVolumeConfiguration AWS API Documentation
    #
    class EFSVolumeConfiguration < Struct.new(
      :file_system_id,
      :root_directory,
      :transit_encryption,
      :transit_encryption_port,
      :authorization_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information used to select Amazon Machine Images (AMIs) for
    # instances in the compute environment. If `Ec2Configuration` isn't
    # specified, the default is `ECS_AL2` ([Amazon Linux 2][1]).
    #
    # <note markdown="1"> This object isn't applicable to jobs that are running on Fargate
    # resources.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html#al2ami
    #
    # @!attribute [rw] image_type
    #   The image type to match with the instance type to select an AMI. The
    #   supported values are different for `ECS` and `EKS` resources.
    #
    #   ECS
    #
    #   : If the `imageIdOverride` parameter isn't specified, then a recent
    #     [Amazon ECS-optimized Amazon Linux 2 AMI][1] (`ECS_AL2`) is used.
    #     If a new image type is specified in an update, but neither an
    #     `imageId` nor a `imageIdOverride` parameter is specified, then the
    #     latest Amazon ECS optimized AMI for that image type that's
    #     supported by Batch is used.
    #
    #     ECS\_AL2
    #
    #     : [Amazon Linux 2][1]: Default for all non-GPU instance families.
    #
    #     ECS\_AL2\_NVIDIA
    #
    #     : [Amazon Linux 2 (GPU)][2]: Default for all GPU instance families
    #       (for example `P4` and `G4`) and can be used for all non Amazon
    #       Web Services Graviton-based instance types.
    #
    #     ECS\_AL1
    #
    #     : [Amazon Linux][3]. Amazon Linux has reached the end-of-life of
    #       standard support. For more information, see [Amazon Linux
    #       AMI][4].
    #
    #   EKS
    #
    #   : If the `imageIdOverride` parameter isn't specified, then a recent
    #     [Amazon EKS-optimized Amazon Linux AMI][5] (`EKS_AL2`) is used. If
    #     a new image type is specified in an update, but neither an
    #     `imageId` nor a `imageIdOverride` parameter is specified, then the
    #     latest Amazon EKS optimized AMI for that image type that Batch
    #     supports is used.
    #
    #     EKS\_AL2
    #
    #     : [Amazon Linux 2][5]: Default for all non-GPU instance families.
    #
    #     EKS\_AL2\_NVIDIA
    #
    #     : [Amazon Linux 2 (accelerated)][5]: Default for all GPU instance
    #       families (for example, `P4` and `G4`) and can be used for all
    #       non Amazon Web Services Graviton-based instance types.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html#al2ami
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html#gpuami
    #   [3]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html#alami
    #   [4]: http://aws.amazon.com/amazon-linux-ami/
    #   [5]: https://docs.aws.amazon.com/eks/latest/userguide/eks-optimized-ami.html
    #   @return [String]
    #
    # @!attribute [rw] image_id_override
    #   The AMI ID used for instances launched in the compute environment
    #   that match the image type. This setting overrides the `imageId` set
    #   in the `computeResource` object.
    #
    #   <note markdown="1"> The AMI that you choose for a compute environment must match the
    #   architecture of the instance types that you intend to use for that
    #   compute environment. For example, if your compute environment uses
    #   A1 instance types, the compute resource AMI that you choose must
    #   support ARM instances. Amazon ECS vends both x86 and ARM versions of
    #   the Amazon ECS-optimized Amazon Linux 2 AMI. For more information,
    #   see [Amazon ECS-optimized Amazon Linux 2 AMI][1] in the *Amazon
    #   Elastic Container Service Developer Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html#ecs-optimized-ami-linux-variants.html
    #   @return [String]
    #
    # @!attribute [rw] image_kubernetes_version
    #   The Kubernetes version for the compute environment. If you don't
    #   specify a value, the latest version that Batch supports is used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/Ec2Configuration AWS API Documentation
    #
    class Ec2Configuration < Struct.new(
      :image_type,
      :image_id_override,
      :image_kubernetes_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the details for an attempt for a job attempt
    # that an Amazon EKS container runs.
    #
    # @!attribute [rw] exit_code
    #   The exit code for the job attempt. A non-zero exit code is
    #   considered failed.
    #   @return [Integer]
    #
    # @!attribute [rw] reason
    #   A short (255 max characters) human-readable string to provide
    #   additional details for a running or stopped container.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/EksAttemptContainerDetail AWS API Documentation
    #
    class EksAttemptContainerDetail < Struct.new(
      :exit_code,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the details of a job attempt for a job
    # attempt by an Amazon EKS container.
    #
    # @!attribute [rw] containers
    #   The details for the final status of the containers for this job
    #   attempt.
    #   @return [Array<Types::EksAttemptContainerDetail>]
    #
    # @!attribute [rw] pod_name
    #   The name of the pod for this job attempt.
    #   @return [String]
    #
    # @!attribute [rw] node_name
    #   The name of the node for this job attempt.
    #   @return [String]
    #
    # @!attribute [rw] started_at
    #   The Unix timestamp (in milliseconds) for when the attempt was
    #   started (when the attempt transitioned from the `STARTING` state to
    #   the `RUNNING` state).
    #   @return [Integer]
    #
    # @!attribute [rw] stopped_at
    #   The Unix timestamp (in milliseconds) for when the attempt was
    #   stopped. This happens when the attempt transitioned from the
    #   `RUNNING` state to a terminal state, such as `SUCCEEDED` or
    #   `FAILED`.
    #   @return [Integer]
    #
    # @!attribute [rw] status_reason
    #   A short, human-readable string to provide additional details for the
    #   current status of the job attempt.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/EksAttemptDetail AWS API Documentation
    #
    class EksAttemptDetail < Struct.new(
      :containers,
      :pod_name,
      :node_name,
      :started_at,
      :stopped_at,
      :status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for the Amazon EKS cluster that supports the Batch
    # compute environment. The cluster must exist before the compute
    # environment can be created.
    #
    # @!attribute [rw] eks_cluster_arn
    #   The Amazon Resource Name (ARN) of the Amazon EKS cluster. An example
    #   is `arn:aws:eks:us-east-1:123456789012:cluster/ClusterForBatch `.
    #   @return [String]
    #
    # @!attribute [rw] kubernetes_namespace
    #   The namespace of the Amazon EKS cluster. Batch manages pods in this
    #   namespace. The value can't left empty or null. It must be fewer
    #   than 64 characters long, can't be set to `default`, can't start
    #   with "`kube-`," and must match this regular expression:
    #   `^[a-z0-9]([-a-z0-9]*[a-z0-9])?$`. For more information, see
    #   [Namespaces][1] in the Kubernetes documentation.
    #
    #
    #
    #   [1]: https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/EksConfiguration AWS API Documentation
    #
    class EksConfiguration < Struct.new(
      :eks_cluster_arn,
      :kubernetes_namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # EKS container properties are used in job definitions for Amazon EKS
    # based job definitions to describe the properties for a container node
    # in the pod that's launched as part of a job. This can't be specified
    # for Amazon ECS based job definitions.
    #
    # @!attribute [rw] name
    #   The name of the container. If the name isn't specified, the default
    #   name "`Default`" is used. Each container in a pod must have a
    #   unique name.
    #   @return [String]
    #
    # @!attribute [rw] image
    #   The Docker image used to start the container.
    #   @return [String]
    #
    # @!attribute [rw] image_pull_policy
    #   The image pull policy for the container. Supported values are
    #   `Always`, `IfNotPresent`, and `Never`. This parameter defaults to
    #   `IfNotPresent`. However, if the `:latest` tag is specified, it
    #   defaults to `Always`. For more information, see [Updating images][1]
    #   in the *Kubernetes documentation*.
    #
    #
    #
    #   [1]: https://kubernetes.io/docs/concepts/containers/images/#updating-images
    #   @return [String]
    #
    # @!attribute [rw] command
    #   The entrypoint for the container. This isn't run within a shell. If
    #   this isn't specified, the `ENTRYPOINT` of the container image is
    #   used. Environment variable references are expanded using the
    #   container's environment.
    #
    #   If the referenced environment variable doesn't exist, the reference
    #   in the command isn't changed. For example, if the reference is to
    #   "`$(NAME1)`" and the `NAME1` environment variable doesn't exist,
    #   the command string will remain "`$(NAME1)`." `$$` is replaced with
    #   `$` and the resulting string isn't expanded. For example,
    #   `$$(VAR_NAME)` will be passed as `$(VAR_NAME)` whether or not the
    #   `VAR_NAME` environment variable exists. The entrypoint can't be
    #   updated. For more information, see [ENTRYPOINT][1] in the
    #   *Dockerfile reference* and [Define a command and arguments for a
    #   container][2] and [Entrypoint][3] in the *Kubernetes documentation*.
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/reference/builder/#entrypoint
    #   [2]: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/
    #   [3]: https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#entrypoint
    #   @return [Array<String>]
    #
    # @!attribute [rw] args
    #   An array of arguments to the entrypoint. If this isn't specified,
    #   the `CMD` of the container image is used. This corresponds to the
    #   `args` member in the [Entrypoint][1] portion of the [Pod][2] in
    #   Kubernetes. Environment variable references are expanded using the
    #   container's environment.
    #
    #   If the referenced environment variable doesn't exist, the reference
    #   in the command isn't changed. For example, if the reference is to
    #   "`$(NAME1)`" and the `NAME1` environment variable doesn't exist,
    #   the command string will remain "`$(NAME1)`." `$$` is replaced with
    #   `$`, and the resulting string isn't expanded. For example,
    #   `$$(VAR_NAME)` is passed as `$(VAR_NAME)` whether or not the
    #   `VAR_NAME` environment variable exists. For more information, see
    #   [CMD][3] in the *Dockerfile reference* and [Define a command and
    #   arguments for a pod][4] in the *Kubernetes documentation*.
    #
    #
    #
    #   [1]: https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#entrypoint
    #   [2]: https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/
    #   [3]: https://docs.docker.com/engine/reference/builder/#cmd
    #   [4]: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/
    #   @return [Array<String>]
    #
    # @!attribute [rw] env
    #   The environment variables to pass to a container.
    #
    #   <note markdown="1"> Environment variables cannot start with "`AWS_BATCH`". This naming
    #   convention is reserved for variables that Batch sets.
    #
    #    </note>
    #   @return [Array<Types::EksContainerEnvironmentVariable>]
    #
    # @!attribute [rw] resources
    #   The type and amount of resources to assign to a container. The
    #   supported resources include `memory`, `cpu`, and `nvidia.com/gpu`.
    #   For more information, see [Resource management for pods and
    #   containers][1] in the *Kubernetes documentation*.
    #
    #
    #
    #   [1]: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
    #   @return [Types::EksContainerResourceRequirements]
    #
    # @!attribute [rw] volume_mounts
    #   The volume mounts for the container. Batch supports `emptyDir`,
    #   `hostPath`, and `secret` volume types. For more information about
    #   volumes and volume mounts in Kubernetes, see [Volumes][1] in the
    #   *Kubernetes documentation*.
    #
    #
    #
    #   [1]: https://kubernetes.io/docs/concepts/storage/volumes/
    #   @return [Array<Types::EksContainerVolumeMount>]
    #
    # @!attribute [rw] security_context
    #   The security context for a job. For more information, see [Configure
    #   a security context for a pod or container][1] in the *Kubernetes
    #   documentation*.
    #
    #
    #
    #   [1]: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/
    #   @return [Types::EksContainerSecurityContext]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/EksContainer AWS API Documentation
    #
    class EksContainer < Struct.new(
      :name,
      :image,
      :image_pull_policy,
      :command,
      :args,
      :env,
      :resources,
      :volume_mounts,
      :security_context)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details for container properties that are returned by
    # `DescribeJobs` for jobs that use Amazon EKS.
    #
    # @!attribute [rw] name
    #   The name of the container. If the name isn't specified, the default
    #   name "`Default`" is used. Each container in a pod must have a
    #   unique name.
    #   @return [String]
    #
    # @!attribute [rw] image
    #   The Docker image used to start the container.
    #   @return [String]
    #
    # @!attribute [rw] image_pull_policy
    #   The image pull policy for the container. Supported values are
    #   `Always`, `IfNotPresent`, and `Never`. This parameter defaults to
    #   `Always` if the `:latest` tag is specified, `IfNotPresent`
    #   otherwise. For more information, see [Updating images][1] in the
    #   *Kubernetes documentation*.
    #
    #
    #
    #   [1]: https://kubernetes.io/docs/concepts/containers/images/#updating-images
    #   @return [String]
    #
    # @!attribute [rw] command
    #   The entrypoint for the container. For more information, see
    #   [Entrypoint][1] in the *Kubernetes documentation*.
    #
    #
    #
    #   [1]: https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#entrypoint
    #   @return [Array<String>]
    #
    # @!attribute [rw] args
    #   An array of arguments to the entrypoint. If this isn't specified,
    #   the `CMD` of the container image is used. This corresponds to the
    #   `args` member in the [Entrypoint][1] portion of the [Pod][2] in
    #   Kubernetes. Environment variable references are expanded using the
    #   container's environment.
    #
    #   If the referenced environment variable doesn't exist, the reference
    #   in the command isn't changed. For example, if the reference is to
    #   "`$(NAME1)`" and the `NAME1` environment variable doesn't exist,
    #   the command string will remain "`$(NAME1)`". `$$` is replaced with
    #   `$` and the resulting string isn't expanded. For example,
    #   `$$(VAR_NAME)` is passed as `$(VAR_NAME)` whether or not the
    #   `VAR_NAME` environment variable exists. For more information, see
    #   [CMD][3] in the *Dockerfile reference* and [Define a command and
    #   arguments for a pod][4] in the *Kubernetes documentation*.
    #
    #
    #
    #   [1]: https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/#entrypoint
    #   [2]: https://kubernetes.io/docs/reference/kubernetes-api/workload-resources/pod-v1/
    #   [3]: https://docs.docker.com/engine/reference/builder/#cmd
    #   [4]: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/
    #   @return [Array<String>]
    #
    # @!attribute [rw] env
    #   The environment variables to pass to a container.
    #
    #   <note markdown="1"> Environment variables cannot start with "`AWS_BATCH`". This naming
    #   convention is reserved for variables that Batch sets.
    #
    #    </note>
    #   @return [Array<Types::EksContainerEnvironmentVariable>]
    #
    # @!attribute [rw] resources
    #   The type and amount of resources to assign to a container. The
    #   supported resources include `memory`, `cpu`, and `nvidia.com/gpu`.
    #   For more information, see [Resource management for pods and
    #   containers][1] in the *Kubernetes documentation*.
    #
    #
    #
    #   [1]: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
    #   @return [Types::EksContainerResourceRequirements]
    #
    # @!attribute [rw] exit_code
    #   The exit code for the job attempt. A non-zero exit code is
    #   considered failed.
    #   @return [Integer]
    #
    # @!attribute [rw] reason
    #   A short human-readable string to provide additional details for a
    #   running or stopped container. It can be up to 255 characters long.
    #   @return [String]
    #
    # @!attribute [rw] volume_mounts
    #   The volume mounts for the container. Batch supports `emptyDir`,
    #   `hostPath`, and `secret` volume types. For more information about
    #   volumes and volume mounts in Kubernetes, see [Volumes][1] in the
    #   *Kubernetes documentation*.
    #
    #
    #
    #   [1]: https://kubernetes.io/docs/concepts/storage/volumes/
    #   @return [Array<Types::EksContainerVolumeMount>]
    #
    # @!attribute [rw] security_context
    #   The security context for a job. For more information, see [Configure
    #   a security context for a pod or container][1] in the *Kubernetes
    #   documentation*.
    #
    #
    #
    #   [1]: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/
    #   @return [Types::EksContainerSecurityContext]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/EksContainerDetail AWS API Documentation
    #
    class EksContainerDetail < Struct.new(
      :name,
      :image,
      :image_pull_policy,
      :command,
      :args,
      :env,
      :resources,
      :exit_code,
      :reason,
      :volume_mounts,
      :security_context)
      SENSITIVE = []
      include Aws::Structure
    end

    # An environment variable.
    #
    # @!attribute [rw] name
    #   The name of the environment variable.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the environment variable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/EksContainerEnvironmentVariable AWS API Documentation
    #
    class EksContainerEnvironmentVariable < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object representing any Kubernetes overrides to a job definition
    # that's used in a SubmitJob API operation.
    #
    # @!attribute [rw] image
    #   The override of the Docker image that's used to start the
    #   container.
    #   @return [String]
    #
    # @!attribute [rw] command
    #   The command to send to the container that overrides the default
    #   command from the Docker image or the job definition.
    #   @return [Array<String>]
    #
    # @!attribute [rw] args
    #   The arguments to the entrypoint to send to the container that
    #   overrides the default arguments from the Docker image or the job
    #   definition. For more information, see [CMD][1] in the *Dockerfile
    #   reference* and [Define a command an arguments for a pod][2] in the
    #   *Kubernetes documentation*.
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/reference/builder/#cmd
    #   [2]: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/
    #   @return [Array<String>]
    #
    # @!attribute [rw] env
    #   The environment variables to send to the container. You can add new
    #   environment variables, which are added to the container at launch.
    #   Or, you can override the existing environment variables from the
    #   Docker image or the job definition.
    #
    #   <note markdown="1"> Environment variables cannot start with "`AWS_BATCH`". This naming
    #   convention is reserved for variables that Batch sets.
    #
    #    </note>
    #   @return [Array<Types::EksContainerEnvironmentVariable>]
    #
    # @!attribute [rw] resources
    #   The type and amount of resources to assign to a container. These
    #   override the settings in the job definition. The supported resources
    #   include `memory`, `cpu`, and `nvidia.com/gpu`. For more information,
    #   see [Resource management for pods and containers][1] in the
    #   *Kubernetes documentation*.
    #
    #
    #
    #   [1]: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
    #   @return [Types::EksContainerResourceRequirements]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/EksContainerOverride AWS API Documentation
    #
    class EksContainerOverride < Struct.new(
      :image,
      :command,
      :args,
      :env,
      :resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # The type and amount of resources to assign to a container. The
    # supported resources include `memory`, `cpu`, and `nvidia.com/gpu`. For
    # more information, see [Resource management for pods and containers][1]
    # in the *Kubernetes documentation*.
    #
    #
    #
    # [1]: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
    #
    # @!attribute [rw] limits
    #   The type and quantity of the resources to reserve for the container.
    #   The values vary based on the `name` that's specified. Resources can
    #   be requested using either the `limits` or the `requests` objects.
    #
    #   memory
    #
    #   : The memory hard limit (in MiB) for the container, using whole
    #     integers, with a "Mi" suffix. If your container attempts to
    #     exceed the memory specified, the container is terminated. You must
    #     specify at least 4 MiB of memory for a job. `memory` can be
    #     specified in `limits`, `requests`, or both. If `memory` is
    #     specified in both places, then the value that's specified in
    #     `limits` must be equal to the value that's specified in
    #     `requests`.
    #
    #     <note markdown="1"> To maximize your resource utilization, provide your jobs with as
    #     much memory as possible for the specific instance type that you
    #     are using. To learn how, see [Memory management][1] in the *Batch
    #     User Guide*.
    #
    #      </note>
    #
    #   cpu
    #
    #   : The number of CPUs that's reserved for the container. Values must
    #     be an even multiple of `0.25`. `cpu` can be specified in `limits`,
    #     `requests`, or both. If `cpu` is specified in both places, then
    #     the value that's specified in `limits` must be at least as large
    #     as the value that's specified in `requests`.
    #
    #   nvidia.com/gpu
    #
    #   : The number of GPUs that's reserved for the container. Values must
    #     be a whole integer. `memory` can be specified in `limits`,
    #     `requests`, or both. If `memory` is specified in both places, then
    #     the value that's specified in `limits` must be equal to the value
    #     that's specified in `requests`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/memory-management.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] requests
    #   The type and quantity of the resources to request for the container.
    #   The values vary based on the `name` that's specified. Resources can
    #   be requested by using either the `limits` or the `requests` objects.
    #
    #   memory
    #
    #   : The memory hard limit (in MiB) for the container, using whole
    #     integers, with a "Mi" suffix. If your container attempts to
    #     exceed the memory specified, the container is terminated. You must
    #     specify at least 4 MiB of memory for a job. `memory` can be
    #     specified in `limits`, `requests`, or both. If `memory` is
    #     specified in both, then the value that's specified in `limits`
    #     must be equal to the value that's specified in `requests`.
    #
    #     <note markdown="1"> If you're trying to maximize your resource utilization by
    #     providing your jobs as much memory as possible for a particular
    #     instance type, see [Memory management][1] in the *Batch User
    #     Guide*.
    #
    #      </note>
    #
    #   cpu
    #
    #   : The number of CPUs that are reserved for the container. Values
    #     must be an even multiple of `0.25`. `cpu` can be specified in
    #     `limits`, `requests`, or both. If `cpu` is specified in both, then
    #     the value that's specified in `limits` must be at least as large
    #     as the value that's specified in `requests`.
    #
    #   nvidia.com/gpu
    #
    #   : The number of GPUs that are reserved for the container. Values
    #     must be a whole integer. `nvidia.com/gpu` can be specified in
    #     `limits`, `requests`, or both. If `nvidia.com/gpu` is specified in
    #     both, then the value that's specified in `limits` must be equal
    #     to the value that's specified in `requests`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/memory-management.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/EksContainerResourceRequirements AWS API Documentation
    #
    class EksContainerResourceRequirements < Struct.new(
      :limits,
      :requests)
      SENSITIVE = []
      include Aws::Structure
    end

    # The security context for a job. For more information, see [Configure a
    # security context for a pod or container][1] in the *Kubernetes
    # documentation*.
    #
    #
    #
    # [1]: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/
    #
    # @!attribute [rw] run_as_user
    #   When this parameter is specified, the container is run as the
    #   specified user ID (`uid`). If this parameter isn't specified, the
    #   default is the user that's specified in the image metadata. This
    #   parameter maps to `RunAsUser` and `MustRanAs` policy in the [Users
    #   and groups pod security policies][1] in the *Kubernetes
    #   documentation*.
    #
    #
    #
    #   [1]: https://kubernetes.io/docs/concepts/security/pod-security-policy/#users-and-groups
    #   @return [Integer]
    #
    # @!attribute [rw] run_as_group
    #   When this parameter is specified, the container is run as the
    #   specified group ID (`gid`). If this parameter isn't specified, the
    #   default is the group that's specified in the image metadata. This
    #   parameter maps to `RunAsGroup` and `MustRunAs` policy in the [Users
    #   and groups pod security policies][1] in the *Kubernetes
    #   documentation*.
    #
    #
    #
    #   [1]: https://kubernetes.io/docs/concepts/security/pod-security-policy/#users-and-groups
    #   @return [Integer]
    #
    # @!attribute [rw] privileged
    #   When this parameter is `true`, the container is given elevated
    #   permissions on the host container instance. The level of permissions
    #   are similar to the `root` user permissions. The default value is
    #   `false`. This parameter maps to `privileged` policy in the
    #   [Privileged pod security policies][1] in the *Kubernetes
    #   documentation*.
    #
    #
    #
    #   [1]: https://kubernetes.io/docs/concepts/security/pod-security-policy/#privileged
    #   @return [Boolean]
    #
    # @!attribute [rw] read_only_root_filesystem
    #   When this parameter is `true`, the container is given read-only
    #   access to its root file system. The default value is `false`. This
    #   parameter maps to `ReadOnlyRootFilesystem` policy in the [Volumes
    #   and file systems pod security policies][1] in the *Kubernetes
    #   documentation*.
    #
    #
    #
    #   [1]: https://kubernetes.io/docs/concepts/security/pod-security-policy/#volumes-and-file-systems
    #   @return [Boolean]
    #
    # @!attribute [rw] run_as_non_root
    #   When this parameter is specified, the container is run as a user
    #   with a `uid` other than 0. If this parameter isn't specified, so
    #   such rule is enforced. This parameter maps to `RunAsUser` and
    #   `MustRunAsNonRoot` policy in the [Users and groups pod security
    #   policies][1] in the *Kubernetes documentation*.
    #
    #
    #
    #   [1]: https://kubernetes.io/docs/concepts/security/pod-security-policy/#users-and-groups
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/EksContainerSecurityContext AWS API Documentation
    #
    class EksContainerSecurityContext < Struct.new(
      :run_as_user,
      :run_as_group,
      :privileged,
      :read_only_root_filesystem,
      :run_as_non_root)
      SENSITIVE = []
      include Aws::Structure
    end

    # The volume mounts for a container for an Amazon EKS job. For more
    # information about volumes and volume mounts in Kubernetes, see
    # [Volumes][1] in the *Kubernetes documentation*.
    #
    #
    #
    # [1]: https://kubernetes.io/docs/concepts/storage/volumes/
    #
    # @!attribute [rw] name
    #   The name the volume mount. This must match the name of one of the
    #   volumes in the pod.
    #   @return [String]
    #
    # @!attribute [rw] mount_path
    #   The path on the container where the volume is mounted.
    #   @return [String]
    #
    # @!attribute [rw] read_only
    #   If this value is `true`, the container has read-only access to the
    #   volume. Otherwise, the container can write to the volume. The
    #   default value is `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/EksContainerVolumeMount AWS API Documentation
    #
    class EksContainerVolumeMount < Struct.new(
      :name,
      :mount_path,
      :read_only)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the configuration of a Kubernetes `emptyDir` volume. An
    # `emptyDir` volume is first created when a pod is assigned to a node.
    # It exists as long as that pod is running on that node. The `emptyDir`
    # volume is initially empty. All containers in the pod can read and
    # write the files in the `emptyDir` volume. However, the `emptyDir`
    # volume can be mounted at the same or different paths in each
    # container. When a pod is removed from a node for any reason, the data
    # in the `emptyDir` is deleted permanently. For more information, see
    # [emptyDir][1] in the *Kubernetes documentation*.
    #
    #
    #
    # [1]: https://kubernetes.io/docs/concepts/storage/volumes/#emptydir
    #
    # @!attribute [rw] medium
    #   The medium to store the volume. The default value is an empty
    #   string, which uses the storage of the node.
    #
    #   ""
    #
    #   : **(Default)** Use the disk storage of the node.
    #
    #   "Memory"
    #
    #   : Use the `tmpfs` volume that's backed by the RAM of the node.
    #     Contents of the volume are lost when the node reboots, and any
    #     storage on the volume counts against the container's memory
    #     limit.
    #   @return [String]
    #
    # @!attribute [rw] size_limit
    #   The maximum size of the volume. By default, there's no maximum size
    #   defined.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/EksEmptyDir AWS API Documentation
    #
    class EksEmptyDir < Struct.new(
      :medium,
      :size_limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the configuration of a Kubernetes `hostPath` volume. A
    # `hostPath` volume mounts an existing file or directory from the host
    # node's filesystem into your pod. For more information, see
    # [hostPath][1] in the *Kubernetes documentation*.
    #
    #
    #
    # [1]: https://kubernetes.io/docs/concepts/storage/volumes/#hostpath
    #
    # @!attribute [rw] path
    #   The path of the file or directory on the host to mount into
    #   containers on the pod.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/EksHostPath AWS API Documentation
    #
    class EksHostPath < Struct.new(
      :path)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes and uniquely identifies Kubernetes resources. For example,
    # the compute environment that a pod runs in or the `jobID` for a job
    # running in the pod. For more information, see [Understanding
    # Kubernetes Objects][1] in the *Kubernetes documentation*.
    #
    #
    #
    # [1]: https://kubernetes.io/docs/concepts/overview/working-with-objects/kubernetes-objects/
    #
    # @!attribute [rw] labels
    #   Key-value pairs used to identify, sort, and organize cube resources.
    #   Can contain up to 63 uppercase letters, lowercase letters, numbers,
    #   hyphens (-), and underscores (\_). Labels can be added or modified
    #   at any time. Each resource can have multiple labels, but each key
    #   must be unique for a given object.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/EksMetadata AWS API Documentation
    #
    class EksMetadata < Struct.new(
      :labels)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties for the pod.
    #
    # @!attribute [rw] service_account_name
    #   The name of the service account that's used to run the pod. For
    #   more information, see [Kubernetes service accounts][1] and
    #   [Configure a Kubernetes service account to assume an IAM role][2] in
    #   the *Amazon EKS User Guide* and [Configure service accounts for
    #   pods][3] in the *Kubernetes documentation*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/service-accounts.html
    #   [2]: https://docs.aws.amazon.com/eks/latest/userguide/associate-service-account-role.html
    #   [3]: https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/
    #   @return [String]
    #
    # @!attribute [rw] host_network
    #   Indicates if the pod uses the hosts' network IP address. The
    #   default value is `true`. Setting this to `false` enables the
    #   Kubernetes pod networking model. Most Batch workloads are
    #   egress-only and don't require the overhead of IP allocation for
    #   each pod for incoming connections. For more information, see [Host
    #   namespaces][1] and [Pod networking][2] in the *Kubernetes
    #   documentation*.
    #
    #
    #
    #   [1]: https://kubernetes.io/docs/concepts/security/pod-security-policy/#host-namespaces
    #   [2]: https://kubernetes.io/docs/concepts/workloads/pods/#pod-networking
    #   @return [Boolean]
    #
    # @!attribute [rw] dns_policy
    #   The DNS policy for the pod. The default value is `ClusterFirst`. If
    #   the `hostNetwork` parameter is not specified, the default is
    #   `ClusterFirstWithHostNet`. `ClusterFirst` indicates that any DNS
    #   query that does not match the configured cluster domain suffix is
    #   forwarded to the upstream nameserver inherited from the node. For
    #   more information, see [Pod's DNS policy][1] in the *Kubernetes
    #   documentation*.
    #
    #   Valid values: `Default` \| `ClusterFirst` \|
    #   `ClusterFirstWithHostNet`
    #
    #
    #
    #   [1]: https://kubernetes.io/docs/concepts/services-networking/dns-pod-service/#pod-s-dns-policy
    #   @return [String]
    #
    # @!attribute [rw] containers
    #   The properties of the container that's used on the Amazon EKS pod.
    #   @return [Array<Types::EksContainer>]
    #
    # @!attribute [rw] volumes
    #   Specifies the volumes for a job definition that uses Amazon EKS
    #   resources.
    #   @return [Array<Types::EksVolume>]
    #
    # @!attribute [rw] metadata
    #   Metadata about the Kubernetes pod. For more information, see
    #   [Understanding Kubernetes Objects][1] in the *Kubernetes
    #   documentation*.
    #
    #
    #
    #   [1]: https://kubernetes.io/docs/concepts/overview/working-with-objects/kubernetes-objects/
    #   @return [Types::EksMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/EksPodProperties AWS API Documentation
    #
    class EksPodProperties < Struct.new(
      :service_account_name,
      :host_network,
      :dns_policy,
      :containers,
      :volumes,
      :metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details for the pod.
    #
    # @!attribute [rw] service_account_name
    #   The name of the service account that's used to run the pod. For
    #   more information, see [Kubernetes service accounts][1] and
    #   [Configure a Kubernetes service account to assume an IAM role][2] in
    #   the *Amazon EKS User Guide* and [Configure service accounts for
    #   pods][3] in the *Kubernetes documentation*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eks/latest/userguide/service-accounts.html
    #   [2]: https://docs.aws.amazon.com/eks/latest/userguide/associate-service-account-role.html
    #   [3]: https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/
    #   @return [String]
    #
    # @!attribute [rw] host_network
    #   Indicates if the pod uses the hosts' network IP address. The
    #   default value is `true`. Setting this to `false` enables the
    #   Kubernetes pod networking model. Most Batch workloads are
    #   egress-only and don't require the overhead of IP allocation for
    #   each pod for incoming connections. For more information, see [Host
    #   namespaces][1] and [Pod networking][2] in the *Kubernetes
    #   documentation*.
    #
    #
    #
    #   [1]: https://kubernetes.io/docs/concepts/security/pod-security-policy/#host-namespaces
    #   [2]: https://kubernetes.io/docs/concepts/workloads/pods/#pod-networking
    #   @return [Boolean]
    #
    # @!attribute [rw] dns_policy
    #   The DNS policy for the pod. The default value is `ClusterFirst`. If
    #   the `hostNetwork` parameter is not specified, the default is
    #   `ClusterFirstWithHostNet`. `ClusterFirst` indicates that any DNS
    #   query that does not match the configured cluster domain suffix is
    #   forwarded to the upstream nameserver inherited from the node. If no
    #   value was specified for `dnsPolicy` in the
    #   [RegisterJobDefinition][1] API operation, then no value will be
    #   returned for `dnsPolicy` by either of [DescribeJobDefinitions][2] or
    #   [DescribeJobs][3] API operations. The pod spec setting will contain
    #   either `ClusterFirst` or `ClusterFirstWithHostNet`, depending on the
    #   value of the `hostNetwork` parameter. For more information, see
    #   [Pod's DNS policy][4] in the *Kubernetes documentation*.
    #
    #   Valid values: `Default` \| `ClusterFirst` \|
    #   `ClusterFirstWithHostNet`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/APIReference/API_RegisterJobDefinition.html
    #   [2]: https://docs.aws.amazon.com/batch/latest/APIReference/API_DescribeJobDefinitions.html
    #   [3]: https://docs.aws.amazon.com/batch/latest/APIReference/API_DescribeJobs.html
    #   [4]: https://kubernetes.io/docs/concepts/services-networking/dns-pod-service/#pod-s-dns-policy
    #   @return [String]
    #
    # @!attribute [rw] containers
    #   The properties of the container that's used on the Amazon EKS pod.
    #   @return [Array<Types::EksContainerDetail>]
    #
    # @!attribute [rw] volumes
    #   Specifies the volumes for a job definition using Amazon EKS
    #   resources.
    #   @return [Array<Types::EksVolume>]
    #
    # @!attribute [rw] pod_name
    #   The name of the pod for this job.
    #   @return [String]
    #
    # @!attribute [rw] node_name
    #   The name of the node for this job.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   Describes and uniquely identifies Kubernetes resources. For example,
    #   the compute environment that a pod runs in or the `jobID` for a job
    #   running in the pod. For more information, see [Understanding
    #   Kubernetes Objects][1] in the *Kubernetes documentation*.
    #
    #
    #
    #   [1]: https://kubernetes.io/docs/concepts/overview/working-with-objects/kubernetes-objects/
    #   @return [Types::EksMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/EksPodPropertiesDetail AWS API Documentation
    #
    class EksPodPropertiesDetail < Struct.new(
      :service_account_name,
      :host_network,
      :dns_policy,
      :containers,
      :volumes,
      :pod_name,
      :node_name,
      :metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains overrides for the Kubernetes pod properties of
    # a job.
    #
    # @!attribute [rw] containers
    #   The overrides for the container that's used on the Amazon EKS pod.
    #   @return [Array<Types::EksContainerOverride>]
    #
    # @!attribute [rw] metadata
    #   Metadata about the overrides for the container that's used on the
    #   Amazon EKS pod.
    #   @return [Types::EksMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/EksPodPropertiesOverride AWS API Documentation
    #
    class EksPodPropertiesOverride < Struct.new(
      :containers,
      :metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains the properties for the Kubernetes resources of
    # a job.
    #
    # @!attribute [rw] pod_properties
    #   The properties for the Kubernetes pod resources of a job.
    #   @return [Types::EksPodProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/EksProperties AWS API Documentation
    #
    class EksProperties < Struct.new(
      :pod_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains the details for the Kubernetes resources of a
    # job.
    #
    # @!attribute [rw] pod_properties
    #   The properties for the Kubernetes pod resources of a job.
    #   @return [Types::EksPodPropertiesDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/EksPropertiesDetail AWS API Documentation
    #
    class EksPropertiesDetail < Struct.new(
      :pod_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains overrides for the Kubernetes resources of a
    # job.
    #
    # @!attribute [rw] pod_properties
    #   The overrides for the Kubernetes pod resources of a job.
    #   @return [Types::EksPodPropertiesOverride]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/EksPropertiesOverride AWS API Documentation
    #
    class EksPropertiesOverride < Struct.new(
      :pod_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the configuration of a Kubernetes `secret` volume. For more
    # information, see [secret][1] in the *Kubernetes documentation*.
    #
    #
    #
    # [1]: https://kubernetes.io/docs/concepts/storage/volumes/#secret
    #
    # @!attribute [rw] secret_name
    #   The name of the secret. The name must be allowed as a DNS subdomain
    #   name. For more information, see [DNS subdomain names][1] in the
    #   *Kubernetes documentation*.
    #
    #
    #
    #   [1]: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#dns-subdomain-names
    #   @return [String]
    #
    # @!attribute [rw] optional
    #   Specifies whether the secret or the secret's keys must be defined.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/EksSecret AWS API Documentation
    #
    class EksSecret < Struct.new(
      :secret_name,
      :optional)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies an Amazon EKS volume for a job definition.
    #
    # @!attribute [rw] name
    #   The name of the volume. The name must be allowed as a DNS subdomain
    #   name. For more information, see [DNS subdomain names][1] in the
    #   *Kubernetes documentation*.
    #
    #
    #
    #   [1]: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#dns-subdomain-names
    #   @return [String]
    #
    # @!attribute [rw] host_path
    #   Specifies the configuration of a Kubernetes `hostPath` volume. For
    #   more information, see [hostPath][1] in the *Kubernetes
    #   documentation*.
    #
    #
    #
    #   [1]: https://kubernetes.io/docs/concepts/storage/volumes/#hostpath
    #   @return [Types::EksHostPath]
    #
    # @!attribute [rw] empty_dir
    #   Specifies the configuration of a Kubernetes `emptyDir` volume. For
    #   more information, see [emptyDir][1] in the *Kubernetes
    #   documentation*.
    #
    #
    #
    #   [1]: https://kubernetes.io/docs/concepts/storage/volumes/#emptydir
    #   @return [Types::EksEmptyDir]
    #
    # @!attribute [rw] secret
    #   Specifies the configuration of a Kubernetes `secret` volume. For
    #   more information, see [secret][1] in the *Kubernetes documentation*.
    #
    #
    #
    #   [1]: https://kubernetes.io/docs/concepts/storage/volumes/#secret
    #   @return [Types::EksSecret]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/EksVolume AWS API Documentation
    #
    class EksVolume < Struct.new(
      :name,
      :host_path,
      :empty_dir,
      :secret)
      SENSITIVE = []
      include Aws::Structure
    end

    # The amount of ephemeral storage to allocate for the task. This
    # parameter is used to expand the total amount of ephemeral storage
    # available, beyond the default amount, for tasks hosted on Fargate.
    #
    # @!attribute [rw] size_in_gi_b
    #   The total amount, in GiB, of ephemeral storage to set for the task.
    #   The minimum supported value is `21` GiB and the maximum supported
    #   value is `200` GiB.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/EphemeralStorage AWS API Documentation
    #
    class EphemeralStorage < Struct.new(
      :size_in_gi_b)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies an array of up to 5 conditions to be met, and an action to
    # take (`RETRY` or `EXIT`) if all conditions are met. If none of the
    # `EvaluateOnExit` conditions in a `RetryStrategy` match, then the job
    # is retried.
    #
    # @!attribute [rw] on_status_reason
    #   Contains a glob pattern to match against the `StatusReason` returned
    #   for a job. The pattern can contain up to 512 characters. It can
    #   contain letters, numbers, periods (.), colons (:), and white spaces
    #   (including spaces or tabs). It can optionally end with an asterisk
    #   (*) so that only the start of the string needs to be an exact
    #   match.
    #   @return [String]
    #
    # @!attribute [rw] on_reason
    #   Contains a glob pattern to match against the `Reason` returned for a
    #   job. The pattern can contain up to 512 characters. It can contain
    #   letters, numbers, periods (.), colons (:), and white space
    #   (including spaces and tabs). It can optionally end with an asterisk
    #   (*) so that only the start of the string needs to be an exact
    #   match.
    #   @return [String]
    #
    # @!attribute [rw] on_exit_code
    #   Contains a glob pattern to match against the decimal representation
    #   of the `ExitCode` returned for a job. The pattern can be up to 512
    #   characters long. It can contain only numbers, and can end with an
    #   asterisk (*) so that only the start of the string needs to be an
    #   exact match.
    #
    #   The string can contain up to 512 characters.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   Specifies the action to take if all of the specified conditions
    #   (`onStatusReason`, `onReason`, and `onExitCode`) are met. The values
    #   aren't case sensitive.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/EvaluateOnExit AWS API Documentation
    #
    class EvaluateOnExit < Struct.new(
      :on_status_reason,
      :on_reason,
      :on_exit_code,
      :action)
      SENSITIVE = []
      include Aws::Structure
    end

    # The fair share policy for a scheduling policy.
    #
    # @!attribute [rw] share_decay_seconds
    #   The amount of time (in seconds) to use to calculate a fair share
    #   percentage for each fair share identifier in use. A value of zero
    #   (0) indicates that only current usage is measured. The decay allows
    #   for more recently run jobs to have more weight than jobs that ran
    #   earlier. The maximum supported value is 604800 (1 week).
    #   @return [Integer]
    #
    # @!attribute [rw] compute_reservation
    #   A value used to reserve some of the available maximum vCPU for fair
    #   share identifiers that aren't already used.
    #
    #   The reserved ratio is `(computeReservation/100)^ActiveFairShares `
    #   where ` ActiveFairShares ` is the number of active fair share
    #   identifiers.
    #
    #   For example, a `computeReservation` value of 50 indicates that
    #   Batchreserves 50% of the maximum available vCPU if there's only one
    #   fair share identifier. It reserves 25% if there are two fair share
    #   identifiers. It reserves 12.5% if there are three fair share
    #   identifiers. A `computeReservation` value of 25 indicates that Batch
    #   should reserve 25% of the maximum available vCPU if there's only
    #   one fair share identifier, 6.25% if there are two fair share
    #   identifiers, and 1.56% if there are three fair share identifiers.
    #
    #   The minimum value is 0 and the maximum value is 99.
    #   @return [Integer]
    #
    # @!attribute [rw] share_distribution
    #   An array of `SharedIdentifier` objects that contain the weights for
    #   the fair share identifiers for the fair share policy. Fair share
    #   identifiers that aren't included have a default weight of `1.0`.
    #   @return [Array<Types::ShareAttributes>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/FairsharePolicy AWS API Documentation
    #
    class FairsharePolicy < Struct.new(
      :share_decay_seconds,
      :compute_reservation,
      :share_distribution)
      SENSITIVE = []
      include Aws::Structure
    end

    # The platform configuration for jobs that are running on Fargate
    # resources. Jobs that run on EC2 resources must not specify this
    # parameter.
    #
    # @!attribute [rw] platform_version
    #   The Fargate platform version where the jobs are running. A platform
    #   version is specified only for jobs that are running on Fargate
    #   resources. If one isn't specified, the `LATEST` platform version is
    #   used by default. This uses a recent, approved version of the Fargate
    #   platform for compute resources. For more information, see [Fargate
    #   platform versions][1] in the *Amazon Elastic Container Service
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/FargatePlatformConfiguration AWS API Documentation
    #
    class FargatePlatformConfiguration < Struct.new(
      :platform_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Determine whether your data volume persists on the host container
    # instance and where it's stored. If this parameter is empty, then the
    # Docker daemon assigns a host path for your data volume. However, the
    # data isn't guaranteed to persist after the containers that are
    # associated with it stop running.
    #
    # @!attribute [rw] source_path
    #   The path on the host container instance that's presented to the
    #   container. If this parameter is empty, then the Docker daemon has
    #   assigned a host path for you. If this parameter contains a file
    #   location, then the data volume persists at the specified location on
    #   the host container instance until you delete it manually. If the
    #   source path location doesn't exist on the host container instance,
    #   the Docker daemon creates it. If the location does exist, the
    #   contents of the source path folder are exported.
    #
    #   <note markdown="1"> This parameter isn't applicable to jobs that run on Fargate
    #   resources. Don't provide this for these jobs.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/Host AWS API Documentation
    #
    class Host < Struct.new(
      :source_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents an Batch job definition.
    #
    # @!attribute [rw] job_definition_name
    #   The name of the job definition.
    #   @return [String]
    #
    # @!attribute [rw] job_definition_arn
    #   The Amazon Resource Name (ARN) for the job definition.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The revision of the job definition.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the job definition.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of job definition. It's either `container` or `multinode`.
    #   If the job is run on Fargate resources, then `multinode` isn't
    #   supported. For more information about multi-node parallel jobs, see
    #   [Creating a multi-node parallel job definition][1] in the *Batch
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/multi-node-job-def.html
    #   @return [String]
    #
    # @!attribute [rw] scheduling_priority
    #   The scheduling priority of the job definition. This only affects
    #   jobs in job queues with a fair share policy. Jobs with a higher
    #   scheduling priority are scheduled before jobs with a lower
    #   scheduling priority.
    #   @return [Integer]
    #
    # @!attribute [rw] parameters
    #   Default parameters or parameter substitution placeholders that are
    #   set in the job definition. Parameters are specified as a key-value
    #   pair mapping. Parameters in a `SubmitJob` request override any
    #   corresponding parameter defaults from the job definition. For more
    #   information about specifying parameters, see [Job definition
    #   parameters][1] in the *Batch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/job_definition_parameters.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] retry_strategy
    #   The retry strategy to use for failed jobs that are submitted with
    #   this job definition.
    #   @return [Types::RetryStrategy]
    #
    # @!attribute [rw] container_properties
    #   An object with various properties specific to Amazon ECS based jobs.
    #   Valid values are `containerProperties`, `eksProperties`, and
    #   `nodeProperties`. Only one can be specified.
    #   @return [Types::ContainerProperties]
    #
    # @!attribute [rw] timeout
    #   The timeout time for jobs that are submitted with this job
    #   definition. After the amount of time you specify passes, Batch
    #   terminates your jobs if they aren't finished.
    #   @return [Types::JobTimeout]
    #
    # @!attribute [rw] node_properties
    #   An object with various properties that are specific to multi-node
    #   parallel jobs. Valid values are `containerProperties`,
    #   `eksProperties`, and `nodeProperties`. Only one can be specified.
    #
    #   <note markdown="1"> If the job runs on Fargate resources, don't specify
    #   `nodeProperties`. Use `containerProperties` instead.
    #
    #    </note>
    #   @return [Types::NodeProperties]
    #
    # @!attribute [rw] tags
    #   The tags that are applied to the job definition.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] propagate_tags
    #   Specifies whether to propagate the tags from the job or job
    #   definition to the corresponding Amazon ECS task. If no value is
    #   specified, the tags aren't propagated. Tags can only be propagated
    #   to the tasks when the tasks are created. For tags with the same
    #   name, job tags are given priority over job definitions tags. If the
    #   total number of combined tags from the job and job definition is
    #   over 50, the job is moved to the `FAILED` state.
    #   @return [Boolean]
    #
    # @!attribute [rw] platform_capabilities
    #   The platform capabilities required by the job definition. If no
    #   value is specified, it defaults to `EC2`. Jobs run on Fargate
    #   resources specify `FARGATE`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] eks_properties
    #   An object with various properties that are specific to Amazon EKS
    #   based jobs. Valid values are `containerProperties`, `eksProperties`,
    #   and `nodeProperties`. Only one can be specified.
    #   @return [Types::EksProperties]
    #
    # @!attribute [rw] container_orchestration_type
    #   The orchestration type of the compute environment. The valid values
    #   are `ECS` (default) or `EKS`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/JobDefinition AWS API Documentation
    #
    class JobDefinition < Struct.new(
      :job_definition_name,
      :job_definition_arn,
      :revision,
      :status,
      :type,
      :scheduling_priority,
      :parameters,
      :retry_strategy,
      :container_properties,
      :timeout,
      :node_properties,
      :tags,
      :propagate_tags,
      :platform_capabilities,
      :eks_properties,
      :container_orchestration_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents an Batch job dependency.
    #
    # @!attribute [rw] job_id
    #   The job ID of the Batch job that's associated with this dependency.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the job dependency.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/JobDependency AWS API Documentation
    #
    class JobDependency < Struct.new(
      :job_id,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents an Batch job.
    #
    # @!attribute [rw] job_arn
    #   The Amazon Resource Name (ARN) of the job.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The job name.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The job ID.
    #   @return [String]
    #
    # @!attribute [rw] job_queue
    #   The Amazon Resource Name (ARN) of the job queue that the job is
    #   associated with.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status for the job.
    #
    #   <note markdown="1"> If your jobs don't progress to `STARTING`, see [Jobs stuck in
    #   RUNNABLE status][1] in the troubleshooting section of the *Batch
    #   User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/troubleshooting.html#job_stuck_in_runnable
    #   @return [String]
    #
    # @!attribute [rw] share_identifier
    #   The share identifier for the job.
    #   @return [String]
    #
    # @!attribute [rw] scheduling_priority
    #   The scheduling policy of the job definition. This only affects jobs
    #   in job queues with a fair share policy. Jobs with a higher
    #   scheduling priority are scheduled before jobs with a lower
    #   scheduling priority.
    #   @return [Integer]
    #
    # @!attribute [rw] attempts
    #   A list of job attempts that are associated with this job.
    #   @return [Array<Types::AttemptDetail>]
    #
    # @!attribute [rw] status_reason
    #   A short, human-readable string to provide more details for the
    #   current status of the job.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The Unix timestamp (in milliseconds) for when the job was created.
    #   For non-array jobs and parent array jobs, this is when the job
    #   entered the `SUBMITTED` state. This is specifically at the time
    #   SubmitJob was called. For array child jobs, this is when the child
    #   job was spawned by its parent and entered the `PENDING` state.
    #   @return [Integer]
    #
    # @!attribute [rw] retry_strategy
    #   The retry strategy to use for this job if an attempt fails.
    #   @return [Types::RetryStrategy]
    #
    # @!attribute [rw] started_at
    #   The Unix timestamp (in milliseconds) for when the job was started.
    #   More specifically, it's when the job transitioned from the
    #   `STARTING` state to the `RUNNING` state. This parameter isn't
    #   provided for child jobs of array jobs or multi-node parallel jobs.
    #   @return [Integer]
    #
    # @!attribute [rw] stopped_at
    #   The Unix timestamp (in milliseconds) for when the job was stopped.
    #   More specifically, it's when the job transitioned from the
    #   `RUNNING` state to a terminal state, such as `SUCCEEDED` or
    #   `FAILED`.
    #   @return [Integer]
    #
    # @!attribute [rw] depends_on
    #   A list of job IDs that this job depends on.
    #   @return [Array<Types::JobDependency>]
    #
    # @!attribute [rw] job_definition
    #   The Amazon Resource Name (ARN) of the job definition that this job
    #   uses.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   Additional parameters that are passed to the job that replace
    #   parameter substitution placeholders or override any corresponding
    #   parameter defaults from the job definition.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] container
    #   An object that represents the details for the container that's
    #   associated with the job.
    #   @return [Types::ContainerDetail]
    #
    # @!attribute [rw] node_details
    #   An object that represents the details of a node that's associated
    #   with a multi-node parallel job.
    #   @return [Types::NodeDetails]
    #
    # @!attribute [rw] node_properties
    #   An object that represents the node properties of a multi-node
    #   parallel job.
    #
    #   <note markdown="1"> This isn't applicable to jobs that are running on Fargate
    #   resources.
    #
    #    </note>
    #   @return [Types::NodeProperties]
    #
    # @!attribute [rw] array_properties
    #   The array properties of the job, if it's an array job.
    #   @return [Types::ArrayPropertiesDetail]
    #
    # @!attribute [rw] timeout
    #   The timeout configuration for the job.
    #   @return [Types::JobTimeout]
    #
    # @!attribute [rw] tags
    #   The tags that are applied to the job.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] propagate_tags
    #   Specifies whether to propagate the tags from the job or job
    #   definition to the corresponding Amazon ECS task. If no value is
    #   specified, the tags aren't propagated. Tags can only be propagated
    #   to the tasks when the tasks are created. For tags with the same
    #   name, job tags are given priority over job definitions tags. If the
    #   total number of combined tags from the job and job definition is
    #   over 50, the job is moved to the `FAILED` state.
    #   @return [Boolean]
    #
    # @!attribute [rw] platform_capabilities
    #   The platform capabilities required by the job definition. If no
    #   value is specified, it defaults to `EC2`. Jobs run on Fargate
    #   resources specify `FARGATE`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] eks_properties
    #   An object with various properties that are specific to Amazon EKS
    #   based jobs. Only one of `container`, `eksProperties`, or
    #   `nodeDetails` is specified.
    #   @return [Types::EksPropertiesDetail]
    #
    # @!attribute [rw] eks_attempts
    #   A list of job attempts that are associated with this job.
    #   @return [Array<Types::EksAttemptDetail>]
    #
    # @!attribute [rw] is_cancelled
    #   Indicates whether the job is canceled.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_terminated
    #   Indicates whether the job is terminated.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/JobDetail AWS API Documentation
    #
    class JobDetail < Struct.new(
      :job_arn,
      :job_name,
      :job_id,
      :job_queue,
      :status,
      :share_identifier,
      :scheduling_priority,
      :attempts,
      :status_reason,
      :created_at,
      :retry_strategy,
      :started_at,
      :stopped_at,
      :depends_on,
      :job_definition,
      :parameters,
      :container,
      :node_details,
      :node_properties,
      :array_properties,
      :timeout,
      :tags,
      :propagate_tags,
      :platform_capabilities,
      :eks_properties,
      :eks_attempts,
      :is_cancelled,
      :is_terminated)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the details for an Batch job queue.
    #
    # @!attribute [rw] job_queue_name
    #   The job queue name.
    #   @return [String]
    #
    # @!attribute [rw] job_queue_arn
    #   The Amazon Resource Name (ARN) of the job queue.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Describes the ability of the queue to accept new jobs. If the job
    #   queue state is `ENABLED`, it can accept jobs. If the job queue state
    #   is `DISABLED`, new jobs can't be added to the queue, but jobs
    #   already in the queue can finish.
    #   @return [String]
    #
    # @!attribute [rw] scheduling_policy_arn
    #   The Amazon Resource Name (ARN) of the scheduling policy. The format
    #   is `aws:Partition:batch:Region:Account:scheduling-policy/Name `. For
    #   example,
    #   `aws:aws:batch:us-west-2:123456789012:scheduling-policy/MySchedulingPolicy`.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the job queue (for example, `CREATING` or `VALID`).
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   A short, human-readable string to provide additional details for the
    #   current status of the job queue.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority of the job queue. Job queues with a higher priority (or
    #   a higher integer value for the `priority` parameter) are evaluated
    #   first when associated with the same compute environment. Priority is
    #   determined in descending order. For example, a job queue with a
    #   priority value of `10` is given scheduling preference over a job
    #   queue with a priority value of `1`. All of the compute environments
    #   must be either EC2 (`EC2` or `SPOT`) or Fargate (`FARGATE` or
    #   `FARGATE_SPOT`). EC2 and Fargate compute environments can't be
    #   mixed.
    #   @return [Integer]
    #
    # @!attribute [rw] compute_environment_order
    #   The compute environments that are attached to the job queue and the
    #   order that job placement is preferred. Compute environments are
    #   selected for job placement in ascending order.
    #   @return [Array<Types::ComputeEnvironmentOrder>]
    #
    # @!attribute [rw] tags
    #   The tags that are applied to the job queue. For more information,
    #   see [Tagging your Batch resources][1] in *Batch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/using-tags.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/JobQueueDetail AWS API Documentation
    #
    class JobQueueDetail < Struct.new(
      :job_queue_name,
      :job_queue_arn,
      :state,
      :scheduling_policy_arn,
      :status,
      :status_reason,
      :priority,
      :compute_environment_order,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents summary details of a job.
    #
    # @!attribute [rw] job_arn
    #   The Amazon Resource Name (ARN) of the job.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The job ID.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The job name.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The Unix timestamp (in milliseconds) for when the job was created.
    #   For non-array jobs and parent array jobs, this is when the job
    #   entered the `SUBMITTED` state (at the time SubmitJob was called).
    #   For array child jobs, this is when the child job was spawned by its
    #   parent and entered the `PENDING` state.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The current status for the job.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   A short, human-readable string to provide more details for the
    #   current status of the job.
    #   @return [String]
    #
    # @!attribute [rw] started_at
    #   The Unix timestamp for when the job was started. More specifically,
    #   it's when the job transitioned from the `STARTING` state to the
    #   `RUNNING` state.
    #   @return [Integer]
    #
    # @!attribute [rw] stopped_at
    #   The Unix timestamp for when the job was stopped. More specifically,
    #   it's when the job transitioned from the `RUNNING` state to a
    #   terminal state, such as `SUCCEEDED` or `FAILED`.
    #   @return [Integer]
    #
    # @!attribute [rw] container
    #   An object that represents the details of the container that's
    #   associated with the job.
    #   @return [Types::ContainerSummary]
    #
    # @!attribute [rw] array_properties
    #   The array properties of the job, if it's an array job.
    #   @return [Types::ArrayPropertiesSummary]
    #
    # @!attribute [rw] node_properties
    #   The node properties for a single node in a job summary list.
    #
    #   <note markdown="1"> This isn't applicable to jobs that are running on Fargate
    #   resources.
    #
    #    </note>
    #   @return [Types::NodePropertiesSummary]
    #
    # @!attribute [rw] job_definition
    #   The Amazon Resource Name (ARN) of the job definition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/JobSummary AWS API Documentation
    #
    class JobSummary < Struct.new(
      :job_arn,
      :job_id,
      :job_name,
      :created_at,
      :status,
      :status_reason,
      :started_at,
      :stopped_at,
      :container,
      :array_properties,
      :node_properties,
      :job_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a job timeout configuration.
    #
    # @!attribute [rw] attempt_duration_seconds
    #   The job timeout time (in seconds) that's measured from the job
    #   attempt's `startedAt` timestamp. After this time passes, Batch
    #   terminates your jobs if they aren't finished. The minimum value for
    #   the timeout is 60 seconds.
    #
    #   For array jobs, the timeout applies to the child jobs, not to the
    #   parent array job.
    #
    #   For multi-node parallel (MNP) jobs, the timeout applies to the whole
    #   job, not to the individual nodes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/JobTimeout AWS API Documentation
    #
    class JobTimeout < Struct.new(
      :attempt_duration_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key-value pair object.
    #
    # @!attribute [rw] name
    #   The name of the key-value pair. For environment variables, this is
    #   the name of the environment variable.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the key-value pair. For environment variables, this is
    #   the value of the environment variable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/KeyValuePair AWS API Documentation
    #
    class KeyValuePair < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter name and value pair that's used to return a more specific
    # list of results from a `ListJobs` API operation.
    #
    # @!attribute [rw] name
    #   The name of the filter. Filter names are case sensitive.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The filter values.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/KeyValuesPair AWS API Documentation
    #
    class KeyValuesPair < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a launch template that's associated with a
    # compute resource. You must specify either the launch template ID or
    # launch template name in the request, but not both.
    #
    # If security groups are specified using both the `securityGroupIds`
    # parameter of `CreateComputeEnvironment` and the launch template, the
    # values in the `securityGroupIds` parameter of
    # `CreateComputeEnvironment` will be used.
    #
    # <note markdown="1"> This object isn't applicable to jobs that are running on Fargate
    # resources.
    #
    #  </note>
    #
    # @!attribute [rw] launch_template_id
    #   The ID of the launch template.
    #   @return [String]
    #
    # @!attribute [rw] launch_template_name
    #   The name of the launch template.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version number of the launch template, `$Latest`, or `$Default`.
    #
    #   If the value is `$Latest`, the latest version of the launch template
    #   is used. If the value is `$Default`, the default version of the
    #   launch template is used.
    #
    #   If the AMI ID that's used in a compute environment is from the
    #   launch template, the AMI isn't changed when the compute environment
    #   is updated. It's only changed if the `updateToLatestImageVersion`
    #   parameter for the compute environment is set to `true`. During an
    #   infrastructure update, if either `$Latest` or `$Default` is
    #   specified, Batch re-evaluates the launch template version, and it
    #   might use a different version of the launch template. This is the
    #   case even if the launch template isn't specified in the update.
    #   When updating a compute environment, changing the launch template
    #   requires an infrastructure update of the compute environment. For
    #   more information, see [Updating compute environments][1] in the
    #   *Batch User Guide*.
    #
    #   Default: `$Default`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/LaunchTemplateSpecification AWS API Documentation
    #
    class LaunchTemplateSpecification < Struct.new(
      :launch_template_id,
      :launch_template_name,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Linux-specific modifications that are applied to the container, such
    # as details for device mappings.
    #
    # @!attribute [rw] devices
    #   Any of the host devices to expose to the container. This parameter
    #   maps to `Devices` in the [Create a container][1] section of the
    #   [Docker Remote API][2] and the `--device` option to [docker run][3].
    #
    #   <note markdown="1"> This parameter isn't applicable to jobs that are running on Fargate
    #   resources. Don't provide it for these jobs.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.23/#create-a-container
    #   [2]: https://docs.docker.com/engine/api/v1.23/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Array<Types::Device>]
    #
    # @!attribute [rw] init_process_enabled
    #   If true, run an `init` process inside the container that forwards
    #   signals and reaps processes. This parameter maps to the `--init`
    #   option to [docker run][1]. This parameter requires version 1.25 of
    #   the Docker Remote API or greater on your container instance. To
    #   check the Docker Remote API version on your container instance, log
    #   in to your container instance and run the following command: `sudo
    #   docker version | grep "Server API version"`
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/reference/run/
    #   @return [Boolean]
    #
    # @!attribute [rw] shared_memory_size
    #   The value for the size (in MiB) of the `/dev/shm` volume. This
    #   parameter maps to the `--shm-size` option to [docker run][1].
    #
    #   <note markdown="1"> This parameter isn't applicable to jobs that are running on Fargate
    #   resources. Don't provide it for these jobs.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/reference/run/
    #   @return [Integer]
    #
    # @!attribute [rw] tmpfs
    #   The container path, mount options, and size (in MiB) of the `tmpfs`
    #   mount. This parameter maps to the `--tmpfs` option to [docker
    #   run][1].
    #
    #   <note markdown="1"> This parameter isn't applicable to jobs that are running on Fargate
    #   resources. Don't provide this parameter for this resource type.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/reference/run/
    #   @return [Array<Types::Tmpfs>]
    #
    # @!attribute [rw] max_swap
    #   The total amount of swap memory (in MiB) a container can use. This
    #   parameter is translated to the `--memory-swap` option to [docker
    #   run][1] where the value is the sum of the container memory plus the
    #   `maxSwap` value. For more information, see [ `--memory-swap`
    #   details][2] in the Docker documentation.
    #
    #   If a `maxSwap` value of `0` is specified, the container doesn't use
    #   swap. Accepted values are `0` or any positive integer. If the
    #   `maxSwap` parameter is omitted, the container doesn't use the swap
    #   configuration for the container instance that it's running on. A
    #   `maxSwap` value must be set for the `swappiness` parameter to be
    #   used.
    #
    #   <note markdown="1"> This parameter isn't applicable to jobs that are running on Fargate
    #   resources. Don't provide it for these jobs.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/reference/run/
    #   [2]: https://docs.docker.com/config/containers/resource_constraints/#--memory-swap-details
    #   @return [Integer]
    #
    # @!attribute [rw] swappiness
    #   You can use this parameter to tune a container's memory swappiness
    #   behavior. A `swappiness` value of `0` causes swapping to not occur
    #   unless absolutely necessary. A `swappiness` value of `100` causes
    #   pages to be swapped aggressively. Valid values are whole numbers
    #   between `0` and `100`. If the `swappiness` parameter isn't
    #   specified, a default value of `60` is used. If a value isn't
    #   specified for `maxSwap`, then this parameter is ignored. If
    #   `maxSwap` is set to 0, the container doesn't use swap. This
    #   parameter maps to the `--memory-swappiness` option to [docker
    #   run][1].
    #
    #   Consider the following when you use a per-container swap
    #   configuration.
    #
    #   * Swap space must be enabled and allocated on the container instance
    #     for the containers to use.
    #
    #     <note markdown="1"> By default, the Amazon ECS optimized AMIs don't have swap
    #     enabled. You must enable swap on the instance to use this feature.
    #     For more information, see [Instance store swap volumes][2] in the
    #     *Amazon EC2 User Guide for Linux Instances* or [How do I allocate
    #     memory to work as swap space in an Amazon EC2 instance by using a
    #     swap file?][3]
    #
    #      </note>
    #
    #   * The swap space parameters are only supported for job definitions
    #     using EC2 resources.
    #
    #   * If the `maxSwap` and `swappiness` parameters are omitted from a
    #     job definition, each container has a default `swappiness` value of
    #     60. Moreover, the total swap usage is limited to two times the
    #     memory reservation of the container.
    #
    #   <note markdown="1"> This parameter isn't applicable to jobs that are running on Fargate
    #   resources. Don't provide it for these jobs.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/reference/run/
    #   [2]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-store-swap-volumes.html
    #   [3]: http://aws.amazon.com/premiumsupport/knowledge-center/ec2-memory-swap-file/
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/LinuxParameters AWS API Documentation
    #
    class LinuxParameters < Struct.new(
      :devices,
      :init_process_enabled,
      :shared_memory_size,
      :tmpfs,
      :max_swap,
      :swappiness)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the parameters for `ListJobs`.
    #
    # @!attribute [rw] job_queue
    #   The name or full Amazon Resource Name (ARN) of the job queue used to
    #   list jobs.
    #   @return [String]
    #
    # @!attribute [rw] array_job_id
    #   The job ID for an array job. Specifying an array job ID with this
    #   parameter lists all child jobs from within the specified array.
    #   @return [String]
    #
    # @!attribute [rw] multi_node_job_id
    #   The job ID for a multi-node parallel job. Specifying a multi-node
    #   parallel job ID with this parameter lists all nodes that are
    #   associated with the specified job.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The job status used to filter jobs in the specified queue. If the
    #   `filters` parameter is specified, the `jobStatus` parameter is
    #   ignored and jobs with any status are returned. If you don't specify
    #   a status, only `RUNNING` jobs are returned.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results returned by `ListJobs` in paginated
    #   output. When this parameter is used, `ListJobs` only returns
    #   `maxResults` results in a single page and a `nextToken` response
    #   element. The remaining results of the initial request can be seen by
    #   sending another `ListJobs` request with the returned `nextToken`
    #   value. This value can be between 1 and 100. If this parameter isn't
    #   used, then `ListJobs` returns up to 100 results and a `nextToken`
    #   value if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated `ListJobs`
    #   request where `maxResults` was used and the results exceeded the
    #   value of that parameter. Pagination continues from the end of the
    #   previous results that returned the `nextToken` value. This value is
    #   `null` when there are no more results to return.
    #
    #   <note markdown="1"> Treat this token as an opaque identifier that's only used to
    #   retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   The filter to apply to the query. Only one filter can be used at a
    #   time. When the filter is used, `jobStatus` is ignored. The filter
    #   doesn't apply to child jobs in an array or multi-node parallel
    #   (MNP) jobs. The results are sorted by the `createdAt` field, with
    #   the most recent jobs being first.
    #
    #   JOB\_NAME
    #
    #   : The value of the filter is a case-insensitive match for the job
    #     name. If the value ends with an asterisk (*), the filter matches
    #     any job name that begins with the string before the '*'. This
    #     corresponds to the `jobName` value. For example, `test1` matches
    #     both `Test1` and `test1`, and `test1*` matches both `test1` and
    #     `Test10`. When the `JOB_NAME` filter is used, the results are
    #     grouped by the job name and version.
    #
    #   JOB\_DEFINITION
    #
    #   : The value for the filter is the name or Amazon Resource Name (ARN)
    #     of the job definition. This corresponds to the `jobDefinition`
    #     value. The value is case sensitive. When the value for the filter
    #     is the job definition name, the results include all the jobs that
    #     used any revision of that job definition name. If the value ends
    #     with an asterisk (*), the filter matches any job definition name
    #     that begins with the string before the '*'. For example, `jd1`
    #     matches only `jd1`, and `jd1*` matches both `jd1` and `jd1A`. The
    #     version of the job definition that's used doesn't affect the
    #     sort order. When the `JOB_DEFINITION` filter is used and the ARN
    #     is used (which is in the form
    #     `arn:$\{Partition\}:batch:$\{Region\}:$\{Account\}:job-definition/$\{JobDefinitionName\}:$\{Revision\}`),
    #     the results include jobs that used the specified revision of the
    #     job definition. Asterisk (*) isn't supported when the ARN is
    #     used.
    #
    #   BEFORE\_CREATED\_AT
    #
    #   : The value for the filter is the time that's before the job was
    #     created. This corresponds to the `createdAt` value. The value is a
    #     string representation of the number of milliseconds since 00:00:00
    #     UTC (midnight) on January 1, 1970.
    #
    #   AFTER\_CREATED\_AT
    #
    #   : The value for the filter is the time that's after the job was
    #     created. This corresponds to the `createdAt` value. The value is a
    #     string representation of the number of milliseconds since 00:00:00
    #     UTC (midnight) on January 1, 1970.
    #   @return [Array<Types::KeyValuesPair>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/ListJobsRequest AWS API Documentation
    #
    class ListJobsRequest < Struct.new(
      :job_queue,
      :array_job_id,
      :multi_node_job_id,
      :job_status,
      :max_results,
      :next_token,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_summary_list
    #   A list of job summaries that match the request.
    #   @return [Array<Types::JobSummary>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListJobs` request.
    #   When the results of a `ListJobs` request exceed `maxResults`, this
    #   value can be used to retrieve the next page of results. This value
    #   is `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/ListJobsResponse AWS API Documentation
    #
    class ListJobsResponse < Struct.new(
      :job_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the parameters for `ListSchedulingPolicies`.
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that's returned by
    #   `ListSchedulingPolicies` in paginated output. When this parameter is
    #   used, `ListSchedulingPolicies` only returns `maxResults` results in
    #   a single page and a `nextToken` response element. You can see the
    #   remaining results of the initial request by sending another
    #   `ListSchedulingPolicies` request with the returned `nextToken`
    #   value. This value can be between 1 and 100. If this parameter isn't
    #   used, `ListSchedulingPolicies` returns up to 100 results and a
    #   `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value that's returned from a previous paginated
    #   `ListSchedulingPolicies` request where `maxResults` was used and the
    #   results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `nextToken`
    #   value. This value is `null` when there are no more results to
    #   return.
    #
    #   <note markdown="1"> Treat this token as an opaque identifier that's only used to
    #   retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/ListSchedulingPoliciesRequest AWS API Documentation
    #
    class ListSchedulingPoliciesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scheduling_policies
    #   A list of scheduling policies that match the request.
    #   @return [Array<Types::SchedulingPolicyListingDetail>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future
    #   `ListSchedulingPolicies` request. When the results of a
    #   `ListSchedulingPolicies` request exceed `maxResults`, this value can
    #   be used to retrieve the next page of results. This value is `null`
    #   when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/ListSchedulingPoliciesResponse AWS API Documentation
    #
    class ListSchedulingPoliciesResponse < Struct.new(
      :scheduling_policies,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the parameters for `ListTagsForResource`.
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that identifies the resource that
    #   tags are listed for. Batch resources that support tags are compute
    #   environments, jobs, job definitions, job queues, and scheduling
    #   policies. ARNs for child jobs of array and multi-node parallel (MNP)
    #   jobs aren't supported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags for the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Log configuration options to send to a custom log driver for the
    # container.
    #
    # @!attribute [rw] log_driver
    #   The log driver to use for the container. The valid values that are
    #   listed for this parameter are log drivers that the Amazon ECS
    #   container agent can communicate with by default.
    #
    #   The supported log drivers are `awslogs`, `fluentd`, `gelf`,
    #   `json-file`, `journald`, `logentries`, `syslog`, and `splunk`.
    #
    #   <note markdown="1"> Jobs that are running on Fargate resources are restricted to the
    #   `awslogs` and `splunk` log drivers.
    #
    #    </note>
    #
    #   awslogs
    #
    #   : Specifies the Amazon CloudWatch Logs logging driver. For more
    #     information, see [Using the awslogs log driver][1] in the *Batch
    #     User Guide* and [Amazon CloudWatch Logs logging driver][2] in the
    #     Docker documentation.
    #
    #   fluentd
    #
    #   : Specifies the Fluentd logging driver. For more information
    #     including usage and options, see [Fluentd logging driver][3] in
    #     the *Docker documentation*.
    #
    #   gelf
    #
    #   : Specifies the Graylog Extended Format (GELF) logging driver. For
    #     more information including usage and options, see [Graylog
    #     Extended Format logging driver][4] in the *Docker documentation*.
    #
    #   journald
    #
    #   : Specifies the journald logging driver. For more information
    #     including usage and options, see [Journald logging driver][5] in
    #     the *Docker documentation*.
    #
    #   json-file
    #
    #   : Specifies the JSON file logging driver. For more information
    #     including usage and options, see [JSON File logging driver][6] in
    #     the *Docker documentation*.
    #
    #   splunk
    #
    #   : Specifies the Splunk logging driver. For more information
    #     including usage and options, see [Splunk logging driver][7] in the
    #     *Docker documentation*.
    #
    #   syslog
    #
    #   : Specifies the syslog logging driver. For more information
    #     including usage and options, see [Syslog logging driver][8] in the
    #     *Docker documentation*.
    #
    #   <note markdown="1"> If you have a custom driver that's not listed earlier that you want
    #   to work with the Amazon ECS container agent, you can fork the Amazon
    #   ECS container agent project that's [available on GitHub][9] and
    #   customize it to work with that driver. We encourage you to submit
    #   pull requests for changes that you want to have included. However,
    #   Amazon Web Services doesn't currently support running modified
    #   copies of this software.
    #
    #    </note>
    #
    #   This parameter requires version 1.18 of the Docker Remote API or
    #   greater on your container instance. To check the Docker Remote API
    #   version on your container instance, log in to your container
    #   instance and run the following command: `sudo docker version | grep
    #   "Server API version"`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/using_awslogs.html
    #   [2]: https://docs.docker.com/config/containers/logging/awslogs/
    #   [3]: https://docs.docker.com/config/containers/logging/fluentd/
    #   [4]: https://docs.docker.com/config/containers/logging/gelf/
    #   [5]: https://docs.docker.com/config/containers/logging/journald/
    #   [6]: https://docs.docker.com/config/containers/logging/json-file/
    #   [7]: https://docs.docker.com/config/containers/logging/splunk/
    #   [8]: https://docs.docker.com/config/containers/logging/syslog/
    #   [9]: https://github.com/aws/amazon-ecs-agent
    #   @return [String]
    #
    # @!attribute [rw] options
    #   The configuration options to send to the log driver. This parameter
    #   requires version 1.19 of the Docker Remote API or greater on your
    #   container instance. To check the Docker Remote API version on your
    #   container instance, log in to your container instance and run the
    #   following command: `sudo docker version | grep "Server API version"`
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] secret_options
    #   The secrets to pass to the log configuration. For more information,
    #   see [Specifying sensitive data][1] in the *Batch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/specifying-sensitive-data.html
    #   @return [Array<Types::Secret>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/LogConfiguration AWS API Documentation
    #
    class LogConfiguration < Struct.new(
      :log_driver,
      :options,
      :secret_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details for a Docker volume mount point that's used in a job's
    # container properties. This parameter maps to `Volumes` in the [Create
    # a container][1] section of the *Docker Remote API* and the `--volume`
    # option to docker run.
    #
    #
    #
    # [1]: https://docs.docker.com/engine/reference/api/docker_remote_api_v1.19/#create-a-container
    #
    # @!attribute [rw] container_path
    #   The path on the container where the host volume is mounted.
    #   @return [String]
    #
    # @!attribute [rw] read_only
    #   If this value is `true`, the container has read-only access to the
    #   volume. Otherwise, the container can write to the volume. The
    #   default value is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] source_volume
    #   The name of the volume to mount.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/MountPoint AWS API Documentation
    #
    class MountPoint < Struct.new(
      :container_path,
      :read_only,
      :source_volume)
      SENSITIVE = []
      include Aws::Structure
    end

    # The network configuration for jobs that are running on Fargate
    # resources. Jobs that are running on EC2 resources must not specify
    # this parameter.
    #
    # @!attribute [rw] assign_public_ip
    #   Indicates whether the job has a public IP address. For a job that's
    #   running on Fargate resources in a private subnet to send outbound
    #   traffic to the internet (for example, to pull container images), the
    #   private subnet requires a NAT gateway be attached to route requests
    #   to the internet. For more information, see [Amazon ECS task
    #   networking][1] in the *Amazon Elastic Container Service Developer
    #   Guide*. The default value is "`DISABLED`".
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/NetworkConfiguration AWS API Documentation
    #
    class NetworkConfiguration < Struct.new(
      :assign_public_ip)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the elastic network interface for a
    # multi-node parallel job node.
    #
    # @!attribute [rw] attachment_id
    #   The attachment ID for the network interface.
    #   @return [String]
    #
    # @!attribute [rw] ipv6_address
    #   The private IPv6 address for the network interface.
    #   @return [String]
    #
    # @!attribute [rw] private_ipv_4_address
    #   The private IPv4 address for the network interface.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/NetworkInterface AWS API Documentation
    #
    class NetworkInterface < Struct.new(
      :attachment_id,
      :ipv6_address,
      :private_ipv_4_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the details of a multi-node parallel job
    # node.
    #
    # @!attribute [rw] node_index
    #   The node index for the node. Node index numbering starts at zero.
    #   This index is also available on the node with the
    #   `AWS_BATCH_JOB_NODE_INDEX` environment variable.
    #   @return [Integer]
    #
    # @!attribute [rw] is_main_node
    #   Specifies whether the current node is the main node for a multi-node
    #   parallel job.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/NodeDetails AWS API Documentation
    #
    class NodeDetails < Struct.new(
      :node_index,
      :is_main_node)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents any node overrides to a job definition
    # that's used in a SubmitJob API operation.
    #
    # <note markdown="1"> This parameter isn't applicable to jobs that are running on Fargate
    # resources. Don't provide it for these jobs. Rather, use
    # `containerOverrides` instead.
    #
    #  </note>
    #
    # @!attribute [rw] num_nodes
    #   The number of nodes to use with a multi-node parallel job. This
    #   value overrides the number of nodes that are specified in the job
    #   definition. To use this override, you must meet the following
    #   conditions:
    #
    #   * There must be at least one node range in your job definition that
    #     has an open upper boundary, such as `:` or `n:`.
    #
    #   * The lower boundary of the node range that's specified in the job
    #     definition must be fewer than the number of nodes specified in the
    #     override.
    #
    #   * The main node index that's specified in the job definition must
    #     be fewer than the number of nodes specified in the override.
    #   @return [Integer]
    #
    # @!attribute [rw] node_property_overrides
    #   The node property overrides for the job.
    #   @return [Array<Types::NodePropertyOverride>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/NodeOverrides AWS API Documentation
    #
    class NodeOverrides < Struct.new(
      :num_nodes,
      :node_property_overrides)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the node properties of a multi-node parallel
    # job.
    #
    # <note markdown="1"> Node properties can't be specified for Amazon EKS based job
    # definitions.
    #
    #  </note>
    #
    # @!attribute [rw] num_nodes
    #   The number of nodes that are associated with a multi-node parallel
    #   job.
    #   @return [Integer]
    #
    # @!attribute [rw] main_node
    #   Specifies the node index for the main node of a multi-node parallel
    #   job. This node index value must be fewer than the number of nodes.
    #   @return [Integer]
    #
    # @!attribute [rw] node_range_properties
    #   A list of node ranges and their properties that are associated with
    #   a multi-node parallel job.
    #   @return [Array<Types::NodeRangeProperty>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/NodeProperties AWS API Documentation
    #
    class NodeProperties < Struct.new(
      :num_nodes,
      :main_node,
      :node_range_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the properties of a node that's associated
    # with a multi-node parallel job.
    #
    # @!attribute [rw] is_main_node
    #   Specifies whether the current node is the main node for a multi-node
    #   parallel job.
    #   @return [Boolean]
    #
    # @!attribute [rw] num_nodes
    #   The number of nodes that are associated with a multi-node parallel
    #   job.
    #   @return [Integer]
    #
    # @!attribute [rw] node_index
    #   The node index for the node. Node index numbering begins at zero.
    #   This index is also available on the node with the
    #   `AWS_BATCH_JOB_NODE_INDEX` environment variable.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/NodePropertiesSummary AWS API Documentation
    #
    class NodePropertiesSummary < Struct.new(
      :is_main_node,
      :num_nodes,
      :node_index)
      SENSITIVE = []
      include Aws::Structure
    end

    # The object that represents any node overrides to a job definition
    # that's used in a SubmitJob API operation.
    #
    # @!attribute [rw] target_nodes
    #   The range of nodes, using node index values, that's used to
    #   override. A range of `0:3` indicates nodes with index values of `0`
    #   through `3`. If the starting range value is omitted (`:n`), then `0`
    #   is used to start the range. If the ending range value is omitted
    #   (`n:`), then the highest possible node index is used to end the
    #   range.
    #   @return [String]
    #
    # @!attribute [rw] container_overrides
    #   The overrides that are sent to a node range.
    #   @return [Types::ContainerOverrides]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/NodePropertyOverride AWS API Documentation
    #
    class NodePropertyOverride < Struct.new(
      :target_nodes,
      :container_overrides)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the properties of the node range for a
    # multi-node parallel job.
    #
    # @!attribute [rw] target_nodes
    #   The range of nodes, using node index values. A range of `0:3`
    #   indicates nodes with index values of `0` through `3`. If the
    #   starting range value is omitted (`:n`), then `0` is used to start
    #   the range. If the ending range value is omitted (`n:`), then the
    #   highest possible node index is used to end the range. Your
    #   accumulative node ranges must account for all nodes (`0:n`). You can
    #   nest node ranges (for example, `0:10` and `4:5`). In this case, the
    #   `4:5` range properties override the `0:10` properties.
    #   @return [String]
    #
    # @!attribute [rw] container
    #   The container details for the node range.
    #   @return [Types::ContainerProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/NodeRangeProperty AWS API Documentation
    #
    class NodeRangeProperty < Struct.new(
      :target_nodes,
      :container)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the parameters for `RegisterJobDefinition`.
    #
    # @!attribute [rw] job_definition_name
    #   The name of the job definition to register. It can be up to 128
    #   letters long. It can contain uppercase and lowercase letters,
    #   numbers, hyphens (-), and underscores (\_).
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of job definition. For more information about multi-node
    #   parallel jobs, see [Creating a multi-node parallel job
    #   definition][1] in the *Batch User Guide*.
    #
    #   <note markdown="1"> If the job is run on Fargate resources, then `multinode` isn't
    #   supported.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/multi-node-job-def.html
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   Default parameter substitution placeholders to set in the job
    #   definition. Parameters are specified as a key-value pair mapping.
    #   Parameters in a `SubmitJob` request override any corresponding
    #   parameter defaults from the job definition.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] scheduling_priority
    #   The scheduling priority for jobs that are submitted with this job
    #   definition. This only affects jobs in job queues with a fair share
    #   policy. Jobs with a higher scheduling priority are scheduled before
    #   jobs with a lower scheduling priority.
    #
    #   The minimum supported value is 0 and the maximum supported value is
    #   9999.
    #   @return [Integer]
    #
    # @!attribute [rw] container_properties
    #   An object with various properties specific to Amazon ECS based
    #   single-node container-based jobs. If the job definition's `type`
    #   parameter is `container`, then you must specify either
    #   `containerProperties` or `nodeProperties`. This must not be
    #   specified for Amazon EKS based job definitions.
    #
    #   <note markdown="1"> If the job runs on Fargate resources, then you must not specify
    #   `nodeProperties`; use only `containerProperties`.
    #
    #    </note>
    #   @return [Types::ContainerProperties]
    #
    # @!attribute [rw] node_properties
    #   An object with various properties specific to multi-node parallel
    #   jobs. If you specify node properties for a job, it becomes a
    #   multi-node parallel job. For more information, see [Multi-node
    #   Parallel Jobs][1] in the *Batch User Guide*. If the job
    #   definition's `type` parameter is `container`, then you must specify
    #   either `containerProperties` or `nodeProperties`.
    #
    #   <note markdown="1"> If the job runs on Fargate resources, then you must not specify
    #   `nodeProperties`; use `containerProperties` instead.
    #
    #    </note>
    #
    #   <note markdown="1"> If the job runs on Amazon EKS resources, then you must not specify
    #   `nodeProperties`.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/multi-node-parallel-jobs.html
    #   @return [Types::NodeProperties]
    #
    # @!attribute [rw] retry_strategy
    #   The retry strategy to use for failed jobs that are submitted with
    #   this job definition. Any retry strategy that's specified during a
    #   SubmitJob operation overrides the retry strategy defined here. If a
    #   job is terminated due to a timeout, it isn't retried.
    #   @return [Types::RetryStrategy]
    #
    # @!attribute [rw] propagate_tags
    #   Specifies whether to propagate the tags from the job or job
    #   definition to the corresponding Amazon ECS task. If no value is
    #   specified, the tags are not propagated. Tags can only be propagated
    #   to the tasks during task creation. For tags with the same name, job
    #   tags are given priority over job definitions tags. If the total
    #   number of combined tags from the job and job definition is over 50,
    #   the job is moved to the `FAILED` state.
    #
    #   <note markdown="1"> If the job runs on Amazon EKS resources, then you must not specify
    #   `propagateTags`.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] timeout
    #   The timeout configuration for jobs that are submitted with this job
    #   definition, after which Batch terminates your jobs if they have not
    #   finished. If a job is terminated due to a timeout, it isn't
    #   retried. The minimum value for the timeout is 60 seconds. Any
    #   timeout configuration that's specified during a SubmitJob operation
    #   overrides the timeout configuration defined here. For more
    #   information, see [Job Timeouts][1] in the *Batch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/job_timeouts.html
    #   @return [Types::JobTimeout]
    #
    # @!attribute [rw] tags
    #   The tags that you apply to the job definition to help you categorize
    #   and organize your resources. Each tag consists of a key and an
    #   optional value. For more information, see [Tagging Amazon Web
    #   Services Resources][1] in *Batch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/using-tags.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] platform_capabilities
    #   The platform capabilities required by the job definition. If no
    #   value is specified, it defaults to `EC2`. To run the job on Fargate
    #   resources, specify `FARGATE`.
    #
    #   <note markdown="1"> If the job runs on Amazon EKS resources, then you must not specify
    #   `platformCapabilities`.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] eks_properties
    #   An object with various properties that are specific to Amazon EKS
    #   based jobs. This must not be specified for Amazon ECS based job
    #   definitions.
    #   @return [Types::EksProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/RegisterJobDefinitionRequest AWS API Documentation
    #
    class RegisterJobDefinitionRequest < Struct.new(
      :job_definition_name,
      :type,
      :parameters,
      :scheduling_priority,
      :container_properties,
      :node_properties,
      :retry_strategy,
      :propagate_tags,
      :timeout,
      :tags,
      :platform_capabilities,
      :eks_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_definition_name
    #   The name of the job definition.
    #   @return [String]
    #
    # @!attribute [rw] job_definition_arn
    #   The Amazon Resource Name (ARN) of the job definition.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The revision of the job definition.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/RegisterJobDefinitionResponse AWS API Documentation
    #
    class RegisterJobDefinitionResponse < Struct.new(
      :job_definition_name,
      :job_definition_arn,
      :revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # The type and amount of a resource to assign to a container. The
    # supported resources include `GPU`, `MEMORY`, and `VCPU`.
    #
    # @!attribute [rw] value
    #   The quantity of the specified resource to reserve for the container.
    #   The values vary based on the `type` specified.
    #
    #   type="GPU"
    #
    #   : The number of physical GPUs to reserve for the container. Make
    #     sure that the number of GPUs reserved for all containers in a job
    #     doesn't exceed the number of available GPUs on the compute
    #     resource that the job is launched on.
    #
    #     <note markdown="1"> GPUs aren't available for jobs that are running on Fargate
    #     resources.
    #
    #      </note>
    #
    #   type="MEMORY"
    #
    #   : The memory hard limit (in MiB) present to the container. This
    #     parameter is supported for jobs that are running on EC2 resources.
    #     If your container attempts to exceed the memory specified, the
    #     container is terminated. This parameter maps to `Memory` in the
    #     [Create a container][1] section of the [Docker Remote API][2] and
    #     the `--memory` option to [docker run][3]. You must specify at
    #     least 4 MiB of memory for a job. This is required but can be
    #     specified in several places for multi-node parallel (MNP) jobs. It
    #     must be specified for each node at least once. This parameter maps
    #     to `Memory` in the [Create a container][1] section of the [Docker
    #     Remote API][2] and the `--memory` option to [docker run][3].
    #
    #     <note markdown="1"> If you're trying to maximize your resource utilization by
    #     providing your jobs as much memory as possible for a particular
    #     instance type, see [Memory management][4] in the *Batch User
    #     Guide*.
    #
    #      </note>
    #
    #     For jobs that are running on Fargate resources, then `value` is
    #     the hard limit (in MiB), and must match one of the supported
    #     values and the `VCPU` values must be one of the values supported
    #     for that memory value.
    #
    #     value = 512
    #
    #     : `VCPU` = 0.25
    #
    #     value = 1024
    #
    #     : `VCPU` = 0.25 or 0.5
    #
    #     value = 2048
    #
    #     : `VCPU` = 0.25, 0.5, or 1
    #
    #     value = 3072
    #
    #     : `VCPU` = 0.5, or 1
    #
    #     value = 4096
    #
    #     : `VCPU` = 0.5, 1, or 2
    #
    #     value = 5120, 6144, or 7168
    #
    #     : `VCPU` = 1 or 2
    #
    #     value = 8192
    #
    #     : `VCPU` = 1, 2, or 4
    #
    #     value = 9216, 10240, 11264, 12288, 13312, 14336, or 15360
    #
    #     : `VCPU` = 2 or 4
    #
    #     value = 16384
    #
    #     : `VCPU` = 2, 4, or 8
    #
    #     value = 17408, 18432, 19456, 21504, 22528, 23552, 25600, 26624, 27648, 29696, or 30720
    #
    #     : `VCPU` = 4
    #
    #     value = 20480, 24576, or 28672
    #
    #     : `VCPU` = 4 or 8
    #
    #     value = 36864, 45056, 53248, or 61440
    #
    #     : `VCPU` = 8
    #
    #     value = 32768, 40960, 49152, or 57344
    #
    #     : `VCPU` = 8 or 16
    #
    #     value = 65536, 73728, 81920, 90112, 98304, 106496, 114688, or 122880
    #
    #     : `VCPU` = 16
    #
    #   type="VCPU"
    #
    #   : The number of vCPUs reserved for the container. This parameter
    #     maps to `CpuShares` in the [Create a container][1] section of the
    #     [Docker Remote API][2] and the `--cpu-shares` option to [docker
    #     run][3]. Each vCPU is equivalent to 1,024 CPU shares. For EC2
    #     resources, you must specify at least one vCPU. This is required
    #     but can be specified in several places; it must be specified for
    #     each node at least once.
    #
    #     The default for the Fargate On-Demand vCPU resource count quota is
    #     6 vCPUs. For more information about Fargate quotas, see [Fargate
    #     quotas][5] in the *Amazon Web Services General Reference*.
    #
    #     For jobs that are running on Fargate resources, then `value` must
    #     match one of the supported values and the `MEMORY` values must be
    #     one of the values supported for that `VCPU` value. The supported
    #     values are 0.25, 0.5, 1, 2, 4, 8, and 16
    #
    #     value = 0.25
    #
    #     : `MEMORY` = 512, 1024, or 2048
    #
    #     value = 0.5
    #
    #     : `MEMORY` = 1024, 2048, 3072, or 4096
    #
    #     value = 1
    #
    #     : `MEMORY` = 2048, 3072, 4096, 5120, 6144, 7168, or 8192
    #
    #     value = 2
    #
    #     : `MEMORY` = 4096, 5120, 6144, 7168, 8192, 9216, 10240, 11264,
    #       12288, 13312, 14336, 15360, or 16384
    #
    #     value = 4
    #
    #     : `MEMORY` = 8192, 9216, 10240, 11264, 12288, 13312, 14336, 15360,
    #       16384, 17408, 18432, 19456, 20480, 21504, 22528, 23552, 24576,
    #       25600, 26624, 27648, 28672, 29696, or 30720
    #
    #     value = 8
    #
    #     : `MEMORY` = 16384, 20480, 24576, 28672, 32768, 36864, 40960,
    #       45056, 49152, 53248, 57344, or 61440
    #
    #     value = 16
    #
    #     : `MEMORY` = 32768, 40960, 49152, 57344, 65536, 73728, 81920,
    #       90112, 98304, 106496, 114688, or 122880
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.23/#create-a-container
    #   [2]: https://docs.docker.com/engine/api/v1.23/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   [4]: https://docs.aws.amazon.com/batch/latest/userguide/memory-management.html
    #   [5]: https://docs.aws.amazon.com/general/latest/gr/ecs-service.html#service-quotas-fargate
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of resource to assign to a container. The supported
    #   resources include `GPU`, `MEMORY`, and `VCPU`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/ResourceRequirement AWS API Documentation
    #
    class ResourceRequirement < Struct.new(
      :value,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The retry strategy that's associated with a job. For more
    # information, see [Automated job retries][1] in the *Batch User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/batch/latest/userguide/job_retries.html
    #
    # @!attribute [rw] attempts
    #   The number of times to move a job to the `RUNNABLE` status. You can
    #   specify between 1 and 10 attempts. If the value of `attempts` is
    #   greater than one, the job is retried on failure the same number of
    #   attempts as the value.
    #   @return [Integer]
    #
    # @!attribute [rw] evaluate_on_exit
    #   Array of up to 5 objects that specify the conditions where jobs are
    #   retried or failed. If this parameter is specified, then the
    #   `attempts` parameter must also be specified. If none of the listed
    #   conditions match, then the job is retried.
    #   @return [Array<Types::EvaluateOnExit>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/RetryStrategy AWS API Documentation
    #
    class RetryStrategy < Struct.new(
      :attempts,
      :evaluate_on_exit)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the compute environment architecture for
    # Batch jobs on Fargate.
    #
    # @!attribute [rw] operating_system_family
    #   The operating system for the compute environment. Valid values are:
    #   `LINUX` (default), `WINDOWS_SERVER_2019_CORE`,
    #   `WINDOWS_SERVER_2019_FULL`, `WINDOWS_SERVER_2022_CORE`, and
    #   `WINDOWS_SERVER_2022_FULL`.
    #
    #   <note markdown="1"> The following parameters can’t be set for Windows containers:
    #   `linuxParameters`, `privileged`, `user`, `ulimits`,
    #   `readonlyRootFilesystem`, and `efsVolumeConfiguration`.
    #
    #    </note>
    #
    #   <note markdown="1"> The Batch Scheduler checks before registering a task definition with
    #   Fargate. If the job requires a Windows container and the first
    #   compute environment is `LINUX`, the compute environment is skipped
    #   and the next is checked until a Windows-based compute environment is
    #   found.
    #
    #    </note>
    #
    #   <note markdown="1"> Fargate Spot is not supported for Windows-based containers on
    #   Fargate. A job queue will be blocked if a Fargate Windows job is
    #   submitted to a job queue with only Fargate Spot compute
    #   environments. However, you can attach both `FARGATE` and
    #   `FARGATE_SPOT` compute environments to the same job queue.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] cpu_architecture
    #   The vCPU architecture. The default value is `X86_64`. Valid values
    #   are `X86_64` and ` ARM64`.
    #
    #   <note markdown="1"> This parameter must be set to `X86_64` for Windows containers.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/RuntimePlatform AWS API Documentation
    #
    class RuntimePlatform < Struct.new(
      :operating_system_family,
      :cpu_architecture)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a scheduling policy.
    #
    # @!attribute [rw] name
    #   The name of the scheduling policy.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the scheduling policy. An example
    #   is
    #   `arn:aws:batch:us-east-1:123456789012:scheduling-policy/HighPriority
    #   `.
    #   @return [String]
    #
    # @!attribute [rw] fairshare_policy
    #   The fair share policy for the scheduling policy.
    #   @return [Types::FairsharePolicy]
    #
    # @!attribute [rw] tags
    #   The tags that you apply to the scheduling policy to categorize and
    #   organize your resources. Each tag consists of a key and an optional
    #   value. For more information, see [Tagging Amazon Web Services
    #   resources][1] in *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/SchedulingPolicyDetail AWS API Documentation
    #
    class SchedulingPolicyDetail < Struct.new(
      :name,
      :arn,
      :fairshare_policy,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains the details of a scheduling policy that's
    # returned in a `ListSchedulingPolicy` action.
    #
    # @!attribute [rw] arn
    #   Amazon Resource Name (ARN) of the scheduling policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/SchedulingPolicyListingDetail AWS API Documentation
    #
    class SchedulingPolicyListingDetail < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents the secret to expose to your container.
    # Secrets can be exposed to a container in the following ways:
    #
    # * To inject sensitive data into your containers as environment
    #   variables, use the `secrets` container definition parameter.
    #
    # * To reference sensitive information in the log configuration of a
    #   container, use the `secretOptions` container definition parameter.
    #
    # For more information, see [Specifying sensitive data][1] in the *Batch
    # User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/batch/latest/userguide/specifying-sensitive-data.html
    #
    # @!attribute [rw] name
    #   The name of the secret.
    #   @return [String]
    #
    # @!attribute [rw] value_from
    #   The secret to expose to the container. The supported values are
    #   either the full Amazon Resource Name (ARN) of the Secrets Manager
    #   secret or the full ARN of the parameter in the Amazon Web Services
    #   Systems Manager Parameter Store.
    #
    #   <note markdown="1"> If the Amazon Web Services Systems Manager Parameter Store parameter
    #   exists in the same Region as the job you're launching, then you can
    #   use either the full Amazon Resource Name (ARN) or name of the
    #   parameter. If the parameter exists in a different Region, then the
    #   full ARN must be specified.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/Secret AWS API Documentation
    #
    class Secret < Struct.new(
      :name,
      :value_from)
      SENSITIVE = []
      include Aws::Structure
    end

    # These errors are usually caused by a server issue.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/ServerException AWS API Documentation
    #
    class ServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the weights for the fair share identifiers for the fair
    # share policy. Fair share identifiers that aren't included have a
    # default weight of `1.0`.
    #
    # @!attribute [rw] share_identifier
    #   A fair share identifier or fair share identifier prefix. If the
    #   string ends with an asterisk (*), this entry specifies the weight
    #   factor to use for fair share identifiers that start with that
    #   prefix. The list of fair share identifiers in a fair share policy
    #   can't overlap. For example, you can't have one that specifies a
    #   `shareIdentifier` of `UserA*` and another that specifies a
    #   `shareIdentifier` of `UserA-1`.
    #
    #   There can be no more than 500 fair share identifiers active in a job
    #   queue.
    #
    #   The string is limited to 255 alphanumeric characters, and can be
    #   followed by an asterisk (*).
    #   @return [String]
    #
    # @!attribute [rw] weight_factor
    #   The weight factor for the fair share identifier. The default value
    #   is 1.0. A lower value has a higher priority for compute resources.
    #   For example, jobs that use a share identifier with a weight factor
    #   of 0.125 (1/8) get 8 times the compute resources of jobs that use a
    #   share identifier with a weight factor of 1.
    #
    #   The smallest supported value is 0.0001, and the largest supported
    #   value is 999.9999.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/ShareAttributes AWS API Documentation
    #
    class ShareAttributes < Struct.new(
      :share_identifier,
      :weight_factor)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the parameters for `SubmitJob`.
    #
    # @!attribute [rw] job_name
    #   The name of the job. It can be up to 128 letters long. The first
    #   character must be alphanumeric, can contain uppercase and lowercase
    #   letters, numbers, hyphens (-), and underscores (\_).
    #   @return [String]
    #
    # @!attribute [rw] job_queue
    #   The job queue where the job is submitted. You can specify either the
    #   name or the Amazon Resource Name (ARN) of the queue.
    #   @return [String]
    #
    # @!attribute [rw] share_identifier
    #   The share identifier for the job. Don't specify this parameter if
    #   the job queue doesn't have a scheduling policy. If the job queue
    #   has a scheduling policy, then this parameter must be specified.
    #
    #   This string is limited to 255 alphanumeric characters, and can be
    #   followed by an asterisk (*).
    #   @return [String]
    #
    # @!attribute [rw] scheduling_priority_override
    #   The scheduling priority for the job. This only affects jobs in job
    #   queues with a fair share policy. Jobs with a higher scheduling
    #   priority are scheduled before jobs with a lower scheduling priority.
    #   This overrides any scheduling priority in the job definition.
    #
    #   The minimum supported value is 0 and the maximum supported value is
    #   9999.
    #   @return [Integer]
    #
    # @!attribute [rw] array_properties
    #   The array properties for the submitted job, such as the size of the
    #   array. The array size can be between 2 and 10,000. If you specify
    #   array properties for a job, it becomes an array job. For more
    #   information, see [Array Jobs][1] in the *Batch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/array_jobs.html
    #   @return [Types::ArrayProperties]
    #
    # @!attribute [rw] depends_on
    #   A list of dependencies for the job. A job can depend upon a maximum
    #   of 20 jobs. You can specify a `SEQUENTIAL` type dependency without
    #   specifying a job ID for array jobs so that each child array job
    #   completes sequentially, starting at index 0. You can also specify an
    #   `N_TO_N` type dependency with a job ID for array jobs. In that case,
    #   each index child of this job must wait for the corresponding index
    #   child of each dependency to complete before it can begin.
    #   @return [Array<Types::JobDependency>]
    #
    # @!attribute [rw] job_definition
    #   The job definition used by this job. This value can be one of
    #   `definition-name`, `definition-name:revision`, or the Amazon
    #   Resource Name (ARN) for the job definition, with or without the
    #   revision
    #   (`arn:aws:batch:region:account:job-definition/definition-name:revision
    #   `, or `arn:aws:batch:region:account:job-definition/definition-name
    #   `).
    #
    #   If the revision is not specified, then the latest active revision is
    #   used.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   Additional parameters passed to the job that replace parameter
    #   substitution placeholders that are set in the job definition.
    #   Parameters are specified as a key and value pair mapping. Parameters
    #   in a `SubmitJob` request override any corresponding parameter
    #   defaults from the job definition.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] container_overrides
    #   An object with various properties that override the defaults for the
    #   job definition that specify the name of a container in the specified
    #   job definition and the overrides it should receive. You can override
    #   the default command for a container, which is specified in the job
    #   definition or the Docker image, with a `command` override. You can
    #   also override existing environment variables on a container or add
    #   new environment variables to it with an `environment` override.
    #   @return [Types::ContainerOverrides]
    #
    # @!attribute [rw] node_overrides
    #   A list of node overrides in JSON format that specify the node range
    #   to target and the container overrides for that node range.
    #
    #   <note markdown="1"> This parameter isn't applicable to jobs that are running on Fargate
    #   resources; use `containerOverrides` instead.
    #
    #    </note>
    #   @return [Types::NodeOverrides]
    #
    # @!attribute [rw] retry_strategy
    #   The retry strategy to use for failed jobs from this SubmitJob
    #   operation. When a retry strategy is specified here, it overrides the
    #   retry strategy defined in the job definition.
    #   @return [Types::RetryStrategy]
    #
    # @!attribute [rw] propagate_tags
    #   Specifies whether to propagate the tags from the job or job
    #   definition to the corresponding Amazon ECS task. If no value is
    #   specified, the tags aren't propagated. Tags can only be propagated
    #   to the tasks during task creation. For tags with the same name, job
    #   tags are given priority over job definitions tags. If the total
    #   number of combined tags from the job and job definition is over 50,
    #   the job is moved to the `FAILED` state. When specified, this
    #   overrides the tag propagation setting in the job definition.
    #   @return [Boolean]
    #
    # @!attribute [rw] timeout
    #   The timeout configuration for this SubmitJob operation. You can
    #   specify a timeout duration after which Batch terminates your jobs if
    #   they haven't finished. If a job is terminated due to a timeout, it
    #   isn't retried. The minimum value for the timeout is 60 seconds.
    #   This configuration overrides any timeout configuration specified in
    #   the job definition. For array jobs, child jobs have the same timeout
    #   configuration as the parent job. For more information, see [Job
    #   Timeouts][1] in the *Amazon Elastic Container Service Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/job_timeouts.html
    #   @return [Types::JobTimeout]
    #
    # @!attribute [rw] tags
    #   The tags that you apply to the job request to help you categorize
    #   and organize your resources. Each tag consists of a key and an
    #   optional value. For more information, see [Tagging Amazon Web
    #   Services Resources][1] in *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] eks_properties_override
    #   An object that can only be specified for jobs that are run on Amazon
    #   EKS resources with various properties that override defaults for the
    #   job definition.
    #   @return [Types::EksPropertiesOverride]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/SubmitJobRequest AWS API Documentation
    #
    class SubmitJobRequest < Struct.new(
      :job_name,
      :job_queue,
      :share_identifier,
      :scheduling_priority_override,
      :array_properties,
      :depends_on,
      :job_definition,
      :parameters,
      :container_overrides,
      :node_overrides,
      :retry_strategy,
      :propagate_tags,
      :timeout,
      :tags,
      :eks_properties_override)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_arn
    #   The Amazon Resource Name (ARN) for the job.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The name of the job.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The unique identifier for the job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/SubmitJobResponse AWS API Documentation
    #
    class SubmitJobResponse < Struct.new(
      :job_arn,
      :job_name,
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the parameters for `TagResource`.
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that tags are added
    #   to. Batch resources that support tags are compute environments,
    #   jobs, job definitions, job queues, and scheduling policies. ARNs for
    #   child jobs of array and multi-node parallel (MNP) jobs aren't
    #   supported.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags that you apply to the resource to help you categorize and
    #   organize your resources. Each tag consists of a key and an optional
    #   value. For more information, see [Tagging Amazon Web Services
    #   Resources][1] in *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Contains the parameters for `TerminateJob`.
    #
    # @!attribute [rw] job_id
    #   The Batch job ID of the job to terminate.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   A message to attach to the job that explains the reason for
    #   canceling it. This message is returned by future DescribeJobs
    #   operations on the job. This message is also recorded in the Batch
    #   activity logs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/TerminateJobRequest AWS API Documentation
    #
    class TerminateJobRequest < Struct.new(
      :job_id,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/TerminateJobResponse AWS API Documentation
    #
    class TerminateJobResponse < Aws::EmptyStructure; end

    # The container path, mount options, and size of the `tmpfs` mount.
    #
    # <note markdown="1"> This object isn't applicable to jobs that are running on Fargate
    # resources.
    #
    #  </note>
    #
    # @!attribute [rw] container_path
    #   The absolute file path in the container where the `tmpfs` volume is
    #   mounted.
    #   @return [String]
    #
    # @!attribute [rw] size
    #   The size (in MiB) of the `tmpfs` volume.
    #   @return [Integer]
    #
    # @!attribute [rw] mount_options
    #   The list of `tmpfs` volume mount options.
    #
    #   Valid values: "`defaults`" \| "`ro`" \| "`rw`" \| "`suid`"
    #   \| "`nosuid`" \| "`dev`" \| "`nodev`" \| "`exec`" \|
    #   "`noexec`" \| "`sync`" \| "`async`" \| "`dirsync`" \|
    #   "`remount`" \| "`mand`" \| "`nomand`" \| "`atime`" \|
    #   "`noatime`" \| "`diratime`" \| "`nodiratime`" \| "`bind`" \|
    #   "`rbind" | "unbindable" | "runbindable" | "private" | "rprivate" |
    #   "shared" | "rshared" | "slave" | "rslave" | "relatime`" \|
    #   "`norelatime`" \| "`strictatime`" \| "`nostrictatime`" \|
    #   "`mode`" \| "`uid`" \| "`gid`" \| "`nr_inodes`" \|
    #   "`nr_blocks`" \| "`mpol`"
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/Tmpfs AWS API Documentation
    #
    class Tmpfs < Struct.new(
      :container_path,
      :size,
      :mount_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `ulimit` settings to pass to the container.
    #
    # <note markdown="1"> This object isn't applicable to jobs that are running on Fargate
    # resources.
    #
    #  </note>
    #
    # @!attribute [rw] hard_limit
    #   The hard limit for the `ulimit` type.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The `type` of the `ulimit`.
    #   @return [String]
    #
    # @!attribute [rw] soft_limit
    #   The soft limit for the `ulimit` type.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/Ulimit AWS API Documentation
    #
    class Ulimit < Struct.new(
      :hard_limit,
      :name,
      :soft_limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the parameters for `UntagResource`.
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource from which to delete
    #   tags. Batch resources that support tags are compute environments,
    #   jobs, job definitions, job queues, and scheduling policies. ARNs for
    #   child jobs of array and multi-node parallel (MNP) jobs aren't
    #   supported.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the tags to be removed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # Contains the parameters for `UpdateComputeEnvironment`.
    #
    # @!attribute [rw] compute_environment
    #   The name or full Amazon Resource Name (ARN) of the compute
    #   environment to update.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the compute environment. Compute environments in the
    #   `ENABLED` state can accept jobs from a queue and scale in or out
    #   automatically based on the workload demand of its associated queues.
    #
    #   If the state is `ENABLED`, then the Batch scheduler can attempt to
    #   place jobs from an associated job queue on the compute resources
    #   within the environment. If the compute environment is managed, then
    #   it can scale its instances out or in automatically, based on the job
    #   queue demand.
    #
    #   If the state is `DISABLED`, then the Batch scheduler doesn't
    #   attempt to place jobs within the environment. Jobs in a `STARTING`
    #   or `RUNNING` state continue to progress normally. Managed compute
    #   environments in the `DISABLED` state don't scale out.
    #
    #   <note markdown="1"> Compute environments in a `DISABLED` state may continue to incur
    #   billing charges. To prevent additional charges, turn off and then
    #   delete the compute environment. For more information, see [State][1]
    #   in the *Batch User Guide*.
    #
    #    </note>
    #
    #   When an instance is idle, the instance scales down to the `minvCpus`
    #   value. However, the instance size doesn't change. For example,
    #   consider a `c5.8xlarge` instance with a `minvCpus` value of `4` and
    #   a `desiredvCpus` value of `36`. This instance doesn't scale down to
    #   a `c5.large` instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/compute_environment_parameters.html#compute_environment_state
    #   @return [String]
    #
    # @!attribute [rw] unmanagedv_cpus
    #   The maximum number of vCPUs expected to be used for an unmanaged
    #   compute environment. Don't specify this parameter for a managed
    #   compute environment. This parameter is only used for fair share
    #   scheduling to reserve vCPU capacity for new share identifiers. If
    #   this parameter isn't provided for a fair share job queue, no vCPU
    #   capacity is reserved.
    #   @return [Integer]
    #
    # @!attribute [rw] compute_resources
    #   Details of the compute resources managed by the compute environment.
    #   Required for a managed compute environment. For more information,
    #   see [Compute Environments][1] in the *Batch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html
    #   @return [Types::ComputeResourceUpdate]
    #
    # @!attribute [rw] service_role
    #   The full Amazon Resource Name (ARN) of the IAM role that allows
    #   Batch to make calls to other Amazon Web Services services on your
    #   behalf. For more information, see [Batch service IAM role][1] in the
    #   *Batch User Guide*.
    #
    #   If the compute environment has a service-linked role, it can't be
    #   changed to use a regular IAM role. Likewise, if the compute
    #   environment has a regular IAM role, it can't be changed to use a
    #   service-linked role. To update the parameters for the compute
    #   environment that require an infrastructure update to change, the
    #   **AWSServiceRoleForBatch** service-linked role must be used. For
    #   more information, see [Updating compute environments][2] in the
    #   *Batch User Guide*.
    #
    #   If your specified role has a path other than `/`, then you must
    #   either specify the full role ARN (recommended) or prefix the role
    #   name with the path.
    #
    #   <note markdown="1"> Depending on how you created your Batch service role, its ARN might
    #   contain the `service-role` path prefix. When you only specify the
    #   name of the service role, Batch assumes that your ARN doesn't use
    #   the `service-role` path prefix. Because of this, we recommend that
    #   you specify the full ARN of your service role when you create
    #   compute environments.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/service_IAM_role.html
    #   [2]: https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html
    #   @return [String]
    #
    # @!attribute [rw] update_policy
    #   Specifies the updated infrastructure update policy for the compute
    #   environment. For more information about infrastructure updates, see
    #   [Updating compute environments][1] in the *Batch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html
    #   @return [Types::UpdatePolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/UpdateComputeEnvironmentRequest AWS API Documentation
    #
    class UpdateComputeEnvironmentRequest < Struct.new(
      :compute_environment,
      :state,
      :unmanagedv_cpus,
      :compute_resources,
      :service_role,
      :update_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] compute_environment_name
    #   The name of the compute environment. It can be up to 128 characters
    #   long. It can contain uppercase and lowercase letters, numbers,
    #   hyphens (-), and underscores (\_).
    #   @return [String]
    #
    # @!attribute [rw] compute_environment_arn
    #   The Amazon Resource Name (ARN) of the compute environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/UpdateComputeEnvironmentResponse AWS API Documentation
    #
    class UpdateComputeEnvironmentResponse < Struct.new(
      :compute_environment_name,
      :compute_environment_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the parameters for `UpdateJobQueue`.
    #
    # @!attribute [rw] job_queue
    #   The name or the Amazon Resource Name (ARN) of the job queue.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Describes the queue's ability to accept new jobs. If the job queue
    #   state is `ENABLED`, it can accept jobs. If the job queue state is
    #   `DISABLED`, new jobs can't be added to the queue, but jobs already
    #   in the queue can finish.
    #   @return [String]
    #
    # @!attribute [rw] scheduling_policy_arn
    #   Amazon Resource Name (ARN) of the fair share scheduling policy. Once
    #   a job queue is created, the fair share scheduling policy can be
    #   replaced but not removed. The format is
    #   `aws:Partition:batch:Region:Account:scheduling-policy/Name `. For
    #   example,
    #   `aws:aws:batch:us-west-2:123456789012:scheduling-policy/MySchedulingPolicy`.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority of the job queue. Job queues with a higher priority (or
    #   a higher integer value for the `priority` parameter) are evaluated
    #   first when associated with the same compute environment. Priority is
    #   determined in descending order. For example, a job queue with a
    #   priority value of `10` is given scheduling preference over a job
    #   queue with a priority value of `1`. All of the compute environments
    #   must be either EC2 (`EC2` or `SPOT`) or Fargate (`FARGATE` or
    #   `FARGATE_SPOT`). EC2 and Fargate compute environments can't be
    #   mixed.
    #   @return [Integer]
    #
    # @!attribute [rw] compute_environment_order
    #   Details the set of compute environments mapped to a job queue and
    #   their order relative to each other. This is one of the parameters
    #   used by the job scheduler to determine which compute environment
    #   runs a given job. Compute environments must be in the `VALID` state
    #   before you can associate them with a job queue. All of the compute
    #   environments must be either EC2 (`EC2` or `SPOT`) or Fargate
    #   (`FARGATE` or `FARGATE_SPOT`). EC2 and Fargate compute environments
    #   can't be mixed.
    #
    #   <note markdown="1"> All compute environments that are associated with a job queue must
    #   share the same architecture. Batch doesn't support mixing compute
    #   environment architecture types in a single job queue.
    #
    #    </note>
    #   @return [Array<Types::ComputeEnvironmentOrder>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/UpdateJobQueueRequest AWS API Documentation
    #
    class UpdateJobQueueRequest < Struct.new(
      :job_queue,
      :state,
      :scheduling_policy_arn,
      :priority,
      :compute_environment_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_queue_name
    #   The name of the job queue.
    #   @return [String]
    #
    # @!attribute [rw] job_queue_arn
    #   The Amazon Resource Name (ARN) of the job queue.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/UpdateJobQueueResponse AWS API Documentation
    #
    class UpdateJobQueueResponse < Struct.new(
      :job_queue_name,
      :job_queue_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the infrastructure update policy for the compute
    # environment. For more information about infrastructure updates, see
    # [Updating compute environments][1] in the *Batch User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html
    #
    # @!attribute [rw] terminate_jobs_on_update
    #   Specifies whether jobs are automatically terminated when the
    #   computer environment infrastructure is updated. The default value is
    #   `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] job_execution_timeout_minutes
    #   Specifies the job timeout (in minutes) when the compute environment
    #   infrastructure is updated. The default value is 30.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/UpdatePolicy AWS API Documentation
    #
    class UpdatePolicy < Struct.new(
      :terminate_jobs_on_update,
      :job_execution_timeout_minutes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the parameters for `UpdateSchedulingPolicy`.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the scheduling policy to update.
    #   @return [String]
    #
    # @!attribute [rw] fairshare_policy
    #   The fair share policy.
    #   @return [Types::FairsharePolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/UpdateSchedulingPolicyRequest AWS API Documentation
    #
    class UpdateSchedulingPolicyRequest < Struct.new(
      :arn,
      :fairshare_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/UpdateSchedulingPolicyResponse AWS API Documentation
    #
    class UpdateSchedulingPolicyResponse < Aws::EmptyStructure; end

    # A data volume that's used in a job's container properties.
    #
    # @!attribute [rw] host
    #   The contents of the `host` parameter determine whether your data
    #   volume persists on the host container instance and where it's
    #   stored. If the host parameter is empty, then the Docker daemon
    #   assigns a host path for your data volume. However, the data isn't
    #   guaranteed to persist after the containers that are associated with
    #   it stop running.
    #
    #   <note markdown="1"> This parameter isn't applicable to jobs that are running on Fargate
    #   resources and shouldn't be provided.
    #
    #    </note>
    #   @return [Types::Host]
    #
    # @!attribute [rw] name
    #   The name of the volume. It can be up to 255 characters long. It can
    #   contain uppercase and lowercase letters, numbers, hyphens (-), and
    #   underscores (\_). This name is referenced in the `sourceVolume`
    #   parameter of container definition `mountPoints`.
    #   @return [String]
    #
    # @!attribute [rw] efs_volume_configuration
    #   This parameter is specified when you're using an Amazon Elastic
    #   File System file system for job storage. Jobs that are running on
    #   Fargate resources must specify a `platformVersion` of at least
    #   `1.4.0`.
    #   @return [Types::EFSVolumeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/Volume AWS API Documentation
    #
    class Volume < Struct.new(
      :host,
      :name,
      :efs_volume_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
