# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Pipes
  module Types

    # This structure specifies the VPC subnets and security groups for the
    # task, and whether a public IP address is to be used. This structure is
    # relevant only for ECS tasks that use the `awsvpc` network mode.
    #
    # @!attribute [rw] assign_public_ip
    #   Specifies whether the task's elastic network interface receives a
    #   public IP address. You can specify `ENABLED` only when `LaunchType`
    #   in `EcsParameters` is set to `FARGATE`.
    #   @return [String]
    #
    # @!attribute [rw] security_groups
    #   Specifies the security groups associated with the task. These
    #   security groups must all be in the same VPC. You can specify as many
    #   as five security groups. If you do not specify a security group, the
    #   default security group for the VPC is used.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnets
    #   Specifies the subnets associated with the task. These subnets must
    #   all be in the same VPC. You can specify as many as 16 subnets.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/AwsVpcConfiguration AWS API Documentation
    #
    class AwsVpcConfiguration < Struct.new(
      :assign_public_ip,
      :security_groups,
      :subnets)
      SENSITIVE = []
      include Aws::Structure
    end

    # The array properties for the submitted job, such as the size of the
    # array. The array size can be between 2 and 10,000. If you specify
    # array properties for a job, it becomes an array job. This parameter is
    # used only if the target is an Batch job.
    #
    # @!attribute [rw] size
    #   The size of the array, if this is an array batch job.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/BatchArrayProperties AWS API Documentation
    #
    class BatchArrayProperties < Struct.new(
      :size)
      SENSITIVE = []
      include Aws::Structure
    end

    # The overrides that are sent to a container.
    #
    # @!attribute [rw] command
    #   The command to send to the container that overrides the default
    #   command from the Docker image or the task definition.
    #   @return [Array<String>]
    #
    # @!attribute [rw] environment
    #   The environment variables to send to the container. You can add new
    #   environment variables, which are added to the container at launch,
    #   or you can override the existing environment variables from the
    #   Docker image or the task definition.
    #
    #   <note markdown="1"> Environment variables cannot start with "`Batch`". This naming
    #   convention is reserved for variables that Batch sets.
    #
    #    </note>
    #   @return [Array<Types::BatchEnvironmentVariable>]
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
    # @!attribute [rw] resource_requirements
    #   The type and amount of resources to assign to a container. This
    #   overrides the settings in the job definition. The supported
    #   resources include `GPU`, `MEMORY`, and `VCPU`.
    #   @return [Array<Types::BatchResourceRequirement>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/BatchContainerOverrides AWS API Documentation
    #
    class BatchContainerOverrides < Struct.new(
      :command,
      :environment,
      :instance_type,
      :resource_requirements)
      SENSITIVE = []
      include Aws::Structure
    end

    # The environment variables to send to the container. You can add new
    # environment variables, which are added to the container at launch, or
    # you can override the existing environment variables from the Docker
    # image or the task definition.
    #
    # <note markdown="1"> Environment variables cannot start with "`Batch`". This naming
    # convention is reserved for variables that Batch sets.
    #
    #  </note>
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/BatchEnvironmentVariable AWS API Documentation
    #
    class BatchEnvironmentVariable < Struct.new(
      :name,
      :value)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/BatchJobDependency AWS API Documentation
    #
    class BatchJobDependency < Struct.new(
      :job_id,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The type and amount of a resource to assign to a container. The
    # supported resources include `GPU`, `MEMORY`, and `VCPU`.
    #
    # @!attribute [rw] type
    #   The type of resource to assign to a container. The supported
    #   resources include `GPU`, `MEMORY`, and `VCPU`.
    #   @return [String]
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
    #     container is terminated. This parameter maps to `Memory` in the [
    #     Create a container][1] section of the [Docker Remote API][2] and
    #     the `--memory` option to [docker run][3]. You must specify at
    #     least 4 MiB of memory for a job. This is required but can be
    #     specified in several places for multi-node parallel (MNP) jobs. It
    #     must be specified for each node at least once. This parameter maps
    #     to `Memory` in the [ Create a container][1] section of the [Docker
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
    #     : `VCPU` = 1, 2, 4, or 8
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
    #     maps to `CpuShares` in the [ Create a container][1] section of the
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/BatchResourceRequirement AWS API Documentation
    #
    class BatchResourceRequirement < Struct.new(
      :type,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The retry strategy that's associated with a job. For more
    # information, see [ Automated job retries][1] in the *Batch User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/batch/latest/userguide/job_retries.html
    #
    # @!attribute [rw] attempts
    #   The number of times to move a job to the `RUNNABLE` status. If the
    #   value of `attempts` is greater than one, the job is retried on
    #   failure the same number of attempts as the value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/BatchRetryStrategy AWS API Documentation
    #
    class BatchRetryStrategy < Struct.new(
      :attempts)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a capacity provider strategy. To learn more, see
    # [CapacityProviderStrategyItem][1] in the Amazon ECS API Reference.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CapacityProviderStrategyItem.html
    #
    # @!attribute [rw] base
    #   The base value designates how many tasks, at a minimum, to run on
    #   the specified capacity provider. Only one capacity provider in a
    #   capacity provider strategy can have a base defined. If no value is
    #   specified, the default value of 0 is used.
    #   @return [Integer]
    #
    # @!attribute [rw] capacity_provider
    #   The short name of the capacity provider.
    #   @return [String]
    #
    # @!attribute [rw] weight
    #   The weight value designates the relative percentage of the total
    #   number of tasks launched that should use the specified capacity
    #   provider. The weight value is taken into consideration after the
    #   base value, if defined, is satisfied.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/CapacityProviderStrategyItem AWS API Documentation
    #
    class CapacityProviderStrategyItem < Struct.new(
      :base,
      :capacity_provider,
      :weight)
      SENSITIVE = [:capacity_provider]
      include Aws::Structure
    end

    # An action you attempted resulted in an exception.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource that caused the exception.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource that caused the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   A description of the pipe.
    #   @return [String]
    #
    # @!attribute [rw] desired_state
    #   The state the pipe should be in.
    #   @return [String]
    #
    # @!attribute [rw] enrichment
    #   The ARN of the enrichment resource.
    #   @return [String]
    #
    # @!attribute [rw] enrichment_parameters
    #   The parameters required to set up enrichment on your pipe.
    #   @return [Types::PipeEnrichmentParameters]
    #
    # @!attribute [rw] name
    #   The name of the pipe.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role that allows the pipe to send data to the target.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The ARN of the source resource.
    #   @return [String]
    #
    # @!attribute [rw] source_parameters
    #   The parameters required to set up a source for your pipe.
    #   @return [Types::PipeSourceParameters]
    #
    # @!attribute [rw] tags
    #   The list of key-value pairs to associate with the pipe.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] target
    #   The ARN of the target resource.
    #   @return [String]
    #
    # @!attribute [rw] target_parameters
    #   The parameters required to set up a target for your pipe.
    #   @return [Types::PipeTargetParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/CreatePipeRequest AWS API Documentation
    #
    class CreatePipeRequest < Struct.new(
      :description,
      :desired_state,
      :enrichment,
      :enrichment_parameters,
      :name,
      :role_arn,
      :source,
      :source_parameters,
      :tags,
      :target,
      :target_parameters)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the pipe.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time the pipe was created.
    #   @return [Time]
    #
    # @!attribute [rw] current_state
    #   The state the pipe is in.
    #   @return [String]
    #
    # @!attribute [rw] desired_state
    #   The state the pipe should be in.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   When the pipe was last updated, in [ISO-8601 format][1]
    #   (YYYY-MM-DDThh:mm:ss.sTZD).
    #
    #
    #
    #   [1]: https://www.w3.org/TR/NOTE-datetime
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the pipe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/CreatePipeResponse AWS API Documentation
    #
    class CreatePipeResponse < Struct.new(
      :arn,
      :creation_time,
      :current_state,
      :desired_state,
      :last_modified_time,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A `DeadLetterConfig` object that contains information about a
    # dead-letter queue configuration.
    #
    # @!attribute [rw] arn
    #   The ARN of the Amazon SQS queue specified as the target for the
    #   dead-letter queue.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/DeadLetterConfig AWS API Documentation
    #
    class DeadLetterConfig < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the pipe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/DeletePipeRequest AWS API Documentation
    #
    class DeletePipeRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the pipe.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time the pipe was created.
    #   @return [Time]
    #
    # @!attribute [rw] current_state
    #   The state the pipe is in.
    #   @return [String]
    #
    # @!attribute [rw] desired_state
    #   The state the pipe should be in.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   When the pipe was last updated, in [ISO-8601 format][1]
    #   (YYYY-MM-DDThh:mm:ss.sTZD).
    #
    #
    #
    #   [1]: https://www.w3.org/TR/NOTE-datetime
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the pipe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/DeletePipeResponse AWS API Documentation
    #
    class DeletePipeResponse < Struct.new(
      :arn,
      :creation_time,
      :current_state,
      :desired_state,
      :last_modified_time,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the pipe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/DescribePipeRequest AWS API Documentation
    #
    class DescribePipeRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the pipe.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time the pipe was created.
    #   @return [Time]
    #
    # @!attribute [rw] current_state
    #   The state the pipe is in.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the pipe.
    #   @return [String]
    #
    # @!attribute [rw] desired_state
    #   The state the pipe should be in.
    #   @return [String]
    #
    # @!attribute [rw] enrichment
    #   The ARN of the enrichment resource.
    #   @return [String]
    #
    # @!attribute [rw] enrichment_parameters
    #   The parameters required to set up enrichment on your pipe.
    #   @return [Types::PipeEnrichmentParameters]
    #
    # @!attribute [rw] last_modified_time
    #   When the pipe was last updated, in [ISO-8601 format][1]
    #   (YYYY-MM-DDThh:mm:ss.sTZD).
    #
    #
    #
    #   [1]: https://www.w3.org/TR/NOTE-datetime
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the pipe.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role that allows the pipe to send data to the target.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The ARN of the source resource.
    #   @return [String]
    #
    # @!attribute [rw] source_parameters
    #   The parameters required to set up a source for your pipe.
    #   @return [Types::PipeSourceParameters]
    #
    # @!attribute [rw] state_reason
    #   The reason the pipe is in its current state.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of key-value pairs to associate with the pipe.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] target
    #   The ARN of the target resource.
    #   @return [String]
    #
    # @!attribute [rw] target_parameters
    #   The parameters required to set up a target for your pipe.
    #   @return [Types::PipeTargetParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/DescribePipeResponse AWS API Documentation
    #
    class DescribePipeResponse < Struct.new(
      :arn,
      :creation_time,
      :current_state,
      :description,
      :desired_state,
      :enrichment,
      :enrichment_parameters,
      :last_modified_time,
      :name,
      :role_arn,
      :source,
      :source_parameters,
      :state_reason,
      :tags,
      :target,
      :target_parameters)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # The overrides that are sent to a container. An empty container
    # override can be passed in. An example of an empty container override
    # is `\{"containerOverrides": [ ] \}`. If a non-empty container override
    # is specified, the `name` parameter must be included.
    #
    # @!attribute [rw] command
    #   The command to send to the container that overrides the default
    #   command from the Docker image or the task definition. You must also
    #   specify a container name.
    #   @return [Array<String>]
    #
    # @!attribute [rw] cpu
    #   The number of `cpu` units reserved for the container, instead of the
    #   default value from the task definition. You must also specify a
    #   container name.
    #   @return [Integer]
    #
    # @!attribute [rw] environment
    #   The environment variables to send to the container. You can add new
    #   environment variables, which are added to the container at launch,
    #   or you can override the existing environment variables from the
    #   Docker image or the task definition. You must also specify a
    #   container name.
    #   @return [Array<Types::EcsEnvironmentVariable>]
    #
    # @!attribute [rw] environment_files
    #   A list of files containing the environment variables to pass to a
    #   container, instead of the value from the container definition.
    #   @return [Array<Types::EcsEnvironmentFile>]
    #
    # @!attribute [rw] memory
    #   The hard limit (in MiB) of memory to present to the container,
    #   instead of the default value from the task definition. If your
    #   container attempts to exceed the memory specified here, the
    #   container is killed. You must also specify a container name.
    #   @return [Integer]
    #
    # @!attribute [rw] memory_reservation
    #   The soft limit (in MiB) of memory to reserve for the container,
    #   instead of the default value from the task definition. You must also
    #   specify a container name.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the container that receives the override. This parameter
    #   is required if any override is specified.
    #   @return [String]
    #
    # @!attribute [rw] resource_requirements
    #   The type and amount of a resource to assign to a container, instead
    #   of the default value from the task definition. The only supported
    #   resource is a GPU.
    #   @return [Array<Types::EcsResourceRequirement>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/EcsContainerOverride AWS API Documentation
    #
    class EcsContainerOverride < Struct.new(
      :command,
      :cpu,
      :environment,
      :environment_files,
      :memory,
      :memory_reservation,
      :name,
      :resource_requirements)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of files containing the environment variables to pass to a
    # container. You can specify up to ten environment files. The file must
    # have a `.env` file extension. Each line in an environment file should
    # contain an environment variable in `VARIABLE=VALUE` format. Lines
    # beginning with `#` are treated as comments and are ignored. For more
    # information about the environment variable file syntax, see [Declare
    # default environment variables in file][1].
    #
    # If there are environment variables specified using the `environment`
    # parameter in a container definition, they take precedence over the
    # variables contained within an environment file. If multiple
    # environment files are specified that contain the same variable,
    # they're processed from the top down. We recommend that you use unique
    # variable names. For more information, see [Specifying environment
    # variables][2] in the *Amazon Elastic Container Service Developer
    # Guide*.
    #
    # This parameter is only supported for tasks hosted on Fargate using the
    # following platform versions:
    #
    # * Linux platform version `1.4.0` or later.
    #
    # * Windows platform version `1.0.0` or later.
    #
    #
    #
    # [1]: https://docs.docker.com/compose/env-file/
    # [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/taskdef-envfiles.html
    #
    # @!attribute [rw] type
    #   The file type to use. The only supported value is `s3`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The Amazon Resource Name (ARN) of the Amazon S3 object containing
    #   the environment variable file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/EcsEnvironmentFile AWS API Documentation
    #
    class EcsEnvironmentFile < Struct.new(
      :type,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The environment variables to send to the container. You can add new
    # environment variables, which are added to the container at launch, or
    # you can override the existing environment variables from the Docker
    # image or the task definition. You must also specify a container name.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/EcsEnvironmentVariable AWS API Documentation
    #
    class EcsEnvironmentVariable < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The amount of ephemeral storage to allocate for the task. This
    # parameter is used to expand the total amount of ephemeral storage
    # available, beyond the default amount, for tasks hosted on Fargate. For
    # more information, see [Fargate task storage][1] in the *Amazon ECS
    # User Guide for Fargate*.
    #
    # <note markdown="1"> This parameter is only supported for tasks hosted on Fargate using
    # Linux platform version `1.4.0` or later. This parameter is not
    # supported for Windows containers on Fargate.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/userguide/using_data_volumes.html
    #
    # @!attribute [rw] size_in_gi_b
    #   The total amount, in GiB, of ephemeral storage to set for the task.
    #   The minimum supported value is `21` GiB and the maximum supported
    #   value is `200` GiB.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/EcsEphemeralStorage AWS API Documentation
    #
    class EcsEphemeralStorage < Struct.new(
      :size_in_gi_b)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details on an Elastic Inference accelerator task override. This
    # parameter is used to override the Elastic Inference accelerator
    # specified in the task definition. For more information, see [Working
    # with Amazon Elastic Inference on Amazon ECS][1] in the *Amazon Elastic
    # Container Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/userguide/ecs-inference.html
    #
    # @!attribute [rw] device_name
    #   The Elastic Inference accelerator device name to override for the
    #   task. This parameter must match a `deviceName` specified in the task
    #   definition.
    #   @return [String]
    #
    # @!attribute [rw] device_type
    #   The Elastic Inference accelerator type to use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/EcsInferenceAcceleratorOverride AWS API Documentation
    #
    class EcsInferenceAcceleratorOverride < Struct.new(
      :device_name,
      :device_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The type and amount of a resource to assign to a container. The
    # supported resource types are GPUs and Elastic Inference accelerators.
    # For more information, see [Working with GPUs on Amazon ECS][1] or
    # [Working with Amazon Elastic Inference on Amazon ECS][2] in the
    # *Amazon Elastic Container Service Developer Guide*
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-gpu.html
    # [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-inference.html
    #
    # @!attribute [rw] type
    #   The type of resource to assign to a container. The supported values
    #   are `GPU` or `InferenceAccelerator`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value for the specified resource type.
    #
    #   If the `GPU` type is used, the value is the number of physical
    #   `GPUs` the Amazon ECS container agent reserves for the container.
    #   The number of GPUs that's reserved for all containers in a task
    #   can't exceed the number of available GPUs on the container instance
    #   that the task is launched on.
    #
    #   If the `InferenceAccelerator` type is used, the `value` matches the
    #   `deviceName` for an InferenceAccelerator specified in a task
    #   definition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/EcsResourceRequirement AWS API Documentation
    #
    class EcsResourceRequirement < Struct.new(
      :type,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The overrides that are associated with a task.
    #
    # @!attribute [rw] container_overrides
    #   One or more container overrides that are sent to a task.
    #   @return [Array<Types::EcsContainerOverride>]
    #
    # @!attribute [rw] cpu
    #   The cpu override for the task.
    #   @return [String]
    #
    # @!attribute [rw] ephemeral_storage
    #   The ephemeral storage setting override for the task.
    #
    #   <note markdown="1"> This parameter is only supported for tasks hosted on Fargate that
    #   use the following platform versions:
    #
    #    * Linux platform version `1.4.0` or later.
    #
    #   * Windows platform version `1.0.0` or later.
    #
    #    </note>
    #   @return [Types::EcsEphemeralStorage]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the task execution IAM role
    #   override for the task. For more information, see [Amazon ECS task
    #   execution IAM role][1] in the *Amazon Elastic Container Service
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_execution_IAM_role.html
    #   @return [String]
    #
    # @!attribute [rw] inference_accelerator_overrides
    #   The Elastic Inference accelerator override for the task.
    #   @return [Array<Types::EcsInferenceAcceleratorOverride>]
    #
    # @!attribute [rw] memory
    #   The memory override for the task.
    #   @return [String]
    #
    # @!attribute [rw] task_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that containers in
    #   this task can assume. All containers in this task are granted the
    #   permissions that are specified in this role. For more information,
    #   see [IAM Role for Tasks][1] in the *Amazon Elastic Container Service
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/EcsTaskOverride AWS API Documentation
    #
    class EcsTaskOverride < Struct.new(
      :container_overrides,
      :cpu,
      :ephemeral_storage,
      :execution_role_arn,
      :inference_accelerator_overrides,
      :memory,
      :task_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filter events using an event pattern. For more information, see
    # [Events and Event Patterns][1] in the *Amazon EventBridge User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html
    #
    # @!attribute [rw] pattern
    #   The event pattern.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :pattern)
      SENSITIVE = [:pattern]
      include Aws::Structure
    end

    # The collection of event patterns used to filter events. For more
    # information, see [Events and Event Patterns][1] in the *Amazon
    # EventBridge User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html
    #
    # @!attribute [rw] filters
    #   The event patterns.
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/FilterCriteria AWS API Documentation
    #
    class FilterCriteria < Struct.new(
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception occurs due to unexpected causes.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds to wait before retrying the action that caused
    #   the exception.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/InternalException AWS API Documentation
    #
    class InternalException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] current_state
    #   The state the pipe is in.
    #   @return [String]
    #
    # @!attribute [rw] desired_state
    #   The state the pipe should be in.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of pipes to include in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] name_prefix
    #   A value that will return a subset of the pipes associated with this
    #   account. For example, `"NamePrefix": "ABC"` will return all
    #   endpoints with "ABC" in the name.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. Using an expired pagination token will
    #   return an HTTP 400 InvalidToken error.
    #   @return [String]
    #
    # @!attribute [rw] source_prefix
    #   The prefix matching the pipe source.
    #   @return [String]
    #
    # @!attribute [rw] target_prefix
    #   The prefix matching the pipe target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/ListPipesRequest AWS API Documentation
    #
    class ListPipesRequest < Struct.new(
      :current_state,
      :desired_state,
      :limit,
      :name_prefix,
      :next_token,
      :source_prefix,
      :target_prefix)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. Using an expired pagination token will
    #   return an HTTP 400 InvalidToken error.
    #   @return [String]
    #
    # @!attribute [rw] pipes
    #   The pipes returned by the call.
    #   @return [Array<Types::Pipe>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/ListPipesResponse AWS API Documentation
    #
    class ListPipesResponse < Struct.new(
      :next_token,
      :pipes)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the pipe for which you want to view tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of key-value pairs to associate with the pipe.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Secrets Manager secret that stores your broker credentials.
    #
    # @note MQBrokerAccessCredentials is a union - when making an API calls you must set exactly one of the members.
    #
    # @note MQBrokerAccessCredentials is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of MQBrokerAccessCredentials corresponding to the set member.
    #
    # @!attribute [rw] basic_auth
    #   The ARN of the Secrets Manager secret.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/MQBrokerAccessCredentials AWS API Documentation
    #
    class MQBrokerAccessCredentials < Struct.new(
      :basic_auth,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class BasicAuth < MQBrokerAccessCredentials; end
      class Unknown < MQBrokerAccessCredentials; end
    end

    # The Secrets Manager secret that stores your stream credentials.
    #
    # @note MSKAccessCredentials is a union - when making an API calls you must set exactly one of the members.
    #
    # @note MSKAccessCredentials is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of MSKAccessCredentials corresponding to the set member.
    #
    # @!attribute [rw] client_certificate_tls_auth
    #   The ARN of the Secrets Manager secret.
    #   @return [String]
    #
    # @!attribute [rw] sasl_scram_512_auth
    #   The ARN of the Secrets Manager secret.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/MSKAccessCredentials AWS API Documentation
    #
    class MSKAccessCredentials < Struct.new(
      :client_certificate_tls_auth,
      :sasl_scram_512_auth,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ClientCertificateTlsAuth < MSKAccessCredentials; end
      class SaslScram512Auth < MSKAccessCredentials; end
      class Unknown < MSKAccessCredentials; end
    end

    # This structure specifies the network configuration for an Amazon ECS
    # task.
    #
    # @!attribute [rw] awsvpc_configuration
    #   Use this structure to specify the VPC subnets and security groups
    #   for the task, and whether a public IP address is to be used. This
    #   structure is relevant only for ECS tasks that use the `awsvpc`
    #   network mode.
    #   @return [Types::AwsVpcConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/NetworkConfiguration AWS API Documentation
    #
    class NetworkConfiguration < Struct.new(
      :awsvpc_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # An entity that you specified does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a pipe. Amazon EventBridgePipes connect
    # event sources to targets and reduces the need for specialized
    # knowledge and integration code.
    #
    # @!attribute [rw] arn
    #   The ARN of the pipe.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time the pipe was created.
    #   @return [Time]
    #
    # @!attribute [rw] current_state
    #   The state the pipe is in.
    #   @return [String]
    #
    # @!attribute [rw] desired_state
    #   The state the pipe should be in.
    #   @return [String]
    #
    # @!attribute [rw] enrichment
    #   The ARN of the enrichment resource.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   When the pipe was last updated, in [ISO-8601 format][1]
    #   (YYYY-MM-DDThh:mm:ss.sTZD).
    #
    #
    #
    #   [1]: https://www.w3.org/TR/NOTE-datetime
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the pipe.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The ARN of the source resource.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   The reason the pipe is in its current state.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The ARN of the target resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/Pipe AWS API Documentation
    #
    class Pipe < Struct.new(
      :arn,
      :creation_time,
      :current_state,
      :desired_state,
      :enrichment,
      :last_modified_time,
      :name,
      :source,
      :state_reason,
      :target)
      SENSITIVE = []
      include Aws::Structure
    end

    # These are custom parameter to be used when the target is an API
    # Gateway REST APIs or EventBridge ApiDestinations. In the latter case,
    # these are merged with any InvocationParameters specified on the
    # Connection, with any values from the Connection taking precedence.
    #
    # @!attribute [rw] header_parameters
    #   The headers that need to be sent as part of request invoking the API
    #   Gateway REST API or EventBridge ApiDestination.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] path_parameter_values
    #   The path parameter values to be used to populate API Gateway REST
    #   API or EventBridge ApiDestination path wildcards ("*").
    #   @return [Array<String>]
    #
    # @!attribute [rw] query_string_parameters
    #   The query string keys/values that need to be sent as part of request
    #   invoking the API Gateway REST API or EventBridge ApiDestination.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/PipeEnrichmentHttpParameters AWS API Documentation
    #
    class PipeEnrichmentHttpParameters < Struct.new(
      :header_parameters,
      :path_parameter_values,
      :query_string_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters required to set up enrichment on your pipe.
    #
    # @!attribute [rw] http_parameters
    #   Contains the HTTP parameters to use when the target is a API Gateway
    #   REST endpoint or EventBridge ApiDestination.
    #
    #   If you specify an API Gateway REST API or EventBridge ApiDestination
    #   as a target, you can use this parameter to specify headers, path
    #   parameters, and query string keys/values as part of your target
    #   invoking request. If you're using ApiDestinations, the
    #   corresponding Connection can also have these values configured. In
    #   case of any conflicting keys, values from the Connection take
    #   precedence.
    #   @return [Types::PipeEnrichmentHttpParameters]
    #
    # @!attribute [rw] input_template
    #   Valid JSON text passed to the enrichment. In this case, nothing from
    #   the event itself is passed to the enrichment. For more information,
    #   see [The JavaScript Object Notation (JSON) Data Interchange
    #   Format][1].
    #
    #
    #
    #   [1]: http://www.rfc-editor.org/rfc/rfc7159.txt
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/PipeEnrichmentParameters AWS API Documentation
    #
    class PipeEnrichmentParameters < Struct.new(
      :http_parameters,
      :input_template)
      SENSITIVE = [:input_template]
      include Aws::Structure
    end

    # The parameters for using an Active MQ broker as a source.
    #
    # @!attribute [rw] batch_size
    #   The maximum number of records to include in each batch.
    #   @return [Integer]
    #
    # @!attribute [rw] credentials
    #   The credentials needed to access the resource.
    #   @return [Types::MQBrokerAccessCredentials]
    #
    # @!attribute [rw] maximum_batching_window_in_seconds
    #   The maximum length of a time to wait for events.
    #   @return [Integer]
    #
    # @!attribute [rw] queue_name
    #   The name of the destination queue to consume.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/PipeSourceActiveMQBrokerParameters AWS API Documentation
    #
    class PipeSourceActiveMQBrokerParameters < Struct.new(
      :batch_size,
      :credentials,
      :maximum_batching_window_in_seconds,
      :queue_name)
      SENSITIVE = [:queue_name]
      include Aws::Structure
    end

    # The parameters for using a DynamoDB stream as a source.
    #
    # @!attribute [rw] batch_size
    #   The maximum number of records to include in each batch.
    #   @return [Integer]
    #
    # @!attribute [rw] dead_letter_config
    #   Define the target queue to send dead-letter queue events to.
    #   @return [Types::DeadLetterConfig]
    #
    # @!attribute [rw] maximum_batching_window_in_seconds
    #   The maximum length of a time to wait for events.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_record_age_in_seconds
    #   (Streams only) Discard records older than the specified age. The
    #   default value is -1, which sets the maximum age to infinite. When
    #   the value is set to infinite, EventBridge never discards old
    #   records.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_retry_attempts
    #   (Streams only) Discard records after the specified number of
    #   retries. The default value is -1, which sets the maximum number of
    #   retries to infinite. When MaximumRetryAttempts is infinite,
    #   EventBridge retries failed records until the record expires in the
    #   event source.
    #   @return [Integer]
    #
    # @!attribute [rw] on_partial_batch_item_failure
    #   (Streams only) Define how to handle item process failures.
    #   `AUTOMATIC_BISECT` halves each batch and retry each half until all
    #   the records are processed or there is one failed message left in the
    #   batch.
    #   @return [String]
    #
    # @!attribute [rw] parallelization_factor
    #   (Streams only) The number of batches to process concurrently from
    #   each shard. The default value is 1.
    #   @return [Integer]
    #
    # @!attribute [rw] starting_position
    #   (Streams only) The position in a stream from which to start reading.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/PipeSourceDynamoDBStreamParameters AWS API Documentation
    #
    class PipeSourceDynamoDBStreamParameters < Struct.new(
      :batch_size,
      :dead_letter_config,
      :maximum_batching_window_in_seconds,
      :maximum_record_age_in_seconds,
      :maximum_retry_attempts,
      :on_partial_batch_item_failure,
      :parallelization_factor,
      :starting_position)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters for using a Kinesis stream as a source.
    #
    # @!attribute [rw] batch_size
    #   The maximum number of records to include in each batch.
    #   @return [Integer]
    #
    # @!attribute [rw] dead_letter_config
    #   Define the target queue to send dead-letter queue events to.
    #   @return [Types::DeadLetterConfig]
    #
    # @!attribute [rw] maximum_batching_window_in_seconds
    #   The maximum length of a time to wait for events.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_record_age_in_seconds
    #   (Streams only) Discard records older than the specified age. The
    #   default value is -1, which sets the maximum age to infinite. When
    #   the value is set to infinite, EventBridge never discards old
    #   records.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_retry_attempts
    #   (Streams only) Discard records after the specified number of
    #   retries. The default value is -1, which sets the maximum number of
    #   retries to infinite. When MaximumRetryAttempts is infinite,
    #   EventBridge retries failed records until the record expires in the
    #   event source.
    #   @return [Integer]
    #
    # @!attribute [rw] on_partial_batch_item_failure
    #   (Streams only) Define how to handle item process failures.
    #   `AUTOMATIC_BISECT` halves each batch and retry each half until all
    #   the records are processed or there is one failed message left in the
    #   batch.
    #   @return [String]
    #
    # @!attribute [rw] parallelization_factor
    #   (Streams only) The number of batches to process concurrently from
    #   each shard. The default value is 1.
    #   @return [Integer]
    #
    # @!attribute [rw] starting_position
    #   (Streams only) The position in a stream from which to start reading.
    #   @return [String]
    #
    # @!attribute [rw] starting_position_timestamp
    #   With `StartingPosition` set to `AT_TIMESTAMP`, the time from which
    #   to start reading, in Unix time seconds.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/PipeSourceKinesisStreamParameters AWS API Documentation
    #
    class PipeSourceKinesisStreamParameters < Struct.new(
      :batch_size,
      :dead_letter_config,
      :maximum_batching_window_in_seconds,
      :maximum_record_age_in_seconds,
      :maximum_retry_attempts,
      :on_partial_batch_item_failure,
      :parallelization_factor,
      :starting_position,
      :starting_position_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters for using an MSK stream as a source.
    #
    # @!attribute [rw] batch_size
    #   The maximum number of records to include in each batch.
    #   @return [Integer]
    #
    # @!attribute [rw] consumer_group_id
    #   The name of the destination queue to consume.
    #   @return [String]
    #
    # @!attribute [rw] credentials
    #   The credentials needed to access the resource.
    #   @return [Types::MSKAccessCredentials]
    #
    # @!attribute [rw] maximum_batching_window_in_seconds
    #   The maximum length of a time to wait for events.
    #   @return [Integer]
    #
    # @!attribute [rw] starting_position
    #   (Streams only) The position in a stream from which to start reading.
    #   @return [String]
    #
    # @!attribute [rw] topic_name
    #   The name of the topic that the pipe will read from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/PipeSourceManagedStreamingKafkaParameters AWS API Documentation
    #
    class PipeSourceManagedStreamingKafkaParameters < Struct.new(
      :batch_size,
      :consumer_group_id,
      :credentials,
      :maximum_batching_window_in_seconds,
      :starting_position,
      :topic_name)
      SENSITIVE = [:consumer_group_id, :topic_name]
      include Aws::Structure
    end

    # The parameters required to set up a source for your pipe.
    #
    # @!attribute [rw] active_mq_broker_parameters
    #   The parameters for using an Active MQ broker as a source.
    #   @return [Types::PipeSourceActiveMQBrokerParameters]
    #
    # @!attribute [rw] dynamo_db_stream_parameters
    #   The parameters for using a DynamoDB stream as a source.
    #   @return [Types::PipeSourceDynamoDBStreamParameters]
    #
    # @!attribute [rw] filter_criteria
    #   The collection of event patterns used to filter events. For more
    #   information, see [Events and Event Patterns][1] in the *Amazon
    #   EventBridge User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html
    #   @return [Types::FilterCriteria]
    #
    # @!attribute [rw] kinesis_stream_parameters
    #   The parameters for using a Kinesis stream as a source.
    #   @return [Types::PipeSourceKinesisStreamParameters]
    #
    # @!attribute [rw] managed_streaming_kafka_parameters
    #   The parameters for using an MSK stream as a source.
    #   @return [Types::PipeSourceManagedStreamingKafkaParameters]
    #
    # @!attribute [rw] rabbit_mq_broker_parameters
    #   The parameters for using a Rabbit MQ broker as a source.
    #   @return [Types::PipeSourceRabbitMQBrokerParameters]
    #
    # @!attribute [rw] self_managed_kafka_parameters
    #   The parameters for using a self-managed Apache Kafka stream as a
    #   source.
    #   @return [Types::PipeSourceSelfManagedKafkaParameters]
    #
    # @!attribute [rw] sqs_queue_parameters
    #   The parameters for using a Amazon SQS stream as a source.
    #   @return [Types::PipeSourceSqsQueueParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/PipeSourceParameters AWS API Documentation
    #
    class PipeSourceParameters < Struct.new(
      :active_mq_broker_parameters,
      :dynamo_db_stream_parameters,
      :filter_criteria,
      :kinesis_stream_parameters,
      :managed_streaming_kafka_parameters,
      :rabbit_mq_broker_parameters,
      :self_managed_kafka_parameters,
      :sqs_queue_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters for using a Rabbit MQ broker as a source.
    #
    # @!attribute [rw] batch_size
    #   The maximum number of records to include in each batch.
    #   @return [Integer]
    #
    # @!attribute [rw] credentials
    #   The credentials needed to access the resource.
    #   @return [Types::MQBrokerAccessCredentials]
    #
    # @!attribute [rw] maximum_batching_window_in_seconds
    #   The maximum length of a time to wait for events.
    #   @return [Integer]
    #
    # @!attribute [rw] queue_name
    #   The name of the destination queue to consume.
    #   @return [String]
    #
    # @!attribute [rw] virtual_host
    #   The name of the virtual host associated with the source broker.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/PipeSourceRabbitMQBrokerParameters AWS API Documentation
    #
    class PipeSourceRabbitMQBrokerParameters < Struct.new(
      :batch_size,
      :credentials,
      :maximum_batching_window_in_seconds,
      :queue_name,
      :virtual_host)
      SENSITIVE = [:queue_name, :virtual_host]
      include Aws::Structure
    end

    # The parameters for using a self-managed Apache Kafka stream as a
    # source.
    #
    # @!attribute [rw] additional_bootstrap_servers
    #   An array of server URLs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] batch_size
    #   The maximum number of records to include in each batch.
    #   @return [Integer]
    #
    # @!attribute [rw] consumer_group_id
    #   The name of the destination queue to consume.
    #   @return [String]
    #
    # @!attribute [rw] credentials
    #   The credentials needed to access the resource.
    #   @return [Types::SelfManagedKafkaAccessConfigurationCredentials]
    #
    # @!attribute [rw] maximum_batching_window_in_seconds
    #   The maximum length of a time to wait for events.
    #   @return [Integer]
    #
    # @!attribute [rw] server_root_ca_certificate
    #   The ARN of the Secrets Manager secret used for certification.
    #   @return [String]
    #
    # @!attribute [rw] starting_position
    #   (Streams only) The position in a stream from which to start reading.
    #   @return [String]
    #
    # @!attribute [rw] topic_name
    #   The name of the topic that the pipe will read from.
    #   @return [String]
    #
    # @!attribute [rw] vpc
    #   This structure specifies the VPC subnets and security groups for the
    #   stream, and whether a public IP address is to be used.
    #   @return [Types::SelfManagedKafkaAccessConfigurationVpc]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/PipeSourceSelfManagedKafkaParameters AWS API Documentation
    #
    class PipeSourceSelfManagedKafkaParameters < Struct.new(
      :additional_bootstrap_servers,
      :batch_size,
      :consumer_group_id,
      :credentials,
      :maximum_batching_window_in_seconds,
      :server_root_ca_certificate,
      :starting_position,
      :topic_name,
      :vpc)
      SENSITIVE = [:consumer_group_id, :topic_name]
      include Aws::Structure
    end

    # The parameters for using a Amazon SQS stream as a source.
    #
    # @!attribute [rw] batch_size
    #   The maximum number of records to include in each batch.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_batching_window_in_seconds
    #   The maximum length of a time to wait for events.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/PipeSourceSqsQueueParameters AWS API Documentation
    #
    class PipeSourceSqsQueueParameters < Struct.new(
      :batch_size,
      :maximum_batching_window_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters for using an Batch job as a target.
    #
    # @!attribute [rw] array_properties
    #   The array properties for the submitted job, such as the size of the
    #   array. The array size can be between 2 and 10,000. If you specify
    #   array properties for a job, it becomes an array job. This parameter
    #   is used only if the target is an Batch job.
    #   @return [Types::BatchArrayProperties]
    #
    # @!attribute [rw] container_overrides
    #   The overrides that are sent to a container.
    #   @return [Types::BatchContainerOverrides]
    #
    # @!attribute [rw] depends_on
    #   A list of dependencies for the job. A job can depend upon a maximum
    #   of 20 jobs. You can specify a `SEQUENTIAL` type dependency without
    #   specifying a job ID for array jobs so that each child array job
    #   completes sequentially, starting at index 0. You can also specify an
    #   `N_TO_N` type dependency with a job ID for array jobs. In that case,
    #   each index child of this job must wait for the corresponding index
    #   child of each dependency to complete before it can begin.
    #   @return [Array<Types::BatchJobDependency>]
    #
    # @!attribute [rw] job_definition
    #   The job definition used by this job. This value can be one of
    #   `name`, `name:revision`, or the Amazon Resource Name (ARN) for the
    #   job definition. If name is specified without a revision then the
    #   latest active revision is used.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The name of the job. It can be up to 128 letters long. The first
    #   character must be alphanumeric, can contain uppercase and lowercase
    #   letters, numbers, hyphens (-), and underscores (\_).
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   Additional parameters passed to the job that replace parameter
    #   substitution placeholders that are set in the job definition.
    #   Parameters are specified as a key and value pair mapping. Parameters
    #   included here override any corresponding parameter defaults from the
    #   job definition.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] retry_strategy
    #   The retry strategy to use for failed jobs. When a retry strategy is
    #   specified here, it overrides the retry strategy defined in the job
    #   definition.
    #   @return [Types::BatchRetryStrategy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/PipeTargetBatchJobParameters AWS API Documentation
    #
    class PipeTargetBatchJobParameters < Struct.new(
      :array_properties,
      :container_overrides,
      :depends_on,
      :job_definition,
      :job_name,
      :parameters,
      :retry_strategy)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters for using an CloudWatch Logs log stream as a target.
    #
    # @!attribute [rw] log_stream_name
    #   The name of the log stream.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The time the event occurred, expressed as the number of milliseconds
    #   after Jan 1, 1970 00:00:00 UTC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/PipeTargetCloudWatchLogsParameters AWS API Documentation
    #
    class PipeTargetCloudWatchLogsParameters < Struct.new(
      :log_stream_name,
      :timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters for using an Amazon ECS task as a target.
    #
    # @!attribute [rw] capacity_provider_strategy
    #   The capacity provider strategy to use for the task.
    #
    #   If a `capacityProviderStrategy` is specified, the `launchType`
    #   parameter must be omitted. If no `capacityProviderStrategy` or
    #   launchType is specified, the `defaultCapacityProviderStrategy` for
    #   the cluster is used.
    #   @return [Array<Types::CapacityProviderStrategyItem>]
    #
    # @!attribute [rw] enable_ecs_managed_tags
    #   Specifies whether to enable Amazon ECS managed tags for the task.
    #   For more information, see [Tagging Your Amazon ECS Resources][1] in
    #   the Amazon Elastic Container Service Developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_execute_command
    #   Whether or not to enable the execute command functionality for the
    #   containers in this task. If true, this enables execute command
    #   functionality on all containers in the task.
    #   @return [Boolean]
    #
    # @!attribute [rw] group
    #   Specifies an Amazon ECS task group for the task. The maximum length
    #   is 255 characters.
    #   @return [String]
    #
    # @!attribute [rw] launch_type
    #   Specifies the launch type on which your task is running. The launch
    #   type that you specify here must match one of the launch type
    #   (compatibilities) of the target task. The `FARGATE` value is
    #   supported only in the Regions where Fargate with Amazon ECS is
    #   supported. For more information, see [Fargate on Amazon ECS][1] in
    #   the *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/AWS-Fargate.html
    #   @return [String]
    #
    # @!attribute [rw] network_configuration
    #   Use this structure if the Amazon ECS task uses the `awsvpc` network
    #   mode. This structure specifies the VPC subnets and security groups
    #   associated with the task, and whether a public IP address is to be
    #   used. This structure is required if `LaunchType` is `FARGATE`
    #   because the `awsvpc` mode is required for Fargate tasks.
    #
    #   If you specify `NetworkConfiguration` when the target ECS task does
    #   not use the `awsvpc` network mode, the task fails.
    #   @return [Types::NetworkConfiguration]
    #
    # @!attribute [rw] overrides
    #   The overrides that are associated with a task.
    #   @return [Types::EcsTaskOverride]
    #
    # @!attribute [rw] placement_constraints
    #   An array of placement constraint objects to use for the task. You
    #   can specify up to 10 constraints per task (including constraints in
    #   the task definition and those specified at runtime).
    #   @return [Array<Types::PlacementConstraint>]
    #
    # @!attribute [rw] placement_strategy
    #   The placement strategy objects to use for the task. You can specify
    #   a maximum of five strategy rules per task.
    #   @return [Array<Types::PlacementStrategy>]
    #
    # @!attribute [rw] platform_version
    #   Specifies the platform version for the task. Specify only the
    #   numeric portion of the platform version, such as `1.1.0`.
    #
    #   This structure is used only if `LaunchType` is `FARGATE`. For more
    #   information about valid platform versions, see [Fargate Platform
    #   Versions][1] in the *Amazon Elastic Container Service Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html
    #   @return [String]
    #
    # @!attribute [rw] propagate_tags
    #   Specifies whether to propagate the tags from the task definition to
    #   the task. If no value is specified, the tags are not propagated.
    #   Tags can only be propagated to the task during task creation. To add
    #   tags to a task after task creation, use the `TagResource` API
    #   action.
    #   @return [String]
    #
    # @!attribute [rw] reference_id
    #   The reference ID to use for the task.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The metadata that you apply to the task to help you categorize and
    #   organize them. Each tag consists of a key and an optional value,
    #   both of which you define. To learn more, see [RunTask][1] in the
    #   Amazon ECS API Reference.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_RunTask.html#ECS-RunTask-request-tags
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] task_count
    #   The number of tasks to create based on `TaskDefinition`. The default
    #   is 1.
    #   @return [Integer]
    #
    # @!attribute [rw] task_definition_arn
    #   The ARN of the task definition to use if the event target is an
    #   Amazon ECS task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/PipeTargetEcsTaskParameters AWS API Documentation
    #
    class PipeTargetEcsTaskParameters < Struct.new(
      :capacity_provider_strategy,
      :enable_ecs_managed_tags,
      :enable_execute_command,
      :group,
      :launch_type,
      :network_configuration,
      :overrides,
      :placement_constraints,
      :placement_strategy,
      :platform_version,
      :propagate_tags,
      :reference_id,
      :tags,
      :task_count,
      :task_definition_arn)
      SENSITIVE = [:reference_id]
      include Aws::Structure
    end

    # The parameters for using an EventBridge event bus as a target.
    #
    # @!attribute [rw] detail_type
    #   A free-form string, with a maximum of 128 characters, used to decide
    #   what fields to expect in the event detail.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_id
    #   The URL subdomain of the endpoint. For example, if the URL for
    #   Endpoint is https://abcde.veo.endpoints.event.amazonaws.com, then
    #   the EndpointId is `abcde.veo`.
    #
    #   When using Java, you must include `auth-crt` on the class path.
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   Amazon Web Services resources, identified by Amazon Resource Name
    #   (ARN), which the event primarily concerns. Any number, including
    #   zero, may be present.
    #   @return [Array<String>]
    #
    # @!attribute [rw] source
    #   The source of the event.
    #   @return [String]
    #
    # @!attribute [rw] time
    #   The time stamp of the event, per [RFC3339][1]. If no time stamp is
    #   provided, the time stamp of the [PutEvents][2] call is used.
    #
    #
    #
    #   [1]: https://www.rfc-editor.org/rfc/rfc3339.txt
    #   [2]: https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_PutEvents.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/PipeTargetEventBridgeEventBusParameters AWS API Documentation
    #
    class PipeTargetEventBridgeEventBusParameters < Struct.new(
      :detail_type,
      :endpoint_id,
      :resources,
      :source,
      :time)
      SENSITIVE = [:detail_type, :endpoint_id, :source]
      include Aws::Structure
    end

    # These are custom parameter to be used when the target is an API
    # Gateway REST APIs or EventBridge ApiDestinations.
    #
    # @!attribute [rw] header_parameters
    #   The headers that need to be sent as part of request invoking the API
    #   Gateway REST API or EventBridge ApiDestination.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] path_parameter_values
    #   The path parameter values to be used to populate API Gateway REST
    #   API or EventBridge ApiDestination path wildcards ("*").
    #   @return [Array<String>]
    #
    # @!attribute [rw] query_string_parameters
    #   The query string keys/values that need to be sent as part of request
    #   invoking the API Gateway REST API or EventBridge ApiDestination.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/PipeTargetHttpParameters AWS API Documentation
    #
    class PipeTargetHttpParameters < Struct.new(
      :header_parameters,
      :path_parameter_values,
      :query_string_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters for using a Kinesis stream as a source.
    #
    # @!attribute [rw] partition_key
    #   Determines which shard in the stream the data record is assigned to.
    #   Partition keys are Unicode strings with a maximum length limit of
    #   256 characters for each key. Amazon Kinesis Data Streams uses the
    #   partition key as input to a hash function that maps the partition
    #   key and associated data to a specific shard. Specifically, an MD5
    #   hash function is used to map partition keys to 128-bit integer
    #   values and to map associated data records to shards. As a result of
    #   this hashing mechanism, all data records with the same partition key
    #   map to the same shard within the stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/PipeTargetKinesisStreamParameters AWS API Documentation
    #
    class PipeTargetKinesisStreamParameters < Struct.new(
      :partition_key)
      SENSITIVE = [:partition_key]
      include Aws::Structure
    end

    # The parameters for using a Lambda function as a target.
    #
    # @!attribute [rw] invocation_type
    #   Choose from the following options.
    #
    #   * `RequestResponse` (default) - Invoke the function synchronously.
    #     Keep the connection open until the function returns a response or
    #     times out. The API response includes the function response and
    #     additional data.
    #
    #   * `Event` - Invoke the function asynchronously. Send events that
    #     fail multiple times to the function's dead-letter queue (if it's
    #     configured). The API response only includes a status code.
    #
    #   * `DryRun` - Validate parameter values and verify that the user or
    #     role has permission to invoke the function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/PipeTargetLambdaFunctionParameters AWS API Documentation
    #
    class PipeTargetLambdaFunctionParameters < Struct.new(
      :invocation_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters required to set up a target for your pipe.
    #
    # @!attribute [rw] batch_job_parameters
    #   The parameters for using an Batch job as a target.
    #   @return [Types::PipeTargetBatchJobParameters]
    #
    # @!attribute [rw] cloud_watch_logs_parameters
    #   The parameters for using an CloudWatch Logs log stream as a target.
    #   @return [Types::PipeTargetCloudWatchLogsParameters]
    #
    # @!attribute [rw] ecs_task_parameters
    #   The parameters for using an Amazon ECS task as a target.
    #   @return [Types::PipeTargetEcsTaskParameters]
    #
    # @!attribute [rw] event_bridge_event_bus_parameters
    #   The parameters for using an EventBridge event bus as a target.
    #   @return [Types::PipeTargetEventBridgeEventBusParameters]
    #
    # @!attribute [rw] http_parameters
    #   These are custom parameter to be used when the target is an API
    #   Gateway REST APIs or EventBridge ApiDestinations.
    #   @return [Types::PipeTargetHttpParameters]
    #
    # @!attribute [rw] input_template
    #   Valid JSON text passed to the target. In this case, nothing from the
    #   event itself is passed to the target. For more information, see [The
    #   JavaScript Object Notation (JSON) Data Interchange Format][1].
    #
    #
    #
    #   [1]: http://www.rfc-editor.org/rfc/rfc7159.txt
    #   @return [String]
    #
    # @!attribute [rw] kinesis_stream_parameters
    #   The parameters for using a Kinesis stream as a source.
    #   @return [Types::PipeTargetKinesisStreamParameters]
    #
    # @!attribute [rw] lambda_function_parameters
    #   The parameters for using a Lambda function as a target.
    #   @return [Types::PipeTargetLambdaFunctionParameters]
    #
    # @!attribute [rw] redshift_data_parameters
    #   These are custom parameters to be used when the target is a Amazon
    #   Redshift cluster to invoke the Amazon Redshift Data API
    #   ExecuteStatement.
    #   @return [Types::PipeTargetRedshiftDataParameters]
    #
    # @!attribute [rw] sage_maker_pipeline_parameters
    #   The parameters for using a SageMaker pipeline as a target.
    #   @return [Types::PipeTargetSageMakerPipelineParameters]
    #
    # @!attribute [rw] sqs_queue_parameters
    #   The parameters for using a Amazon SQS stream as a source.
    #   @return [Types::PipeTargetSqsQueueParameters]
    #
    # @!attribute [rw] step_function_state_machine_parameters
    #   The parameters for using a Step Functions state machine as a target.
    #   @return [Types::PipeTargetStateMachineParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/PipeTargetParameters AWS API Documentation
    #
    class PipeTargetParameters < Struct.new(
      :batch_job_parameters,
      :cloud_watch_logs_parameters,
      :ecs_task_parameters,
      :event_bridge_event_bus_parameters,
      :http_parameters,
      :input_template,
      :kinesis_stream_parameters,
      :lambda_function_parameters,
      :redshift_data_parameters,
      :sage_maker_pipeline_parameters,
      :sqs_queue_parameters,
      :step_function_state_machine_parameters)
      SENSITIVE = [:input_template]
      include Aws::Structure
    end

    # These are custom parameters to be used when the target is a Amazon
    # Redshift cluster to invoke the Amazon Redshift Data API
    # ExecuteStatement.
    #
    # @!attribute [rw] database
    #   The name of the database. Required when authenticating using
    #   temporary credentials.
    #   @return [String]
    #
    # @!attribute [rw] db_user
    #   The database user name. Required when authenticating using temporary
    #   credentials.
    #   @return [String]
    #
    # @!attribute [rw] secret_manager_arn
    #   The name or ARN of the secret that enables access to the database.
    #   Required when authenticating using SageMaker.
    #   @return [String]
    #
    # @!attribute [rw] sqls
    #   The SQL statement text to run.
    #   @return [Array<String>]
    #
    # @!attribute [rw] statement_name
    #   The name of the SQL statement. You can name the SQL statement when
    #   you create it to identify the query.
    #   @return [String]
    #
    # @!attribute [rw] with_event
    #   Indicates whether to send an event back to EventBridge after the SQL
    #   statement runs.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/PipeTargetRedshiftDataParameters AWS API Documentation
    #
    class PipeTargetRedshiftDataParameters < Struct.new(
      :database,
      :db_user,
      :secret_manager_arn,
      :sqls,
      :statement_name,
      :with_event)
      SENSITIVE = [:database, :db_user, :statement_name]
      include Aws::Structure
    end

    # The parameters for using a SageMaker pipeline as a target.
    #
    # @!attribute [rw] pipeline_parameter_list
    #   List of Parameter names and values for SageMaker Model Building
    #   Pipeline execution.
    #   @return [Array<Types::SageMakerPipelineParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/PipeTargetSageMakerPipelineParameters AWS API Documentation
    #
    class PipeTargetSageMakerPipelineParameters < Struct.new(
      :pipeline_parameter_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters for using a Amazon SQS stream as a source.
    #
    # @!attribute [rw] message_deduplication_id
    #   This parameter applies only to FIFO (first-in-first-out) queues.
    #
    #   The token used for deduplication of sent messages.
    #   @return [String]
    #
    # @!attribute [rw] message_group_id
    #   The FIFO message group ID to use as the target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/PipeTargetSqsQueueParameters AWS API Documentation
    #
    class PipeTargetSqsQueueParameters < Struct.new(
      :message_deduplication_id,
      :message_group_id)
      SENSITIVE = [:message_deduplication_id, :message_group_id]
      include Aws::Structure
    end

    # The parameters for using a Step Functions state machine as a target.
    #
    # @!attribute [rw] invocation_type
    #   Specify whether to wait for the state machine to finish or not.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/PipeTargetStateMachineParameters AWS API Documentation
    #
    class PipeTargetStateMachineParameters < Struct.new(
      :invocation_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing a constraint on task placement. To learn more,
    # see [Task Placement Constraints][1] in the Amazon Elastic Container
    # Service Developer Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html
    #
    # @!attribute [rw] expression
    #   A cluster query language expression to apply to the constraint. You
    #   cannot specify an expression if the constraint type is
    #   `distinctInstance`. To learn more, see [Cluster Query Language][1]
    #   in the Amazon Elastic Container Service Developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of constraint. Use distinctInstance to ensure that each
    #   task in a particular group is running on a different container
    #   instance. Use memberOf to restrict the selection to a group of valid
    #   candidates.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/PlacementConstraint AWS API Documentation
    #
    class PlacementConstraint < Struct.new(
      :expression,
      :type)
      SENSITIVE = [:expression]
      include Aws::Structure
    end

    # The task placement strategy for a task or service. To learn more, see
    # [Task Placement Strategies][1] in the Amazon Elastic Container Service
    # Service Developer Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-strategies.html
    #
    # @!attribute [rw] field
    #   The field to apply the placement strategy against. For the spread
    #   placement strategy, valid values are instanceId (or host, which has
    #   the same effect), or any platform or custom attribute that is
    #   applied to a container instance, such as
    #   attribute:ecs.availability-zone. For the binpack placement strategy,
    #   valid values are cpu and memory. For the random placement strategy,
    #   this field is not used.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of placement strategy. The random placement strategy
    #   randomly places tasks on available candidates. The spread placement
    #   strategy spreads placement across available candidates evenly based
    #   on the field parameter. The binpack strategy places tasks on
    #   available candidates that have the least available amount of the
    #   resource that is specified with the field parameter. For example, if
    #   you binpack on memory, a task is placed on the instance with the
    #   least amount of remaining memory (but still enough to run the task).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/PlacementStrategy AWS API Documentation
    #
    class PlacementStrategy < Struct.new(
      :field,
      :type)
      SENSITIVE = [:field]
      include Aws::Structure
    end

    # Name/Value pair of a parameter to start execution of a SageMaker Model
    # Building Pipeline.
    #
    # @!attribute [rw] name
    #   Name of parameter to start execution of a SageMaker Model Building
    #   Pipeline.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Value of parameter to start execution of a SageMaker Model Building
    #   Pipeline.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/SageMakerPipelineParameter AWS API Documentation
    #
    class SageMakerPipelineParameter < Struct.new(
      :name,
      :value)
      SENSITIVE = [:name, :value]
      include Aws::Structure
    end

    # The Secrets Manager secret that stores your stream credentials.
    #
    # @note SelfManagedKafkaAccessConfigurationCredentials is a union - when making an API calls you must set exactly one of the members.
    #
    # @note SelfManagedKafkaAccessConfigurationCredentials is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of SelfManagedKafkaAccessConfigurationCredentials corresponding to the set member.
    #
    # @!attribute [rw] basic_auth
    #   The ARN of the Secrets Manager secret.
    #   @return [String]
    #
    # @!attribute [rw] client_certificate_tls_auth
    #   The ARN of the Secrets Manager secret.
    #   @return [String]
    #
    # @!attribute [rw] sasl_scram_256_auth
    #   The ARN of the Secrets Manager secret.
    #   @return [String]
    #
    # @!attribute [rw] sasl_scram_512_auth
    #   The ARN of the Secrets Manager secret.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/SelfManagedKafkaAccessConfigurationCredentials AWS API Documentation
    #
    class SelfManagedKafkaAccessConfigurationCredentials < Struct.new(
      :basic_auth,
      :client_certificate_tls_auth,
      :sasl_scram_256_auth,
      :sasl_scram_512_auth,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class BasicAuth < SelfManagedKafkaAccessConfigurationCredentials; end
      class ClientCertificateTlsAuth < SelfManagedKafkaAccessConfigurationCredentials; end
      class SaslScram256Auth < SelfManagedKafkaAccessConfigurationCredentials; end
      class SaslScram512Auth < SelfManagedKafkaAccessConfigurationCredentials; end
      class Unknown < SelfManagedKafkaAccessConfigurationCredentials; end
    end

    # This structure specifies the VPC subnets and security groups for the
    # stream, and whether a public IP address is to be used.
    #
    # @!attribute [rw] security_group
    #   Specifies the security groups associated with the stream. These
    #   security groups must all be in the same VPC. You can specify as many
    #   as five security groups. If you do not specify a security group, the
    #   default security group for the VPC is used.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnets
    #   Specifies the subnets associated with the stream. These subnets must
    #   all be in the same VPC. You can specify as many as 16 subnets.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/SelfManagedKafkaAccessConfigurationVpc AWS API Documentation
    #
    class SelfManagedKafkaAccessConfigurationVpc < Struct.new(
      :security_group,
      :subnets)
      SENSITIVE = []
      include Aws::Structure
    end

    # A quota has been exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The identifier of the quota that caused the exception.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource that caused the exception.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource that caused the exception.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The identifier of the service that caused the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :quota_code,
      :resource_id,
      :resource_type,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the pipe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/StartPipeRequest AWS API Documentation
    #
    class StartPipeRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the pipe.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time the pipe was created.
    #   @return [Time]
    #
    # @!attribute [rw] current_state
    #   The state the pipe is in.
    #   @return [String]
    #
    # @!attribute [rw] desired_state
    #   The state the pipe should be in.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   When the pipe was last updated, in [ISO-8601 format][1]
    #   (YYYY-MM-DDThh:mm:ss.sTZD).
    #
    #
    #
    #   [1]: https://www.w3.org/TR/NOTE-datetime
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the pipe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/StartPipeResponse AWS API Documentation
    #
    class StartPipeResponse < Struct.new(
      :arn,
      :creation_time,
      :current_state,
      :desired_state,
      :last_modified_time,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the pipe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/StopPipeRequest AWS API Documentation
    #
    class StopPipeRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the pipe.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time the pipe was created.
    #   @return [Time]
    #
    # @!attribute [rw] current_state
    #   The state the pipe is in.
    #   @return [String]
    #
    # @!attribute [rw] desired_state
    #   The state the pipe should be in.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   When the pipe was last updated, in [ISO-8601 format][1]
    #   (YYYY-MM-DDThh:mm:ss.sTZD).
    #
    #
    #
    #   [1]: https://www.w3.org/TR/NOTE-datetime
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the pipe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/StopPipeResponse AWS API Documentation
    #
    class StopPipeResponse < Struct.new(
      :arn,
      :creation_time,
      :current_state,
      :desired_state,
      :last_modified_time,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key-value pair associated with an Amazon Web Services resource. In
    # EventBridge, rules and event buses support tagging.
    #
    # @!attribute [rw] key
    #   A string you can use to assign a value. The combination of tag keys
    #   and values can help you organize and categorize your resources.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value for the specified tag key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = [:value]
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the pipe.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of key-value pairs associated with the pipe.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # An action was throttled.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The identifier of the quota that caused the exception.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds to wait before retrying the action that caused
    #   the exception.
    #   @return [Integer]
    #
    # @!attribute [rw] service_code
    #   The identifier of the service that caused the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :quota_code,
      :retry_after_seconds,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the pipe.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The list of tag keys to remove from the pipe.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] description
    #   A description of the pipe.
    #   @return [String]
    #
    # @!attribute [rw] desired_state
    #   The state the pipe should be in.
    #   @return [String]
    #
    # @!attribute [rw] enrichment
    #   The ARN of the enrichment resource.
    #   @return [String]
    #
    # @!attribute [rw] enrichment_parameters
    #   The parameters required to set up enrichment on your pipe.
    #   @return [Types::PipeEnrichmentParameters]
    #
    # @!attribute [rw] name
    #   The name of the pipe.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role that allows the pipe to send data to the target.
    #   @return [String]
    #
    # @!attribute [rw] source_parameters
    #   The parameters required to set up a source for your pipe.
    #   @return [Types::UpdatePipeSourceParameters]
    #
    # @!attribute [rw] target
    #   The ARN of the target resource.
    #   @return [String]
    #
    # @!attribute [rw] target_parameters
    #   The parameters required to set up a target for your pipe.
    #   @return [Types::PipeTargetParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/UpdatePipeRequest AWS API Documentation
    #
    class UpdatePipeRequest < Struct.new(
      :description,
      :desired_state,
      :enrichment,
      :enrichment_parameters,
      :name,
      :role_arn,
      :source_parameters,
      :target,
      :target_parameters)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the pipe.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time the pipe was created.
    #   @return [Time]
    #
    # @!attribute [rw] current_state
    #   The state the pipe is in.
    #   @return [String]
    #
    # @!attribute [rw] desired_state
    #   The state the pipe should be in.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   When the pipe was last updated, in [ISO-8601 format][1]
    #   (YYYY-MM-DDThh:mm:ss.sTZD).
    #
    #
    #
    #   [1]: https://www.w3.org/TR/NOTE-datetime
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the pipe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/UpdatePipeResponse AWS API Documentation
    #
    class UpdatePipeResponse < Struct.new(
      :arn,
      :creation_time,
      :current_state,
      :desired_state,
      :last_modified_time,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters for using an Active MQ broker as a source.
    #
    # @!attribute [rw] batch_size
    #   The maximum number of records to include in each batch.
    #   @return [Integer]
    #
    # @!attribute [rw] credentials
    #   The credentials needed to access the resource.
    #   @return [Types::MQBrokerAccessCredentials]
    #
    # @!attribute [rw] maximum_batching_window_in_seconds
    #   The maximum length of a time to wait for events.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/UpdatePipeSourceActiveMQBrokerParameters AWS API Documentation
    #
    class UpdatePipeSourceActiveMQBrokerParameters < Struct.new(
      :batch_size,
      :credentials,
      :maximum_batching_window_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters for using a DynamoDB stream as a source.
    #
    # @!attribute [rw] batch_size
    #   The maximum number of records to include in each batch.
    #   @return [Integer]
    #
    # @!attribute [rw] dead_letter_config
    #   Define the target queue to send dead-letter queue events to.
    #   @return [Types::DeadLetterConfig]
    #
    # @!attribute [rw] maximum_batching_window_in_seconds
    #   The maximum length of a time to wait for events.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_record_age_in_seconds
    #   (Streams only) Discard records older than the specified age. The
    #   default value is -1, which sets the maximum age to infinite. When
    #   the value is set to infinite, EventBridge never discards old
    #   records.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_retry_attempts
    #   (Streams only) Discard records after the specified number of
    #   retries. The default value is -1, which sets the maximum number of
    #   retries to infinite. When MaximumRetryAttempts is infinite,
    #   EventBridge retries failed records until the record expires in the
    #   event source.
    #   @return [Integer]
    #
    # @!attribute [rw] on_partial_batch_item_failure
    #   (Streams only) Define how to handle item process failures.
    #   `AUTOMATIC_BISECT` halves each batch and retry each half until all
    #   the records are processed or there is one failed message left in the
    #   batch.
    #   @return [String]
    #
    # @!attribute [rw] parallelization_factor
    #   (Streams only) The number of batches to process concurrently from
    #   each shard. The default value is 1.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/UpdatePipeSourceDynamoDBStreamParameters AWS API Documentation
    #
    class UpdatePipeSourceDynamoDBStreamParameters < Struct.new(
      :batch_size,
      :dead_letter_config,
      :maximum_batching_window_in_seconds,
      :maximum_record_age_in_seconds,
      :maximum_retry_attempts,
      :on_partial_batch_item_failure,
      :parallelization_factor)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters for using a Kinesis stream as a source.
    #
    # @!attribute [rw] batch_size
    #   The maximum number of records to include in each batch.
    #   @return [Integer]
    #
    # @!attribute [rw] dead_letter_config
    #   Define the target queue to send dead-letter queue events to.
    #   @return [Types::DeadLetterConfig]
    #
    # @!attribute [rw] maximum_batching_window_in_seconds
    #   The maximum length of a time to wait for events.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_record_age_in_seconds
    #   (Streams only) Discard records older than the specified age. The
    #   default value is -1, which sets the maximum age to infinite. When
    #   the value is set to infinite, EventBridge never discards old
    #   records.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_retry_attempts
    #   (Streams only) Discard records after the specified number of
    #   retries. The default value is -1, which sets the maximum number of
    #   retries to infinite. When MaximumRetryAttempts is infinite,
    #   EventBridge retries failed records until the record expires in the
    #   event source.
    #   @return [Integer]
    #
    # @!attribute [rw] on_partial_batch_item_failure
    #   (Streams only) Define how to handle item process failures.
    #   `AUTOMATIC_BISECT` halves each batch and retry each half until all
    #   the records are processed or there is one failed message left in the
    #   batch.
    #   @return [String]
    #
    # @!attribute [rw] parallelization_factor
    #   (Streams only) The number of batches to process concurrently from
    #   each shard. The default value is 1.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/UpdatePipeSourceKinesisStreamParameters AWS API Documentation
    #
    class UpdatePipeSourceKinesisStreamParameters < Struct.new(
      :batch_size,
      :dead_letter_config,
      :maximum_batching_window_in_seconds,
      :maximum_record_age_in_seconds,
      :maximum_retry_attempts,
      :on_partial_batch_item_failure,
      :parallelization_factor)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters for using an MSK stream as a source.
    #
    # @!attribute [rw] batch_size
    #   The maximum number of records to include in each batch.
    #   @return [Integer]
    #
    # @!attribute [rw] credentials
    #   The credentials needed to access the resource.
    #   @return [Types::MSKAccessCredentials]
    #
    # @!attribute [rw] maximum_batching_window_in_seconds
    #   The maximum length of a time to wait for events.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/UpdatePipeSourceManagedStreamingKafkaParameters AWS API Documentation
    #
    class UpdatePipeSourceManagedStreamingKafkaParameters < Struct.new(
      :batch_size,
      :credentials,
      :maximum_batching_window_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters required to set up a source for your pipe.
    #
    # @!attribute [rw] active_mq_broker_parameters
    #   The parameters for using an Active MQ broker as a source.
    #   @return [Types::UpdatePipeSourceActiveMQBrokerParameters]
    #
    # @!attribute [rw] dynamo_db_stream_parameters
    #   The parameters for using a DynamoDB stream as a source.
    #   @return [Types::UpdatePipeSourceDynamoDBStreamParameters]
    #
    # @!attribute [rw] filter_criteria
    #   The collection of event patterns used to filter events. For more
    #   information, see [Events and Event Patterns][1] in the *Amazon
    #   EventBridge User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html
    #   @return [Types::FilterCriteria]
    #
    # @!attribute [rw] kinesis_stream_parameters
    #   The parameters for using a Kinesis stream as a source.
    #   @return [Types::UpdatePipeSourceKinesisStreamParameters]
    #
    # @!attribute [rw] managed_streaming_kafka_parameters
    #   The parameters for using an MSK stream as a source.
    #   @return [Types::UpdatePipeSourceManagedStreamingKafkaParameters]
    #
    # @!attribute [rw] rabbit_mq_broker_parameters
    #   The parameters for using a Rabbit MQ broker as a source.
    #   @return [Types::UpdatePipeSourceRabbitMQBrokerParameters]
    #
    # @!attribute [rw] self_managed_kafka_parameters
    #   The parameters for using a self-managed Apache Kafka stream as a
    #   source.
    #   @return [Types::UpdatePipeSourceSelfManagedKafkaParameters]
    #
    # @!attribute [rw] sqs_queue_parameters
    #   The parameters for using a Amazon SQS stream as a source.
    #   @return [Types::UpdatePipeSourceSqsQueueParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/UpdatePipeSourceParameters AWS API Documentation
    #
    class UpdatePipeSourceParameters < Struct.new(
      :active_mq_broker_parameters,
      :dynamo_db_stream_parameters,
      :filter_criteria,
      :kinesis_stream_parameters,
      :managed_streaming_kafka_parameters,
      :rabbit_mq_broker_parameters,
      :self_managed_kafka_parameters,
      :sqs_queue_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters for using a Rabbit MQ broker as a source.
    #
    # @!attribute [rw] batch_size
    #   The maximum number of records to include in each batch.
    #   @return [Integer]
    #
    # @!attribute [rw] credentials
    #   The credentials needed to access the resource.
    #   @return [Types::MQBrokerAccessCredentials]
    #
    # @!attribute [rw] maximum_batching_window_in_seconds
    #   The maximum length of a time to wait for events.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/UpdatePipeSourceRabbitMQBrokerParameters AWS API Documentation
    #
    class UpdatePipeSourceRabbitMQBrokerParameters < Struct.new(
      :batch_size,
      :credentials,
      :maximum_batching_window_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters for using a self-managed Apache Kafka stream as a
    # source.
    #
    # @!attribute [rw] batch_size
    #   The maximum number of records to include in each batch.
    #   @return [Integer]
    #
    # @!attribute [rw] credentials
    #   The credentials needed to access the resource.
    #   @return [Types::SelfManagedKafkaAccessConfigurationCredentials]
    #
    # @!attribute [rw] maximum_batching_window_in_seconds
    #   The maximum length of a time to wait for events.
    #   @return [Integer]
    #
    # @!attribute [rw] server_root_ca_certificate
    #   The ARN of the Secrets Manager secret used for certification.
    #   @return [String]
    #
    # @!attribute [rw] vpc
    #   This structure specifies the VPC subnets and security groups for the
    #   stream, and whether a public IP address is to be used.
    #   @return [Types::SelfManagedKafkaAccessConfigurationVpc]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/UpdatePipeSourceSelfManagedKafkaParameters AWS API Documentation
    #
    class UpdatePipeSourceSelfManagedKafkaParameters < Struct.new(
      :batch_size,
      :credentials,
      :maximum_batching_window_in_seconds,
      :server_root_ca_certificate,
      :vpc)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters for using a Amazon SQS stream as a source.
    #
    # @!attribute [rw] batch_size
    #   The maximum number of records to include in each batch.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_batching_window_in_seconds
    #   The maximum length of a time to wait for events.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/UpdatePipeSourceSqsQueueParameters AWS API Documentation
    #
    class UpdatePipeSourceSqsQueueParameters < Struct.new(
      :batch_size,
      :maximum_batching_window_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates that an error has occurred while performing a validate
    # operation.
    #
    # @!attribute [rw] field_list
    #   The list of fields for which validation failed and the corresponding
    #   failure messages.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :field_list,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates that an error has occurred while performing a validate
    # operation.
    #
    # @!attribute [rw] message
    #   The message of the exception.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :message,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
