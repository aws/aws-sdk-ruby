# frozen_string_literal: true

# This is generated code!

module Aws::Pipes
  # This module contains the types returned by client operations.
  module Types

    # <p>This structure specifies the VPC subnets and security groups for the task, and whether a
    #          public IP address is to be used. This structure is relevant only for ECS tasks that use the
    #             <code>awsvpc</code> network mode.</p>
    # @!attribute subnets
    #   <p>Specifies the subnets associated with the task. These subnets must all be in the same
    #            VPC. You can specify as many as 16 subnets.</p>
    #   @return [Array<String>]
    # @!attribute security_groups
    #   <p>Specifies the security groups associated with the task. These security groups must all
    #            be in the same VPC. You can specify as many as five security groups. If you do not specify
    #            a security group, the default security group for the VPC is used.</p>
    #   @return [Array<String>]
    # @!attribute assign_public_ip
    #   <p>Specifies whether the task's elastic network interface receives a public IP address. You
    #            can specify <code>ENABLED</code> only when <code>LaunchType</code> in
    #               <code>EcsParameters</code> is set to <code>FARGATE</code>.</p>
    #   @return [String]
    class AwsVpcConfiguration < Struct.new(
      nil,
      :subnets,
      :security_groups,
      :assign_public_ip,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The array properties for the submitted job, such as the size of the array. The array size can be between 2 and 10,000. 
    #          If you specify array properties for a job, it becomes an array job. This parameter is used only if the target is an Batch job.</p>
    # @!attribute size
    #   <p>The size of the array, if this is an array batch job.</p>
    #   @return [Integer]
    class BatchArrayProperties < Struct.new(
      nil,
      :size,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The overrides that are sent to a container.</p>
    # @!attribute command
    #   <p>The command to send to the container that overrides the default command from the Docker
    #            image or the task definition.</p>
    #   @return [Array<String>]
    # @!attribute environment
    #   <p>The environment variables to send to the container. You can add new environment
    #            variables, which are added to the container at launch, or you can override the existing
    #            environment variables from the Docker image or the task definition.</p>
    #            <note>
    #               <p>Environment variables cannot start with "<code>Batch</code>". This
    #               naming convention is reserved for variables that Batch sets.</p>
    #            </note>
    #   @return [Array<Types::BatchEnvironmentVariable>]
    # @!attribute instance_type
    #   <p>The instance type to use for a multi-node parallel job.</p>
    #            <note>
    #               <p>This parameter isn't applicable to single-node container jobs or jobs that run on
    #               Fargate resources, and shouldn't be provided.</p>
    #            </note>
    #   @return [String]
    # @!attribute resource_requirements
    #   <p>The type and amount of resources to assign to a container. This overrides the settings
    #            in the job definition. The supported resources include <code>GPU</code>,
    #               <code>MEMORY</code>, and <code>VCPU</code>.</p>
    #   @return [Array<Types::BatchResourceRequirement>]
    class BatchContainerOverrides < Struct.new(
      nil,
      :command,
      :environment,
      :instance_type,
      :resource_requirements,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The environment variables to send to the container. You can add new environment
    #          variables, which are added to the container at launch, or you can override the existing
    #          environment variables from the Docker image or the task definition.</p>
    #          <note>
    #             <p>Environment variables cannot start with "<code>Batch</code>". This
    #             naming convention is reserved for variables that Batch sets.</p>
    #          </note>
    # @!attribute name
    #   <p>The name of the key-value pair. For environment variables, this is the name of the
    #            environment variable.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the key-value pair. For environment variables, this is the value of the
    #            environment variable.</p>
    #   @return [String]
    class BatchEnvironmentVariable < Struct.new(
      nil,
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that represents an Batch job dependency.</p>
    # @!attribute job_id
    #   <p>The job ID of the Batch job that's associated with this
    #            dependency.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the job dependency.</p>
    #   @return [String]
    class BatchJobDependency < Struct.new(
      nil,
      :job_id,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The type and amount of a resource to assign to a container. The supported resources
    #          include <code>GPU</code>, <code>MEMORY</code>, and <code>VCPU</code>.</p>
    # @!attribute type
    #   <p>The type of resource to assign to a container. The supported resources include
    #               <code>GPU</code>, <code>MEMORY</code>, and <code>VCPU</code>.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The quantity of the specified resource to reserve for the container. The values vary
    #            based on the <code>type</code> specified.</p>
    #            <dl>
    #               <dt>type="GPU"</dt>
    #               <dd>
    #                  <p>The number of physical GPUs to reserve for the container. Make sure that the
    #                     number of GPUs reserved for all containers in a job doesn't exceed the number of
    #                     available GPUs on the compute resource that the job is launched on.</p>
    #                  <note>
    #                     <p>GPUs aren't available for jobs that are running on Fargate
    #                        resources.</p>
    #                  </note>
    #               </dd>
    #               <dt>type="MEMORY"</dt>
    #               <dd>
    #                  <p>The memory hard limit (in MiB) present to the container. This parameter is
    #                     supported for jobs that are running on EC2 resources. If your container attempts
    #                     to exceed the memory specified, the container is terminated. This parameter maps
    #                     to <code>Memory</code> in the <a href="https://docs.docker.com/engine/api/v1.23/#create-a-container"> Create a
    #                        container</a> section of the <a href="https://docs.docker.com/engine/api/v1.23/">Docker Remote API</a> and
    #                     the <code>--memory</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>. You
    #                     must specify at least 4 MiB of memory for a job. This is required but can be
    #                     specified in several places for multi-node parallel (MNP) jobs. It must be
    #                     specified for each node at least once. This parameter maps to <code>Memory</code>
    #                     in the <a href="https://docs.docker.com/engine/api/v1.23/#create-a-container">
    #                        Create a container</a> section of the <a href="https://docs.docker.com/engine/api/v1.23/">Docker Remote API</a> and
    #                     the <code>--memory</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
    #                  <note>
    #                     <p>If you're trying to maximize your resource utilization by providing your
    #                        jobs as much memory as possible for a particular instance type, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/memory-management.html">Memory management</a> in the <i>Batch User
    #                           Guide</i>.</p>
    #                  </note>
    #                  <p>For jobs that are running on Fargate resources, then
    #                        <code>value</code> is the hard limit (in MiB), and must match one of the
    #                     supported values and the <code>VCPU</code> values must be one of the values
    #                     supported for that memory value.</p>
    #                  <dl>
    #                     <dt>value = 512</dt>
    #                     <dd>
    #                        <p>
    #                           <code>VCPU</code> = 0.25</p>
    #                     </dd>
    #                     <dt>value = 1024</dt>
    #                     <dd>
    #                        <p>
    #                           <code>VCPU</code> = 0.25 or 0.5</p>
    #                     </dd>
    #                     <dt>value = 2048</dt>
    #                     <dd>
    #                        <p>
    #                           <code>VCPU</code> = 0.25, 0.5, or 1</p>
    #                     </dd>
    #                     <dt>value = 3072</dt>
    #                     <dd>
    #                        <p>
    #                           <code>VCPU</code> = 0.5, or 1</p>
    #                     </dd>
    #                     <dt>value = 4096</dt>
    #                     <dd>
    #                        <p>
    #                           <code>VCPU</code> = 0.5, 1, or 2</p>
    #                     </dd>
    #                     <dt>value = 5120, 6144, or 7168</dt>
    #                     <dd>
    #                        <p>
    #                           <code>VCPU</code> = 1 or 2</p>
    #                     </dd>
    #                     <dt>value = 8192</dt>
    #                     <dd>
    #                        <p>
    #                           <code>VCPU</code> = 1, 2, 4, or 8</p>
    #                     </dd>
    #                     <dt>value = 9216, 10240, 11264, 12288, 13312, 14336, or 15360</dt>
    #                     <dd>
    #                        <p>
    #                           <code>VCPU</code> = 2 or 4</p>
    #                     </dd>
    #                     <dt>value = 16384</dt>
    #                     <dd>
    #                        <p>
    #                           <code>VCPU</code> = 2, 4, or 8</p>
    #                     </dd>
    #                     <dt>value = 17408, 18432, 19456, 21504, 22528, 23552, 25600, 26624, 27648,
    #                           29696, or 30720</dt>
    #                     <dd>
    #                        <p>
    #                           <code>VCPU</code> = 4</p>
    #                     </dd>
    #                     <dt>value = 20480, 24576, or 28672</dt>
    #                     <dd>
    #                        <p>
    #                           <code>VCPU</code> = 4 or 8</p>
    #                     </dd>
    #                     <dt>value = 36864, 45056, 53248, or 61440</dt>
    #                     <dd>
    #                        <p>
    #                           <code>VCPU</code> = 8</p>
    #                     </dd>
    #                     <dt>value = 32768, 40960, 49152, or 57344</dt>
    #                     <dd>
    #                        <p>
    #                           <code>VCPU</code> = 8 or 16</p>
    #                     </dd>
    #                     <dt>value = 65536, 73728, 81920, 90112, 98304, 106496, 114688, or
    #                           122880</dt>
    #                     <dd>
    #                        <p>
    #                           <code>VCPU</code> = 16</p>
    #                     </dd>
    #                  </dl>
    #               </dd>
    #               <dt>type="VCPU"</dt>
    #               <dd>
    #                  <p>The number of vCPUs reserved for the container. This parameter maps to
    #                        <code>CpuShares</code> in the <a href="https://docs.docker.com/engine/api/v1.23/#create-a-container"> Create a
    #                        container</a> section of the <a href="https://docs.docker.com/engine/api/v1.23/">Docker Remote API</a> and
    #                     the <code>--cpu-shares</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>. Each
    #                     vCPU is equivalent to 1,024 CPU shares. For EC2 resources, you must specify at
    #                     least one vCPU. This is required but can be specified in several places; it must
    #                     be specified for each node at least once.</p>
    #                  <p>The default for the Fargate On-Demand vCPU resource count quota
    #                     is 6 vCPUs. For more information about Fargate quotas, see <a href="https://docs.aws.amazon.com/general/latest/gr/ecs-service.html#service-quotas-fargate">Fargate quotas</a> in the <i>Amazon Web Services
    #                        General Reference</i>.</p>
    #                  <p>For jobs that are running on Fargate resources, then
    #                        <code>value</code> must match one of the supported values and the
    #                        <code>MEMORY</code> values must be one of the values supported for that
    #                        <code>VCPU</code> value. The supported values are 0.25, 0.5, 1, 2, 4, 8, and
    #                     16</p>
    #                  <dl>
    #                     <dt>value = 0.25</dt>
    #                     <dd>
    #                        <p>
    #                           <code>MEMORY</code> = 512, 1024, or 2048</p>
    #                     </dd>
    #                     <dt>value = 0.5</dt>
    #                     <dd>
    #                        <p>
    #                           <code>MEMORY</code> = 1024, 2048, 3072, or 4096</p>
    #                     </dd>
    #                     <dt>value = 1</dt>
    #                     <dd>
    #                        <p>
    #                           <code>MEMORY</code> = 2048, 3072, 4096, 5120, 6144, 7168, or
    #                              8192</p>
    #                     </dd>
    #                     <dt>value = 2</dt>
    #                     <dd>
    #                        <p>
    #                           <code>MEMORY</code> = 4096, 5120, 6144, 7168, 8192, 9216, 10240,
    #                              11264, 12288, 13312, 14336, 15360, or 16384</p>
    #                     </dd>
    #                     <dt>value = 4</dt>
    #                     <dd>
    #                        <p>
    #                           <code>MEMORY</code> = 8192, 9216, 10240, 11264, 12288, 13312, 14336,
    #                              15360, 16384, 17408, 18432, 19456, 20480, 21504, 22528, 23552, 24576,
    #                              25600, 26624, 27648, 28672, 29696, or 30720</p>
    #                     </dd>
    #                     <dt>value = 8</dt>
    #                     <dd>
    #                        <p>
    #                           <code>MEMORY</code> = 16384, 20480, 24576, 28672, 32768, 36864, 40960,
    #                              45056, 49152, 53248, 57344, or 61440 </p>
    #                     </dd>
    #                     <dt>value = 16</dt>
    #                     <dd>
    #                        <p>
    #                           <code>MEMORY</code> = 32768, 40960, 49152, 57344, 65536, 73728, 81920,
    #                              90112, 98304, 106496, 114688, or 122880 </p>
    #                     </dd>
    #                  </dl>
    #               </dd>
    #            </dl>
    #   @return [String]
    class BatchResourceRequirement < Struct.new(
      nil,
      :type,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The retry strategy that's associated with a job. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/job_retries.html"> Automated job
    #             retries</a> in the <i>Batch User Guide</i>.</p>
    # @!attribute attempts
    #   <p>The number of times to move a job to the <code>RUNNABLE</code> status. If the value of
    #               <code>attempts</code> is greater than one, the job is retried on failure the same number
    #            of attempts as the value.</p>
    #   @return [Integer]
    class BatchRetryStrategy < Struct.new(
      nil,
      :attempts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a capacity provider strategy. To learn more, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CapacityProviderStrategyItem.html">CapacityProviderStrategyItem</a> in the Amazon ECS API Reference.</p>
    # @!attribute capacity_provider
    #   <p>The short name of the capacity provider.</p>
    #   @return [String]
    # @!attribute weight
    #   <p>The weight value designates the relative percentage of the total number of tasks
    #            launched that should use the specified capacity provider. The weight value is taken into
    #            consideration after the base value, if defined, is satisfied.</p>
    #   @return [Integer]
    # @!attribute base
    #   <p>The base value designates how many tasks, at a minimum, to run on the specified capacity
    #            provider. Only one capacity provider in a capacity provider strategy can have a base
    #            defined. If no value is specified, the default value of 0 is used. </p>
    #   @return [Integer]
    class CapacityProviderStrategyItem < Struct.new(
      nil,
      :capacity_provider,
      :weight,
      :base,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:weight] = 0 unless options.key?(:weight)
        options[:base] = 0 unless options.key?(:base)
        super
      end
    end

    # <p>The Amazon CloudWatch Logs logging configuration settings for the pipe.</p>
    # @!attribute log_group_arn
    #   <p>The Amazon Web Services Resource Name (ARN) for the CloudWatch log group to which EventBridge sends the log records.</p>
    #   @return [String]
    class CloudwatchLogsLogDestination < Struct.new(
      nil,
      :log_group_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon CloudWatch Logs logging configuration settings for the pipe.</p>
    # @!attribute log_group_arn
    #   <p>The Amazon Web Services Resource Name (ARN) for the CloudWatch log group to which EventBridge sends the log records.</p>
    #   @return [String]
    class CloudwatchLogsLogDestinationParameters < Struct.new(
      nil,
      :log_group_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An action you attempted resulted in an exception.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource that caused the exception.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource that caused the exception.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the pipe.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the pipe.</p>
    #   @return [String]
    # @!attribute desired_state
    #   <p>The state the pipe should be in.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The ARN of the source resource.</p>
    #   @return [String]
    # @!attribute source_parameters
    #   <p>The parameters required to set up a source for your pipe.</p>
    #   @return [Types::PipeSourceParameters]
    # @!attribute enrichment
    #   <p>The ARN of the enrichment resource.</p>
    #   @return [String]
    # @!attribute enrichment_parameters
    #   <p>The parameters required to set up enrichment on your pipe.</p>
    #   @return [Types::PipeEnrichmentParameters]
    # @!attribute target
    #   <p>The ARN of the target resource.</p>
    #   @return [String]
    # @!attribute target_parameters
    #   <p>The parameters required to set up a target for your pipe.</p>
    #            <p>For more information about pipe target parameters, including how to use dynamic path parameters, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes-event-target.html">Target parameters</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    #   @return [Types::PipeTargetParameters]
    # @!attribute role_arn
    #   <p>The ARN of the role that allows the pipe to send data to the target.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of key-value pairs to associate with the pipe.</p>
    #   @return [Hash<String, String>]
    # @!attribute log_configuration
    #   <p>The logging configuration settings for the pipe.</p>
    #   @return [Types::PipeLogConfigurationParameters]
    # @!attribute kms_key_identifier
    #   <p>The identifier of the KMS
    #         customer managed key for EventBridge to use, if you choose to use a customer managed key to encrypt pipe data. The identifier can be the key 
    #         Amazon Resource Name (ARN), KeyId, key alias, or key alias ARN.</p>
    #            <p>If you do not specify a customer managed key identifier, EventBridge uses an
    #           Amazon Web Services owned key to encrypt pipe data.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/getting-started.html">Managing keys</a> in the <i>Key Management Service
    #                                   Developer Guide</i>. </p>
    #   @return [String]
    class CreatePipeRequest < Struct.new(
      nil,
      :name,
      :description,
      :desired_state,
      :source,
      :source_parameters,
      :enrichment,
      :enrichment_parameters,
      :target,
      :target_parameters,
      :role_arn,
      :tags,
      :log_configuration,
      :kms_key_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the pipe.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the pipe.</p>
    #   @return [String]
    # @!attribute desired_state
    #   <p>The state the pipe should be in.</p>
    #   @return [String]
    # @!attribute current_state
    #   <p>The state the pipe is in.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time the pipe was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>When the pipe was last updated, in <a href="https://www.w3.org/TR/NOTE-datetime">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD).</p>
    #   @return [Time]
    class CreatePipeResponse < Struct.new(
      nil,
      :arn,
      :name,
      :desired_state,
      :current_state,
      :creation_time,
      :last_modified_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A <code>DeadLetterConfig</code> object that contains information about a dead-letter
    #          queue configuration.</p>
    # @!attribute arn
    #   <p>The ARN of the specified target for the dead-letter queue. </p>
    #            <p>For Amazon Kinesis stream and Amazon DynamoDB stream sources, specify
    #            either an Amazon SNS topic or Amazon SQS queue ARN.</p>
    #   @return [String]
    class DeadLetterConfig < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the pipe.</p>
    #   @return [String]
    class DeletePipeRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the pipe.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the pipe.</p>
    #   @return [String]
    # @!attribute desired_state
    #   <p>The state the pipe should be in.</p>
    #   @return [String]
    # @!attribute current_state
    #   <p>The state the pipe is in.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time the pipe was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>When the pipe was last updated, in <a href="https://www.w3.org/TR/NOTE-datetime">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD).</p>
    #   @return [Time]
    class DeletePipeResponse < Struct.new(
      nil,
      :arn,
      :name,
      :desired_state,
      :current_state,
      :creation_time,
      :last_modified_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the pipe.</p>
    #   @return [String]
    class DescribePipeRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the pipe.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the pipe.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the pipe.</p>
    #   @return [String]
    # @!attribute desired_state
    #   <p>The state the pipe should be in.</p>
    #   @return [String]
    # @!attribute current_state
    #   <p>The state the pipe is in.</p>
    #   @return [String]
    # @!attribute state_reason
    #   <p>The reason the pipe is in its current state.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The ARN of the source resource.</p>
    #   @return [String]
    # @!attribute source_parameters
    #   <p>The parameters required to set up a source for your pipe.</p>
    #   @return [Types::PipeSourceParameters]
    # @!attribute enrichment
    #   <p>The ARN of the enrichment resource.</p>
    #   @return [String]
    # @!attribute enrichment_parameters
    #   <p>The parameters required to set up enrichment on your pipe.</p>
    #   @return [Types::PipeEnrichmentParameters]
    # @!attribute target
    #   <p>The ARN of the target resource.</p>
    #   @return [String]
    # @!attribute target_parameters
    #   <p>The parameters required to set up a target for your pipe.</p>
    #            <p>For more information about pipe target parameters, including how to use dynamic path parameters, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes-event-target.html">Target parameters</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    #   @return [Types::PipeTargetParameters]
    # @!attribute role_arn
    #   <p>The ARN of the role that allows the pipe to send data to the target.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of key-value pairs to associate with the pipe.</p>
    #   @return [Hash<String, String>]
    # @!attribute creation_time
    #   <p>The time the pipe was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>When the pipe was last updated, in <a href="https://www.w3.org/TR/NOTE-datetime">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD).</p>
    #   @return [Time]
    # @!attribute log_configuration
    #   <p>The logging configuration settings for the pipe.</p>
    #   @return [Types::PipeLogConfiguration]
    # @!attribute kms_key_identifier
    #   <p>The identifier of the KMS
    #         customer managed key for EventBridge to use to encrypt pipe data, if one has been specified.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-encryption.html">Data encryption in EventBridge</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    #   @return [String]
    class DescribePipeResponse < Struct.new(
      nil,
      :arn,
      :name,
      :description,
      :desired_state,
      :current_state,
      :state_reason,
      :source,
      :source_parameters,
      :enrichment,
      :enrichment_parameters,
      :target,
      :target_parameters,
      :role_arn,
      :tags,
      :creation_time,
      :last_modified_time,
      :log_configuration,
      :kms_key_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Maps source data to a dimension in the target Timestream for LiveAnalytics
    #          table.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/concepts.html">Amazon Timestream for LiveAnalytics concepts</a>
    #          </p>
    # @!attribute dimension_value
    #   <p>Dynamic path to the dimension value in the source event.</p>
    #   @return [String]
    # @!attribute dimension_value_type
    #   <p>The data type of the dimension for the time-series data.</p>
    #   @return [String]
    # @!attribute dimension_name
    #   <p>The metadata attributes of the time series. For example, the name and Availability Zone
    #            of an Amazon EC2 instance or the name of the manufacturer of a wind turbine are
    #            dimensions.</p>
    #   @return [String]
    class DimensionMapping < Struct.new(
      nil,
      :dimension_value,
      :dimension_value_type,
      :dimension_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The overrides that are sent to a container. An empty container override can be passed
    #          in. An example of an empty container override is <code>{"containerOverrides": [ ] }</code>.
    #          If a non-empty container override is specified, the <code>name</code> parameter must be
    #          included.</p>
    # @!attribute command
    #   <p>The command to send to the container that overrides the default command from the Docker
    #            image or the task definition. You must also specify a container name.</p>
    #   @return [Array<String>]
    # @!attribute cpu
    #   <p>The number of <code>cpu</code> units reserved for the container, instead of the default
    #            value from the task definition. You must also specify a container name.</p>
    #   @return [Integer]
    # @!attribute environment
    #   <p>The environment variables to send to the container. You can add new environment
    #            variables, which are added to the container at launch, or you can override the existing
    #            environment variables from the Docker image or the task definition. You must also specify a
    #            container name.</p>
    #   @return [Array<Types::EcsEnvironmentVariable>]
    # @!attribute environment_files
    #   <p>A list of files containing the environment variables to pass to a container, instead of
    #            the value from the container definition.</p>
    #   @return [Array<Types::EcsEnvironmentFile>]
    # @!attribute memory
    #   <p>The hard limit (in MiB) of memory to present to the container, instead of the default
    #            value from the task definition. If your container attempts to exceed the memory specified
    #            here, the container is killed. You must also specify a container name.</p>
    #   @return [Integer]
    # @!attribute memory_reservation
    #   <p>The soft limit (in MiB) of memory to reserve for the container, instead of the default
    #            value from the task definition. You must also specify a container name.</p>
    #   @return [Integer]
    # @!attribute name
    #   <p>The name of the container that receives the override. This parameter is required if any
    #            override is specified.</p>
    #   @return [String]
    # @!attribute resource_requirements
    #   <p>The type and amount of a resource to assign to a container, instead of the default value
    #            from the task definition. The only supported resource is a GPU.</p>
    #   @return [Array<Types::EcsResourceRequirement>]
    class EcsContainerOverride < Struct.new(
      nil,
      :command,
      :cpu,
      :environment,
      :environment_files,
      :memory,
      :memory_reservation,
      :name,
      :resource_requirements,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A list of files containing the environment variables to pass to a container. You can
    #          specify up to ten environment files. The file must have a <code>.env</code> file extension.
    #          Each line in an environment file should contain an environment variable in
    #             <code>VARIABLE=VALUE</code> format. Lines beginning with <code>#</code> are treated as
    #          comments and are ignored. For more information about the environment variable file syntax,
    #          see <a href="https://docs.docker.com/compose/env-file/">Declare default environment
    #             variables in file</a>.</p>
    #          <p>If there are environment variables specified using the <code>environment</code>
    #          parameter in a container definition, they take precedence over the variables contained
    #          within an environment file. If multiple environment files are specified that contain the
    #          same variable, they're processed from the top down. We recommend that you use unique
    #          variable names. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/taskdef-envfiles.html">Specifying environment
    #             variables</a> in the <i>Amazon Elastic Container Service Developer
    #          Guide</i>.</p>
    #          <p>This parameter is only supported for tasks hosted on Fargate using the
    #          following platform versions:</p>
    #          <ul>
    #             <li>
    #                <p>Linux platform version <code>1.4.0</code> or later.</p>
    #             </li>
    #             <li>
    #                <p>Windows platform version <code>1.0.0</code> or later.</p>
    #             </li>
    #          </ul>
    # @!attribute type
    #   <p>The file type to use. The only supported value is <code>s3</code>.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The Amazon Resource Name (ARN) of the Amazon S3 object containing the
    #            environment variable file.</p>
    #   @return [String]
    class EcsEnvironmentFile < Struct.new(
      nil,
      :type,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The environment variables to send to the container. You can add new environment
    #          variables, which are added to the container at launch, or you can override the existing
    #          environment variables from the Docker image or the task definition. You must also specify a
    #          container name.</p>
    # @!attribute name
    #   <p>The name of the key-value pair. For environment variables, this is the name of the
    #            environment variable.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the key-value pair. For environment variables, this is the value of the
    #            environment variable.</p>
    #   @return [String]
    class EcsEnvironmentVariable < Struct.new(
      nil,
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The amount of ephemeral storage to allocate for the task. This parameter is used to
    #          expand the total amount of ephemeral storage available, beyond the default amount, for
    #          tasks hosted on Fargate. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/userguide/using_data_volumes.html">Fargate task storage</a> in the <i>Amazon ECS User Guide
    #             for Fargate</i>.</p>
    #          <note>
    #             <p>This parameter is only supported for tasks hosted on Fargate using
    #             Linux platform version <code>1.4.0</code> or later. This parameter is not supported for
    #             Windows containers on Fargate.</p>
    #          </note>
    # @!attribute size_in_gi_b
    #   <p>The total amount, in GiB, of ephemeral storage to set for the task. The minimum
    #            supported value is <code>21</code> GiB and the maximum supported value is <code>200</code>
    #            GiB.</p>
    #   @return [Integer]
    class EcsEphemeralStorage < Struct.new(
      nil,
      :size_in_gi_b,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details on an Elastic Inference accelerator task override. This parameter is used to
    #          override the Elastic Inference accelerator specified in the task definition. For more
    #          information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/userguide/ecs-inference.html">Working with Amazon Elastic
    #             Inference on Amazon ECS</a> in the <i>Amazon Elastic Container Service
    #             Developer Guide</i>.</p>
    # @!attribute device_name
    #   <p>The Elastic Inference accelerator device name to override for the task. This parameter
    #            must match a <code>deviceName</code> specified in the task definition.</p>
    #   @return [String]
    # @!attribute device_type
    #   <p>The Elastic Inference accelerator type to use.</p>
    #   @return [String]
    class EcsInferenceAcceleratorOverride < Struct.new(
      nil,
      :device_name,
      :device_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The type and amount of a resource to assign to a container. The supported resource types
    #          are GPUs and Elastic Inference accelerators. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-gpu.html">Working with
    #             GPUs on Amazon ECS</a> or <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-inference.html">Working with Amazon Elastic
    #             Inference on Amazon ECS</a> in the <i>Amazon Elastic Container Service
    #             Developer Guide</i>
    #          </p>
    # @!attribute type
    #   <p>The type of resource to assign to a container. The supported values are <code>GPU</code>
    #            or <code>InferenceAccelerator</code>.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value for the specified resource type.</p>
    #            <p>If the <code>GPU</code> type is used, the value is the number of physical
    #               <code>GPUs</code> the Amazon ECS container agent reserves for the container. The
    #            number of GPUs that's reserved for all containers in a task can't exceed the number of
    #            available GPUs on the container instance that the task is launched on.</p>
    #            <p>If the <code>InferenceAccelerator</code> type is used, the <code>value</code> matches
    #            the <code>deviceName</code> for an InferenceAccelerator specified in a task
    #            definition.</p>
    #   @return [String]
    class EcsResourceRequirement < Struct.new(
      nil,
      :type,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The overrides that are associated with a task.</p>
    # @!attribute container_overrides
    #   <p>One or more container overrides that are sent to a task.</p>
    #   @return [Array<Types::EcsContainerOverride>]
    # @!attribute cpu
    #   <p>The cpu override for the task.</p>
    #   @return [String]
    # @!attribute ephemeral_storage
    #   <p>The ephemeral storage setting override for the task.</p>
    #            <note>
    #               <p>This parameter is only supported for tasks hosted on Fargate that use
    #               the following platform versions:</p>
    #               <ul>
    #                  <li>
    #                     <p>Linux platform version <code>1.4.0</code> or later.</p>
    #                  </li>
    #                  <li>
    #                     <p>Windows platform version <code>1.0.0</code> or later.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [Types::EcsEphemeralStorage]
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the task execution IAM role override for the task. For
    #            more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_execution_IAM_role.html">Amazon ECS
    #               task execution IAM role</a> in the <i>Amazon Elastic Container Service Developer
    #               Guide</i>.</p>
    #   @return [String]
    # @!attribute inference_accelerator_overrides
    #   <p>The Elastic Inference accelerator override for the task.</p>
    #   @return [Array<Types::EcsInferenceAcceleratorOverride>]
    # @!attribute memory
    #   <p>The memory override for the task.</p>
    #   @return [String]
    # @!attribute task_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that containers in this task can assume.
    #            All containers in this task are granted the permissions that are specified in this role.
    #            For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html">IAM Role for Tasks</a> in
    #            the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #   @return [String]
    class EcsTaskOverride < Struct.new(
      nil,
      :container_overrides,
      :cpu,
      :ephemeral_storage,
      :execution_role_arn,
      :inference_accelerator_overrides,
      :memory,
      :task_role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Filter events using an event pattern. For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html">Events and Event
    #             Patterns</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    # @!attribute pattern
    #   <p>The event pattern.</p>
    #   @return [String]
    class Filter < Struct.new(
      nil,
      :pattern,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The collection of event patterns used to filter events.</p>
    #          <p>To remove a filter, specify a <code>FilterCriteria</code> object with an empty array of <code>Filter</code> objects.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html">Events and Event
    #          Patterns</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    # @!attribute filters
    #   <p>The event patterns.</p>
    #   @return [Array<Types::Filter>]
    class FilterCriteria < Struct.new(
      nil,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon Data Firehose logging configuration settings for the pipe.</p>
    # @!attribute delivery_stream_arn
    #   <p>The Amazon Resource Name (ARN) of the Firehose delivery stream to which EventBridge delivers the pipe log records.</p>
    #   @return [String]
    class FirehoseLogDestination < Struct.new(
      nil,
      :delivery_stream_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon Data Firehose logging configuration settings for the pipe.</p>
    # @!attribute delivery_stream_arn
    #   <p>Specifies the Amazon Resource Name (ARN) of the Firehose delivery stream to
    #            which EventBridge delivers the pipe log records.</p>
    #   @return [String]
    class FirehoseLogDestinationParameters < Struct.new(
      nil,
      :delivery_stream_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This exception occurs due to unexpected causes.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds to wait before retrying the action that caused the
    #            exception.</p>
    #   @return [Integer]
    class InternalException < Struct.new(
      nil,
      :message,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name_prefix
    #   <p>A value that will return a subset of the pipes associated with this account. For
    #            example, <code>"NamePrefix": "ABC"</code> will return all endpoints with "ABC" in the
    #            name.</p>
    #   @return [String]
    # @!attribute desired_state
    #   <p>The state the pipe should be in.</p>
    #   @return [String]
    # @!attribute current_state
    #   <p>The state the pipe is in.</p>
    #   @return [String]
    # @!attribute source_prefix
    #   <p>The prefix matching the pipe source.</p>
    #   @return [String]
    # @!attribute target_prefix
    #   <p>The prefix matching the pipe target.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. 
    #            Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination 
    #            token will return an HTTP 400 InvalidToken error.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of pipes to include in the response.</p>
    #   @return [Integer]
    class ListPipesRequest < Struct.new(
      nil,
      :name_prefix,
      :desired_state,
      :current_state,
      :source_prefix,
      :target_prefix,
      :next_token,
      :limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pipes
    #   <p>The pipes returned by the call.</p>
    #   @return [Array<Types::Pipe>]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. 
    #            Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination 
    #            token will return an HTTP 400 InvalidToken error.</p>
    #   @return [String]
    class ListPipesResponse < Struct.new(
      nil,
      :pipes,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the pipe for which you want to view tags.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The list of key-value pairs to associate with the pipe.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Secrets Manager secret that stores your broker credentials.</p>
    # @!attribute basic_auth
    #   <p>The ARN of the Secrets Manager secret.</p>
    #   @return [String]
    class MQBrokerAccessCredentials < Struct.new(
      :basic_auth,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class BasicAuth < MQBrokerAccessCredentials; end
      class Unknown < MQBrokerAccessCredentials; end
    end

    # <p>The Secrets Manager secret that stores your stream credentials.</p>
    # @!attribute sasl_scram512_auth
    #   <p>The ARN of the Secrets Manager secret.</p>
    #   @return [String]
    # @!attribute client_certificate_tls_auth
    #   <p>The ARN of the Secrets Manager secret.</p>
    #   @return [String]
    class MSKAccessCredentials < Struct.new(
      :sasl_scram512_auth,
      :client_certificate_tls_auth,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class SaslScram512Auth < MSKAccessCredentials; end
      class ClientCertificateTlsAuth < MSKAccessCredentials; end
      class Unknown < MSKAccessCredentials; end
    end

    # <p>A mapping of a source event data field to a measure in a Timestream for
    #          LiveAnalytics record.</p>
    # @!attribute measure_value
    #   <p>Dynamic path to the measurement attribute in the source event.</p>
    #   @return [String]
    # @!attribute measure_value_type
    #   <p>Data type of the measurement attribute in the source event.</p>
    #   @return [String]
    # @!attribute multi_measure_attribute_name
    #   <p>Target measure name to be used.</p>
    #   @return [String]
    class MultiMeasureAttributeMapping < Struct.new(
      nil,
      :measure_value,
      :measure_value_type,
      :multi_measure_attribute_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Maps multiple measures from the source event to the same Timestream for
    #          LiveAnalytics record.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/concepts.html">Amazon Timestream for LiveAnalytics concepts</a>
    #          </p>
    # @!attribute multi_measure_name
    #   <p>The name of the multiple measurements per record (multi-measure).</p>
    #   @return [String]
    # @!attribute multi_measure_attribute_mappings
    #   <p>Mappings that represent multiple source event fields mapped to measures in the same
    #               Timestream for LiveAnalytics record.</p>
    #   @return [Array<Types::MultiMeasureAttributeMapping>]
    class MultiMeasureMapping < Struct.new(
      nil,
      :multi_measure_name,
      :multi_measure_attribute_mappings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure specifies the network configuration for an Amazon ECS
    #          task.</p>
    # @!attribute awsvpc_configuration
    #   <p>Use this structure to specify the VPC subnets and security groups for the task, and
    #            whether a public IP address is to be used. This structure is relevant only for ECS tasks
    #            that use the <code>awsvpc</code> network mode.</p>
    #   @return [Types::AwsVpcConfiguration]
    class NetworkConfiguration < Struct.new(
      nil,
      :awsvpc_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An entity that you specified does not exist.</p>
    # @!attribute message
    #   @return [String]
    class NotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that represents a pipe. Amazon EventBridgePipes connect event sources to
    #          targets and reduces the need for specialized knowledge and integration code.</p>
    # @!attribute name
    #   <p>The name of the pipe.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the pipe.</p>
    #   @return [String]
    # @!attribute desired_state
    #   <p>The state the pipe should be in.</p>
    #   @return [String]
    # @!attribute current_state
    #   <p>The state the pipe is in.</p>
    #   @return [String]
    # @!attribute state_reason
    #   <p>The reason the pipe is in its current state.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time the pipe was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>When the pipe was last updated, in <a href="https://www.w3.org/TR/NOTE-datetime">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD).</p>
    #   @return [Time]
    # @!attribute source
    #   <p>The ARN of the source resource.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The ARN of the target resource.</p>
    #   @return [String]
    # @!attribute enrichment
    #   <p>The ARN of the enrichment resource.</p>
    #   @return [String]
    class Pipe < Struct.new(
      nil,
      :name,
      :arn,
      :desired_state,
      :current_state,
      :state_reason,
      :creation_time,
      :last_modified_time,
      :source,
      :target,
      :enrichment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>These are custom parameter to be used when the target is an API Gateway REST APIs
    #          or EventBridge ApiDestinations. In the latter case, these are merged with any
    #          InvocationParameters specified on the Connection, with any values from the Connection
    #          taking precedence.</p>
    # @!attribute path_parameter_values
    #   <p>The path parameter values to be used to populate API Gateway REST API or EventBridge ApiDestination path wildcards ("*").</p>
    #   @return [Array<String>]
    # @!attribute header_parameters
    #   <p>The headers that need to be sent as part of request invoking the API Gateway REST
    #            API or EventBridge ApiDestination.</p>
    #   @return [Hash<String, String>]
    # @!attribute query_string_parameters
    #   <p>The query string keys/values that need to be sent as part of request invoking the
    #               API Gateway REST API or EventBridge ApiDestination.</p>
    #   @return [Hash<String, String>]
    class PipeEnrichmentHttpParameters < Struct.new(
      nil,
      :path_parameter_values,
      :header_parameters,
      :query_string_parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The parameters required to set up enrichment on your pipe.</p>
    # @!attribute input_template
    #   <p>Valid JSON text passed to the enrichment. In this case, nothing from the event itself is
    #            passed to the enrichment. For more information, see <a href="http://www.rfc-editor.org/rfc/rfc7159.txt">The JavaScript Object Notation (JSON)
    #               Data Interchange Format</a>.</p>
    #            <p>To remove an input template, specify an empty string.</p>
    #   @return [String]
    # @!attribute http_parameters
    #   <p>Contains the HTTP parameters to use when the target is a API Gateway REST
    #            endpoint or EventBridge ApiDestination.</p>
    #            <p>If you specify an API Gateway REST API or EventBridge ApiDestination as a
    #            target, you can use this parameter to specify headers, path parameters, and query string
    #            keys/values as part of your target invoking request. If you're using ApiDestinations, the
    #            corresponding Connection can also have these values configured. In case of any conflicting
    #            keys, values from the Connection take precedence.</p>
    #   @return [Types::PipeEnrichmentHttpParameters]
    class PipeEnrichmentParameters < Struct.new(
      nil,
      :input_template,
      :http_parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The logging configuration settings for the pipe.</p>
    # @!attribute s3_log_destination
    #   <p>The Amazon S3 logging configuration settings for the pipe.</p>
    #   @return [Types::S3LogDestination]
    # @!attribute firehose_log_destination
    #   <p>The Amazon Data Firehose logging configuration settings for the pipe.</p>
    #   @return [Types::FirehoseLogDestination]
    # @!attribute cloudwatch_logs_log_destination
    #   <p>The Amazon CloudWatch Logs logging configuration settings for the pipe.</p>
    #   @return [Types::CloudwatchLogsLogDestination]
    # @!attribute level
    #   <p>The level of logging detail to include. This applies to all log destinations for the pipe.</p>
    #   @return [String]
    # @!attribute include_execution_data
    #   <p>Whether the execution data (specifically, the <code>payload</code>,
    #               <code>awsRequest</code>, and <code>awsResponse</code> fields) is included in the log
    #            messages for this pipe.</p>
    #            <p>This applies to all log destinations for the pipe.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes-logs.html#eb-pipes-logs-execution-data">Including execution data in logs</a> in the <i>Amazon EventBridge User
    #               Guide</i>.</p>
    #   @return [Array<String>]
    class PipeLogConfiguration < Struct.new(
      nil,
      :s3_log_destination,
      :firehose_log_destination,
      :cloudwatch_logs_log_destination,
      :level,
      :include_execution_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the logging configuration settings for the pipe.</p>
    #          <p>When you call <code>UpdatePipe</code>, EventBridge updates the fields in the
    #             <code>PipeLogConfigurationParameters</code> object atomically as one and overrides
    #          existing values. This is by design. If you don't specify an optional field in any of the
    #             Amazon Web Services service parameters objects
    #             (<code>CloudwatchLogsLogDestinationParameters</code>,
    #             <code>FirehoseLogDestinationParameters</code>, or
    #             <code>S3LogDestinationParameters</code>), EventBridge sets that field to its
    #          system-default value during the update. </p>
    #          <p>For example, suppose when you created the pipe you specified a Firehose stream
    #          log destination. You then update the pipe to add an Amazon S3 log destination. In
    #          addition to specifying the <code>S3LogDestinationParameters</code> for the new log
    #          destination, you must also specify the fields in the
    #             <code>FirehoseLogDestinationParameters</code> object in order to retain the Firehose stream log destination. </p>
    #          <p>For more information on generating pipe log records, see <a href="eventbridge/latest/userguide/eb-pipes-logs.html">Log EventBridge
    #             Pipes</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    # @!attribute s3_log_destination
    #   <p>The Amazon S3 logging configuration settings for the pipe.</p>
    #   @return [Types::S3LogDestinationParameters]
    # @!attribute firehose_log_destination
    #   <p>The Amazon Data Firehose logging configuration settings for the pipe.</p>
    #   @return [Types::FirehoseLogDestinationParameters]
    # @!attribute cloudwatch_logs_log_destination
    #   <p>The Amazon CloudWatch Logs logging configuration settings for the pipe.</p>
    #   @return [Types::CloudwatchLogsLogDestinationParameters]
    # @!attribute level
    #   <p>The level of logging detail to include. This applies to all log destinations for the pipe.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes-logs.html#eb-pipes-logs-level">Specifying
    #                  EventBridge Pipes log level</a> in the <i>Amazon EventBridge User
    #               Guide</i>.</p>
    #   @return [String]
    # @!attribute include_execution_data
    #   <p>Specify <code>ALL</code> to include the execution data (specifically, the
    #               <code>payload</code>, <code>awsRequest</code>, and <code>awsResponse</code> fields) in
    #            the log messages for this pipe.</p>
    #            <p>This applies to all log destinations for the pipe.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes-logs.html#eb-pipes-logs-execution-data">Including execution data in logs</a> in the <i>Amazon EventBridge User
    #               Guide</i>.</p>
    #            <p>By default, execution data is not included.</p>
    #   @return [Array<String>]
    class PipeLogConfigurationParameters < Struct.new(
      nil,
      :s3_log_destination,
      :firehose_log_destination,
      :cloudwatch_logs_log_destination,
      :level,
      :include_execution_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The parameters for using an Active MQ broker as a source.</p>
    # @!attribute credentials
    #   <p>The credentials needed to access the resource.</p>
    #   @return [Types::MQBrokerAccessCredentials]
    # @!attribute queue_name
    #   <p>The name of the destination queue to consume.</p>
    #   @return [String]
    # @!attribute batch_size
    #   <p>The maximum number of records to include in each batch.</p>
    #   @return [Integer]
    # @!attribute maximum_batching_window_in_seconds
    #   <p>The maximum length of a time to wait for events.</p>
    #   @return [Integer]
    class PipeSourceActiveMQBrokerParameters < Struct.new(
      nil,
      :credentials,
      :queue_name,
      :batch_size,
      :maximum_batching_window_in_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The parameters for using a DynamoDB stream as a source.</p>
    # @!attribute batch_size
    #   <p>The maximum number of records to include in each batch.</p>
    #   @return [Integer]
    # @!attribute dead_letter_config
    #   <p>Define the target queue to send dead-letter queue events to.</p>
    #   @return [Types::DeadLetterConfig]
    # @!attribute on_partial_batch_item_failure
    #   <p>Define how to handle item process failures. <code>AUTOMATIC_BISECT</code> halves each batch and retry each half 
    #   until all the records are processed or there is one failed message left in the batch.</p>
    #   @return [String]
    # @!attribute maximum_batching_window_in_seconds
    #   <p>The maximum length of a time to wait for events.</p>
    #   @return [Integer]
    # @!attribute maximum_record_age_in_seconds
    #   <p>Discard records older than the specified age. The default value is -1, which sets the maximum age to infinite. 
    #   When the value is set to infinite, EventBridge never discards old records. </p>
    #   @return [Integer]
    # @!attribute maximum_retry_attempts
    #   <p>Discard records after the specified number of retries. The default value is -1, which sets the maximum number of 
    #   retries to infinite. When MaximumRetryAttempts is infinite, EventBridge retries failed records until the record expires in the event source.</p>
    #   @return [Integer]
    # @!attribute parallelization_factor
    #   <p>The number of batches to process concurrently from each shard. The default value is 1.</p>
    #   @return [Integer]
    # @!attribute starting_position
    #   <p>The position in a stream from which to start reading.</p>
    #   @return [String]
    class PipeSourceDynamoDBStreamParameters < Struct.new(
      nil,
      :batch_size,
      :dead_letter_config,
      :on_partial_batch_item_failure,
      :maximum_batching_window_in_seconds,
      :maximum_record_age_in_seconds,
      :maximum_retry_attempts,
      :parallelization_factor,
      :starting_position,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The parameters for using a Kinesis stream as a source.</p>
    # @!attribute batch_size
    #   <p>The maximum number of records to include in each batch.</p>
    #   @return [Integer]
    # @!attribute dead_letter_config
    #   <p>Define the target queue to send dead-letter queue events to.</p>
    #   @return [Types::DeadLetterConfig]
    # @!attribute on_partial_batch_item_failure
    #   <p>Define how to handle item process failures. <code>AUTOMATIC_BISECT</code> halves each batch and retry each half 
    #   until all the records are processed or there is one failed message left in the batch.</p>
    #   @return [String]
    # @!attribute maximum_batching_window_in_seconds
    #   <p>The maximum length of a time to wait for events.</p>
    #   @return [Integer]
    # @!attribute maximum_record_age_in_seconds
    #   <p>Discard records older than the specified age. The default value is -1, which sets the maximum age to infinite. 
    #   When the value is set to infinite, EventBridge never discards old records. </p>
    #   @return [Integer]
    # @!attribute maximum_retry_attempts
    #   <p>Discard records after the specified number of retries. The default value is -1, which sets the maximum number of 
    #   retries to infinite. When MaximumRetryAttempts is infinite, EventBridge retries failed records until the record expires in the event source.</p>
    #   @return [Integer]
    # @!attribute parallelization_factor
    #   <p>The number of batches to process concurrently from each shard. The default value is 1.</p>
    #   @return [Integer]
    # @!attribute starting_position
    #   <p>The position in a stream from which to start reading.</p>
    #   @return [String]
    # @!attribute starting_position_timestamp
    #   <p>With <code>StartingPosition</code> set to <code>AT_TIMESTAMP</code>, the time from which
    #            to start reading, in Unix time seconds.</p>
    #   @return [Time]
    class PipeSourceKinesisStreamParameters < Struct.new(
      nil,
      :batch_size,
      :dead_letter_config,
      :on_partial_batch_item_failure,
      :maximum_batching_window_in_seconds,
      :maximum_record_age_in_seconds,
      :maximum_retry_attempts,
      :parallelization_factor,
      :starting_position,
      :starting_position_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The parameters for using an MSK stream as a source.</p>
    # @!attribute topic_name
    #   <p>The name of the topic that the pipe will read from.</p>
    #   @return [String]
    # @!attribute starting_position
    #   <p>The position in a stream from which to start reading.</p>
    #   @return [String]
    # @!attribute batch_size
    #   <p>The maximum number of records to include in each batch.</p>
    #   @return [Integer]
    # @!attribute maximum_batching_window_in_seconds
    #   <p>The maximum length of a time to wait for events.</p>
    #   @return [Integer]
    # @!attribute consumer_group_id
    #   <p>The name of the destination queue to consume.</p>
    #   @return [String]
    # @!attribute credentials
    #   <p>The credentials needed to access the resource.</p>
    #   @return [Types::MSKAccessCredentials]
    class PipeSourceManagedStreamingKafkaParameters < Struct.new(
      nil,
      :topic_name,
      :starting_position,
      :batch_size,
      :maximum_batching_window_in_seconds,
      :consumer_group_id,
      :credentials,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The parameters required to set up a source for your pipe.</p>
    # @!attribute filter_criteria
    #   <p>The collection of event patterns used to filter events.</p>
    #            <p>To remove a filter, specify a <code>FilterCriteria</code> object with an empty array of <code>Filter</code> objects.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html">Events and Event
    #            Patterns</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    #   @return [Types::FilterCriteria]
    # @!attribute kinesis_stream_parameters
    #   <p>The parameters for using a Kinesis stream as a source.</p>
    #   @return [Types::PipeSourceKinesisStreamParameters]
    # @!attribute dynamo_db_stream_parameters
    #   <p>The parameters for using a DynamoDB stream as a source.</p>
    #   @return [Types::PipeSourceDynamoDBStreamParameters]
    # @!attribute sqs_queue_parameters
    #   <p>The parameters for using a Amazon SQS stream as a source.</p>
    #   @return [Types::PipeSourceSqsQueueParameters]
    # @!attribute active_mq_broker_parameters
    #   <p>The parameters for using an Active MQ broker as a source.</p>
    #   @return [Types::PipeSourceActiveMQBrokerParameters]
    # @!attribute rabbit_mq_broker_parameters
    #   <p>The parameters for using a Rabbit MQ broker as a source.</p>
    #   @return [Types::PipeSourceRabbitMQBrokerParameters]
    # @!attribute managed_streaming_kafka_parameters
    #   <p>The parameters for using an MSK stream as a source.</p>
    #   @return [Types::PipeSourceManagedStreamingKafkaParameters]
    # @!attribute self_managed_kafka_parameters
    #   <p>The parameters for using a self-managed Apache Kafka stream as a source.</p>
    #            <p>A <i>self managed</i> cluster refers to any Apache Kafka cluster not hosted by Amazon Web Services.
    #       This includes both clusters you manage yourself, as well as those hosted by a third-party
    #       provider, such as <a href="https://www.confluent.io/">Confluent
    #         Cloud</a>, <a href="https://www.cloudkarafka.com/">CloudKarafka</a>, or <a href="https://redpanda.com/">Redpanda</a>. For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes-kafka.html">Apache Kafka streams as a source</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    #   @return [Types::PipeSourceSelfManagedKafkaParameters]
    class PipeSourceParameters < Struct.new(
      nil,
      :filter_criteria,
      :kinesis_stream_parameters,
      :dynamo_db_stream_parameters,
      :sqs_queue_parameters,
      :active_mq_broker_parameters,
      :rabbit_mq_broker_parameters,
      :managed_streaming_kafka_parameters,
      :self_managed_kafka_parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The parameters for using a Rabbit MQ broker as a source.</p>
    # @!attribute credentials
    #   <p>The credentials needed to access the resource.</p>
    #   @return [Types::MQBrokerAccessCredentials]
    # @!attribute queue_name
    #   <p>The name of the destination queue to consume.</p>
    #   @return [String]
    # @!attribute virtual_host
    #   <p>The name of the virtual host associated with the source broker.</p>
    #   @return [String]
    # @!attribute batch_size
    #   <p>The maximum number of records to include in each batch.</p>
    #   @return [Integer]
    # @!attribute maximum_batching_window_in_seconds
    #   <p>The maximum length of a time to wait for events.</p>
    #   @return [Integer]
    class PipeSourceRabbitMQBrokerParameters < Struct.new(
      nil,
      :credentials,
      :queue_name,
      :virtual_host,
      :batch_size,
      :maximum_batching_window_in_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The parameters for using a self-managed Apache Kafka stream as a source.</p>
    #          <p>A <i>self managed</i> cluster refers to any Apache Kafka cluster not hosted by Amazon Web Services.
    #     This includes both clusters you manage yourself, as well as those hosted by a third-party
    #     provider, such as <a href="https://www.confluent.io/">Confluent
    #       Cloud</a>, <a href="https://www.cloudkarafka.com/">CloudKarafka</a>, or <a href="https://redpanda.com/">Redpanda</a>. For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes-kafka.html">Apache Kafka streams as a source</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    # @!attribute topic_name
    #   <p>The name of the topic that the pipe will read from.</p>
    #   @return [String]
    # @!attribute starting_position
    #   <p>The position in a stream from which to start reading.</p>
    #   @return [String]
    # @!attribute additional_bootstrap_servers
    #   <p>An array of server URLs.</p>
    #   @return [Array<String>]
    # @!attribute batch_size
    #   <p>The maximum number of records to include in each batch.</p>
    #   @return [Integer]
    # @!attribute maximum_batching_window_in_seconds
    #   <p>The maximum length of a time to wait for events.</p>
    #   @return [Integer]
    # @!attribute consumer_group_id
    #   <p>The name of the destination queue to consume.</p>
    #   @return [String]
    # @!attribute credentials
    #   <p>The credentials needed to access the resource.</p>
    #   @return [Types::SelfManagedKafkaAccessConfigurationCredentials]
    # @!attribute server_root_ca_certificate
    #   <p>The ARN of the Secrets Manager secret used for certification.</p>
    #   @return [String]
    # @!attribute vpc
    #   <p>This structure specifies the VPC subnets and security groups for the stream, and whether a public IP address is to be used.</p>
    #   @return [Types::SelfManagedKafkaAccessConfigurationVpc]
    class PipeSourceSelfManagedKafkaParameters < Struct.new(
      nil,
      :topic_name,
      :starting_position,
      :additional_bootstrap_servers,
      :batch_size,
      :maximum_batching_window_in_seconds,
      :consumer_group_id,
      :credentials,
      :server_root_ca_certificate,
      :vpc,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The parameters for using a Amazon SQS stream as a source.</p>
    # @!attribute batch_size
    #   <p>The maximum number of records to include in each batch.</p>
    #   @return [Integer]
    # @!attribute maximum_batching_window_in_seconds
    #   <p>The maximum length of a time to wait for events.</p>
    #   @return [Integer]
    class PipeSourceSqsQueueParameters < Struct.new(
      nil,
      :batch_size,
      :maximum_batching_window_in_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The parameters for using an Batch job as a target.</p>
    # @!attribute job_definition
    #   <p>The job definition used by this job. This value can be one of <code>name</code>,
    #               <code>name:revision</code>, or the Amazon Resource Name (ARN) for the job definition. If
    #            name is specified without a revision then the latest active revision is used.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The name of the job. It can be up to 128 letters long. The first character must be
    #            alphanumeric, can contain uppercase and lowercase letters, numbers, hyphens (-), and
    #            underscores (_).</p>
    #   @return [String]
    # @!attribute array_properties
    #   <p>The array properties for the submitted job, such as the size of the array. The array size can be between 2 and 10,000. 
    #            If you specify array properties for a job, it becomes an array job. This parameter is used only if the target is an Batch job.</p>
    #   @return [Types::BatchArrayProperties]
    # @!attribute retry_strategy
    #   <p>The retry strategy to use for failed jobs. When a retry strategy is specified here, it
    #            overrides the retry strategy defined in the job definition.</p>
    #   @return [Types::BatchRetryStrategy]
    # @!attribute container_overrides
    #   <p>The overrides that are sent to a container.</p>
    #   @return [Types::BatchContainerOverrides]
    # @!attribute depends_on
    #   <p>A list of dependencies for the job. A job can depend upon a maximum of 20 jobs. You can
    #            specify a <code>SEQUENTIAL</code> type dependency without specifying a job ID for array
    #            jobs so that each child array job completes sequentially, starting at index 0. You can also
    #            specify an <code>N_TO_N</code> type dependency with a job ID for array jobs. In that case,
    #            each index child of this job must wait for the corresponding index child of each dependency
    #            to complete before it can begin.</p>
    #   @return [Array<Types::BatchJobDependency>]
    # @!attribute parameters
    #   <p>Additional parameters passed to the job that replace parameter substitution placeholders
    #            that are set in the job definition. Parameters are specified as a key and value pair
    #            mapping. Parameters included here override any corresponding parameter defaults from the
    #            job definition.</p>
    #   @return [Hash<String, String>]
    class PipeTargetBatchJobParameters < Struct.new(
      nil,
      :job_definition,
      :job_name,
      :array_properties,
      :retry_strategy,
      :container_overrides,
      :depends_on,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The parameters for using an CloudWatch Logs log stream as a target.</p>
    # @!attribute log_stream_name
    #   <p>The name of the log stream.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The time the event occurred, expressed as the number of milliseconds after Jan 1, 1970
    #            00:00:00 UTC.</p>
    #   @return [String]
    class PipeTargetCloudWatchLogsParameters < Struct.new(
      nil,
      :log_stream_name,
      :timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The parameters for using an Amazon ECS task as a target.</p>
    # @!attribute task_definition_arn
    #   <p>The ARN of the task definition to use if the event target is an Amazon ECS task.
    #         </p>
    #   @return [String]
    # @!attribute task_count
    #   <p>The number of tasks to create based on <code>TaskDefinition</code>. The default is
    #            1.</p>
    #   @return [Integer]
    # @!attribute launch_type
    #   <p>Specifies the launch type on which your task is running. The launch type that you
    #            specify here must match one of the launch type (compatibilities) of the target task. The
    #               <code>FARGATE</code> value is supported only in the Regions where Fargate with Amazon ECS is supported. For more information, see
    #               <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/AWS-Fargate.html">Fargate on Amazon ECS</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute network_configuration
    #   <p>Use this structure if the Amazon ECS task uses the <code>awsvpc</code> network
    #            mode. This structure specifies the VPC subnets and security groups associated with the
    #            task, and whether a public IP address is to be used. This structure is required if
    #               <code>LaunchType</code> is <code>FARGATE</code> because the <code>awsvpc</code> mode is
    #            required for Fargate tasks.</p>
    #            <p>If you specify <code>NetworkConfiguration</code> when the target ECS task does not use
    #            the <code>awsvpc</code> network mode, the task fails.</p>
    #   @return [Types::NetworkConfiguration]
    # @!attribute platform_version
    #   <p>Specifies the platform version for the task. Specify only the numeric portion of the
    #            platform version, such as <code>1.1.0</code>.</p>
    #            <p>This structure is used only if <code>LaunchType</code> is <code>FARGATE</code>. For more
    #            information about valid platform versions, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html">Fargate
    #               Platform Versions</a> in the <i>Amazon Elastic Container Service Developer
    #               Guide</i>.</p>
    #   @return [String]
    # @!attribute group
    #   <p>Specifies an Amazon ECS task group for the task. The maximum length is 255
    #            characters.</p>
    #   @return [String]
    # @!attribute capacity_provider_strategy
    #   <p>The capacity provider strategy to use for the task.</p>
    #            <p>If a <code>capacityProviderStrategy</code> is specified, the <code>launchType</code>
    #            parameter must be omitted. If no <code>capacityProviderStrategy</code> or launchType is
    #            specified, the <code>defaultCapacityProviderStrategy</code> for the cluster is used.
    #         </p>
    #   @return [Array<Types::CapacityProviderStrategyItem>]
    # @!attribute enable_ecs_managed_tags
    #   <p>Specifies whether to enable Amazon ECS managed tags for the task. For more
    #            information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html">Tagging Your Amazon ECS Resources</a> in the Amazon Elastic Container Service Developer Guide. </p>
    #   @return [Boolean]
    # @!attribute enable_execute_command
    #   <p>Whether or not to enable the execute command functionality for the containers in this
    #            task. If true, this enables execute command functionality on all containers in the
    #            task.</p>
    #   @return [Boolean]
    # @!attribute placement_constraints
    #   <p>An array of placement constraint objects to use for the task. You can specify up to 10
    #            constraints per task (including constraints in the task definition and those specified at
    #            runtime).</p>
    #   @return [Array<Types::PlacementConstraint>]
    # @!attribute placement_strategy
    #   <p>The placement strategy objects to use for the task. You can specify a maximum of five
    #            strategy rules per task. </p>
    #   @return [Array<Types::PlacementStrategy>]
    # @!attribute propagate_tags
    #   <p>Specifies whether to propagate the tags from the task definition to the task. If no
    #            value is specified, the tags are not propagated. Tags can only be propagated to the task
    #            during task creation. To add tags to a task after task creation, use the
    #               <code>TagResource</code> API action. </p>
    #   @return [String]
    # @!attribute reference_id
    #   <p>The reference ID to use for the task.</p>
    #   @return [String]
    # @!attribute overrides
    #   <p>The overrides that are associated with a task.</p>
    #   @return [Types::EcsTaskOverride]
    # @!attribute tags
    #   <p>The metadata that you apply to the task to help you categorize and organize them. Each
    #            tag consists of a key and an optional value, both of which you define. To learn more, see
    #               <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_RunTask.html#ECS-RunTask-request-tags">RunTask</a> in the Amazon ECS API Reference.</p>
    #   @return [Array<Types::Tag>]
    class PipeTargetEcsTaskParameters < Struct.new(
      nil,
      :task_definition_arn,
      :task_count,
      :launch_type,
      :network_configuration,
      :platform_version,
      :group,
      :capacity_provider_strategy,
      :enable_ecs_managed_tags,
      :enable_execute_command,
      :placement_constraints,
      :placement_strategy,
      :propagate_tags,
      :reference_id,
      :overrides,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enable_ecs_managed_tags] = false unless options.key?(:enable_ecs_managed_tags)
        options[:enable_execute_command] = false unless options.key?(:enable_execute_command)
        super
      end
    end

    # <p>The parameters for using an EventBridge event bus as a target.</p>
    # @!attribute endpoint_id
    #   <p>The URL subdomain of the endpoint. For example, if the URL for Endpoint is
    #            https://abcde.veo.endpoints.event.amazonaws.com, then the EndpointId is
    #               <code>abcde.veo</code>.</p>
    #   @return [String]
    # @!attribute detail_type
    #   <p>A free-form string, with a maximum of 128 characters, used to decide what fields to
    #            expect in the event detail.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The source of the event.</p>
    #   @return [String]
    # @!attribute resources
    #   <p>Amazon Web Services resources, identified by Amazon Resource Name (ARN), which the event
    #            primarily concerns. Any number, including zero, may be present.</p>
    #   @return [Array<String>]
    # @!attribute time
    #   <p>The time stamp of the event, per <a href="https://www.rfc-editor.org/rfc/rfc3339.txt">RFC3339</a>. If no time stamp is provided, the time stamp of the <a href="https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_PutEvents.html">PutEvents</a> call is used.</p>
    #   @return [String]
    class PipeTargetEventBridgeEventBusParameters < Struct.new(
      nil,
      :endpoint_id,
      :detail_type,
      :source,
      :resources,
      :time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>These are custom parameter to be used when the target is an API Gateway REST APIs or
    #       EventBridge ApiDestinations.</p>
    # @!attribute path_parameter_values
    #   <p>The path parameter values to be used to populate API Gateway REST API or EventBridge ApiDestination path wildcards ("*").</p>
    #   @return [Array<String>]
    # @!attribute header_parameters
    #   <p>The headers that need to be sent as part of request invoking the API Gateway REST
    #            API or EventBridge ApiDestination.</p>
    #   @return [Hash<String, String>]
    # @!attribute query_string_parameters
    #   <p>The query string keys/values that need to be sent as part of request invoking the
    #               API Gateway REST API or EventBridge ApiDestination.</p>
    #   @return [Hash<String, String>]
    class PipeTargetHttpParameters < Struct.new(
      nil,
      :path_parameter_values,
      :header_parameters,
      :query_string_parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The parameters for using a Kinesis stream as a target.</p>
    # @!attribute partition_key
    #   <p>Determines which shard in the stream the data record is assigned to. Partition keys are
    #            Unicode strings with a maximum length limit of 256 characters for each key. Amazon Kinesis Data Streams uses the partition key as input to a hash function that maps the
    #            partition key and associated data to a specific shard. Specifically, an MD5 hash function
    #            is used to map partition keys to 128-bit integer values and to map associated data records
    #            to shards. As a result of this hashing mechanism, all data records with the same partition
    #            key map to the same shard within the stream.</p>
    #   @return [String]
    class PipeTargetKinesisStreamParameters < Struct.new(
      nil,
      :partition_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The parameters for using a Lambda function as a target.</p>
    # @!attribute invocation_type
    #   <p>Specify whether to invoke the function synchronously or asynchronously.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>REQUEST_RESPONSE</code> (default) - Invoke synchronously. This corresponds
    #                  to the <code>RequestResponse</code> option in the <code>InvocationType</code>
    #                  parameter for the Lambda
    #                  <a href="https://docs.aws.amazon.com/lambda/latest/dg/API_Invoke.html#API_Invoke_RequestSyntax">Invoke</a>
    #                  API.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FIRE_AND_FORGET</code> - Invoke asynchronously. This corresponds to the
    #                     <code>Event</code> option in the <code>InvocationType</code> parameter for the
    #                     Lambda
    #                  <a href="https://docs.aws.amazon.com/lambda/latest/dg/API_Invoke.html#API_Invoke_RequestSyntax">Invoke</a>
    #                  API.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes.html#pipes-invocation">Invocation
    #               types</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    #   @return [String]
    class PipeTargetLambdaFunctionParameters < Struct.new(
      nil,
      :invocation_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The parameters required to set up a target for your pipe.</p>
    #          <p>For more information about pipe target parameters, including how to use dynamic path parameters, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes-event-target.html">Target parameters</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    # @!attribute input_template
    #   <p>Valid JSON text passed to the target. In this case, nothing from the event itself is
    #            passed to the target. For more information, see <a href="http://www.rfc-editor.org/rfc/rfc7159.txt">The JavaScript Object Notation (JSON)
    #               Data Interchange Format</a>.</p>
    #            <p>To remove an input template, specify an empty string.</p>
    #   @return [String]
    # @!attribute lambda_function_parameters
    #   <p>The parameters for using a Lambda function as a target.</p>
    #   @return [Types::PipeTargetLambdaFunctionParameters]
    # @!attribute step_function_state_machine_parameters
    #   <p>The parameters for using a Step Functions state machine as a target.</p>
    #   @return [Types::PipeTargetStateMachineParameters]
    # @!attribute kinesis_stream_parameters
    #   <p>The parameters for using a Kinesis stream as a target.</p>
    #   @return [Types::PipeTargetKinesisStreamParameters]
    # @!attribute ecs_task_parameters
    #   <p>The parameters for using an Amazon ECS task as a target.</p>
    #   @return [Types::PipeTargetEcsTaskParameters]
    # @!attribute batch_job_parameters
    #   <p>The parameters for using an Batch job as a target.</p>
    #   @return [Types::PipeTargetBatchJobParameters]
    # @!attribute sqs_queue_parameters
    #   <p>The parameters for using a Amazon SQS stream as a target.</p>
    #   @return [Types::PipeTargetSqsQueueParameters]
    # @!attribute http_parameters
    #   <p>These are custom parameter to be used when the target is an API Gateway REST APIs or
    #         EventBridge ApiDestinations.</p>
    #   @return [Types::PipeTargetHttpParameters]
    # @!attribute redshift_data_parameters
    #   <p>These are custom parameters to be used when the target is a Amazon Redshift cluster to invoke the
    #         Amazon Redshift Data API BatchExecuteStatement.</p>
    #   @return [Types::PipeTargetRedshiftDataParameters]
    # @!attribute sage_maker_pipeline_parameters
    #   <p>The parameters for using a SageMaker pipeline as a target.</p>
    #   @return [Types::PipeTargetSageMakerPipelineParameters]
    # @!attribute event_bridge_event_bus_parameters
    #   <p>The parameters for using an EventBridge event bus as a target.</p>
    #   @return [Types::PipeTargetEventBridgeEventBusParameters]
    # @!attribute cloud_watch_logs_parameters
    #   <p>The parameters for using an CloudWatch Logs log stream as a target.</p>
    #   @return [Types::PipeTargetCloudWatchLogsParameters]
    # @!attribute timestream_parameters
    #   <p>The parameters for using a Timestream for LiveAnalytics table as a
    #            target.</p>
    #   @return [Types::PipeTargetTimestreamParameters]
    class PipeTargetParameters < Struct.new(
      nil,
      :input_template,
      :lambda_function_parameters,
      :step_function_state_machine_parameters,
      :kinesis_stream_parameters,
      :ecs_task_parameters,
      :batch_job_parameters,
      :sqs_queue_parameters,
      :http_parameters,
      :redshift_data_parameters,
      :sage_maker_pipeline_parameters,
      :event_bridge_event_bus_parameters,
      :cloud_watch_logs_parameters,
      :timestream_parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>These are custom parameters to be used when the target is a Amazon Redshift cluster to invoke the
    #       Amazon Redshift Data API BatchExecuteStatement.</p>
    # @!attribute secret_manager_arn
    #   <p>The name or ARN of the secret that enables access to the database. Required when
    #            authenticating using Secrets Manager.</p>
    #   @return [String]
    # @!attribute database
    #   <p>The name of the database. Required when authenticating using temporary
    #            credentials.</p>
    #   @return [String]
    # @!attribute db_user
    #   <p>The database user name. Required when authenticating using temporary credentials.</p>
    #   @return [String]
    # @!attribute statement_name
    #   <p>The name of the SQL statement. You can name the SQL statement when you create it to
    #            identify the query.</p>
    #   @return [String]
    # @!attribute with_event
    #   <p>Indicates whether to send an event back to EventBridge after the SQL statement
    #            runs.</p>
    #   @return [Boolean]
    # @!attribute sqls
    #   <p>The SQL statement text to run.</p>
    #   @return [Array<String>]
    class PipeTargetRedshiftDataParameters < Struct.new(
      nil,
      :secret_manager_arn,
      :database,
      :db_user,
      :statement_name,
      :with_event,
      :sqls,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:with_event] = false unless options.key?(:with_event)
        super
      end
    end

    # <p>The parameters for using a SageMaker pipeline as a target.</p>
    # @!attribute pipeline_parameter_list
    #   <p>List of Parameter names and values for SageMaker Model Building Pipeline
    #            execution.</p>
    #   @return [Array<Types::SageMakerPipelineParameter>]
    class PipeTargetSageMakerPipelineParameters < Struct.new(
      nil,
      :pipeline_parameter_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The parameters for using a Amazon SQS stream as a target.</p>
    # @!attribute message_group_id
    #   <p>The FIFO message group ID to use as the target.</p>
    #   @return [String]
    # @!attribute message_deduplication_id
    #   <p>This parameter applies only to FIFO (first-in-first-out) queues.</p>
    #            <p>The token used for deduplication of sent messages.</p>
    #   @return [String]
    class PipeTargetSqsQueueParameters < Struct.new(
      nil,
      :message_group_id,
      :message_deduplication_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The parameters for using a Step Functions state machine as a target.</p>
    # @!attribute invocation_type
    #   <p>Specify whether to invoke the Step Functions state machine synchronously or
    #            asynchronously.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>REQUEST_RESPONSE</code> (default) - Invoke synchronously. For more
    #                  information, see <a href="https://docs.aws.amazon.com/step-functions/latest/apireference/API_StartSyncExecution.html">StartSyncExecution</a> in the <i>Step Functions API
    #                     Reference</i>.</p>
    #                  <note>
    #                     <p>
    #                        <code>REQUEST_RESPONSE</code> is not supported for <code>STANDARD</code> state
    #                     machine workflows.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FIRE_AND_FORGET</code> - Invoke asynchronously. For more information, see
    #                     <a href="https://docs.aws.amazon.com/step-functions/latest/apireference/API_StartExecution.html">StartExecution</a> in the <i>Step Functions API
    #                     Reference</i>.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes.html#pipes-invocation">Invocation
    #               types</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    #   @return [String]
    class PipeTargetStateMachineParameters < Struct.new(
      nil,
      :invocation_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The parameters for using a Timestream for LiveAnalytics table as a
    #          target.</p>
    # @!attribute time_value
    #   <p>Dynamic path to the source data field that represents the time value for your data.</p>
    #   @return [String]
    # @!attribute epoch_time_unit
    #   <p>The granularity of the time units used. Default is <code>MILLISECONDS</code>.</p>
    #            <p>Required if <code>TimeFieldType</code> is specified as <code>EPOCH</code>.</p>
    #   @return [String]
    # @!attribute time_field_type
    #   <p>The type of time value used.</p>
    #            <p>The default is <code>EPOCH</code>.</p>
    #   @return [String]
    # @!attribute timestamp_format
    #   <p>How to format the timestamps. For example,
    #            <code>yyyy-MM-dd'T'HH:mm:ss'Z'</code>.</p>
    #            <p>Required if <code>TimeFieldType</code> is specified as
    #            <code>TIMESTAMP_FORMAT</code>.</p>
    #   @return [String]
    # @!attribute version_value
    #   <p>64 bit version value or source data field that represents the version value for your data.</p>
    #            <p>Write requests with a higher version number will update the existing measure values of the record and version. 
    #            In cases where the measure value is the same, the version will still be updated. </p>
    #            <p>Default value is 1. </p>
    #            <p>Timestream for LiveAnalytics does not support updating partial measure values in a record.</p>
    #            <p>Write requests for duplicate data with a
    #            higher version number will update the existing measure value and version. In cases where
    #            the measure value is the same, <code>Version</code> will still be updated. Default value is
    #               <code>1</code>.</p>
    #            <note>
    #               <p>
    #                  <code>Version</code> must be <code>1</code> or greater, or you will receive a
    #                  <code>ValidationException</code> error.</p>
    #            </note>
    #   @return [String]
    # @!attribute dimension_mappings
    #   <p>Map source data to dimensions in the target Timestream for LiveAnalytics
    #            table.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/concepts.html">Amazon Timestream for LiveAnalytics concepts</a>
    #            </p>
    #   @return [Array<Types::DimensionMapping>]
    # @!attribute single_measure_mappings
    #   <p>Mappings of single source data fields to individual records in the specified Timestream for LiveAnalytics table.</p>
    #   @return [Array<Types::SingleMeasureMapping>]
    # @!attribute multi_measure_mappings
    #   <p>Maps multiple measures from the source event to the same record in the specified Timestream for LiveAnalytics table.</p>
    #   @return [Array<Types::MultiMeasureMapping>]
    class PipeTargetTimestreamParameters < Struct.new(
      nil,
      :time_value,
      :epoch_time_unit,
      :time_field_type,
      :timestamp_format,
      :version_value,
      :dimension_mappings,
      :single_measure_mappings,
      :multi_measure_mappings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing a constraint on task placement. To learn more, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html">Task Placement
    #             Constraints</a> in the Amazon Elastic Container Service Developer Guide.</p>
    # @!attribute type
    #   <p>The type of constraint. Use distinctInstance to ensure that each task in a particular
    #            group is running on a different container instance. Use memberOf to restrict the selection
    #            to a group of valid candidates. </p>
    #   @return [String]
    # @!attribute expression
    #   <p>A cluster query language expression to apply to the constraint. You cannot specify an
    #            expression if the constraint type is <code>distinctInstance</code>. To learn more, see
    #               <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html">Cluster Query
    #               Language</a> in the Amazon Elastic Container Service Developer Guide. </p>
    #   @return [String]
    class PlacementConstraint < Struct.new(
      nil,
      :type,
      :expression,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The task placement strategy for a task or service. To learn more, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-strategies.html">Task Placement
    #             Strategies</a> in the Amazon Elastic Container Service Service Developer Guide.</p>
    # @!attribute type
    #   <p>The type of placement strategy. The random placement strategy randomly places tasks on
    #            available candidates. The spread placement strategy spreads placement across available
    #            candidates evenly based on the field parameter. The binpack strategy places tasks on
    #            available candidates that have the least available amount of the resource that is specified
    #            with the field parameter. For example, if you binpack on memory, a task is placed on the
    #            instance with the least amount of remaining memory (but still enough to run the task).
    #         </p>
    #   @return [String]
    # @!attribute field
    #   <p>The field to apply the placement strategy against. For the spread placement strategy,
    #            valid values are instanceId (or host, which has the same effect), or any platform or custom
    #            attribute that is applied to a container instance, such as attribute:ecs.availability-zone.
    #            For the binpack placement strategy, valid values are cpu and memory. For the random
    #            placement strategy, this field is not used. </p>
    #   @return [String]
    class PlacementStrategy < Struct.new(
      nil,
      :type,
      :field,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon S3 logging configuration settings for the pipe.</p>
    # @!attribute bucket_name
    #   <p>The name of the Amazon S3 bucket to which EventBridge delivers the log
    #            records for the pipe.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>The prefix text with which to begin Amazon S3 log object names.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-prefixes.html">Organizing objects using
    #               prefixes</a> in the <i>Amazon Simple Storage Service User Guide</i>.</p>
    #   @return [String]
    # @!attribute bucket_owner
    #   <p>The Amazon Web Services account that owns the Amazon S3 bucket to which EventBridge delivers the log records for the pipe.</p>
    #   @return [String]
    # @!attribute output_format
    #   <p>The format EventBridge uses for the log records.</p>
    #            <p>EventBridge currently only supports <code>json</code> formatting.</p>
    #   @return [String]
    class S3LogDestination < Struct.new(
      nil,
      :bucket_name,
      :prefix,
      :bucket_owner,
      :output_format,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon S3 logging configuration settings for the pipe.</p>
    # @!attribute bucket_name
    #   <p>Specifies the name of the Amazon S3 bucket to which EventBridge delivers
    #            the log records for the pipe.</p>
    #   @return [String]
    # @!attribute bucket_owner
    #   <p>Specifies the Amazon Web Services account that owns the Amazon S3 bucket to which
    #               EventBridge delivers the log records for the pipe.</p>
    #   @return [String]
    # @!attribute output_format
    #   <p>How EventBridge should format the log records.</p>
    #            <p>EventBridge currently only supports <code>json</code> formatting.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>Specifies any prefix text with which to begin Amazon S3 log object names.</p>
    #            <p>You can use prefixes to organize the data that you store in Amazon S3 buckets. A
    #            prefix is a string of characters at the beginning of the object key name. A prefix can be
    #            any length, subject to the maximum length of the object key name (1,024 bytes). For more
    #            information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-prefixes.html">Organizing objects using
    #               prefixes</a> in the <i>Amazon Simple Storage Service User Guide</i>.</p>
    #   @return [String]
    class S3LogDestinationParameters < Struct.new(
      nil,
      :bucket_name,
      :bucket_owner,
      :output_format,
      :prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Name/Value pair of a parameter to start execution of a SageMaker Model Building
    #          Pipeline.</p>
    # @!attribute name
    #   <p>Name of parameter to start execution of a SageMaker Model Building
    #            Pipeline.</p>
    #   @return [String]
    # @!attribute value
    #   <p>Value of parameter to start execution of a SageMaker Model Building
    #            Pipeline.</p>
    #   @return [String]
    class SageMakerPipelineParameter < Struct.new(
      nil,
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Secrets Manager secret that stores your stream credentials.</p>
    # @!attribute basic_auth
    #   <p>The ARN of the Secrets Manager secret.</p>
    #   @return [String]
    # @!attribute sasl_scram512_auth
    #   <p>The ARN of the Secrets Manager secret.</p>
    #   @return [String]
    # @!attribute sasl_scram256_auth
    #   <p>The ARN of the Secrets Manager secret.</p>
    #   @return [String]
    # @!attribute client_certificate_tls_auth
    #   <p>The ARN of the Secrets Manager secret.</p>
    #   @return [String]
    class SelfManagedKafkaAccessConfigurationCredentials < Struct.new(
      :basic_auth,
      :sasl_scram512_auth,
      :sasl_scram256_auth,
      :client_certificate_tls_auth,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class BasicAuth < SelfManagedKafkaAccessConfigurationCredentials; end
      class SaslScram512Auth < SelfManagedKafkaAccessConfigurationCredentials; end
      class SaslScram256Auth < SelfManagedKafkaAccessConfigurationCredentials; end
      class ClientCertificateTlsAuth < SelfManagedKafkaAccessConfigurationCredentials; end
      class Unknown < SelfManagedKafkaAccessConfigurationCredentials; end
    end

    # <p>This structure specifies the VPC subnets and security groups for the stream, and whether
    #          a public IP address is to be used.</p>
    # @!attribute subnets
    #   <p>Specifies the subnets associated with the stream. These subnets must all be in the same
    #            VPC. You can specify as many as 16 subnets.</p>
    #   @return [Array<String>]
    # @!attribute security_group
    #   <p>Specifies the security groups associated with the stream. These security groups must all
    #            be in the same VPC. You can specify as many as five security groups.</p>
    #   @return [Array<String>]
    class SelfManagedKafkaAccessConfigurationVpc < Struct.new(
      nil,
      :subnets,
      :security_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A quota has been exceeded.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource that caused the exception.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource that caused the exception.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The identifier of the service that caused the exception.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The identifier of the quota that caused the exception.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Maps a single source data field to a single record in the specified Timestream
    #          for LiveAnalytics table.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/concepts.html">Amazon Timestream for LiveAnalytics concepts</a>
    #          </p>
    # @!attribute measure_value
    #   <p>Dynamic path of the source field to map to the measure in the record.</p>
    #   @return [String]
    # @!attribute measure_value_type
    #   <p>Data type of the source field.</p>
    #   @return [String]
    # @!attribute measure_name
    #   <p>Target measure name for the measurement attribute in the Timestream table.</p>
    #   @return [String]
    class SingleMeasureMapping < Struct.new(
      nil,
      :measure_value,
      :measure_value_type,
      :measure_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the pipe.</p>
    #   @return [String]
    class StartPipeRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the pipe.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the pipe.</p>
    #   @return [String]
    # @!attribute desired_state
    #   <p>The state the pipe should be in.</p>
    #   @return [String]
    # @!attribute current_state
    #   <p>The state the pipe is in.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time the pipe was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>When the pipe was last updated, in <a href="https://www.w3.org/TR/NOTE-datetime">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD).</p>
    #   @return [Time]
    class StartPipeResponse < Struct.new(
      nil,
      :arn,
      :name,
      :desired_state,
      :current_state,
      :creation_time,
      :last_modified_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the pipe.</p>
    #   @return [String]
    class StopPipeRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the pipe.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the pipe.</p>
    #   @return [String]
    # @!attribute desired_state
    #   <p>The state the pipe should be in.</p>
    #   @return [String]
    # @!attribute current_state
    #   <p>The state the pipe is in.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time the pipe was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>When the pipe was last updated, in <a href="https://www.w3.org/TR/NOTE-datetime">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD).</p>
    #   @return [Time]
    class StopPipeResponse < Struct.new(
      nil,
      :arn,
      :name,
      :desired_state,
      :current_state,
      :creation_time,
      :last_modified_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A key-value pair associated with an Amazon Web Services resource. In EventBridge,
    #          rules and event buses support tagging.</p>
    # @!attribute key
    #   <p>A string you can use to assign a value. The combination of tag keys and values can help
    #            you organize and categorize your resources.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value for the specified tag key.</p>
    #   @return [String]
    class Tag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the pipe.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of key-value pairs associated with the pipe.</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An action was throttled.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute service_code
    #   <p>The identifier of the service that caused the exception.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The identifier of the quota that caused the exception.</p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds to wait before retrying the action that caused the
    #            exception.</p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the pipe.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The list of tag keys to remove from the pipe.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the pipe.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the pipe.</p>
    #   @return [String]
    # @!attribute desired_state
    #   <p>The state the pipe should be in.</p>
    #   @return [String]
    # @!attribute source_parameters
    #   <p>The parameters required to set up a source for your pipe.</p>
    #   @return [Types::UpdatePipeSourceParameters]
    # @!attribute enrichment
    #   <p>The ARN of the enrichment resource.</p>
    #   @return [String]
    # @!attribute enrichment_parameters
    #   <p>The parameters required to set up enrichment on your pipe.</p>
    #   @return [Types::PipeEnrichmentParameters]
    # @!attribute target
    #   <p>The ARN of the target resource.</p>
    #   @return [String]
    # @!attribute target_parameters
    #   <p>The parameters required to set up a target for your pipe.</p>
    #            <p>For more information about pipe target parameters, including how to use dynamic path parameters, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes-event-target.html">Target parameters</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    #   @return [Types::PipeTargetParameters]
    # @!attribute role_arn
    #   <p>The ARN of the role that allows the pipe to send data to the target.</p>
    #   @return [String]
    # @!attribute log_configuration
    #   <p>The logging configuration settings for the pipe.</p>
    #   @return [Types::PipeLogConfigurationParameters]
    # @!attribute kms_key_identifier
    #   <p>The identifier of the KMS
    #            customer managed key for EventBridge to use, if you choose to use a customer managed key to encrypt pipe data. The identifier can be the key 
    #            Amazon Resource Name (ARN), KeyId, key alias, or key alias ARN.</p>
    #            <p>To update a pipe that is using the default Amazon Web Services owned key to use a customer managed key instead, or update a pipe that is using a customer managed key to use a
    #            different customer managed key, specify a customer managed key identifier.</p>
    #            <p>To update a pipe that is using a customer managed key to use the default Amazon Web Services owned key, specify an empty string.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/getting-started.html">Managing keys</a> in the <i>Key Management Service
    #               Developer Guide</i>. </p>
    #   @return [String]
    class UpdatePipeRequest < Struct.new(
      nil,
      :name,
      :description,
      :desired_state,
      :source_parameters,
      :enrichment,
      :enrichment_parameters,
      :target,
      :target_parameters,
      :role_arn,
      :log_configuration,
      :kms_key_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the pipe.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the pipe.</p>
    #   @return [String]
    # @!attribute desired_state
    #   <p>The state the pipe should be in.</p>
    #   @return [String]
    # @!attribute current_state
    #   <p>The state the pipe is in.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time the pipe was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>When the pipe was last updated, in <a href="https://www.w3.org/TR/NOTE-datetime">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD).</p>
    #   @return [Time]
    class UpdatePipeResponse < Struct.new(
      nil,
      :arn,
      :name,
      :desired_state,
      :current_state,
      :creation_time,
      :last_modified_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The parameters for using an Active MQ broker as a source.</p>
    # @!attribute credentials
    #   <p>The credentials needed to access the resource.</p>
    #   @return [Types::MQBrokerAccessCredentials]
    # @!attribute batch_size
    #   <p>The maximum number of records to include in each batch.</p>
    #   @return [Integer]
    # @!attribute maximum_batching_window_in_seconds
    #   <p>The maximum length of a time to wait for events.</p>
    #   @return [Integer]
    class UpdatePipeSourceActiveMQBrokerParameters < Struct.new(
      nil,
      :credentials,
      :batch_size,
      :maximum_batching_window_in_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The parameters for using a DynamoDB stream as a source.</p>
    # @!attribute batch_size
    #   <p>The maximum number of records to include in each batch.</p>
    #   @return [Integer]
    # @!attribute dead_letter_config
    #   <p>Define the target queue to send dead-letter queue events to.</p>
    #   @return [Types::DeadLetterConfig]
    # @!attribute on_partial_batch_item_failure
    #   <p>Define how to handle item process failures. <code>AUTOMATIC_BISECT</code> halves each batch and retry each half 
    #   until all the records are processed or there is one failed message left in the batch.</p>
    #   @return [String]
    # @!attribute maximum_batching_window_in_seconds
    #   <p>The maximum length of a time to wait for events.</p>
    #   @return [Integer]
    # @!attribute maximum_record_age_in_seconds
    #   <p>Discard records older than the specified age. The default value is -1, which sets the maximum age to infinite. 
    #   When the value is set to infinite, EventBridge never discards old records. </p>
    #   @return [Integer]
    # @!attribute maximum_retry_attempts
    #   <p>Discard records after the specified number of retries. The default value is -1, which sets the maximum number of 
    #   retries to infinite. When MaximumRetryAttempts is infinite, EventBridge retries failed records until the record expires in the event source.</p>
    #   @return [Integer]
    # @!attribute parallelization_factor
    #   <p>The number of batches to process concurrently from each shard. The default value is 1.</p>
    #   @return [Integer]
    class UpdatePipeSourceDynamoDBStreamParameters < Struct.new(
      nil,
      :batch_size,
      :dead_letter_config,
      :on_partial_batch_item_failure,
      :maximum_batching_window_in_seconds,
      :maximum_record_age_in_seconds,
      :maximum_retry_attempts,
      :parallelization_factor,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The parameters for using a Kinesis stream as a source.</p>
    # @!attribute batch_size
    #   <p>The maximum number of records to include in each batch.</p>
    #   @return [Integer]
    # @!attribute dead_letter_config
    #   <p>Define the target queue to send dead-letter queue events to.</p>
    #   @return [Types::DeadLetterConfig]
    # @!attribute on_partial_batch_item_failure
    #   <p>Define how to handle item process failures. <code>AUTOMATIC_BISECT</code> halves each batch and retry each half 
    #   until all the records are processed or there is one failed message left in the batch.</p>
    #   @return [String]
    # @!attribute maximum_batching_window_in_seconds
    #   <p>The maximum length of a time to wait for events.</p>
    #   @return [Integer]
    # @!attribute maximum_record_age_in_seconds
    #   <p>Discard records older than the specified age. The default value is -1, which sets the maximum age to infinite. 
    #   When the value is set to infinite, EventBridge never discards old records. </p>
    #   @return [Integer]
    # @!attribute maximum_retry_attempts
    #   <p>Discard records after the specified number of retries. The default value is -1, which sets the maximum number of 
    #   retries to infinite. When MaximumRetryAttempts is infinite, EventBridge retries failed records until the record expires in the event source.</p>
    #   @return [Integer]
    # @!attribute parallelization_factor
    #   <p>The number of batches to process concurrently from each shard. The default value is 1.</p>
    #   @return [Integer]
    class UpdatePipeSourceKinesisStreamParameters < Struct.new(
      nil,
      :batch_size,
      :dead_letter_config,
      :on_partial_batch_item_failure,
      :maximum_batching_window_in_seconds,
      :maximum_record_age_in_seconds,
      :maximum_retry_attempts,
      :parallelization_factor,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The parameters for using an MSK stream as a source.</p>
    # @!attribute batch_size
    #   <p>The maximum number of records to include in each batch.</p>
    #   @return [Integer]
    # @!attribute credentials
    #   <p>The credentials needed to access the resource.</p>
    #   @return [Types::MSKAccessCredentials]
    # @!attribute maximum_batching_window_in_seconds
    #   <p>The maximum length of a time to wait for events.</p>
    #   @return [Integer]
    class UpdatePipeSourceManagedStreamingKafkaParameters < Struct.new(
      nil,
      :batch_size,
      :credentials,
      :maximum_batching_window_in_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The parameters required to set up a source for your pipe.</p>
    # @!attribute filter_criteria
    #   <p>The collection of event patterns used to filter events.</p>
    #            <p>To remove a filter, specify a <code>FilterCriteria</code> object with an empty array of <code>Filter</code> objects.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html">Events and Event
    #            Patterns</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    #   @return [Types::FilterCriteria]
    # @!attribute kinesis_stream_parameters
    #   <p>The parameters for using a Kinesis stream as a source.</p>
    #   @return [Types::UpdatePipeSourceKinesisStreamParameters]
    # @!attribute dynamo_db_stream_parameters
    #   <p>The parameters for using a DynamoDB stream as a source.</p>
    #   @return [Types::UpdatePipeSourceDynamoDBStreamParameters]
    # @!attribute sqs_queue_parameters
    #   <p>The parameters for using a Amazon SQS stream as a source.</p>
    #   @return [Types::UpdatePipeSourceSqsQueueParameters]
    # @!attribute active_mq_broker_parameters
    #   <p>The parameters for using an Active MQ broker as a source.</p>
    #   @return [Types::UpdatePipeSourceActiveMQBrokerParameters]
    # @!attribute rabbit_mq_broker_parameters
    #   <p>The parameters for using a Rabbit MQ broker as a source.</p>
    #   @return [Types::UpdatePipeSourceRabbitMQBrokerParameters]
    # @!attribute managed_streaming_kafka_parameters
    #   <p>The parameters for using an MSK stream as a source.</p>
    #   @return [Types::UpdatePipeSourceManagedStreamingKafkaParameters]
    # @!attribute self_managed_kafka_parameters
    #   <p>The parameters for using a self-managed Apache Kafka stream as a source.</p>
    #            <p>A <i>self managed</i> cluster refers to any Apache Kafka cluster not hosted by Amazon Web Services.
    #       This includes both clusters you manage yourself, as well as those hosted by a third-party
    #       provider, such as <a href="https://www.confluent.io/">Confluent
    #         Cloud</a>, <a href="https://www.cloudkarafka.com/">CloudKarafka</a>, or <a href="https://redpanda.com/">Redpanda</a>. For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes-kafka.html">Apache Kafka streams as a source</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    #   @return [Types::UpdatePipeSourceSelfManagedKafkaParameters]
    class UpdatePipeSourceParameters < Struct.new(
      nil,
      :filter_criteria,
      :kinesis_stream_parameters,
      :dynamo_db_stream_parameters,
      :sqs_queue_parameters,
      :active_mq_broker_parameters,
      :rabbit_mq_broker_parameters,
      :managed_streaming_kafka_parameters,
      :self_managed_kafka_parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The parameters for using a Rabbit MQ broker as a source.</p>
    # @!attribute credentials
    #   <p>The credentials needed to access the resource.</p>
    #   @return [Types::MQBrokerAccessCredentials]
    # @!attribute batch_size
    #   <p>The maximum number of records to include in each batch.</p>
    #   @return [Integer]
    # @!attribute maximum_batching_window_in_seconds
    #   <p>The maximum length of a time to wait for events.</p>
    #   @return [Integer]
    class UpdatePipeSourceRabbitMQBrokerParameters < Struct.new(
      nil,
      :credentials,
      :batch_size,
      :maximum_batching_window_in_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The parameters for using a self-managed Apache Kafka stream as a source.</p>
    #          <p>A <i>self managed</i> cluster refers to any Apache Kafka cluster not hosted by Amazon Web Services.
    #     This includes both clusters you manage yourself, as well as those hosted by a third-party
    #     provider, such as <a href="https://www.confluent.io/">Confluent
    #       Cloud</a>, <a href="https://www.cloudkarafka.com/">CloudKarafka</a>, or <a href="https://redpanda.com/">Redpanda</a>. For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes-kafka.html">Apache Kafka streams as a source</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    # @!attribute batch_size
    #   <p>The maximum number of records to include in each batch.</p>
    #   @return [Integer]
    # @!attribute maximum_batching_window_in_seconds
    #   <p>The maximum length of a time to wait for events.</p>
    #   @return [Integer]
    # @!attribute credentials
    #   <p>The credentials needed to access the resource.</p>
    #   @return [Types::SelfManagedKafkaAccessConfigurationCredentials]
    # @!attribute server_root_ca_certificate
    #   <p>The ARN of the Secrets Manager secret used for certification.</p>
    #   @return [String]
    # @!attribute vpc
    #   <p>This structure specifies the VPC subnets and security groups for the stream, and whether a public IP address is to be used.</p>
    #   @return [Types::SelfManagedKafkaAccessConfigurationVpc]
    class UpdatePipeSourceSelfManagedKafkaParameters < Struct.new(
      nil,
      :batch_size,
      :maximum_batching_window_in_seconds,
      :credentials,
      :server_root_ca_certificate,
      :vpc,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The parameters for using a Amazon SQS stream as a source.</p>
    # @!attribute batch_size
    #   <p>The maximum number of records to include in each batch.</p>
    #   @return [Integer]
    # @!attribute maximum_batching_window_in_seconds
    #   <p>The maximum length of a time to wait for events.</p>
    #   @return [Integer]
    class UpdatePipeSourceSqsQueueParameters < Struct.new(
      nil,
      :batch_size,
      :maximum_batching_window_in_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates that an error has occurred while performing a validate operation.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute field_list
    #   <p>The list of fields for which validation failed and the corresponding failure
    #            messages.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      nil,
      :message,
      :field_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates that an error has occurred while performing a validate operation.</p>
    # @!attribute name
    #   <p>The name of the exception.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message of the exception.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
