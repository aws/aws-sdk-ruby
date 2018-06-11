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
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/AttemptContainerDetail AWS API Documentation
    #
    class AttemptContainerDetail < Struct.new(
      :container_instance_arn,
      :task_arn,
      :exit_code,
      :reason,
      :log_stream_name)
      include Aws::Structure
    end

    # An object representing a job attempt.
    #
    # @!attribute [rw] container
    #   Details about the container in this job attempt.
    #   @return [Types::AttemptContainerDetail]
    #
    # @!attribute [rw] started_at
    #   The Unix time stamp (in seconds and milliseconds) for when the
    #   attempt was started (when the attempt transitioned from the
    #   `STARTING` state to the `RUNNING` state).
    #   @return [Integer]
    #
    # @!attribute [rw] stopped_at
    #   The Unix time stamp (in seconds and milliseconds) for when the
    #   attempt was stopped (when the attempt transitioned from the
    #   `RUNNING` state to a terminal state, such as `SUCCEEDED` or
    #   `FAILED`).
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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/CancelJobResponse AWS API Documentation
    #
    class CancelJobResponse < Aws::EmptyStructure; end

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
    # @!attribute [rw] type
    #   The type of the compute environment.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the compute environment. The valid values are `ENABLED`
    #   or `DISABLED`. An `ENABLED` state indicates that you can register
    #   instances with the compute environment and that the associated
    #   instances can accept jobs.
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
      :type,
      :state,
      :status,
      :status_reason,
      :compute_resources,
      :service_role)
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
      include Aws::Structure
    end

    # An object representing an AWS Batch compute resource.
    #
    # @note When making an API call, you may pass ComputeResource
    #   data as a hash:
    #
    #       {
    #         type: "EC2", # required, accepts EC2, SPOT
    #         minv_cpus: 1, # required
    #         maxv_cpus: 1, # required
    #         desiredv_cpus: 1,
    #         instance_types: ["String"], # required
    #         image_id: "String",
    #         subnets: ["String"], # required
    #         security_group_ids: ["String"], # required
    #         ec2_key_pair: "String",
    #         instance_role: "String", # required
    #         tags: {
    #           "String" => "String",
    #         },
    #         bid_percentage: 1,
    #         spot_iam_fleet_role: "String",
    #       }
    #
    # @!attribute [rw] type
    #   The type of compute environment.
    #   @return [String]
    #
    # @!attribute [rw] minv_cpus
    #   The minimum number of EC2 vCPUs that an environment should maintain.
    #   @return [Integer]
    #
    # @!attribute [rw] maxv_cpus
    #   The maximum number of EC2 vCPUs that an environment can reach.
    #   @return [Integer]
    #
    # @!attribute [rw] desiredv_cpus
    #   The desired number of EC2 vCPUS in the compute environment.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_types
    #   The instances types that may be launched. You can specify instance
    #   families to launch any instance type within those families (for
    #   example, `c4` or `p3`), or you can specify specific sizes within a
    #   family (such as `c4.8xlarge`). You can also choose `optimal` to pick
    #   instance types (from the latest C, M, and R instance families) on
    #   the fly that match the demand of your job queues.
    #   @return [Array<String>]
    #
    # @!attribute [rw] image_id
    #   The Amazon Machine Image (AMI) ID used for instances launched in the
    #   compute environment.
    #   @return [String]
    #
    # @!attribute [rw] subnets
    #   The VPC subnets into which the compute resources are launched.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   The EC2 security group that is associated with instances launched in
    #   the compute environment.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ec2_key_pair
    #   The EC2 key pair that is used for instances launched in the compute
    #   environment.
    #   @return [String]
    #
    # @!attribute [rw] instance_role
    #   The Amazon ECS instance profile applied to Amazon EC2 instances in a
    #   compute environment. You can specify the short name or full Amazon
    #   Resource Name (ARN) of an instance profile. For example,
    #   `ecsInstanceRole` or
    #   `arn:aws:iam::<aws_account_id>:instance-profile/ecsInstanceRole`.
    #   For more information, see [Amazon ECS Instance Role][1] in the *AWS
    #   Batch User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/batch/latest/userguide/instance_IAM_role.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pair tags to be applied to resources that are launched in
    #   the compute environment.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] bid_percentage
    #   The minimum percentage that a Spot Instance price must be when
    #   compared with the On-Demand price for that instance type before
    #   instances are launched. For example, if your bid percentage is 20%,
    #   then the Spot price must be below 20% of the current On-Demand price
    #   for that EC2 instance.
    #   @return [Integer]
    #
    # @!attribute [rw] spot_iam_fleet_role
    #   The Amazon Resource Name (ARN) of the Amazon EC2 Spot Fleet IAM role
    #   applied to a `SPOT` compute environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/ComputeResource AWS API Documentation
    #
    class ComputeResource < Struct.new(
      :type,
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
      :bid_percentage,
      :spot_iam_fleet_role)
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
    #   The minimum number of EC2 vCPUs that an environment should maintain.
    #   @return [Integer]
    #
    # @!attribute [rw] maxv_cpus
    #   The maximum number of EC2 vCPUs that an environment can reach.
    #   @return [Integer]
    #
    # @!attribute [rw] desiredv_cpus
    #   The desired number of EC2 vCPUS in the compute environment.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/ComputeResourceUpdate AWS API Documentation
    #
    class ComputeResourceUpdate < Struct.new(
      :minv_cpus,
      :maxv_cpus,
      :desiredv_cpus)
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
    #   The number of VCPUs allocated for the job.
    #   @return [Integer]
    #
    # @!attribute [rw] memory
    #   The number of MiB of memory reserved for the job.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/ContainerDetail AWS API Documentation
    #
    class ContainerDetail < Struct.new(
      :image,
      :vcpus,
      :memory,
      :command,
      :job_role_arn,
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
      :log_stream_name)
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
    #         environment: [
    #           {
    #             name: "String",
    #             value: "String",
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/ContainerOverrides AWS API Documentation
    #
    class ContainerOverrides < Struct.new(
      :vcpus,
      :memory,
      :command,
      :environment)
      include Aws::Structure
    end

    # Container properties are used in job definitions to describe the
    # container that is launched as part of a job.
    #
    # @note When making an API call, you may pass ContainerProperties
    #   data as a hash:
    #
    #       {
    #         image: "String", # required
    #         vcpus: 1, # required
    #         memory: 1, # required
    #         command: ["String"],
    #         job_role_arn: "String",
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
    #   [1]: https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container
    #   [2]: https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [String]
    #
    # @!attribute [rw] vcpus
    #   The number of vCPUs reserved for the container. This parameter maps
    #   to `CpuShares` in the [Create a container][1] section of the [Docker
    #   Remote API][2] and the `--cpu-shares` option to [docker run][3].
    #   Each vCPU is equivalent to 1,024 CPU shares. You must specify at
    #   least one vCPU.
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container
    #   [2]: https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [Integer]
    #
    # @!attribute [rw] memory
    #   The hard limit (in MiB) of memory to present to the container. If
    #   your container attempts to exceed the memory specified here, the
    #   container is killed. This parameter maps to `Memory` in the [Create
    #   a container][1] section of the [Docker Remote API][2] and the
    #   `--memory` option to [docker run][3]. You must specify at least 4
    #   MiB of memory for a job.
    #
    #   <note markdown="1"> If you are trying to maximize your resource utilization by providing
    #   your jobs as much memory as possible for a particular instance type,
    #   see [Memory Management][4] in the *AWS Batch User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container
    #   [2]: https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   [4]: http://docs.aws.amazon.com/batch/latest/userguide/memory-management.html
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
    #   [1]: https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container
    #   [2]: https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   [4]: https://docs.docker.com/engine/reference/builder/#cmd
    #   @return [Array<String>]
    #
    # @!attribute [rw] job_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that the container
    #   can assume for AWS permissions.
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
    #   [1]: https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container
    #   [2]: https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/
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
    #   [1]: https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container
    #   [2]: https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/
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
    #   [1]: https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container
    #   [2]: https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/
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
    #   [1]: https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container
    #   [2]: https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/
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
    #   [1]: https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container
    #   [2]: https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/
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
    #   [1]: https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/#create-a-container
    #   [2]: https://docs.docker.com/engine/reference/api/docker_remote_api_v1.23/
    #   [3]: https://docs.docker.com/engine/reference/run/
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/ContainerProperties AWS API Documentation
    #
    class ContainerProperties < Struct.new(
      :image,
      :vcpus,
      :memory,
      :command,
      :job_role_arn,
      :volumes,
      :environment,
      :mount_points,
      :readonly_root_filesystem,
      :privileged,
      :ulimits,
      :user)
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
    #           minv_cpus: 1, # required
    #           maxv_cpus: 1, # required
    #           desiredv_cpus: 1,
    #           instance_types: ["String"], # required
    #           image_id: "String",
    #           subnets: ["String"], # required
    #           security_group_ids: ["String"], # required
    #           ec2_key_pair: "String",
    #           instance_role: "String", # required
    #           tags: {
    #             "String" => "String",
    #           },
    #           bid_percentage: 1,
    #           spot_iam_fleet_role: "String",
    #         },
    #         service_role: "String", # required
    #       }
    #
    # @!attribute [rw] compute_environment_name
    #   The name for your compute environment. Up to 128 letters (uppercase
    #   and lowercase), numbers, hyphens, and underscores are allowed.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the compute environment.
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
    #   This parameter is required for managed compute environments.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/CreateComputeEnvironmentRequest AWS API Documentation
    #
    class CreateComputeEnvironmentRequest < Struct.new(
      :compute_environment_name,
      :type,
      :state,
      :compute_resources,
      :service_role)
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
    #       }
    #
    # @!attribute [rw] job_queue_name
    #   The name of the job queue.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the job queue. If the job queue state is `ENABLED`, it
    #   is able to accept jobs.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority of the job queue. Job queues with a higher priority (or
    #   a higher integer value for the `priority` parameter) are evaluated
    #   first when associated with same compute environment. Priority is
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/CreateJobQueueRequest AWS API Documentation
    #
    class CreateJobQueueRequest < Struct.new(
      :job_queue_name,
      :state,
      :priority,
      :compute_environment_order)
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
    #   A space-separated list of up to 100 job definition names or full
    #   Amazon Resource Name (ARN) entries.
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
    #   A space-separated list of up to 100 job IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/DescribeJobsRequest AWS API Documentation
    #
    class DescribeJobsRequest < Struct.new(
      :jobs)
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
      include Aws::Structure
    end

    # The contents of the `host` parameter determine whether your data
    # volume persists on the host container instance and where it is stored.
    # If the host parameter is empty, then the Docker daemon assigns a host
    # path for your data volume, but the data is not guaranteed to persist
    # after the containers associated with it stop running.
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
    #   assigned a host path for you. If the `host` parameter contains a
    #   `sourcePath` file location, then the data volume persists at the
    #   specified location on the host container instance until you delete
    #   it manually. If the `sourcePath` value does not exist on the host
    #   container instance, the Docker daemon creates it. If the location
    #   does exist, the contents of the source path folder are exported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/Host AWS API Documentation
    #
    class Host < Struct.new(
      :source_path)
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
    #   corresponding parameter defaults from the job definition.
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
      :timeout)
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
      include Aws::Structure
    end

    # An object representing an AWS Batch job.
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
    #   The Unix time stamp (in seconds and milliseconds) for when the job
    #   was created. For non-array jobs and parent array jobs, this is when
    #   the job entered the `SUBMITTED` state (at the time SubmitJob was
    #   called). For array child jobs, this is when the child job was
    #   spawned by its parent and entered the `PENDING` state.
    #   @return [Integer]
    #
    # @!attribute [rw] retry_strategy
    #   The retry strategy to use for this job if an attempt fails.
    #   @return [Types::RetryStrategy]
    #
    # @!attribute [rw] started_at
    #   The Unix time stamp (in seconds and milliseconds) for when the job
    #   was started (when the job transitioned from the `STARTING` state to
    #   the `RUNNING` state).
    #   @return [Integer]
    #
    # @!attribute [rw] stopped_at
    #   The Unix time stamp (in seconds and milliseconds) for when the job
    #   was stopped (when the job transitioned from the `RUNNING` state to a
    #   terminal state, such as `SUCCEEDED` or `FAILED`).
    #   @return [Integer]
    #
    # @!attribute [rw] depends_on
    #   A list of job names or IDs on which this job depends.
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
    # @!attribute [rw] array_properties
    #   The array properties of the job, if it is an array job.
    #   @return [Types::ArrayPropertiesDetail]
    #
    # @!attribute [rw] timeout
    #   The timeout configuration for the job.
    #   @return [Types::JobTimeout]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/JobDetail AWS API Documentation
    #
    class JobDetail < Struct.new(
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
      :array_properties,
      :timeout)
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
    #   Describes the ability of the queue to accept new jobs.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/JobQueueDetail AWS API Documentation
    #
    class JobQueueDetail < Struct.new(
      :job_queue_name,
      :job_queue_arn,
      :state,
      :status,
      :status_reason,
      :priority,
      :compute_environment_order)
      include Aws::Structure
    end

    # An object representing summary details of a job.
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
    #   The Unix time stamp for when the job was created. For non-array jobs
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
    #   The Unix time stamp for when the job was started (when the job
    #   transitioned from the `STARTING` state to the `RUNNING` state).
    #   @return [Integer]
    #
    # @!attribute [rw] stopped_at
    #   The Unix time stamp for when the job was stopped (when the job
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/JobSummary AWS API Documentation
    #
    class JobSummary < Struct.new(
      :job_id,
      :job_name,
      :created_at,
      :status,
      :status_reason,
      :started_at,
      :stopped_at,
      :container,
      :array_properties)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListJobsRequest
    #   data as a hash:
    #
    #       {
    #         job_queue: "String",
    #         array_job_id: "String",
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
      :job_status,
      :max_results,
      :next_token)
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
      include Aws::Structure
    end

    # Details on a Docker volume mount point that is used in a job's
    # container properties.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass RegisterJobDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         job_definition_name: "String", # required
    #         type: "container", # required, accepts container
    #         parameters: {
    #           "String" => "String",
    #         },
    #         container_properties: {
    #           image: "String", # required
    #           vcpus: 1, # required
    #           memory: 1, # required
    #           command: ["String"],
    #           job_role_arn: "String",
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
    #         },
    #         retry_strategy: {
    #           attempts: 1,
    #         },
    #         timeout: {
    #           attempt_duration_seconds: 1,
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
    #   An object with various properties specific for container-based jobs.
    #   This parameter is required if the `type` parameter is `container`.
    #   @return [Types::ContainerProperties]
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
    #   [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/job_timeouts.html
    #   @return [Types::JobTimeout]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/RegisterJobDefinitionRequest AWS API Documentation
    #
    class RegisterJobDefinitionRequest < Struct.new(
      :job_definition_name,
      :type,
      :parameters,
      :container_properties,
      :retry_strategy,
      :timeout)
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
      include Aws::Structure
    end

    # The retry strategy associated with a job.
    #
    # @note When making an API call, you may pass RetryStrategy
    #   data as a hash:
    #
    #       {
    #         attempts: 1,
    #       }
    #
    # @!attribute [rw] attempts
    #   The number of times to move a job to the `RUNNABLE` status. You may
    #   specify between 1 and 10 attempts. If the value of `attempts` is
    #   greater than one, the job is retried if it fails until it has moved
    #   to `RUNNABLE` that many times.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/RetryStrategy AWS API Documentation
    #
    class RetryStrategy < Struct.new(
      :attempts)
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
    #           environment: [
    #             {
    #               name: "String",
    #               value: "String",
    #             },
    #           ],
    #         },
    #         retry_strategy: {
    #           attempts: 1,
    #         },
    #         timeout: {
    #           attempt_duration_seconds: 1,
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
    #   [1]: http://docs.aws.amazon.com/batch/latest/userguide/array_jobs.html
    #   @return [Types::ArrayProperties]
    #
    # @!attribute [rw] depends_on
    #   A list of dependencies for the job. A job can depend upon a maximum
    #   of 20 jobs. You can specify a `SEQUENTIAL` type dependency without
    #   specifying a job ID for array jobs so that each child array job
    #   completes sequentially, starting at index 0. You can also specify an
    #   `N_TO_N` type dependency with a job ID for array jobs so that each
    #   index child of this job must wait for the corresponding index child
    #   of each dependency to complete before it can begin.
    #   @return [Array<Types::JobDependency>]
    #
    # @!attribute [rw] job_definition
    #   The job definition used by this job. This value can be either a
    #   `name:revision` or the Amazon Resource Name (ARN) for the job
    #   definition.
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
    #   [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/job_timeouts.html
    #   @return [Types::JobTimeout]
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
      :retry_strategy,
      :timeout)
      include Aws::Structure
    end

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
      :job_name,
      :job_id)
      include Aws::Structure
    end

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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/batch-2016-08-10/TerminateJobResponse AWS API Documentation
    #
    class TerminateJobResponse < Aws::EmptyStructure; end

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
      include Aws::Structure
    end

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
      include Aws::Structure
    end

    # @!attribute [rw] compute_environment_name
    #   The name of compute environment.
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
    #   Describes the queue's ability to accept new jobs.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority of the job queue. Job queues with a higher priority (or
    #   a higher integer value for the `priority` parameter) are evaluated
    #   first when associated with same compute environment. Priority is
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
      include Aws::Structure
    end

  end
end
