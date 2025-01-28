# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Deadline
  module Types

    # Provides information about the GPU accelerators used for jobs
    # processed by a fleet.
    #
    # @!attribute [rw] selections
    #   A list of accelerator capabilities requested for this fleet. Only
    #   Amazon Elastic Compute Cloud instances that provide these
    #   capabilities will be used. For example, if you specify both L4 and
    #   T4 chips, Deadline Cloud will use Amazon EC2 instances that have
    #   either the L4 or the T4 chip installed.
    #   @return [Array<Types::AcceleratorSelection>]
    #
    # @!attribute [rw] count
    #   The number of GPU accelerators specified for worker hosts in this
    #   fleet.
    #   @return [Types::AcceleratorCountRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/AcceleratorCapabilities AWS API Documentation
    #
    class AcceleratorCapabilities < Struct.new(
      :selections,
      :count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the maximum and minimum number of GPU accelerators required
    # for a worker instance..
    #
    # @!attribute [rw] min
    #   The minimum number of GPU accelerators in the worker host.
    #   @return [Integer]
    #
    # @!attribute [rw] max
    #   The maximum number of GPU accelerators in the worker host.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/AcceleratorCountRange AWS API Documentation
    #
    class AcceleratorCountRange < Struct.new(
      :min,
      :max)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a specific GPU accelerator required for an Amazon Elastic
    # Compute Cloud worker host.
    #
    # @!attribute [rw] name
    #   The name of the chip used by the GPU accelerator.
    #
    #   If you specify `l4` as the name of the accelerator, you must specify
    #   `latest` or `grid:r550` as the runtime.
    #
    #   The available GPU accelerators are:
    #
    #   * `t4` - NVIDIA T4 Tensor Core GPU
    #
    #   * `a10g` - NVIDIA A10G Tensor Core GPU
    #
    #   * `l4` - NVIDIA L4 Tensor Core GPU
    #
    #   * `l40s` - NVIDIA L40S Tensor Core GPU
    #   @return [String]
    #
    # @!attribute [rw] runtime
    #   Specifies the runtime driver to use for the GPU accelerator. You
    #   must use the same runtime for all GPUs.
    #
    #   You can choose from the following runtimes:
    #
    #   * `latest` - Use the latest runtime available for the chip. If you
    #     specify `latest` and a new version of the runtime is released, the
    #     new version of the runtime is used.
    #
    #   * `grid:r550` - [NVIDIA vGPU software 17][1]
    #
    #   * `grid:r535` - [NVIDIA vGPU software 16][2]
    #
    #   If you don't specify a runtime, Deadline Cloud uses `latest` as the
    #   default. However, if you have multiple accelerators and specify
    #   `latest` for some and leave others blank, Deadline Cloud raises an
    #   exception.
    #
    #
    #
    #   [1]: https://docs.nvidia.com/vgpu/17.0/index.html
    #   [2]: https://docs.nvidia.com/vgpu/16.0/index.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/AcceleratorSelection AWS API Documentation
    #
    class AcceleratorSelection < Struct.new(
      :name,
      :runtime)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the maximum and minimum amount of memory, in MiB, to use for
    # the accelerator.
    #
    # @!attribute [rw] min
    #   The minimum amount of memory to use for the accelerator, measured in
    #   MiB.
    #   @return [Integer]
    #
    # @!attribute [rw] max
    #   The maximum amount of memory to use for the accelerator, measured in
    #   MiB.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/AcceleratorTotalMemoryMiBRange AWS API Documentation
    #
    class AcceleratorTotalMemoryMiBRange < Struct.new(
      :min,
      :max)
      SENSITIVE = []
      include Aws::Structure
    end

    # You don't have permission to perform the action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] context
    #   Information about the resources in use when the exception was
    #   thrown.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message,
      :context)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the number of resources used.
    #
    # @!attribute [rw] limit_id
    #   The unique identifier of the limit.
    #   @return [String]
    #
    # @!attribute [rw] count
    #   The number of limit resources used.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/AcquiredLimit AWS API Documentation
    #
    class AcquiredLimit < Struct.new(
      :limit_id,
      :count)
      SENSITIVE = []
      include Aws::Structure
    end

    # The assigned starting environment for a worker during session.
    #
    # @!attribute [rw] environment_id
    #   The environment ID of the assigned environment at the start of a
    #   session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/AssignedEnvironmentEnterSessionActionDefinition AWS API Documentation
    #
    class AssignedEnvironmentEnterSessionActionDefinition < Struct.new(
      :environment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The assigned environment when a worker exits a session.
    #
    # @!attribute [rw] environment_id
    #   The environment ID of the assigned environment when exiting a
    #   session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/AssignedEnvironmentExitSessionActionDefinition AWS API Documentation
    #
    class AssignedEnvironmentExitSessionActionDefinition < Struct.new(
      :environment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The assigned session for the worker.
    #
    # @!attribute [rw] queue_id
    #   The queue ID of the assigned session.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The job ID for the assigned session.
    #   @return [String]
    #
    # @!attribute [rw] session_actions
    #   The session actions to apply to the assigned session.
    #   @return [Array<Types::AssignedSessionAction>]
    #
    # @!attribute [rw] log_configuration
    #   The log configuration for the worker's assigned session.
    #   @return [Types::LogConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/AssignedSession AWS API Documentation
    #
    class AssignedSession < Struct.new(
      :queue_id,
      :job_id,
      :session_actions,
      :log_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The action for a session defined by the session action ID.
    #
    # @!attribute [rw] session_action_id
    #   The session action ID for the assigned session.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The definition of the assigned session action.
    #   @return [Types::AssignedSessionActionDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/AssignedSessionAction AWS API Documentation
    #
    class AssignedSessionAction < Struct.new(
      :session_action_id,
      :definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # The definition of the assigned session action.
    #
    # @note AssignedSessionActionDefinition is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of AssignedSessionActionDefinition corresponding to the set member.
    #
    # @!attribute [rw] env_enter
    #   The environment a session starts on.
    #   @return [Types::AssignedEnvironmentEnterSessionActionDefinition]
    #
    # @!attribute [rw] env_exit
    #   The environment a session exits from.
    #   @return [Types::AssignedEnvironmentExitSessionActionDefinition]
    #
    # @!attribute [rw] task_run
    #   The task run.
    #   @return [Types::AssignedTaskRunSessionActionDefinition]
    #
    # @!attribute [rw] sync_input_job_attachments
    #   The job attachment to sync with an assigned session action.
    #   @return [Types::AssignedSyncInputJobAttachmentsSessionActionDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/AssignedSessionActionDefinition AWS API Documentation
    #
    class AssignedSessionActionDefinition < Struct.new(
      :env_enter,
      :env_exit,
      :task_run,
      :sync_input_job_attachments,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class EnvEnter < AssignedSessionActionDefinition; end
      class EnvExit < AssignedSessionActionDefinition; end
      class TaskRun < AssignedSessionActionDefinition; end
      class SyncInputJobAttachments < AssignedSessionActionDefinition; end
      class Unknown < AssignedSessionActionDefinition; end
    end

    # The details for an assigned session action as it relates to a job
    # attachment.
    #
    # @!attribute [rw] step_id
    #   The step ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/AssignedSyncInputJobAttachmentsSessionActionDefinition AWS API Documentation
    #
    class AssignedSyncInputJobAttachmentsSessionActionDefinition < Struct.new(
      :step_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specific task, step, and parameters to include.
    #
    # @!attribute [rw] task_id
    #   The task ID.
    #   @return [String]
    #
    # @!attribute [rw] step_id
    #   The step ID.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters to include.
    #   @return [Hash<String,Types::TaskParameterValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/AssignedTaskRunSessionActionDefinition AWS API Documentation
    #
    class AssignedTaskRunSessionActionDefinition < Struct.new(
      :task_id,
      :step_id,
      :parameters)
      SENSITIVE = [:parameters]
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The ID of the farm to associate with the member.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   The member's principal ID to associate with the farm.
    #   @return [String]
    #
    # @!attribute [rw] principal_type
    #   The principal type of the member to associate with the farm.
    #   @return [String]
    #
    # @!attribute [rw] identity_store_id
    #   The identity store ID of the member to associate with the farm.
    #   @return [String]
    #
    # @!attribute [rw] membership_level
    #   The principal's membership level for the associated farm.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/AssociateMemberToFarmRequest AWS API Documentation
    #
    class AssociateMemberToFarmRequest < Struct.new(
      :farm_id,
      :principal_id,
      :principal_type,
      :identity_store_id,
      :membership_level)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/AssociateMemberToFarmResponse AWS API Documentation
    #
    class AssociateMemberToFarmResponse < Aws::EmptyStructure; end

    # @!attribute [rw] farm_id
    #   The farm ID of the fleet to associate with the member.
    #   @return [String]
    #
    # @!attribute [rw] fleet_id
    #   The ID of the fleet to associate with a member.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   The member's principal ID to associate with a fleet.
    #   @return [String]
    #
    # @!attribute [rw] principal_type
    #   The member's principal type to associate with the fleet.
    #   @return [String]
    #
    # @!attribute [rw] identity_store_id
    #   The member's identity store ID to associate with the fleet.
    #   @return [String]
    #
    # @!attribute [rw] membership_level
    #   The principal's membership level for the associated fleet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/AssociateMemberToFleetRequest AWS API Documentation
    #
    class AssociateMemberToFleetRequest < Struct.new(
      :farm_id,
      :fleet_id,
      :principal_id,
      :principal_type,
      :identity_store_id,
      :membership_level)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/AssociateMemberToFleetResponse AWS API Documentation
    #
    class AssociateMemberToFleetResponse < Aws::EmptyStructure; end

    # @!attribute [rw] farm_id
    #   The farm ID of the job to associate with the member.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID to associate to the member.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The job ID to associate with the member.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   The member's principal ID to associate with the job.
    #   @return [String]
    #
    # @!attribute [rw] principal_type
    #   The member's principal type to associate with the job.
    #   @return [String]
    #
    # @!attribute [rw] identity_store_id
    #   The member's identity store ID to associate with the job.
    #   @return [String]
    #
    # @!attribute [rw] membership_level
    #   The principal's membership level for the associated job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/AssociateMemberToJobRequest AWS API Documentation
    #
    class AssociateMemberToJobRequest < Struct.new(
      :farm_id,
      :queue_id,
      :job_id,
      :principal_id,
      :principal_type,
      :identity_store_id,
      :membership_level)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/AssociateMemberToJobResponse AWS API Documentation
    #
    class AssociateMemberToJobResponse < Aws::EmptyStructure; end

    # @!attribute [rw] farm_id
    #   The farm ID of the queue to associate with the member.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The ID of the queue to associate to the member.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   The member's principal ID to associate with the queue.
    #   @return [String]
    #
    # @!attribute [rw] principal_type
    #   The member's principal type to associate with the queue.
    #   @return [String]
    #
    # @!attribute [rw] identity_store_id
    #   The member's identity store ID to associate with the queue.
    #   @return [String]
    #
    # @!attribute [rw] membership_level
    #   The principal's membership level for the associated queue.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/AssociateMemberToQueueRequest AWS API Documentation
    #
    class AssociateMemberToQueueRequest < Struct.new(
      :farm_id,
      :queue_id,
      :principal_id,
      :principal_type,
      :identity_store_id,
      :membership_level)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/AssociateMemberToQueueResponse AWS API Documentation
    #
    class AssociateMemberToQueueResponse < Aws::EmptyStructure; end

    # @!attribute [rw] farm_id
    #   The farm ID for the fleet's farm.
    #   @return [String]
    #
    # @!attribute [rw] fleet_id
    #   The fleet ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/AssumeFleetRoleForReadRequest AWS API Documentation
    #
    class AssumeFleetRoleForReadRequest < Struct.new(
      :farm_id,
      :fleet_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] credentials
    #   The credentials for the fleet role.
    #   @return [Types::AwsCredentials]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/AssumeFleetRoleForReadResponse AWS API Documentation
    #
    class AssumeFleetRoleForReadResponse < Struct.new(
      :credentials)
      SENSITIVE = [:credentials]
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID for the fleet's farm.
    #   @return [String]
    #
    # @!attribute [rw] fleet_id
    #   The fleet ID that contains the worker.
    #   @return [String]
    #
    # @!attribute [rw] worker_id
    #   The ID of the worker assuming the fleet role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/AssumeFleetRoleForWorkerRequest AWS API Documentation
    #
    class AssumeFleetRoleForWorkerRequest < Struct.new(
      :farm_id,
      :fleet_id,
      :worker_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] credentials
    #   The credentials for the worker.
    #   @return [Types::AwsCredentials]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/AssumeFleetRoleForWorkerResponse AWS API Documentation
    #
    class AssumeFleetRoleForWorkerResponse < Struct.new(
      :credentials)
      SENSITIVE = [:credentials]
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID of the farm containing the queue.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/AssumeQueueRoleForReadRequest AWS API Documentation
    #
    class AssumeQueueRoleForReadRequest < Struct.new(
      :farm_id,
      :queue_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] credentials
    #   The credentials for the queue role.
    #   @return [Types::AwsCredentials]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/AssumeQueueRoleForReadResponse AWS API Documentation
    #
    class AssumeQueueRoleForReadResponse < Struct.new(
      :credentials)
      SENSITIVE = [:credentials]
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID of the queue that the user assumes the role for.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID of the queue that the user assumes the role for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/AssumeQueueRoleForUserRequest AWS API Documentation
    #
    class AssumeQueueRoleForUserRequest < Struct.new(
      :farm_id,
      :queue_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] credentials
    #   The credentials for the queue role that a user has access to.
    #   @return [Types::AwsCredentials]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/AssumeQueueRoleForUserResponse AWS API Documentation
    #
    class AssumeQueueRoleForUserResponse < Struct.new(
      :credentials)
      SENSITIVE = [:credentials]
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID of the worker assuming the queue role.
    #   @return [String]
    #
    # @!attribute [rw] fleet_id
    #   The fleet ID of the worker assuming the queue role.
    #   @return [String]
    #
    # @!attribute [rw] worker_id
    #   The worker ID of the worker assuming the queue role.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID of the worker assuming the queue role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/AssumeQueueRoleForWorkerRequest AWS API Documentation
    #
    class AssumeQueueRoleForWorkerRequest < Struct.new(
      :farm_id,
      :fleet_id,
      :worker_id,
      :queue_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] credentials
    #   The Amazon Web Services credentials for the role that the worker is
    #   assuming.
    #   @return [Types::AwsCredentials]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/AssumeQueueRoleForWorkerResponse AWS API Documentation
    #
    class AssumeQueueRoleForWorkerResponse < Struct.new(
      :credentials)
      SENSITIVE = [:credentials]
      include Aws::Structure
    end

    # The attachments for jobs.
    #
    # @!attribute [rw] manifests
    #   A list of manifests which describe job attachment configurations.
    #   @return [Array<Types::ManifestProperties>]
    #
    # @!attribute [rw] file_system
    #   The file system.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/Attachments AWS API Documentation
    #
    class Attachments < Struct.new(
      :manifests,
      :file_system)
      SENSITIVE = [:manifests]
      include Aws::Structure
    end

    # The Identity and Access Management credentials.
    #
    # @!attribute [rw] access_key_id
    #   The IAM access key ID.
    #   @return [String]
    #
    # @!attribute [rw] secret_access_key
    #   The IAM secret access key.
    #   @return [String]
    #
    # @!attribute [rw] session_token
    #   The IAM session token
    #   @return [String]
    #
    # @!attribute [rw] expiration
    #   The expiration date and time of the IAM credentials.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/AwsCredentials AWS API Documentation
    #
    class AwsCredentials < Struct.new(
      :access_key_id,
      :secret_access_key,
      :session_token,
      :expiration)
      SENSITIVE = [:access_key_id, :secret_access_key, :session_token]
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID of the worker that's fetching job details. The worker
    #   must have an assignment on a job to fetch job details.
    #   @return [String]
    #
    # @!attribute [rw] fleet_id
    #   The fleet ID of the worker that's fetching job details. The worker
    #   must have an assignment on a job to fetch job details.
    #   @return [String]
    #
    # @!attribute [rw] worker_id
    #   The worker ID of the worker containing the job details to get.
    #   @return [String]
    #
    # @!attribute [rw] identifiers
    #   The job identifiers to include within the job entity batch details.
    #   @return [Array<Types::JobEntityIdentifiersUnion>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/BatchGetJobEntityRequest AWS API Documentation
    #
    class BatchGetJobEntityRequest < Struct.new(
      :farm_id,
      :fleet_id,
      :worker_id,
      :identifiers)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entities
    #   A list of the job entities, or details, in the batch.
    #   @return [Array<Types::JobEntity>]
    #
    # @!attribute [rw] errors
    #   A list of errors from the job error logs for the batch.
    #   @return [Array<Types::GetJobEntityError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/BatchGetJobEntityResponse AWS API Documentation
    #
    class BatchGetJobEntityResponse < Struct.new(
      :entities,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # The budget action to add.
    #
    # @!attribute [rw] type
    #   The type of budget action to add.
    #   @return [String]
    #
    # @!attribute [rw] threshold_percentage
    #   The percentage threshold for the budget action to add.
    #   @return [Float]
    #
    # @!attribute [rw] description
    #   A description for the budget action to add.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/BudgetActionToAdd AWS API Documentation
    #
    class BudgetActionToAdd < Struct.new(
      :type,
      :threshold_percentage,
      :description)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # The budget action to remove.
    #
    # @!attribute [rw] type
    #   The type of budget action to remove.
    #   @return [String]
    #
    # @!attribute [rw] threshold_percentage
    #   The percentage threshold for the budget action to remove.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/BudgetActionToRemove AWS API Documentation
    #
    class BudgetActionToRemove < Struct.new(
      :type,
      :threshold_percentage)
      SENSITIVE = []
      include Aws::Structure
    end

    # The start and end time of the budget.
    #
    # @note BudgetSchedule is a union - when making an API calls you must set exactly one of the members.
    #
    # @note BudgetSchedule is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of BudgetSchedule corresponding to the set member.
    #
    # @!attribute [rw] fixed
    #   The fixed start and end time of the budget's schedule.
    #   @return [Types::FixedBudgetSchedule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/BudgetSchedule AWS API Documentation
    #
    class BudgetSchedule < Struct.new(
      :fixed,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Fixed < BudgetSchedule; end
      class Unknown < BudgetSchedule; end
    end

    # The budget summary.
    #
    # @!attribute [rw] budget_id
    #   The budget ID.
    #   @return [String]
    #
    # @!attribute [rw] usage_tracking_resource
    #   The resource used to track expenditure in the budget.
    #   @return [Types::UsageTrackingResource]
    #
    # @!attribute [rw] status
    #   The status of the budget.
    #
    #   * `ACTIVE`–The budget is being evaluated.
    #
    #   * `INACTIVE`–The budget is inactive. This can include Expired,
    #     Canceled, or deleted Deleted statuses.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the budget summary to update.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the budget summary.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @!attribute [rw] approximate_dollar_limit
    #   The approximate dollar limit of the budget.
    #   @return [Float]
    #
    # @!attribute [rw] usages
    #   The consumed usage for the budget.
    #   @return [Types::ConsumedUsages]
    #
    # @!attribute [rw] created_by
    #   The user or system that created this resource.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The user or system that updated this resource.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time the resource was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/BudgetSummary AWS API Documentation
    #
    class BudgetSummary < Struct.new(
      :budget_id,
      :usage_tracking_resource,
      :status,
      :display_name,
      :description,
      :approximate_dollar_limit,
      :usages,
      :created_by,
      :created_at,
      :updated_by,
      :updated_at)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # Your request has conflicting operations. This can occur if you're
    # trying to perform more than one operation on the same resource at the
    # same time.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   A description of the error.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource in use.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource in use.
    #   @return [String]
    #
    # @!attribute [rw] context
    #   Information about the resources in use when the exception was
    #   thrown.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :reason,
      :resource_id,
      :resource_type,
      :context)
      SENSITIVE = []
      include Aws::Structure
    end

    # The consumed usage for the resource.
    #
    # @!attribute [rw] approximate_dollar_usage
    #   The amount of the budget consumed.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ConsumedUsages AWS API Documentation
    #
    class ConsumedUsages < Struct.new(
      :approximate_dollar_usage)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID to copy.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The job ID to copy.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID to copy.
    #   @return [String]
    #
    # @!attribute [rw] target_s3_location
    #   The Amazon S3 bucket name and key where you would like to add a copy
    #   of the job template.
    #   @return [Types::S3Location]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/CopyJobTemplateRequest AWS API Documentation
    #
    class CopyJobTemplateRequest < Struct.new(
      :farm_id,
      :job_id,
      :queue_id,
      :target_s3_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_type
    #   The format of the job template, either `JSON` or `YAML`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/CopyJobTemplateResponse AWS API Documentation
    #
    class CopyJobTemplateResponse < Struct.new(
      :template_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   The unique token which the server uses to recognize retries of the
    #   same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] farm_id
    #   The farm ID to include in this budget.
    #   @return [String]
    #
    # @!attribute [rw] usage_tracking_resource
    #   The queue ID provided to this budget to track usage.
    #   @return [Types::UsageTrackingResource]
    #
    # @!attribute [rw] display_name
    #   The display name of the budget.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the budget.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @!attribute [rw] approximate_dollar_limit
    #   The dollar limit based on consumed usage.
    #   @return [Float]
    #
    # @!attribute [rw] actions
    #   The budget actions to specify what happens when the budget runs out.
    #   @return [Array<Types::BudgetActionToAdd>]
    #
    # @!attribute [rw] schedule
    #   The schedule to associate with this budget.
    #   @return [Types::BudgetSchedule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/CreateBudgetRequest AWS API Documentation
    #
    class CreateBudgetRequest < Struct.new(
      :client_token,
      :farm_id,
      :usage_tracking_resource,
      :display_name,
      :description,
      :approximate_dollar_limit,
      :actions,
      :schedule)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] budget_id
    #   The budget ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/CreateBudgetResponse AWS API Documentation
    #
    class CreateBudgetResponse < Struct.new(
      :budget_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   The unique token which the server uses to recognize retries of the
    #   same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the farm.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the farm.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The ARN of the KMS key to use on the farm.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to your farm. Each tag consists of a tag key and a
    #   tag value. Tag keys and values are both required, but tag values can
    #   be empty strings.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/CreateFarmRequest AWS API Documentation
    #
    class CreateFarmRequest < Struct.new(
      :client_token,
      :display_name,
      :description,
      :kms_key_arn,
      :tags)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/CreateFarmResponse AWS API Documentation
    #
    class CreateFarmResponse < Struct.new(
      :farm_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   The unique token which the server uses to recognize retries of the
    #   same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] farm_id
    #   The farm ID of the farm to connect to the fleet.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the fleet.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the fleet.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The IAM role ARN for the role that the fleet's workers will use.
    #   @return [String]
    #
    # @!attribute [rw] min_worker_count
    #   The minimum number of workers for the fleet.
    #   @return [Integer]
    #
    # @!attribute [rw] max_worker_count
    #   The maximum number of workers for the fleet.
    #   @return [Integer]
    #
    # @!attribute [rw] configuration
    #   The configuration settings for the fleet. Customer managed fleets
    #   are self-managed. Service managed Amazon EC2 fleets are managed by
    #   Deadline Cloud.
    #   @return [Types::FleetConfiguration]
    #
    # @!attribute [rw] tags
    #   Each tag consists of a tag key and a tag value. Tag keys and values
    #   are both required, but tag values can be empty strings.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/CreateFleetRequest AWS API Documentation
    #
    class CreateFleetRequest < Struct.new(
      :client_token,
      :farm_id,
      :display_name,
      :description,
      :role_arn,
      :min_worker_count,
      :max_worker_count,
      :configuration,
      :tags)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   The fleet ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/CreateFleetResponse AWS API Documentation
    #
    class CreateFleetResponse < Struct.new(
      :fleet_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID of the farm to connect to the job.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The ID of the queue that the job is submitted to.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The unique token which the server uses to recognize retries of the
    #   same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] template
    #   The job template to use for this job.
    #   @return [String]
    #
    # @!attribute [rw] template_type
    #   The file type for the job template.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority of the job on a scale of 0 to 100. The highest priority
    #   (first scheduled) is 100. When two jobs have the same priority, the
    #   oldest job is scheduled first.
    #   @return [Integer]
    #
    # @!attribute [rw] parameters
    #   The parameters for the job.
    #   @return [Hash<String,Types::JobParameter>]
    #
    # @!attribute [rw] attachments
    #   The attachments for the job. Attach files required for the job to
    #   run to a render job.
    #   @return [Types::Attachments]
    #
    # @!attribute [rw] storage_profile_id
    #   The storage profile ID for the storage profile to connect to the
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] target_task_run_status
    #   The initial job status when it is created. Jobs that are created
    #   with a `SUSPENDED` status will not run until manually requeued.
    #   @return [String]
    #
    # @!attribute [rw] max_failed_tasks_count
    #   The number of task failures before the job stops running and is
    #   marked as `FAILED`.
    #   @return [Integer]
    #
    # @!attribute [rw] max_retries_per_task
    #   The maximum number of retries for each task.
    #   @return [Integer]
    #
    # @!attribute [rw] max_worker_count
    #   The maximum number of worker hosts that can concurrently process a
    #   job. When the `maxWorkerCount` is reached, no more workers will be
    #   assigned to process the job, even if the fleets assigned to the
    #   job's queue has available workers.
    #
    #   You can't set the `maxWorkerCount` to 0. If you set it to -1, there
    #   is no maximum number of workers.
    #
    #   If you don't specify the `maxWorkerCount`, Deadline Cloud won't
    #   throttle the number of workers used to process the job.
    #   @return [Integer]
    #
    # @!attribute [rw] source_job_id
    #   The job ID for the source job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/CreateJobRequest AWS API Documentation
    #
    class CreateJobRequest < Struct.new(
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
      :source_job_id)
      SENSITIVE = [:template, :parameters]
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The job ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/CreateJobResponse AWS API Documentation
    #
    class CreateJobResponse < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   The unique token which the server uses to recognize retries of the
    #   same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The VPC (virtual private cloud) ID to use with the license endpoint.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The subnet IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   The security group IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Each tag consists of a tag key and a tag value. Tag keys and values
    #   are both required, but tag values can be empty strings.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/CreateLicenseEndpointRequest AWS API Documentation
    #
    class CreateLicenseEndpointRequest < Struct.new(
      :client_token,
      :vpc_id,
      :subnet_ids,
      :security_group_ids,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] license_endpoint_id
    #   The license endpoint ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/CreateLicenseEndpointResponse AWS API Documentation
    #
    class CreateLicenseEndpointResponse < Struct.new(
      :license_endpoint_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   The unique token which the server uses to recognize retries of the
    #   same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the limit.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @!attribute [rw] amount_requirement_name
    #   The value that you specify as the `name` in the `amounts` field of
    #   the `hostRequirements` in a step of a job template to declare the
    #   limit requirement.
    #   @return [String]
    #
    # @!attribute [rw] max_count
    #   The maximum number of resources constrained by this limit. When all
    #   of the resources are in use, steps that require the limit won't be
    #   scheduled until the resource is available.
    #
    #   The `maxCount` must not be 0. If the value is -1, there is no
    #   restriction on the number of resources that can be acquired for this
    #   limit.
    #   @return [Integer]
    #
    # @!attribute [rw] farm_id
    #   The farm ID of the farm that contains the limit.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the limit. A description helps you identify the
    #   purpose of the limit.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/CreateLimitRequest AWS API Documentation
    #
    class CreateLimitRequest < Struct.new(
      :client_token,
      :display_name,
      :amount_requirement_name,
      :max_count,
      :farm_id,
      :description)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] limit_id
    #   A unique identifier for the limit. Use this identifier in other
    #   operations, such as `CreateQueueLimitAssociation` and `DeleteLimit`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/CreateLimitResponse AWS API Documentation
    #
    class CreateLimitResponse < Struct.new(
      :limit_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   The unique token which the server uses to recognize retries of the
    #   same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name that you give the monitor that is displayed in the Deadline
    #   Cloud console.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @!attribute [rw] identity_center_instance_arn
    #   The Amazon Resource Name (ARN) of the IAM Identity Center instance
    #   that authenticates monitor users.
    #   @return [String]
    #
    # @!attribute [rw] subdomain
    #   The subdomain to use when creating the monitor URL. The full URL of
    #   the monitor is subdomain.Region.deadlinecloud.amazonaws.com.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that the monitor uses
    #   to connect to Deadline Cloud. Every user that signs in to the
    #   monitor using IAM Identity Center uses this role to access Deadline
    #   Cloud resources.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/CreateMonitorRequest AWS API Documentation
    #
    class CreateMonitorRequest < Struct.new(
      :client_token,
      :display_name,
      :identity_center_instance_arn,
      :subdomain,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitor_id
    #   The unique identifier of the monitor.
    #   @return [String]
    #
    # @!attribute [rw] identity_center_application_arn
    #   The Amazon Resource Name (ARN) that IAM Identity Center assigns to
    #   the monitor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/CreateMonitorResponse AWS API Documentation
    #
    class CreateMonitorResponse < Struct.new(
      :monitor_id,
      :identity_center_application_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   The unique token which the server uses to recognize retries of the
    #   same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] farm_id
    #   The farm ID of the farm to connect to the environment.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID to connect the queue and environment.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   Sets the priority of the environments in the queue from 0 to 10,000,
    #   where 0 is the highest priority. If two environments share the same
    #   priority value, the environment created first takes higher priority.
    #   @return [Integer]
    #
    # @!attribute [rw] template_type
    #   The template's file type, `JSON` or `YAML`.
    #   @return [String]
    #
    # @!attribute [rw] template
    #   The environment template to use in the queue.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/CreateQueueEnvironmentRequest AWS API Documentation
    #
    class CreateQueueEnvironmentRequest < Struct.new(
      :client_token,
      :farm_id,
      :queue_id,
      :priority,
      :template_type,
      :template)
      SENSITIVE = [:template]
      include Aws::Structure
    end

    # @!attribute [rw] queue_environment_id
    #   The queue environment ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/CreateQueueEnvironmentResponse AWS API Documentation
    #
    class CreateQueueEnvironmentResponse < Struct.new(
      :queue_environment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The ID of the farm that the queue and fleet belong to.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID.
    #   @return [String]
    #
    # @!attribute [rw] fleet_id
    #   The fleet ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/CreateQueueFleetAssociationRequest AWS API Documentation
    #
    class CreateQueueFleetAssociationRequest < Struct.new(
      :farm_id,
      :queue_id,
      :fleet_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/CreateQueueFleetAssociationResponse AWS API Documentation
    #
    class CreateQueueFleetAssociationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] farm_id
    #   The unique identifier of the farm that contains the queue and limit
    #   to associate.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The unique identifier of the queue to associate with the limit.
    #   @return [String]
    #
    # @!attribute [rw] limit_id
    #   The unique identifier of the limit to associate with the queue.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/CreateQueueLimitAssociationRequest AWS API Documentation
    #
    class CreateQueueLimitAssociationRequest < Struct.new(
      :farm_id,
      :queue_id,
      :limit_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/CreateQueueLimitAssociationResponse AWS API Documentation
    #
    class CreateQueueLimitAssociationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] client_token
    #   The unique token which the server uses to recognize retries of the
    #   same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] farm_id
    #   The farm ID of the farm to connect to the queue.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the queue.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the queue.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @!attribute [rw] default_budget_action
    #   The default action to take on a queue if a budget isn't configured.
    #   @return [String]
    #
    # @!attribute [rw] job_attachment_settings
    #   The job attachment settings for the queue. These are the Amazon S3
    #   bucket name and the Amazon S3 prefix.
    #   @return [Types::JobAttachmentSettings]
    #
    # @!attribute [rw] role_arn
    #   The IAM role ARN that workers will use while running jobs for this
    #   queue.
    #   @return [String]
    #
    # @!attribute [rw] job_run_as_user
    #   The jobs in the queue run as the specified POSIX user.
    #   @return [Types::JobRunAsUser]
    #
    # @!attribute [rw] required_file_system_location_names
    #   The file system location name to include in the queue.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allowed_storage_profile_ids
    #   The storage profile IDs to include in the queue.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Each tag consists of a tag key and a tag value. Tag keys and values
    #   are both required, but tag values can be empty strings.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/CreateQueueRequest AWS API Documentation
    #
    class CreateQueueRequest < Struct.new(
      :client_token,
      :farm_id,
      :display_name,
      :description,
      :default_budget_action,
      :job_attachment_settings,
      :role_arn,
      :job_run_as_user,
      :required_file_system_location_names,
      :allowed_storage_profile_ids,
      :tags)
      SENSITIVE = [:description, :required_file_system_location_names]
      include Aws::Structure
    end

    # @!attribute [rw] queue_id
    #   The queue ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/CreateQueueResponse AWS API Documentation
    #
    class CreateQueueResponse < Struct.new(
      :queue_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   The unique token which the server uses to recognize retries of the
    #   same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] farm_id
    #   The farm ID of the farm to connect to the storage profile.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the storage profile.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @!attribute [rw] os_family
    #   The type of operating system (OS) for the storage profile.
    #   @return [String]
    #
    # @!attribute [rw] file_system_locations
    #   File system paths to include in the storage profile.
    #   @return [Array<Types::FileSystemLocation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/CreateStorageProfileRequest AWS API Documentation
    #
    class CreateStorageProfileRequest < Struct.new(
      :client_token,
      :farm_id,
      :display_name,
      :os_family,
      :file_system_locations)
      SENSITIVE = [:file_system_locations]
      include Aws::Structure
    end

    # @!attribute [rw] storage_profile_id
    #   The storage profile ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/CreateStorageProfileResponse AWS API Documentation
    #
    class CreateStorageProfileResponse < Struct.new(
      :storage_profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID of the farm to connect to the worker.
    #   @return [String]
    #
    # @!attribute [rw] fleet_id
    #   The fleet ID to connect to the worker.
    #   @return [String]
    #
    # @!attribute [rw] host_properties
    #   The IP address and host name of the worker.
    #   @return [Types::HostPropertiesRequest]
    #
    # @!attribute [rw] client_token
    #   The unique token which the server uses to recognize retries of the
    #   same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/CreateWorkerRequest AWS API Documentation
    #
    class CreateWorkerRequest < Struct.new(
      :farm_id,
      :fleet_id,
      :host_properties,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] worker_id
    #   The worker ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/CreateWorkerResponse AWS API Documentation
    #
    class CreateWorkerResponse < Struct.new(
      :worker_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a customer managed fleet configuration.
    #
    # @!attribute [rw] mode
    #   The Auto Scaling mode for the customer managed fleet configuration.
    #   @return [String]
    #
    # @!attribute [rw] worker_capabilities
    #   The worker capabilities for a customer managed fleet configuration.
    #   @return [Types::CustomerManagedWorkerCapabilities]
    #
    # @!attribute [rw] storage_profile_id
    #   The storage profile ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/CustomerManagedFleetConfiguration AWS API Documentation
    #
    class CustomerManagedFleetConfiguration < Struct.new(
      :mode,
      :worker_capabilities,
      :storage_profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The worker capabilities for a customer managed workflow.
    #
    # @!attribute [rw] v_cpu_count
    #   The vCPU count for the customer manged worker capabilities.
    #   @return [Types::VCpuCountRange]
    #
    # @!attribute [rw] memory_mi_b
    #   The memory (MiB).
    #   @return [Types::MemoryMiBRange]
    #
    # @!attribute [rw] accelerator_types
    #   The accelerator types for the customer managed worker capabilities.
    #   @return [Array<String>]
    #
    # @!attribute [rw] accelerator_count
    #   The range of the accelerator.
    #   @return [Types::AcceleratorCountRange]
    #
    # @!attribute [rw] accelerator_total_memory_mi_b
    #   The total memory (MiB) for the customer managed worker capabilities.
    #   @return [Types::AcceleratorTotalMemoryMiBRange]
    #
    # @!attribute [rw] os_family
    #   The operating system (OS) family.
    #   @return [String]
    #
    # @!attribute [rw] cpu_architecture_type
    #   The CPU architecture type for the customer managed worker
    #   capabilities.
    #   @return [String]
    #
    # @!attribute [rw] custom_amounts
    #   Custom requirement ranges for customer managed worker capabilities.
    #   @return [Array<Types::FleetAmountCapability>]
    #
    # @!attribute [rw] custom_attributes
    #   Custom attributes for the customer manged worker capabilities.
    #   @return [Array<Types::FleetAttributeCapability>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/CustomerManagedWorkerCapabilities AWS API Documentation
    #
    class CustomerManagedWorkerCapabilities < Struct.new(
      :v_cpu_count,
      :memory_mi_b,
      :accelerator_types,
      :accelerator_count,
      :accelerator_total_memory_mi_b,
      :os_family,
      :cpu_architecture_type,
      :custom_amounts,
      :custom_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # The time stamp in date-time format.
    #
    # @!attribute [rw] name
    #   The name of the date-time field to filter on.
    #   @return [String]
    #
    # @!attribute [rw] operator
    #   The type of comparison to use to filter the results.
    #   @return [String]
    #
    # @!attribute [rw] date_time
    #   The date and time.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DateTimeFilterExpression AWS API Documentation
    #
    class DateTimeFilterExpression < Struct.new(
      :name,
      :operator,
      :date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID of the farm to remove from the budget.
    #   @return [String]
    #
    # @!attribute [rw] budget_id
    #   The budget ID of the budget to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DeleteBudgetRequest AWS API Documentation
    #
    class DeleteBudgetRequest < Struct.new(
      :farm_id,
      :budget_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DeleteBudgetResponse AWS API Documentation
    #
    class DeleteBudgetResponse < Aws::EmptyStructure; end

    # @!attribute [rw] farm_id
    #   The farm ID of the farm to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DeleteFarmRequest AWS API Documentation
    #
    class DeleteFarmRequest < Struct.new(
      :farm_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DeleteFarmResponse AWS API Documentation
    #
    class DeleteFarmResponse < Aws::EmptyStructure; end

    # @!attribute [rw] client_token
    #   The unique token which the server uses to recognize retries of the
    #   same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] farm_id
    #   The farm ID of the farm to remove from the fleet.
    #   @return [String]
    #
    # @!attribute [rw] fleet_id
    #   The fleet ID of the fleet to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DeleteFleetRequest AWS API Documentation
    #
    class DeleteFleetRequest < Struct.new(
      :client_token,
      :farm_id,
      :fleet_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DeleteFleetResponse AWS API Documentation
    #
    class DeleteFleetResponse < Aws::EmptyStructure; end

    # @!attribute [rw] license_endpoint_id
    #   The license endpoint ID of the license endpoint to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DeleteLicenseEndpointRequest AWS API Documentation
    #
    class DeleteLicenseEndpointRequest < Struct.new(
      :license_endpoint_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DeleteLicenseEndpointResponse AWS API Documentation
    #
    class DeleteLicenseEndpointResponse < Aws::EmptyStructure; end

    # @!attribute [rw] farm_id
    #   The unique identifier of the farm that contains the limit to delete.
    #   @return [String]
    #
    # @!attribute [rw] limit_id
    #   The unique identifier of the limit to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DeleteLimitRequest AWS API Documentation
    #
    class DeleteLimitRequest < Struct.new(
      :farm_id,
      :limit_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DeleteLimitResponse AWS API Documentation
    #
    class DeleteLimitResponse < Aws::EmptyStructure; end

    # @!attribute [rw] license_endpoint_id
    #   The ID of the license endpoint from which to remove the metered
    #   product.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The product ID to remove from the license endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DeleteMeteredProductRequest AWS API Documentation
    #
    class DeleteMeteredProductRequest < Struct.new(
      :license_endpoint_id,
      :product_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DeleteMeteredProductResponse AWS API Documentation
    #
    class DeleteMeteredProductResponse < Aws::EmptyStructure; end

    # @!attribute [rw] monitor_id
    #   The unique identifier of the monitor to delete. This ID is returned
    #   by the `CreateMonitor` operation, and is included in the response to
    #   the `GetMonitor` operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DeleteMonitorRequest AWS API Documentation
    #
    class DeleteMonitorRequest < Struct.new(
      :monitor_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DeleteMonitorResponse AWS API Documentation
    #
    class DeleteMonitorResponse < Aws::EmptyStructure; end

    # @!attribute [rw] farm_id
    #   The farm ID of the farm from which to remove the queue environment.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID of the queue environment to delete.
    #   @return [String]
    #
    # @!attribute [rw] queue_environment_id
    #   The queue environment ID of the queue environment to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DeleteQueueEnvironmentRequest AWS API Documentation
    #
    class DeleteQueueEnvironmentRequest < Struct.new(
      :farm_id,
      :queue_id,
      :queue_environment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DeleteQueueEnvironmentResponse AWS API Documentation
    #
    class DeleteQueueEnvironmentResponse < Aws::EmptyStructure; end

    # @!attribute [rw] farm_id
    #   The farm ID of the farm that holds the queue-fleet association.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID of the queue-fleet association.
    #   @return [String]
    #
    # @!attribute [rw] fleet_id
    #   The fleet ID of the queue-fleet association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DeleteQueueFleetAssociationRequest AWS API Documentation
    #
    class DeleteQueueFleetAssociationRequest < Struct.new(
      :farm_id,
      :queue_id,
      :fleet_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DeleteQueueFleetAssociationResponse AWS API Documentation
    #
    class DeleteQueueFleetAssociationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] farm_id
    #   The unique identifier of the farm that contains the queue and limit
    #   to disassociate.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The unique identifier of the queue to disassociate.
    #   @return [String]
    #
    # @!attribute [rw] limit_id
    #   The unique identifier of the limit to disassociate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DeleteQueueLimitAssociationRequest AWS API Documentation
    #
    class DeleteQueueLimitAssociationRequest < Struct.new(
      :farm_id,
      :queue_id,
      :limit_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DeleteQueueLimitAssociationResponse AWS API Documentation
    #
    class DeleteQueueLimitAssociationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] farm_id
    #   The ID of the farm from which to remove the queue.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID of the queue to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DeleteQueueRequest AWS API Documentation
    #
    class DeleteQueueRequest < Struct.new(
      :farm_id,
      :queue_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DeleteQueueResponse AWS API Documentation
    #
    class DeleteQueueResponse < Aws::EmptyStructure; end

    # @!attribute [rw] farm_id
    #   The farm ID of the farm from which to remove the storage profile.
    #   @return [String]
    #
    # @!attribute [rw] storage_profile_id
    #   The storage profile ID of the storage profile to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DeleteStorageProfileRequest AWS API Documentation
    #
    class DeleteStorageProfileRequest < Struct.new(
      :farm_id,
      :storage_profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DeleteStorageProfileResponse AWS API Documentation
    #
    class DeleteStorageProfileResponse < Aws::EmptyStructure; end

    # @!attribute [rw] farm_id
    #   The farm ID of the worker to delete.
    #   @return [String]
    #
    # @!attribute [rw] fleet_id
    #   The fleet ID of the worker to delete.
    #   @return [String]
    #
    # @!attribute [rw] worker_id
    #   The worker ID of the worker to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DeleteWorkerRequest AWS API Documentation
    #
    class DeleteWorkerRequest < Struct.new(
      :farm_id,
      :fleet_id,
      :worker_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DeleteWorkerResponse AWS API Documentation
    #
    class DeleteWorkerResponse < Aws::EmptyStructure; end

    # The number of dependencies for the consumer.
    #
    # @!attribute [rw] dependencies_resolved
    #   The number of resolved dependencies.
    #   @return [Integer]
    #
    # @!attribute [rw] dependencies_unresolved
    #   The number of unresolved dependencies.
    #   @return [Integer]
    #
    # @!attribute [rw] consumers_resolved
    #   The number of consumers resolved.
    #   @return [Integer]
    #
    # @!attribute [rw] consumers_unresolved
    #   The number of unresolved consumers.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DependencyCounts AWS API Documentation
    #
    class DependencyCounts < Struct.new(
      :dependencies_resolved,
      :dependencies_unresolved,
      :consumers_resolved,
      :consumers_unresolved)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID of the farm to disassociate from the member.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   A member's principal ID to disassociate from a farm.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DisassociateMemberFromFarmRequest AWS API Documentation
    #
    class DisassociateMemberFromFarmRequest < Struct.new(
      :farm_id,
      :principal_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DisassociateMemberFromFarmResponse AWS API Documentation
    #
    class DisassociateMemberFromFarmResponse < Aws::EmptyStructure; end

    # @!attribute [rw] farm_id
    #   The farm ID of the fleet to disassociate a member from.
    #   @return [String]
    #
    # @!attribute [rw] fleet_id
    #   The fleet ID of the fleet to from which to disassociate a member.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   A member's principal ID to disassociate from a fleet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DisassociateMemberFromFleetRequest AWS API Documentation
    #
    class DisassociateMemberFromFleetRequest < Struct.new(
      :farm_id,
      :fleet_id,
      :principal_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DisassociateMemberFromFleetResponse AWS API Documentation
    #
    class DisassociateMemberFromFleetResponse < Aws::EmptyStructure; end

    # @!attribute [rw] farm_id
    #   The farm ID for the job to disassociate from the member.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID connected to a job for which you're disassociating a
    #   member.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The job ID to disassociate from a member in a job.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   A member's principal ID to disassociate from a job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DisassociateMemberFromJobRequest AWS API Documentation
    #
    class DisassociateMemberFromJobRequest < Struct.new(
      :farm_id,
      :queue_id,
      :job_id,
      :principal_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DisassociateMemberFromJobResponse AWS API Documentation
    #
    class DisassociateMemberFromJobResponse < Aws::EmptyStructure; end

    # @!attribute [rw] farm_id
    #   The farm ID for the queue to disassociate from a member.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID of the queue in which you're disassociating from a
    #   member.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   A member's principal ID to disassociate from a queue.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DisassociateMemberFromQueueRequest AWS API Documentation
    #
    class DisassociateMemberFromQueueRequest < Struct.new(
      :farm_id,
      :queue_id,
      :principal_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DisassociateMemberFromQueueResponse AWS API Documentation
    #
    class DisassociateMemberFromQueueResponse < Aws::EmptyStructure; end

    # Specifies the EBS volume.
    #
    # @!attribute [rw] size_gi_b
    #   The EBS volume size in GiB.
    #   @return [Integer]
    #
    # @!attribute [rw] iops
    #   The IOPS per volume.
    #   @return [Integer]
    #
    # @!attribute [rw] throughput_mi_b
    #   The throughput per volume in MiB.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/Ec2EbsVolume AWS API Documentation
    #
    class Ec2EbsVolume < Struct.new(
      :size_gi_b,
      :iops,
      :throughput_mi_b)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a specified environment.
    #
    # @!attribute [rw] job_id
    #   The job ID.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The environment ID.
    #   @return [String]
    #
    # @!attribute [rw] schema_version
    #   The schema version in the environment.
    #   @return [String]
    #
    # @!attribute [rw] template
    #   The template used for the environment.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/EnvironmentDetailsEntity AWS API Documentation
    #
    class EnvironmentDetailsEntity < Struct.new(
      :job_id,
      :environment_id,
      :schema_version,
      :template)
      SENSITIVE = [:template]
      include Aws::Structure
    end

    # The error details for the environment.
    #
    # @!attribute [rw] job_id
    #   The job ID.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The environment ID.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The error message detailing the error's cause.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/EnvironmentDetailsError AWS API Documentation
    #
    class EnvironmentDetailsError < Struct.new(
      :job_id,
      :environment_id,
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The IDs of the job and environment.
    #
    # @!attribute [rw] job_id
    #   The job ID.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The environment ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/EnvironmentDetailsIdentifiers AWS API Documentation
    #
    class EnvironmentDetailsIdentifiers < Struct.new(
      :job_id,
      :environment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The environment ID to use to enter a session action.
    #
    # @!attribute [rw] environment_id
    #   The environment ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/EnvironmentEnterSessionActionDefinition AWS API Documentation
    #
    class EnvironmentEnterSessionActionDefinition < Struct.new(
      :environment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the environment a session action enters in.
    #
    # @!attribute [rw] environment_id
    #   The environment ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/EnvironmentEnterSessionActionDefinitionSummary AWS API Documentation
    #
    class EnvironmentEnterSessionActionDefinitionSummary < Struct.new(
      :environment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the environment a session action exits from.
    #
    # @!attribute [rw] environment_id
    #   The environment ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/EnvironmentExitSessionActionDefinition AWS API Documentation
    #
    class EnvironmentExitSessionActionDefinition < Struct.new(
      :environment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of the environment details for which a session action to
    # exits.
    #
    # @!attribute [rw] environment_id
    #   The environment ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/EnvironmentExitSessionActionDefinitionSummary AWS API Documentation
    #
    class EnvironmentExitSessionActionDefinitionSummary < Struct.new(
      :environment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The member of a farm.
    #
    # @!attribute [rw] farm_id
    #   The farm ID of the farm member.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   The principal ID of the farm member.
    #   @return [String]
    #
    # @!attribute [rw] principal_type
    #   The principal type of the farm member.
    #   @return [String]
    #
    # @!attribute [rw] identity_store_id
    #   The identity store ID of the farm member.
    #   @return [String]
    #
    # @!attribute [rw] membership_level
    #   The farm member's membership level.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/FarmMember AWS API Documentation
    #
    class FarmMember < Struct.new(
      :farm_id,
      :principal_id,
      :principal_type,
      :identity_store_id,
      :membership_level)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of details for a farm.
    #
    # @!attribute [rw] farm_id
    #   The farm ID.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the farm.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The ARN for the KMS key.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user or system that created this resource.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time the resource was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The user or system that updated this resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/FarmSummary AWS API Documentation
    #
    class FarmSummary < Struct.new(
      :farm_id,
      :display_name,
      :kms_key_arn,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # The field sorting order and name of the field.
    #
    # @!attribute [rw] sort_order
    #   The sort order for the field.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/FieldSortExpression AWS API Documentation
    #
    class FieldSortExpression < Struct.new(
      :sort_order,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the file system location for the resource.
    #
    # @!attribute [rw] name
    #   The location name.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The file path.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/FileSystemLocation AWS API Documentation
    #
    class FileSystemLocation < Struct.new(
      :name,
      :path,
      :type)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # The details of a fixed budget schedule.
    #
    # @!attribute [rw] start_time
    #   When the budget starts.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   When the budget ends.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/FixedBudgetSchedule AWS API Documentation
    #
    class FixedBudgetSchedule < Struct.new(
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The fleet amount and attribute capabilities.
    #
    # @!attribute [rw] name
    #   The name of the fleet capability.
    #   @return [String]
    #
    # @!attribute [rw] min
    #   The minimum amount of fleet worker capability.
    #   @return [Float]
    #
    # @!attribute [rw] max
    #   The maximum amount of the fleet worker capability.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/FleetAmountCapability AWS API Documentation
    #
    class FleetAmountCapability < Struct.new(
      :name,
      :min,
      :max)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the fleet's capability name, minimum, and maximum.
    #
    # @!attribute [rw] name
    #   The name of the fleet attribute capability for the worker.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The number of fleet attribute capabilities.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/FleetAttributeCapability AWS API Documentation
    #
    class FleetAttributeCapability < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The amounts and attributes of fleets.
    #
    # @!attribute [rw] amounts
    #   Amount capabilities of the fleet.
    #   @return [Array<Types::FleetAmountCapability>]
    #
    # @!attribute [rw] attributes
    #   Attribute capabilities of the fleet.
    #   @return [Array<Types::FleetAttributeCapability>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/FleetCapabilities AWS API Documentation
    #
    class FleetCapabilities < Struct.new(
      :amounts,
      :attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Fleet configuration details.
    #
    # @note FleetConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note FleetConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of FleetConfiguration corresponding to the set member.
    #
    # @!attribute [rw] customer_managed
    #   The customer managed fleets within a fleet configuration.
    #   @return [Types::CustomerManagedFleetConfiguration]
    #
    # @!attribute [rw] service_managed_ec2
    #   The service managed Amazon EC2 instances for a fleet configuration.
    #   @return [Types::ServiceManagedEc2FleetConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/FleetConfiguration AWS API Documentation
    #
    class FleetConfiguration < Struct.new(
      :customer_managed,
      :service_managed_ec2,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class CustomerManaged < FleetConfiguration; end
      class ServiceManagedEc2 < FleetConfiguration; end
      class Unknown < FleetConfiguration; end
    end

    # The fleet member.
    #
    # @!attribute [rw] farm_id
    #   The farm ID.
    #   @return [String]
    #
    # @!attribute [rw] fleet_id
    #   The fleet ID.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   The principal ID of the fleet member.
    #   @return [String]
    #
    # @!attribute [rw] principal_type
    #   The principal type of the fleet member.
    #   @return [String]
    #
    # @!attribute [rw] identity_store_id
    #   The identity store ID.
    #   @return [String]
    #
    # @!attribute [rw] membership_level
    #   The fleet member's membership level.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/FleetMember AWS API Documentation
    #
    class FleetMember < Struct.new(
      :farm_id,
      :fleet_id,
      :principal_id,
      :principal_type,
      :identity_store_id,
      :membership_level)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a fleet.
    #
    # @!attribute [rw] fleet_id
    #   The fleet ID.
    #   @return [String]
    #
    # @!attribute [rw] farm_id
    #   The farm ID.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the fleet summary to update.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] auto_scaling_status
    #   The Auto Scaling status of a fleet.
    #   @return [String]
    #
    # @!attribute [rw] target_worker_count
    #   The target number of workers in a fleet.
    #   @return [Integer]
    #
    # @!attribute [rw] worker_count
    #   The number of workers in the fleet summary.
    #   @return [Integer]
    #
    # @!attribute [rw] min_worker_count
    #   The minimum number of workers in the fleet.
    #   @return [Integer]
    #
    # @!attribute [rw] max_worker_count
    #   The maximum number of workers specified in the fleet.
    #   @return [Integer]
    #
    # @!attribute [rw] configuration
    #   The configuration details for the fleet.
    #   @return [Types::FleetConfiguration]
    #
    # @!attribute [rw] created_at
    #   The date and time the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user or system that created this resource.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time the resource was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The user or system that updated this resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/FleetSummary AWS API Documentation
    #
    class FleetSummary < Struct.new(
      :fleet_id,
      :farm_id,
      :display_name,
      :status,
      :auto_scaling_status,
      :target_worker_count,
      :worker_count,
      :min_worker_count,
      :max_worker_count,
      :configuration,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID of the farm connected to the budget.
    #   @return [String]
    #
    # @!attribute [rw] budget_id
    #   The budget ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetBudgetRequest AWS API Documentation
    #
    class GetBudgetRequest < Struct.new(
      :farm_id,
      :budget_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] budget_id
    #   The budget ID.
    #   @return [String]
    #
    # @!attribute [rw] usage_tracking_resource
    #   The resource that the budget is tracking usage for.
    #   @return [Types::UsageTrackingResource]
    #
    # @!attribute [rw] status
    #   The status of the budget.
    #
    #   * `ACTIVE`–Get a budget being evaluated.
    #
    #   * `INACTIVE`–Get an inactive budget. This can include expired,
    #     canceled, or deleted statuses.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the budget.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the budget.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @!attribute [rw] approximate_dollar_limit
    #   The consumed usage limit for the budget.
    #   @return [Float]
    #
    # @!attribute [rw] usages
    #   The usages of the budget.
    #   @return [Types::ConsumedUsages]
    #
    # @!attribute [rw] actions
    #   The budget actions for the budget.
    #   @return [Array<Types::ResponseBudgetAction>]
    #
    # @!attribute [rw] schedule
    #   The budget schedule.
    #   @return [Types::BudgetSchedule]
    #
    # @!attribute [rw] created_by
    #   The user or system that created this resource.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The user or system that updated this resource.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time the resource was updated.
    #   @return [Time]
    #
    # @!attribute [rw] queue_stopped_at
    #   The date and time the queue stopped.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetBudgetResponse AWS API Documentation
    #
    class GetBudgetResponse < Struct.new(
      :budget_id,
      :usage_tracking_resource,
      :status,
      :display_name,
      :description,
      :approximate_dollar_limit,
      :usages,
      :actions,
      :schedule,
      :created_by,
      :created_at,
      :updated_by,
      :updated_at,
      :queue_stopped_at)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID of the farm.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetFarmRequest AWS API Documentation
    #
    class GetFarmRequest < Struct.new(
      :farm_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID of the farm to get.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the farm.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the farm.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The ARN of the KMS key used on the farm.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user or system that created this resource.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time the resource was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The user or system that updated this resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetFarmResponse AWS API Documentation
    #
    class GetFarmResponse < Struct.new(
      :farm_id,
      :display_name,
      :description,
      :kms_key_arn,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID of the farm in the fleet.
    #   @return [String]
    #
    # @!attribute [rw] fleet_id
    #   The fleet ID of the fleet to get.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetFleetRequest AWS API Documentation
    #
    class GetFleetRequest < Struct.new(
      :farm_id,
      :fleet_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   The fleet ID.
    #   @return [String]
    #
    # @!attribute [rw] farm_id
    #   The farm ID of the farm in the fleet.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the fleet.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the fleet.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The Auto Scaling status of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] auto_scaling_status
    #   The Auto Scaling status of the fleet. Either `GROWING`, `STEADY`, or
    #   `SHRINKING`.
    #   @return [String]
    #
    # @!attribute [rw] target_worker_count
    #   The number of target workers in the fleet.
    #   @return [Integer]
    #
    # @!attribute [rw] worker_count
    #   The number of workers in the fleet.
    #   @return [Integer]
    #
    # @!attribute [rw] min_worker_count
    #   The minimum number of workers specified in the fleet.
    #   @return [Integer]
    #
    # @!attribute [rw] max_worker_count
    #   The maximum number of workers specified in the fleet.
    #   @return [Integer]
    #
    # @!attribute [rw] configuration
    #   The configuration setting for the fleet.
    #   @return [Types::FleetConfiguration]
    #
    # @!attribute [rw] capabilities
    #   Outlines what the fleet is capable of for minimums, maximums, and
    #   naming, in addition to attribute names and values.
    #   @return [Types::FleetCapabilities]
    #
    # @!attribute [rw] role_arn
    #   The IAM role ARN.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user or system that created this resource.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time the resource was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The user or system that updated this resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetFleetResponse AWS API Documentation
    #
    class GetFleetResponse < Struct.new(
      :fleet_id,
      :farm_id,
      :display_name,
      :description,
      :status,
      :auto_scaling_status,
      :target_worker_count,
      :worker_count,
      :min_worker_count,
      :max_worker_count,
      :configuration,
      :capabilities,
      :role_arn,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # The error for the job entity.
    #
    # @note GetJobEntityError is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of GetJobEntityError corresponding to the set member.
    #
    # @!attribute [rw] job_details
    #   The job details for the failed job entity.
    #   @return [Types::JobDetailsError]
    #
    # @!attribute [rw] job_attachment_details
    #   The job attachment details for the failed job entity.
    #   @return [Types::JobAttachmentDetailsError]
    #
    # @!attribute [rw] step_details
    #   The step details for the failed job entity.
    #   @return [Types::StepDetailsError]
    #
    # @!attribute [rw] environment_details
    #   The environment details for the failed job entity.
    #   @return [Types::EnvironmentDetailsError]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetJobEntityError AWS API Documentation
    #
    class GetJobEntityError < Struct.new(
      :job_details,
      :job_attachment_details,
      :step_details,
      :environment_details,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class JobDetails < GetJobEntityError; end
      class JobAttachmentDetails < GetJobEntityError; end
      class StepDetails < GetJobEntityError; end
      class EnvironmentDetails < GetJobEntityError; end
      class Unknown < GetJobEntityError; end
    end

    # @!attribute [rw] farm_id
    #   The farm ID of the farm in the job.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID associated with the job.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The job ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetJobRequest AWS API Documentation
    #
    class GetJobRequest < Struct.new(
      :farm_id,
      :queue_id,
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The job ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the job.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_status
    #   The life cycle status for the job.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_status_message
    #   A message that communicates the status of the life cycle for the
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The job priority.
    #   @return [Integer]
    #
    # @!attribute [rw] created_at
    #   The date and time the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user or system that created this resource.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time the resource was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The user or system that updated this resource.
    #   @return [String]
    #
    # @!attribute [rw] started_at
    #   The date and time the resource started running.
    #   @return [Time]
    #
    # @!attribute [rw] ended_at
    #   The date and time the resource ended running.
    #   @return [Time]
    #
    # @!attribute [rw] task_run_status
    #   The task run status for the job.
    #   @return [String]
    #
    # @!attribute [rw] target_task_run_status
    #   The task status with which the job started.
    #   @return [String]
    #
    # @!attribute [rw] task_run_status_counts
    #   The number of tasks running on the job.
    #   @return [Hash<String,Integer>]
    #
    # @!attribute [rw] storage_profile_id
    #   The storage profile ID associated with the job.
    #   @return [String]
    #
    # @!attribute [rw] max_failed_tasks_count
    #   The number of task failures before the job stops running and is
    #   marked as `FAILED`.
    #   @return [Integer]
    #
    # @!attribute [rw] max_retries_per_task
    #   The maximum number of retries per failed tasks.
    #   @return [Integer]
    #
    # @!attribute [rw] parameters
    #   The parameters for the job.
    #   @return [Hash<String,Types::JobParameter>]
    #
    # @!attribute [rw] attachments
    #   The attachments for the job.
    #   @return [Types::Attachments]
    #
    # @!attribute [rw] description
    #   The description of the job.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @!attribute [rw] max_worker_count
    #   The maximum number of worker hosts that can concurrently process a
    #   job. When the `maxWorkerCount` is reached, no more workers will be
    #   assigned to process the job, even if the fleets assigned to the
    #   job's queue has available workers.
    #
    #   If you don't set the `maxWorkerCount` when you create a job, this
    #   value is not returned in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] source_job_id
    #   The job ID for the source job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetJobResponse AWS API Documentation
    #
    class GetJobResponse < Struct.new(
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
      :storage_profile_id,
      :max_failed_tasks_count,
      :max_retries_per_task,
      :parameters,
      :attachments,
      :description,
      :max_worker_count,
      :source_job_id)
      SENSITIVE = [:parameters, :description]
      include Aws::Structure
    end

    # @!attribute [rw] license_endpoint_id
    #   The license endpoint ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetLicenseEndpointRequest AWS API Documentation
    #
    class GetLicenseEndpointRequest < Struct.new(
      :license_endpoint_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] license_endpoint_id
    #   The license endpoint ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the license endpoint.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message of the license endpoint.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The VCP(virtual private cloud) ID associated with the license
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] dns_name
    #   The DNS name.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The subnet IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   The security group IDs for the license endpoint.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetLicenseEndpointResponse AWS API Documentation
    #
    class GetLicenseEndpointResponse < Struct.new(
      :license_endpoint_id,
      :status,
      :status_message,
      :vpc_id,
      :dns_name,
      :subnet_ids,
      :security_group_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The unique identifier of the farm that contains the limit.
    #   @return [String]
    #
    # @!attribute [rw] limit_id
    #   The unique identifier of the limit to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetLimitRequest AWS API Documentation
    #
    class GetLimitRequest < Struct.new(
      :farm_id,
      :limit_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] display_name
    #   The display name of the limit.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @!attribute [rw] amount_requirement_name
    #   The value that you specify as the `name` in the `amounts` field of
    #   the `hostRequirements` in a step of a job template to declare the
    #   limit requirement.
    #   @return [String]
    #
    # @!attribute [rw] max_count
    #   The maximum number of resources constrained by this limit. When all
    #   of the resources are in use, steps that require the limit won't be
    #   scheduled until the resource is available.
    #
    #   The `maxValue` must not be 0. If the value is -1, there is no
    #   restriction on the number of resources that can be acquired for this
    #   limit.
    #   @return [Integer]
    #
    # @!attribute [rw] created_at
    #   The Unix timestamp of the date and time that the limit was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user identifier of the person that created the limit.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The Unix timestamp of the date and time that the limit was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The user identifier of the person that last updated the limit.
    #   @return [String]
    #
    # @!attribute [rw] farm_id
    #   The unique identifier of the farm that contains the limit.
    #   @return [String]
    #
    # @!attribute [rw] limit_id
    #   The unique identifier of the limit.
    #   @return [String]
    #
    # @!attribute [rw] current_count
    #   The number of resources from the limit that are being used by jobs.
    #   The result is delayed and may not be the count at the time that you
    #   called the operation.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   The description of the limit that helps identify what the limit is
    #   used for.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetLimitResponse AWS API Documentation
    #
    class GetLimitResponse < Struct.new(
      :display_name,
      :amount_requirement_name,
      :max_count,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      :farm_id,
      :limit_id,
      :current_count,
      :description)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] monitor_id
    #   The unique identifier for the monitor. This ID is returned by the
    #   `CreateMonitor` operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetMonitorRequest AWS API Documentation
    #
    class GetMonitorRequest < Struct.new(
      :monitor_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitor_id
    #   The unique identifier for the monitor.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name used to identify the monitor on the Deadline Cloud console.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @!attribute [rw] subdomain
    #   The subdomain used for the monitor URL. The full URL of the monitor
    #   is subdomain.Region.deadlinecloud.amazonaws.com.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The complete URL of the monitor. The full URL of the monitor is
    #   subdomain.Region.deadlinecloud.amazonaws.com.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role for the monitor.
    #   Users of the monitor use this role to access Deadline Cloud
    #   resources.
    #   @return [String]
    #
    # @!attribute [rw] identity_center_instance_arn
    #   The Amazon Resource Name (ARN) of the IAM Identity Center instance
    #   responsible for authenticating monitor users.
    #   @return [String]
    #
    # @!attribute [rw] identity_center_application_arn
    #   The Amazon Resource Name (ARN) that the IAM Identity Center assigned
    #   to the monitor when it was created.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The UNIX timestamp of the date and time that the monitor was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user name of the person that created the monitor.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The UNIX timestamp of the last date and time that the monitor was
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The user name of the person that last updated the monitor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetMonitorResponse AWS API Documentation
    #
    class GetMonitorResponse < Struct.new(
      :monitor_id,
      :display_name,
      :subdomain,
      :url,
      :role_arn,
      :identity_center_instance_arn,
      :identity_center_application_arn,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID for the queue environment.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID for the queue environment.
    #   @return [String]
    #
    # @!attribute [rw] queue_environment_id
    #   The queue environment ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetQueueEnvironmentRequest AWS API Documentation
    #
    class GetQueueEnvironmentRequest < Struct.new(
      :farm_id,
      :queue_id,
      :queue_environment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] queue_environment_id
    #   The queue environment ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the queue environment.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority of the queue environment.
    #   @return [Integer]
    #
    # @!attribute [rw] template_type
    #   The type of template for the queue environment.
    #   @return [String]
    #
    # @!attribute [rw] template
    #   The template for the queue environment.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user or system that created this resource.&gt;
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time the resource was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The user or system that updated this resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetQueueEnvironmentResponse AWS API Documentation
    #
    class GetQueueEnvironmentResponse < Struct.new(
      :queue_environment_id,
      :name,
      :priority,
      :template_type,
      :template,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by)
      SENSITIVE = [:template]
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID of the farm that contains the queue-fleet association.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID for the queue-fleet association.
    #   @return [String]
    #
    # @!attribute [rw] fleet_id
    #   The fleet ID for the queue-fleet association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetQueueFleetAssociationRequest AWS API Documentation
    #
    class GetQueueFleetAssociationRequest < Struct.new(
      :farm_id,
      :queue_id,
      :fleet_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] queue_id
    #   The queue ID for the queue-fleet association.
    #   @return [String]
    #
    # @!attribute [rw] fleet_id
    #   The fleet ID for the queue-fleet association.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the queue-fleet association.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user or system that created this resource.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time the resource was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The user or system that updated this resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetQueueFleetAssociationResponse AWS API Documentation
    #
    class GetQueueFleetAssociationResponse < Struct.new(
      :queue_id,
      :fleet_id,
      :status,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The unique identifier of the farm that contains the associated queue
    #   and limit.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The unique identifier of the queue associated with the limit.
    #   @return [String]
    #
    # @!attribute [rw] limit_id
    #   The unique identifier of the limit associated with the queue.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetQueueLimitAssociationRequest AWS API Documentation
    #
    class GetQueueLimitAssociationRequest < Struct.new(
      :farm_id,
      :queue_id,
      :limit_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   The Unix timestamp of the date and time that the association was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user identifier of the person that created the association.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The Unix timestamp of the date and time that the association was
    #   last updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The user identifier of the person that last updated the association.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The unique identifier of the queue associated with the limit.
    #   @return [String]
    #
    # @!attribute [rw] limit_id
    #   The unique identifier of the limit associated with the queue.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the limit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetQueueLimitAssociationResponse AWS API Documentation
    #
    class GetQueueLimitAssociationResponse < Struct.new(
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      :queue_id,
      :limit_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID of the farm in the queue.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID for the queue to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetQueueRequest AWS API Documentation
    #
    class GetQueueRequest < Struct.new(
      :farm_id,
      :queue_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] queue_id
    #   The queue ID.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the queue.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the queue.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @!attribute [rw] farm_id
    #   The farm ID for the queue.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the queue.
    #
    #   * `ACTIVE`–The queue is active.
    #
    #   * `SCHEDULING`–The queue is scheduling.
    #
    #   * `SCHEDULING_BLOCKED`–The queue scheduling is blocked. See the
    #     provided reason.
    #   @return [String]
    #
    # @!attribute [rw] default_budget_action
    #   The default action taken on a queue if a budget wasn't configured.
    #   @return [String]
    #
    # @!attribute [rw] blocked_reason
    #   The reason the queue was blocked.
    #   @return [String]
    #
    # @!attribute [rw] job_attachment_settings
    #   The job attachment settings for the queue.
    #   @return [Types::JobAttachmentSettings]
    #
    # @!attribute [rw] role_arn
    #   The IAM role ARN.
    #   @return [String]
    #
    # @!attribute [rw] required_file_system_location_names
    #   A list of the required file system location names in the queue.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allowed_storage_profile_ids
    #   The storage profile IDs for the queue.
    #   @return [Array<String>]
    #
    # @!attribute [rw] job_run_as_user
    #   The jobs in the queue ran as this specified POSIX user.
    #   @return [Types::JobRunAsUser]
    #
    # @!attribute [rw] created_at
    #   The date and time the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user or system that created this resource.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time the resource was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The user or system that updated this resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetQueueResponse AWS API Documentation
    #
    class GetQueueResponse < Struct.new(
      :queue_id,
      :display_name,
      :description,
      :farm_id,
      :status,
      :default_budget_action,
      :blocked_reason,
      :job_attachment_settings,
      :role_arn,
      :required_file_system_location_names,
      :allowed_storage_profile_ids,
      :job_run_as_user,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by)
      SENSITIVE = [:description, :required_file_system_location_names]
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID for the session action.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID for the session action.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The job ID for the session.
    #   @return [String]
    #
    # @!attribute [rw] session_action_id
    #   The session action ID for the session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetSessionActionRequest AWS API Documentation
    #
    class GetSessionActionRequest < Struct.new(
      :farm_id,
      :queue_id,
      :job_id,
      :session_action_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_action_id
    #   The session action ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the session action.
    #   @return [String]
    #
    # @!attribute [rw] started_at
    #   The date and time the resource started running.
    #   @return [Time]
    #
    # @!attribute [rw] ended_at
    #   The date and time the resource ended running.
    #   @return [Time]
    #
    # @!attribute [rw] worker_updated_at
    #   The Linux timestamp of the date and time the session action was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] progress_percent
    #   The percentage completed for a session action.
    #   @return [Float]
    #
    # @!attribute [rw] session_id
    #   The session ID for the session action.
    #   @return [String]
    #
    # @!attribute [rw] process_exit_code
    #   The exit code to exit the session.
    #   @return [Integer]
    #
    # @!attribute [rw] progress_message
    #   The message that communicates the progress of the session action.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The session action definition.
    #   @return [Types::SessionActionDefinition]
    #
    # @!attribute [rw] acquired_limits
    #   The limits and their amounts acquired during a session action. If no
    #   limits were acquired during the session, this field isn't returned.
    #   @return [Array<Types::AcquiredLimit>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetSessionActionResponse AWS API Documentation
    #
    class GetSessionActionResponse < Struct.new(
      :session_action_id,
      :status,
      :started_at,
      :ended_at,
      :worker_updated_at,
      :progress_percent,
      :session_id,
      :process_exit_code,
      :progress_message,
      :definition,
      :acquired_limits)
      SENSITIVE = [:progress_message]
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID for the session.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID for the session.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The job ID for the session.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The session ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetSessionRequest AWS API Documentation
    #
    class GetSessionRequest < Struct.new(
      :farm_id,
      :queue_id,
      :job_id,
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   The session ID.
    #   @return [String]
    #
    # @!attribute [rw] fleet_id
    #   The fleet ID for the session.
    #   @return [String]
    #
    # @!attribute [rw] worker_id
    #   The worker ID for the session.
    #   @return [String]
    #
    # @!attribute [rw] started_at
    #   The date and time the resource started running.
    #   @return [Time]
    #
    # @!attribute [rw] log
    #   The session log.
    #   @return [Types::LogConfiguration]
    #
    # @!attribute [rw] lifecycle_status
    #   The life cycle status of the session.
    #   @return [String]
    #
    # @!attribute [rw] ended_at
    #   The date and time the resource ended running.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the resource was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The user or system that updated this resource.
    #   @return [String]
    #
    # @!attribute [rw] target_lifecycle_status
    #   The life cycle status with which the session started.
    #   @return [String]
    #
    # @!attribute [rw] host_properties
    #   Provides the Amazon EC2 properties of the host.
    #   @return [Types::HostPropertiesResponse]
    #
    # @!attribute [rw] worker_log
    #   The worker log for the session.
    #   @return [Types::LogConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetSessionResponse AWS API Documentation
    #
    class GetSessionResponse < Struct.new(
      :session_id,
      :fleet_id,
      :worker_id,
      :started_at,
      :log,
      :lifecycle_status,
      :ended_at,
      :updated_at,
      :updated_by,
      :target_lifecycle_status,
      :host_properties,
      :worker_log)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The identifier of the farm to include in the statistics. This should
    #   be the same as the farm ID used in the call to the
    #   `StartSessionsStatisticsAggregation` operation.
    #   @return [String]
    #
    # @!attribute [rw] aggregation_id
    #   The identifier returned by the `StartSessionsStatisticsAggregation`
    #   operation that identifies the aggregated statistics.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetSessionsStatisticsAggregationRequest AWS API Documentation
    #
    class GetSessionsStatisticsAggregationRequest < Struct.new(
      :farm_id,
      :aggregation_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] statistics
    #   The statistics for the specified fleets or queues.
    #   @return [Array<Types::Statistics>]
    #
    # @!attribute [rw] next_token
    #   If Deadline Cloud returns `nextToken`, then there are more results
    #   available. The value of `nextToken` is a unique pagination token for
    #   each page. To retrieve the next page, call the operation again using
    #   the returned token. Keep all other arguments unchanged. If no
    #   results remain, then `nextToken` is set to `null`. Each pagination
    #   token expires after 24 hours. If you provide a token that isn't
    #   valid, then you receive an HTTP 400 `ValidationException` error.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the aggregated results. An aggregation may fail or
    #   time out if the results are too large. If this happens, you can call
    #   the `StartSessionsStatisticsAggregation` operation after you reduce
    #   the aggregation time frame, reduce the number of queues or fleets in
    #   the aggregation, or increase the period length.
    #
    #   If you call the `StartSessionsStatisticsAggregation ` operation when
    #   the status is `IN_PROGRESS`, you will receive a
    #   `ThrottlingException`.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A message that describes the status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetSessionsStatisticsAggregationResponse AWS API Documentation
    #
    class GetSessionsStatisticsAggregationResponse < Struct.new(
      :statistics,
      :next_token,
      :status,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID for the step.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID for the step.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The job ID for the step.
    #   @return [String]
    #
    # @!attribute [rw] step_id
    #   The step ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetStepRequest AWS API Documentation
    #
    class GetStepRequest < Struct.new(
      :farm_id,
      :queue_id,
      :job_id,
      :step_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] step_id
    #   The step ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the step.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_status
    #   The life cycle status of the step.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_status_message
    #   A message that describes the lifecycle status of the step.
    #   @return [String]
    #
    # @!attribute [rw] task_run_status
    #   The task run status for the job.
    #   @return [String]
    #
    # @!attribute [rw] task_run_status_counts
    #   The number of tasks running on the job.
    #   @return [Hash<String,Integer>]
    #
    # @!attribute [rw] target_task_run_status
    #   The task status with which the job started.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user or system that created this resource.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time the resource was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The user or system that updated this resource.
    #   @return [String]
    #
    # @!attribute [rw] started_at
    #   The date and time the resource started running.
    #   @return [Time]
    #
    # @!attribute [rw] ended_at
    #   The date and time the resource ended running.
    #   @return [Time]
    #
    # @!attribute [rw] dependency_counts
    #   The number of dependencies in the step.
    #   @return [Types::DependencyCounts]
    #
    # @!attribute [rw] required_capabilities
    #   The required capabilities of the step.
    #   @return [Types::StepRequiredCapabilities]
    #
    # @!attribute [rw] parameter_space
    #   A list of step parameters and the combination expression for the
    #   step.
    #   @return [Types::ParameterSpace]
    #
    # @!attribute [rw] description
    #   The description of the step.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetStepResponse AWS API Documentation
    #
    class GetStepResponse < Struct.new(
      :step_id,
      :name,
      :lifecycle_status,
      :lifecycle_status_message,
      :task_run_status,
      :task_run_status_counts,
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
      :description)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID for the queue in storage profile.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID the queue in the storage profile.
    #   @return [String]
    #
    # @!attribute [rw] storage_profile_id
    #   The storage profile ID for the storage profile in the queue.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetStorageProfileForQueueRequest AWS API Documentation
    #
    class GetStorageProfileForQueueRequest < Struct.new(
      :farm_id,
      :queue_id,
      :storage_profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] storage_profile_id
    #   The storage profile ID.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the storage profile connected to a queue.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @!attribute [rw] os_family
    #   The operating system of the storage profile in the queue.
    #   @return [String]
    #
    # @!attribute [rw] file_system_locations
    #   The location of the files for the storage profile within the queue.
    #   @return [Array<Types::FileSystemLocation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetStorageProfileForQueueResponse AWS API Documentation
    #
    class GetStorageProfileForQueueResponse < Struct.new(
      :storage_profile_id,
      :display_name,
      :os_family,
      :file_system_locations)
      SENSITIVE = [:file_system_locations]
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID for the storage profile.
    #   @return [String]
    #
    # @!attribute [rw] storage_profile_id
    #   The storage profile ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetStorageProfileRequest AWS API Documentation
    #
    class GetStorageProfileRequest < Struct.new(
      :farm_id,
      :storage_profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] storage_profile_id
    #   The storage profile ID.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the storage profile.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @!attribute [rw] os_family
    #   The operating system (OS) for the storage profile.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user or system that created this resource.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time the resource was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The user or system that updated this resource.
    #   @return [String]
    #
    # @!attribute [rw] file_system_locations
    #   The location of the files for the storage profile.
    #   @return [Array<Types::FileSystemLocation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetStorageProfileResponse AWS API Documentation
    #
    class GetStorageProfileResponse < Struct.new(
      :storage_profile_id,
      :display_name,
      :os_family,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      :file_system_locations)
      SENSITIVE = [:file_system_locations]
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID of the farm connected to the task.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID for the queue connected to the task.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The job ID of the job connected to the task.
    #   @return [String]
    #
    # @!attribute [rw] step_id
    #   The step ID for the step connected to the task.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   The task ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetTaskRequest AWS API Documentation
    #
    class GetTaskRequest < Struct.new(
      :farm_id,
      :queue_id,
      :job_id,
      :step_id,
      :task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_id
    #   The task ID.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user or system that created this resource.
    #   @return [String]
    #
    # @!attribute [rw] run_status
    #   The run status for the task.
    #   @return [String]
    #
    # @!attribute [rw] target_run_status
    #   The run status with which to start the task.
    #   @return [String]
    #
    # @!attribute [rw] failure_retry_count
    #   The number of times that the task failed and was retried.
    #   @return [Integer]
    #
    # @!attribute [rw] parameters
    #   The parameters for the task.
    #   @return [Hash<String,Types::TaskParameterValue>]
    #
    # @!attribute [rw] started_at
    #   The date and time the resource started running.
    #   @return [Time]
    #
    # @!attribute [rw] ended_at
    #   The date and time the resource ended running.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the resource was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The user or system that updated this resource.
    #   @return [String]
    #
    # @!attribute [rw] latest_session_action_id
    #   The latest session ID for the task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetTaskResponse AWS API Documentation
    #
    class GetTaskResponse < Struct.new(
      :task_id,
      :created_at,
      :created_by,
      :run_status,
      :target_run_status,
      :failure_retry_count,
      :parameters,
      :started_at,
      :ended_at,
      :updated_at,
      :updated_by,
      :latest_session_action_id)
      SENSITIVE = [:parameters]
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID for the worker.
    #   @return [String]
    #
    # @!attribute [rw] fleet_id
    #   The fleet ID of the worker.
    #   @return [String]
    #
    # @!attribute [rw] worker_id
    #   The worker ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetWorkerRequest AWS API Documentation
    #
    class GetWorkerRequest < Struct.new(
      :farm_id,
      :fleet_id,
      :worker_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID.
    #   @return [String]
    #
    # @!attribute [rw] fleet_id
    #   The fleet ID.
    #   @return [String]
    #
    # @!attribute [rw] worker_id
    #   The worker ID.
    #   @return [String]
    #
    # @!attribute [rw] host_properties
    #   The host properties for the worker.
    #   @return [Types::HostPropertiesResponse]
    #
    # @!attribute [rw] status
    #   The status of the worker.
    #   @return [String]
    #
    # @!attribute [rw] log
    #   The logs for the associated worker.
    #   @return [Types::LogConfiguration]
    #
    # @!attribute [rw] created_at
    #   The date and time the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user or system that created this resource.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time the resource was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The user or system that updated this resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetWorkerResponse AWS API Documentation
    #
    class GetWorkerResponse < Struct.new(
      :farm_id,
      :fleet_id,
      :worker_id,
      :host_properties,
      :status,
      :log,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # The host property details.
    #
    # @!attribute [rw] ip_addresses
    #   The IP address of the host.
    #   @return [Types::IpAddresses]
    #
    # @!attribute [rw] host_name
    #   The host name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/HostPropertiesRequest AWS API Documentation
    #
    class HostPropertiesRequest < Struct.new(
      :ip_addresses,
      :host_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The host property details.
    #
    # @!attribute [rw] ip_addresses
    #   The IP address of the host.
    #   @return [Types::IpAddresses]
    #
    # @!attribute [rw] host_name
    #   The host name.
    #   @return [String]
    #
    # @!attribute [rw] ec2_instance_arn
    #   The ARN of the host EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] ec2_instance_type
    #   The instance type of the host EC2 instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/HostPropertiesResponse AWS API Documentation
    #
    class HostPropertiesResponse < Struct.new(
      :ip_addresses,
      :host_name,
      :ec2_instance_arn,
      :ec2_instance_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Deadline Cloud can't process your request right now. Try again later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds a client should wait before retrying the
    #   request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/InternalServerErrorException AWS API Documentation
    #
    class InternalServerErrorException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # The IP addresses for a host.
    #
    # @!attribute [rw] ip_v4_addresses
    #   The IpV4 address of the network.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ip_v6_addresses
    #   The IpV6 address for the network and node component.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/IpAddresses AWS API Documentation
    #
    class IpAddresses < Struct.new(
      :ip_v4_addresses,
      :ip_v6_addresses)
      SENSITIVE = []
      include Aws::Structure
    end

    # The job attachments.
    #
    # @!attribute [rw] job_id
    #   The job ID.
    #   @return [String]
    #
    # @!attribute [rw] attachments
    #   The job attachments.
    #   @return [Types::Attachments]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/JobAttachmentDetailsEntity AWS API Documentation
    #
    class JobAttachmentDetailsEntity < Struct.new(
      :job_id,
      :attachments)
      SENSITIVE = []
      include Aws::Structure
    end

    # The error details for job attachments.
    #
    # @!attribute [rw] job_id
    #   The job ID.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The error message detailing the error's cause.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/JobAttachmentDetailsError AWS API Documentation
    #
    class JobAttachmentDetailsError < Struct.new(
      :job_id,
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifier details for job attachments.
    #
    # @!attribute [rw] job_id
    #   The job ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/JobAttachmentDetailsIdentifiers AWS API Documentation
    #
    class JobAttachmentDetailsIdentifiers < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The job attachment settings. These are the Amazon S3 bucket name and
    # the Amazon S3 prefix.
    #
    # @!attribute [rw] s3_bucket_name
    #   The Amazon S3 bucket name.
    #   @return [String]
    #
    # @!attribute [rw] root_prefix
    #   The root prefix.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/JobAttachmentSettings AWS API Documentation
    #
    class JobAttachmentSettings < Struct.new(
      :s3_bucket_name,
      :root_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # The job details for a specific job.
    #
    # @!attribute [rw] job_id
    #   The job ID.
    #   @return [String]
    #
    # @!attribute [rw] job_attachment_settings
    #   The job attachment settings.
    #   @return [Types::JobAttachmentSettings]
    #
    # @!attribute [rw] job_run_as_user
    #   The user name and group that the job uses when run.
    #   @return [Types::JobRunAsUser]
    #
    # @!attribute [rw] log_group_name
    #   The log group name.
    #   @return [String]
    #
    # @!attribute [rw] queue_role_arn
    #   The queue role ARN.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters.
    #   @return [Hash<String,Types::JobParameter>]
    #
    # @!attribute [rw] schema_version
    #   The schema version.
    #   @return [String]
    #
    # @!attribute [rw] path_mapping_rules
    #   The path mapping rules.
    #   @return [Array<Types::PathMappingRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/JobDetailsEntity AWS API Documentation
    #
    class JobDetailsEntity < Struct.new(
      :job_id,
      :job_attachment_settings,
      :job_run_as_user,
      :log_group_name,
      :queue_role_arn,
      :parameters,
      :schema_version,
      :path_mapping_rules)
      SENSITIVE = [:parameters, :path_mapping_rules]
      include Aws::Structure
    end

    # The details of a job error.
    #
    # @!attribute [rw] job_id
    #   The job ID.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The error message detailing the error's cause.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/JobDetailsError AWS API Documentation
    #
    class JobDetailsError < Struct.new(
      :job_id,
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The identifiers for a job.
    #
    # @!attribute [rw] job_id
    #   The job ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/JobDetailsIdentifiers AWS API Documentation
    #
    class JobDetailsIdentifiers < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a job entity.
    #
    # @note JobEntity is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of JobEntity corresponding to the set member.
    #
    # @!attribute [rw] job_details
    #   The job details.
    #   @return [Types::JobDetailsEntity]
    #
    # @!attribute [rw] job_attachment_details
    #   The job attachment details.
    #   @return [Types::JobAttachmentDetailsEntity]
    #
    # @!attribute [rw] step_details
    #   The step details.
    #   @return [Types::StepDetailsEntity]
    #
    # @!attribute [rw] environment_details
    #   The environment details for the job entity.
    #   @return [Types::EnvironmentDetailsEntity]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/JobEntity AWS API Documentation
    #
    class JobEntity < Struct.new(
      :job_details,
      :job_attachment_details,
      :step_details,
      :environment_details,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class JobDetails < JobEntity; end
      class JobAttachmentDetails < JobEntity; end
      class StepDetails < JobEntity; end
      class EnvironmentDetails < JobEntity; end
      class Unknown < JobEntity; end
    end

    # The details of a job entity identifier.
    #
    # @note JobEntityIdentifiersUnion is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] job_details
    #   The job details.
    #   @return [Types::JobDetailsIdentifiers]
    #
    # @!attribute [rw] job_attachment_details
    #   The job attachment details.
    #   @return [Types::JobAttachmentDetailsIdentifiers]
    #
    # @!attribute [rw] step_details
    #   The step details.
    #   @return [Types::StepDetailsIdentifiers]
    #
    # @!attribute [rw] environment_details
    #   The environment details.
    #   @return [Types::EnvironmentDetailsIdentifiers]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/JobEntityIdentifiersUnion AWS API Documentation
    #
    class JobEntityIdentifiersUnion < Struct.new(
      :job_details,
      :job_attachment_details,
      :step_details,
      :environment_details,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class JobDetails < JobEntityIdentifiersUnion; end
      class JobAttachmentDetails < JobEntityIdentifiersUnion; end
      class StepDetails < JobEntityIdentifiersUnion; end
      class EnvironmentDetails < JobEntityIdentifiersUnion; end
      class Unknown < JobEntityIdentifiersUnion; end
    end

    # The details for a job member.
    #
    # @!attribute [rw] farm_id
    #   The farm ID.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The job ID.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   The principal ID of the job member.
    #   @return [String]
    #
    # @!attribute [rw] principal_type
    #   The principal type of the job member.
    #   @return [String]
    #
    # @!attribute [rw] identity_store_id
    #   The identity store ID.
    #   @return [String]
    #
    # @!attribute [rw] membership_level
    #   The job member's membership level.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/JobMember AWS API Documentation
    #
    class JobMember < Struct.new(
      :farm_id,
      :queue_id,
      :job_id,
      :principal_id,
      :principal_type,
      :identity_store_id,
      :membership_level)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of job parameters.
    #
    # @note JobParameter is a union - when making an API calls you must set exactly one of the members.
    #
    # @note JobParameter is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of JobParameter corresponding to the set member.
    #
    # @!attribute [rw] int
    #   A signed integer represented as a string.
    #   @return [String]
    #
    # @!attribute [rw] float
    #   A double precision IEEE-754 floating point number represented as a
    #   string.
    #   @return [String]
    #
    # @!attribute [rw] string
    #   A UTF-8 string.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   A file system path represented as a string.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/JobParameter AWS API Documentation
    #
    class JobParameter < Struct.new(
      :int,
      :float,
      :string,
      :path,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Int < JobParameter; end
      class Float < JobParameter; end
      class String < JobParameter; end
      class Path < JobParameter; end
      class Unknown < JobParameter; end
    end

    # Identifies the user for a job.
    #
    # @!attribute [rw] posix
    #   The user and group that the jobs in the queue run as.
    #   @return [Types::PosixUser]
    #
    # @!attribute [rw] windows
    #   Identifies a Microsoft Windows user.
    #   @return [Types::WindowsUser]
    #
    # @!attribute [rw] run_as
    #   Specifies whether the job should run using the queue's system user
    #   or if the job should run using the worker agent system user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/JobRunAsUser AWS API Documentation
    #
    class JobRunAsUser < Struct.new(
      :posix,
      :windows,
      :run_as)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a job search.
    #
    # @!attribute [rw] job_id
    #   The job ID.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The job name.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_status
    #   The life cycle status.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_status_message
    #   The life cycle status message.
    #   @return [String]
    #
    # @!attribute [rw] task_run_status
    #   The task run status for the job.
    #
    #   * `PENDING`–pending and waiting for resources.
    #
    #   * `READY`–ready to be processed.
    #
    #   * `ASSIGNED`–assigned and will run next on a worker.
    #
    #   * `SCHEDULED`–scheduled to be run on a worker.
    #
    #   * `INTERRUPTING`–being interrupted.
    #
    #   * `RUNNING`–running on a worker.
    #
    #   * `SUSPENDED`–the task is suspended.
    #
    #   * `CANCELED`–the task has been canceled.
    #
    #   * `FAILED`–the task has failed.
    #
    #   * `SUCCEEDED`–the task has succeeded.
    #   @return [String]
    #
    # @!attribute [rw] target_task_run_status
    #   The task status to start with on the job.
    #   @return [String]
    #
    # @!attribute [rw] task_run_status_counts
    #   The number of tasks running on the job.
    #   @return [Hash<String,Integer>]
    #
    # @!attribute [rw] priority
    #   The job priority.
    #   @return [Integer]
    #
    # @!attribute [rw] max_failed_tasks_count
    #   The number of task failures before the job stops running and is
    #   marked as `FAILED`.
    #   @return [Integer]
    #
    # @!attribute [rw] max_retries_per_task
    #   The maximum number of retries for a job.
    #   @return [Integer]
    #
    # @!attribute [rw] created_by
    #   The user or system that created this resource.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] ended_at
    #   The date and time the resource ended running.
    #   @return [Time]
    #
    # @!attribute [rw] started_at
    #   The date and time the resource started running.
    #   @return [Time]
    #
    # @!attribute [rw] job_parameters
    #   The job parameters.
    #   @return [Hash<String,Types::JobParameter>]
    #
    # @!attribute [rw] max_worker_count
    #   The maximum number of worker hosts that can concurrently process a
    #   job. When the `maxWorkerCount` is reached, no more workers will be
    #   assigned to process the job, even if the fleets assigned to the
    #   job's queue has available workers.
    #
    #   You can't set the `maxWorkerCount` to 0. If you set it to -1, there
    #   is no maximum number of workers.
    #
    #   If you don't specify the `maxWorkerCount`, the default is -1.
    #   @return [Integer]
    #
    # @!attribute [rw] source_job_id
    #   The job ID for the source job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/JobSearchSummary AWS API Documentation
    #
    class JobSearchSummary < Struct.new(
      :job_id,
      :queue_id,
      :name,
      :lifecycle_status,
      :lifecycle_status_message,
      :task_run_status,
      :target_task_run_status,
      :task_run_status_counts,
      :priority,
      :max_failed_tasks_count,
      :max_retries_per_task,
      :created_by,
      :created_at,
      :ended_at,
      :started_at,
      :job_parameters,
      :max_worker_count,
      :source_job_id)
      SENSITIVE = [:job_parameters]
      include Aws::Structure
    end

    # A summary of job details.
    #
    # @!attribute [rw] job_id
    #   The job ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The job name.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_status
    #   The life cycle status.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_status_message
    #   The life cycle status message.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The job priority.
    #   @return [Integer]
    #
    # @!attribute [rw] created_at
    #   The date and time the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user or system that created this resource.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time the resource was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The user or system that updated this resource.
    #   @return [String]
    #
    # @!attribute [rw] started_at
    #   The date and time the resource started running.
    #   @return [Time]
    #
    # @!attribute [rw] ended_at
    #   The date and time the resource ended running.
    #   @return [Time]
    #
    # @!attribute [rw] task_run_status
    #   The task run status for the job.
    #
    #   * `PENDING`–pending and waiting for resources.
    #
    #   * `READY`–ready to be processed.
    #
    #   * `ASSIGNED`–assigned and will run next on a worker.
    #
    #   * `SCHEDULED`–scheduled to be run on a worker.
    #
    #   * `INTERRUPTING`–being interrupted.
    #
    #   * `RUNNING`–running on a worker.
    #
    #   * `SUSPENDED`–the task is suspended.
    #
    #   * `CANCELED`–the task has been canceled.
    #
    #   * `FAILED`–the task has failed.
    #
    #   * `SUCCEEDED`–the task has succeeded.
    #   @return [String]
    #
    # @!attribute [rw] target_task_run_status
    #   The task status to start with on the job.
    #   @return [String]
    #
    # @!attribute [rw] task_run_status_counts
    #   The number of tasks running on the job.
    #   @return [Hash<String,Integer>]
    #
    # @!attribute [rw] max_failed_tasks_count
    #   The number of task failures before the job stops running and is
    #   marked as `FAILED`.
    #   @return [Integer]
    #
    # @!attribute [rw] max_retries_per_task
    #   The maximum number of retries for a job.
    #   @return [Integer]
    #
    # @!attribute [rw] max_worker_count
    #   The maximum number of worker hosts that can concurrently process a
    #   job. When the `maxWorkerCount` is reached, no more workers will be
    #   assigned to process the job, even if the fleets assigned to the
    #   job's queue has available workers.
    #
    #   You can't set the `maxWorkerCount` to 0. If you set it to -1, there
    #   is no maximum number of workers.
    #
    #   If you don't specify the `maxWorkerCount`, the default is -1.
    #   @return [Integer]
    #
    # @!attribute [rw] source_job_id
    #   The job ID for the source job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/JobSummary AWS API Documentation
    #
    class JobSummary < Struct.new(
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
      :max_failed_tasks_count,
      :max_retries_per_task,
      :max_worker_count,
      :source_job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details for a license endpoint.
    #
    # @!attribute [rw] license_endpoint_id
    #   The license endpoint ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the license endpoint.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message of the license endpoint.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The VCP(virtual private cloud) ID associated with the license
    #   endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/LicenseEndpointSummary AWS API Documentation
    #
    class LicenseEndpointSummary < Struct.new(
      :license_endpoint_id,
      :status,
      :status_message,
      :vpc_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a specific limit.
    #
    # @!attribute [rw] display_name
    #   The name of the limit used in lists to identify the limit.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @!attribute [rw] amount_requirement_name
    #   The value that you specify as the `name` in the `amounts` field of
    #   the `hostRequirements` in a step of a job template to declare the
    #   limit requirement.
    #   @return [String]
    #
    # @!attribute [rw] max_count
    #   The maximum number of resources constrained by this limit. When all
    #   of the resources are in use, steps that require the limit won't be
    #   scheduled until the resource is available.
    #
    #   The `maxValue` must not be 0. If the value is -1, there is no
    #   restriction on the number of resources that can be acquired for this
    #   limit.
    #   @return [Integer]
    #
    # @!attribute [rw] created_at
    #   The Unix timestamp of the date and time that the limit was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user identifier of the person that created the limit.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The Unix timestamp of the date and time that the limit was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The user identifier of the person that last updated the limit.
    #   @return [String]
    #
    # @!attribute [rw] farm_id
    #   The unique identifier of the farm that contains the limit.
    #   @return [String]
    #
    # @!attribute [rw] limit_id
    #   The unique identifier of the limit.
    #   @return [String]
    #
    # @!attribute [rw] current_count
    #   The number of resources from the limit that are being used by jobs.
    #   The result is delayed and may not be the count at the time that you
    #   called the operation.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/LimitSummary AWS API Documentation
    #
    class LimitSummary < Struct.new(
      :display_name,
      :amount_requirement_name,
      :max_count,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      :farm_id,
      :limit_id,
      :current_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListAvailableMeteredProductsRequest AWS API Documentation
    #
    class ListAvailableMeteredProductsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] metered_products
    #   The metered products.
    #   @return [Array<Types::MeteredProductSummary>]
    #
    # @!attribute [rw] next_token
    #   If Deadline Cloud returns `nextToken`, then there are more results
    #   available. The value of `nextToken` is a unique pagination token for
    #   each page. To retrieve the next page, call the operation again using
    #   the returned token. Keep all other arguments unchanged. If no
    #   results remain, then `nextToken` is set to `null`. Each pagination
    #   token expires after 24 hours. If you provide a token that isn't
    #   valid, then you receive an HTTP 400 `ValidationException` error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListAvailableMeteredProductsResponse AWS API Documentation
    #
    class ListAvailableMeteredProductsResponse < Struct.new(
      :metered_products,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #   @return [String]
    #
    # @!attribute [rw] farm_id
    #   The farm ID associated with the budgets.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status to list for the budgets.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListBudgetsRequest AWS API Documentation
    #
    class ListBudgetsRequest < Struct.new(
      :next_token,
      :farm_id,
      :max_results,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If Deadline Cloud returns `nextToken`, then there are more results
    #   available. The value of `nextToken` is a unique pagination token for
    #   each page. To retrieve the next page, call the operation again using
    #   the returned token. Keep all other arguments unchanged. If no
    #   results remain, then `nextToken` is set to `null`. Each pagination
    #   token expires after 24 hours. If you provide a token that isn't
    #   valid, then you receive an HTTP 400 `ValidationException` error.
    #   @return [String]
    #
    # @!attribute [rw] budgets
    #   The budgets to include on the list.
    #   @return [Array<Types::BudgetSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListBudgetsResponse AWS API Documentation
    #
    class ListBudgetsResponse < Struct.new(
      :next_token,
      :budgets)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListFarmMembersRequest AWS API Documentation
    #
    class ListFarmMembersRequest < Struct.new(
      :farm_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] members
    #   The members on the list.
    #   @return [Array<Types::FarmMember>]
    #
    # @!attribute [rw] next_token
    #   If Deadline Cloud returns `nextToken`, then there are more results
    #   available. The value of `nextToken` is a unique pagination token for
    #   each page. To retrieve the next page, call the operation again using
    #   the returned token. Keep all other arguments unchanged. If no
    #   results remain, then `nextToken` is set to `null`. Each pagination
    #   token expires after 24 hours. If you provide a token that isn't
    #   valid, then you receive an HTTP 400 `ValidationException` error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListFarmMembersResponse AWS API Documentation
    #
    class ListFarmMembersResponse < Struct.new(
      :members,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   The principal ID of the member to list on the farm.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListFarmsRequest AWS API Documentation
    #
    class ListFarmsRequest < Struct.new(
      :next_token,
      :principal_id,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If Deadline Cloud returns `nextToken`, then there are more results
    #   available. The value of `nextToken` is a unique pagination token for
    #   each page. To retrieve the next page, call the operation again using
    #   the returned token. Keep all other arguments unchanged. If no
    #   results remain, then `nextToken` is set to `null`. Each pagination
    #   token expires after 24 hours. If you provide a token that isn't
    #   valid, then you receive an HTTP 400 `ValidationException` error.
    #   @return [String]
    #
    # @!attribute [rw] farms
    #   Farms on the list.
    #   @return [Array<Types::FarmSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListFarmsResponse AWS API Documentation
    #
    class ListFarmsResponse < Struct.new(
      :next_token,
      :farms)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] fleet_id
    #   The fleet ID to include on the list.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListFleetMembersRequest AWS API Documentation
    #
    class ListFleetMembersRequest < Struct.new(
      :farm_id,
      :fleet_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] members
    #   The members on the list.
    #   @return [Array<Types::FleetMember>]
    #
    # @!attribute [rw] next_token
    #   If Deadline Cloud returns `nextToken`, then there are more results
    #   available. The value of `nextToken` is a unique pagination token for
    #   each page. To retrieve the next page, call the operation again using
    #   the returned token. Keep all other arguments unchanged. If no
    #   results remain, then `nextToken` is set to `null`. Each pagination
    #   token expires after 24 hours. If you provide a token that isn't
    #   valid, then you receive an HTTP 400 `ValidationException` error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListFleetMembersResponse AWS API Documentation
    #
    class ListFleetMembersResponse < Struct.new(
      :members,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID of the fleets.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   The principal ID of the members to include in the fleet.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display names of a list of fleets.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListFleetsRequest AWS API Documentation
    #
    class ListFleetsRequest < Struct.new(
      :farm_id,
      :principal_id,
      :display_name,
      :status,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleets
    #   The fleets on the list.
    #   @return [Array<Types::FleetSummary>]
    #
    # @!attribute [rw] next_token
    #   If Deadline Cloud returns `nextToken`, then there are more results
    #   available. The value of `nextToken` is a unique pagination token for
    #   each page. To retrieve the next page, call the operation again using
    #   the returned token. Keep all other arguments unchanged. If no
    #   results remain, then `nextToken` is set to `null`. Each pagination
    #   token expires after 24 hours. If you provide a token that isn't
    #   valid, then you receive an HTTP 400 `ValidationException` error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListFleetsResponse AWS API Documentation
    #
    class ListFleetsResponse < Struct.new(
      :fleets,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID of the job to list.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID to include on the list.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The job ID to include on the list.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListJobMembersRequest AWS API Documentation
    #
    class ListJobMembersRequest < Struct.new(
      :farm_id,
      :queue_id,
      :job_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] members
    #   The members on the list.
    #   @return [Array<Types::JobMember>]
    #
    # @!attribute [rw] next_token
    #   If Deadline Cloud returns `nextToken`, then there are more results
    #   available. The value of `nextToken` is a unique pagination token for
    #   each page. To retrieve the next page, call the operation again using
    #   the returned token. Keep all other arguments unchanged. If no
    #   results remain, then `nextToken` is set to `null`. Each pagination
    #   token expires after 24 hours. If you provide a token that isn't
    #   valid, then you receive an HTTP 400 `ValidationException` error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListJobMembersResponse AWS API Documentation
    #
    class ListJobMembersResponse < Struct.new(
      :members,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID of the job to list.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The job ID to include on the list.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID to include on the list.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListJobParameterDefinitionsRequest AWS API Documentation
    #
    class ListJobParameterDefinitionsRequest < Struct.new(
      :farm_id,
      :job_id,
      :queue_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_parameter_definitions
    #   Lists parameter definitions of a job.
    #   @return [Array<Hash,Array,String,Numeric,Boolean>]
    #
    # @!attribute [rw] next_token
    #   If Deadline Cloud returns `nextToken`, then there are more results
    #   available. The value of `nextToken` is a unique pagination token for
    #   each page. To retrieve the next page, call the operation again using
    #   the returned token. Keep all other arguments unchanged. If no
    #   results remain, then `nextToken` is set to `null`. Each pagination
    #   token expires after 24 hours. If you provide a token that isn't
    #   valid, then you receive an HTTP 400 `ValidationException` error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListJobParameterDefinitionsResponse AWS API Documentation
    #
    class ListJobParameterDefinitionsResponse < Struct.new(
      :job_parameter_definitions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID for the jobs.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   The principal ID of the members on the jobs.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID for the job.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListJobsRequest AWS API Documentation
    #
    class ListJobsRequest < Struct.new(
      :farm_id,
      :principal_id,
      :queue_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] jobs
    #   The jobs on the list.
    #   @return [Array<Types::JobSummary>]
    #
    # @!attribute [rw] next_token
    #   If Deadline Cloud returns `nextToken`, then there are more results
    #   available. The value of `nextToken` is a unique pagination token for
    #   each page. To retrieve the next page, call the operation again using
    #   the returned token. Keep all other arguments unchanged. If no
    #   results remain, then `nextToken` is set to `null`. Each pagination
    #   token expires after 24 hours. If you provide a token that isn't
    #   valid, then you receive an HTTP 400 `ValidationException` error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListJobsResponse AWS API Documentation
    #
    class ListJobsResponse < Struct.new(
      :jobs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListLicenseEndpointsRequest AWS API Documentation
    #
    class ListLicenseEndpointsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] license_endpoints
    #   The license endpoints.
    #   @return [Array<Types::LicenseEndpointSummary>]
    #
    # @!attribute [rw] next_token
    #   If Deadline Cloud returns `nextToken`, then there are more results
    #   available. The value of `nextToken` is a unique pagination token for
    #   each page. To retrieve the next page, call the operation again using
    #   the returned token. Keep all other arguments unchanged. If no
    #   results remain, then `nextToken` is set to `null`. Each pagination
    #   token expires after 24 hours. If you provide a token that isn't
    #   valid, then you receive an HTTP 400 `ValidationException` error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListLicenseEndpointsResponse AWS API Documentation
    #
    class ListLicenseEndpointsResponse < Struct.new(
      :license_endpoints,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The unique identifier of the farm that contains the limits.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of limits to return in each page of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListLimitsRequest AWS API Documentation
    #
    class ListLimitsRequest < Struct.new(
      :farm_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] limits
    #   A list of limits that the farm contains.
    #   @return [Array<Types::LimitSummary>]
    #
    # @!attribute [rw] next_token
    #   If Deadline Cloud returns `nextToken`, then there are more results
    #   available. The value of `nextToken` is a unique pagination token for
    #   each page. To retrieve the next page, call the operation again using
    #   the returned token. Keep all other arguments unchanged. If no
    #   results remain, then `nextToken` is set to `null`. Each pagination
    #   token expires after 24 hours. If you provide a token that isn't
    #   valid, then you receive an HTTP 400 `ValidationException` error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListLimitsResponse AWS API Documentation
    #
    class ListLimitsResponse < Struct.new(
      :limits,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] license_endpoint_id
    #   The license endpoint ID to include on the list of metered products.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListMeteredProductsRequest AWS API Documentation
    #
    class ListMeteredProductsRequest < Struct.new(
      :license_endpoint_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] metered_products
    #   The metered products to list.
    #   @return [Array<Types::MeteredProductSummary>]
    #
    # @!attribute [rw] next_token
    #   If Deadline Cloud returns `nextToken`, then there are more results
    #   available. The value of `nextToken` is a unique pagination token for
    #   each page. To retrieve the next page, call the operation again using
    #   the returned token. Keep all other arguments unchanged. If no
    #   results remain, then `nextToken` is set to `null`. Each pagination
    #   token expires after 24 hours. If you provide a token that isn't
    #   valid, then you receive an HTTP 400 `ValidationException` error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListMeteredProductsResponse AWS API Documentation
    #
    class ListMeteredProductsResponse < Struct.new(
      :metered_products,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListMonitorsRequest AWS API Documentation
    #
    class ListMonitorsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If Deadline Cloud returns `nextToken`, then there are more results
    #   available. The value of `nextToken` is a unique pagination token for
    #   each page. To retrieve the next page, call the operation again using
    #   the returned token. Keep all other arguments unchanged. If no
    #   results remain, then `nextToken` is set to `null`. Each pagination
    #   token expires after 24 hours. If you provide a token that isn't
    #   valid, then you receive an HTTP 400 `ValidationException` error.
    #   @return [String]
    #
    # @!attribute [rw] monitors
    #   A list of `MonitorSummary` objects that describe your monitors in
    #   the Deadline Cloud.
    #   @return [Array<Types::MonitorSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListMonitorsResponse AWS API Documentation
    #
    class ListMonitorsResponse < Struct.new(
      :next_token,
      :monitors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID for the queue environment list.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID for the queue environment list.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListQueueEnvironmentsRequest AWS API Documentation
    #
    class ListQueueEnvironmentsRequest < Struct.new(
      :farm_id,
      :queue_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environments
    #   The environments to include in the queue environments list.
    #   @return [Array<Types::QueueEnvironmentSummary>]
    #
    # @!attribute [rw] next_token
    #   If Deadline Cloud returns `nextToken`, then there are more results
    #   available. The value of `nextToken` is a unique pagination token for
    #   each page. To retrieve the next page, call the operation again using
    #   the returned token. Keep all other arguments unchanged. If no
    #   results remain, then `nextToken` is set to `null`. Each pagination
    #   token expires after 24 hours. If you provide a token that isn't
    #   valid, then you receive an HTTP 400 `ValidationException` error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListQueueEnvironmentsResponse AWS API Documentation
    #
    class ListQueueEnvironmentsResponse < Struct.new(
      :environments,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID for the queue-fleet association list.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID for the queue-fleet association list.
    #   @return [String]
    #
    # @!attribute [rw] fleet_id
    #   The fleet ID for the queue-fleet association list.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListQueueFleetAssociationsRequest AWS API Documentation
    #
    class ListQueueFleetAssociationsRequest < Struct.new(
      :farm_id,
      :queue_id,
      :fleet_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] queue_fleet_associations
    #   The queue-fleet associations on the list.
    #   @return [Array<Types::QueueFleetAssociationSummary>]
    #
    # @!attribute [rw] next_token
    #   If Deadline Cloud returns `nextToken`, then there are more results
    #   available. The value of `nextToken` is a unique pagination token for
    #   each page. To retrieve the next page, call the operation again using
    #   the returned token. Keep all other arguments unchanged. If no
    #   results remain, then `nextToken` is set to `null`. Each pagination
    #   token expires after 24 hours. If you provide a token that isn't
    #   valid, then you receive an HTTP 400 `ValidationException` error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListQueueFleetAssociationsResponse AWS API Documentation
    #
    class ListQueueFleetAssociationsResponse < Struct.new(
      :queue_fleet_associations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The unique identifier of the farm that contains the limits and
    #   associations.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   Specifies that the operation should return only the queue limit
    #   associations for the specified queue. If you specify both the
    #   `queueId` and the `limitId`, only the specified limit is returned if
    #   it exists.
    #   @return [String]
    #
    # @!attribute [rw] limit_id
    #   Specifies that the operation should return only the queue limit
    #   associations for the specified limit. If you specify both the
    #   `queueId` and the `limitId`, only the specified limit is returned if
    #   it exists.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of associations to return in each page of
    #   results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListQueueLimitAssociationsRequest AWS API Documentation
    #
    class ListQueueLimitAssociationsRequest < Struct.new(
      :farm_id,
      :queue_id,
      :limit_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] queue_limit_associations
    #   A list of associations between limits and queues in the farm
    #   specified in the request.
    #   @return [Array<Types::QueueLimitAssociationSummary>]
    #
    # @!attribute [rw] next_token
    #   If Deadline Cloud returns `nextToken`, then there are more results
    #   available. The value of `nextToken` is a unique pagination token for
    #   each page. To retrieve the next page, call the operation again using
    #   the returned token. Keep all other arguments unchanged. If no
    #   results remain, then `nextToken` is set to `null`. Each pagination
    #   token expires after 24 hours. If you provide a token that isn't
    #   valid, then you receive an HTTP 400 `ValidationException` error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListQueueLimitAssociationsResponse AWS API Documentation
    #
    class ListQueueLimitAssociationsResponse < Struct.new(
      :queue_limit_associations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID for the queue.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID to include on the list.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListQueueMembersRequest AWS API Documentation
    #
    class ListQueueMembersRequest < Struct.new(
      :farm_id,
      :queue_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] members
    #   The members on the list.
    #   @return [Array<Types::QueueMember>]
    #
    # @!attribute [rw] next_token
    #   If Deadline Cloud returns `nextToken`, then there are more results
    #   available. The value of `nextToken` is a unique pagination token for
    #   each page. To retrieve the next page, call the operation again using
    #   the returned token. Keep all other arguments unchanged. If no
    #   results remain, then `nextToken` is set to `null`. Each pagination
    #   token expires after 24 hours. If you provide a token that isn't
    #   valid, then you receive an HTTP 400 `ValidationException` error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListQueueMembersResponse AWS API Documentation
    #
    class ListQueueMembersResponse < Struct.new(
      :members,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID of the queue.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   The principal IDs to include in the list of queues.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the queues listed.
    #
    #   * `ACTIVE`–The queues are active.
    #
    #   * `SCHEDULING`–The queues are scheduling.
    #
    #   * `SCHEDULING_BLOCKED`–The queue scheduling is blocked for these
    #     queues.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListQueuesRequest AWS API Documentation
    #
    class ListQueuesRequest < Struct.new(
      :farm_id,
      :principal_id,
      :status,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] queues
    #   The queues on the list.
    #   @return [Array<Types::QueueSummary>]
    #
    # @!attribute [rw] next_token
    #   If Deadline Cloud returns `nextToken`, then there are more results
    #   available. The value of `nextToken` is a unique pagination token for
    #   each page. To retrieve the next page, call the operation again using
    #   the returned token. Keep all other arguments unchanged. If no
    #   results remain, then `nextToken` is set to `null`. Each pagination
    #   token expires after 24 hours. If you provide a token that isn't
    #   valid, then you receive an HTTP 400 `ValidationException` error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListQueuesResponse AWS API Documentation
    #
    class ListQueuesResponse < Struct.new(
      :queues,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID for the session actions list.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID for the session actions list.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The job ID for the session actions list.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The session ID to include on the sessions action list.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   The task ID for the session actions list.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListSessionActionsRequest AWS API Documentation
    #
    class ListSessionActionsRequest < Struct.new(
      :farm_id,
      :queue_id,
      :job_id,
      :session_id,
      :task_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_actions
    #   The session actions.
    #   @return [Array<Types::SessionActionSummary>]
    #
    # @!attribute [rw] next_token
    #   If Deadline Cloud returns `nextToken`, then there are more results
    #   available. The value of `nextToken` is a unique pagination token for
    #   each page. To retrieve the next page, call the operation again using
    #   the returned token. Keep all other arguments unchanged. If no
    #   results remain, then `nextToken` is set to `null`. Each pagination
    #   token expires after 24 hours. If you provide a token that isn't
    #   valid, then you receive an HTTP 400 `ValidationException` error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListSessionActionsResponse AWS API Documentation
    #
    class ListSessionActionsResponse < Struct.new(
      :session_actions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID for the session.
    #   @return [String]
    #
    # @!attribute [rw] fleet_id
    #   The fleet ID for the session.
    #   @return [String]
    #
    # @!attribute [rw] worker_id
    #   The worker ID for the session.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListSessionsForWorkerRequest AWS API Documentation
    #
    class ListSessionsForWorkerRequest < Struct.new(
      :farm_id,
      :fleet_id,
      :worker_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sessions
    #   The sessions in the response.
    #   @return [Array<Types::WorkerSessionSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListSessionsForWorkerResponse AWS API Documentation
    #
    class ListSessionsForWorkerResponse < Struct.new(
      :sessions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID for the list of sessions.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID for the list of sessions
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The job ID for the list of sessions.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListSessionsRequest AWS API Documentation
    #
    class ListSessionsRequest < Struct.new(
      :farm_id,
      :queue_id,
      :job_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sessions
    #   The sessions on the list.
    #   @return [Array<Types::SessionSummary>]
    #
    # @!attribute [rw] next_token
    #   If Deadline Cloud returns `nextToken`, then there are more results
    #   available. The value of `nextToken` is a unique pagination token for
    #   each page. To retrieve the next page, call the operation again using
    #   the returned token. Keep all other arguments unchanged. If no
    #   results remain, then `nextToken` is set to `null`. Each pagination
    #   token expires after 24 hours. If you provide a token that isn't
    #   valid, then you receive an HTTP 400 `ValidationException` error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListSessionsResponse AWS API Documentation
    #
    class ListSessionsResponse < Struct.new(
      :sessions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID for the list of step consumers.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID for the step consumer.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The job ID for the step consumer.
    #   @return [String]
    #
    # @!attribute [rw] step_id
    #   The step ID to include on the list.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListStepConsumersRequest AWS API Documentation
    #
    class ListStepConsumersRequest < Struct.new(
      :farm_id,
      :queue_id,
      :job_id,
      :step_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] consumers
    #   The consumers on the list.
    #   @return [Array<Types::StepConsumer>]
    #
    # @!attribute [rw] next_token
    #   If Deadline Cloud returns `nextToken`, then there are more results
    #   available. The value of `nextToken` is a unique pagination token for
    #   each page. To retrieve the next page, call the operation again using
    #   the returned token. Keep all other arguments unchanged. If no
    #   results remain, then `nextToken` is set to `null`. Each pagination
    #   token expires after 24 hours. If you provide a token that isn't
    #   valid, then you receive an HTTP 400 `ValidationException` error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListStepConsumersResponse AWS API Documentation
    #
    class ListStepConsumersResponse < Struct.new(
      :consumers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID for the step dependencies list.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID for the step dependencies list.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The job ID for the step dependencies list.
    #   @return [String]
    #
    # @!attribute [rw] step_id
    #   The step ID to include on the list.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListStepDependenciesRequest AWS API Documentation
    #
    class ListStepDependenciesRequest < Struct.new(
      :farm_id,
      :queue_id,
      :job_id,
      :step_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dependencies
    #   The dependencies on the list.
    #   @return [Array<Types::StepDependency>]
    #
    # @!attribute [rw] next_token
    #   If Deadline Cloud returns `nextToken`, then there are more results
    #   available. The value of `nextToken` is a unique pagination token for
    #   each page. To retrieve the next page, call the operation again using
    #   the returned token. Keep all other arguments unchanged. If no
    #   results remain, then `nextToken` is set to `null`. Each pagination
    #   token expires after 24 hours. If you provide a token that isn't
    #   valid, then you receive an HTTP 400 `ValidationException` error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListStepDependenciesResponse AWS API Documentation
    #
    class ListStepDependenciesResponse < Struct.new(
      :dependencies,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID to include on the list of steps.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID to include on the list of steps.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The job ID to include on the list of steps.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListStepsRequest AWS API Documentation
    #
    class ListStepsRequest < Struct.new(
      :farm_id,
      :queue_id,
      :job_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] steps
    #   The steps on the list.
    #   @return [Array<Types::StepSummary>]
    #
    # @!attribute [rw] next_token
    #   If Deadline Cloud returns `nextToken`, then there are more results
    #   available. The value of `nextToken` is a unique pagination token for
    #   each page. To retrieve the next page, call the operation again using
    #   the returned token. Keep all other arguments unchanged. If no
    #   results remain, then `nextToken` is set to `null`. Each pagination
    #   token expires after 24 hours. If you provide a token that isn't
    #   valid, then you receive an HTTP 400 `ValidationException` error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListStepsResponse AWS API Documentation
    #
    class ListStepsResponse < Struct.new(
      :steps,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID of the queue's storage profile.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID for the storage profile.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListStorageProfilesForQueueRequest AWS API Documentation
    #
    class ListStorageProfilesForQueueRequest < Struct.new(
      :farm_id,
      :queue_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] storage_profiles
    #   The storage profiles in the queue.
    #   @return [Array<Types::StorageProfileSummary>]
    #
    # @!attribute [rw] next_token
    #   If Deadline Cloud returns `nextToken`, then there are more results
    #   available. The value of `nextToken` is a unique pagination token for
    #   each page. To retrieve the next page, call the operation again using
    #   the returned token. Keep all other arguments unchanged. If no
    #   results remain, then `nextToken` is set to `null`. Each pagination
    #   token expires after 24 hours. If you provide a token that isn't
    #   valid, then you receive an HTTP 400 `ValidationException` error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListStorageProfilesForQueueResponse AWS API Documentation
    #
    class ListStorageProfilesForQueueResponse < Struct.new(
      :storage_profiles,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID of the storage profile.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListStorageProfilesRequest AWS API Documentation
    #
    class ListStorageProfilesRequest < Struct.new(
      :farm_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] storage_profiles
    #   The storage profiles.
    #   @return [Array<Types::StorageProfileSummary>]
    #
    # @!attribute [rw] next_token
    #   If Deadline Cloud returns `nextToken`, then there are more results
    #   available. The value of `nextToken` is a unique pagination token for
    #   each page. To retrieve the next page, call the operation again using
    #   the returned token. Keep all other arguments unchanged. If no
    #   results remain, then `nextToken` is set to `null`. Each pagination
    #   token expires after 24 hours. If you provide a token that isn't
    #   valid, then you receive an HTTP 400 `ValidationException` error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListStorageProfilesResponse AWS API Documentation
    #
    class ListStorageProfilesResponse < Struct.new(
      :storage_profiles,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The resource ARN to list tags for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   Each tag consists of a tag key and a tag value. Tag keys and values
    #   are both required, but tag values can be empty strings.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID connected to the tasks.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID connected to the tasks.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The job ID for the tasks.
    #   @return [String]
    #
    # @!attribute [rw] step_id
    #   The step ID for the tasks.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListTasksRequest AWS API Documentation
    #
    class ListTasksRequest < Struct.new(
      :farm_id,
      :queue_id,
      :job_id,
      :step_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tasks
    #   Tasks for the job.
    #   @return [Array<Types::TaskSummary>]
    #
    # @!attribute [rw] next_token
    #   If Deadline Cloud returns `nextToken`, then there are more results
    #   available. The value of `nextToken` is a unique pagination token for
    #   each page. To retrieve the next page, call the operation again using
    #   the returned token. Keep all other arguments unchanged. If no
    #   results remain, then `nextToken` is set to `null`. Each pagination
    #   token expires after 24 hours. If you provide a token that isn't
    #   valid, then you receive an HTTP 400 `ValidationException` error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListTasksResponse AWS API Documentation
    #
    class ListTasksResponse < Struct.new(
      :tasks,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID connected to the workers.
    #   @return [String]
    #
    # @!attribute [rw] fleet_id
    #   The fleet ID of the workers.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListWorkersRequest AWS API Documentation
    #
    class ListWorkersRequest < Struct.new(
      :farm_id,
      :fleet_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If Deadline Cloud returns `nextToken`, then there are more results
    #   available. The value of `nextToken` is a unique pagination token for
    #   each page. To retrieve the next page, call the operation again using
    #   the returned token. Keep all other arguments unchanged. If no
    #   results remain, then `nextToken` is set to `null`. Each pagination
    #   token expires after 24 hours. If you provide a token that isn't
    #   valid, then you receive an HTTP 400 `ValidationException` error.
    #   @return [String]
    #
    # @!attribute [rw] workers
    #   The workers on the list.
    #   @return [Array<Types::WorkerSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListWorkersResponse AWS API Documentation
    #
    class ListWorkersResponse < Struct.new(
      :next_token,
      :workers)
      SENSITIVE = []
      include Aws::Structure
    end

    # Log configuration details.
    #
    # @!attribute [rw] log_driver
    #   The log drivers for worker related logs.
    #   @return [String]
    #
    # @!attribute [rw] options
    #   The options for a log driver.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] parameters
    #   The parameters for the log configuration.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] error
    #   The log configuration error details.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/LogConfiguration AWS API Documentation
    #
    class LogConfiguration < Struct.new(
      :log_driver,
      :options,
      :parameters,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the manifest that links a job's source information.
    #
    # @!attribute [rw] file_system_location_name
    #   The file system location name.
    #   @return [String]
    #
    # @!attribute [rw] root_path
    #   The file's root path.
    #   @return [String]
    #
    # @!attribute [rw] root_path_format
    #   The format of the root path.
    #   @return [String]
    #
    # @!attribute [rw] output_relative_directories
    #   The file path relative to the directory.
    #   @return [Array<String>]
    #
    # @!attribute [rw] input_manifest_path
    #   The file path.
    #   @return [String]
    #
    # @!attribute [rw] input_manifest_hash
    #   The hash value of the file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ManifestProperties AWS API Documentation
    #
    class ManifestProperties < Struct.new(
      :file_system_location_name,
      :root_path,
      :root_path_format,
      :output_relative_directories,
      :input_manifest_path,
      :input_manifest_hash)
      SENSITIVE = [:file_system_location_name]
      include Aws::Structure
    end

    # The range of memory in MiB.
    #
    # @!attribute [rw] min
    #   The minimum amount of memory (in MiB).
    #   @return [Integer]
    #
    # @!attribute [rw] max
    #   The maximum amount of memory (in MiB).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/MemoryMiBRange AWS API Documentation
    #
    class MemoryMiBRange < Struct.new(
      :min,
      :max)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a metered product.
    #
    # @!attribute [rw] product_id
    #   The product ID.
    #   @return [String]
    #
    # @!attribute [rw] family
    #   The family to which the metered product belongs.
    #   @return [String]
    #
    # @!attribute [rw] vendor
    #   The vendor.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port on which the metered product should run.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/MeteredProductSummary AWS API Documentation
    #
    class MeteredProductSummary < Struct.new(
      :product_id,
      :family,
      :vendor,
      :port)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a monitor in Deadline Cloud.
    #
    # @!attribute [rw] monitor_id
    #   The unique identifier for the monitor.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of the monitor that displays on the Deadline Cloud console.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @!attribute [rw] subdomain
    #   The subdomain used for the monitor URL. The full URL of the monitor
    #   is subdomain.Region.deadlinecloud.amazonaws.com.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The complete URL of the monitor. The full URL of the monitor is
    #   subdomain.Region.deadlinecloud.amazonaws.com.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role for the monitor.
    #   Users of the monitor use this role to access Deadline Cloud
    #   resources.
    #   @return [String]
    #
    # @!attribute [rw] identity_center_instance_arn
    #   The Amazon Resource Name (ARN) of the IAM Identity Center instance
    #   responsible for authenticating monitor users.
    #   @return [String]
    #
    # @!attribute [rw] identity_center_application_arn
    #   The Amazon Resource Name (ARN) that the IAM Identity Center assigned
    #   to the monitor when it was created.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The UNIX timestamp of the date and time that the monitor was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user name of the person that created the monitor.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The UNIX timestamp of the date and time that the monitor was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The user name of the person that last updated the monitor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/MonitorSummary AWS API Documentation
    #
    class MonitorSummary < Struct.new(
      :monitor_id,
      :display_name,
      :subdomain,
      :url,
      :role_arn,
      :identity_center_instance_arn,
      :identity_center_application_arn,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a filtered search for parameters.
    #
    # @!attribute [rw] name
    #   The name of the parameter to filter on.
    #   @return [String]
    #
    # @!attribute [rw] operator
    #   The type of comparison to use to filter results.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The parameter's value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ParameterFilterExpression AWS API Documentation
    #
    class ParameterFilterExpression < Struct.new(
      :name,
      :operator,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Organizes parameters according to your specifications.
    #
    # @!attribute [rw] sort_order
    #   The sort order for the parameter.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The parameter name to sort by.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ParameterSortExpression AWS API Documentation
    #
    class ParameterSortExpression < Struct.new(
      :sort_order,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a search for two or more step parameters.
    #
    # @!attribute [rw] parameters
    #   The parameters to search for.
    #   @return [Array<Types::StepParameter>]
    #
    # @!attribute [rw] combination
    #   The combination expression to use in the search.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ParameterSpace AWS API Documentation
    #
    class ParameterSpace < Struct.new(
      :parameters,
      :combination)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a source and destination path.
    #
    # @!attribute [rw] source_path_format
    #   The source path format.
    #   @return [String]
    #
    # @!attribute [rw] source_path
    #   The source path.
    #   @return [String]
    #
    # @!attribute [rw] destination_path
    #   The destination path.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/PathMappingRule AWS API Documentation
    #
    class PathMappingRule < Struct.new(
      :source_path_format,
      :source_path,
      :destination_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # The POSIX user.
    #
    # @!attribute [rw] user
    #   The name of the POSIX user.
    #   @return [String]
    #
    # @!attribute [rw] group
    #   The name of the POSIX user's group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/PosixUser AWS API Documentation
    #
    class PosixUser < Struct.new(
      :user,
      :group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] license_endpoint_id
    #   The license endpoint ID to add to the metered product.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The product ID to add to the metered product.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/PutMeteredProductRequest AWS API Documentation
    #
    class PutMeteredProductRequest < Struct.new(
      :license_endpoint_id,
      :product_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/PutMeteredProductResponse AWS API Documentation
    #
    class PutMeteredProductResponse < Aws::EmptyStructure; end

    # The summary of a queue environment.
    #
    # @!attribute [rw] queue_environment_id
    #   The queue environment ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the queue environment.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The queue environment's priority.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/QueueEnvironmentSummary AWS API Documentation
    #
    class QueueEnvironmentSummary < Struct.new(
      :queue_environment_id,
      :name,
      :priority)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a queue-fleet association.
    #
    # @!attribute [rw] queue_id
    #   The queue ID.
    #   @return [String]
    #
    # @!attribute [rw] fleet_id
    #   The fleet ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of task scheduling in the queue-fleet association.
    #
    #   * `ACTIVE`–Association is active.
    #
    #   * `STOP_SCHEDULING_AND_COMPLETE_TASKS`–Association has stopped
    #     scheduling new tasks and is completing current tasks.
    #
    #   * `STOP_SCHEDULING_AND_CANCEL_TASKS`–Association has stopped
    #     scheduling new tasks and is canceling current tasks.
    #
    #   * `STOPPED`–Association has been stopped.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user or system that created this resource.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time the resource was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The user or system that updated this resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/QueueFleetAssociationSummary AWS API Documentation
    #
    class QueueFleetAssociationSummary < Struct.new(
      :queue_id,
      :fleet_id,
      :status,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the association between a queue and a
    # limit.
    #
    # @!attribute [rw] created_at
    #   The Unix timestamp of the date and time that the association was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user identifier of the person that created the association.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The Unix timestamp of the date and time that the association was
    #   last updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The user identifier of the person that updated the association.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The unique identifier of the queue in the association.
    #   @return [String]
    #
    # @!attribute [rw] limit_id
    #   The unique identifier of the limit in the association.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of task scheduling in the queue-limit association.
    #
    #   * `ACTIVE` - Association is active.
    #
    #   * `STOP_LIMIT_USAGE_AND_COMPLETE_TASKS` - Association has stopped
    #     scheduling new tasks and is completing current tasks.
    #
    #   * `STOP_LIMIT_USAGE_AND_CANCEL_TASKS` - Association has stopped
    #     scheduling new tasks and is canceling current tasks.
    #
    #   * `STOPPED` - Association has been stopped.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/QueueLimitAssociationSummary AWS API Documentation
    #
    class QueueLimitAssociationSummary < Struct.new(
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      :queue_id,
      :limit_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a queue member.
    #
    # @!attribute [rw] farm_id
    #   The farm ID.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   The principal ID of the queue member.
    #   @return [String]
    #
    # @!attribute [rw] principal_type
    #   The principal type of the queue member.
    #   @return [String]
    #
    # @!attribute [rw] identity_store_id
    #   The identity store ID.
    #   @return [String]
    #
    # @!attribute [rw] membership_level
    #   The queue member's membership level.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/QueueMember AWS API Documentation
    #
    class QueueMember < Struct.new(
      :farm_id,
      :queue_id,
      :principal_id,
      :principal_type,
      :identity_store_id,
      :membership_level)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a queue summary.
    #
    # @!attribute [rw] farm_id
    #   The farm ID.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the queue summary to update.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   That status of the queue.
    #   @return [String]
    #
    # @!attribute [rw] default_budget_action
    #   The default action taken on a queue summary if a budget wasn't
    #   configured.
    #   @return [String]
    #
    # @!attribute [rw] blocked_reason
    #   The reason the queue is blocked, if applicable.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user or system that created this resource.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time the resource was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The user or system that updated this resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/QueueSummary AWS API Documentation
    #
    class QueueSummary < Struct.new(
      :farm_id,
      :queue_id,
      :display_name,
      :status,
      :default_budget_action,
      :blocked_reason,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested resource can't be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource that couldn't be found.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that couldn't be found.
    #   @return [String]
    #
    # @!attribute [rw] context
    #   Information about the resources in use when the exception was
    #   thrown.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :context)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a budget action.
    #
    # @!attribute [rw] type
    #   The action taken on the budget once scheduling stops.
    #   @return [String]
    #
    # @!attribute [rw] threshold_percentage
    #   The percentage threshold for the budget.
    #   @return [Float]
    #
    # @!attribute [rw] description
    #   The budget action description.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ResponseBudgetAction AWS API Documentation
    #
    class ResponseBudgetAction < Struct.new(
      :type,
      :threshold_percentage,
      :description)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # The Amazon S3 location information.
    #
    # @!attribute [rw] bucket_name
    #   The name of the Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The Amazon S3 object key that uniquely identifies the Amazon S3
    #   bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/S3Location AWS API Documentation
    #
    class S3Location < Struct.new(
      :bucket_name,
      :key)
      SENSITIVE = []
      include Aws::Structure
    end

    # The type of search filter to apply.
    #
    # @note SearchFilterExpression is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] date_time_filter
    #   Filters based on date and time.
    #   @return [Types::DateTimeFilterExpression]
    #
    # @!attribute [rw] parameter_filter
    #   Filters by parameter.
    #   @return [Types::ParameterFilterExpression]
    #
    # @!attribute [rw] search_term_filter
    #   Filters by a specified search term.
    #   @return [Types::SearchTermFilterExpression]
    #
    # @!attribute [rw] string_filter
    #   Filters by a string.
    #   @return [Types::StringFilterExpression]
    #
    # @!attribute [rw] group_filter
    #   Filters by group.
    #   @return [Types::SearchGroupedFilterExpressions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/SearchFilterExpression AWS API Documentation
    #
    class SearchFilterExpression < Struct.new(
      :date_time_filter,
      :parameter_filter,
      :search_term_filter,
      :string_filter,
      :group_filter,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class DateTimeFilter < SearchFilterExpression; end
      class ParameterFilter < SearchFilterExpression; end
      class SearchTermFilter < SearchFilterExpression; end
      class StringFilter < SearchFilterExpression; end
      class GroupFilter < SearchFilterExpression; end
      class Unknown < SearchFilterExpression; end
    end

    # The filter expression, `AND` or `OR`, to use when searching among a
    # group of search strings in a resource. You can use two groupings per
    # search each within parenthesis `()`.
    #
    # @!attribute [rw] filters
    #   The filters to use for the search.
    #   @return [Array<Types::SearchFilterExpression>]
    #
    # @!attribute [rw] operator
    #   The operators to include in the search.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/SearchGroupedFilterExpressions AWS API Documentation
    #
    class SearchGroupedFilterExpressions < Struct.new(
      :filters,
      :operator)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID of the job.
    #   @return [String]
    #
    # @!attribute [rw] queue_ids
    #   The queue ID to use in the job search.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filter_expressions
    #   The filter expression, `AND` or `OR`, to use when searching among a
    #   group of search strings in a resource. You can use two groupings per
    #   search each within parenthesis `()`.
    #   @return [Types::SearchGroupedFilterExpressions]
    #
    # @!attribute [rw] sort_expressions
    #   The search terms for a resource.
    #   @return [Array<Types::SearchSortExpression>]
    #
    # @!attribute [rw] item_offset
    #   Defines how far into the scrollable list to start the return of
    #   results.
    #   @return [Integer]
    #
    # @!attribute [rw] page_size
    #   Specifies the number of items per page for the resource.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/SearchJobsRequest AWS API Documentation
    #
    class SearchJobsRequest < Struct.new(
      :farm_id,
      :queue_ids,
      :filter_expressions,
      :sort_expressions,
      :item_offset,
      :page_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] jobs
    #   The jobs in the search.
    #   @return [Array<Types::JobSearchSummary>]
    #
    # @!attribute [rw] next_item_offset
    #   The next incremental starting point after the defined `itemOffset`.
    #   @return [Integer]
    #
    # @!attribute [rw] total_results
    #   The total number of results in the search.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/SearchJobsResponse AWS API Documentation
    #
    class SearchJobsResponse < Struct.new(
      :jobs,
      :next_item_offset,
      :total_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resources to search.
    #
    # @note SearchSortExpression is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] user_jobs_first
    #   Options for sorting a particular user's jobs first.
    #   @return [Types::UserJobsFirst]
    #
    # @!attribute [rw] field_sort
    #   Options for sorting by a field.
    #   @return [Types::FieldSortExpression]
    #
    # @!attribute [rw] parameter_sort
    #   Options for sorting by a parameter.
    #   @return [Types::ParameterSortExpression]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/SearchSortExpression AWS API Documentation
    #
    class SearchSortExpression < Struct.new(
      :user_jobs_first,
      :field_sort,
      :parameter_sort,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class UserJobsFirst < SearchSortExpression; end
      class FieldSort < SearchSortExpression; end
      class ParameterSort < SearchSortExpression; end
      class Unknown < SearchSortExpression; end
    end

    # @!attribute [rw] farm_id
    #   The farm ID to use for the step search.
    #   @return [String]
    #
    # @!attribute [rw] queue_ids
    #   The queue IDs in the step search.
    #   @return [Array<String>]
    #
    # @!attribute [rw] job_id
    #   The job ID to use in the step search.
    #   @return [String]
    #
    # @!attribute [rw] filter_expressions
    #   The filter expression, `AND` or `OR`, to use when searching among a
    #   group of search strings in a resource. You can use two groupings per
    #   search each within parenthesis `()`.
    #   @return [Types::SearchGroupedFilterExpressions]
    #
    # @!attribute [rw] sort_expressions
    #   The search terms for a resource.
    #   @return [Array<Types::SearchSortExpression>]
    #
    # @!attribute [rw] item_offset
    #   Defines how far into the scrollable list to start the return of
    #   results.
    #   @return [Integer]
    #
    # @!attribute [rw] page_size
    #   Specifies the number of items per page for the resource.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/SearchStepsRequest AWS API Documentation
    #
    class SearchStepsRequest < Struct.new(
      :farm_id,
      :queue_ids,
      :job_id,
      :filter_expressions,
      :sort_expressions,
      :item_offset,
      :page_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] steps
    #   The steps in the search.
    #   @return [Array<Types::StepSearchSummary>]
    #
    # @!attribute [rw] next_item_offset
    #   The next incremental starting point after the defined `itemOffset`.
    #   @return [Integer]
    #
    # @!attribute [rw] total_results
    #   The total number of results in the search.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/SearchStepsResponse AWS API Documentation
    #
    class SearchStepsResponse < Struct.new(
      :steps,
      :next_item_offset,
      :total_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID of the task.
    #   @return [String]
    #
    # @!attribute [rw] queue_ids
    #   The queue IDs to include in the search.
    #   @return [Array<String>]
    #
    # @!attribute [rw] job_id
    #   The job ID for the task search.
    #   @return [String]
    #
    # @!attribute [rw] filter_expressions
    #   The filter expression, `AND` or `OR`, to use when searching among a
    #   group of search strings in a resource. You can use two groupings per
    #   search each within parenthesis `()`.
    #   @return [Types::SearchGroupedFilterExpressions]
    #
    # @!attribute [rw] sort_expressions
    #   The search terms for a resource.
    #   @return [Array<Types::SearchSortExpression>]
    #
    # @!attribute [rw] item_offset
    #   Defines how far into the scrollable list to start the return of
    #   results.
    #   @return [Integer]
    #
    # @!attribute [rw] page_size
    #   Specifies the number of items per page for the resource.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/SearchTasksRequest AWS API Documentation
    #
    class SearchTasksRequest < Struct.new(
      :farm_id,
      :queue_ids,
      :job_id,
      :filter_expressions,
      :sort_expressions,
      :item_offset,
      :page_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tasks
    #   Tasks in the search.
    #   @return [Array<Types::TaskSearchSummary>]
    #
    # @!attribute [rw] next_item_offset
    #   The next incremental starting point after the defined `itemOffset`.
    #   @return [Integer]
    #
    # @!attribute [rw] total_results
    #   The total number of results in the search.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/SearchTasksResponse AWS API Documentation
    #
    class SearchTasksResponse < Struct.new(
      :tasks,
      :next_item_offset,
      :total_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Searches for a particular search term.
    #
    # @!attribute [rw] search_term
    #   The term to search for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/SearchTermFilterExpression AWS API Documentation
    #
    class SearchTermFilterExpression < Struct.new(
      :search_term)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID in the workers search.
    #   @return [String]
    #
    # @!attribute [rw] fleet_ids
    #   The fleet ID of the workers to search for.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filter_expressions
    #   The filter expression, `AND` or `OR`, to use when searching among a
    #   group of search strings in a resource. You can use two groupings per
    #   search each within parenthesis `()`.
    #   @return [Types::SearchGroupedFilterExpressions]
    #
    # @!attribute [rw] sort_expressions
    #   The search terms for a resource.
    #   @return [Array<Types::SearchSortExpression>]
    #
    # @!attribute [rw] item_offset
    #   Defines how far into the scrollable list to start the return of
    #   results.
    #   @return [Integer]
    #
    # @!attribute [rw] page_size
    #   Specifies the number of items per page for the resource.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/SearchWorkersRequest AWS API Documentation
    #
    class SearchWorkersRequest < Struct.new(
      :farm_id,
      :fleet_ids,
      :filter_expressions,
      :sort_expressions,
      :item_offset,
      :page_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workers
    #   The workers for the search.
    #   @return [Array<Types::WorkerSearchSummary>]
    #
    # @!attribute [rw] next_item_offset
    #   The next incremental starting point after the defined `itemOffset`.
    #   @return [Integer]
    #
    # @!attribute [rw] total_results
    #   The total number of results in the search.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/SearchWorkersResponse AWS API Documentation
    #
    class SearchWorkersResponse < Struct.new(
      :workers,
      :next_item_offset,
      :total_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration details for a service managed Amazon EC2 fleet.
    #
    # @!attribute [rw] instance_capabilities
    #   The Amazon EC2 instance capabilities.
    #   @return [Types::ServiceManagedEc2InstanceCapabilities]
    #
    # @!attribute [rw] instance_market_options
    #   The Amazon EC2 market type.
    #   @return [Types::ServiceManagedEc2InstanceMarketOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ServiceManagedEc2FleetConfiguration AWS API Documentation
    #
    class ServiceManagedEc2FleetConfiguration < Struct.new(
      :instance_capabilities,
      :instance_market_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon EC2 instance capabilities.
    #
    # @!attribute [rw] v_cpu_count
    #   The amount of vCPU to require for instances in this fleet.
    #   @return [Types::VCpuCountRange]
    #
    # @!attribute [rw] memory_mi_b
    #   The memory, as MiB, for the Amazon EC2 instance type.
    #   @return [Types::MemoryMiBRange]
    #
    # @!attribute [rw] os_family
    #   The operating system (OS) family.
    #   @return [String]
    #
    # @!attribute [rw] cpu_architecture_type
    #   The CPU architecture type.
    #   @return [String]
    #
    # @!attribute [rw] root_ebs_volume
    #   The root EBS volume.
    #   @return [Types::Ec2EbsVolume]
    #
    # @!attribute [rw] accelerator_capabilities
    #   Describes the GPU accelerator capabilities required for worker host
    #   instances in this fleet.
    #   @return [Types::AcceleratorCapabilities]
    #
    # @!attribute [rw] allowed_instance_types
    #   The allowable Amazon EC2 instance types.
    #   @return [Array<String>]
    #
    # @!attribute [rw] excluded_instance_types
    #   The instance types to exclude from the fleet.
    #   @return [Array<String>]
    #
    # @!attribute [rw] custom_amounts
    #   The custom capability amounts to require for instances in this
    #   fleet.
    #   @return [Array<Types::FleetAmountCapability>]
    #
    # @!attribute [rw] custom_attributes
    #   The custom capability attributes to require for instances in this
    #   fleet.
    #   @return [Array<Types::FleetAttributeCapability>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ServiceManagedEc2InstanceCapabilities AWS API Documentation
    #
    class ServiceManagedEc2InstanceCapabilities < Struct.new(
      :v_cpu_count,
      :memory_mi_b,
      :os_family,
      :cpu_architecture_type,
      :root_ebs_volume,
      :accelerator_capabilities,
      :allowed_instance_types,
      :excluded_instance_types,
      :custom_amounts,
      :custom_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the Amazon EC2 instance market options for a service
    # managed fleet.
    #
    # @!attribute [rw] type
    #   The Amazon EC2 instance type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ServiceManagedEc2InstanceMarketOptions AWS API Documentation
    #
    class ServiceManagedEc2InstanceMarketOptions < Struct.new(
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # You exceeded your service quota. Service quotas, also referred to as
    # limits, are the maximum number of service resources or operations for
    # your Amazon Web Services account.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   A string that describes the reason the quota was exceeded.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the affected resource
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   Identifies the service that exceeded the quota.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   Identifies the quota that has been exceeded.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the affected resource.
    #   @return [String]
    #
    # @!attribute [rw] context
    #   Information about the resources in use when the exception was
    #   thrown.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :reason,
      :resource_type,
      :service_code,
      :quota_code,
      :resource_id,
      :context)
      SENSITIVE = []
      include Aws::Structure
    end

    # The definition of the session action.
    #
    # @note SessionActionDefinition is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of SessionActionDefinition corresponding to the set member.
    #
    # @!attribute [rw] env_enter
    #   The environment to enter into.
    #   @return [Types::EnvironmentEnterSessionActionDefinition]
    #
    # @!attribute [rw] env_exit
    #   The environment to exit from.
    #   @return [Types::EnvironmentExitSessionActionDefinition]
    #
    # @!attribute [rw] task_run
    #   The task run in the session.
    #   @return [Types::TaskRunSessionActionDefinition]
    #
    # @!attribute [rw] sync_input_job_attachments
    #   The job attachments to sync with a session action.
    #   @return [Types::SyncInputJobAttachmentsSessionActionDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/SessionActionDefinition AWS API Documentation
    #
    class SessionActionDefinition < Struct.new(
      :env_enter,
      :env_exit,
      :task_run,
      :sync_input_job_attachments,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class EnvEnter < SessionActionDefinition; end
      class EnvExit < SessionActionDefinition; end
      class TaskRun < SessionActionDefinition; end
      class SyncInputJobAttachments < SessionActionDefinition; end
      class Unknown < SessionActionDefinition; end
    end

    # The details of a session action definition.
    #
    # @note SessionActionDefinitionSummary is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of SessionActionDefinitionSummary corresponding to the set member.
    #
    # @!attribute [rw] env_enter
    #   The environment to enter into.
    #   @return [Types::EnvironmentEnterSessionActionDefinitionSummary]
    #
    # @!attribute [rw] env_exit
    #   The environment to exit from.
    #   @return [Types::EnvironmentExitSessionActionDefinitionSummary]
    #
    # @!attribute [rw] task_run
    #   The task run.
    #   @return [Types::TaskRunSessionActionDefinitionSummary]
    #
    # @!attribute [rw] sync_input_job_attachments
    #   The job attachments to sync with the session action definition.
    #   @return [Types::SyncInputJobAttachmentsSessionActionDefinitionSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/SessionActionDefinitionSummary AWS API Documentation
    #
    class SessionActionDefinitionSummary < Struct.new(
      :env_enter,
      :env_exit,
      :task_run,
      :sync_input_job_attachments,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class EnvEnter < SessionActionDefinitionSummary; end
      class EnvExit < SessionActionDefinitionSummary; end
      class TaskRun < SessionActionDefinitionSummary; end
      class SyncInputJobAttachments < SessionActionDefinitionSummary; end
      class Unknown < SessionActionDefinitionSummary; end
    end

    # The details of a session action.
    #
    # @!attribute [rw] session_action_id
    #   The session action ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the session action.
    #   @return [String]
    #
    # @!attribute [rw] started_at
    #   The date and time the resource started running.
    #   @return [Time]
    #
    # @!attribute [rw] ended_at
    #   The date and time the resource ended running.
    #   @return [Time]
    #
    # @!attribute [rw] worker_updated_at
    #   The Linux timestamp of the last date and time that the session
    #   action was updated.
    #   @return [Time]
    #
    # @!attribute [rw] progress_percent
    #   The completion percentage for the session action.
    #   @return [Float]
    #
    # @!attribute [rw] definition
    #   The session action definition.
    #   @return [Types::SessionActionDefinitionSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/SessionActionSummary AWS API Documentation
    #
    class SessionActionSummary < Struct.new(
      :session_action_id,
      :status,
      :started_at,
      :ended_at,
      :worker_updated_at,
      :progress_percent,
      :definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of a session.
    #
    # @!attribute [rw] session_id
    #   The session ID.
    #   @return [String]
    #
    # @!attribute [rw] fleet_id
    #   The fleet ID.
    #   @return [String]
    #
    # @!attribute [rw] worker_id
    #   The worker ID.
    #   @return [String]
    #
    # @!attribute [rw] started_at
    #   The date and time the resource started running.
    #   @return [Time]
    #
    # @!attribute [rw] lifecycle_status
    #   The life cycle status for the session.
    #   @return [String]
    #
    # @!attribute [rw] ended_at
    #   The date and time the resource ended running.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the resource was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The user or system that updated this resource.
    #   @return [String]
    #
    # @!attribute [rw] target_lifecycle_status
    #   The target life cycle status for the session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/SessionSummary AWS API Documentation
    #
    class SessionSummary < Struct.new(
      :session_id,
      :fleet_id,
      :worker_id,
      :started_at,
      :lifecycle_status,
      :ended_at,
      :updated_at,
      :updated_by,
      :target_lifecycle_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the fleet IDs or queue IDs to return statistics. You can
    # specify only fleet IDs or queue IDS, not both.
    #
    # @note SessionsStatisticsResources is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] queue_ids
    #   One to 10 queue IDs that specify the queues to return statistics
    #   for. If you specify the `queueIds` field, you can't specify the
    #   `fleetIds` field.
    #   @return [Array<String>]
    #
    # @!attribute [rw] fleet_ids
    #   One to 10 fleet IDs that specify the fleets to return statistics
    #   for. If you specify the `fleetIds` field, you can't specify the
    #   `queueIds` field.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/SessionsStatisticsResources AWS API Documentation
    #
    class SessionsStatisticsResources < Struct.new(
      :queue_ids,
      :fleet_ids,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class QueueIds < SessionsStatisticsResources; end
      class FleetIds < SessionsStatisticsResources; end
      class Unknown < SessionsStatisticsResources; end
    end

    # @!attribute [rw] farm_id
    #   The identifier of the farm that contains queues or fleets to return
    #   statistics for.
    #   @return [String]
    #
    # @!attribute [rw] resource_ids
    #   A list of fleet IDs or queue IDs to gather statistics for.
    #   @return [Types::SessionsStatisticsResources]
    #
    # @!attribute [rw] start_time
    #   The Linux timestamp of the date and time that the statistics start.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The Linux timestamp of the date and time that the statistics end.
    #   @return [Time]
    #
    # @!attribute [rw] timezone
    #   The timezone to use for the statistics. Use UTC notation such as
    #   "UTC+8."
    #   @return [String]
    #
    # @!attribute [rw] period
    #   The period to aggregate the statistics.
    #   @return [String]
    #
    # @!attribute [rw] group_by
    #   The field to use to group the statistics.
    #   @return [Array<String>]
    #
    # @!attribute [rw] statistics
    #   One to four statistics to return.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/StartSessionsStatisticsAggregationRequest AWS API Documentation
    #
    class StartSessionsStatisticsAggregationRequest < Struct.new(
      :farm_id,
      :resource_ids,
      :start_time,
      :end_time,
      :timezone,
      :period,
      :group_by,
      :statistics)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aggregation_id
    #   A unique identifier for the aggregated statistics. Use this
    #   identifier with the `GetAggregatedStatisticsForSessions` operation
    #   to return the statistics.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/StartSessionsStatisticsAggregationResponse AWS API Documentation
    #
    class StartSessionsStatisticsAggregationResponse < Struct.new(
      :aggregation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of statistics for a session.
    #
    # @!attribute [rw] queue_id
    #   The queue ID.
    #   @return [String]
    #
    # @!attribute [rw] fleet_id
    #   The fleet ID.
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
    # @!attribute [rw] user_id
    #   The user ID.
    #   @return [String]
    #
    # @!attribute [rw] usage_type
    #   The type of usage for the statistics.
    #   @return [String]
    #
    # @!attribute [rw] license_product
    #   The licensed product.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The type of instance.
    #   @return [String]
    #
    # @!attribute [rw] count
    #   The number of instances in a list of statistics.
    #   @return [Integer]
    #
    # @!attribute [rw] cost_in_usd
    #   How the statistics should appear in USD. Options include: minimum,
    #   maximum, average or sum.
    #   @return [Types::Stats]
    #
    # @!attribute [rw] runtime_in_seconds
    #   The total aggregated runtime.
    #   @return [Types::Stats]
    #
    # @!attribute [rw] aggregation_start_time
    #   The start time for the aggregation.
    #   @return [Time]
    #
    # @!attribute [rw] aggregation_end_time
    #   The end time for the aggregation.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/Statistics AWS API Documentation
    #
    class Statistics < Struct.new(
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
      :aggregation_end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The minimum, maximum, average, and sum.
    #
    # @!attribute [rw] min
    #   The minimum of the usage statistics.
    #   @return [Float]
    #
    # @!attribute [rw] max
    #   The maximum among the usage statistics.
    #   @return [Float]
    #
    # @!attribute [rw] avg
    #   The average of the usage statistics.
    #   @return [Float]
    #
    # @!attribute [rw] sum
    #   The sum of the usage statistics.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/Stats AWS API Documentation
    #
    class Stats < Struct.new(
      :min,
      :max,
      :avg,
      :sum)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details outlining the minimum and maximum capability of a step.
    #
    # @!attribute [rw] name
    #   The name of the step.
    #   @return [String]
    #
    # @!attribute [rw] min
    #   The minimum amount.
    #   @return [Float]
    #
    # @!attribute [rw] max
    #   The maximum amount.
    #   @return [Float]
    #
    # @!attribute [rw] value
    #   The amount value.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/StepAmountCapability AWS API Documentation
    #
    class StepAmountCapability < Struct.new(
      :name,
      :min,
      :max,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The list of step attributes.
    #
    # @!attribute [rw] name
    #   The name of the step attribute.
    #   @return [String]
    #
    # @!attribute [rw] any_of
    #   Requires any of the step attributes in a given list.
    #   @return [Array<String>]
    #
    # @!attribute [rw] all_of
    #   Requires all of the step attribute values.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/StepAttributeCapability AWS API Documentation
    #
    class StepAttributeCapability < Struct.new(
      :name,
      :any_of,
      :all_of)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a step consumer.
    #
    # @!attribute [rw] step_id
    #   The step ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The step consumer status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/StepConsumer AWS API Documentation
    #
    class StepConsumer < Struct.new(
      :step_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of step dependency.
    #
    # @!attribute [rw] step_id
    #   The step ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The step dependency status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/StepDependency AWS API Documentation
    #
    class StepDependency < Struct.new(
      :step_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a step entity.
    #
    # @!attribute [rw] job_id
    #   The job ID.
    #   @return [String]
    #
    # @!attribute [rw] step_id
    #   The step ID.
    #   @return [String]
    #
    # @!attribute [rw] schema_version
    #   The schema version for a step template.
    #   @return [String]
    #
    # @!attribute [rw] template
    #   The template for a step.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] dependencies
    #   The dependencies for a step.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/StepDetailsEntity AWS API Documentation
    #
    class StepDetailsEntity < Struct.new(
      :job_id,
      :step_id,
      :schema_version,
      :template,
      :dependencies)
      SENSITIVE = [:template]
      include Aws::Structure
    end

    # The details of the step error.
    #
    # @!attribute [rw] job_id
    #   The job ID.
    #   @return [String]
    #
    # @!attribute [rw] step_id
    #   The step ID.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The error message detailing the error's cause.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/StepDetailsError AWS API Documentation
    #
    class StepDetailsError < Struct.new(
      :job_id,
      :step_id,
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of identifiers for a step.
    #
    # @!attribute [rw] job_id
    #   The job ID.
    #   @return [String]
    #
    # @!attribute [rw] step_id
    #   The step ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/StepDetailsIdentifiers AWS API Documentation
    #
    class StepDetailsIdentifiers < Struct.new(
      :job_id,
      :step_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a step parameter.
    #
    # @!attribute [rw] name
    #   The name of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The data type of the parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/StepParameter AWS API Documentation
    #
    class StepParameter < Struct.new(
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of required step capabilities.
    #
    # @!attribute [rw] attributes
    #   The capability attributes that the step requires.
    #   @return [Array<Types::StepAttributeCapability>]
    #
    # @!attribute [rw] amounts
    #   The capability amounts that the step requires.
    #   @return [Array<Types::StepAmountCapability>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/StepRequiredCapabilities AWS API Documentation
    #
    class StepRequiredCapabilities < Struct.new(
      :attributes,
      :amounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a step search.
    #
    # @!attribute [rw] step_id
    #   The step ID.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The job ID.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The step name.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_status
    #   The life cycle status.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_status_message
    #   The life cycle status message.
    #   @return [String]
    #
    # @!attribute [rw] task_run_status
    #   The task run status for the job.
    #
    #   * `PENDING`–pending and waiting for resources.
    #
    #   * `READY`–ready to be processed.
    #
    #   * `ASSIGNED`–assigned and will run next on a worker.
    #
    #   * `SCHEDULED`–scheduled to be run on a worker.
    #
    #   * `INTERRUPTING`–being interrupted.
    #
    #   * `RUNNING`–running on a worker.
    #
    #   * `SUSPENDED`–the task is suspended.
    #
    #   * `CANCELED`–the task has been canceled.
    #
    #   * `FAILED`–the task has failed.
    #
    #   * `SUCCEEDED`–the task has succeeded.
    #   @return [String]
    #
    # @!attribute [rw] target_task_run_status
    #   The task status to start with on the job.
    #   @return [String]
    #
    # @!attribute [rw] task_run_status_counts
    #   The number of tasks running on the job.
    #   @return [Hash<String,Integer>]
    #
    # @!attribute [rw] created_at
    #   The date and time the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] started_at
    #   The date and time the resource started running.
    #   @return [Time]
    #
    # @!attribute [rw] ended_at
    #   The date and time the resource ended running.
    #   @return [Time]
    #
    # @!attribute [rw] parameter_space
    #   The parameters and combination expressions for the search.
    #   @return [Types::ParameterSpace]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/StepSearchSummary AWS API Documentation
    #
    class StepSearchSummary < Struct.new(
      :step_id,
      :job_id,
      :queue_id,
      :name,
      :lifecycle_status,
      :lifecycle_status_message,
      :task_run_status,
      :target_task_run_status,
      :task_run_status_counts,
      :created_at,
      :started_at,
      :ended_at,
      :parameter_space)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details for a step.
    #
    # @!attribute [rw] step_id
    #   The step ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the step.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_status
    #   The life cycle status.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_status_message
    #   A message that describes the lifecycle of the step.
    #   @return [String]
    #
    # @!attribute [rw] task_run_status
    #   The task run status for the job.
    #
    #   * `PENDING`–pending and waiting for resources.
    #
    #   * `READY`–ready to process.
    #
    #   * `ASSIGNED`–assigned and will run next on a worker.
    #
    #   * `SCHEDULED`–scheduled to run on a worker.
    #
    #   * `INTERRUPTING`–being interrupted.
    #
    #   * `RUNNING`–running on a worker.
    #
    #   * `SUSPENDED`–the task is suspended.
    #
    #   * `CANCELED`–the task has been canceled.
    #
    #   * `FAILED`–the task has failed.
    #
    #   * `SUCCEEDED`–the task has succeeded.
    #   @return [String]
    #
    # @!attribute [rw] task_run_status_counts
    #   The number of tasks running on the job.
    #   @return [Hash<String,Integer>]
    #
    # @!attribute [rw] target_task_run_status
    #   The task status to start with on the job.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user or system that created this resource.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time the resource was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The user or system that updated this resource.
    #   @return [String]
    #
    # @!attribute [rw] started_at
    #   The date and time the resource started running.
    #   @return [Time]
    #
    # @!attribute [rw] ended_at
    #   The date and time the resource ended running.
    #   @return [Time]
    #
    # @!attribute [rw] dependency_counts
    #   The number of dependencies for the step.
    #   @return [Types::DependencyCounts]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/StepSummary AWS API Documentation
    #
    class StepSummary < Struct.new(
      :step_id,
      :name,
      :lifecycle_status,
      :lifecycle_status_message,
      :task_run_status,
      :task_run_status_counts,
      :target_task_run_status,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      :started_at,
      :ended_at,
      :dependency_counts)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a storage profile.
    #
    # @!attribute [rw] storage_profile_id
    #   The storage profile ID.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the storage profile summary to update.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @!attribute [rw] os_family
    #   The operating system (OS) family.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/StorageProfileSummary AWS API Documentation
    #
    class StorageProfileSummary < Struct.new(
      :storage_profile_id,
      :display_name,
      :os_family)
      SENSITIVE = []
      include Aws::Structure
    end

    # Searches for a particular string.
    #
    # @!attribute [rw] name
    #   The field name to search.
    #   @return [String]
    #
    # @!attribute [rw] operator
    #   The type of comparison to use for this search.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The string to search for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/StringFilterExpression AWS API Documentation
    #
    class StringFilterExpression < Struct.new(
      :name,
      :operator,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The job attachment in a session action to sync.
    #
    # @!attribute [rw] step_id
    #   The step ID for the step in the job attachment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/SyncInputJobAttachmentsSessionActionDefinition AWS API Documentation
    #
    class SyncInputJobAttachmentsSessionActionDefinition < Struct.new(
      :step_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a synced job attachment.
    #
    # @!attribute [rw] step_id
    #   The step ID of the step in the job attachment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/SyncInputJobAttachmentsSessionActionDefinitionSummary AWS API Documentation
    #
    class SyncInputJobAttachmentsSessionActionDefinitionSummary < Struct.new(
      :step_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource to apply tags to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Each tag consists of a tag key and a tag value. Tag keys and values
    #   are both required, but tag values can be empty strings.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The data types for the task parameters.
    #
    # @note TaskParameterValue is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of TaskParameterValue corresponding to the set member.
    #
    # @!attribute [rw] int
    #   A signed integer represented as a string.
    #   @return [String]
    #
    # @!attribute [rw] float
    #   A double precision IEEE-754 floating point number represented as a
    #   string.
    #   @return [String]
    #
    # @!attribute [rw] string
    #   A UTF-8 string.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   A file system path represented as a string.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/TaskParameterValue AWS API Documentation
    #
    class TaskParameterValue < Struct.new(
      :int,
      :float,
      :string,
      :path,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Int < TaskParameterValue; end
      class Float < TaskParameterValue; end
      class String < TaskParameterValue; end
      class Path < TaskParameterValue; end
      class Unknown < TaskParameterValue; end
    end

    # The task, step, and parameters for the task run in the session action.
    #
    # @!attribute [rw] task_id
    #   The task ID.
    #   @return [String]
    #
    # @!attribute [rw] step_id
    #   The step ID.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The task parameters.
    #   @return [Hash<String,Types::TaskParameterValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/TaskRunSessionActionDefinition AWS API Documentation
    #
    class TaskRunSessionActionDefinition < Struct.new(
      :task_id,
      :step_id,
      :parameters)
      SENSITIVE = [:parameters]
      include Aws::Structure
    end

    # The details of a task run in a session action.
    #
    # @!attribute [rw] task_id
    #   The task ID.
    #   @return [String]
    #
    # @!attribute [rw] step_id
    #   The step ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/TaskRunSessionActionDefinitionSummary AWS API Documentation
    #
    class TaskRunSessionActionDefinitionSummary < Struct.new(
      :task_id,
      :step_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a task search.
    #
    # @!attribute [rw] task_id
    #   The task ID.
    #   @return [String]
    #
    # @!attribute [rw] step_id
    #   The step ID.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The job ID.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID.
    #   @return [String]
    #
    # @!attribute [rw] run_status
    #   The run status of the task.
    #   @return [String]
    #
    # @!attribute [rw] target_run_status
    #   The run status that the task is being updated to.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters to search for.
    #   @return [Hash<String,Types::TaskParameterValue>]
    #
    # @!attribute [rw] failure_retry_count
    #   The number of times that the task failed and was retried.
    #   @return [Integer]
    #
    # @!attribute [rw] started_at
    #   The date and time the resource started running.
    #   @return [Time]
    #
    # @!attribute [rw] ended_at
    #   The date and time the resource ended running.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/TaskSearchSummary AWS API Documentation
    #
    class TaskSearchSummary < Struct.new(
      :task_id,
      :step_id,
      :job_id,
      :queue_id,
      :run_status,
      :target_run_status,
      :parameters,
      :failure_retry_count,
      :started_at,
      :ended_at)
      SENSITIVE = [:parameters]
      include Aws::Structure
    end

    # The details of a task.
    #
    # @!attribute [rw] task_id
    #   The task ID.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user or system that created this resource.
    #   @return [String]
    #
    # @!attribute [rw] run_status
    #   The run status of the task.
    #   @return [String]
    #
    # @!attribute [rw] target_run_status
    #   The run status on which the started.
    #   @return [String]
    #
    # @!attribute [rw] failure_retry_count
    #   The number of times that the task failed and was retried.
    #   @return [Integer]
    #
    # @!attribute [rw] parameters
    #   The task parameters.
    #   @return [Hash<String,Types::TaskParameterValue>]
    #
    # @!attribute [rw] started_at
    #   The date and time the resource started running.
    #   @return [Time]
    #
    # @!attribute [rw] ended_at
    #   The date and time the resource ended running.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the resource was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The user or system that updated this resource.
    #   @return [String]
    #
    # @!attribute [rw] latest_session_action_id
    #   The latest session action for the task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/TaskSummary AWS API Documentation
    #
    class TaskSummary < Struct.new(
      :task_id,
      :created_at,
      :created_by,
      :run_status,
      :target_run_status,
      :failure_retry_count,
      :parameters,
      :started_at,
      :ended_at,
      :updated_at,
      :updated_by,
      :latest_session_action_id)
      SENSITIVE = [:parameters]
      include Aws::Structure
    end

    # Your request exceeded a request rate quota.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   Identifies the service that is being throttled.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   Identifies the quota that is being throttled.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds a client should wait before retrying the
    #   request.
    #   @return [Integer]
    #
    # @!attribute [rw] context
    #   Information about the resources in use when the exception was
    #   thrown.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds,
      :context)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource to remove the tag from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   They keys of the tag.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] client_token
    #   The unique token which the server uses to recognize retries of the
    #   same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] farm_id
    #   The farm ID of the budget to update.
    #   @return [String]
    #
    # @!attribute [rw] budget_id
    #   The budget ID to update.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the budget to update.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the budget to update.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Updates the status of the budget.
    #
    #   * `ACTIVE`–The budget is being evaluated.
    #
    #   * `INACTIVE`–The budget is inactive. This can include Expired,
    #     Canceled, or deleted Deleted statuses.
    #   @return [String]
    #
    # @!attribute [rw] approximate_dollar_limit
    #   The dollar limit to update on the budget. Based on consumed usage.
    #   @return [Float]
    #
    # @!attribute [rw] actions_to_add
    #   The budget actions to add. Budget actions specify what happens when
    #   the budget runs out.
    #   @return [Array<Types::BudgetActionToAdd>]
    #
    # @!attribute [rw] actions_to_remove
    #   The budget actions to remove from the budget.
    #   @return [Array<Types::BudgetActionToRemove>]
    #
    # @!attribute [rw] schedule
    #   The schedule to update.
    #   @return [Types::BudgetSchedule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateBudgetRequest AWS API Documentation
    #
    class UpdateBudgetRequest < Struct.new(
      :client_token,
      :farm_id,
      :budget_id,
      :display_name,
      :description,
      :status,
      :approximate_dollar_limit,
      :actions_to_add,
      :actions_to_remove,
      :schedule)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateBudgetResponse AWS API Documentation
    #
    class UpdateBudgetResponse < Aws::EmptyStructure; end

    # @!attribute [rw] farm_id
    #   The farm ID to update.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the farm to update.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the farm to update.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateFarmRequest AWS API Documentation
    #
    class UpdateFarmRequest < Struct.new(
      :farm_id,
      :display_name,
      :description)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateFarmResponse AWS API Documentation
    #
    class UpdateFarmResponse < Aws::EmptyStructure; end

    # @!attribute [rw] client_token
    #   The unique token which the server uses to recognize retries of the
    #   same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] farm_id
    #   The farm ID to update.
    #   @return [String]
    #
    # @!attribute [rw] fleet_id
    #   The fleet ID to update.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the fleet to update.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the fleet to update.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The IAM role ARN that the fleet's workers assume while running
    #   jobs.
    #   @return [String]
    #
    # @!attribute [rw] min_worker_count
    #   The minimum number of workers in the fleet.
    #   @return [Integer]
    #
    # @!attribute [rw] max_worker_count
    #   The maximum number of workers in the fleet.
    #   @return [Integer]
    #
    # @!attribute [rw] configuration
    #   The fleet configuration to update.
    #   @return [Types::FleetConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateFleetRequest AWS API Documentation
    #
    class UpdateFleetRequest < Struct.new(
      :client_token,
      :farm_id,
      :fleet_id,
      :display_name,
      :description,
      :role_arn,
      :min_worker_count,
      :max_worker_count,
      :configuration)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateFleetResponse AWS API Documentation
    #
    class UpdateFleetResponse < Aws::EmptyStructure; end

    # @!attribute [rw] client_token
    #   The unique token which the server uses to recognize retries of the
    #   same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] target_task_run_status
    #   The task status to update the job's tasks to.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The job priority to update.
    #   @return [Integer]
    #
    # @!attribute [rw] max_failed_tasks_count
    #   The number of task failures before the job stops running and is
    #   marked as `FAILED`.
    #   @return [Integer]
    #
    # @!attribute [rw] max_retries_per_task
    #   The maximum number of retries for a job.
    #   @return [Integer]
    #
    # @!attribute [rw] lifecycle_status
    #   The status of a job in its lifecycle. When you change the status of
    #   the job to `ARCHIVED`, the job can't be scheduled or archived.
    #
    #   An archived jobs and its steps and tasks are deleted after 120 days.
    #   The job can't be recovered.
    #   @return [String]
    #
    # @!attribute [rw] max_worker_count
    #   The maximum number of worker hosts that can concurrently process a
    #   job. When the `maxWorkerCount` is reached, no more workers will be
    #   assigned to process the job, even if the fleets assigned to the
    #   job's queue has available workers.
    #
    #   You can't set the `maxWorkerCount` to 0. If you set it to -1, there
    #   is no maximum number of workers.
    #
    #   If you don't specify the `maxWorkerCount`, the default is -1.
    #
    #   The maximum number of workers that can process tasks in the job.
    #   @return [Integer]
    #
    # @!attribute [rw] farm_id
    #   The farm ID of the job to update.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID of the job to update.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The job ID to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateJobRequest AWS API Documentation
    #
    class UpdateJobRequest < Struct.new(
      :client_token,
      :target_task_run_status,
      :priority,
      :max_failed_tasks_count,
      :max_retries_per_task,
      :lifecycle_status,
      :max_worker_count,
      :farm_id,
      :queue_id,
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateJobResponse AWS API Documentation
    #
    class UpdateJobResponse < Aws::EmptyStructure; end

    # @!attribute [rw] farm_id
    #   The unique identifier of the farm that contains the limit.
    #   @return [String]
    #
    # @!attribute [rw] limit_id
    #   The unique identifier of the limit to update.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The new display name of the limit.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The new description of the limit.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @!attribute [rw] max_count
    #   The maximum number of resources constrained by this limit. When all
    #   of the resources are in use, steps that require the limit won't be
    #   scheduled until the resource is available.
    #
    #   If more than the new maximum number is currently in use, running
    #   jobs finish but no new jobs are started until the number of
    #   resources in use is below the new maximum number.
    #
    #   The `maxCount` must not be 0. If the value is -1, there is no
    #   restriction on the number of resources that can be acquired for this
    #   limit.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateLimitRequest AWS API Documentation
    #
    class UpdateLimitRequest < Struct.new(
      :farm_id,
      :limit_id,
      :display_name,
      :description,
      :max_count)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateLimitResponse AWS API Documentation
    #
    class UpdateLimitResponse < Aws::EmptyStructure; end

    # @!attribute [rw] monitor_id
    #   The unique identifier of the monitor to update.
    #   @return [String]
    #
    # @!attribute [rw] subdomain
    #   The new value of the subdomain to use when forming the monitor URL.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The new value to use for the monitor's display name.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the new IAM role to use with the
    #   monitor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateMonitorRequest AWS API Documentation
    #
    class UpdateMonitorRequest < Struct.new(
      :monitor_id,
      :subdomain,
      :display_name,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateMonitorResponse AWS API Documentation
    #
    class UpdateMonitorResponse < Aws::EmptyStructure; end

    # @!attribute [rw] client_token
    #   The unique token which the server uses to recognize retries of the
    #   same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] farm_id
    #   The farm ID of the queue environment to update.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID of the queue environment to update.
    #   @return [String]
    #
    # @!attribute [rw] queue_environment_id
    #   The queue environment ID to update.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority to update.
    #   @return [Integer]
    #
    # @!attribute [rw] template_type
    #   The template type to update.
    #   @return [String]
    #
    # @!attribute [rw] template
    #   The template to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateQueueEnvironmentRequest AWS API Documentation
    #
    class UpdateQueueEnvironmentRequest < Struct.new(
      :client_token,
      :farm_id,
      :queue_id,
      :queue_environment_id,
      :priority,
      :template_type,
      :template)
      SENSITIVE = [:template]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateQueueEnvironmentResponse AWS API Documentation
    #
    class UpdateQueueEnvironmentResponse < Aws::EmptyStructure; end

    # @!attribute [rw] farm_id
    #   The farm ID to update.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID to update.
    #   @return [String]
    #
    # @!attribute [rw] fleet_id
    #   The fleet ID to update.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateQueueFleetAssociationRequest AWS API Documentation
    #
    class UpdateQueueFleetAssociationRequest < Struct.new(
      :farm_id,
      :queue_id,
      :fleet_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateQueueFleetAssociationResponse AWS API Documentation
    #
    class UpdateQueueFleetAssociationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] farm_id
    #   The unique identifier of the farm that contains the associated
    #   queues and limits.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The unique identifier of the queue associated to the limit.
    #   @return [String]
    #
    # @!attribute [rw] limit_id
    #   The unique identifier of the limit associated to the queue.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Sets the status of the limit. You can mark the limit active, or you
    #   can stop usage of the limit and either complete existing tasks or
    #   cancel any existing tasks immediately.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateQueueLimitAssociationRequest AWS API Documentation
    #
    class UpdateQueueLimitAssociationRequest < Struct.new(
      :farm_id,
      :queue_id,
      :limit_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateQueueLimitAssociationResponse AWS API Documentation
    #
    class UpdateQueueLimitAssociationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] client_token
    #   The idempotency token to update in the queue.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] farm_id
    #   The farm ID to update in the queue.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID to update.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the queue to update.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the queue to update.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @!attribute [rw] default_budget_action
    #   The default action to take for a queue update if a budget isn't
    #   configured.
    #   @return [String]
    #
    # @!attribute [rw] job_attachment_settings
    #   The job attachment settings to update for the queue.
    #   @return [Types::JobAttachmentSettings]
    #
    # @!attribute [rw] role_arn
    #   The IAM role ARN that's used to run jobs from this queue.
    #   @return [String]
    #
    # @!attribute [rw] job_run_as_user
    #   Update the jobs in the queue to run as a specified POSIX user.
    #   @return [Types::JobRunAsUser]
    #
    # @!attribute [rw] required_file_system_location_names_to_add
    #   The required file system location names to add to the queue.
    #   @return [Array<String>]
    #
    # @!attribute [rw] required_file_system_location_names_to_remove
    #   The required file system location names to remove from the queue.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allowed_storage_profile_ids_to_add
    #   The storage profile IDs to add.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allowed_storage_profile_ids_to_remove
    #   The storage profile ID to remove.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateQueueRequest AWS API Documentation
    #
    class UpdateQueueRequest < Struct.new(
      :client_token,
      :farm_id,
      :queue_id,
      :display_name,
      :description,
      :default_budget_action,
      :job_attachment_settings,
      :role_arn,
      :job_run_as_user,
      :required_file_system_location_names_to_add,
      :required_file_system_location_names_to_remove,
      :allowed_storage_profile_ids_to_add,
      :allowed_storage_profile_ids_to_remove)
      SENSITIVE = [:description, :required_file_system_location_names_to_add, :required_file_system_location_names_to_remove]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateQueueResponse AWS API Documentation
    #
    class UpdateQueueResponse < Aws::EmptyStructure; end

    # @!attribute [rw] client_token
    #   The unique token which the server uses to recognize retries of the
    #   same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] target_lifecycle_status
    #   The life cycle status to update in the session.
    #   @return [String]
    #
    # @!attribute [rw] farm_id
    #   The farm ID to update in the session.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID to update in the session.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The job ID to update in the session.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The session ID to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateSessionRequest AWS API Documentation
    #
    class UpdateSessionRequest < Struct.new(
      :client_token,
      :target_lifecycle_status,
      :farm_id,
      :queue_id,
      :job_id,
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateSessionResponse AWS API Documentation
    #
    class UpdateSessionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] target_task_run_status
    #   The task status to update the step's tasks to.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The unique token which the server uses to recognize retries of the
    #   same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] farm_id
    #   The farm ID to update.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID to update.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The job ID to update.
    #   @return [String]
    #
    # @!attribute [rw] step_id
    #   The step ID to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateStepRequest AWS API Documentation
    #
    class UpdateStepRequest < Struct.new(
      :target_task_run_status,
      :client_token,
      :farm_id,
      :queue_id,
      :job_id,
      :step_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateStepResponse AWS API Documentation
    #
    class UpdateStepResponse < Aws::EmptyStructure; end

    # @!attribute [rw] client_token
    #   The unique token which the server uses to recognize retries of the
    #   same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] farm_id
    #   The farm ID to update.
    #   @return [String]
    #
    # @!attribute [rw] storage_profile_id
    #   The storage profile ID to update.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the storage profile to update.
    #
    #   This field can store any content. Escape or encode this content
    #   before displaying it on a webpage or any other system that might
    #   interpret the content of this field.
    #   @return [String]
    #
    # @!attribute [rw] os_family
    #   The OS system to update.
    #   @return [String]
    #
    # @!attribute [rw] file_system_locations_to_add
    #   The file system location names to add.
    #   @return [Array<Types::FileSystemLocation>]
    #
    # @!attribute [rw] file_system_locations_to_remove
    #   The file system location names to remove.
    #   @return [Array<Types::FileSystemLocation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateStorageProfileRequest AWS API Documentation
    #
    class UpdateStorageProfileRequest < Struct.new(
      :client_token,
      :farm_id,
      :storage_profile_id,
      :display_name,
      :os_family,
      :file_system_locations_to_add,
      :file_system_locations_to_remove)
      SENSITIVE = [:file_system_locations_to_add, :file_system_locations_to_remove]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateStorageProfileResponse AWS API Documentation
    #
    class UpdateStorageProfileResponse < Aws::EmptyStructure; end

    # @!attribute [rw] client_token
    #   The unique token which the server uses to recognize retries of the
    #   same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] target_run_status
    #   The run status with which to start the task.
    #   @return [String]
    #
    # @!attribute [rw] farm_id
    #   The farm ID to update.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID to update.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The job ID to update.
    #   @return [String]
    #
    # @!attribute [rw] step_id
    #   The step ID to update.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   The task ID to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateTaskRequest AWS API Documentation
    #
    class UpdateTaskRequest < Struct.new(
      :client_token,
      :target_run_status,
      :farm_id,
      :queue_id,
      :job_id,
      :step_id,
      :task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateTaskResponse AWS API Documentation
    #
    class UpdateTaskResponse < Aws::EmptyStructure; end

    # @!attribute [rw] farm_id
    #   The farm ID to update.
    #   @return [String]
    #
    # @!attribute [rw] fleet_id
    #   The fleet ID to update.
    #   @return [String]
    #
    # @!attribute [rw] worker_id
    #   The worker ID to update.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The worker status to update.
    #   @return [String]
    #
    # @!attribute [rw] capabilities
    #   The worker capabilities to update.
    #   @return [Types::WorkerCapabilities]
    #
    # @!attribute [rw] host_properties
    #   The host properties to update.
    #   @return [Types::HostPropertiesRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateWorkerRequest AWS API Documentation
    #
    class UpdateWorkerRequest < Struct.new(
      :farm_id,
      :fleet_id,
      :worker_id,
      :status,
      :capabilities,
      :host_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log
    #   The worker log to update.
    #   @return [Types::LogConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateWorkerResponse AWS API Documentation
    #
    class UpdateWorkerResponse < Struct.new(
      :log)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] farm_id
    #   The farm ID to update.
    #   @return [String]
    #
    # @!attribute [rw] fleet_id
    #   The fleet ID to update.
    #   @return [String]
    #
    # @!attribute [rw] worker_id
    #   The worker ID to update.
    #   @return [String]
    #
    # @!attribute [rw] updated_session_actions
    #   The session actions associated with the worker schedule to update.
    #   @return [Hash<String,Types::UpdatedSessionActionInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateWorkerScheduleRequest AWS API Documentation
    #
    class UpdateWorkerScheduleRequest < Struct.new(
      :farm_id,
      :fleet_id,
      :worker_id,
      :updated_session_actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assigned_sessions
    #   The assigned sessions to update.
    #   @return [Hash<String,Types::AssignedSession>]
    #
    # @!attribute [rw] cancel_session_actions
    #   The session actions associated with the worker schedule to cancel.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] desired_worker_status
    #   The status to update the worker to.
    #   @return [String]
    #
    # @!attribute [rw] update_interval_seconds
    #   Updates the time interval (in seconds) for the schedule.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateWorkerScheduleResponse AWS API Documentation
    #
    class UpdateWorkerScheduleResponse < Struct.new(
      :assigned_sessions,
      :cancel_session_actions,
      :desired_worker_status,
      :update_interval_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # The updated session action information as it relates to completion and
    # progress of the session.
    #
    # @!attribute [rw] completed_status
    #   The status of the session upon completion.
    #   @return [String]
    #
    # @!attribute [rw] process_exit_code
    #   The process exit code.
    #   @return [Integer]
    #
    # @!attribute [rw] progress_message
    #   A message to indicate the progress of the updated session action.
    #   @return [String]
    #
    # @!attribute [rw] started_at
    #   The date and time the resource started running.
    #   @return [Time]
    #
    # @!attribute [rw] ended_at
    #   The date and time the resource ended running.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The updated time.
    #   @return [Time]
    #
    # @!attribute [rw] progress_percent
    #   The percentage completed.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdatedSessionActionInfo AWS API Documentation
    #
    class UpdatedSessionActionInfo < Struct.new(
      :completed_status,
      :process_exit_code,
      :progress_message,
      :started_at,
      :ended_at,
      :updated_at,
      :progress_percent)
      SENSITIVE = [:progress_message]
      include Aws::Structure
    end

    # The usage details of the allotted budget.
    #
    # @note UsageTrackingResource is a union - when making an API calls you must set exactly one of the members.
    #
    # @note UsageTrackingResource is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of UsageTrackingResource corresponding to the set member.
    #
    # @!attribute [rw] queue_id
    #   The queue ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UsageTrackingResource AWS API Documentation
    #
    class UsageTrackingResource < Struct.new(
      :queue_id,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class QueueId < UsageTrackingResource; end
      class Unknown < UsageTrackingResource; end
    end

    # Allows setting a specific user's job to run first.
    #
    # @!attribute [rw] user_identity_id
    #   The user's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UserJobsFirst AWS API Documentation
    #
    class UserJobsFirst < Struct.new(
      :user_identity_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The allowable range of vCPU processing power for the fleet.
    #
    # @!attribute [rw] min
    #   The minimum amount of vCPU.
    #   @return [Integer]
    #
    # @!attribute [rw] max
    #   The maximum amount of vCPU.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/VCpuCountRange AWS API Documentation
    #
    class VCpuCountRange < Struct.new(
      :min,
      :max)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request isn't valid. This can occur if your request contains
    # malformed JSON or unsupported characters.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason that the request failed validation.
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   A list of fields that failed validation.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @!attribute [rw] context
    #   Information about the resources in use when the exception was
    #   thrown.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list,
      :context)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a validation exception.
    #
    # @!attribute [rw] name
    #   The name of the validation exception.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The error message for the validation exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Windows user details.
    #
    # @!attribute [rw] user
    #   The user.
    #   @return [String]
    #
    # @!attribute [rw] password_arn
    #   The password ARN for the Windows user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/WindowsUser AWS API Documentation
    #
    class WindowsUser < Struct.new(
      :user,
      :password_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the worker amount capability.
    #
    # @!attribute [rw] name
    #   The name of the worker amount capability.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the worker amount capability.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/WorkerAmountCapability AWS API Documentation
    #
    class WorkerAmountCapability < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the worker attribute capability.
    #
    # @!attribute [rw] name
    #   The name of the worker attribute capability.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values of the worker amount capability.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/WorkerAttributeCapability AWS API Documentation
    #
    class WorkerAttributeCapability < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details for worker capabilities.
    #
    # @!attribute [rw] amounts
    #   The worker capabilities amounts on a list of worker capabilities.
    #   @return [Array<Types::WorkerAmountCapability>]
    #
    # @!attribute [rw] attributes
    #   The worker attribute capabilities in the list of attribute
    #   capabilities.
    #   @return [Array<Types::WorkerAttributeCapability>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/WorkerCapabilities AWS API Documentation
    #
    class WorkerCapabilities < Struct.new(
      :amounts,
      :attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a worker search.
    #
    # @!attribute [rw] fleet_id
    #   The fleet ID.
    #   @return [String]
    #
    # @!attribute [rw] worker_id
    #   The worker ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the worker search.
    #   @return [String]
    #
    # @!attribute [rw] host_properties
    #   Provides the Amazon EC2 instance properties of the worker host.
    #   @return [Types::HostPropertiesResponse]
    #
    # @!attribute [rw] created_by
    #   The user or system that created this resource.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The user or system that updated this resource.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time the resource was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/WorkerSearchSummary AWS API Documentation
    #
    class WorkerSearchSummary < Struct.new(
      :fleet_id,
      :worker_id,
      :status,
      :host_properties,
      :created_by,
      :created_at,
      :updated_by,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summarizes the session for a particular worker.
    #
    # @!attribute [rw] session_id
    #   The session ID for the session action.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue ID for the queue associated to the worker.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The job ID for the job associated with the worker's session.
    #   @return [String]
    #
    # @!attribute [rw] started_at
    #   The date and time the resource started running.
    #   @return [Time]
    #
    # @!attribute [rw] lifecycle_status
    #   The life cycle status for the worker's session.
    #   @return [String]
    #
    # @!attribute [rw] ended_at
    #   The date and time the resource ended running.
    #   @return [Time]
    #
    # @!attribute [rw] target_lifecycle_status
    #   The life cycle status
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/WorkerSessionSummary AWS API Documentation
    #
    class WorkerSessionSummary < Struct.new(
      :session_id,
      :queue_id,
      :job_id,
      :started_at,
      :lifecycle_status,
      :ended_at,
      :target_lifecycle_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of details for a worker.
    #
    # @!attribute [rw] worker_id
    #   The worker ID.
    #   @return [String]
    #
    # @!attribute [rw] farm_id
    #   The farm ID.
    #   @return [String]
    #
    # @!attribute [rw] fleet_id
    #   The fleet ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the worker.
    #   @return [String]
    #
    # @!attribute [rw] host_properties
    #   The host properties of the worker.
    #   @return [Types::HostPropertiesResponse]
    #
    # @!attribute [rw] log
    #   The log configuration for the worker.
    #   @return [Types::LogConfiguration]
    #
    # @!attribute [rw] created_at
    #   The date and time the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user or system that created this resource.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time the resource was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The user or system that updated this resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/WorkerSummary AWS API Documentation
    #
    class WorkerSummary < Struct.new(
      :worker_id,
      :farm_id,
      :fleet_id,
      :status,
      :host_properties,
      :log,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

