# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Braket
  module Types

    # You do not have sufficient permissions to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains metadata about the quantum task action, including the action
    # type and program statistics.
    #
    # @!attribute [rw] action_type
    #   The type of action associated with the quantum task.
    #   @return [String]
    #
    # @!attribute [rw] program_count
    #   The number of programs in a program set. This is only available for
    #   a Program Set.
    #   @return [Integer]
    #
    # @!attribute [rw] executable_count
    #   The number of executables in a program set. This is only available
    #   for a Program Set.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/ActionMetadata AWS API Documentation
    #
    class ActionMetadata < Struct.new(
      :action_type,
      :program_count,
      :executable_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the Amazon Braket hybrid job to be created. Specifies the
    # container image the job uses and the paths to the Python scripts used
    # for entry and training.
    #
    # @!attribute [rw] script_mode_config
    #   Configures the paths to the Python scripts used for entry and
    #   training.
    #   @return [Types::ScriptModeConfig]
    #
    # @!attribute [rw] container_image
    #   The container image used to create an Amazon Braket hybrid job.
    #   @return [Types::ContainerImage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/AlgorithmSpecification AWS API Documentation
    #
    class AlgorithmSpecification < Struct.new(
      :script_mode_config,
      :container_image)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Braket resource and the association type.
    #
    # @!attribute [rw] arn
    #   The Amazon Braket resource arn.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The association type for the specified Amazon Braket resource arn.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/Association AWS API Documentation
    #
    class Association < Struct.new(
      :arn,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_arn
    #   The ARN of the Amazon Braket hybrid job to cancel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/CancelJobRequest AWS API Documentation
    #
    class CancelJobRequest < Struct.new(
      :job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_arn
    #   The ARN of the Amazon Braket job.
    #   @return [String]
    #
    # @!attribute [rw] cancellation_status
    #   The status of the hybrid job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/CancelJobResponse AWS API Documentation
    #
    class CancelJobResponse < Struct.new(
      :job_arn,
      :cancellation_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] quantum_task_arn
    #   The ARN of the quantum task to cancel.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The client token associated with the cancellation request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/CancelQuantumTaskRequest AWS API Documentation
    #
    class CancelQuantumTaskRequest < Struct.new(
      :quantum_task_arn,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] quantum_task_arn
    #   The ARN of the quantum task.
    #   @return [String]
    #
    # @!attribute [rw] cancellation_status
    #   The status of the quantum task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/CancelQuantumTaskResponse AWS API Documentation
    #
    class CancelQuantumTaskResponse < Struct.new(
      :quantum_task_arn,
      :cancellation_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error occurred due to a conflict.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The container image used to create an Amazon Braket hybrid job.
    #
    # @!attribute [rw] uri
    #   The URI locating the container image.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/ContainerImage AWS API Documentation
    #
    class ContainerImage < Struct.new(
      :uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   The client token associated with this request that guarantees that
    #   the request is idempotent.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] algorithm_specification
    #   Definition of the Amazon Braket job to be created. Specifies the
    #   container image the job uses and information about the Python
    #   scripts used for entry and training.
    #   @return [Types::AlgorithmSpecification]
    #
    # @!attribute [rw] input_data_config
    #   A list of parameters that specify the name and type of input data
    #   and where it is located.
    #   @return [Array<Types::InputFileConfig>]
    #
    # @!attribute [rw] output_data_config
    #   The path to the S3 location where you want to store hybrid job
    #   artifacts and the encryption key used to store them.
    #   @return [Types::JobOutputDataConfig]
    #
    # @!attribute [rw] checkpoint_config
    #   Information about the output locations for hybrid job checkpoint
    #   data.
    #   @return [Types::JobCheckpointConfig]
    #
    # @!attribute [rw] job_name
    #   The name of the Amazon Braket hybrid job.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that Amazon Braket can
    #   assume to perform tasks on behalf of a user. It can access user
    #   resources, run an Amazon Braket job container on behalf of user, and
    #   output results and hybrid job details to the users' s3 buckets.
    #   @return [String]
    #
    # @!attribute [rw] stopping_condition
    #   The user-defined criteria that specifies when a hybrid job stops
    #   running.
    #   @return [Types::JobStoppingCondition]
    #
    # @!attribute [rw] instance_config
    #   Configuration of the resource instances to use while running the
    #   hybrid job on Amazon Braket.
    #   @return [Types::InstanceConfig]
    #
    # @!attribute [rw] hyper_parameters
    #   Algorithm-specific parameters used by an Amazon Braket hybrid job
    #   that influence the quality of the training job. The values are set
    #   with a map of JSON key:value pairs, where the key is the name of the
    #   hyperparameter and the value is the value of the hyperparameter.
    #
    #   Do not include any security-sensitive information including account
    #   access IDs, secrets, or tokens in any hyperparameter fields. As part
    #   of the shared responsibility model, you are responsible for any
    #   potential exposure, unauthorized access, or compromise of your
    #   sensitive data if caused by security-sensitive information included
    #   in the request hyperparameter variable or plain text fields.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] device_config
    #   The quantum processing unit (QPU) or simulator used to create an
    #   Amazon Braket hybrid job.
    #   @return [Types::DeviceConfig]
    #
    # @!attribute [rw] tags
    #   Tags to be added to the hybrid job you're creating.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] associations
    #   The list of Amazon Braket resources associated with the hybrid job.
    #   @return [Array<Types::Association>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/CreateJobRequest AWS API Documentation
    #
    class CreateJobRequest < Struct.new(
      :client_token,
      :algorithm_specification,
      :input_data_config,
      :output_data_config,
      :checkpoint_config,
      :job_name,
      :role_arn,
      :stopping_condition,
      :instance_config,
      :hyper_parameters,
      :device_config,
      :tags,
      :associations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_arn
    #   The ARN of the Amazon Braket hybrid job created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/CreateJobResponse AWS API Documentation
    #
    class CreateJobResponse < Struct.new(
      :job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   The client token associated with the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] device_arn
    #   The ARN of the device to run the quantum task on.
    #   @return [String]
    #
    # @!attribute [rw] device_parameters
    #   The parameters for the device to run the quantum task on.
    #   @return [String]
    #
    # @!attribute [rw] shots
    #   The number of shots to use for the quantum task.
    #   @return [Integer]
    #
    # @!attribute [rw] output_s3_bucket
    #   The S3 bucket to store quantum task result files in.
    #   @return [String]
    #
    # @!attribute [rw] output_s3_key_prefix
    #   The key prefix for the location in the S3 bucket to store quantum
    #   task results in.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The action associated with the quantum task.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to be added to the quantum task you're creating.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] job_token
    #   The token for an Amazon Braket hybrid job that associates it with
    #   the quantum task.
    #   @return [String]
    #
    # @!attribute [rw] associations
    #   The list of Amazon Braket resources associated with the quantum
    #   task.
    #   @return [Array<Types::Association>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/CreateQuantumTaskRequest AWS API Documentation
    #
    class CreateQuantumTaskRequest < Struct.new(
      :client_token,
      :device_arn,
      :device_parameters,
      :shots,
      :output_s3_bucket,
      :output_s3_key_prefix,
      :action,
      :tags,
      :job_token,
      :associations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] quantum_task_arn
    #   The ARN of the quantum task created by the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/CreateQuantumTaskResponse AWS API Documentation
    #
    class CreateQuantumTaskResponse < Struct.new(
      :quantum_task_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the source of the input data used by the Amazon
    # Braket hybrid job.
    #
    # @!attribute [rw] s3_data_source
    #   Amazon S3 path of the input data used by the hybrid job.
    #   @return [Types::S3DataSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/DataSource AWS API Documentation
    #
    class DataSource < Struct.new(
      :s3_data_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configures the primary device used to create and run an Amazon Braket
    # hybrid job.
    #
    # @!attribute [rw] device
    #   The primary device ARN used to create and run an Amazon Braket
    #   hybrid job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/DeviceConfig AWS API Documentation
    #
    class DeviceConfig < Struct.new(
      :device)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified device is currently offline.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/DeviceOfflineException AWS API Documentation
    #
    class DeviceOfflineException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about quantum tasks and hybrid jobs queued on a device.
    #
    # @!attribute [rw] queue
    #   The name of the queue.
    #   @return [String]
    #
    # @!attribute [rw] queue_size
    #   The number of hybrid jobs or quantum tasks in the queue for a given
    #   device.
    #   @return [String]
    #
    # @!attribute [rw] queue_priority
    #   Optional. Specifies the priority of the queue. Quantum tasks in a
    #   priority queue are processed before the quantum tasks in a normal
    #   queue.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/DeviceQueueInfo AWS API Documentation
    #
    class DeviceQueueInfo < Struct.new(
      :queue,
      :queue_size,
      :queue_priority)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified device has been retired.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/DeviceRetiredException AWS API Documentation
    #
    class DeviceRetiredException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Includes information about the device.
    #
    # @!attribute [rw] device_arn
    #   The ARN of the device.
    #   @return [String]
    #
    # @!attribute [rw] device_name
    #   The name of the device.
    #   @return [String]
    #
    # @!attribute [rw] provider_name
    #   The provider of the device.
    #   @return [String]
    #
    # @!attribute [rw] device_type
    #   The type of the device.
    #   @return [String]
    #
    # @!attribute [rw] device_status
    #   The status of the device.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/DeviceSummary AWS API Documentation
    #
    class DeviceSummary < Struct.new(
      :device_arn,
      :device_name,
      :provider_name,
      :device_type,
      :device_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] device_arn
    #   The ARN of the device to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/GetDeviceRequest AWS API Documentation
    #
    class GetDeviceRequest < Struct.new(
      :device_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] device_arn
    #   The ARN of the device.
    #   @return [String]
    #
    # @!attribute [rw] device_name
    #   The name of the device.
    #   @return [String]
    #
    # @!attribute [rw] provider_name
    #   The name of the partner company for the device.
    #   @return [String]
    #
    # @!attribute [rw] device_type
    #   The type of the device.
    #   @return [String]
    #
    # @!attribute [rw] device_status
    #   The status of the device.
    #   @return [String]
    #
    # @!attribute [rw] device_capabilities
    #   Details about the capabilities of the device.
    #   @return [String]
    #
    # @!attribute [rw] device_queue_info
    #   The number of quantum tasks and hybrid jobs currently queued on the
    #   device.
    #   @return [Array<Types::DeviceQueueInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/GetDeviceResponse AWS API Documentation
    #
    class GetDeviceResponse < Struct.new(
      :device_arn,
      :device_name,
      :provider_name,
      :device_type,
      :device_status,
      :device_capabilities,
      :device_queue_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_arn
    #   The ARN of the hybrid job to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] additional_attribute_names
    #   A list of attributes to return additional information for. Only the
    #   QueueInfo additional attribute name is currently supported.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/GetJobRequest AWS API Documentation
    #
    class GetJobRequest < Struct.new(
      :job_arn,
      :additional_attribute_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The status of the Amazon Braket hybrid job.
    #   @return [String]
    #
    # @!attribute [rw] job_arn
    #   The ARN of the Amazon Braket hybrid job.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that Amazon Braket can
    #   assume to perform tasks on behalf of a user. It can access user
    #   resources, run an Amazon Braket job container on behalf of user, and
    #   output results and other hybrid job details to the s3 buckets of a
    #   user.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   A description of the reason why an Amazon Braket hybrid job failed,
    #   if it failed.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The name of the Amazon Braket hybrid job.
    #   @return [String]
    #
    # @!attribute [rw] hyper_parameters
    #   Algorithm-specific parameters used by an Amazon Braket hybrid job
    #   that influence the quality of the traiing job. The values are set
    #   with a map of JSON key:value pairs, where the key is the name of the
    #   hyperparameter and the value is the value of th hyperparameter.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] input_data_config
    #   A list of parameters that specify the name and type of input data
    #   and where it is located.
    #   @return [Array<Types::InputFileConfig>]
    #
    # @!attribute [rw] output_data_config
    #   The path to the S3 location where hybrid job artifacts are stored
    #   and the encryption key used to store them there.
    #   @return [Types::JobOutputDataConfig]
    #
    # @!attribute [rw] stopping_condition
    #   The user-defined criteria that specifies when to stop a running
    #   hybrid job.
    #   @return [Types::JobStoppingCondition]
    #
    # @!attribute [rw] checkpoint_config
    #   Information about the output locations for hybrid job checkpoint
    #   data.
    #   @return [Types::JobCheckpointConfig]
    #
    # @!attribute [rw] algorithm_specification
    #   Definition of the Amazon Braket hybrid job created. Provides
    #   information about the container image used, and the Python scripts
    #   used for training.
    #   @return [Types::AlgorithmSpecification]
    #
    # @!attribute [rw] instance_config
    #   The resource instances to use while running the hybrid job on Amazon
    #   Braket.
    #   @return [Types::InstanceConfig]
    #
    # @!attribute [rw] created_at
    #   The time at which the Amazon Braket hybrid job was created.
    #   @return [Time]
    #
    # @!attribute [rw] started_at
    #   The time at which the Amazon Braket hybrid job was started.
    #   @return [Time]
    #
    # @!attribute [rw] ended_at
    #   The time at which the Amazon Braket hybrid job ended.
    #   @return [Time]
    #
    # @!attribute [rw] billable_duration
    #   The billable time for which the Amazon Braket hybrid job used to
    #   complete.
    #   @return [Integer]
    #
    # @!attribute [rw] device_config
    #   The primary device used by the Amazon Braket hybrid job.
    #   @return [Types::DeviceConfig]
    #
    # @!attribute [rw] events
    #   Details about the time and type of events occurred related to the
    #   Amazon Braket hybrid job.
    #   @return [Array<Types::JobEventDetails>]
    #
    # @!attribute [rw] tags
    #   The tags associated with this hybrid job.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] queue_info
    #   Queue information for the requested hybrid job. Only returned if
    #   `QueueInfo` is specified in the `additionalAttributeNames"` field in
    #   the `GetJob` API request.
    #   @return [Types::HybridJobQueueInfo]
    #
    # @!attribute [rw] associations
    #   The list of Amazon Braket resources associated with the hybrid job.
    #   @return [Array<Types::Association>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/GetJobResponse AWS API Documentation
    #
    class GetJobResponse < Struct.new(
      :status,
      :job_arn,
      :role_arn,
      :failure_reason,
      :job_name,
      :hyper_parameters,
      :input_data_config,
      :output_data_config,
      :stopping_condition,
      :checkpoint_config,
      :algorithm_specification,
      :instance_config,
      :created_at,
      :started_at,
      :ended_at,
      :billable_duration,
      :device_config,
      :events,
      :tags,
      :queue_info,
      :associations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] quantum_task_arn
    #   The ARN of the quantum task to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] additional_attribute_names
    #   A list of attributes to return additional information for. Only the
    #   QueueInfo additional attribute name is currently supported.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/GetQuantumTaskRequest AWS API Documentation
    #
    class GetQuantumTaskRequest < Struct.new(
      :quantum_task_arn,
      :additional_attribute_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] quantum_task_arn
    #   The ARN of the quantum task.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the quantum task.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The reason that a quantum task failed.
    #   @return [String]
    #
    # @!attribute [rw] device_arn
    #   The ARN of the device the quantum task was run on.
    #   @return [String]
    #
    # @!attribute [rw] device_parameters
    #   The parameters for the device on which the quantum task ran.
    #   @return [String]
    #
    # @!attribute [rw] shots
    #   The number of shots used in the quantum task.
    #   @return [Integer]
    #
    # @!attribute [rw] output_s3_bucket
    #   The S3 bucket where quantum task results are stored.
    #   @return [String]
    #
    # @!attribute [rw] output_s3_directory
    #   The folder in the S3 bucket where quantum task results are stored.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the quantum task was created.
    #   @return [Time]
    #
    # @!attribute [rw] ended_at
    #   The time at which the quantum task ended.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags that belong to this quantum task.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] job_arn
    #   The ARN of the Amazon Braket job associated with the quantum task.
    #   @return [String]
    #
    # @!attribute [rw] queue_info
    #   Queue information for the requested quantum task. Only returned if
    #   `QueueInfo` is specified in the `additionalAttributeNames"` field in
    #   the `GetQuantumTask` API request.
    #   @return [Types::QuantumTaskQueueInfo]
    #
    # @!attribute [rw] associations
    #   The list of Amazon Braket resources associated with the quantum
    #   task.
    #   @return [Array<Types::Association>]
    #
    # @!attribute [rw] num_successful_shots
    #   The number of successful shots for the quantum task. This is
    #   available after a successfully completed quantum task.
    #   @return [Integer]
    #
    # @!attribute [rw] action_metadata
    #   Metadata about the action performed by the quantum task, including
    #   information about the type of action and program counts.
    #   @return [Types::ActionMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/GetQuantumTaskResponse AWS API Documentation
    #
    class GetQuantumTaskResponse < Struct.new(
      :quantum_task_arn,
      :status,
      :failure_reason,
      :device_arn,
      :device_parameters,
      :shots,
      :output_s3_bucket,
      :output_s3_directory,
      :created_at,
      :ended_at,
      :tags,
      :job_arn,
      :queue_info,
      :associations,
      :num_successful_shots,
      :action_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the queue for a specified hybrid job.
    #
    # @!attribute [rw] queue
    #   The name of the queue.
    #   @return [String]
    #
    # @!attribute [rw] position
    #   Current position of the hybrid job in the jobs queue.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Optional. Provides more information about the queue position. For
    #   example, if the hybrid job is complete and no longer in the queue,
    #   the message field contains that information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/HybridJobQueueInfo AWS API Documentation
    #
    class HybridJobQueueInfo < Struct.new(
      :queue,
      :position,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of parameters that specify the input channels, type of input
    # data, and where it is located.
    #
    # @!attribute [rw] channel_name
    #   A named input source that an Amazon Braket hybrid job can consume.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The MIME type of the data.
    #   @return [String]
    #
    # @!attribute [rw] data_source
    #   The location of the input data.
    #   @return [Types::DataSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/InputFileConfig AWS API Documentation
    #
    class InputFileConfig < Struct.new(
      :channel_name,
      :content_type,
      :data_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configures the resource instances to use while running the Amazon
    # Braket hybrid job on Amazon Braket.
    #
    # @!attribute [rw] instance_type
    #   Configures the type of resource instances to use while running an
    #   Amazon Braket hybrid job.
    #   @return [String]
    #
    # @!attribute [rw] volume_size_in_gb
    #   The size of the storage volume, in GB, to provision.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_count
    #   Configures the number of resource instances to use while running an
    #   Amazon Braket hybrid job on Amazon Braket. The default value is 1.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/InstanceConfig AWS API Documentation
    #
    class InstanceConfig < Struct.new(
      :instance_type,
      :volume_size_in_gb,
      :instance_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request failed because of an unknown error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/InternalServiceException AWS API Documentation
    #
    class InternalServiceException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the output locations for hybrid job
    # checkpoint data.
    #
    # @!attribute [rw] local_path
    #   (Optional) The local directory where checkpoint data is stored. The
    #   default directory is `/opt/braket/checkpoints/`.
    #   @return [String]
    #
    # @!attribute [rw] s3_uri
    #   Identifies the S3 path where you want Amazon Braket to store
    #   checkpoint data. For example, `s3://bucket-name/key-name-prefix`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/JobCheckpointConfig AWS API Documentation
    #
    class JobCheckpointConfig < Struct.new(
      :local_path,
      :s3_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the type and time events that occurred related to the
    # Amazon Braket hybrid job.
    #
    # @!attribute [rw] event_type
    #   The type of event that occurred related to the Amazon Braket hybrid
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] time_of_event
    #   The time of the event that occurred related to the Amazon Braket
    #   hybrid job.
    #   @return [Time]
    #
    # @!attribute [rw] message
    #   A message describing the event that occurred related to the Amazon
    #   Braket hybrid job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/JobEventDetails AWS API Documentation
    #
    class JobEventDetails < Struct.new(
      :event_type,
      :time_of_event,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the path to the S3 location where you want to store hybrid
    # job artifacts and the encryption key used to store them.
    #
    # @!attribute [rw] kms_key_id
    #   The AWS Key Management Service (AWS KMS) key that Amazon Braket uses
    #   to encrypt the hybrid job training artifacts at rest using Amazon S3
    #   server-side encryption.
    #   @return [String]
    #
    # @!attribute [rw] s3_path
    #   Identifies the S3 path where you want Amazon Braket to store the
    #   hybrid job training artifacts. For example,
    #   `s3://bucket-name/key-name-prefix`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/JobOutputDataConfig AWS API Documentation
    #
    class JobOutputDataConfig < Struct.new(
      :kms_key_id,
      :s3_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies limits for how long an Amazon Braket hybrid job can run.
    #
    # @!attribute [rw] max_runtime_in_seconds
    #   The maximum length of time, in seconds, that an Amazon Braket hybrid
    #   job can run.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/JobStoppingCondition AWS API Documentation
    #
    class JobStoppingCondition < Struct.new(
      :max_runtime_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides summary information about an Amazon Braket hybrid job.
    #
    # @!attribute [rw] status
    #   The status of the Amazon Braket hybrid job.
    #   @return [String]
    #
    # @!attribute [rw] job_arn
    #   The ARN of the Amazon Braket hybrid job.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The name of the Amazon Braket hybrid job.
    #   @return [String]
    #
    # @!attribute [rw] device
    #   The primary device used by an Amazon Braket hybrid job.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the Amazon Braket hybrid job was created.
    #   @return [Time]
    #
    # @!attribute [rw] started_at
    #   The time at which the Amazon Braket hybrid job was started.
    #   @return [Time]
    #
    # @!attribute [rw] ended_at
    #   The time at which the Amazon Braket hybrid job ended.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   Displays the key, value pairs of tags associated with this hybrid
    #   job.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/JobSummary AWS API Documentation
    #
    class JobSummary < Struct.new(
      :status,
      :job_arn,
      :job_name,
      :device,
      :created_at,
      :started_at,
      :ended_at,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Specify the `resourceArn` for the resource whose tags to display.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   Displays the key, value pairs of tags associated with this resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about validation failures that occurred during
    # the processing of a program set in a quantum task.
    #
    # @!attribute [rw] program_index
    #   The index of the program within the program set that failed
    #   validation.
    #   @return [Integer]
    #
    # @!attribute [rw] inputs_index
    #   The index of the input within the program set that failed
    #   validation.
    #   @return [Integer]
    #
    # @!attribute [rw] errors
    #   A list of error messages describing the validation failures that
    #   occurred.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/ProgramSetValidationFailure AWS API Documentation
    #
    class ProgramSetValidationFailure < Struct.new(
      :program_index,
      :inputs_index,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # The queue information for the specified quantum task.
    #
    # @!attribute [rw] queue
    #   The name of the queue.
    #   @return [String]
    #
    # @!attribute [rw] position
    #   Current position of the quantum task in the quantum tasks queue.
    #   @return [String]
    #
    # @!attribute [rw] queue_priority
    #   Optional. Specifies the priority of the queue. Quantum tasks in a
    #   priority queue are processed before the quantum tasks in a normal
    #   queue.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Optional. Provides more information about the queue position. For
    #   example, if the quantum task is complete and no longer in the queue,
    #   the message field contains that information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/QuantumTaskQueueInfo AWS API Documentation
    #
    class QuantumTaskQueueInfo < Struct.new(
      :queue,
      :position,
      :queue_priority,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Includes information about a quantum task.
    #
    # @!attribute [rw] quantum_task_arn
    #   The ARN of the quantum task.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the quantum task.
    #   @return [String]
    #
    # @!attribute [rw] device_arn
    #   The ARN of the device the quantum task ran on.
    #   @return [String]
    #
    # @!attribute [rw] shots
    #   The shots used for the quantum task.
    #   @return [Integer]
    #
    # @!attribute [rw] output_s3_bucket
    #   The S3 bucket where the quantum task result file is stored.
    #   @return [String]
    #
    # @!attribute [rw] output_s3_directory
    #   The folder in the S3 bucket where the quantum task result file is
    #   stored.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time at which the quantum task was created.
    #   @return [Time]
    #
    # @!attribute [rw] ended_at
    #   The time at which the quantum task finished.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   Displays the key, value pairs of tags associated with this quantum
    #   task.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/QuantumTaskSummary AWS API Documentation
    #
    class QuantumTaskSummary < Struct.new(
      :quantum_task_arn,
      :status,
      :device_arn,
      :shots,
      :output_s3_bucket,
      :output_s3_directory,
      :created_at,
      :ended_at,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the Amazon S3 storage used by the Amazon Braket
    # hybrid job.
    #
    # @!attribute [rw] s3_uri
    #   Depending on the value specified for the `S3DataType`, identifies
    #   either a key name prefix or a manifest that locates the S3 data
    #   source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/S3DataSource AWS API Documentation
    #
    class S3DataSource < Struct.new(
      :s3_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about algorithm scripts used for the Amazon
    # Braket hybrid job.
    #
    # @!attribute [rw] entry_point
    #   The entry point in the algorithm scripts from where the execution
    #   begins in the hybrid job.
    #   @return [String]
    #
    # @!attribute [rw] s3_uri
    #   The URI that specifies the S3 path to the algorithm scripts used by
    #   an Amazon Braket hybrid job.
    #   @return [String]
    #
    # @!attribute [rw] compression_type
    #   The type of compression used to store the algorithm scripts in
    #   Amazon S3 storage.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/ScriptModeConfig AWS API Documentation
    #
    class ScriptModeConfig < Struct.new(
      :entry_point,
      :s3_uri,
      :compression_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The filter used to search for devices.
    #
    # @!attribute [rw] name
    #   The name of the device parameter to filter based on. Only
    #   `deviceArn` filter name is currently supported.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values used to filter devices based on the filter name.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/SearchDevicesFilter AWS API Documentation
    #
    class SearchDevicesFilter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token used for pagination of results returned in the response. Use
    #   the token returned from the previous request to continue search
    #   where the previous request ended.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   Array of SearchDevicesFilter objects to use when searching for
    #   devices.
    #   @return [Array<Types::SearchDevicesFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/SearchDevicesRequest AWS API Documentation
    #
    class SearchDevicesRequest < Struct.new(
      :next_token,
      :max_results,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] devices
    #   An array of `DeviceSummary` objects for devices that match the
    #   specified filter values.
    #   @return [Array<Types::DeviceSummary>]
    #
    # @!attribute [rw] next_token
    #   A token used for pagination of results, or null if there are no
    #   additional results. Use the token value in a subsequent request to
    #   continue search where the previous request ended.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/SearchDevicesResponse AWS API Documentation
    #
    class SearchDevicesResponse < Struct.new(
      :devices,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter used to search for Amazon Braket hybrid jobs.
    #
    # @!attribute [rw] name
    #   The name of the hybrid job parameter to filter based on. Filter name
    #   can be either `jobArn` or `createdAt`.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values used to filter hybrid jobs based on the filter name and
    #   operator.
    #   @return [Array<String>]
    #
    # @!attribute [rw] operator
    #   An operator to use for the filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/SearchJobsFilter AWS API Documentation
    #
    class SearchJobsFilter < Struct.new(
      :name,
      :values,
      :operator)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token used for pagination of results returned in the response. Use
    #   the token returned from the previous request to continue search
    #   where the previous request ended.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   Array of SearchJobsFilter objects to use when searching for hybrid
    #   jobs.
    #   @return [Array<Types::SearchJobsFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/SearchJobsRequest AWS API Documentation
    #
    class SearchJobsRequest < Struct.new(
      :next_token,
      :max_results,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] jobs
    #   An array of `JobSummary` objects for devices that match the
    #   specified filter values.
    #   @return [Array<Types::JobSummary>]
    #
    # @!attribute [rw] next_token
    #   A token used for pagination of results, or `null` if there are no
    #   additional results. Use the token value in a subsequent request to
    #   continue search where the previous request ended.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/SearchJobsResponse AWS API Documentation
    #
    class SearchJobsResponse < Struct.new(
      :jobs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter used to search for quantum tasks.
    #
    # @!attribute [rw] name
    #   The name of the quantum task parameter to filter based on. Filter
    #   name can be either `quantumTaskArn`, `deviceArn`, `jobArn`, `status`
    #   or `createdAt`.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values used to filter quantum tasks based on the filter name and
    #   operator.
    #   @return [Array<String>]
    #
    # @!attribute [rw] operator
    #   An operator to use for the filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/SearchQuantumTasksFilter AWS API Documentation
    #
    class SearchQuantumTasksFilter < Struct.new(
      :name,
      :values,
      :operator)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token used for pagination of results returned in the response. Use
    #   the token returned from the previous request to continue search
    #   where the previous request ended.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   Array of `SearchQuantumTasksFilter` objects to use when searching
    #   for quantum tasks.
    #   @return [Array<Types::SearchQuantumTasksFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/SearchQuantumTasksRequest AWS API Documentation
    #
    class SearchQuantumTasksRequest < Struct.new(
      :next_token,
      :max_results,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] quantum_tasks
    #   An array of `QuantumTaskSummary` objects for quantum tasks that
    #   match the specified filters.
    #   @return [Array<Types::QuantumTaskSummary>]
    #
    # @!attribute [rw] next_token
    #   A token used for pagination of results, or null if there are no
    #   additional results. Use the token value in a subsequent request to
    #   continue search where the previous request ended.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/SearchQuantumTasksResponse AWS API Documentation
    #
    class SearchQuantumTasksResponse < Struct.new(
      :quantum_tasks,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request failed because a service quota is exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Specify the `resourceArn` of the resource to which a tag will be
    #   added.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Specify the tags to add to the resource. Tags can be specified as a
    #   key-value map.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The API throttling rate limit is exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Specify the `resourceArn` for the resource from which to remove the
    #   tags.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Specify the keys for the tags to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # The input request failed to satisfy constraints expected by Amazon
    # Braket.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for validation failure.
    #   @return [String]
    #
    # @!attribute [rw] program_set_validation_failures
    #   The validation failures in the program set submitted in the request.
    #   @return [Array<Types::ProgramSetValidationFailure>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :program_set_validation_failures)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

