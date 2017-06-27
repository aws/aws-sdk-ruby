# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SSM
  module Types

    # An activation registers one or more on-premises servers or virtual
    # machines (VMs) with AWS so that you can configure those servers or VMs
    # using Run Command. A server or VM that has been registered with AWS is
    # called a managed instance.
    #
    # @!attribute [rw] activation_id
    #   The ID created by Systems Manager when you submitted the activation.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A user defined description of the activation.
    #   @return [String]
    #
    # @!attribute [rw] default_instance_name
    #   A name for the managed instance when it is created.
    #   @return [String]
    #
    # @!attribute [rw] iam_role
    #   The Amazon Identity and Access Management (IAM) role to assign to
    #   the managed instance.
    #   @return [String]
    #
    # @!attribute [rw] registration_limit
    #   The maximum number of managed instances that can be registered using
    #   this activation.
    #   @return [Integer]
    #
    # @!attribute [rw] registrations_count
    #   The number of managed instances already registered with this
    #   activation.
    #   @return [Integer]
    #
    # @!attribute [rw] expiration_date
    #   The date when this activation can no longer be used to register
    #   managed instances.
    #   @return [Time]
    #
    # @!attribute [rw] expired
    #   Whether or not the activation is expired.
    #   @return [Boolean]
    #
    # @!attribute [rw] created_date
    #   The date the activation was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/Activation AWS API Documentation
    #
    class Activation < Struct.new(
      :activation_id,
      :description,
      :default_instance_name,
      :iam_role,
      :registration_limit,
      :registrations_count,
      :expiration_date,
      :expired,
      :created_date)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AddTagsToResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_type: "ManagedInstance", # required, accepts ManagedInstance, MaintenanceWindow, Parameter
    #         resource_id: "ResourceId", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_type
    #   Specifies the type of resource you are tagging.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The resource ID you want to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   One or more tags. The value parameter is required, but if you don't
    #   want the tag to have a value, specify the parameter with no value,
    #   and we set the value to an empty string.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AddTagsToResourceRequest AWS API Documentation
    #
    class AddTagsToResourceRequest < Struct.new(
      :resource_type,
      :resource_id,
      :tags)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AddTagsToResourceResult AWS API Documentation
    #
    class AddTagsToResourceResult < Aws::EmptyStructure; end

    # Describes an association of a Systems Manager document and an
    # instance.
    #
    # @!attribute [rw] name
    #   The name of the SSM document.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance.
    #   @return [String]
    #
    # @!attribute [rw] association_id
    #   The ID created by the system when you create an association. An
    #   association is a binding between a document and a set of targets
    #   with a schedule.
    #   @return [String]
    #
    # @!attribute [rw] document_version
    #   The version of the document used in the association.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The instances targeted by the request to create an association.
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] last_execution_date
    #   The date on which the association was last run.
    #   @return [Time]
    #
    # @!attribute [rw] overview
    #   Information about the association.
    #   @return [Types::AssociationOverview]
    #
    # @!attribute [rw] schedule_expression
    #   A cron expression that specifies a schedule when the association
    #   runs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/Association AWS API Documentation
    #
    class Association < Struct.new(
      :name,
      :instance_id,
      :association_id,
      :document_version,
      :targets,
      :last_execution_date,
      :overview,
      :schedule_expression)
      include Aws::Structure
    end

    # Describes the parameters for a document.
    #
    # @!attribute [rw] name
    #   The name of the SSM document.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance.
    #   @return [String]
    #
    # @!attribute [rw] date
    #   The date when the association was made.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_association_date
    #   The date when the association was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The association status.
    #   @return [Types::AssociationStatus]
    #
    # @!attribute [rw] overview
    #   Information about the association.
    #   @return [Types::AssociationOverview]
    #
    # @!attribute [rw] document_version
    #   The document version.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A description of the parameters for a document.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] association_id
    #   The association ID.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The instances targeted by the request.
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] schedule_expression
    #   A cron expression that specifies a schedule when the association
    #   runs.
    #   @return [String]
    #
    # @!attribute [rw] output_location
    #   An Amazon S3 bucket where you want to store the output details of
    #   the request.
    #   @return [Types::InstanceAssociationOutputLocation]
    #
    # @!attribute [rw] last_execution_date
    #   The date on which the association was last run.
    #   @return [Time]
    #
    # @!attribute [rw] last_successful_execution_date
    #   The last date on which the association was successfully run.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AssociationDescription AWS API Documentation
    #
    class AssociationDescription < Struct.new(
      :name,
      :instance_id,
      :date,
      :last_update_association_date,
      :status,
      :overview,
      :document_version,
      :parameters,
      :association_id,
      :targets,
      :schedule_expression,
      :output_location,
      :last_execution_date,
      :last_successful_execution_date)
      include Aws::Structure
    end

    # Describes a filter.
    #
    # @note When making an API call, you may pass AssociationFilter
    #   data as a hash:
    #
    #       {
    #         key: "InstanceId", # required, accepts InstanceId, Name, AssociationId, AssociationStatusName, LastExecutedBefore, LastExecutedAfter
    #         value: "AssociationFilterValue", # required
    #       }
    #
    # @!attribute [rw] key
    #   The name of the filter.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The filter value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AssociationFilter AWS API Documentation
    #
    class AssociationFilter < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # Information about the association.
    #
    # @!attribute [rw] status
    #   The status of the association. Status can be: Pending, Success, or
    #   Failed.
    #   @return [String]
    #
    # @!attribute [rw] detailed_status
    #   A detailed status of the association.
    #   @return [String]
    #
    # @!attribute [rw] association_status_aggregated_count
    #   Returns the number of targets for the association status. For
    #   example, if you created an association with two instances, and one
    #   of them was successful, this would return the count of instances by
    #   status.
    #   @return [Hash<String,Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AssociationOverview AWS API Documentation
    #
    class AssociationOverview < Struct.new(
      :status,
      :detailed_status,
      :association_status_aggregated_count)
      include Aws::Structure
    end

    # Describes an association status.
    #
    # @note When making an API call, you may pass AssociationStatus
    #   data as a hash:
    #
    #       {
    #         date: Time.now, # required
    #         name: "Pending", # required, accepts Pending, Success, Failed
    #         message: "StatusMessage", # required
    #         additional_info: "StatusAdditionalInfo",
    #       }
    #
    # @!attribute [rw] date
    #   The date when the status changed.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The status.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The reason for the status.
    #   @return [String]
    #
    # @!attribute [rw] additional_info
    #   A user-defined string.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AssociationStatus AWS API Documentation
    #
    class AssociationStatus < Struct.new(
      :date,
      :name,
      :message,
      :additional_info)
      include Aws::Structure
    end

    # Detailed information about the current state of an individual
    # Automation execution.
    #
    # @!attribute [rw] automation_execution_id
    #   The execution ID.
    #   @return [String]
    #
    # @!attribute [rw] document_name
    #   The name of the Automation document used during the execution.
    #   @return [String]
    #
    # @!attribute [rw] document_version
    #   The version of the document to use during execution.
    #   @return [String]
    #
    # @!attribute [rw] execution_start_time
    #   The time the execution started.
    #   @return [Time]
    #
    # @!attribute [rw] execution_end_time
    #   The time the execution finished.
    #   @return [Time]
    #
    # @!attribute [rw] automation_execution_status
    #   The execution status of the Automation.
    #   @return [String]
    #
    # @!attribute [rw] step_executions
    #   A list of details about the current state of all steps that comprise
    #   an execution. An Automation document contains a list of steps that
    #   are executed in order.
    #   @return [Array<Types::StepExecution>]
    #
    # @!attribute [rw] parameters
    #   The key-value map of execution parameters, which were supplied when
    #   calling StartAutomationExecution.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] outputs
    #   The list of execution outputs as defined in the automation document.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] failure_message
    #   A message describing why an execution has failed, if the status is
    #   set to Failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AutomationExecution AWS API Documentation
    #
    class AutomationExecution < Struct.new(
      :automation_execution_id,
      :document_name,
      :document_version,
      :execution_start_time,
      :execution_end_time,
      :automation_execution_status,
      :step_executions,
      :parameters,
      :outputs,
      :failure_message)
      include Aws::Structure
    end

    # A filter used to match specific automation executions. This is used to
    # limit the scope of Automation execution information returned.
    #
    # @note When making an API call, you may pass AutomationExecutionFilter
    #   data as a hash:
    #
    #       {
    #         key: "DocumentNamePrefix", # required, accepts DocumentNamePrefix, ExecutionStatus
    #         values: ["AutomationExecutionFilterValue"], # required
    #       }
    #
    # @!attribute [rw] key
    #   The aspect of the Automation execution information that should be
    #   limited.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values used to limit the execution information associated with
    #   the filter's key.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AutomationExecutionFilter AWS API Documentation
    #
    class AutomationExecutionFilter < Struct.new(
      :key,
      :values)
      include Aws::Structure
    end

    # Details about a specific Automation execution.
    #
    # @!attribute [rw] automation_execution_id
    #   The execution ID.
    #   @return [String]
    #
    # @!attribute [rw] document_name
    #   The name of the Automation document used during execution.
    #   @return [String]
    #
    # @!attribute [rw] document_version
    #   The document version used during the execution.
    #   @return [String]
    #
    # @!attribute [rw] automation_execution_status
    #   The status of the execution. Valid values include: Running,
    #   Succeeded, Failed, Timed out, or Cancelled.
    #   @return [String]
    #
    # @!attribute [rw] execution_start_time
    #   The time the execution started.&gt;
    #   @return [Time]
    #
    # @!attribute [rw] execution_end_time
    #   The time the execution finished. This is not populated if the
    #   execution is still in progress.
    #   @return [Time]
    #
    # @!attribute [rw] executed_by
    #   The IAM role ARN of the user who executed the Automation.
    #   @return [String]
    #
    # @!attribute [rw] log_file
    #   An Amazon S3 bucket where execution information is stored.
    #   @return [String]
    #
    # @!attribute [rw] outputs
    #   The list of execution outputs as defined in the Automation document.
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AutomationExecutionMetadata AWS API Documentation
    #
    class AutomationExecutionMetadata < Struct.new(
      :automation_execution_id,
      :document_name,
      :document_version,
      :automation_execution_status,
      :execution_start_time,
      :execution_end_time,
      :executed_by,
      :log_file,
      :outputs)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CancelCommandRequest
    #   data as a hash:
    #
    #       {
    #         command_id: "CommandId", # required
    #         instance_ids: ["InstanceId"],
    #       }
    #
    # @!attribute [rw] command_id
    #   The ID of the command you want to cancel.
    #   @return [String]
    #
    # @!attribute [rw] instance_ids
    #   (Optional) A list of instance IDs on which you want to cancel the
    #   command. If not provided, the command is canceled on every instance
    #   on which it was requested.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CancelCommandRequest AWS API Documentation
    #
    class CancelCommandRequest < Struct.new(
      :command_id,
      :instance_ids)
      include Aws::Structure
    end

    # Whether or not the command was successfully canceled. There is no
    # guarantee that a request can be canceled.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CancelCommandResult AWS API Documentation
    #
    class CancelCommandResult < Aws::EmptyStructure; end

    # Describes a command request.
    #
    # @!attribute [rw] command_id
    #   A unique identifier for this command.
    #   @return [String]
    #
    # @!attribute [rw] document_name
    #   The name of the document requested for execution.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   User-specified information about the command, such as a brief
    #   description of what the command should do.
    #   @return [String]
    #
    # @!attribute [rw] expires_after
    #   If this time is reached and the command has not already started
    #   executing, it will not execute. Calculated based on the ExpiresAfter
    #   user input provided as part of the SendCommand API.
    #   @return [Time]
    #
    # @!attribute [rw] parameters
    #   The parameter values to be inserted in the document when executing
    #   the command.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] instance_ids
    #   The instance IDs against which this command was requested.
    #   @return [Array<String>]
    #
    # @!attribute [rw] targets
    #   An array of search criteria that targets instances using a Key,Value
    #   combination that you specify. Targets is required if you don't
    #   provide one or more instance IDs in the call.
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] requested_date_time
    #   The date and time the command was requested.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the command.
    #   @return [String]
    #
    # @!attribute [rw] status_details
    #   A detailed status of the command execution. StatusDetails includes
    #   more information than Status because it includes states resulting
    #   from error and concurrency control parameters. StatusDetails can
    #   show different results than Status. For more information about these
    #   statuses, see [Run Command Status][1]. StatusDetails can be one of
    #   the following values:
    #
    #   * Pending: The command has not been sent to any instances.
    #
    #   * In Progress: The command has been sent to at least one instance
    #     but has not reached a final state on all instances.
    #
    #   * Success: The command successfully executed on all invocations.
    #     This is a terminal state.
    #
    #   * Delivery Timed Out: The value of MaxErrors or more command
    #     invocations shows a status of Delivery Timed Out. This is a
    #     terminal state.
    #
    #   * Execution Timed Out: The value of MaxErrors or more command
    #     invocations shows a status of Execution Timed Out. This is a
    #     terminal state.
    #
    #   * Failed: The value of MaxErrors or more command invocations shows a
    #     status of Failed. This is a terminal state.
    #
    #   * Incomplete: The command was attempted on all instances and one or
    #     more invocations does not have a value of Success but not enough
    #     invocations failed for the status to be Failed. This is a terminal
    #     state.
    #
    #   * Canceled: The command was terminated before it was completed. This
    #     is a terminal state.
    #
    #   * Rate Exceeded: The number of instances targeted by the command
    #     exceeded the account limit for pending invocations. The system has
    #     canceled the command before executing it on any instance. This is
    #     a terminal state.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-about-status.html
    #   @return [String]
    #
    # @!attribute [rw] output_s3_region
    #   (Deprecated) You can no longer specify this parameter. The system
    #   ignores it. Instead, Systems Manager automatically determines the
    #   Amazon S3 bucket region.
    #   @return [String]
    #
    # @!attribute [rw] output_s3_bucket_name
    #   The S3 bucket where the responses to the command executions should
    #   be stored. This was requested when issuing the command.
    #   @return [String]
    #
    # @!attribute [rw] output_s3_key_prefix
    #   The S3 directory path inside the bucket where the responses to the
    #   command executions should be stored. This was requested when issuing
    #   the command.
    #   @return [String]
    #
    # @!attribute [rw] max_concurrency
    #   The maximum number of instances that are allowed to execute the
    #   command at the same time. You can specify a number of instances,
    #   such as 10, or a percentage of instances, such as 10%. The default
    #   value is 50. For more information about how to use MaxConcurrency,
    #   see [Executing a Command Using Systems Manager Run Command][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/run-command.html
    #   @return [String]
    #
    # @!attribute [rw] max_errors
    #   The maximum number of errors allowed before the system stops sending
    #   the command to additional targets. You can specify a number of
    #   errors, such as 10, or a percentage or errors, such as 10%. The
    #   default value is 50. For more information about how to use
    #   MaxErrors, see [Executing a Command Using Systems Manager Run
    #   Command][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/run-command.html
    #   @return [String]
    #
    # @!attribute [rw] target_count
    #   The number of targets for the command.
    #   @return [Integer]
    #
    # @!attribute [rw] completed_count
    #   The number of targets for which the command invocation reached a
    #   terminal state. Terminal states include the following: Success,
    #   Failed, Execution Timed Out, Delivery Timed Out, Canceled,
    #   Terminated, or Undeliverable.
    #   @return [Integer]
    #
    # @!attribute [rw] error_count
    #   The number of targets for which the status is Failed or Execution
    #   Timed Out.
    #   @return [Integer]
    #
    # @!attribute [rw] service_role
    #   The IAM service role that Run Command uses to act on your behalf
    #   when sending notifications about command status changes.
    #   @return [String]
    #
    # @!attribute [rw] notification_config
    #   Configurations for sending notifications about command status
    #   changes.
    #   @return [Types::NotificationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/Command AWS API Documentation
    #
    class Command < Struct.new(
      :command_id,
      :document_name,
      :comment,
      :expires_after,
      :parameters,
      :instance_ids,
      :targets,
      :requested_date_time,
      :status,
      :status_details,
      :output_s3_region,
      :output_s3_bucket_name,
      :output_s3_key_prefix,
      :max_concurrency,
      :max_errors,
      :target_count,
      :completed_count,
      :error_count,
      :service_role,
      :notification_config)
      include Aws::Structure
    end

    # Describes a command filter.
    #
    # @note When making an API call, you may pass CommandFilter
    #   data as a hash:
    #
    #       {
    #         key: "InvokedAfter", # required, accepts InvokedAfter, InvokedBefore, Status
    #         value: "CommandFilterValue", # required
    #       }
    #
    # @!attribute [rw] key
    #   The name of the filter.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The filter value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CommandFilter AWS API Documentation
    #
    class CommandFilter < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # An invocation is copy of a command sent to a specific instance. A
    # command can apply to one or more instances. A command invocation
    # applies to one instance. For example, if a user executes SendCommand
    # against three instances, then a command invocation is created for each
    # requested instance ID. A command invocation returns status and detail
    # information about a command you executed.
    #
    # @!attribute [rw] command_id
    #   The command against which this invocation was requested.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The instance ID in which this invocation was requested.
    #   @return [String]
    #
    # @!attribute [rw] instance_name
    #   The name of the invocation target. For Amazon EC2 instances this is
    #   the value for the aws:Name tag. For on-premises instances, this is
    #   the name of the instance.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   User-specified information about the command, such as a brief
    #   description of what the command should do.
    #   @return [String]
    #
    # @!attribute [rw] document_name
    #   The document name that was requested for execution.
    #   @return [String]
    #
    # @!attribute [rw] requested_date_time
    #   The time and date the request was sent to this instance.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   Whether or not the invocation succeeded, failed, or is pending.
    #   @return [String]
    #
    # @!attribute [rw] status_details
    #   A detailed status of the command execution for each invocation (each
    #   instance targeted by the command). StatusDetails includes more
    #   information than Status because it includes states resulting from
    #   error and concurrency control parameters. StatusDetails can show
    #   different results than Status. For more information about these
    #   statuses, see [Run Command Status][1]. StatusDetails can be one of
    #   the following values:
    #
    #   * Pending: The command has not been sent to the instance.
    #
    #   * In Progress: The command has been sent to the instance but has not
    #     reached a terminal state.
    #
    #   * Success: The execution of the command or plugin was successfully
    #     completed. This is a terminal state.
    #
    #   * Delivery Timed Out: The command was not delivered to the instance
    #     before the delivery timeout expired. Delivery timeouts do not
    #     count against the parent command's MaxErrors limit, but they do
    #     contribute to whether the parent command status is Success or
    #     Incomplete. This is a terminal state.
    #
    #   * Execution Timed Out: Command execution started on the instance,
    #     but the execution was not complete before the execution timeout
    #     expired. Execution timeouts count against the MaxErrors limit of
    #     the parent command. This is a terminal state.
    #
    #   * Failed: The command was not successful on the instance. For a
    #     plugin, this indicates that the result code was not zero. For a
    #     command invocation, this indicates that the result code for one or
    #     more plugins was not zero. Invocation failures count against the
    #     MaxErrors limit of the parent command. This is a terminal state.
    #
    #   * Canceled: The command was terminated before it was completed. This
    #     is a terminal state.
    #
    #   * Undeliverable: The command can't be delivered to the instance.
    #     The instance might not exist or might not be responding.
    #     Undeliverable invocations don't count against the parent
    #     command's MaxErrors limit and don't contribute to whether the
    #     parent command status is Success or Incomplete. This is a terminal
    #     state.
    #
    #   * Terminated: The parent command exceeded its MaxErrors limit and
    #     subsequent command invocations were canceled by the system. This
    #     is a terminal state.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-about-status.html
    #   @return [String]
    #
    # @!attribute [rw] trace_output
    #   Gets the trace output sent by the agent.
    #   @return [String]
    #
    # @!attribute [rw] standard_output_url
    #   The URL to the plugin's StdOut file in Amazon S3, if the Amazon S3
    #   bucket was defined for the parent command. For an invocation,
    #   StandardOutputUrl is populated if there is just one plugin defined
    #   for the command, and the Amazon S3 bucket was defined for the
    #   command.
    #   @return [String]
    #
    # @!attribute [rw] standard_error_url
    #   The URL to the plugin's StdErr file in Amazon S3, if the Amazon S3
    #   bucket was defined for the parent command. For an invocation,
    #   StandardErrorUrl is populated if there is just one plugin defined
    #   for the command, and the Amazon S3 bucket was defined for the
    #   command.
    #   @return [String]
    #
    # @!attribute [rw] command_plugins
    #   @return [Array<Types::CommandPlugin>]
    #
    # @!attribute [rw] service_role
    #   The IAM service role that Run Command uses to act on your behalf
    #   when sending notifications about command status changes on a per
    #   instance basis.
    #   @return [String]
    #
    # @!attribute [rw] notification_config
    #   Configurations for sending notifications about command status
    #   changes on a per instance basis.
    #   @return [Types::NotificationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CommandInvocation AWS API Documentation
    #
    class CommandInvocation < Struct.new(
      :command_id,
      :instance_id,
      :instance_name,
      :comment,
      :document_name,
      :requested_date_time,
      :status,
      :status_details,
      :trace_output,
      :standard_output_url,
      :standard_error_url,
      :command_plugins,
      :service_role,
      :notification_config)
      include Aws::Structure
    end

    # Describes plugin details.
    #
    # @!attribute [rw] name
    #   The name of the plugin. Must be one of the following:
    #   aws:updateAgent, aws:domainjoin, aws:applications,
    #   aws:runPowerShellScript, aws:psmodule, aws:cloudWatch,
    #   aws:runShellScript, or aws:updateSSMAgent.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of this plugin. You can execute a document with multiple
    #   plugins.
    #   @return [String]
    #
    # @!attribute [rw] status_details
    #   A detailed status of the plugin execution. StatusDetails includes
    #   more information than Status because it includes states resulting
    #   from error and concurrency control parameters. StatusDetails can
    #   show different results than Status. For more information about these
    #   statuses, see [Run Command Status][1]. StatusDetails can be one of
    #   the following values:
    #
    #   * Pending: The command has not been sent to the instance.
    #
    #   * In Progress: The command has been sent to the instance but has not
    #     reached a terminal state.
    #
    #   * Success: The execution of the command or plugin was successfully
    #     completed. This is a terminal state.
    #
    #   * Delivery Timed Out: The command was not delivered to the instance
    #     before the delivery timeout expired. Delivery timeouts do not
    #     count against the parent command's MaxErrors limit, but they do
    #     contribute to whether the parent command status is Success or
    #     Incomplete. This is a terminal state.
    #
    #   * Execution Timed Out: Command execution started on the instance,
    #     but the execution was not complete before the execution timeout
    #     expired. Execution timeouts count against the MaxErrors limit of
    #     the parent command. This is a terminal state.
    #
    #   * Failed: The command was not successful on the instance. For a
    #     plugin, this indicates that the result code was not zero. For a
    #     command invocation, this indicates that the result code for one or
    #     more plugins was not zero. Invocation failures count against the
    #     MaxErrors limit of the parent command. This is a terminal state.
    #
    #   * Canceled: The command was terminated before it was completed. This
    #     is a terminal state.
    #
    #   * Undeliverable: The command can't be delivered to the instance.
    #     The instance might not exist, or it might not be responding.
    #     Undeliverable invocations don't count against the parent
    #     command's MaxErrors limit, and they don't contribute to whether
    #     the parent command status is Success or Incomplete. This is a
    #     terminal state.
    #
    #   * Terminated: The parent command exceeded its MaxErrors limit and
    #     subsequent command invocations were canceled by the system. This
    #     is a terminal state.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-about-status.html
    #   @return [String]
    #
    # @!attribute [rw] response_code
    #   A numeric response code generated after executing the plugin.
    #   @return [Integer]
    #
    # @!attribute [rw] response_start_date_time
    #   The time the plugin started executing.
    #   @return [Time]
    #
    # @!attribute [rw] response_finish_date_time
    #   The time the plugin stopped executing. Could stop prematurely if,
    #   for example, a cancel command was sent.
    #   @return [Time]
    #
    # @!attribute [rw] output
    #   Output of the plugin execution.
    #   @return [String]
    #
    # @!attribute [rw] standard_output_url
    #   The URL for the complete text written by the plugin to stdout in
    #   Amazon S3. If the Amazon S3 bucket for the command was not
    #   specified, then this string is empty.
    #   @return [String]
    #
    # @!attribute [rw] standard_error_url
    #   The URL for the complete text written by the plugin to stderr. If
    #   execution is not yet complete, then this string is empty.
    #   @return [String]
    #
    # @!attribute [rw] output_s3_region
    #   (Deprecated) You can no longer specify this parameter. The system
    #   ignores it. Instead, Systems Manager automatically determines the
    #   Amazon S3 bucket region.
    #   @return [String]
    #
    # @!attribute [rw] output_s3_bucket_name
    #   The S3 bucket where the responses to the command executions should
    #   be stored. This was requested when issuing the command. For example,
    #   in the following response:
    #
    #   test\_folder/ab19cb99-a030-46dd-9dfc-8eSAMPLEPre-Fix/i-1234567876543/awsrunShellScript
    #
    #   test\_folder is the name of the Amazon S3 bucket;
    #
    #   ab19cb99-a030-46dd-9dfc-8eSAMPLEPre-Fix is the name of the S3
    #   prefix;
    #
    #   i-1234567876543 is the instance ID;
    #
    #   awsrunShellScript is the name of the plugin.
    #   @return [String]
    #
    # @!attribute [rw] output_s3_key_prefix
    #   The S3 directory path inside the bucket where the responses to the
    #   command executions should be stored. This was requested when issuing
    #   the command. For example, in the following response:
    #
    #   test\_folder/ab19cb99-a030-46dd-9dfc-8eSAMPLEPre-Fix/i-1234567876543/awsrunShellScript
    #
    #   test\_folder is the name of the Amazon S3 bucket;
    #
    #   ab19cb99-a030-46dd-9dfc-8eSAMPLEPre-Fix is the name of the S3
    #   prefix;
    #
    #   i-1234567876543 is the instance ID;
    #
    #   awsrunShellScript is the name of the plugin.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CommandPlugin AWS API Documentation
    #
    class CommandPlugin < Struct.new(
      :name,
      :status,
      :status_details,
      :response_code,
      :response_start_date_time,
      :response_finish_date_time,
      :output,
      :standard_output_url,
      :standard_error_url,
      :output_s3_region,
      :output_s3_bucket_name,
      :output_s3_key_prefix)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateActivationRequest
    #   data as a hash:
    #
    #       {
    #         description: "ActivationDescription",
    #         default_instance_name: "DefaultInstanceName",
    #         iam_role: "IamRole", # required
    #         registration_limit: 1,
    #         expiration_date: Time.now,
    #       }
    #
    # @!attribute [rw] description
    #   A userdefined description of the resource that you want to register
    #   with Amazon EC2.
    #   @return [String]
    #
    # @!attribute [rw] default_instance_name
    #   The name of the registered, managed instance as it will appear in
    #   the Amazon EC2 console or when you use the AWS command line tools to
    #   list EC2 resources.
    #   @return [String]
    #
    # @!attribute [rw] iam_role
    #   The Amazon Identity and Access Management (IAM) role that you want
    #   to assign to the managed instance.
    #   @return [String]
    #
    # @!attribute [rw] registration_limit
    #   Specify the maximum number of managed instances you want to
    #   register. The default value is 1 instance.
    #   @return [Integer]
    #
    # @!attribute [rw] expiration_date
    #   The date by which this activation request should expire. The default
    #   value is 24 hours.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateActivationRequest AWS API Documentation
    #
    class CreateActivationRequest < Struct.new(
      :description,
      :default_instance_name,
      :iam_role,
      :registration_limit,
      :expiration_date)
      include Aws::Structure
    end

    # @!attribute [rw] activation_id
    #   The ID number generated by the system when it processed the
    #   activation. The activation ID functions like a user name.
    #   @return [String]
    #
    # @!attribute [rw] activation_code
    #   The code the system generates when it processes the activation. The
    #   activation code functions like a password to validate the activation
    #   ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateActivationResult AWS API Documentation
    #
    class CreateActivationResult < Struct.new(
      :activation_id,
      :activation_code)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateAssociationBatchRequest
    #   data as a hash:
    #
    #       {
    #         entries: [ # required
    #           {
    #             name: "DocumentName", # required
    #             instance_id: "InstanceId",
    #             parameters: {
    #               "ParameterName" => ["ParameterValue"],
    #             },
    #             document_version: "DocumentVersion",
    #             targets: [
    #               {
    #                 key: "TargetKey",
    #                 values: ["TargetValue"],
    #               },
    #             ],
    #             schedule_expression: "ScheduleExpression",
    #             output_location: {
    #               s3_location: {
    #                 output_s3_region: "S3Region",
    #                 output_s3_bucket_name: "S3BucketName",
    #                 output_s3_key_prefix: "S3KeyPrefix",
    #               },
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] entries
    #   One or more associations.
    #   @return [Array<Types::CreateAssociationBatchRequestEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateAssociationBatchRequest AWS API Documentation
    #
    class CreateAssociationBatchRequest < Struct.new(
      :entries)
      include Aws::Structure
    end

    # Describes the association of a Systems Manager document and an
    # instance.
    #
    # @note When making an API call, you may pass CreateAssociationBatchRequestEntry
    #   data as a hash:
    #
    #       {
    #         name: "DocumentName", # required
    #         instance_id: "InstanceId",
    #         parameters: {
    #           "ParameterName" => ["ParameterValue"],
    #         },
    #         document_version: "DocumentVersion",
    #         targets: [
    #           {
    #             key: "TargetKey",
    #             values: ["TargetValue"],
    #           },
    #         ],
    #         schedule_expression: "ScheduleExpression",
    #         output_location: {
    #           s3_location: {
    #             output_s3_region: "S3Region",
    #             output_s3_bucket_name: "S3BucketName",
    #             output_s3_key_prefix: "S3KeyPrefix",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the configuration document.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A description of the parameters for a document.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] document_version
    #   The document version.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The instances targeted by the request.
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] schedule_expression
    #   A cron expression that specifies a schedule when the association
    #   runs.
    #   @return [String]
    #
    # @!attribute [rw] output_location
    #   An Amazon S3 bucket where you want to store the results of this
    #   request.
    #   @return [Types::InstanceAssociationOutputLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateAssociationBatchRequestEntry AWS API Documentation
    #
    class CreateAssociationBatchRequestEntry < Struct.new(
      :name,
      :instance_id,
      :parameters,
      :document_version,
      :targets,
      :schedule_expression,
      :output_location)
      include Aws::Structure
    end

    # @!attribute [rw] successful
    #   Information about the associations that succeeded.
    #   @return [Array<Types::AssociationDescription>]
    #
    # @!attribute [rw] failed
    #   Information about the associations that failed.
    #   @return [Array<Types::FailedCreateAssociation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateAssociationBatchResult AWS API Documentation
    #
    class CreateAssociationBatchResult < Struct.new(
      :successful,
      :failed)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateAssociationRequest
    #   data as a hash:
    #
    #       {
    #         name: "DocumentName", # required
    #         document_version: "DocumentVersion",
    #         instance_id: "InstanceId",
    #         parameters: {
    #           "ParameterName" => ["ParameterValue"],
    #         },
    #         targets: [
    #           {
    #             key: "TargetKey",
    #             values: ["TargetValue"],
    #           },
    #         ],
    #         schedule_expression: "ScheduleExpression",
    #         output_location: {
    #           s3_location: {
    #             output_s3_region: "S3Region",
    #             output_s3_bucket_name: "S3BucketName",
    #             output_s3_key_prefix: "S3KeyPrefix",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the Systems Manager document.
    #   @return [String]
    #
    # @!attribute [rw] document_version
    #   The document version you want to associate with the target(s). Can
    #   be a specific version or the default version.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The instance ID.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters for the documents runtime configuration.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] targets
    #   The targets (either instances or tags) for the association.
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] schedule_expression
    #   A cron expression when the association will be applied to the
    #   target(s).
    #   @return [String]
    #
    # @!attribute [rw] output_location
    #   An Amazon S3 bucket where you want to store the output details of
    #   the request.
    #   @return [Types::InstanceAssociationOutputLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateAssociationRequest AWS API Documentation
    #
    class CreateAssociationRequest < Struct.new(
      :name,
      :document_version,
      :instance_id,
      :parameters,
      :targets,
      :schedule_expression,
      :output_location)
      include Aws::Structure
    end

    # @!attribute [rw] association_description
    #   Information about the association.
    #   @return [Types::AssociationDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateAssociationResult AWS API Documentation
    #
    class CreateAssociationResult < Struct.new(
      :association_description)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDocumentRequest
    #   data as a hash:
    #
    #       {
    #         content: "DocumentContent", # required
    #         name: "DocumentName", # required
    #         document_type: "Command", # accepts Command, Policy, Automation
    #       }
    #
    # @!attribute [rw] content
    #   A valid JSON string.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name for the Systems Manager document.
    #   @return [String]
    #
    # @!attribute [rw] document_type
    #   The type of document to create. Valid document types include:
    #   Policy, Automation, and Command.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateDocumentRequest AWS API Documentation
    #
    class CreateDocumentRequest < Struct.new(
      :content,
      :name,
      :document_type)
      include Aws::Structure
    end

    # @!attribute [rw] document_description
    #   Information about the Systems Manager document.
    #   @return [Types::DocumentDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateDocumentResult AWS API Documentation
    #
    class CreateDocumentResult < Struct.new(
      :document_description)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateMaintenanceWindowRequest
    #   data as a hash:
    #
    #       {
    #         name: "MaintenanceWindowName", # required
    #         schedule: "MaintenanceWindowSchedule", # required
    #         duration: 1, # required
    #         cutoff: 1, # required
    #         allow_unassociated_targets: false, # required
    #         client_token: "ClientToken",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the Maintenance Window.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   The schedule of the Maintenance Window in the form of a cron or rate
    #   expression.
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   The duration of the Maintenance Window in hours.
    #   @return [Integer]
    #
    # @!attribute [rw] cutoff
    #   The number of hours before the end of the Maintenance Window that
    #   Systems Manager stops scheduling new tasks for execution.
    #   @return [Integer]
    #
    # @!attribute [rw] allow_unassociated_targets
    #   Whether targets must be registered with the Maintenance Window
    #   before tasks can be defined for those targets.
    #   @return [Boolean]
    #
    # @!attribute [rw] client_token
    #   User-provided idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateMaintenanceWindowRequest AWS API Documentation
    #
    class CreateMaintenanceWindowRequest < Struct.new(
      :name,
      :schedule,
      :duration,
      :cutoff,
      :allow_unassociated_targets,
      :client_token)
      include Aws::Structure
    end

    # @!attribute [rw] window_id
    #   The ID of the created Maintenance Window.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateMaintenanceWindowResult AWS API Documentation
    #
    class CreateMaintenanceWindowResult < Struct.new(
      :window_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreatePatchBaselineRequest
    #   data as a hash:
    #
    #       {
    #         name: "BaselineName", # required
    #         global_filters: {
    #           patch_filters: [ # required
    #             {
    #               key: "PRODUCT", # required, accepts PRODUCT, CLASSIFICATION, MSRC_SEVERITY, PATCH_ID
    #               values: ["PatchFilterValue"], # required
    #             },
    #           ],
    #         },
    #         approval_rules: {
    #           patch_rules: [ # required
    #             {
    #               patch_filter_group: { # required
    #                 patch_filters: [ # required
    #                   {
    #                     key: "PRODUCT", # required, accepts PRODUCT, CLASSIFICATION, MSRC_SEVERITY, PATCH_ID
    #                     values: ["PatchFilterValue"], # required
    #                   },
    #                 ],
    #               },
    #               approve_after_days: 1, # required
    #             },
    #           ],
    #         },
    #         approved_patches: ["PatchId"],
    #         rejected_patches: ["PatchId"],
    #         description: "BaselineDescription",
    #         client_token: "ClientToken",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the patch baseline.
    #   @return [String]
    #
    # @!attribute [rw] global_filters
    #   A set of global filters used to exclude patches from the baseline.
    #   @return [Types::PatchFilterGroup]
    #
    # @!attribute [rw] approval_rules
    #   A set of rules used to include patches in the baseline.
    #   @return [Types::PatchRuleGroup]
    #
    # @!attribute [rw] approved_patches
    #   A list of explicitly approved patches for the baseline.
    #   @return [Array<String>]
    #
    # @!attribute [rw] rejected_patches
    #   A list of explicitly rejected patches for the baseline.
    #   @return [Array<String>]
    #
    # @!attribute [rw] description
    #   A description of the patch baseline.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   User-provided idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreatePatchBaselineRequest AWS API Documentation
    #
    class CreatePatchBaselineRequest < Struct.new(
      :name,
      :global_filters,
      :approval_rules,
      :approved_patches,
      :rejected_patches,
      :description,
      :client_token)
      include Aws::Structure
    end

    # @!attribute [rw] baseline_id
    #   The ID of the created patch baseline.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreatePatchBaselineResult AWS API Documentation
    #
    class CreatePatchBaselineResult < Struct.new(
      :baseline_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteActivationRequest
    #   data as a hash:
    #
    #       {
    #         activation_id: "ActivationId", # required
    #       }
    #
    # @!attribute [rw] activation_id
    #   The ID of the activation that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteActivationRequest AWS API Documentation
    #
    class DeleteActivationRequest < Struct.new(
      :activation_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteActivationResult AWS API Documentation
    #
    class DeleteActivationResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteAssociationRequest
    #   data as a hash:
    #
    #       {
    #         name: "DocumentName",
    #         instance_id: "InstanceId",
    #         association_id: "AssociationId",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the Systems Manager document.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance.
    #   @return [String]
    #
    # @!attribute [rw] association_id
    #   The association ID that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteAssociationRequest AWS API Documentation
    #
    class DeleteAssociationRequest < Struct.new(
      :name,
      :instance_id,
      :association_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteAssociationResult AWS API Documentation
    #
    class DeleteAssociationResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteDocumentRequest
    #   data as a hash:
    #
    #       {
    #         name: "DocumentName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteDocumentRequest AWS API Documentation
    #
    class DeleteDocumentRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteDocumentResult AWS API Documentation
    #
    class DeleteDocumentResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteMaintenanceWindowRequest
    #   data as a hash:
    #
    #       {
    #         window_id: "MaintenanceWindowId", # required
    #       }
    #
    # @!attribute [rw] window_id
    #   The ID of the Maintenance Window to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteMaintenanceWindowRequest AWS API Documentation
    #
    class DeleteMaintenanceWindowRequest < Struct.new(
      :window_id)
      include Aws::Structure
    end

    # @!attribute [rw] window_id
    #   The ID of the deleted Maintenance Window.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteMaintenanceWindowResult AWS API Documentation
    #
    class DeleteMaintenanceWindowResult < Struct.new(
      :window_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteParameterRequest
    #   data as a hash:
    #
    #       {
    #         name: "PSParameterName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the parameter to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteParameterRequest AWS API Documentation
    #
    class DeleteParameterRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteParameterResult AWS API Documentation
    #
    class DeleteParameterResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteParametersRequest
    #   data as a hash:
    #
    #       {
    #         names: ["PSParameterName"], # required
    #       }
    #
    # @!attribute [rw] names
    #   The names of the parameters to delete.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteParametersRequest AWS API Documentation
    #
    class DeleteParametersRequest < Struct.new(
      :names)
      include Aws::Structure
    end

    # @!attribute [rw] deleted_parameters
    #   The names of the deleted parameters.
    #   @return [Array<String>]
    #
    # @!attribute [rw] invalid_parameters
    #   The names of parameters that weren't deleted because the parameters
    #   are not valid.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteParametersResult AWS API Documentation
    #
    class DeleteParametersResult < Struct.new(
      :deleted_parameters,
      :invalid_parameters)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeletePatchBaselineRequest
    #   data as a hash:
    #
    #       {
    #         baseline_id: "BaselineId", # required
    #       }
    #
    # @!attribute [rw] baseline_id
    #   The ID of the patch baseline to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeletePatchBaselineRequest AWS API Documentation
    #
    class DeletePatchBaselineRequest < Struct.new(
      :baseline_id)
      include Aws::Structure
    end

    # @!attribute [rw] baseline_id
    #   The ID of the deleted patch baseline.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeletePatchBaselineResult AWS API Documentation
    #
    class DeletePatchBaselineResult < Struct.new(
      :baseline_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeregisterManagedInstanceRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "ManagedInstanceId", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The ID assigned to the managed instance when you registered it using
    #   the activation process.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeregisterManagedInstanceRequest AWS API Documentation
    #
    class DeregisterManagedInstanceRequest < Struct.new(
      :instance_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeregisterManagedInstanceResult AWS API Documentation
    #
    class DeregisterManagedInstanceResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeregisterPatchBaselineForPatchGroupRequest
    #   data as a hash:
    #
    #       {
    #         baseline_id: "BaselineId", # required
    #         patch_group: "PatchGroup", # required
    #       }
    #
    # @!attribute [rw] baseline_id
    #   The ID of the patch baseline to deregister the patch group from.
    #   @return [String]
    #
    # @!attribute [rw] patch_group
    #   The name of the patch group that should be deregistered from the
    #   patch baseline.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeregisterPatchBaselineForPatchGroupRequest AWS API Documentation
    #
    class DeregisterPatchBaselineForPatchGroupRequest < Struct.new(
      :baseline_id,
      :patch_group)
      include Aws::Structure
    end

    # @!attribute [rw] baseline_id
    #   The ID of the patch baseline the patch group was deregistered from.
    #   @return [String]
    #
    # @!attribute [rw] patch_group
    #   The name of the patch group deregistered from the patch baseline.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeregisterPatchBaselineForPatchGroupResult AWS API Documentation
    #
    class DeregisterPatchBaselineForPatchGroupResult < Struct.new(
      :baseline_id,
      :patch_group)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeregisterTargetFromMaintenanceWindowRequest
    #   data as a hash:
    #
    #       {
    #         window_id: "MaintenanceWindowId", # required
    #         window_target_id: "MaintenanceWindowTargetId", # required
    #       }
    #
    # @!attribute [rw] window_id
    #   The ID of the Maintenance Window the target should be removed from.
    #   @return [String]
    #
    # @!attribute [rw] window_target_id
    #   The ID of the target definition to remove.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeregisterTargetFromMaintenanceWindowRequest AWS API Documentation
    #
    class DeregisterTargetFromMaintenanceWindowRequest < Struct.new(
      :window_id,
      :window_target_id)
      include Aws::Structure
    end

    # @!attribute [rw] window_id
    #   The ID of the Maintenance Window the target was removed from.
    #   @return [String]
    #
    # @!attribute [rw] window_target_id
    #   The ID of the removed target definition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeregisterTargetFromMaintenanceWindowResult AWS API Documentation
    #
    class DeregisterTargetFromMaintenanceWindowResult < Struct.new(
      :window_id,
      :window_target_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeregisterTaskFromMaintenanceWindowRequest
    #   data as a hash:
    #
    #       {
    #         window_id: "MaintenanceWindowId", # required
    #         window_task_id: "MaintenanceWindowTaskId", # required
    #       }
    #
    # @!attribute [rw] window_id
    #   The ID of the Maintenance Window the task should be removed from.
    #   @return [String]
    #
    # @!attribute [rw] window_task_id
    #   The ID of the task to remove from the Maintenance Window.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeregisterTaskFromMaintenanceWindowRequest AWS API Documentation
    #
    class DeregisterTaskFromMaintenanceWindowRequest < Struct.new(
      :window_id,
      :window_task_id)
      include Aws::Structure
    end

    # @!attribute [rw] window_id
    #   The ID of the Maintenance Window the task was removed from.
    #   @return [String]
    #
    # @!attribute [rw] window_task_id
    #   The ID of the task removed from the Maintenance Window.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeregisterTaskFromMaintenanceWindowResult AWS API Documentation
    #
    class DeregisterTaskFromMaintenanceWindowResult < Struct.new(
      :window_id,
      :window_task_id)
      include Aws::Structure
    end

    # Filter for the DescribeActivation API.
    #
    # @note When making an API call, you may pass DescribeActivationsFilter
    #   data as a hash:
    #
    #       {
    #         filter_key: "ActivationIds", # accepts ActivationIds, DefaultInstanceName, IamRole
    #         filter_values: ["String"],
    #       }
    #
    # @!attribute [rw] filter_key
    #   The name of the filter.
    #   @return [String]
    #
    # @!attribute [rw] filter_values
    #   The filter values.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeActivationsFilter AWS API Documentation
    #
    class DescribeActivationsFilter < Struct.new(
      :filter_key,
      :filter_values)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeActivationsRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             filter_key: "ActivationIds", # accepts ActivationIds, DefaultInstanceName, IamRole
    #             filter_values: ["String"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] filters
    #   A filter to view information about your activations.
    #   @return [Array<Types::DescribeActivationsFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeActivationsRequest AWS API Documentation
    #
    class DescribeActivationsRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] activation_list
    #   A list of activations for your AWS account.
    #   @return [Array<Types::Activation>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. Use this token to get
    #   the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeActivationsResult AWS API Documentation
    #
    class DescribeActivationsResult < Struct.new(
      :activation_list,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAssociationRequest
    #   data as a hash:
    #
    #       {
    #         name: "DocumentName",
    #         instance_id: "InstanceId",
    #         association_id: "AssociationId",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the SSM document.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The instance ID.
    #   @return [String]
    #
    # @!attribute [rw] association_id
    #   The association ID for which you want information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeAssociationRequest AWS API Documentation
    #
    class DescribeAssociationRequest < Struct.new(
      :name,
      :instance_id,
      :association_id)
      include Aws::Structure
    end

    # @!attribute [rw] association_description
    #   Information about the association.
    #   @return [Types::AssociationDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeAssociationResult AWS API Documentation
    #
    class DescribeAssociationResult < Struct.new(
      :association_description)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAutomationExecutionsRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             key: "DocumentNamePrefix", # required, accepts DocumentNamePrefix, ExecutionStatus
    #             values: ["AutomationExecutionFilterValue"], # required
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] filters
    #   Filters used to limit the scope of executions that are requested.
    #   @return [Array<Types::AutomationExecutionFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeAutomationExecutionsRequest AWS API Documentation
    #
    class DescribeAutomationExecutionsRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] automation_execution_metadata_list
    #   The list of details about each automation execution which has
    #   occurred which matches the filter specification, if any.
    #   @return [Array<Types::AutomationExecutionMetadata>]
    #
    # @!attribute [rw] next_token
    #   The token to use when requesting the next set of items. If there are
    #   no additional items to return, the string is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeAutomationExecutionsResult AWS API Documentation
    #
    class DescribeAutomationExecutionsResult < Struct.new(
      :automation_execution_metadata_list,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAvailablePatchesRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             key: "PatchOrchestratorFilterKey",
    #             values: ["PatchOrchestratorFilterValue"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] filters
    #   Filters used to scope down the returned patches.
    #   @return [Array<Types::PatchOrchestratorFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of patches to return (per page).
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeAvailablePatchesRequest AWS API Documentation
    #
    class DescribeAvailablePatchesRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] patches
    #   An array of patches. Each entry in the array is a patch structure.
    #   @return [Array<Types::Patch>]
    #
    # @!attribute [rw] next_token
    #   The token to use when requesting the next set of items. If there are
    #   no additional items to return, the string is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeAvailablePatchesResult AWS API Documentation
    #
    class DescribeAvailablePatchesResult < Struct.new(
      :patches,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDocumentPermissionRequest
    #   data as a hash:
    #
    #       {
    #         name: "DocumentName", # required
    #         permission_type: "Share", # required, accepts Share
    #       }
    #
    # @!attribute [rw] name
    #   The name of the document for which you are the owner.
    #   @return [String]
    #
    # @!attribute [rw] permission_type
    #   The permission type for the document. The permission type can be
    #   *Share*.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeDocumentPermissionRequest AWS API Documentation
    #
    class DescribeDocumentPermissionRequest < Struct.new(
      :name,
      :permission_type)
      include Aws::Structure
    end

    # @!attribute [rw] account_ids
    #   The account IDs that have permission to use this document. The ID
    #   can be either an AWS account or *All*.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeDocumentPermissionResponse AWS API Documentation
    #
    class DescribeDocumentPermissionResponse < Struct.new(
      :account_ids)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDocumentRequest
    #   data as a hash:
    #
    #       {
    #         name: "DocumentARN", # required
    #         document_version: "DocumentVersion",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the SSM document.
    #   @return [String]
    #
    # @!attribute [rw] document_version
    #   The document version for which you want information. Can be a
    #   specific version or the default version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeDocumentRequest AWS API Documentation
    #
    class DescribeDocumentRequest < Struct.new(
      :name,
      :document_version)
      include Aws::Structure
    end

    # @!attribute [rw] document
    #   Information about the SSM document.
    #   @return [Types::DocumentDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeDocumentResult AWS API Documentation
    #
    class DescribeDocumentResult < Struct.new(
      :document)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeEffectiveInstanceAssociationsRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] instance_id
    #   The instance ID for which you want to view all associations.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeEffectiveInstanceAssociationsRequest AWS API Documentation
    #
    class DescribeEffectiveInstanceAssociationsRequest < Struct.new(
      :instance_id,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] associations
    #   The associations for the requested instance.
    #   @return [Array<Types::InstanceAssociation>]
    #
    # @!attribute [rw] next_token
    #   The token to use when requesting the next set of items. If there are
    #   no additional items to return, the string is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeEffectiveInstanceAssociationsResult AWS API Documentation
    #
    class DescribeEffectiveInstanceAssociationsResult < Struct.new(
      :associations,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeEffectivePatchesForPatchBaselineRequest
    #   data as a hash:
    #
    #       {
    #         baseline_id: "BaselineId", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] baseline_id
    #   The ID of the patch baseline to retrieve the effective patches for.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of patches to return (per page).
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeEffectivePatchesForPatchBaselineRequest AWS API Documentation
    #
    class DescribeEffectivePatchesForPatchBaselineRequest < Struct.new(
      :baseline_id,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] effective_patches
    #   An array of patches and patch status.
    #   @return [Array<Types::EffectivePatch>]
    #
    # @!attribute [rw] next_token
    #   The token to use when requesting the next set of items. If there are
    #   no additional items to return, the string is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeEffectivePatchesForPatchBaselineResult AWS API Documentation
    #
    class DescribeEffectivePatchesForPatchBaselineResult < Struct.new(
      :effective_patches,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeInstanceAssociationsStatusRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] instance_id
    #   The instance IDs for which you want association status information.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeInstanceAssociationsStatusRequest AWS API Documentation
    #
    class DescribeInstanceAssociationsStatusRequest < Struct.new(
      :instance_id,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] instance_association_status_infos
    #   Status information about the association.
    #   @return [Array<Types::InstanceAssociationStatusInfo>]
    #
    # @!attribute [rw] next_token
    #   The token to use when requesting the next set of items. If there are
    #   no additional items to return, the string is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeInstanceAssociationsStatusResult AWS API Documentation
    #
    class DescribeInstanceAssociationsStatusResult < Struct.new(
      :instance_association_status_infos,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeInstanceInformationRequest
    #   data as a hash:
    #
    #       {
    #         instance_information_filter_list: [
    #           {
    #             key: "InstanceIds", # required, accepts InstanceIds, AgentVersion, PingStatus, PlatformTypes, ActivationIds, IamRole, ResourceType, AssociationStatus
    #             value_set: ["InstanceInformationFilterValue"], # required
    #           },
    #         ],
    #         filters: [
    #           {
    #             key: "InstanceInformationStringFilterKey", # required
    #             values: ["InstanceInformationFilterValue"], # required
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] instance_information_filter_list
    #   One or more filters. Use a filter to return a more specific list of
    #   instances.
    #   @return [Array<Types::InstanceInformationFilter>]
    #
    # @!attribute [rw] filters
    #   One or more filters. Use a filter to return a more specific list of
    #   instances.
    #   @return [Array<Types::InstanceInformationStringFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeInstanceInformationRequest AWS API Documentation
    #
    class DescribeInstanceInformationRequest < Struct.new(
      :instance_information_filter_list,
      :filters,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] instance_information_list
    #   The instance information list.
    #   @return [Array<Types::InstanceInformation>]
    #
    # @!attribute [rw] next_token
    #   The token to use when requesting the next set of items. If there are
    #   no additional items to return, the string is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeInstanceInformationResult AWS API Documentation
    #
    class DescribeInstanceInformationResult < Struct.new(
      :instance_information_list,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeInstancePatchStatesForPatchGroupRequest
    #   data as a hash:
    #
    #       {
    #         patch_group: "PatchGroup", # required
    #         filters: [
    #           {
    #             key: "InstancePatchStateFilterKey", # required
    #             values: ["InstancePatchStateFilterValue"], # required
    #             type: "Equal", # required, accepts Equal, NotEqual, LessThan, GreaterThan
    #           },
    #         ],
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] patch_group
    #   The name of the patch group for which the patch state information
    #   should be retrieved.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Each entry in the array is a structure containing:
    #
    #   Key (string between 1 and 200 characters)
    #
    #   Values (array containing a single string)
    #
    #   Type (string "Equal", "NotEqual", "LessThan", "GreaterThan")
    #   @return [Array<Types::InstancePatchStateFilter>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of patches to return (per page).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeInstancePatchStatesForPatchGroupRequest AWS API Documentation
    #
    class DescribeInstancePatchStatesForPatchGroupRequest < Struct.new(
      :patch_group,
      :filters,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] instance_patch_states
    #   The high-level patch state for the requested instances.
    #   @return [Array<Types::InstancePatchState>]
    #
    # @!attribute [rw] next_token
    #   The token to use when requesting the next set of items. If there are
    #   no additional items to return, the string is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeInstancePatchStatesForPatchGroupResult AWS API Documentation
    #
    class DescribeInstancePatchStatesForPatchGroupResult < Struct.new(
      :instance_patch_states,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeInstancePatchStatesRequest
    #   data as a hash:
    #
    #       {
    #         instance_ids: ["InstanceId"], # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] instance_ids
    #   The ID of the instance whose patch state information should be
    #   retrieved.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of instances to return (per page).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeInstancePatchStatesRequest AWS API Documentation
    #
    class DescribeInstancePatchStatesRequest < Struct.new(
      :instance_ids,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] instance_patch_states
    #   The high-level patch state for the requested instances.
    #   @return [Array<Types::InstancePatchState>]
    #
    # @!attribute [rw] next_token
    #   The token to use when requesting the next set of items. If there are
    #   no additional items to return, the string is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeInstancePatchStatesResult AWS API Documentation
    #
    class DescribeInstancePatchStatesResult < Struct.new(
      :instance_patch_states,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeInstancePatchesRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         filters: [
    #           {
    #             key: "PatchOrchestratorFilterKey",
    #             values: ["PatchOrchestratorFilterValue"],
    #           },
    #         ],
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance whose patch state information should be
    #   retrieved.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Each entry in the array is a structure containing:
    #
    #   Key (string, between 1 and 128 characters)
    #
    #   Values (array of strings, each string between 1 and 256 characters)
    #   @return [Array<Types::PatchOrchestratorFilter>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of patches to return (per page).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeInstancePatchesRequest AWS API Documentation
    #
    class DescribeInstancePatchesRequest < Struct.new(
      :instance_id,
      :filters,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] patches
    #   Each entry in the array is a structure containing:
    #
    #   Title (string)
    #
    #   KBId (string)
    #
    #   Classification (string)
    #
    #   Severity (string)
    #
    #   State (string: "INSTALLED", "INSTALLED OTHER", "MISSING",
    #   "NOT APPLICABLE", "FAILED")
    #
    #   InstalledTime (DateTime)
    #
    #   InstalledBy (string)
    #   @return [Array<Types::PatchComplianceData>]
    #
    # @!attribute [rw] next_token
    #   The token to use when requesting the next set of items. If there are
    #   no additional items to return, the string is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeInstancePatchesResult AWS API Documentation
    #
    class DescribeInstancePatchesResult < Struct.new(
      :patches,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeMaintenanceWindowExecutionTaskInvocationsRequest
    #   data as a hash:
    #
    #       {
    #         window_execution_id: "MaintenanceWindowExecutionId", # required
    #         task_id: "MaintenanceWindowExecutionTaskId", # required
    #         filters: [
    #           {
    #             key: "MaintenanceWindowFilterKey",
    #             values: ["MaintenanceWindowFilterValue"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] window_execution_id
    #   The ID of the Maintenance Window execution the task is part of.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   The ID of the specific task in the Maintenance Window task that
    #   should be retrieved.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Optional filters used to scope down the returned task invocations.
    #   The supported filter key is STATUS with the corresponding values
    #   PENDING, IN\_PROGRESS, SUCCESS, FAILED, TIMED\_OUT, CANCELLING, and
    #   CANCELLED.
    #   @return [Array<Types::MaintenanceWindowFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeMaintenanceWindowExecutionTaskInvocationsRequest AWS API Documentation
    #
    class DescribeMaintenanceWindowExecutionTaskInvocationsRequest < Struct.new(
      :window_execution_id,
      :task_id,
      :filters,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] window_execution_task_invocation_identities
    #   Information about the task invocation results per invocation.
    #   @return [Array<Types::MaintenanceWindowExecutionTaskInvocationIdentity>]
    #
    # @!attribute [rw] next_token
    #   The token to use when requesting the next set of items. If there are
    #   no additional items to return, the string is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeMaintenanceWindowExecutionTaskInvocationsResult AWS API Documentation
    #
    class DescribeMaintenanceWindowExecutionTaskInvocationsResult < Struct.new(
      :window_execution_task_invocation_identities,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeMaintenanceWindowExecutionTasksRequest
    #   data as a hash:
    #
    #       {
    #         window_execution_id: "MaintenanceWindowExecutionId", # required
    #         filters: [
    #           {
    #             key: "MaintenanceWindowFilterKey",
    #             values: ["MaintenanceWindowFilterValue"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] window_execution_id
    #   The ID of the Maintenance Window execution whose task executions
    #   should be retrieved.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Optional filters used to scope down the returned tasks. The
    #   supported filter key is STATUS with the corresponding values
    #   PENDING, IN\_PROGRESS, SUCCESS, FAILED, TIMED\_OUT, CANCELLING, and
    #   CANCELLED.
    #   @return [Array<Types::MaintenanceWindowFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeMaintenanceWindowExecutionTasksRequest AWS API Documentation
    #
    class DescribeMaintenanceWindowExecutionTasksRequest < Struct.new(
      :window_execution_id,
      :filters,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] window_execution_task_identities
    #   Information about the task executions.
    #   @return [Array<Types::MaintenanceWindowExecutionTaskIdentity>]
    #
    # @!attribute [rw] next_token
    #   The token to use when requesting the next set of items. If there are
    #   no additional items to return, the string is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeMaintenanceWindowExecutionTasksResult AWS API Documentation
    #
    class DescribeMaintenanceWindowExecutionTasksResult < Struct.new(
      :window_execution_task_identities,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeMaintenanceWindowExecutionsRequest
    #   data as a hash:
    #
    #       {
    #         window_id: "MaintenanceWindowId", # required
    #         filters: [
    #           {
    #             key: "MaintenanceWindowFilterKey",
    #             values: ["MaintenanceWindowFilterValue"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] window_id
    #   The ID of the Maintenance Window whose executions should be
    #   retrieved.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Each entry in the array is a structure containing:
    #
    #   Key (string, between 1 and 128 characters)
    #
    #   Values (array of strings, each string is between 1 and 256
    #   characters)
    #
    #   The supported Keys are ExecutedBefore and ExecutedAfter with the
    #   value being a date/time string such as 2016-11-04T05:00:00Z.
    #   @return [Array<Types::MaintenanceWindowFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeMaintenanceWindowExecutionsRequest AWS API Documentation
    #
    class DescribeMaintenanceWindowExecutionsRequest < Struct.new(
      :window_id,
      :filters,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] window_executions
    #   Information about the Maintenance Windows execution.
    #   @return [Array<Types::MaintenanceWindowExecution>]
    #
    # @!attribute [rw] next_token
    #   The token to use when requesting the next set of items. If there are
    #   no additional items to return, the string is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeMaintenanceWindowExecutionsResult AWS API Documentation
    #
    class DescribeMaintenanceWindowExecutionsResult < Struct.new(
      :window_executions,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeMaintenanceWindowTargetsRequest
    #   data as a hash:
    #
    #       {
    #         window_id: "MaintenanceWindowId", # required
    #         filters: [
    #           {
    #             key: "MaintenanceWindowFilterKey",
    #             values: ["MaintenanceWindowFilterValue"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] window_id
    #   The ID of the Maintenance Window whose targets should be retrieved.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Optional filters that can be used to narrow down the scope of the
    #   returned window targets. The supported filter keys are Type,
    #   WindowTargetId and OwnerInformation.
    #   @return [Array<Types::MaintenanceWindowFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeMaintenanceWindowTargetsRequest AWS API Documentation
    #
    class DescribeMaintenanceWindowTargetsRequest < Struct.new(
      :window_id,
      :filters,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] targets
    #   Information about the targets in the Maintenance Window.
    #   @return [Array<Types::MaintenanceWindowTarget>]
    #
    # @!attribute [rw] next_token
    #   The token to use when requesting the next set of items. If there are
    #   no additional items to return, the string is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeMaintenanceWindowTargetsResult AWS API Documentation
    #
    class DescribeMaintenanceWindowTargetsResult < Struct.new(
      :targets,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeMaintenanceWindowTasksRequest
    #   data as a hash:
    #
    #       {
    #         window_id: "MaintenanceWindowId", # required
    #         filters: [
    #           {
    #             key: "MaintenanceWindowFilterKey",
    #             values: ["MaintenanceWindowFilterValue"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] window_id
    #   The ID of the Maintenance Window whose tasks should be retrieved.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Optional filters used to narrow down the scope of the returned
    #   tasks. The supported filter keys are WindowTaskId, TaskArn,
    #   Priority, and TaskType.
    #   @return [Array<Types::MaintenanceWindowFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeMaintenanceWindowTasksRequest AWS API Documentation
    #
    class DescribeMaintenanceWindowTasksRequest < Struct.new(
      :window_id,
      :filters,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] tasks
    #   Information about the tasks in the Maintenance Window.
    #   @return [Array<Types::MaintenanceWindowTask>]
    #
    # @!attribute [rw] next_token
    #   The token to use when requesting the next set of items. If there are
    #   no additional items to return, the string is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeMaintenanceWindowTasksResult AWS API Documentation
    #
    class DescribeMaintenanceWindowTasksResult < Struct.new(
      :tasks,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeMaintenanceWindowsRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             key: "MaintenanceWindowFilterKey",
    #             values: ["MaintenanceWindowFilterValue"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] filters
    #   Optional filters used to narrow down the scope of the returned
    #   Maintenance Windows. Supported filter keys are Name and Enabled.
    #   @return [Array<Types::MaintenanceWindowFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeMaintenanceWindowsRequest AWS API Documentation
    #
    class DescribeMaintenanceWindowsRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] window_identities
    #   Information about the Maintenance Windows.
    #   @return [Array<Types::MaintenanceWindowIdentity>]
    #
    # @!attribute [rw] next_token
    #   The token to use when requesting the next set of items. If there are
    #   no additional items to return, the string is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeMaintenanceWindowsResult AWS API Documentation
    #
    class DescribeMaintenanceWindowsResult < Struct.new(
      :window_identities,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeParametersRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             key: "Name", # required, accepts Name, Type, KeyId
    #             values: ["ParametersFilterValue"], # required
    #           },
    #         ],
    #         parameter_filters: [
    #           {
    #             key: "ParameterStringFilterKey", # required
    #             option: "ParameterStringQueryOption",
    #             values: ["ParameterStringFilterValue"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] filters
    #   One or more filters. Use a filter to return a more specific list of
    #   results.
    #   @return [Array<Types::ParametersFilter>]
    #
    # @!attribute [rw] parameter_filters
    #   Filters to limit the request results.
    #   @return [Array<Types::ParameterStringFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeParametersRequest AWS API Documentation
    #
    class DescribeParametersRequest < Struct.new(
      :filters,
      :parameter_filters,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] parameters
    #   Parameters returned by the request.
    #   @return [Array<Types::ParameterMetadata>]
    #
    # @!attribute [rw] next_token
    #   The token to use when requesting the next set of items. If there are
    #   no additional items to return, the string is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeParametersResult AWS API Documentation
    #
    class DescribeParametersResult < Struct.new(
      :parameters,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribePatchBaselinesRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             key: "PatchOrchestratorFilterKey",
    #             values: ["PatchOrchestratorFilterValue"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] filters
    #   Each element in the array is a structure containing:
    #
    #   Key: (string, "NAME\_PREFIX" or "OWNER")
    #
    #   Value: (array of strings, exactly 1 entry, between 1 and 255
    #   characters)
    #   @return [Array<Types::PatchOrchestratorFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of patch baselines to return (per page).
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribePatchBaselinesRequest AWS API Documentation
    #
    class DescribePatchBaselinesRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] baseline_identities
    #   An array of PatchBaselineIdentity elements.
    #   @return [Array<Types::PatchBaselineIdentity>]
    #
    # @!attribute [rw] next_token
    #   The token to use when requesting the next set of items. If there are
    #   no additional items to return, the string is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribePatchBaselinesResult AWS API Documentation
    #
    class DescribePatchBaselinesResult < Struct.new(
      :baseline_identities,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribePatchGroupStateRequest
    #   data as a hash:
    #
    #       {
    #         patch_group: "PatchGroup", # required
    #       }
    #
    # @!attribute [rw] patch_group
    #   The name of the patch group whose patch snapshot should be
    #   retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribePatchGroupStateRequest AWS API Documentation
    #
    class DescribePatchGroupStateRequest < Struct.new(
      :patch_group)
      include Aws::Structure
    end

    # @!attribute [rw] instances
    #   The number of instances in the patch group.
    #   @return [Integer]
    #
    # @!attribute [rw] instances_with_installed_patches
    #   The number of instances with installed patches.
    #   @return [Integer]
    #
    # @!attribute [rw] instances_with_installed_other_patches
    #   The number of instances with patches installed that aren't defined
    #   in the patch baseline.
    #   @return [Integer]
    #
    # @!attribute [rw] instances_with_missing_patches
    #   The number of instances with missing patches from the patch
    #   baseline.
    #   @return [Integer]
    #
    # @!attribute [rw] instances_with_failed_patches
    #   The number of instances with patches from the patch baseline that
    #   failed to install.
    #   @return [Integer]
    #
    # @!attribute [rw] instances_with_not_applicable_patches
    #   The number of instances with patches that aren't applicable.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribePatchGroupStateResult AWS API Documentation
    #
    class DescribePatchGroupStateResult < Struct.new(
      :instances,
      :instances_with_installed_patches,
      :instances_with_installed_other_patches,
      :instances_with_missing_patches,
      :instances_with_failed_patches,
      :instances_with_not_applicable_patches)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribePatchGroupsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of patch groups to return (per page).
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribePatchGroupsRequest AWS API Documentation
    #
    class DescribePatchGroupsRequest < Struct.new(
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] mappings
    #   Each entry in the array contains:
    #
    #   PatchGroup: string (between 1 and 256 characters, Regex:
    #   ^(\[\\p\\\{L\\}\\p\\\{Z\\}\\p\\\{N\\}\_.:/=+\\-@\]*)$)
    #
    #   PatchBaselineIdentity: A PatchBaselineIdentity element.
    #   @return [Array<Types::PatchGroupPatchBaselineMapping>]
    #
    # @!attribute [rw] next_token
    #   The token to use when requesting the next set of items. If there are
    #   no additional items to return, the string is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribePatchGroupsResult AWS API Documentation
    #
    class DescribePatchGroupsResult < Struct.new(
      :mappings,
      :next_token)
      include Aws::Structure
    end

    # A default version of a document.
    #
    # @!attribute [rw] name
    #   The name of the document.
    #   @return [String]
    #
    # @!attribute [rw] default_version
    #   The default version of the document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DocumentDefaultVersionDescription AWS API Documentation
    #
    class DocumentDefaultVersionDescription < Struct.new(
      :name,
      :default_version)
      include Aws::Structure
    end

    # Describes an SSM document.
    #
    # @!attribute [rw] sha_1
    #   The SHA1 hash of the document, which you can use for verification
    #   purposes.
    #   @return [String]
    #
    # @!attribute [rw] hash
    #   The Sha256 or Sha1 hash created by the system when the document was
    #   created.
    #
    #   <note markdown="1"> Sha1 hashes have been deprecated.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] hash_type
    #   Sha256 or Sha1.
    #
    #   <note markdown="1"> Sha1 hashes have been deprecated.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the SSM document.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The AWS user account of the person who created the document.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date when the document was created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the SSM document.
    #   @return [String]
    #
    # @!attribute [rw] document_version
    #   The document version.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the document.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A description of the parameters for a document.
    #   @return [Array<Types::DocumentParameter>]
    #
    # @!attribute [rw] platform_types
    #   The list of OS platforms compatible with this SSM document.
    #   @return [Array<String>]
    #
    # @!attribute [rw] document_type
    #   The type of document.
    #   @return [String]
    #
    # @!attribute [rw] schema_version
    #   The schema version.
    #   @return [String]
    #
    # @!attribute [rw] latest_version
    #   The latest version of the document.
    #   @return [String]
    #
    # @!attribute [rw] default_version
    #   The default version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DocumentDescription AWS API Documentation
    #
    class DocumentDescription < Struct.new(
      :sha_1,
      :hash,
      :hash_type,
      :name,
      :owner,
      :created_date,
      :status,
      :document_version,
      :description,
      :parameters,
      :platform_types,
      :document_type,
      :schema_version,
      :latest_version,
      :default_version)
      include Aws::Structure
    end

    # Describes a filter.
    #
    # @note When making an API call, you may pass DocumentFilter
    #   data as a hash:
    #
    #       {
    #         key: "Name", # required, accepts Name, Owner, PlatformTypes, DocumentType
    #         value: "DocumentFilterValue", # required
    #       }
    #
    # @!attribute [rw] key
    #   The name of the filter.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DocumentFilter AWS API Documentation
    #
    class DocumentFilter < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # Describes the name of an SSM document.
    #
    # @!attribute [rw] name
    #   The name of the SSM document.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The AWS user account of the person who created the document.
    #   @return [String]
    #
    # @!attribute [rw] platform_types
    #   The operating system platform.
    #   @return [Array<String>]
    #
    # @!attribute [rw] document_version
    #   The document version.
    #   @return [String]
    #
    # @!attribute [rw] document_type
    #   The document type.
    #   @return [String]
    #
    # @!attribute [rw] schema_version
    #   The schema version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DocumentIdentifier AWS API Documentation
    #
    class DocumentIdentifier < Struct.new(
      :name,
      :owner,
      :platform_types,
      :document_version,
      :document_type,
      :schema_version)
      include Aws::Structure
    end

    # Parameters specified in a System Manager document that execute on the
    # server when the command is run.
    #
    # @!attribute [rw] name
    #   The name of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of parameter. The type can be either String or StringList.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of what the parameter does, how to use it, the default
    #   value, and whether or not the parameter is optional.
    #   @return [String]
    #
    # @!attribute [rw] default_value
    #   If specified, the default values for the parameters. Parameters
    #   without a default value are required. Parameters with a default
    #   value are optional.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DocumentParameter AWS API Documentation
    #
    class DocumentParameter < Struct.new(
      :name,
      :type,
      :description,
      :default_value)
      include Aws::Structure
    end

    # Version information about the document.
    #
    # @!attribute [rw] name
    #   The document name.
    #   @return [String]
    #
    # @!attribute [rw] document_version
    #   The document version.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date the document was created.
    #   @return [Time]
    #
    # @!attribute [rw] is_default_version
    #   An identifier for the default version of the document.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DocumentVersionInfo AWS API Documentation
    #
    class DocumentVersionInfo < Struct.new(
      :name,
      :document_version,
      :created_date,
      :is_default_version)
      include Aws::Structure
    end

    # The EffectivePatch structure defines metadata about a patch along with
    # the approval state of the patch in a particular patch baseline. The
    # approval state includes information about whether the patch is
    # currently approved, due to be approved by a rule, explicitly approved,
    # or explicitly rejected and the date the patch was or will be approved.
    #
    # @!attribute [rw] patch
    #   Provides metadata for a patch, including information such as the KB
    #   ID, severity, classification and a URL for where more information
    #   can be obtained about the patch.
    #   @return [Types::Patch]
    #
    # @!attribute [rw] patch_status
    #   The status of the patch in a patch baseline. This includes
    #   information about whether the patch is currently approved, due to be
    #   approved by a rule, explicitly approved, or explicitly rejected and
    #   the date the patch was or will be approved.
    #   @return [Types::PatchStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/EffectivePatch AWS API Documentation
    #
    class EffectivePatch < Struct.new(
      :patch,
      :patch_status)
      include Aws::Structure
    end

    # Describes a failed association.
    #
    # @!attribute [rw] entry
    #   The association.
    #   @return [Types::CreateAssociationBatchRequestEntry]
    #
    # @!attribute [rw] message
    #   A description of the failure.
    #   @return [String]
    #
    # @!attribute [rw] fault
    #   The source of the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/FailedCreateAssociation AWS API Documentation
    #
    class FailedCreateAssociation < Struct.new(
      :entry,
      :message,
      :fault)
      include Aws::Structure
    end

    # Information about an Automation failure.
    #
    # @!attribute [rw] failure_stage
    #   The stage of the Automation execution when the failure occurred. The
    #   stages include the following: InputValidation, PreVerification,
    #   Invocation, PostVerification.
    #   @return [String]
    #
    # @!attribute [rw] failure_type
    #   The type of Automation failure. Failure types include the following:
    #   Action, Permission, Throttling, Verification, Internal.
    #   @return [String]
    #
    # @!attribute [rw] details
    #   Detailed information about the Automation step failure.
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/FailureDetails AWS API Documentation
    #
    class FailureDetails < Struct.new(
      :failure_stage,
      :failure_type,
      :details)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetAutomationExecutionRequest
    #   data as a hash:
    #
    #       {
    #         automation_execution_id: "AutomationExecutionId", # required
    #       }
    #
    # @!attribute [rw] automation_execution_id
    #   The unique identifier for an existing automation execution to
    #   examine. The execution ID is returned by StartAutomationExecution
    #   when the execution of an Automation document is initiated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetAutomationExecutionRequest AWS API Documentation
    #
    class GetAutomationExecutionRequest < Struct.new(
      :automation_execution_id)
      include Aws::Structure
    end

    # @!attribute [rw] automation_execution
    #   Detailed information about the current state of an automation
    #   execution.
    #   @return [Types::AutomationExecution]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetAutomationExecutionResult AWS API Documentation
    #
    class GetAutomationExecutionResult < Struct.new(
      :automation_execution)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCommandInvocationRequest
    #   data as a hash:
    #
    #       {
    #         command_id: "CommandId", # required
    #         instance_id: "InstanceId", # required
    #         plugin_name: "CommandPluginName",
    #       }
    #
    # @!attribute [rw] command_id
    #   (Required) The parent command ID of the invocation plugin.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   (Required) The ID of the managed instance targeted by the command. A
    #   managed instance can be an Amazon EC2 instance or an instance in
    #   your hybrid environment that is configured for Systems Manager.
    #   @return [String]
    #
    # @!attribute [rw] plugin_name
    #   (Optional) The name of the plugin for which you want detailed
    #   results. If the document contains only one plugin, the name can be
    #   omitted and the details will be returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetCommandInvocationRequest AWS API Documentation
    #
    class GetCommandInvocationRequest < Struct.new(
      :command_id,
      :instance_id,
      :plugin_name)
      include Aws::Structure
    end

    # @!attribute [rw] command_id
    #   The parent command ID of the invocation plugin.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The ID of the managed instance targeted by the command. A managed
    #   instance can be an Amazon EC2 instance or an instance in your hybrid
    #   environment that is configured for Systems Manager.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   The comment text for the command.
    #   @return [String]
    #
    # @!attribute [rw] document_name
    #   The name of the document that was executed. For example,
    #   AWS-RunShellScript.
    #   @return [String]
    #
    # @!attribute [rw] plugin_name
    #   The name of the plugin for which you want detailed results. For
    #   example, aws:RunShellScript is a plugin.
    #   @return [String]
    #
    # @!attribute [rw] response_code
    #   The error level response code for the plugin script. If the response
    #   code is -1, then the command has not started executing on the
    #   instance, or it was not received by the instance.
    #   @return [Integer]
    #
    # @!attribute [rw] execution_start_date_time
    #   The date and time the plugin started executing. Date and time are
    #   written in ISO 8601 format. For example, June 7, 2017 is represented
    #   as 2017-06-7. The following sample AWS CLI command uses the
    #   `InvokedBefore` filter.
    #
    #   `aws ssm list-commands --filters
    #   key=InvokedBefore,value=2017-06-07T00:00:00Z`
    #
    #   If the plugin has not started to execute, the string is empty.
    #   @return [String]
    #
    # @!attribute [rw] execution_elapsed_time
    #   Duration since ExecutionStartDateTime.
    #   @return [String]
    #
    # @!attribute [rw] execution_end_date_time
    #   The date and time the plugin was finished executing. Date and time
    #   are written in ISO 8601 format. For example, June 7, 2017 is
    #   represented as 2017-06-7. The following sample AWS CLI command uses
    #   the `InvokedAfter` filter.
    #
    #   `aws ssm list-commands --filters
    #   key=InvokedAfter,value=2017-06-07T00:00:00Z`
    #
    #   If the plugin has not started to execute, the string is empty.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the parent command for this invocation. This status
    #   can be different than StatusDetails.
    #   @return [String]
    #
    # @!attribute [rw] status_details
    #   A detailed status of the command execution for an invocation.
    #   StatusDetails includes more information than Status because it
    #   includes states resulting from error and concurrency control
    #   parameters. StatusDetails can show different results than Status.
    #   For more information about these statuses, see [Run Command
    #   Status][1]. StatusDetails can be one of the following values:
    #
    #   * Pending: The command has not been sent to the instance.
    #
    #   * In Progress: The command has been sent to the instance but has not
    #     reached a terminal state.
    #
    #   * Delayed: The system attempted to send the command to the target,
    #     but the target was not available. The instance might not be
    #     available because of network issues, the instance was stopped,
    #     etc. The system will try to deliver the command again.
    #
    #   * Success: The command or plugin was executed successfully. This is
    #     a terminal state.
    #
    #   * Delivery Timed Out: The command was not delivered to the instance
    #     before the delivery timeout expired. Delivery timeouts do not
    #     count against the parent command's MaxErrors limit, but they do
    #     contribute to whether the parent command status is Success or
    #     Incomplete. This is a terminal state.
    #
    #   * Execution Timed Out: The command started to execute on the
    #     instance, but the execution was not complete before the timeout
    #     expired. Execution timeouts count against the MaxErrors limit of
    #     the parent command. This is a terminal state.
    #
    #   * Failed: The command wasn't executed successfully on the instance.
    #     For a plugin, this indicates that the result code was not zero.
    #     For a command invocation, this indicates that the result code for
    #     one or more plugins was not zero. Invocation failures count
    #     against the MaxErrors limit of the parent command. This is a
    #     terminal state.
    #
    #   * Canceled: The command was terminated before it was completed. This
    #     is a terminal state.
    #
    #   * Undeliverable: The command can't be delivered to the instance.
    #     The instance might not exist or might not be responding.
    #     Undeliverable invocations don't count against the parent
    #     command's MaxErrors limit and don't contribute to whether the
    #     parent command status is Success or Incomplete. This is a terminal
    #     state.
    #
    #   * Terminated: The parent command exceeded its MaxErrors limit and
    #     subsequent command invocations were canceled by the system. This
    #     is a terminal state.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-about-status.html
    #   @return [String]
    #
    # @!attribute [rw] standard_output_content
    #   The first 24,000 characters written by the plugin to stdout. If the
    #   command has not finished executing, if ExecutionStatus is neither
    #   Succeeded nor Failed, then this string is empty.
    #   @return [String]
    #
    # @!attribute [rw] standard_output_url
    #   The URL for the complete text written by the plugin to stdout in
    #   Amazon S3. If an Amazon S3 bucket was not specified, then this
    #   string is empty.
    #   @return [String]
    #
    # @!attribute [rw] standard_error_content
    #   The first 8,000 characters written by the plugin to stderr. If the
    #   command has not finished executing, then this string is empty.
    #   @return [String]
    #
    # @!attribute [rw] standard_error_url
    #   The URL for the complete text written by the plugin to stderr. If
    #   the command has not finished executing, then this string is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetCommandInvocationResult AWS API Documentation
    #
    class GetCommandInvocationResult < Struct.new(
      :command_id,
      :instance_id,
      :comment,
      :document_name,
      :plugin_name,
      :response_code,
      :execution_start_date_time,
      :execution_elapsed_time,
      :execution_end_date_time,
      :status,
      :status_details,
      :standard_output_content,
      :standard_output_url,
      :standard_error_content,
      :standard_error_url)
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetDefaultPatchBaselineRequest AWS API Documentation
    #
    class GetDefaultPatchBaselineRequest < Aws::EmptyStructure; end

    # @!attribute [rw] baseline_id
    #   The ID of the default patch baseline.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetDefaultPatchBaselineResult AWS API Documentation
    #
    class GetDefaultPatchBaselineResult < Struct.new(
      :baseline_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDeployablePatchSnapshotForInstanceRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         snapshot_id: "SnapshotId", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance for which the appropriate patch snapshot
    #   should be retrieved.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_id
    #   The user-defined snapshot ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetDeployablePatchSnapshotForInstanceRequest AWS API Documentation
    #
    class GetDeployablePatchSnapshotForInstanceRequest < Struct.new(
      :instance_id,
      :snapshot_id)
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The ID of the instance.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_id
    #   The user-defined snapshot ID.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_download_url
    #   A pre-signed Amazon S3 URL that can be used to download the patch
    #   snapshot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetDeployablePatchSnapshotForInstanceResult AWS API Documentation
    #
    class GetDeployablePatchSnapshotForInstanceResult < Struct.new(
      :instance_id,
      :snapshot_id,
      :snapshot_download_url)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDocumentRequest
    #   data as a hash:
    #
    #       {
    #         name: "DocumentARN", # required
    #         document_version: "DocumentVersion",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the SSM document.
    #   @return [String]
    #
    # @!attribute [rw] document_version
    #   The document version for which you want information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetDocumentRequest AWS API Documentation
    #
    class GetDocumentRequest < Struct.new(
      :name,
      :document_version)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the SSM document.
    #   @return [String]
    #
    # @!attribute [rw] document_version
    #   The document version.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The contents of the SSM document.
    #   @return [String]
    #
    # @!attribute [rw] document_type
    #   The document type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetDocumentResult AWS API Documentation
    #
    class GetDocumentResult < Struct.new(
      :name,
      :document_version,
      :content,
      :document_type)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetInventoryRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             key: "InventoryFilterKey", # required
    #             values: ["InventoryFilterValue"], # required
    #             type: "Equal", # accepts Equal, NotEqual, BeginWith, LessThan, GreaterThan
    #           },
    #         ],
    #         result_attributes: [
    #           {
    #             type_name: "InventoryItemTypeName", # required
    #           },
    #         ],
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] filters
    #   One or more filters. Use a filter to return a more specific list of
    #   results.
    #   @return [Array<Types::InventoryFilter>]
    #
    # @!attribute [rw] result_attributes
    #   The list of inventory item types to return.
    #   @return [Array<Types::ResultAttribute>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetInventoryRequest AWS API Documentation
    #
    class GetInventoryRequest < Struct.new(
      :filters,
      :result_attributes,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] entities
    #   Collection of inventory entities such as a collection of instance
    #   inventory.
    #   @return [Array<Types::InventoryResultEntity>]
    #
    # @!attribute [rw] next_token
    #   The token to use when requesting the next set of items. If there are
    #   no additional items to return, the string is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetInventoryResult AWS API Documentation
    #
    class GetInventoryResult < Struct.new(
      :entities,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetInventorySchemaRequest
    #   data as a hash:
    #
    #       {
    #         type_name: "InventoryItemTypeNameFilter",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] type_name
    #   The type of inventory item to return.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetInventorySchemaRequest AWS API Documentation
    #
    class GetInventorySchemaRequest < Struct.new(
      :type_name,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] schemas
    #   Inventory schemas returned by the request.
    #   @return [Array<Types::InventoryItemSchema>]
    #
    # @!attribute [rw] next_token
    #   The token to use when requesting the next set of items. If there are
    #   no additional items to return, the string is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetInventorySchemaResult AWS API Documentation
    #
    class GetInventorySchemaResult < Struct.new(
      :schemas,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetMaintenanceWindowExecutionRequest
    #   data as a hash:
    #
    #       {
    #         window_execution_id: "MaintenanceWindowExecutionId", # required
    #       }
    #
    # @!attribute [rw] window_execution_id
    #   The ID of the Maintenance Window execution that includes the task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetMaintenanceWindowExecutionRequest AWS API Documentation
    #
    class GetMaintenanceWindowExecutionRequest < Struct.new(
      :window_execution_id)
      include Aws::Structure
    end

    # @!attribute [rw] window_execution_id
    #   The ID of the Maintenance Window execution.
    #   @return [String]
    #
    # @!attribute [rw] task_ids
    #   The ID of the task executions from the Maintenance Window execution.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The status of the Maintenance Window execution.
    #   @return [String]
    #
    # @!attribute [rw] status_details
    #   The details explaining the Status. Only available for certain status
    #   values.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time the Maintenance Window started executing.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time the Maintenance Window finished executing.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetMaintenanceWindowExecutionResult AWS API Documentation
    #
    class GetMaintenanceWindowExecutionResult < Struct.new(
      :window_execution_id,
      :task_ids,
      :status,
      :status_details,
      :start_time,
      :end_time)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetMaintenanceWindowExecutionTaskRequest
    #   data as a hash:
    #
    #       {
    #         window_execution_id: "MaintenanceWindowExecutionId", # required
    #         task_id: "MaintenanceWindowExecutionTaskId", # required
    #       }
    #
    # @!attribute [rw] window_execution_id
    #   The ID of the Maintenance Window execution that includes the task.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   The ID of the specific task execution in the Maintenance Window task
    #   that should be retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetMaintenanceWindowExecutionTaskRequest AWS API Documentation
    #
    class GetMaintenanceWindowExecutionTaskRequest < Struct.new(
      :window_execution_id,
      :task_id)
      include Aws::Structure
    end

    # @!attribute [rw] window_execution_id
    #   The ID of the Maintenance Window execution that includes the task.
    #   @return [String]
    #
    # @!attribute [rw] task_execution_id
    #   The ID of the specific task execution in the Maintenance Window task
    #   that was retrieved.
    #   @return [String]
    #
    # @!attribute [rw] task_arn
    #   The ARN of the executed task.
    #   @return [String]
    #
    # @!attribute [rw] service_role
    #   The role that was assumed when executing the task.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of task executed.
    #   @return [String]
    #
    # @!attribute [rw] task_parameters
    #   The parameters passed to the task when it was executed. The map has
    #   the following format:
    #
    #   Key: string, between 1 and 255 characters
    #
    #   Value: an array of strings, each string is between 1 and 255
    #   characters
    #   @return [Array<Hash<String,Types::MaintenanceWindowTaskParameterValueExpression>>]
    #
    # @!attribute [rw] priority
    #   The priority of the task.
    #   @return [Integer]
    #
    # @!attribute [rw] max_concurrency
    #   The defined maximum number of task executions that could be run in
    #   parallel.
    #   @return [String]
    #
    # @!attribute [rw] max_errors
    #   The defined maximum number of task execution errors allowed before
    #   scheduling of the task execution would have been stopped.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the task.
    #   @return [String]
    #
    # @!attribute [rw] status_details
    #   The details explaining the Status. Only available for certain status
    #   values.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time the task execution started.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time the task execution completed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetMaintenanceWindowExecutionTaskResult AWS API Documentation
    #
    class GetMaintenanceWindowExecutionTaskResult < Struct.new(
      :window_execution_id,
      :task_execution_id,
      :task_arn,
      :service_role,
      :type,
      :task_parameters,
      :priority,
      :max_concurrency,
      :max_errors,
      :status,
      :status_details,
      :start_time,
      :end_time)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetMaintenanceWindowRequest
    #   data as a hash:
    #
    #       {
    #         window_id: "MaintenanceWindowId", # required
    #       }
    #
    # @!attribute [rw] window_id
    #   The ID of the desired Maintenance Window.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetMaintenanceWindowRequest AWS API Documentation
    #
    class GetMaintenanceWindowRequest < Struct.new(
      :window_id)
      include Aws::Structure
    end

    # @!attribute [rw] window_id
    #   The ID of the created Maintenance Window.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Maintenance Window.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   The schedule of the Maintenance Window in the form of a cron or rate
    #   expression.
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   The duration of the Maintenance Window in hours.
    #   @return [Integer]
    #
    # @!attribute [rw] cutoff
    #   The number of hours before the end of the Maintenance Window that
    #   Systems Manager stops scheduling new tasks for execution.
    #   @return [Integer]
    #
    # @!attribute [rw] allow_unassociated_targets
    #   Whether targets must be registered with the Maintenance Window
    #   before tasks can be defined for those targets.
    #   @return [Boolean]
    #
    # @!attribute [rw] enabled
    #   Whether the Maintenance Windows is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] created_date
    #   The date the Maintenance Window was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_date
    #   The date the Maintenance Window was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetMaintenanceWindowResult AWS API Documentation
    #
    class GetMaintenanceWindowResult < Struct.new(
      :window_id,
      :name,
      :schedule,
      :duration,
      :cutoff,
      :allow_unassociated_targets,
      :enabled,
      :created_date,
      :modified_date)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetParameterHistoryRequest
    #   data as a hash:
    #
    #       {
    #         name: "PSParameterName", # required
    #         with_decryption: false,
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] name
    #   The name of a parameter you want to query.
    #   @return [String]
    #
    # @!attribute [rw] with_decryption
    #   Return decrypted values for secure string parameters. This flag is
    #   ignored for String and StringList parameter types.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetParameterHistoryRequest AWS API Documentation
    #
    class GetParameterHistoryRequest < Struct.new(
      :name,
      :with_decryption,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] parameters
    #   A list of parameters returned by the request.
    #   @return [Array<Types::ParameterHistory>]
    #
    # @!attribute [rw] next_token
    #   The token to use when requesting the next set of items. If there are
    #   no additional items to return, the string is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetParameterHistoryResult AWS API Documentation
    #
    class GetParameterHistoryResult < Struct.new(
      :parameters,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetParameterRequest
    #   data as a hash:
    #
    #       {
    #         name: "PSParameterName", # required
    #         with_decryption: false,
    #       }
    #
    # @!attribute [rw] name
    #   The name of the parameter you want to query.
    #   @return [String]
    #
    # @!attribute [rw] with_decryption
    #   Return decrypted values for secure string parameters. This flag is
    #   ignored for String and StringList parameter types.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetParameterRequest AWS API Documentation
    #
    class GetParameterRequest < Struct.new(
      :name,
      :with_decryption)
      include Aws::Structure
    end

    # @!attribute [rw] parameter
    #   Information about a parameter.
    #   @return [Types::Parameter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetParameterResult AWS API Documentation
    #
    class GetParameterResult < Struct.new(
      :parameter)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetParametersByPathRequest
    #   data as a hash:
    #
    #       {
    #         path: "PSParameterName", # required
    #         recursive: false,
    #         parameter_filters: [
    #           {
    #             key: "ParameterStringFilterKey", # required
    #             option: "ParameterStringQueryOption",
    #             values: ["ParameterStringFilterValue"],
    #           },
    #         ],
    #         with_decryption: false,
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] path
    #   The hierarchy for the parameter. Hierarchies start with a forward
    #   slash (/) and end with the parameter name. A hierarchy can have a
    #   maximum of five levels. Examples: /Environment/Test/DBString003
    #
    #   /Finance/Prod/IAD/OS/WinServ2016/license15
    #   @return [String]
    #
    # @!attribute [rw] recursive
    #   Retrieve all parameters within a hierarchy.
    #   @return [Boolean]
    #
    # @!attribute [rw] parameter_filters
    #   Filters to limit the request results.
    #   @return [Array<Types::ParameterStringFilter>]
    #
    # @!attribute [rw] with_decryption
    #   Retrieve all parameters in a hierarchy with their value decrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetParametersByPathRequest AWS API Documentation
    #
    class GetParametersByPathRequest < Struct.new(
      :path,
      :recursive,
      :parameter_filters,
      :with_decryption,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] parameters
    #   A list of parameters found in the specified hierarchy.
    #   @return [Array<Types::Parameter>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. Use this token to get
    #   the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetParametersByPathResult AWS API Documentation
    #
    class GetParametersByPathResult < Struct.new(
      :parameters,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetParametersRequest
    #   data as a hash:
    #
    #       {
    #         names: ["PSParameterName"], # required
    #         with_decryption: false,
    #       }
    #
    # @!attribute [rw] names
    #   Names of the parameters for which you want to query information.
    #   @return [Array<String>]
    #
    # @!attribute [rw] with_decryption
    #   Return decrypted secure string value. Return decrypted values for
    #   secure string parameters. This flag is ignored for String and
    #   StringList parameter types.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetParametersRequest AWS API Documentation
    #
    class GetParametersRequest < Struct.new(
      :names,
      :with_decryption)
      include Aws::Structure
    end

    # @!attribute [rw] parameters
    #   A list of details for a parameter.
    #   @return [Array<Types::Parameter>]
    #
    # @!attribute [rw] invalid_parameters
    #   A list of parameters that are not formatted correctly or do not run
    #   when executed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetParametersResult AWS API Documentation
    #
    class GetParametersResult < Struct.new(
      :parameters,
      :invalid_parameters)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetPatchBaselineForPatchGroupRequest
    #   data as a hash:
    #
    #       {
    #         patch_group: "PatchGroup", # required
    #       }
    #
    # @!attribute [rw] patch_group
    #   The name of the patch group whose patch baseline should be
    #   retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetPatchBaselineForPatchGroupRequest AWS API Documentation
    #
    class GetPatchBaselineForPatchGroupRequest < Struct.new(
      :patch_group)
      include Aws::Structure
    end

    # @!attribute [rw] baseline_id
    #   The ID of the patch baseline that should be used for the patch
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] patch_group
    #   The name of the patch group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetPatchBaselineForPatchGroupResult AWS API Documentation
    #
    class GetPatchBaselineForPatchGroupResult < Struct.new(
      :baseline_id,
      :patch_group)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetPatchBaselineRequest
    #   data as a hash:
    #
    #       {
    #         baseline_id: "BaselineId", # required
    #       }
    #
    # @!attribute [rw] baseline_id
    #   The ID of the patch baseline to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetPatchBaselineRequest AWS API Documentation
    #
    class GetPatchBaselineRequest < Struct.new(
      :baseline_id)
      include Aws::Structure
    end

    # @!attribute [rw] baseline_id
    #   The ID of the retrieved patch baseline.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the patch baseline.
    #   @return [String]
    #
    # @!attribute [rw] global_filters
    #   A set of global filters used to exclude patches from the baseline.
    #   @return [Types::PatchFilterGroup]
    #
    # @!attribute [rw] approval_rules
    #   A set of rules used to include patches in the baseline.
    #   @return [Types::PatchRuleGroup]
    #
    # @!attribute [rw] approved_patches
    #   A list of explicitly approved patches for the baseline.
    #   @return [Array<String>]
    #
    # @!attribute [rw] rejected_patches
    #   A list of explicitly rejected patches for the baseline.
    #   @return [Array<String>]
    #
    # @!attribute [rw] patch_groups
    #   Patch groups included in the patch baseline.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_date
    #   The date the patch baseline was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_date
    #   The date the patch baseline was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A description of the patch baseline.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetPatchBaselineResult AWS API Documentation
    #
    class GetPatchBaselineResult < Struct.new(
      :baseline_id,
      :name,
      :global_filters,
      :approval_rules,
      :approved_patches,
      :rejected_patches,
      :patch_groups,
      :created_date,
      :modified_date,
      :description)
      include Aws::Structure
    end

    # Status information about the aggregated associations.
    #
    # @!attribute [rw] detailed_status
    #   Detailed status information about the aggregated associations.
    #   @return [String]
    #
    # @!attribute [rw] instance_association_status_aggregated_count
    #   The number of associations for the instance(s).
    #   @return [Hash<String,Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InstanceAggregatedAssociationOverview AWS API Documentation
    #
    class InstanceAggregatedAssociationOverview < Struct.new(
      :detailed_status,
      :instance_association_status_aggregated_count)
      include Aws::Structure
    end

    # One or more association documents on the instance.
    #
    # @!attribute [rw] association_id
    #   The association ID.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The instance ID.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the association document for the instance(s).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InstanceAssociation AWS API Documentation
    #
    class InstanceAssociation < Struct.new(
      :association_id,
      :instance_id,
      :content)
      include Aws::Structure
    end

    # An Amazon S3 bucket where you want to store the results of this
    # request.
    #
    # @note When making an API call, you may pass InstanceAssociationOutputLocation
    #   data as a hash:
    #
    #       {
    #         s3_location: {
    #           output_s3_region: "S3Region",
    #           output_s3_bucket_name: "S3BucketName",
    #           output_s3_key_prefix: "S3KeyPrefix",
    #         },
    #       }
    #
    # @!attribute [rw] s3_location
    #   An Amazon S3 bucket where you want to store the results of this
    #   request.
    #   @return [Types::S3OutputLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InstanceAssociationOutputLocation AWS API Documentation
    #
    class InstanceAssociationOutputLocation < Struct.new(
      :s3_location)
      include Aws::Structure
    end

    # The URL of Amazon S3 bucket where you want to store the results of
    # this request.
    #
    # @!attribute [rw] s3_output_url
    #   The URL of Amazon S3 bucket where you want to store the results of
    #   this request.
    #   @return [Types::S3OutputUrl]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InstanceAssociationOutputUrl AWS API Documentation
    #
    class InstanceAssociationOutputUrl < Struct.new(
      :s3_output_url)
      include Aws::Structure
    end

    # Status information about the instance association.
    #
    # @!attribute [rw] association_id
    #   The association ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the association.
    #   @return [String]
    #
    # @!attribute [rw] document_version
    #   The association document verions.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The instance ID where the association was created.
    #   @return [String]
    #
    # @!attribute [rw] execution_date
    #   The date the instance association executed.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   Status information about the instance association.
    #   @return [String]
    #
    # @!attribute [rw] detailed_status
    #   Detailed status information about the instance association.
    #   @return [String]
    #
    # @!attribute [rw] execution_summary
    #   Summary information about association execution.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   An error code returned by the request to create the association.
    #   @return [String]
    #
    # @!attribute [rw] output_url
    #   A URL for an Amazon S3 bucket where you want to store the results of
    #   this request.
    #   @return [Types::InstanceAssociationOutputUrl]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InstanceAssociationStatusInfo AWS API Documentation
    #
    class InstanceAssociationStatusInfo < Struct.new(
      :association_id,
      :name,
      :document_version,
      :instance_id,
      :execution_date,
      :status,
      :detailed_status,
      :execution_summary,
      :error_code,
      :output_url)
      include Aws::Structure
    end

    # Describes a filter for a specific list of instances.
    #
    # @!attribute [rw] instance_id
    #   The instance ID.
    #   @return [String]
    #
    # @!attribute [rw] ping_status
    #   Connection status of the SSM Agent.
    #   @return [String]
    #
    # @!attribute [rw] last_ping_date_time
    #   The date and time when agent last pinged Systems Manager service.
    #   @return [Time]
    #
    # @!attribute [rw] agent_version
    #   The version of the SSM Agent running on your Linux instance.
    #   @return [String]
    #
    # @!attribute [rw] is_latest_version
    #   Indicates whether latest version of the SSM Agent is running on your
    #   instance.
    #   @return [Boolean]
    #
    # @!attribute [rw] platform_type
    #   The operating system platform type.
    #   @return [String]
    #
    # @!attribute [rw] platform_name
    #   The name of the operating system platform running on your instance.
    #   @return [String]
    #
    # @!attribute [rw] platform_version
    #   The version of the OS platform running on your instance.
    #   @return [String]
    #
    # @!attribute [rw] activation_id
    #   The activation ID created by Systems Manager when the server or VM
    #   was registered.
    #   @return [String]
    #
    # @!attribute [rw] iam_role
    #   The Amazon Identity and Access Management (IAM) role assigned to EC2
    #   instances or managed instances.
    #   @return [String]
    #
    # @!attribute [rw] registration_date
    #   The date the server or VM was registered with AWS as a managed
    #   instance.
    #   @return [Time]
    #
    # @!attribute [rw] resource_type
    #   The type of instance. Instances are either EC2 instances or managed
    #   instances.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the managed instance.
    #   @return [String]
    #
    # @!attribute [rw] ip_address
    #   The IP address of the managed instance.
    #   @return [String]
    #
    # @!attribute [rw] computer_name
    #   The fully qualified host name of the managed instance.
    #   @return [String]
    #
    # @!attribute [rw] association_status
    #   The status of the association.
    #   @return [String]
    #
    # @!attribute [rw] last_association_execution_date
    #   The date the association was last executed.
    #   @return [Time]
    #
    # @!attribute [rw] last_successful_association_execution_date
    #   The last date the association was successfully run.
    #   @return [Time]
    #
    # @!attribute [rw] association_overview
    #   Information about the association.
    #   @return [Types::InstanceAggregatedAssociationOverview]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InstanceInformation AWS API Documentation
    #
    class InstanceInformation < Struct.new(
      :instance_id,
      :ping_status,
      :last_ping_date_time,
      :agent_version,
      :is_latest_version,
      :platform_type,
      :platform_name,
      :platform_version,
      :activation_id,
      :iam_role,
      :registration_date,
      :resource_type,
      :name,
      :ip_address,
      :computer_name,
      :association_status,
      :last_association_execution_date,
      :last_successful_association_execution_date,
      :association_overview)
      include Aws::Structure
    end

    # Describes a filter for a specific list of instances.
    #
    # @note When making an API call, you may pass InstanceInformationFilter
    #   data as a hash:
    #
    #       {
    #         key: "InstanceIds", # required, accepts InstanceIds, AgentVersion, PingStatus, PlatformTypes, ActivationIds, IamRole, ResourceType, AssociationStatus
    #         value_set: ["InstanceInformationFilterValue"], # required
    #       }
    #
    # @!attribute [rw] key
    #   The name of the filter.
    #   @return [String]
    #
    # @!attribute [rw] value_set
    #   The filter values.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InstanceInformationFilter AWS API Documentation
    #
    class InstanceInformationFilter < Struct.new(
      :key,
      :value_set)
      include Aws::Structure
    end

    # The filters to describe or get information about your managed
    # instances.
    #
    # @note When making an API call, you may pass InstanceInformationStringFilter
    #   data as a hash:
    #
    #       {
    #         key: "InstanceInformationStringFilterKey", # required
    #         values: ["InstanceInformationFilterValue"], # required
    #       }
    #
    # @!attribute [rw] key
    #   The filter key name to describe your instances. For example:
    #
    #   "InstanceIds"\|"AgentVersion"\|"PingStatus"\|"PlatformTypes"\|"ActivationIds"\|"IamRole"\|"ResourceType"\|"AssociationStatus"\|"Tag
    #   Key"
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The filter values.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InstanceInformationStringFilter AWS API Documentation
    #
    class InstanceInformationStringFilter < Struct.new(
      :key,
      :values)
      include Aws::Structure
    end

    # Defines the high-level patch compliance state for a managed instance,
    # providing information about the number of installed, missing, not
    # applicable, and failed patches along with metadata about the operation
    # when this information was gathered for the instance.
    #
    # @!attribute [rw] instance_id
    #   The ID of the managed instance the high-level patch compliance
    #   information was collected for.
    #   @return [String]
    #
    # @!attribute [rw] patch_group
    #   The name of the patch group the managed instance belongs to.
    #   @return [String]
    #
    # @!attribute [rw] baseline_id
    #   The ID of the patch baseline used to patch the instance.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_id
    #   The ID of the patch baseline snapshot used during the patching
    #   operation when this compliance data was collected.
    #   @return [String]
    #
    # @!attribute [rw] owner_information
    #   Placeholder information, this field will always be empty in the
    #   current release of the service.
    #   @return [String]
    #
    # @!attribute [rw] installed_count
    #   The number of patches from the patch baseline that are installed on
    #   the instance.
    #   @return [Integer]
    #
    # @!attribute [rw] installed_other_count
    #   The number of patches not specified in the patch baseline that are
    #   installed on the instance.
    #   @return [Integer]
    #
    # @!attribute [rw] missing_count
    #   The number of patches from the patch baseline that are applicable
    #   for the instance but aren't currently installed.
    #   @return [Integer]
    #
    # @!attribute [rw] failed_count
    #   The number of patches from the patch baseline that were attempted to
    #   be installed during the last patching operation, but failed to
    #   install.
    #   @return [Integer]
    #
    # @!attribute [rw] not_applicable_count
    #   The number of patches from the patch baseline that aren't
    #   applicable for the instance and hence aren't installed on the
    #   instance.
    #   @return [Integer]
    #
    # @!attribute [rw] operation_start_time
    #   The time the most recent patching operation was started on the
    #   instance.
    #   @return [Time]
    #
    # @!attribute [rw] operation_end_time
    #   The time the most recent patching operation completed on the
    #   instance.
    #   @return [Time]
    #
    # @!attribute [rw] operation
    #   The type of patching operation that was performed: SCAN (assess
    #   patch compliance state) or INSTALL (install missing patches).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InstancePatchState AWS API Documentation
    #
    class InstancePatchState < Struct.new(
      :instance_id,
      :patch_group,
      :baseline_id,
      :snapshot_id,
      :owner_information,
      :installed_count,
      :installed_other_count,
      :missing_count,
      :failed_count,
      :not_applicable_count,
      :operation_start_time,
      :operation_end_time,
      :operation)
      include Aws::Structure
    end

    # Defines a filter used in DescribeInstancePatchStatesForPatchGroup used
    # to scope down the information returned by the API.
    #
    # @note When making an API call, you may pass InstancePatchStateFilter
    #   data as a hash:
    #
    #       {
    #         key: "InstancePatchStateFilterKey", # required
    #         values: ["InstancePatchStateFilterValue"], # required
    #         type: "Equal", # required, accepts Equal, NotEqual, LessThan, GreaterThan
    #       }
    #
    # @!attribute [rw] key
    #   The key for the filter. Supported values are FailedCount,
    #   InstalledCount, InstalledOtherCount, MissingCount and
    #   NotApplicableCount.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The value for the filter, must be an integer greater than or equal
    #   to 0.
    #   @return [Array<String>]
    #
    # @!attribute [rw] type
    #   The type of comparison that should be performed for the value:
    #   Equal, NotEqual, LessThan or GreaterThan.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InstancePatchStateFilter AWS API Documentation
    #
    class InstancePatchStateFilter < Struct.new(
      :key,
      :values,
      :type)
      include Aws::Structure
    end

    # One or more filters. Use a filter to return a more specific list of
    # results.
    #
    # @note When making an API call, you may pass InventoryFilter
    #   data as a hash:
    #
    #       {
    #         key: "InventoryFilterKey", # required
    #         values: ["InventoryFilterValue"], # required
    #         type: "Equal", # accepts Equal, NotEqual, BeginWith, LessThan, GreaterThan
    #       }
    #
    # @!attribute [rw] key
    #   The name of the filter key.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   Inventory filter values. Example: inventory filter where instance
    #   IDs are specified as values
    #   Key=AWS:InstanceInformation.InstanceId,Values= i-a12b3c4d5e6g,
    #   i-1a2b3c4d5e6,Type=Equal
    #   @return [Array<String>]
    #
    # @!attribute [rw] type
    #   The type of filter. Valid values include the following:
    #   "Equal"\|"NotEqual"\|"BeginWith"\|"LessThan"\|"GreaterThan"
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InventoryFilter AWS API Documentation
    #
    class InventoryFilter < Struct.new(
      :key,
      :values,
      :type)
      include Aws::Structure
    end

    # Information collected from managed instances based on your inventory
    # policy document
    #
    # @note When making an API call, you may pass InventoryItem
    #   data as a hash:
    #
    #       {
    #         type_name: "InventoryItemTypeName", # required
    #         schema_version: "InventoryItemSchemaVersion", # required
    #         capture_time: "InventoryItemCaptureTime", # required
    #         content_hash: "InventoryItemContentHash",
    #         content: [
    #           {
    #             "AttributeName" => "AttributeValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] type_name
    #   The name of the inventory type. Default inventory item type names
    #   start with AWS. Custom inventory type names will start with Custom.
    #   Default inventory item types include the following:
    #   AWS:AWSComponent, AWS:Application, AWS:InstanceInformation,
    #   AWS:Network, and AWS:WindowsUpdate.
    #   @return [String]
    #
    # @!attribute [rw] schema_version
    #   The schema version for the inventory item.
    #   @return [String]
    #
    # @!attribute [rw] capture_time
    #   The time the inventory information was collected.
    #   @return [String]
    #
    # @!attribute [rw] content_hash
    #   MD5 hash of the inventory item type contents. The content hash is
    #   used to determine whether to update inventory information. The
    #   PutInventory API does not update the inventory item type contents if
    #   the MD5 hash has not changed since last update.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The inventory data of the inventory type.
    #   @return [Array<Hash<String,String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InventoryItem AWS API Documentation
    #
    class InventoryItem < Struct.new(
      :type_name,
      :schema_version,
      :capture_time,
      :content_hash,
      :content)
      include Aws::Structure
    end

    # Attributes are the entries within the inventory item content. It
    # contains name and value.
    #
    # @!attribute [rw] name
    #   Name of the inventory item attribute.
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   The data type of the inventory item attribute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InventoryItemAttribute AWS API Documentation
    #
    class InventoryItemAttribute < Struct.new(
      :name,
      :data_type)
      include Aws::Structure
    end

    # The inventory item schema definition. Users can use this to compose
    # inventory query filters.
    #
    # @!attribute [rw] type_name
    #   The name of the inventory type. Default inventory item type names
    #   start with AWS. Custom inventory type names will start with Custom.
    #   Default inventory item types include the following:
    #   AWS:AWSComponent, AWS:Application, AWS:InstanceInformation,
    #   AWS:Network, and AWS:WindowsUpdate.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The schema version for the inventory item.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   The schema attributes for inventory. This contains data type and
    #   attribute name.
    #   @return [Array<Types::InventoryItemAttribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InventoryItemSchema AWS API Documentation
    #
    class InventoryItemSchema < Struct.new(
      :type_name,
      :version,
      :attributes)
      include Aws::Structure
    end

    # Inventory query results.
    #
    # @!attribute [rw] id
    #   ID of the inventory result entity. For example, for managed instance
    #   inventory the result will be the managed instance ID. For EC2
    #   instance inventory, the result will be the instance ID.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   The data section in the inventory result entity json.
    #   @return [Hash<String,Types::InventoryResultItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InventoryResultEntity AWS API Documentation
    #
    class InventoryResultEntity < Struct.new(
      :id,
      :data)
      include Aws::Structure
    end

    # The inventory result item.
    #
    # @!attribute [rw] type_name
    #   The name of the inventory result item type.
    #   @return [String]
    #
    # @!attribute [rw] schema_version
    #   The schema version for the inventory result item/
    #   @return [String]
    #
    # @!attribute [rw] capture_time
    #   The time inventory item data was captured.
    #   @return [String]
    #
    # @!attribute [rw] content_hash
    #   MD5 hash of the inventory item type contents. The content hash is
    #   used to determine whether to update inventory information. The
    #   PutInventory API does not update the inventory item type contents if
    #   the MD5 hash has not changed since last update.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   Contains all the inventory data of the item type. Results include
    #   attribute names and values.
    #   @return [Array<Hash<String,String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InventoryResultItem AWS API Documentation
    #
    class InventoryResultItem < Struct.new(
      :type_name,
      :schema_version,
      :capture_time,
      :content_hash,
      :content)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAssociationsRequest
    #   data as a hash:
    #
    #       {
    #         association_filter_list: [
    #           {
    #             key: "InstanceId", # required, accepts InstanceId, Name, AssociationId, AssociationStatusName, LastExecutedBefore, LastExecutedAfter
    #             value: "AssociationFilterValue", # required
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] association_filter_list
    #   One or more filters. Use a filter to return a more specific list of
    #   results.
    #   @return [Array<Types::AssociationFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListAssociationsRequest AWS API Documentation
    #
    class ListAssociationsRequest < Struct.new(
      :association_filter_list,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] associations
    #   The associations.
    #   @return [Array<Types::Association>]
    #
    # @!attribute [rw] next_token
    #   The token to use when requesting the next set of items. If there are
    #   no additional items to return, the string is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListAssociationsResult AWS API Documentation
    #
    class ListAssociationsResult < Struct.new(
      :associations,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListCommandInvocationsRequest
    #   data as a hash:
    #
    #       {
    #         command_id: "CommandId",
    #         instance_id: "InstanceId",
    #         max_results: 1,
    #         next_token: "NextToken",
    #         filters: [
    #           {
    #             key: "InvokedAfter", # required, accepts InvokedAfter, InvokedBefore, Status
    #             value: "CommandFilterValue", # required
    #           },
    #         ],
    #         details: false,
    #       }
    #
    # @!attribute [rw] command_id
    #   (Optional) The invocations for a specific command ID.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   (Optional) The command execution details for a specific instance ID.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   (Optional) The maximum number of items to return for this call. The
    #   call also returns a token that you can specify in a subsequent call
    #   to get the next set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   (Optional) The token for the next set of items to return. (You
    #   received this token from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   (Optional) One or more filters. Use a filter to return a more
    #   specific list of results.
    #   @return [Array<Types::CommandFilter>]
    #
    # @!attribute [rw] details
    #   (Optional) If set this returns the response of the command
    #   executions and any command output. By default this is set to False.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListCommandInvocationsRequest AWS API Documentation
    #
    class ListCommandInvocationsRequest < Struct.new(
      :command_id,
      :instance_id,
      :max_results,
      :next_token,
      :filters,
      :details)
      include Aws::Structure
    end

    # @!attribute [rw] command_invocations
    #   (Optional) A list of all invocations.
    #   @return [Array<Types::CommandInvocation>]
    #
    # @!attribute [rw] next_token
    #   (Optional) The token for the next set of items to return. (You
    #   received this token from a previous call.)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListCommandInvocationsResult AWS API Documentation
    #
    class ListCommandInvocationsResult < Struct.new(
      :command_invocations,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListCommandsRequest
    #   data as a hash:
    #
    #       {
    #         command_id: "CommandId",
    #         instance_id: "InstanceId",
    #         max_results: 1,
    #         next_token: "NextToken",
    #         filters: [
    #           {
    #             key: "InvokedAfter", # required, accepts InvokedAfter, InvokedBefore, Status
    #             value: "CommandFilterValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] command_id
    #   (Optional) If provided, lists only the specified command.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   (Optional) Lists commands issued against this instance ID.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   (Optional) The maximum number of items to return for this call. The
    #   call also returns a token that you can specify in a subsequent call
    #   to get the next set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   (Optional) The token for the next set of items to return. (You
    #   received this token from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   (Optional) One or more filters. Use a filter to return a more
    #   specific list of results.
    #   @return [Array<Types::CommandFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListCommandsRequest AWS API Documentation
    #
    class ListCommandsRequest < Struct.new(
      :command_id,
      :instance_id,
      :max_results,
      :next_token,
      :filters)
      include Aws::Structure
    end

    # @!attribute [rw] commands
    #   (Optional) The list of commands requested by the user.
    #   @return [Array<Types::Command>]
    #
    # @!attribute [rw] next_token
    #   (Optional) The token for the next set of items to return. (You
    #   received this token from a previous call.)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListCommandsResult AWS API Documentation
    #
    class ListCommandsResult < Struct.new(
      :commands,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDocumentVersionsRequest
    #   data as a hash:
    #
    #       {
    #         name: "DocumentName", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the document about which you want version information.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListDocumentVersionsRequest AWS API Documentation
    #
    class ListDocumentVersionsRequest < Struct.new(
      :name,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] document_versions
    #   The document versions.
    #   @return [Array<Types::DocumentVersionInfo>]
    #
    # @!attribute [rw] next_token
    #   The token to use when requesting the next set of items. If there are
    #   no additional items to return, the string is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListDocumentVersionsResult AWS API Documentation
    #
    class ListDocumentVersionsResult < Struct.new(
      :document_versions,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDocumentsRequest
    #   data as a hash:
    #
    #       {
    #         document_filter_list: [
    #           {
    #             key: "Name", # required, accepts Name, Owner, PlatformTypes, DocumentType
    #             value: "DocumentFilterValue", # required
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] document_filter_list
    #   One or more filters. Use a filter to return a more specific list of
    #   results.
    #   @return [Array<Types::DocumentFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListDocumentsRequest AWS API Documentation
    #
    class ListDocumentsRequest < Struct.new(
      :document_filter_list,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] document_identifiers
    #   The names of the SSM documents.
    #   @return [Array<Types::DocumentIdentifier>]
    #
    # @!attribute [rw] next_token
    #   The token to use when requesting the next set of items. If there are
    #   no additional items to return, the string is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListDocumentsResult AWS API Documentation
    #
    class ListDocumentsResult < Struct.new(
      :document_identifiers,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListInventoryEntriesRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         type_name: "InventoryItemTypeName", # required
    #         filters: [
    #           {
    #             key: "InventoryFilterKey", # required
    #             values: ["InventoryFilterValue"], # required
    #             type: "Equal", # accepts Equal, NotEqual, BeginWith, LessThan, GreaterThan
    #           },
    #         ],
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] instance_id
    #   The instance ID for which you want inventory information.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The type of inventory item for which you want information.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   One or more filters. Use a filter to return a more specific list of
    #   results.
    #   @return [Array<Types::InventoryFilter>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListInventoryEntriesRequest AWS API Documentation
    #
    class ListInventoryEntriesRequest < Struct.new(
      :instance_id,
      :type_name,
      :filters,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] type_name
    #   The type of inventory item returned by the request.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The instance ID targeted by the request to query inventory
    #   information.
    #   @return [String]
    #
    # @!attribute [rw] schema_version
    #   The inventory schema version used by the instance(s).
    #   @return [String]
    #
    # @!attribute [rw] capture_time
    #   The time that inventory information was collected for the
    #   instance(s).
    #   @return [String]
    #
    # @!attribute [rw] entries
    #   A list of inventory items on the instance(s).
    #   @return [Array<Hash<String,String>>]
    #
    # @!attribute [rw] next_token
    #   The token to use when requesting the next set of items. If there are
    #   no additional items to return, the string is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListInventoryEntriesResult AWS API Documentation
    #
    class ListInventoryEntriesResult < Struct.new(
      :type_name,
      :instance_id,
      :schema_version,
      :capture_time,
      :entries,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_type: "ManagedInstance", # required, accepts ManagedInstance, MaintenanceWindow, Parameter
    #         resource_id: "ResourceId", # required
    #       }
    #
    # @!attribute [rw] resource_type
    #   Returns a list of tags for a specific resource type.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The resource ID for which you want to see a list of tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_type,
      :resource_id)
      include Aws::Structure
    end

    # @!attribute [rw] tag_list
    #   A list of tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListTagsForResourceResult AWS API Documentation
    #
    class ListTagsForResourceResult < Struct.new(
      :tag_list)
      include Aws::Structure
    end

    # Information about an Amazon S3 bucket to write instance-level logs to.
    #
    # @note When making an API call, you may pass LoggingInfo
    #   data as a hash:
    #
    #       {
    #         s3_bucket_name: "S3BucketName", # required
    #         s3_key_prefix: "S3KeyPrefix",
    #         s3_region: "S3Region", # required
    #       }
    #
    # @!attribute [rw] s3_bucket_name
    #   The name of an Amazon S3 bucket where execution logs are stored .
    #   @return [String]
    #
    # @!attribute [rw] s3_key_prefix
    #   (Optional) The Amazon S3 bucket subfolder.
    #   @return [String]
    #
    # @!attribute [rw] s3_region
    #   The region where the Amazon S3 bucket is located.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/LoggingInfo AWS API Documentation
    #
    class LoggingInfo < Struct.new(
      :s3_bucket_name,
      :s3_key_prefix,
      :s3_region)
      include Aws::Structure
    end

    # Describes the information about an execution of a Maintenance Window.
    #
    # @!attribute [rw] window_id
    #   The ID of the Maintenance Window.
    #   @return [String]
    #
    # @!attribute [rw] window_execution_id
    #   The ID of the Maintenance Window execution.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the execution.
    #   @return [String]
    #
    # @!attribute [rw] status_details
    #   The details explaining the Status. Only available for certain status
    #   values.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time the execution started.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time the execution finished.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/MaintenanceWindowExecution AWS API Documentation
    #
    class MaintenanceWindowExecution < Struct.new(
      :window_id,
      :window_execution_id,
      :status,
      :status_details,
      :start_time,
      :end_time)
      include Aws::Structure
    end

    # Information about a task execution performed as part of a Maintenance
    # Window execution.
    #
    # @!attribute [rw] window_execution_id
    #   The ID of the Maintenance Window execution that ran the task.
    #   @return [String]
    #
    # @!attribute [rw] task_execution_id
    #   The ID of the specific task execution in the Maintenance Window
    #   execution.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the task execution.
    #   @return [String]
    #
    # @!attribute [rw] status_details
    #   The details explaining the status of the task execution. Only
    #   available for certain status values.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time the task execution started.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time the task execution finished.
    #   @return [Time]
    #
    # @!attribute [rw] task_arn
    #   The ARN of the executed task.
    #   @return [String]
    #
    # @!attribute [rw] task_type
    #   The type of executed task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/MaintenanceWindowExecutionTaskIdentity AWS API Documentation
    #
    class MaintenanceWindowExecutionTaskIdentity < Struct.new(
      :window_execution_id,
      :task_execution_id,
      :status,
      :status_details,
      :start_time,
      :end_time,
      :task_arn,
      :task_type)
      include Aws::Structure
    end

    # Describes the information about a task invocation for a particular
    # target as part of a task execution performed as part of a Maintenance
    # Window execution.
    #
    # @!attribute [rw] window_execution_id
    #   The ID of the Maintenance Window execution that ran the task.
    #   @return [String]
    #
    # @!attribute [rw] task_execution_id
    #   The ID of the specific task execution in the Maintenance Window
    #   execution.
    #   @return [String]
    #
    # @!attribute [rw] invocation_id
    #   The ID of the task invocation.
    #   @return [String]
    #
    # @!attribute [rw] execution_id
    #   The ID of the action performed in the service that actually handled
    #   the task invocation. If the task type is RUN\_COMMAND, this value is
    #   the command ID.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters that were provided for the invocation when it was
    #   executed.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the task invocation.
    #   @return [String]
    #
    # @!attribute [rw] status_details
    #   The details explaining the status of the task invocation. Only
    #   available for certain Status values.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time the invocation started.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time the invocation finished.
    #   @return [Time]
    #
    # @!attribute [rw] owner_information
    #   User-provided value that was specified when the target was
    #   registered with the Maintenance Window. This was also included in
    #   any CloudWatch events raised during the task invocation.
    #   @return [String]
    #
    # @!attribute [rw] window_target_id
    #   The ID of the target definition in this Maintenance Window the
    #   invocation was performed for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/MaintenanceWindowExecutionTaskInvocationIdentity AWS API Documentation
    #
    class MaintenanceWindowExecutionTaskInvocationIdentity < Struct.new(
      :window_execution_id,
      :task_execution_id,
      :invocation_id,
      :execution_id,
      :parameters,
      :status,
      :status_details,
      :start_time,
      :end_time,
      :owner_information,
      :window_target_id)
      include Aws::Structure
    end

    # Filter used in the request.
    #
    # @note When making an API call, you may pass MaintenanceWindowFilter
    #   data as a hash:
    #
    #       {
    #         key: "MaintenanceWindowFilterKey",
    #         values: ["MaintenanceWindowFilterValue"],
    #       }
    #
    # @!attribute [rw] key
    #   The name of the filter.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The filter values.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/MaintenanceWindowFilter AWS API Documentation
    #
    class MaintenanceWindowFilter < Struct.new(
      :key,
      :values)
      include Aws::Structure
    end

    # Information about the Maintenance Window.
    #
    # @!attribute [rw] window_id
    #   The ID of the Maintenance Window.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Maintenance Window.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Whether the Maintenance Window is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] duration
    #   The duration of the Maintenance Window in hours.
    #   @return [Integer]
    #
    # @!attribute [rw] cutoff
    #   The number of hours before the end of the Maintenance Window that
    #   Systems Manager stops scheduling new tasks for execution.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/MaintenanceWindowIdentity AWS API Documentation
    #
    class MaintenanceWindowIdentity < Struct.new(
      :window_id,
      :name,
      :enabled,
      :duration,
      :cutoff)
      include Aws::Structure
    end

    # The target registered with the Maintenance Window.
    #
    # @!attribute [rw] window_id
    #   The Maintenance Window ID where the target is registered.
    #   @return [String]
    #
    # @!attribute [rw] window_target_id
    #   The ID of the target.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of target.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The targets (either instances or tags). Instances are specified
    #   using
    #   Key=instanceids,Values=&lt;instanceid1&gt;,&lt;instanceid2&gt;. Tags
    #   are specified using Key=&lt;tag name&gt;,Values=&lt;tag value&gt;.
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] owner_information
    #   User-provided value that will be included in any CloudWatch events
    #   raised while running tasks for these targets in this Maintenance
    #   Window.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/MaintenanceWindowTarget AWS API Documentation
    #
    class MaintenanceWindowTarget < Struct.new(
      :window_id,
      :window_target_id,
      :resource_type,
      :targets,
      :owner_information)
      include Aws::Structure
    end

    # Information about a task defined for a Maintenance Window.
    #
    # @!attribute [rw] window_id
    #   The Maintenance Window ID where the task is registered.
    #   @return [String]
    #
    # @!attribute [rw] window_task_id
    #   The task ID.
    #   @return [String]
    #
    # @!attribute [rw] task_arn
    #   The ARN of the task to execute.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of task.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The targets (either instances or tags). Instances are specified
    #   using
    #   Key=instanceids,Values=&lt;instanceid1&gt;,&lt;instanceid2&gt;. Tags
    #   are specified using Key=&lt;tag name&gt;,Values=&lt;tag value&gt;.
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] task_parameters
    #   The parameters that should be passed to the task when it is
    #   executed.
    #   @return [Hash<String,Types::MaintenanceWindowTaskParameterValueExpression>]
    #
    # @!attribute [rw] priority
    #   The priority of the task in the Maintenance Window, the lower the
    #   number the higher the priority. Tasks in a Maintenance Window are
    #   scheduled in priority order with tasks that have the same priority
    #   scheduled in parallel.
    #   @return [Integer]
    #
    # @!attribute [rw] logging_info
    #   Information about an Amazon S3 bucket to write task-level logs to.
    #   @return [Types::LoggingInfo]
    #
    # @!attribute [rw] service_role_arn
    #   The role that should be assumed when executing the task
    #   @return [String]
    #
    # @!attribute [rw] max_concurrency
    #   The maximum number of targets this task can be run for in parallel.
    #   @return [String]
    #
    # @!attribute [rw] max_errors
    #   The maximum number of errors allowed before this task stops being
    #   scheduled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/MaintenanceWindowTask AWS API Documentation
    #
    class MaintenanceWindowTask < Struct.new(
      :window_id,
      :window_task_id,
      :task_arn,
      :type,
      :targets,
      :task_parameters,
      :priority,
      :logging_info,
      :service_role_arn,
      :max_concurrency,
      :max_errors)
      include Aws::Structure
    end

    # Defines the values for a task parameter.
    #
    # @note When making an API call, you may pass MaintenanceWindowTaskParameterValueExpression
    #   data as a hash:
    #
    #       {
    #         values: ["MaintenanceWindowTaskParameterValue"],
    #       }
    #
    # @!attribute [rw] values
    #   This field contains an array of 0 or more strings, each 1 to 255
    #   characters in length.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/MaintenanceWindowTaskParameterValueExpression AWS API Documentation
    #
    class MaintenanceWindowTaskParameterValueExpression < Struct.new(
      :values)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ModifyDocumentPermissionRequest
    #   data as a hash:
    #
    #       {
    #         name: "DocumentName", # required
    #         permission_type: "Share", # required, accepts Share
    #         account_ids_to_add: ["AccountId"],
    #         account_ids_to_remove: ["AccountId"],
    #       }
    #
    # @!attribute [rw] name
    #   The name of the document that you want to share.
    #   @return [String]
    #
    # @!attribute [rw] permission_type
    #   The permission type for the document. The permission type can be
    #   *Share*.
    #   @return [String]
    #
    # @!attribute [rw] account_ids_to_add
    #   The AWS user accounts that should have access to the document. The
    #   account IDs can either be a group of account IDs or *All*.
    #   @return [Array<String>]
    #
    # @!attribute [rw] account_ids_to_remove
    #   The AWS user accounts that should no longer have access to the
    #   document. The AWS user account can either be a group of account IDs
    #   or *All*. This action has a higher priority than *AccountIdsToAdd*.
    #   If you specify an account ID to add and the same ID to remove, the
    #   system removes access to the document.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ModifyDocumentPermissionRequest AWS API Documentation
    #
    class ModifyDocumentPermissionRequest < Struct.new(
      :name,
      :permission_type,
      :account_ids_to_add,
      :account_ids_to_remove)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ModifyDocumentPermissionResponse AWS API Documentation
    #
    class ModifyDocumentPermissionResponse < Aws::EmptyStructure; end

    # Configurations for sending notifications.
    #
    # @note When making an API call, you may pass NotificationConfig
    #   data as a hash:
    #
    #       {
    #         notification_arn: "NotificationArn",
    #         notification_events: ["All"], # accepts All, InProgress, Success, TimedOut, Cancelled, Failed
    #         notification_type: "Command", # accepts Command, Invocation
    #       }
    #
    # @!attribute [rw] notification_arn
    #   An Amazon Resource Name (ARN) for a Simple Notification Service
    #   (SNS) topic. Run Command pushes notifications about command status
    #   changes to this topic.
    #   @return [String]
    #
    # @!attribute [rw] notification_events
    #   The different events for which you can receive notifications. These
    #   events include the following: All (events), InProgress, Success,
    #   TimedOut, Cancelled, Failed. To learn more about these events, see
    #   [Setting Up Events and Notifications][1] in the *Amazon EC2 Systems
    #   Manager User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-commands.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] notification_type
    #   Command: Receive notification when the status of a command changes.
    #   Invocation: For commands sent to multiple instances, receive
    #   notification on a per-instance basis when the status of a command
    #   changes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/NotificationConfig AWS API Documentation
    #
    class NotificationConfig < Struct.new(
      :notification_arn,
      :notification_events,
      :notification_type)
      include Aws::Structure
    end

    # An Amazon EC2 Systems Manager parameter in Parameter Store.
    #
    # @!attribute [rw] name
    #   The name of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of parameter. Valid values include the following: String,
    #   String list, Secure string.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The parameter value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/Parameter AWS API Documentation
    #
    class Parameter < Struct.new(
      :name,
      :type,
      :value)
      include Aws::Structure
    end

    # Information about parameter usage.
    #
    # @!attribute [rw] name
    #   The name of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of parameter used.
    #   @return [String]
    #
    # @!attribute [rw] key_id
    #   The ID of the query key used for this parameter.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   Date the parameter was last changed or updated.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_user
    #   Amazon Resource Name (ARN) of the AWS user who last changed the
    #   parameter.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Information about the parameter.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The parameter value.
    #   @return [String]
    #
    # @!attribute [rw] allowed_pattern
    #   Parameter names can include the following letters and symbols.
    #
    #   a-zA-Z0-9\_.-
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ParameterHistory AWS API Documentation
    #
    class ParameterHistory < Struct.new(
      :name,
      :type,
      :key_id,
      :last_modified_date,
      :last_modified_user,
      :description,
      :value,
      :allowed_pattern)
      include Aws::Structure
    end

    # Metada includes information like the ARN of the last user and the
    # date/time the parameter was last used.
    #
    # @!attribute [rw] name
    #   The parameter name.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of parameter. Valid parameter types include the following:
    #   String, String list, Secure string.
    #   @return [String]
    #
    # @!attribute [rw] key_id
    #   The ID of the query key used for this parameter.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   Date the parameter was last changed or updated.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_user
    #   Amazon Resource Name (ARN) of the AWS user who last changed the
    #   parameter.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the parameter actions.
    #   @return [String]
    #
    # @!attribute [rw] allowed_pattern
    #   A parameter name can include only the following letters and symbols.
    #
    #   a-zA-Z0-9\_.-
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ParameterMetadata AWS API Documentation
    #
    class ParameterMetadata < Struct.new(
      :name,
      :type,
      :key_id,
      :last_modified_date,
      :last_modified_user,
      :description,
      :allowed_pattern)
      include Aws::Structure
    end

    # One or more filters. Use a filter to return a more specific list of
    # results.
    #
    # @note When making an API call, you may pass ParameterStringFilter
    #   data as a hash:
    #
    #       {
    #         key: "ParameterStringFilterKey", # required
    #         option: "ParameterStringQueryOption",
    #         values: ["ParameterStringFilterValue"],
    #       }
    #
    # @!attribute [rw] key
    #   The name of the filter.
    #   @return [String]
    #
    # @!attribute [rw] option
    #   Valid options are Equals and BeginsWith. For Path filter, valid
    #   options are Recursive and OneLevel.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The value you want to search for.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ParameterStringFilter AWS API Documentation
    #
    class ParameterStringFilter < Struct.new(
      :key,
      :option,
      :values)
      include Aws::Structure
    end

    # One or more filters. Use a filter to return a more specific list of
    # results.
    #
    # @note When making an API call, you may pass ParametersFilter
    #   data as a hash:
    #
    #       {
    #         key: "Name", # required, accepts Name, Type, KeyId
    #         values: ["ParametersFilterValue"], # required
    #       }
    #
    # @!attribute [rw] key
    #   The name of the filter.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The filter values.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ParametersFilter AWS API Documentation
    #
    class ParametersFilter < Struct.new(
      :key,
      :values)
      include Aws::Structure
    end

    # Represents metadata about a patch.
    #
    # @!attribute [rw] id
    #   The ID of the patch (this is different than the Microsoft Knowledge
    #   Base ID).
    #   @return [String]
    #
    # @!attribute [rw] release_date
    #   The date the patch was released.
    #   @return [Time]
    #
    # @!attribute [rw] title
    #   The title of the patch.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the patch.
    #   @return [String]
    #
    # @!attribute [rw] content_url
    #   The URL where more information can be obtained about the patch.
    #   @return [String]
    #
    # @!attribute [rw] vendor
    #   The name of the vendor providing the patch.
    #   @return [String]
    #
    # @!attribute [rw] product_family
    #   The product family the patch is applicable for (for example,
    #   Windows).
    #   @return [String]
    #
    # @!attribute [rw] product
    #   The specific product the patch is applicable for (for example,
    #   WindowsServer2016).
    #   @return [String]
    #
    # @!attribute [rw] classification
    #   The classification of the patch (for example, SecurityUpdates,
    #   Updates, CriticalUpdates).
    #   @return [String]
    #
    # @!attribute [rw] msrc_severity
    #   The severity of the patch (for example Critical, Important,
    #   Moderate).
    #   @return [String]
    #
    # @!attribute [rw] kb_number
    #   The Microsoft Knowledge Base ID of the patch.
    #   @return [String]
    #
    # @!attribute [rw] msrc_number
    #   The ID of the MSRC bulletin the patch is related to.
    #   @return [String]
    #
    # @!attribute [rw] language
    #   The language of the patch if it's language-specific.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/Patch AWS API Documentation
    #
    class Patch < Struct.new(
      :id,
      :release_date,
      :title,
      :description,
      :content_url,
      :vendor,
      :product_family,
      :product,
      :classification,
      :msrc_severity,
      :kb_number,
      :msrc_number,
      :language)
      include Aws::Structure
    end

    # Defines the basic information about a patch baseline.
    #
    # @!attribute [rw] baseline_id
    #   The ID of the patch baseline.
    #   @return [String]
    #
    # @!attribute [rw] baseline_name
    #   The name of the patch baseline.
    #   @return [String]
    #
    # @!attribute [rw] baseline_description
    #   The description of the patch baseline.
    #   @return [String]
    #
    # @!attribute [rw] default_baseline
    #   Whether this is the default baseline.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/PatchBaselineIdentity AWS API Documentation
    #
    class PatchBaselineIdentity < Struct.new(
      :baseline_id,
      :baseline_name,
      :baseline_description,
      :default_baseline)
      include Aws::Structure
    end

    # Information about the state of a patch on a particular instance as it
    # relates to the patch baseline used to patch the instance.
    #
    # @!attribute [rw] title
    #   The title of the patch.
    #   @return [String]
    #
    # @!attribute [rw] kb_id
    #   The Microsoft Knowledge Base ID of the patch.
    #   @return [String]
    #
    # @!attribute [rw] classification
    #   The classification of the patch (for example, SecurityUpdates,
    #   Updates, CriticalUpdates).
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   The severity of the patch (for example, Critical, Important,
    #   Moderate).
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the patch on the instance (INSTALLED, INSTALLED\_OTHER,
    #   MISSING, NOT\_APPLICABLE or FAILED).
    #   @return [String]
    #
    # @!attribute [rw] installed_time
    #   The date/time the patch was installed on the instance.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/PatchComplianceData AWS API Documentation
    #
    class PatchComplianceData < Struct.new(
      :title,
      :kb_id,
      :classification,
      :severity,
      :state,
      :installed_time)
      include Aws::Structure
    end

    # Defines a patch filter.
    #
    # @note When making an API call, you may pass PatchFilter
    #   data as a hash:
    #
    #       {
    #         key: "PRODUCT", # required, accepts PRODUCT, CLASSIFICATION, MSRC_SEVERITY, PATCH_ID
    #         values: ["PatchFilterValue"], # required
    #       }
    #
    # @!attribute [rw] key
    #   The key for the filter (PRODUCT, CLASSIFICATION, MSRC\_SEVERITY,
    #   PATCH\_ID)
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The value for the filter key.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/PatchFilter AWS API Documentation
    #
    class PatchFilter < Struct.new(
      :key,
      :values)
      include Aws::Structure
    end

    # A set of patch filters, typically used for approval rules.
    #
    # @note When making an API call, you may pass PatchFilterGroup
    #   data as a hash:
    #
    #       {
    #         patch_filters: [ # required
    #           {
    #             key: "PRODUCT", # required, accepts PRODUCT, CLASSIFICATION, MSRC_SEVERITY, PATCH_ID
    #             values: ["PatchFilterValue"], # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] patch_filters
    #   The set of patch filters that make up the group.
    #   @return [Array<Types::PatchFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/PatchFilterGroup AWS API Documentation
    #
    class PatchFilterGroup < Struct.new(
      :patch_filters)
      include Aws::Structure
    end

    # The mapping between a patch group and the patch baseline the patch
    # group is registered with.
    #
    # @!attribute [rw] patch_group
    #   The name of the patch group registered with the patch baseline.
    #   @return [String]
    #
    # @!attribute [rw] baseline_identity
    #   The patch baseline the patch group is registered with.
    #   @return [Types::PatchBaselineIdentity]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/PatchGroupPatchBaselineMapping AWS API Documentation
    #
    class PatchGroupPatchBaselineMapping < Struct.new(
      :patch_group,
      :baseline_identity)
      include Aws::Structure
    end

    # Defines a filter used in Patch Manager APIs.
    #
    # @note When making an API call, you may pass PatchOrchestratorFilter
    #   data as a hash:
    #
    #       {
    #         key: "PatchOrchestratorFilterKey",
    #         values: ["PatchOrchestratorFilterValue"],
    #       }
    #
    # @!attribute [rw] key
    #   The key for the filter.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The value for the filter.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/PatchOrchestratorFilter AWS API Documentation
    #
    class PatchOrchestratorFilter < Struct.new(
      :key,
      :values)
      include Aws::Structure
    end

    # Defines an approval rule for a patch baseline.
    #
    # @note When making an API call, you may pass PatchRule
    #   data as a hash:
    #
    #       {
    #         patch_filter_group: { # required
    #           patch_filters: [ # required
    #             {
    #               key: "PRODUCT", # required, accepts PRODUCT, CLASSIFICATION, MSRC_SEVERITY, PATCH_ID
    #               values: ["PatchFilterValue"], # required
    #             },
    #           ],
    #         },
    #         approve_after_days: 1, # required
    #       }
    #
    # @!attribute [rw] patch_filter_group
    #   The patch filter group that defines the criteria for the rule.
    #   @return [Types::PatchFilterGroup]
    #
    # @!attribute [rw] approve_after_days
    #   The number of days after the release date of each patch matched by
    #   the rule the patch is marked as approved in the patch baseline.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/PatchRule AWS API Documentation
    #
    class PatchRule < Struct.new(
      :patch_filter_group,
      :approve_after_days)
      include Aws::Structure
    end

    # A set of rules defining the approval rules for a patch baseline.
    #
    # @note When making an API call, you may pass PatchRuleGroup
    #   data as a hash:
    #
    #       {
    #         patch_rules: [ # required
    #           {
    #             patch_filter_group: { # required
    #               patch_filters: [ # required
    #                 {
    #                   key: "PRODUCT", # required, accepts PRODUCT, CLASSIFICATION, MSRC_SEVERITY, PATCH_ID
    #                   values: ["PatchFilterValue"], # required
    #                 },
    #               ],
    #             },
    #             approve_after_days: 1, # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] patch_rules
    #   The rules that make up the rule group.
    #   @return [Array<Types::PatchRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/PatchRuleGroup AWS API Documentation
    #
    class PatchRuleGroup < Struct.new(
      :patch_rules)
      include Aws::Structure
    end

    # Information about the approval status of a patch.
    #
    # @!attribute [rw] deployment_status
    #   The approval status of a patch (APPROVED, PENDING\_APPROVAL,
    #   EXPLICIT\_APPROVED, EXPLICIT\_REJECTED).
    #   @return [String]
    #
    # @!attribute [rw] approval_date
    #   The date the patch was approved (or will be approved if the status
    #   is PENDING\_APPROVAL).
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/PatchStatus AWS API Documentation
    #
    class PatchStatus < Struct.new(
      :deployment_status,
      :approval_date)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutInventoryRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         items: [ # required
    #           {
    #             type_name: "InventoryItemTypeName", # required
    #             schema_version: "InventoryItemSchemaVersion", # required
    #             capture_time: "InventoryItemCaptureTime", # required
    #             content_hash: "InventoryItemContentHash",
    #             content: [
    #               {
    #                 "AttributeName" => "AttributeValue",
    #               },
    #             ],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] instance_id
    #   One or more instance IDs where you want to add or update inventory
    #   items.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The inventory items that you want to add or update on instances.
    #   @return [Array<Types::InventoryItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/PutInventoryRequest AWS API Documentation
    #
    class PutInventoryRequest < Struct.new(
      :instance_id,
      :items)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/PutInventoryResult AWS API Documentation
    #
    class PutInventoryResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass PutParameterRequest
    #   data as a hash:
    #
    #       {
    #         name: "PSParameterName", # required
    #         description: "ParameterDescription",
    #         value: "PSParameterValue", # required
    #         type: "String", # required, accepts String, StringList, SecureString
    #         key_id: "ParameterKeyId",
    #         overwrite: false,
    #         allowed_pattern: "AllowedPattern",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the parameter that you want to add to the system.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Information about the parameter that you want to add to the system
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The parameter value that you want to add to the system.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of parameter that you want to add to the system.
    #   @return [String]
    #
    # @!attribute [rw] key_id
    #   The KMS Key ID that you want to use to encrypt a parameter when you
    #   choose the SecureString data type. If you don't specify a key ID,
    #   the system uses the default key associated with your AWS account.
    #   @return [String]
    #
    # @!attribute [rw] overwrite
    #   Overwrite an existing parameter. If not specified, will default to
    #   "false".
    #   @return [Boolean]
    #
    # @!attribute [rw] allowed_pattern
    #   A regular expression used to validate the parameter value. For
    #   example, for String types with values restricted to numbers, you can
    #   specify the following: AllowedPattern=^\\d+$
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/PutParameterRequest AWS API Documentation
    #
    class PutParameterRequest < Struct.new(
      :name,
      :description,
      :value,
      :type,
      :key_id,
      :overwrite,
      :allowed_pattern)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/PutParameterResult AWS API Documentation
    #
    class PutParameterResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass RegisterDefaultPatchBaselineRequest
    #   data as a hash:
    #
    #       {
    #         baseline_id: "BaselineId", # required
    #       }
    #
    # @!attribute [rw] baseline_id
    #   The ID of the patch baseline that should be the default patch
    #   baseline.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/RegisterDefaultPatchBaselineRequest AWS API Documentation
    #
    class RegisterDefaultPatchBaselineRequest < Struct.new(
      :baseline_id)
      include Aws::Structure
    end

    # @!attribute [rw] baseline_id
    #   The ID of the default patch baseline.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/RegisterDefaultPatchBaselineResult AWS API Documentation
    #
    class RegisterDefaultPatchBaselineResult < Struct.new(
      :baseline_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RegisterPatchBaselineForPatchGroupRequest
    #   data as a hash:
    #
    #       {
    #         baseline_id: "BaselineId", # required
    #         patch_group: "PatchGroup", # required
    #       }
    #
    # @!attribute [rw] baseline_id
    #   The ID of the patch baseline to register the patch group with.
    #   @return [String]
    #
    # @!attribute [rw] patch_group
    #   The name of the patch group that should be registered with the patch
    #   baseline.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/RegisterPatchBaselineForPatchGroupRequest AWS API Documentation
    #
    class RegisterPatchBaselineForPatchGroupRequest < Struct.new(
      :baseline_id,
      :patch_group)
      include Aws::Structure
    end

    # @!attribute [rw] baseline_id
    #   The ID of the patch baseline the patch group was registered with.
    #   @return [String]
    #
    # @!attribute [rw] patch_group
    #   The name of the patch group registered with the patch baseline.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/RegisterPatchBaselineForPatchGroupResult AWS API Documentation
    #
    class RegisterPatchBaselineForPatchGroupResult < Struct.new(
      :baseline_id,
      :patch_group)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RegisterTargetWithMaintenanceWindowRequest
    #   data as a hash:
    #
    #       {
    #         window_id: "MaintenanceWindowId", # required
    #         resource_type: "INSTANCE", # required, accepts INSTANCE
    #         targets: [ # required
    #           {
    #             key: "TargetKey",
    #             values: ["TargetValue"],
    #           },
    #         ],
    #         owner_information: "OwnerInformation",
    #         client_token: "ClientToken",
    #       }
    #
    # @!attribute [rw] window_id
    #   The ID of the Maintenance Window the target should be registered
    #   with.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of target being registered with the Maintenance Window.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The targets (either instances or tags). Instances are specified
    #   using
    #   Key=instanceids,Values=&lt;instanceid1&gt;,&lt;instanceid2&gt;. Tags
    #   are specified using Key=&lt;tag name&gt;,Values=&lt;tag value&gt;.
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] owner_information
    #   User-provided value that will be included in any CloudWatch events
    #   raised while running tasks for these targets in this Maintenance
    #   Window.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   User-provided idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/RegisterTargetWithMaintenanceWindowRequest AWS API Documentation
    #
    class RegisterTargetWithMaintenanceWindowRequest < Struct.new(
      :window_id,
      :resource_type,
      :targets,
      :owner_information,
      :client_token)
      include Aws::Structure
    end

    # @!attribute [rw] window_target_id
    #   The ID of the target definition in this Maintenance Window.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/RegisterTargetWithMaintenanceWindowResult AWS API Documentation
    #
    class RegisterTargetWithMaintenanceWindowResult < Struct.new(
      :window_target_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RegisterTaskWithMaintenanceWindowRequest
    #   data as a hash:
    #
    #       {
    #         window_id: "MaintenanceWindowId", # required
    #         targets: [ # required
    #           {
    #             key: "TargetKey",
    #             values: ["TargetValue"],
    #           },
    #         ],
    #         task_arn: "MaintenanceWindowTaskArn", # required
    #         service_role_arn: "ServiceRole", # required
    #         task_type: "RUN_COMMAND", # required, accepts RUN_COMMAND
    #         task_parameters: {
    #           "MaintenanceWindowTaskParameterName" => {
    #             values: ["MaintenanceWindowTaskParameterValue"],
    #           },
    #         },
    #         priority: 1,
    #         max_concurrency: "MaxConcurrency", # required
    #         max_errors: "MaxErrors", # required
    #         logging_info: {
    #           s3_bucket_name: "S3BucketName", # required
    #           s3_key_prefix: "S3KeyPrefix",
    #           s3_region: "S3Region", # required
    #         },
    #         client_token: "ClientToken",
    #       }
    #
    # @!attribute [rw] window_id
    #   The id of the Maintenance Window the task should be added to.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The targets (either instances or tags). Instances are specified
    #   using
    #   Key=instanceids,Values=&lt;instanceid1&gt;,&lt;instanceid2&gt;. Tags
    #   are specified using Key=&lt;tag name&gt;,Values=&lt;tag value&gt;.
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] task_arn
    #   The ARN of the task to execute
    #   @return [String]
    #
    # @!attribute [rw] service_role_arn
    #   The role that should be assumed when executing the task.
    #   @return [String]
    #
    # @!attribute [rw] task_type
    #   The type of task being registered.
    #   @return [String]
    #
    # @!attribute [rw] task_parameters
    #   The parameters that should be passed to the task when it is
    #   executed.
    #   @return [Hash<String,Types::MaintenanceWindowTaskParameterValueExpression>]
    #
    # @!attribute [rw] priority
    #   The priority of the task in the Maintenance Window, the lower the
    #   number the higher the priority. Tasks in a Maintenance Window are
    #   scheduled in priority order with tasks that have the same priority
    #   scheduled in parallel.
    #   @return [Integer]
    #
    # @!attribute [rw] max_concurrency
    #   The maximum number of targets this task can be run for in parallel.
    #   @return [String]
    #
    # @!attribute [rw] max_errors
    #   The maximum number of errors allowed before this task stops being
    #   scheduled.
    #   @return [String]
    #
    # @!attribute [rw] logging_info
    #   A structure containing information about an Amazon S3 bucket to
    #   write instance-level logs to.
    #   @return [Types::LoggingInfo]
    #
    # @!attribute [rw] client_token
    #   User-provided idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/RegisterTaskWithMaintenanceWindowRequest AWS API Documentation
    #
    class RegisterTaskWithMaintenanceWindowRequest < Struct.new(
      :window_id,
      :targets,
      :task_arn,
      :service_role_arn,
      :task_type,
      :task_parameters,
      :priority,
      :max_concurrency,
      :max_errors,
      :logging_info,
      :client_token)
      include Aws::Structure
    end

    # @!attribute [rw] window_task_id
    #   The id of the task in the Maintenance Window.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/RegisterTaskWithMaintenanceWindowResult AWS API Documentation
    #
    class RegisterTaskWithMaintenanceWindowResult < Struct.new(
      :window_task_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RemoveTagsFromResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_type: "ManagedInstance", # required, accepts ManagedInstance, MaintenanceWindow, Parameter
    #         resource_id: "ResourceId", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_type
    #   The type of resource of which you want to remove a tag.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The resource ID for which you want to remove tags.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Tag keys that you want to remove from the specified resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/RemoveTagsFromResourceRequest AWS API Documentation
    #
    class RemoveTagsFromResourceRequest < Struct.new(
      :resource_type,
      :resource_id,
      :tag_keys)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/RemoveTagsFromResourceResult AWS API Documentation
    #
    class RemoveTagsFromResourceResult < Aws::EmptyStructure; end

    # The inventory item result attribute.
    #
    # @note When making an API call, you may pass ResultAttribute
    #   data as a hash:
    #
    #       {
    #         type_name: "InventoryItemTypeName", # required
    #       }
    #
    # @!attribute [rw] type_name
    #   Name of the inventory item type. Valid value:
    #   AWS:InstanceInformation. Default Value: AWS:InstanceInformation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ResultAttribute AWS API Documentation
    #
    class ResultAttribute < Struct.new(
      :type_name)
      include Aws::Structure
    end

    # An Amazon S3 bucket where you want to store the results of this
    # request.
    #
    # @note When making an API call, you may pass S3OutputLocation
    #   data as a hash:
    #
    #       {
    #         output_s3_region: "S3Region",
    #         output_s3_bucket_name: "S3BucketName",
    #         output_s3_key_prefix: "S3KeyPrefix",
    #       }
    #
    # @!attribute [rw] output_s3_region
    #   (Deprecated) You can no longer specify this parameter. The system
    #   ignores it. Instead, Systems Manager automatically determines the
    #   Amazon S3 bucket region.
    #   @return [String]
    #
    # @!attribute [rw] output_s3_bucket_name
    #   The name of the Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] output_s3_key_prefix
    #   The Amazon S3 bucket subfolder.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/S3OutputLocation AWS API Documentation
    #
    class S3OutputLocation < Struct.new(
      :output_s3_region,
      :output_s3_bucket_name,
      :output_s3_key_prefix)
      include Aws::Structure
    end

    # A URL for the Amazon S3 bucket where you want to store the results of
    # this request.
    #
    # @!attribute [rw] output_url
    #   A URL for an Amazon S3 bucket where you want to store the results of
    #   this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/S3OutputUrl AWS API Documentation
    #
    class S3OutputUrl < Struct.new(
      :output_url)
      include Aws::Structure
    end

    # @note When making an API call, you may pass SendCommandRequest
    #   data as a hash:
    #
    #       {
    #         instance_ids: ["InstanceId"],
    #         targets: [
    #           {
    #             key: "TargetKey",
    #             values: ["TargetValue"],
    #           },
    #         ],
    #         document_name: "DocumentARN", # required
    #         document_hash: "DocumentHash",
    #         document_hash_type: "Sha256", # accepts Sha256, Sha1
    #         timeout_seconds: 1,
    #         comment: "Comment",
    #         parameters: {
    #           "ParameterName" => ["ParameterValue"],
    #         },
    #         output_s3_region: "S3Region",
    #         output_s3_bucket_name: "S3BucketName",
    #         output_s3_key_prefix: "S3KeyPrefix",
    #         max_concurrency: "MaxConcurrency",
    #         max_errors: "MaxErrors",
    #         service_role_arn: "ServiceRole",
    #         notification_config: {
    #           notification_arn: "NotificationArn",
    #           notification_events: ["All"], # accepts All, InProgress, Success, TimedOut, Cancelled, Failed
    #           notification_type: "Command", # accepts Command, Invocation
    #         },
    #       }
    #
    # @!attribute [rw] instance_ids
    #   The instance IDs where the command should execute. You can specify a
    #   maximum of 50 IDs. If you prefer not to list individual instance
    #   IDs, you can instead send commands to a fleet of instances using the
    #   Targets parameter, which accepts EC2 tags. For more information
    #   about how to use Targets, see [Sending Commands to a Fleet][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] targets
    #   (Optional) An array of search criteria that targets instances using
    #   a Key,Value combination that you specify. Targets is required if you
    #   don't provide one or more instance IDs in the call. For more
    #   information about how to use Targets, see [Sending Commands to a
    #   Fleet][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] document_name
    #   Required. The name of the Systems Manager document to execute. This
    #   can be a public document or a custom document.
    #   @return [String]
    #
    # @!attribute [rw] document_hash
    #   The Sha256 or Sha1 hash created by the system when the document was
    #   created.
    #
    #   <note markdown="1"> Sha1 hashes have been deprecated.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] document_hash_type
    #   Sha256 or Sha1.
    #
    #   <note markdown="1"> Sha1 hashes have been deprecated.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] timeout_seconds
    #   If this time is reached and the command has not already started
    #   executing, it will not execute.
    #   @return [Integer]
    #
    # @!attribute [rw] comment
    #   User-specified information about the command, such as a brief
    #   description of what the command should do.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The required and optional parameters specified in the document being
    #   executed.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] output_s3_region
    #   (Deprecated) You can no longer specify this parameter. The system
    #   ignores it. Instead, Systems Manager automatically determines the
    #   Amazon S3 bucket region.
    #   @return [String]
    #
    # @!attribute [rw] output_s3_bucket_name
    #   The name of the S3 bucket where command execution responses should
    #   be stored.
    #   @return [String]
    #
    # @!attribute [rw] output_s3_key_prefix
    #   The directory structure within the S3 bucket where the responses
    #   should be stored.
    #   @return [String]
    #
    # @!attribute [rw] max_concurrency
    #   (Optional) The maximum number of instances that are allowed to
    #   execute the command at the same time. You can specify a number such
    #   as 10 or a percentage such as 10%. The default value is 50. For more
    #   information about how to use MaxConcurrency, see [Using Concurrency
    #   Controls][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-velocity.html
    #   @return [String]
    #
    # @!attribute [rw] max_errors
    #   The maximum number of errors allowed without the command failing.
    #   When the command fails one more time beyond the value of MaxErrors,
    #   the systems stops sending the command to additional targets. You can
    #   specify a number like 10 or a percentage like 10%. The default value
    #   is 50. For more information about how to use MaxErrors, see [Using
    #   Error Controls][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-maxerrors.html
    #   @return [String]
    #
    # @!attribute [rw] service_role_arn
    #   The IAM role that Systems Manager uses to send notifications.
    #   @return [String]
    #
    # @!attribute [rw] notification_config
    #   Configurations for sending notifications.
    #   @return [Types::NotificationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/SendCommandRequest AWS API Documentation
    #
    class SendCommandRequest < Struct.new(
      :instance_ids,
      :targets,
      :document_name,
      :document_hash,
      :document_hash_type,
      :timeout_seconds,
      :comment,
      :parameters,
      :output_s3_region,
      :output_s3_bucket_name,
      :output_s3_key_prefix,
      :max_concurrency,
      :max_errors,
      :service_role_arn,
      :notification_config)
      include Aws::Structure
    end

    # @!attribute [rw] command
    #   The request as it was received by Systems Manager. Also provides the
    #   command ID which can be used future references to this request.
    #   @return [Types::Command]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/SendCommandResult AWS API Documentation
    #
    class SendCommandResult < Struct.new(
      :command)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartAutomationExecutionRequest
    #   data as a hash:
    #
    #       {
    #         document_name: "DocumentARN", # required
    #         document_version: "DocumentVersion",
    #         parameters: {
    #           "AutomationParameterKey" => ["AutomationParameterValue"],
    #         },
    #       }
    #
    # @!attribute [rw] document_name
    #   The name of the Automation document to use for this execution.
    #   @return [String]
    #
    # @!attribute [rw] document_version
    #   The version of the Automation document to use for this execution.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A key-value map of execution parameters, which match the declared
    #   parameters in the Automation document.
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/StartAutomationExecutionRequest AWS API Documentation
    #
    class StartAutomationExecutionRequest < Struct.new(
      :document_name,
      :document_version,
      :parameters)
      include Aws::Structure
    end

    # @!attribute [rw] automation_execution_id
    #   The unique ID of a newly scheduled automation execution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/StartAutomationExecutionResult AWS API Documentation
    #
    class StartAutomationExecutionResult < Struct.new(
      :automation_execution_id)
      include Aws::Structure
    end

    # Detailed information about an the execution state of an Automation
    # step.
    #
    # @!attribute [rw] step_name
    #   The name of this execution step.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The action this step performs. The action determines the behavior of
    #   the step.
    #   @return [String]
    #
    # @!attribute [rw] execution_start_time
    #   If a step has begun execution, this contains the time the step
    #   started. If the step is in Pending status, this field is not
    #   populated.
    #   @return [Time]
    #
    # @!attribute [rw] execution_end_time
    #   If a step has finished execution, this contains the time the
    #   execution ended. If the step has not yet concluded, this field is
    #   not populated.
    #   @return [Time]
    #
    # @!attribute [rw] step_status
    #   The execution status for this step. Valid values include: Pending,
    #   InProgress, Success, Cancelled, Failed, and TimedOut.
    #   @return [String]
    #
    # @!attribute [rw] response_code
    #   The response code returned by the execution of the step.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   Fully-resolved values passed into the step before execution.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] outputs
    #   Returned values from the execution of the step.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] response
    #   A message associated with the response code for an execution.
    #   @return [String]
    #
    # @!attribute [rw] failure_message
    #   If a step failed, this message explains why the execution failed.
    #   @return [String]
    #
    # @!attribute [rw] failure_details
    #   Information about the Automation failure.
    #   @return [Types::FailureDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/StepExecution AWS API Documentation
    #
    class StepExecution < Struct.new(
      :step_name,
      :action,
      :execution_start_time,
      :execution_end_time,
      :step_status,
      :response_code,
      :inputs,
      :outputs,
      :response,
      :failure_message,
      :failure_details)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopAutomationExecutionRequest
    #   data as a hash:
    #
    #       {
    #         automation_execution_id: "AutomationExecutionId", # required
    #       }
    #
    # @!attribute [rw] automation_execution_id
    #   The execution ID of the Automation to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/StopAutomationExecutionRequest AWS API Documentation
    #
    class StopAutomationExecutionRequest < Struct.new(
      :automation_execution_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/StopAutomationExecutionResult AWS API Documentation
    #
    class StopAutomationExecutionResult < Aws::EmptyStructure; end

    # Metadata that you assign to your managed instances. Tags enable you to
    # categorize your managed instances in different ways, for example, by
    # purpose, owner, or environment.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #
    # @!attribute [rw] key
    #   The name of the tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # An array of search criteria that targets instances using a Key,Value
    # combination that you specify. `Targets` is required if you don't
    # provide one or more instance IDs in the call.
    #
    # @note When making an API call, you may pass Target
    #   data as a hash:
    #
    #       {
    #         key: "TargetKey",
    #         values: ["TargetValue"],
    #       }
    #
    # @!attribute [rw] key
    #   User-defined criteria for sending commands that target instances
    #   that meet the criteria. Key can be tag:&lt;Amazon EC2 tag&gt; or
    #   InstanceIds. For more information about how to send commands that
    #   target instances using Key,Value parameters, see [Executing a
    #   Command Using Systems Manager Run Command][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html
    #   @return [String]
    #
    # @!attribute [rw] values
    #   User-defined criteria that maps to Key. For example, if you
    #   specified tag:ServerRole, you could specify value:WebServer to
    #   execute a command on instances that include Amazon EC2 tags of
    #   ServerRole,WebServer. For more information about how to send
    #   commands that target instances using Key,Value parameters, see
    #   [Executing a Command Using Systems Manager Run Command][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/Target AWS API Documentation
    #
    class Target < Struct.new(
      :key,
      :values)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateAssociationRequest
    #   data as a hash:
    #
    #       {
    #         association_id: "AssociationId", # required
    #         parameters: {
    #           "ParameterName" => ["ParameterValue"],
    #         },
    #         document_version: "DocumentVersion",
    #         schedule_expression: "ScheduleExpression",
    #         output_location: {
    #           s3_location: {
    #             output_s3_region: "S3Region",
    #             output_s3_bucket_name: "S3BucketName",
    #             output_s3_key_prefix: "S3KeyPrefix",
    #           },
    #         },
    #         name: "DocumentName",
    #         targets: [
    #           {
    #             key: "TargetKey",
    #             values: ["TargetValue"],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] association_id
    #   The ID of the association you want to update.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters you want to update for the association. If you create
    #   a parameter using Parameter Store, you can reference the parameter
    #   using \\\{\\\{ssm:parameter-name\\}\\}
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] document_version
    #   The document version you want update for the association.
    #   @return [String]
    #
    # @!attribute [rw] schedule_expression
    #   The cron expression used to schedule the association that you want
    #   to update.
    #   @return [String]
    #
    # @!attribute [rw] output_location
    #   An Amazon S3 bucket where you want to store the results of this
    #   request.
    #   @return [Types::InstanceAssociationOutputLocation]
    #
    # @!attribute [rw] name
    #   The name of the association document.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The targets of the association.
    #   @return [Array<Types::Target>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateAssociationRequest AWS API Documentation
    #
    class UpdateAssociationRequest < Struct.new(
      :association_id,
      :parameters,
      :document_version,
      :schedule_expression,
      :output_location,
      :name,
      :targets)
      include Aws::Structure
    end

    # @!attribute [rw] association_description
    #   The description of the association that was updated.
    #   @return [Types::AssociationDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateAssociationResult AWS API Documentation
    #
    class UpdateAssociationResult < Struct.new(
      :association_description)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateAssociationStatusRequest
    #   data as a hash:
    #
    #       {
    #         name: "DocumentName", # required
    #         instance_id: "InstanceId", # required
    #         association_status: { # required
    #           date: Time.now, # required
    #           name: "Pending", # required, accepts Pending, Success, Failed
    #           message: "StatusMessage", # required
    #           additional_info: "StatusAdditionalInfo",
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the SSM document.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance.
    #   @return [String]
    #
    # @!attribute [rw] association_status
    #   The association status.
    #   @return [Types::AssociationStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateAssociationStatusRequest AWS API Documentation
    #
    class UpdateAssociationStatusRequest < Struct.new(
      :name,
      :instance_id,
      :association_status)
      include Aws::Structure
    end

    # @!attribute [rw] association_description
    #   Information about the association.
    #   @return [Types::AssociationDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateAssociationStatusResult AWS API Documentation
    #
    class UpdateAssociationStatusResult < Struct.new(
      :association_description)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateDocumentDefaultVersionRequest
    #   data as a hash:
    #
    #       {
    #         name: "DocumentName", # required
    #         document_version: "DocumentVersionNumber", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of a custom document that you want to set as the default
    #   version.
    #   @return [String]
    #
    # @!attribute [rw] document_version
    #   The version of a custom document that you want to set as the default
    #   version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateDocumentDefaultVersionRequest AWS API Documentation
    #
    class UpdateDocumentDefaultVersionRequest < Struct.new(
      :name,
      :document_version)
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   The description of a custom document that you want to set as the
    #   default version.
    #   @return [Types::DocumentDefaultVersionDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateDocumentDefaultVersionResult AWS API Documentation
    #
    class UpdateDocumentDefaultVersionResult < Struct.new(
      :description)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateDocumentRequest
    #   data as a hash:
    #
    #       {
    #         content: "DocumentContent", # required
    #         name: "DocumentName", # required
    #         document_version: "DocumentVersion",
    #       }
    #
    # @!attribute [rw] content
    #   The content in a document that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the document that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] document_version
    #   The version of the document that you want to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateDocumentRequest AWS API Documentation
    #
    class UpdateDocumentRequest < Struct.new(
      :content,
      :name,
      :document_version)
      include Aws::Structure
    end

    # @!attribute [rw] document_description
    #   A description of the document that was updated.
    #   @return [Types::DocumentDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateDocumentResult AWS API Documentation
    #
    class UpdateDocumentResult < Struct.new(
      :document_description)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateMaintenanceWindowRequest
    #   data as a hash:
    #
    #       {
    #         window_id: "MaintenanceWindowId", # required
    #         name: "MaintenanceWindowName",
    #         schedule: "MaintenanceWindowSchedule",
    #         duration: 1,
    #         cutoff: 1,
    #         allow_unassociated_targets: false,
    #         enabled: false,
    #       }
    #
    # @!attribute [rw] window_id
    #   The ID of the Maintenance Window to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Maintenance Window.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   The schedule of the Maintenance Window in the form of a cron or rate
    #   expression.
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   The duration of the Maintenance Window in hours.
    #   @return [Integer]
    #
    # @!attribute [rw] cutoff
    #   The number of hours before the end of the Maintenance Window that
    #   Systems Manager stops scheduling new tasks for execution.
    #   @return [Integer]
    #
    # @!attribute [rw] allow_unassociated_targets
    #   Whether targets must be registered with the Maintenance Window
    #   before tasks can be defined for those targets.
    #   @return [Boolean]
    #
    # @!attribute [rw] enabled
    #   Whether the Maintenance Window is enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateMaintenanceWindowRequest AWS API Documentation
    #
    class UpdateMaintenanceWindowRequest < Struct.new(
      :window_id,
      :name,
      :schedule,
      :duration,
      :cutoff,
      :allow_unassociated_targets,
      :enabled)
      include Aws::Structure
    end

    # @!attribute [rw] window_id
    #   The ID of the created Maintenance Window.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Maintenance Window.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   The schedule of the Maintenance Window in the form of a cron or rate
    #   expression.
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   The duration of the Maintenance Window in hours.
    #   @return [Integer]
    #
    # @!attribute [rw] cutoff
    #   The number of hours before the end of the Maintenance Window that
    #   Systems Manager stops scheduling new tasks for execution.
    #   @return [Integer]
    #
    # @!attribute [rw] allow_unassociated_targets
    #   Whether targets must be registered with the Maintenance Window
    #   before tasks can be defined for those targets.
    #   @return [Boolean]
    #
    # @!attribute [rw] enabled
    #   Whether the Maintenance Window is enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateMaintenanceWindowResult AWS API Documentation
    #
    class UpdateMaintenanceWindowResult < Struct.new(
      :window_id,
      :name,
      :schedule,
      :duration,
      :cutoff,
      :allow_unassociated_targets,
      :enabled)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateManagedInstanceRoleRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "ManagedInstanceId", # required
    #         iam_role: "IamRole", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The ID of the managed instance where you want to update the role.
    #   @return [String]
    #
    # @!attribute [rw] iam_role
    #   The IAM role you want to assign or change.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateManagedInstanceRoleRequest AWS API Documentation
    #
    class UpdateManagedInstanceRoleRequest < Struct.new(
      :instance_id,
      :iam_role)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateManagedInstanceRoleResult AWS API Documentation
    #
    class UpdateManagedInstanceRoleResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdatePatchBaselineRequest
    #   data as a hash:
    #
    #       {
    #         baseline_id: "BaselineId", # required
    #         name: "BaselineName",
    #         global_filters: {
    #           patch_filters: [ # required
    #             {
    #               key: "PRODUCT", # required, accepts PRODUCT, CLASSIFICATION, MSRC_SEVERITY, PATCH_ID
    #               values: ["PatchFilterValue"], # required
    #             },
    #           ],
    #         },
    #         approval_rules: {
    #           patch_rules: [ # required
    #             {
    #               patch_filter_group: { # required
    #                 patch_filters: [ # required
    #                   {
    #                     key: "PRODUCT", # required, accepts PRODUCT, CLASSIFICATION, MSRC_SEVERITY, PATCH_ID
    #                     values: ["PatchFilterValue"], # required
    #                   },
    #                 ],
    #               },
    #               approve_after_days: 1, # required
    #             },
    #           ],
    #         },
    #         approved_patches: ["PatchId"],
    #         rejected_patches: ["PatchId"],
    #         description: "BaselineDescription",
    #       }
    #
    # @!attribute [rw] baseline_id
    #   The ID of the patch baseline to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the patch baseline.
    #   @return [String]
    #
    # @!attribute [rw] global_filters
    #   A set of global filters used to exclude patches from the baseline.
    #   @return [Types::PatchFilterGroup]
    #
    # @!attribute [rw] approval_rules
    #   A set of rules used to include patches in the baseline.
    #   @return [Types::PatchRuleGroup]
    #
    # @!attribute [rw] approved_patches
    #   A list of explicitly approved patches for the baseline.
    #   @return [Array<String>]
    #
    # @!attribute [rw] rejected_patches
    #   A list of explicitly rejected patches for the baseline.
    #   @return [Array<String>]
    #
    # @!attribute [rw] description
    #   A description of the patch baseline.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdatePatchBaselineRequest AWS API Documentation
    #
    class UpdatePatchBaselineRequest < Struct.new(
      :baseline_id,
      :name,
      :global_filters,
      :approval_rules,
      :approved_patches,
      :rejected_patches,
      :description)
      include Aws::Structure
    end

    # @!attribute [rw] baseline_id
    #   The ID of the deleted patch baseline.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the patch baseline.
    #   @return [String]
    #
    # @!attribute [rw] global_filters
    #   A set of global filters used to exclude patches from the baseline.
    #   @return [Types::PatchFilterGroup]
    #
    # @!attribute [rw] approval_rules
    #   A set of rules used to include patches in the baseline.
    #   @return [Types::PatchRuleGroup]
    #
    # @!attribute [rw] approved_patches
    #   A list of explicitly approved patches for the baseline.
    #   @return [Array<String>]
    #
    # @!attribute [rw] rejected_patches
    #   A list of explicitly rejected patches for the baseline.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_date
    #   The date when the patch baseline was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_date
    #   The date when the patch baseline was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A description of the Patch Baseline.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdatePatchBaselineResult AWS API Documentation
    #
    class UpdatePatchBaselineResult < Struct.new(
      :baseline_id,
      :name,
      :global_filters,
      :approval_rules,
      :approved_patches,
      :rejected_patches,
      :created_date,
      :modified_date,
      :description)
      include Aws::Structure
    end

  end
end
