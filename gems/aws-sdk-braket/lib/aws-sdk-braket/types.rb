# frozen_string_literal: true

# This is generated code!

module Aws::Braket
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient permissions to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains metadata about the quantum task action, including the action type and program statistics.</p>
    # @!attribute action_type
    #   <p>The type of action associated with the quantum task.</p>
    #   @return [String]
    # @!attribute program_count
    #   <p>The number of programs in a program set. This is only available for a Program Set.</p>
    #   @return [Integer]
    # @!attribute executable_count
    #   <p>The number of executables in a program set. This is only available for a Program Set.</p>
    #   @return [Integer]
    class ActionMetadata < Struct.new(
      :action_type,
      :program_count,
      :executable_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the Amazon Braket hybrid job to be created. Specifies the container image the job uses and the paths to the Python scripts used for entry and training.</p>
    # @!attribute script_mode_config
    #   <p>Configures the paths to the Python scripts used for entry and training.</p>
    #   @return [Types::ScriptModeConfig]
    # @!attribute container_image
    #   <p>The container image used to create an Amazon Braket hybrid job.</p>
    #   @return [Types::ContainerImage]
    class AlgorithmSpecification < Struct.new(
      :script_mode_config,
      :container_image,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon Braket resource and the association type.</p>
    # @!attribute arn
    #   <p>The Amazon Braket resource arn.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The association type for the specified Amazon Braket resource arn.</p>
    #   @return [String]
    class Association < Struct.new(
      :arn,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_arn
    #   <p>The ARN of the Amazon Braket hybrid job to cancel.</p>
    #   @return [String]
    class CancelJobInput < Struct.new(
      :job_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_arn
    #   <p>The ARN of the Amazon Braket job.</p>
    #   @return [String]
    # @!attribute cancellation_status
    #   <p>The status of the hybrid job.</p>
    #   @return [String]
    class CancelJobOutput < Struct.new(
      :job_arn,
      :cancellation_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute quantum_task_arn
    #   <p>The ARN of the quantum task to cancel.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The client token associated with the cancellation request.</p>
    #   @return [String]
    class CancelQuantumTaskInput < Struct.new(
      :quantum_task_arn,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute quantum_task_arn
    #   <p>The ARN of the quantum task.</p>
    #   @return [String]
    # @!attribute cancellation_status
    #   <p>The status of the quantum task.</p>
    #   @return [String]
    class CancelQuantumTaskOutput < Struct.new(
      :quantum_task_arn,
      :cancellation_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An error occurred due to a conflict.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The container image used to create an Amazon Braket hybrid job.</p>
    # @!attribute uri
    #   <p>The URI locating the container image.</p>
    #   @return [String]
    class ContainerImage < Struct.new(
      :uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>The client token associated with this request that guarantees that the request is idempotent.</p>
    #   @return [String]
    # @!attribute algorithm_specification
    #   <p>Definition of the Amazon Braket job to be created. Specifies the container image the job uses and information about the Python scripts used for entry and training.</p>
    #   @return [Types::AlgorithmSpecification]
    # @!attribute input_data_config
    #   <p>A list of parameters that specify the name and type of input data and where it is located.</p>
    #   @return [Array<Types::InputFileConfig>]
    # @!attribute output_data_config
    #   <p>The path to the S3 location where you want to store hybrid job artifacts and the encryption key used to store them.</p>
    #   @return [Types::JobOutputDataConfig]
    # @!attribute checkpoint_config
    #   <p>Information about the output locations for hybrid job checkpoint data.</p>
    #   @return [Types::JobCheckpointConfig]
    # @!attribute job_name
    #   <p>The name of the Amazon Braket hybrid job.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that Amazon Braket can assume to perform tasks on behalf of a user. It can access user resources, run an Amazon Braket job container on behalf of user, and output results and hybrid job details to the users' s3 buckets.</p>
    #   @return [String]
    # @!attribute stopping_condition
    #   <p> The user-defined criteria that specifies when a hybrid job stops running.</p>
    #   @return [Types::JobStoppingCondition]
    # @!attribute instance_config
    #   <p>Configuration of the resource instances to use while running the hybrid job on Amazon Braket.</p>
    #   @return [Types::InstanceConfig]
    # @!attribute hyper_parameters
    #   <p>Algorithm-specific parameters used by an Amazon Braket hybrid job that influence the quality of the training job. The values are set with a map of JSON key:value pairs, where the key is the name of the hyperparameter and the value is the value of the hyperparameter.</p> <important> <p>Do not include any security-sensitive information including account access IDs, secrets, or tokens in any hyperparameter fields. As part of the shared responsibility model, you are responsible for any potential exposure, unauthorized access, or compromise of your sensitive data if caused by security-sensitive information included in the request hyperparameter variable or plain text fields.</p> </important>
    #   @return [Hash<String, String>]
    # @!attribute device_config
    #   <p>The quantum processing unit (QPU) or simulator used to create an Amazon Braket hybrid job.</p>
    #   @return [Types::DeviceConfig]
    # @!attribute tags
    #   <p>Tags to be added to the hybrid job you're creating.</p>
    #   @return [Hash<String, String>]
    # @!attribute associations
    #   <p>The list of Amazon Braket resources associated with the hybrid job.</p>
    #   @return [Array<Types::Association>]
    class CreateJobInput < Struct.new(
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
      :associations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_arn
    #   <p>The ARN of the Amazon Braket hybrid job created.</p>
    #   @return [String]
    class CreateJobOutput < Struct.new(
      :job_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>The client token associated with the request.</p>
    #   @return [String]
    # @!attribute device_arn
    #   <p>The ARN of the device to run the quantum task on.</p>
    #   @return [String]
    # @!attribute device_parameters
    #   <p>The parameters for the device to run the quantum task on.</p>
    #   @return [String]
    # @!attribute shots
    #   <p>The number of shots to use for the quantum task.</p>
    #   @return [Integer]
    # @!attribute output_s3_bucket
    #   <p>The S3 bucket to store quantum task result files in.</p>
    #   @return [String]
    # @!attribute output_s3_key_prefix
    #   <p>The key prefix for the location in the S3 bucket to store quantum task results in.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The action associated with the quantum task.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags to be added to the quantum task you're creating.</p>
    #   @return [Hash<String, String>]
    # @!attribute job_token
    #   <p>The token for an Amazon Braket hybrid job that associates it with the quantum task.</p>
    #   @return [String]
    # @!attribute associations
    #   <p>The list of Amazon Braket resources associated with the quantum task.</p>
    #   @return [Array<Types::Association>]
    class CreateQuantumTaskInput < Struct.new(
      :client_token,
      :device_arn,
      :device_parameters,
      :shots,
      :output_s3_bucket,
      :output_s3_key_prefix,
      :action,
      :tags,
      :job_token,
      :associations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute quantum_task_arn
    #   <p>The ARN of the quantum task created by the request.</p>
    #   @return [String]
    class CreateQuantumTaskOutput < Struct.new(
      :quantum_task_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the source of the input data used by the Amazon Braket hybrid job.</p>
    # @!attribute s3_data_source
    #   <p>Amazon S3 path of the input data used by the hybrid job.</p>
    #   @return [Types::S3DataSource]
    class DataSource < Struct.new(
      :s3_data_source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configures the primary device used to create and run an Amazon Braket hybrid job.</p>
    # @!attribute device
    #   <p>The primary device ARN used to create and run an Amazon Braket hybrid job.</p>
    #   @return [String]
    class DeviceConfig < Struct.new(
      :device,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified device is currently offline.</p>
    # @!attribute message
    #   @return [String]
    class DeviceOfflineException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about quantum tasks and hybrid jobs queued on a device.</p>
    # @!attribute queue
    #   <p>The name of the queue. </p>
    #   @return [String]
    # @!attribute queue_size
    #   <p>The number of hybrid jobs or quantum tasks in the queue for a given device. </p>
    #   @return [String]
    # @!attribute queue_priority
    #   <p>Optional. Specifies the priority of the queue. Quantum tasks in a priority queue are processed before the quantum tasks in a normal queue.</p>
    #   @return [String]
    class DeviceQueueInfo < Struct.new(
      :queue,
      :queue_size,
      :queue_priority,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified device has been retired.</p>
    # @!attribute message
    #   @return [String]
    class DeviceRetiredException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Includes information about the device.</p>
    # @!attribute device_arn
    #   <p>The ARN of the device.</p>
    #   @return [String]
    # @!attribute device_name
    #   <p>The name of the device.</p>
    #   @return [String]
    # @!attribute provider_name
    #   <p>The provider of the device.</p>
    #   @return [String]
    # @!attribute device_type
    #   <p>The type of the device.</p>
    #   @return [String]
    # @!attribute device_status
    #   <p>The status of the device.</p>
    #   @return [String]
    class DeviceSummary < Struct.new(
      :device_arn,
      :device_name,
      :provider_name,
      :device_type,
      :device_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute device_arn
    #   <p>The ARN of the device to retrieve.</p>
    #   @return [String]
    class GetDeviceInput < Struct.new(
      :device_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute device_arn
    #   <p>The ARN of the device.</p>
    #   @return [String]
    # @!attribute device_name
    #   <p>The name of the device.</p>
    #   @return [String]
    # @!attribute provider_name
    #   <p>The name of the partner company for the device.</p>
    #   @return [String]
    # @!attribute device_type
    #   <p>The type of the device.</p>
    #   @return [String]
    # @!attribute device_status
    #   <p>The status of the device.</p>
    #   @return [String]
    # @!attribute device_capabilities
    #   <p>Details about the capabilities of the device.</p>
    #   @return [String]
    # @!attribute device_queue_info
    #   <p>The number of quantum tasks and hybrid jobs currently queued on the device.</p>
    #   @return [Array<Types::DeviceQueueInfo>]
    class GetDeviceOutput < Struct.new(
      :device_arn,
      :device_name,
      :provider_name,
      :device_type,
      :device_status,
      :device_capabilities,
      :device_queue_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_arn
    #   <p>The ARN of the hybrid job to retrieve.</p>
    #   @return [String]
    # @!attribute additional_attribute_names
    #   <p>A list of attributes to return additional information for. Only the QueueInfo additional attribute name is currently supported. </p>
    #   @return [Array<String>]
    class GetJobInput < Struct.new(
      :job_arn,
      :additional_attribute_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The status of the Amazon Braket hybrid job.</p>
    #   @return [String]
    # @!attribute job_arn
    #   <p>The ARN of the Amazon Braket hybrid job.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that Amazon Braket can assume to perform tasks on behalf of a user. It can access user resources, run an Amazon Braket job container on behalf of user, and output results and other hybrid job details to the s3 buckets of a user.</p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>A description of the reason why an Amazon Braket hybrid job failed, if it failed.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The name of the Amazon Braket hybrid job.</p>
    #   @return [String]
    # @!attribute hyper_parameters
    #   <p>Algorithm-specific parameters used by an Amazon Braket hybrid job that influence the quality of the traiing job. The values are set with a map of JSON key:value pairs, where the key is the name of the hyperparameter and the value is the value of th hyperparameter.</p>
    #   @return [Hash<String, String>]
    # @!attribute input_data_config
    #   <p>A list of parameters that specify the name and type of input data and where it is located.</p>
    #   @return [Array<Types::InputFileConfig>]
    # @!attribute output_data_config
    #   <p>The path to the S3 location where hybrid job artifacts are stored and the encryption key used to store them there.</p>
    #   @return [Types::JobOutputDataConfig]
    # @!attribute stopping_condition
    #   <p>The user-defined criteria that specifies when to stop a running hybrid job.</p>
    #   @return [Types::JobStoppingCondition]
    # @!attribute checkpoint_config
    #   <p>Information about the output locations for hybrid job checkpoint data.</p>
    #   @return [Types::JobCheckpointConfig]
    # @!attribute algorithm_specification
    #   <p>Definition of the Amazon Braket hybrid job created. Provides information about the container image used, and the Python scripts used for training.</p>
    #   @return [Types::AlgorithmSpecification]
    # @!attribute instance_config
    #   <p>The resource instances to use while running the hybrid job on Amazon Braket.</p>
    #   @return [Types::InstanceConfig]
    # @!attribute created_at
    #   <p>The time at which the Amazon Braket hybrid job was created.</p>
    #   @return [Time]
    # @!attribute started_at
    #   <p>The time at which the Amazon Braket hybrid job was started.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The time at which the Amazon Braket hybrid job ended.</p>
    #   @return [Time]
    # @!attribute billable_duration
    #   <p>The billable time for which the Amazon Braket hybrid job used to complete.</p>
    #   @return [Integer]
    # @!attribute device_config
    #   <p>The primary device used by the Amazon Braket hybrid job.</p>
    #   @return [Types::DeviceConfig]
    # @!attribute events
    #   <p>Details about the time and type of events occurred related to the Amazon Braket hybrid job.</p>
    #   @return [Array<Types::JobEventDetails>]
    # @!attribute tags
    #   <p>The tags associated with this hybrid job.</p>
    #   @return [Hash<String, String>]
    # @!attribute queue_info
    #   <p>Queue information for the requested hybrid job. Only returned if <code>QueueInfo</code> is specified in the <code>additionalAttributeNames"</code> field in the <code>GetJob</code> API request.</p>
    #   @return [Types::HybridJobQueueInfo]
    # @!attribute associations
    #   <p>The list of Amazon Braket resources associated with the hybrid job.</p>
    #   @return [Array<Types::Association>]
    class GetJobOutput < Struct.new(
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
      :associations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute quantum_task_arn
    #   <p>The ARN of the quantum task to retrieve.</p>
    #   @return [String]
    # @!attribute additional_attribute_names
    #   <p>A list of attributes to return additional information for. Only the QueueInfo additional attribute name is currently supported.</p>
    #   @return [Array<String>]
    class GetQuantumTaskInput < Struct.new(
      :quantum_task_arn,
      :additional_attribute_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute quantum_task_arn
    #   <p>The ARN of the quantum task.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the quantum task.</p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>The reason that a quantum task failed.</p>
    #   @return [String]
    # @!attribute device_arn
    #   <p>The ARN of the device the quantum task was run on.</p>
    #   @return [String]
    # @!attribute device_parameters
    #   <p>The parameters for the device on which the quantum task ran.</p>
    #   @return [String]
    # @!attribute shots
    #   <p>The number of shots used in the quantum task.</p>
    #   @return [Integer]
    # @!attribute output_s3_bucket
    #   <p>The S3 bucket where quantum task results are stored.</p>
    #   @return [String]
    # @!attribute output_s3_directory
    #   <p>The folder in the S3 bucket where quantum task results are stored.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time at which the quantum task was created.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The time at which the quantum task ended.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The tags that belong to this quantum task.</p>
    #   @return [Hash<String, String>]
    # @!attribute job_arn
    #   <p>The ARN of the Amazon Braket job associated with the quantum task.</p>
    #   @return [String]
    # @!attribute queue_info
    #   <p>Queue information for the requested quantum task. Only returned if <code>QueueInfo</code> is specified in the <code>additionalAttributeNames"</code> field in the <code>GetQuantumTask</code> API request.</p>
    #   @return [Types::QuantumTaskQueueInfo]
    # @!attribute associations
    #   <p>The list of Amazon Braket resources associated with the quantum task.</p>
    #   @return [Array<Types::Association>]
    # @!attribute num_successful_shots
    #   <p>The number of successful shots for the quantum task. This is available after a successfully completed quantum task.</p>
    #   @return [Integer]
    # @!attribute action_metadata
    #   <p>Metadata about the action performed by the quantum task, including information about the type of action and program counts.</p>
    #   @return [Types::ActionMetadata]
    class GetQuantumTaskOutput < Struct.new(
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
      :action_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the queue for a specified hybrid job.</p>
    # @!attribute queue
    #   <p>The name of the queue.</p>
    #   @return [String]
    # @!attribute position
    #   <p>Current position of the hybrid job in the jobs queue.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Optional. Provides more information about the queue position. For example, if the hybrid job is complete and no longer in the queue, the message field contains that information.</p>
    #   @return [String]
    class HybridJobQueueInfo < Struct.new(
      :queue,
      :position,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A list of parameters that specify the input channels, type of input data, and where it is located.</p>
    # @!attribute channel_name
    #   <p>A named input source that an Amazon Braket hybrid job can consume.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The MIME type of the data.</p>
    #   @return [String]
    # @!attribute data_source
    #   <p>The location of the input data.</p>
    #   @return [Types::DataSource]
    class InputFileConfig < Struct.new(
      :channel_name,
      :content_type,
      :data_source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configures the resource instances to use while running the Amazon Braket hybrid job on Amazon Braket.</p>
    # @!attribute instance_type
    #   <p>Configures the type of resource instances to use while running an Amazon Braket hybrid job.</p>
    #   @return [String]
    # @!attribute volume_size_in_gb
    #   <p>The size of the storage volume, in GB, to provision.</p>
    #   @return [Integer]
    # @!attribute instance_count
    #   <p>Configures the number of resource instances to use while running an Amazon Braket hybrid job on Amazon Braket. The default value is 1.</p>
    #   @return [Integer]
    class InstanceConfig < Struct.new(
      :instance_type,
      :volume_size_in_gb,
      :instance_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request failed because of an unknown error.</p>
    # @!attribute message
    #   @return [String]
    class InternalServiceException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the output locations for hybrid job checkpoint data.</p>
    # @!attribute local_path
    #   <p>(Optional) The local directory where checkpoint data is stored. The default directory is <code>/opt/braket/checkpoints/</code>.</p>
    #   @return [String]
    # @!attribute s3_uri
    #   <p>Identifies the S3 path where you want Amazon Braket to store checkpoint data. For example, <code>s3://bucket-name/key-name-prefix</code>.</p>
    #   @return [String]
    class JobCheckpointConfig < Struct.new(
      :local_path,
      :s3_uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the type and time events that occurred related to the Amazon Braket hybrid job.</p>
    # @!attribute event_type
    #   <p>The type of event that occurred related to the Amazon Braket hybrid job.</p>
    #   @return [String]
    # @!attribute time_of_event
    #   <p>The time of the event that occurred related to the Amazon Braket hybrid job.</p>
    #   @return [Time]
    # @!attribute message
    #   <p>A message describing the event that occurred related to the Amazon Braket hybrid job.</p>
    #   @return [String]
    class JobEventDetails < Struct.new(
      :event_type,
      :time_of_event,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the path to the S3 location where you want to store hybrid job artifacts and the encryption key used to store them.</p>
    # @!attribute kms_key_id
    #   <p>The AWS Key Management Service (AWS KMS) key that Amazon Braket uses to encrypt the hybrid job training artifacts at rest using Amazon S3 server-side encryption.</p>
    #   @return [String]
    # @!attribute s3_path
    #   <p>Identifies the S3 path where you want Amazon Braket to store the hybrid job training artifacts. For example, <code>s3://bucket-name/key-name-prefix</code>.</p>
    #   @return [String]
    class JobOutputDataConfig < Struct.new(
      :kms_key_id,
      :s3_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies limits for how long an Amazon Braket hybrid job can run. </p>
    # @!attribute max_runtime_in_seconds
    #   <p>The maximum length of time, in seconds, that an Amazon Braket hybrid job can run.</p>
    #   @return [Integer]
    class JobStoppingCondition < Struct.new(
      :max_runtime_in_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides summary information about an Amazon Braket hybrid job.</p>
    # @!attribute status
    #   <p>The status of the Amazon Braket hybrid job.</p>
    #   @return [String]
    # @!attribute job_arn
    #   <p>The ARN of the Amazon Braket hybrid job.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The name of the Amazon Braket hybrid job.</p>
    #   @return [String]
    # @!attribute device
    #   <p>The primary device used by an Amazon Braket hybrid job.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time at which the Amazon Braket hybrid job was created.</p>
    #   @return [Time]
    # @!attribute started_at
    #   <p>The time at which the Amazon Braket hybrid job was started.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The time at which the Amazon Braket hybrid job ended.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>Displays the key, value pairs of tags associated with this hybrid job.</p>
    #   @return [Hash<String, String>]
    class JobSummary < Struct.new(
      :status,
      :job_arn,
      :job_name,
      :device,
      :created_at,
      :started_at,
      :ended_at,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Specify the <code>resourceArn</code> for the resource whose tags to display.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>Displays the key, value pairs of tags associated with this resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about validation failures that occurred during the processing of a program set in a quantum task.</p>
    # @!attribute program_index
    #   <p>The index of the program within the program set that failed validation.</p>
    #   @return [Integer]
    # @!attribute inputs_index
    #   <p>The index of the input within the program set that failed validation.</p>
    #   @return [Integer]
    # @!attribute errors
    #   <p>A list of error messages describing the validation failures that occurred.</p>
    #   @return [Array<String>]
    class ProgramSetValidationFailure < Struct.new(
      :program_index,
      :inputs_index,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The queue information for the specified quantum task.</p>
    # @!attribute queue
    #   <p>The name of the queue. </p>
    #   @return [String]
    # @!attribute position
    #   <p>Current position of the quantum task in the quantum tasks queue.</p>
    #   @return [String]
    # @!attribute queue_priority
    #   <p>Optional. Specifies the priority of the queue. Quantum tasks in a priority queue are processed before the quantum tasks in a normal queue.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Optional. Provides more information about the queue position. For example, if the quantum task is complete and no longer in the queue, the message field contains that information.</p>
    #   @return [String]
    class QuantumTaskQueueInfo < Struct.new(
      :queue,
      :position,
      :queue_priority,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Includes information about a quantum task.</p>
    # @!attribute quantum_task_arn
    #   <p>The ARN of the quantum task.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the quantum task.</p>
    #   @return [String]
    # @!attribute device_arn
    #   <p>The ARN of the device the quantum task ran on.</p>
    #   @return [String]
    # @!attribute shots
    #   <p>The shots used for the quantum task.</p>
    #   @return [Integer]
    # @!attribute output_s3_bucket
    #   <p>The S3 bucket where the quantum task result file is stored.</p>
    #   @return [String]
    # @!attribute output_s3_directory
    #   <p>The folder in the S3 bucket where the quantum task result file is stored.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time at which the quantum task was created.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The time at which the quantum task finished.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>Displays the key, value pairs of tags associated with this quantum task.</p>
    #   @return [Hash<String, String>]
    class QuantumTaskSummary < Struct.new(
      :quantum_task_arn,
      :status,
      :device_arn,
      :shots,
      :output_s3_bucket,
      :output_s3_directory,
      :created_at,
      :ended_at,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource was not found.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the Amazon S3 storage used by the Amazon Braket hybrid job.</p>
    # @!attribute s3_uri
    #   <p>Depending on the value specified for the <code>S3DataType</code>, identifies either a key name prefix or a manifest that locates the S3 data source.</p>
    #   @return [String]
    class S3DataSource < Struct.new(
      :s3_uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about algorithm scripts used for the Amazon Braket hybrid job.</p>
    # @!attribute entry_point
    #   <p>The entry point in the algorithm scripts from where the execution begins in the hybrid job.</p>
    #   @return [String]
    # @!attribute s3_uri
    #   <p>The URI that specifies the S3 path to the algorithm scripts used by an Amazon Braket hybrid job.</p>
    #   @return [String]
    # @!attribute compression_type
    #   <p>The type of compression used to store the algorithm scripts in Amazon S3 storage.</p>
    #   @return [String]
    class ScriptModeConfig < Struct.new(
      :entry_point,
      :s3_uri,
      :compression_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The filter used to search for devices.</p>
    # @!attribute name
    #   <p>The name of the device parameter to filter based on. Only <code>deviceArn</code> filter name is currently supported.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values used to filter devices based on the filter name.</p>
    #   @return [Array<String>]
    class SearchDevicesFilter < Struct.new(
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token used for pagination of results returned in the response. Use the token returned from the previous request to continue search where the previous request ended.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #   @return [Integer]
    # @!attribute filters
    #   <p>Array of SearchDevicesFilter objects to use when searching for devices.</p>
    #   @return [Array<Types::SearchDevicesFilter>]
    class SearchDevicesInput < Struct.new(
      :next_token,
      :max_results,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute devices
    #   <p>An array of <code>DeviceSummary</code> objects for devices that match the specified filter values.</p>
    #   @return [Array<Types::DeviceSummary>]
    # @!attribute next_token
    #   <p>A token used for pagination of results, or null if there are no additional results. Use the token value in a subsequent request to continue search where the previous request ended.</p>
    #   @return [String]
    class SearchDevicesOutput < Struct.new(
      :devices,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter used to search for Amazon Braket hybrid jobs.</p>
    # @!attribute name
    #   <p>The name of the hybrid job parameter to filter based on. Filter name can be either <code>jobArn</code> or <code>createdAt</code>. </p>
    #   @return [String]
    # @!attribute values
    #   <p>The values used to filter hybrid jobs based on the filter name and operator.</p>
    #   @return [Array<String>]
    # @!attribute operator
    #   <p>An operator to use for the filter.</p>
    #   @return [String]
    class SearchJobsFilter < Struct.new(
      :name,
      :values,
      :operator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token used for pagination of results returned in the response. Use the token returned from the previous request to continue search where the previous request ended.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #   @return [Integer]
    # @!attribute filters
    #   <p>Array of SearchJobsFilter objects to use when searching for hybrid jobs.</p>
    #   @return [Array<Types::SearchJobsFilter>]
    class SearchJobsInput < Struct.new(
      :next_token,
      :max_results,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute jobs
    #   <p>An array of <code>JobSummary</code> objects for devices that match the specified filter values.</p>
    #   @return [Array<Types::JobSummary>]
    # @!attribute next_token
    #   <p>A token used for pagination of results, or <code>null</code> if there are no additional results. Use the token value in a subsequent request to continue search where the previous request ended.</p>
    #   @return [String]
    class SearchJobsOutput < Struct.new(
      :jobs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter used to search for quantum tasks.</p>
    # @!attribute name
    #   <p>The name of the quantum task parameter to filter based on. Filter name can be either <code>quantumTaskArn</code>, <code>deviceArn</code>, <code>jobArn</code>, <code>status</code> or <code>createdAt</code>.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values used to filter quantum tasks based on the filter name and operator.</p>
    #   @return [Array<String>]
    # @!attribute operator
    #   <p>An operator to use for the filter.</p>
    #   @return [String]
    class SearchQuantumTasksFilter < Struct.new(
      :name,
      :values,
      :operator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token used for pagination of results returned in the response. Use the token returned from the previous request to continue search where the previous request ended.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results to return in the response.</p>
    #   @return [Integer]
    # @!attribute filters
    #   <p>Array of <code>SearchQuantumTasksFilter</code> objects to use when searching for quantum tasks.</p>
    #   @return [Array<Types::SearchQuantumTasksFilter>]
    class SearchQuantumTasksInput < Struct.new(
      :next_token,
      :max_results,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute quantum_tasks
    #   <p>An array of <code>QuantumTaskSummary</code> objects for quantum tasks that match the specified filters.</p>
    #   @return [Array<Types::QuantumTaskSummary>]
    # @!attribute next_token
    #   <p>A token used for pagination of results, or null if there are no additional results. Use the token value in a subsequent request to continue search where the previous request ended.</p>
    #   @return [String]
    class SearchQuantumTasksOutput < Struct.new(
      :quantum_tasks,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request failed because a service quota is exceeded.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Specify the <code>resourceArn</code> of the resource to which a tag will be added.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Specify the tags to add to the resource. Tags can be specified as a key-value map.</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The API throttling rate limit is exceeded.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Specify the <code>resourceArn</code> for the resource from which to remove the tags.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>Specify the keys for the tags to remove from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input request failed to satisfy constraints expected by Amazon Braket.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for validation failure.</p>
    #   @return [String]
    # @!attribute program_set_validation_failures
    #   <p>The validation failures in the program set submitted in the request.</p>
    #   @return [Array<Types::ProgramSetValidationFailure>]
    class ValidationException < Struct.new(
      :message,
      :reason,
      :program_set_validation_failures,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
