# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Braket
  module Types

    # You do not have sufficient access to perform this action.
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

    # Defines the Amazon Braket job to be created. Specifies the container
    # image the job uses and the paths to the Python scripts used for entry
    # and training.
    #
    # @!attribute [rw] container_image
    #   The container image used to create an Amazon Braket job.
    #   @return [Types::ContainerImage]
    #
    # @!attribute [rw] script_mode_config
    #   Configures the paths to the Python scripts used for entry and
    #   training.
    #   @return [Types::ScriptModeConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/AlgorithmSpecification AWS API Documentation
    #
    class AlgorithmSpecification < Struct.new(
      :container_image,
      :script_mode_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_arn
    #   The ARN of the Amazon Braket job to cancel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/CancelJobRequest AWS API Documentation
    #
    class CancelJobRequest < Struct.new(
      :job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cancellation_status
    #   The status of the job cancellation request.
    #   @return [String]
    #
    # @!attribute [rw] job_arn
    #   The ARN of the Amazon Braket job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/CancelJobResponse AWS API Documentation
    #
    class CancelJobResponse < Struct.new(
      :cancellation_status,
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
    # @!attribute [rw] quantum_task_arn
    #   The ARN of the task to cancel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/CancelQuantumTaskRequest AWS API Documentation
    #
    class CancelQuantumTaskRequest < Struct.new(
      :client_token,
      :quantum_task_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cancellation_status
    #   The status of the cancellation request.
    #   @return [String]
    #
    # @!attribute [rw] quantum_task_arn
    #   The ARN of the task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/CancelQuantumTaskResponse AWS API Documentation
    #
    class CancelQuantumTaskResponse < Struct.new(
      :cancellation_status,
      :quantum_task_arn)
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

    # The container image used to create an Amazon Braket job.
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

    # @!attribute [rw] algorithm_specification
    #   Definition of the Amazon Braket job to be created. Specifies the
    #   container image the job uses and information about the Python
    #   scripts used for entry and training.
    #   @return [Types::AlgorithmSpecification]
    #
    # @!attribute [rw] checkpoint_config
    #   Information about the output locations for job checkpoint data.
    #   @return [Types::JobCheckpointConfig]
    #
    # @!attribute [rw] client_token
    #   A unique token that guarantees that the call to this API is
    #   idempotent.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] device_config
    #   The quantum processing unit (QPU) or simulator used to create an
    #   Amazon Braket job.
    #   @return [Types::DeviceConfig]
    #
    # @!attribute [rw] hyper_parameters
    #   Algorithm-specific parameters used by an Amazon Braket job that
    #   influence the quality of the training job. The values are set with a
    #   string of JSON key:value pairs, where the key is the name of the
    #   hyperparameter and the value is the value of th hyperparameter.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] input_data_config
    #   A list of parameters that specify the name and type of input data
    #   and where it is located.
    #   @return [Array<Types::InputFileConfig>]
    #
    # @!attribute [rw] instance_config
    #   Configuration of the resource instances to use while running the
    #   hybrid job on Amazon Braket.
    #   @return [Types::InstanceConfig]
    #
    # @!attribute [rw] job_name
    #   The name of the Amazon Braket job.
    #   @return [String]
    #
    # @!attribute [rw] output_data_config
    #   The path to the S3 location where you want to store job artifacts
    #   and the encryption key used to store them.
    #   @return [Types::JobOutputDataConfig]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that Amazon Braket can
    #   assume to perform tasks on behalf of a user. It can access user
    #   resources, run an Amazon Braket job container on behalf of user, and
    #   output resources to the users' s3 buckets.
    #   @return [String]
    #
    # @!attribute [rw] stopping_condition
    #   The user-defined criteria that specifies when a job stops running.
    #   @return [Types::JobStoppingCondition]
    #
    # @!attribute [rw] tags
    #   A tag object that consists of a key and an optional value, used to
    #   manage metadata for Amazon Braket resources.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/CreateJobRequest AWS API Documentation
    #
    class CreateJobRequest < Struct.new(
      :algorithm_specification,
      :checkpoint_config,
      :client_token,
      :device_config,
      :hyper_parameters,
      :input_data_config,
      :instance_config,
      :job_name,
      :output_data_config,
      :role_arn,
      :stopping_condition,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_arn
    #   The ARN of the Amazon Braket job created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/CreateJobResponse AWS API Documentation
    #
    class CreateJobResponse < Struct.new(
      :job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action
    #   The action associated with the task.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The client token associated with the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] device_arn
    #   The ARN of the device to run the task on.
    #   @return [String]
    #
    # @!attribute [rw] device_parameters
    #   The parameters for the device to run the task on.
    #   @return [String]
    #
    # @!attribute [rw] job_token
    #   The token for an Amazon Braket job that associates it with the
    #   quantum task.
    #   @return [String]
    #
    # @!attribute [rw] output_s3_bucket
    #   The S3 bucket to store task result files in.
    #   @return [String]
    #
    # @!attribute [rw] output_s3_key_prefix
    #   The key prefix for the location in the S3 bucket to store task
    #   results in.
    #   @return [String]
    #
    # @!attribute [rw] shots
    #   The number of shots to use for the task.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   Tags to be added to the quantum task you're creating.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/CreateQuantumTaskRequest AWS API Documentation
    #
    class CreateQuantumTaskRequest < Struct.new(
      :action,
      :client_token,
      :device_arn,
      :device_parameters,
      :job_token,
      :output_s3_bucket,
      :output_s3_key_prefix,
      :shots,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] quantum_task_arn
    #   The ARN of the task created by the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/CreateQuantumTaskResponse AWS API Documentation
    #
    class CreateQuantumTaskResponse < Struct.new(
      :quantum_task_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the source of the data used by the Amazon Braket
    # job.
    #
    # @!attribute [rw] s3_data_source
    #   Information about the data stored in Amazon S3 used by the Amazon
    #   Braket job.
    #   @return [Types::S3DataSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/DataSource AWS API Documentation
    #
    class DataSource < Struct.new(
      :s3_data_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configures the quantum processing units (QPUs) or simulator used to
    # create and run an Amazon Braket job.
    #
    # @!attribute [rw] device
    #   The primary quantum processing unit (QPU) or simulator used to
    #   create and run an Amazon Braket job.
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
    # @!attribute [rw] device_status
    #   The status of the device.
    #   @return [String]
    #
    # @!attribute [rw] device_type
    #   The type of the device.
    #   @return [String]
    #
    # @!attribute [rw] provider_name
    #   The provider of the device.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/DeviceSummary AWS API Documentation
    #
    class DeviceSummary < Struct.new(
      :device_arn,
      :device_name,
      :device_status,
      :device_type,
      :provider_name)
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
    # @!attribute [rw] device_capabilities
    #   Details about the capabilities of the device.
    #   @return [String]
    #
    # @!attribute [rw] device_name
    #   The name of the device.
    #   @return [String]
    #
    # @!attribute [rw] device_status
    #   The status of the device.
    #   @return [String]
    #
    # @!attribute [rw] device_type
    #   The type of the device.
    #   @return [String]
    #
    # @!attribute [rw] provider_name
    #   The name of the partner company for the device.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/GetDeviceResponse AWS API Documentation
    #
    class GetDeviceResponse < Struct.new(
      :device_arn,
      :device_capabilities,
      :device_name,
      :device_status,
      :device_type,
      :provider_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_arn
    #   The ARN of the job to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/GetJobRequest AWS API Documentation
    #
    class GetJobRequest < Struct.new(
      :job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] algorithm_specification
    #   Definition of the Amazon Braket job created. Specifies the container
    #   image the job uses, information about the Python scripts used for
    #   entry and training, and the user-defined metrics used to evaluation
    #   the job.
    #   @return [Types::AlgorithmSpecification]
    #
    # @!attribute [rw] billable_duration
    #   The billable time the Amazon Braket job used to complete.
    #   @return [Integer]
    #
    # @!attribute [rw] checkpoint_config
    #   Information about the output locations for job checkpoint data.
    #   @return [Types::JobCheckpointConfig]
    #
    # @!attribute [rw] created_at
    #   The date and time that the Amazon Braket job was created.
    #   @return [Time]
    #
    # @!attribute [rw] device_config
    #   The quantum processing unit (QPU) or simulator used to run the
    #   Amazon Braket job.
    #   @return [Types::DeviceConfig]
    #
    # @!attribute [rw] ended_at
    #   The date and time that the Amazon Braket job ended.
    #   @return [Time]
    #
    # @!attribute [rw] events
    #   Details about the type and time events occurred related to the
    #   Amazon Braket job.
    #   @return [Array<Types::JobEventDetails>]
    #
    # @!attribute [rw] failure_reason
    #   A description of the reason why an Amazon Braket job failed, if it
    #   failed.
    #   @return [String]
    #
    # @!attribute [rw] hyper_parameters
    #   Algorithm-specific parameters used by an Amazon Braket job that
    #   influence the quality of the traiing job. The values are set with a
    #   string of JSON key:value pairs, where the key is the name of the
    #   hyperparameter and the value is the value of th hyperparameter.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] input_data_config
    #   A list of parameters that specify the name and type of input data
    #   and where it is located.
    #   @return [Array<Types::InputFileConfig>]
    #
    # @!attribute [rw] instance_config
    #   The resource instances to use while running the hybrid job on Amazon
    #   Braket.
    #   @return [Types::InstanceConfig]
    #
    # @!attribute [rw] job_arn
    #   The ARN of the Amazon Braket job.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The name of the Amazon Braket job.
    #   @return [String]
    #
    # @!attribute [rw] output_data_config
    #   The path to the S3 location where job artifacts are stored and the
    #   encryption key used to store them there.
    #   @return [Types::JobOutputDataConfig]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that Amazon Braket can
    #   assume to perform tasks on behalf of a user. It can access user
    #   resources, run an Amazon Braket job container on behalf of user, and
    #   output resources to the s3 buckets of a user.
    #   @return [String]
    #
    # @!attribute [rw] started_at
    #   The date and time that the Amazon Braket job was started.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the Amazon Braket job.
    #   @return [String]
    #
    # @!attribute [rw] stopping_condition
    #   The user-defined criteria that specifies when to stop a job running.
    #   @return [Types::JobStoppingCondition]
    #
    # @!attribute [rw] tags
    #   A tag object that consists of a key and an optional value, used to
    #   manage metadata for Amazon Braket resources.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/GetJobResponse AWS API Documentation
    #
    class GetJobResponse < Struct.new(
      :algorithm_specification,
      :billable_duration,
      :checkpoint_config,
      :created_at,
      :device_config,
      :ended_at,
      :events,
      :failure_reason,
      :hyper_parameters,
      :input_data_config,
      :instance_config,
      :job_arn,
      :job_name,
      :output_data_config,
      :role_arn,
      :started_at,
      :status,
      :stopping_condition,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] quantum_task_arn
    #   the ARN of the task to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/GetQuantumTaskRequest AWS API Documentation
    #
    class GetQuantumTaskRequest < Struct.new(
      :quantum_task_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   The time at which the task was created.
    #   @return [Time]
    #
    # @!attribute [rw] device_arn
    #   The ARN of the device the task was run on.
    #   @return [String]
    #
    # @!attribute [rw] device_parameters
    #   The parameters for the device on which the task ran.
    #   @return [String]
    #
    # @!attribute [rw] ended_at
    #   The time at which the task ended.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   The reason that a task failed.
    #   @return [String]
    #
    # @!attribute [rw] job_arn
    #   The ARN of the Amazon Braket job associated with the quantum task.
    #   @return [String]
    #
    # @!attribute [rw] output_s3_bucket
    #   The S3 bucket where task results are stored.
    #   @return [String]
    #
    # @!attribute [rw] output_s3_directory
    #   The folder in the S3 bucket where task results are stored.
    #   @return [String]
    #
    # @!attribute [rw] quantum_task_arn
    #   The ARN of the task.
    #   @return [String]
    #
    # @!attribute [rw] shots
    #   The number of shots used in the task.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the task.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags that belong to this task.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/GetQuantumTaskResponse AWS API Documentation
    #
    class GetQuantumTaskResponse < Struct.new(
      :created_at,
      :device_arn,
      :device_parameters,
      :ended_at,
      :failure_reason,
      :job_arn,
      :output_s3_bucket,
      :output_s3_directory,
      :quantum_task_arn,
      :shots,
      :status,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of parameters that specify the input channels, type of input
    # data, and where it is located.
    #
    # @!attribute [rw] channel_name
    #   A named input source that an Amazon Braket job can consume.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The MIME type of the data.
    #   @return [String]
    #
    # @!attribute [rw] data_source
    #   The location of the channel data.
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
    # @!attribute [rw] instance_count
    #   Configures the number of resource instances to use while running an
    #   Amazon Braket job on Amazon Braket. The default value is 1.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_type
    #   Configures the type resource instances to use while running an
    #   Amazon Braket hybrid job.
    #   @return [String]
    #
    # @!attribute [rw] volume_size_in_gb
    #   The size of the storage volume, in GB, that user wants to provision.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/InstanceConfig AWS API Documentation
    #
    class InstanceConfig < Struct.new(
      :instance_count,
      :instance_type,
      :volume_size_in_gb)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request processing has failed because of an unknown error,
    # exception, or failure.
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

    # Contains information about the output locations for job checkpoint
    # data.
    #
    # @!attribute [rw] local_path
    #   (Optional) The local directory where checkpoints are written. The
    #   default directory is `/opt/braket/checkpoints/`.
    #   @return [String]
    #
    # @!attribute [rw] s3_uri
    #   Identifies the S3 path where you want Amazon Braket to store
    #   checkpoints. For example, `s3://bucket-name/key-name-prefix`.
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

    # Details about the type and time events occurred related to the Amazon
    # Braket job.
    #
    # @!attribute [rw] event_type
    #   The type of event that occurred related to the Amazon Braket job.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message describing the event that occurred related to the Amazon
    #   Braket job.
    #   @return [String]
    #
    # @!attribute [rw] time_of_event
    #   TThe type of event that occurred related to the Amazon Braket job.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/JobEventDetails AWS API Documentation
    #
    class JobEventDetails < Struct.new(
      :event_type,
      :message,
      :time_of_event)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the path to the S3 location where you want to store job
    # artifacts and the encryption key used to store them.
    #
    # @!attribute [rw] kms_key_id
    #   The AWS Key Management Service (AWS KMS) key that Amazon Braket uses
    #   to encrypt the job training artifacts at rest using Amazon S3
    #   server-side encryption.
    #   @return [String]
    #
    # @!attribute [rw] s3_path
    #   Identifies the S3 path where you want Amazon Braket to store the job
    #   training artifacts. For example, `s3://bucket-name/key-name-prefix`.
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

    # Specifies limits for how long an Amazon Braket job can run.
    #
    # @!attribute [rw] max_runtime_in_seconds
    #   The maximum length of time, in seconds, that an Amazon Braket job
    #   can run.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/JobStoppingCondition AWS API Documentation
    #
    class JobStoppingCondition < Struct.new(
      :max_runtime_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides summary information about an Amazon Braket job.
    #
    # @!attribute [rw] created_at
    #   The date and time that the Amazon Braket job was created.
    #   @return [Time]
    #
    # @!attribute [rw] device
    #   Provides summary information about the primary device used by an
    #   Amazon Braket job.
    #   @return [String]
    #
    # @!attribute [rw] ended_at
    #   The date and time that the Amazon Braket job ended.
    #   @return [Time]
    #
    # @!attribute [rw] job_arn
    #   The ARN of the Amazon Braket job.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The name of the Amazon Braket job.
    #   @return [String]
    #
    # @!attribute [rw] started_at
    #   The date and time that the Amazon Braket job was started.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the Amazon Braket job.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A tag object that consists of a key and an optional value, used to
    #   manage metadata for Amazon Braket resources.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/JobSummary AWS API Documentation
    #
    class JobSummary < Struct.new(
      :created_at,
      :device,
      :ended_at,
      :job_arn,
      :job_name,
      :started_at,
      :status,
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

    # Includes information about a quantum task.
    #
    # @!attribute [rw] created_at
    #   The time at which the task was created.
    #   @return [Time]
    #
    # @!attribute [rw] device_arn
    #   The ARN of the device the task ran on.
    #   @return [String]
    #
    # @!attribute [rw] ended_at
    #   The time at which the task finished.
    #   @return [Time]
    #
    # @!attribute [rw] output_s3_bucket
    #   The S3 bucket where the task result file is stored..
    #   @return [String]
    #
    # @!attribute [rw] output_s3_directory
    #   The folder in the S3 bucket where the task result file is stored.
    #   @return [String]
    #
    # @!attribute [rw] quantum_task_arn
    #   The ARN of the task.
    #   @return [String]
    #
    # @!attribute [rw] shots
    #   The shots used for the task.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the task.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Displays the key, value pairs of tags associated with this quantum
    #   task.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/QuantumTaskSummary AWS API Documentation
    #
    class QuantumTaskSummary < Struct.new(
      :created_at,
      :device_arn,
      :ended_at,
      :output_s3_bucket,
      :output_s3_directory,
      :quantum_task_arn,
      :shots,
      :status,
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

    # Information about the data stored in Amazon S3 used by the Amazon
    # Braket job.
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

    # Contains information about the Python scripts used for entry and by an
    # Amazon Braket job.
    #
    # @!attribute [rw] compression_type
    #   The type of compression used by the Python scripts for an Amazon
    #   Braket job.
    #   @return [String]
    #
    # @!attribute [rw] entry_point
    #   The path to the Python script that serves as the entry point for an
    #   Amazon Braket job.
    #   @return [String]
    #
    # @!attribute [rw] s3_uri
    #   The URI that specifies the S3 path to the Python script module that
    #   contains the training script used by an Amazon Braket job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/ScriptModeConfig AWS API Documentation
    #
    class ScriptModeConfig < Struct.new(
      :compression_type,
      :entry_point,
      :s3_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # The filter to use for searching devices.
    #
    # @!attribute [rw] name
    #   The name to use to filter results.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values to use to filter results.
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

    # @!attribute [rw] filters
    #   The filter values to use to search for a device.
    #   @return [Array<Types::SearchDevicesFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token used for pagination of results returned in the response. Use
    #   the token returned from the previous request continue results where
    #   the previous request ended.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/SearchDevicesRequest AWS API Documentation
    #
    class SearchDevicesRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
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
    #   continue results where the previous request ended.
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

    # A filter used to search for Amazon Braket jobs.
    #
    # @!attribute [rw] name
    #   The name to use for the jobs filter.
    #   @return [String]
    #
    # @!attribute [rw] operator
    #   An operator to use for the jobs filter.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values to use for the jobs filter.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/SearchJobsFilter AWS API Documentation
    #
    class SearchJobsFilter < Struct.new(
      :name,
      :operator,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   The filter values to use when searching for a job.
    #   @return [Array<Types::SearchJobsFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token used for pagination of results returned in the response. Use
    #   the token returned from the previous request to continue results
    #   where the previous request ended.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/SearchJobsRequest AWS API Documentation
    #
    class SearchJobsRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
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
    #   continue results where the previous request ended.
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

    # A filter to use to search for tasks.
    #
    # @!attribute [rw] name
    #   The name of the device used for the task.
    #   @return [String]
    #
    # @!attribute [rw] operator
    #   An operator to use in the filter.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values to use for the filter.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/SearchQuantumTasksFilter AWS API Documentation
    #
    class SearchQuantumTasksFilter < Struct.new(
      :name,
      :operator,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   Array of `SearchQuantumTasksFilter` objects.
    #   @return [Array<Types::SearchQuantumTasksFilter>]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token used for pagination of results returned in the response. Use
    #   the token returned from the previous request continue results where
    #   the previous request ended.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/SearchQuantumTasksRequest AWS API Documentation
    #
    class SearchQuantumTasksRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token used for pagination of results, or null if there are no
    #   additional results. Use the token value in a subsequent request to
    #   continue results where the previous request ended.
    #   @return [String]
    #
    # @!attribute [rw] quantum_tasks
    #   An array of `QuantumTaskSummary` objects for tasks that match the
    #   specified filters.
    #   @return [Array<Types::QuantumTaskSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/SearchQuantumTasksResponse AWS API Documentation
    #
    class SearchQuantumTasksResponse < Struct.new(
      :next_token,
      :quantum_tasks)
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
    #   Specify the tags to add to the resource.
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

    # The throttling rate limit is met.
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

    # The input fails to satisfy the constraints specified by an AWS
    # service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
