# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Batch
  module Types

    # An object representing an AWS Batch array job.
    #
    # @note When making an API call, you may pass ArrayProperties
    #   data as a hash:
    #
    #       {
    #         size: 1,
    #       }
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

    # An object representing the array properties of a job.
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
    #   The job index within the array that is associated with this job.
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

    # An object representing the array properties of a job.
    #
    # @!attribute [rw] size
    #   The size of the array job. This parameter is returned for parent
    #   array jobs.
    #   @return [Integer]
    #
    # @!attribute [rw] index
    #   The job index within the array that is associated with this job.
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

    # An object representing the details of a container that is part of a
    # job attempt.
    #
    # @!attribute [rw] container_instance_arn
    #   The Amazon Resource Name (ARN) of the Amazon ECS container instance
    #   that hosts the job attempt.
    #   @return [String]
    #
    # @!attribute [rw] task_arn
    #   The Amazon Resource Name (ARN) of the Amazon ECS task that is
    #   associated with the job attempt. Each container attempt receives a
    #   task ARN when they reach the `STARTING` status.
    #   @return [String]
    #
    # @!attribute [rw] exit_code
    #   The exit code for the job attempt. A non-zero exit code is
    #   considered a failure.
    #   @return [Integer]
    #
    # @!attribute [rw] reason
    #   A short (255 max characters) human-readable string to provide
    #   additional details about a running or stopped container.
    #   @return [String]
    #
    # @!attribute [rw] log_stream_name
    #   The name of the CloudWatch Logs log stream associated with the
    #   container. The log group for AWS Batch jobs is `/aws/batch/job`.
    #   Each container attempt receives a log stream name when they reach
    #   the `RUNNING` status.
    #   @return [String]
    #
    # @!attribute [rw] network_interfaces
    #   The network interfaces associated with the job attempt.
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

    # An object representing a job attempt.
    #
    # @!attribute [rw] container
    #   Details about the container in this job attempt.
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
    #   A short, human-readable string to provide additional details about
    #   the current status of the job attempt.
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

    # @note When making an API call, you may pass CancelJobRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "String", # required
    #         reason: "String", # required
    #       }
    #
    # @!attribute [rw] job_id
    #   The AWS Batch job ID of the job to cancel.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   A message to attach to the job that explains the reason for
    #   canceling it. This message is returned by future DescribeJobs
    #   operations on the job. This message is also recorded in the AWS
    #   Batch activity logs.
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

    # These errors are usually caused by a client action, such as using an
    # action or resource on behalf of a user that doesn't have permissions
    # to use the action or resource, or specifying an identifier that is not
    # valid.
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

    # An object representing an AWS Batch compute environment.
    #
    # @!attribute [rw] compute_environment_name
    #   The name of the compute environment.
    #   @return [String]
    #
    # @!attribute [rw] compute_environment_arn
    #   The Amazon Resource Name (ARN) of the compute environment.
    #   @return [String]
    #
    # @!attribute [rw] ecs_cluster_arn
    #   The Amazon Resource Name (ARN) of the underlying Amazon ECS cluster
    #   used by the compute environment.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags applied to the compute environment.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   The type of the compute environment.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the compute environment. The valid values are `ENABLED`
    #   or `DISABLED`.
    #
    #   If the state is `ENABLED`, then the AWS Batch scheduler can attempt
    #   to place jobs from an associated job queue on the compute resources
    #   within the environment. If the compute environment is managed, then
    #   it can scale its instances out or in automatically, based on the job
    #   queue demand.
    #
    #   If the state is `DISABLED`, then the AWS Batch scheduler does not
    #   attempt to place jobs within the environment. Jobs in a `STARTING`
    #   or `RUNNING` state continue to progress normally. Managed compute
    #   environments in the `DISABLED` state do not scale out. However, they
    #   scale in to `minvCpus` value after instances become idle.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the compute environment (for example,
    #   `CREATING` or `VALID`).
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   A short, human-readable string to provide additional details about
    #   the current status of the compute environment.
    #   @return [String]
    #
    # @!attribute [rw] compute_resources
    #   The compute resources defined for the compute environment.
    #   @return [Types::ComputeResource]
    #
    # @!attribute [rw] service_role
    #   The service role associated with the compute environment that allows
    #   AWS Batch to make calls to AWS API operations on your behalf.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/ComputeEnvironmentDetail AWS API Documentation
    #
    class ComputeEnvironmentDetail < Struct.new(
      :compute_environment_name,
      :compute_environment_arn,
      :ecs_cluster_arn,
      :tags,
      :type,
      :state,
      :status,
      :status_reason,
      :compute_resources,
      :service_role)
      SENSITIVE = []
      include Aws::Structure
    end

    # The order in which compute environments are tried for job placement
    # within a queue. Compute environments are tried in ascending order. For
    # example, if two compute environments are associated with a job queue,
    # the compute environment with a lower order integer value is tried for
    # job placement first.
    #
    # @note When making an API call, you may pass ComputeEnvironmentOrder
    #   data as a hash:
    #
    #       {
    #         order: 1, # required
    #         compute_environment: "String", # required
    #       }
    #
    # @!attribute [rw] order
    #   The order of the compute environment.
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

    # An object representing an AWS Batch compute resource.
    #
    # @note When making an API call, you may pass ComputeResource
    #   data as a hash:
    #
    #       {
    #         type: "EC2", # required, accepts EC2, SPOT
    #         allocation_strategy: "BEST_FIT", # accepts BEST_FIT, BEST_FIT_PROGRESSIVE, SPOT_CAPACITY_OPTIMIZED
    #         minv_cpus: 1, # required
    #         maxv_cpus: 1, # required
    #         desiredv_cpus: 1,
    #         instance_types: ["String"], # required
    #         image_id: "String",
    #         subnets: ["String"], # required
    #         security_group_ids: ["String"],
    #         ec2_key_pair: "String",
    #         instance_role: "String", # required
    #         tags: {
    #           "String" => "String",
    #         },
    #         placement_group: "String",
    #         bid_percentage: 1,
    #         spot_iam_fleet_role: "String",
    #         launch_template: {
    #           launch_template_id: "String",
    #           launch_template_name: "String",
    #           version: "String",
    #         },
    #       }
    #
    # @!attribute [rw] type
    #   The type of compute environment: `EC2` or `SPOT`.
    #   @return [String]
    #
    # @!attribute [rw] allocation_strategy
    #   The allocation strategy to use for the compute resource in case not
    #   enough instances of the best fitting instance type can be allocated.
    #   This could be due to availability of the instance type in the region
    #   or [Amazon EC2 service limits][1]. If this is not specified, the
    #   default is `BEST_FIT`, which will use only the best fitting instance
    #   type, waiting for additional capacity if it's not available. This
    #   allocation strategy keeps costs lower but can limit scaling. If you
    #   are using Spot Fleets with `BEST_FIT` then the Spot Fleet IAM Role
    #   must be specified. `BEST_FIT_PROGRESSIVE` will select additional
    #   instance types that are large enough to meet the requirements of the
    #   jobs in the queue, with a preference for instance types with a lower
    #   cost per vCPU. `SPOT_CAPACITY_OPTIMIZED` is only available for Spot
    #   Instance compute resources and will select additional instance types
    #   that are large enough to meet the requirements of the jobs in the
    #   queue, with a preference for instance types that are less likely to
    #   be interrupted. For more information, see [Allocation Strategies][2]
    #   in the *AWS Batch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-resource-limits.html
    #   [2]: https://docs.aws.amazon.com/batch/latest/userguide/allocation-strategies.html
    #   @return [String]
    #
    # @!attribute [rw] minv_cpus
    #   The minimum number of Amazon EC2 vCPUs that an environment should
    #   maintain (even if the compute environment is `DISABLED`).
    #   @return [Integer]
    #
    # @!attribute [rw] maxv_cpus
    #   The maximum number of Amazon EC2 vCPUs that an environment can
    #   reach.
    #   @return [Integer]
    #
    # @!attribute [rw] desiredv_cpus
    #   The desired number of Amazon EC2 vCPUS in the compute environment.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_types
    #   The instances types that may be launched. You can specify instance
    #   families to launch any instance type within those families (for
    #   example, `c5` or `p3`), or you can specify specific sizes within a
    #   family (such as `c5.8xlarge`). You can also choose `optimal` to pick
    #   instance types (from the C, M, and R instance families) on the fly
    #   that match the demand of your job queues.
    #   @return [Array<String>]
    #
    # @!attribute [rw] image_id
    #   The Amazon Machine Image (AMI) ID used for instances launched in the
    #   compute environment.
    #   @return [String]
    #
    # @!attribute [rw] subnets
    #   The VPC subnets into which the compute resources are launched. For
    #   more information, see [VPCs and Subnets][1] in the *Amazon VPC User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   The Amazon EC2 security groups associated with instances launched in
    #   the compute environment. One or more security groups must be
    #   specified, either in `securityGroupIds` or using a launch template
    #   referenced in `launchTemplate`. If security groups are specified
    #   using both `securityGroupIds` and `launchTemplate`, the values in
    #   `securityGroupIds` will be used.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ec2_key_pair
    #   The Amazon EC2 key pair that is used for instances launched in the
    #   compute environment.
    #   @return [String]
    #
    # @!attribute [rw] instance_role
    #   The Amazon ECS instance profile applied to Amazon EC2 instances in a
    #   compute environment. You can specify the short name or full Amazon
    #   Resource Name (ARN) of an instance profile. For example, `
    #   ecsInstanceRole ` or
    #   `arn:aws:iam::<aws_account_id>:instance-profile/ecsInstanceRole `.
    #   For more information, see [Amazon ECS Instance Role][1] in the *AWS
    #   Batch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/instance_IAM_role.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pair tags to be applied to resources that are launched in
    #   the compute environment. For AWS Batch, these take the form of
    #   "String1": "String2", where String1 is the tag key and String2
    #   is the tag value—for example, \\\{ "Name": "AWS Batch Instance -
    #   C4OnDemand" \\}. These tags can not be updated or removed after the
    #   compute environment has been created; any changes require creating a
    #   new compute environment and removing the old compute environment.
    #   These tags are not seen when using the AWS Batch ListTagsForResource
    #   API operation.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] placement_group
    #   The Amazon EC2 placement group to associate with your compute
    #   resources. If you intend to submit multi-node parallel jobs to your
    #   compute environment, you should consider creating a cluster
    #   placement group and associate it with your compute resources. This
    #   keeps your multi-node parallel job on a logical grouping of
    #   instances within a single Availability Zone with high network flow
    #   potential. For more information, see [Placement Groups][1] in the
    #   *Amazon EC2 User Guide for Linux Instances*.
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
    #   20%, then the Spot price must be below 20% of the current On-Demand
    #   price for that Amazon EC2 instance. You always pay the lowest
    #   (market) price and never more than your maximum percentage. If you
    #   leave this field empty, the default value is 100% of the On-Demand
    #   price.
    #   @return [Integer]
    #
    # @!attribute [rw] spot_iam_fleet_role
    #   The Amazon Resource Name (ARN) of the Amazon EC2 Spot Fleet IAM role
    #   applied to a `SPOT` compute environment. This role is required if
    #   the allocation strategy set to `BEST_FIT` or if the allocation
    #   strategy is not specified. For more information, see [Amazon EC2
    #   Spot Fleet Role][1] in the *AWS Batch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/spot_fleet_IAM_role.html
    #   @return [String]
    #
    # @!attribute [rw] launch_template
    #   The launch template to use for your compute resources. Any other
    #   compute resource parameters that you specify in a
    #   CreateComputeEnvironment API operation override the same parameters
    #   in the launch template. You must specify either the launch template
    #   ID or launch template name in the request, but not both. For more
    #   information, see [Launch Template Support][1] in the *AWS Batch User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/launch-templates.html
    #   @return [Types::LaunchTemplateSpecification]
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
      :launch_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the attributes of a compute environment that
    # can be updated.
    #
    # @note When making an API call, you may pass ComputeResourceUpdate
    #   data as a hash:
    #
    #       {
    #         minv_cpus: 1,
    #         maxv_cpus: 1,
    #         desiredv_cpus: 1,
    #       }
    #
    # @!attribute [rw] minv_cpus
    #   The minimum number of Amazon EC2 vCPUs that an environment should
    #   maintain.
    #   @return [Integer]
    #
    # @!attribute [rw] maxv_cpus
    #   The maximum number of Amazon EC2 vCPUs that an environment can
    #   reach.
    #   @return [Integer]
    #
    # @!attribute [rw] desiredv_cpus
    #   The desired number of Amazon EC2 vCPUS in the compute environment.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/ComputeResourceUpdate AWS API Documentation
    #
    class ComputeResourceUpdate < Struct.new(
      :minv_cpus,
      :maxv_cpus,
      :desiredv_cpus)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the details of a container that is part of a
    # job.
    #
    # @!attribute [rw] image
    #   The image used to start the container.
    #   @return [String]
    #
    # @!attribute [rw] vcpus
    #   The number of VCPUs allocated for the job. This is a required
    #   parameter.
    #   @return [Integer]
    #
    # @!attribute [rw] memory
    #   The number of MiB of memory reserved for the job. This is a required
    #   parameter.
    #   @return [Integer]
    #
    # @!attribute [rw] command
    #   The command that is passed to the container.
    #   @return [Array<String>]
    #
    # @!attribute [rw] job_role_arn
    #   The Amazon Resource Name (ARN) associated with the job upon
    #   execution.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the execution role that AWS Batch
    #   can assume. For more information, see [AWS Batch execution IAM
    #   role][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/execution-IAM-role.html
    #   @return [String]
    #
    # @!attribute [rw] volumes
    #   A list of volumes associated with the job.
    #   @return [Array<Types::Volume>]
    #
    # @!attribute [rw] environment
    #   The environment variables to pass to a container.
    #
    #   <note markdown="1"> Environment variables must not start with `AWS_BATCH`; this naming
    #   convention is reserved for variables that are set by the AWS Batch
    #   service.
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
    #   to its root file system.
    #   @return [Boolean]
    #
    # @!attribute [rw] ulimits
    #   A list of `ulimit` values to set in the container.
    #   @return [Array<Types::Ulimit>]
    #
    # @!attribute [rw] privileged
    #   When this parameter is true, the container is given elevated
    #   privileges on the host container instance (similar to the `root`
    #   user).
    #   @return [Boolean]
    #
    # @!attribute [rw] user
    #   The user name to use inside the container.
    #   @return [String]
    #
    # @!attribute [rw] exit_code
    #   The exit code to return upon completion.
    #   @return [Integer]
    #
    # @!attribute [rw] reason
    #   A short (255 max characters) human-readable string to provide
    #   additional details about a running or stopped container.
    #   @return [String]
    #
    # @!attribute [rw] container_instance_arn
    #   The Amazon Resource Name (ARN) of the container instance on which
    #   the container is running.
    #   @return [String]
    #
    # @!attribute [rw] task_arn
    #   The Amazon Resource Name (ARN) of the Amazon ECS task that is
    #   associated with the container job. Each container attempt receives a
    #   task ARN when they reach the `STARTING` status.
    #   @return [String]
    #
    # @!attribute [rw] log_stream_name
    #   The name of the CloudWatch Logs log stream associated with the
    #   container. The log group for AWS Batch jobs is `/aws/batch/job`.
    #   Each container attempt receives a log stream name when they reach
    #   the `RUNNING` status.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The instance type of the underlying host infrastructure of a
    #   multi-node parallel job.
    #   @return [String]
    #
    # @!attribute [rw] network_interfaces
    #   The network interfaces associated with the job.
    #   @return [Array<Types::NetworkInterface>]
    #
    # @!attribute [rw] resource_requirements
    #   The type and amount of a resource to assign to a container.
    #   Currently, the only supported resource is `GPU`.
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
    #   driver that the Docker daemon uses. However the container may use a
    #   different logging driver than the Docker daemon by specifying a log
    #   driver with this parameter in the container definition. To use a
    #   different logging driver for a container, the log system must be
    #   configured properly on the container instance (or on a different log
    #   server for remote logging options). For more information on the
    #   options for different supported log drivers, see [Configure logging
    #   drivers][4] in the Docker documentation.
    #
    #   <note markdown="1"> AWS Batch currently supports a subset of the logging drivers
    #   available to the Docker daemon (shown in the LogConfiguration data
    #   type). Additional log drivers may be available in future releases of
    #   the Amazon ECS container agent.
    #
    #    </note>
    #
    #   This parameter requires version 1.18 of the Docker Remote API or
    #   greater on your container instance. To check the Docker Remote API
    #   version on your container instance, log into your container instance
    #   and run the following command: `sudo docker version | grep "Server
    #   API version"`
    #
    #   <note markdown="1"> The Amazon ECS container agent running on a container instance must
    #   register the logging drivers available on that instance with the
    #   `ECS_AVAILABLE_LOGGING_DRIVERS` environment variable before
    #   containers placed on that instance can use these log configuration
    #   options. For more information, see [Amazon ECS Container Agent
    #   Configuration][5] in the *Amazon Elastic Container Service Developer
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
    #   [Specifying Sensitive Data][1] in the *Amazon Elastic Container
    #   Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/specifying-sensitive-data.html
    #   @return [Array<Types::Secret>]
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
      :secrets)
      SENSITIVE = []
      include Aws::Structure
    end

    # The overrides that should be sent to a container.
    #
    # @note When making an API call, you may pass ContainerOverrides
    #   data as a hash:
    #
    #       {
    #         vcpus: 1,
    #         memory: 1,
    #         command: ["String"],
    #         instance_type: "String",
    #         environment: [
    #           {
    #             name: "String",
    #             value: "String",
    #           },
    #         ],
    #         resource_requirements: [
    #           {
    #             value: "String", # required
    #             type: "GPU", # required, accepts GPU
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] vcpus
    #   The number of vCPUs to reserve for the container. This value
    #   overrides the value set in the job definition.
    #   @return [Integer]
    #
    # @!attribute [rw] memory
    #   The number of MiB of memory reserved for the job. This value
    #   overrides the value set in the job definition.
    #   @return [Integer]
    #
    # @!attribute [rw] command
    #   The command to send to the container that overrides the default
    #   command from the Docker image or the job definition.
    #   @return [Array<String>]
    #
    # @!attribute [rw] instance_type
    #   The instance type to use for a multi-node parallel job. This
    #   parameter is not valid for single-node container jobs.
    #   @return [String]
    #
    # @!attribute [rw] environment
    #   The environment variables to send to the container. You can add new
    #   environment variables, which are added to the container at launch,
    #   or you can override the existing environment variables from the
    #   Docker image or the job definition.
    #
    #   <note markdown="1"> Environment variables must not start with `AWS_BATCH`; this naming
    #   convention is reserved for variables that are set by the AWS Batch
    #   service.
    #
    #    </note>
    #   @return [Array<Types::KeyValuePair>]
    #
    # @!attribute [rw] resource_requirements
    #   The type and amount of a resource to assign to a container. This
    #   value overrides the value set in the job definition. Currently, the
    #   only supported resource is `GPU`.
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

    # Container properties are used in job definitions to describe the
    # container that is launched as part of a job.
    #
    # @note When making an API call, you may pass ContainerProperties
    #   data as a hash:
    #
    #       {
    #         image: "String",
    #         vcpus: 1,
    #         memory: 1,
    #         command: ["String"],
    #         job_role_arn: "String",
    #         execution_role_arn: "String",
    #         volumes: [
    #           {
    #             host: {
    #               source_path: "String",
    #             },
    #             name: "String",
    #           },
    #         ],
    #         environment: [
    #           {
    #             name: "String",
    #             value: "String",
    #           },
    #         ],
    #         mount_points: [
    #           {
    #             container_path: "String",
    #             read_only: false,
    #             source_volume: "String",
    #           },
    #         ],
    #         readonly_root_filesystem: false,
    #         privileged: false,
    #         ulimits: [
    #           {
    #             hard_limit: 1, # required
    #             name: "String", # required
    #             soft_limit: 1, # required
    #           },
    #         ],
    #         user: "String",
    #         instance_type: "String",
    #         resource_requirements: [
    #           {
    #             value: "String", # required
    #             type: "GPU", # required, accepts GPU
    #           },
    #         ],
    #         linux_parameters: {
    #           devices: [
    #             {
    #               host_path: "String", # required
    #               container_path: "String",
    #               permissions: ["READ"], # accepts READ, WRITE, MKNOD
    #             },
    #           ],
    #           init_process_enabled: false,
    #           shared_memory_size: 1,
    #           tmpfs: [
    #             {
    #               container_path: "String", # required
    #               size: 1, # required
    #               mount_options: ["String"],
    #             },
    #           ],
    #           max_swap: 1,
    #           swappiness: 1,
    #         },
    #         log_configuration: {
    #           log_driver: "json-file", # required, accepts json-file, syslog, journald, gelf, fluentd, awslogs, splunk
    #           options: {
    #             "String" => "String",
    #           },
    #           secret_options: [
    #             {
    #               name: "String", # required
    #               value_from: "String", # required
    #             },
    #           ],
    #         },
    #         secrets: [
    #           {
    #             name: "String", # required
    #             value_from: "String", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] image
    #   The image used to start a container. This string is passed directly
    #   to the Docker daemon. Images in the Docker Hub registry are
    #   available by default. Other repositories are specified with `
    #   repository-url/image:tag `. Up to 255 letters (uppercase and
    #   lowercase), numbers, hyphens, underscores, colons, periods, forward
    #   slashes, and number signs are allowed. This parameter maps to
    #   `Image` in the [Create a container][1] section of the [Docker Remote
    #   API][2] and the `IMAGE` parameter of [docker run][3].
    #
    #   * Images in Amazon ECR repositories use the full registry and
    #     repository URI (for example,
    #     `012345678910.dkr.ecr.<region-name>.amazonaws.com/<repository-name>`).
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
    #   The number of vCPUs reserved for the container. This parameter maps
    #   to `CpuShares` in the [Create a container][1] section of the [Docker
    #   Remote API][2] and the `--cpu-shares` option to [docker run][3].
    #   Each vCPU is equivalent to 1,024 CPU shares. You must specify at
    #   least one vCPU. This is required but can be specified in several
    #   places for multi-node parallel (MNP) jobs; it must be specified for
    #   each node at least once.
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.23/#create-a-container
    #   [2]: https://docs.docker.com/engine/api/v1.23/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Integer]
    #
    # @!attribute [rw] memory
    #   The hard limit (in MiB) of memory to present to the container. If
    #   your container attempts to exceed the memory specified here, the
    #   container is killed. This parameter maps to `Memory` in the [Create
    #   a container][1] section of the [Docker Remote API][2] and the
    #   `--memory` option to [docker run][3]. You must specify at least 4
    #   MiB of memory for a job. This is required but can be specified in
    #   several places for multi-node parallel (MNP) jobs; it must be
    #   specified for each node at least once.
    #
    #   <note markdown="1"> If you are trying to maximize your resource utilization by providing
    #   your jobs as much memory as possible for a particular instance type,
    #   see [Memory Management][4] in the *AWS Batch User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/api/v1.23/#create-a-container
    #   [2]: https://docs.docker.com/engine/api/v1.23/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   [4]: https://docs.aws.amazon.com/batch/latest/userguide/memory-management.html
    #   @return [Integer]
    #
    # @!attribute [rw] command
    #   The command that is passed to the container. This parameter maps to
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
    #   can assume for AWS permissions.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the execution role that AWS Batch
    #   can assume. For more information, see [AWS Batch execution IAM
    #   role][1].
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
    #   We do not recommend using plaintext environment variables for
    #   sensitive information, such as credential data.
    #
    #   <note markdown="1"> Environment variables must not start with `AWS_BATCH`; this naming
    #   convention is reserved for variables that are set by the AWS Batch
    #   service.
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
    #   privileges on the host container instance (similar to the `root`
    #   user). This parameter maps to `Privileged` in the [Create a
    #   container][1] section of the [Docker Remote API][2] and the
    #   `--privileged` option to [docker run][3].
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
    #   The instance type to use for a multi-node parallel job. Currently
    #   all node groups in a multi-node parallel job must use the same
    #   instance type. This parameter is not valid for single-node container
    #   jobs.
    #   @return [String]
    #
    # @!attribute [rw] resource_requirements
    #   The type and amount of a resource to assign to a container.
    #   Currently, the only supported resource is `GPU`.
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
    #   driver that the Docker daemon uses. However the container may use a
    #   different logging driver than the Docker daemon by specifying a log
    #   driver with this parameter in the container definition. To use a
    #   different logging driver for a container, the log system must be
    #   configured properly on the container instance (or on a different log
    #   server for remote logging options). For more information on the
    #   options for different supported log drivers, see [Configure logging
    #   drivers][4] in the Docker documentation.
    #
    #   <note markdown="1"> AWS Batch currently supports a subset of the logging drivers
    #   available to the Docker daemon (shown in the LogConfiguration data
    #   type).
    #
    #    </note>
    #
    #   This parameter requires version 1.18 of the Docker Remote API or
    #   greater on your container instance. To check the Docker Remote API
    #   version on your container instance, log into your container instance
    #   and run the following command: `sudo docker version | grep "Server
    #   API version"`
    #
    #   <note markdown="1"> The Amazon ECS container agent running on a container instance must
    #   register the logging drivers available on that instance with the
    #   `ECS_AVAILABLE_LOGGING_DRIVERS` environment variable before
    #   containers placed on that instance can use these log configuration
    #   options. For more information, see [Amazon ECS Container Agent
    #   Configuration][5] in the *Amazon Elastic Container Service Developer
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
    #   Sensitive Data][1] in the *Amazon Elastic Container Service
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/specifying-sensitive-data.html
    #   @return [Array<Types::Secret>]
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
      :secrets)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing summary details of a container within a job.
    #
    # @!attribute [rw] exit_code
    #   The exit code to return upon completion.
    #   @return [Integer]
    #
    # @!attribute [rw] reason
    #   A short (255 max characters) human-readable string to provide
    #   additional details about a running or stopped container.
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

    # @note When making an API call, you may pass CreateComputeEnvironmentRequest
    #   data as a hash:
    #
    #       {
    #         compute_environment_name: "String", # required
    #         type: "MANAGED", # required, accepts MANAGED, UNMANAGED
    #         state: "ENABLED", # accepts ENABLED, DISABLED
    #         compute_resources: {
    #           type: "EC2", # required, accepts EC2, SPOT
    #           allocation_strategy: "BEST_FIT", # accepts BEST_FIT, BEST_FIT_PROGRESSIVE, SPOT_CAPACITY_OPTIMIZED
    #           minv_cpus: 1, # required
    #           maxv_cpus: 1, # required
    #           desiredv_cpus: 1,
    #           instance_types: ["String"], # required
    #           image_id: "String",
    #           subnets: ["String"], # required
    #           security_group_ids: ["String"],
    #           ec2_key_pair: "String",
    #           instance_role: "String", # required
    #           tags: {
    #             "String" => "String",
    #           },
    #           placement_group: "String",
    #           bid_percentage: 1,
    #           spot_iam_fleet_role: "String",
    #           launch_template: {
    #             launch_template_id: "String",
    #             launch_template_name: "String",
    #             version: "String",
    #           },
    #         },
    #         service_role: "String", # required
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] compute_environment_name
    #   The name for your compute environment. Up to 128 letters (uppercase
    #   and lowercase), numbers, hyphens, and underscores are allowed.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the compute environment. For more information, see
    #   [Compute Environments][1] in the *AWS Batch User Guide*.
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
    #   @return [String]
    #
    # @!attribute [rw] compute_resources
    #   Details of the compute resources managed by the compute environment.
    #   This parameter is required for managed compute environments. For
    #   more information, see [Compute Environments][1] in the *AWS Batch
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html
    #   @return [Types::ComputeResource]
    #
    # @!attribute [rw] service_role
    #   The full Amazon Resource Name (ARN) of the IAM role that allows AWS
    #   Batch to make calls to other AWS services on your behalf.
    #
    #   If your specified role has a path other than `/`, then you must
    #   either specify the full role ARN (this is recommended) or prefix the
    #   role name with the path.
    #
    #   <note markdown="1"> Depending on how you created your AWS Batch service role, its ARN
    #   may contain the `service-role` path prefix. When you only specify
    #   the name of the service role, AWS Batch assumes that your ARN does
    #   not use the `service-role` path prefix. Because of this, we
    #   recommend that you specify the full ARN of your service role when
    #   you create compute environments.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags that you apply to the compute environment to help you
    #   categorize and organize your resources. Each tag consists of a key
    #   and an optional value. For more information, see [Tagging AWS
    #   Resources][1] in *AWS General Reference*.
    #
    #   These tags can be updated or removed using the [TagResource][2] and
    #   [UntagResource][3] API operations. These tags do not propagate to
    #   the underlying compute resources.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   [2]: https://docs.aws.amazon.com/batch/latest/APIReference/API_TagResource.html
    #   [3]: https://docs.aws.amazon.com/batch/latest/APIReference/API_UntagResource.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/CreateComputeEnvironmentRequest AWS API Documentation
    #
    class CreateComputeEnvironmentRequest < Struct.new(
      :compute_environment_name,
      :type,
      :state,
      :compute_resources,
      :service_role,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] compute_environment_name
    #   The name of the compute environment.
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

    # @note When making an API call, you may pass CreateJobQueueRequest
    #   data as a hash:
    #
    #       {
    #         job_queue_name: "String", # required
    #         state: "ENABLED", # accepts ENABLED, DISABLED
    #         priority: 1, # required
    #         compute_environment_order: [ # required
    #           {
    #             order: 1, # required
    #             compute_environment: "String", # required
    #           },
    #         ],
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] job_queue_name
    #   The name of the job queue.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the job queue. If the job queue state is `ENABLED`, it
    #   is able to accept jobs. If the job queue state is `DISABLED`, new
    #   jobs cannot be added to the queue, but jobs already in the queue can
    #   finish.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority of the job queue. Job queues with a higher priority (or
    #   a higher integer value for the `priority` parameter) are evaluated
    #   first when associated with the same compute environment. Priority is
    #   determined in descending order, for example, a job queue with a
    #   priority value of `10` is given scheduling preference over a job
    #   queue with a priority value of `1`.
    #   @return [Integer]
    #
    # @!attribute [rw] compute_environment_order
    #   The set of compute environments mapped to a job queue and their
    #   order relative to each other. The job scheduler uses this parameter
    #   to determine which compute environment should execute a given job.
    #   Compute environments must be in the `VALID` state before you can
    #   associate them with a job queue. You can associate up to three
    #   compute environments with a job queue.
    #   @return [Array<Types::ComputeEnvironmentOrder>]
    #
    # @!attribute [rw] tags
    #   The tags that you apply to the job queue to help you categorize and
    #   organize your resources. Each tag consists of a key and an optional
    #   value. For more information, see [Tagging AWS Resources][1] in *AWS
    #   General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/CreateJobQueueRequest AWS API Documentation
    #
    class CreateJobQueueRequest < Struct.new(
      :job_queue_name,
      :state,
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

    # @note When making an API call, you may pass DeleteComputeEnvironmentRequest
    #   data as a hash:
    #
    #       {
    #         compute_environment: "String", # required
    #       }
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

    # @note When making an API call, you may pass DeleteJobQueueRequest
    #   data as a hash:
    #
    #       {
    #         job_queue: "String", # required
    #       }
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

    # @note When making an API call, you may pass DeregisterJobDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         job_definition: "String", # required
    #       }
    #
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

    # @note When making an API call, you may pass DescribeComputeEnvironmentsRequest
    #   data as a hash:
    #
    #       {
    #         compute_environments: ["String"],
    #         max_results: 1,
    #         next_token: "String",
    #       }
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
    #   100. If this parameter is not used, then
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
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only
    #   used to retrieve the next items in a list and not for other
    #   programmatic purposes.
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
    #   `DescribeJobDefinitions` request exceed `maxResults`, this value can
    #   be used to retrieve the next page of results. This value is `null`
    #   when there are no more results to return.
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

    # @note When making an API call, you may pass DescribeJobDefinitionsRequest
    #   data as a hash:
    #
    #       {
    #         job_definitions: ["String"],
    #         max_results: 1,
    #         job_definition_name: "String",
    #         status: "String",
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] job_definitions
    #   A list of up to 100 job definition names or full Amazon Resource
    #   Name (ARN) entries.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results returned by `DescribeJobDefinitions`
    #   in paginated output. When this parameter is used,
    #   `DescribeJobDefinitions` only returns `maxResults` results in a
    #   single page along with a `nextToken` response element. The remaining
    #   results of the initial request can be seen by sending another
    #   `DescribeJobDefinitions` request with the returned `nextToken`
    #   value. This value can be between 1 and 100. If this parameter is not
    #   used, then `DescribeJobDefinitions` returns up to 100 results and a
    #   `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] job_definition_name
    #   The name of the job definition to describe.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status with which to filter job definitions.
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
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only
    #   used to retrieve the next items in a list and not for other
    #   programmatic purposes.
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

    # @note When making an API call, you may pass DescribeJobQueuesRequest
    #   data as a hash:
    #
    #       {
    #         job_queues: ["String"],
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] job_queues
    #   A list of up to 100 queue names or full queue Amazon Resource Name
    #   (ARN) entries.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results returned by `DescribeJobQueues` in
    #   paginated output. When this parameter is used, `DescribeJobQueues`
    #   only returns `maxResults` results in a single page along with a
    #   `nextToken` response element. The remaining results of the initial
    #   request can be seen by sending another `DescribeJobQueues` request
    #   with the returned `nextToken` value. This value can be between 1 and
    #   100. If this parameter is not used, then `DescribeJobQueues` returns
    #   up to 100 results and a `nextToken` value if applicable.
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
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only
    #   used to retrieve the next items in a list and not for other
    #   programmatic purposes.
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

    # @note When making an API call, you may pass DescribeJobsRequest
    #   data as a hash:
    #
    #       {
    #         jobs: ["String"], # required
    #       }
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

    # An object representing a container instance host device.
    #
    # @note When making an API call, you may pass Device
    #   data as a hash:
    #
    #       {
    #         host_path: "String", # required
    #         container_path: "String",
    #         permissions: ["READ"], # accepts READ, WRITE, MKNOD
    #       }
    #
    # @!attribute [rw] host_path
    #   The path for the device on the host container instance.
    #   @return [String]
    #
    # @!attribute [rw] container_path
    #   The path inside the container at which to expose the host device. By
    #   default the `hostPath` value is used.
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

    # Specifies a set of conditions to be met, and an action to take
    # (`RETRY` or `EXIT`) if all conditions are met.
    #
    # @note When making an API call, you may pass EvaluateOnExit
    #   data as a hash:
    #
    #       {
    #         on_status_reason: "String",
    #         on_reason: "String",
    #         on_exit_code: "String",
    #         action: "RETRY", # required, accepts RETRY, EXIT
    #       }
    #
    # @!attribute [rw] on_status_reason
    #   Contains a glob pattern to match against the `StatusReason` returned
    #   for a job. The patten can be up to 512 characters long, can contain
    #   letters, numbers, periods (.), colons (:), and whitespace (spaces,
    #   tabs). and can optionally end with an asterisk (*) so that only the
    #   start of the string needs to be an exact match.
    #   @return [String]
    #
    # @!attribute [rw] on_reason
    #   Contains a glob pattern to match against the `Reason` returned for a
    #   job. The patten can be up to 512 characters long, can contain
    #   letters, numbers, periods (.), colons (:), and whitespace (spaces,
    #   tabs), and can optionally end with an asterisk (*) so that only the
    #   start of the string needs to be an exact match.
    #   @return [String]
    #
    # @!attribute [rw] on_exit_code
    #   Contains a glob pattern to match against the decimal representation
    #   of the `ExitCode` returned for a job. The patten can be up to 512
    #   characters long, can contain only numbers, and can optionally end
    #   with an asterisk (*) so that only the start of the string needs to
    #   be an exact match.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   Specifies the action to take if all of the specified conditions
    #   (`onStatusReason`, `onReason`, and `onExitCode`) are met.
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

    # Determine whether your data volume persists on the host container
    # instance and where it is stored. If this parameter is empty, then the
    # Docker daemon assigns a host path for your data volume, but the data
    # is not guaranteed to persist after the containers associated with it
    # stop running.
    #
    # @note When making an API call, you may pass Host
    #   data as a hash:
    #
    #       {
    #         source_path: "String",
    #       }
    #
    # @!attribute [rw] source_path
    #   The path on the host container instance that is presented to the
    #   container. If this parameter is empty, then the Docker daemon has
    #   assigned a host path for you. If this parameter contains a file
    #   location, then the data volume persists at the specified location on
    #   the host container instance until you delete it manually. If the
    #   source path location does not exist on the host container instance,
    #   the Docker daemon creates it. If the location does exist, the
    #   contents of the source path folder are exported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/Host AWS API Documentation
    #
    class Host < Struct.new(
      :source_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing an AWS Batch job definition.
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
    #   The type of job definition.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   Default parameters or parameter substitution placeholders that are
    #   set in the job definition. Parameters are specified as a key-value
    #   pair mapping. Parameters in a `SubmitJob` request override any
    #   corresponding parameter defaults from the job definition. For more
    #   information about specifying parameters, see [Job Definition
    #   Parameters][1] in the *AWS Batch User Guide*.
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
    #   An object with various properties specific to container-based jobs.
    #   @return [Types::ContainerProperties]
    #
    # @!attribute [rw] timeout
    #   The timeout configuration for jobs that are submitted with this job
    #   definition. You can specify a timeout duration after which AWS Batch
    #   terminates your jobs if they have not finished.
    #   @return [Types::JobTimeout]
    #
    # @!attribute [rw] node_properties
    #   An object with various properties specific to multi-node parallel
    #   jobs.
    #   @return [Types::NodeProperties]
    #
    # @!attribute [rw] tags
    #   The tags applied to the job definition.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/JobDefinition AWS API Documentation
    #
    class JobDefinition < Struct.new(
      :job_definition_name,
      :job_definition_arn,
      :revision,
      :status,
      :type,
      :parameters,
      :retry_strategy,
      :container_properties,
      :timeout,
      :node_properties,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing an AWS Batch job dependency.
    #
    # @note When making an API call, you may pass JobDependency
    #   data as a hash:
    #
    #       {
    #         job_id: "String",
    #         type: "N_TO_N", # accepts N_TO_N, SEQUENTIAL
    #       }
    #
    # @!attribute [rw] job_id
    #   The job ID of the AWS Batch job associated with this dependency.
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

    # An object representing an AWS Batch job.
    #
    # @!attribute [rw] job_arn
    #   The Amazon Resource Name (ARN) of the job.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The name of the job.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The ID for the job.
    #   @return [String]
    #
    # @!attribute [rw] job_queue
    #   The Amazon Resource Name (ARN) of the job queue with which the job
    #   is associated.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status for the job.
    #
    #   <note markdown="1"> If your jobs do not progress to `STARTING`, see [Jobs Stuck in
    #   RUNNABLE Status][1] in the troubleshooting section of the *AWS Batch
    #   User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/troubleshooting.html#job_stuck_in_runnable
    #   @return [String]
    #
    # @!attribute [rw] attempts
    #   A list of job attempts associated with this job.
    #   @return [Array<Types::AttemptDetail>]
    #
    # @!attribute [rw] status_reason
    #   A short, human-readable string to provide additional details about
    #   the current status of the job.
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
    # @!attribute [rw] retry_strategy
    #   The retry strategy to use for this job if an attempt fails.
    #   @return [Types::RetryStrategy]
    #
    # @!attribute [rw] started_at
    #   The Unix timestamp (in milliseconds) for when the job was started
    #   (when the job transitioned from the `STARTING` state to the
    #   `RUNNING` state). This parameter is not provided for child jobs of
    #   array jobs or multi-node parallel jobs.
    #   @return [Integer]
    #
    # @!attribute [rw] stopped_at
    #   The Unix timestamp (in milliseconds) for when the job was stopped
    #   (when the job transitioned from the `RUNNING` state to a terminal
    #   state, such as `SUCCEEDED` or `FAILED`).
    #   @return [Integer]
    #
    # @!attribute [rw] depends_on
    #   A list of job IDs on which this job depends.
    #   @return [Array<Types::JobDependency>]
    #
    # @!attribute [rw] job_definition
    #   The job definition that is used by this job.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   Additional parameters passed to the job that replace parameter
    #   substitution placeholders or override any corresponding parameter
    #   defaults from the job definition.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] container
    #   An object representing the details of the container that is
    #   associated with the job.
    #   @return [Types::ContainerDetail]
    #
    # @!attribute [rw] node_details
    #   An object representing the details of a node that is associated with
    #   a multi-node parallel job.
    #   @return [Types::NodeDetails]
    #
    # @!attribute [rw] node_properties
    #   An object representing the node properties of a multi-node parallel
    #   job.
    #   @return [Types::NodeProperties]
    #
    # @!attribute [rw] array_properties
    #   The array properties of the job, if it is an array job.
    #   @return [Types::ArrayPropertiesDetail]
    #
    # @!attribute [rw] timeout
    #   The timeout configuration for the job.
    #   @return [Types::JobTimeout]
    #
    # @!attribute [rw] tags
    #   The tags applied to the job.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/JobDetail AWS API Documentation
    #
    class JobDetail < Struct.new(
      :job_arn,
      :job_name,
      :job_id,
      :job_queue,
      :status,
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
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing the details of an AWS Batch job queue.
    #
    # @!attribute [rw] job_queue_name
    #   The name of the job queue.
    #   @return [String]
    #
    # @!attribute [rw] job_queue_arn
    #   The Amazon Resource Name (ARN) of the job queue.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Describes the ability of the queue to accept new jobs. If the job
    #   queue state is `ENABLED`, it is able to accept jobs. If the job
    #   queue state is `DISABLED`, new jobs cannot be added to the queue,
    #   but jobs already in the queue can finish.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the job queue (for example, `CREATING` or `VALID`).
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   A short, human-readable string to provide additional details about
    #   the current status of the job queue.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority of the job queue.
    #   @return [Integer]
    #
    # @!attribute [rw] compute_environment_order
    #   The compute environments that are attached to the job queue and the
    #   order in which job placement is preferred. Compute environments are
    #   selected for job placement in ascending order.
    #   @return [Array<Types::ComputeEnvironmentOrder>]
    #
    # @!attribute [rw] tags
    #   The tags applied to the job queue.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/JobQueueDetail AWS API Documentation
    #
    class JobQueueDetail < Struct.new(
      :job_queue_name,
      :job_queue_arn,
      :state,
      :status,
      :status_reason,
      :priority,
      :compute_environment_order,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing summary details of a job.
    #
    # @!attribute [rw] job_arn
    #   The Amazon Resource Name (ARN) of the job.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The ID of the job.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The name of the job.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The Unix timestamp for when the job was created. For non-array jobs
    #   and parent array jobs, this is when the job entered the `SUBMITTED`
    #   state (at the time SubmitJob was called). For array child jobs, this
    #   is when the child job was spawned by its parent and entered the
    #   `PENDING` state.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The current status for the job.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   A short, human-readable string to provide additional details about
    #   the current status of the job.
    #   @return [String]
    #
    # @!attribute [rw] started_at
    #   The Unix timestamp for when the job was started (when the job
    #   transitioned from the `STARTING` state to the `RUNNING` state).
    #   @return [Integer]
    #
    # @!attribute [rw] stopped_at
    #   The Unix timestamp for when the job was stopped (when the job
    #   transitioned from the `RUNNING` state to a terminal state, such as
    #   `SUCCEEDED` or `FAILED`).
    #   @return [Integer]
    #
    # @!attribute [rw] container
    #   An object representing the details of the container that is
    #   associated with the job.
    #   @return [Types::ContainerSummary]
    #
    # @!attribute [rw] array_properties
    #   The array properties of the job, if it is an array job.
    #   @return [Types::ArrayPropertiesSummary]
    #
    # @!attribute [rw] node_properties
    #   The node properties for a single node in a job summary list.
    #   @return [Types::NodePropertiesSummary]
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
      :node_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing a job timeout configuration.
    #
    # @note When making an API call, you may pass JobTimeout
    #   data as a hash:
    #
    #       {
    #         attempt_duration_seconds: 1,
    #       }
    #
    # @!attribute [rw] attempt_duration_seconds
    #   The time duration in seconds (measured from the job attempt's
    #   `startedAt` timestamp) after which AWS Batch terminates your jobs if
    #   they have not finished.
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
    # @note When making an API call, you may pass KeyValuePair
    #   data as a hash:
    #
    #       {
    #         name: "String",
    #         value: "String",
    #       }
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

    # An object representing a launch template associated with a compute
    # resource. You must specify either the launch template ID or launch
    # template name in the request, but not both.
    #
    # @note When making an API call, you may pass LaunchTemplateSpecification
    #   data as a hash:
    #
    #       {
    #         launch_template_id: "String",
    #         launch_template_name: "String",
    #         version: "String",
    #       }
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
    #   Default: `$Default`.
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
    # @note When making an API call, you may pass LinuxParameters
    #   data as a hash:
    #
    #       {
    #         devices: [
    #           {
    #             host_path: "String", # required
    #             container_path: "String",
    #             permissions: ["READ"], # accepts READ, WRITE, MKNOD
    #           },
    #         ],
    #         init_process_enabled: false,
    #         shared_memory_size: 1,
    #         tmpfs: [
    #           {
    #             container_path: "String", # required
    #             size: 1, # required
    #             mount_options: ["String"],
    #           },
    #         ],
    #         max_swap: 1,
    #         swappiness: 1,
    #       }
    #
    # @!attribute [rw] devices
    #   Any host devices to expose to the container. This parameter maps to
    #   `Devices` in the [Create a container][1] section of the [Docker
    #   Remote API][2] and the `--device` option to [docker run][3].
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
    #   into your container instance and run the following command: `sudo
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
    #
    #
    #   [1]: https://docs.docker.com/engine/reference/run/
    #   @return [Integer]
    #
    # @!attribute [rw] tmpfs
    #   The container path, mount options, and size (in MiB) of the tmpfs
    #   mount. This parameter maps to the `--tmpfs` option to [docker
    #   run][1].
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/reference/run/
    #   @return [Array<Types::Tmpfs>]
    #
    # @!attribute [rw] max_swap
    #   The total amount of swap memory (in MiB) a container can use. This
    #   parameter will be translated to the `--memory-swap` option to
    #   [docker run][1] where the value would be the sum of the container
    #   memory plus the `maxSwap` value. For more information, see [
    #   `--memory-swap` details][2] in the Docker documentation.
    #
    #   If a `maxSwap` value of `0` is specified, the container will not use
    #   swap. Accepted values are `0` or any positive integer. If the
    #   `maxSwap` parameter is omitted, the container will use the swap
    #   configuration for the container instance it is running on. A
    #   `maxSwap` value must be set for the `swappiness` parameter to be
    #   used.
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/reference/run/
    #   [2]: https://docs.docker.com/config/containers/resource_constraints/#--memory-swap-details
    #   @return [Integer]
    #
    # @!attribute [rw] swappiness
    #   This allows you to tune a container's memory swappiness behavior. A
    #   `swappiness` value of `0` will cause swapping to not happen unless
    #   absolutely necessary. A `swappiness` value of `100` will cause pages
    #   to be swapped very aggressively. Accepted values are whole numbers
    #   between `0` and `100`. If the `swappiness` parameter is not
    #   specified, a default value of `60` is used. If a value is not
    #   specified for `maxSwap` then this parameter is ignored. This
    #   parameter maps to the `--memory-swappiness` option to [docker
    #   run][1].
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/reference/run/
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

    # @note When making an API call, you may pass ListJobsRequest
    #   data as a hash:
    #
    #       {
    #         job_queue: "String",
    #         array_job_id: "String",
    #         multi_node_job_id: "String",
    #         job_status: "SUBMITTED", # accepts SUBMITTED, PENDING, RUNNABLE, STARTING, RUNNING, SUCCEEDED, FAILED
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] job_queue
    #   The name or full Amazon Resource Name (ARN) of the job queue with
    #   which to list jobs.
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
    #   The job status with which to filter jobs in the specified queue. If
    #   you do not specify a status, only `RUNNING` jobs are returned.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results returned by `ListJobs` in paginated
    #   output. When this parameter is used, `ListJobs` only returns
    #   `maxResults` results in a single page along with a `nextToken`
    #   response element. The remaining results of the initial request can
    #   be seen by sending another `ListJobs` request with the returned
    #   `nextToken` value. This value can be between 1 and 100. If this
    #   parameter is not used, then `ListJobs` returns up to 100 results and
    #   a `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated `ListJobs`
    #   request where `maxResults` was used and the results exceeded the
    #   value of that parameter. Pagination continues from the end of the
    #   previous results that returned the `nextToken` value. This value is
    #   `null` when there are no more results to return.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only
    #   used to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/ListJobsRequest AWS API Documentation
    #
    class ListJobsRequest < Struct.new(
      :job_queue,
      :array_job_id,
      :multi_node_job_id,
      :job_status,
      :max_results,
      :next_token)
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

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "String", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that identifies the resource for
    #   which to list the tags. AWS Batch resources that support tags are
    #   compute environments, jobs, job definitions, and job queues. ARNs
    #   for child jobs of array and multi-node parallel (MNP) jobs are not
    #   supported.
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
    # @note When making an API call, you may pass LogConfiguration
    #   data as a hash:
    #
    #       {
    #         log_driver: "json-file", # required, accepts json-file, syslog, journald, gelf, fluentd, awslogs, splunk
    #         options: {
    #           "String" => "String",
    #         },
    #         secret_options: [
    #           {
    #             name: "String", # required
    #             value_from: "String", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] log_driver
    #   The log driver to use for the container. The valid values listed for
    #   this parameter are log drivers that the Amazon ECS container agent
    #   can communicate with by default.
    #
    #   The supported log drivers are `awslogs`, `fluentd`, `gelf`,
    #   `json-file`, `journald`, `logentries`, `syslog`, and `splunk`.
    #
    #   awslogs
    #
    #   : Specifies the Amazon CloudWatch Logs logging driver. For more
    #     information, see [Using the awslogs Log Driver][1] in the *AWS
    #     Batch User Guide* and [Amazon CloudWatch Logs logging driver][2]
    #     in the Docker documentation.
    #
    #   fluentd
    #
    #   : Specifies the Fluentd logging driver. For more information,
    #     including usage and options, see [Fluentd logging driver][3] in
    #     the Docker documentation.
    #
    #   gelf
    #
    #   : Specifies the Graylog Extended Format (GELF) logging driver. For
    #     more information, including usage and options, see [Graylog
    #     Extended Format logging driver][4] in the Docker documentation.
    #
    #   journald
    #
    #   : Specifies the journald logging driver. For more information,
    #     including usage and options, see [Journald logging driver][5] in
    #     the Docker documentation.
    #
    #   json-file
    #
    #   : Specifies the JSON file logging driver. For more information,
    #     including usage and options, see [JSON File logging driver][6] in
    #     the Docker documentation.
    #
    #   splunk
    #
    #   : Specifies the Splunk logging driver. For more information,
    #     including usage and options, see [Splunk logging driver][7] in the
    #     Docker documentation.
    #
    #   syslog
    #
    #   : Specifies the syslog logging driver. For more information,
    #     including usage and options, see [Syslog logging driver][8] in the
    #     Docker documentation.
    #
    #   <note markdown="1"> If you have a custom driver that is not listed earlier that you
    #   would like to work with the Amazon ECS container agent, you can fork
    #   the Amazon ECS container agent project that is [available on
    #   GitHub][9] and customize it to work with that driver. We encourage
    #   you to submit pull requests for changes that you would like to have
    #   included. However, Amazon Web Services does not currently support
    #   running modified copies of this software.
    #
    #    </note>
    #
    #   This parameter requires version 1.18 of the Docker Remote API or
    #   greater on your container instance. To check the Docker Remote API
    #   version on your container instance, log into your container instance
    #   and run the following command: `sudo docker version | grep "Server
    #   API version"`
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
    #   container instance, log into your container instance and run the
    #   following command: `sudo docker version | grep "Server API version"`
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] secret_options
    #   The secrets to pass to the log configuration. For more information,
    #   see [Specifying Sensitive Data][1] in the *AWS Batch User Guide*.
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

    # Details on a Docker volume mount point that is used in a job's
    # container properties. This parameter maps to `Volumes` in the [Create
    # a container][1] section of the Docker Remote API and the `--volume`
    # option to docker run.
    #
    #
    #
    # [1]: https://docs.docker.com/engine/reference/api/docker_remote_api_v1.19/#create-a-container
    #
    # @note When making an API call, you may pass MountPoint
    #   data as a hash:
    #
    #       {
    #         container_path: "String",
    #         read_only: false,
    #         source_volume: "String",
    #       }
    #
    # @!attribute [rw] container_path
    #   The path on the container at which to mount the host volume.
    #   @return [String]
    #
    # @!attribute [rw] read_only
    #   If this value is `true`, the container has read-only access to the
    #   volume; otherwise, the container can write to the volume. The
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

    # An object representing the elastic network interface for a multi-node
    # parallel job node.
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

    # An object representing the details of a multi-node parallel job node.
    #
    # @!attribute [rw] node_index
    #   The node index for the node. Node index numbering begins at zero.
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

    # Object representing any node overrides to a job definition that is
    # used in a SubmitJob API operation.
    #
    # @note When making an API call, you may pass NodeOverrides
    #   data as a hash:
    #
    #       {
    #         num_nodes: 1,
    #         node_property_overrides: [
    #           {
    #             target_nodes: "String", # required
    #             container_overrides: {
    #               vcpus: 1,
    #               memory: 1,
    #               command: ["String"],
    #               instance_type: "String",
    #               environment: [
    #                 {
    #                   name: "String",
    #                   value: "String",
    #                 },
    #               ],
    #               resource_requirements: [
    #                 {
    #                   value: "String", # required
    #                   type: "GPU", # required, accepts GPU
    #                 },
    #               ],
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] num_nodes
    #   The number of nodes to use with a multi-node parallel job. This
    #   value overrides the number of nodes that are specified in the job
    #   definition. To use this override:
    #
    #   * There must be at least one node range in your job definition that
    #     has an open upper boundary (such as `:` or `n:`).
    #
    #   * The lower boundary of the node range specified in the job
    #     definition must be fewer than the number of nodes specified in the
    #     override.
    #
    #   * The main node index specified in the job definition must be fewer
    #     than the number of nodes specified in the override.
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

    # An object representing the node properties of a multi-node parallel
    # job.
    #
    # @note When making an API call, you may pass NodeProperties
    #   data as a hash:
    #
    #       {
    #         num_nodes: 1, # required
    #         main_node: 1, # required
    #         node_range_properties: [ # required
    #           {
    #             target_nodes: "String", # required
    #             container: {
    #               image: "String",
    #               vcpus: 1,
    #               memory: 1,
    #               command: ["String"],
    #               job_role_arn: "String",
    #               execution_role_arn: "String",
    #               volumes: [
    #                 {
    #                   host: {
    #                     source_path: "String",
    #                   },
    #                   name: "String",
    #                 },
    #               ],
    #               environment: [
    #                 {
    #                   name: "String",
    #                   value: "String",
    #                 },
    #               ],
    #               mount_points: [
    #                 {
    #                   container_path: "String",
    #                   read_only: false,
    #                   source_volume: "String",
    #                 },
    #               ],
    #               readonly_root_filesystem: false,
    #               privileged: false,
    #               ulimits: [
    #                 {
    #                   hard_limit: 1, # required
    #                   name: "String", # required
    #                   soft_limit: 1, # required
    #                 },
    #               ],
    #               user: "String",
    #               instance_type: "String",
    #               resource_requirements: [
    #                 {
    #                   value: "String", # required
    #                   type: "GPU", # required, accepts GPU
    #                 },
    #               ],
    #               linux_parameters: {
    #                 devices: [
    #                   {
    #                     host_path: "String", # required
    #                     container_path: "String",
    #                     permissions: ["READ"], # accepts READ, WRITE, MKNOD
    #                   },
    #                 ],
    #                 init_process_enabled: false,
    #                 shared_memory_size: 1,
    #                 tmpfs: [
    #                   {
    #                     container_path: "String", # required
    #                     size: 1, # required
    #                     mount_options: ["String"],
    #                   },
    #                 ],
    #                 max_swap: 1,
    #                 swappiness: 1,
    #               },
    #               log_configuration: {
    #                 log_driver: "json-file", # required, accepts json-file, syslog, journald, gelf, fluentd, awslogs, splunk
    #                 options: {
    #                   "String" => "String",
    #                 },
    #                 secret_options: [
    #                   {
    #                     name: "String", # required
    #                     value_from: "String", # required
    #                   },
    #                 ],
    #               },
    #               secrets: [
    #                 {
    #                   name: "String", # required
    #                   value_from: "String", # required
    #                 },
    #               ],
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] num_nodes
    #   The number of nodes associated with a multi-node parallel job.
    #   @return [Integer]
    #
    # @!attribute [rw] main_node
    #   Specifies the node index for the main node of a multi-node parallel
    #   job. This node index value must be fewer than the number of nodes.
    #   @return [Integer]
    #
    # @!attribute [rw] node_range_properties
    #   A list of node ranges and their properties associated with a
    #   multi-node parallel job.
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

    # An object representing the properties of a node that is associated
    # with a multi-node parallel job.
    #
    # @!attribute [rw] is_main_node
    #   Specifies whether the current node is the main node for a multi-node
    #   parallel job.
    #   @return [Boolean]
    #
    # @!attribute [rw] num_nodes
    #   The number of nodes associated with a multi-node parallel job.
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

    # Object representing any node overrides to a job definition that is
    # used in a SubmitJob API operation.
    #
    # @note When making an API call, you may pass NodePropertyOverride
    #   data as a hash:
    #
    #       {
    #         target_nodes: "String", # required
    #         container_overrides: {
    #           vcpus: 1,
    #           memory: 1,
    #           command: ["String"],
    #           instance_type: "String",
    #           environment: [
    #             {
    #               name: "String",
    #               value: "String",
    #             },
    #           ],
    #           resource_requirements: [
    #             {
    #               value: "String", # required
    #               type: "GPU", # required, accepts GPU
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] target_nodes
    #   The range of nodes, using node index values, with which to override.
    #   A range of `0:3` indicates nodes with index values of `0` through
    #   `3`. If the starting range value is omitted (`:n`), then `0` is used
    #   to start the range. If the ending range value is omitted (`n:`),
    #   then the highest possible node index is used to end the range.
    #   @return [String]
    #
    # @!attribute [rw] container_overrides
    #   The overrides that should be sent to a node range.
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

    # An object representing the properties of the node range for a
    # multi-node parallel job.
    #
    # @note When making an API call, you may pass NodeRangeProperty
    #   data as a hash:
    #
    #       {
    #         target_nodes: "String", # required
    #         container: {
    #           image: "String",
    #           vcpus: 1,
    #           memory: 1,
    #           command: ["String"],
    #           job_role_arn: "String",
    #           execution_role_arn: "String",
    #           volumes: [
    #             {
    #               host: {
    #                 source_path: "String",
    #               },
    #               name: "String",
    #             },
    #           ],
    #           environment: [
    #             {
    #               name: "String",
    #               value: "String",
    #             },
    #           ],
    #           mount_points: [
    #             {
    #               container_path: "String",
    #               read_only: false,
    #               source_volume: "String",
    #             },
    #           ],
    #           readonly_root_filesystem: false,
    #           privileged: false,
    #           ulimits: [
    #             {
    #               hard_limit: 1, # required
    #               name: "String", # required
    #               soft_limit: 1, # required
    #             },
    #           ],
    #           user: "String",
    #           instance_type: "String",
    #           resource_requirements: [
    #             {
    #               value: "String", # required
    #               type: "GPU", # required, accepts GPU
    #             },
    #           ],
    #           linux_parameters: {
    #             devices: [
    #               {
    #                 host_path: "String", # required
    #                 container_path: "String",
    #                 permissions: ["READ"], # accepts READ, WRITE, MKNOD
    #               },
    #             ],
    #             init_process_enabled: false,
    #             shared_memory_size: 1,
    #             tmpfs: [
    #               {
    #                 container_path: "String", # required
    #                 size: 1, # required
    #                 mount_options: ["String"],
    #               },
    #             ],
    #             max_swap: 1,
    #             swappiness: 1,
    #           },
    #           log_configuration: {
    #             log_driver: "json-file", # required, accepts json-file, syslog, journald, gelf, fluentd, awslogs, splunk
    #             options: {
    #               "String" => "String",
    #             },
    #             secret_options: [
    #               {
    #                 name: "String", # required
    #                 value_from: "String", # required
    #               },
    #             ],
    #           },
    #           secrets: [
    #             {
    #               name: "String", # required
    #               value_from: "String", # required
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] target_nodes
    #   The range of nodes, using node index values. A range of `0:3`
    #   indicates nodes with index values of `0` through `3`. If the
    #   starting range value is omitted (`:n`), then `0` is used to start
    #   the range. If the ending range value is omitted (`n:`), then the
    #   highest possible node index is used to end the range. Your
    #   accumulative node ranges must account for all nodes (0:n). You may
    #   nest node ranges, for example 0:10 and 4:5, in which case the 4:5
    #   range properties override the 0:10 properties.
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

    # @note When making an API call, you may pass RegisterJobDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         job_definition_name: "String", # required
    #         type: "container", # required, accepts container, multinode
    #         parameters: {
    #           "String" => "String",
    #         },
    #         container_properties: {
    #           image: "String",
    #           vcpus: 1,
    #           memory: 1,
    #           command: ["String"],
    #           job_role_arn: "String",
    #           execution_role_arn: "String",
    #           volumes: [
    #             {
    #               host: {
    #                 source_path: "String",
    #               },
    #               name: "String",
    #             },
    #           ],
    #           environment: [
    #             {
    #               name: "String",
    #               value: "String",
    #             },
    #           ],
    #           mount_points: [
    #             {
    #               container_path: "String",
    #               read_only: false,
    #               source_volume: "String",
    #             },
    #           ],
    #           readonly_root_filesystem: false,
    #           privileged: false,
    #           ulimits: [
    #             {
    #               hard_limit: 1, # required
    #               name: "String", # required
    #               soft_limit: 1, # required
    #             },
    #           ],
    #           user: "String",
    #           instance_type: "String",
    #           resource_requirements: [
    #             {
    #               value: "String", # required
    #               type: "GPU", # required, accepts GPU
    #             },
    #           ],
    #           linux_parameters: {
    #             devices: [
    #               {
    #                 host_path: "String", # required
    #                 container_path: "String",
    #                 permissions: ["READ"], # accepts READ, WRITE, MKNOD
    #               },
    #             ],
    #             init_process_enabled: false,
    #             shared_memory_size: 1,
    #             tmpfs: [
    #               {
    #                 container_path: "String", # required
    #                 size: 1, # required
    #                 mount_options: ["String"],
    #               },
    #             ],
    #             max_swap: 1,
    #             swappiness: 1,
    #           },
    #           log_configuration: {
    #             log_driver: "json-file", # required, accepts json-file, syslog, journald, gelf, fluentd, awslogs, splunk
    #             options: {
    #               "String" => "String",
    #             },
    #             secret_options: [
    #               {
    #                 name: "String", # required
    #                 value_from: "String", # required
    #               },
    #             ],
    #           },
    #           secrets: [
    #             {
    #               name: "String", # required
    #               value_from: "String", # required
    #             },
    #           ],
    #         },
    #         node_properties: {
    #           num_nodes: 1, # required
    #           main_node: 1, # required
    #           node_range_properties: [ # required
    #             {
    #               target_nodes: "String", # required
    #               container: {
    #                 image: "String",
    #                 vcpus: 1,
    #                 memory: 1,
    #                 command: ["String"],
    #                 job_role_arn: "String",
    #                 execution_role_arn: "String",
    #                 volumes: [
    #                   {
    #                     host: {
    #                       source_path: "String",
    #                     },
    #                     name: "String",
    #                   },
    #                 ],
    #                 environment: [
    #                   {
    #                     name: "String",
    #                     value: "String",
    #                   },
    #                 ],
    #                 mount_points: [
    #                   {
    #                     container_path: "String",
    #                     read_only: false,
    #                     source_volume: "String",
    #                   },
    #                 ],
    #                 readonly_root_filesystem: false,
    #                 privileged: false,
    #                 ulimits: [
    #                   {
    #                     hard_limit: 1, # required
    #                     name: "String", # required
    #                     soft_limit: 1, # required
    #                   },
    #                 ],
    #                 user: "String",
    #                 instance_type: "String",
    #                 resource_requirements: [
    #                   {
    #                     value: "String", # required
    #                     type: "GPU", # required, accepts GPU
    #                   },
    #                 ],
    #                 linux_parameters: {
    #                   devices: [
    #                     {
    #                       host_path: "String", # required
    #                       container_path: "String",
    #                       permissions: ["READ"], # accepts READ, WRITE, MKNOD
    #                     },
    #                   ],
    #                   init_process_enabled: false,
    #                   shared_memory_size: 1,
    #                   tmpfs: [
    #                     {
    #                       container_path: "String", # required
    #                       size: 1, # required
    #                       mount_options: ["String"],
    #                     },
    #                   ],
    #                   max_swap: 1,
    #                   swappiness: 1,
    #                 },
    #                 log_configuration: {
    #                   log_driver: "json-file", # required, accepts json-file, syslog, journald, gelf, fluentd, awslogs, splunk
    #                   options: {
    #                     "String" => "String",
    #                   },
    #                   secret_options: [
    #                     {
    #                       name: "String", # required
    #                       value_from: "String", # required
    #                     },
    #                   ],
    #                 },
    #                 secrets: [
    #                   {
    #                     name: "String", # required
    #                     value_from: "String", # required
    #                   },
    #                 ],
    #               },
    #             },
    #           ],
    #         },
    #         retry_strategy: {
    #           attempts: 1,
    #           evaluate_on_exit: [
    #             {
    #               on_status_reason: "String",
    #               on_reason: "String",
    #               on_exit_code: "String",
    #               action: "RETRY", # required, accepts RETRY, EXIT
    #             },
    #           ],
    #         },
    #         timeout: {
    #           attempt_duration_seconds: 1,
    #         },
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] job_definition_name
    #   The name of the job definition to register. Up to 128 letters
    #   (uppercase and lowercase), numbers, hyphens, and underscores are
    #   allowed.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of job definition.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   Default parameter substitution placeholders to set in the job
    #   definition. Parameters are specified as a key-value pair mapping.
    #   Parameters in a `SubmitJob` request override any corresponding
    #   parameter defaults from the job definition.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] container_properties
    #   An object with various properties specific to single-node
    #   container-based jobs. If the job definition's `type` parameter is
    #   `container`, then you must specify either `containerProperties` or
    #   `nodeProperties`.
    #   @return [Types::ContainerProperties]
    #
    # @!attribute [rw] node_properties
    #   An object with various properties specific to multi-node parallel
    #   jobs. If you specify node properties for a job, it becomes a
    #   multi-node parallel job. For more information, see [Multi-node
    #   Parallel Jobs][1] in the *AWS Batch User Guide*. If the job
    #   definition's `type` parameter is `container`, then you must specify
    #   either `containerProperties` or `nodeProperties`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/multi-node-parallel-jobs.html
    #   @return [Types::NodeProperties]
    #
    # @!attribute [rw] retry_strategy
    #   The retry strategy to use for failed jobs that are submitted with
    #   this job definition. Any retry strategy that is specified during a
    #   SubmitJob operation overrides the retry strategy defined here. If a
    #   job is terminated due to a timeout, it is not retried.
    #   @return [Types::RetryStrategy]
    #
    # @!attribute [rw] timeout
    #   The timeout configuration for jobs that are submitted with this job
    #   definition, after which AWS Batch terminates your jobs if they have
    #   not finished. If a job is terminated due to a timeout, it is not
    #   retried. The minimum value for the timeout is 60 seconds. Any
    #   timeout configuration that is specified during a SubmitJob operation
    #   overrides the timeout configuration defined here. For more
    #   information, see [Job Timeouts][1] in the *Amazon Elastic Container
    #   Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/job_timeouts.html
    #   @return [Types::JobTimeout]
    #
    # @!attribute [rw] tags
    #   The tags that you apply to the job definition to help you categorize
    #   and organize your resources. Each tag consists of a key and an
    #   optional value. For more information, see [Tagging AWS Resources][1]
    #   in *AWS General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/RegisterJobDefinitionRequest AWS API Documentation
    #
    class RegisterJobDefinitionRequest < Struct.new(
      :job_definition_name,
      :type,
      :parameters,
      :container_properties,
      :node_properties,
      :retry_strategy,
      :timeout,
      :tags)
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

    # The type and amount of a resource to assign to a container. Currently,
    # the only supported resource type is `GPU`.
    #
    # @note When making an API call, you may pass ResourceRequirement
    #   data as a hash:
    #
    #       {
    #         value: "String", # required
    #         type: "GPU", # required, accepts GPU
    #       }
    #
    # @!attribute [rw] value
    #   The number of physical GPUs to reserve for the container. The number
    #   of GPUs reserved for all containers in a job should not exceed the
    #   number of available GPUs on the compute resource that the job is
    #   launched on.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of resource to assign to a container. Currently, the only
    #   supported resource type is `GPU`.
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

    # The retry strategy associated with a job.
    #
    # @note When making an API call, you may pass RetryStrategy
    #   data as a hash:
    #
    #       {
    #         attempts: 1,
    #         evaluate_on_exit: [
    #           {
    #             on_status_reason: "String",
    #             on_reason: "String",
    #             on_exit_code: "String",
    #             action: "RETRY", # required, accepts RETRY, EXIT
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] attempts
    #   The number of times to move a job to the `RUNNABLE` status. You may
    #   specify between 1 and 10 attempts. If the value of `attempts` is
    #   greater than one, the job is retried on failure the same number of
    #   attempts as the value.
    #   @return [Integer]
    #
    # @!attribute [rw] evaluate_on_exit
    #   Array of up to 5 objects that specify conditions under which the job
    #   should be retried or failed. If this parameter is specified, then
    #   the `attempts` parameter must also be specified.
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

    # An object representing the secret to expose to your container. Secrets
    # can be exposed to a container in the following ways:
    #
    # * To inject sensitive data into your containers as environment
    #   variables, use the `secrets` container definition parameter.
    #
    # * To reference sensitive information in the log configuration of a
    #   container, use the `secretOptions` container definition parameter.
    #
    # For more information, see [Specifying Sensitive Data][1] in the
    # *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/specifying-sensitive-data.html
    #
    # @note When making an API call, you may pass Secret
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #         value_from: "String", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the secret.
    #   @return [String]
    #
    # @!attribute [rw] value_from
    #   The secret to expose to the container. The supported values are
    #   either the full ARN of the AWS Secrets Manager secret or the full
    #   ARN of the parameter in the AWS Systems Manager Parameter Store.
    #
    #   <note markdown="1"> If the AWS Systems Manager Parameter Store parameter exists in the
    #   same Region as the task you are launching, then you can use either
    #   the full ARN or name of the parameter. If the parameter exists in a
    #   different Region, then the full ARN must be specified.
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

    # @note When making an API call, you may pass SubmitJobRequest
    #   data as a hash:
    #
    #       {
    #         job_name: "String", # required
    #         job_queue: "String", # required
    #         array_properties: {
    #           size: 1,
    #         },
    #         depends_on: [
    #           {
    #             job_id: "String",
    #             type: "N_TO_N", # accepts N_TO_N, SEQUENTIAL
    #           },
    #         ],
    #         job_definition: "String", # required
    #         parameters: {
    #           "String" => "String",
    #         },
    #         container_overrides: {
    #           vcpus: 1,
    #           memory: 1,
    #           command: ["String"],
    #           instance_type: "String",
    #           environment: [
    #             {
    #               name: "String",
    #               value: "String",
    #             },
    #           ],
    #           resource_requirements: [
    #             {
    #               value: "String", # required
    #               type: "GPU", # required, accepts GPU
    #             },
    #           ],
    #         },
    #         node_overrides: {
    #           num_nodes: 1,
    #           node_property_overrides: [
    #             {
    #               target_nodes: "String", # required
    #               container_overrides: {
    #                 vcpus: 1,
    #                 memory: 1,
    #                 command: ["String"],
    #                 instance_type: "String",
    #                 environment: [
    #                   {
    #                     name: "String",
    #                     value: "String",
    #                   },
    #                 ],
    #                 resource_requirements: [
    #                   {
    #                     value: "String", # required
    #                     type: "GPU", # required, accepts GPU
    #                   },
    #                 ],
    #               },
    #             },
    #           ],
    #         },
    #         retry_strategy: {
    #           attempts: 1,
    #           evaluate_on_exit: [
    #             {
    #               on_status_reason: "String",
    #               on_reason: "String",
    #               on_exit_code: "String",
    #               action: "RETRY", # required, accepts RETRY, EXIT
    #             },
    #           ],
    #         },
    #         timeout: {
    #           attempt_duration_seconds: 1,
    #         },
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] job_name
    #   The name of the job. The first character must be alphanumeric, and
    #   up to 128 letters (uppercase and lowercase), numbers, hyphens, and
    #   underscores are allowed.
    #   @return [String]
    #
    # @!attribute [rw] job_queue
    #   The job queue into which the job is submitted. You can specify
    #   either the name or the Amazon Resource Name (ARN) of the queue.
    #   @return [String]
    #
    # @!attribute [rw] array_properties
    #   The array properties for the submitted job, such as the size of the
    #   array. The array size can be between 2 and 10,000. If you specify
    #   array properties for a job, it becomes an array job. For more
    #   information, see [Array Jobs][1] in the *AWS Batch User Guide*.
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
    #   `name`, `name:revision`, or the Amazon Resource Name (ARN) for the
    #   job definition. If `name` is specified without a revision then the
    #   latest active revision is used.
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
    #   A list of container overrides in JSON format that specify the name
    #   of a container in the specified job definition and the overrides it
    #   should receive. You can override the default command for a container
    #   (that is specified in the job definition or the Docker image) with a
    #   `command` override. You can also override existing environment
    #   variables (that are specified in the job definition or Docker image)
    #   on a container or add new environment variables to it with an
    #   `environment` override.
    #   @return [Types::ContainerOverrides]
    #
    # @!attribute [rw] node_overrides
    #   A list of node overrides in JSON format that specify the node range
    #   to target and the container overrides for that node range.
    #   @return [Types::NodeOverrides]
    #
    # @!attribute [rw] retry_strategy
    #   The retry strategy to use for failed jobs from this SubmitJob
    #   operation. When a retry strategy is specified here, it overrides the
    #   retry strategy defined in the job definition.
    #   @return [Types::RetryStrategy]
    #
    # @!attribute [rw] timeout
    #   The timeout configuration for this SubmitJob operation. You can
    #   specify a timeout duration after which AWS Batch terminates your
    #   jobs if they have not finished. If a job is terminated due to a
    #   timeout, it is not retried. The minimum value for the timeout is 60
    #   seconds. This configuration overrides any timeout configuration
    #   specified in the job definition. For array jobs, child jobs have the
    #   same timeout configuration as the parent job. For more information,
    #   see [Job Timeouts][1] in the *Amazon Elastic Container Service
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/job_timeouts.html
    #   @return [Types::JobTimeout]
    #
    # @!attribute [rw] tags
    #   The tags that you apply to the job request to help you categorize
    #   and organize your resources. Each tag consists of a key and an
    #   optional value. For more information, see [Tagging AWS Resources][1]
    #   in *AWS General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/SubmitJobRequest AWS API Documentation
    #
    class SubmitJobRequest < Struct.new(
      :job_name,
      :job_queue,
      :array_properties,
      :depends_on,
      :job_definition,
      :parameters,
      :container_overrides,
      :node_overrides,
      :retry_strategy,
      :timeout,
      :tags)
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

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "String", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to which to add tags.
    #   AWS Batch resources that support tags are compute environments,
    #   jobs, job definitions, and job queues. ARNs for child jobs of array
    #   and multi-node parallel (MNP) jobs are not supported.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags that you apply to the resource to help you categorize and
    #   organize your resources. Each tag consists of a key and an optional
    #   value. For more information, see [Tagging AWS Resources][1] in *AWS
    #   General Reference*.
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

    # @note When making an API call, you may pass TerminateJobRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "String", # required
    #         reason: "String", # required
    #       }
    #
    # @!attribute [rw] job_id
    #   The AWS Batch job ID of the job to terminate.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   A message to attach to the job that explains the reason for
    #   canceling it. This message is returned by future DescribeJobs
    #   operations on the job. This message is also recorded in the AWS
    #   Batch activity logs.
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

    # The container path, mount options, and size of the tmpfs mount.
    #
    # @note When making an API call, you may pass Tmpfs
    #   data as a hash:
    #
    #       {
    #         container_path: "String", # required
    #         size: 1, # required
    #         mount_options: ["String"],
    #       }
    #
    # @!attribute [rw] container_path
    #   The absolute file path in the container where the tmpfs volume is to
    #   be mounted.
    #   @return [String]
    #
    # @!attribute [rw] size
    #   The size (in MiB) of the tmpfs volume.
    #   @return [Integer]
    #
    # @!attribute [rw] mount_options
    #   The list of tmpfs volume mount options.
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
    # @note When making an API call, you may pass Ulimit
    #   data as a hash:
    #
    #       {
    #         hard_limit: 1, # required
    #         name: "String", # required
    #         soft_limit: 1, # required
    #       }
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

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "String", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource from which to delete
    #   tags. AWS Batch resources that support tags are compute
    #   environments, jobs, job definitions, and job queues. ARNs for child
    #   jobs of array and multi-node parallel (MNP) jobs are not supported.
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

    # @note When making an API call, you may pass UpdateComputeEnvironmentRequest
    #   data as a hash:
    #
    #       {
    #         compute_environment: "String", # required
    #         state: "ENABLED", # accepts ENABLED, DISABLED
    #         compute_resources: {
    #           minv_cpus: 1,
    #           maxv_cpus: 1,
    #           desiredv_cpus: 1,
    #         },
    #         service_role: "String",
    #       }
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
    #   @return [String]
    #
    # @!attribute [rw] compute_resources
    #   Details of the compute resources managed by the compute environment.
    #   Required for a managed compute environment.
    #   @return [Types::ComputeResourceUpdate]
    #
    # @!attribute [rw] service_role
    #   The full Amazon Resource Name (ARN) of the IAM role that allows AWS
    #   Batch to make calls to other AWS services on your behalf.
    #
    #   If your specified role has a path other than `/`, then you must
    #   either specify the full role ARN (this is recommended) or prefix the
    #   role name with the path.
    #
    #   <note markdown="1"> Depending on how you created your AWS Batch service role, its ARN
    #   may contain the `service-role` path prefix. When you only specify
    #   the name of the service role, AWS Batch assumes that your ARN does
    #   not use the `service-role` path prefix. Because of this, we
    #   recommend that you specify the full ARN of your service role when
    #   you create compute environments.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/UpdateComputeEnvironmentRequest AWS API Documentation
    #
    class UpdateComputeEnvironmentRequest < Struct.new(
      :compute_environment,
      :state,
      :compute_resources,
      :service_role)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] compute_environment_name
    #   The name of the compute environment.
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

    # @note When making an API call, you may pass UpdateJobQueueRequest
    #   data as a hash:
    #
    #       {
    #         job_queue: "String", # required
    #         state: "ENABLED", # accepts ENABLED, DISABLED
    #         priority: 1,
    #         compute_environment_order: [
    #           {
    #             order: 1, # required
    #             compute_environment: "String", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] job_queue
    #   The name or the Amazon Resource Name (ARN) of the job queue.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Describes the queue's ability to accept new jobs. If the job queue
    #   state is `ENABLED`, it is able to accept jobs. If the job queue
    #   state is `DISABLED`, new jobs cannot be added to the queue, but jobs
    #   already in the queue can finish.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority of the job queue. Job queues with a higher priority (or
    #   a higher integer value for the `priority` parameter) are evaluated
    #   first when associated with the same compute environment. Priority is
    #   determined in descending order, for example, a job queue with a
    #   priority value of `10` is given scheduling preference over a job
    #   queue with a priority value of `1`.
    #   @return [Integer]
    #
    # @!attribute [rw] compute_environment_order
    #   Details the set of compute environments mapped to a job queue and
    #   their order relative to each other. This is one of the parameters
    #   used by the job scheduler to determine which compute environment
    #   should execute a given job.
    #   @return [Array<Types::ComputeEnvironmentOrder>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/UpdateJobQueueRequest AWS API Documentation
    #
    class UpdateJobQueueRequest < Struct.new(
      :job_queue,
      :state,
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

    # A data volume used in a job's container properties.
    #
    # @note When making an API call, you may pass Volume
    #   data as a hash:
    #
    #       {
    #         host: {
    #           source_path: "String",
    #         },
    #         name: "String",
    #       }
    #
    # @!attribute [rw] host
    #   The contents of the `host` parameter determine whether your data
    #   volume persists on the host container instance and where it is
    #   stored. If the host parameter is empty, then the Docker daemon
    #   assigns a host path for your data volume. However, the data is not
    #   guaranteed to persist after the containers associated with it stop
    #   running.
    #   @return [Types::Host]
    #
    # @!attribute [rw] name
    #   The name of the volume. Up to 255 letters (uppercase and lowercase),
    #   numbers, hyphens, and underscores are allowed. This name is
    #   referenced in the `sourceVolume` parameter of container definition
    #   `mountPoints`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/Volume AWS API Documentation
    #
    class Volume < Struct.new(
      :host,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
