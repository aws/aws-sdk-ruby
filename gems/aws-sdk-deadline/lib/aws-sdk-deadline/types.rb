# frozen_string_literal: true

# This is generated code!

module Aws::Deadline
  # This module contains the types returned by client operations.
  module Types

    # <p>Provides information about the GPU accelerators used for jobs processed by a fleet.</p> <important> <p>Accelerator capabilities cannot be used with wait-and-save fleets. If you specify accelerator capabilities, you must use either spot or on-demand instance market options.</p> </important> <note> <p>Each accelerator type maps to specific EC2 instance families:</p> <ul> <li> <p> <code>t4</code>: Uses G4dn instance family</p> </li> <li> <p> <code>a10g</code>: Uses G5 instance family</p> </li> <li> <p> <code>l4</code>: Uses G6 and Gr6 instance families</p> </li> <li> <p> <code>l40s</code>: Uses G6e instance family</p> </li> <li> <p> <code>rtx-pro-server-6000</code>: Uses G7e instance family</p> </li> </ul> </note>
    # @!attribute selections
    #   <p>A list of accelerator capabilities requested for this fleet. Only Amazon Elastic Compute Cloud instances that provide these capabilities will be used. For example, if you specify both L4 and T4 chips, Amazon Web Services Deadline Cloud will use Amazon EC2 instances that have either the L4 or the T4 chip installed.</p> <important> <ul> <li> <p>You must specify at least one accelerator selection.</p> </li> <li> <p>You cannot specify the same accelerator name multiple times in the selections list.</p> </li> <li> <p>All accelerators in the selections must use the same runtime version.</p> </li> </ul> </important>
    #   @return [Array<Types::AcceleratorSelection>]
    # @!attribute count
    #   <p>The number of GPU accelerators specified for worker hosts in this fleet.</p> <important> <p>You must specify either <code>acceleratorCapabilities.count.max</code> or <code>allowedInstanceTypes</code> when using accelerator capabilities. If you don't specify a maximum count, Amazon Web Services Deadline Cloud uses the instance types you specify in <code>allowedInstanceTypes</code> to determine the maximum number of accelerators.</p> </important>
    #   @return [Types::AcceleratorCountRange]
    class AcceleratorCapabilities < Struct.new(
      nil,
      :selections,
      :count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the maximum and minimum number of GPU accelerators required for a worker instance..</p>
    # @!attribute min
    #   <p>The minimum number of GPU accelerators in the worker host.</p>
    #   @return [Integer]
    # @!attribute max
    #   <p>The maximum number of GPU accelerators in the worker host.</p>
    #   @return [Integer]
    class AcceleratorCountRange < Struct.new(
      nil,
      :min,
      :max,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a specific GPU accelerator required for an Amazon Elastic Compute Cloud worker host.</p>
    # @!attribute name
    #   <p>The name of the chip used by the GPU accelerator.</p> <p>The available GPU accelerators are:</p> <ul> <li> <p> <code>t4</code> - NVIDIA T4 Tensor Core GPU (16 GiB memory)</p> </li> <li> <p> <code>a10g</code> - NVIDIA A10G Tensor Core GPU (24 GiB memory)</p> </li> <li> <p> <code>l4</code> - NVIDIA L4 Tensor Core GPU (24 GiB memory)</p> </li> <li> <p> <code>l40s</code> - NVIDIA L40S Tensor Core GPU (48 GiB memory)</p> </li> <li> <p> <code>rtx-pro-server-6000</code> - NVIDIA RTX PRO Server 6000 GPU (96 GiB memory)</p> </li> </ul>
    #   @return [String]
    # @!attribute runtime
    #   <p>Specifies the runtime driver to use for the GPU accelerator. You must use the same runtime for all GPUs in a fleet. </p> <p>You can choose from the following runtimes:</p> <ul> <li> <p> <code>latest</code> - Use the latest runtime available for the chip. If you specify <code>latest</code> and a new version of the runtime is released, the new version of the runtime is used.</p> </li> <li> <p> <code>grid:r580</code> - <a href="https://docs.nvidia.com/vgpu/19.0/index.html">NVIDIA vGPU software 19</a> </p> </li> <li> <p> <code>grid:r570</code> - <a href="https://docs.nvidia.com/vgpu/18.0/index.html">NVIDIA vGPU software 18</a> </p> </li> <li> <p> <code>grid:r535</code> - <a href="https://docs.nvidia.com/vgpu/16.0/index.html">NVIDIA vGPU software 16</a> </p> </li> </ul> <p>If you don't specify a runtime, Amazon Web Services Deadline Cloud uses <code>latest</code> as the default. However, if you have multiple accelerators and specify <code>latest</code> for some and leave others blank, Amazon Web Services Deadline Cloud raises an exception.</p> <important> <p>Not all runtimes are compatible with all accelerator types:</p> <ul> <li> <p> <code>t4</code> and <code>a10g</code>: Support all runtimes (<code>grid:r580</code>, <code>grid:r570</code>, <code>grid:r535</code>)</p> </li> <li> <p> <code>l4</code> and <code>l40s</code>: Only support <code>grid:r570</code> and newer</p> </li> <li> <p> <code>rtx-pro-server-6000</code>: Only supports <code>grid:r580</code> </p> </li> </ul> <p>All accelerators in a fleet must use the same runtime version. You cannot mix different runtime versions within a single fleet.</p> </important> <note> <p>When you specify <code>latest</code>, it resolves to <code>grid:r580</code> for all currently supported accelerators.</p> </note>
    #   @return [String]
    class AcceleratorSelection < Struct.new(
      nil,
      :name,
      :runtime,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:runtime] = 'latest' unless options.key?(:runtime)
        super
      end
    end

    # <p>Defines the maximum and minimum amount of memory, in MiB, to use for the accelerator.</p>
    # @!attribute min
    #   <p>The minimum amount of memory to use for the accelerator, measured in MiB.</p>
    #   @return [Integer]
    # @!attribute max
    #   <p>The maximum amount of memory to use for the accelerator, measured in MiB.</p>
    #   @return [Integer]
    class AcceleratorTotalMemoryMiBRange < Struct.new(
      nil,
      :min,
      :max,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You don't have permission to perform the action.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute context
    #   <p>Information about the resources in use when the exception was thrown.</p>
    #   @return [Hash<String, String>]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      :context,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information about the number of resources used.</p>
    # @!attribute limit_id
    #   <p>The unique identifier of the limit.</p>
    #   @return [String]
    # @!attribute count
    #   <p>The number of limit resources used.</p>
    #   @return [Integer]
    class AcquiredLimit < Struct.new(
      nil,
      :limit_id,
      :count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The assigned starting environment for a worker during session.</p>
    # @!attribute environment_id
    #   <p>The environment ID of the assigned environment at the start of a session.</p>
    #   @return [String]
    class AssignedEnvironmentEnterSessionActionDefinition < Struct.new(
      nil,
      :environment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The assigned environment when a worker exits a session.</p>
    # @!attribute environment_id
    #   <p>The environment ID of the assigned environment when exiting a session.</p>
    #   @return [String]
    class AssignedEnvironmentExitSessionActionDefinition < Struct.new(
      nil,
      :environment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The assigned session for the worker.</p>
    # @!attribute queue_id
    #   <p>The queue ID of the assigned session.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID for the assigned session.</p>
    #   @return [String]
    # @!attribute session_actions
    #   <p>The session actions to apply to the assigned session.</p>
    #   @return [Array<Types::AssignedSessionAction>]
    # @!attribute log_configuration
    #   <p>The log configuration for the worker's assigned session.</p>
    #   @return [Types::LogConfiguration]
    # @!attribute metadata
    #   <p>Key-value hints that the service provides to guide how the session runs. This value is used by the worker agent.</p>
    #   @return [Hash<String, String>]
    class AssignedSession < Struct.new(
      nil,
      :queue_id,
      :job_id,
      :session_actions,
      :log_configuration,
      :metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The action for a session defined by the session action ID.</p>
    # @!attribute session_action_id
    #   <p>The session action ID for the assigned session.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>The definition of the assigned session action.</p>
    #   @return [Types::AssignedSessionActionDefinition]
    class AssignedSessionAction < Struct.new(
      nil,
      :session_action_id,
      :definition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The definition of the assigned session action.</p>
    # @!attribute env_enter
    #   <p>The environment a session starts on.</p>
    #   @return [Types::AssignedEnvironmentEnterSessionActionDefinition]
    # @!attribute env_exit
    #   <p>The environment a session exits from.</p>
    #   @return [Types::AssignedEnvironmentExitSessionActionDefinition]
    # @!attribute task_run
    #   <p>The task run.</p>
    #   @return [Types::AssignedTaskRunSessionActionDefinition]
    # @!attribute sync_input_job_attachments
    #   <p>The job attachments to sync for the assigned session action.</p>
    #   @return [Types::AssignedSyncInputJobAttachmentsSessionActionDefinition]
    class AssignedSessionActionDefinition < Struct.new(
      :env_enter,
      :env_exit,
      :task_run,
      :sync_input_job_attachments,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class EnvEnter < AssignedSessionActionDefinition; end
      class EnvExit < AssignedSessionActionDefinition; end
      class TaskRun < AssignedSessionActionDefinition; end
      class SyncInputJobAttachments < AssignedSessionActionDefinition; end
      class Unknown < AssignedSessionActionDefinition; end
    end

    # <p>The assigned session action definition for syncing input job attachments.</p>
    # @!attribute step_id
    #   <p>The step ID for the assigned sync input job attachments session action.</p>
    #   @return [String]
    class AssignedSyncInputJobAttachmentsSessionActionDefinition < Struct.new(
      nil,
      :step_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specific task, step, and parameters to include.</p>
    # @!attribute task_id
    #   <p>The task ID.</p>
    #   @return [String]
    # @!attribute step_id
    #   <p>The step ID.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The parameters to include.</p>
    #   @return [Hash<String, Types::TaskParameterValue>]
    class AssignedTaskRunSessionActionDefinition < Struct.new(
      nil,
      :task_id,
      :step_id,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared member fields for Associate inputs and {Resource}Member response structures.
    # principalId is excluded because it has @httpLabel on inputs but not on responses.
    # @!attribute farm_id
    #   <p>The ID of the farm to associate with the member.</p>
    #   @return [String]
    # @!attribute principal_type
    #   <p>The principal type of the member to associate with the farm.</p>
    #   @return [String]
    # @!attribute identity_store_id
    #   <p>The identity store ID of the member to associate with the farm.</p>
    #   @return [String]
    # @!attribute membership_level
    #   <p>The principal's membership level for the associated farm.</p>
    #   @return [String]
    # @!attribute principal_id
    #   <p>The member's principal ID to associate with the farm.</p>
    #   @return [String]
    # @!attribute identity_center_region
    #   <p>The Region of the IAM Identity Center instance. If not provided, the service defaults to the Region of the farm.</p>
    #   @return [String]
    class AssociateMemberToFarmRequest < Struct.new(
      nil,
      :farm_id,
      :principal_type,
      :identity_store_id,
      :membership_level,
      :principal_id,
      :identity_center_region,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class AssociateMemberToFarmResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared member fields for Associate inputs and {Resource}Member response structures.
    # principalId is excluded because it has @httpLabel on inputs but not on responses.
    # @!attribute farm_id
    #   <p>The farm ID of the fleet to associate with the member.</p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p>The ID of the fleet to associate with a member.</p>
    #   @return [String]
    # @!attribute principal_type
    #   <p>The member's principal type to associate with the fleet.</p>
    #   @return [String]
    # @!attribute identity_store_id
    #   <p>The member's identity store ID to associate with the fleet.</p>
    #   @return [String]
    # @!attribute membership_level
    #   <p>The principal's membership level for the associated fleet.</p>
    #   @return [String]
    # @!attribute principal_id
    #   <p>The member's principal ID to associate with a fleet.</p>
    #   @return [String]
    # @!attribute identity_center_region
    #   <p>The Region of the IAM Identity Center instance. If not provided, the service defaults to the Region of the farm.</p>
    #   @return [String]
    class AssociateMemberToFleetRequest < Struct.new(
      nil,
      :farm_id,
      :fleet_id,
      :principal_type,
      :identity_store_id,
      :membership_level,
      :principal_id,
      :identity_center_region,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class AssociateMemberToFleetResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared member fields for Associate inputs and {Resource}Member response structures.
    # principalId is excluded because it has @httpLabel on inputs but not on responses.
    # @!attribute farm_id
    #   <p>The farm ID of the job to associate with the member.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID to associate to the member.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID to associate with the member.</p>
    #   @return [String]
    # @!attribute principal_type
    #   <p>The member's principal type to associate with the job.</p>
    #   @return [String]
    # @!attribute identity_store_id
    #   <p>The member's identity store ID to associate with the job.</p>
    #   @return [String]
    # @!attribute membership_level
    #   <p>The principal's membership level for the associated job.</p>
    #   @return [String]
    # @!attribute principal_id
    #   <p>The member's principal ID to associate with the job.</p>
    #   @return [String]
    # @!attribute identity_center_region
    #   <p>The Region of the IAM Identity Center instance. If not provided, the service defaults to the Region of the farm.</p>
    #   @return [String]
    class AssociateMemberToJobRequest < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :job_id,
      :principal_type,
      :identity_store_id,
      :membership_level,
      :principal_id,
      :identity_center_region,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class AssociateMemberToJobResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared member fields for Associate inputs and {Resource}Member response structures.
    # principalId is excluded because it has @httpLabel on inputs but not on responses.
    # @!attribute farm_id
    #   <p>The farm ID of the queue to associate with the member.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The ID of the queue to associate to the member.</p>
    #   @return [String]
    # @!attribute principal_type
    #   <p>The member's principal type to associate with the queue.</p>
    #   @return [String]
    # @!attribute identity_store_id
    #   <p>The member's identity store ID to associate with the queue.</p>
    #   @return [String]
    # @!attribute membership_level
    #   <p>The principal's membership level for the associated queue.</p>
    #   @return [String]
    # @!attribute principal_id
    #   <p>The member's principal ID to associate with the queue.</p>
    #   @return [String]
    # @!attribute identity_center_region
    #   <p>The Region of the IAM Identity Center instance. If not provided, the service defaults to the Region of the farm.</p>
    #   @return [String]
    class AssociateMemberToQueueRequest < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :principal_type,
      :identity_store_id,
      :membership_level,
      :principal_id,
      :identity_center_region,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class AssociateMemberToQueueResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID for the fleet's farm.</p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p>The fleet ID.</p>
    #   @return [String]
    class AssumeFleetRoleForReadRequest < Struct.new(
      nil,
      :farm_id,
      :fleet_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared response body for AssumeRole operations where credentials are required.
    # AssumeQueueRoleForWorkerResponse is excluded because credentials is optional there
    # because Queue.roleArn is optional, so the mixin's @required trait would be incorrect.
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute credentials
    #   <p>The credentials for the fleet role.</p>
    #   @return [Types::AwsCredentials]
    class AssumeFleetRoleForReadResponse < Struct.new(
      nil,
      :credentials,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID for the fleet's farm.</p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p>The fleet ID that contains the worker.</p>
    #   @return [String]
    # @!attribute worker_id
    #   <p>The ID of the worker assuming the fleet role.</p>
    #   @return [String]
    class AssumeFleetRoleForWorkerRequest < Struct.new(
      nil,
      :farm_id,
      :fleet_id,
      :worker_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared response body for AssumeRole operations where credentials are required.
    # AssumeQueueRoleForWorkerResponse is excluded because credentials is optional there
    # because Queue.roleArn is optional, so the mixin's @required trait would be incorrect.
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute credentials
    #   <p>The credentials for the worker.</p>
    #   @return [Types::AwsCredentials]
    class AssumeFleetRoleForWorkerResponse < Struct.new(
      nil,
      :credentials,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID of the farm containing the queue.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID.</p>
    #   @return [String]
    class AssumeQueueRoleForReadRequest < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared response body for AssumeRole operations where credentials are required.
    # AssumeQueueRoleForWorkerResponse is excluded because credentials is optional there
    # because Queue.roleArn is optional, so the mixin's @required trait would be incorrect.
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute credentials
    #   <p>The credentials for the queue role.</p>
    #   @return [Types::AwsCredentials]
    class AssumeQueueRoleForReadResponse < Struct.new(
      nil,
      :credentials,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID of the queue that the user assumes the role for.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID of the queue that the user assumes the role for.</p>
    #   @return [String]
    class AssumeQueueRoleForUserRequest < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared response body for AssumeRole operations where credentials are required.
    # AssumeQueueRoleForWorkerResponse is excluded because credentials is optional there
    # because Queue.roleArn is optional, so the mixin's @required trait would be incorrect.
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute credentials
    #   <p>The credentials for the queue role that a user has access to.</p>
    #   @return [Types::AwsCredentials]
    class AssumeQueueRoleForUserResponse < Struct.new(
      nil,
      :credentials,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID of the worker assuming the queue role.</p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p>The fleet ID of the worker assuming the queue role.</p>
    #   @return [String]
    # @!attribute worker_id
    #   <p>The worker ID of the worker assuming the queue role.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID of the worker assuming the queue role.</p>
    #   @return [String]
    class AssumeQueueRoleForWorkerRequest < Struct.new(
      nil,
      :farm_id,
      :fleet_id,
      :worker_id,
      :queue_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute credentials
    #   <p>The Amazon Web Services credentials for the role that the worker is assuming.</p>
    #   @return [Types::AwsCredentials]
    class AssumeQueueRoleForWorkerResponse < Struct.new(
      nil,
      :credentials,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The job attachments.</p>
    # @!attribute manifests
    #   <p>The manifest properties for the attachments.</p>
    #   @return [Array<Types::ManifestProperties>]
    # @!attribute file_system
    #   <p>The file system location for the attachments.</p>
    #   @return [String]
    class Attachments < Struct.new(
      nil,
      :manifests,
      :file_system,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:file_system] = 'COPIED' unless options.key?(:file_system)
        super
      end
    end

    # <p>The Identity and Access Management credentials.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute access_key_id
    #   <p>The IAM access key ID.</p>
    #   @return [String]
    # @!attribute secret_access_key
    #   <p>The IAM secret access key.</p>
    #   @return [String]
    # @!attribute session_token
    #   <p>The IAM session token</p>
    #   @return [String]
    # @!attribute expiration
    #   <p>The expiration date and time of the IAM credentials.</p>
    #   @return [Time]
    class AwsCredentials < Struct.new(
      nil,
      :access_key_id,
      :secret_access_key,
      :session_token,
      :expiration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID of the worker that's fetching job details. The worker must have an assignment on a job to fetch job details.</p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p>The fleet ID of the worker that's fetching job details. The worker must have an assignment on a job to fetch job details.</p>
    #   @return [String]
    # @!attribute worker_id
    #   <p>The worker ID of the worker containing the job details to get.</p>
    #   @return [String]
    # @!attribute identifiers
    #   <p>The job identifiers to include within the job entity batch details.</p>
    #   @return [Array<Types::JobEntityIdentifiersUnion>]
    class BatchGetJobEntityRequest < Struct.new(
      nil,
      :farm_id,
      :fleet_id,
      :worker_id,
      :identifiers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entities
    #   <p>A list of the job entities, or details, in the batch.</p>
    #   @return [Array<Types::JobEntity>]
    # @!attribute errors
    #   <p>A list of errors from the job error logs for the batch.</p>
    #   @return [Array<Types::GetJobEntityError>]
    class BatchGetJobEntityResponse < Struct.new(
      nil,
      :entities,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The error details for a job that could not be retrieved in a batch get operation.</p>
    # @!attribute farm_id
    #   <p>The farm ID of the job that could not be retrieved.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID of the job that could not be retrieved.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID of the job that could not be retrieved.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message.</p>
    #   @return [String]
    class BatchGetJobError < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :job_id,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The identifiers for a job.</p>
    # @!attribute farm_id
    #   <p>The farm ID of the job.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID of the job.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID.</p>
    #   @return [String]
    class BatchGetJobIdentifier < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a job returned in a batch get operation.</p>
    # @!attribute farm_id
    #   <p>The farm ID of the job.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID of the job.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the job.</p>
    #   @return [String]
    # @!attribute lifecycle_status
    #   <p>The life cycle status of the job.</p>
    #   @return [String]
    # @!attribute lifecycle_status_message
    #   <p>A message that communicates the status of the life cycle.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The job priority.</p>
    #   @return [Integer]
    # @!attribute created_at
    #   <p>The date and time the resource was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user or system that created this resource.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time the resource was updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user or system that updated this resource.</p>
    #   @return [String]
    # @!attribute started_at
    #   <p>The date and time the resource started running.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The date and time the resource ended running.</p>
    #   @return [Time]
    # @!attribute task_run_status
    #   <p>The task run status for the job.</p>
    #   @return [String]
    # @!attribute target_task_run_status
    #   <p>The task status to start with on the job.</p>
    #   @return [String]
    # @!attribute task_run_status_counts
    #   <p>The number of tasks for each run status for the job.</p>
    #   @return [Hash<String, Integer>]
    # @!attribute task_failure_retry_count
    #   <p>The number of times that tasks failed and were retried.</p>
    #   @return [Integer]
    # @!attribute storage_profile_id
    #   <p>The storage profile ID associated with the job.</p>
    #   @return [String]
    # @!attribute max_failed_tasks_count
    #   <p>The number of task failures before the job stops running and is marked as <code>FAILED</code>.</p>
    #   @return [Integer]
    # @!attribute max_retries_per_task
    #   <p>The maximum number of retries per failed tasks.</p>
    #   @return [Integer]
    # @!attribute parameters
    #   <p>The parameters for the job.</p>
    #   @return [Hash<String, Types::JobParameter>]
    # @!attribute attachments
    #   <p>The attachments for the job.</p>
    #   @return [Types::Attachments]
    # @!attribute description
    #   <p>The description of the job.</p>
    #   @return [String]
    # @!attribute max_worker_count
    #   <p>The maximum number of worker hosts that can concurrently process a job.</p>
    #   @return [Integer]
    # @!attribute source_job_id
    #   <p>The job ID for the source job.</p>
    #   @return [String]
    class BatchGetJobItem < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :job_id,
      :name,
      :lifecycle_status,
      :lifecycle_status_message,
      :priority,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      :started_at,
      :ended_at,
      :task_run_status,
      :target_task_run_status,
      :task_run_status_counts,
      :task_failure_retry_count,
      :storage_profile_id,
      :max_failed_tasks_count,
      :max_retries_per_task,
      :parameters,
      :attachments,
      :description,
      :max_worker_count,
      :source_job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifiers
    #   <p>The list of job identifiers to retrieve. You can specify up to 100 identifiers per request.</p>
    #   @return [Array<Types::BatchGetJobIdentifier>]
    class BatchGetJobRequest < Struct.new(
      nil,
      :identifiers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute jobs
    #   <p>A list of jobs that were successfully retrieved.</p>
    #   @return [Array<Types::BatchGetJobItem>]
    # @!attribute errors
    #   <p>A list of errors for jobs that could not be retrieved.</p>
    #   @return [Array<Types::BatchGetJobError>]
    class BatchGetJobResponse < Struct.new(
      nil,
      :jobs,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The error details for a session action that could not be retrieved in a batch get operation.</p>
    # @!attribute farm_id
    #   <p>The farm ID of the session action that could not be retrieved.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID of the session action that could not be retrieved.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID of the session action that could not be retrieved.</p>
    #   @return [String]
    # @!attribute session_action_id
    #   <p>The session action ID of the session action that could not be retrieved.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message.</p>
    #   @return [String]
    class BatchGetSessionActionError < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :job_id,
      :session_action_id,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The identifiers for a session action.</p>
    # @!attribute farm_id
    #   <p>The farm ID of the session action.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID of the session action.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID of the session action.</p>
    #   @return [String]
    # @!attribute session_action_id
    #   <p>The session action ID.</p>
    #   @return [String]
    class BatchGetSessionActionIdentifier < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :job_id,
      :session_action_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a session action returned in a batch get operation.</p>
    # @!attribute farm_id
    #   <p>The farm ID of the session action.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID of the session action.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID of the session action.</p>
    #   @return [String]
    # @!attribute session_action_id
    #   <p>The session action ID.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the session action.</p>
    #   @return [String]
    # @!attribute started_at
    #   <p>The date and time the resource started running.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The date and time the resource ended running.</p>
    #   @return [Time]
    # @!attribute worker_updated_at
    #   <p>The date and time the resource was updated by a worker.</p>
    #   @return [Time]
    # @!attribute progress_percent
    #   <p>The completion percentage for the session action.</p>
    #   @return [Float]
    # @!attribute manifests
    #   <p>The manifests for the session action.</p>
    #   @return [Array<Types::TaskRunManifestPropertiesResponse>]
    # @!attribute session_id
    #   <p>The session ID for the session action.</p>
    #   @return [String]
    # @!attribute process_exit_code
    #   <p>The exit code to apply to the session action.</p>
    #   @return [Integer]
    # @!attribute progress_message
    #   <p>The message that communicates the progress of the session action.</p>
    #   @return [String]
    # @!attribute acquired_limits
    #   <p>The limits that were acquired for the session action.</p>
    #   @return [Array<Types::AcquiredLimit>]
    # @!attribute definition
    #   <p>The session action definition.</p>
    #   @return [Types::SessionActionDefinition]
    class BatchGetSessionActionItem < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :job_id,
      :session_action_id,
      :status,
      :started_at,
      :ended_at,
      :worker_updated_at,
      :progress_percent,
      :manifests,
      :session_id,
      :process_exit_code,
      :progress_message,
      :acquired_limits,
      :definition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifiers
    #   <p>The list of session action identifiers to retrieve. You can specify up to 100 identifiers per request.</p>
    #   @return [Array<Types::BatchGetSessionActionIdentifier>]
    class BatchGetSessionActionRequest < Struct.new(
      nil,
      :identifiers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_actions
    #   <p>A list of session actions that were successfully retrieved.</p>
    #   @return [Array<Types::BatchGetSessionActionItem>]
    # @!attribute errors
    #   <p>A list of errors for session actions that could not be retrieved.</p>
    #   @return [Array<Types::BatchGetSessionActionError>]
    class BatchGetSessionActionResponse < Struct.new(
      nil,
      :session_actions,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The error details for a session that could not be retrieved in a batch get operation.</p>
    # @!attribute farm_id
    #   <p>The farm ID of the session that could not be retrieved.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID of the session that could not be retrieved.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID of the session that could not be retrieved.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The session ID of the session that could not be retrieved.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message.</p>
    #   @return [String]
    class BatchGetSessionError < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :job_id,
      :session_id,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The identifiers for a session.</p>
    # @!attribute farm_id
    #   <p>The farm ID of the session.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID of the session.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID of the session.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The session ID.</p>
    #   @return [String]
    class BatchGetSessionIdentifier < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :job_id,
      :session_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a session returned in a batch get operation.</p>
    # @!attribute farm_id
    #   <p>The farm ID of the session.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID of the session.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID of the session.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The session ID.</p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p>The fleet ID of the session.</p>
    #   @return [String]
    # @!attribute worker_id
    #   <p>The worker ID of the session.</p>
    #   @return [String]
    # @!attribute started_at
    #   <p>The date and time the resource started running.</p>
    #   @return [Time]
    # @!attribute lifecycle_status
    #   <p>The life cycle status of the session.</p>
    #   @return [String]
    # @!attribute ended_at
    #   <p>The date and time the resource ended running.</p>
    #   @return [Time]
    # @!attribute target_lifecycle_status
    #   <p>The target life cycle status for the session.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time the resource was updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user or system that updated this resource.</p>
    #   @return [String]
    # @!attribute log
    #   <p>The session log.</p>
    #   @return [Types::LogConfiguration]
    # @!attribute host_properties
    #   <p>The host properties for the session.</p>
    #   @return [Types::HostPropertiesResponse]
    # @!attribute worker_log
    #   <p>The worker log for the session.</p>
    #   @return [Types::LogConfiguration]
    class BatchGetSessionItem < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :job_id,
      :session_id,
      :fleet_id,
      :worker_id,
      :started_at,
      :lifecycle_status,
      :ended_at,
      :target_lifecycle_status,
      :updated_at,
      :updated_by,
      :log,
      :host_properties,
      :worker_log,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifiers
    #   <p>The list of session identifiers to retrieve. You can specify up to 100 identifiers per request.</p>
    #   @return [Array<Types::BatchGetSessionIdentifier>]
    class BatchGetSessionRequest < Struct.new(
      nil,
      :identifiers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sessions
    #   <p>A list of sessions that were successfully retrieved.</p>
    #   @return [Array<Types::BatchGetSessionItem>]
    # @!attribute errors
    #   <p>A list of errors for sessions that could not be retrieved.</p>
    #   @return [Array<Types::BatchGetSessionError>]
    class BatchGetSessionResponse < Struct.new(
      nil,
      :sessions,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The error details for a step that could not be retrieved in a batch get operation.</p>
    # @!attribute farm_id
    #   <p>The farm ID of the step that could not be retrieved.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID of the step that could not be retrieved.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID of the step that could not be retrieved.</p>
    #   @return [String]
    # @!attribute step_id
    #   <p>The step ID of the step that could not be retrieved.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message.</p>
    #   @return [String]
    class BatchGetStepError < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :job_id,
      :step_id,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The identifiers for a step.</p>
    # @!attribute farm_id
    #   <p>The farm ID of the step.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID of the step.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID of the step.</p>
    #   @return [String]
    # @!attribute step_id
    #   <p>The step ID.</p>
    #   @return [String]
    class BatchGetStepIdentifier < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :job_id,
      :step_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a step returned in a batch get operation.</p>
    # @!attribute farm_id
    #   <p>The farm ID of the step.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID of the step.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID of the step.</p>
    #   @return [String]
    # @!attribute step_id
    #   <p>The step ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the step.</p>
    #   @return [String]
    # @!attribute lifecycle_status
    #   <p>The life cycle status of the step.</p>
    #   @return [String]
    # @!attribute lifecycle_status_message
    #   <p>A message that communicates the status of the life cycle.</p>
    #   @return [String]
    # @!attribute task_run_status
    #   <p>The task run status for the step.</p>
    #   @return [String]
    # @!attribute task_run_status_counts
    #   <p>The number of tasks for each run status for the step.</p>
    #   @return [Hash<String, Integer>]
    # @!attribute task_failure_retry_count
    #   <p>The number of times that tasks failed and were retried.</p>
    #   @return [Integer]
    # @!attribute target_task_run_status
    #   <p>The task status to start with on the step.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the resource was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user or system that created this resource.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time the resource was updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user or system that updated this resource.</p>
    #   @return [String]
    # @!attribute started_at
    #   <p>The date and time the resource started running.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The date and time the resource ended running.</p>
    #   @return [Time]
    # @!attribute dependency_counts
    #   <p>The number of dependencies for the step.</p>
    #   @return [Types::DependencyCounts]
    # @!attribute required_capabilities
    #   <p>The required capabilities for the step.</p>
    #   @return [Types::StepRequiredCapabilities]
    # @!attribute parameter_space
    #   <p>The parameter space for the step.</p>
    #   @return [Types::ParameterSpace]
    # @!attribute description
    #   <p>The description of the step.</p>
    #   @return [String]
    class BatchGetStepItem < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :job_id,
      :step_id,
      :name,
      :lifecycle_status,
      :lifecycle_status_message,
      :task_run_status,
      :task_run_status_counts,
      :task_failure_retry_count,
      :target_task_run_status,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      :started_at,
      :ended_at,
      :dependency_counts,
      :required_capabilities,
      :parameter_space,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifiers
    #   <p>The list of step identifiers to retrieve. You can specify up to 100 identifiers per request.</p>
    #   @return [Array<Types::BatchGetStepIdentifier>]
    class BatchGetStepRequest < Struct.new(
      nil,
      :identifiers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute steps
    #   <p>A list of steps that were successfully retrieved.</p>
    #   @return [Array<Types::BatchGetStepItem>]
    # @!attribute errors
    #   <p>A list of errors for steps that could not be retrieved.</p>
    #   @return [Array<Types::BatchGetStepError>]
    class BatchGetStepResponse < Struct.new(
      nil,
      :steps,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The error details for a task that could not be retrieved in a batch get operation.</p>
    # @!attribute farm_id
    #   <p>The farm ID of the task that could not be retrieved.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID of the task that could not be retrieved.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID of the task that could not be retrieved.</p>
    #   @return [String]
    # @!attribute step_id
    #   <p>The step ID of the task that could not be retrieved.</p>
    #   @return [String]
    # @!attribute task_id
    #   <p>The task ID of the task that could not be retrieved.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message.</p>
    #   @return [String]
    class BatchGetTaskError < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :job_id,
      :step_id,
      :task_id,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The identifiers for a task.</p>
    # @!attribute farm_id
    #   <p>The farm ID of the task.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID of the task.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID of the task.</p>
    #   @return [String]
    # @!attribute step_id
    #   <p>The step ID of the task.</p>
    #   @return [String]
    # @!attribute task_id
    #   <p>The task ID.</p>
    #   @return [String]
    class BatchGetTaskIdentifier < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :job_id,
      :step_id,
      :task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a task returned in a batch get operation.</p>
    # @!attribute farm_id
    #   <p>The farm ID of the task.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID of the task.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID of the task.</p>
    #   @return [String]
    # @!attribute step_id
    #   <p>The step ID of the task.</p>
    #   @return [String]
    # @!attribute task_id
    #   <p>The task ID.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the resource was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user or system that created this resource.</p>
    #   @return [String]
    # @!attribute run_status
    #   <p>The run status of the task.</p>
    #   @return [String]
    # @!attribute target_run_status
    #   <p>The run status with which to start the task.</p>
    #   @return [String]
    # @!attribute failure_retry_count
    #   <p>The number of times the task failed and was retried.</p>
    #   @return [Integer]
    # @!attribute started_at
    #   <p>The date and time the resource started running.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The date and time the resource ended running.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the resource was updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user or system that updated this resource.</p>
    #   @return [String]
    # @!attribute latest_session_action_id
    #   <p>The latest session action for the task.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The parameters for the task.</p>
    #   @return [Hash<String, Types::TaskParameterValue>]
    class BatchGetTaskItem < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :job_id,
      :step_id,
      :task_id,
      :created_at,
      :created_by,
      :run_status,
      :target_run_status,
      :failure_retry_count,
      :started_at,
      :ended_at,
      :updated_at,
      :updated_by,
      :latest_session_action_id,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifiers
    #   <p>The list of task identifiers to retrieve. You can specify up to 100 identifiers per request.</p>
    #   @return [Array<Types::BatchGetTaskIdentifier>]
    class BatchGetTaskRequest < Struct.new(
      nil,
      :identifiers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tasks
    #   <p>A list of tasks that were successfully retrieved.</p>
    #   @return [Array<Types::BatchGetTaskItem>]
    # @!attribute errors
    #   <p>A list of errors for tasks that could not be retrieved.</p>
    #   @return [Array<Types::BatchGetTaskError>]
    class BatchGetTaskResponse < Struct.new(
      nil,
      :tasks,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The error details for a worker that could not be retrieved in a batch get operation.</p>
    # @!attribute farm_id
    #   <p>The farm ID of the worker that could not be retrieved.</p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p>The fleet ID of the worker that could not be retrieved.</p>
    #   @return [String]
    # @!attribute worker_id
    #   <p>The worker ID of the worker that could not be retrieved.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message.</p>
    #   @return [String]
    class BatchGetWorkerError < Struct.new(
      nil,
      :farm_id,
      :fleet_id,
      :worker_id,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The identifiers for a worker.</p>
    # @!attribute farm_id
    #   <p>The farm ID of the worker.</p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p>The fleet ID of the worker.</p>
    #   @return [String]
    # @!attribute worker_id
    #   <p>The worker ID.</p>
    #   @return [String]
    class BatchGetWorkerIdentifier < Struct.new(
      nil,
      :farm_id,
      :fleet_id,
      :worker_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a worker returned in a batch get operation.</p>
    # @!attribute farm_id
    #   <p>The farm ID of the worker.</p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p>The fleet ID of the worker.</p>
    #   @return [String]
    # @!attribute worker_id
    #   <p>The worker ID.</p>
    #   @return [String]
    # @!attribute host_properties
    #   <p>The host properties for the worker.</p>
    #   @return [Types::HostPropertiesResponse]
    # @!attribute status
    #   <p>The status of the worker.</p>
    #   @return [String]
    # @!attribute log
    #   <p>The log configuration for the worker.</p>
    #   @return [Types::LogConfiguration]
    # @!attribute created_at
    #   <p>The date and time the resource was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user or system that created this resource.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time the resource was updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user or system that updated this resource.</p>
    #   @return [String]
    class BatchGetWorkerItem < Struct.new(
      nil,
      :farm_id,
      :fleet_id,
      :worker_id,
      :host_properties,
      :status,
      :log,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifiers
    #   <p>The list of worker identifiers to retrieve. You can specify up to 100 identifiers per request.</p>
    #   @return [Array<Types::BatchGetWorkerIdentifier>]
    class BatchGetWorkerRequest < Struct.new(
      nil,
      :identifiers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workers
    #   <p>A list of workers that were successfully retrieved.</p>
    #   @return [Array<Types::BatchGetWorkerItem>]
    # @!attribute errors
    #   <p>A list of errors for workers that could not be retrieved.</p>
    #   @return [Array<Types::BatchGetWorkerError>]
    class BatchGetWorkerResponse < Struct.new(
      nil,
      :workers,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The error details for a job that could not be updated in a batch update operation.</p>
    # @!attribute farm_id
    #   <p>The farm ID of the job that could not be updated.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID of the job that could not be updated.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID of the job that could not be updated.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message.</p>
    #   @return [String]
    class BatchUpdateJobError < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :job_id,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a job to update in a batch update operation.</p>
    # @!attribute farm_id
    #   <p>The farm ID of the job to update.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID of the job to update.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID of the job to update.</p>
    #   @return [String]
    # @!attribute target_task_run_status
    #   <p>The task status to update the job's tasks to.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The job priority to update.</p>
    #   @return [Integer]
    # @!attribute max_failed_tasks_count
    #   <p>The number of task failures before the job stops running and is marked as <code>FAILED</code>.</p>
    #   @return [Integer]
    # @!attribute max_retries_per_task
    #   <p>The maximum number of retries per failed tasks.</p>
    #   @return [Integer]
    # @!attribute lifecycle_status
    #   <p>The status of a job in its lifecycle. When you change the status of the job to <code>ARCHIVED</code>, the job can't be scheduled or archived.</p> <important> <p>An archived job and its steps and tasks are deleted after 120 days. The job can't be recovered.</p> </important>
    #   @return [String]
    # @!attribute max_worker_count
    #   <p>The maximum number of worker hosts that can concurrently process a job.</p>
    #   @return [Integer]
    # @!attribute name
    #   <p>The name of the job to update.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the job to update.</p>
    #   @return [String]
    class BatchUpdateJobItem < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :job_id,
      :target_task_run_status,
      :priority,
      :max_failed_tasks_count,
      :max_retries_per_task,
      :lifecycle_status,
      :max_worker_count,
      :name,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>The unique token which the server uses to recognize retries of the same request.</p>
    #   @return [String]
    # @!attribute jobs
    #   <p>The list of jobs to update. You can specify up to 100 jobs per request.</p>
    #   @return [Array<Types::BatchUpdateJobItem>]
    class BatchUpdateJobRequest < Struct.new(
      nil,
      :client_token,
      :jobs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute errors
    #   <p>A list of errors for jobs that could not be updated.</p>
    #   @return [Array<Types::BatchUpdateJobError>]
    class BatchUpdateJobResponse < Struct.new(
      nil,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The error details for a task that could not be updated in a batch update operation.</p>
    # @!attribute farm_id
    #   <p>The farm ID of the task that could not be updated.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID of the task that could not be updated.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID of the task that could not be updated.</p>
    #   @return [String]
    # @!attribute step_id
    #   <p>The step ID of the task that could not be updated.</p>
    #   @return [String]
    # @!attribute task_id
    #   <p>The task ID of the task that could not be updated.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message.</p>
    #   @return [String]
    class BatchUpdateTaskError < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :job_id,
      :step_id,
      :task_id,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a task to update in a batch update operation.</p>
    # @!attribute farm_id
    #   <p>The farm ID of the task to update.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID of the task to update.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID of the task to update.</p>
    #   @return [String]
    # @!attribute step_id
    #   <p>The step ID of the task to update.</p>
    #   @return [String]
    # @!attribute task_id
    #   <p>The task ID of the task to update.</p>
    #   @return [String]
    # @!attribute target_run_status
    #   <p>The run status with which to start the task.</p>
    #   @return [String]
    class BatchUpdateTaskItem < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :job_id,
      :step_id,
      :task_id,
      :target_run_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>The unique token which the server uses to recognize retries of the same request.</p>
    #   @return [String]
    # @!attribute tasks
    #   <p>The list of tasks to update. You can specify up to 100 tasks per request.</p>
    #   @return [Array<Types::BatchUpdateTaskItem>]
    class BatchUpdateTaskRequest < Struct.new(
      nil,
      :client_token,
      :tasks,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute errors
    #   <p>A list of errors for tasks that could not be updated.</p>
    #   @return [Array<Types::BatchUpdateTaskError>]
    class BatchUpdateTaskResponse < Struct.new(
      nil,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The budget action to add.</p>
    # @!attribute type
    #   <p>The type of budget action to add.</p>
    #   @return [String]
    # @!attribute threshold_percentage
    #   <p>The percentage threshold for the budget action to add.</p>
    #   @return [Float]
    # @!attribute description
    #   <p>A description for the budget action to add.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    class BudgetActionToAdd < Struct.new(
      nil,
      :type,
      :threshold_percentage,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The budget action to remove.</p>
    # @!attribute type
    #   <p>The type of budget action to remove.</p>
    #   @return [String]
    # @!attribute threshold_percentage
    #   <p>The percentage threshold for the budget action to remove.</p>
    #   @return [Float]
    class BudgetActionToRemove < Struct.new(
      nil,
      :type,
      :threshold_percentage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The start and end time of the budget.</p>
    # @!attribute fixed
    #   <p>The fixed start and end time of the budget's schedule.</p>
    #   @return [Types::FixedBudgetSchedule]
    class BudgetSchedule < Struct.new(
      :fixed,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Fixed < BudgetSchedule; end
      class Unknown < BudgetSchedule; end
    end

    # <p>The budget summary.</p>
    # @!attribute budget_id
    #   <p>The budget ID.</p>
    #   @return [String]
    # @!attribute usage_tracking_resource
    #   <p>The resource used to track expenditure in the budget.</p>
    #   @return [Types::UsageTrackingResource]
    # @!attribute status
    #   <p>The status of the budget.</p> <ul> <li> <p> <code>ACTIVE</code>–The budget is being evaluated.</p> </li> <li> <p> <code>INACTIVE</code>–The budget is inactive. This can include Expired, Canceled, or deleted Deleted statuses.</p> </li> </ul>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the budget summary to update.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    # @!attribute approximate_dollar_limit
    #   <p>The approximate dollar limit of the budget.</p>
    #   @return [Float]
    # @!attribute usages
    #   <p>The consumed usage for the budget.</p>
    #   @return [Types::ConsumedUsages]
    # @!attribute created_by
    #   <p>The user or system that created this resource.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the resource was created.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user or system that updated this resource.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time the resource was updated.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the budget summary.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @deprecated
    #     ListBudgets no longer supports description. Use GetBudget if description is needed.
    #   @return [String]
    class BudgetSummary < Struct.new(
      nil,
      :budget_id,
      :usage_tracking_resource,
      :status,
      :display_name,
      :approximate_dollar_limit,
      :usages,
      :created_by,
      :created_at,
      :updated_by,
      :updated_at,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Your request has conflicting operations. This can occur if you're trying to perform more than one operation on the same resource at the same time.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>A description of the error.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource in use.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource in use.</p>
    #   @return [String]
    # @!attribute context
    #   <p>Information about the resources in use when the exception was thrown.</p>
    #   @return [Hash<String, String>]
    class ConflictException < Struct.new(
      nil,
      :message,
      :reason,
      :resource_id,
      :resource_type,
      :context,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The consumed usage for the resource.</p>
    # @!attribute approximate_dollar_usage
    #   <p>The amount of the budget consumed.</p>
    #   @return [Float]
    class ConsumedUsages < Struct.new(
      nil,
      :approximate_dollar_usage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID to copy.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID to copy.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID to copy.</p>
    #   @return [String]
    # @!attribute target_s3_location
    #   <p>The Amazon S3 bucket name and key where you would like to add a copy of the job template.</p>
    #   @return [Types::S3Location]
    class CopyJobTemplateRequest < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :job_id,
      :target_s3_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_type
    #   <p>The format of the job template, either <code>JSON</code> or <code>YAML</code>.</p>
    #   @return [String]
    class CopyJobTemplateResponse < Struct.new(
      nil,
      :template_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared displayName + description for Create operations where both are present.
    # displayName is @required here - this mixin is Create-only by design (Update has optional displayName).
    # @!attribute farm_id
    #   <p>The farm ID to include in this budget.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the budget.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the budget.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    # @!attribute client_token
    #   <p>The unique token which the server uses to recognize retries of the same request.</p>
    #   @return [String]
    # @!attribute usage_tracking_resource
    #   <p>The queue ID provided to this budget to track usage.</p>
    #   @return [Types::UsageTrackingResource]
    # @!attribute approximate_dollar_limit
    #   <p>The dollar limit based on consumed usage.</p>
    #   @return [Float]
    # @!attribute actions
    #   <p>The budget actions to specify what happens when the budget runs out.</p>
    #   @return [Array<Types::BudgetActionToAdd>]
    # @!attribute schedule
    #   <p>The schedule to associate with this budget.</p>
    #   @return [Types::BudgetSchedule]
    # @!attribute tags
    #   <p>Each tag consists of a tag key and a tag value. Tag keys and values are both required, but tag values can be empty strings.</p>
    #   @return [Hash<String, String>]
    class CreateBudgetRequest < Struct.new(
      nil,
      :farm_id,
      :display_name,
      :description,
      :client_token,
      :usage_tracking_resource,
      :approximate_dollar_limit,
      :actions,
      :schedule,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Mixin that adds an optional ARN field to response structures.
    # Apply to SummaryMixins (flows into Get, Summary, and BatchGet) and Create outputs.
    # @!attribute budget_id
    #   <p>The budget ID.</p>
    #   @return [String]
    class CreateBudgetResponse < Struct.new(
      nil,
      :budget_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared displayName + description for Create operations where both are present.
    # displayName is @required here - this mixin is Create-only by design (Update has optional displayName).
    # @!attribute client_token
    #   <p>The unique token which the server uses to recognize retries of the same request.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the farm.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the farm.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The ARN of the KMS key to use on the farm.</p>
    #   @return [String]
    # @!attribute cost_scale_factor
    #   <p>A multiplier applied to the farm's calculated costs for usage data and budget tracking. A value less than 1 represents a discount, a value greater than 1 represents a premium, and a value of 1 represents no adjustment. The default value is 1.</p>
    #   @return [Float]
    # @!attribute tags
    #   <p>The tags to add to your farm. Each tag consists of a tag key and a tag value. Tag keys and values are both required, but tag values can be empty strings.</p>
    #   @return [Hash<String, String>]
    class CreateFarmRequest < Struct.new(
      nil,
      :client_token,
      :display_name,
      :description,
      :kms_key_arn,
      :cost_scale_factor,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Mixin that adds an optional ARN field to response structures.
    # Apply to SummaryMixins (flows into Get, Summary, and BatchGet) and Create outputs.
    # @!attribute farm_id
    #   <p>The farm ID.</p>
    #   @return [String]
    class CreateFarmResponse < Struct.new(
      nil,
      :farm_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared displayName + description for Create operations where both are present.
    # displayName is @required here - this mixin is Create-only by design (Update has optional displayName).
    # @!attribute farm_id
    #   <p>The farm ID of the farm to connect to the fleet.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The unique token which the server uses to recognize retries of the same request.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the fleet.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the fleet.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The IAM role ARN for the role that the fleet's workers will use.</p>
    #   @return [String]
    # @!attribute min_worker_count
    #   <p>The minimum number of workers for the fleet.</p>
    #   @return [Integer]
    # @!attribute max_worker_count
    #   <p>The maximum number of workers for the fleet.</p> <p>Deadline Cloud limits the number of workers to less than or equal to the fleet's maximum worker count. The service maintains eventual consistency for the worker count. If you make multiple rapid calls to <code>CreateWorker</code> before the field updates, you might exceed your fleet's maximum worker count. For example, if your <code>maxWorkerCount</code> is 10 and you currently have 9 workers, making two quick <code>CreateWorker</code> calls might successfully create 2 workers instead of 1, resulting in 11 total workers.</p>
    #   @return [Integer]
    # @!attribute configuration
    #   <p>The configuration settings for the fleet. Customer managed fleets are self-managed. Service managed Amazon EC2 fleets are managed by Deadline Cloud.</p>
    #   @return [Types::FleetConfiguration]
    # @!attribute tags
    #   <p>Each tag consists of a tag key and a tag value. Tag keys and values are both required, but tag values can be empty strings.</p>
    #   @return [Hash<String, String>]
    # @!attribute host_configuration
    #   <p>Provides a script that runs as a worker is starting up that you can use to provide additional configuration for workers in your fleet.</p>
    #   @return [Types::HostConfiguration]
    class CreateFleetRequest < Struct.new(
      nil,
      :farm_id,
      :client_token,
      :display_name,
      :description,
      :role_arn,
      :min_worker_count,
      :max_worker_count,
      :configuration,
      :tags,
      :host_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Mixin that adds an optional ARN field to response structures.
    # Apply to SummaryMixins (flows into Get, Summary, and BatchGet) and Create outputs.
    # @!attribute fleet_id
    #   <p>The fleet ID.</p>
    #   @return [String]
    class CreateFleetResponse < Struct.new(
      nil,
      :fleet_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID of the farm to connect to the job.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The ID of the queue that the job is submitted to.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The unique token which the server uses to recognize retries of the same request.</p>
    #   @return [String]
    # @!attribute template
    #   <p>The job template to use for this job.</p>
    #   @return [String]
    # @!attribute template_type
    #   <p>The file type for the job template.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The priority of the job. The highest priority (first scheduled) is 100. When two jobs have the same priority, the oldest job is scheduled first.</p>
    #   @return [Integer]
    # @!attribute parameters
    #   <p>The parameters for the job.</p>
    #   @return [Hash<String, Types::JobParameter>]
    # @!attribute attachments
    #   <p>The attachments for the job. Attach files required for the job to run to a render job.</p>
    #   @return [Types::Attachments]
    # @!attribute storage_profile_id
    #   <p>The storage profile ID for the storage profile to connect to the job.</p>
    #   @return [String]
    # @!attribute target_task_run_status
    #   <p>The initial job status when it is created. Jobs that are created with a <code>SUSPENDED</code> status will not run until manually requeued.</p>
    #   @return [String]
    # @!attribute max_failed_tasks_count
    #   <p>The number of task failures before the job stops running and is marked as <code>FAILED</code>.</p>
    #   @return [Integer]
    # @!attribute max_retries_per_task
    #   <p>The maximum number of retries for each task.</p>
    #   @return [Integer]
    # @!attribute max_worker_count
    #   <p>The maximum number of worker hosts that can concurrently process a job. When the <code>maxWorkerCount</code> is reached, no more workers will be assigned to process the job, even if the fleets assigned to the job's queue has available workers.</p> <p>You can't set the <code>maxWorkerCount</code> to 0. If you set it to -1, there is no maximum number of workers.</p> <p>If you don't specify the <code>maxWorkerCount</code>, Deadline Cloud won't throttle the number of workers used to process the job.</p>
    #   @return [Integer]
    # @!attribute source_job_id
    #   <p>The job ID for the source job.</p>
    #   @return [String]
    # @!attribute name_override
    #   <p>A custom name to override the job name derived from the job template.</p>
    #   @return [String]
    # @!attribute description_override
    #   <p>A custom description to override the job description derived from the job template.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to add to your job. Each tag consists of a tag key and a tag value. Tag keys and values are both required, but tag values can be empty strings.</p>
    #   @return [Hash<String, String>]
    class CreateJobRequest < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :client_token,
      :template,
      :template_type,
      :priority,
      :parameters,
      :attachments,
      :storage_profile_id,
      :target_task_run_status,
      :max_failed_tasks_count,
      :max_retries_per_task,
      :max_worker_count,
      :source_job_id,
      :name_override,
      :description_override,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Mixin that adds an optional ARN field to response structures.
    # Apply to SummaryMixins (flows into Get, Summary, and BatchGet) and Create outputs.
    # @!attribute job_id
    #   <p>The job ID.</p>
    #   @return [String]
    class CreateJobResponse < Struct.new(
      nil,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>The unique token which the server uses to recognize retries of the same request.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The VPC (virtual private cloud) ID to use with the license endpoint.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>The subnet IDs.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>The security group IDs.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>Each tag consists of a tag key and a tag value. Tag keys and values are both required, but tag values can be empty strings.</p>
    #   @return [Hash<String, String>]
    class CreateLicenseEndpointRequest < Struct.new(
      nil,
      :client_token,
      :vpc_id,
      :subnet_ids,
      :security_group_ids,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Mixin that adds an optional ARN field to response structures.
    # Apply to SummaryMixins (flows into Get, Summary, and BatchGet) and Create outputs.
    # @!attribute license_endpoint_id
    #   <p>The license endpoint ID.</p>
    #   @return [String]
    class CreateLicenseEndpointResponse < Struct.new(
      nil,
      :license_endpoint_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID of the farm that contains the limit.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The unique token which the server uses to recognize retries of the same request.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the limit.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    # @!attribute amount_requirement_name
    #   <p>The value that you specify as the <code>name</code> in the <code>amounts</code> field of the <code>hostRequirements</code> in a step of a job template to declare the limit requirement.</p>
    #   @return [String]
    # @!attribute max_count
    #   <p>The maximum number of resources constrained by this limit. When all of the resources are in use, steps that require the limit won't be scheduled until the resource is available.</p> <p>The <code>maxCount</code> must not be 0. If the value is -1, there is no restriction on the number of resources that can be acquired for this limit.</p>
    #   @return [Integer]
    # @!attribute description
    #   <p>A description of the limit. A description helps you identify the purpose of the limit.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    class CreateLimitRequest < Struct.new(
      nil,
      :farm_id,
      :client_token,
      :display_name,
      :amount_requirement_name,
      :max_count,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute limit_id
    #   <p>A unique identifier for the limit. Use this identifier in other operations, such as <code>CreateQueueLimitAssociation</code> and <code>DeleteLimit</code>.</p>
    #   @return [String]
    class CreateLimitResponse < Struct.new(
      nil,
      :limit_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>The unique token which the server uses to recognize retries of the same request.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The name that you give the monitor that is displayed in the Deadline Cloud console.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    # @!attribute identity_center_instance_arn
    #   <p>The Amazon Resource Name of the IAM Identity Center instance that authenticates monitor users.</p>
    #   @return [String]
    # @!attribute identity_center_region
    #   <p>The Region where IAM Identity Center is enabled. Required when IAM Identity Center is in a different Region than the monitor.</p>
    #   @return [String]
    # @!attribute subdomain
    #   <p>The subdomain to use when creating the monitor URL. The full URL of the monitor is subdomain.Region.deadlinecloud.amazonaws.com.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name of the IAM role that the monitor uses to connect to Deadline Cloud. Every user that signs in to the monitor using IAM Identity Center uses this role to access Deadline Cloud resources.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to add to your monitor. Each tag consists of a tag key and a tag value. Tag keys and values are both required, but tag values can be empty strings.</p>
    #   @return [Hash<String, String>]
    class CreateMonitorRequest < Struct.new(
      nil,
      :client_token,
      :display_name,
      :identity_center_instance_arn,
      :identity_center_region,
      :subdomain,
      :role_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Mixin that adds an optional ARN field to response structures.
    # Apply to SummaryMixins (flows into Get, Summary, and BatchGet) and Create outputs.
    # @!attribute monitor_id
    #   <p>The unique identifier of the monitor.</p>
    #   @return [String]
    # @!attribute identity_center_application_arn
    #   <p>The Amazon Resource Name that IAM Identity Center assigns to the monitor.</p>
    #   @return [String]
    class CreateMonitorResponse < Struct.new(
      nil,
      :monitor_id,
      :identity_center_application_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID of the farm to connect to the environment.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID to connect the queue and environment.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The unique token which the server uses to recognize retries of the same request.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>Sets the priority of the environments in the queue from 0 to 10,000, where 0 is the highest priority (activated first and deactivated last). If two environments share the same priority value, the environment created first takes higher priority.</p>
    #   @return [Integer]
    # @!attribute template_type
    #   <p>The template's file type, <code>JSON</code> or <code>YAML</code>.</p>
    #   @return [String]
    # @!attribute template
    #   <p>The environment template to use in the queue.</p>
    #   @return [String]
    class CreateQueueEnvironmentRequest < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :client_token,
      :priority,
      :template_type,
      :template,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute queue_environment_id
    #   <p>The queue environment ID.</p>
    #   @return [String]
    class CreateQueueEnvironmentResponse < Struct.new(
      nil,
      :queue_environment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The ID of the farm that the queue and fleet belong to.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID.</p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p>The fleet ID.</p>
    #   @return [String]
    class CreateQueueFleetAssociationRequest < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :fleet_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CreateQueueFleetAssociationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The unique identifier of the farm that contains the queue and limit to associate.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The unique identifier of the queue to associate with the limit.</p>
    #   @return [String]
    # @!attribute limit_id
    #   <p>The unique identifier of the limit to associate with the queue.</p>
    #   @return [String]
    class CreateQueueLimitAssociationRequest < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :limit_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CreateQueueLimitAssociationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared displayName + description for Create operations where both are present.
    # displayName is @required here - this mixin is Create-only by design (Update has optional displayName).
    # @!attribute farm_id
    #   <p>The farm ID of the farm to connect to the queue.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The unique token which the server uses to recognize retries of the same request.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the queue.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the queue.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    # @!attribute default_budget_action
    #   <p>The default action to take on a queue if a budget isn't configured.</p>
    #   @return [String]
    # @!attribute job_attachment_settings
    #   <p>The job attachment settings for the queue. These are the Amazon S3 bucket name and the Amazon S3 prefix.</p>
    #   @return [Types::JobAttachmentSettings]
    # @!attribute role_arn
    #   <p>The IAM role ARN that workers will use while running jobs for this queue.</p>
    #   @return [String]
    # @!attribute job_run_as_user
    #   <p>The jobs in the queue run as the specified POSIX user.</p>
    #   @return [Types::JobRunAsUser]
    # @!attribute required_file_system_location_names
    #   <p>The file system location name to include in the queue.</p>
    #   @return [Array<String>]
    # @!attribute allowed_storage_profile_ids
    #   <p>The storage profile IDs to include in the queue.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>Each tag consists of a tag key and a tag value. Tag keys and values are both required, but tag values can be empty strings.</p>
    #   @return [Hash<String, String>]
    # @!attribute scheduling_configuration
    #   <p>The scheduling configuration for the queue. This configuration determines how workers are assigned to jobs in the queue.</p> <p>If not specified, the queue defaults to the <code>priorityFifo</code> scheduling configuration.</p>
    #   @return [Types::SchedulingConfiguration]
    class CreateQueueRequest < Struct.new(
      nil,
      :farm_id,
      :client_token,
      :display_name,
      :description,
      :default_budget_action,
      :job_attachment_settings,
      :role_arn,
      :job_run_as_user,
      :required_file_system_location_names,
      :allowed_storage_profile_ids,
      :tags,
      :scheduling_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Mixin that adds an optional ARN field to response structures.
    # Apply to SummaryMixins (flows into Get, Summary, and BatchGet) and Create outputs.
    # @!attribute queue_id
    #   <p>The queue ID.</p>
    #   @return [String]
    class CreateQueueResponse < Struct.new(
      nil,
      :queue_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID of the farm to connect to the storage profile.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The unique token which the server uses to recognize retries of the same request.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the storage profile.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    # @!attribute os_family
    #   <p>The type of operating system (OS) for the storage profile.</p>
    #   @return [String]
    # @!attribute file_system_locations
    #   <p>File system paths to include in the storage profile.</p>
    #   @return [Array<Types::FileSystemLocation>]
    class CreateStorageProfileRequest < Struct.new(
      nil,
      :farm_id,
      :client_token,
      :display_name,
      :os_family,
      :file_system_locations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute storage_profile_id
    #   <p>The storage profile ID.</p>
    #   @return [String]
    class CreateStorageProfileResponse < Struct.new(
      nil,
      :storage_profile_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID of the farm to connect to the worker.</p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p>The fleet ID to connect to the worker.</p>
    #   @return [String]
    # @!attribute host_properties
    #   <p>The IP address and host name of the worker.</p>
    #   @return [Types::HostPropertiesRequest]
    # @!attribute client_token
    #   <p>The unique token which the server uses to recognize retries of the same request.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Each tag consists of a tag key and a tag value. Tag keys and values are both required, but tag values can be empty strings.</p>
    #   @return [Hash<String, String>]
    class CreateWorkerRequest < Struct.new(
      nil,
      :farm_id,
      :fleet_id,
      :host_properties,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Mixin that adds an optional ARN field to response structures.
    # Apply to SummaryMixins (flows into Get, Summary, and BatchGet) and Create outputs.
    # @!attribute worker_id
    #   <p>The worker ID.</p>
    #   @return [String]
    class CreateWorkerResponse < Struct.new(
      nil,
      :worker_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The auto scaling configuration settings for a customer managed fleet.</p>
    # @!attribute standby_worker_count
    #   <p>The number of idle workers maintained and ready to process incoming tasks. The default is 0.</p>
    #   @return [Integer]
    # @!attribute worker_idle_duration_seconds
    #   <p>The number of seconds that a worker can remain idle before it is shut down. The default is 300 seconds (5 minutes).</p>
    #   @return [Integer]
    # @!attribute scale_out_workers_per_minute
    #   <p>The number of workers that can be added per minute to the fleet. The default is 10 workers per minute.</p>
    #   @return [Integer]
    class CustomerManagedAutoScalingConfiguration < Struct.new(
      nil,
      :standby_worker_count,
      :worker_idle_duration_seconds,
      :scale_out_workers_per_minute,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:worker_idle_duration_seconds] = 300 unless options.key?(:worker_idle_duration_seconds)
        super
      end
    end

    # <p>The configuration details for a customer managed fleet.</p>
    # @!attribute mode
    #   <p>The Auto Scaling mode for the customer managed fleet.</p>
    #   @return [String]
    # @!attribute auto_scaling_configuration
    #   <p>The auto scaling configuration settings for the customer managed fleet.</p>
    #   @return [Types::CustomerManagedAutoScalingConfiguration]
    # @!attribute worker_capabilities
    #   <p>The worker capabilities for the customer managed fleet.</p>
    #   @return [Types::CustomerManagedWorkerCapabilities]
    # @!attribute storage_profile_id
    #   <p>The storage profile ID for the customer managed fleet.</p>
    #   @return [String]
    # @!attribute tag_propagation_mode
    #   <p>The tag propagation mode for the customer managed fleet.</p>
    #   @return [String]
    class CustomerManagedFleetConfiguration < Struct.new(
      nil,
      :mode,
      :auto_scaling_configuration,
      :worker_capabilities,
      :storage_profile_id,
      :tag_propagation_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The worker capabilities for a customer managed workflow.</p>
    # @!attribute v_cpu_count
    #   <p>The vCPU count for the customer manged worker capabilities.</p>
    #   @return [Types::VCpuCountRange]
    # @!attribute memory_mi_b
    #   <p>The memory (MiB).</p>
    #   @return [Types::MemoryMiBRange]
    # @!attribute accelerator_types
    #   <p>The accelerator types for the customer managed worker capabilities.</p>
    #   @return [Array<String>]
    # @!attribute accelerator_count
    #   <p>The range of the accelerator.</p>
    #   @return [Types::AcceleratorCountRange]
    # @!attribute accelerator_total_memory_mi_b
    #   <p>The total memory (MiB) for the customer managed worker capabilities.</p>
    #   @return [Types::AcceleratorTotalMemoryMiBRange]
    # @!attribute os_family
    #   <p>The operating system (OS) family.</p>
    #   @return [String]
    # @!attribute cpu_architecture_type
    #   <p>The CPU architecture type for the customer managed worker capabilities.</p>
    #   @return [String]
    # @!attribute custom_amounts
    #   <p>Custom requirement ranges for customer managed worker capabilities.</p>
    #   @return [Array<Types::FleetAmountCapability>]
    # @!attribute custom_attributes
    #   <p>Custom attributes for the customer manged worker capabilities.</p>
    #   @return [Array<Types::FleetAttributeCapability>]
    class CustomerManagedWorkerCapabilities < Struct.new(
      nil,
      :v_cpu_count,
      :memory_mi_b,
      :accelerator_types,
      :accelerator_count,
      :accelerator_total_memory_mi_b,
      :os_family,
      :cpu_architecture_type,
      :custom_amounts,
      :custom_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The timestamp in date-time format.</p>
    # @!attribute name
    #   <p>The name of the date-time field to filter on.</p>
    #   @return [String]
    # @!attribute operator
    #   <p>The type of comparison to use to filter the results.</p>
    #   @return [String]
    # @!attribute date_time
    #   <p>The date and time.</p>
    #   @return [Time]
    class DateTimeFilterExpression < Struct.new(
      nil,
      :name,
      :operator,
      :date_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID of the farm to remove from the budget.</p>
    #   @return [String]
    # @!attribute budget_id
    #   <p>The budget ID of the budget to delete.</p>
    #   @return [String]
    class DeleteBudgetRequest < Struct.new(
      nil,
      :farm_id,
      :budget_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteBudgetResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID of the farm to delete.</p>
    #   @return [String]
    class DeleteFarmRequest < Struct.new(
      nil,
      :farm_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteFarmResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID of the farm to remove from the fleet.</p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p>The fleet ID of the fleet to delete.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The unique token which the server uses to recognize retries of the same request.</p>
    #   @return [String]
    class DeleteFleetRequest < Struct.new(
      nil,
      :farm_id,
      :fleet_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteFleetResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute license_endpoint_id
    #   <p>The license endpoint ID of the license endpoint to delete.</p>
    #   @return [String]
    class DeleteLicenseEndpointRequest < Struct.new(
      nil,
      :license_endpoint_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteLicenseEndpointResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The unique identifier of the farm that contains the limit to delete.</p>
    #   @return [String]
    # @!attribute limit_id
    #   <p>The unique identifier of the limit to delete.</p>
    #   @return [String]
    class DeleteLimitRequest < Struct.new(
      nil,
      :farm_id,
      :limit_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteLimitResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute license_endpoint_id
    #   <p>The ID of the license endpoint from which to remove the metered product.</p>
    #   @return [String]
    # @!attribute product_id
    #   <p>The product ID to remove from the license endpoint.</p>
    #   @return [String]
    class DeleteMeteredProductRequest < Struct.new(
      nil,
      :license_endpoint_id,
      :product_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteMeteredProductResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute monitor_id
    #   <p>The unique identifier of the monitor to delete. This ID is returned by the <code>CreateMonitor</code> operation, and is included in the response to the <code>GetMonitor</code> operation.</p>
    #   @return [String]
    class DeleteMonitorRequest < Struct.new(
      nil,
      :monitor_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteMonitorResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID of the farm from which to remove the queue environment.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID of the queue environment to delete.</p>
    #   @return [String]
    # @!attribute queue_environment_id
    #   <p>The queue environment ID of the queue environment to delete.</p>
    #   @return [String]
    class DeleteQueueEnvironmentRequest < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :queue_environment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteQueueEnvironmentResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Identifier mixin for queue-fleet association operations.
    # Composes QueueIdentifierMixin (farmId + queueId) and adds fleetId.
    # @!attribute farm_id
    #   <p>The farm ID of the farm that holds the queue-fleet association.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID of the queue-fleet association.</p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p>The fleet ID of the queue-fleet association.</p>
    #   @return [String]
    class DeleteQueueFleetAssociationRequest < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :fleet_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteQueueFleetAssociationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The unique identifier of the farm that contains the queue and limit to disassociate.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The unique identifier of the queue to disassociate.</p>
    #   @return [String]
    # @!attribute limit_id
    #   <p>The unique identifier of the limit to disassociate.</p>
    #   @return [String]
    class DeleteQueueLimitAssociationRequest < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :limit_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteQueueLimitAssociationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The ID of the farm from which to remove the queue.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID of the queue to delete.</p>
    #   @return [String]
    class DeleteQueueRequest < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteQueueResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID of the farm from which to remove the storage profile.</p>
    #   @return [String]
    # @!attribute storage_profile_id
    #   <p>The storage profile ID of the storage profile to delete.</p>
    #   @return [String]
    class DeleteStorageProfileRequest < Struct.new(
      nil,
      :farm_id,
      :storage_profile_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteStorageProfileResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID of the farm that contains the fleet.</p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p>The fleet ID of the fleet that contains the volume.</p>
    #   @return [String]
    # @!attribute volume_id
    #   <p>The volume ID of the volume to delete.</p>
    #   @return [String]
    class DeleteVolumeRequest < Struct.new(
      nil,
      :farm_id,
      :fleet_id,
      :volume_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteVolumeResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID of the worker to delete.</p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p>The fleet ID of the worker to delete.</p>
    #   @return [String]
    # @!attribute worker_id
    #   <p>The worker ID of the worker to delete.</p>
    #   @return [String]
    class DeleteWorkerRequest < Struct.new(
      nil,
      :farm_id,
      :fleet_id,
      :worker_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteWorkerResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The number of dependencies for the consumer.</p>
    # @!attribute dependencies_resolved
    #   <p>The number of resolved dependencies.</p>
    #   @return [Integer]
    # @!attribute dependencies_unresolved
    #   <p>The number of unresolved dependencies.</p>
    #   @return [Integer]
    # @!attribute consumers_resolved
    #   <p>The number of consumers resolved.</p>
    #   @return [Integer]
    # @!attribute consumers_unresolved
    #   <p>The number of unresolved consumers.</p>
    #   @return [Integer]
    class DependencyCounts < Struct.new(
      nil,
      :dependencies_resolved,
      :dependencies_unresolved,
      :consumers_resolved,
      :consumers_unresolved,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID of the farm to disassociate from the member.</p>
    #   @return [String]
    # @!attribute principal_id
    #   <p>A member's principal ID to disassociate from a farm.</p>
    #   @return [String]
    class DisassociateMemberFromFarmRequest < Struct.new(
      nil,
      :farm_id,
      :principal_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DisassociateMemberFromFarmResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID of the fleet to disassociate a member from.</p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p>The fleet ID of the fleet to from which to disassociate a member.</p>
    #   @return [String]
    # @!attribute principal_id
    #   <p>A member's principal ID to disassociate from a fleet.</p>
    #   @return [String]
    class DisassociateMemberFromFleetRequest < Struct.new(
      nil,
      :farm_id,
      :fleet_id,
      :principal_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DisassociateMemberFromFleetResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID for the job to disassociate from the member.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID connected to a job for which you're disassociating a member.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID to disassociate from a member in a job.</p>
    #   @return [String]
    # @!attribute principal_id
    #   <p>A member's principal ID to disassociate from a job.</p>
    #   @return [String]
    class DisassociateMemberFromJobRequest < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :job_id,
      :principal_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DisassociateMemberFromJobResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID for the queue to disassociate from a member.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID of the queue in which you're disassociating from a member.</p>
    #   @return [String]
    # @!attribute principal_id
    #   <p>A member's principal ID to disassociate from a queue.</p>
    #   @return [String]
    class DisassociateMemberFromQueueRequest < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :principal_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DisassociateMemberFromQueueResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the EBS volume.</p>
    # @!attribute size_gi_b
    #   <p>The EBS volume size in GiB.</p>
    #   @return [Integer]
    # @!attribute iops
    #   <p>The IOPS per volume.</p>
    #   @return [Integer]
    # @!attribute throughput_mi_b
    #   <p>The throughput per volume in MiB.</p>
    #   @return [Integer]
    class Ec2EbsVolume < Struct.new(
      nil,
      :size_gi_b,
      :iops,
      :throughput_mi_b,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:size_gi_b] = 250 unless options.key?(:size_gi_b)
        options[:iops] = 3000 unless options.key?(:iops)
        options[:throughput_mi_b] = 125 unless options.key?(:throughput_mi_b)
        super
      end
    end

    # <p>The details of a specified environment.</p>
    # @!attribute job_id
    #   <p>The job ID.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The environment ID.</p>
    #   @return [String]
    # @!attribute schema_version
    #   <p>The schema version in the environment.</p>
    #   @return [String]
    # @!attribute template
    #   <p>The template used for the environment.</p>
    #   @return [JSON]
    # @!attribute extensions
    #   <p>The Open Job Description extensions that the environment uses. This value is used by the worker agent.</p>
    #   @return [Array<String>]
    # @!attribute resolved_symbol_table
    #   <p>The resolved symbol table for the environment's expressions, serialized as JSON. This value is used by the worker agent.</p>
    #   @return [String]
    class EnvironmentDetailsEntity < Struct.new(
      nil,
      :job_id,
      :environment_id,
      :schema_version,
      :template,
      :extensions,
      :resolved_symbol_table,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The error details for the environment.</p>
    # @!attribute job_id
    #   <p>The job ID.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The environment ID.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message detailing the error's cause.</p>
    #   @return [String]
    class EnvironmentDetailsError < Struct.new(
      nil,
      :job_id,
      :environment_id,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The IDs of the job and environment.</p>
    # @!attribute job_id
    #   <p>The job ID.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The environment ID.</p>
    #   @return [String]
    class EnvironmentDetailsIdentifiers < Struct.new(
      nil,
      :job_id,
      :environment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The environment ID to use to enter a session action.</p>
    # @!attribute environment_id
    #   <p>The environment ID.</p>
    #   @return [String]
    class EnvironmentEnterSessionActionDefinition < Struct.new(
      nil,
      :environment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the environment a session action enters in.</p>
    # @!attribute environment_id
    #   <p>The environment ID.</p>
    #   @return [String]
    class EnvironmentEnterSessionActionDefinitionSummary < Struct.new(
      nil,
      :environment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the environment a session action exits from.</p>
    # @!attribute environment_id
    #   <p>The environment ID.</p>
    #   @return [String]
    class EnvironmentExitSessionActionDefinition < Struct.new(
      nil,
      :environment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of the environment details for which a session action to exits.</p>
    # @!attribute environment_id
    #   <p>The environment ID.</p>
    #   @return [String]
    class EnvironmentExitSessionActionDefinitionSummary < Struct.new(
      nil,
      :environment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The member of a farm.</p>
    # @!attribute farm_id
    #   <p>The farm ID of the farm member.</p>
    #   @return [String]
    # @!attribute principal_id
    #   <p>The principal ID of the farm member.</p>
    #   @return [String]
    # @!attribute principal_type
    #   <p>The principal type of the farm member.</p>
    #   @return [String]
    # @!attribute identity_store_id
    #   <p>The identity store ID of the farm member.</p>
    #   @return [String]
    # @!attribute membership_level
    #   <p>The farm member's membership level.</p>
    #   @return [String]
    class FarmMember < Struct.new(
      nil,
      :farm_id,
      :principal_id,
      :principal_type,
      :identity_store_id,
      :membership_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The summary of details for a farm.</p>
    # @!attribute farm_id
    #   <p>The farm ID.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the farm.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The ARN for the KMS key.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the resource was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user or system that created this resource.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time the resource was updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user or system that updated this resource.</p>
    #   @return [String]
    class FarmSummary < Struct.new(
      nil,
      :farm_id,
      :display_name,
      :kms_key_arn,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The field sorting order and name of the field.</p>
    # @!attribute sort_order
    #   <p>The sort order for the field.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the field.</p>
    #   @return [String]
    class FieldSortExpression < Struct.new(
      nil,
      :sort_order,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of the file system location for the resource.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute name
    #   <p>The location name.</p>
    #   @return [String]
    # @!attribute path
    #   <p>The file path.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of file.</p>
    #   @return [String]
    class FileSystemLocation < Struct.new(
      nil,
      :name,
      :path,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a fixed budget schedule.</p>
    # @!attribute start_time
    #   <p>When the budget starts.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>When the budget ends.</p>
    #   @return [Time]
    class FixedBudgetSchedule < Struct.new(
      nil,
      :start_time,
      :end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The fleet amount and attribute capabilities.</p>
    # @!attribute name
    #   <p>The name of the fleet capability.</p>
    #   @return [String]
    # @!attribute min
    #   <p>The minimum amount of fleet worker capability.</p>
    #   @return [Float]
    # @!attribute max
    #   <p>The maximum amount of the fleet worker capability.</p>
    #   @return [Float]
    class FleetAmountCapability < Struct.new(
      nil,
      :name,
      :min,
      :max,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the fleet's capability name, minimum, and maximum.</p>
    # @!attribute name
    #   <p>The name of the fleet attribute capability for the worker.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The number of fleet attribute capabilities.</p>
    #   @return [Array<String>]
    class FleetAttributeCapability < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The amounts and attributes of fleets.</p>
    # @!attribute amounts
    #   <p>Amount capabilities of the fleet.</p>
    #   @return [Array<Types::FleetAmountCapability>]
    # @!attribute attributes
    #   <p>Attribute capabilities of the fleet.</p>
    #   @return [Array<Types::FleetAttributeCapability>]
    class FleetCapabilities < Struct.new(
      nil,
      :amounts,
      :attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Fleet configuration details.</p>
    # @!attribute customer_managed
    #   <p>The customer managed fleets within a fleet configuration.</p>
    #   @return [Types::CustomerManagedFleetConfiguration]
    # @!attribute service_managed_ec2
    #   <p>The service managed Amazon EC2 instances for a fleet configuration.</p>
    #   @return [Types::ServiceManagedEc2FleetConfiguration]
    class FleetConfiguration < Struct.new(
      :customer_managed,
      :service_managed_ec2,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class CustomerManaged < FleetConfiguration; end
      class ServiceManagedEc2 < FleetConfiguration; end
      class Unknown < FleetConfiguration; end
    end

    # <p>The fleet member.</p>
    # @!attribute farm_id
    #   <p>The farm ID.</p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p>The fleet ID.</p>
    #   @return [String]
    # @!attribute principal_id
    #   <p>The principal ID of the fleet member.</p>
    #   @return [String]
    # @!attribute principal_type
    #   <p>The principal type of the fleet member.</p>
    #   @return [String]
    # @!attribute identity_store_id
    #   <p>The identity store ID.</p>
    #   @return [String]
    # @!attribute membership_level
    #   <p>The fleet member's membership level.</p>
    #   @return [String]
    class FleetMember < Struct.new(
      nil,
      :farm_id,
      :fleet_id,
      :principal_id,
      :principal_type,
      :identity_store_id,
      :membership_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Software that the service installs on worker hosts in a service-managed fleet.</p>
    # @!attribute name
    #   <p>The name of the software add-on. The supported value is <code>docker</code>.</p>
    #   @return [String]
    class FleetSoftwareAddOn < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a fleet.</p>
    # @!attribute fleet_id
    #   <p>The fleet ID.</p>
    #   @return [String]
    # @!attribute farm_id
    #   <p>The farm ID.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the fleet summary to update.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the fleet.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>A message that communicates a suspended status of the fleet.</p>
    #   @return [String]
    # @!attribute auto_scaling_status
    #   <p>The Auto Scaling status of a fleet.</p>
    #   @return [String]
    # @!attribute target_worker_count
    #   <p>The target number of workers in a fleet.</p>
    #   @return [Integer]
    # @!attribute worker_count
    #   <p>The number of workers in the fleet summary.</p>
    #   @return [Integer]
    # @!attribute min_worker_count
    #   <p>The minimum number of workers in the fleet.</p>
    #   @return [Integer]
    # @!attribute max_worker_count
    #   <p>The maximum number of workers specified in the fleet.</p>
    #   @return [Integer]
    # @!attribute configuration
    #   <p>The configuration details for the fleet.</p>
    #   @return [Types::FleetConfiguration]
    # @!attribute created_at
    #   <p>The date and time the resource was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user or system that created this resource.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time the resource was updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user or system that updated this resource.</p>
    #   @return [String]
    class FleetSummary < Struct.new(
      nil,
      :fleet_id,
      :farm_id,
      :display_name,
      :status,
      :status_message,
      :auto_scaling_status,
      :target_worker_count,
      :worker_count,
      :min_worker_count,
      :max_worker_count,
      :configuration,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID of the farm connected to the budget.</p>
    #   @return [String]
    # @!attribute budget_id
    #   <p>The budget ID.</p>
    #   @return [String]
    class GetBudgetRequest < Struct.new(
      nil,
      :farm_id,
      :budget_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Mixin that adds an optional ARN field to response structures.
    # Apply to SummaryMixins (flows into Get, Summary, and BatchGet) and Create outputs.
    # @!attribute budget_id
    #   <p>The budget ID.</p>
    #   @return [String]
    # @!attribute usage_tracking_resource
    #   <p>The resource that the budget is tracking usage for.</p>
    #   @return [Types::UsageTrackingResource]
    # @!attribute status
    #   <p>The status of the budget.</p> <ul> <li> <p> <code>ACTIVE</code>–Get a budget being evaluated.</p> </li> <li> <p> <code>INACTIVE</code>–Get an inactive budget. This can include expired, canceled, or deleted statuses.</p> </li> </ul>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the budget.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    # @!attribute approximate_dollar_limit
    #   <p>The consumed usage limit for the budget.</p>
    #   @return [Float]
    # @!attribute usages
    #   <p>The usages of the budget.</p>
    #   @return [Types::ConsumedUsages]
    # @!attribute created_by
    #   <p>The user or system that created this resource.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the resource was created.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user or system that updated this resource.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time the resource was updated.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the budget.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    # @!attribute actions
    #   <p>The budget actions for the budget.</p>
    #   @return [Array<Types::ResponseBudgetAction>]
    # @!attribute schedule
    #   <p>The budget schedule.</p>
    #   @return [Types::BudgetSchedule]
    # @!attribute queue_stopped_at
    #   <p>The date and time the queue stopped.</p>
    #   @return [Time]
    class GetBudgetResponse < Struct.new(
      nil,
      :budget_id,
      :usage_tracking_resource,
      :status,
      :display_name,
      :approximate_dollar_limit,
      :usages,
      :created_by,
      :created_at,
      :updated_by,
      :updated_at,
      :description,
      :actions,
      :schedule,
      :queue_stopped_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID of the farm.</p>
    #   @return [String]
    class GetFarmRequest < Struct.new(
      nil,
      :farm_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Mixin that adds an optional ARN field to response structures.
    # Apply to SummaryMixins (flows into Get, Summary, and BatchGet) and Create outputs.
    # @!attribute farm_id
    #   <p>The farm ID of the farm to get.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the farm.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The ARN of the KMS key used on the farm.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the resource was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user or system that created this resource.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time the resource was updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user or system that updated this resource.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the farm.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    # @!attribute cost_scale_factor
    #   <p>A multiplier applied to the farm's calculated costs for usage data and budget tracking. A value less than 1 represents a discount, a value greater than 1 represents a premium, and a value of 1 represents no adjustment.</p>
    #   @return [Float]
    class GetFarmResponse < Struct.new(
      nil,
      :farm_id,
      :display_name,
      :kms_key_arn,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      :description,
      :cost_scale_factor,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:cost_scale_factor] = 1 unless options.key?(:cost_scale_factor)
        super
      end
    end

    # @!attribute farm_id
    #   <p>The farm ID of the farm in the fleet.</p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p>The fleet ID of the fleet to get.</p>
    #   @return [String]
    class GetFleetRequest < Struct.new(
      nil,
      :farm_id,
      :fleet_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Mixin that adds an optional ARN field to response structures.
    # Apply to SummaryMixins (flows into Get, Summary, and BatchGet) and Create outputs.
    # @!attribute fleet_id
    #   <p>The fleet ID.</p>
    #   @return [String]
    # @!attribute farm_id
    #   <p>The farm ID of the farm in the fleet.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the fleet.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the fleet.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>A message that communicates a suspended status of the fleet.</p>
    #   @return [String]
    # @!attribute auto_scaling_status
    #   <p>The Auto Scaling status of the fleet. Either <code>GROWING</code>, <code>STEADY</code>, or <code>SHRINKING</code>.</p>
    #   @return [String]
    # @!attribute target_worker_count
    #   <p>The number of target workers in the fleet.</p>
    #   @return [Integer]
    # @!attribute worker_count
    #   <p>The number of workers in the fleet.</p>
    #   @return [Integer]
    # @!attribute min_worker_count
    #   <p>The minimum number of workers specified in the fleet.</p>
    #   @return [Integer]
    # @!attribute max_worker_count
    #   <p>The maximum number of workers specified in the fleet.</p>
    #   @return [Integer]
    # @!attribute configuration
    #   <p>The configuration setting for the fleet.</p>
    #   @return [Types::FleetConfiguration]
    # @!attribute created_at
    #   <p>The date and time the resource was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user or system that created this resource.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time the resource was updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user or system that updated this resource.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the fleet.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    # @!attribute host_configuration
    #   <p>The script that runs as a worker is starting up that you can use to provide additional configuration for workers in your fleet.</p>
    #   @return [Types::HostConfiguration]
    # @!attribute capabilities
    #   <p>Outlines what the fleet is capable of for minimums, maximums, and naming, in addition to attribute names and values.</p>
    #   @return [Types::FleetCapabilities]
    # @!attribute role_arn
    #   <p>The IAM role ARN.</p>
    #   @return [String]
    class GetFleetResponse < Struct.new(
      nil,
      :fleet_id,
      :farm_id,
      :display_name,
      :status,
      :status_message,
      :auto_scaling_status,
      :target_worker_count,
      :worker_count,
      :min_worker_count,
      :max_worker_count,
      :configuration,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      :description,
      :host_configuration,
      :capabilities,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The error for the job entity.</p>
    # @!attribute job_details
    #   <p>The job details for the failed job entity.</p>
    #   @return [Types::JobDetailsError]
    # @!attribute job_attachment_details
    #   <p>The job attachment details for the failed job entity.</p>
    #   @return [Types::JobAttachmentDetailsError]
    # @!attribute step_details
    #   <p>The step details for the failed job entity.</p>
    #   @return [Types::StepDetailsError]
    # @!attribute environment_details
    #   <p>The environment details for the failed job entity.</p>
    #   @return [Types::EnvironmentDetailsError]
    class GetJobEntityError < Struct.new(
      :job_details,
      :job_attachment_details,
      :step_details,
      :environment_details,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class JobDetails < GetJobEntityError; end
      class JobAttachmentDetails < GetJobEntityError; end
      class StepDetails < GetJobEntityError; end
      class EnvironmentDetails < GetJobEntityError; end
      class Unknown < GetJobEntityError; end
    end

    # @!attribute farm_id
    #   <p>The farm ID of the farm in the job.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID associated with the job.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID.</p>
    #   @return [String]
    class GetJobRequest < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Mixin that adds an optional ARN field to response structures.
    # Apply to SummaryMixins (flows into Get, Summary, and BatchGet) and Create outputs.
    # @!attribute job_id
    #   <p>The job ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the job.</p>
    #   @return [String]
    # @!attribute lifecycle_status
    #   <p>The life cycle status for the job. </p>
    #   @return [String]
    # @!attribute lifecycle_status_message
    #   <p>A message that communicates the status of the life cycle for the job.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The job priority.</p>
    #   @return [Integer]
    # @!attribute created_at
    #   <p>The date and time the resource was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user or system that created this resource.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time the resource was updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user or system that updated this resource.</p>
    #   @return [String]
    # @!attribute started_at
    #   <p>The date and time the resource started running.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The date and time the resource ended running.</p>
    #   @return [Time]
    # @!attribute task_run_status
    #   <p>The task run status for the job.</p>
    #   @return [String]
    # @!attribute target_task_run_status
    #   <p>The task status with which the job started.</p>
    #   @return [String]
    # @!attribute task_run_status_counts
    #   <p>The number of tasks running on the job.</p>
    #   @return [Hash<String, Integer>]
    # @!attribute task_failure_retry_count
    #   <p>The total number of times tasks from the job failed and were retried.</p>
    #   @return [Integer]
    # @!attribute storage_profile_id
    #   <p>The storage profile ID associated with the job.</p>
    #   @return [String]
    # @!attribute max_failed_tasks_count
    #   <p>The number of task failures before the job stops running and is marked as <code>FAILED</code>.</p>
    #   @return [Integer]
    # @!attribute max_retries_per_task
    #   <p>The maximum number of retries per failed tasks.</p>
    #   @return [Integer]
    # @!attribute parameters
    #   <p>The parameters for the job.</p>
    #   @return [Hash<String, Types::JobParameter>]
    # @!attribute attachments
    #   <p>The attachments for the job.</p>
    #   @return [Types::Attachments]
    # @!attribute description
    #   <p>The description of the job.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    # @!attribute max_worker_count
    #   <p>The maximum number of worker hosts that can concurrently process a job. When the <code>maxWorkerCount</code> is reached, no more workers will be assigned to process the job, even if the fleets assigned to the job's queue has available workers.</p> <p>If you don't set the <code>maxWorkerCount</code> when you create a job, this value is not returned in the response.</p>
    #   @return [Integer]
    # @!attribute source_job_id
    #   <p>The job ID for the source job.</p>
    #   @return [String]
    class GetJobResponse < Struct.new(
      nil,
      :job_id,
      :name,
      :lifecycle_status,
      :lifecycle_status_message,
      :priority,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      :started_at,
      :ended_at,
      :task_run_status,
      :target_task_run_status,
      :task_run_status_counts,
      :task_failure_retry_count,
      :storage_profile_id,
      :max_failed_tasks_count,
      :max_retries_per_task,
      :parameters,
      :attachments,
      :description,
      :max_worker_count,
      :source_job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute license_endpoint_id
    #   <p>The license endpoint ID.</p>
    #   @return [String]
    class GetLicenseEndpointRequest < Struct.new(
      nil,
      :license_endpoint_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Mixin that adds an optional ARN field to response structures.
    # Apply to SummaryMixins (flows into Get, Summary, and BatchGet) and Create outputs.
    # @!attribute license_endpoint_id
    #   <p>The license endpoint ID.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the license endpoint.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The status message of the license endpoint.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The VPC (virtual private cloud) ID associated with the license endpoint.</p>
    #   @return [String]
    # @!attribute dns_name
    #   <p>The DNS name.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>The subnet IDs.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>The security group IDs for the license endpoint.</p>
    #   @return [Array<String>]
    class GetLicenseEndpointResponse < Struct.new(
      nil,
      :license_endpoint_id,
      :status,
      :status_message,
      :vpc_id,
      :dns_name,
      :subnet_ids,
      :security_group_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The unique identifier of the farm that contains the limit.</p>
    #   @return [String]
    # @!attribute limit_id
    #   <p>The unique identifier of the limit to return.</p>
    #   @return [String]
    class GetLimitRequest < Struct.new(
      nil,
      :farm_id,
      :limit_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Domain fields for Limit summary/response shapes, ordered before timestamps.
    # @!attribute farm_id
    #   <p>The unique identifier of the farm that contains the limit.</p>
    #   @return [String]
    # @!attribute limit_id
    #   <p>The unique identifier of the limit.</p>
    #   @return [String]
    # @!attribute current_count
    #   <p>The number of resources from the limit that are being used by jobs. The result is delayed and may not be the count at the time that you called the operation.</p>
    #   @return [Integer]
    # @!attribute created_at
    #   <p>The Unix timestamp of the date and time that the limit was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user identifier of the person that created the limit.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The Unix timestamp of the date and time that the limit was last updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user identifier of the person that last updated the limit.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the limit.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    # @!attribute amount_requirement_name
    #   <p>The value that you specify as the <code>name</code> in the <code>amounts</code> field of the <code>hostRequirements</code> in a step of a job template to declare the limit requirement.</p>
    #   @return [String]
    # @!attribute max_count
    #   <p>The maximum number of resources constrained by this limit. When all of the resources are in use, steps that require the limit won't be scheduled until the resource is available.</p> <p>The <code>maxValue</code> must not be 0. If the value is -1, there is no restriction on the number of resources that can be acquired for this limit.</p>
    #   @return [Integer]
    # @!attribute description
    #   <p>The description of the limit that helps identify what the limit is used for.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    class GetLimitResponse < Struct.new(
      nil,
      :farm_id,
      :limit_id,
      :current_count,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      :display_name,
      :amount_requirement_name,
      :max_count,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute monitor_id
    #   <p>The unique identifier for the monitor. This ID is returned by the <code>CreateMonitor</code> operation.</p>
    #   @return [String]
    class GetMonitorRequest < Struct.new(
      nil,
      :monitor_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Mixin that adds an optional ARN field to response structures.
    # Apply to SummaryMixins (flows into Get, Summary, and BatchGet) and Create outputs.
    # @!attribute monitor_id
    #   <p>The unique identifier for the monitor.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The name used to identify the monitor on the Deadline Cloud console.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    # @!attribute subdomain
    #   <p>The subdomain used for the monitor URL. The full URL of the monitor is subdomain.Region.deadlinecloud.amazonaws.com.</p>
    #   @return [String]
    # @!attribute url
    #   <p>The complete URL of the monitor. The full URL of the monitor is subdomain.Region.deadlinecloud.amazonaws.com.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name of the IAM role for the monitor. Users of the monitor use this role to access Deadline Cloud resources.</p>
    #   @return [String]
    # @!attribute identity_center_instance_arn
    #   <p>The Amazon Resource Name of the IAM Identity Center instance responsible for authenticating monitor users.</p>
    #   @return [String]
    # @!attribute identity_center_region
    #   <p>The Region where IAM Identity Center is enabled.</p>
    #   @return [String]
    # @!attribute identity_center_application_arn
    #   <p>The Amazon Resource Name that the IAM Identity Center assigned to the monitor when it was created.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The UNIX timestamp of the date and time that the monitor was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user name of the person that created the monitor.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The UNIX timestamp of the last date and time that the monitor was updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user name of the person that last updated the monitor.</p>
    #   @return [String]
    class GetMonitorResponse < Struct.new(
      nil,
      :monitor_id,
      :display_name,
      :subdomain,
      :url,
      :role_arn,
      :identity_center_instance_arn,
      :identity_center_region,
      :identity_center_application_arn,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute monitor_id
    #   <p>The unique identifier of the monitor. This ID is returned by the <code>CreateMonitor</code> operation, and is included in the response to the <code>ListMonitors</code> operation.</p>
    #   @return [String]
    class GetMonitorSettingsRequest < Struct.new(
      nil,
      :monitor_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute settings
    #   <p>The monitor settings as key-value pairs.</p>
    #   @return [Hash<String, String>]
    class GetMonitorSettingsResponse < Struct.new(
      nil,
      :settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID for the queue environment.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID for the queue environment.</p>
    #   @return [String]
    # @!attribute queue_environment_id
    #   <p>The queue environment ID.</p>
    #   @return [String]
    class GetQueueEnvironmentRequest < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :queue_environment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute queue_environment_id
    #   <p>The queue environment ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the queue environment.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The priority of the queue environment.</p>
    #   @return [Integer]
    # @!attribute template_type
    #   <p>The type of template for the queue environment.</p>
    #   @return [String]
    # @!attribute template
    #   <p>The template for the queue environment.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the resource was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user or system that created this resource.&gt;</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time the resource was updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user or system that updated this resource.</p>
    #   @return [String]
    class GetQueueEnvironmentResponse < Struct.new(
      nil,
      :queue_environment_id,
      :name,
      :priority,
      :template_type,
      :template,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Identifier mixin for queue-fleet association operations.
    # Composes QueueIdentifierMixin (farmId + queueId) and adds fleetId.
    # @!attribute farm_id
    #   <p>The farm ID of the farm that contains the queue-fleet association.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID for the queue-fleet association.</p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p>The fleet ID for the queue-fleet association.</p>
    #   @return [String]
    class GetQueueFleetAssociationRequest < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :fleet_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Domain fields for QueueFleetAssociation summary/response shapes, ordered before timestamps.
    # @!attribute queue_id
    #   <p>The queue ID for the queue-fleet association.</p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p>The fleet ID for the queue-fleet association.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the queue-fleet association.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the resource was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user or system that created this resource.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time the resource was updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user or system that updated this resource.</p>
    #   @return [String]
    class GetQueueFleetAssociationResponse < Struct.new(
      nil,
      :queue_id,
      :fleet_id,
      :status,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The unique identifier of the farm that contains the associated queue and limit.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The unique identifier of the queue associated with the limit.</p>
    #   @return [String]
    # @!attribute limit_id
    #   <p>The unique identifier of the limit associated with the queue.</p>
    #   @return [String]
    class GetQueueLimitAssociationRequest < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :limit_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Domain fields for QueueLimitAssociation summary/response shapes, ordered before timestamps.
    # @!attribute queue_id
    #   <p>The unique identifier of the queue associated with the limit.</p>
    #   @return [String]
    # @!attribute limit_id
    #   <p>The unique identifier of the limit associated with the queue.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the limit.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The Unix timestamp of the date and time that the association was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user identifier of the person that created the association.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The Unix timestamp of the date and time that the association was last updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user identifier of the person that last updated the association.</p>
    #   @return [String]
    class GetQueueLimitAssociationResponse < Struct.new(
      nil,
      :queue_id,
      :limit_id,
      :status,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID of the farm in the queue.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID for the queue to retrieve.</p>
    #   @return [String]
    class GetQueueRequest < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Mixin that adds an optional ARN field to response structures.
    # Apply to SummaryMixins (flows into Get, Summary, and BatchGet) and Create outputs.
    # @!attribute farm_id
    #   <p>The farm ID for the queue.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the queue.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the queue.</p> <ul> <li> <p> <code>ACTIVE</code>–The queue is active.</p> </li> <li> <p> <code>SCHEDULING</code>–The queue is scheduling.</p> </li> <li> <p> <code>SCHEDULING_BLOCKED</code>–The queue scheduling is blocked. See the provided reason.</p> </li> </ul>
    #   @return [String]
    # @!attribute default_budget_action
    #   <p>The default action taken on a queue if a budget wasn't configured.</p>
    #   @return [String]
    # @!attribute blocked_reason
    #   <p>The reason the queue was blocked.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the resource was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user or system that created this resource.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time the resource was updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user or system that updated this resource.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the queue.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    # @!attribute job_attachment_settings
    #   <p>The job attachment settings for the queue.</p>
    #   @return [Types::JobAttachmentSettings]
    # @!attribute role_arn
    #   <p>The IAM role ARN.</p>
    #   @return [String]
    # @!attribute required_file_system_location_names
    #   <p>A list of the required file system location names in the queue.</p>
    #   @return [Array<String>]
    # @!attribute allowed_storage_profile_ids
    #   <p>The storage profile IDs for the queue.</p>
    #   @return [Array<String>]
    # @!attribute job_run_as_user
    #   <p>The jobs in the queue ran as this specified POSIX user.</p>
    #   @return [Types::JobRunAsUser]
    # @!attribute scheduling_configuration
    #   <p>The scheduling configuration for the queue. This configuration determines how workers are assigned to jobs in the queue.</p>
    #   @return [Types::SchedulingConfiguration]
    class GetQueueResponse < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :display_name,
      :status,
      :default_budget_action,
      :blocked_reason,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      :description,
      :job_attachment_settings,
      :role_arn,
      :required_file_system_location_names,
      :allowed_storage_profile_ids,
      :job_run_as_user,
      :scheduling_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID for the session action.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID for the session action.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID for the session.</p>
    #   @return [String]
    # @!attribute session_action_id
    #   <p>The session action ID for the session.</p>
    #   @return [String]
    class GetSessionActionRequest < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :job_id,
      :session_action_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_action_id
    #   <p>The session action ID.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the session action.</p>
    #   @return [String]
    # @!attribute started_at
    #   <p>The date and time the resource started running.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The date and time the resource ended running.</p>
    #   @return [Time]
    # @!attribute worker_updated_at
    #   <p>The Linux timestamp of the date and time the session action was last updated.</p>
    #   @return [Time]
    # @!attribute progress_percent
    #   <p>The percentage completed for a session action.</p>
    #   @return [Float]
    # @!attribute manifests
    #   <p>The list of manifest properties that describe file attachments for the task run.</p>
    #   @return [Array<Types::TaskRunManifestPropertiesResponse>]
    # @!attribute session_id
    #   <p>The session ID for the session action.</p>
    #   @return [String]
    # @!attribute process_exit_code
    #   <p>The process exit code. The default Deadline Cloud worker agent converts unsigned 32-bit exit codes to signed 32-bit exit codes.</p>
    #   @return [Integer]
    # @!attribute progress_message
    #   <p>The message that communicates the progress of the session action.</p>
    #   @return [String]
    # @!attribute acquired_limits
    #   <p>The limits and their amounts acquired during a session action. If no limits were acquired during the session, this field isn't returned.</p>
    #   @return [Array<Types::AcquiredLimit>]
    # @!attribute definition
    #   <p>The session action definition.</p>
    #   @return [Types::SessionActionDefinition]
    class GetSessionActionResponse < Struct.new(
      nil,
      :session_action_id,
      :status,
      :started_at,
      :ended_at,
      :worker_updated_at,
      :progress_percent,
      :manifests,
      :session_id,
      :process_exit_code,
      :progress_message,
      :acquired_limits,
      :definition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID for the session.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID for the session.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID for the session.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The session ID.</p>
    #   @return [String]
    class GetSessionRequest < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :job_id,
      :session_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Session lifecycle/status fields, ordered after IDs in session shapes.
    # @!attribute session_id
    #   <p>The session ID.</p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p>The fleet ID for the session.</p>
    #   @return [String]
    # @!attribute worker_id
    #   <p>The worker ID for the session.</p>
    #   @return [String]
    # @!attribute started_at
    #   <p>The date and time the resource started running.</p>
    #   @return [Time]
    # @!attribute lifecycle_status
    #   <p>The life cycle status of the session.</p>
    #   @return [String]
    # @!attribute ended_at
    #   <p>The date and time the resource ended running.</p>
    #   @return [Time]
    # @!attribute target_lifecycle_status
    #   <p>The life cycle status with which the session started.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time the resource was updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user or system that updated this resource.</p>
    #   @return [String]
    # @!attribute log
    #   <p>The session log.</p>
    #   @return [Types::LogConfiguration]
    # @!attribute host_properties
    #   <p>Provides the Amazon EC2 properties of the host.</p>
    #   @return [Types::HostPropertiesResponse]
    # @!attribute worker_log
    #   <p>The worker log for the session.</p>
    #   @return [Types::LogConfiguration]
    class GetSessionResponse < Struct.new(
      nil,
      :session_id,
      :fleet_id,
      :worker_id,
      :started_at,
      :lifecycle_status,
      :ended_at,
      :target_lifecycle_status,
      :updated_at,
      :updated_by,
      :log,
      :host_properties,
      :worker_log,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination fields for List operation inputs (nextToken + maxResults).
    # @!attribute farm_id
    #   <p>The identifier of the farm to include in the statistics. This should be the same as the farm ID used in the call to the <code>StartSessionsStatisticsAggregation</code> operation.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    # @!attribute aggregation_id
    #   <p>The identifier returned by the <code>StartSessionsStatisticsAggregation</code> operation that identifies the aggregated statistics.</p>
    #   @return [String]
    class GetSessionsStatisticsAggregationRequest < Struct.new(
      nil,
      :farm_id,
      :next_token,
      :max_results,
      :aggregation_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination field for List operation outputs (nextToken).
    # @!attribute statistics
    #   <p>The statistics for the specified fleets or queues.</p>
    #   @return [Array<Types::Statistics>]
    # @!attribute status
    #   <p>The status of the aggregated results. An aggregation may fail or time out if the results are too large. If this happens, you can call the <code>StartSessionsStatisticsAggregation</code> operation after you reduce the aggregation time frame, reduce the number of queues or fleets in the aggregation, or increase the period length.</p> <p>If you call the <code>StartSessionsStatisticsAggregation </code> operation when the status is <code>IN_PROGRESS</code>, you will receive a <code>ThrottlingException</code>.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>A message that describes the status.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>
    #   @return [String]
    class GetSessionsStatisticsAggregationResponse < Struct.new(
      nil,
      :statistics,
      :status,
      :status_message,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID for the step.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID for the step.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID for the step.</p>
    #   @return [String]
    # @!attribute step_id
    #   <p>The step ID.</p>
    #   @return [String]
    class GetStepRequest < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :job_id,
      :step_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute step_id
    #   <p>The step ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the step.</p>
    #   @return [String]
    # @!attribute lifecycle_status
    #   <p>The life cycle status of the step.</p>
    #   @return [String]
    # @!attribute lifecycle_status_message
    #   <p>A message that describes the lifecycle status of the step.</p>
    #   @return [String]
    # @!attribute task_run_status
    #   <p>The task run status for the job.</p>
    #   @return [String]
    # @!attribute task_run_status_counts
    #   <p>The number of tasks running on the job.</p>
    #   @return [Hash<String, Integer>]
    # @!attribute task_failure_retry_count
    #   <p>The total number of times tasks from the step failed and were retried.</p>
    #   @return [Integer]
    # @!attribute target_task_run_status
    #   <p>The task status with which the job started.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the resource was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user or system that created this resource.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time the resource was updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user or system that updated this resource.</p>
    #   @return [String]
    # @!attribute started_at
    #   <p>The date and time the resource started running.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The date and time the resource ended running.</p>
    #   @return [Time]
    # @!attribute dependency_counts
    #   <p>The number of dependencies in the step.</p>
    #   @return [Types::DependencyCounts]
    # @!attribute required_capabilities
    #   <p>The required capabilities of the step.</p>
    #   @return [Types::StepRequiredCapabilities]
    # @!attribute parameter_space
    #   <p>A list of step parameters and the combination expression for the step.</p>
    #   @return [Types::ParameterSpace]
    # @!attribute description
    #   <p>The description of the step.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    class GetStepResponse < Struct.new(
      nil,
      :step_id,
      :name,
      :lifecycle_status,
      :lifecycle_status_message,
      :task_run_status,
      :task_run_status_counts,
      :task_failure_retry_count,
      :target_task_run_status,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      :started_at,
      :ended_at,
      :dependency_counts,
      :required_capabilities,
      :parameter_space,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID for the queue in storage profile.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID the queue in the storage profile.</p>
    #   @return [String]
    # @!attribute storage_profile_id
    #   <p>The storage profile ID for the storage profile in the queue.</p>
    #   @return [String]
    class GetStorageProfileForQueueRequest < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :storage_profile_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute storage_profile_id
    #   <p>The storage profile ID.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the storage profile connected to a queue.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    # @!attribute os_family
    #   <p>The operating system of the storage profile in the queue.</p>
    #   @return [String]
    # @!attribute file_system_locations
    #   <p>The location of the files for the storage profile within the queue.</p>
    #   @return [Array<Types::FileSystemLocation>]
    class GetStorageProfileForQueueResponse < Struct.new(
      nil,
      :storage_profile_id,
      :display_name,
      :os_family,
      :file_system_locations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID for the storage profile.</p>
    #   @return [String]
    # @!attribute storage_profile_id
    #   <p>The storage profile ID.</p>
    #   @return [String]
    class GetStorageProfileRequest < Struct.new(
      nil,
      :farm_id,
      :storage_profile_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute storage_profile_id
    #   <p>The storage profile ID.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the storage profile.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    # @!attribute os_family
    #   <p>The operating system (OS) for the storage profile.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the resource was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user or system that created this resource.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time the resource was updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user or system that updated this resource.</p>
    #   @return [String]
    # @!attribute file_system_locations
    #   <p>The location of the files for the storage profile.</p>
    #   @return [Array<Types::FileSystemLocation>]
    class GetStorageProfileResponse < Struct.new(
      nil,
      :storage_profile_id,
      :display_name,
      :os_family,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      :file_system_locations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID of the farm connected to the task.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID for the queue connected to the task.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID of the job connected to the task.</p>
    #   @return [String]
    # @!attribute step_id
    #   <p>The step ID for the step connected to the task.</p>
    #   @return [String]
    # @!attribute task_id
    #   <p>The task ID.</p>
    #   @return [String]
    class GetTaskRequest < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :job_id,
      :step_id,
      :task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>The task ID.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the resource was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user or system that created this resource.</p>
    #   @return [String]
    # @!attribute run_status
    #   <p>The run status for the task.</p>
    #   @return [String]
    # @!attribute target_run_status
    #   <p>The run status with which to start the task.</p>
    #   @return [String]
    # @!attribute failure_retry_count
    #   <p>The number of times that the task failed and was retried.</p>
    #   @return [Integer]
    # @!attribute started_at
    #   <p>The date and time the resource started running.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The date and time the resource ended running.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the resource was updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user or system that updated this resource.</p>
    #   @return [String]
    # @!attribute latest_session_action_id
    #   <p>The latest session action ID for the task.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The parameters for the task.</p>
    #   @return [Hash<String, Types::TaskParameterValue>]
    class GetTaskResponse < Struct.new(
      nil,
      :task_id,
      :created_at,
      :created_by,
      :run_status,
      :target_run_status,
      :failure_retry_count,
      :started_at,
      :ended_at,
      :updated_at,
      :updated_by,
      :latest_session_action_id,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID of the farm that contains the fleet.</p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p>The fleet ID of the fleet that contains the volume.</p>
    #   @return [String]
    # @!attribute volume_id
    #   <p>The volume ID of the volume to retrieve.</p>
    #   @return [String]
    class GetVolumeRequest < Struct.new(
      nil,
      :farm_id,
      :fleet_id,
      :volume_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Mixin that adds an optional ARN field to response structures.
    # Apply to SummaryMixins (flows into Get, Summary, and BatchGet) and Create outputs.
    # @!attribute volume_id
    #   <p>The volume ID.</p>
    #   @return [String]
    # @!attribute farm_id
    #   <p>The farm ID of the farm that contains the fleet.</p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p>The fleet ID of the fleet that contains the volume.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the volume.</p>
    #   @return [String]
    # @!attribute size_gi_b
    #   <p>The volume size in GiB.</p>
    #   @return [Integer]
    # @!attribute availability_zone_id
    #   <p>The Availability Zone ID of the volume.</p>
    #   @return [String]
    # @!attribute attached_worker_id
    #   <p>The worker ID of the worker the volume is attached to.</p>
    #   @return [String]
    # @!attribute volume_type
    #   <p>The EBS volume type.</p>
    #   @return [String]
    # @!attribute iops
    #   <p>The IOPS of the volume.</p>
    #   @return [Integer]
    # @!attribute throughput_mi_b
    #   <p>The throughput of the volume in MiB.</p>
    #   @return [Integer]
    # @!attribute created_at
    #   <p>The date and time the resource was created.</p>
    #   @return [Time]
    # @!attribute last_assigned_at
    #   <p>The date and time the volume was last assigned to a worker.</p>
    #   @return [Time]
    # @!attribute last_released_at
    #   <p>The date and time the volume was last released from a worker.</p>
    #   @return [Time]
    # @!attribute expires_at
    #   <p>The date and time the volume expires and will be deleted.</p>
    #   @return [Time]
    class GetVolumeResponse < Struct.new(
      nil,
      :volume_id,
      :farm_id,
      :fleet_id,
      :state,
      :size_gi_b,
      :availability_zone_id,
      :attached_worker_id,
      :volume_type,
      :iops,
      :throughput_mi_b,
      :created_at,
      :last_assigned_at,
      :last_released_at,
      :expires_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID for the worker.</p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p>The fleet ID of the worker.</p>
    #   @return [String]
    # @!attribute worker_id
    #   <p>The worker ID.</p>
    #   @return [String]
    class GetWorkerRequest < Struct.new(
      nil,
      :farm_id,
      :fleet_id,
      :worker_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Mixin that adds an optional ARN field to response structures.
    # Apply to SummaryMixins (flows into Get, Summary, and BatchGet) and Create outputs.
    # @!attribute farm_id
    #   <p>The farm ID.</p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p>The fleet ID.</p>
    #   @return [String]
    # @!attribute worker_id
    #   <p>The worker ID.</p>
    #   @return [String]
    # @!attribute host_properties
    #   <p>The host properties for the worker.</p>
    #   @return [Types::HostPropertiesResponse]
    # @!attribute status
    #   <p>The status of the worker.</p>
    #   @return [String]
    # @!attribute log
    #   <p>The logs for the associated worker.</p>
    #   @return [Types::LogConfiguration]
    # @!attribute created_at
    #   <p>The date and time the resource was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user or system that created this resource.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time the resource was updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user or system that updated this resource.</p>
    #   @return [String]
    class GetWorkerResponse < Struct.new(
      nil,
      :farm_id,
      :fleet_id,
      :worker_id,
      :host_properties,
      :status,
      :log,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a script that runs as a worker is starting up that you can use to provide additional configuration for workers in your fleet. </p> <p>To remove a script from a fleet, use the <a href="https://docs.aws.amazon.com/deadline-cloud/latest/APIReference/API_UpdateFleet.html">UpdateFleet</a> operation with the <code>hostConfiguration</code> <code>scriptBody</code> parameter set to an empty string ("").</p>
    # @!attribute script_body
    #   <p>The text of the script that runs as a worker is starting up that you can use to provide additional configuration for workers in your fleet. The script runs after a worker enters the <code>STARTING</code> state and before the worker processes tasks.</p> <p>For more information about using the script, see <a href="https://docs.aws.amazon.com/deadline-cloud/latest/developerguide/smf-admin.html">Run scripts as an administrator to configure workers</a> in the <i>Deadline Cloud Developer Guide</i>. </p> <important> <p>The script runs as an administrative user (<code>sudo root</code> on Linux, as an Administrator on Windows). </p> </important>
    #   @return [String]
    # @!attribute script_timeout_seconds
    #   <p>The maximum time that the host configuration can run. If the timeout expires, the worker enters the <code>NOT RESPONDING</code> state and shuts down. You are charged for the time that the worker is running the host configuration script.</p> <note> <p>You should configure your fleet for a maximum of one worker while testing your host configuration script to avoid starting additional workers.</p> </note> <p>The default is 300 seconds (5 minutes).</p>
    #   @return [Integer]
    class HostConfiguration < Struct.new(
      nil,
      :script_body,
      :script_timeout_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:script_timeout_seconds] = 300 unless options.key?(:script_timeout_seconds)
        super
      end
    end

    # <p>The host property details.</p>
    # @!attribute ip_addresses
    #   <p>The IP address of the host.</p>
    #   @return [Types::IpAddresses]
    # @!attribute host_name
    #   <p>The host name.</p>
    #   @return [String]
    class HostPropertiesRequest < Struct.new(
      nil,
      :ip_addresses,
      :host_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The host property details.</p>
    # @!attribute ip_addresses
    #   <p>The IP address of the host.</p>
    #   @return [Types::IpAddresses]
    # @!attribute host_name
    #   <p>The host name.</p>
    #   @return [String]
    # @!attribute ec2_instance_arn
    #   <p>The ARN of the host EC2 instance.</p>
    #   @return [String]
    # @!attribute ec2_instance_type
    #   <p>The instance type of the host EC2 instance.</p>
    #   @return [String]
    class HostPropertiesResponse < Struct.new(
      nil,
      :ip_addresses,
      :host_name,
      :ec2_instance_arn,
      :ec2_instance_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Deadline Cloud can't process your request right now. Try again later.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds a client should wait before retrying the request.</p>
    #   @return [Integer]
    class InternalServerErrorException < Struct.new(
      nil,
      :message,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The IP addresses for a host.</p>
    # @!attribute ip_v4_addresses
    #   <p>The IpV4 address of the network.</p>
    #   @return [Array<String>]
    # @!attribute ip_v6_addresses
    #   <p>The IpV6 address for the network and node component.</p>
    #   @return [Array<String>]
    class IpAddresses < Struct.new(
      nil,
      :ip_v4_addresses,
      :ip_v6_addresses,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The job attachments.</p>
    # @!attribute job_id
    #   <p>The job ID.</p>
    #   @return [String]
    # @!attribute attachments
    #   <p>The job attachments.</p>
    #   @return [Types::Attachments]
    class JobAttachmentDetailsEntity < Struct.new(
      nil,
      :job_id,
      :attachments,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The error details for job attachments.</p>
    # @!attribute job_id
    #   <p>The job ID.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message detailing the error's cause.</p>
    #   @return [String]
    class JobAttachmentDetailsError < Struct.new(
      nil,
      :job_id,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Identifier details for job attachments.</p>
    # @!attribute job_id
    #   <p>The job ID.</p>
    #   @return [String]
    class JobAttachmentDetailsIdentifiers < Struct.new(
      nil,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The job attachment settings. These are the Amazon S3 bucket name and the Amazon S3 prefix.</p>
    # @!attribute s3_bucket_name
    #   <p>The Amazon S3 bucket name.</p>
    #   @return [String]
    # @!attribute root_prefix
    #   <p>The root prefix.</p>
    #   @return [String]
    class JobAttachmentSettings < Struct.new(
      nil,
      :s3_bucket_name,
      :root_prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The job details for a specific job.</p>
    # @!attribute job_id
    #   <p>The job ID.</p>
    #   @return [String]
    # @!attribute job_attachment_settings
    #   <p>The job attachment settings.</p>
    #   @return [Types::JobDetailsJobAttachmentSettings]
    # @!attribute job_run_as_user
    #   <p>The user name and group that the job uses when run.</p>
    #   @return [Types::JobRunAsUser]
    # @!attribute log_group_name
    #   <p>The log group name.</p>
    #   @return [String]
    # @!attribute queue_role_arn
    #   <p>The queue role ARN.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The parameters.</p>
    #   @return [Hash<String, Types::JobParameter>]
    # @!attribute schema_version
    #   <p>The schema version.</p>
    #   @return [String]
    # @!attribute extensions
    #   <p>The Open Job Description extensions that the job template uses. This value is used by the worker agent.</p>
    #   @return [Array<String>]
    # @!attribute path_mapping_rules
    #   <p>The path mapping rules.</p>
    #   @return [Array<Types::PathMappingRule>]
    class JobDetailsEntity < Struct.new(
      nil,
      :job_id,
      :job_attachment_settings,
      :job_run_as_user,
      :log_group_name,
      :queue_role_arn,
      :parameters,
      :schema_version,
      :extensions,
      :path_mapping_rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a job error.</p>
    # @!attribute job_id
    #   <p>The job ID.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message detailing the error's cause.</p>
    #   @return [String]
    class JobDetailsError < Struct.new(
      nil,
      :job_id,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The identifiers for a job.</p>
    # @!attribute job_id
    #   <p>The job ID.</p>
    #   @return [String]
    class JobDetailsIdentifiers < Struct.new(
      nil,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The job attachment settings returned to workers for a job. These are the Amazon S3 bucket name and the Amazon S3 prefix.</p>
    # @!attribute s3_bucket_name
    #   <p>The Amazon S3 bucket name.</p>
    #   @return [String]
    # @!attribute root_prefix
    #   <p>The root prefix.</p>
    #   @return [String]
    class JobDetailsJobAttachmentSettings < Struct.new(
      nil,
      :s3_bucket_name,
      :root_prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a job entity.</p>
    # @!attribute job_details
    #   <p>The job details.</p>
    #   @return [Types::JobDetailsEntity]
    # @!attribute job_attachment_details
    #   <p>The job attachment details.</p>
    #   @return [Types::JobAttachmentDetailsEntity]
    # @!attribute step_details
    #   <p>The step details.</p>
    #   @return [Types::StepDetailsEntity]
    # @!attribute environment_details
    #   <p>The environment details for the job entity.</p>
    #   @return [Types::EnvironmentDetailsEntity]
    class JobEntity < Struct.new(
      :job_details,
      :job_attachment_details,
      :step_details,
      :environment_details,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class JobDetails < JobEntity; end
      class JobAttachmentDetails < JobEntity; end
      class StepDetails < JobEntity; end
      class EnvironmentDetails < JobEntity; end
      class Unknown < JobEntity; end
    end

    # <p>The details of a job entity identifier.</p>
    # @!attribute job_details
    #   <p>The job details.</p>
    #   @return [Types::JobDetailsIdentifiers]
    # @!attribute job_attachment_details
    #   <p>The job attachment details.</p>
    #   @return [Types::JobAttachmentDetailsIdentifiers]
    # @!attribute step_details
    #   <p>The step details.</p>
    #   @return [Types::StepDetailsIdentifiers]
    # @!attribute environment_details
    #   <p>The environment details.</p>
    #   @return [Types::EnvironmentDetailsIdentifiers]
    class JobEntityIdentifiersUnion < Struct.new(
      :job_details,
      :job_attachment_details,
      :step_details,
      :environment_details,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class JobDetails < JobEntityIdentifiersUnion; end
      class JobAttachmentDetails < JobEntityIdentifiersUnion; end
      class StepDetails < JobEntityIdentifiersUnion; end
      class EnvironmentDetails < JobEntityIdentifiersUnion; end
      class Unknown < JobEntityIdentifiersUnion; end
    end

    # <p>The details for a job member.</p>
    # @!attribute farm_id
    #   <p>The farm ID.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID.</p>
    #   @return [String]
    # @!attribute principal_id
    #   <p>The principal ID of the job member.</p>
    #   @return [String]
    # @!attribute principal_type
    #   <p>The principal type of the job member.</p>
    #   @return [String]
    # @!attribute identity_store_id
    #   <p>The identity store ID.</p>
    #   @return [String]
    # @!attribute membership_level
    #   <p>The job member's membership level.</p>
    #   @return [String]
    class JobMember < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :job_id,
      :principal_id,
      :principal_type,
      :identity_store_id,
      :membership_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of job parameters.</p>
    # @!attribute int
    #   <p>A signed integer represented as a string.</p>
    #   @return [String]
    # @!attribute float
    #   <p>A double precision IEEE-754 floating point number represented as a string.</p>
    #   @return [String]
    # @!attribute string
    #   <p>A UTF-8 string.</p>
    #   @return [String]
    # @!attribute path
    #   <p>A file system path represented as a string.</p>
    #   @return [String]
    # @!attribute bool
    #   <p>A boolean value represented as a string. Accepted values are <code>true</code>, <code>false</code>, <code>yes</code>, <code>no</code>, <code>on</code>, <code>off</code>, <code>1</code>, and <code>0</code>, case-insensitive.</p>
    #   @return [String]
    # @!attribute range_expr
    #   <p>An Open Job Description range expression represented as a string, such as <code>1-10:2</code>.</p>
    #   @return [String]
    # @!attribute string_list
    #   <p>A list of UTF-8 strings.</p>
    #   @return [Array<String>]
    # @!attribute path_list
    #   <p>A list of file system paths, each represented as a string.</p>
    #   @return [Array<String>]
    # @!attribute int_list
    #   <p>A list of signed integers, each represented as a string.</p>
    #   @return [Array<String>]
    # @!attribute float_list
    #   <p>A list of double precision IEEE-754 floating point numbers, each represented as a string.</p>
    #   @return [Array<String>]
    # @!attribute bool_list
    #   <p>A list of boolean values, each represented as a string.</p>
    #   @return [Array<String>]
    # @!attribute int_list_list
    #   <p>A list of lists of signed integers, each represented as a string.</p>
    #   @return [Array<Array<String>>]
    class JobParameter < Struct.new(
      :int,
      :float,
      :string,
      :path,
      :bool,
      :range_expr,
      :string_list,
      :path_list,
      :int_list,
      :float_list,
      :bool_list,
      :int_list_list,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Int < JobParameter; end
      class Float < JobParameter; end
      class String < JobParameter; end
      class Path < JobParameter; end
      class Bool < JobParameter; end
      class RangeExpr < JobParameter; end
      class StringList < JobParameter; end
      class PathList < JobParameter; end
      class IntList < JobParameter; end
      class FloatList < JobParameter; end
      class BoolList < JobParameter; end
      class IntListList < JobParameter; end
      class Unknown < JobParameter; end
    end

    # <p>Identifies the user for a job.</p>
    # @!attribute posix
    #   <p>The user and group that the jobs in the queue run as.</p>
    #   @return [Types::PosixUser]
    # @!attribute windows
    #   <p>Identifies a Microsoft Windows user.</p>
    #   @return [Types::WindowsUser]
    # @!attribute run_as
    #   <p>Specifies whether the job should run using the queue's system user or if the job should run using the worker agent system user.</p>
    #   @return [String]
    class JobRunAsUser < Struct.new(
      nil,
      :posix,
      :windows,
      :run_as,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a job search.</p>
    # @!attribute job_id
    #   <p>The job ID.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The job name.</p>
    #   @return [String]
    # @!attribute lifecycle_status
    #   <p>The life cycle status.</p>
    #   @return [String]
    # @!attribute lifecycle_status_message
    #   <p>The life cycle status message.</p>
    #   @return [String]
    # @!attribute task_run_status
    #   <p>The task run status for the job.</p> <ul> <li> <p> <code>PENDING</code>–pending and waiting for resources.</p> </li> <li> <p> <code>READY</code>–ready to be processed.</p> </li> <li> <p> <code>ASSIGNED</code>–assigned and will run next on a worker.</p> </li> <li> <p> <code>SCHEDULED</code>–scheduled to be run on a worker.</p> </li> <li> <p> <code>INTERRUPTING</code>–being interrupted.</p> </li> <li> <p> <code>RUNNING</code>–running on a worker.</p> </li> <li> <p> <code>SUSPENDED</code>–the task is suspended.</p> </li> <li> <p> <code>CANCELED</code>–the task has been canceled.</p> </li> <li> <p> <code>FAILED</code>–the task has failed.</p> </li> <li> <p> <code>SUCCEEDED</code>–the task has succeeded.</p> </li> </ul>
    #   @return [String]
    # @!attribute target_task_run_status
    #   <p>The task status to update the job's tasks to.</p>
    #   @return [String]
    # @!attribute task_run_status_counts
    #   <p>The number of tasks running on the job.</p>
    #   @return [Hash<String, Integer>]
    # @!attribute task_failure_retry_count
    #   <p>The total number of times tasks from the job failed and were retried.</p>
    #   @return [Integer]
    # @!attribute priority
    #   <p>The job priority.</p>
    #   @return [Integer]
    # @!attribute max_failed_tasks_count
    #   <p>The number of task failures before the job stops running and is marked as <code>FAILED</code>.</p>
    #   @return [Integer]
    # @!attribute max_retries_per_task
    #   <p>The maximum number of retries for a job.</p>
    #   @return [Integer]
    # @!attribute created_by
    #   <p>The user or system that created this resource.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the resource was created.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The date and time the resource ended running.</p>
    #   @return [Time]
    # @!attribute started_at
    #   <p>The date and time the resource started running.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the resource was updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user or system that updated this resource.</p>
    #   @return [String]
    # @!attribute job_parameters
    #   <p>The job parameters.</p>
    #   @return [Hash<String, Types::JobParameter>]
    # @!attribute max_worker_count
    #   <p>The maximum number of worker hosts that can concurrently process a job. When the <code>maxWorkerCount</code> is reached, no more workers will be assigned to process the job, even if the fleets assigned to the job's queue has available workers.</p> <p>You can't set the <code>maxWorkerCount</code> to 0. If you set it to -1, there is no maximum number of workers.</p> <p>If you don't specify the <code>maxWorkerCount</code>, the default is -1.</p>
    #   @return [Integer]
    # @!attribute source_job_id
    #   <p>The job ID for the source job.</p>
    #   @return [String]
    class JobSearchSummary < Struct.new(
      nil,
      :job_id,
      :queue_id,
      :name,
      :lifecycle_status,
      :lifecycle_status_message,
      :task_run_status,
      :target_task_run_status,
      :task_run_status_counts,
      :task_failure_retry_count,
      :priority,
      :max_failed_tasks_count,
      :max_retries_per_task,
      :created_by,
      :created_at,
      :ended_at,
      :started_at,
      :updated_at,
      :updated_by,
      :job_parameters,
      :max_worker_count,
      :source_job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of job details.</p>
    # @!attribute job_id
    #   <p>The job ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The job name.</p>
    #   @return [String]
    # @!attribute lifecycle_status
    #   <p>The life cycle status.</p>
    #   @return [String]
    # @!attribute lifecycle_status_message
    #   <p>The life cycle status message.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The job priority.</p>
    #   @return [Integer]
    # @!attribute created_at
    #   <p>The date and time the resource was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user or system that created this resource.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time the resource was updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user or system that updated this resource.</p>
    #   @return [String]
    # @!attribute started_at
    #   <p>The date and time the resource started running.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The date and time the resource ended running.</p>
    #   @return [Time]
    # @!attribute task_run_status
    #   <p>The task run status for the job.</p> <ul> <li> <p> <code>PENDING</code>–pending and waiting for resources.</p> </li> <li> <p> <code>READY</code>–ready to be processed.</p> </li> <li> <p> <code>ASSIGNED</code>–assigned and will run next on a worker.</p> </li> <li> <p> <code>SCHEDULED</code>–scheduled to be run on a worker.</p> </li> <li> <p> <code>INTERRUPTING</code>–being interrupted.</p> </li> <li> <p> <code>RUNNING</code>–running on a worker.</p> </li> <li> <p> <code>SUSPENDED</code>–the task is suspended.</p> </li> <li> <p> <code>CANCELED</code>–the task has been canceled.</p> </li> <li> <p> <code>FAILED</code>–the task has failed.</p> </li> <li> <p> <code>SUCCEEDED</code>–the task has succeeded.</p> </li> </ul>
    #   @return [String]
    # @!attribute target_task_run_status
    #   <p>The task status to update the job's tasks to.</p>
    #   @return [String]
    # @!attribute task_run_status_counts
    #   <p>The number of tasks running on the job.</p>
    #   @return [Hash<String, Integer>]
    # @!attribute task_failure_retry_count
    #   <p>The total number of times tasks from the job failed and were retried.</p>
    #   @return [Integer]
    # @!attribute max_failed_tasks_count
    #   <p>The number of task failures before the job stops running and is marked as <code>FAILED</code>.</p>
    #   @return [Integer]
    # @!attribute max_retries_per_task
    #   <p>The maximum number of retries for a job.</p>
    #   @return [Integer]
    # @!attribute max_worker_count
    #   <p>The maximum number of worker hosts that can concurrently process a job. When the <code>maxWorkerCount</code> is reached, no more workers will be assigned to process the job, even if the fleets assigned to the job's queue has available workers.</p> <p>You can't set the <code>maxWorkerCount</code> to 0. If you set it to -1, there is no maximum number of workers.</p> <p>If you don't specify the <code>maxWorkerCount</code>, the default is -1.</p>
    #   @return [Integer]
    # @!attribute source_job_id
    #   <p>The job ID for the source job.</p>
    #   @return [String]
    class JobSummary < Struct.new(
      nil,
      :job_id,
      :name,
      :lifecycle_status,
      :lifecycle_status_message,
      :priority,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      :started_at,
      :ended_at,
      :task_run_status,
      :target_task_run_status,
      :task_run_status_counts,
      :task_failure_retry_count,
      :max_failed_tasks_count,
      :max_retries_per_task,
      :max_worker_count,
      :source_job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details for a license endpoint.</p>
    # @!attribute license_endpoint_id
    #   <p>The license endpoint ID.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the license endpoint.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The status message of the license endpoint.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The VPC (virtual private cloud) ID associated with the license endpoint.</p>
    #   @return [String]
    class LicenseEndpointSummary < Struct.new(
      nil,
      :license_endpoint_id,
      :status,
      :status_message,
      :vpc_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information about a specific limit.</p>
    # @!attribute farm_id
    #   <p>The unique identifier of the farm that contains the limit.</p>
    #   @return [String]
    # @!attribute limit_id
    #   <p>The unique identifier of the limit.</p>
    #   @return [String]
    # @!attribute current_count
    #   <p>The number of resources from the limit that are being used by jobs. The result is delayed and may not be the count at the time that you called the operation.</p>
    #   @return [Integer]
    # @!attribute created_at
    #   <p>The Unix timestamp of the date and time that the limit was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user identifier of the person that created the limit.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The Unix timestamp of the date and time that the limit was last updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user identifier of the person that last updated the limit.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The name of the limit used in lists to identify the limit.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    # @!attribute amount_requirement_name
    #   <p>The value that you specify as the <code>name</code> in the <code>amounts</code> field of the <code>hostRequirements</code> in a step of a job template to declare the limit requirement.</p>
    #   @return [String]
    # @!attribute max_count
    #   <p>The maximum number of resources constrained by this limit. When all of the resources are in use, steps that require the limit won't be scheduled until the resource is available.</p> <p>The <code>maxValue</code> must not be 0. If the value is -1, there is no restriction on the number of resources that can be acquired for this limit.</p>
    #   @return [Integer]
    class LimitSummary < Struct.new(
      nil,
      :farm_id,
      :limit_id,
      :current_count,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      :display_name,
      :amount_requirement_name,
      :max_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination fields for List operation inputs (nextToken + maxResults).
    # @!attribute next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    class ListAvailableMeteredProductsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination field for List operation outputs (nextToken).
    # @!attribute metered_products
    #   <p>The metered products.</p>
    #   @return [Array<Types::MeteredProductSummary>]
    # @!attribute next_token
    #   <p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>
    #   @return [String]
    class ListAvailableMeteredProductsResponse < Struct.new(
      nil,
      :metered_products,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination fields for List operation inputs (nextToken + maxResults).
    # @!attribute farm_id
    #   <p>The farm ID associated with the budgets.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status to list for the budgets.</p>
    #   @return [String]
    class ListBudgetsRequest < Struct.new(
      nil,
      :farm_id,
      :next_token,
      :max_results,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination field for List operation outputs (nextToken).
    # @!attribute budgets
    #   <p>The budgets to include on the list.</p>
    #   @return [Array<Types::BudgetSummary>]
    # @!attribute next_token
    #   <p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>
    #   @return [String]
    class ListBudgetsResponse < Struct.new(
      nil,
      :budgets,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination fields for List operation inputs (nextToken + maxResults).
    # @!attribute farm_id
    #   <p>The farm ID.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    class ListFarmMembersRequest < Struct.new(
      nil,
      :farm_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination field for List operation outputs (nextToken).
    # @!attribute members
    #   <p>The members on the list.</p>
    #   @return [Array<Types::FarmMember>]
    # @!attribute next_token
    #   <p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>
    #   @return [String]
    class ListFarmMembersResponse < Struct.new(
      nil,
      :members,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination fields for List operation inputs (nextToken + maxResults).
    # @!attribute next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    # @!attribute principal_id
    #   <p>The principal ID of the member to list on the farm.</p>
    #   @return [String]
    class ListFarmsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :principal_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination field for List operation outputs (nextToken).
    # @!attribute farms
    #   <p>Farms on the list.</p>
    #   @return [Array<Types::FarmSummary>]
    # @!attribute next_token
    #   <p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>
    #   @return [String]
    class ListFarmsResponse < Struct.new(
      nil,
      :farms,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination fields for List operation inputs (nextToken + maxResults).
    # @!attribute farm_id
    #   <p>The farm ID of the fleet.</p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p>The fleet ID to include on the list.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    class ListFleetMembersRequest < Struct.new(
      nil,
      :farm_id,
      :fleet_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination field for List operation outputs (nextToken).
    # @!attribute members
    #   <p>The members on the list.</p>
    #   @return [Array<Types::FleetMember>]
    # @!attribute next_token
    #   <p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>
    #   @return [String]
    class ListFleetMembersResponse < Struct.new(
      nil,
      :members,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination fields for List operation inputs (nextToken + maxResults).
    # @!attribute farm_id
    #   <p>The farm ID of the fleets.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    # @!attribute principal_id
    #   <p>The principal ID of the members to include in the fleet.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display names of a list of fleets.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the fleet.</p>
    #   @return [String]
    class ListFleetsRequest < Struct.new(
      nil,
      :farm_id,
      :next_token,
      :max_results,
      :principal_id,
      :display_name,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination field for List operation outputs (nextToken).
    # @!attribute fleets
    #   <p>The fleets on the list.</p>
    #   @return [Array<Types::FleetSummary>]
    # @!attribute next_token
    #   <p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>
    #   @return [String]
    class ListFleetsResponse < Struct.new(
      nil,
      :fleets,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination fields for List operation inputs (nextToken + maxResults).
    # @!attribute farm_id
    #   <p>The farm ID of the job to list.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID to include on the list.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID to include on the list.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    class ListJobMembersRequest < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :job_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination field for List operation outputs (nextToken).
    # @!attribute members
    #   <p>The members on the list.</p>
    #   @return [Array<Types::JobMember>]
    # @!attribute next_token
    #   <p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>
    #   @return [String]
    class ListJobMembersResponse < Struct.new(
      nil,
      :members,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination fields for List operation inputs (nextToken + maxResults).
    # @!attribute farm_id
    #   <p>The farm ID of the job to list.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID to include on the list.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID to include on the list.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    class ListJobParameterDefinitionsRequest < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :job_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination field for List operation outputs (nextToken).
    # @!attribute job_parameter_definitions
    #   <p>Lists parameter definitions of a job.</p>
    #   @return [Array<JSON>]
    # @!attribute next_token
    #   <p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>
    #   @return [String]
    class ListJobParameterDefinitionsResponse < Struct.new(
      nil,
      :job_parameter_definitions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination fields for List operation inputs (nextToken + maxResults).
    # @!attribute farm_id
    #   <p>The farm ID for the jobs.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID for the job.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    # @!attribute principal_id
    #   <p>The principal ID of the members on the jobs.</p>
    #   @return [String]
    class ListJobsRequest < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :next_token,
      :max_results,
      :principal_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination field for List operation outputs (nextToken).
    # @!attribute jobs
    #   <p>The jobs on the list.</p>
    #   @return [Array<Types::JobSummary>]
    # @!attribute next_token
    #   <p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>
    #   @return [String]
    class ListJobsResponse < Struct.new(
      nil,
      :jobs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination fields for List operation inputs (nextToken + maxResults).
    # @!attribute next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    class ListLicenseEndpointsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination field for List operation outputs (nextToken).
    # @!attribute license_endpoints
    #   <p>The license endpoints.</p>
    #   @return [Array<Types::LicenseEndpointSummary>]
    # @!attribute next_token
    #   <p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>
    #   @return [String]
    class ListLicenseEndpointsResponse < Struct.new(
      nil,
      :license_endpoints,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination fields for List operation inputs (nextToken + maxResults).
    # @!attribute farm_id
    #   <p>The unique identifier of the farm that contains the limits.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of limits to return in each page of results.</p>
    #   @return [Integer]
    class ListLimitsRequest < Struct.new(
      nil,
      :farm_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination field for List operation outputs (nextToken).
    # @!attribute limits
    #   <p>A list of limits that the farm contains.</p>
    #   @return [Array<Types::LimitSummary>]
    # @!attribute next_token
    #   <p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>
    #   @return [String]
    class ListLimitsResponse < Struct.new(
      nil,
      :limits,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination fields for List operation inputs (nextToken + maxResults).
    # @!attribute next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    # @!attribute principal_id
    #   <p>The ID of the IAM Identity Center principal whose Deadline Cloud resource memberships you want to list.</p>
    #   @return [String]
    # @!attribute identity_store_id
    #   <p>The identity store ID that contains the principal. This parameter is required for callers that do not use a monitor session.</p>
    #   @return [String]
    # @!attribute identity_center_region
    #   <p>The Region of the IAM Identity Center instance. If not provided, the service defaults to the Amazon Web Services Region in which you make the request.</p>
    #   @return [String]
    # @!attribute resource_types
    #   <p>The resource types to include when listing the principal's memberships. If not specified, memberships for all supported resource types are returned.</p>
    #   @return [Array<String>]
    class ListMembershipsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :principal_id,
      :identity_store_id,
      :identity_center_region,
      :resource_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination field for List operation outputs (nextToken).
    # @!attribute memberships
    #   <p>The memberships associated with the specified principal.</p>
    #   @return [Array<Types::MembershipSummary>]
    # @!attribute next_token
    #   <p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>
    #   @return [String]
    class ListMembershipsResponse < Struct.new(
      nil,
      :memberships,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination fields for List operation inputs (nextToken + maxResults).
    # @!attribute license_endpoint_id
    #   <p>The license endpoint ID to include on the list of metered products.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    class ListMeteredProductsRequest < Struct.new(
      nil,
      :license_endpoint_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination field for List operation outputs (nextToken).
    # @!attribute metered_products
    #   <p>The metered products to list.</p>
    #   @return [Array<Types::MeteredProductSummary>]
    # @!attribute next_token
    #   <p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>
    #   @return [String]
    class ListMeteredProductsResponse < Struct.new(
      nil,
      :metered_products,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination fields for List operation inputs (nextToken + maxResults).
    # @!attribute next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    class ListMonitorsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination field for List operation outputs (nextToken).
    # @!attribute monitors
    #   <p>A list of <code>MonitorSummary</code> objects that describe your monitors in the Deadline Cloud.</p>
    #   @return [Array<Types::MonitorSummary>]
    # @!attribute next_token
    #   <p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>
    #   @return [String]
    class ListMonitorsResponse < Struct.new(
      nil,
      :monitors,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination fields for List operation inputs (nextToken + maxResults).
    # @!attribute farm_id
    #   <p>The farm ID for the queue environment list.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID for the queue environment list.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    class ListQueueEnvironmentsRequest < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination field for List operation outputs (nextToken).
    # @!attribute environments
    #   <p>The environments to include in the queue environments list.</p>
    #   @return [Array<Types::QueueEnvironmentSummary>]
    # @!attribute next_token
    #   <p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>
    #   @return [String]
    class ListQueueEnvironmentsResponse < Struct.new(
      nil,
      :environments,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination fields for List operation inputs (nextToken + maxResults).
    # @!attribute farm_id
    #   <p>The farm ID for the queue-fleet association list.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    # @!attribute queue_id
    #   <p>The queue ID for the queue-fleet association list.</p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p>The fleet ID for the queue-fleet association list.</p>
    #   @return [String]
    class ListQueueFleetAssociationsRequest < Struct.new(
      nil,
      :farm_id,
      :next_token,
      :max_results,
      :queue_id,
      :fleet_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination field for List operation outputs (nextToken).
    # @!attribute queue_fleet_associations
    #   <p>The queue-fleet associations on the list.</p>
    #   @return [Array<Types::QueueFleetAssociationSummary>]
    # @!attribute next_token
    #   <p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>
    #   @return [String]
    class ListQueueFleetAssociationsResponse < Struct.new(
      nil,
      :queue_fleet_associations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination fields for List operation inputs (nextToken + maxResults).
    # @!attribute farm_id
    #   <p>The unique identifier of the farm that contains the limits and associations.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of associations to return in each page of results.</p>
    #   @return [Integer]
    # @!attribute queue_id
    #   <p>Specifies that the operation should return only the queue limit associations for the specified queue. If you specify both the <code>queueId</code> and the <code>limitId</code>, only the specified limit is returned if it exists.</p>
    #   @return [String]
    # @!attribute limit_id
    #   <p>Specifies that the operation should return only the queue limit associations for the specified limit. If you specify both the <code>queueId</code> and the <code>limitId</code>, only the specified limit is returned if it exists.</p>
    #   @return [String]
    class ListQueueLimitAssociationsRequest < Struct.new(
      nil,
      :farm_id,
      :next_token,
      :max_results,
      :queue_id,
      :limit_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination field for List operation outputs (nextToken).
    # @!attribute queue_limit_associations
    #   <p>A list of associations between limits and queues in the farm specified in the request.</p>
    #   @return [Array<Types::QueueLimitAssociationSummary>]
    # @!attribute next_token
    #   <p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>
    #   @return [String]
    class ListQueueLimitAssociationsResponse < Struct.new(
      nil,
      :queue_limit_associations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination fields for List operation inputs (nextToken + maxResults).
    # @!attribute farm_id
    #   <p>The farm ID for the queue.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID to include on the list.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    class ListQueueMembersRequest < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination field for List operation outputs (nextToken).
    # @!attribute members
    #   <p>The members on the list.</p>
    #   @return [Array<Types::QueueMember>]
    # @!attribute next_token
    #   <p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>
    #   @return [String]
    class ListQueueMembersResponse < Struct.new(
      nil,
      :members,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination fields for List operation inputs (nextToken + maxResults).
    # @!attribute farm_id
    #   <p>The farm ID of the queue.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    # @!attribute principal_id
    #   <p>The principal IDs to include in the list of queues.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the queues listed.</p> <ul> <li> <p> <code>ACTIVE</code>–The queues are active.</p> </li> <li> <p> <code>SCHEDULING</code>–The queues are scheduling.</p> </li> <li> <p> <code>SCHEDULING_BLOCKED</code>–The queue scheduling is blocked for these queues.</p> </li> </ul>
    #   @return [String]
    class ListQueuesRequest < Struct.new(
      nil,
      :farm_id,
      :next_token,
      :max_results,
      :principal_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination field for List operation outputs (nextToken).
    # @!attribute queues
    #   <p>The queues on the list.</p>
    #   @return [Array<Types::QueueSummary>]
    # @!attribute next_token
    #   <p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>
    #   @return [String]
    class ListQueuesResponse < Struct.new(
      nil,
      :queues,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination fields for List operation inputs (nextToken + maxResults).
    # @!attribute farm_id
    #   <p>The farm ID for the session actions list.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID for the session actions list.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID for the session actions list.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    # @!attribute session_id
    #   <p>The session ID to include on the sessions action list.</p>
    #   @return [String]
    # @!attribute task_id
    #   <p>The task ID for the session actions list.</p>
    #   @return [String]
    class ListSessionActionsRequest < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :job_id,
      :next_token,
      :max_results,
      :session_id,
      :task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination field for List operation outputs (nextToken).
    # @!attribute session_actions
    #   <p>The session actions.</p>
    #   @return [Array<Types::SessionActionSummary>]
    # @!attribute next_token
    #   <p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>
    #   @return [String]
    class ListSessionActionsResponse < Struct.new(
      nil,
      :session_actions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination fields for List operation inputs (nextToken + maxResults).
    # @!attribute farm_id
    #   <p>The farm ID for the session.</p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p>The fleet ID for the session.</p>
    #   @return [String]
    # @!attribute worker_id
    #   <p>The worker ID for the session.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    class ListSessionsForWorkerRequest < Struct.new(
      nil,
      :farm_id,
      :fleet_id,
      :worker_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination field for List operation outputs (nextToken).
    # @!attribute sessions
    #   <p>The sessions in the response.</p>
    #   @return [Array<Types::WorkerSessionSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    #   @return [String]
    class ListSessionsForWorkerResponse < Struct.new(
      nil,
      :sessions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination fields for List operation inputs (nextToken + maxResults).
    # @!attribute farm_id
    #   <p>The farm ID for the list of sessions.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID for the list of sessions</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID for the list of sessions.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    class ListSessionsRequest < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :job_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination field for List operation outputs (nextToken).
    # @!attribute sessions
    #   <p>The sessions on the list.</p>
    #   @return [Array<Types::SessionSummary>]
    # @!attribute next_token
    #   <p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>
    #   @return [String]
    class ListSessionsResponse < Struct.new(
      nil,
      :sessions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID for the list of step consumers.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID for the step consumer.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID for the step consumer.</p>
    #   @return [String]
    # @!attribute step_id
    #   <p>The step ID to include on the list.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    class ListStepConsumersRequest < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :job_id,
      :step_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination field for List operation outputs (nextToken).
    # @!attribute consumers
    #   <p>The consumers on the list.</p>
    #   @return [Array<Types::StepConsumer>]
    # @!attribute next_token
    #   <p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>
    #   @return [String]
    class ListStepConsumersResponse < Struct.new(
      nil,
      :consumers,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID for the step dependencies list.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID for the step dependencies list.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID for the step dependencies list.</p>
    #   @return [String]
    # @!attribute step_id
    #   <p>The step ID to include on the list.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    class ListStepDependenciesRequest < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :job_id,
      :step_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination field for List operation outputs (nextToken).
    # @!attribute dependencies
    #   <p>The dependencies on the list.</p>
    #   @return [Array<Types::StepDependency>]
    # @!attribute next_token
    #   <p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>
    #   @return [String]
    class ListStepDependenciesResponse < Struct.new(
      nil,
      :dependencies,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination fields for List operation inputs (nextToken + maxResults).
    # @!attribute farm_id
    #   <p>The farm ID to include on the list of steps.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID to include on the list of steps.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID to include on the list of steps.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    class ListStepsRequest < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :job_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination field for List operation outputs (nextToken).
    # @!attribute steps
    #   <p>The steps on the list.</p>
    #   @return [Array<Types::StepSummary>]
    # @!attribute next_token
    #   <p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>
    #   @return [String]
    class ListStepsResponse < Struct.new(
      nil,
      :steps,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination fields for List operation inputs (nextToken + maxResults).
    # @!attribute farm_id
    #   <p>The farm ID of the queue's storage profile.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID for the storage profile.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    class ListStorageProfilesForQueueRequest < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination field for List operation outputs (nextToken).
    # @!attribute storage_profiles
    #   <p>The storage profiles in the queue.</p>
    #   @return [Array<Types::StorageProfileSummary>]
    # @!attribute next_token
    #   <p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>
    #   @return [String]
    class ListStorageProfilesForQueueResponse < Struct.new(
      nil,
      :storage_profiles,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination fields for List operation inputs (nextToken + maxResults).
    # @!attribute farm_id
    #   <p>The farm ID of the storage profile.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    class ListStorageProfilesRequest < Struct.new(
      nil,
      :farm_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination field for List operation outputs (nextToken).
    # @!attribute storage_profiles
    #   <p>The storage profiles.</p>
    #   @return [Array<Types::StorageProfileSummary>]
    # @!attribute next_token
    #   <p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>
    #   @return [String]
    class ListStorageProfilesResponse < Struct.new(
      nil,
      :storage_profiles,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The resource ARN to list tags for.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>Each tag consists of a tag key and a tag value. Tag keys and values are both required, but tag values can be empty strings.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination fields for List operation inputs (nextToken + maxResults).
    # @!attribute farm_id
    #   <p>The farm ID connected to the tasks.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID connected to the tasks.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID for the tasks.</p>
    #   @return [String]
    # @!attribute step_id
    #   <p>The step ID for the tasks.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    class ListTasksRequest < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :job_id,
      :step_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination field for List operation outputs (nextToken).
    # @!attribute tasks
    #   <p>Tasks for the job.</p>
    #   @return [Array<Types::TaskSummary>]
    # @!attribute next_token
    #   <p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>
    #   @return [String]
    class ListTasksResponse < Struct.new(
      nil,
      :tasks,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination fields for List operation inputs (nextToken + maxResults).
    # @!attribute farm_id
    #   <p>The farm ID of the farm that contains the fleet.</p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p>The fleet ID of the fleet that contains the volumes.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    class ListVolumesRequest < Struct.new(
      nil,
      :farm_id,
      :fleet_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination field for List operation outputs (nextToken).
    # @!attribute volumes
    #   <p>The volumes on the list.</p>
    #   @return [Array<Types::VolumeSummary>]
    # @!attribute next_token
    #   <p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>
    #   @return [String]
    class ListVolumesResponse < Struct.new(
      nil,
      :volumes,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination fields for List operation inputs (nextToken + maxResults).
    # @!attribute farm_id
    #   <p>The farm ID connected to the workers.</p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p>The fleet ID of the workers.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results, or <code>null</code> to start from the beginning.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    class ListWorkersRequest < Struct.new(
      nil,
      :farm_id,
      :fleet_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared pagination field for List operation outputs (nextToken).
    # @!attribute workers
    #   <p>The workers on the list.</p>
    #   @return [Array<Types::WorkerSummary>]
    # @!attribute next_token
    #   <p>If Deadline Cloud returns <code>nextToken</code>, then there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. If you provide a token that isn't valid, then you receive an HTTP 400 <code>ValidationException</code> error.</p>
    #   @return [String]
    class ListWorkersResponse < Struct.new(
      nil,
      :workers,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Log configuration details.</p>
    # @!attribute log_driver
    #   <p>The log drivers for worker related logs.</p>
    #   @return [String]
    # @!attribute options
    #   <p>The options for a log driver.</p>
    #   @return [Hash<String, String>]
    # @!attribute parameters
    #   <p>The parameters for the log configuration.</p>
    #   @return [Hash<String, String>]
    # @!attribute error
    #   <p>The log configuration error details.</p>
    #   @return [String]
    class LogConfiguration < Struct.new(
      nil,
      :log_driver,
      :options,
      :parameters,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of the manifest that links a job's source information.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute file_system_location_name
    #   <p>The file system location name.</p>
    #   @return [String]
    # @!attribute root_path
    #   <p>The file's root path.</p>
    #   @return [String]
    # @!attribute root_path_format
    #   <p>The format of the root path.</p>
    #   @return [String]
    # @!attribute output_relative_directories
    #   <p>The file path relative to the directory.</p>
    #   @return [Array<String>]
    # @!attribute input_manifest_path
    #   <p>The file path.</p>
    #   @return [String]
    # @!attribute input_manifest_hash
    #   <p>The hash value of the file.</p>
    #   @return [String]
    class ManifestProperties < Struct.new(
      nil,
      :file_system_location_name,
      :root_path,
      :root_path_format,
      :output_relative_directories,
      :input_manifest_path,
      :input_manifest_hash,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A membership record for a principal on a single Deadline Cloud resource. The summary identifies the resource that the principal is a member of and the principal's membership level for that resource.</p>
    # @!attribute farm
    #   <p>A membership on a farm.</p>
    #   @return [Types::FarmMember]
    # @!attribute queue
    #   <p>A membership on a queue.</p>
    #   @return [Types::QueueMember]
    # @!attribute fleet
    #   <p>A membership on a fleet.</p>
    #   @return [Types::FleetMember]
    # @!attribute job
    #   <p>A membership on a job.</p>
    #   @return [Types::JobMember]
    class MembershipSummary < Struct.new(
      :farm,
      :queue,
      :fleet,
      :job,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Farm < MembershipSummary; end
      class Queue < MembershipSummary; end
      class Fleet < MembershipSummary; end
      class Job < MembershipSummary; end
      class Unknown < MembershipSummary; end
    end

    # <p>The range of memory in MiB.</p>
    # @!attribute min
    #   <p>The minimum amount of memory (in MiB).</p>
    #   @return [Integer]
    # @!attribute max
    #   <p>The maximum amount of memory (in MiB).</p>
    #   @return [Integer]
    class MemoryMiBRange < Struct.new(
      nil,
      :min,
      :max,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a metered product.</p>
    # @!attribute product_id
    #   <p>The product ID.</p>
    #   @return [String]
    # @!attribute family
    #   <p>The family to which the metered product belongs.</p>
    #   @return [String]
    # @!attribute vendor
    #   <p>The vendor.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port on which the metered product should run.</p>
    #   @return [Integer]
    class MeteredProductSummary < Struct.new(
      nil,
      :product_id,
      :family,
      :vendor,
      :port,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information about a monitor in Deadline Cloud.</p>
    # @!attribute monitor_id
    #   <p>The unique identifier for the monitor.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The name of the monitor that displays on the Deadline Cloud console.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    # @!attribute subdomain
    #   <p>The subdomain used for the monitor URL. The full URL of the monitor is subdomain.Region.deadlinecloud.amazonaws.com.</p>
    #   @return [String]
    # @!attribute url
    #   <p>The complete URL of the monitor. The full URL of the monitor is subdomain.Region.deadlinecloud.amazonaws.com.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name of the IAM role for the monitor. Users of the monitor use this role to access Deadline Cloud resources.</p>
    #   @return [String]
    # @!attribute identity_center_instance_arn
    #   <p>The Amazon Resource Name of the IAM Identity Center instance responsible for authenticating monitor users.</p>
    #   @return [String]
    # @!attribute identity_center_region
    #   <p>The Region where IAM Identity Center is enabled.</p>
    #   @return [String]
    # @!attribute identity_center_application_arn
    #   <p>The Amazon Resource Name that the IAM Identity Center assigned to the monitor when it was created.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The UNIX timestamp of the date and time that the monitor was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user name of the person that created the monitor.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The UNIX timestamp of the date and time that the monitor was last updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user name of the person that last updated the monitor.</p>
    #   @return [String]
    class MonitorSummary < Struct.new(
      nil,
      :monitor_id,
      :display_name,
      :subdomain,
      :url,
      :role_arn,
      :identity_center_instance_arn,
      :identity_center_region,
      :identity_center_application_arn,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a filtered search for parameters.</p>
    # @!attribute name
    #   <p>The name of the parameter to filter on.</p>
    #   @return [String]
    # @!attribute operator
    #   <p>The type of comparison to use to filter results.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The parameter's value.</p>
    #   @return [String]
    class ParameterFilterExpression < Struct.new(
      nil,
      :name,
      :operator,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Organizes parameters according to your specifications.</p>
    # @!attribute sort_order
    #   <p>The sort order for the parameter.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The parameter name to sort by.</p>
    #   @return [String]
    class ParameterSortExpression < Struct.new(
      nil,
      :sort_order,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a search for two or more step parameters.</p>
    # @!attribute parameters
    #   <p>The parameters to search for.</p>
    #   @return [Array<Types::StepParameter>]
    # @!attribute combination
    #   <p>The combination expression to use in the search.</p>
    #   @return [String]
    class ParameterSpace < Struct.new(
      nil,
      :parameters,
      :combination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a source and destination path.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute source_path_format
    #   <p>The source path format.</p>
    #   @return [String]
    # @!attribute source_path
    #   <p>The source path.</p>
    #   @return [String]
    # @!attribute destination_path
    #   <p>The destination path.</p>
    #   @return [String]
    class PathMappingRule < Struct.new(
      nil,
      :source_path_format,
      :source_path,
      :destination_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the persistent EBS volume configuration for workers in a service managed fleet.</p>
    # @!attribute size_gi_b
    #   <p>The persistent volume size in GiB. The default is 250.</p>
    #   @return [Integer]
    # @!attribute iops
    #   <p>The IOPS per persistent volume. The default is 3000.</p>
    #   @return [Integer]
    # @!attribute throughput_mi_b
    #   <p>The throughput per persistent volume in MiB. The default is 125.</p>
    #   @return [Integer]
    # @!attribute mount_path
    #   <p>The file system path where the persistent volume is mounted on the worker instance.</p>
    #   @return [String]
    # @!attribute last_used_ttl_hours
    #   <p>The number of hours a persistent volume can remain unused before it is deleted. The default is 168 (7 days).</p>
    #   @return [Integer]
    class PersistentVolumeConfiguration < Struct.new(
      nil,
      :size_gi_b,
      :iops,
      :throughput_mi_b,
      :mount_path,
      :last_used_ttl_hours,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:size_gi_b] = 250 unless options.key?(:size_gi_b)
        options[:iops] = 3000 unless options.key?(:iops)
        options[:throughput_mi_b] = 125 unless options.key?(:throughput_mi_b)
        options[:last_used_ttl_hours] = 12 unless options.key?(:last_used_ttl_hours)
        super
      end
    end

    # <p>The POSIX user.</p>
    # @!attribute user
    #   <p>The name of the POSIX user.</p>
    #   @return [String]
    # @!attribute group
    #   <p>The name of the POSIX user's group.</p>
    #   @return [String]
    class PosixUser < Struct.new(
      nil,
      :user,
      :group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for priority balanced scheduling. Workers are distributed evenly across all jobs at the highest priority level.</p>
    # @!attribute rendering_task_buffer
    #   <p>The rendering task buffer controls worker stickiness. A worker only switches from its current job to another job at the same priority if the other job has fewer rendering tasks by more than this buffer value. Higher values make workers stickier to their current jobs. The default value is <code>1</code>.</p>
    #   @return [Integer]
    class PriorityBalancedSchedulingConfiguration < Struct.new(
      nil,
      :rendering_task_buffer,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:rendering_task_buffer] = 1 unless options.key?(:rendering_task_buffer)
        super
      end
    end

    # <p>Configuration for priority first-in, first-out (FIFO) scheduling. Workers are assigned to the highest-priority job first. When multiple jobs share the same priority, the job submitted earliest receives workers first.</p>
    class PriorityFifoSchedulingConfiguration < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute license_endpoint_id
    #   <p>The license endpoint ID to add to the metered product.</p>
    #   @return [String]
    # @!attribute product_id
    #   <p>The product ID to add to the metered product.</p>
    #   @return [String]
    class PutMeteredProductRequest < Struct.new(
      nil,
      :license_endpoint_id,
      :product_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class PutMeteredProductResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The summary of a queue environment.</p>
    # @!attribute queue_environment_id
    #   <p>The queue environment ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the queue environment.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The queue environment's priority.</p>
    #   @return [Integer]
    class QueueEnvironmentSummary < Struct.new(
      nil,
      :queue_environment_id,
      :name,
      :priority,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a queue-fleet association.</p>
    # @!attribute queue_id
    #   <p>The queue ID.</p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p>The fleet ID.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of task scheduling in the queue-fleet association.</p> <ul> <li> <p> <code>ACTIVE</code>–Association is active.</p> </li> <li> <p> <code>STOP_SCHEDULING_AND_COMPLETE_TASKS</code>–Association has stopped scheduling new tasks and is completing current tasks.</p> </li> <li> <p> <code>STOP_SCHEDULING_AND_CANCEL_TASKS</code>–Association has stopped scheduling new tasks and is canceling current tasks.</p> </li> <li> <p> <code>STOPPED</code>–Association has been stopped.</p> </li> </ul>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the resource was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user or system that created this resource.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time the resource was updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user or system that updated this resource.</p>
    #   @return [String]
    class QueueFleetAssociationSummary < Struct.new(
      nil,
      :queue_id,
      :fleet_id,
      :status,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information about the association between a queue and a limit.</p>
    # @!attribute queue_id
    #   <p>The unique identifier of the queue in the association.</p>
    #   @return [String]
    # @!attribute limit_id
    #   <p>The unique identifier of the limit in the association.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of task scheduling in the queue-limit association.</p> <ul> <li> <p> <code>ACTIVE</code> - Association is active.</p> </li> <li> <p> <code>STOP_LIMIT_USAGE_AND_COMPLETE_TASKS</code> - Association has stopped scheduling new tasks and is completing current tasks.</p> </li> <li> <p> <code>STOP_LIMIT_USAGE_AND_CANCEL_TASKS</code> - Association has stopped scheduling new tasks and is canceling current tasks.</p> </li> <li> <p> <code>STOPPED</code> - Association has been stopped.</p> </li> </ul>
    #   @return [String]
    # @!attribute created_at
    #   <p>The Unix timestamp of the date and time that the association was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user identifier of the person that created the association.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The Unix timestamp of the date and time that the association was last updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user identifier of the person that updated the association.</p>
    #   @return [String]
    class QueueLimitAssociationSummary < Struct.new(
      nil,
      :queue_id,
      :limit_id,
      :status,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a queue member.</p>
    # @!attribute farm_id
    #   <p>The farm ID.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID.</p>
    #   @return [String]
    # @!attribute principal_id
    #   <p>The principal ID of the queue member.</p>
    #   @return [String]
    # @!attribute principal_type
    #   <p>The principal type of the queue member.</p>
    #   @return [String]
    # @!attribute identity_store_id
    #   <p>The identity store ID.</p>
    #   @return [String]
    # @!attribute membership_level
    #   <p>The queue member's membership level.</p>
    #   @return [String]
    class QueueMember < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :principal_id,
      :principal_type,
      :identity_store_id,
      :membership_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a queue summary.</p>
    # @!attribute farm_id
    #   <p>The farm ID.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the queue summary to update.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    # @!attribute status
    #   <p>That status of the queue.</p>
    #   @return [String]
    # @!attribute default_budget_action
    #   <p>The default action taken on a queue summary if a budget wasn't configured.</p>
    #   @return [String]
    # @!attribute blocked_reason
    #   <p>The reason the queue is blocked, if applicable.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the resource was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user or system that created this resource.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time the resource was updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user or system that updated this resource.</p>
    #   @return [String]
    class QueueSummary < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :display_name,
      :status,
      :default_budget_action,
      :blocked_reason,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested resource can't be found.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource that couldn't be found.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource that couldn't be found.</p>
    #   @return [String]
    # @!attribute context
    #   <p>Information about the resources in use when the exception was thrown.</p>
    #   @return [Hash<String, String>]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      :context,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a budget action.</p>
    # @!attribute type
    #   <p>The action taken on the budget once scheduling stops.</p>
    #   @return [String]
    # @!attribute threshold_percentage
    #   <p>The percentage threshold for the budget.</p>
    #   @return [Float]
    # @!attribute description
    #   <p>The budget action description.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    class ResponseBudgetAction < Struct.new(
      nil,
      :type,
      :threshold_percentage,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon S3 location information.</p>
    # @!attribute bucket_name
    #   <p>The name of the Amazon S3 bucket.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The Amazon S3 object key that uniquely identifies the Amazon S3 bucket.</p>
    #   @return [String]
    class S3Location < Struct.new(
      nil,
      :bucket_name,
      :key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The scheduling configuration for a queue. Defines the strategy used to assign workers to jobs.</p>
    # @!attribute priority_fifo
    #   <p>Workers are assigned to the highest-priority job first. When multiple jobs share the same priority, the job submitted earliest receives workers first. This is the default scheduling configuration for new queues.</p>
    #   @return [Types::PriorityFifoSchedulingConfiguration]
    # @!attribute priority_balanced
    #   <p>Workers are distributed evenly across all jobs at the highest priority level. When workers cannot be evenly divided, the extra workers are assigned to the jobs submitted earliest. If a job has fewer remaining tasks than its share of workers, the surplus workers are redistributed to other jobs at the same priority level.</p>
    #   @return [Types::PriorityBalancedSchedulingConfiguration]
    # @!attribute weighted_balanced
    #   <p>Workers are assigned to jobs based on a weighted formula that considers job priority, error count, submission time, and the number of tasks currently rendering. Each factor has a configurable weight that determines its influence on scheduling decisions.</p>
    #   @return [Types::WeightedBalancedSchedulingConfiguration]
    class SchedulingConfiguration < Struct.new(
      :priority_fifo,
      :priority_balanced,
      :weighted_balanced,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class PriorityFifo < SchedulingConfiguration; end
      class PriorityBalanced < SchedulingConfiguration; end
      class WeightedBalanced < SchedulingConfiguration; end
      class Unknown < SchedulingConfiguration; end
    end

    # <p>Defines the override behavior for jobs at the maximum priority (100) in weighted balanced scheduling.</p>
    # @!attribute always_schedule_first
    #   <p>Jobs at the maximum priority (100) are always scheduled before other jobs, regardless of the weighted scheduling formula. If multiple jobs have priority 100, ties are broken using the standard weighted formula.</p>
    #   @return [Types::SchedulingMaxPriorityOverrideAlwaysScheduleFirst]
    class SchedulingMaxPriorityOverride < Struct.new(
      :always_schedule_first,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AlwaysScheduleFirst < SchedulingMaxPriorityOverride; end
      class Unknown < SchedulingMaxPriorityOverride; end
    end

    # <p>Specifies that jobs at the maximum priority (100) are always scheduled first.</p>
    class SchedulingMaxPriorityOverrideAlwaysScheduleFirst < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the override behavior for jobs at the minimum priority (0) in weighted balanced scheduling.</p>
    # @!attribute always_schedule_last
    #   <p>Jobs at the minimum priority (0) are always scheduled after all other jobs, regardless of the weighted scheduling formula. If multiple jobs have priority 0, ties are broken using the standard weighted formula.</p>
    #   @return [Types::SchedulingMinPriorityOverrideAlwaysScheduleLast]
    class SchedulingMinPriorityOverride < Struct.new(
      :always_schedule_last,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AlwaysScheduleLast < SchedulingMinPriorityOverride; end
      class Unknown < SchedulingMinPriorityOverride; end
    end

    # <p>Specifies that jobs at the minimum priority (0) are always scheduled last.</p>
    class SchedulingMinPriorityOverrideAlwaysScheduleLast < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The type of search filter to apply.</p>
    # @!attribute date_time_filter
    #   <p>Filters based on date and time.</p>
    #   @return [Types::DateTimeFilterExpression]
    # @!attribute parameter_filter
    #   <p>Filters by parameter.</p>
    #   @return [Types::ParameterFilterExpression]
    # @!attribute search_term_filter
    #   <p>Filters by a specified search term.</p>
    #   @return [Types::SearchTermFilterExpression]
    # @!attribute string_filter
    #   <p>Filters by a string.</p>
    #   @return [Types::StringFilterExpression]
    # @!attribute string_list_filter
    #   <p>Filters by a list of strings.</p>
    #   @return [Types::StringListFilterExpression]
    # @!attribute group_filter
    #   <p>Filters by group.</p>
    #   @return [Types::SearchGroupedFilterExpressions]
    class SearchFilterExpression < Struct.new(
      :date_time_filter,
      :parameter_filter,
      :search_term_filter,
      :string_filter,
      :string_list_filter,
      :group_filter,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class DateTimeFilter < SearchFilterExpression; end
      class ParameterFilter < SearchFilterExpression; end
      class SearchTermFilter < SearchFilterExpression; end
      class StringFilter < SearchFilterExpression; end
      class StringListFilter < SearchFilterExpression; end
      class GroupFilter < SearchFilterExpression; end
      class Unknown < SearchFilterExpression; end
    end

    # <p>The search terms for a resource.</p>
    # @!attribute filters
    #   <p>The filters to use for the search.</p>
    #   @return [Array<Types::SearchFilterExpression>]
    # @!attribute operator
    #   <p>The operators to include in the search.</p>
    #   @return [String]
    class SearchGroupedFilterExpressions < Struct.new(
      nil,
      :filters,
      :operator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared input fields for all Search operations (filterExpressions, sortExpressions, itemOffset, pageSize).
    # @!attribute farm_id
    #   <p>The farm ID of the job.</p>
    #   @return [String]
    # @!attribute filter_expressions
    #   <p>The search terms for a resource.</p>
    #   @return [Types::SearchGroupedFilterExpressions]
    # @!attribute sort_expressions
    #   <p>The search terms for a resource.</p>
    #   @return [Array<Types::SearchSortExpression>]
    # @!attribute item_offset
    #   <p>The offset for the search results.</p>
    #   @return [Integer]
    # @!attribute page_size
    #   <p>Specifies the number of results to return.</p>
    #   @return [Integer]
    # @!attribute queue_ids
    #   <p>The queue ID to use in the job search.</p>
    #   @return [Array<String>]
    class SearchJobsRequest < Struct.new(
      nil,
      :farm_id,
      :filter_expressions,
      :sort_expressions,
      :item_offset,
      :page_size,
      :queue_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared output fields for all Search operations (nextItemOffset, totalResults).
    # @!attribute jobs
    #   <p>The jobs in the search.</p>
    #   @return [Array<Types::JobSearchSummary>]
    # @!attribute next_item_offset
    #   <p>The next item offset for the search results.</p>
    #   @return [Integer]
    # @!attribute total_results
    #   <p>The total number of results in the search.</p>
    #   @return [Integer]
    class SearchJobsResponse < Struct.new(
      nil,
      :jobs,
      :next_item_offset,
      :total_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resources to search.</p>
    # @!attribute user_jobs_first
    #   <p>Options for sorting a particular user's jobs first.</p>
    #   @return [Types::UserJobsFirst]
    # @!attribute field_sort
    #   <p>Options for sorting by a field.</p>
    #   @return [Types::FieldSortExpression]
    # @!attribute parameter_sort
    #   <p>Options for sorting by a parameter.</p>
    #   @return [Types::ParameterSortExpression]
    class SearchSortExpression < Struct.new(
      :user_jobs_first,
      :field_sort,
      :parameter_sort,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class UserJobsFirst < SearchSortExpression; end
      class FieldSort < SearchSortExpression; end
      class ParameterSort < SearchSortExpression; end
      class Unknown < SearchSortExpression; end
    end

    # Shared input fields for all Search operations (filterExpressions, sortExpressions, itemOffset, pageSize).
    # @!attribute farm_id
    #   <p>The farm ID to use for the step search.</p>
    #   @return [String]
    # @!attribute filter_expressions
    #   <p>The search terms for a resource.</p>
    #   @return [Types::SearchGroupedFilterExpressions]
    # @!attribute sort_expressions
    #   <p>The search terms for a resource.</p>
    #   @return [Array<Types::SearchSortExpression>]
    # @!attribute item_offset
    #   <p>The offset for the search results.</p>
    #   @return [Integer]
    # @!attribute page_size
    #   <p>Specifies the number of results to return.</p>
    #   @return [Integer]
    # @!attribute queue_ids
    #   <p>The queue IDs in the step search.</p>
    #   @return [Array<String>]
    # @!attribute job_id
    #   <p>The job ID to use in the step search.</p>
    #   @return [String]
    class SearchStepsRequest < Struct.new(
      nil,
      :farm_id,
      :filter_expressions,
      :sort_expressions,
      :item_offset,
      :page_size,
      :queue_ids,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared output fields for all Search operations (nextItemOffset, totalResults).
    # @!attribute steps
    #   <p>The steps in the search.</p>
    #   @return [Array<Types::StepSearchSummary>]
    # @!attribute next_item_offset
    #   <p>The next item offset for the search results.</p>
    #   @return [Integer]
    # @!attribute total_results
    #   <p>The total number of results in the search.</p>
    #   @return [Integer]
    class SearchStepsResponse < Struct.new(
      nil,
      :steps,
      :next_item_offset,
      :total_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared input fields for all Search operations (filterExpressions, sortExpressions, itemOffset, pageSize).
    # @!attribute farm_id
    #   <p>The farm ID of the task.</p>
    #   @return [String]
    # @!attribute filter_expressions
    #   <p>The search terms for a resource.</p>
    #   @return [Types::SearchGroupedFilterExpressions]
    # @!attribute sort_expressions
    #   <p>The search terms for a resource.</p>
    #   @return [Array<Types::SearchSortExpression>]
    # @!attribute item_offset
    #   <p>The offset for the search results.</p>
    #   @return [Integer]
    # @!attribute page_size
    #   <p>Specifies the number of results to return.</p>
    #   @return [Integer]
    # @!attribute queue_ids
    #   <p>The queue IDs to include in the search.</p>
    #   @return [Array<String>]
    # @!attribute job_id
    #   <p>The job ID for the task search.</p>
    #   @return [String]
    class SearchTasksRequest < Struct.new(
      nil,
      :farm_id,
      :filter_expressions,
      :sort_expressions,
      :item_offset,
      :page_size,
      :queue_ids,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared output fields for all Search operations (nextItemOffset, totalResults).
    # @!attribute tasks
    #   <p>Tasks in the search.</p>
    #   @return [Array<Types::TaskSearchSummary>]
    # @!attribute next_item_offset
    #   <p>The next item offset for the search results.</p>
    #   @return [Integer]
    # @!attribute total_results
    #   <p>The total number of results in the search.</p>
    #   @return [Integer]
    class SearchTasksResponse < Struct.new(
      nil,
      :tasks,
      :next_item_offset,
      :total_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Searches for a particular search term.</p>
    # @!attribute search_term
    #   <p>The term to search for.</p>
    #   @return [String]
    # @!attribute match_type
    #   <p>Specifies how Deadline Cloud matches your search term in the results. If you don't specify a <code>matchType</code> the default is <code>FUZZY_MATCH</code>.</p> <ul> <li> <p> <code>FUZZY_MATCH</code> - Matches if a portion of the search term is found in the result.</p> </li> <li> <p> <code>CONTAINS</code> - Matches if the exact search term is contained in the result.</p> </li> </ul>
    #   @return [String]
    class SearchTermFilterExpression < Struct.new(
      nil,
      :search_term,
      :match_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:match_type] = 'FUZZY_MATCH' unless options.key?(:match_type)
        super
      end
    end

    # Shared input fields for all Search operations (filterExpressions, sortExpressions, itemOffset, pageSize).
    # @!attribute farm_id
    #   <p>The farm ID in the workers search.</p>
    #   @return [String]
    # @!attribute filter_expressions
    #   <p>The search terms for a resource.</p>
    #   @return [Types::SearchGroupedFilterExpressions]
    # @!attribute sort_expressions
    #   <p>The search terms for a resource.</p>
    #   @return [Array<Types::SearchSortExpression>]
    # @!attribute item_offset
    #   <p>The offset for the search results.</p>
    #   @return [Integer]
    # @!attribute page_size
    #   <p>Specifies the number of results to return.</p>
    #   @return [Integer]
    # @!attribute fleet_ids
    #   <p>The fleet ID of the workers to search for.</p>
    #   @return [Array<String>]
    class SearchWorkersRequest < Struct.new(
      nil,
      :farm_id,
      :filter_expressions,
      :sort_expressions,
      :item_offset,
      :page_size,
      :fleet_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Shared output fields for all Search operations (nextItemOffset, totalResults).
    # @!attribute workers
    #   <p>The workers for the search.</p>
    #   @return [Array<Types::WorkerSearchSummary>]
    # @!attribute next_item_offset
    #   <p>The next item offset for the search results.</p>
    #   @return [Integer]
    # @!attribute total_results
    #   <p>The total number of results in the search.</p>
    #   @return [Integer]
    class SearchWorkersResponse < Struct.new(
      nil,
      :workers,
      :next_item_offset,
      :total_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The auto scaling configuration settings for a service managed EC2 fleet.</p>
    # @!attribute standby_worker_count
    #   <p>The number of idle workers maintained and ready to process incoming tasks. The default is 0.</p>
    #   @return [Integer]
    # @!attribute worker_idle_duration_seconds
    #   <p>The number of seconds that a worker can remain idle before it is shut down. The default is 300 seconds (5 minutes).</p>
    #   @return [Integer]
    # @!attribute scale_out_workers_per_minute
    #   <p>The number of workers that can be added per minute to the fleet. The default is 10 workers per minute.</p>
    #   @return [Integer]
    class ServiceManagedEc2AutoScalingConfiguration < Struct.new(
      nil,
      :standby_worker_count,
      :worker_idle_duration_seconds,
      :scale_out_workers_per_minute,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:worker_idle_duration_seconds] = 300 unless options.key?(:worker_idle_duration_seconds)
        super
      end
    end

    # <p>The configuration details for a service managed EC2 fleet.</p>
    # @!attribute instance_capabilities
    #   <p>The instance capabilities for the service managed EC2 fleet.</p>
    #   @return [Types::ServiceManagedEc2InstanceCapabilities]
    # @!attribute instance_market_options
    #   <p>The instance market options for the service managed EC2 fleet.</p>
    #   @return [Types::ServiceManagedEc2InstanceMarketOptions]
    # @!attribute vpc_configuration
    #   <p>The VPC configuration for the service managed EC2 fleet.</p>
    #   @return [Types::VpcConfiguration]
    # @!attribute storage_profile_id
    #   <p>The storage profile ID for the service managed EC2 fleet.</p>
    #   @return [String]
    # @!attribute persistent_volume_configuration
    #   <p>The persistent volume configuration for the service managed EC2 fleet.</p>
    #   @return [Types::PersistentVolumeConfiguration]
    # @!attribute auto_scaling_configuration
    #   <p>The auto scaling configuration settings for the service managed EC2 fleet.</p>
    #   @return [Types::ServiceManagedEc2AutoScalingConfiguration]
    class ServiceManagedEc2FleetConfiguration < Struct.new(
      nil,
      :instance_capabilities,
      :instance_market_options,
      :vpc_configuration,
      :storage_profile_id,
      :persistent_volume_configuration,
      :auto_scaling_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon EC2 instance capabilities.</p>
    # @!attribute v_cpu_count
    #   <p>The amount of vCPU to require for instances in this fleet.</p>
    #   @return [Types::VCpuCountRange]
    # @!attribute memory_mi_b
    #   <p>The memory, as MiB, for the Amazon EC2 instance type.</p>
    #   @return [Types::MemoryMiBRange]
    # @!attribute os_family
    #   <p>The operating system (OS) family.</p>
    #   @return [String]
    # @!attribute cpu_architecture_type
    #   <p>The CPU architecture type.</p>
    #   @return [String]
    # @!attribute root_ebs_volume
    #   <p>The root EBS volume.</p>
    #   @return [Types::Ec2EbsVolume]
    # @!attribute accelerator_capabilities
    #   <p>Describes the GPU accelerator capabilities required for worker host instances in this fleet.</p>
    #   @return [Types::AcceleratorCapabilities]
    # @!attribute allowed_instance_types
    #   <p>The allowable Amazon EC2 instance types.</p>
    #   @return [Array<String>]
    # @!attribute excluded_instance_types
    #   <p>The instance types to exclude from the fleet.</p>
    #   @return [Array<String>]
    # @!attribute custom_amounts
    #   <p>The custom capability amounts to require for instances in this fleet.</p>
    #   @return [Array<Types::FleetAmountCapability>]
    # @!attribute custom_attributes
    #   <p>The custom capability attributes to require for instances in this fleet.</p>
    #   @return [Array<Types::FleetAttributeCapability>]
    # @!attribute software_add_ons
    #   <p>The software add-ons that the service installs on worker hosts when they launch.</p>
    #   @return [Array<Types::FleetSoftwareAddOn>]
    class ServiceManagedEc2InstanceCapabilities < Struct.new(
      nil,
      :v_cpu_count,
      :memory_mi_b,
      :os_family,
      :cpu_architecture_type,
      :root_ebs_volume,
      :accelerator_capabilities,
      :allowed_instance_types,
      :excluded_instance_types,
      :custom_amounts,
      :custom_attributes,
      :software_add_ons,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of the Amazon EC2 instance market options for a service managed fleet.</p>
    # @!attribute type
    #   <p>The Amazon EC2 instance type.</p>
    #   @return [String]
    class ServiceManagedEc2InstanceMarketOptions < Struct.new(
      nil,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You exceeded your service quota. Service quotas, also referred to as limits, are the maximum number of service resources or operations for your Amazon Web Services account.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>A string that describes the reason the quota was exceeded.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the affected resource</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>Identifies the service that exceeded the quota.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>Identifies the quota that has been exceeded.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the affected resource.</p>
    #   @return [String]
    # @!attribute context
    #   <p>Information about the resources in use when the exception was thrown.</p>
    #   @return [Hash<String, String>]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      :reason,
      :resource_type,
      :service_code,
      :quota_code,
      :resource_id,
      :context,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The definition of the session action.</p>
    # @!attribute env_enter
    #   <p>The environment to enter into.</p>
    #   @return [Types::EnvironmentEnterSessionActionDefinition]
    # @!attribute env_exit
    #   <p>The environment to exit from.</p>
    #   @return [Types::EnvironmentExitSessionActionDefinition]
    # @!attribute task_run
    #   <p>The task run in the session.</p>
    #   @return [Types::TaskRunSessionActionDefinition]
    # @!attribute sync_input_job_attachments
    #   <p>The session action definition for syncing input job attachments.</p>
    #   @return [Types::SyncInputJobAttachmentsSessionActionDefinition]
    class SessionActionDefinition < Struct.new(
      :env_enter,
      :env_exit,
      :task_run,
      :sync_input_job_attachments,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class EnvEnter < SessionActionDefinition; end
      class EnvExit < SessionActionDefinition; end
      class TaskRun < SessionActionDefinition; end
      class SyncInputJobAttachments < SessionActionDefinition; end
      class Unknown < SessionActionDefinition; end
    end

    # <p>The details of a session action definition.</p>
    # @!attribute env_enter
    #   <p>The environment to enter into.</p>
    #   @return [Types::EnvironmentEnterSessionActionDefinitionSummary]
    # @!attribute env_exit
    #   <p>The environment to exit from.</p>
    #   @return [Types::EnvironmentExitSessionActionDefinitionSummary]
    # @!attribute task_run
    #   <p>The task run.</p>
    #   @return [Types::TaskRunSessionActionDefinitionSummary]
    # @!attribute sync_input_job_attachments
    #   <p>The session action definition summary for syncing input job attachments.</p>
    #   @return [Types::SyncInputJobAttachmentsSessionActionDefinitionSummary]
    class SessionActionDefinitionSummary < Struct.new(
      :env_enter,
      :env_exit,
      :task_run,
      :sync_input_job_attachments,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class EnvEnter < SessionActionDefinitionSummary; end
      class EnvExit < SessionActionDefinitionSummary; end
      class TaskRun < SessionActionDefinitionSummary; end
      class SyncInputJobAttachments < SessionActionDefinitionSummary; end
      class Unknown < SessionActionDefinitionSummary; end
    end

    # <p>The details of a session action.</p>
    # @!attribute session_action_id
    #   <p>The session action ID.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the session action.</p>
    #   @return [String]
    # @!attribute started_at
    #   <p>The date and time the resource started running.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The date and time the resource ended running.</p>
    #   @return [Time]
    # @!attribute worker_updated_at
    #   <p>The Linux timestamp of the last date and time that the session action was updated.</p>
    #   @return [Time]
    # @!attribute progress_percent
    #   <p>The completion percentage for the session action.</p>
    #   @return [Float]
    # @!attribute manifests
    #   <p>The list of manifest properties that describe file attachments for the task run.</p>
    #   @return [Array<Types::TaskRunManifestPropertiesResponse>]
    # @!attribute definition
    #   <p>The session action definition.</p>
    #   @return [Types::SessionActionDefinitionSummary]
    class SessionActionSummary < Struct.new(
      nil,
      :session_action_id,
      :status,
      :started_at,
      :ended_at,
      :worker_updated_at,
      :progress_percent,
      :manifests,
      :definition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The summary of a session.</p>
    # @!attribute session_id
    #   <p>The session ID.</p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p>The fleet ID.</p>
    #   @return [String]
    # @!attribute worker_id
    #   <p>The worker ID.</p>
    #   @return [String]
    # @!attribute started_at
    #   <p>The date and time the resource started running.</p>
    #   @return [Time]
    # @!attribute lifecycle_status
    #   <p>The life cycle status for the session.</p>
    #   @return [String]
    # @!attribute ended_at
    #   <p>The date and time the resource ended running.</p>
    #   @return [Time]
    # @!attribute target_lifecycle_status
    #   <p>The target life cycle status for the session.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time the resource was updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user or system that updated this resource.</p>
    #   @return [String]
    class SessionSummary < Struct.new(
      nil,
      :session_id,
      :fleet_id,
      :worker_id,
      :started_at,
      :lifecycle_status,
      :ended_at,
      :target_lifecycle_status,
      :updated_at,
      :updated_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the fleet IDs or queue IDs to return statistics. You can specify only fleet IDs or queue IDS, not both.</p>
    # @!attribute queue_ids
    #   <p>One to 10 queue IDs that specify the queues to return statistics for. If you specify the <code>queueIds</code> field, you can't specify the <code>fleetIds</code> field.</p>
    #   @return [Array<String>]
    # @!attribute fleet_ids
    #   <p>One to 10 fleet IDs that specify the fleets to return statistics for. If you specify the <code>fleetIds</code> field, you can't specify the <code>queueIds</code> field.</p>
    #   @return [Array<String>]
    class SessionsStatisticsResources < Struct.new(
      :queue_ids,
      :fleet_ids,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class QueueIds < SessionsStatisticsResources; end
      class FleetIds < SessionsStatisticsResources; end
      class Unknown < SessionsStatisticsResources; end
    end

    # @!attribute farm_id
    #   <p>The identifier of the farm that contains queues or fleets to return statistics for.</p>
    #   @return [String]
    # @!attribute resource_ids
    #   <p>A list of fleet IDs or queue IDs to gather statistics for.</p>
    #   @return [Types::SessionsStatisticsResources]
    # @!attribute start_time
    #   <p>The Linux timestamp of the date and time that the statistics start.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The Linux timestamp of the date and time that the statistics end.</p>
    #   @return [Time]
    # @!attribute timezone
    #   <p>The time zone to use for the statistics. Use UTC notation such as "UTC+8."</p>
    #   @return [String]
    # @!attribute period
    #   <p>The period to aggregate the statistics.</p>
    #   @return [String]
    # @!attribute group_by
    #   <p>The field to use to group the statistics.</p>
    #   @return [Array<String>]
    # @!attribute statistics
    #   <p>One to four statistics to return.</p>
    #   @return [Array<String>]
    class StartSessionsStatisticsAggregationRequest < Struct.new(
      nil,
      :farm_id,
      :resource_ids,
      :start_time,
      :end_time,
      :timezone,
      :period,
      :group_by,
      :statistics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute aggregation_id
    #   <p>A unique identifier for the aggregated statistics. Use this identifier with the <code>GetAggregatedStatisticsForSessions</code> operation to return the statistics.</p>
    #   @return [String]
    class StartSessionsStatisticsAggregationResponse < Struct.new(
      nil,
      :aggregation_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A list of statistics for a session.</p>
    # @!attribute queue_id
    #   <p>The queue ID.</p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p>The fleet ID.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The job name.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The user ID.</p>
    #   @return [String]
    # @!attribute usage_type
    #   <p>The type of usage for the statistics.</p>
    #   @return [String]
    # @!attribute license_product
    #   <p>The licensed product.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The type of instance.</p>
    #   @return [String]
    # @!attribute count
    #   <p>The number of instances in a list of statistics.</p>
    #   @return [Integer]
    # @!attribute cost_in_usd
    #   <p>How the statistics should appear in USD. Options include: minimum, maximum, average or sum.</p>
    #   @return [Types::Stats]
    # @!attribute runtime_in_seconds
    #   <p>The total aggregated runtime.</p>
    #   @return [Types::Stats]
    # @!attribute aggregation_start_time
    #   <p>The start time for the aggregation.</p>
    #   @return [Time]
    # @!attribute aggregation_end_time
    #   <p>The end time for the aggregation.</p>
    #   @return [Time]
    class Statistics < Struct.new(
      nil,
      :queue_id,
      :fleet_id,
      :job_id,
      :job_name,
      :user_id,
      :usage_type,
      :license_product,
      :instance_type,
      :count,
      :cost_in_usd,
      :runtime_in_seconds,
      :aggregation_start_time,
      :aggregation_end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The minimum, maximum, average, and sum.</p>
    # @!attribute min
    #   <p>The minimum of the usage statistics.</p>
    #   @return [Float]
    # @!attribute max
    #   <p>The maximum among the usage statistics.</p>
    #   @return [Float]
    # @!attribute avg
    #   <p>The average of the usage statistics.</p>
    #   @return [Float]
    # @!attribute sum
    #   <p>The sum of the usage statistics.</p>
    #   @return [Float]
    class Stats < Struct.new(
      nil,
      :min,
      :max,
      :avg,
      :sum,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details outlining the minimum and maximum capability of a step.</p>
    # @!attribute name
    #   <p>The name of the step.</p>
    #   @return [String]
    # @!attribute min
    #   <p>The minimum amount.</p>
    #   @return [Float]
    # @!attribute max
    #   <p>The maximum amount.</p>
    #   @return [Float]
    # @!attribute value
    #   <p>The amount value.</p>
    #   @return [Float]
    class StepAmountCapability < Struct.new(
      nil,
      :name,
      :min,
      :max,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The list of step attributes.</p>
    # @!attribute name
    #   <p>The name of the step attribute.</p>
    #   @return [String]
    # @!attribute any_of
    #   <p>Requires any of the step attributes in a given list.</p>
    #   @return [Array<String>]
    # @!attribute all_of
    #   <p>Requires all of the step attribute values.</p>
    #   @return [Array<String>]
    class StepAttributeCapability < Struct.new(
      nil,
      :name,
      :any_of,
      :all_of,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a step consumer.</p>
    # @!attribute step_id
    #   <p>The step ID.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The step consumer status.</p>
    #   @return [String]
    class StepConsumer < Struct.new(
      nil,
      :step_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of step dependency.</p>
    # @!attribute step_id
    #   <p>The step ID.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The step dependency status.</p>
    #   @return [String]
    class StepDependency < Struct.new(
      nil,
      :step_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a step entity.</p>
    # @!attribute job_id
    #   <p>The job ID.</p>
    #   @return [String]
    # @!attribute step_id
    #   <p>The step ID.</p>
    #   @return [String]
    # @!attribute schema_version
    #   <p>The schema version for a step template.</p>
    #   @return [String]
    # @!attribute template
    #   <p>The template for a step.</p>
    #   @return [JSON]
    # @!attribute dependencies
    #   <p>The dependencies for a step.</p>
    #   @return [Array<String>]
    # @!attribute extensions
    #   <p>The Open Job Description extensions that the step uses. This value is used by the worker agent.</p>
    #   @return [Array<String>]
    # @!attribute resolved_symbol_table
    #   <p>The resolved symbol table for the step's expressions, serialized as JSON. This value is used by the worker agent.</p>
    #   @return [String]
    class StepDetailsEntity < Struct.new(
      nil,
      :job_id,
      :step_id,
      :schema_version,
      :template,
      :dependencies,
      :extensions,
      :resolved_symbol_table,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of the step error.</p>
    # @!attribute job_id
    #   <p>The job ID.</p>
    #   @return [String]
    # @!attribute step_id
    #   <p>The step ID.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message detailing the error's cause.</p>
    #   @return [String]
    class StepDetailsError < Struct.new(
      nil,
      :job_id,
      :step_id,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of identifiers for a step.</p>
    # @!attribute job_id
    #   <p>The job ID.</p>
    #   @return [String]
    # @!attribute step_id
    #   <p>The step ID.</p>
    #   @return [String]
    class StepDetailsIdentifiers < Struct.new(
      nil,
      :job_id,
      :step_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a step parameter.</p>
    # @!attribute name
    #   <p>The name of the parameter.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The data type of the parameter.</p>
    #   @return [String]
    # @!attribute chunks
    #   <p>The configuration for task chunking.</p>
    #   @return [Types::StepParameterChunks]
    class StepParameter < Struct.new(
      nil,
      :name,
      :type,
      :chunks,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines how a step parameter range should be divided into chunks.</p>
    # @!attribute default_task_count
    #   <p>The number of tasks to combine into a single chunk by default.</p>
    #   @return [Integer]
    # @!attribute target_runtime_seconds
    #   <p>The number of seconds to aim for when forming chunks.</p>
    #   @return [Integer]
    # @!attribute range_constraint
    #   <p>Specifies whether the chunked ranges must be contiguous or can have gaps between them.</p>
    #   @return [String]
    class StepParameterChunks < Struct.new(
      nil,
      :default_task_count,
      :target_runtime_seconds,
      :range_constraint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of required step capabilities.</p>
    # @!attribute attributes
    #   <p>The capability attributes that the step requires.</p>
    #   @return [Array<Types::StepAttributeCapability>]
    # @!attribute amounts
    #   <p>The capability amounts that the step requires.</p>
    #   @return [Array<Types::StepAmountCapability>]
    class StepRequiredCapabilities < Struct.new(
      nil,
      :attributes,
      :amounts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a step search.</p>
    # @!attribute step_id
    #   <p>The step ID.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The step name.</p>
    #   @return [String]
    # @!attribute lifecycle_status
    #   <p>The life cycle status.</p>
    #   @return [String]
    # @!attribute lifecycle_status_message
    #   <p>The life cycle status message.</p>
    #   @return [String]
    # @!attribute task_run_status
    #   <p>The task run status for the job.</p> <ul> <li> <p> <code>PENDING</code>–pending and waiting for resources.</p> </li> <li> <p> <code>READY</code>–ready to be processed.</p> </li> <li> <p> <code>ASSIGNED</code>–assigned and will run next on a worker.</p> </li> <li> <p> <code>SCHEDULED</code>–scheduled to be run on a worker.</p> </li> <li> <p> <code>INTERRUPTING</code>–being interrupted.</p> </li> <li> <p> <code>RUNNING</code>–running on a worker.</p> </li> <li> <p> <code>SUSPENDED</code>–the task is suspended.</p> </li> <li> <p> <code>CANCELED</code>–the task has been canceled.</p> </li> <li> <p> <code>FAILED</code>–the task has failed.</p> </li> <li> <p> <code>SUCCEEDED</code>–the task has succeeded.</p> </li> </ul>
    #   @return [String]
    # @!attribute target_task_run_status
    #   <p>The task status to update the job's tasks to.</p>
    #   @return [String]
    # @!attribute task_run_status_counts
    #   <p>The number of tasks running on the job.</p>
    #   @return [Hash<String, Integer>]
    # @!attribute task_failure_retry_count
    #   <p>The total number of times tasks from the step failed and were retried.</p>
    #   @return [Integer]
    # @!attribute created_at
    #   <p>The date and time the resource was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user or system that created this resource.</p>
    #   @return [String]
    # @!attribute started_at
    #   <p>The date and time the resource started running.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The date and time the resource ended running.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the resource was updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user or system that updated this resource.</p>
    #   @return [String]
    # @!attribute parameter_space
    #   <p>The parameters and combination expressions for the search.</p>
    #   @return [Types::ParameterSpace]
    class StepSearchSummary < Struct.new(
      nil,
      :step_id,
      :job_id,
      :queue_id,
      :name,
      :lifecycle_status,
      :lifecycle_status_message,
      :task_run_status,
      :target_task_run_status,
      :task_run_status_counts,
      :task_failure_retry_count,
      :created_at,
      :created_by,
      :started_at,
      :ended_at,
      :updated_at,
      :updated_by,
      :parameter_space,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details for a step.</p>
    # @!attribute step_id
    #   <p>The step ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the step.</p>
    #   @return [String]
    # @!attribute lifecycle_status
    #   <p>The life cycle status.</p>
    #   @return [String]
    # @!attribute lifecycle_status_message
    #   <p>A message that describes the lifecycle of the step.</p>
    #   @return [String]
    # @!attribute task_run_status
    #   <p>The task run status for the job.</p> <ul> <li> <p> <code>PENDING</code>–pending and waiting for resources.</p> </li> <li> <p> <code>READY</code>–ready to process.</p> </li> <li> <p> <code>ASSIGNED</code>–assigned and will run next on a worker.</p> </li> <li> <p> <code>SCHEDULED</code>–scheduled to run on a worker.</p> </li> <li> <p> <code>INTERRUPTING</code>–being interrupted.</p> </li> <li> <p> <code>RUNNING</code>–running on a worker.</p> </li> <li> <p> <code>SUSPENDED</code>–the task is suspended.</p> </li> <li> <p> <code>CANCELED</code>–the task has been canceled.</p> </li> <li> <p> <code>FAILED</code>–the task has failed.</p> </li> <li> <p> <code>SUCCEEDED</code>–the task has succeeded.</p> </li> </ul>
    #   @return [String]
    # @!attribute task_run_status_counts
    #   <p>The number of tasks running on the job.</p>
    #   @return [Hash<String, Integer>]
    # @!attribute task_failure_retry_count
    #   <p>The total number of times tasks from the step failed and were retried.</p>
    #   @return [Integer]
    # @!attribute target_task_run_status
    #   <p>The task status to update the job's tasks to.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the resource was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user or system that created this resource.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time the resource was updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user or system that updated this resource.</p>
    #   @return [String]
    # @!attribute started_at
    #   <p>The date and time the resource started running.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The date and time the resource ended running.</p>
    #   @return [Time]
    # @!attribute dependency_counts
    #   <p>The number of dependencies for the step.</p>
    #   @return [Types::DependencyCounts]
    class StepSummary < Struct.new(
      nil,
      :step_id,
      :name,
      :lifecycle_status,
      :lifecycle_status_message,
      :task_run_status,
      :task_run_status_counts,
      :task_failure_retry_count,
      :target_task_run_status,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      :started_at,
      :ended_at,
      :dependency_counts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a storage profile.</p>
    # @!attribute storage_profile_id
    #   <p>The storage profile ID.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the storage profile summary to update.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    # @!attribute os_family
    #   <p>The operating system (OS) family.</p>
    #   @return [String]
    class StorageProfileSummary < Struct.new(
      nil,
      :storage_profile_id,
      :display_name,
      :os_family,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Searches for a particular string.</p>
    # @!attribute name
    #   <p>The field name to search.</p>
    #   @return [String]
    # @!attribute operator
    #   <p>The type of comparison to use for this search.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The string to search for.</p>
    #   @return [String]
    class StringFilterExpression < Struct.new(
      nil,
      :name,
      :operator,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Searches for a particular list of strings.</p>
    # @!attribute name
    #   <p>The field name to search.</p>
    #   @return [String]
    # @!attribute operator
    #   <p>The type of comparison to use for this search.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The list of string values to search for.</p>
    #   @return [Array<String>]
    class StringListFilterExpression < Struct.new(
      nil,
      :name,
      :operator,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The session action definition for syncing input job attachments.</p>
    # @!attribute step_id
    #   <p>The step ID for the sync input job attachments session action.</p>
    #   @return [String]
    class SyncInputJobAttachmentsSessionActionDefinition < Struct.new(
      nil,
      :step_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The summary of the session action definition for syncing input job attachments.</p>
    # @!attribute step_id
    #   <p>The step ID for the sync input job attachments session action summary.</p>
    #   @return [String]
    class SyncInputJobAttachmentsSessionActionDefinitionSummary < Struct.new(
      nil,
      :step_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource to apply tags to.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Each tag consists of a tag key and a tag value. Tag keys and values are both required, but tag values can be empty strings.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The data types for the task parameters.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute int
    #   <p>A signed integer represented as a string.</p>
    #   @return [String]
    # @!attribute float
    #   <p>A double precision IEEE-754 floating point number represented as a string.</p>
    #   @return [String]
    # @!attribute string
    #   <p>A UTF-8 string.</p>
    #   @return [String]
    # @!attribute path
    #   <p>A file system path represented as a string.</p>
    #   @return [String]
    # @!attribute chunk_int
    #   <p>A range (for example 1-10) or selection of specific (for example 1,3,7,8,10) integers represented as a string.</p>
    #   @return [String]
    class TaskParameterValue < Struct.new(
      :int,
      :float,
      :string,
      :path,
      :chunk_int,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Int < TaskParameterValue; end
      class Float < TaskParameterValue; end
      class String < TaskParameterValue; end
      class Path < TaskParameterValue; end
      class ChunkInt < TaskParameterValue; end
      class Unknown < TaskParameterValue; end
    end

    # <p>The output manifest properties reported by the worker agent for a completed task run.</p>
    # @!attribute output_manifest_path
    #   <p>The manifest file path.</p>
    #   @return [String]
    # @!attribute output_manifest_hash
    #   <p>The hash value of the file.</p>
    #   @return [String]
    class TaskRunManifestPropertiesRequest < Struct.new(
      nil,
      :output_manifest_path,
      :output_manifest_hash,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The manifest properties for a task run, corresponding to the manifest properties in the job.</p>
    # @!attribute output_manifest_path
    #   <p>The manifest file path.</p>
    #   @return [String]
    # @!attribute output_manifest_hash
    #   <p>The hash value of the file.</p>
    #   @return [String]
    class TaskRunManifestPropertiesResponse < Struct.new(
      nil,
      :output_manifest_path,
      :output_manifest_hash,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The task, step, and parameters for the task run in the session action.</p>
    # @!attribute task_id
    #   <p>The task ID.</p>
    #   @return [String]
    # @!attribute step_id
    #   <p>The step ID.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The task parameters.</p>
    #   @return [Hash<String, Types::TaskParameterValue>]
    class TaskRunSessionActionDefinition < Struct.new(
      nil,
      :task_id,
      :step_id,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a task run in a session action.</p>
    # @!attribute task_id
    #   <p>The task ID.</p>
    #   @return [String]
    # @!attribute step_id
    #   <p>The step ID.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The parameters of a task run in a session action.</p>
    #   @return [Hash<String, Types::TaskParameterValue>]
    class TaskRunSessionActionDefinitionSummary < Struct.new(
      nil,
      :task_id,
      :step_id,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a task search.</p>
    # @!attribute task_id
    #   <p>The task ID.</p>
    #   @return [String]
    # @!attribute step_id
    #   <p>The step ID.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID.</p>
    #   @return [String]
    # @!attribute run_status
    #   <p>The run status of the task.</p>
    #   @return [String]
    # @!attribute target_run_status
    #   <p>The run status that the task is being updated to.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The parameters to search for.</p>
    #   @return [Hash<String, Types::TaskParameterValue>]
    # @!attribute failure_retry_count
    #   <p>The number of times that the task failed and was retried.</p>
    #   @return [Integer]
    # @!attribute started_at
    #   <p>The date and time the resource started running.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The date and time the resource ended running.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the resource was updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user or system that updated this resource.</p>
    #   @return [String]
    # @!attribute latest_session_action_id
    #   <p>The latest session action ID for the task.</p>
    #   @return [String]
    class TaskSearchSummary < Struct.new(
      nil,
      :task_id,
      :step_id,
      :job_id,
      :queue_id,
      :run_status,
      :target_run_status,
      :parameters,
      :failure_retry_count,
      :started_at,
      :ended_at,
      :updated_at,
      :updated_by,
      :latest_session_action_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a task.</p>
    # @!attribute task_id
    #   <p>The task ID.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the resource was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user or system that created this resource.</p>
    #   @return [String]
    # @!attribute run_status
    #   <p>The run status of the task.</p>
    #   @return [String]
    # @!attribute target_run_status
    #   <p>The run status on which the started.</p>
    #   @return [String]
    # @!attribute failure_retry_count
    #   <p>The number of times that the task failed and was retried.</p>
    #   @return [Integer]
    # @!attribute started_at
    #   <p>The date and time the resource started running.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The date and time the resource ended running.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the resource was updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user or system that updated this resource.</p>
    #   @return [String]
    # @!attribute latest_session_action_id
    #   <p>The latest session action ID for the task.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The task parameters.</p>
    #   @return [Hash<String, Types::TaskParameterValue>]
    class TaskSummary < Struct.new(
      nil,
      :task_id,
      :created_at,
      :created_by,
      :run_status,
      :target_run_status,
      :failure_retry_count,
      :started_at,
      :ended_at,
      :updated_at,
      :updated_by,
      :latest_session_action_id,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Your request exceeded a request rate quota.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute service_code
    #   <p>Identifies the service that is being throttled.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>Identifies the quota that is being throttled.</p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds a client should wait before retrying the request.</p>
    #   @return [Integer]
    # @!attribute context
    #   <p>Information about the resources in use when the exception was thrown.</p>
    #   @return [Hash<String, String>]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds,
      :context,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource to remove the tag from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>They keys of the tag.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID of the budget to update.</p>
    #   @return [String]
    # @!attribute budget_id
    #   <p>The budget ID to update.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The unique token which the server uses to recognize retries of the same request.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the budget to update.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the budget to update.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    # @!attribute status
    #   <p>Updates the status of the budget.</p> <ul> <li> <p> <code>ACTIVE</code>–The budget is being evaluated.</p> </li> <li> <p> <code>INACTIVE</code>–The budget is inactive. This can include Expired, Canceled, or deleted Deleted statuses.</p> </li> </ul>
    #   @return [String]
    # @!attribute approximate_dollar_limit
    #   <p>The dollar limit to update on the budget. Based on consumed usage.</p>
    #   @return [Float]
    # @!attribute actions_to_add
    #   <p>The budget actions to add. Budget actions specify what happens when the budget runs out.</p>
    #   @return [Array<Types::BudgetActionToAdd>]
    # @!attribute actions_to_remove
    #   <p>The budget actions to remove from the budget.</p>
    #   @return [Array<Types::BudgetActionToRemove>]
    # @!attribute schedule
    #   <p>The schedule to update.</p>
    #   @return [Types::BudgetSchedule]
    class UpdateBudgetRequest < Struct.new(
      nil,
      :farm_id,
      :budget_id,
      :client_token,
      :display_name,
      :description,
      :status,
      :approximate_dollar_limit,
      :actions_to_add,
      :actions_to_remove,
      :schedule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateBudgetResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID to update.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the farm to update.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the farm to update.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    # @!attribute cost_scale_factor
    #   <p>A multiplier applied to the farm's calculated costs for usage data and budget tracking. A value less than 1 represents a discount, a value greater than 1 represents a premium, and a value of 1 represents no adjustment.</p>
    #   @return [Float]
    class UpdateFarmRequest < Struct.new(
      nil,
      :farm_id,
      :display_name,
      :description,
      :cost_scale_factor,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateFarmResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID to update.</p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p>The fleet ID to update.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The unique token which the server uses to recognize retries of the same request.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the fleet to update.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the fleet to update.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The IAM role ARN that the fleet's workers assume while running jobs.</p>
    #   @return [String]
    # @!attribute min_worker_count
    #   <p>The minimum number of workers in the fleet.</p>
    #   @return [Integer]
    # @!attribute max_worker_count
    #   <p>The maximum number of workers in the fleet.</p> <p>Deadline Cloud limits the number of workers to less than or equal to the fleet's maximum worker count. The service maintains eventual consistency for the worker count. If you make multiple rapid calls to <code>CreateWorker</code> before the field updates, you might exceed your fleet's maximum worker count. For example, if your <code>maxWorkerCount</code> is 10 and you currently have 9 workers, making two quick <code>CreateWorker</code> calls might successfully create 2 workers instead of 1, resulting in 11 total workers.</p>
    #   @return [Integer]
    # @!attribute configuration
    #   <p>The fleet configuration to update.</p>
    #   @return [Types::FleetConfiguration]
    # @!attribute host_configuration
    #   <p>Provides a script that runs as a worker is starting up that you can use to provide additional configuration for workers in your fleet.</p>
    #   @return [Types::HostConfiguration]
    class UpdateFleetRequest < Struct.new(
      nil,
      :farm_id,
      :fleet_id,
      :client_token,
      :display_name,
      :description,
      :role_arn,
      :min_worker_count,
      :max_worker_count,
      :configuration,
      :host_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateFleetResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID of the job to update.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID of the job to update.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID to update.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The unique token which the server uses to recognize retries of the same request.</p>
    #   @return [String]
    # @!attribute target_task_run_status
    #   <p>The task status to update the job's tasks to.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The updated job priority.</p>
    #   @return [Integer]
    # @!attribute max_failed_tasks_count
    #   <p>The number of task failures before the job stops running and is marked as <code>FAILED</code>.</p>
    #   @return [Integer]
    # @!attribute max_retries_per_task
    #   <p>The maximum number of retries for a job.</p>
    #   @return [Integer]
    # @!attribute lifecycle_status
    #   <p>The status of a job in its lifecycle. When you change the status of the job to <code>ARCHIVED</code>, the job can't be scheduled or archived.</p> <important> <p>An archived jobs and its steps and tasks are deleted after 120 days. The job can't be recovered.</p> </important>
    #   @return [String]
    # @!attribute max_worker_count
    #   <p>The maximum number of worker hosts that can concurrently process a job. When the <code>maxWorkerCount</code> is reached, no more workers will be assigned to process the job, even if the fleets assigned to the job's queue has available workers.</p> <p>You can't set the <code>maxWorkerCount</code> to 0. If you set it to -1, there is no maximum number of workers.</p> <p>If you don't specify the <code>maxWorkerCount</code>, the default is -1.</p> <p>The maximum number of workers that can process tasks in the job.</p>
    #   @return [Integer]
    # @!attribute name
    #   <p>The updated job name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated job description.</p>
    #   @return [String]
    class UpdateJobRequest < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :job_id,
      :client_token,
      :target_task_run_status,
      :priority,
      :max_failed_tasks_count,
      :max_retries_per_task,
      :lifecycle_status,
      :max_worker_count,
      :name,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateJobResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The unique identifier of the farm that contains the limit.</p>
    #   @return [String]
    # @!attribute limit_id
    #   <p>The unique identifier of the limit to update.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The new display name of the limit.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    # @!attribute description
    #   <p>The new description of the limit.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    # @!attribute max_count
    #   <p>The maximum number of resources constrained by this limit. When all of the resources are in use, steps that require the limit won't be scheduled until the resource is available.</p> <p>If more than the new maximum number is currently in use, running jobs finish but no new jobs are started until the number of resources in use is below the new maximum number.</p> <p>The <code>maxCount</code> must not be 0. If the value is -1, there is no restriction on the number of resources that can be acquired for this limit.</p>
    #   @return [Integer]
    class UpdateLimitRequest < Struct.new(
      nil,
      :farm_id,
      :limit_id,
      :display_name,
      :description,
      :max_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateLimitResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute monitor_id
    #   <p>The unique identifier of the monitor to update.</p>
    #   @return [String]
    # @!attribute subdomain
    #   <p>The new value of the subdomain to use when forming the monitor URL.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The new value to use for the monitor's display name.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name of the new IAM role to use with the monitor.</p>
    #   @return [String]
    class UpdateMonitorRequest < Struct.new(
      nil,
      :monitor_id,
      :subdomain,
      :display_name,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateMonitorResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute monitor_id
    #   <p>The unique identifier of the monitor to update settings for.</p>
    #   @return [String]
    # @!attribute settings
    #   <p>The monitor settings to update as key-value pairs. Keys present in the request are upserted; keys absent are left unchanged. Send an empty string value to delete a key.</p>
    #   @return [Hash<String, String>]
    class UpdateMonitorSettingsRequest < Struct.new(
      nil,
      :monitor_id,
      :settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateMonitorSettingsResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID of the queue environment to update.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID of the queue environment to update.</p>
    #   @return [String]
    # @!attribute queue_environment_id
    #   <p>The queue environment ID to update.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The unique token which the server uses to recognize retries of the same request.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The priority to update.</p>
    #   @return [Integer]
    # @!attribute template_type
    #   <p>The template type to update.</p>
    #   @return [String]
    # @!attribute template
    #   <p>The template to update.</p>
    #   @return [String]
    class UpdateQueueEnvironmentRequest < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :queue_environment_id,
      :client_token,
      :priority,
      :template_type,
      :template,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateQueueEnvironmentResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Identifier mixin for queue-fleet association operations.
    # Composes QueueIdentifierMixin (farmId + queueId) and adds fleetId.
    # @!attribute farm_id
    #   <p>The farm ID to update.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID to update.</p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p>The fleet ID to update.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status to update.</p>
    #   @return [String]
    class UpdateQueueFleetAssociationRequest < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :fleet_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateQueueFleetAssociationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The unique identifier of the farm that contains the associated queues and limits.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The unique identifier of the queue associated to the limit.</p>
    #   @return [String]
    # @!attribute limit_id
    #   <p>The unique identifier of the limit associated to the queue.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Sets the status of the limit. You can mark the limit active, or you can stop usage of the limit and either complete existing tasks or cancel any existing tasks immediately. </p>
    #   @return [String]
    class UpdateQueueLimitAssociationRequest < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :limit_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateQueueLimitAssociationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID to update in the queue.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID to update.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The idempotency token to update in the queue.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the queue to update.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the queue to update.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    # @!attribute default_budget_action
    #   <p>The default action to take for a queue update if a budget isn't configured.</p>
    #   @return [String]
    # @!attribute job_attachment_settings
    #   <p>The job attachment settings to update for the queue.</p>
    #   @return [Types::JobAttachmentSettings]
    # @!attribute role_arn
    #   <p>The IAM role ARN that's used to run jobs from this queue.</p>
    #   @return [String]
    # @!attribute job_run_as_user
    #   <p>Update the jobs in the queue to run as a specified POSIX user.</p>
    #   @return [Types::JobRunAsUser]
    # @!attribute required_file_system_location_names_to_add
    #   <p>The required file system location names to add to the queue.</p>
    #   @return [Array<String>]
    # @!attribute required_file_system_location_names_to_remove
    #   <p>The required file system location names to remove from the queue.</p>
    #   @return [Array<String>]
    # @!attribute allowed_storage_profile_ids_to_add
    #   <p>The storage profile IDs to add.</p>
    #   @return [Array<String>]
    # @!attribute allowed_storage_profile_ids_to_remove
    #   <p>The storage profile ID to remove.</p>
    #   @return [Array<String>]
    # @!attribute scheduling_configuration
    #   <p>The scheduling configuration for the queue. This configuration determines how workers are assigned to jobs in the queue.</p> <p>When updating the scheduling configuration, the entire configuration is replaced.</p> <p>In-progress tasks run to completion before the new scheduling configuration takes effect.</p>
    #   @return [Types::SchedulingConfiguration]
    class UpdateQueueRequest < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :client_token,
      :display_name,
      :description,
      :default_budget_action,
      :job_attachment_settings,
      :role_arn,
      :job_run_as_user,
      :required_file_system_location_names_to_add,
      :required_file_system_location_names_to_remove,
      :allowed_storage_profile_ids_to_add,
      :allowed_storage_profile_ids_to_remove,
      :scheduling_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateQueueResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID to update in the session.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID to update in the session.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID to update in the session.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The session ID to update.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The unique token which the server uses to recognize retries of the same request.</p>
    #   @return [String]
    # @!attribute target_lifecycle_status
    #   <p>The life cycle status to update in the session.</p>
    #   @return [String]
    class UpdateSessionRequest < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :job_id,
      :session_id,
      :client_token,
      :target_lifecycle_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateSessionResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID to update.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID to update.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID to update.</p>
    #   @return [String]
    # @!attribute step_id
    #   <p>The step ID to update.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The unique token which the server uses to recognize retries of the same request.</p>
    #   @return [String]
    # @!attribute target_task_run_status
    #   <p>The task status to update the step's tasks to.</p>
    #   @return [String]
    class UpdateStepRequest < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :job_id,
      :step_id,
      :client_token,
      :target_task_run_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateStepResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID to update.</p>
    #   @return [String]
    # @!attribute storage_profile_id
    #   <p>The storage profile ID to update.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The unique token which the server uses to recognize retries of the same request.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the storage profile to update.</p> <important> <p>This field can store any content. Escape or encode this content before displaying it on a webpage or any other system that might interpret the content of this field.</p> </important>
    #   @return [String]
    # @!attribute os_family
    #   <p>The OS system to update.</p>
    #   @return [String]
    # @!attribute file_system_locations_to_add
    #   <p>The file system location names to add.</p>
    #   @return [Array<Types::FileSystemLocation>]
    # @!attribute file_system_locations_to_remove
    #   <p>The file system location names to remove.</p>
    #   @return [Array<Types::FileSystemLocation>]
    class UpdateStorageProfileRequest < Struct.new(
      nil,
      :farm_id,
      :storage_profile_id,
      :client_token,
      :display_name,
      :os_family,
      :file_system_locations_to_add,
      :file_system_locations_to_remove,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateStorageProfileResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID to update.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID to update.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID to update.</p>
    #   @return [String]
    # @!attribute step_id
    #   <p>The step ID to update.</p>
    #   @return [String]
    # @!attribute task_id
    #   <p>The task ID to update.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The unique token which the server uses to recognize retries of the same request.</p>
    #   @return [String]
    # @!attribute target_run_status
    #   <p>The run status with which to start the task.</p>
    #   @return [String]
    class UpdateTaskRequest < Struct.new(
      nil,
      :farm_id,
      :queue_id,
      :job_id,
      :step_id,
      :task_id,
      :client_token,
      :target_run_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateTaskResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID to update.</p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p>The fleet ID to update.</p>
    #   @return [String]
    # @!attribute worker_id
    #   <p>The worker ID to update.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The worker status to update.</p>
    #   @return [String]
    # @!attribute capabilities
    #   <p>The worker capabilities to update.</p>
    #   @return [Types::WorkerCapabilities]
    # @!attribute host_properties
    #   <p>The host properties to update.</p>
    #   @return [Types::HostPropertiesRequest]
    class UpdateWorkerRequest < Struct.new(
      nil,
      :farm_id,
      :fleet_id,
      :worker_id,
      :status,
      :capabilities,
      :host_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute log
    #   <p>The worker log to update.</p>
    #   @return [Types::LogConfiguration]
    # @!attribute host_configuration
    #   <p>The script that runs as a worker is starting up that you can use to provide additional configuration for workers in your fleet.</p>
    #   @return [Types::HostConfiguration]
    class UpdateWorkerResponse < Struct.new(
      nil,
      :log,
      :host_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute farm_id
    #   <p>The farm ID to update.</p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p>The fleet ID to update.</p>
    #   @return [String]
    # @!attribute worker_id
    #   <p>The worker ID to update.</p>
    #   @return [String]
    # @!attribute updated_session_actions
    #   <p>The session actions associated with the worker schedule to update.</p>
    #   @return [Hash<String, Types::UpdatedSessionActionInfo>]
    class UpdateWorkerScheduleRequest < Struct.new(
      nil,
      :farm_id,
      :fleet_id,
      :worker_id,
      :updated_session_actions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assigned_sessions
    #   <p>The assigned sessions to update.</p>
    #   @return [Hash<String, Types::AssignedSession>]
    # @!attribute cancel_session_actions
    #   <p>The session actions associated with the worker schedule to cancel.</p>
    #   @return [Hash<String, Array<String>>]
    # @!attribute desired_worker_status
    #   <p>The status to update the worker to.</p>
    #   @return [String]
    # @!attribute update_interval_seconds
    #   <p>Updates the time interval (in seconds) for the schedule.</p>
    #   @return [Integer]
    class UpdateWorkerScheduleResponse < Struct.new(
      nil,
      :assigned_sessions,
      :cancel_session_actions,
      :desired_worker_status,
      :update_interval_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The updated session action information as it relates to completion and progress of the session.</p>
    # @!attribute completed_status
    #   <p>The status of the session upon completion.</p>
    #   @return [String]
    # @!attribute process_exit_code
    #   <p>The process exit code. The default Deadline Cloud worker agent converts unsigned 32-bit exit codes to signed 32-bit exit codes.</p>
    #   @return [Integer]
    # @!attribute progress_message
    #   <p>A message to indicate the progress of the updated session action.</p>
    #   @return [String]
    # @!attribute started_at
    #   <p>The date and time the resource started running.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The date and time the resource ended running.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The updated time.</p>
    #   @return [Time]
    # @!attribute progress_percent
    #   <p>The percentage completed.</p>
    #   @return [Float]
    # @!attribute manifests
    #   <p>A list of output manifest properties reported by the worker agent, with each entry corresponding to a manifest property in the job.</p>
    #   @return [Array<Types::TaskRunManifestPropertiesRequest>]
    class UpdatedSessionActionInfo < Struct.new(
      nil,
      :completed_status,
      :process_exit_code,
      :progress_message,
      :started_at,
      :ended_at,
      :updated_at,
      :progress_percent,
      :manifests,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The usage details of the allotted budget.</p>
    # @!attribute queue_id
    #   <p>The queue ID.</p>
    #   @return [String]
    class UsageTrackingResource < Struct.new(
      :queue_id,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class QueueId < UsageTrackingResource; end
      class Unknown < UsageTrackingResource; end
    end

    # <p>Allows setting a specific user's job to run first.</p>
    # @!attribute user_identity_id
    #   <p>The user's ID.</p>
    #   @return [String]
    class UserJobsFirst < Struct.new(
      nil,
      :user_identity_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The allowable range of vCPU processing power for the fleet.</p>
    # @!attribute min
    #   <p>The minimum amount of vCPU.</p>
    #   @return [Integer]
    # @!attribute max
    #   <p>The maximum amount of vCPU.</p>
    #   @return [Integer]
    class VCpuCountRange < Struct.new(
      nil,
      :min,
      :max,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request isn't valid. This can occur if your request contains malformed JSON or unsupported characters.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason that the request failed validation.</p>
    #   @return [String]
    # @!attribute field_list
    #   <p>A list of fields that failed validation.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    # @!attribute context
    #   <p>Information about the resources in use when the exception was thrown.</p>
    #   @return [Hash<String, String>]
    class ValidationException < Struct.new(
      nil,
      :message,
      :reason,
      :field_list,
      :context,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a validation exception.</p>
    # @!attribute name
    #   <p>The name of the validation exception.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message for the validation exception.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The summary of a persistent volume.</p>
    # @!attribute volume_id
    #   <p>The volume ID.</p>
    #   @return [String]
    # @!attribute farm_id
    #   <p>The farm ID of the farm that contains the fleet.</p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p>The fleet ID of the fleet that contains the volume.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the volume.</p>
    #   @return [String]
    # @!attribute size_gi_b
    #   <p>The volume size in GiB.</p>
    #   @return [Integer]
    # @!attribute availability_zone_id
    #   <p>The Availability Zone ID of the volume.</p>
    #   @return [String]
    # @!attribute attached_worker_id
    #   <p>The worker ID of the worker the volume is attached to.</p>
    #   @return [String]
    class VolumeSummary < Struct.new(
      nil,
      :volume_id,
      :farm_id,
      :fleet_id,
      :state,
      :size_gi_b,
      :availability_zone_id,
      :attached_worker_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration options for a service managed fleet's VPC.</p>
    # @!attribute resource_configuration_arns
    #   <p>The ARNs of the VPC Lattice resource configurations attached to the fleet.</p>
    #   @return [Array<String>]
    class VpcConfiguration < Struct.new(
      nil,
      :resource_configuration_arns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for weighted balanced scheduling. Workers are assigned to jobs based on a weighted formula:</p> <p> <code>weight = (priority * priorityWeight) + (errors * errorWeight) + ((currentTime - submissionTime) * submissionTimeWeight) + ((renderingTasks - renderingTaskBuffer) * renderingTaskWeight)</code> </p> <p>The job with the highest calculated weight is scheduled first. Workers are distributed evenly amongst jobs with the same weight.</p>
    # @!attribute priority_weight
    #   <p>The weight applied to job priority in the scheduling formula. Higher values give more influence to job priority. A value of <code>0</code> means priority is ignored. The default value is <code>100.0</code>.</p>
    #   @return [Float]
    # @!attribute error_weight
    #   <p>The weight applied to the number of errors on a job. A negative value means jobs without errors are scheduled first. A value of <code>0</code> means errors are ignored. The default value is <code>-10.0</code>.</p>
    #   @return [Float]
    # @!attribute submission_time_weight
    #   <p>The weight applied to job submission time. A positive value means earlier jobs are scheduled first. A value of <code>0</code> means submission time is ignored. The default value is <code>3.0</code>.</p>
    #   @return [Float]
    # @!attribute rendering_task_weight
    #   <p>The weight applied to the number of tasks currently rendering on a job. A negative value means jobs that are not already rendering are scheduled next. A value of <code>0</code> means the rendering state is ignored. The default value is <code>-100.0</code>.</p>
    #   @return [Float]
    # @!attribute rendering_task_buffer
    #   <p>The rendering task buffer is subtracted from the number of rendering tasks before applying the rendering task weight. This creates a stickiness effect where workers prefer to stay with their current job. Higher values make workers stickier. The default value is <code>1</code>. The buffer is only applied in the weight calculation for a job if the worker is currently assigned to that job.</p>
    #   @return [Integer]
    # @!attribute max_priority_override
    #   <p>Overrides the weighted scheduling formula for jobs at the maximum priority (100). When set, jobs with priority 100 are always scheduled first regardless of their calculated weight. When absent, maximum priority jobs use the standard weighted formula.</p>
    #   @return [Types::SchedulingMaxPriorityOverride]
    # @!attribute min_priority_override
    #   <p>Overrides the weighted scheduling formula for jobs at the minimum priority (0). When set, jobs with priority 0 are always scheduled last regardless of their calculated weight. When absent, minimum priority jobs use the standard weighted formula.</p>
    #   @return [Types::SchedulingMinPriorityOverride]
    class WeightedBalancedSchedulingConfiguration < Struct.new(
      nil,
      :priority_weight,
      :error_weight,
      :submission_time_weight,
      :rendering_task_weight,
      :rendering_task_buffer,
      :max_priority_override,
      :min_priority_override,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:priority_weight] = 100.0 unless options.key?(:priority_weight)
        options[:error_weight] = -10.0 unless options.key?(:error_weight)
        options[:submission_time_weight] = 3.0 unless options.key?(:submission_time_weight)
        options[:rendering_task_weight] = -100.0 unless options.key?(:rendering_task_weight)
        options[:rendering_task_buffer] = 1 unless options.key?(:rendering_task_buffer)
        super
      end
    end

    # <p>The Windows user details.</p>
    # @!attribute user
    #   <p>The user.</p>
    #   @return [String]
    # @!attribute password_arn
    #   <p>The password ARN for the Windows user.</p>
    #   @return [String]
    class WindowsUser < Struct.new(
      nil,
      :user,
      :password_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of the worker amount capability.</p>
    # @!attribute name
    #   <p>The name of the worker amount capability.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the worker amount capability.</p>
    #   @return [Float]
    class WorkerAmountCapability < Struct.new(
      nil,
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of the worker attribute capability.</p>
    # @!attribute name
    #   <p>The name of the worker attribute capability.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values of the worker amount capability.</p>
    #   @return [Array<String>]
    class WorkerAttributeCapability < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details for worker capabilities.</p>
    # @!attribute amounts
    #   <p>The worker capabilities amounts on a list of worker capabilities.</p>
    #   @return [Array<Types::WorkerAmountCapability>]
    # @!attribute attributes
    #   <p>The worker attribute capabilities in the list of attribute capabilities.</p>
    #   @return [Array<Types::WorkerAttributeCapability>]
    class WorkerCapabilities < Struct.new(
      nil,
      :amounts,
      :attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a worker search.</p>
    # @!attribute fleet_id
    #   <p>The fleet ID.</p>
    #   @return [String]
    # @!attribute worker_id
    #   <p>The worker ID.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the worker search.</p>
    #   @return [String]
    # @!attribute host_properties
    #   <p>Provides the Amazon EC2 instance properties of the worker host.</p>
    #   @return [Types::HostPropertiesResponse]
    # @!attribute created_by
    #   <p>The user or system that created this resource.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the resource was created.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user or system that updated this resource.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time the resource was updated.</p>
    #   @return [Time]
    class WorkerSearchSummary < Struct.new(
      nil,
      :fleet_id,
      :worker_id,
      :status,
      :host_properties,
      :created_by,
      :created_at,
      :updated_by,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summarizes the session for a particular worker.</p>
    # @!attribute session_id
    #   <p>The session ID for the session action.</p>
    #   @return [String]
    # @!attribute queue_id
    #   <p>The queue ID for the queue associated to the worker.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID for the job associated with the worker's session.</p>
    #   @return [String]
    # @!attribute started_at
    #   <p>The date and time the resource started running.</p>
    #   @return [Time]
    # @!attribute lifecycle_status
    #   <p>The life cycle status for the worker's session.</p>
    #   @return [String]
    # @!attribute ended_at
    #   <p>The date and time the resource ended running.</p>
    #   @return [Time]
    # @!attribute target_lifecycle_status
    #   <p>The life cycle status </p>
    #   @return [String]
    class WorkerSessionSummary < Struct.new(
      nil,
      :session_id,
      :queue_id,
      :job_id,
      :started_at,
      :lifecycle_status,
      :ended_at,
      :target_lifecycle_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The summary of details for a worker.</p>
    # @!attribute farm_id
    #   <p>The farm ID.</p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p>The fleet ID.</p>
    #   @return [String]
    # @!attribute worker_id
    #   <p>The worker ID.</p>
    #   @return [String]
    # @!attribute host_properties
    #   <p>The host properties of the worker.</p>
    #   @return [Types::HostPropertiesResponse]
    # @!attribute status
    #   <p>The status of the worker.</p>
    #   @return [String]
    # @!attribute log
    #   <p>The log configuration for the worker.</p>
    #   @return [Types::LogConfiguration]
    # @!attribute created_at
    #   <p>The date and time the resource was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user or system that created this resource.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time the resource was updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user or system that updated this resource.</p>
    #   @return [String]
    class WorkerSummary < Struct.new(
      nil,
      :farm_id,
      :fleet_id,
      :worker_id,
      :host_properties,
      :status,
      :log,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
