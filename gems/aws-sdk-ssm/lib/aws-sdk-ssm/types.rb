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
    #         resource_type: "Document", # required, accepts Document, ManagedInstance, MaintenanceWindow, Parameter, PatchBaseline
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
    #
    #   <note markdown="1"> The ManagedInstance type for this API action is for on-premises
    #   managed instances. You must specify the the name of the managed
    #   instance in the following format: mi-ID\_number. For example,
    #   mi-1a2b3c4d5e6f.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The resource ID you want to tag.
    #
    #   Use the ID of the resource. Here are some examples:
    #
    #   ManagedInstance: mi-012345abcde
    #
    #   MaintenanceWindow: mw-012345abcde
    #
    #   PatchBaseline: pb-012345abcde
    #
    #   For the Document and Parameter values, use the name of the resource.
    #
    #   <note markdown="1"> The ManagedInstance type for this API action is only for on-premises
    #   managed instances. You must specify the the name of the managed
    #   instance in the following format: mi-ID\_number. For example,
    #   mi-1a2b3c4d5e6f.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   One or more tags. The value parameter is required, but if you don't
    #   want the tag to have a value, specify the parameter with no value,
    #   and we set the value to an empty string.
    #
    #   Do not enter personally identifiable information in this field.
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
    #   The name of the Systems Manager document.
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
    # @!attribute [rw] association_version
    #   The association version.
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
    # @!attribute [rw] association_name
    #   The association name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/Association AWS API Documentation
    #
    class Association < Struct.new(
      :name,
      :instance_id,
      :association_id,
      :association_version,
      :document_version,
      :targets,
      :last_execution_date,
      :overview,
      :schedule_expression,
      :association_name)
      include Aws::Structure
    end

    # Describes the parameters for a document.
    #
    # @!attribute [rw] name
    #   The name of the Systems Manager document.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance.
    #   @return [String]
    #
    # @!attribute [rw] association_version
    #   The association version.
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
    # @!attribute [rw] association_name
    #   The association name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AssociationDescription AWS API Documentation
    #
    class AssociationDescription < Struct.new(
      :name,
      :instance_id,
      :association_version,
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
      :last_successful_execution_date,
      :association_name)
      include Aws::Structure
    end

    # Includes information about the specified association.
    #
    # @!attribute [rw] association_id
    #   The association ID.
    #   @return [String]
    #
    # @!attribute [rw] association_version
    #   The association version.
    #   @return [String]
    #
    # @!attribute [rw] execution_id
    #   The execution ID for the association. If the association does not
    #   run at intervals or according to a schedule, then the ExecutionID is
    #   the same as the AssociationID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the association execution.
    #   @return [String]
    #
    # @!attribute [rw] detailed_status
    #   Detailed status information about the execution.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The time the execution started.
    #   @return [Time]
    #
    # @!attribute [rw] last_execution_date
    #   The date of the last execution.
    #   @return [Time]
    #
    # @!attribute [rw] resource_count_by_status
    #   An aggregate status of the resources in the execution based on the
    #   status type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AssociationExecution AWS API Documentation
    #
    class AssociationExecution < Struct.new(
      :association_id,
      :association_version,
      :execution_id,
      :status,
      :detailed_status,
      :created_time,
      :last_execution_date,
      :resource_count_by_status)
      include Aws::Structure
    end

    # Filters used in the request.
    #
    # @note When making an API call, you may pass AssociationExecutionFilter
    #   data as a hash:
    #
    #       {
    #         key: "ExecutionId", # required, accepts ExecutionId, Status, CreatedTime
    #         value: "AssociationExecutionFilterValue", # required
    #         type: "EQUAL", # required, accepts EQUAL, LESS_THAN, GREATER_THAN
    #       }
    #
    # @!attribute [rw] key
    #   The key value used in the request.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value specified for the key.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The filter type specified in the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AssociationExecutionFilter AWS API Documentation
    #
    class AssociationExecutionFilter < Struct.new(
      :key,
      :value,
      :type)
      include Aws::Structure
    end

    # Includes information about the specified association execution.
    #
    # @!attribute [rw] association_id
    #   The association ID.
    #   @return [String]
    #
    # @!attribute [rw] association_version
    #   The association version.
    #   @return [String]
    #
    # @!attribute [rw] execution_id
    #   The execution ID. If the association does not run at intervals or
    #   according to a schedule, then the ExecutionID is the same as the
    #   AssociationID.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The resource ID, for example, the instance ID where the association
    #   ran.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type, for example, instance.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The association execution status.
    #   @return [String]
    #
    # @!attribute [rw] detailed_status
    #   Detailed information about the execution status.
    #   @return [String]
    #
    # @!attribute [rw] last_execution_date
    #   The date of the last execution.
    #   @return [Time]
    #
    # @!attribute [rw] output_source
    #   The location where the association details are saved.
    #   @return [Types::OutputSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AssociationExecutionTarget AWS API Documentation
    #
    class AssociationExecutionTarget < Struct.new(
      :association_id,
      :association_version,
      :execution_id,
      :resource_id,
      :resource_type,
      :status,
      :detailed_status,
      :last_execution_date,
      :output_source)
      include Aws::Structure
    end

    # Filters for the association execution.
    #
    # @note When making an API call, you may pass AssociationExecutionTargetsFilter
    #   data as a hash:
    #
    #       {
    #         key: "Status", # required, accepts Status, ResourceId, ResourceType
    #         value: "AssociationExecutionTargetsFilterValue", # required
    #       }
    #
    # @!attribute [rw] key
    #   The key value used in the request.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value specified for the key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AssociationExecutionTargetsFilter AWS API Documentation
    #
    class AssociationExecutionTargetsFilter < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # Describes a filter.
    #
    # @note When making an API call, you may pass AssociationFilter
    #   data as a hash:
    #
    #       {
    #         key: "InstanceId", # required, accepts InstanceId, Name, AssociationId, AssociationStatusName, LastExecutedBefore, LastExecutedAfter, AssociationName
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

    # Information about the association version.
    #
    # @!attribute [rw] association_id
    #   The ID created by the system when the association was created.
    #   @return [String]
    #
    # @!attribute [rw] association_version
    #   The association version.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date the association version was created.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name specified when the association was created.
    #   @return [String]
    #
    # @!attribute [rw] document_version
    #   The version of a Systems Manager document used when the association
    #   version was created.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   Parameters specified when the association version was created.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] targets
    #   The targets specified for the association when the association
    #   version was created.
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] schedule_expression
    #   The cron or rate schedule specified for the association when the
    #   association version was created.
    #   @return [String]
    #
    # @!attribute [rw] output_location
    #   The location in Amazon S3 specified for the association when the
    #   association version was created.
    #   @return [Types::InstanceAssociationOutputLocation]
    #
    # @!attribute [rw] association_name
    #   The name specified for the association version when the association
    #   version was created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AssociationVersionInfo AWS API Documentation
    #
    class AssociationVersionInfo < Struct.new(
      :association_id,
      :association_version,
      :created_date,
      :name,
      :document_version,
      :parameters,
      :targets,
      :schedule_expression,
      :output_location,
      :association_name)
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
    # @!attribute [rw] step_executions_truncated
    #   A boolean value that indicates if the response contains the full
    #   list of the Automation step executions. If true, use the
    #   DescribeAutomationStepExecutions API action to get the full list of
    #   step executions.
    #   @return [Boolean]
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
    # @!attribute [rw] mode
    #   The automation execution mode.
    #   @return [String]
    #
    # @!attribute [rw] parent_automation_execution_id
    #   The AutomationExecutionId of the parent automation.
    #   @return [String]
    #
    # @!attribute [rw] executed_by
    #   The Amazon Resource Name (ARN) of the user who executed the
    #   automation.
    #   @return [String]
    #
    # @!attribute [rw] current_step_name
    #   The name of the currently executing step.
    #   @return [String]
    #
    # @!attribute [rw] current_action
    #   The action of the currently executing step.
    #   @return [String]
    #
    # @!attribute [rw] target_parameter_name
    #   The parameter name.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The specified targets.
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] target_maps
    #   The specified key-value mapping of document parameters to target
    #   resources.
    #   @return [Array<Hash<String,Array<String>>>]
    #
    # @!attribute [rw] resolved_targets
    #   A list of resolved targets in the rate control execution.
    #   @return [Types::ResolvedTargets]
    #
    # @!attribute [rw] max_concurrency
    #   The MaxConcurrency value specified by the user when the execution
    #   started.
    #   @return [String]
    #
    # @!attribute [rw] max_errors
    #   The MaxErrors value specified by the user when the execution
    #   started.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The target of the execution.
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
      :step_executions_truncated,
      :parameters,
      :outputs,
      :failure_message,
      :mode,
      :parent_automation_execution_id,
      :executed_by,
      :current_step_name,
      :current_action,
      :target_parameter_name,
      :targets,
      :target_maps,
      :resolved_targets,
      :max_concurrency,
      :max_errors,
      :target)
      include Aws::Structure
    end

    # A filter used to match specific automation executions. This is used to
    # limit the scope of Automation execution information returned.
    #
    # @note When making an API call, you may pass AutomationExecutionFilter
    #   data as a hash:
    #
    #       {
    #         key: "DocumentNamePrefix", # required, accepts DocumentNamePrefix, ExecutionStatus, ExecutionId, ParentExecutionId, CurrentAction, StartTimeBefore, StartTimeAfter
    #         values: ["AutomationExecutionFilterValue"], # required
    #       }
    #
    # @!attribute [rw] key
    #   One or more keys to limit the results. Valid filter keys include the
    #   following: DocumentNamePrefix, ExecutionStatus, ExecutionId,
    #   ParentExecutionId, CurrentAction, StartTimeBefore, StartTimeAfter.
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
    # @!attribute [rw] mode
    #   The Automation execution mode.
    #   @return [String]
    #
    # @!attribute [rw] parent_automation_execution_id
    #   The ExecutionId of the parent Automation.
    #   @return [String]
    #
    # @!attribute [rw] current_step_name
    #   The name of the currently executing step.
    #   @return [String]
    #
    # @!attribute [rw] current_action
    #   The action of the currently executing step.
    #   @return [String]
    #
    # @!attribute [rw] failure_message
    #   The list of execution outputs as defined in the Automation document.
    #   @return [String]
    #
    # @!attribute [rw] target_parameter_name
    #   The list of execution outputs as defined in the Automation document.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The targets defined by the user when starting the Automation.
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] target_maps
    #   The specified key-value mapping of document parameters to target
    #   resources.
    #   @return [Array<Hash<String,Array<String>>>]
    #
    # @!attribute [rw] resolved_targets
    #   A list of targets that resolved during the execution.
    #   @return [Types::ResolvedTargets]
    #
    # @!attribute [rw] max_concurrency
    #   The MaxConcurrency value specified by the user when starting the
    #   Automation.
    #   @return [String]
    #
    # @!attribute [rw] max_errors
    #   The MaxErrors value specified by the user when starting the
    #   Automation.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The list of execution outputs as defined in the Automation document.
    #   @return [String]
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
      :outputs,
      :mode,
      :parent_automation_execution_id,
      :current_step_name,
      :current_action,
      :failure_message,
      :target_parameter_name,
      :targets,
      :target_maps,
      :resolved_targets,
      :max_concurrency,
      :max_errors,
      :target)
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

    # Configuration options for sending command output to CloudWatch Logs.
    #
    # @note When making an API call, you may pass CloudWatchOutputConfig
    #   data as a hash:
    #
    #       {
    #         cloud_watch_log_group_name: "CloudWatchLogGroupName",
    #         cloud_watch_output_enabled: false,
    #       }
    #
    # @!attribute [rw] cloud_watch_log_group_name
    #   The name of the CloudWatch log group where you want to send command
    #   output. If you don't specify a group name, Systems Manager
    #   automatically creates a log group for you. The log group uses the
    #   following naming format: aws/ssm/*SystemsManagerDocumentName*.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_output_enabled
    #   Enables Systems Manager to send command output to CloudWatch Logs.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CloudWatchOutputConfig AWS API Documentation
    #
    class CloudWatchOutputConfig < Struct.new(
      :cloud_watch_log_group_name,
      :cloud_watch_output_enabled)
      include Aws::Structure
    end

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
    # @!attribute [rw] document_version
    #   The SSM document version.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   User-specified information about the command, such as a brief
    #   description of what the command should do.
    #   @return [String]
    #
    # @!attribute [rw] expires_after
    #   If this time is reached and the command has not already started
    #   executing, it will not run. Calculated based on the ExpiresAfter
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
    #   statuses, see [Understanding Command Statuses][1] in the *AWS
    #   Systems Manager User Guide*. StatusDetails can be one of the
    #   following values:
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
    #   [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-commands.html
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
    #   see [Executing Commands Using Systems Manager Run Command][1] in the
    #   *AWS Systems Manager User Guide*.
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
    #   default value is 0. For more information about how to use MaxErrors,
    #   see [Executing Commands Using Systems Manager Run Command][1] in the
    #   *AWS Systems Manager User Guide*.
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
    # @!attribute [rw] delivery_timed_out_count
    #   The number of targets for which the status is Delivery Timed Out.
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
    # @!attribute [rw] cloud_watch_output_config
    #   CloudWatch Logs information where you want Systems Manager to send
    #   the command output.
    #   @return [Types::CloudWatchOutputConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/Command AWS API Documentation
    #
    class Command < Struct.new(
      :command_id,
      :document_name,
      :document_version,
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
      :delivery_timed_out_count,
      :service_role,
      :notification_config,
      :cloud_watch_output_config)
      include Aws::Structure
    end

    # Describes a command filter.
    #
    # @note When making an API call, you may pass CommandFilter
    #   data as a hash:
    #
    #       {
    #         key: "InvokedAfter", # required, accepts InvokedAfter, InvokedBefore, Status, ExecutionStage, DocumentName
    #         value: "CommandFilterValue", # required
    #       }
    #
    # @!attribute [rw] key
    #   The name of the filter.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The filter value. Valid values for each filter key are as follows:
    #
    #   * InvokedAfter: A timestamp to limit your results. For example,
    #     specify `2018-07-07T00:00:00Z` to see results occurring July 7,
    #     2018, and later.
    #
    #   * InvokedBefore: A timestamp to limit your results. For example,
    #     specify `2018-07-07T00:00:00Z` to see results before July 7, 2018.
    #
    #   * Status: Specify a valid command status to see a list of all
    #     command executions with that status. Status values you can specify
    #     include:
    #
    #     * Pending
    #
    #     * InProgress
    #
    #     * Success
    #
    #     * Cancelled
    #
    #     * Failed
    #
    #     * TimedOut
    #
    #     * Cancelling
    #
    #   * DocumentName: The name of the SSM document for which you want to
    #     see command results.
    #
    #     For example, specify `AWS-RunPatchBaseline` to see command
    #     executions that used this SSM document to perform security
    #     patching operations on instances.
    #
    #   * ExecutionStage: An enum whose value can be either `Executing` or
    #     `Complete`.
    #
    #     * Specify `Executing` to see a list of command executions that are
    #       currently still running.
    #
    #     * Specify `Complete` to see a list of command exeuctions that have
    #       already completed.
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
    # @!attribute [rw] document_version
    #   The SSM document version.
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
    #   statuses, see [Understanding Command Statuses][1] in the *AWS
    #   Systems Manager User Guide*. StatusDetails can be one of the
    #   following values:
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
    #   [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-commands.html
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
    # @!attribute [rw] cloud_watch_output_config
    #   CloudWatch Logs information where you want Systems Manager to send
    #   the command output.
    #   @return [Types::CloudWatchOutputConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CommandInvocation AWS API Documentation
    #
    class CommandInvocation < Struct.new(
      :command_id,
      :instance_id,
      :instance_name,
      :comment,
      :document_name,
      :document_version,
      :requested_date_time,
      :status,
      :status_details,
      :trace_output,
      :standard_output_url,
      :standard_error_url,
      :command_plugins,
      :service_role,
      :notification_config,
      :cloud_watch_output_config)
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
    #   statuses, see [Understanding Command Statuses][1] in the *AWS
    #   Systems Manager User Guide*. StatusDetails can be one of the
    #   following values:
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
    #   [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-commands.html
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

    # A summary of the call execution that includes an execution ID, the
    # type of execution (for example, `Command`), and the date/time of the
    # execution using a datetime object that is saved in the following
    # format: yyyy-MM-dd'T'HH:mm:ss'Z'.
    #
    # @note When making an API call, you may pass ComplianceExecutionSummary
    #   data as a hash:
    #
    #       {
    #         execution_time: Time.now, # required
    #         execution_id: "ComplianceExecutionId",
    #         execution_type: "ComplianceExecutionType",
    #       }
    #
    # @!attribute [rw] execution_time
    #   The time the execution ran as a datetime object that is saved in the
    #   following format: yyyy-MM-dd'T'HH:mm:ss'Z'.
    #   @return [Time]
    #
    # @!attribute [rw] execution_id
    #   An ID created by the system when `PutComplianceItems` was called.
    #   For example, `CommandID` is a valid execution ID. You can use this
    #   ID in subsequent calls.
    #   @return [String]
    #
    # @!attribute [rw] execution_type
    #   The type of execution. For example, `Command` is a valid execution
    #   type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ComplianceExecutionSummary AWS API Documentation
    #
    class ComplianceExecutionSummary < Struct.new(
      :execution_time,
      :execution_id,
      :execution_type)
      include Aws::Structure
    end

    # Information about the compliance as defined by the resource type. For
    # example, for a patch resource type, `Items` includes information about
    # the PatchSeverity, Classification, etc.
    #
    # @!attribute [rw] compliance_type
    #   The compliance type. For example, Association (for a State Manager
    #   association), Patch, or Custom:`string` are all valid compliance
    #   types.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource. `ManagedInstance` is currently the only
    #   supported resource type.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   An ID for the resource. For a managed instance, this is the instance
    #   ID.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   An ID for the compliance item. For example, if the compliance item
    #   is a Windows patch, the ID could be the number of the KB article;
    #   for example: KB4010320.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   A title for the compliance item. For example, if the compliance item
    #   is a Windows patch, the title could be the title of the KB article
    #   for the patch; for example: Security Update for Active Directory
    #   Federation Services.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the compliance item. An item is either COMPLIANT or
    #   NON\_COMPLIANT.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   The severity of the compliance status. Severity can be one of the
    #   following: Critical, High, Medium, Low, Informational, Unspecified.
    #   @return [String]
    #
    # @!attribute [rw] execution_summary
    #   A summary for the compliance item. The summary includes an execution
    #   ID, the execution type (for example, command), and the execution
    #   time.
    #   @return [Types::ComplianceExecutionSummary]
    #
    # @!attribute [rw] details
    #   A "Key": "Value" tag combination for the compliance item.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ComplianceItem AWS API Documentation
    #
    class ComplianceItem < Struct.new(
      :compliance_type,
      :resource_type,
      :resource_id,
      :id,
      :title,
      :status,
      :severity,
      :execution_summary,
      :details)
      include Aws::Structure
    end

    # Information about a compliance item.
    #
    # @note When making an API call, you may pass ComplianceItemEntry
    #   data as a hash:
    #
    #       {
    #         id: "ComplianceItemId",
    #         title: "ComplianceItemTitle",
    #         severity: "CRITICAL", # required, accepts CRITICAL, HIGH, MEDIUM, LOW, INFORMATIONAL, UNSPECIFIED
    #         status: "COMPLIANT", # required, accepts COMPLIANT, NON_COMPLIANT
    #         details: {
    #           "AttributeName" => "AttributeValue",
    #         },
    #       }
    #
    # @!attribute [rw] id
    #   The compliance item ID. For example, if the compliance item is a
    #   Windows patch, the ID could be the number of the KB article.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the compliance item. For example, if the compliance
    #   item is a Windows patch, the title could be the title of the KB
    #   article for the patch; for example: Security Update for Active
    #   Directory Federation Services.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   The severity of the compliance status. Severity can be one of the
    #   following: Critical, High, Medium, Low, Informational, Unspecified.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the compliance item. An item is either COMPLIANT or
    #   NON\_COMPLIANT.
    #   @return [String]
    #
    # @!attribute [rw] details
    #   A "Key": "Value" tag combination for the compliance item.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ComplianceItemEntry AWS API Documentation
    #
    class ComplianceItemEntry < Struct.new(
      :id,
      :title,
      :severity,
      :status,
      :details)
      include Aws::Structure
    end

    # One or more filters. Use a filter to return a more specific list of
    # results.
    #
    # @note When making an API call, you may pass ComplianceStringFilter
    #   data as a hash:
    #
    #       {
    #         key: "ComplianceStringFilterKey",
    #         values: ["ComplianceFilterValue"],
    #         type: "EQUAL", # accepts EQUAL, NOT_EQUAL, BEGIN_WITH, LESS_THAN, GREATER_THAN
    #       }
    #
    # @!attribute [rw] key
    #   The name of the filter.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The value for which to search.
    #   @return [Array<String>]
    #
    # @!attribute [rw] type
    #   The type of comparison that should be performed for the value:
    #   Equal, NotEqual, BeginWith, LessThan, or GreaterThan.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ComplianceStringFilter AWS API Documentation
    #
    class ComplianceStringFilter < Struct.new(
      :key,
      :values,
      :type)
      include Aws::Structure
    end

    # A summary of compliance information by compliance type.
    #
    # @!attribute [rw] compliance_type
    #   The type of compliance item. For example, the compliance type can be
    #   Association, Patch, or Custom:string.
    #   @return [String]
    #
    # @!attribute [rw] compliant_summary
    #   A list of COMPLIANT items for the specified compliance type.
    #   @return [Types::CompliantSummary]
    #
    # @!attribute [rw] non_compliant_summary
    #   A list of NON\_COMPLIANT items for the specified compliance type.
    #   @return [Types::NonCompliantSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ComplianceSummaryItem AWS API Documentation
    #
    class ComplianceSummaryItem < Struct.new(
      :compliance_type,
      :compliant_summary,
      :non_compliant_summary)
      include Aws::Structure
    end

    # A summary of resources that are compliant. The summary is organized
    # according to the resource count for each compliance type.
    #
    # @!attribute [rw] compliant_count
    #   The total number of resources that are compliant.
    #   @return [Integer]
    #
    # @!attribute [rw] severity_summary
    #   A summary of the compliance severity by compliance type.
    #   @return [Types::SeveritySummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CompliantSummary AWS API Documentation
    #
    class CompliantSummary < Struct.new(
      :compliant_count,
      :severity_summary)
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
    #   A user-defined description of the resource that you want to register
    #   with Amazon EC2.
    #
    #   Do not enter personally identifiable information in this field.
    #   @return [String]
    #
    # @!attribute [rw] default_instance_name
    #   The name of the registered, managed instance as it will appear in
    #   the Amazon EC2 console or when you use the AWS command line tools to
    #   list EC2 resources.
    #
    #   Do not enter personally identifiable information in this field.
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
    #             association_name: "AssociationName",
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
    #         association_name: "AssociationName",
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
    # @!attribute [rw] association_name
    #   Specify a descriptive name for the association.
    #   @return [String]
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
      :output_location,
      :association_name)
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
    #         association_name: "AssociationName",
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
    # @!attribute [rw] association_name
    #   Specify a descriptive name for the association.
    #   @return [String]
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
      :output_location,
      :association_name)
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
    #         document_type: "Command", # accepts Command, Policy, Automation, Session
    #         document_format: "YAML", # accepts YAML, JSON
    #         target_type: "TargetType",
    #       }
    #
    # @!attribute [rw] content
    #   A valid JSON or YAML string.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name for the Systems Manager document.
    #
    #   Do not use the following to begin the names of documents you create.
    #   They are reserved by AWS for use as document prefixes:
    #
    #    * `aws`
    #
    #   * `amazon`
    #
    #   * `amzn`
    #   @return [String]
    #
    # @!attribute [rw] document_type
    #   The type of document to create. Valid document types include:
    #   Policy, Automation, and Command.
    #   @return [String]
    #
    # @!attribute [rw] document_format
    #   Specify the document format for the request. The document format can
    #   be either JSON or YAML. JSON is the default format.
    #   @return [String]
    #
    # @!attribute [rw] target_type
    #   Specify a target type to define the kinds of resources the document
    #   can run on. For example, to run a document on EC2 instances, specify
    #   the following value: /AWS::EC2::Instance. If you specify a value of
    #   '/' the document can run on all types of resources. If you don't
    #   specify a value, the document can't run on any resources. For a
    #   list of valid resource types, see [AWS Resource Types Reference][1]
    #   in the *AWS CloudFormation User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateDocumentRequest AWS API Documentation
    #
    class CreateDocumentRequest < Struct.new(
      :content,
      :name,
      :document_type,
      :document_format,
      :target_type)
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
    #         description: "MaintenanceWindowDescription",
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
    # @!attribute [rw] description
    #   An optional description for the Maintenance Window. We recommend
    #   specifying a description to help you organize your Maintenance
    #   Windows.
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
    #   Enables a Maintenance Window task to execute on managed instances,
    #   even if you have not registered those instances as targets. If
    #   enabled, then you must specify the unregistered instances (by
    #   instance ID) when you register a task with the Maintenance Window
    #
    #   If you don't enable this option, then you must specify
    #   previously-registered targets when you register a task with the
    #   Maintenance Window.
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
      :description,
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
    #         operating_system: "WINDOWS", # accepts WINDOWS, AMAZON_LINUX, AMAZON_LINUX_2, UBUNTU, REDHAT_ENTERPRISE_LINUX, SUSE, CENTOS
    #         name: "BaselineName", # required
    #         global_filters: {
    #           patch_filters: [ # required
    #             {
    #               key: "PRODUCT", # required, accepts PRODUCT, CLASSIFICATION, MSRC_SEVERITY, PATCH_ID, SECTION, PRIORITY, SEVERITY
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
    #                     key: "PRODUCT", # required, accepts PRODUCT, CLASSIFICATION, MSRC_SEVERITY, PATCH_ID, SECTION, PRIORITY, SEVERITY
    #                     values: ["PatchFilterValue"], # required
    #                   },
    #                 ],
    #               },
    #               compliance_level: "CRITICAL", # accepts CRITICAL, HIGH, MEDIUM, LOW, INFORMATIONAL, UNSPECIFIED
    #               approve_after_days: 1, # required
    #               enable_non_security: false,
    #             },
    #           ],
    #         },
    #         approved_patches: ["PatchId"],
    #         approved_patches_compliance_level: "CRITICAL", # accepts CRITICAL, HIGH, MEDIUM, LOW, INFORMATIONAL, UNSPECIFIED
    #         approved_patches_enable_non_security: false,
    #         rejected_patches: ["PatchId"],
    #         description: "BaselineDescription",
    #         sources: [
    #           {
    #             name: "PatchSourceName", # required
    #             products: ["PatchSourceProduct"], # required
    #             configuration: "PatchSourceConfiguration", # required
    #           },
    #         ],
    #         client_token: "ClientToken",
    #       }
    #
    # @!attribute [rw] operating_system
    #   Defines the operating system the patch baseline applies to. The
    #   Default value is WINDOWS.
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
    #
    #   For information about accepted formats for lists of approved patches
    #   and rejected patches, see [Package Name Formats for Approved and
    #   Rejected Patch Lists][1] in the *AWS Systems Manager User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] approved_patches_compliance_level
    #   Defines the compliance level for approved patches. This means that
    #   if an approved patch is reported as missing, this is the severity of
    #   the compliance violation. The default value is UNSPECIFIED.
    #   @return [String]
    #
    # @!attribute [rw] approved_patches_enable_non_security
    #   Indicates whether the list of approved patches includes non-security
    #   updates that should be applied to the instances. The default value
    #   is 'false'. Applies to Linux instances only.
    #   @return [Boolean]
    #
    # @!attribute [rw] rejected_patches
    #   A list of explicitly rejected patches for the baseline.
    #
    #   For information about accepted formats for lists of approved patches
    #   and rejected patches, see [Package Name Formats for Approved and
    #   Rejected Patch Lists][1] in the *AWS Systems Manager User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] description
    #   A description of the patch baseline.
    #   @return [String]
    #
    # @!attribute [rw] sources
    #   Information about the patches to use to update the instances,
    #   including target operating systems and source repositories. Applies
    #   to Linux instances only.
    #   @return [Array<Types::PatchSource>]
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
      :operating_system,
      :name,
      :global_filters,
      :approval_rules,
      :approved_patches,
      :approved_patches_compliance_level,
      :approved_patches_enable_non_security,
      :rejected_patches,
      :description,
      :sources,
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

    # @note When making an API call, you may pass CreateResourceDataSyncRequest
    #   data as a hash:
    #
    #       {
    #         sync_name: "ResourceDataSyncName", # required
    #         s3_destination: { # required
    #           bucket_name: "ResourceDataSyncS3BucketName", # required
    #           prefix: "ResourceDataSyncS3Prefix",
    #           sync_format: "JsonSerDe", # required, accepts JsonSerDe
    #           region: "ResourceDataSyncS3Region", # required
    #           awskms_key_arn: "ResourceDataSyncAWSKMSKeyARN",
    #         },
    #       }
    #
    # @!attribute [rw] sync_name
    #   A name for the configuration.
    #   @return [String]
    #
    # @!attribute [rw] s3_destination
    #   Amazon S3 configuration details for the sync.
    #   @return [Types::ResourceDataSyncS3Destination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateResourceDataSyncRequest AWS API Documentation
    #
    class CreateResourceDataSyncRequest < Struct.new(
      :sync_name,
      :s3_destination)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateResourceDataSyncResult AWS API Documentation
    #
    class CreateResourceDataSyncResult < Aws::EmptyStructure; end

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

    # @note When making an API call, you may pass DeleteInventoryRequest
    #   data as a hash:
    #
    #       {
    #         type_name: "InventoryItemTypeName", # required
    #         schema_delete_option: "DisableSchema", # accepts DisableSchema, DeleteSchema
    #         dry_run: false,
    #         client_token: "ClientToken",
    #       }
    #
    # @!attribute [rw] type_name
    #   The name of the custom inventory type for which you want to delete
    #   either all previously collected data, or the inventory type itself.
    #   @return [String]
    #
    # @!attribute [rw] schema_delete_option
    #   Use the `SchemaDeleteOption` to delete a custom inventory type
    #   (schema). If you don't choose this option, the system only deletes
    #   existing inventory data associated with the custom inventory type.
    #   Choose one of the following options:
    #
    #   DisableSchema: If you choose this option, the system ignores all
    #   inventory data for the specified version, and any earlier versions.
    #   To enable this schema again, you must call the `PutInventory` action
    #   for a version greater than the disbled version.
    #
    #   DeleteSchema: This option deletes the specified custom type from the
    #   Inventory service. You can recreate the schema later, if you want.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Use this option to view a summary of the deletion request without
    #   deleting any data or the data type. This option is useful when you
    #   only want to understand what will be deleted. Once you validate that
    #   the data to be deleted is what you intend to delete, you can run the
    #   same command without specifying the `DryRun` option.
    #   @return [Boolean]
    #
    # @!attribute [rw] client_token
    #   User-provided idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteInventoryRequest AWS API Documentation
    #
    class DeleteInventoryRequest < Struct.new(
      :type_name,
      :schema_delete_option,
      :dry_run,
      :client_token)
      include Aws::Structure
    end

    # @!attribute [rw] deletion_id
    #   Every `DeleteInventory` action is assigned a unique ID. This option
    #   returns a unique ID. You can use this ID to query the status of a
    #   delete operation. This option is useful for ensuring that a delete
    #   operation has completed before you begin other actions.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The name of the inventory data type specified in the request.
    #   @return [String]
    #
    # @!attribute [rw] deletion_summary
    #   A summary of the delete operation. For more information about this
    #   summary, see [Understanding the Delete Inventory Summary][1] in the
    #   *AWS Systems Manager User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-inventory-delete.html#sysman-inventory-delete-summary
    #   @return [Types::InventoryDeletionSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteInventoryResult AWS API Documentation
    #
    class DeleteInventoryResult < Struct.new(
      :deletion_id,
      :type_name,
      :deletion_summary)
      include Aws::Structure
    end

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

    # @note When making an API call, you may pass DeleteResourceDataSyncRequest
    #   data as a hash:
    #
    #       {
    #         sync_name: "ResourceDataSyncName", # required
    #       }
    #
    # @!attribute [rw] sync_name
    #   The name of the configuration to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteResourceDataSyncRequest AWS API Documentation
    #
    class DeleteResourceDataSyncRequest < Struct.new(
      :sync_name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteResourceDataSyncResult AWS API Documentation
    #
    class DeleteResourceDataSyncResult < Aws::EmptyStructure; end

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
    #         safe: false,
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
    # @!attribute [rw] safe
    #   The system checks if the target is being referenced by a task. If
    #   the target is being referenced, the system returns an error and does
    #   not deregister the target from the Maintenance Window.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeregisterTargetFromMaintenanceWindowRequest AWS API Documentation
    #
    class DeregisterTargetFromMaintenanceWindowRequest < Struct.new(
      :window_id,
      :window_target_id,
      :safe)
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

    # @note When making an API call, you may pass DescribeAssociationExecutionTargetsRequest
    #   data as a hash:
    #
    #       {
    #         association_id: "AssociationId", # required
    #         execution_id: "AssociationExecutionId", # required
    #         filters: [
    #           {
    #             key: "Status", # required, accepts Status, ResourceId, ResourceType
    #             value: "AssociationExecutionTargetsFilterValue", # required
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] association_id
    #   The association ID that includes the execution for which you want to
    #   view details.
    #   @return [String]
    #
    # @!attribute [rw] execution_id
    #   The execution ID for which you want to view details.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters for the request. You can specify the following filters and
    #   values.
    #
    #   Status (EQUAL)
    #
    #   ResourceId (EQUAL)
    #
    #   ResourceType (EQUAL)
    #   @return [Array<Types::AssociationExecutionTargetsFilter>]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeAssociationExecutionTargetsRequest AWS API Documentation
    #
    class DescribeAssociationExecutionTargetsRequest < Struct.new(
      :association_id,
      :execution_id,
      :filters,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] association_execution_targets
    #   Information about the execution.
    #   @return [Array<Types::AssociationExecutionTarget>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. Use this token to get
    #   the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeAssociationExecutionTargetsResult AWS API Documentation
    #
    class DescribeAssociationExecutionTargetsResult < Struct.new(
      :association_execution_targets,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAssociationExecutionsRequest
    #   data as a hash:
    #
    #       {
    #         association_id: "AssociationId", # required
    #         filters: [
    #           {
    #             key: "ExecutionId", # required, accepts ExecutionId, Status, CreatedTime
    #             value: "AssociationExecutionFilterValue", # required
    #             type: "EQUAL", # required, accepts EQUAL, LESS_THAN, GREATER_THAN
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] association_id
    #   The association ID for which you want to view execution history
    #   details.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters for the request. You can specify the following filters and
    #   values.
    #
    #   ExecutionId (EQUAL)
    #
    #   Status (EQUAL)
    #
    #   CreatedTime (EQUAL, GREATER\_THAN, LESS\_THAN)
    #   @return [Array<Types::AssociationExecutionFilter>]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeAssociationExecutionsRequest AWS API Documentation
    #
    class DescribeAssociationExecutionsRequest < Struct.new(
      :association_id,
      :filters,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] association_executions
    #   A list of the executions for the specified association ID.
    #   @return [Array<Types::AssociationExecution>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. Use this token to get
    #   the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeAssociationExecutionsResult AWS API Documentation
    #
    class DescribeAssociationExecutionsResult < Struct.new(
      :association_executions,
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
    #         association_version: "AssociationVersion",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the Systems Manager document.
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
    # @!attribute [rw] association_version
    #   Specify the association version to retrieve. To view the latest
    #   version, either specify `$LATEST` for this parameter, or omit this
    #   parameter. To view a list of all associations for an instance, use
    #   ListInstanceAssociations. To get a list of versions for a specific
    #   association, use ListAssociationVersions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeAssociationRequest AWS API Documentation
    #
    class DescribeAssociationRequest < Struct.new(
      :name,
      :instance_id,
      :association_id,
      :association_version)
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
    #             key: "DocumentNamePrefix", # required, accepts DocumentNamePrefix, ExecutionStatus, ExecutionId, ParentExecutionId, CurrentAction, StartTimeBefore, StartTimeAfter
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

    # @note When making an API call, you may pass DescribeAutomationStepExecutionsRequest
    #   data as a hash:
    #
    #       {
    #         automation_execution_id: "AutomationExecutionId", # required
    #         filters: [
    #           {
    #             key: "StartTimeBefore", # required, accepts StartTimeBefore, StartTimeAfter, StepExecutionStatus, StepExecutionId, StepName, Action
    #             values: ["StepExecutionFilterValue"], # required
    #           },
    #         ],
    #         next_token: "NextToken",
    #         max_results: 1,
    #         reverse_order: false,
    #       }
    #
    # @!attribute [rw] automation_execution_id
    #   The Automation execution ID for which you want step execution
    #   descriptions.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   One or more filters to limit the number of step executions returned
    #   by the request.
    #   @return [Array<Types::StepExecutionFilter>]
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
    # @!attribute [rw] reverse_order
    #   A boolean that indicates whether to list step executions in reverse
    #   order by start time. The default value is false.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeAutomationStepExecutionsRequest AWS API Documentation
    #
    class DescribeAutomationStepExecutionsRequest < Struct.new(
      :automation_execution_id,
      :filters,
      :next_token,
      :max_results,
      :reverse_order)
      include Aws::Structure
    end

    # @!attribute [rw] step_executions
    #   A list of details about the current state of all steps that make up
    #   an execution.
    #   @return [Array<Types::StepExecution>]
    #
    # @!attribute [rw] next_token
    #   The token to use when requesting the next set of items. If there are
    #   no additional items to return, the string is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeAutomationStepExecutionsResult AWS API Documentation
    #
    class DescribeAutomationStepExecutionsResult < Struct.new(
      :step_executions,
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
    #   The name of the Systems Manager document.
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
    #   Information about the Systems Manager document.
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
    #   This is a legacy method. We recommend that you don't use this
    #   method. Instead, use the InstanceInformationFilter action. The
    #   `InstanceInformationFilter` action enables you to return instance
    #   information by using tags that are specified as a key-value mapping.
    #
    #   If you do use this method, then you can't use the
    #   `InstanceInformationFilter` action. Using this method and the
    #   `InstanceInformationFilter` action causes an exception error.
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

    # @note When making an API call, you may pass DescribeInventoryDeletionsRequest
    #   data as a hash:
    #
    #       {
    #         deletion_id: "InventoryDeletionId",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] deletion_id
    #   Specify the delete inventory ID for which you want information. This
    #   ID was returned by the `DeleteInventory` action.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeInventoryDeletionsRequest AWS API Documentation
    #
    class DescribeInventoryDeletionsRequest < Struct.new(
      :deletion_id,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] inventory_deletions
    #   A list of status items for deleted inventory.
    #   @return [Array<Types::InventoryDeletionStatusItem>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. Use this token to get
    #   the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeInventoryDeletionsResult AWS API Documentation
    #
    class DescribeInventoryDeletionsResult < Struct.new(
      :inventory_deletions,
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
    #         filters: [
    #           {
    #             key: "PatchOrchestratorFilterKey",
    #             values: ["PatchOrchestratorFilterValue"],
    #           },
    #         ],
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of patch groups to return (per page).
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   One or more filters. Use a filter to return a more specific list of
    #   results.
    #   @return [Array<Types::PatchOrchestratorFilter>]
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
      :filters,
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

    # @note When making an API call, you may pass DescribeSessionsRequest
    #   data as a hash:
    #
    #       {
    #         state: "Active", # required, accepts Active, History
    #         max_results: 1,
    #         next_token: "NextToken",
    #         filters: [
    #           {
    #             key: "InvokedAfter", # required, accepts InvokedAfter, InvokedBefore, Target, Owner, Status
    #             value: "SessionFilterValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] state
    #   The session status to retrieve a list of sessions for. For example,
    #   "active".
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
    # @!attribute [rw] filters
    #   One or more filters to limit the type of sessions returned by the
    #   request.
    #   @return [Array<Types::SessionFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeSessionsRequest AWS API Documentation
    #
    class DescribeSessionsRequest < Struct.new(
      :state,
      :max_results,
      :next_token,
      :filters)
      include Aws::Structure
    end

    # @!attribute [rw] sessions
    #   A list of sessions meeting the request parameters.
    #   @return [Array<Types::Session>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeSessionsResponse AWS API Documentation
    #
    class DescribeSessionsResponse < Struct.new(
      :sessions,
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

    # Describes a Systems Manager document.
    #
    # @!attribute [rw] sha_1
    #   The SHA1 hash of the document, which you can use for verification.
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
    #   The name of the Systems Manager document.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The AWS user account that created the document.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date when the document was created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the Systems Manager document.
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
    #   The list of OS platforms compatible with this Systems Manager
    #   document.
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
    # @!attribute [rw] document_format
    #   The document format, either JSON or YAML.
    #   @return [String]
    #
    # @!attribute [rw] target_type
    #   The target type which defines the kinds of resources the document
    #   can run on. For example, /AWS::EC2::Instance. For a list of valid
    #   resource types, see [AWS Resource Types Reference][1] in the *AWS
    #   CloudFormation User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags, or metadata, that have been applied to the document.
    #   @return [Array<Types::Tag>]
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
      :default_version,
      :document_format,
      :target_type,
      :tags)
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

    # Describes the name of a Systems Manager document.
    #
    # @!attribute [rw] name
    #   The name of the Systems Manager document.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The AWS user account that created the document.
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
    # @!attribute [rw] document_format
    #   The document format, either JSON or YAML.
    #   @return [String]
    #
    # @!attribute [rw] target_type
    #   The target type which defines the kinds of resources the document
    #   can run on. For example, /AWS::EC2::Instance. For a list of valid
    #   resource types, see [AWS Resource Types Reference][1] in the *AWS
    #   CloudFormation User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags, or metadata, that have been applied to the document.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DocumentIdentifier AWS API Documentation
    #
    class DocumentIdentifier < Struct.new(
      :name,
      :owner,
      :platform_types,
      :document_version,
      :document_type,
      :schema_version,
      :document_format,
      :target_type,
      :tags)
      include Aws::Structure
    end

    # One or more filters. Use a filter to return a more specific list of
    # documents.
    #
    # For keys, you can specify one or more tags that have been applied to a
    # document.
    #
    # Other valid values include Owner, Name, PlatformTypes, and
    # DocumentType.
    #
    # Note that only one Owner can be specified in a request. For example:
    # `Key=Owner,Values=Self`.
    #
    # If you use Name as a key, you can use a name prefix to return a list
    # of documents. For example, in the AWS CLI, to return a list of all
    # documents that begin with `Te`, run the following command:
    #
    # `aws ssm list-documents --filters Key=Name,Values=Te`
    #
    # If you specify more than two keys, only documents that are identified
    # by all the tags are returned in the results. If you specify more than
    # two values for a key, documents that are identified by any of the
    # values are returned in the results.
    #
    # To specify a custom key and value pair, use the format
    # `Key=tag:[tagName],Values=[valueName]`.
    #
    # For example, if you created a Key called region and are using the AWS
    # CLI to call the `list-documents` command:
    #
    # `aws ssm list-documents --filters Key=tag:region,Values=east,west
    # Key=Owner,Values=Self`
    #
    # @note When making an API call, you may pass DocumentKeyValuesFilter
    #   data as a hash:
    #
    #       {
    #         key: "DocumentKeyValuesFilterKey",
    #         values: ["DocumentKeyValuesFilterValue"],
    #       }
    #
    # @!attribute [rw] key
    #   The name of the filter key.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The value for the filter key.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DocumentKeyValuesFilter AWS API Documentation
    #
    class DocumentKeyValuesFilter < Struct.new(
      :key,
      :values)
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
    # @!attribute [rw] document_format
    #   The document format, either JSON or YAML.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DocumentVersionInfo AWS API Documentation
    #
    class DocumentVersionInfo < Struct.new(
      :name,
      :document_version,
      :created_date,
      :is_default_version,
      :document_format)
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
    # @!attribute [rw] document_version
    #   The SSM document version used in the request.
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
    #   The status of this invocation plugin. This status can be different
    #   than StatusDetails.
    #   @return [String]
    #
    # @!attribute [rw] status_details
    #   A detailed status of the command execution for an invocation.
    #   StatusDetails includes more information than Status because it
    #   includes states resulting from error and concurrency control
    #   parameters. StatusDetails can show different results than Status.
    #   For more information about these statuses, see [Understanding
    #   Command Statuses][1] in the *AWS Systems Manager User Guide*.
    #   StatusDetails can be one of the following values:
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
    #   [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-commands.html
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
    # @!attribute [rw] cloud_watch_output_config
    #   CloudWatch Logs information where Systems Manager sent the command
    #   output.
    #   @return [Types::CloudWatchOutputConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetCommandInvocationResult AWS API Documentation
    #
    class GetCommandInvocationResult < Struct.new(
      :command_id,
      :instance_id,
      :comment,
      :document_name,
      :document_version,
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
      :standard_error_url,
      :cloud_watch_output_config)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetConnectionStatusRequest
    #   data as a hash:
    #
    #       {
    #         target: "SessionTarget", # required
    #       }
    #
    # @!attribute [rw] target
    #   The ID of the instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetConnectionStatusRequest AWS API Documentation
    #
    class GetConnectionStatusRequest < Struct.new(
      :target)
      include Aws::Structure
    end

    # @!attribute [rw] target
    #   The ID of the instance to check connection status.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the connection to the instance. For example,
    #   'Connected' or 'Not Connected'.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetConnectionStatusResponse AWS API Documentation
    #
    class GetConnectionStatusResponse < Struct.new(
      :target,
      :status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDefaultPatchBaselineRequest
    #   data as a hash:
    #
    #       {
    #         operating_system: "WINDOWS", # accepts WINDOWS, AMAZON_LINUX, AMAZON_LINUX_2, UBUNTU, REDHAT_ENTERPRISE_LINUX, SUSE, CENTOS
    #       }
    #
    # @!attribute [rw] operating_system
    #   Returns the default patch baseline for the specified operating
    #   system.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetDefaultPatchBaselineRequest AWS API Documentation
    #
    class GetDefaultPatchBaselineRequest < Struct.new(
      :operating_system)
      include Aws::Structure
    end

    # @!attribute [rw] baseline_id
    #   The ID of the default patch baseline.
    #   @return [String]
    #
    # @!attribute [rw] operating_system
    #   The operating system for the returned patch baseline.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetDefaultPatchBaselineResult AWS API Documentation
    #
    class GetDefaultPatchBaselineResult < Struct.new(
      :baseline_id,
      :operating_system)
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
    # @!attribute [rw] product
    #   Returns the specific operating system (for example Windows Server
    #   2012 or Amazon Linux 2015.09) on the instance for the specified
    #   patch snapshot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetDeployablePatchSnapshotForInstanceResult AWS API Documentation
    #
    class GetDeployablePatchSnapshotForInstanceResult < Struct.new(
      :instance_id,
      :snapshot_id,
      :snapshot_download_url,
      :product)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDocumentRequest
    #   data as a hash:
    #
    #       {
    #         name: "DocumentARN", # required
    #         document_version: "DocumentVersion",
    #         document_format: "YAML", # accepts YAML, JSON
    #       }
    #
    # @!attribute [rw] name
    #   The name of the Systems Manager document.
    #   @return [String]
    #
    # @!attribute [rw] document_version
    #   The document version for which you want information.
    #   @return [String]
    #
    # @!attribute [rw] document_format
    #   Returns the document in the specified format. The document format
    #   can be either JSON or YAML. JSON is the default format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetDocumentRequest AWS API Documentation
    #
    class GetDocumentRequest < Struct.new(
      :name,
      :document_version,
      :document_format)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the Systems Manager document.
    #   @return [String]
    #
    # @!attribute [rw] document_version
    #   The document version.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The contents of the Systems Manager document.
    #   @return [String]
    #
    # @!attribute [rw] document_type
    #   The document type.
    #   @return [String]
    #
    # @!attribute [rw] document_format
    #   The document format, either JSON or YAML.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetDocumentResult AWS API Documentation
    #
    class GetDocumentResult < Struct.new(
      :name,
      :document_version,
      :content,
      :document_type,
      :document_format)
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
    #             type: "Equal", # accepts Equal, NotEqual, BeginWith, LessThan, GreaterThan, Exists
    #           },
    #         ],
    #         aggregators: [
    #           {
    #             expression: "InventoryAggregatorExpression",
    #             aggregators: {
    #               # recursive InventoryAggregatorList
    #             },
    #             groups: [
    #               {
    #                 name: "InventoryGroupName", # required
    #                 filters: [ # required
    #                   {
    #                     key: "InventoryFilterKey", # required
    #                     values: ["InventoryFilterValue"], # required
    #                     type: "Equal", # accepts Equal, NotEqual, BeginWith, LessThan, GreaterThan, Exists
    #                   },
    #                 ],
    #               },
    #             ],
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
    # @!attribute [rw] aggregators
    #   Returns counts of inventory types based on one or more expressions.
    #   For example, if you aggregate by using an expression that uses the
    #   `AWS:InstanceInformation.PlatformType` type, you can see a count of
    #   how many Windows and Linux instances exist in your inventoried
    #   fleet.
    #   @return [Array<Types::InventoryAggregator>]
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
      :aggregators,
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
    #         aggregator: false,
    #         sub_type: false,
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
    # @!attribute [rw] aggregator
    #   Returns inventory schemas that support aggregation. For example,
    #   this call returns the `AWS:InstanceInformation` type, because it
    #   supports aggregation based on the `PlatformName`, `PlatformType`,
    #   and `PlatformVersion` attributes.
    #   @return [Boolean]
    #
    # @!attribute [rw] sub_type
    #   Returns the sub-type schema for a specified inventory type.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetInventorySchemaRequest AWS API Documentation
    #
    class GetInventorySchemaRequest < Struct.new(
      :type_name,
      :next_token,
      :max_results,
      :aggregator,
      :sub_type)
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

    # @note When making an API call, you may pass GetMaintenanceWindowExecutionTaskInvocationRequest
    #   data as a hash:
    #
    #       {
    #         window_execution_id: "MaintenanceWindowExecutionId", # required
    #         task_id: "MaintenanceWindowExecutionTaskId", # required
    #         invocation_id: "MaintenanceWindowExecutionTaskInvocationId", # required
    #       }
    #
    # @!attribute [rw] window_execution_id
    #   The ID of the Maintenance Window execution for which the task is a
    #   part.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   The ID of the specific task in the Maintenance Window task that
    #   should be retrieved.
    #   @return [String]
    #
    # @!attribute [rw] invocation_id
    #   The invocation ID to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetMaintenanceWindowExecutionTaskInvocationRequest AWS API Documentation
    #
    class GetMaintenanceWindowExecutionTaskInvocationRequest < Struct.new(
      :window_execution_id,
      :task_id,
      :invocation_id)
      include Aws::Structure
    end

    # @!attribute [rw] window_execution_id
    #   The Maintenance Window execution ID.
    #   @return [String]
    #
    # @!attribute [rw] task_execution_id
    #   The task execution ID.
    #   @return [String]
    #
    # @!attribute [rw] invocation_id
    #   The invocation ID.
    #   @return [String]
    #
    # @!attribute [rw] execution_id
    #   The execution ID.
    #   @return [String]
    #
    # @!attribute [rw] task_type
    #   Retrieves the task type for a Maintenance Window. Task types include
    #   the following: LAMBDA, STEP\_FUNCTION, AUTOMATION, RUN\_COMMAND.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters used at the time that the task executed.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The task status for an invocation.
    #   @return [String]
    #
    # @!attribute [rw] status_details
    #   The details explaining the status. Details are only available for
    #   certain status values.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time that the task started executing on the target.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time that the task finished executing on the target.
    #   @return [Time]
    #
    # @!attribute [rw] owner_information
    #   User-provided value to be included in any CloudWatch events raised
    #   while running tasks for these targets in this Maintenance Window.
    #   @return [String]
    #
    # @!attribute [rw] window_target_id
    #   The Maintenance Window target ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetMaintenanceWindowExecutionTaskInvocationResult AWS API Documentation
    #
    class GetMaintenanceWindowExecutionTaskInvocationResult < Struct.new(
      :window_execution_id,
      :task_execution_id,
      :invocation_id,
      :execution_id,
      :task_type,
      :parameters,
      :status,
      :status_details,
      :start_time,
      :end_time,
      :owner_information,
      :window_target_id)
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
    #   The parameters passed to the task when it was executed.
    #
    #   <note markdown="1"> `TaskParameters` has been deprecated. To specify parameters to pass
    #   to a task when it runs, instead use the `Parameters` option in the
    #   `TaskInvocationParameters` structure. For information about how
    #   Systems Manager handles these options for the supported Maintenance
    #   Window task types, see MaintenanceWindowTaskInvocationParameters.
    #
    #    </note>
    #
    #   The map has the following format:
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
    # @!attribute [rw] description
    #   The description of the Maintenance Window.
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
      :description,
      :schedule,
      :duration,
      :cutoff,
      :allow_unassociated_targets,
      :enabled,
      :created_date,
      :modified_date)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetMaintenanceWindowTaskRequest
    #   data as a hash:
    #
    #       {
    #         window_id: "MaintenanceWindowId", # required
    #         window_task_id: "MaintenanceWindowTaskId", # required
    #       }
    #
    # @!attribute [rw] window_id
    #   The Maintenance Window ID that includes the task to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] window_task_id
    #   The Maintenance Window task ID to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetMaintenanceWindowTaskRequest AWS API Documentation
    #
    class GetMaintenanceWindowTaskRequest < Struct.new(
      :window_id,
      :window_task_id)
      include Aws::Structure
    end

    # @!attribute [rw] window_id
    #   The retrieved Maintenance Window ID.
    #   @return [String]
    #
    # @!attribute [rw] window_task_id
    #   The retrieved Maintenance Window task ID.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The targets where the task should execute.
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] task_arn
    #   The resource that the task used during execution. For RUN\_COMMAND
    #   and AUTOMATION task types, the TaskArn is the Systems Manager
    #   Document name/ARN. For LAMBDA tasks, the value is the function
    #   name/ARN. For STEP\_FUNCTION tasks, the value is the state machine
    #   ARN.
    #   @return [String]
    #
    # @!attribute [rw] service_role_arn
    #   The IAM service role to assume during task execution.
    #   @return [String]
    #
    # @!attribute [rw] task_type
    #   The type of task to execute.
    #   @return [String]
    #
    # @!attribute [rw] task_parameters
    #   The parameters to pass to the task when it executes.
    #
    #   <note markdown="1"> `TaskParameters` has been deprecated. To specify parameters to pass
    #   to a task when it runs, instead use the `Parameters` option in the
    #   `TaskInvocationParameters` structure. For information about how
    #   Systems Manager handles these options for the supported Maintenance
    #   Window task types, see MaintenanceWindowTaskInvocationParameters.
    #
    #    </note>
    #   @return [Hash<String,Types::MaintenanceWindowTaskParameterValueExpression>]
    #
    # @!attribute [rw] task_invocation_parameters
    #   The parameters to pass to the task when it executes.
    #   @return [Types::MaintenanceWindowTaskInvocationParameters]
    #
    # @!attribute [rw] priority
    #   The priority of the task when it executes. The lower the number, the
    #   higher the priority. Tasks that have the same priority are scheduled
    #   in parallel.
    #   @return [Integer]
    #
    # @!attribute [rw] max_concurrency
    #   The maximum number of targets allowed to run this task in parallel.
    #   @return [String]
    #
    # @!attribute [rw] max_errors
    #   The maximum number of errors allowed before the task stops being
    #   scheduled.
    #   @return [String]
    #
    # @!attribute [rw] logging_info
    #   The location in Amazon S3 where the task results are logged.
    #
    #   <note markdown="1"> `LoggingInfo` has been deprecated. To specify an S3 bucket to
    #   contain logs, instead use the `OutputS3BucketName` and
    #   `OutputS3KeyPrefix` options in the `TaskInvocationParameters`
    #   structure. For information about how Systems Manager handles these
    #   options for the supported Maintenance Window task types, see
    #   MaintenanceWindowTaskInvocationParameters.
    #
    #    </note>
    #   @return [Types::LoggingInfo]
    #
    # @!attribute [rw] name
    #   The retrieved task name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The retrieved task description.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetMaintenanceWindowTaskResult AWS API Documentation
    #
    class GetMaintenanceWindowTaskResult < Struct.new(
      :window_id,
      :window_task_id,
      :targets,
      :task_arn,
      :service_role_arn,
      :task_type,
      :task_parameters,
      :task_invocation_parameters,
      :priority,
      :max_concurrency,
      :max_errors,
      :logging_info,
      :name,
      :description)
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
    #   slash (/) and end with the parameter name. A parameter name
    #   hierarchy can have a maximum of 15 levels. Here is an example of a
    #   hierarchy: `/Finance/Prod/IAD/WinServ2016/license33`
    #   @return [String]
    #
    # @!attribute [rw] recursive
    #   Retrieve all parameters within a hierarchy.
    #
    #   If a user has access to a path, then the user can access all levels
    #   of that path. For example, if a user has permission to access path
    #   /a, then the user can also access /a/b. Even if a user has
    #   explicitly been denied access in IAM for parameter /a, they can
    #   still call the GetParametersByPath API action recursively and view
    #   /a/b.
    #   @return [Boolean]
    #
    # @!attribute [rw] parameter_filters
    #   Filters to limit the request results.
    #
    #   <note markdown="1"> You can't filter using the parameter name.
    #
    #    </note>
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
    #         operating_system: "WINDOWS", # accepts WINDOWS, AMAZON_LINUX, AMAZON_LINUX_2, UBUNTU, REDHAT_ENTERPRISE_LINUX, SUSE, CENTOS
    #       }
    #
    # @!attribute [rw] patch_group
    #   The name of the patch group whose patch baseline should be
    #   retrieved.
    #   @return [String]
    #
    # @!attribute [rw] operating_system
    #   Returns he operating system rule specified for patch groups using
    #   the patch baseline.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetPatchBaselineForPatchGroupRequest AWS API Documentation
    #
    class GetPatchBaselineForPatchGroupRequest < Struct.new(
      :patch_group,
      :operating_system)
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
    # @!attribute [rw] operating_system
    #   The operating system rule specified for patch groups using the patch
    #   baseline.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetPatchBaselineForPatchGroupResult AWS API Documentation
    #
    class GetPatchBaselineForPatchGroupResult < Struct.new(
      :baseline_id,
      :patch_group,
      :operating_system)
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
    # @!attribute [rw] operating_system
    #   Returns the operating system specified for the patch baseline.
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
    # @!attribute [rw] approved_patches_compliance_level
    #   Returns the specified compliance severity level for approved patches
    #   in the patch baseline.
    #   @return [String]
    #
    # @!attribute [rw] approved_patches_enable_non_security
    #   Indicates whether the list of approved patches includes non-security
    #   updates that should be applied to the instances. The default value
    #   is 'false'. Applies to Linux instances only.
    #   @return [Boolean]
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
    # @!attribute [rw] sources
    #   Information about the patches to use to update the instances,
    #   including target operating systems and source repositories. Applies
    #   to Linux instances only.
    #   @return [Array<Types::PatchSource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetPatchBaselineResult AWS API Documentation
    #
    class GetPatchBaselineResult < Struct.new(
      :baseline_id,
      :name,
      :operating_system,
      :global_filters,
      :approval_rules,
      :approved_patches,
      :approved_patches_compliance_level,
      :approved_patches_enable_non_security,
      :rejected_patches,
      :patch_groups,
      :created_date,
      :modified_date,
      :description,
      :sources)
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
    # @!attribute [rw] association_version
    #   Version information for the association on the instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InstanceAssociation AWS API Documentation
    #
    class InstanceAssociation < Struct.new(
      :association_id,
      :instance_id,
      :content,
      :association_version)
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
    # @!attribute [rw] association_version
    #   The version of the association applied to the instance.
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
    # @!attribute [rw] association_name
    #   The name of the association applied to the instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InstanceAssociationStatusInfo AWS API Documentation
    #
    class InstanceAssociationStatusInfo < Struct.new(
      :association_id,
      :name,
      :document_version,
      :association_version,
      :instance_id,
      :execution_date,
      :status,
      :detailed_status,
      :execution_summary,
      :error_code,
      :output_url,
      :association_name)
      include Aws::Structure
    end

    # Describes a filter for a specific list of instances.
    #
    # @!attribute [rw] instance_id
    #   The instance ID.
    #   @return [String]
    #
    # @!attribute [rw] ping_status
    #   Connection status of SSM Agent.
    #   @return [String]
    #
    # @!attribute [rw] last_ping_date_time
    #   The date and time when agent last pinged Systems Manager service.
    #   @return [Time]
    #
    # @!attribute [rw] agent_version
    #   The version of SSM Agent running on your Linux instance.
    #   @return [String]
    #
    # @!attribute [rw] is_latest_version
    #   Indicates whether latest version of SSM Agent is running on your
    #   instance. Some older versions of Windows Server use the EC2Config
    #   service to process SSM requests. For this reason, this field does
    #   not indicate whether or not the latest version is installed on
    #   Windows managed instances.
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
    #   The Amazon Identity and Access Management (IAM) role assigned to the
    #   on-premises Systems Manager managed instances. This call does not
    #   return the IAM role for Amazon EC2 instances.
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

    # Describes a filter for a specific list of instances. You can filter
    # instances information by using tags. You specify tags by using a
    # key-value mapping.
    #
    # Use this action instead of the
    # DescribeInstanceInformationRequest$InstanceInformationFilterList
    # method. The `InstanceInformationFilterList` method is a legacy method
    # and does not support tags.
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
    #   Placeholder information. This field will always be empty in the
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

    # Specifies the inventory type and attribute for the aggregation
    # execution.
    #
    # @note When making an API call, you may pass InventoryAggregator
    #   data as a hash:
    #
    #       {
    #         expression: "InventoryAggregatorExpression",
    #         aggregators: [
    #           {
    #             expression: "InventoryAggregatorExpression",
    #             aggregators: {
    #               # recursive InventoryAggregatorList
    #             },
    #             groups: [
    #               {
    #                 name: "InventoryGroupName", # required
    #                 filters: [ # required
    #                   {
    #                     key: "InventoryFilterKey", # required
    #                     values: ["InventoryFilterValue"], # required
    #                     type: "Equal", # accepts Equal, NotEqual, BeginWith, LessThan, GreaterThan, Exists
    #                   },
    #                 ],
    #               },
    #             ],
    #           },
    #         ],
    #         groups: [
    #           {
    #             name: "InventoryGroupName", # required
    #             filters: [ # required
    #               {
    #                 key: "InventoryFilterKey", # required
    #                 values: ["InventoryFilterValue"], # required
    #                 type: "Equal", # accepts Equal, NotEqual, BeginWith, LessThan, GreaterThan, Exists
    #               },
    #             ],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] expression
    #   The inventory type and attribute name for aggregation.
    #   @return [String]
    #
    # @!attribute [rw] aggregators
    #   Nested aggregators to further refine aggregation for an inventory
    #   type.
    #   @return [Array<Types::InventoryAggregator>]
    #
    # @!attribute [rw] groups
    #   A user-defined set of one or more filters on which to aggregate
    #   inventory data. Groups return a count of resources that match and
    #   don't match the specified criteria.
    #   @return [Array<Types::InventoryGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InventoryAggregator AWS API Documentation
    #
    class InventoryAggregator < Struct.new(
      :expression,
      :aggregators,
      :groups)
      include Aws::Structure
    end

    # Status information returned by the `DeleteInventory` action.
    #
    # @!attribute [rw] deletion_id
    #   The deletion ID returned by the `DeleteInventory` action.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The name of the inventory data type.
    #   @return [String]
    #
    # @!attribute [rw] deletion_start_time
    #   The UTC timestamp when the delete operation started.
    #   @return [Time]
    #
    # @!attribute [rw] last_status
    #   The status of the operation. Possible values are InProgress and
    #   Complete.
    #   @return [String]
    #
    # @!attribute [rw] last_status_message
    #   Information about the status.
    #   @return [String]
    #
    # @!attribute [rw] deletion_summary
    #   Information about the delete operation. For more information about
    #   this summary, see [Understanding the Delete Inventory Summary][1] in
    #   the *AWS Systems Manager User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-inventory-delete.html#sysman-inventory-delete-summary
    #   @return [Types::InventoryDeletionSummary]
    #
    # @!attribute [rw] last_status_update_time
    #   The UTC timestamp of when the last status report.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InventoryDeletionStatusItem AWS API Documentation
    #
    class InventoryDeletionStatusItem < Struct.new(
      :deletion_id,
      :type_name,
      :deletion_start_time,
      :last_status,
      :last_status_message,
      :deletion_summary,
      :last_status_update_time)
      include Aws::Structure
    end

    # Information about the delete operation.
    #
    # @!attribute [rw] total_count
    #   The total number of items to delete. This count does not change
    #   during the delete operation.
    #   @return [Integer]
    #
    # @!attribute [rw] remaining_count
    #   Remaining number of items to delete.
    #   @return [Integer]
    #
    # @!attribute [rw] summary_items
    #   A list of counts and versions for deleted items.
    #   @return [Array<Types::InventoryDeletionSummaryItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InventoryDeletionSummary AWS API Documentation
    #
    class InventoryDeletionSummary < Struct.new(
      :total_count,
      :remaining_count,
      :summary_items)
      include Aws::Structure
    end

    # Either a count, remaining count, or a version number in a delete
    # inventory summary.
    #
    # @!attribute [rw] version
    #   The inventory type version.
    #   @return [String]
    #
    # @!attribute [rw] count
    #   A count of the number of deleted items.
    #   @return [Integer]
    #
    # @!attribute [rw] remaining_count
    #   The remaining number of items to delete.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InventoryDeletionSummaryItem AWS API Documentation
    #
    class InventoryDeletionSummaryItem < Struct.new(
      :version,
      :count,
      :remaining_count)
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
    #         type: "Equal", # accepts Equal, NotEqual, BeginWith, LessThan, GreaterThan, Exists
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

    # A user-defined set of one or more filters on which to aggregate
    # inventory data. Groups return a count of resources that match and
    # don't match the specified criteria.
    #
    # @note When making an API call, you may pass InventoryGroup
    #   data as a hash:
    #
    #       {
    #         name: "InventoryGroupName", # required
    #         filters: [ # required
    #           {
    #             key: "InventoryFilterKey", # required
    #             values: ["InventoryFilterValue"], # required
    #             type: "Equal", # accepts Equal, NotEqual, BeginWith, LessThan, GreaterThan, Exists
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   The name of the group.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters define the criteria for the group. The `matchingCount` field
    #   displays the number of resources that match the criteria. The
    #   `notMatchingCount` field displays the number of resources that
    #   don't match the criteria.
    #   @return [Array<Types::InventoryFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InventoryGroup AWS API Documentation
    #
    class InventoryGroup < Struct.new(
      :name,
      :filters)
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
    #         context: {
    #           "AttributeName" => "AttributeValue",
    #         },
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
    # @!attribute [rw] context
    #   A map of associated properties for a specified inventory type. For
    #   example, with this attribute, you can specify the `ExecutionId`,
    #   `ExecutionType`, `ComplianceType` properties of the
    #   `AWS:ComplianceItem` type.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InventoryItem AWS API Documentation
    #
    class InventoryItem < Struct.new(
      :type_name,
      :schema_version,
      :capture_time,
      :content_hash,
      :content,
      :context)
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
    # @!attribute [rw] display_name
    #   The alias name of the inventory type. The alias name is used for
    #   display purposes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InventoryItemSchema AWS API Documentation
    #
    class InventoryItemSchema < Struct.new(
      :type_name,
      :version,
      :attributes,
      :display_name)
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
    #   The data section in the inventory result entity JSON.
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

    # @note When making an API call, you may pass LabelParameterVersionRequest
    #   data as a hash:
    #
    #       {
    #         name: "PSParameterName", # required
    #         parameter_version: 1,
    #         labels: ["ParameterLabel"], # required
    #       }
    #
    # @!attribute [rw] name
    #   The parameter name on which you want to attach one or more labels.
    #   @return [String]
    #
    # @!attribute [rw] parameter_version
    #   The specific version of the parameter on which you want to attach
    #   one or more labels. If no version is specified, the system attaches
    #   the label to the latest version.)
    #   @return [Integer]
    #
    # @!attribute [rw] labels
    #   One or more labels to attach to the specified parameter version.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/LabelParameterVersionRequest AWS API Documentation
    #
    class LabelParameterVersionRequest < Struct.new(
      :name,
      :parameter_version,
      :labels)
      include Aws::Structure
    end

    # @!attribute [rw] invalid_labels
    #   The label does not meet the requirements. For information about
    #   parameter label requirements, see [Labeling Parameters][1] in the
    #   *AWS Systems Manager User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-paramstore-labels.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/LabelParameterVersionResult AWS API Documentation
    #
    class LabelParameterVersionResult < Struct.new(
      :invalid_labels)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAssociationVersionsRequest
    #   data as a hash:
    #
    #       {
    #         association_id: "AssociationId", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] association_id
    #   The association ID for which you want to view all versions.
    #   @return [String]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListAssociationVersionsRequest AWS API Documentation
    #
    class ListAssociationVersionsRequest < Struct.new(
      :association_id,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] association_versions
    #   Information about all versions of the association for the specified
    #   association ID.
    #   @return [Array<Types::AssociationVersionInfo>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. Use this token to get
    #   the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListAssociationVersionsResult AWS API Documentation
    #
    class ListAssociationVersionsResult < Struct.new(
      :association_versions,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAssociationsRequest
    #   data as a hash:
    #
    #       {
    #         association_filter_list: [
    #           {
    #             key: "InstanceId", # required, accepts InstanceId, Name, AssociationId, AssociationStatusName, LastExecutedBefore, LastExecutedAfter, AssociationName
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
    #             key: "InvokedAfter", # required, accepts InvokedAfter, InvokedBefore, Status, ExecutionStage, DocumentName
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
    #             key: "InvokedAfter", # required, accepts InvokedAfter, InvokedBefore, Status, ExecutionStage, DocumentName
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

    # @note When making an API call, you may pass ListComplianceItemsRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             key: "ComplianceStringFilterKey",
    #             values: ["ComplianceFilterValue"],
    #             type: "EQUAL", # accepts EQUAL, NOT_EQUAL, BEGIN_WITH, LESS_THAN, GREATER_THAN
    #           },
    #         ],
    #         resource_ids: ["ComplianceResourceId"],
    #         resource_types: ["ComplianceResourceType"],
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] filters
    #   One or more compliance filters. Use a filter to return a more
    #   specific list of results.
    #   @return [Array<Types::ComplianceStringFilter>]
    #
    # @!attribute [rw] resource_ids
    #   The ID for the resources from which to get compliance information.
    #   Currently, you can only specify one resource ID.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_types
    #   The type of resource from which to get compliance information.
    #   Currently, the only supported resource type is `ManagedInstance`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListComplianceItemsRequest AWS API Documentation
    #
    class ListComplianceItemsRequest < Struct.new(
      :filters,
      :resource_ids,
      :resource_types,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] compliance_items
    #   A list of compliance information for the specified resource ID.
    #   @return [Array<Types::ComplianceItem>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. Use this token to get
    #   the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListComplianceItemsResult AWS API Documentation
    #
    class ListComplianceItemsResult < Struct.new(
      :compliance_items,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListComplianceSummariesRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             key: "ComplianceStringFilterKey",
    #             values: ["ComplianceFilterValue"],
    #             type: "EQUAL", # accepts EQUAL, NOT_EQUAL, BEGIN_WITH, LESS_THAN, GREATER_THAN
    #           },
    #         ],
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] filters
    #   One or more compliance or inventory filters. Use a filter to return
    #   a more specific list of results.
    #   @return [Array<Types::ComplianceStringFilter>]
    #
    # @!attribute [rw] next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return for this call. Currently, you
    #   can specify null or 50. The call also returns a token that you can
    #   specify in a subsequent call to get the next set of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListComplianceSummariesRequest AWS API Documentation
    #
    class ListComplianceSummariesRequest < Struct.new(
      :filters,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] compliance_summary_items
    #   A list of compliant and non-compliant summary counts based on
    #   compliance types. For example, this call returns State Manager
    #   associations, patches, or custom compliance types according to the
    #   filter criteria that you specified.
    #   @return [Array<Types::ComplianceSummaryItem>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. Use this token to get
    #   the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListComplianceSummariesResult AWS API Documentation
    #
    class ListComplianceSummariesResult < Struct.new(
      :compliance_summary_items,
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
    #         filters: [
    #           {
    #             key: "DocumentKeyValuesFilterKey",
    #             values: ["DocumentKeyValuesFilterValue"],
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
    # @!attribute [rw] filters
    #   One or more filters. Use a filter to return a more specific list of
    #   results.
    #   @return [Array<Types::DocumentKeyValuesFilter>]
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
      :filters,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] document_identifiers
    #   The names of the Systems Manager documents.
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
    #             type: "Equal", # accepts Equal, NotEqual, BeginWith, LessThan, GreaterThan, Exists
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

    # @note When making an API call, you may pass ListResourceComplianceSummariesRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             key: "ComplianceStringFilterKey",
    #             values: ["ComplianceFilterValue"],
    #             type: "EQUAL", # accepts EQUAL, NOT_EQUAL, BEGIN_WITH, LESS_THAN, GREATER_THAN
    #           },
    #         ],
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] filters
    #   One or more filters. Use a filter to return a more specific list of
    #   results.
    #   @return [Array<Types::ComplianceStringFilter>]
    #
    # @!attribute [rw] next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListResourceComplianceSummariesRequest AWS API Documentation
    #
    class ListResourceComplianceSummariesRequest < Struct.new(
      :filters,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] resource_compliance_summary_items
    #   A summary count for specified or targeted managed instances. Summary
    #   count includes information about compliant and non-compliant State
    #   Manager associations, patch status, or custom items according to the
    #   filter criteria that you specify.
    #   @return [Array<Types::ResourceComplianceSummaryItem>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. Use this token to get
    #   the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListResourceComplianceSummariesResult AWS API Documentation
    #
    class ListResourceComplianceSummariesResult < Struct.new(
      :resource_compliance_summary_items,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListResourceDataSyncRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListResourceDataSyncRequest AWS API Documentation
    #
    class ListResourceDataSyncRequest < Struct.new(
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] resource_data_sync_items
    #   A list of your current Resource Data Sync configurations and their
    #   statuses.
    #   @return [Array<Types::ResourceDataSyncItem>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. Use this token to get
    #   the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListResourceDataSyncResult AWS API Documentation
    #
    class ListResourceDataSyncResult < Struct.new(
      :resource_data_sync_items,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_type: "Document", # required, accepts Document, ManagedInstance, MaintenanceWindow, Parameter, PatchBaseline
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
    # <note markdown="1"> `LoggingInfo` has been deprecated. To specify an S3 bucket to contain
    # logs, instead use the `OutputS3BucketName` and `OutputS3KeyPrefix`
    # options in the `TaskInvocationParameters` structure. For information
    # about how Systems Manager handles these options for the supported
    # Maintenance Window task types, see
    # MaintenanceWindowTaskInvocationParameters.
    #
    #  </note>
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

    # The parameters for an AUTOMATION task type.
    #
    # @note When making an API call, you may pass MaintenanceWindowAutomationParameters
    #   data as a hash:
    #
    #       {
    #         document_version: "DocumentVersion",
    #         parameters: {
    #           "AutomationParameterKey" => ["AutomationParameterValue"],
    #         },
    #       }
    #
    # @!attribute [rw] document_version
    #   The version of an Automation document to use during task execution.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters for the AUTOMATION task.
    #
    #   For information about specifying and updating task parameters, see
    #   RegisterTaskWithMaintenanceWindow and UpdateMaintenanceWindowTask.
    #
    #   <note markdown="1"> `LoggingInfo` has been deprecated. To specify an S3 bucket to
    #   contain logs, instead use the `OutputS3BucketName` and
    #   `OutputS3KeyPrefix` options in the `TaskInvocationParameters`
    #   structure. For information about how Systems Manager handles these
    #   options for the supported Maintenance Window task types, see
    #   MaintenanceWindowTaskInvocationParameters.
    #
    #    `TaskParameters` has been deprecated. To specify parameters to pass
    #   to a task when it runs, instead use the `Parameters` option in the
    #   `TaskInvocationParameters` structure. For information about how
    #   Systems Manager handles these options for the supported Maintenance
    #   Window task types, see MaintenanceWindowTaskInvocationParameters.
    #
    #    For AUTOMATION task types, Systems Manager ignores any values
    #   specified for these parameters.
    #
    #    </note>
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/MaintenanceWindowAutomationParameters AWS API Documentation
    #
    class MaintenanceWindowAutomationParameters < Struct.new(
      :document_version,
      :parameters)
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
    # @!attribute [rw] task_type
    #   The task type.
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
      :task_type,
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
    # @!attribute [rw] description
    #   A description of the Maintenance Window.
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
      :description,
      :enabled,
      :duration,
      :cutoff)
      include Aws::Structure
    end

    # The parameters for a LAMBDA task type.
    #
    # For information about specifying and updating task parameters, see
    # RegisterTaskWithMaintenanceWindow and UpdateMaintenanceWindowTask.
    #
    # <note markdown="1"> `LoggingInfo` has been deprecated. To specify an S3 bucket to contain
    # logs, instead use the `OutputS3BucketName` and `OutputS3KeyPrefix`
    # options in the `TaskInvocationParameters` structure. For information
    # about how Systems Manager handles these options for the supported
    # Maintenance Window task types, see
    # MaintenanceWindowTaskInvocationParameters.
    #
    #  `TaskParameters` has been deprecated. To specify parameters to pass to
    # a task when it runs, instead use the `Parameters` option in the
    # `TaskInvocationParameters` structure. For information about how
    # Systems Manager handles these options for the supported Maintenance
    # Window task types, see MaintenanceWindowTaskInvocationParameters.
    #
    #  For Lambda tasks, Systems Manager ignores any values specified for
    # TaskParameters and LoggingInfo.
    #
    #  </note>
    #
    # @note When making an API call, you may pass MaintenanceWindowLambdaParameters
    #   data as a hash:
    #
    #       {
    #         client_context: "MaintenanceWindowLambdaClientContext",
    #         qualifier: "MaintenanceWindowLambdaQualifier",
    #         payload: "data",
    #       }
    #
    # @!attribute [rw] client_context
    #   Pass client-specific information to the Lambda function that you are
    #   invoking. You can then process the client information in your Lambda
    #   function as you choose through the context variable.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   (Optional) Specify a Lambda function version or alias name. If you
    #   specify a function version, the action uses the qualified function
    #   ARN to invoke a specific Lambda function. If you specify an alias
    #   name, the action uses the alias ARN to invoke the Lambda function
    #   version to which the alias points.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   JSON to provide to your Lambda function as input.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/MaintenanceWindowLambdaParameters AWS API Documentation
    #
    class MaintenanceWindowLambdaParameters < Struct.new(
      :client_context,
      :qualifier,
      :payload)
      include Aws::Structure
    end

    # The parameters for a RUN\_COMMAND task type.
    #
    # For information about specifying and updating task parameters, see
    # RegisterTaskWithMaintenanceWindow and UpdateMaintenanceWindowTask.
    #
    # <note markdown="1"> `LoggingInfo` has been deprecated. To specify an S3 bucket to contain
    # logs, instead use the `OutputS3BucketName` and `OutputS3KeyPrefix`
    # options in the `TaskInvocationParameters` structure. For information
    # about how Systems Manager handles these options for the supported
    # Maintenance Window task types, see
    # MaintenanceWindowTaskInvocationParameters.
    #
    #  `TaskParameters` has been deprecated. To specify parameters to pass to
    # a task when it runs, instead use the `Parameters` option in the
    # `TaskInvocationParameters` structure. For information about how
    # Systems Manager handles these options for the supported Maintenance
    # Window task types, see MaintenanceWindowTaskInvocationParameters.
    #
    #  For Run Command tasks, Systems Manager uses specified values for
    # `TaskParameters` and `LoggingInfo` only if no values are specified for
    # `TaskInvocationParameters`.
    #
    #  </note>
    #
    # @note When making an API call, you may pass MaintenanceWindowRunCommandParameters
    #   data as a hash:
    #
    #       {
    #         comment: "Comment",
    #         document_hash: "DocumentHash",
    #         document_hash_type: "Sha256", # accepts Sha256, Sha1
    #         notification_config: {
    #           notification_arn: "NotificationArn",
    #           notification_events: ["All"], # accepts All, InProgress, Success, TimedOut, Cancelled, Failed
    #           notification_type: "Command", # accepts Command, Invocation
    #         },
    #         output_s3_bucket_name: "S3BucketName",
    #         output_s3_key_prefix: "S3KeyPrefix",
    #         parameters: {
    #           "ParameterName" => ["ParameterValue"],
    #         },
    #         service_role_arn: "ServiceRole",
    #         timeout_seconds: 1,
    #       }
    #
    # @!attribute [rw] comment
    #   Information about the command(s) to execute.
    #   @return [String]
    #
    # @!attribute [rw] document_hash
    #   The SHA-256 or SHA-1 hash created by the system when the document
    #   was created. SHA-1 hashes have been deprecated.
    #   @return [String]
    #
    # @!attribute [rw] document_hash_type
    #   SHA-256 or SHA-1. SHA-1 hashes have been deprecated.
    #   @return [String]
    #
    # @!attribute [rw] notification_config
    #   Configurations for sending notifications about command status
    #   changes on a per-instance basis.
    #   @return [Types::NotificationConfig]
    #
    # @!attribute [rw] output_s3_bucket_name
    #   The name of the Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] output_s3_key_prefix
    #   The Amazon S3 bucket subfolder.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters for the RUN\_COMMAND task execution.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] service_role_arn
    #   The IAM service role to assume during task execution.
    #   @return [String]
    #
    # @!attribute [rw] timeout_seconds
    #   If this time is reached and the command has not already started
    #   executing, it doesn not execute.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/MaintenanceWindowRunCommandParameters AWS API Documentation
    #
    class MaintenanceWindowRunCommandParameters < Struct.new(
      :comment,
      :document_hash,
      :document_hash_type,
      :notification_config,
      :output_s3_bucket_name,
      :output_s3_key_prefix,
      :parameters,
      :service_role_arn,
      :timeout_seconds)
      include Aws::Structure
    end

    # The parameters for a STEP\_FUNCTION task.
    #
    # For information about specifying and updating task parameters, see
    # RegisterTaskWithMaintenanceWindow and UpdateMaintenanceWindowTask.
    #
    # <note markdown="1"> `LoggingInfo` has been deprecated. To specify an S3 bucket to contain
    # logs, instead use the `OutputS3BucketName` and `OutputS3KeyPrefix`
    # options in the `TaskInvocationParameters` structure. For information
    # about how Systems Manager handles these options for the supported
    # Maintenance Window task types, see
    # MaintenanceWindowTaskInvocationParameters.
    #
    #  `TaskParameters` has been deprecated. To specify parameters to pass to
    # a task when it runs, instead use the `Parameters` option in the
    # `TaskInvocationParameters` structure. For information about how
    # Systems Manager handles these options for the supported Maintenance
    # Window task types, see MaintenanceWindowTaskInvocationParameters.
    #
    #  For Step Functions tasks, Systems Manager ignores any values specified
    # for `TaskParameters` and `LoggingInfo`.
    #
    #  </note>
    #
    # @note When making an API call, you may pass MaintenanceWindowStepFunctionsParameters
    #   data as a hash:
    #
    #       {
    #         input: "MaintenanceWindowStepFunctionsInput",
    #         name: "MaintenanceWindowStepFunctionsName",
    #       }
    #
    # @!attribute [rw] input
    #   The inputs for the STEP\_FUNCTION task.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the STEP\_FUNCTION task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/MaintenanceWindowStepFunctionsParameters AWS API Documentation
    #
    class MaintenanceWindowStepFunctionsParameters < Struct.new(
      :input,
      :name)
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
    # @!attribute [rw] name
    #   The target name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/MaintenanceWindowTarget AWS API Documentation
    #
    class MaintenanceWindowTarget < Struct.new(
      :window_id,
      :window_target_id,
      :resource_type,
      :targets,
      :owner_information,
      :name,
      :description)
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
    #   The resource that the task uses during execution. For RUN\_COMMAND
    #   and AUTOMATION task types, `TaskArn` is the Systems Manager document
    #   name or ARN. For LAMBDA tasks, it's the function name or ARN. For
    #   STEP\_FUNCTION tasks, it's the state machine ARN.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of task. The type can be one of the following:
    #   RUN\_COMMAND, AUTOMATION, LAMBDA, or STEP\_FUNCTION.
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
    #
    #   <note markdown="1"> `TaskParameters` has been deprecated. To specify parameters to pass
    #   to a task when it runs, instead use the `Parameters` option in the
    #   `TaskInvocationParameters` structure. For information about how
    #   Systems Manager handles these options for the supported Maintenance
    #   Window task types, see MaintenanceWindowTaskInvocationParameters.
    #
    #    </note>
    #   @return [Hash<String,Types::MaintenanceWindowTaskParameterValueExpression>]
    #
    # @!attribute [rw] priority
    #   The priority of the task in the Maintenance Window. The lower the
    #   number, the higher the priority. Tasks that have the same priority
    #   are scheduled in parallel.
    #   @return [Integer]
    #
    # @!attribute [rw] logging_info
    #   Information about an Amazon S3 bucket to write task-level logs to.
    #
    #   <note markdown="1"> `LoggingInfo` has been deprecated. To specify an S3 bucket to
    #   contain logs, instead use the `OutputS3BucketName` and
    #   `OutputS3KeyPrefix` options in the `TaskInvocationParameters`
    #   structure. For information about how Systems Manager handles these
    #   options for the supported Maintenance Window task types, see
    #   MaintenanceWindowTaskInvocationParameters.
    #
    #    </note>
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
    # @!attribute [rw] name
    #   The task name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the task.
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
      :max_errors,
      :name,
      :description)
      include Aws::Structure
    end

    # The parameters for task execution.
    #
    # @note When making an API call, you may pass MaintenanceWindowTaskInvocationParameters
    #   data as a hash:
    #
    #       {
    #         run_command: {
    #           comment: "Comment",
    #           document_hash: "DocumentHash",
    #           document_hash_type: "Sha256", # accepts Sha256, Sha1
    #           notification_config: {
    #             notification_arn: "NotificationArn",
    #             notification_events: ["All"], # accepts All, InProgress, Success, TimedOut, Cancelled, Failed
    #             notification_type: "Command", # accepts Command, Invocation
    #           },
    #           output_s3_bucket_name: "S3BucketName",
    #           output_s3_key_prefix: "S3KeyPrefix",
    #           parameters: {
    #             "ParameterName" => ["ParameterValue"],
    #           },
    #           service_role_arn: "ServiceRole",
    #           timeout_seconds: 1,
    #         },
    #         automation: {
    #           document_version: "DocumentVersion",
    #           parameters: {
    #             "AutomationParameterKey" => ["AutomationParameterValue"],
    #           },
    #         },
    #         step_functions: {
    #           input: "MaintenanceWindowStepFunctionsInput",
    #           name: "MaintenanceWindowStepFunctionsName",
    #         },
    #         lambda: {
    #           client_context: "MaintenanceWindowLambdaClientContext",
    #           qualifier: "MaintenanceWindowLambdaQualifier",
    #           payload: "data",
    #         },
    #       }
    #
    # @!attribute [rw] run_command
    #   The parameters for a RUN\_COMMAND task type.
    #   @return [Types::MaintenanceWindowRunCommandParameters]
    #
    # @!attribute [rw] automation
    #   The parameters for an AUTOMATION task type.
    #   @return [Types::MaintenanceWindowAutomationParameters]
    #
    # @!attribute [rw] step_functions
    #   The parameters for a STEP\_FUNCTION task type.
    #   @return [Types::MaintenanceWindowStepFunctionsParameters]
    #
    # @!attribute [rw] lambda
    #   The parameters for a LAMBDA task type.
    #   @return [Types::MaintenanceWindowLambdaParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/MaintenanceWindowTaskInvocationParameters AWS API Documentation
    #
    class MaintenanceWindowTaskInvocationParameters < Struct.new(
      :run_command,
      :automation,
      :step_functions,
      :lambda)
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

    # A summary of resources that are not compliant. The summary is
    # organized according to resource type.
    #
    # @!attribute [rw] non_compliant_count
    #   The total number of compliance items that are not compliant.
    #   @return [Integer]
    #
    # @!attribute [rw] severity_summary
    #   A summary of the non-compliance severity by compliance type
    #   @return [Types::SeveritySummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/NonCompliantSummary AWS API Documentation
    #
    class NonCompliantSummary < Struct.new(
      :non_compliant_count,
      :severity_summary)
      include Aws::Structure
    end

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
    #   [Configuring Amazon SNS Notifications for Run Command][1] in the
    #   *AWS Systems Manager User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/rc-sns-notifications.html
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

    # Information about the source where the association execution details
    # are stored.
    #
    # @!attribute [rw] output_source_id
    #   The ID of the output source, for example the URL of an Amazon S3
    #   bucket.
    #   @return [String]
    #
    # @!attribute [rw] output_source_type
    #   The type of source where the association execution details are
    #   stored, for example, Amazon S3.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/OutputSource AWS API Documentation
    #
    class OutputSource < Struct.new(
      :output_source_id,
      :output_source_type)
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
    # @!attribute [rw] version
    #   The parameter version.
    #   @return [Integer]
    #
    # @!attribute [rw] selector
    #   Either the version number or the label used to retrieve the
    #   parameter value. Specify selectors by using one of the following
    #   formats:
    #
    #   parameter\_name:version
    #
    #   parameter\_name:label
    #   @return [String]
    #
    # @!attribute [rw] source_result
    #   Applies to parameters that reference information in other AWS
    #   services. SourceResult is the raw result or response from the
    #   source.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   Date the parameter was last changed or updated and the parameter
    #   version was created.
    #   @return [Time]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/Parameter AWS API Documentation
    #
    class Parameter < Struct.new(
      :name,
      :type,
      :value,
      :version,
      :selector,
      :source_result,
      :last_modified_date,
      :arn)
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
    # @!attribute [rw] version
    #   The parameter version.
    #   @return [Integer]
    #
    # @!attribute [rw] labels
    #   Labels assigned to the parameter version.
    #   @return [Array<String>]
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
      :allowed_pattern,
      :version,
      :labels)
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
    # @!attribute [rw] version
    #   The parameter version.
    #   @return [Integer]
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
      :allowed_pattern,
      :version)
      include Aws::Structure
    end

    # One or more filters. Use a filter to return a more specific list of
    # results.
    #
    # <note markdown="1"> The `Name` field can't be used with the GetParametersByPath API
    # action.
    #
    #  </note>
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

    # This data type is deprecated. Instead, use ParameterStringFilter.
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
    # @!attribute [rw] operating_system
    #   Defines the operating system the patch baseline applies to. The
    #   Default value is WINDOWS.
    #   @return [String]
    #
    # @!attribute [rw] baseline_description
    #   The description of the patch baseline.
    #   @return [String]
    #
    # @!attribute [rw] default_baseline
    #   Whether this is the default baseline. Note that Systems Manager
    #   supports creating multiple default patch baselines. For example, you
    #   can create a default patch baseline for each operating system.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/PatchBaselineIdentity AWS API Documentation
    #
    class PatchBaselineIdentity < Struct.new(
      :baseline_id,
      :baseline_name,
      :operating_system,
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
    #   The operating system-specific ID of the patch.
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
    #   The date/time the patch was installed on the instance. Note that not
    #   all operating systems provide this level of information.
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
    # A patch filter consists of key/value pairs, but not all keys are valid
    # for all operating system types. For example, the key `PRODUCT` is
    # valid for all supported operating system types. The key
    # `MSRC_SEVERITY`, however, is valid only for Windows operating systems,
    # and the key `SECTION` is valid only for Ubuntu operating systems.
    #
    # Refer to the following sections for information about which keys may
    # be used with each major operating system, and which values are valid
    # for each key.
    #
    # **Windows Operating Systems**
    #
    # The supported keys for Windows operating systems are `PRODUCT`,
    # `CLASSIFICATION`, and `MSRC_SEVERITY`. See the following lists for
    # valid values for each of these keys.
    #
    # *Supported key:* `PRODUCT`
    #
    # *Supported values:*
    #
    # * `Windows7`
    #
    # * `Windows8`
    #
    # * `Windows8.1`
    #
    # * `Windows8Embedded`
    #
    # * `Windows10`
    #
    # * `Windows10LTSB`
    #
    # * `WindowsServer2008`
    #
    # * `WindowsServer2008R2`
    #
    # * `WindowsServer2012`
    #
    # * `WindowsServer2012R2`
    #
    # * `WindowsServer2016`
    #
    # * `*`
    #
    #   *Use a wildcard character (*) to target all supported operating
    #   system versions.*
    #
    # *Supported key:* `CLASSIFICATION`
    #
    # *Supported values:*
    #
    # * `CriticalUpdates`
    #
    # * `DefinitionUpdates`
    #
    # * `Drivers`
    #
    # * `FeaturePacks`
    #
    # * `SecurityUpdates`
    #
    # * `ServicePacks`
    #
    # * `Tools`
    #
    # * `UpdateRollups`
    #
    # * `Updates`
    #
    # * `Upgrades`
    #
    # *Supported key:* `MSRC_SEVERITY`
    #
    # *Supported values:*
    #
    # * `Critical`
    #
    # * `Important`
    #
    # * `Moderate`
    #
    # * `Low`
    #
    # * `Unspecified`
    #
    # **Ubuntu Operating Systems**
    #
    # The supported keys for Ubuntu operating systems are `PRODUCT`,
    # `PRIORITY`, and `SECTION`. See the following lists for valid values
    # for each of these keys.
    #
    # *Supported key:* `PRODUCT`
    #
    # *Supported values:*
    #
    # * `Ubuntu14.04`
    #
    # * `Ubuntu16.04`
    #
    # * `*`
    #
    #   *Use a wildcard character (*) to target all supported operating
    #   system versions.*
    #
    # *Supported key:* `PRIORITY`
    #
    # *Supported values:*
    #
    # * `Required`
    #
    # * `Important`
    #
    # * `Standard`
    #
    # * `Optional`
    #
    # * `Extra`
    #
    # *Supported key:* `SECTION`
    #
    # Only the length of the key value is validated. Minimum length is 1.
    # Maximum length is 64.
    #
    # **Amazon Linux Operating Systems**
    #
    # The supported keys for Amazon Linux operating systems are `PRODUCT`,
    # `CLASSIFICATION`, and `SEVERITY`. See the following lists for valid
    # values for each of these keys.
    #
    # *Supported key:* `PRODUCT`
    #
    # *Supported values:*
    #
    # * `AmazonLinux2012.03`
    #
    # * `AmazonLinux2012.09`
    #
    # * `AmazonLinux2013.03`
    #
    # * `AmazonLinux2013.09`
    #
    # * `AmazonLinux2014.03`
    #
    # * `AmazonLinux2014.09`
    #
    # * `AmazonLinux2015.03`
    #
    # * `AmazonLinux2015.09`
    #
    # * `AmazonLinux2016.03`
    #
    # * `AmazonLinux2016.09`
    #
    # * `AmazonLinux2017.03`
    #
    # * `AmazonLinux2017.09`
    #
    # * `*`
    #
    #   *Use a wildcard character (*) to target all supported operating
    #   system versions.*
    #
    # *Supported key:* `CLASSIFICATION`
    #
    # *Supported values:*
    #
    # * `Security`
    #
    # * `Bugfix`
    #
    # * `Enhancement`
    #
    # * `Recommended`
    #
    # * `Newpackage`
    #
    # *Supported key:* `SEVERITY`
    #
    # *Supported values:*
    #
    # * `Critical`
    #
    # * `Important`
    #
    # * `Medium`
    #
    # * `Low`
    #
    # **Amazon Linux 2 Operating Systems**
    #
    # The supported keys for Amazon Linux 2 operating systems are `PRODUCT`,
    # `CLASSIFICATION`, and `SEVERITY`. See the following lists for valid
    # values for each of these keys.
    #
    # *Supported key:* `PRODUCT`
    #
    # *Supported values:*
    #
    # * `AmazonLinux2`
    #
    # * `AmazonLinux2.0`
    #
    # * `*`
    #
    #   *Use a wildcard character (*) to target all supported operating
    #   system versions.*
    #
    # *Supported key:* `CLASSIFICATION`
    #
    # *Supported values:*
    #
    # * `Security`
    #
    # * `Bugfix`
    #
    # * `Enhancement`
    #
    # * `Recommended`
    #
    # * `Newpackage`
    #
    # *Supported key:* `SEVERITY`
    #
    # *Supported values:*
    #
    # * `Critical`
    #
    # * `Important`
    #
    # * `Medium`
    #
    # * `Low`
    #
    # **RedHat Enterprise Linux (RHEL) Operating Systems**
    #
    # The supported keys for RedHat Enterprise Linux operating systems are
    # `PRODUCT`, `CLASSIFICATION`, and `SEVERITY`. See the following lists
    # for valid values for each of these keys.
    #
    # *Supported key:* `PRODUCT`
    #
    # *Supported values:*
    #
    # * `RedhatEnterpriseLinux6.5`
    #
    # * `RedhatEnterpriseLinux6.6`
    #
    # * `RedhatEnterpriseLinux6.7`
    #
    # * `RedhatEnterpriseLinux6.8`
    #
    # * `RedhatEnterpriseLinux6.9`
    #
    # * `RedhatEnterpriseLinux7.0`
    #
    # * `RedhatEnterpriseLinux7.1`
    #
    # * `RedhatEnterpriseLinux7.2`
    #
    # * `RedhatEnterpriseLinux7.3`
    #
    # * `RedhatEnterpriseLinux7.4`
    #
    # * `*`
    #
    #   *Use a wildcard character (*) to target all supported operating
    #   system versions.*
    #
    # *Supported key:* `CLASSIFICATION`
    #
    # *Supported values:*
    #
    # * `Security`
    #
    # * `Bugfix`
    #
    # * `Enhancement`
    #
    # * `Recommended`
    #
    # * `Newpackage`
    #
    # *Supported key:* `SEVERITY`
    #
    # *Supported values:*
    #
    # * `Critical`
    #
    # * `Important`
    #
    # * `Medium`
    #
    # * `Low`
    #
    # **SUSE Linux Enterprise Server (SLES) Operating Systems**
    #
    # The supported keys for SLES operating systems are `PRODUCT`,
    # `CLASSIFICATION`, and `SEVERITY`. See the following lists for valid
    # values for each of these keys.
    #
    # *Supported key:* `PRODUCT`
    #
    # *Supported values:*
    #
    # * `Suse12.0`
    #
    # * `Suse12.1`
    #
    # * `Suse12.2`
    #
    # * `Suse12.3`
    #
    # * `Suse12.4`
    #
    # * `Suse12.5`
    #
    # * `Suse12.6`
    #
    # * `Suse12.7`
    #
    # * `Suse12.8`
    #
    # * `Suse12.9`
    #
    # * `*`
    #
    #   *Use a wildcard character (*) to target all supported operating
    #   system versions.*
    #
    # *Supported key:* `CLASSIFICATION`
    #
    # *Supported values:*
    #
    # * `Security`
    #
    # * `Recommended`
    #
    # * `Optional`
    #
    # * `Feature`
    #
    # * `Document`
    #
    # * `Yast`
    #
    # *Supported key:* `SEVERITY`
    #
    # *Supported values:*
    #
    # * `Critical`
    #
    # * `Important`
    #
    # * `Moderate`
    #
    # * `Low`
    #
    # **CentOS Operating Systems**
    #
    # The supported keys for CentOS operating systems are `PRODUCT`,
    # `CLASSIFICATION`, and `SEVERITY`. See the following lists for valid
    # values for each of these keys.
    #
    # *Supported key:* `PRODUCT`
    #
    # *Supported values:*
    #
    # * `CentOS6.5`
    #
    # * `CentOS6.6`
    #
    # * `CentOS6.7`
    #
    # * `CentOS6.8`
    #
    # * `CentOS6.9`
    #
    # * `CentOS7.0`
    #
    # * `CentOS7.1`
    #
    # * `CentOS7.2`
    #
    # * `CentOS7.3`
    #
    # * `CentOS7.4`
    #
    # * `*`
    #
    #   *Use a wildcard character (*) to target all supported operating
    #   system versions.*
    #
    # *Supported key:* `CLASSIFICATION`
    #
    # *Supported values:*
    #
    # * `Security`
    #
    # * `Bugfix`
    #
    # * `Enhancement`
    #
    # * `Recommended`
    #
    # * `Newpackage`
    #
    # *Supported key:* `SEVERITY`
    #
    # *Supported values:*
    #
    # * `Critical`
    #
    # * `Important`
    #
    # * `Medium`
    #
    # * `Low`
    #
    # @note When making an API call, you may pass PatchFilter
    #   data as a hash:
    #
    #       {
    #         key: "PRODUCT", # required, accepts PRODUCT, CLASSIFICATION, MSRC_SEVERITY, PATCH_ID, SECTION, PRIORITY, SEVERITY
    #         values: ["PatchFilterValue"], # required
    #       }
    #
    # @!attribute [rw] key
    #   The key for the filter.
    #
    #   See PatchFilter for lists of valid keys for each operating system
    #   type.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The value for the filter key.
    #
    #   See PatchFilter for lists of valid values for each key based on
    #   operating system type.
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
    #             key: "PRODUCT", # required, accepts PRODUCT, CLASSIFICATION, MSRC_SEVERITY, PATCH_ID, SECTION, PRIORITY, SEVERITY
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
    #               key: "PRODUCT", # required, accepts PRODUCT, CLASSIFICATION, MSRC_SEVERITY, PATCH_ID, SECTION, PRIORITY, SEVERITY
    #               values: ["PatchFilterValue"], # required
    #             },
    #           ],
    #         },
    #         compliance_level: "CRITICAL", # accepts CRITICAL, HIGH, MEDIUM, LOW, INFORMATIONAL, UNSPECIFIED
    #         approve_after_days: 1, # required
    #         enable_non_security: false,
    #       }
    #
    # @!attribute [rw] patch_filter_group
    #   The patch filter group that defines the criteria for the rule.
    #   @return [Types::PatchFilterGroup]
    #
    # @!attribute [rw] compliance_level
    #   A compliance severity level for all approved patches in a patch
    #   baseline. Valid compliance severity levels include the following:
    #   Unspecified, Critical, High, Medium, Low, and Informational.
    #   @return [String]
    #
    # @!attribute [rw] approve_after_days
    #   The number of days after the release date of each patch matched by
    #   the rule that the patch is marked as approved in the patch baseline.
    #   For example, a value of `7` means that patches are approved seven
    #   days after they are released.
    #   @return [Integer]
    #
    # @!attribute [rw] enable_non_security
    #   For instances identified by the approval rule filters, enables a
    #   patch baseline to apply non-security updates available in the
    #   specified repository. The default value is 'false'. Applies to
    #   Linux instances only.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/PatchRule AWS API Documentation
    #
    class PatchRule < Struct.new(
      :patch_filter_group,
      :compliance_level,
      :approve_after_days,
      :enable_non_security)
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
    #                   key: "PRODUCT", # required, accepts PRODUCT, CLASSIFICATION, MSRC_SEVERITY, PATCH_ID, SECTION, PRIORITY, SEVERITY
    #                   values: ["PatchFilterValue"], # required
    #                 },
    #               ],
    #             },
    #             compliance_level: "CRITICAL", # accepts CRITICAL, HIGH, MEDIUM, LOW, INFORMATIONAL, UNSPECIFIED
    #             approve_after_days: 1, # required
    #             enable_non_security: false,
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

    # Information about the patches to use to update the instances,
    # including target operating systems and source repository. Applies to
    # Linux instances only.
    #
    # @note When making an API call, you may pass PatchSource
    #   data as a hash:
    #
    #       {
    #         name: "PatchSourceName", # required
    #         products: ["PatchSourceProduct"], # required
    #         configuration: "PatchSourceConfiguration", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name specified to identify the patch source.
    #   @return [String]
    #
    # @!attribute [rw] products
    #   The specific operating system versions a patch repository applies
    #   to, such as "Ubuntu16.04", "AmazonLinux2016.09",
    #   "RedhatEnterpriseLinux7.2" or "Suse12.7". For lists of supported
    #   product values, see PatchFilter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] configuration
    #   The value of the yum repo configuration. For example:
    #
    #   `cachedir=/var/cache/yum/$basesearch`
    #
    #   `$releasever`
    #
    #   `keepcache=0`
    #
    #   `debuglevel=2`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/PatchSource AWS API Documentation
    #
    class PatchSource < Struct.new(
      :name,
      :products,
      :configuration)
      include Aws::Structure
    end

    # Information about the approval status of a patch.
    #
    # @!attribute [rw] deployment_status
    #   The approval status of a patch (APPROVED, PENDING\_APPROVAL,
    #   EXPLICIT\_APPROVED, EXPLICIT\_REJECTED).
    #   @return [String]
    #
    # @!attribute [rw] compliance_level
    #   The compliance severity level for a patch.
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
      :compliance_level,
      :approval_date)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutComplianceItemsRequest
    #   data as a hash:
    #
    #       {
    #         resource_id: "ComplianceResourceId", # required
    #         resource_type: "ComplianceResourceType", # required
    #         compliance_type: "ComplianceTypeName", # required
    #         execution_summary: { # required
    #           execution_time: Time.now, # required
    #           execution_id: "ComplianceExecutionId",
    #           execution_type: "ComplianceExecutionType",
    #         },
    #         items: [ # required
    #           {
    #             id: "ComplianceItemId",
    #             title: "ComplianceItemTitle",
    #             severity: "CRITICAL", # required, accepts CRITICAL, HIGH, MEDIUM, LOW, INFORMATIONAL, UNSPECIFIED
    #             status: "COMPLIANT", # required, accepts COMPLIANT, NON_COMPLIANT
    #             details: {
    #               "AttributeName" => "AttributeValue",
    #             },
    #           },
    #         ],
    #         item_content_hash: "ComplianceItemContentHash",
    #       }
    #
    # @!attribute [rw] resource_id
    #   Specify an ID for this resource. For a managed instance, this is the
    #   instance ID.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Specify the type of resource. `ManagedInstance` is currently the
    #   only supported resource type.
    #   @return [String]
    #
    # @!attribute [rw] compliance_type
    #   Specify the compliance type. For example, specify Association (for a
    #   State Manager association), Patch, or Custom:`string`.
    #   @return [String]
    #
    # @!attribute [rw] execution_summary
    #   A summary of the call execution that includes an execution ID, the
    #   type of execution (for example, `Command`), and the date/time of the
    #   execution using a datetime object that is saved in the following
    #   format: yyyy-MM-dd'T'HH:mm:ss'Z'.
    #   @return [Types::ComplianceExecutionSummary]
    #
    # @!attribute [rw] items
    #   Information about the compliance as defined by the resource type.
    #   For example, for a patch compliance type, `Items` includes
    #   information about the PatchSeverity, Classification, etc.
    #   @return [Array<Types::ComplianceItemEntry>]
    #
    # @!attribute [rw] item_content_hash
    #   MD5 or SHA-256 content hash. The content hash is used to determine
    #   if existing information should be overwritten or ignored. If the
    #   content hashes match, the request to put compliance information is
    #   ignored.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/PutComplianceItemsRequest AWS API Documentation
    #
    class PutComplianceItemsRequest < Struct.new(
      :resource_id,
      :resource_type,
      :compliance_type,
      :execution_summary,
      :items,
      :item_content_hash)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/PutComplianceItemsResult AWS API Documentation
    #
    class PutComplianceItemsResult < Aws::EmptyStructure; end

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
    #             context: {
    #               "AttributeName" => "AttributeValue",
    #             },
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

    # @!attribute [rw] message
    #   Information about the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/PutInventoryResult AWS API Documentation
    #
    class PutInventoryResult < Struct.new(
      :message)
      include Aws::Structure
    end

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
    #   The fully qualified name of the parameter that you want to add to
    #   the system. The fully qualified name includes the complete hierarchy
    #   of the parameter path and name. For example:
    #   `/Dev/DBServer/MySQL/db-string13`
    #
    #   Naming Constraints:
    #
    #   * Parameter names are case sensitive.
    #
    #   * A parameter name must be unique within an AWS Region
    #
    #   * A parameter name can't be prefixed with "aws" or "ssm"
    #     (case-insensitive).
    #
    #   * Parameter names can include only the following symbols and
    #     letters: `a-zA-Z0-9_.-/`
    #
    #   * A parameter name can't include spaces.
    #
    #   * Parameter hierarchies are limited to a maximum depth of fifteen
    #     levels.
    #
    #   For additional information about valid values for parameter names,
    #   see [Requirements and Constraints for Parameter Names][1] in the
    #   *AWS Systems Manager User Guide*.
    #
    #   <note markdown="1"> The maximum length constraint listed below includes capacity for
    #   additional system attributes that are not part of the name. The
    #   maximum length for the fully qualified parameter name is 1011
    #   characters.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-parameter-name-constraints.html
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Information about the parameter that you want to add to the system.
    #   Optional but recommended.
    #
    #   Do not enter personally identifiable information in this field.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The parameter value that you want to add to the system.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of parameter that you want to add to the system.
    #
    #   Items in a `StringList` must be separated by a comma (,). You can't
    #   use other punctuation or special character to escape items in the
    #   list. If you have a parameter value that requires a comma, then use
    #   the `String` data type.
    #
    #   <note markdown="1"> `SecureString` is not currently supported for AWS CloudFormation
    #   templates or in the China Regions.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] key_id
    #   The KMS Key ID that you want to use to encrypt a parameter. Either
    #   the default AWS Key Management Service (AWS KMS) key automatically
    #   assigned to your AWS account or a custom key. Required for
    #   parameters that use the `SecureString` data type.
    #
    #   If you don't specify a key ID, the system uses the default key
    #   associated with your AWS account.
    #
    #   * To use your default AWS KMS key, choose the `SecureString` data
    #     type, and do *not* specify the `Key ID` when you create the
    #     parameter. The system automatically populates `Key ID` with your
    #     default KMS key.
    #
    #   * To use a custom KMS key, choose the `SecureString` data type with
    #     the `Key ID` parameter.
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

    # @!attribute [rw] version
    #   The new version number of a parameter. If you edit a parameter
    #   value, Parameter Store automatically creates a new version and
    #   assigns this new version a unique ID. You can reference a parameter
    #   version ID in API actions or in Systems Manager documents (SSM
    #   documents). By default, if you don't specify a specific version,
    #   the system returns the latest parameter value when a parameter is
    #   called.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/PutParameterResult AWS API Documentation
    #
    class PutParameterResult < Struct.new(
      :version)
      include Aws::Structure
    end

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
    #         name: "MaintenanceWindowName",
    #         description: "MaintenanceWindowDescription",
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
    #   The targets (either instances or tags).
    #
    #   Specify instances using the following format:
    #
    #   `Key=InstanceIds,Values=<instance-id-1>,<instance-id-2>`
    #
    #   Specify tags using either of the following formats:
    #
    #   `Key=tag:<tag-key>,Values=<tag-value-1>,<tag-value-2>`
    #
    #   `Key=tag-key,Values=<tag-key-1>,<tag-key-2>`
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] owner_information
    #   User-provided value that will be included in any CloudWatch events
    #   raised while running tasks for these targets in this Maintenance
    #   Window.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   An optional name for the target.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description for the target.
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
      :name,
      :description,
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
    #         service_role_arn: "ServiceRole",
    #         task_type: "RUN_COMMAND", # required, accepts RUN_COMMAND, AUTOMATION, STEP_FUNCTIONS, LAMBDA
    #         task_parameters: {
    #           "MaintenanceWindowTaskParameterName" => {
    #             values: ["MaintenanceWindowTaskParameterValue"],
    #           },
    #         },
    #         task_invocation_parameters: {
    #           run_command: {
    #             comment: "Comment",
    #             document_hash: "DocumentHash",
    #             document_hash_type: "Sha256", # accepts Sha256, Sha1
    #             notification_config: {
    #               notification_arn: "NotificationArn",
    #               notification_events: ["All"], # accepts All, InProgress, Success, TimedOut, Cancelled, Failed
    #               notification_type: "Command", # accepts Command, Invocation
    #             },
    #             output_s3_bucket_name: "S3BucketName",
    #             output_s3_key_prefix: "S3KeyPrefix",
    #             parameters: {
    #               "ParameterName" => ["ParameterValue"],
    #             },
    #             service_role_arn: "ServiceRole",
    #             timeout_seconds: 1,
    #           },
    #           automation: {
    #             document_version: "DocumentVersion",
    #             parameters: {
    #               "AutomationParameterKey" => ["AutomationParameterValue"],
    #             },
    #           },
    #           step_functions: {
    #             input: "MaintenanceWindowStepFunctionsInput",
    #             name: "MaintenanceWindowStepFunctionsName",
    #           },
    #           lambda: {
    #             client_context: "MaintenanceWindowLambdaClientContext",
    #             qualifier: "MaintenanceWindowLambdaQualifier",
    #             payload: "data",
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
    #         name: "MaintenanceWindowName",
    #         description: "MaintenanceWindowDescription",
    #         client_token: "ClientToken",
    #       }
    #
    # @!attribute [rw] window_id
    #   The ID of the Maintenance Window the task should be added to.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The targets (either instances or Maintenance Window targets).
    #
    #   Specify instances using the following format:
    #
    #   `Key=InstanceIds,Values=<instance-id-1>,<instance-id-2>`
    #
    #   Specify Maintenance Window targets using the following format:
    #
    #   `Key=<WindowTargetIds>,Values=<window-target-id-1>,<window-target-id-2>`
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] task_arn
    #   The ARN of the task to execute
    #   @return [String]
    #
    # @!attribute [rw] service_role_arn
    #   The role to assume when running the Maintenance Window task.
    #
    #   If you do not specify a service role ARN, Systems Manager will use
    #   your account's service-linked role for Systems Manager by default.
    #   If no service-linked role for Systems Manager exists in your
    #   account, it will be created when you run
    #   `RegisterTaskWithMaintenanceWindow` without specifying a service
    #   role ARN.
    #
    #   For more information, see [Service-Linked Role Permissions for
    #   Systems Manager][1] and [Should I Use a Service-Linked Role or a
    #   Custom Service Role to Run Maintenance Window Tasks? ][2] in the
    #   *AWS Systems Manager User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/using-service-linked-roles.html#slr-permissions
    #   [2]: http://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-maintenance-permissions.html#maintenance-window-tasks-service-role
    #   @return [String]
    #
    # @!attribute [rw] task_type
    #   The type of task being registered.
    #   @return [String]
    #
    # @!attribute [rw] task_parameters
    #   The parameters that should be passed to the task when it is
    #   executed.
    #
    #   <note markdown="1"> `TaskParameters` has been deprecated. To specify parameters to pass
    #   to a task when it runs, instead use the `Parameters` option in the
    #   `TaskInvocationParameters` structure. For information about how
    #   Systems Manager handles these options for the supported Maintenance
    #   Window task types, see MaintenanceWindowTaskInvocationParameters.
    #
    #    </note>
    #   @return [Hash<String,Types::MaintenanceWindowTaskParameterValueExpression>]
    #
    # @!attribute [rw] task_invocation_parameters
    #   The parameters that the task should use during execution. Populate
    #   only the fields that match the task type. All other fields should be
    #   empty.
    #   @return [Types::MaintenanceWindowTaskInvocationParameters]
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
    #
    #   <note markdown="1"> `LoggingInfo` has been deprecated. To specify an S3 bucket to
    #   contain logs, instead use the `OutputS3BucketName` and
    #   `OutputS3KeyPrefix` options in the `TaskInvocationParameters`
    #   structure. For information about how Systems Manager handles these
    #   options for the supported Maintenance Window task types, see
    #   MaintenanceWindowTaskInvocationParameters.
    #
    #    </note>
    #   @return [Types::LoggingInfo]
    #
    # @!attribute [rw] name
    #   An optional name for the task.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description for the task.
    #   @return [String]
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
      :task_invocation_parameters,
      :priority,
      :max_concurrency,
      :max_errors,
      :logging_info,
      :name,
      :description,
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
    #         resource_type: "Document", # required, accepts Document, ManagedInstance, MaintenanceWindow, Parameter, PatchBaseline
    #         resource_id: "ResourceId", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_type
    #   The type of resource of which you want to remove a tag.
    #
    #   <note markdown="1"> The ManagedInstance type for this API action is only for on-premises
    #   managed instances. You must specify the the name of the managed
    #   instance in the following format: mi-ID\_number. For example,
    #   mi-1a2b3c4d5e6f.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The resource ID for which you want to remove tags. Use the ID of the
    #   resource. Here are some examples:
    #
    #   ManagedInstance: mi-012345abcde
    #
    #   MaintenanceWindow: mw-012345abcde
    #
    #   PatchBaseline: pb-012345abcde
    #
    #   For the Document and Parameter values, use the name of the resource.
    #
    #   <note markdown="1"> The ManagedInstance type for this API action is only for on-premises
    #   managed instances. You must specify the the name of the managed
    #   instance in the following format: mi-ID\_number. For example,
    #   mi-1a2b3c4d5e6f.
    #
    #    </note>
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

    # Information about targets that resolved during the Automation
    # execution.
    #
    # @!attribute [rw] parameter_values
    #   A list of parameter values sent to targets that resolved during the
    #   Automation execution.
    #   @return [Array<String>]
    #
    # @!attribute [rw] truncated
    #   A boolean value indicating whether the resolved target list is
    #   truncated.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ResolvedTargets AWS API Documentation
    #
    class ResolvedTargets < Struct.new(
      :parameter_values,
      :truncated)
      include Aws::Structure
    end

    # Compliance summary information for a specific resource.
    #
    # @!attribute [rw] compliance_type
    #   The compliance type.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The resource ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The compliance status for the resource.
    #   @return [String]
    #
    # @!attribute [rw] overall_severity
    #   The highest severity item found for the resource. The resource is
    #   compliant for this item.
    #   @return [String]
    #
    # @!attribute [rw] execution_summary
    #   Information about the execution.
    #   @return [Types::ComplianceExecutionSummary]
    #
    # @!attribute [rw] compliant_summary
    #   A list of items that are compliant for the resource.
    #   @return [Types::CompliantSummary]
    #
    # @!attribute [rw] non_compliant_summary
    #   A list of items that aren't compliant for the resource.
    #   @return [Types::NonCompliantSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ResourceComplianceSummaryItem AWS API Documentation
    #
    class ResourceComplianceSummaryItem < Struct.new(
      :compliance_type,
      :resource_type,
      :resource_id,
      :status,
      :overall_severity,
      :execution_summary,
      :compliant_summary,
      :non_compliant_summary)
      include Aws::Structure
    end

    # Information about a Resource Data Sync configuration, including its
    # current status and last successful sync.
    #
    # @!attribute [rw] sync_name
    #   The name of the Resource Data Sync.
    #   @return [String]
    #
    # @!attribute [rw] s3_destination
    #   Configuration information for the target Amazon S3 bucket.
    #   @return [Types::ResourceDataSyncS3Destination]
    #
    # @!attribute [rw] last_sync_time
    #   The last time the configuration attempted to sync (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] last_successful_sync_time
    #   The last time the sync operations returned a status of `SUCCESSFUL`
    #   (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] last_status
    #   The status reported by the last sync.
    #   @return [String]
    #
    # @!attribute [rw] sync_created_time
    #   The date and time the configuration was created (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] last_sync_status_message
    #   The status message details reported by the last sync.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ResourceDataSyncItem AWS API Documentation
    #
    class ResourceDataSyncItem < Struct.new(
      :sync_name,
      :s3_destination,
      :last_sync_time,
      :last_successful_sync_time,
      :last_status,
      :sync_created_time,
      :last_sync_status_message)
      include Aws::Structure
    end

    # Information about the target Amazon S3 bucket for the Resource Data
    # Sync.
    #
    # @note When making an API call, you may pass ResourceDataSyncS3Destination
    #   data as a hash:
    #
    #       {
    #         bucket_name: "ResourceDataSyncS3BucketName", # required
    #         prefix: "ResourceDataSyncS3Prefix",
    #         sync_format: "JsonSerDe", # required, accepts JsonSerDe
    #         region: "ResourceDataSyncS3Region", # required
    #         awskms_key_arn: "ResourceDataSyncAWSKMSKeyARN",
    #       }
    #
    # @!attribute [rw] bucket_name
    #   The name of the Amazon S3 bucket where the aggregated data is
    #   stored.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   An Amazon S3 prefix for the bucket.
    #   @return [String]
    #
    # @!attribute [rw] sync_format
    #   A supported sync format. The following format is currently
    #   supported: JsonSerDe
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The AWS Region with the Amazon S3 bucket targeted by the Resource
    #   Data Sync.
    #   @return [String]
    #
    # @!attribute [rw] awskms_key_arn
    #   The ARN of an encryption key for a destination in Amazon S3. Must
    #   belong to the same region as the destination Amazon S3 bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ResourceDataSyncS3Destination AWS API Documentation
    #
    class ResourceDataSyncS3Destination < Struct.new(
      :bucket_name,
      :prefix,
      :sync_format,
      :region,
      :awskms_key_arn)
      include Aws::Structure
    end

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

    # @note When making an API call, you may pass ResumeSessionRequest
    #   data as a hash:
    #
    #       {
    #         session_id: "SessionId", # required
    #       }
    #
    # @!attribute [rw] session_id
    #   The ID of the disconnected session to resume.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ResumeSessionRequest AWS API Documentation
    #
    class ResumeSessionRequest < Struct.new(
      :session_id)
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   The ID of the session.
    #   @return [String]
    #
    # @!attribute [rw] token_value
    #   An encrypted token value containing session and caller information.
    #   Used to authenticate the connection to the instance.
    #   @return [String]
    #
    # @!attribute [rw] stream_url
    #   A URL back to SSM Agent on the instance that the Session Manager
    #   client uses to send commands and receive output from the instance.
    #   Format:
    #   `wss://ssm-messages.region.amazonaws.com/v1/data-channel/session-id?stream=(input|output)`.
    #
    #   **region** represents the Region identifier for an AWS Region
    #   supported by AWS Systems Manager, such as `us-east-2` for the US
    #   East (Ohio) Region. For a list of supported **region** values, see
    #   the **Region** column in the [AWS Systems Manager table of regions
    #   and endpoints][1] in the *AWS General Reference*.
    #
    #   **session-id** represents the ID of a Session Manager session, such
    #   as `1a2b3c4dEXAMPLE`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/rande.html#ssm_region
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ResumeSessionResponse AWS API Documentation
    #
    class ResumeSessionResponse < Struct.new(
      :session_id,
      :token_value,
      :stream_url)
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

    # @note When making an API call, you may pass SendAutomationSignalRequest
    #   data as a hash:
    #
    #       {
    #         automation_execution_id: "AutomationExecutionId", # required
    #         signal_type: "Approve", # required, accepts Approve, Reject, StartStep, StopStep, Resume
    #         payload: {
    #           "AutomationParameterKey" => ["AutomationParameterValue"],
    #         },
    #       }
    #
    # @!attribute [rw] automation_execution_id
    #   The unique identifier for an existing Automation execution that you
    #   want to send the signal to.
    #   @return [String]
    #
    # @!attribute [rw] signal_type
    #   The type of signal. Valid signal types include the following:
    #   Approve and Reject
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   The data sent with the signal. The data schema depends on the type
    #   of signal used in the request.
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/SendAutomationSignalRequest AWS API Documentation
    #
    class SendAutomationSignalRequest < Struct.new(
      :automation_execution_id,
      :signal_type,
      :payload)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/SendAutomationSignalResult AWS API Documentation
    #
    class SendAutomationSignalResult < Aws::EmptyStructure; end

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
    #         document_version: "DocumentVersion",
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
    #         cloud_watch_output_config: {
    #           cloud_watch_log_group_name: "CloudWatchLogGroupName",
    #           cloud_watch_output_enabled: false,
    #         },
    #       }
    #
    # @!attribute [rw] instance_ids
    #   The instance IDs where the command should execute. You can specify a
    #   maximum of 50 IDs. If you prefer not to list individual instance
    #   IDs, you can instead send commands to a fleet of instances using the
    #   Targets parameter, which accepts EC2 tags. For more information
    #   about how to use Targets, see [Sending Commands to a Fleet][1] in
    #   the *AWS Systems Manager User Guide*.
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
    #   Fleet][1] in the *AWS Systems Manager User Guide*.
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
    # @!attribute [rw] document_version
    #   The SSM document version to use in the request. You can specify
    #   $DEFAULT, $LATEST, or a specific version number. If you execute
    #   commands by using the AWS CLI, then you must escape the first two
    #   options by using a backslash. If you specify a version number, then
    #   you don't need to use the backslash. For example:
    #
    #   --document-version "\\$DEFAULT"
    #
    #   --document-version "\\$LATEST"
    #
    #   --document-version "3"
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
    #   executing, it will not run.
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
    #   Controls][1] in the *AWS Systems Manager User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html#send-commands-velocity
    #   @return [String]
    #
    # @!attribute [rw] max_errors
    #   The maximum number of errors allowed without the command failing.
    #   When the command fails one more time beyond the value of MaxErrors,
    #   the systems stops sending the command to additional targets. You can
    #   specify a number like 10 or a percentage like 10%. The default value
    #   is 0. For more information about how to use MaxErrors, see [Using
    #   Error Controls][1] in the *AWS Systems Manager User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html#send-commands-maxerrors
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
    # @!attribute [rw] cloud_watch_output_config
    #   Enables Systems Manager to send Run Command output to Amazon
    #   CloudWatch Logs.
    #   @return [Types::CloudWatchOutputConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/SendCommandRequest AWS API Documentation
    #
    class SendCommandRequest < Struct.new(
      :instance_ids,
      :targets,
      :document_name,
      :document_version,
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
      :notification_config,
      :cloud_watch_output_config)
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

    # Information about a Session Manager connection to an instance.
    #
    # @!attribute [rw] session_id
    #   The ID of the session.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The instance that the Session Manager session connected to.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the session. For example, "Connected" or
    #   "Terminated".
    #   @return [String]
    #
    # @!attribute [rw] start_date
    #   The date and time, in ISO-8601 Extended format, when the session
    #   began.
    #   @return [Time]
    #
    # @!attribute [rw] end_date
    #   The date and time, in ISO-8601 Extended format, when the session was
    #   terminated.
    #   @return [Time]
    #
    # @!attribute [rw] document_name
    #   The name of the Session Manager SSM document used to define the
    #   parameters and plugin settings for the session. For example,
    #   `SSM-SessionManagerRunShell`.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The ID of the AWS user account that started the session.
    #   @return [String]
    #
    # @!attribute [rw] details
    #   Reserved for future use.
    #   @return [String]
    #
    # @!attribute [rw] output_url
    #   Reserved for future use.
    #   @return [Types::SessionManagerOutputUrl]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/Session AWS API Documentation
    #
    class Session < Struct.new(
      :session_id,
      :target,
      :status,
      :start_date,
      :end_date,
      :document_name,
      :owner,
      :details,
      :output_url)
      include Aws::Structure
    end

    # Describes a filter for Session Manager information.
    #
    # @note When making an API call, you may pass SessionFilter
    #   data as a hash:
    #
    #       {
    #         key: "InvokedAfter", # required, accepts InvokedAfter, InvokedBefore, Target, Owner, Status
    #         value: "SessionFilterValue", # required
    #       }
    #
    # @!attribute [rw] key
    #   The name of the filter.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The filter value. Valid values for each filter key are as follows:
    #
    #   * InvokedAfter: Specify a timestamp to limit your results. For
    #     example, specify 2018-08-29T00:00:00Z to see sessions that started
    #     August 29, 2018, and later.
    #
    #   * InvokedBefore: Specify a timestamp to limit your results. For
    #     example, specify 2018-08-29T00:00:00Z to see sessions that started
    #     before August 29, 2018.
    #
    #   * Target: Specify an instance to which session connections have been
    #     made.
    #
    #   * Owner: Specify an AWS user account to see a list of sessions
    #     started by that user.
    #
    #   * Status: Specify a valid session status to see a list of all
    #     sessions with that status. Status values you can specify include:
    #
    #     * Connected
    #
    #     * Connecting
    #
    #     * Disconnected
    #
    #     * Terminated
    #
    #     * Terminating
    #
    #     * Failed
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/SessionFilter AWS API Documentation
    #
    class SessionFilter < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # Reserved for future use.
    #
    # @!attribute [rw] s3_output_url
    #   Reserved for future use.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_output_url
    #   Reserved for future use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/SessionManagerOutputUrl AWS API Documentation
    #
    class SessionManagerOutputUrl < Struct.new(
      :s3_output_url,
      :cloud_watch_output_url)
      include Aws::Structure
    end

    # The number of managed instances found for each patch severity level
    # defined in the request filter.
    #
    # @!attribute [rw] critical_count
    #   The total number of resources or compliance items that have a
    #   severity level of critical. Critical severity is determined by the
    #   organization that published the compliance items.
    #   @return [Integer]
    #
    # @!attribute [rw] high_count
    #   The total number of resources or compliance items that have a
    #   severity level of high. High severity is determined by the
    #   organization that published the compliance items.
    #   @return [Integer]
    #
    # @!attribute [rw] medium_count
    #   The total number of resources or compliance items that have a
    #   severity level of medium. Medium severity is determined by the
    #   organization that published the compliance items.
    #   @return [Integer]
    #
    # @!attribute [rw] low_count
    #   The total number of resources or compliance items that have a
    #   severity level of low. Low severity is determined by the
    #   organization that published the compliance items.
    #   @return [Integer]
    #
    # @!attribute [rw] informational_count
    #   The total number of resources or compliance items that have a
    #   severity level of informational. Informational severity is
    #   determined by the organization that published the compliance items.
    #   @return [Integer]
    #
    # @!attribute [rw] unspecified_count
    #   The total number of resources or compliance items that have a
    #   severity level of unspecified. Unspecified severity is determined by
    #   the organization that published the compliance items.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/SeveritySummary AWS API Documentation
    #
    class SeveritySummary < Struct.new(
      :critical_count,
      :high_count,
      :medium_count,
      :low_count,
      :informational_count,
      :unspecified_count)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartAssociationsOnceRequest
    #   data as a hash:
    #
    #       {
    #         association_ids: ["AssociationId"], # required
    #       }
    #
    # @!attribute [rw] association_ids
    #   The association IDs that you want to execute immediately and only
    #   one time.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/StartAssociationsOnceRequest AWS API Documentation
    #
    class StartAssociationsOnceRequest < Struct.new(
      :association_ids)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/StartAssociationsOnceResult AWS API Documentation
    #
    class StartAssociationsOnceResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass StartAutomationExecutionRequest
    #   data as a hash:
    #
    #       {
    #         document_name: "DocumentARN", # required
    #         document_version: "DocumentVersion",
    #         parameters: {
    #           "AutomationParameterKey" => ["AutomationParameterValue"],
    #         },
    #         client_token: "IdempotencyToken",
    #         mode: "Auto", # accepts Auto, Interactive
    #         target_parameter_name: "AutomationParameterKey",
    #         targets: [
    #           {
    #             key: "TargetKey",
    #             values: ["TargetValue"],
    #           },
    #         ],
    #         target_maps: [
    #           {
    #             "TargetMapKey" => ["TargetMapValue"],
    #           },
    #         ],
    #         max_concurrency: "MaxConcurrency",
    #         max_errors: "MaxErrors",
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
    # @!attribute [rw] client_token
    #   User-provided idempotency token. The token must be unique, is case
    #   insensitive, enforces the UUID format, and can't be reused.
    #   @return [String]
    #
    # @!attribute [rw] mode
    #   The execution mode of the automation. Valid modes include the
    #   following: Auto and Interactive. The default mode is Auto.
    #   @return [String]
    #
    # @!attribute [rw] target_parameter_name
    #   The name of the parameter used as the target resource for the
    #   rate-controlled execution. Required if you specify Targets.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   A key-value mapping to target resources. Required if you specify
    #   TargetParameterName.
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] target_maps
    #   A key-value mapping of document parameters to target resources. Both
    #   Targets and TargetMaps cannot be specified together.
    #   @return [Array<Hash<String,Array<String>>>]
    #
    # @!attribute [rw] max_concurrency
    #   The maximum number of targets allowed to run this task in parallel.
    #   You can specify a number, such as 10, or a percentage, such as 10%.
    #   The default value is 10.
    #   @return [String]
    #
    # @!attribute [rw] max_errors
    #   The number of errors that are allowed before the system stops
    #   running the automation on additional targets. You can specify either
    #   an absolute number of errors, for example 10, or a percentage of the
    #   target set, for example 10%. If you specify 3, for example, the
    #   system stops running the automation when the fourth error is
    #   received. If you specify 0, then the system stops running the
    #   automation on additional targets after the first error result is
    #   returned. If you run an automation on 50 resources and set
    #   max-errors to 10%, then the system stops running the automation on
    #   additional targets when the sixth error is received.
    #
    #   Executions that are already running an automation when max-errors is
    #   reached are allowed to complete, but some of these executions may
    #   fail as well. If you need to ensure that there won't be more than
    #   max-errors failed executions, set max-concurrency to 1 so the
    #   executions proceed one at a time.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/StartAutomationExecutionRequest AWS API Documentation
    #
    class StartAutomationExecutionRequest < Struct.new(
      :document_name,
      :document_version,
      :parameters,
      :client_token,
      :mode,
      :target_parameter_name,
      :targets,
      :target_maps,
      :max_concurrency,
      :max_errors)
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

    # @note When making an API call, you may pass StartSessionRequest
    #   data as a hash:
    #
    #       {
    #         target: "SessionTarget", # required
    #         document_name: "DocumentARN",
    #         parameters: {
    #           "SessionManagerParameterName" => ["SessionManagerParameterValue"],
    #         },
    #       }
    #
    # @!attribute [rw] target
    #   The instance to connect to for the session.
    #   @return [String]
    #
    # @!attribute [rw] document_name
    #   The name of the SSM document to define the parameters and plugin
    #   settings for the session. For example, `SSM-SessionManagerRunShell`.
    #   If no document name is provided, a shell to the instance is launched
    #   by default.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   Reserved for future use.
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/StartSessionRequest AWS API Documentation
    #
    class StartSessionRequest < Struct.new(
      :target,
      :document_name,
      :parameters)
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   The ID of the session.
    #   @return [String]
    #
    # @!attribute [rw] token_value
    #   An encrypted token value containing session and caller information.
    #   Used to authenticate the connection to the instance.
    #   @return [String]
    #
    # @!attribute [rw] stream_url
    #   A URL back to SSM Agent on the instance that the Session Manager
    #   client uses to send commands and receive output from the instance.
    #   Format:
    #   `wss://ssm-messages.region.amazonaws.com/v1/data-channel/session-id?stream=(input|output)`
    #
    #   **region** represents the Region identifier for an AWS Region
    #   supported by AWS Systems Manager, such as `us-east-2` for the US
    #   East (Ohio) Region. For a list of supported **region** values, see
    #   the **Region** column in the [AWS Systems Manager table of regions
    #   and endpoints][1] in the *AWS General Reference*.
    #
    #   **session-id** represents the ID of a Session Manager session, such
    #   as `1a2b3c4dEXAMPLE`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/rande.html#ssm_region
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/StartSessionResponse AWS API Documentation
    #
    class StartSessionResponse < Struct.new(
      :session_id,
      :token_value,
      :stream_url)
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
    # @!attribute [rw] timeout_seconds
    #   The timeout seconds of the step.
    #   @return [Integer]
    #
    # @!attribute [rw] on_failure
    #   The action to take if the step fails. The default value is Abort.
    #   @return [String]
    #
    # @!attribute [rw] max_attempts
    #   The maximum number of tries to run the action of the step. The
    #   default value is 1.
    #   @return [Integer]
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
    # @!attribute [rw] step_execution_id
    #   The unique ID of a step execution.
    #   @return [String]
    #
    # @!attribute [rw] overridden_parameters
    #   A user-specified list of parameters to override when executing a
    #   step.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] is_end
    #   The flag which can be used to end automation no matter whether the
    #   step succeeds or fails.
    #   @return [Boolean]
    #
    # @!attribute [rw] next_step
    #   The next step after the step succeeds.
    #   @return [String]
    #
    # @!attribute [rw] is_critical
    #   The flag which can be used to help decide whether the failure of
    #   current step leads to the Automation failure.
    #   @return [Boolean]
    #
    # @!attribute [rw] valid_next_steps
    #   Strategies used when step fails, we support Continue and Abort.
    #   Abort will fail the automation when the step fails. Continue will
    #   ignore the failure of current step and allow automation to execute
    #   the next step. With conditional branching, we add step:stepName to
    #   support the automation to go to another specific step.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/StepExecution AWS API Documentation
    #
    class StepExecution < Struct.new(
      :step_name,
      :action,
      :timeout_seconds,
      :on_failure,
      :max_attempts,
      :execution_start_time,
      :execution_end_time,
      :step_status,
      :response_code,
      :inputs,
      :outputs,
      :response,
      :failure_message,
      :failure_details,
      :step_execution_id,
      :overridden_parameters,
      :is_end,
      :next_step,
      :is_critical,
      :valid_next_steps)
      include Aws::Structure
    end

    # A filter to limit the amount of step execution information returned by
    # the call.
    #
    # @note When making an API call, you may pass StepExecutionFilter
    #   data as a hash:
    #
    #       {
    #         key: "StartTimeBefore", # required, accepts StartTimeBefore, StartTimeAfter, StepExecutionStatus, StepExecutionId, StepName, Action
    #         values: ["StepExecutionFilterValue"], # required
    #       }
    #
    # @!attribute [rw] key
    #   One or more keys to limit the results. Valid filter keys include the
    #   following: StepName, Action, StepExecutionId, StepExecutionStatus,
    #   StartTimeBefore, StartTimeAfter.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values of the filter key.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/StepExecutionFilter AWS API Documentation
    #
    class StepExecutionFilter < Struct.new(
      :key,
      :values)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopAutomationExecutionRequest
    #   data as a hash:
    #
    #       {
    #         automation_execution_id: "AutomationExecutionId", # required
    #         type: "Complete", # accepts Complete, Cancel
    #       }
    #
    # @!attribute [rw] automation_execution_id
    #   The execution ID of the Automation to stop.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The stop request type. Valid types include the following: Cancel and
    #   Complete. The default type is Cancel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/StopAutomationExecutionRequest AWS API Documentation
    #
    class StopAutomationExecutionRequest < Struct.new(
      :automation_execution_id,
      :type)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/StopAutomationExecutionResult AWS API Documentation
    #
    class StopAutomationExecutionResult < Aws::EmptyStructure; end

    # Metadata that you assign to your AWS resources. Tags enable you to
    # categorize your resources in different ways, for example, by purpose,
    # owner, or environment. In Systems Manager, you can apply tags to
    # documents, managed instances, Maintenance Windows, Parameter Store
    # parameters, and patch baselines.
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
    #   target instances using Key,Value parameters, see [Targeting Multiple
    #   Instances][1] in the *AWS Systems Manager User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html#send-commands-targeting
    #   @return [String]
    #
    # @!attribute [rw] values
    #   User-defined criteria that maps to Key. For example, if you
    #   specified tag:ServerRole, you could specify value:WebServer to
    #   execute a command on instances that include Amazon EC2 tags of
    #   ServerRole,WebServer. For more information about how to send
    #   commands that target instances using Key,Value parameters, see
    #   [Sending Commands to a Fleet][1] in the *AWS Systems Manager User
    #   Guide*.
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

    # @note When making an API call, you may pass TerminateSessionRequest
    #   data as a hash:
    #
    #       {
    #         session_id: "SessionId", # required
    #       }
    #
    # @!attribute [rw] session_id
    #   The ID of the session to terminate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/TerminateSessionRequest AWS API Documentation
    #
    class TerminateSessionRequest < Struct.new(
      :session_id)
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   The ID of the session that has been terminated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/TerminateSessionResponse AWS API Documentation
    #
    class TerminateSessionResponse < Struct.new(
      :session_id)
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
    #         association_name: "AssociationName",
    #         association_version: "AssociationVersion",
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
    # @!attribute [rw] association_name
    #   The name of the association that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] association_version
    #   This parameter is provided for concurrency control purposes. You
    #   must specify the latest association version in the service. If you
    #   want to ensure that this request succeeds, either specify `$LATEST`,
    #   or omit this parameter.
    #   @return [String]
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
      :targets,
      :association_name,
      :association_version)
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
    #   The name of the Systems Manager document.
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
    #         document_format: "YAML", # accepts YAML, JSON
    #         target_type: "TargetType",
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
    # @!attribute [rw] document_format
    #   Specify the document format for the new document version. Systems
    #   Manager supports JSON and YAML documents. JSON is the default
    #   format.
    #   @return [String]
    #
    # @!attribute [rw] target_type
    #   Specify a new target type for the document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateDocumentRequest AWS API Documentation
    #
    class UpdateDocumentRequest < Struct.new(
      :content,
      :name,
      :document_version,
      :document_format,
      :target_type)
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
    #         description: "MaintenanceWindowDescription",
    #         schedule: "MaintenanceWindowSchedule",
    #         duration: 1,
    #         cutoff: 1,
    #         allow_unassociated_targets: false,
    #         enabled: false,
    #         replace: false,
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
    # @!attribute [rw] description
    #   An optional description for the update request.
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
    # @!attribute [rw] replace
    #   If True, then all fields that are required by the
    #   CreateMaintenanceWindow action are also required for this API
    #   request. Optional fields that are not specified are set to null.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateMaintenanceWindowRequest AWS API Documentation
    #
    class UpdateMaintenanceWindowRequest < Struct.new(
      :window_id,
      :name,
      :description,
      :schedule,
      :duration,
      :cutoff,
      :allow_unassociated_targets,
      :enabled,
      :replace)
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
    # @!attribute [rw] description
    #   An optional description of the update.
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
      :description,
      :schedule,
      :duration,
      :cutoff,
      :allow_unassociated_targets,
      :enabled)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateMaintenanceWindowTargetRequest
    #   data as a hash:
    #
    #       {
    #         window_id: "MaintenanceWindowId", # required
    #         window_target_id: "MaintenanceWindowTargetId", # required
    #         targets: [
    #           {
    #             key: "TargetKey",
    #             values: ["TargetValue"],
    #           },
    #         ],
    #         owner_information: "OwnerInformation",
    #         name: "MaintenanceWindowName",
    #         description: "MaintenanceWindowDescription",
    #         replace: false,
    #       }
    #
    # @!attribute [rw] window_id
    #   The Maintenance Window ID with which to modify the target.
    #   @return [String]
    #
    # @!attribute [rw] window_target_id
    #   The target ID to modify.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The targets to add or replace.
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] owner_information
    #   User-provided value that will be included in any CloudWatch events
    #   raised while running tasks for these targets in this Maintenance
    #   Window.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name for the update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description for the update.
    #   @return [String]
    #
    # @!attribute [rw] replace
    #   If True, then all fields that are required by the
    #   RegisterTargetWithMaintenanceWindow action are also required for
    #   this API request. Optional fields that are not specified are set to
    #   null.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateMaintenanceWindowTargetRequest AWS API Documentation
    #
    class UpdateMaintenanceWindowTargetRequest < Struct.new(
      :window_id,
      :window_target_id,
      :targets,
      :owner_information,
      :name,
      :description,
      :replace)
      include Aws::Structure
    end

    # @!attribute [rw] window_id
    #   The Maintenance Window ID specified in the update request.
    #   @return [String]
    #
    # @!attribute [rw] window_target_id
    #   The target ID specified in the update request.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The updated targets.
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] owner_information
    #   The updated owner.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The updated name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateMaintenanceWindowTargetResult AWS API Documentation
    #
    class UpdateMaintenanceWindowTargetResult < Struct.new(
      :window_id,
      :window_target_id,
      :targets,
      :owner_information,
      :name,
      :description)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateMaintenanceWindowTaskRequest
    #   data as a hash:
    #
    #       {
    #         window_id: "MaintenanceWindowId", # required
    #         window_task_id: "MaintenanceWindowTaskId", # required
    #         targets: [
    #           {
    #             key: "TargetKey",
    #             values: ["TargetValue"],
    #           },
    #         ],
    #         task_arn: "MaintenanceWindowTaskArn",
    #         service_role_arn: "ServiceRole",
    #         task_parameters: {
    #           "MaintenanceWindowTaskParameterName" => {
    #             values: ["MaintenanceWindowTaskParameterValue"],
    #           },
    #         },
    #         task_invocation_parameters: {
    #           run_command: {
    #             comment: "Comment",
    #             document_hash: "DocumentHash",
    #             document_hash_type: "Sha256", # accepts Sha256, Sha1
    #             notification_config: {
    #               notification_arn: "NotificationArn",
    #               notification_events: ["All"], # accepts All, InProgress, Success, TimedOut, Cancelled, Failed
    #               notification_type: "Command", # accepts Command, Invocation
    #             },
    #             output_s3_bucket_name: "S3BucketName",
    #             output_s3_key_prefix: "S3KeyPrefix",
    #             parameters: {
    #               "ParameterName" => ["ParameterValue"],
    #             },
    #             service_role_arn: "ServiceRole",
    #             timeout_seconds: 1,
    #           },
    #           automation: {
    #             document_version: "DocumentVersion",
    #             parameters: {
    #               "AutomationParameterKey" => ["AutomationParameterValue"],
    #             },
    #           },
    #           step_functions: {
    #             input: "MaintenanceWindowStepFunctionsInput",
    #             name: "MaintenanceWindowStepFunctionsName",
    #           },
    #           lambda: {
    #             client_context: "MaintenanceWindowLambdaClientContext",
    #             qualifier: "MaintenanceWindowLambdaQualifier",
    #             payload: "data",
    #           },
    #         },
    #         priority: 1,
    #         max_concurrency: "MaxConcurrency",
    #         max_errors: "MaxErrors",
    #         logging_info: {
    #           s3_bucket_name: "S3BucketName", # required
    #           s3_key_prefix: "S3KeyPrefix",
    #           s3_region: "S3Region", # required
    #         },
    #         name: "MaintenanceWindowName",
    #         description: "MaintenanceWindowDescription",
    #         replace: false,
    #       }
    #
    # @!attribute [rw] window_id
    #   The Maintenance Window ID that contains the task to modify.
    #   @return [String]
    #
    # @!attribute [rw] window_task_id
    #   The task ID to modify.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The targets (either instances or tags) to modify. Instances are
    #   specified using Key=instanceids,Values=instanceID\_1,instanceID\_2.
    #   Tags are specified using Key=tag\_name,Values=tag\_value.
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] task_arn
    #   The task ARN to modify.
    #   @return [String]
    #
    # @!attribute [rw] service_role_arn
    #   The IAM service role ARN to modify. The system assumes this role
    #   during task execution.
    #
    #   If you do not specify a service role ARN, Systems Manager will use
    #   your account's service-linked role for Systems Manager by default.
    #   If no service-linked role for Systems Manager exists in your
    #   account, it will be created when you run
    #   `RegisterTaskWithMaintenanceWindow` without specifying a service
    #   role ARN.
    #
    #   For more information, see [Service-Linked Role Permissions for
    #   Systems Manager][1] and [Should I Use a Service-Linked Role or a
    #   Custom Service Role to Run Maintenance Window Tasks? ][2] in the
    #   *AWS Systems Manager User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/using-service-linked-roles.html#slr-permissions
    #   [2]: http://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-maintenance-permissions.html#maintenance-window-tasks-service-role
    #   @return [String]
    #
    # @!attribute [rw] task_parameters
    #   The parameters to modify.
    #
    #   <note markdown="1"> `TaskParameters` has been deprecated. To specify parameters to pass
    #   to a task when it runs, instead use the `Parameters` option in the
    #   `TaskInvocationParameters` structure. For information about how
    #   Systems Manager handles these options for the supported Maintenance
    #   Window task types, see MaintenanceWindowTaskInvocationParameters.
    #
    #    </note>
    #
    #   The map has the following format:
    #
    #   Key: string, between 1 and 255 characters
    #
    #   Value: an array of strings, each string is between 1 and 255
    #   characters
    #   @return [Hash<String,Types::MaintenanceWindowTaskParameterValueExpression>]
    #
    # @!attribute [rw] task_invocation_parameters
    #   The parameters that the task should use during execution. Populate
    #   only the fields that match the task type. All other fields should be
    #   empty.
    #   @return [Types::MaintenanceWindowTaskInvocationParameters]
    #
    # @!attribute [rw] priority
    #   The new task priority to specify. The lower the number, the higher
    #   the priority. Tasks that have the same priority are scheduled in
    #   parallel.
    #   @return [Integer]
    #
    # @!attribute [rw] max_concurrency
    #   The new `MaxConcurrency` value you want to specify. `MaxConcurrency`
    #   is the number of targets that are allowed to run this task in
    #   parallel.
    #   @return [String]
    #
    # @!attribute [rw] max_errors
    #   The new `MaxErrors` value to specify. `MaxErrors` is the maximum
    #   number of errors that are allowed before the task stops being
    #   scheduled.
    #   @return [String]
    #
    # @!attribute [rw] logging_info
    #   The new logging location in Amazon S3 to specify.
    #
    #   <note markdown="1"> `LoggingInfo` has been deprecated. To specify an S3 bucket to
    #   contain logs, instead use the `OutputS3BucketName` and
    #   `OutputS3KeyPrefix` options in the `TaskInvocationParameters`
    #   structure. For information about how Systems Manager handles these
    #   options for the supported Maintenance Window task types, see
    #   MaintenanceWindowTaskInvocationParameters.
    #
    #    </note>
    #   @return [Types::LoggingInfo]
    #
    # @!attribute [rw] name
    #   The new task name to specify.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The new task description to specify.
    #   @return [String]
    #
    # @!attribute [rw] replace
    #   If True, then all fields that are required by the
    #   RegisterTaskWithMaintenanceWndow action are also required for this
    #   API request. Optional fields that are not specified are set to null.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateMaintenanceWindowTaskRequest AWS API Documentation
    #
    class UpdateMaintenanceWindowTaskRequest < Struct.new(
      :window_id,
      :window_task_id,
      :targets,
      :task_arn,
      :service_role_arn,
      :task_parameters,
      :task_invocation_parameters,
      :priority,
      :max_concurrency,
      :max_errors,
      :logging_info,
      :name,
      :description,
      :replace)
      include Aws::Structure
    end

    # @!attribute [rw] window_id
    #   The ID of the Maintenance Window that was updated.
    #   @return [String]
    #
    # @!attribute [rw] window_task_id
    #   The task ID of the Maintenance Window that was updated.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The updated target values.
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] task_arn
    #   The updated task ARN value.
    #   @return [String]
    #
    # @!attribute [rw] service_role_arn
    #   The updated service role ARN value.
    #   @return [String]
    #
    # @!attribute [rw] task_parameters
    #   The updated parameter values.
    #
    #   <note markdown="1"> `TaskParameters` has been deprecated. To specify parameters to pass
    #   to a task when it runs, instead use the `Parameters` option in the
    #   `TaskInvocationParameters` structure. For information about how
    #   Systems Manager handles these options for the supported Maintenance
    #   Window task types, see MaintenanceWindowTaskInvocationParameters.
    #
    #    </note>
    #   @return [Hash<String,Types::MaintenanceWindowTaskParameterValueExpression>]
    #
    # @!attribute [rw] task_invocation_parameters
    #   The updated parameter values.
    #   @return [Types::MaintenanceWindowTaskInvocationParameters]
    #
    # @!attribute [rw] priority
    #   The updated priority value.
    #   @return [Integer]
    #
    # @!attribute [rw] max_concurrency
    #   The updated MaxConcurrency value.
    #   @return [String]
    #
    # @!attribute [rw] max_errors
    #   The updated MaxErrors value.
    #   @return [String]
    #
    # @!attribute [rw] logging_info
    #   The updated logging information in Amazon S3.
    #
    #   <note markdown="1"> `LoggingInfo` has been deprecated. To specify an S3 bucket to
    #   contain logs, instead use the `OutputS3BucketName` and
    #   `OutputS3KeyPrefix` options in the `TaskInvocationParameters`
    #   structure. For information about how Systems Manager handles these
    #   options for the supported Maintenance Window task types, see
    #   MaintenanceWindowTaskInvocationParameters.
    #
    #    </note>
    #   @return [Types::LoggingInfo]
    #
    # @!attribute [rw] name
    #   The updated task name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated task description.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateMaintenanceWindowTaskResult AWS API Documentation
    #
    class UpdateMaintenanceWindowTaskResult < Struct.new(
      :window_id,
      :window_task_id,
      :targets,
      :task_arn,
      :service_role_arn,
      :task_parameters,
      :task_invocation_parameters,
      :priority,
      :max_concurrency,
      :max_errors,
      :logging_info,
      :name,
      :description)
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
    #               key: "PRODUCT", # required, accepts PRODUCT, CLASSIFICATION, MSRC_SEVERITY, PATCH_ID, SECTION, PRIORITY, SEVERITY
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
    #                     key: "PRODUCT", # required, accepts PRODUCT, CLASSIFICATION, MSRC_SEVERITY, PATCH_ID, SECTION, PRIORITY, SEVERITY
    #                     values: ["PatchFilterValue"], # required
    #                   },
    #                 ],
    #               },
    #               compliance_level: "CRITICAL", # accepts CRITICAL, HIGH, MEDIUM, LOW, INFORMATIONAL, UNSPECIFIED
    #               approve_after_days: 1, # required
    #               enable_non_security: false,
    #             },
    #           ],
    #         },
    #         approved_patches: ["PatchId"],
    #         approved_patches_compliance_level: "CRITICAL", # accepts CRITICAL, HIGH, MEDIUM, LOW, INFORMATIONAL, UNSPECIFIED
    #         approved_patches_enable_non_security: false,
    #         rejected_patches: ["PatchId"],
    #         description: "BaselineDescription",
    #         sources: [
    #           {
    #             name: "PatchSourceName", # required
    #             products: ["PatchSourceProduct"], # required
    #             configuration: "PatchSourceConfiguration", # required
    #           },
    #         ],
    #         replace: false,
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
    #
    #   For information about accepted formats for lists of approved patches
    #   and rejected patches, see [Package Name Formats for Approved and
    #   Rejected Patch Lists][1] in the *AWS Systems Manager User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] approved_patches_compliance_level
    #   Assigns a new compliance severity level to an existing patch
    #   baseline.
    #   @return [String]
    #
    # @!attribute [rw] approved_patches_enable_non_security
    #   Indicates whether the list of approved patches includes non-security
    #   updates that should be applied to the instances. The default value
    #   is 'false'. Applies to Linux instances only.
    #   @return [Boolean]
    #
    # @!attribute [rw] rejected_patches
    #   A list of explicitly rejected patches for the baseline.
    #
    #   For information about accepted formats for lists of approved patches
    #   and rejected patches, see [Package Name Formats for Approved and
    #   Rejected Patch Lists][1] in the *AWS Systems Manager User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] description
    #   A description of the patch baseline.
    #   @return [String]
    #
    # @!attribute [rw] sources
    #   Information about the patches to use to update the instances,
    #   including target operating systems and source repositories. Applies
    #   to Linux instances only.
    #   @return [Array<Types::PatchSource>]
    #
    # @!attribute [rw] replace
    #   If True, then all fields that are required by the
    #   CreatePatchBaseline action are also required for this API request.
    #   Optional fields that are not specified are set to null.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdatePatchBaselineRequest AWS API Documentation
    #
    class UpdatePatchBaselineRequest < Struct.new(
      :baseline_id,
      :name,
      :global_filters,
      :approval_rules,
      :approved_patches,
      :approved_patches_compliance_level,
      :approved_patches_enable_non_security,
      :rejected_patches,
      :description,
      :sources,
      :replace)
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
    # @!attribute [rw] operating_system
    #   The operating system rule used by the updated patch baseline.
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
    # @!attribute [rw] approved_patches_compliance_level
    #   The compliance severity level assigned to the patch baseline after
    #   the update completed.
    #   @return [String]
    #
    # @!attribute [rw] approved_patches_enable_non_security
    #   Indicates whether the list of approved patches includes non-security
    #   updates that should be applied to the instances. The default value
    #   is 'false'. Applies to Linux instances only.
    #   @return [Boolean]
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
    # @!attribute [rw] sources
    #   Information about the patches to use to update the instances,
    #   including target operating systems and source repositories. Applies
    #   to Linux instances only.
    #   @return [Array<Types::PatchSource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdatePatchBaselineResult AWS API Documentation
    #
    class UpdatePatchBaselineResult < Struct.new(
      :baseline_id,
      :name,
      :operating_system,
      :global_filters,
      :approval_rules,
      :approved_patches,
      :approved_patches_compliance_level,
      :approved_patches_enable_non_security,
      :rejected_patches,
      :created_date,
      :modified_date,
      :description,
      :sources)
      include Aws::Structure
    end

  end
end
