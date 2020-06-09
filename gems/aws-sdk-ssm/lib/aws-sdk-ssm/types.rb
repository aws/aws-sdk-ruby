# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SSM
  module Types

    # Information includes the AWS account ID where the current document is
    # shared and the version shared with that account.
    #
    # @!attribute [rw] account_id
    #   The AWS account ID where the current document is shared.
    #   @return [String]
    #
    # @!attribute [rw] shared_document_version
    #   The version of the current document shared with the account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AccountSharingInfo AWS API Documentation
    #
    class AccountSharingInfo < Struct.new(
      :account_id,
      :shared_document_version)
      include Aws::Structure
    end

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
    # @!attribute [rw] tags
    #   Tags assigned to the activation.
    #   @return [Array<Types::Tag>]
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
      :created_date,
      :tags)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AddTagsToResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_type: "Document", # required, accepts Document, ManagedInstance, MaintenanceWindow, Parameter, PatchBaseline, OpsItem
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
    #   managed instances. You must specify the name of the managed instance
    #   in the following format: mi-ID\_number. For example,
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
    #   managed instances. You must specify the name of the managed instance
    #   in the following format: mi-ID\_number. For example,
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

    # Error returned if an attempt is made to register a patch group with a
    # patch baseline that is already registered with a different patch
    # baseline.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AlreadyExistsException AWS API Documentation
    #
    class AlreadyExistsException < Struct.new(
      :message)
      include Aws::Structure
    end

    # You must disassociate a document from all instances before you can
    # delete it.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AssociatedInstances AWS API Documentation
    #
    class AssociatedInstances < Aws::EmptyStructure; end

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

    # The specified association already exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AssociationAlreadyExists AWS API Documentation
    #
    class AssociationAlreadyExists < Aws::EmptyStructure; end

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
    # @!attribute [rw] automation_target_parameter_name
    #   Specify the target for the association. This target is required for
    #   associations that use an Automation document and target resources by
    #   using rate controls.
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
    #   An S3 bucket where you want to store the output details of the
    #   request.
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
    # @!attribute [rw] max_errors
    #   The number of errors that are allowed before the system stops
    #   sending requests to run the association on additional targets. You
    #   can specify either an absolute number of errors, for example 10, or
    #   a percentage of the target set, for example 10%. If you specify 3,
    #   for example, the system stops sending requests when the fourth error
    #   is received. If you specify 0, then the system stops sending
    #   requests after the first error is returned. If you run an
    #   association on 50 instances and set MaxError to 10%, then the system
    #   stops sending the request when the sixth error is received.
    #
    #   Executions that are already running an association when MaxErrors is
    #   reached are allowed to complete, but some of these executions may
    #   fail as well. If you need to ensure that there won't be more than
    #   max-errors failed executions, set MaxConcurrency to 1 so that
    #   executions proceed one at a time.
    #   @return [String]
    #
    # @!attribute [rw] max_concurrency
    #   The maximum number of targets allowed to run the association at the
    #   same time. You can specify a number, for example 10, or a percentage
    #   of the target set, for example 10%. The default value is 100%, which
    #   means all targets run the association at the same time.
    #
    #   If a new instance starts and attempts to run an association while
    #   Systems Manager is running MaxConcurrency associations, the
    #   association is allowed to run. During the next association interval,
    #   the new instance will process its association within the limit
    #   specified for MaxConcurrency.
    #   @return [String]
    #
    # @!attribute [rw] compliance_severity
    #   The severity level that is assigned to the association.
    #   @return [String]
    #
    # @!attribute [rw] sync_compliance
    #   The mode for generating association compliance. You can specify
    #   `AUTO` or `MANUAL`. In `AUTO` mode, the system uses the status of
    #   the association execution to determine the compliance status. If the
    #   association execution runs successfully, then the association is
    #   `COMPLIANT`. If the association execution doesn't run successfully,
    #   the association is `NON-COMPLIANT`.
    #
    #   In `MANUAL` mode, you must specify the `AssociationId` as a
    #   parameter for the PutComplianceItems API action. In this case,
    #   compliance data is not managed by State Manager. It is managed by
    #   your direct call to the PutComplianceItems API action.
    #
    #   By default, all associations use `AUTO` mode.
    #   @return [String]
    #
    # @!attribute [rw] apply_only_at_cron_interval
    #   By default, when you create a new associations, the system runs it
    #   immediately after it is created and then according to the schedule
    #   you specified. Specify this option if you don't want an association
    #   to run immediately after you create it.
    #   @return [Boolean]
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
      :automation_target_parameter_name,
      :parameters,
      :association_id,
      :targets,
      :schedule_expression,
      :output_location,
      :last_execution_date,
      :last_successful_execution_date,
      :association_name,
      :max_errors,
      :max_concurrency,
      :compliance_severity,
      :sync_compliance,
      :apply_only_at_cron_interval)
      include Aws::Structure
    end

    # The specified association does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AssociationDoesNotExist AWS API Documentation
    #
    class AssociationDoesNotExist < Struct.new(
      :message)
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
    #   The execution ID for the association.
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

    # The specified execution ID does not exist. Verify the ID number and
    # try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AssociationExecutionDoesNotExist AWS API Documentation
    #
    class AssociationExecutionDoesNotExist < Struct.new(
      :message)
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
    #   The execution ID.
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
    #         key: "InstanceId", # required, accepts InstanceId, Name, AssociationId, AssociationStatusName, LastExecutedBefore, LastExecutedAfter, AssociationName, ResourceGroupName
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

    # You can have at most 2,000 active associations.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AssociationLimitExceeded AWS API Documentation
    #
    class AssociationLimitExceeded < Aws::EmptyStructure; end

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
    # @!attribute [rw] max_errors
    #   The number of errors that are allowed before the system stops
    #   sending requests to run the association on additional targets. You
    #   can specify either an absolute number of errors, for example 10, or
    #   a percentage of the target set, for example 10%. If you specify 3,
    #   for example, the system stops sending requests when the fourth error
    #   is received. If you specify 0, then the system stops sending
    #   requests after the first error is returned. If you run an
    #   association on 50 instances and set MaxError to 10%, then the system
    #   stops sending the request when the sixth error is received.
    #
    #   Executions that are already running an association when MaxErrors is
    #   reached are allowed to complete, but some of these executions may
    #   fail as well. If you need to ensure that there won't be more than
    #   max-errors failed executions, set MaxConcurrency to 1 so that
    #   executions proceed one at a time.
    #   @return [String]
    #
    # @!attribute [rw] max_concurrency
    #   The maximum number of targets allowed to run the association at the
    #   same time. You can specify a number, for example 10, or a percentage
    #   of the target set, for example 10%. The default value is 100%, which
    #   means all targets run the association at the same time.
    #
    #   If a new instance starts and attempts to run an association while
    #   Systems Manager is running MaxConcurrency associations, the
    #   association is allowed to run. During the next association interval,
    #   the new instance will process its association within the limit
    #   specified for MaxConcurrency.
    #   @return [String]
    #
    # @!attribute [rw] compliance_severity
    #   The severity level that is assigned to the association.
    #   @return [String]
    #
    # @!attribute [rw] sync_compliance
    #   The mode for generating association compliance. You can specify
    #   `AUTO` or `MANUAL`. In `AUTO` mode, the system uses the status of
    #   the association execution to determine the compliance status. If the
    #   association execution runs successfully, then the association is
    #   `COMPLIANT`. If the association execution doesn't run successfully,
    #   the association is `NON-COMPLIANT`.
    #
    #   In `MANUAL` mode, you must specify the `AssociationId` as a
    #   parameter for the PutComplianceItems API action. In this case,
    #   compliance data is not managed by State Manager. It is managed by
    #   your direct call to the PutComplianceItems API action.
    #
    #   By default, all associations use `AUTO` mode.
    #   @return [String]
    #
    # @!attribute [rw] apply_only_at_cron_interval
    #   By default, when you create a new associations, the system runs it
    #   immediately after it is created and then according to the schedule
    #   you specified. Specify this option if you don't want an association
    #   to run immediately after you create it.
    #   @return [Boolean]
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
      :association_name,
      :max_errors,
      :max_concurrency,
      :compliance_severity,
      :sync_compliance,
      :apply_only_at_cron_interval)
      include Aws::Structure
    end

    # You have reached the maximum number versions allowed for an
    # association. Each association has a limit of 1,000 versions.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AssociationVersionLimitExceeded AWS API Documentation
    #
    class AssociationVersionLimitExceeded < Struct.new(
      :message)
      include Aws::Structure
    end

    # A structure that includes attributes that describe a document
    # attachment.
    #
    # @!attribute [rw] name
    #   The name of an attachment.
    #   @return [String]
    #
    # @!attribute [rw] size
    #   The size of an attachment in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] hash
    #   The cryptographic hash value of the document content.
    #   @return [String]
    #
    # @!attribute [rw] hash_type
    #   The hash algorithm used to calculate the hash value.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL location of the attachment content.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AttachmentContent AWS API Documentation
    #
    class AttachmentContent < Struct.new(
      :name,
      :size,
      :hash,
      :hash_type,
      :url)
      include Aws::Structure
    end

    # An attribute of an attachment, such as the attachment name.
    #
    # @!attribute [rw] name
    #   The name of the attachment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AttachmentInformation AWS API Documentation
    #
    class AttachmentInformation < Struct.new(
      :name)
      include Aws::Structure
    end

    # Identifying information about a document attachment, including the
    # file name and a key-value pair that identifies the location of an
    # attachment to a document.
    #
    # @note When making an API call, you may pass AttachmentsSource
    #   data as a hash:
    #
    #       {
    #         key: "SourceUrl", # accepts SourceUrl, S3FileUrl, AttachmentReference
    #         values: ["AttachmentsSourceValue"],
    #         name: "AttachmentIdentifier",
    #       }
    #
    # @!attribute [rw] key
    #   The key of a key-value pair that identifies the location of an
    #   attachment to a document.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The value of a key-value pair that identifies the location of an
    #   attachment to a document. The format for **Value** depends on the
    #   type of key you specify.
    #
    #   * For the key *SourceUrl*, the value is an S3 bucket location. For
    #     example:
    #
    #     `"Values": [ "s3://my-bucket/my-folder" ]`
    #
    #   * For the key *S3FileUrl*, the value is a file in an S3 bucket. For
    #     example:
    #
    #     `"Values": [ "s3://my-bucket/my-folder/my-file.py" ]`
    #
    #   * For the key *AttachmentReference*, the value is constructed from
    #     the name of another SSM document in your account, a version number
    #     of that document, and a file attached to that document version
    #     that you want to reuse. For example:
    #
    #     `"Values": [ "MyOtherDocument/3/my-other-file.py" ]`
    #
    #     However, if the SSM document is shared with you from another
    #     account, the full SSM document ARN must be specified instead of
    #     the document name only. For example:
    #
    #     `"Values": [
    #     "arn:aws:ssm:us-east-2:111122223333:document/OtherAccountDocument/3/their-file.py"
    #     ]`
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   The name of the document attachment file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AttachmentsSource AWS API Documentation
    #
    class AttachmentsSource < Struct.new(
      :key,
      :values,
      :name)
      include Aws::Structure
    end

    # An Automation document with the specified name could not be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AutomationDefinitionNotFoundException AWS API Documentation
    #
    class AutomationDefinitionNotFoundException < Struct.new(
      :message)
      include Aws::Structure
    end

    # An Automation document with the specified name and version could not
    # be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AutomationDefinitionVersionNotFoundException AWS API Documentation
    #
    class AutomationDefinitionVersionNotFoundException < Struct.new(
      :message)
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
    #   are run in order.
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
    #   The Amazon Resource Name (ARN) of the user who ran the automation.
    #   @return [String]
    #
    # @!attribute [rw] current_step_name
    #   The name of the step that is currently running.
    #   @return [String]
    #
    # @!attribute [rw] current_action
    #   The action of the step that is currently running.
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
    # @!attribute [rw] target_locations
    #   The combination of AWS Regions and/or AWS accounts where you want to
    #   run the Automation.
    #   @return [Array<Types::TargetLocation>]
    #
    # @!attribute [rw] progress_counters
    #   An aggregate of step execution statuses displayed in the AWS Console
    #   for a multi-Region and multi-account Automation execution.
    #   @return [Types::ProgressCounters]
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
      :target,
      :target_locations,
      :progress_counters)
      include Aws::Structure
    end

    # A filter used to match specific automation executions. This is used to
    # limit the scope of Automation execution information returned.
    #
    # @note When making an API call, you may pass AutomationExecutionFilter
    #   data as a hash:
    #
    #       {
    #         key: "DocumentNamePrefix", # required, accepts DocumentNamePrefix, ExecutionStatus, ExecutionId, ParentExecutionId, CurrentAction, StartTimeBefore, StartTimeAfter, AutomationType, TagKey
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

    # The number of simultaneously running Automation executions exceeded
    # the allowable limit.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AutomationExecutionLimitExceededException AWS API Documentation
    #
    class AutomationExecutionLimitExceededException < Struct.new(
      :message)
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
    #   The status of the execution.
    #   @return [String]
    #
    # @!attribute [rw] execution_start_time
    #   The time the execution started.
    #   @return [Time]
    #
    # @!attribute [rw] execution_end_time
    #   The time the execution finished. This is not populated if the
    #   execution is still in progress.
    #   @return [Time]
    #
    # @!attribute [rw] executed_by
    #   The IAM role ARN of the user who ran the Automation.
    #   @return [String]
    #
    # @!attribute [rw] log_file
    #   An S3 bucket where execution information is stored.
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
    #   The name of the step that is currently running.
    #   @return [String]
    #
    # @!attribute [rw] current_action
    #   The action of the step that is currently running.
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
    # @!attribute [rw] automation_type
    #   Use this filter with DescribeAutomationExecutions. Specify either
    #   Local or CrossAccount. CrossAccount is an Automation that runs in
    #   multiple AWS Regions and accounts. For more information, see
    #   [Running Automation workflows in multiple AWS Regions and
    #   accounts][1] in the *AWS Systems Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-automation-multiple-accounts-and-regions.html
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
      :target,
      :automation_type)
      include Aws::Structure
    end

    # There is no automation execution information for the requested
    # automation execution ID.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AutomationExecutionNotFoundException AWS API Documentation
    #
    class AutomationExecutionNotFoundException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The specified step name and execution ID don't exist. Verify the
    # information and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AutomationStepNotFoundException AWS API Documentation
    #
    class AutomationStepNotFoundException < Struct.new(
      :message)
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

    # @note When making an API call, you may pass CancelMaintenanceWindowExecutionRequest
    #   data as a hash:
    #
    #       {
    #         window_execution_id: "MaintenanceWindowExecutionId", # required
    #       }
    #
    # @!attribute [rw] window_execution_id
    #   The ID of the maintenance window execution to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CancelMaintenanceWindowExecutionRequest AWS API Documentation
    #
    class CancelMaintenanceWindowExecutionRequest < Struct.new(
      :window_execution_id)
      include Aws::Structure
    end

    # @!attribute [rw] window_execution_id
    #   The ID of the maintenance window execution that has been stopped.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CancelMaintenanceWindowExecutionResult AWS API Documentation
    #
    class CancelMaintenanceWindowExecutionResult < Struct.new(
      :window_execution_id)
      include Aws::Structure
    end

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
    #   running, it will not run. Calculated based on the ExpiresAfter user
    #   input provided as part of the SendCommand API.
    #   @return [Time]
    #
    # @!attribute [rw] parameters
    #   The parameter values to be inserted in the document when running the
    #   command.
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
    #   statuses, see [Understanding command statuses][1] in the *AWS
    #   Systems Manager User Guide*. StatusDetails can be one of the
    #   following values:
    #
    #   * Pending: The command has not been sent to any instances.
    #
    #   * In Progress: The command has been sent to at least one instance
    #     but has not reached a final state on all instances.
    #
    #   * Success: The command successfully ran on all invocations. This is
    #     a terminal state.
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
    #     canceled the command before running it on any instance. This is a
    #     terminal state.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-commands.html
    #   @return [String]
    #
    # @!attribute [rw] output_s3_region
    #   (Deprecated) You can no longer specify this parameter. The system
    #   ignores it. Instead, Systems Manager automatically determines the
    #   Region of the S3 bucket.
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
    #   The maximum number of instances that are allowed to run the command
    #   at the same time. You can specify a number of instances, such as 10,
    #   or a percentage of instances, such as 10%. The default value is 50.
    #   For more information about how to use MaxConcurrency, see [Running
    #   commands using Systems Manager Run Command][1] in the *AWS Systems
    #   Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/run-command.html
    #   @return [String]
    #
    # @!attribute [rw] max_errors
    #   The maximum number of errors allowed before the system stops sending
    #   the command to additional targets. You can specify a number of
    #   errors, such as 10, or a percentage or errors, such as 10%. The
    #   default value is 0. For more information about how to use MaxErrors,
    #   see [Running commands using Systems Manager Run Command][1] in the
    #   *AWS Systems Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/run-command.html
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
    # @!attribute [rw] timeout_seconds
    #   The `TimeoutSeconds` value specified for a command.
    #   @return [Integer]
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
      :cloud_watch_output_config,
      :timeout_seconds)
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
    #   * **InvokedAfter**\: Specify a timestamp to limit your results. For
    #     example, specify `2018-07-07T00:00:00Z` to see a list of command
    #     executions occurring July 7, 2018, and later.
    #
    #   * **InvokedBefore**\: Specify a timestamp to limit your results. For
    #     example, specify `2018-07-07T00:00:00Z` to see a list of command
    #     executions from before July 7, 2018.
    #
    #   * **Status**\: Specify a valid command status to see a list of all
    #     command executions with that status. Status values you can specify
    #     include:
    #
    #     * `Pending`
    #
    #     * `InProgress`
    #
    #     * `Success`
    #
    #     * `Cancelled`
    #
    #     * `Failed`
    #
    #     * `TimedOut`
    #
    #     * `Cancelling`
    #
    #   * **DocumentName**\: Specify name of the SSM document for which you
    #     want to see command execution results. For example, specify
    #     `AWS-RunPatchBaseline` to see command executions that used this
    #     SSM document to perform security patching operations on instances.
    #
    #   * **ExecutionStage**\: Specify one of the following values:
    #
    #     * `Executing`\: Returns a list of command executions that are
    #       currently still running.
    #
    #     * `Complete`\: Returns a list of command executions that have
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
    # applies to one instance. For example, if a user runs SendCommand
    # against three instances, then a command invocation is created for each
    # requested instance ID. A command invocation returns status and detail
    # information about a command you ran.
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
    #   The name of the invocation target. For EC2 instances this is the
    #   value for the aws:Name tag. For on-premises instances, this is the
    #   name of the instance.
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
    #   statuses, see [Understanding command statuses][1] in the *AWS
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
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-commands.html
    #   @return [String]
    #
    # @!attribute [rw] trace_output
    #   Gets the trace output sent by the agent.
    #   @return [String]
    #
    # @!attribute [rw] standard_output_url
    #   The URL to the plugin's StdOut file in Amazon S3, if the S3 bucket
    #   was defined for the parent command. For an invocation,
    #   StandardOutputUrl is populated if there is just one plugin defined
    #   for the command, and the S3 bucket was defined for the command.
    #   @return [String]
    #
    # @!attribute [rw] standard_error_url
    #   The URL to the plugin's StdErr file in Amazon S3, if the S3 bucket
    #   was defined for the parent command. For an invocation,
    #   StandardErrorUrl is populated if there is just one plugin defined
    #   for the command, and the S3 bucket was defined for the command.
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
    #   The status of this plugin. You can run a document with multiple
    #   plugins.
    #   @return [String]
    #
    # @!attribute [rw] status_details
    #   A detailed status of the plugin execution. StatusDetails includes
    #   more information than Status because it includes states resulting
    #   from error and concurrency control parameters. StatusDetails can
    #   show different results than Status. For more information about these
    #   statuses, see [Understanding command statuses][1] in the *AWS
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
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-commands.html
    #   @return [String]
    #
    # @!attribute [rw] response_code
    #   A numeric response code generated after running the plugin.
    #   @return [Integer]
    #
    # @!attribute [rw] response_start_date_time
    #   The time the plugin started running.
    #   @return [Time]
    #
    # @!attribute [rw] response_finish_date_time
    #   The time the plugin stopped running. Could stop prematurely if, for
    #   example, a cancel command was sent.
    #   @return [Time]
    #
    # @!attribute [rw] output
    #   Output of the plugin execution.
    #   @return [String]
    #
    # @!attribute [rw] standard_output_url
    #   The URL for the complete text written by the plugin to stdout in
    #   Amazon S3. If the S3 bucket for the command was not specified, then
    #   this string is empty.
    #   @return [String]
    #
    # @!attribute [rw] standard_error_url
    #   The URL for the complete text written by the plugin to stderr. If
    #   execution is not yet complete, then this string is empty.
    #   @return [String]
    #
    # @!attribute [rw] output_s3_region
    #   (Deprecated) You can no longer specify this parameter. The system
    #   ignores it. Instead, Systems Manager automatically determines the S3
    #   bucket region.
    #   @return [String]
    #
    # @!attribute [rw] output_s3_bucket_name
    #   The S3 bucket where the responses to the command executions should
    #   be stored. This was requested when issuing the command. For example,
    #   in the following response:
    #
    #   test\_folder/ab19cb99-a030-46dd-9dfc-8eSAMPLEPre-Fix/i-1234567876543/awsrunShellScript
    #
    #   test\_folder is the name of the S3 bucket;
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
    #   test\_folder is the name of the S3 bucket;
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
    # the PatchSeverity, Classification, and so on.
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

    # You specified too many custom compliance types. You can specify a
    # maximum of 10 different types.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ComplianceTypeCountLimitExceededException AWS API Documentation
    #
    class ComplianceTypeCountLimitExceededException < Struct.new(
      :message)
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
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] description
    #   A user-defined description of the resource that you want to register
    #   with Systems Manager.
    #
    #   Do not enter personally identifiable information in this field.
    #   @return [String]
    #
    # @!attribute [rw] default_instance_name
    #   The name of the registered, managed instance as it will appear in
    #   the Systems Manager console or when you use the AWS command line
    #   tools to list Systems Manager resources.
    #
    #   Do not enter personally identifiable information in this field.
    #   @return [String]
    #
    # @!attribute [rw] iam_role
    #   The Amazon Identity and Access Management (IAM) role that you want
    #   to assign to the managed instance. This IAM role must provide
    #   AssumeRole permissions for the Systems Manager service principal
    #   `ssm.amazonaws.com`. For more information, see [Create an IAM
    #   service role for a hybrid environment][1] in the *AWS Systems
    #   Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-service-role.html
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
    # @!attribute [rw] tags
    #   Optional metadata that you assign to a resource. Tags enable you to
    #   categorize a resource in different ways, such as by purpose, owner,
    #   or environment. For example, you might want to tag an activation to
    #   identify which servers or virtual machines (VMs) in your on-premises
    #   environment you intend to activate. In this case, you could specify
    #   the following key name/value pairs:
    #
    #   * `Key=OS,Value=Windows`
    #
    #   * `Key=Environment,Value=Production`
    #
    #   When you install SSM Agent on your on-premises servers and VMs, you
    #   specify an activation ID and code. When you specify the activation
    #   ID and code, tags assigned to the activation are automatically
    #   applied to the on-premises servers or VMs.
    #
    #   You can't add tags to or delete tags from an existing activation.
    #   You can tag your on-premises servers and VMs after they connect to
    #   Systems Manager for the first time and are assigned a managed
    #   instance ID. This means they are listed in the AWS Systems Manager
    #   console with an ID that is prefixed with "mi-". For information
    #   about how to add tags to your managed instances, see
    #   AddTagsToResource. For information about how to remove tags from
    #   your managed instances, see RemoveTagsFromResource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateActivationRequest AWS API Documentation
    #
    class CreateActivationRequest < Struct.new(
      :description,
      :default_instance_name,
      :iam_role,
      :registration_limit,
      :expiration_date,
      :tags)
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
    #             name: "DocumentARN", # required
    #             instance_id: "InstanceId",
    #             parameters: {
    #               "ParameterName" => ["ParameterValue"],
    #             },
    #             automation_target_parameter_name: "AutomationTargetParameterName",
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
    #             max_errors: "MaxErrors",
    #             max_concurrency: "MaxConcurrency",
    #             compliance_severity: "CRITICAL", # accepts CRITICAL, HIGH, MEDIUM, LOW, UNSPECIFIED
    #             sync_compliance: "AUTO", # accepts AUTO, MANUAL
    #             apply_only_at_cron_interval: false,
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

    # Describes the association of a Systems Manager SSM document and an
    # instance.
    #
    # @note When making an API call, you may pass CreateAssociationBatchRequestEntry
    #   data as a hash:
    #
    #       {
    #         name: "DocumentARN", # required
    #         instance_id: "InstanceId",
    #         parameters: {
    #           "ParameterName" => ["ParameterValue"],
    #         },
    #         automation_target_parameter_name: "AutomationTargetParameterName",
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
    #         max_errors: "MaxErrors",
    #         max_concurrency: "MaxConcurrency",
    #         compliance_severity: "CRITICAL", # accepts CRITICAL, HIGH, MEDIUM, LOW, UNSPECIFIED
    #         sync_compliance: "AUTO", # accepts AUTO, MANUAL
    #         apply_only_at_cron_interval: false,
    #       }
    #
    # @!attribute [rw] name
    #   The name of the SSM document that contains the configuration
    #   information for the instance. You can specify Command or Automation
    #   documents.
    #
    #   You can specify AWS-predefined documents, documents you created, or
    #   a document that is shared with you from another account.
    #
    #   For SSM documents that are shared with you from other AWS accounts,
    #   you must specify the complete SSM document ARN, in the following
    #   format:
    #
    #   `arn:aws:ssm:region:account-id:document/document-name `
    #
    #   For example:
    #
    #   `arn:aws:ssm:us-east-2:12345678912:document/My-Shared-Document`
    #
    #   For AWS-predefined documents and SSM documents you created in your
    #   account, you only need to specify the document name. For example,
    #   `AWS-ApplyPatchBaseline` or `My-Document`.
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
    # @!attribute [rw] automation_target_parameter_name
    #   Specify the target for the association. This target is required for
    #   associations that use an Automation document and target resources by
    #   using rate controls.
    #   @return [String]
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
    #   An S3 bucket where you want to store the results of this request.
    #   @return [Types::InstanceAssociationOutputLocation]
    #
    # @!attribute [rw] association_name
    #   Specify a descriptive name for the association.
    #   @return [String]
    #
    # @!attribute [rw] max_errors
    #   The number of errors that are allowed before the system stops
    #   sending requests to run the association on additional targets. You
    #   can specify either an absolute number of errors, for example 10, or
    #   a percentage of the target set, for example 10%. If you specify 3,
    #   for example, the system stops sending requests when the fourth error
    #   is received. If you specify 0, then the system stops sending
    #   requests after the first error is returned. If you run an
    #   association on 50 instances and set MaxError to 10%, then the system
    #   stops sending the request when the sixth error is received.
    #
    #   Executions that are already running an association when MaxErrors is
    #   reached are allowed to complete, but some of these executions may
    #   fail as well. If you need to ensure that there won't be more than
    #   max-errors failed executions, set MaxConcurrency to 1 so that
    #   executions proceed one at a time.
    #   @return [String]
    #
    # @!attribute [rw] max_concurrency
    #   The maximum number of targets allowed to run the association at the
    #   same time. You can specify a number, for example 10, or a percentage
    #   of the target set, for example 10%. The default value is 100%, which
    #   means all targets run the association at the same time.
    #
    #   If a new instance starts and attempts to run an association while
    #   Systems Manager is running MaxConcurrency associations, the
    #   association is allowed to run. During the next association interval,
    #   the new instance will process its association within the limit
    #   specified for MaxConcurrency.
    #   @return [String]
    #
    # @!attribute [rw] compliance_severity
    #   The severity level to assign to the association.
    #   @return [String]
    #
    # @!attribute [rw] sync_compliance
    #   The mode for generating association compliance. You can specify
    #   `AUTO` or `MANUAL`. In `AUTO` mode, the system uses the status of
    #   the association execution to determine the compliance status. If the
    #   association execution runs successfully, then the association is
    #   `COMPLIANT`. If the association execution doesn't run successfully,
    #   the association is `NON-COMPLIANT`.
    #
    #   In `MANUAL` mode, you must specify the `AssociationId` as a
    #   parameter for the PutComplianceItems API action. In this case,
    #   compliance data is not managed by State Manager. It is managed by
    #   your direct call to the PutComplianceItems API action.
    #
    #   By default, all associations use `AUTO` mode.
    #   @return [String]
    #
    # @!attribute [rw] apply_only_at_cron_interval
    #   By default, when you create a new associations, the system runs it
    #   immediately after it is created and then according to the schedule
    #   you specified. Specify this option if you don't want an association
    #   to run immediately after you create it.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateAssociationBatchRequestEntry AWS API Documentation
    #
    class CreateAssociationBatchRequestEntry < Struct.new(
      :name,
      :instance_id,
      :parameters,
      :automation_target_parameter_name,
      :document_version,
      :targets,
      :schedule_expression,
      :output_location,
      :association_name,
      :max_errors,
      :max_concurrency,
      :compliance_severity,
      :sync_compliance,
      :apply_only_at_cron_interval)
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
    #         name: "DocumentARN", # required
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
    #         automation_target_parameter_name: "AutomationTargetParameterName",
    #         max_errors: "MaxErrors",
    #         max_concurrency: "MaxConcurrency",
    #         compliance_severity: "CRITICAL", # accepts CRITICAL, HIGH, MEDIUM, LOW, UNSPECIFIED
    #         sync_compliance: "AUTO", # accepts AUTO, MANUAL
    #         apply_only_at_cron_interval: false,
    #       }
    #
    # @!attribute [rw] name
    #   The name of the SSM document that contains the configuration
    #   information for the instance. You can specify Command or Automation
    #   documents.
    #
    #   You can specify AWS-predefined documents, documents you created, or
    #   a document that is shared with you from another account.
    #
    #   For SSM documents that are shared with you from other AWS accounts,
    #   you must specify the complete SSM document ARN, in the following
    #   format:
    #
    #   `arn:partition:ssm:region:account-id:document/document-name `
    #
    #   For example:
    #
    #   `arn:aws:ssm:us-east-2:12345678912:document/My-Shared-Document`
    #
    #   For AWS-predefined documents and SSM documents you created in your
    #   account, you only need to specify the document name. For example,
    #   `AWS-ApplyPatchBaseline` or `My-Document`.
    #   @return [String]
    #
    # @!attribute [rw] document_version
    #   The document version you want to associate with the target(s). Can
    #   be a specific version or the default version.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The instance ID.
    #
    #   <note markdown="1"> `InstanceId` has been deprecated. To specify an instance ID for an
    #   association, use the `Targets` parameter. Requests that include the
    #   parameter `InstanceID` with SSM documents that use schema version
    #   2.0 or later will fail. In addition, if you use the parameter
    #   `InstanceId`, you cannot use the parameters `AssociationName`,
    #   `DocumentVersion`, `MaxErrors`, `MaxConcurrency`, `OutputLocation`,
    #   or `ScheduleExpression`. To use these parameters, you must use the
    #   `Targets` parameter.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters for the runtime configuration of the document.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] targets
    #   The targets for the association. You can target instances by using
    #   tags, AWS Resource Groups, all instances in an AWS account, or
    #   individual instance IDs. For more information about choosing targets
    #   for an association, see [Using targets and rate controls with State
    #   Manager associations][1] in the *AWS Systems Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-state-manager-targets-and-rate-controls.html
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] schedule_expression
    #   A cron expression when the association will be applied to the
    #   target(s).
    #   @return [String]
    #
    # @!attribute [rw] output_location
    #   An S3 bucket where you want to store the output details of the
    #   request.
    #   @return [Types::InstanceAssociationOutputLocation]
    #
    # @!attribute [rw] association_name
    #   Specify a descriptive name for the association.
    #   @return [String]
    #
    # @!attribute [rw] automation_target_parameter_name
    #   Specify the target for the association. This target is required for
    #   associations that use an Automation document and target resources by
    #   using rate controls.
    #   @return [String]
    #
    # @!attribute [rw] max_errors
    #   The number of errors that are allowed before the system stops
    #   sending requests to run the association on additional targets. You
    #   can specify either an absolute number of errors, for example 10, or
    #   a percentage of the target set, for example 10%. If you specify 3,
    #   for example, the system stops sending requests when the fourth error
    #   is received. If you specify 0, then the system stops sending
    #   requests after the first error is returned. If you run an
    #   association on 50 instances and set MaxError to 10%, then the system
    #   stops sending the request when the sixth error is received.
    #
    #   Executions that are already running an association when MaxErrors is
    #   reached are allowed to complete, but some of these executions may
    #   fail as well. If you need to ensure that there won't be more than
    #   max-errors failed executions, set MaxConcurrency to 1 so that
    #   executions proceed one at a time.
    #   @return [String]
    #
    # @!attribute [rw] max_concurrency
    #   The maximum number of targets allowed to run the association at the
    #   same time. You can specify a number, for example 10, or a percentage
    #   of the target set, for example 10%. The default value is 100%, which
    #   means all targets run the association at the same time.
    #
    #   If a new instance starts and attempts to run an association while
    #   Systems Manager is running MaxConcurrency associations, the
    #   association is allowed to run. During the next association interval,
    #   the new instance will process its association within the limit
    #   specified for MaxConcurrency.
    #   @return [String]
    #
    # @!attribute [rw] compliance_severity
    #   The severity level to assign to the association.
    #   @return [String]
    #
    # @!attribute [rw] sync_compliance
    #   The mode for generating association compliance. You can specify
    #   `AUTO` or `MANUAL`. In `AUTO` mode, the system uses the status of
    #   the association execution to determine the compliance status. If the
    #   association execution runs successfully, then the association is
    #   `COMPLIANT`. If the association execution doesn't run successfully,
    #   the association is `NON-COMPLIANT`.
    #
    #   In `MANUAL` mode, you must specify the `AssociationId` as a
    #   parameter for the PutComplianceItems API action. In this case,
    #   compliance data is not managed by State Manager. It is managed by
    #   your direct call to the PutComplianceItems API action.
    #
    #   By default, all associations use `AUTO` mode.
    #   @return [String]
    #
    # @!attribute [rw] apply_only_at_cron_interval
    #   By default, when you create a new associations, the system runs it
    #   immediately after it is created and then according to the schedule
    #   you specified. Specify this option if you don't want an association
    #   to run immediately after you create it.
    #   @return [Boolean]
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
      :association_name,
      :automation_target_parameter_name,
      :max_errors,
      :max_concurrency,
      :compliance_severity,
      :sync_compliance,
      :apply_only_at_cron_interval)
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
    #         requires: [
    #           {
    #             name: "DocumentARN", # required
    #             version: "DocumentVersion",
    #           },
    #         ],
    #         attachments: [
    #           {
    #             key: "SourceUrl", # accepts SourceUrl, S3FileUrl, AttachmentReference
    #             values: ["AttachmentsSourceValue"],
    #             name: "AttachmentIdentifier",
    #           },
    #         ],
    #         name: "DocumentName", # required
    #         version_name: "DocumentVersionName",
    #         document_type: "Command", # accepts Command, Policy, Automation, Session, Package, ApplicationConfiguration, ApplicationConfigurationSchema, DeploymentStrategy, ChangeCalendar
    #         document_format: "YAML", # accepts YAML, JSON, TEXT
    #         target_type: "TargetType",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] content
    #   The content for the new SSM document in JSON or YAML format. We
    #   recommend storing the contents for your new document in an external
    #   JSON or YAML file and referencing the file in a command.
    #
    #   For examples, see the following topics in the *AWS Systems Manager
    #   User Guide*.
    #
    #   * [Create an SSM document (AWS API)][1]
    #
    #   * [Create an SSM document (AWS CLI)][2]
    #
    #   * [Create an SSM document (API)][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/create-ssm-document-api.html
    #   [2]: https://docs.aws.amazon.com/systems-manager/latest/userguide/create-ssm-document-cli.html
    #   @return [String]
    #
    # @!attribute [rw] requires
    #   A list of SSM documents required by a document. This parameter is
    #   used exclusively by AWS AppConfig. When a user creates an AppConfig
    #   configuration in an SSM document, the user must also specify a
    #   required document for validation purposes. In this case, an
    #   `ApplicationConfiguration` document requires an
    #   `ApplicationConfigurationSchema` document for validation purposes.
    #   For more information, see [AWS AppConfig][1] in the *AWS Systems
    #   Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/appconfig.html
    #   @return [Array<Types::DocumentRequires>]
    #
    # @!attribute [rw] attachments
    #   A list of key and value pairs that describe attachments to a version
    #   of a document.
    #   @return [Array<Types::AttachmentsSource>]
    #
    # @!attribute [rw] name
    #   A name for the Systems Manager document.
    #
    #   You can't use the following strings as document name prefixes.
    #   These are reserved by AWS for use as document name prefixes:
    #
    #    * `aws-`
    #
    #   * `amazon`
    #
    #   * `amzn`
    #   @return [String]
    #
    # @!attribute [rw] version_name
    #   An optional field specifying the version of the artifact you are
    #   creating with the document. For example, "Release 12, Update 6".
    #   This value is unique across all versions of a document, and cannot
    #   be changed.
    #   @return [String]
    #
    # @!attribute [rw] document_type
    #   The type of document to create.
    #   @return [String]
    #
    # @!attribute [rw] document_format
    #   Specify the document format for the request. The document format can
    #   be JSON, YAML, or TEXT. JSON is the default format.
    #   @return [String]
    #
    # @!attribute [rw] target_type
    #   Specify a target type to define the kinds of resources the document
    #   can run on. For example, to run a document on EC2 instances, specify
    #   the following value: /AWS::EC2::Instance. If you specify a value of
    #   '/' the document can run on all types of resources. If you don't
    #   specify a value, the document can't run on any resources. For a
    #   list of valid resource types, see [AWS resource and property types
    #   reference][1] in the *AWS CloudFormation User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Optional metadata that you assign to a resource. Tags enable you to
    #   categorize a resource in different ways, such as by purpose, owner,
    #   or environment. For example, you might want to tag an SSM document
    #   to identify the types of targets or the environment where it will
    #   run. In this case, you could specify the following key name/value
    #   pairs:
    #
    #   * `Key=OS,Value=Windows`
    #
    #   * `Key=Environment,Value=Production`
    #
    #   <note markdown="1"> To add tags to an existing SSM document, use the AddTagsToResource
    #   action.
    #
    #    </note>
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateDocumentRequest AWS API Documentation
    #
    class CreateDocumentRequest < Struct.new(
      :content,
      :requires,
      :attachments,
      :name,
      :version_name,
      :document_type,
      :document_format,
      :target_type,
      :tags)
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
    #         start_date: "MaintenanceWindowStringDateTime",
    #         end_date: "MaintenanceWindowStringDateTime",
    #         schedule: "MaintenanceWindowSchedule", # required
    #         schedule_timezone: "MaintenanceWindowTimezone",
    #         duration: 1, # required
    #         cutoff: 1, # required
    #         allow_unassociated_targets: false, # required
    #         client_token: "ClientToken",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   The name of the maintenance window.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description for the maintenance window. We recommend
    #   specifying a description to help you organize your maintenance
    #   windows.
    #   @return [String]
    #
    # @!attribute [rw] start_date
    #   The date and time, in ISO-8601 Extended format, for when you want
    #   the maintenance window to become active. StartDate allows you to
    #   delay activation of the maintenance window until the specified
    #   future date.
    #   @return [String]
    #
    # @!attribute [rw] end_date
    #   The date and time, in ISO-8601 Extended format, for when you want
    #   the maintenance window to become inactive. EndDate allows you to set
    #   a date and time in the future when the maintenance window will no
    #   longer run.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   The schedule of the maintenance window in the form of a cron or rate
    #   expression.
    #   @return [String]
    #
    # @!attribute [rw] schedule_timezone
    #   The time zone that the scheduled maintenance window executions are
    #   based on, in Internet Assigned Numbers Authority (IANA) format. For
    #   example: "America/Los\_Angeles", "etc/UTC", or "Asia/Seoul".
    #   For more information, see the [Time Zone Database][1] on the IANA
    #   website.
    #
    #
    #
    #   [1]: https://www.iana.org/time-zones
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   The duration of the maintenance window in hours.
    #   @return [Integer]
    #
    # @!attribute [rw] cutoff
    #   The number of hours before the end of the maintenance window that
    #   Systems Manager stops scheduling new tasks for execution.
    #   @return [Integer]
    #
    # @!attribute [rw] allow_unassociated_targets
    #   Enables a maintenance window task to run on managed instances, even
    #   if you have not registered those instances as targets. If enabled,
    #   then you must specify the unregistered instances (by instance ID)
    #   when you register a task with the maintenance window.
    #
    #   If you don't enable this option, then you must specify
    #   previously-registered targets when you register a task with the
    #   maintenance window.
    #   @return [Boolean]
    #
    # @!attribute [rw] client_token
    #   User-provided idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Optional metadata that you assign to a resource. Tags enable you to
    #   categorize a resource in different ways, such as by purpose, owner,
    #   or environment. For example, you might want to tag a maintenance
    #   window to identify the type of tasks it will run, the types of
    #   targets, and the environment it will run in. In this case, you could
    #   specify the following key name/value pairs:
    #
    #   * `Key=TaskType,Value=AgentUpdate`
    #
    #   * `Key=OS,Value=Windows`
    #
    #   * `Key=Environment,Value=Production`
    #
    #   <note markdown="1"> To add tags to an existing maintenance window, use the
    #   AddTagsToResource action.
    #
    #    </note>
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateMaintenanceWindowRequest AWS API Documentation
    #
    class CreateMaintenanceWindowRequest < Struct.new(
      :name,
      :description,
      :start_date,
      :end_date,
      :schedule,
      :schedule_timezone,
      :duration,
      :cutoff,
      :allow_unassociated_targets,
      :client_token,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] window_id
    #   The ID of the created maintenance window.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateMaintenanceWindowResult AWS API Documentation
    #
    class CreateMaintenanceWindowResult < Struct.new(
      :window_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateOpsItemRequest
    #   data as a hash:
    #
    #       {
    #         description: "OpsItemDescription", # required
    #         operational_data: {
    #           "OpsItemDataKey" => {
    #             value: "OpsItemDataValueString",
    #             type: "SearchableString", # accepts SearchableString, String
    #           },
    #         },
    #         notifications: [
    #           {
    #             arn: "String",
    #           },
    #         ],
    #         priority: 1,
    #         related_ops_items: [
    #           {
    #             ops_item_id: "String", # required
    #           },
    #         ],
    #         source: "OpsItemSource", # required
    #         title: "OpsItemTitle", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         category: "OpsItemCategory",
    #         severity: "OpsItemSeverity",
    #       }
    #
    # @!attribute [rw] description
    #   Information about the OpsItem.
    #   @return [String]
    #
    # @!attribute [rw] operational_data
    #   Operational data is custom data that provides useful reference
    #   details about the OpsItem. For example, you can specify log files,
    #   error strings, license keys, troubleshooting tips, or other relevant
    #   data. You enter operational data as key-value pairs. The key has a
    #   maximum length of 128 characters. The value has a maximum size of 20
    #   KB.
    #
    #   Operational data keys *can't* begin with the following: amazon,
    #   aws, amzn, ssm, /amazon, /aws, /amzn, /ssm.
    #
    #   You can choose to make the data searchable by other users in the
    #   account or you can restrict search access. Searchable data means
    #   that all users with access to the OpsItem Overview page (as provided
    #   by the DescribeOpsItems API action) can view and search on the
    #   specified data. Operational data that is not searchable is only
    #   viewable by users who have access to the OpsItem (as provided by the
    #   GetOpsItem API action).
    #
    #   Use the `/aws/resources` key in OperationalData to specify a related
    #   resource in the request. Use the `/aws/automations` key in
    #   OperationalData to associate an Automation runbook with the OpsItem.
    #   To view AWS CLI example commands that use these keys, see [Creating
    #   OpsItems manually][1] in the *AWS Systems Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-creating-OpsItems.html#OpsCenter-manually-create-OpsItems
    #   @return [Hash<String,Types::OpsItemDataValue>]
    #
    # @!attribute [rw] notifications
    #   The Amazon Resource Name (ARN) of an SNS topic where notifications
    #   are sent when this OpsItem is edited or changed.
    #   @return [Array<Types::OpsItemNotification>]
    #
    # @!attribute [rw] priority
    #   The importance of this OpsItem in relation to other OpsItems in the
    #   system.
    #   @return [Integer]
    #
    # @!attribute [rw] related_ops_items
    #   One or more OpsItems that share something in common with the current
    #   OpsItems. For example, related OpsItems can include OpsItems with
    #   similar error messages, impacted resources, or statuses for the
    #   impacted resource.
    #   @return [Array<Types::RelatedOpsItem>]
    #
    # @!attribute [rw] source
    #   The origin of the OpsItem, such as Amazon EC2 or Systems Manager.
    #
    #   <note markdown="1"> The source name can't contain the following strings: aws, amazon,
    #   and amzn.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] title
    #   A short heading that describes the nature of the OpsItem and the
    #   impacted resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Optional metadata that you assign to a resource. You can restrict
    #   access to OpsItems by using an inline IAM policy that specifies
    #   tags. For more information, see [Getting started with OpsCenter][1]
    #   in the *AWS Systems Manager User Guide*.
    #
    #   Tags use a key-value pair. For example:
    #
    #   `Key=Department,Value=Finance`
    #
    #   <note markdown="1"> To add tags to an existing OpsItem, use the AddTagsToResource
    #   action.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-getting-started.html#OpsCenter-getting-started-user-permissions
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] category
    #   Specify a category to assign to an OpsItem.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   Specify a severity to assign to an OpsItem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateOpsItemRequest AWS API Documentation
    #
    class CreateOpsItemRequest < Struct.new(
      :description,
      :operational_data,
      :notifications,
      :priority,
      :related_ops_items,
      :source,
      :title,
      :tags,
      :category,
      :severity)
      include Aws::Structure
    end

    # @!attribute [rw] ops_item_id
    #   The ID of the OpsItem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateOpsItemResponse AWS API Documentation
    #
    class CreateOpsItemResponse < Struct.new(
      :ops_item_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreatePatchBaselineRequest
    #   data as a hash:
    #
    #       {
    #         operating_system: "WINDOWS", # accepts WINDOWS, AMAZON_LINUX, AMAZON_LINUX_2, UBUNTU, REDHAT_ENTERPRISE_LINUX, SUSE, CENTOS, ORACLE_LINUX, DEBIAN
    #         name: "BaselineName", # required
    #         global_filters: {
    #           patch_filters: [ # required
    #             {
    #               key: "PATCH_SET", # required, accepts PATCH_SET, PRODUCT, PRODUCT_FAMILY, CLASSIFICATION, MSRC_SEVERITY, PATCH_ID, SECTION, PRIORITY, SEVERITY
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
    #                     key: "PATCH_SET", # required, accepts PATCH_SET, PRODUCT, PRODUCT_FAMILY, CLASSIFICATION, MSRC_SEVERITY, PATCH_ID, SECTION, PRIORITY, SEVERITY
    #                     values: ["PatchFilterValue"], # required
    #                   },
    #                 ],
    #               },
    #               compliance_level: "CRITICAL", # accepts CRITICAL, HIGH, MEDIUM, LOW, INFORMATIONAL, UNSPECIFIED
    #               approve_after_days: 1,
    #               approve_until_date: "PatchStringDateTime",
    #               enable_non_security: false,
    #             },
    #           ],
    #         },
    #         approved_patches: ["PatchId"],
    #         approved_patches_compliance_level: "CRITICAL", # accepts CRITICAL, HIGH, MEDIUM, LOW, INFORMATIONAL, UNSPECIFIED
    #         approved_patches_enable_non_security: false,
    #         rejected_patches: ["PatchId"],
    #         rejected_patches_action: "ALLOW_AS_DEPENDENCY", # accepts ALLOW_AS_DEPENDENCY, BLOCK
    #         description: "BaselineDescription",
    #         sources: [
    #           {
    #             name: "PatchSourceName", # required
    #             products: ["PatchSourceProduct"], # required
    #             configuration: "PatchSourceConfiguration", # required
    #           },
    #         ],
    #         client_token: "ClientToken",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
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
    #   A set of global filters used to include patches in the baseline.
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
    #   and rejected patches, see [About package name formats for approved
    #   and rejected patch lists][1] in the *AWS Systems Manager User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html
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
    #   and rejected patches, see [About package name formats for approved
    #   and rejected patch lists][1] in the *AWS Systems Manager User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] rejected_patches_action
    #   The action for Patch Manager to take on patches included in the
    #   RejectedPackages list.
    #
    #   * **ALLOW\_AS\_DEPENDENCY**\: A package in the Rejected patches list
    #     is installed only if it is a dependency of another package. It is
    #     considered compliant with the patch baseline, and its status is
    #     reported as *InstalledOther*. This is the default action if no
    #     option is specified.
    #
    #   * **BLOCK**\: Packages in the RejectedPatches list, and packages
    #     that include them as dependencies, are not installed under any
    #     circumstances. If a package was installed before it was added to
    #     the Rejected patches list, it is considered non-compliant with the
    #     patch baseline, and its status is reported as *InstalledRejected*.
    #   @return [String]
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
    # @!attribute [rw] tags
    #   Optional metadata that you assign to a resource. Tags enable you to
    #   categorize a resource in different ways, such as by purpose, owner,
    #   or environment. For example, you might want to tag a patch baseline
    #   to identify the severity level of patches it specifies and the
    #   operating system family it applies to. In this case, you could
    #   specify the following key name/value pairs:
    #
    #   * `Key=PatchSeverity,Value=Critical`
    #
    #   * `Key=OS,Value=Windows`
    #
    #   <note markdown="1"> To add tags to an existing patch baseline, use the AddTagsToResource
    #   action.
    #
    #    </note>
    #   @return [Array<Types::Tag>]
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
      :rejected_patches_action,
      :description,
      :sources,
      :client_token,
      :tags)
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
    #         s3_destination: {
    #           bucket_name: "ResourceDataSyncS3BucketName", # required
    #           prefix: "ResourceDataSyncS3Prefix",
    #           sync_format: "JsonSerDe", # required, accepts JsonSerDe
    #           region: "ResourceDataSyncS3Region", # required
    #           awskms_key_arn: "ResourceDataSyncAWSKMSKeyARN",
    #           destination_data_sharing: {
    #             destination_data_sharing_type: "ResourceDataSyncDestinationDataSharingType",
    #           },
    #         },
    #         sync_type: "ResourceDataSyncType",
    #         sync_source: {
    #           source_type: "ResourceDataSyncSourceType", # required
    #           aws_organizations_source: {
    #             organization_source_type: "ResourceDataSyncOrganizationSourceType", # required
    #             organizational_units: [
    #               {
    #                 organizational_unit_id: "ResourceDataSyncOrganizationalUnitId",
    #               },
    #             ],
    #           },
    #           source_regions: ["ResourceDataSyncSourceRegion"], # required
    #           include_future_regions: false,
    #         },
    #       }
    #
    # @!attribute [rw] sync_name
    #   A name for the configuration.
    #   @return [String]
    #
    # @!attribute [rw] s3_destination
    #   Amazon S3 configuration details for the sync. This parameter is
    #   required if the `SyncType` value is SyncToDestination.
    #   @return [Types::ResourceDataSyncS3Destination]
    #
    # @!attribute [rw] sync_type
    #   Specify `SyncToDestination` to create a resource data sync that
    #   synchronizes data to an S3 bucket for Inventory. If you specify
    #   `SyncToDestination`, you must provide a value for `S3Destination`.
    #   Specify `SyncFromSource` to synchronize data from a single account
    #   and multiple Regions, or multiple AWS accounts and Regions, as
    #   listed in AWS Organizations for Explorer. If you specify
    #   `SyncFromSource`, you must provide a value for `SyncSource`. The
    #   default value is `SyncToDestination`.
    #   @return [String]
    #
    # @!attribute [rw] sync_source
    #   Specify information about the data sources to synchronize. This
    #   parameter is required if the `SyncType` value is SyncFromSource.
    #   @return [Types::ResourceDataSyncSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateResourceDataSyncRequest AWS API Documentation
    #
    class CreateResourceDataSyncRequest < Struct.new(
      :sync_name,
      :s3_destination,
      :sync_type,
      :sync_source)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateResourceDataSyncResult AWS API Documentation
    #
    class CreateResourceDataSyncResult < Aws::EmptyStructure; end

    # You have exceeded the limit for custom schemas. Delete one or more
    # custom schemas and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CustomSchemaCountLimitExceededException AWS API Documentation
    #
    class CustomSchemaCountLimitExceededException < Struct.new(
      :message)
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
    #         name: "DocumentARN",
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
    #         document_version: "DocumentVersion",
    #         version_name: "DocumentVersionName",
    #         force: false,
    #       }
    #
    # @!attribute [rw] name
    #   The name of the document.
    #   @return [String]
    #
    # @!attribute [rw] document_version
    #   The version of the document that you want to delete. If not
    #   provided, all versions of the document are deleted.
    #   @return [String]
    #
    # @!attribute [rw] version_name
    #   The version name of the document that you want to delete. If not
    #   provided, all versions of the document are deleted.
    #   @return [String]
    #
    # @!attribute [rw] force
    #   Some SSM document types require that you specify a `Force` flag
    #   before you can delete the document. For example, you must specify a
    #   `Force` flag to delete a document of type
    #   `ApplicationConfigurationSchema`. You can restrict access to the
    #   `Force` flag in an AWS Identity and Access Management (IAM) policy.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteDocumentRequest AWS API Documentation
    #
    class DeleteDocumentRequest < Struct.new(
      :name,
      :document_version,
      :version_name,
      :force)
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
    #   for a version greater than the disabled version.
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
    #   summary, see [Deleting custom inventory][1] in the *AWS Systems
    #   Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-inventory-custom.html#sysman-inventory-delete-summary
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
    #   The ID of the maintenance window to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteMaintenanceWindowRequest AWS API Documentation
    #
    class DeleteMaintenanceWindowRequest < Struct.new(
      :window_id)
      include Aws::Structure
    end

    # @!attribute [rw] window_id
    #   The ID of the deleted maintenance window.
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
    #         sync_type: "ResourceDataSyncType",
    #       }
    #
    # @!attribute [rw] sync_name
    #   The name of the configuration to delete.
    #   @return [String]
    #
    # @!attribute [rw] sync_type
    #   Specify the type of resource data sync to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteResourceDataSyncRequest AWS API Documentation
    #
    class DeleteResourceDataSyncRequest < Struct.new(
      :sync_name,
      :sync_type)
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
    #   The ID of the maintenance window the target should be removed from.
    #   @return [String]
    #
    # @!attribute [rw] window_target_id
    #   The ID of the target definition to remove.
    #   @return [String]
    #
    # @!attribute [rw] safe
    #   The system checks if the target is being referenced by a task. If
    #   the target is being referenced, the system returns an error and does
    #   not deregister the target from the maintenance window.
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
    #   The ID of the maintenance window the target was removed from.
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
    #   The ID of the maintenance window the task should be removed from.
    #   @return [String]
    #
    # @!attribute [rw] window_task_id
    #   The ID of the task to remove from the maintenance window.
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
    #   The ID of the maintenance window the task was removed from.
    #   @return [String]
    #
    # @!attribute [rw] window_task_id
    #   The ID of the task removed from the maintenance window.
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
    #         name: "DocumentARN",
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
    #   ListAssociations. To get a list of versions for a specific
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
    #             key: "DocumentNamePrefix", # required, accepts DocumentNamePrefix, ExecutionStatus, ExecutionId, ParentExecutionId, CurrentAction, StartTimeBefore, StartTimeAfter, AutomationType, TagKey
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
    # @!attribute [rw] account_sharing_info_list
    #   A list of AWS accounts where the current document is shared and the
    #   version shared with each account.
    #   @return [Array<Types::AccountSharingInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeDocumentPermissionResponse AWS API Documentation
    #
    class DescribeDocumentPermissionResponse < Struct.new(
      :account_ids,
      :account_sharing_info_list)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDocumentRequest
    #   data as a hash:
    #
    #       {
    #         name: "DocumentARN", # required
    #         document_version: "DocumentVersion",
    #         version_name: "DocumentVersionName",
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
    # @!attribute [rw] version_name
    #   An optional field specifying the version of the artifact associated
    #   with the document. For example, "Release 12, Update 6". This value
    #   is unique across all versions of a document, and cannot be changed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeDocumentRequest AWS API Documentation
    #
    class DescribeDocumentRequest < Struct.new(
      :name,
      :document_version,
      :version_name)
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
    #   method. Instead, use the `Filters` data type. `Filters` enables you
    #   to return instance information by filtering based on tags applied to
    #   managed instances.
    #
    #   <note markdown="1"> Attempting to use `InstanceInformationFilterList` and `Filters`
    #   leads to an exception error.
    #
    #    </note>
    #   @return [Array<Types::InstanceInformationFilter>]
    #
    # @!attribute [rw] filters
    #   One or more filters. Use a filter to return a more specific list of
    #   instances. You can filter based on tags applied to EC2 instances.
    #   Use this `Filters` data type instead of
    #   `InstanceInformationFilterList`, which is deprecated.
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
    #   An array of structures. Each entry in the array is a structure
    #   containing a Key, Value combination. Valid values for Key are
    #   `Classification` \| `KBId` \| `Severity` \| `State`.
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
    #   State (string, such as "INSTALLED" or "FAILED")
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
    #   The ID of the maintenance window execution the task is part of.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   The ID of the specific task in the maintenance window task that
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
    #   The ID of the maintenance window execution whose task executions
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
    #   The ID of the maintenance window whose executions should be
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
    #   Information about the maintenance window executions.
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

    # @note When making an API call, you may pass DescribeMaintenanceWindowScheduleRequest
    #   data as a hash:
    #
    #       {
    #         window_id: "MaintenanceWindowId",
    #         targets: [
    #           {
    #             key: "TargetKey",
    #             values: ["TargetValue"],
    #           },
    #         ],
    #         resource_type: "INSTANCE", # accepts INSTANCE, RESOURCE_GROUP
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
    # @!attribute [rw] window_id
    #   The ID of the maintenance window to retrieve information about.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The instance ID or key/value pair to retrieve information about.
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] resource_type
    #   The type of resource you want to retrieve information about. For
    #   example, "INSTANCE".
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters used to limit the range of results. For example, you can
    #   limit maintenance window executions to only those scheduled before
    #   or after a certain date and time.
    #   @return [Array<Types::PatchOrchestratorFilter>]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeMaintenanceWindowScheduleRequest AWS API Documentation
    #
    class DescribeMaintenanceWindowScheduleRequest < Struct.new(
      :window_id,
      :targets,
      :resource_type,
      :filters,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] scheduled_window_executions
    #   Information about maintenance window executions scheduled for the
    #   specified time range.
    #   @return [Array<Types::ScheduledWindowExecution>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You use this token
    #   in the next call.)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeMaintenanceWindowScheduleResult AWS API Documentation
    #
    class DescribeMaintenanceWindowScheduleResult < Struct.new(
      :scheduled_window_executions,
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
    #   The ID of the maintenance window whose targets should be retrieved.
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
    #   Information about the targets in the maintenance window.
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
    #   The ID of the maintenance window whose tasks should be retrieved.
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
    #   Information about the tasks in the maintenance window.
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

    # @note When making an API call, you may pass DescribeMaintenanceWindowsForTargetRequest
    #   data as a hash:
    #
    #       {
    #         targets: [ # required
    #           {
    #             key: "TargetKey",
    #             values: ["TargetValue"],
    #           },
    #         ],
    #         resource_type: "INSTANCE", # required, accepts INSTANCE, RESOURCE_GROUP
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] targets
    #   The instance ID or key/value pair to retrieve information about.
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] resource_type
    #   The type of resource you want to retrieve information about. For
    #   example, "INSTANCE".
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeMaintenanceWindowsForTargetRequest AWS API Documentation
    #
    class DescribeMaintenanceWindowsForTargetRequest < Struct.new(
      :targets,
      :resource_type,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] window_identities
    #   Information about the maintenance window targets and tasks an
    #   instance is associated with.
    #   @return [Array<Types::MaintenanceWindowIdentityForTarget>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You use this token
    #   in the next call.)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeMaintenanceWindowsForTargetResult AWS API Documentation
    #
    class DescribeMaintenanceWindowsForTargetResult < Struct.new(
      :window_identities,
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
    #   maintenance windows. Supported filter keys are **Name** and
    #   **Enabled**.
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
    #   Information about the maintenance windows.
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

    # @note When making an API call, you may pass DescribeOpsItemsRequest
    #   data as a hash:
    #
    #       {
    #         ops_item_filters: [
    #           {
    #             key: "Status", # required, accepts Status, CreatedBy, Source, Priority, Title, OpsItemId, CreatedTime, LastModifiedTime, OperationalData, OperationalDataKey, OperationalDataValue, ResourceId, AutomationId, Category, Severity
    #             values: ["OpsItemFilterValue"], # required
    #             operator: "Equal", # required, accepts Equal, Contains, GreaterThan, LessThan
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] ops_item_filters
    #   One or more filters to limit the response.
    #
    #   * Key: CreatedTime
    #
    #     Operations: GreaterThan, LessThan
    #
    #   * Key: LastModifiedBy
    #
    #     Operations: Contains, Equals
    #
    #   * Key: LastModifiedTime
    #
    #     Operations: GreaterThan, LessThan
    #
    #   * Key: Priority
    #
    #     Operations: Equals
    #
    #   * Key: Source
    #
    #     Operations: Contains, Equals
    #
    #   * Key: Status
    #
    #     Operations: Equals
    #
    #   * Key: Title
    #
    #     Operations: Contains
    #
    #   * Key: OperationalData*
    #
    #     Operations: Equals
    #
    #   * Key: OperationalDataKey
    #
    #     Operations: Equals
    #
    #   * Key: OperationalDataValue
    #
    #     Operations: Equals, Contains
    #
    #   * Key: OpsItemId
    #
    #     Operations: Equals
    #
    #   * Key: ResourceId
    #
    #     Operations: Contains
    #
    #   * Key: AutomationId
    #
    #     Operations: Equals
    #
    #   *If you filter the response by using the OperationalData operator,
    #   specify a key-value pair by using the following JSON format:
    #   \\\{"key":"key\_name","value":"a\_value"\\}
    #   @return [Array<Types::OpsItemFilter>]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeOpsItemsRequest AWS API Documentation
    #
    class DescribeOpsItemsRequest < Struct.new(
      :ops_item_filters,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of items to return. Use this token to get
    #   the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] ops_item_summaries
    #   A list of OpsItems.
    #   @return [Array<Types::OpsItemSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeOpsItemsResponse AWS API Documentation
    #
    class DescribeOpsItemsResponse < Struct.new(
      :next_token,
      :ops_item_summaries)
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
    #   This data type is deprecated. Instead, use `ParameterFilters`.
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
    #   The token to use when requesting the next set of items.
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
    # @!attribute [rw] instances_with_installed_pending_reboot_patches
    #   The number of instances with patches installed by Patch Manager that
    #   have not been rebooted after the patch installation. The status of
    #   these instances is NON\_COMPLIANT.
    #   @return [Integer]
    #
    # @!attribute [rw] instances_with_installed_rejected_patches
    #   The number of instances with patches installed that are specified in
    #   a RejectedPatches list. Patches with a status of
    #   *INSTALLED\_REJECTED* were typically installed before they were
    #   added to a RejectedPatches list.
    #
    #   <note markdown="1"> If ALLOW\_AS\_DEPENDENCY is the specified option for
    #   RejectedPatchesAction, the value of
    #   InstancesWithInstalledRejectedPatches will always be 0 (zero).
    #
    #    </note>
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
    # @!attribute [rw] instances_with_unreported_not_applicable_patches
    #   The number of instances with `NotApplicable` patches beyond the
    #   supported limit, which are not reported by name to Systems Manager
    #   Inventory.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribePatchGroupStateResult AWS API Documentation
    #
    class DescribePatchGroupStateResult < Struct.new(
      :instances,
      :instances_with_installed_patches,
      :instances_with_installed_other_patches,
      :instances_with_installed_pending_reboot_patches,
      :instances_with_installed_rejected_patches,
      :instances_with_missing_patches,
      :instances_with_failed_patches,
      :instances_with_not_applicable_patches,
      :instances_with_unreported_not_applicable_patches)
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

    # @note When making an API call, you may pass DescribePatchPropertiesRequest
    #   data as a hash:
    #
    #       {
    #         operating_system: "WINDOWS", # required, accepts WINDOWS, AMAZON_LINUX, AMAZON_LINUX_2, UBUNTU, REDHAT_ENTERPRISE_LINUX, SUSE, CENTOS, ORACLE_LINUX, DEBIAN
    #         property: "PRODUCT", # required, accepts PRODUCT, PRODUCT_FAMILY, CLASSIFICATION, MSRC_SEVERITY, PRIORITY, SEVERITY
    #         patch_set: "OS", # accepts OS, APPLICATION
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] operating_system
    #   The operating system type for which to list patches.
    #   @return [String]
    #
    # @!attribute [rw] property
    #   The patch property for which you want to view patch details.
    #   @return [String]
    #
    # @!attribute [rw] patch_set
    #   Indicates whether to list patches for the Windows operating system
    #   or for Microsoft applications. Not applicable for Linux operating
    #   systems.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribePatchPropertiesRequest AWS API Documentation
    #
    class DescribePatchPropertiesRequest < Struct.new(
      :operating_system,
      :property,
      :patch_set,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] properties
    #   A list of the properties for patches matching the filter request
    #   parameters.
    #   @return [Array<Hash<String,String>>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You use this token
    #   in the next call.)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribePatchPropertiesResult AWS API Documentation
    #
    class DescribePatchPropertiesResult < Struct.new(
      :properties,
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
    #   "Active".
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

    # The specified document already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DocumentAlreadyExists AWS API Documentation
    #
    class DocumentAlreadyExists < Struct.new(
      :message)
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
    # @!attribute [rw] default_version_name
    #   The default version of the artifact associated with the document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DocumentDefaultVersionDescription AWS API Documentation
    #
    class DocumentDefaultVersionDescription < Struct.new(
      :name,
      :default_version,
      :default_version_name)
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
    #   The hash type of the document. Valid values include `Sha256` or
    #   `Sha1`.
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
    # @!attribute [rw] version_name
    #   The version of the artifact associated with the document.
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
    # @!attribute [rw] status_information
    #   A message returned by AWS Systems Manager that explains the `Status`
    #   value. For example, a `Failed` status might be explained by the
    #   `StatusInformation` message, "The specified S3 bucket does not
    #   exist. Verify that the URL of the S3 bucket is correct."
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
    #   resource types, see [AWS resource and property types reference][1]
    #   in the *AWS CloudFormation User Guide*.
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
    # @!attribute [rw] attachments_information
    #   Details about the document attachments, including names, locations,
    #   sizes, and so on.
    #   @return [Array<Types::AttachmentInformation>]
    #
    # @!attribute [rw] requires
    #   A list of SSM documents required by a document. For example, an
    #   `ApplicationConfiguration` document requires an
    #   `ApplicationConfigurationSchema` document.
    #   @return [Array<Types::DocumentRequires>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DocumentDescription AWS API Documentation
    #
    class DocumentDescription < Struct.new(
      :sha_1,
      :hash,
      :hash_type,
      :name,
      :version_name,
      :owner,
      :created_date,
      :status,
      :status_information,
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
      :tags,
      :attachments_information,
      :requires)
      include Aws::Structure
    end

    # This data type is deprecated. Instead, use DocumentKeyValuesFilter.
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
    # @!attribute [rw] version_name
    #   An optional field specifying the version of the artifact associated
    #   with the document. For example, "Release 12, Update 6". This value
    #   is unique across all versions of a document, and cannot be changed.
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
    #   resource types, see [AWS resource and property types reference][1]
    #   in the *AWS CloudFormation User Guide*.
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
    # @!attribute [rw] requires
    #   A list of SSM documents required by a document. For example, an
    #   `ApplicationConfiguration` document requires an
    #   `ApplicationConfigurationSchema` document.
    #   @return [Array<Types::DocumentRequires>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DocumentIdentifier AWS API Documentation
    #
    class DocumentIdentifier < Struct.new(
      :name,
      :owner,
      :version_name,
      :platform_types,
      :document_version,
      :document_type,
      :schema_version,
      :document_format,
      :target_type,
      :tags,
      :requires)
      include Aws::Structure
    end

    # One or more filters. Use a filter to return a more specific list of
    # documents.
    #
    # For keys, you can specify one or more tags that have been applied to a
    # document.
    #
    # Other valid values include `Owner`, `Name`, `PlatformTypes`,
    # `DocumentType`, and `TargetType`.
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
    # `Key=tag:tagName,Values=valueName`.
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

    # You can have at most 500 active Systems Manager documents.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DocumentLimitExceeded AWS API Documentation
    #
    class DocumentLimitExceeded < Struct.new(
      :message)
      include Aws::Structure
    end

    # Parameters specified in a System Manager document that run on the
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

    # The document cannot be shared with more AWS user accounts. You can
    # share a document with a maximum of 20 accounts. You can publicly share
    # up to five documents. If you need to increase this limit, contact AWS
    # Support.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DocumentPermissionLimit AWS API Documentation
    #
    class DocumentPermissionLimit < Struct.new(
      :message)
      include Aws::Structure
    end

    # An SSM document required by the current document.
    #
    # @note When making an API call, you may pass DocumentRequires
    #   data as a hash:
    #
    #       {
    #         name: "DocumentARN", # required
    #         version: "DocumentVersion",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the required SSM document. The name can be an Amazon
    #   Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The document version required by the current document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DocumentRequires AWS API Documentation
    #
    class DocumentRequires < Struct.new(
      :name,
      :version)
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
    # @!attribute [rw] version_name
    #   The version of the artifact associated with the document. For
    #   example, "Release 12, Update 6". This value is unique across all
    #   versions of a document, and cannot be changed.
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
    # @!attribute [rw] status
    #   The status of the Systems Manager document, such as `Creating`,
    #   `Active`, `Failed`, and `Deleting`.
    #   @return [String]
    #
    # @!attribute [rw] status_information
    #   A message returned by AWS Systems Manager that explains the `Status`
    #   value. For example, a `Failed` status might be explained by the
    #   `StatusInformation` message, "The specified S3 bucket does not
    #   exist. Verify that the URL of the S3 bucket is correct."
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DocumentVersionInfo AWS API Documentation
    #
    class DocumentVersionInfo < Struct.new(
      :name,
      :document_version,
      :version_name,
      :created_date,
      :is_default_version,
      :document_format,
      :status,
      :status_information)
      include Aws::Structure
    end

    # The document has too many versions. Delete one or more document
    # versions and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DocumentVersionLimitExceeded AWS API Documentation
    #
    class DocumentVersionLimitExceeded < Struct.new(
      :message)
      include Aws::Structure
    end

    # Error returned when the ID specified for a resource, such as a
    # maintenance window or Patch baseline, doesn't exist.
    #
    # For information about resource quotas in Systems Manager, see [Systems
    # Manager service quotas][1] in the *AWS General Reference*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/general/latest/gr/ssm.html#limits_ssm
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DoesNotExistException AWS API Documentation
    #
    class DoesNotExistException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The content of the association document matches another document.
    # Change the content of the document and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DuplicateDocumentContent AWS API Documentation
    #
    class DuplicateDocumentContent < Struct.new(
      :message)
      include Aws::Structure
    end

    # The version name has already been used in this document. Specify a
    # different version name, and then try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DuplicateDocumentVersionName AWS API Documentation
    #
    class DuplicateDocumentVersionName < Struct.new(
      :message)
      include Aws::Structure
    end

    # You cannot specify an instance ID in more than one association.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DuplicateInstanceId AWS API Documentation
    #
    class DuplicateInstanceId < Aws::EmptyStructure; end

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

    # You attempted to register a LAMBDA or STEP\_FUNCTIONS task in a region
    # where the corresponding service is not available.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/FeatureNotAvailableException AWS API Documentation
    #
    class FeatureNotAvailableException < Struct.new(
      :message)
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

    # @note When making an API call, you may pass GetCalendarStateRequest
    #   data as a hash:
    #
    #       {
    #         calendar_names: ["CalendarNameOrARN"], # required
    #         at_time: "ISO8601String",
    #       }
    #
    # @!attribute [rw] calendar_names
    #   The names or Amazon Resource Names (ARNs) of the Systems Manager
    #   documents that represent the calendar entries for which you want to
    #   get the state.
    #   @return [Array<String>]
    #
    # @!attribute [rw] at_time
    #   (Optional) The specific time for which you want to get calendar
    #   state information, in [ISO 8601][1] format. If you do not add
    #   `AtTime`, the current time is assumed.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/ISO_8601
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetCalendarStateRequest AWS API Documentation
    #
    class GetCalendarStateRequest < Struct.new(
      :calendar_names,
      :at_time)
      include Aws::Structure
    end

    # @!attribute [rw] state
    #   The state of the calendar. An `OPEN` calendar indicates that actions
    #   are allowed to proceed, and a `CLOSED` calendar indicates that
    #   actions are not allowed to proceed.
    #   @return [String]
    #
    # @!attribute [rw] at_time
    #   The time, as an [ISO 8601][1] string, that you specified in your
    #   command. If you did not specify a time, `GetCalendarState` uses the
    #   current time.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/ISO_8601
    #   @return [String]
    #
    # @!attribute [rw] next_transition_time
    #   The time, as an [ISO 8601][1] string, that the calendar state will
    #   change. If the current calendar state is `OPEN`,
    #   `NextTransitionTime` indicates when the calendar state changes to
    #   `CLOSED`, and vice-versa.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/ISO_8601
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetCalendarStateResponse AWS API Documentation
    #
    class GetCalendarStateResponse < Struct.new(
      :state,
      :at_time,
      :next_transition_time)
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
    #   managed instance can be an EC2 instance or an instance in your
    #   hybrid environment that is configured for Systems Manager.
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
    #   instance can be an EC2 instance or an instance in your hybrid
    #   environment that is configured for Systems Manager.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   The comment text for the command.
    #   @return [String]
    #
    # @!attribute [rw] document_name
    #   The name of the document that was run. For example,
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
    #   code is -1, then the command has not started running on the
    #   instance, or it was not received by the instance.
    #   @return [Integer]
    #
    # @!attribute [rw] execution_start_date_time
    #   The date and time the plugin started running. Date and time are
    #   written in ISO 8601 format. For example, June 7, 2017 is represented
    #   as 2017-06-7. The following sample AWS CLI command uses the
    #   `InvokedBefore` filter.
    #
    #   `aws ssm list-commands --filters
    #   key=InvokedBefore,value=2017-06-07T00:00:00Z`
    #
    #   If the plugin has not started to run, the string is empty.
    #   @return [String]
    #
    # @!attribute [rw] execution_elapsed_time
    #   Duration since ExecutionStartDateTime.
    #   @return [String]
    #
    # @!attribute [rw] execution_end_date_time
    #   The date and time the plugin was finished running. Date and time are
    #   written in ISO 8601 format. For example, June 7, 2017 is represented
    #   as 2017-06-7. The following sample AWS CLI command uses the
    #   `InvokedAfter` filter.
    #
    #   `aws ssm list-commands --filters
    #   key=InvokedAfter,value=2017-06-07T00:00:00Z`
    #
    #   If the plugin has not started to run, the string is empty.
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
    #   command statuses][1] in the *AWS Systems Manager User Guide*.
    #   StatusDetails can be one of the following values:
    #
    #   * Pending: The command has not been sent to the instance.
    #
    #   * In Progress: The command has been sent to the instance but has not
    #     reached a terminal state.
    #
    #   * Delayed: The system attempted to send the command to the target,
    #     but the target was not available. The instance might not be
    #     available because of network issues, because the instance was
    #     stopped, or for similar reasons. The system will try to send the
    #     command again.
    #
    #   * Success: The command or plugin ran successfully. This is a
    #     terminal state.
    #
    #   * Delivery Timed Out: The command was not delivered to the instance
    #     before the delivery timeout expired. Delivery timeouts do not
    #     count against the parent command's MaxErrors limit, but they do
    #     contribute to whether the parent command status is Success or
    #     Incomplete. This is a terminal state.
    #
    #   * Execution Timed Out: The command started to run on the instance,
    #     but the execution was not complete before the timeout expired.
    #     Execution timeouts count against the MaxErrors limit of the parent
    #     command. This is a terminal state.
    #
    #   * Failed: The command wasn't run successfully on the instance. For
    #     a plugin, this indicates that the result code was not zero. For a
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
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-commands.html
    #   @return [String]
    #
    # @!attribute [rw] standard_output_content
    #   The first 24,000 characters written by the plugin to stdout. If the
    #   command has not finished running, if ExecutionStatus is neither
    #   Succeeded nor Failed, then this string is empty.
    #   @return [String]
    #
    # @!attribute [rw] standard_output_url
    #   The URL for the complete text written by the plugin to stdout in
    #   Amazon S3. If an S3 bucket was not specified, then this string is
    #   empty.
    #   @return [String]
    #
    # @!attribute [rw] standard_error_content
    #   The first 8,000 characters written by the plugin to stderr. If the
    #   command has not finished running, then this string is empty.
    #   @return [String]
    #
    # @!attribute [rw] standard_error_url
    #   The URL for the complete text written by the plugin to stderr. If
    #   the command has not finished running, then this string is empty.
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
    #         operating_system: "WINDOWS", # accepts WINDOWS, AMAZON_LINUX, AMAZON_LINUX_2, UBUNTU, REDHAT_ENTERPRISE_LINUX, SUSE, CENTOS, ORACLE_LINUX, DEBIAN
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
    #         version_name: "DocumentVersionName",
    #         document_version: "DocumentVersion",
    #         document_format: "YAML", # accepts YAML, JSON, TEXT
    #       }
    #
    # @!attribute [rw] name
    #   The name of the Systems Manager document.
    #   @return [String]
    #
    # @!attribute [rw] version_name
    #   An optional field specifying the version of the artifact associated
    #   with the document. For example, "Release 12, Update 6". This value
    #   is unique across all versions of a document and can't be changed.
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
      :version_name,
      :document_version,
      :document_format)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the Systems Manager document.
    #   @return [String]
    #
    # @!attribute [rw] version_name
    #   The version of the artifact associated with the document. For
    #   example, "Release 12, Update 6". This value is unique across all
    #   versions of a document, and cannot be changed.
    #   @return [String]
    #
    # @!attribute [rw] document_version
    #   The document version.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Systems Manager document, such as `Creating`,
    #   `Active`, `Updating`, `Failed`, and `Deleting`.
    #   @return [String]
    #
    # @!attribute [rw] status_information
    #   A message returned by AWS Systems Manager that explains the `Status`
    #   value. For example, a `Failed` status might be explained by the
    #   `StatusInformation` message, "The specified S3 bucket does not
    #   exist. Verify that the URL of the S3 bucket is correct."
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
    # @!attribute [rw] requires
    #   A list of SSM documents required by a document. For example, an
    #   `ApplicationConfiguration` document requires an
    #   `ApplicationConfigurationSchema` document.
    #   @return [Array<Types::DocumentRequires>]
    #
    # @!attribute [rw] attachments_content
    #   A description of the document attachments, including names,
    #   locations, sizes, and so on.
    #   @return [Array<Types::AttachmentContent>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetDocumentResult AWS API Documentation
    #
    class GetDocumentResult < Struct.new(
      :name,
      :version_name,
      :document_version,
      :status,
      :status_information,
      :content,
      :document_type,
      :document_format,
      :requires,
      :attachments_content)
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
    #   The ID of the maintenance window execution that includes the task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetMaintenanceWindowExecutionRequest AWS API Documentation
    #
    class GetMaintenanceWindowExecutionRequest < Struct.new(
      :window_execution_id)
      include Aws::Structure
    end

    # @!attribute [rw] window_execution_id
    #   The ID of the maintenance window execution.
    #   @return [String]
    #
    # @!attribute [rw] task_ids
    #   The ID of the task executions from the maintenance window execution.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The status of the maintenance window execution.
    #   @return [String]
    #
    # @!attribute [rw] status_details
    #   The details explaining the Status. Only available for certain status
    #   values.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time the maintenance window started running.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time the maintenance window finished running.
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
    #   The ID of the maintenance window execution for which the task is a
    #   part.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   The ID of the specific task in the maintenance window task that
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
    #   The maintenance window execution ID.
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
    #   Retrieves the task type for a maintenance window. Task types include
    #   the following: LAMBDA, STEP\_FUNCTIONS, AUTOMATION, RUN\_COMMAND.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters used at the time that the task ran.
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
    #   The time that the task started running on the target.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time that the task finished running on the target.
    #   @return [Time]
    #
    # @!attribute [rw] owner_information
    #   User-provided value to be included in any CloudWatch events raised
    #   while running tasks for these targets in this maintenance window.
    #   @return [String]
    #
    # @!attribute [rw] window_target_id
    #   The maintenance window target ID.
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
    #   The ID of the maintenance window execution that includes the task.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   The ID of the specific task execution in the maintenance window task
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
    #   The ID of the maintenance window execution that includes the task.
    #   @return [String]
    #
    # @!attribute [rw] task_execution_id
    #   The ID of the specific task execution in the maintenance window task
    #   that was retrieved.
    #   @return [String]
    #
    # @!attribute [rw] task_arn
    #   The ARN of the task that ran.
    #   @return [String]
    #
    # @!attribute [rw] service_role
    #   The role that was assumed when running the task.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of task that was run.
    #   @return [String]
    #
    # @!attribute [rw] task_parameters
    #   The parameters passed to the task when it was run.
    #
    #   <note markdown="1"> `TaskParameters` has been deprecated. To specify parameters to pass
    #   to a task when it runs, instead use the `Parameters` option in the
    #   `TaskInvocationParameters` structure. For information about how
    #   Systems Manager handles these options for the supported maintenance
    #   window task types, see MaintenanceWindowTaskInvocationParameters.
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
    #   The ID of the maintenance window for which you want to retrieve
    #   information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetMaintenanceWindowRequest AWS API Documentation
    #
    class GetMaintenanceWindowRequest < Struct.new(
      :window_id)
      include Aws::Structure
    end

    # @!attribute [rw] window_id
    #   The ID of the created maintenance window.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the maintenance window.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the maintenance window.
    #   @return [String]
    #
    # @!attribute [rw] start_date
    #   The date and time, in ISO-8601 Extended format, for when the
    #   maintenance window is scheduled to become active. The maintenance
    #   window will not run before this specified time.
    #   @return [String]
    #
    # @!attribute [rw] end_date
    #   The date and time, in ISO-8601 Extended format, for when the
    #   maintenance window is scheduled to become inactive. The maintenance
    #   window will not run after this specified time.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   The schedule of the maintenance window in the form of a cron or rate
    #   expression.
    #   @return [String]
    #
    # @!attribute [rw] schedule_timezone
    #   The time zone that the scheduled maintenance window executions are
    #   based on, in Internet Assigned Numbers Authority (IANA) format. For
    #   example: "America/Los\_Angeles", "etc/UTC", or "Asia/Seoul".
    #   For more information, see the [Time Zone Database][1] on the IANA
    #   website.
    #
    #
    #
    #   [1]: https://www.iana.org/time-zones
    #   @return [String]
    #
    # @!attribute [rw] next_execution_time
    #   The next time the maintenance window will actually run, taking into
    #   account any specified times for the maintenance window to become
    #   active or inactive.
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   The duration of the maintenance window in hours.
    #   @return [Integer]
    #
    # @!attribute [rw] cutoff
    #   The number of hours before the end of the maintenance window that
    #   Systems Manager stops scheduling new tasks for execution.
    #   @return [Integer]
    #
    # @!attribute [rw] allow_unassociated_targets
    #   Whether targets must be registered with the maintenance window
    #   before tasks can be defined for those targets.
    #   @return [Boolean]
    #
    # @!attribute [rw] enabled
    #   Indicates whether the maintenance window is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] created_date
    #   The date the maintenance window was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_date
    #   The date the maintenance window was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetMaintenanceWindowResult AWS API Documentation
    #
    class GetMaintenanceWindowResult < Struct.new(
      :window_id,
      :name,
      :description,
      :start_date,
      :end_date,
      :schedule,
      :schedule_timezone,
      :next_execution_time,
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
    #   The maintenance window ID that includes the task to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] window_task_id
    #   The maintenance window task ID to retrieve.
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
    #   The retrieved maintenance window ID.
    #   @return [String]
    #
    # @!attribute [rw] window_task_id
    #   The retrieved maintenance window task ID.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The targets where the task should run.
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] task_arn
    #   The resource that the task used during execution. For RUN\_COMMAND
    #   and AUTOMATION task types, the TaskArn is the Systems Manager
    #   Document name/ARN. For LAMBDA tasks, the value is the function
    #   name/ARN. For STEP\_FUNCTIONS tasks, the value is the state machine
    #   ARN.
    #   @return [String]
    #
    # @!attribute [rw] service_role_arn
    #   The ARN of the IAM service role to use to publish Amazon Simple
    #   Notification Service (Amazon SNS) notifications for maintenance
    #   window Run Command tasks.
    #   @return [String]
    #
    # @!attribute [rw] task_type
    #   The type of task to run.
    #   @return [String]
    #
    # @!attribute [rw] task_parameters
    #   The parameters to pass to the task when it runs.
    #
    #   <note markdown="1"> `TaskParameters` has been deprecated. To specify parameters to pass
    #   to a task when it runs, instead use the `Parameters` option in the
    #   `TaskInvocationParameters` structure. For information about how
    #   Systems Manager handles these options for the supported maintenance
    #   window task types, see MaintenanceWindowTaskInvocationParameters.
    #
    #    </note>
    #   @return [Hash<String,Types::MaintenanceWindowTaskParameterValueExpression>]
    #
    # @!attribute [rw] task_invocation_parameters
    #   The parameters to pass to the task when it runs.
    #   @return [Types::MaintenanceWindowTaskInvocationParameters]
    #
    # @!attribute [rw] priority
    #   The priority of the task when it runs. The lower the number, the
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
    #   options for the supported maintenance window task types, see
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

    # @note When making an API call, you may pass GetOpsItemRequest
    #   data as a hash:
    #
    #       {
    #         ops_item_id: "OpsItemId", # required
    #       }
    #
    # @!attribute [rw] ops_item_id
    #   The ID of the OpsItem that you want to get.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetOpsItemRequest AWS API Documentation
    #
    class GetOpsItemRequest < Struct.new(
      :ops_item_id)
      include Aws::Structure
    end

    # @!attribute [rw] ops_item
    #   The OpsItem.
    #   @return [Types::OpsItem]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetOpsItemResponse AWS API Documentation
    #
    class GetOpsItemResponse < Struct.new(
      :ops_item)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetOpsSummaryRequest
    #   data as a hash:
    #
    #       {
    #         sync_name: "ResourceDataSyncName",
    #         filters: [
    #           {
    #             key: "OpsFilterKey", # required
    #             values: ["OpsFilterValue"], # required
    #             type: "Equal", # accepts Equal, NotEqual, BeginWith, LessThan, GreaterThan, Exists
    #           },
    #         ],
    #         aggregators: [
    #           {
    #             aggregator_type: "OpsAggregatorType",
    #             type_name: "OpsDataTypeName",
    #             attribute_name: "OpsDataAttributeName",
    #             values: {
    #               "OpsAggregatorValueKey" => "OpsAggregatorValue",
    #             },
    #             filters: [
    #               {
    #                 key: "OpsFilterKey", # required
    #                 values: ["OpsFilterValue"], # required
    #                 type: "Equal", # accepts Equal, NotEqual, BeginWith, LessThan, GreaterThan, Exists
    #               },
    #             ],
    #             aggregators: {
    #               # recursive OpsAggregatorList
    #             },
    #           },
    #         ],
    #         result_attributes: [
    #           {
    #             type_name: "OpsDataTypeName", # required
    #           },
    #         ],
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] sync_name
    #   Specify the name of a resource data sync to get.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Optional filters used to scope down the returned OpsItems.
    #   @return [Array<Types::OpsFilter>]
    #
    # @!attribute [rw] aggregators
    #   Optional aggregators that return counts of OpsItems based on one or
    #   more expressions.
    #   @return [Array<Types::OpsAggregator>]
    #
    # @!attribute [rw] result_attributes
    #   The OpsItem data type to return.
    #   @return [Array<Types::OpsResultAttribute>]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetOpsSummaryRequest AWS API Documentation
    #
    class GetOpsSummaryRequest < Struct.new(
      :sync_name,
      :filters,
      :aggregators,
      :result_attributes,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] entities
    #   The list of aggregated and filtered OpsItems.
    #   @return [Array<Types::OpsEntity>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. Use this token to get
    #   the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetOpsSummaryResult AWS API Documentation
    #
    class GetOpsSummaryResult < Struct.new(
      :entities,
      :next_token)
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
    #   `/a`, then the user can also access `/a/b`. Even if a user has
    #   explicitly been denied access in IAM for parameter `/a/b`, they can
    #   still call the GetParametersByPath API action recursively for `/a`
    #   and view `/a/b`.
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
    #   during an execution.
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
    #         operating_system: "WINDOWS", # accepts WINDOWS, AMAZON_LINUX, AMAZON_LINUX_2, UBUNTU, REDHAT_ENTERPRISE_LINUX, SUSE, CENTOS, ORACLE_LINUX, DEBIAN
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
    # @!attribute [rw] rejected_patches_action
    #   The action specified to take on patches included in the
    #   RejectedPatches list. A patch can be allowed only if it is a
    #   dependency of another package, or blocked entirely along with
    #   packages that include it as a dependency.
    #   @return [String]
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
      :rejected_patches_action,
      :patch_groups,
      :created_date,
      :modified_date,
      :description,
      :sources)
      include Aws::Structure
    end

    # The request body of the GetServiceSetting API action.
    #
    # @note When making an API call, you may pass GetServiceSettingRequest
    #   data as a hash:
    #
    #       {
    #         setting_id: "ServiceSettingId", # required
    #       }
    #
    # @!attribute [rw] setting_id
    #   The ID of the service setting to get. The setting ID can be
    #   `/ssm/parameter-store/default-parameter-tier`,
    #   `/ssm/parameter-store/high-throughput-enabled`, or
    #   `/ssm/managed-instance/activation-tier`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetServiceSettingRequest AWS API Documentation
    #
    class GetServiceSettingRequest < Struct.new(
      :setting_id)
      include Aws::Structure
    end

    # The query result body of the GetServiceSetting API action.
    #
    # @!attribute [rw] service_setting
    #   The query result of the current service setting.
    #   @return [Types::ServiceSetting]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetServiceSettingResult AWS API Documentation
    #
    class GetServiceSettingResult < Struct.new(
      :service_setting)
      include Aws::Structure
    end

    # A hierarchy can have a maximum of 15 levels. For more information, see
    # [Requirements and constraints for parameter names][1] in the *AWS
    # Systems Manager User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-parameter-name-constraints.html
    #
    # @!attribute [rw] message
    #   A hierarchy can have a maximum of 15 levels. For more information,
    #   see [Requirements and constraints for parameter names][1] in the
    #   *AWS Systems Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-parameter-name-constraints.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/HierarchyLevelLimitExceededException AWS API Documentation
    #
    class HierarchyLevelLimitExceededException < Struct.new(
      :message)
      include Aws::Structure
    end

    # Parameter Store does not support changing a parameter type in a
    # hierarchy. For example, you can't change a parameter from a `String`
    # type to a `SecureString` type. You must create a new, unique
    # parameter.
    #
    # @!attribute [rw] message
    #   Parameter Store does not support changing a parameter type in a
    #   hierarchy. For example, you can't change a parameter from a
    #   `String` type to a `SecureString` type. You must create a new,
    #   unique parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/HierarchyTypeMismatchException AWS API Documentation
    #
    class HierarchyTypeMismatchException < Struct.new(
      :message)
      include Aws::Structure
    end

    # Error returned when an idempotent operation is retried and the
    # parameters don't match the original call to the API with the same
    # idempotency token.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/IdempotentParameterMismatch AWS API Documentation
    #
    class IdempotentParameterMismatch < Struct.new(
      :message)
      include Aws::Structure
    end

    # There is a conflict in the policies specified for this parameter. You
    # can't, for example, specify two Expiration policies for a parameter.
    # Review your policies, and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/IncompatiblePolicyException AWS API Documentation
    #
    class IncompatiblePolicyException < Struct.new(
      :message)
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

    # An S3 bucket where you want to store the results of this request.
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
    #   An S3 bucket where you want to store the results of this request.
    #   @return [Types::S3OutputLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InstanceAssociationOutputLocation AWS API Documentation
    #
    class InstanceAssociationOutputLocation < Struct.new(
      :s3_location)
      include Aws::Structure
    end

    # The URL of S3 bucket where you want to store the results of this
    # request.
    #
    # @!attribute [rw] s3_output_url
    #   The URL of S3 bucket where you want to store the results of this
    #   request.
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
    #   The association document versions.
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
    #   The date the instance association ran.
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
    #   A URL for an S3 bucket where you want to store the results of this
    #   request.
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
    #   Indicates whether the latest version of SSM Agent is running on your
    #   Linux Managed Instance. This field does not indicate whether or not
    #   the latest version is installed on Windows managed instances,
    #   because some older versions of Windows Server use the EC2Config
    #   service to process SSM requests.
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
    #   return the IAM role for EC2 instances.
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
    #   The date the association was last run.
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
    # @!attribute [rw] install_override_list
    #   An https URL or an Amazon S3 path-style URL to a list of patches to
    #   be installed. This patch installation list, which you maintain in an
    #   S3 bucket in YAML format and specify in the SSM document
    #   `AWS-RunPatchBaseline`, overrides the patches specified by the
    #   default patch baseline.
    #
    #   For more information about the `InstallOverrideList` parameter, see
    #   [About the SSM document AWS-RunPatchBaseline][1] in the *AWS Systems
    #   Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-about-aws-runpatchbaseline.html
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
    # @!attribute [rw] installed_pending_reboot_count
    #   The number of patches installed by Patch Manager since the last time
    #   the instance was rebooted.
    #   @return [Integer]
    #
    # @!attribute [rw] installed_rejected_count
    #   The number of instances with patches installed that are specified in
    #   a RejectedPatches list. Patches with a status of *InstalledRejected*
    #   were typically installed before they were added to a RejectedPatches
    #   list.
    #
    #   <note markdown="1"> If ALLOW\_AS\_DEPENDENCY is the specified option for
    #   RejectedPatchesAction, the value of InstalledRejectedCount will
    #   always be 0 (zero).
    #
    #    </note>
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
    # @!attribute [rw] unreported_not_applicable_count
    #   The number of patches beyond the supported limit of
    #   `NotApplicableCount` that are not reported by name to Systems
    #   Manager Inventory.
    #   @return [Integer]
    #
    # @!attribute [rw] not_applicable_count
    #   The number of patches from the patch baseline that aren't
    #   applicable for the instance and therefore aren't installed on the
    #   instance. This number may be truncated if the list of patch names is
    #   very large. The number of patches beyond this limit are reported in
    #   `UnreportedNotApplicableCount`.
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
    # @!attribute [rw] last_no_reboot_install_operation_time
    #   The time of the last attempt to patch the instance with `NoReboot`
    #   specified as the reboot option.
    #   @return [Time]
    #
    # @!attribute [rw] reboot_option
    #   Indicates the reboot option specified in the patch baseline.
    #
    #   <note markdown="1"> Reboot options apply to `Install` operations only. Reboots are not
    #   attempted for Patch Manager `Scan` operations.
    #
    #    </note>
    #
    #   * **RebootIfNeeded**\: Patch Manager tries to reboot the instance if
    #     it installed any patches, or if any patches are detected with a
    #     status of `InstalledPendingReboot`.
    #
    #   * **NoReboot**\: Patch Manager attempts to install missing packages
    #     without trying to reboot the system. Patches installed with this
    #     option are assigned a status of `InstalledPendingReboot`. These
    #     patches might not be in effect until a reboot is performed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InstancePatchState AWS API Documentation
    #
    class InstancePatchState < Struct.new(
      :instance_id,
      :patch_group,
      :baseline_id,
      :snapshot_id,
      :install_override_list,
      :owner_information,
      :installed_count,
      :installed_other_count,
      :installed_pending_reboot_count,
      :installed_rejected_count,
      :missing_count,
      :failed_count,
      :unreported_not_applicable_count,
      :not_applicable_count,
      :operation_start_time,
      :operation_end_time,
      :operation,
      :last_no_reboot_install_operation_time,
      :reboot_option)
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

    # An error occurred on the server side.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InternalServerError AWS API Documentation
    #
    class InternalServerError < Struct.new(
      :message)
      include Aws::Structure
    end

    # The activation is not valid. The activation might have been deleted,
    # or the ActivationId and the ActivationCode do not match.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidActivation AWS API Documentation
    #
    class InvalidActivation < Struct.new(
      :message)
      include Aws::Structure
    end

    # The activation ID is not valid. Verify the you entered the correct
    # ActivationId or ActivationCode and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidActivationId AWS API Documentation
    #
    class InvalidActivationId < Struct.new(
      :message)
      include Aws::Structure
    end

    # The specified aggregator is not valid for inventory groups. Verify
    # that the aggregator uses a valid inventory type such as
    # `AWS:Application` or `AWS:InstanceInformation`.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidAggregatorException AWS API Documentation
    #
    class InvalidAggregatorException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The request does not meet the regular expression requirement.
    #
    # @!attribute [rw] message
    #   The request does not meet the regular expression requirement.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidAllowedPatternException AWS API Documentation
    #
    class InvalidAllowedPatternException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The association is not valid or does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidAssociation AWS API Documentation
    #
    class InvalidAssociation < Struct.new(
      :message)
      include Aws::Structure
    end

    # The version you specified is not valid. Use ListAssociationVersions to
    # view all versions of an association according to the association ID.
    # Or, use the `$LATEST` parameter to view the latest version of the
    # association.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidAssociationVersion AWS API Documentation
    #
    class InvalidAssociationVersion < Struct.new(
      :message)
      include Aws::Structure
    end

    # The supplied parameters for invoking the specified Automation document
    # are incorrect. For example, they may not match the set of parameters
    # permitted for the specified Automation document.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidAutomationExecutionParametersException AWS API Documentation
    #
    class InvalidAutomationExecutionParametersException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The signal is not valid for the current Automation execution.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidAutomationSignalException AWS API Documentation
    #
    class InvalidAutomationSignalException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The specified update status operation is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidAutomationStatusUpdateException AWS API Documentation
    #
    class InvalidAutomationStatusUpdateException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidCommandId AWS API Documentation
    #
    class InvalidCommandId < Aws::EmptyStructure; end

    # One or more of the parameters specified for the delete operation is
    # not valid. Verify all parameters and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidDeleteInventoryParametersException AWS API Documentation
    #
    class InvalidDeleteInventoryParametersException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The ID specified for the delete operation does not exist or is not
    # valid. Verify the ID and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidDeletionIdException AWS API Documentation
    #
    class InvalidDeletionIdException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The specified document does not exist.
    #
    # @!attribute [rw] message
    #   The document does not exist or the document is not available to the
    #   user. This exception can be issued by CreateAssociation,
    #   CreateAssociationBatch, DeleteAssociation, DeleteDocument,
    #   DescribeAssociation, DescribeDocument, GetDocument, SendCommand, or
    #   UpdateAssociationStatus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidDocument AWS API Documentation
    #
    class InvalidDocument < Struct.new(
      :message)
      include Aws::Structure
    end

    # The content for the document is not valid.
    #
    # @!attribute [rw] message
    #   A description of the validation error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidDocumentContent AWS API Documentation
    #
    class InvalidDocumentContent < Struct.new(
      :message)
      include Aws::Structure
    end

    # You attempted to delete a document while it is still shared. You must
    # stop sharing the document before you can delete it.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidDocumentOperation AWS API Documentation
    #
    class InvalidDocumentOperation < Struct.new(
      :message)
      include Aws::Structure
    end

    # The version of the document schema is not supported.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidDocumentSchemaVersion AWS API Documentation
    #
    class InvalidDocumentSchemaVersion < Struct.new(
      :message)
      include Aws::Structure
    end

    # The document type is not valid. Valid document types are described in
    # the `DocumentType` property.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidDocumentType AWS API Documentation
    #
    class InvalidDocumentType < Struct.new(
      :message)
      include Aws::Structure
    end

    # The document version is not valid or does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidDocumentVersion AWS API Documentation
    #
    class InvalidDocumentVersion < Struct.new(
      :message)
      include Aws::Structure
    end

    # The filter name is not valid. Verify the you entered the correct name
    # and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidFilter AWS API Documentation
    #
    class InvalidFilter < Struct.new(
      :message)
      include Aws::Structure
    end

    # The specified key is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidFilterKey AWS API Documentation
    #
    class InvalidFilterKey < Aws::EmptyStructure; end

    # The specified filter option is not valid. Valid options are Equals and
    # BeginsWith. For Path filter, valid options are Recursive and OneLevel.
    #
    # @!attribute [rw] message
    #   The specified filter option is not valid. Valid options are Equals
    #   and BeginsWith. For Path filter, valid options are Recursive and
    #   OneLevel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidFilterOption AWS API Documentation
    #
    class InvalidFilterOption < Struct.new(
      :message)
      include Aws::Structure
    end

    # The filter value is not valid. Verify the value and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidFilterValue AWS API Documentation
    #
    class InvalidFilterValue < Struct.new(
      :message)
      include Aws::Structure
    end

    # The following problems can cause this exception:
    #
    # You do not have permission to access the instance.
    #
    # SSM Agent is not running. Verify that SSM Agent is running.
    #
    # SSM Agent is not registered with the SSM endpoint. Try reinstalling
    # SSM Agent.
    #
    # The instance is not in valid state. Valid states are: Running,
    # Pending, Stopped, Stopping. Invalid states are: Shutting-down and
    # Terminated.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidInstanceId AWS API Documentation
    #
    class InvalidInstanceId < Struct.new(
      :message)
      include Aws::Structure
    end

    # The specified filter value is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidInstanceInformationFilterValue AWS API Documentation
    #
    class InvalidInstanceInformationFilterValue < Struct.new(
      :message)
      include Aws::Structure
    end

    # The specified inventory group is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidInventoryGroupException AWS API Documentation
    #
    class InvalidInventoryGroupException < Struct.new(
      :message)
      include Aws::Structure
    end

    # You specified invalid keys or values in the `Context` attribute for
    # `InventoryItem`. Verify the keys and values, and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidInventoryItemContextException AWS API Documentation
    #
    class InvalidInventoryItemContextException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The request is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidInventoryRequestException AWS API Documentation
    #
    class InvalidInventoryRequestException < Struct.new(
      :message)
      include Aws::Structure
    end

    # One or more content items is not valid.
    #
    # @!attribute [rw] type_name
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidItemContentException AWS API Documentation
    #
    class InvalidItemContentException < Struct.new(
      :type_name,
      :message)
      include Aws::Structure
    end

    # The query key ID is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidKeyId AWS API Documentation
    #
    class InvalidKeyId < Struct.new(
      :message)
      include Aws::Structure
    end

    # The specified token is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidNextToken AWS API Documentation
    #
    class InvalidNextToken < Struct.new(
      :message)
      include Aws::Structure
    end

    # One or more configuration items is not valid. Verify that a valid
    # Amazon Resource Name (ARN) was provided for an Amazon SNS topic.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidNotificationConfig AWS API Documentation
    #
    class InvalidNotificationConfig < Struct.new(
      :message)
      include Aws::Structure
    end

    # The delete inventory option specified is not valid. Verify the option
    # and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidOptionException AWS API Documentation
    #
    class InvalidOptionException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The S3 bucket does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidOutputFolder AWS API Documentation
    #
    class InvalidOutputFolder < Aws::EmptyStructure; end

    # The output location is not valid or does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidOutputLocation AWS API Documentation
    #
    class InvalidOutputLocation < Aws::EmptyStructure; end

    # You must specify values for all required parameters in the Systems
    # Manager document. You can only supply values to parameters defined in
    # the Systems Manager document.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidParameters AWS API Documentation
    #
    class InvalidParameters < Struct.new(
      :message)
      include Aws::Structure
    end

    # The permission type is not supported. *Share* is the only supported
    # permission type.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidPermissionType AWS API Documentation
    #
    class InvalidPermissionType < Struct.new(
      :message)
      include Aws::Structure
    end

    # The plugin name is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidPluginName AWS API Documentation
    #
    class InvalidPluginName < Aws::EmptyStructure; end

    # A policy attribute or its value is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidPolicyAttributeException AWS API Documentation
    #
    class InvalidPolicyAttributeException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The policy type is not supported. Parameter Store supports the
    # following policy types: Expiration, ExpirationNotification, and
    # NoChangeNotification.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidPolicyTypeException AWS API Documentation
    #
    class InvalidPolicyTypeException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The resource ID is not valid. Verify that you entered the correct ID
    # and try again.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidResourceId AWS API Documentation
    #
    class InvalidResourceId < Aws::EmptyStructure; end

    # The resource type is not valid. For example, if you are attempting to
    # tag an instance, the instance must be a registered, managed instance.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidResourceType AWS API Documentation
    #
    class InvalidResourceType < Aws::EmptyStructure; end

    # The specified inventory item result attribute is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidResultAttributeException AWS API Documentation
    #
    class InvalidResultAttributeException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The role name can't contain invalid characters. Also verify that you
    # specified an IAM role for notifications that includes the required
    # trust policy. For information about configuring the IAM role for Run
    # Command notifications, see [Configuring Amazon SNS Notifications for
    # Run Command][1] in the *AWS Systems Manager User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/rc-sns-notifications.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidRole AWS API Documentation
    #
    class InvalidRole < Struct.new(
      :message)
      include Aws::Structure
    end

    # The schedule is invalid. Verify your cron or rate expression and try
    # again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidSchedule AWS API Documentation
    #
    class InvalidSchedule < Struct.new(
      :message)
      include Aws::Structure
    end

    # The target is not valid or does not exist. It might not be configured
    # for Systems Manager or you might not have permission to perform the
    # operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidTarget AWS API Documentation
    #
    class InvalidTarget < Struct.new(
      :message)
      include Aws::Structure
    end

    # The parameter type name is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidTypeNameException AWS API Documentation
    #
    class InvalidTypeNameException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The update is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidUpdate AWS API Documentation
    #
    class InvalidUpdate < Struct.new(
      :message)
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
    #   this summary, see [Understanding the delete inventory summary][1] in
    #   the *AWS Systems Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-inventory-custom.html#sysman-inventory-delete
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
    #   The type of filter.
    #
    #   <note markdown="1"> The `Exists` filter must be used with aggregators. For more
    #   information, see [Aggregating inventory data][1] in the *AWS Systems
    #   Manager User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-inventory-aggregate.html
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

    # The command ID and instance ID you specified did not match any
    # invocations. Verify the command ID and the instance ID and try again.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvocationDoesNotExist AWS API Documentation
    #
    class InvocationDoesNotExist < Aws::EmptyStructure; end

    # The inventory item has invalid content.
    #
    # @!attribute [rw] type_name
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ItemContentMismatchException AWS API Documentation
    #
    class ItemContentMismatchException < Struct.new(
      :type_name,
      :message)
      include Aws::Structure
    end

    # The inventory item size has exceeded the size limit.
    #
    # @!attribute [rw] type_name
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ItemSizeLimitExceededException AWS API Documentation
    #
    class ItemSizeLimitExceededException < Struct.new(
      :type_name,
      :message)
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
    #   the label to the latest version.
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
    #   parameter label requirements, see [Labeling parameters][1] in the
    #   *AWS Systems Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-paramstore-labels.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] parameter_version
    #   The version of the parameter that has been labeled.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/LabelParameterVersionResult AWS API Documentation
    #
    class LabelParameterVersionResult < Struct.new(
      :invalid_labels,
      :parameter_version)
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
    #             key: "InstanceId", # required, accepts InstanceId, Name, AssociationId, AssociationStatusName, LastExecutedBefore, LastExecutedAfter, AssociationName, ResourceGroupName
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
    #         name: "DocumentARN", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the document. You can specify an Amazon Resource Name
    #   (ARN).
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
    #   This data type is deprecated. Instead, use `Filters`.
    #   @return [Array<Types::DocumentFilter>]
    #
    # @!attribute [rw] filters
    #   One or more DocumentKeyValuesFilter objects. Use a filter to return
    #   a more specific list of results. For keys, you can specify one or
    #   more key-value pair tags that have been applied to a document. Other
    #   valid keys include `Owner`, `Name`, `PlatformTypes`, `DocumentType`,
    #   and `TargetType`. For example, to return documents you own use
    #   `Key=Owner,Values=Self`. To specify a custom key-value pair, use the
    #   format `Key=tag:tagName,Values=valueName`.
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
    #         sync_type: "ResourceDataSyncType",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] sync_type
    #   View a list of resource data syncs according to the sync type.
    #   Specify `SyncToDestination` to view resource data syncs that
    #   synchronize data to an Amazon S3 buckets. Specify `SyncFromSource`
    #   to view resource data syncs from AWS Organizations or from multiple
    #   AWS Regions.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListResourceDataSyncRequest AWS API Documentation
    #
    class ListResourceDataSyncRequest < Struct.new(
      :sync_type,
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
    #         resource_type: "Document", # required, accepts Document, ManagedInstance, MaintenanceWindow, Parameter, PatchBaseline, OpsItem
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

    # Information about an S3 bucket to write instance-level logs to.
    #
    # <note markdown="1"> `LoggingInfo` has been deprecated. To specify an S3 bucket to contain
    # logs, instead use the `OutputS3BucketName` and `OutputS3KeyPrefix`
    # options in the `TaskInvocationParameters` structure. For information
    # about how Systems Manager handles these options for the supported
    # maintenance window task types, see
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
    #   The name of an S3 bucket where execution logs are stored .
    #   @return [String]
    #
    # @!attribute [rw] s3_key_prefix
    #   (Optional) The S3 bucket subfolder.
    #   @return [String]
    #
    # @!attribute [rw] s3_region
    #   The Region where the S3 bucket is located.
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
    #   options for the supported maintenance window task types, see
    #   MaintenanceWindowTaskInvocationParameters.
    #
    #    `TaskParameters` has been deprecated. To specify parameters to pass
    #   to a task when it runs, instead use the `Parameters` option in the
    #   `TaskInvocationParameters` structure. For information about how
    #   Systems Manager handles these options for the supported maintenance
    #   window task types, see MaintenanceWindowTaskInvocationParameters.
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

    # Describes the information about an execution of a maintenance window.
    #
    # @!attribute [rw] window_id
    #   The ID of the maintenance window.
    #   @return [String]
    #
    # @!attribute [rw] window_execution_id
    #   The ID of the maintenance window execution.
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

    # Information about a task execution performed as part of a maintenance
    # window execution.
    #
    # @!attribute [rw] window_execution_id
    #   The ID of the maintenance window execution that ran the task.
    #   @return [String]
    #
    # @!attribute [rw] task_execution_id
    #   The ID of the specific task execution in the maintenance window
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
    #   The ARN of the task that ran.
    #   @return [String]
    #
    # @!attribute [rw] task_type
    #   The type of task that ran.
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
    # target as part of a task execution performed as part of a maintenance
    # window execution.
    #
    # @!attribute [rw] window_execution_id
    #   The ID of the maintenance window execution that ran the task.
    #   @return [String]
    #
    # @!attribute [rw] task_execution_id
    #   The ID of the specific task execution in the maintenance window
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
    #   run.
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
    #   registered with the maintenance window. This was also included in
    #   any CloudWatch events raised during the task invocation.
    #   @return [String]
    #
    # @!attribute [rw] window_target_id
    #   The ID of the target definition in this maintenance window the
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

    # Filter used in the request. Supported filter keys are Name and
    # Enabled.
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

    # Information about the maintenance window.
    #
    # @!attribute [rw] window_id
    #   The ID of the maintenance window.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the maintenance window.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the maintenance window.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Indicates whether the maintenance window is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] duration
    #   The duration of the maintenance window in hours.
    #   @return [Integer]
    #
    # @!attribute [rw] cutoff
    #   The number of hours before the end of the maintenance window that
    #   Systems Manager stops scheduling new tasks for execution.
    #   @return [Integer]
    #
    # @!attribute [rw] schedule
    #   The schedule of the maintenance window in the form of a cron or rate
    #   expression.
    #   @return [String]
    #
    # @!attribute [rw] schedule_timezone
    #   The time zone that the scheduled maintenance window executions are
    #   based on, in Internet Assigned Numbers Authority (IANA) format.
    #   @return [String]
    #
    # @!attribute [rw] end_date
    #   The date and time, in ISO-8601 Extended format, for when the
    #   maintenance window is scheduled to become inactive.
    #   @return [String]
    #
    # @!attribute [rw] start_date
    #   The date and time, in ISO-8601 Extended format, for when the
    #   maintenance window is scheduled to become active.
    #   @return [String]
    #
    # @!attribute [rw] next_execution_time
    #   The next time the maintenance window will actually run, taking into
    #   account any specified times for the maintenance window to become
    #   active or inactive.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/MaintenanceWindowIdentity AWS API Documentation
    #
    class MaintenanceWindowIdentity < Struct.new(
      :window_id,
      :name,
      :description,
      :enabled,
      :duration,
      :cutoff,
      :schedule,
      :schedule_timezone,
      :end_date,
      :start_date,
      :next_execution_time)
      include Aws::Structure
    end

    # The maintenance window to which the specified target belongs.
    #
    # @!attribute [rw] window_id
    #   The ID of the maintenance window.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the maintenance window.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/MaintenanceWindowIdentityForTarget AWS API Documentation
    #
    class MaintenanceWindowIdentityForTarget < Struct.new(
      :window_id,
      :name)
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
    # maintenance window task types, see
    # MaintenanceWindowTaskInvocationParameters.
    #
    #  `TaskParameters` has been deprecated. To specify parameters to pass to
    # a task when it runs, instead use the `Parameters` option in the
    # `TaskInvocationParameters` structure. For information about how
    # Systems Manager handles these options for the supported maintenance
    # window task types, see MaintenanceWindowTaskInvocationParameters.
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
    # maintenance window task types, see
    # MaintenanceWindowTaskInvocationParameters.
    #
    #  `TaskParameters` has been deprecated. To specify parameters to pass to
    # a task when it runs, instead use the `Parameters` option in the
    # `TaskInvocationParameters` structure. For information about how
    # Systems Manager handles these options for the supported maintenance
    # window task types, see MaintenanceWindowTaskInvocationParameters.
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
    #         cloud_watch_output_config: {
    #           cloud_watch_log_group_name: "CloudWatchLogGroupName",
    #           cloud_watch_output_enabled: false,
    #         },
    #         document_hash: "DocumentHash",
    #         document_hash_type: "Sha256", # accepts Sha256, Sha1
    #         document_version: "DocumentVersion",
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
    #   Information about the commands to run.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_output_config
    #   Configuration options for sending command output to CloudWatch Logs.
    #   @return [Types::CloudWatchOutputConfig]
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
    # @!attribute [rw] document_version
    #   The SSM document version to use in the request. You can specify
    #   $DEFAULT, $LATEST, or a specific version number. If you run commands
    #   by using the AWS CLI, then you must escape the first two options by
    #   using a backslash. If you specify a version number, then you don't
    #   need to use the backslash. For example:
    #
    #   --document-version "\\$DEFAULT"
    #
    #   --document-version "\\$LATEST"
    #
    #   --document-version "3"
    #   @return [String]
    #
    # @!attribute [rw] notification_config
    #   Configurations for sending notifications about command status
    #   changes on a per-instance basis.
    #   @return [Types::NotificationConfig]
    #
    # @!attribute [rw] output_s3_bucket_name
    #   The name of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] output_s3_key_prefix
    #   The S3 bucket subfolder.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters for the RUN\_COMMAND task execution.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] service_role_arn
    #   The ARN of the IAM service role to use to publish Amazon Simple
    #   Notification Service (Amazon SNS) notifications for maintenance
    #   window Run Command tasks.
    #   @return [String]
    #
    # @!attribute [rw] timeout_seconds
    #   If this time is reached and the command has not already started
    #   running, it doesn't run.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/MaintenanceWindowRunCommandParameters AWS API Documentation
    #
    class MaintenanceWindowRunCommandParameters < Struct.new(
      :comment,
      :cloud_watch_output_config,
      :document_hash,
      :document_hash_type,
      :document_version,
      :notification_config,
      :output_s3_bucket_name,
      :output_s3_key_prefix,
      :parameters,
      :service_role_arn,
      :timeout_seconds)
      include Aws::Structure
    end

    # The parameters for a STEP\_FUNCTIONS task.
    #
    # For information about specifying and updating task parameters, see
    # RegisterTaskWithMaintenanceWindow and UpdateMaintenanceWindowTask.
    #
    # <note markdown="1"> `LoggingInfo` has been deprecated. To specify an S3 bucket to contain
    # logs, instead use the `OutputS3BucketName` and `OutputS3KeyPrefix`
    # options in the `TaskInvocationParameters` structure. For information
    # about how Systems Manager handles these options for the supported
    # maintenance window task types, see
    # MaintenanceWindowTaskInvocationParameters.
    #
    #  `TaskParameters` has been deprecated. To specify parameters to pass to
    # a task when it runs, instead use the `Parameters` option in the
    # `TaskInvocationParameters` structure. For information about how
    # Systems Manager handles these options for the supported maintenance
    # window task types, see MaintenanceWindowTaskInvocationParameters.
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
    #   The inputs for the STEP\_FUNCTIONS task.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the STEP\_FUNCTIONS task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/MaintenanceWindowStepFunctionsParameters AWS API Documentation
    #
    class MaintenanceWindowStepFunctionsParameters < Struct.new(
      :input,
      :name)
      include Aws::Structure
    end

    # The target registered with the maintenance window.
    #
    # @!attribute [rw] window_id
    #   The ID of the maintenance window to register the target with.
    #   @return [String]
    #
    # @!attribute [rw] window_target_id
    #   The ID of the target.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of target that is being registered with the maintenance
    #   window.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The targets, either instances or tags.
    #
    #   Specify instances using the following format:
    #
    #   `Key=instanceids,Values=<instanceid1>,<instanceid2>`
    #
    #   Tags are specified using the following format:
    #
    #   `Key=<tag name>,Values=<tag value>`.
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] owner_information
    #   A user-provided value that will be included in any CloudWatch events
    #   that are raised while running tasks for these targets in this
    #   maintenance window.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name for the maintenance window target.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the target.
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

    # Information about a task defined for a maintenance window.
    #
    # @!attribute [rw] window_id
    #   The ID of the maintenance window where the task is registered.
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
    #   STEP\_FUNCTIONS tasks, it's the state machine ARN.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of task. The type can be one of the following:
    #   RUN\_COMMAND, AUTOMATION, LAMBDA, or STEP\_FUNCTIONS.
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
    #   The parameters that should be passed to the task when it is run.
    #
    #   <note markdown="1"> `TaskParameters` has been deprecated. To specify parameters to pass
    #   to a task when it runs, instead use the `Parameters` option in the
    #   `TaskInvocationParameters` structure. For information about how
    #   Systems Manager handles these options for the supported maintenance
    #   window task types, see MaintenanceWindowTaskInvocationParameters.
    #
    #    </note>
    #   @return [Hash<String,Types::MaintenanceWindowTaskParameterValueExpression>]
    #
    # @!attribute [rw] priority
    #   The priority of the task in the maintenance window. The lower the
    #   number, the higher the priority. Tasks that have the same priority
    #   are scheduled in parallel.
    #   @return [Integer]
    #
    # @!attribute [rw] logging_info
    #   Information about an S3 bucket to write task-level logs to.
    #
    #   <note markdown="1"> `LoggingInfo` has been deprecated. To specify an S3 bucket to
    #   contain logs, instead use the `OutputS3BucketName` and
    #   `OutputS3KeyPrefix` options in the `TaskInvocationParameters`
    #   structure. For information about how Systems Manager handles these
    #   options for the supported maintenance window task types, see
    #   MaintenanceWindowTaskInvocationParameters.
    #
    #    </note>
    #   @return [Types::LoggingInfo]
    #
    # @!attribute [rw] service_role_arn
    #   The ARN of the IAM service role to use to publish Amazon Simple
    #   Notification Service (Amazon SNS) notifications for maintenance
    #   window Run Command tasks.
    #   @return [String]
    #
    # @!attribute [rw] max_concurrency
    #   The maximum number of targets this task can be run for, in parallel.
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
    #           cloud_watch_output_config: {
    #             cloud_watch_log_group_name: "CloudWatchLogGroupName",
    #             cloud_watch_output_enabled: false,
    #           },
    #           document_hash: "DocumentHash",
    #           document_hash_type: "Sha256", # accepts Sha256, Sha1
    #           document_version: "DocumentVersion",
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
    #   The parameters for a STEP\_FUNCTIONS task type.
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

    # The size limit of a document is 64 KB.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/MaxDocumentSizeExceeded AWS API Documentation
    #
    class MaxDocumentSizeExceeded < Struct.new(
      :message)
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
    #         shared_document_version: "SharedDocumentVersion",
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
    # @!attribute [rw] shared_document_version
    #   (Optional) The version of the document to share. If it's not
    #   specified, the system choose the `Default` version to share.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ModifyDocumentPermissionRequest AWS API Documentation
    #
    class ModifyDocumentPermissionRequest < Struct.new(
      :name,
      :permission_type,
      :account_ids_to_add,
      :account_ids_to_remove,
      :shared_document_version)
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
    #   An Amazon Resource Name (ARN) for an Amazon Simple Notification
    #   Service (Amazon SNS) topic. Run Command pushes notifications about
    #   command status changes to this topic.
    #   @return [String]
    #
    # @!attribute [rw] notification_events
    #   The different events for which you can receive notifications. These
    #   events include the following: All (events), InProgress, Success,
    #   TimedOut, Cancelled, Failed. To learn more about these events, see
    #   [Monitoring Systems Manager status changes using Amazon SNS
    #   notifications][1] in the *AWS Systems Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/monitoring-sns-notifications.html
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

    # One or more aggregators for viewing counts of OpsItems using different
    # dimensions such as `Source`, `CreatedTime`, or `Source and
    # CreatedTime`, to name a few.
    #
    # @note When making an API call, you may pass OpsAggregator
    #   data as a hash:
    #
    #       {
    #         aggregator_type: "OpsAggregatorType",
    #         type_name: "OpsDataTypeName",
    #         attribute_name: "OpsDataAttributeName",
    #         values: {
    #           "OpsAggregatorValueKey" => "OpsAggregatorValue",
    #         },
    #         filters: [
    #           {
    #             key: "OpsFilterKey", # required
    #             values: ["OpsFilterValue"], # required
    #             type: "Equal", # accepts Equal, NotEqual, BeginWith, LessThan, GreaterThan, Exists
    #           },
    #         ],
    #         aggregators: [
    #           {
    #             aggregator_type: "OpsAggregatorType",
    #             type_name: "OpsDataTypeName",
    #             attribute_name: "OpsDataAttributeName",
    #             values: {
    #               "OpsAggregatorValueKey" => "OpsAggregatorValue",
    #             },
    #             filters: [
    #               {
    #                 key: "OpsFilterKey", # required
    #                 values: ["OpsFilterValue"], # required
    #                 type: "Equal", # accepts Equal, NotEqual, BeginWith, LessThan, GreaterThan, Exists
    #               },
    #             ],
    #             aggregators: {
    #               # recursive OpsAggregatorList
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] aggregator_type
    #   Either a Range or Count aggregator for limiting an OpsItem summary.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The data type name to use for viewing counts of OpsItems.
    #   @return [String]
    #
    # @!attribute [rw] attribute_name
    #   The name of an OpsItem attribute on which to limit the count of
    #   OpsItems.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The aggregator value.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] filters
    #   The aggregator filters.
    #   @return [Array<Types::OpsFilter>]
    #
    # @!attribute [rw] aggregators
    #   A nested aggregator for viewing counts of OpsItems.
    #   @return [Array<Types::OpsAggregator>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/OpsAggregator AWS API Documentation
    #
    class OpsAggregator < Struct.new(
      :aggregator_type,
      :type_name,
      :attribute_name,
      :values,
      :filters,
      :aggregators)
      include Aws::Structure
    end

    # The result of the query.
    #
    # @!attribute [rw] id
    #   The query ID.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   The data returned by the query.
    #   @return [Hash<String,Types::OpsEntityItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/OpsEntity AWS API Documentation
    #
    class OpsEntity < Struct.new(
      :id,
      :data)
      include Aws::Structure
    end

    # The OpsItem summaries result item.
    #
    # @!attribute [rw] capture_time
    #   The time OpsItem data was captured.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The detailed data content for an OpsItem summaries result item.
    #   @return [Array<Hash<String,String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/OpsEntityItem AWS API Documentation
    #
    class OpsEntityItem < Struct.new(
      :capture_time,
      :content)
      include Aws::Structure
    end

    # A filter for viewing OpsItem summaries.
    #
    # @note When making an API call, you may pass OpsFilter
    #   data as a hash:
    #
    #       {
    #         key: "OpsFilterKey", # required
    #         values: ["OpsFilterValue"], # required
    #         type: "Equal", # accepts Equal, NotEqual, BeginWith, LessThan, GreaterThan, Exists
    #       }
    #
    # @!attribute [rw] key
    #   The name of the filter.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The filter value.
    #   @return [Array<String>]
    #
    # @!attribute [rw] type
    #   The type of filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/OpsFilter AWS API Documentation
    #
    class OpsFilter < Struct.new(
      :key,
      :values,
      :type)
      include Aws::Structure
    end

    # Operations engineers and IT professionals use OpsCenter to view,
    # investigate, and remediate operational issues impacting the
    # performance and health of their AWS resources. For more information,
    # see [AWS Systems Manager OpsCenter][1] in the *AWS Systems Manager
    # User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter.html
    #
    # @!attribute [rw] created_by
    #   The ARN of the AWS account that created the OpsItem.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The date and time the OpsItem was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The OpsItem description.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_by
    #   The ARN of the AWS account that last updated the OpsItem.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time the OpsItem was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] notifications
    #   The Amazon Resource Name (ARN) of an SNS topic where notifications
    #   are sent when this OpsItem is edited or changed.
    #   @return [Array<Types::OpsItemNotification>]
    #
    # @!attribute [rw] priority
    #   The importance of this OpsItem in relation to other OpsItems in the
    #   system.
    #   @return [Integer]
    #
    # @!attribute [rw] related_ops_items
    #   One or more OpsItems that share something in common with the current
    #   OpsItem. For example, related OpsItems can include OpsItems with
    #   similar error messages, impacted resources, or statuses for the
    #   impacted resource.
    #   @return [Array<Types::RelatedOpsItem>]
    #
    # @!attribute [rw] status
    #   The OpsItem status. Status can be `Open`, `In Progress`, or
    #   `Resolved`. For more information, see [Editing OpsItem details][1]
    #   in the *AWS Systems Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-working-with-OpsItems-editing-details.html
    #   @return [String]
    #
    # @!attribute [rw] ops_item_id
    #   The ID of the OpsItem.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of this OpsItem. Each time the OpsItem is edited the
    #   version number increments by one.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   A short heading that describes the nature of the OpsItem and the
    #   impacted resource.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The origin of the OpsItem, such as Amazon EC2 or Systems Manager.
    #   The impacted resource is a subset of source.
    #   @return [String]
    #
    # @!attribute [rw] operational_data
    #   Operational data is custom data that provides useful reference
    #   details about the OpsItem. For example, you can specify log files,
    #   error strings, license keys, troubleshooting tips, or other relevant
    #   data. You enter operational data as key-value pairs. The key has a
    #   maximum length of 128 characters. The value has a maximum size of 20
    #   KB.
    #
    #   Operational data keys *can't* begin with the following: amazon,
    #   aws, amzn, ssm, /amazon, /aws, /amzn, /ssm.
    #
    #   You can choose to make the data searchable by other users in the
    #   account or you can restrict search access. Searchable data means
    #   that all users with access to the OpsItem Overview page (as provided
    #   by the DescribeOpsItems API action) can view and search on the
    #   specified data. Operational data that is not searchable is only
    #   viewable by users who have access to the OpsItem (as provided by the
    #   GetOpsItem API action).
    #
    #   Use the `/aws/resources` key in OperationalData to specify a related
    #   resource in the request. Use the `/aws/automations` key in
    #   OperationalData to associate an Automation runbook with the OpsItem.
    #   To view AWS CLI example commands that use these keys, see [Creating
    #   OpsItems manually][1] in the *AWS Systems Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-creating-OpsItems.html#OpsCenter-manually-create-OpsItems
    #   @return [Hash<String,Types::OpsItemDataValue>]
    #
    # @!attribute [rw] category
    #   An OpsItem category. Category options include: Availability, Cost,
    #   Performance, Recovery, Security.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   The severity of the OpsItem. Severity options range from 1 to 4.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/OpsItem AWS API Documentation
    #
    class OpsItem < Struct.new(
      :created_by,
      :created_time,
      :description,
      :last_modified_by,
      :last_modified_time,
      :notifications,
      :priority,
      :related_ops_items,
      :status,
      :ops_item_id,
      :version,
      :title,
      :source,
      :operational_data,
      :category,
      :severity)
      include Aws::Structure
    end

    # The OpsItem already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] ops_item_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/OpsItemAlreadyExistsException AWS API Documentation
    #
    class OpsItemAlreadyExistsException < Struct.new(
      :message,
      :ops_item_id)
      include Aws::Structure
    end

    # An object that defines the value of the key and its type in the
    # OperationalData map.
    #
    # @note When making an API call, you may pass OpsItemDataValue
    #   data as a hash:
    #
    #       {
    #         value: "OpsItemDataValueString",
    #         type: "SearchableString", # accepts SearchableString, String
    #       }
    #
    # @!attribute [rw] value
    #   The value of the OperationalData key.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of key-value pair. Valid types include `SearchableString`
    #   and `String`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/OpsItemDataValue AWS API Documentation
    #
    class OpsItemDataValue < Struct.new(
      :value,
      :type)
      include Aws::Structure
    end

    # Describes an OpsItem filter.
    #
    # @note When making an API call, you may pass OpsItemFilter
    #   data as a hash:
    #
    #       {
    #         key: "Status", # required, accepts Status, CreatedBy, Source, Priority, Title, OpsItemId, CreatedTime, LastModifiedTime, OperationalData, OperationalDataKey, OperationalDataValue, ResourceId, AutomationId, Category, Severity
    #         values: ["OpsItemFilterValue"], # required
    #         operator: "Equal", # required, accepts Equal, Contains, GreaterThan, LessThan
    #       }
    #
    # @!attribute [rw] key
    #   The name of the filter.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The filter value.
    #   @return [Array<String>]
    #
    # @!attribute [rw] operator
    #   The operator used by the filter call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/OpsItemFilter AWS API Documentation
    #
    class OpsItemFilter < Struct.new(
      :key,
      :values,
      :operator)
      include Aws::Structure
    end

    # A specified parameter argument isn't valid. Verify the available
    # arguments and try again.
    #
    # @!attribute [rw] parameter_names
    #   @return [Array<String>]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/OpsItemInvalidParameterException AWS API Documentation
    #
    class OpsItemInvalidParameterException < Struct.new(
      :parameter_names,
      :message)
      include Aws::Structure
    end

    # The request caused OpsItems to exceed one or more quotas. For
    # information about OpsItem quotas, see [What are the resource limits
    # for OpsCenter?][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-learn-more.html#OpsCenter-learn-more-limits
    #
    # @!attribute [rw] resource_types
    #   @return [Array<String>]
    #
    # @!attribute [rw] limit
    #   @return [Integer]
    #
    # @!attribute [rw] limit_type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/OpsItemLimitExceededException AWS API Documentation
    #
    class OpsItemLimitExceededException < Struct.new(
      :resource_types,
      :limit,
      :limit_type,
      :message)
      include Aws::Structure
    end

    # The specified OpsItem ID doesn't exist. Verify the ID and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/OpsItemNotFoundException AWS API Documentation
    #
    class OpsItemNotFoundException < Struct.new(
      :message)
      include Aws::Structure
    end

    # A notification about the OpsItem.
    #
    # @note When making an API call, you may pass OpsItemNotification
    #   data as a hash:
    #
    #       {
    #         arn: "String",
    #       }
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of an SNS topic where notifications
    #   are sent when this OpsItem is edited or changed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/OpsItemNotification AWS API Documentation
    #
    class OpsItemNotification < Struct.new(
      :arn)
      include Aws::Structure
    end

    # A count of OpsItems.
    #
    # @!attribute [rw] created_by
    #   The Amazon Resource Name (ARN) of the IAM entity that created the
    #   OpsItem.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The date and time the OpsItem was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_by
    #   The Amazon Resource Name (ARN) of the IAM entity that created the
    #   OpsItem.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time the OpsItem was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] priority
    #   The importance of this OpsItem in relation to other OpsItems in the
    #   system.
    #   @return [Integer]
    #
    # @!attribute [rw] source
    #   The impacted AWS resource.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The OpsItem status. Status can be `Open`, `In Progress`, or
    #   `Resolved`.
    #   @return [String]
    #
    # @!attribute [rw] ops_item_id
    #   The ID of the OpsItem.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   A short heading that describes the nature of the OpsItem and the
    #   impacted resource.
    #   @return [String]
    #
    # @!attribute [rw] operational_data
    #   Operational data is custom data that provides useful reference
    #   details about the OpsItem.
    #   @return [Hash<String,Types::OpsItemDataValue>]
    #
    # @!attribute [rw] category
    #   A list of OpsItems by category.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   A list of OpsItems by severity.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/OpsItemSummary AWS API Documentation
    #
    class OpsItemSummary < Struct.new(
      :created_by,
      :created_time,
      :last_modified_by,
      :last_modified_time,
      :priority,
      :source,
      :status,
      :ops_item_id,
      :title,
      :operational_data,
      :category,
      :severity)
      include Aws::Structure
    end

    # The OpsItem data type to return.
    #
    # @note When making an API call, you may pass OpsResultAttribute
    #   data as a hash:
    #
    #       {
    #         type_name: "OpsDataTypeName", # required
    #       }
    #
    # @!attribute [rw] type_name
    #   Name of the data type. Valid value: AWS:OpsItem,
    #   AWS:EC2InstanceInformation, AWS:OpsItemTrendline, or
    #   AWS:ComplianceSummary.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/OpsResultAttribute AWS API Documentation
    #
    class OpsResultAttribute < Struct.new(
      :type_name)
      include Aws::Structure
    end

    # Information about the source where the association execution details
    # are stored.
    #
    # @!attribute [rw] output_source_id
    #   The ID of the output source, for example the URL of an S3 bucket.
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

    # An Systems Manager parameter in Parameter Store.
    #
    # @!attribute [rw] name
    #   The name of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of parameter. Valid values include the following: `String`,
    #   `StringList`, and `SecureString`.
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
    # @!attribute [rw] data_type
    #   The data type of the parameter, such as `text` or `aws:ec2:image`.
    #   The default is `text`.
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
      :arn,
      :data_type)
      include Aws::Structure
    end

    # The parameter already exists. You can't create duplicate parameters.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ParameterAlreadyExists AWS API Documentation
    #
    class ParameterAlreadyExists < Struct.new(
      :message)
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
    # @!attribute [rw] tier
    #   The parameter tier.
    #   @return [String]
    #
    # @!attribute [rw] policies
    #   Information about the policies assigned to a parameter.
    #
    #   [Assigning parameter policies][1] in the *AWS Systems Manager User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-policies.html
    #   @return [Array<Types::ParameterInlinePolicy>]
    #
    # @!attribute [rw] data_type
    #   The data type of the parameter, such as `text` or `aws:ec2:image`.
    #   The default is `text`.
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
      :allowed_pattern,
      :version,
      :labels,
      :tier,
      :policies,
      :data_type)
      include Aws::Structure
    end

    # One or more policies assigned to a parameter.
    #
    # @!attribute [rw] policy_text
    #   The JSON text of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_type
    #   The type of policy. Parameter Store supports the following policy
    #   types: Expiration, ExpirationNotification, and NoChangeNotification.
    #   @return [String]
    #
    # @!attribute [rw] policy_status
    #   The status of the policy. Policies report the following statuses:
    #   Pending (the policy has not been enforced or applied yet), Finished
    #   (the policy was applied), Failed (the policy was not applied), or
    #   InProgress (the policy is being applied now).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ParameterInlinePolicy AWS API Documentation
    #
    class ParameterInlinePolicy < Struct.new(
      :policy_text,
      :policy_type,
      :policy_status)
      include Aws::Structure
    end

    # You have exceeded the number of parameters for this AWS account.
    # Delete one or more parameters and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ParameterLimitExceeded AWS API Documentation
    #
    class ParameterLimitExceeded < Struct.new(
      :message)
      include Aws::Structure
    end

    # The parameter exceeded the maximum number of allowed versions.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ParameterMaxVersionLimitExceeded AWS API Documentation
    #
    class ParameterMaxVersionLimitExceeded < Struct.new(
      :message)
      include Aws::Structure
    end

    # Metadata includes information like the ARN of the last user and the
    # date/time the parameter was last used.
    #
    # @!attribute [rw] name
    #   The parameter name.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of parameter. Valid parameter types include the following:
    #   `String`, `StringList`, and `SecureString`.
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
    # @!attribute [rw] tier
    #   The parameter tier.
    #   @return [String]
    #
    # @!attribute [rw] policies
    #   A list of policies associated with a parameter.
    #   @return [Array<Types::ParameterInlinePolicy>]
    #
    # @!attribute [rw] data_type
    #   The data type of the parameter, such as `text` or `aws:ec2:image`.
    #   The default is `text`.
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
      :allowed_pattern,
      :version,
      :tier,
      :policies,
      :data_type)
      include Aws::Structure
    end

    # The parameter could not be found. Verify the name and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ParameterNotFound AWS API Documentation
    #
    class ParameterNotFound < Struct.new(
      :message)
      include Aws::Structure
    end

    # The parameter name is not valid.
    #
    # @!attribute [rw] message
    #   The parameter name is not valid.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ParameterPatternMismatchException AWS API Documentation
    #
    class ParameterPatternMismatchException < Struct.new(
      :message)
      include Aws::Structure
    end

    # One or more filters. Use a filter to return a more specific list of
    # results.
    #
    # The `ParameterStringFilter` object is used by the DescribeParameters
    # and GetParametersByPath API actions. However, not all of the pattern
    # values listed for `Key` can be used with both actions.
    #
    #  For `DescribeActions`, all of the listed patterns are valid, with the
    # exception of `Label`.
    #
    #  For `GetParametersByPath`, the following patterns listed for `Key`
    # are
    # not valid: `Name`, `Path`, and `Tier`.
    #
    #  For examples of CLI commands demonstrating valid parameter filter
    # constructions, see [Searching for Systems Manager parameters][1] in
    # the *AWS Systems Manager User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-search.html
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
    #   For all filters used with DescribeParameters, valid options include
    #   `Equals` and `BeginsWith`. The `Name` filter additionally supports
    #   the `Contains` option. (Exception: For filters using the key `Path`,
    #   valid options include `Recursive` and `OneLevel`.)
    #
    #   For filters used with GetParametersByPath, valid options include
    #   `Equals` and `BeginsWith`. (Exception: For filters using the key
    #   `Label`, the only valid option is `Equals`.)
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

    # A parameter version can have a maximum of ten labels.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ParameterVersionLabelLimitExceeded AWS API Documentation
    #
    class ParameterVersionLabelLimitExceeded < Struct.new(
      :message)
      include Aws::Structure
    end

    # The specified parameter version was not found. Verify the parameter
    # name and version, and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ParameterVersionNotFound AWS API Documentation
    #
    class ParameterVersionNotFound < Struct.new(
      :message)
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
    #   The state of the patch on the instance, such as INSTALLED or FAILED.
    #
    #   For descriptions of each patch state, see [About patch
    #   compliance][1] in the *AWS Systems Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-compliance-about.html#sysman-compliance-monitor-patch
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

    # Defines which patches should be included in a patch baseline.
    #
    # A patch filter consists of a key and a set of values. The filter key
    # is a patch property. For example, the available filter keys for
    # WINDOWS are PATCH\_SET, PRODUCT, PRODUCT\_FAMILY, CLASSIFICATION, and
    # MSRC\_SEVERITY. The filter values define a matching criterion for the
    # patch property indicated by the key. For example, if the filter key is
    # PRODUCT and the filter values are \["Office 2013", "Office
    # 2016"\], then the filter accepts all patches where product name is
    # either "Office 2013" or "Office 2016". The filter values can be
    # exact values for the patch property given as a key, or a wildcard
    # (*), which matches all values.
    #
    # You can view lists of valid values for the patch properties by running
    # the `DescribePatchProperties` command. For information about which
    # patch properties can be used with each major operating system, see
    # DescribePatchProperties.
    #
    # @note When making an API call, you may pass PatchFilter
    #   data as a hash:
    #
    #       {
    #         key: "PATCH_SET", # required, accepts PATCH_SET, PRODUCT, PRODUCT_FAMILY, CLASSIFICATION, MSRC_SEVERITY, PATCH_ID, SECTION, PRIORITY, SEVERITY
    #         values: ["PatchFilterValue"], # required
    #       }
    #
    # @!attribute [rw] key
    #   The key for the filter.
    #
    #   Run the DescribePatchProperties command to view lists of valid keys
    #   for each operating system type.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The value for the filter key.
    #
    #   Run the DescribePatchProperties command to view lists of valid
    #   values for each key based on operating system type.
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
    #             key: "PATCH_SET", # required, accepts PATCH_SET, PRODUCT, PRODUCT_FAMILY, CLASSIFICATION, MSRC_SEVERITY, PATCH_ID, SECTION, PRIORITY, SEVERITY
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
    #               key: "PATCH_SET", # required, accepts PATCH_SET, PRODUCT, PRODUCT_FAMILY, CLASSIFICATION, MSRC_SEVERITY, PATCH_ID, SECTION, PRIORITY, SEVERITY
    #               values: ["PatchFilterValue"], # required
    #             },
    #           ],
    #         },
    #         compliance_level: "CRITICAL", # accepts CRITICAL, HIGH, MEDIUM, LOW, INFORMATIONAL, UNSPECIFIED
    #         approve_after_days: 1,
    #         approve_until_date: "PatchStringDateTime",
    #         enable_non_security: false,
    #       }
    #
    # @!attribute [rw] patch_filter_group
    #   The patch filter group that defines the criteria for the rule.
    #   @return [Types::PatchFilterGroup]
    #
    # @!attribute [rw] compliance_level
    #   A compliance severity level for all approved patches in a patch
    #   baseline.
    #   @return [String]
    #
    # @!attribute [rw] approve_after_days
    #   The number of days after the release date of each patch matched by
    #   the rule that the patch is marked as approved in the patch baseline.
    #   For example, a value of `7` means that patches are approved seven
    #   days after they are released. Not supported on Ubuntu Server.
    #   @return [Integer]
    #
    # @!attribute [rw] approve_until_date
    #   The cutoff date for auto approval of released patches. Any patches
    #   released on or before this date are installed automatically. Not
    #   supported on Ubuntu Server.
    #
    #   Enter dates in the format `YYYY-MM-DD`. For example, `2020-12-31`.
    #   @return [String]
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
      :approve_until_date,
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
    #                   key: "PATCH_SET", # required, accepts PATCH_SET, PRODUCT, PRODUCT_FAMILY, CLASSIFICATION, MSRC_SEVERITY, PATCH_ID, SECTION, PRIORITY, SEVERITY
    #                   values: ["PatchFilterValue"], # required
    #                 },
    #               ],
    #             },
    #             compliance_level: "CRITICAL", # accepts CRITICAL, HIGH, MEDIUM, LOW, INFORMATIONAL, UNSPECIFIED
    #             approve_after_days: 1,
    #             approve_until_date: "PatchStringDateTime",
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
    #   `[main]`
    #
    #   `cachedir=/var/cache/yum/$basesearch$releasever`
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

    # You specified more than the maximum number of allowed policies for the
    # parameter. The maximum is 10.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/PoliciesLimitExceededException AWS API Documentation
    #
    class PoliciesLimitExceededException < Struct.new(
      :message)
      include Aws::Structure
    end

    # An aggregate of step execution statuses displayed in the AWS Console
    # for a multi-Region and multi-account Automation execution.
    #
    # @!attribute [rw] total_steps
    #   The total number of steps run in all specified AWS Regions and
    #   accounts for the current Automation execution.
    #   @return [Integer]
    #
    # @!attribute [rw] success_steps
    #   The total number of steps that successfully completed in all
    #   specified AWS Regions and accounts for the current Automation
    #   execution.
    #   @return [Integer]
    #
    # @!attribute [rw] failed_steps
    #   The total number of steps that failed to run in all specified AWS
    #   Regions and accounts for the current Automation execution.
    #   @return [Integer]
    #
    # @!attribute [rw] cancelled_steps
    #   The total number of steps that the system cancelled in all specified
    #   AWS Regions and accounts for the current Automation execution.
    #   @return [Integer]
    #
    # @!attribute [rw] timed_out_steps
    #   The total number of steps that timed out in all specified AWS
    #   Regions and accounts for the current Automation execution.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ProgressCounters AWS API Documentation
    #
    class ProgressCounters < Struct.new(
      :total_steps,
      :success_steps,
      :failed_steps,
      :cancelled_steps,
      :timed_out_steps)
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
    #         upload_type: "COMPLETE", # accepts COMPLETE, PARTIAL
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
    #   information about the PatchSeverity, Classification, and so on.
    #   @return [Array<Types::ComplianceItemEntry>]
    #
    # @!attribute [rw] item_content_hash
    #   MD5 or SHA-256 content hash. The content hash is used to determine
    #   if existing information should be overwritten or ignored. If the
    #   content hashes match, the request to put compliance information is
    #   ignored.
    #   @return [String]
    #
    # @!attribute [rw] upload_type
    #   The mode for uploading compliance items. You can specify `COMPLETE`
    #   or `PARTIAL`. In `COMPLETE` mode, the system overwrites all existing
    #   compliance information for the resource. You must provide a full
    #   list of compliance items each time you send the request.
    #
    #   In `PARTIAL` mode, the system overwrites compliance information for
    #   a specific association. The association must be configured with
    #   `SyncCompliance` set to `MANUAL`. By default, all requests use
    #   `COMPLETE` mode.
    #
    #   <note markdown="1"> This attribute is only valid for association compliance.
    #
    #    </note>
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
      :item_content_hash,
      :upload_type)
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
    #   An instance ID where you want to add or update inventory items.
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
    #         type: "String", # accepts String, StringList, SecureString
    #         key_id: "ParameterKeyId",
    #         overwrite: false,
    #         allowed_pattern: "AllowedPattern",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         tier: "Standard", # accepts Standard, Advanced, Intelligent-Tiering
    #         policies: "ParameterPolicies",
    #         data_type: "ParameterDataType",
    #       }
    #
    # @!attribute [rw] name
    #   The fully qualified name of the parameter that you want to add to
    #   the system. The fully qualified name includes the complete hierarchy
    #   of the parameter path and name. For parameters in a hierarchy, you
    #   must include a leading forward slash character (/) when you create
    #   or reference a parameter. For example:
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
    #   see [About requirements and constraints for parameter names][1] in
    #   the *AWS Systems Manager User Guide*.
    #
    #   <note markdown="1"> The maximum length constraint listed below includes capacity for
    #   additional system attributes that are not part of the name. The
    #   maximum length for a parameter name, including the full length of
    #   the parameter ARN, is 1011 characters. For example, the length of
    #   the following parameter name is 65 characters, not 20 characters:
    #
    #    `arn:aws:ssm:us-east-2:111122223333:parameter/ExampleParameterName`
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-parameter-name-constraints.html
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
    #   The parameter value that you want to add to the system. Standard
    #   parameters have a value limit of 4 KB. Advanced parameters have a
    #   value limit of 8 KB.
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
    # @!attribute [rw] tags
    #   Optional metadata that you assign to a resource. Tags enable you to
    #   categorize a resource in different ways, such as by purpose, owner,
    #   or environment. For example, you might want to tag a Systems Manager
    #   parameter to identify the type of resource to which it applies, the
    #   environment, or the type of configuration data referenced by the
    #   parameter. In this case, you could specify the following key
    #   name/value pairs:
    #
    #   * `Key=Resource,Value=S3bucket`
    #
    #   * `Key=OS,Value=Windows`
    #
    #   * `Key=ParameterType,Value=LicenseKey`
    #
    #   <note markdown="1"> To add tags to an existing Systems Manager parameter, use the
    #   AddTagsToResource action.
    #
    #    </note>
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] tier
    #   The parameter tier to assign to a parameter.
    #
    #   Parameter Store offers a standard tier and an advanced tier for
    #   parameters. Standard parameters have a content size limit of 4 KB
    #   and can't be configured to use parameter policies. You can create a
    #   maximum of 10,000 standard parameters for each Region in an AWS
    #   account. Standard parameters are offered at no additional cost.
    #
    #   Advanced parameters have a content size limit of 8 KB and can be
    #   configured to use parameter policies. You can create a maximum of
    #   100,000 advanced parameters for each Region in an AWS account.
    #   Advanced parameters incur a charge. For more information, see
    #   [Standard and advanced parameter tiers][1] in the *AWS Systems
    #   Manager User Guide*.
    #
    #   You can change a standard parameter to an advanced parameter any
    #   time. But you can't revert an advanced parameter to a standard
    #   parameter. Reverting an advanced parameter to a standard parameter
    #   would result in data loss because the system would truncate the size
    #   of the parameter from 8 KB to 4 KB. Reverting would also remove any
    #   policies attached to the parameter. Lastly, advanced parameters use
    #   a different form of encryption than standard parameters.
    #
    #   If you no longer need an advanced parameter, or if you no longer
    #   want to incur charges for an advanced parameter, you must delete it
    #   and recreate it as a new standard parameter.
    #
    #   **Using the Default Tier Configuration**
    #
    #   In `PutParameter` requests, you can specify the tier to create the
    #   parameter in. Whenever you specify a tier in the request, Parameter
    #   Store creates or updates the parameter according to that request.
    #   However, if you do not specify a tier in a request, Parameter Store
    #   assigns the tier based on the current Parameter Store default tier
    #   configuration.
    #
    #   The default tier when you begin using Parameter Store is the
    #   standard-parameter tier. If you use the advanced-parameter tier, you
    #   can specify one of the following as the default:
    #
    #   * **Advanced**\: With this option, Parameter Store evaluates all
    #     requests as advanced parameters.
    #
    #   * **Intelligent-Tiering**\: With this option, Parameter Store
    #     evaluates each request to determine if the parameter is standard
    #     or advanced.
    #
    #     If the request doesn't include any options that require an
    #     advanced parameter, the parameter is created in the
    #     standard-parameter tier. If one or more options requiring an
    #     advanced parameter are included in the request, Parameter Store
    #     create a parameter in the advanced-parameter tier.
    #
    #     This approach helps control your parameter-related costs by always
    #     creating standard parameters unless an advanced parameter is
    #     necessary.
    #
    #   Options that require an advanced parameter include the following:
    #
    #   * The content size of the parameter is more than 4 KB.
    #
    #   * The parameter uses a parameter policy.
    #
    #   * More than 10,000 parameters already exist in your AWS account in
    #     the current Region.
    #
    #   For more information about configuring the default tier option, see
    #   [Specifying a default parameter tier][2] in the *AWS Systems Manager
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-advanced-parameters.html
    #   [2]: https://docs.aws.amazon.com/systems-manager/latest/userguide/ps-default-tier.html
    #   @return [String]
    #
    # @!attribute [rw] policies
    #   One or more policies to apply to a parameter. This action takes a
    #   JSON array. Parameter Store supports the following policy types:
    #
    #   Expiration: This policy deletes the parameter after it expires. When
    #   you create the policy, you specify the expiration date. You can
    #   update the expiration date and time by updating the policy. Updating
    #   the *parameter* does not affect the expiration date and time. When
    #   the expiration time is reached, Parameter Store deletes the
    #   parameter.
    #
    #   ExpirationNotification: This policy triggers an event in Amazon
    #   CloudWatch Events that notifies you about the expiration. By using
    #   this policy, you can receive notification before or after the
    #   expiration time is reached, in units of days or hours.
    #
    #   NoChangeNotification: This policy triggers a CloudWatch event if a
    #   parameter has not been modified for a specified period of time. This
    #   policy type is useful when, for example, a secret needs to be
    #   changed within a period of time, but it has not been changed.
    #
    #   All existing policies are preserved until you send new policies or
    #   an empty policy. For more information about parameter policies, see
    #   [Assigning parameter policies][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-policies.html
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   The data type for a `String` parameter. Supported data types include
    #   plain text and Amazon Machine Image IDs.
    #
    #   **The following data type values are supported.**
    #
    #   * `text`
    #
    #   * `aws:ec2:image`
    #
    #   When you create a `String` parameter and specify `aws:ec2:image`,
    #   Systems Manager validates the parameter value is in the required
    #   format, such as `ami-12345abcdeEXAMPLE`, and that the specified AMI
    #   is available in your AWS account. For more information, see [Native
    #   parameter support for Amazon Machine Image IDs][1] in the *AWS
    #   Systems Manager User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-ec2-aliases.html
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
      :allowed_pattern,
      :tags,
      :tier,
      :policies,
      :data_type)
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
    # @!attribute [rw] tier
    #   The tier assigned to the parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/PutParameterResult AWS API Documentation
    #
    class PutParameterResult < Struct.new(
      :version,
      :tier)
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
    #         resource_type: "INSTANCE", # required, accepts INSTANCE, RESOURCE_GROUP
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
    #   The ID of the maintenance window the target should be registered
    #   with.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of target being registered with the maintenance window.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The targets to register with the maintenance window. In other words,
    #   the instances to run commands on when the maintenance window runs.
    #
    #   You can specify targets using instance IDs, resource group names, or
    #   tags that have been applied to instances.
    #
    #   **Example 1**\: Specify instance IDs
    #
    #   `Key=InstanceIds,Values=instance-id-1,instance-id-2,instance-id-3 `
    #
    #   **Example 2**\: Use tag key-pairs applied to instances
    #
    #   `Key=tag:my-tag-key,Values=my-tag-value-1,my-tag-value-2 `
    #
    #   **Example 3**\: Use tag-keys applied to instances
    #
    #   `Key=tag-key,Values=my-tag-key-1,my-tag-key-2 `
    #
    #   **Example 4**\: Use resource group names
    #
    #   `Key=resource-groups:Name,Values=resource-group-name `
    #
    #   **Example 5**\: Use filters for resource group types
    #
    #   `Key=resource-groups:ResourceTypeFilters,Values=resource-type-1,resource-type-2
    #   `
    #
    #   <note markdown="1"> For `Key=resource-groups:ResourceTypeFilters`, specify resource
    #   types in the following format
    #
    #    `Key=resource-groups:ResourceTypeFilters,Values=AWS::EC2::INSTANCE,AWS::EC2::VPC
    #   `
    #
    #    </note>
    #
    #   For more information about these examples formats, including the
    #   best use case for each one, see [Examples: Register targets with a
    #   maintenance window][1] in the *AWS Systems Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/mw-cli-tutorial-targets-examples.html
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] owner_information
    #   User-provided value that will be included in any CloudWatch events
    #   raised while running tasks for these targets in this maintenance
    #   window.
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
    #   The ID of the target definition in this maintenance window.
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
    #             cloud_watch_output_config: {
    #               cloud_watch_log_group_name: "CloudWatchLogGroupName",
    #               cloud_watch_output_enabled: false,
    #             },
    #             document_hash: "DocumentHash",
    #             document_hash_type: "Sha256", # accepts Sha256, Sha1
    #             document_version: "DocumentVersion",
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
    #   The ID of the maintenance window the task should be added to.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The targets (either instances or maintenance window targets).
    #
    #   Specify instances using the following format:
    #
    #   `Key=InstanceIds,Values=<instance-id-1>,<instance-id-2>`
    #
    #   Specify maintenance window targets using the following format:
    #
    #   `Key=WindowTargetIds;,Values=<window-target-id-1>,<window-target-id-2>`
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] task_arn
    #   The ARN of the task to run.
    #   @return [String]
    #
    # @!attribute [rw] service_role_arn
    #   The ARN of the IAM service role for Systems Manager to assume when
    #   running a maintenance window task. If you do not specify a service
    #   role ARN, Systems Manager uses your account's service-linked role.
    #   If no service-linked role for Systems Manager exists in your
    #   account, it is created when you run
    #   `RegisterTaskWithMaintenanceWindow`.
    #
    #   For more information, see the following topics in the in the *AWS
    #   Systems Manager User Guide*\:
    #
    #   * [Using service-linked roles for Systems Manager][1]
    #
    #   * [Should I use a service-linked role or a custom service role to
    #     run maintenance window tasks? ][2]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/using-service-linked-roles.html#slr-permissions
    #   [2]: https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-maintenance-permissions.html#maintenance-window-tasks-service-role
    #   @return [String]
    #
    # @!attribute [rw] task_type
    #   The type of task being registered.
    #   @return [String]
    #
    # @!attribute [rw] task_parameters
    #   The parameters that should be passed to the task when it is run.
    #
    #   <note markdown="1"> `TaskParameters` has been deprecated. To specify parameters to pass
    #   to a task when it runs, instead use the `Parameters` option in the
    #   `TaskInvocationParameters` structure. For information about how
    #   Systems Manager handles these options for the supported maintenance
    #   window task types, see MaintenanceWindowTaskInvocationParameters.
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
    #   The priority of the task in the maintenance window, the lower the
    #   number the higher the priority. Tasks in a maintenance window are
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
    #   A structure containing information about an S3 bucket to write
    #   instance-level logs to.
    #
    #   <note markdown="1"> `LoggingInfo` has been deprecated. To specify an S3 bucket to
    #   contain logs, instead use the `OutputS3BucketName` and
    #   `OutputS3KeyPrefix` options in the `TaskInvocationParameters`
    #   structure. For information about how Systems Manager handles these
    #   options for the supported maintenance window task types, see
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
    #   The ID of the task in the maintenance window.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/RegisterTaskWithMaintenanceWindowResult AWS API Documentation
    #
    class RegisterTaskWithMaintenanceWindowResult < Struct.new(
      :window_task_id)
      include Aws::Structure
    end

    # An OpsItems that shares something in common with the current OpsItem.
    # For example, related OpsItems can include OpsItems with similar error
    # messages, impacted resources, or statuses for the impacted resource.
    #
    # @note When making an API call, you may pass RelatedOpsItem
    #   data as a hash:
    #
    #       {
    #         ops_item_id: "String", # required
    #       }
    #
    # @!attribute [rw] ops_item_id
    #   The ID of an OpsItem related to the current OpsItem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/RelatedOpsItem AWS API Documentation
    #
    class RelatedOpsItem < Struct.new(
      :ops_item_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RemoveTagsFromResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_type: "Document", # required, accepts Document, ManagedInstance, MaintenanceWindow, Parameter, PatchBaseline, OpsItem
    #         resource_id: "ResourceId", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_type
    #   The type of resource from which you want to remove a tag.
    #
    #   <note markdown="1"> The ManagedInstance type for this API action is only for on-premises
    #   managed instances. Specify the name of the managed instance in the
    #   following format: mi-ID\_number. For example, mi-1a2b3c4d5e6f.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource from which you want to remove tags. For
    #   example:
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
    #   managed instances. Specify the name of the managed instance in the
    #   following format: mi-ID\_number. For example, mi-1a2b3c4d5e6f.
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

    # The request body of the ResetServiceSetting API action.
    #
    # @note When making an API call, you may pass ResetServiceSettingRequest
    #   data as a hash:
    #
    #       {
    #         setting_id: "ServiceSettingId", # required
    #       }
    #
    # @!attribute [rw] setting_id
    #   The Amazon Resource Name (ARN) of the service setting to reset. The
    #   setting ID can be `/ssm/parameter-store/default-parameter-tier`,
    #   `/ssm/parameter-store/high-throughput-enabled`, or
    #   `/ssm/managed-instance/activation-tier`. For example,
    #   `arn:aws:ssm:us-east-1:111122223333:servicesetting/ssm/parameter-store/high-throughput-enabled`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ResetServiceSettingRequest AWS API Documentation
    #
    class ResetServiceSettingRequest < Struct.new(
      :setting_id)
      include Aws::Structure
    end

    # The result body of the ResetServiceSetting API action.
    #
    # @!attribute [rw] service_setting
    #   The current, effective service setting after calling the
    #   ResetServiceSetting API action.
    #   @return [Types::ServiceSetting]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ResetServiceSettingResult AWS API Documentation
    #
    class ResetServiceSettingResult < Struct.new(
      :service_setting)
      include Aws::Structure
    end

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

    # A sync configuration with the same name already exists.
    #
    # @!attribute [rw] sync_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ResourceDataSyncAlreadyExistsException AWS API Documentation
    #
    class ResourceDataSyncAlreadyExistsException < Struct.new(
      :sync_name)
      include Aws::Structure
    end

    # Information about the AwsOrganizationsSource resource data sync
    # source. A sync source of this type can synchronize data from AWS
    # Organizations or, if an AWS Organization is not present, from multiple
    # AWS Regions.
    #
    # @note When making an API call, you may pass ResourceDataSyncAwsOrganizationsSource
    #   data as a hash:
    #
    #       {
    #         organization_source_type: "ResourceDataSyncOrganizationSourceType", # required
    #         organizational_units: [
    #           {
    #             organizational_unit_id: "ResourceDataSyncOrganizationalUnitId",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] organization_source_type
    #   If an AWS Organization is present, this is either
    #   `OrganizationalUnits` or `EntireOrganization`. For
    #   `OrganizationalUnits`, the data is aggregated from a set of
    #   organization units. For `EntireOrganization`, the data is aggregated
    #   from the entire AWS Organization.
    #   @return [String]
    #
    # @!attribute [rw] organizational_units
    #   The AWS Organizations organization units included in the sync.
    #   @return [Array<Types::ResourceDataSyncOrganizationalUnit>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ResourceDataSyncAwsOrganizationsSource AWS API Documentation
    #
    class ResourceDataSyncAwsOrganizationsSource < Struct.new(
      :organization_source_type,
      :organizational_units)
      include Aws::Structure
    end

    # Another `UpdateResourceDataSync` request is being processed. Wait a
    # few minutes and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ResourceDataSyncConflictException AWS API Documentation
    #
    class ResourceDataSyncConflictException < Struct.new(
      :message)
      include Aws::Structure
    end

    # You have exceeded the allowed maximum sync configurations.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ResourceDataSyncCountExceededException AWS API Documentation
    #
    class ResourceDataSyncCountExceededException < Struct.new(
      :message)
      include Aws::Structure
    end

    # Synchronize Systems Manager Inventory data from multiple AWS accounts
    # defined in AWS Organizations to a centralized S3 bucket. Data is
    # synchronized to individual key prefixes in the central bucket. Each
    # key prefix represents a different AWS account ID.
    #
    # @note When making an API call, you may pass ResourceDataSyncDestinationDataSharing
    #   data as a hash:
    #
    #       {
    #         destination_data_sharing_type: "ResourceDataSyncDestinationDataSharingType",
    #       }
    #
    # @!attribute [rw] destination_data_sharing_type
    #   The sharing data type. Only `Organization` is supported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ResourceDataSyncDestinationDataSharing AWS API Documentation
    #
    class ResourceDataSyncDestinationDataSharing < Struct.new(
      :destination_data_sharing_type)
      include Aws::Structure
    end

    # The specified sync configuration is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ResourceDataSyncInvalidConfigurationException AWS API Documentation
    #
    class ResourceDataSyncInvalidConfigurationException < Struct.new(
      :message)
      include Aws::Structure
    end

    # Information about a Resource Data Sync configuration, including its
    # current status and last successful sync.
    #
    # @!attribute [rw] sync_name
    #   The name of the Resource Data Sync.
    #   @return [String]
    #
    # @!attribute [rw] sync_type
    #   The type of resource data sync. If `SyncType` is
    #   `SyncToDestination`, then the resource data sync synchronizes data
    #   to an S3 bucket. If the `SyncType` is `SyncFromSource` then the
    #   resource data sync synchronizes data from AWS Organizations or from
    #   multiple AWS Regions.
    #   @return [String]
    #
    # @!attribute [rw] sync_source
    #   Information about the source where the data was synchronized.
    #   @return [Types::ResourceDataSyncSourceWithState]
    #
    # @!attribute [rw] s3_destination
    #   Configuration information for the target S3 bucket.
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
    # @!attribute [rw] sync_last_modified_time
    #   The date and time the resource data sync was changed.
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
      :sync_type,
      :sync_source,
      :s3_destination,
      :last_sync_time,
      :last_successful_sync_time,
      :sync_last_modified_time,
      :last_status,
      :sync_created_time,
      :last_sync_status_message)
      include Aws::Structure
    end

    # The specified sync name was not found.
    #
    # @!attribute [rw] sync_name
    #   @return [String]
    #
    # @!attribute [rw] sync_type
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ResourceDataSyncNotFoundException AWS API Documentation
    #
    class ResourceDataSyncNotFoundException < Struct.new(
      :sync_name,
      :sync_type,
      :message)
      include Aws::Structure
    end

    # The AWS Organizations organizational unit data source for the sync.
    #
    # @note When making an API call, you may pass ResourceDataSyncOrganizationalUnit
    #   data as a hash:
    #
    #       {
    #         organizational_unit_id: "ResourceDataSyncOrganizationalUnitId",
    #       }
    #
    # @!attribute [rw] organizational_unit_id
    #   The AWS Organization unit ID data source for the sync.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ResourceDataSyncOrganizationalUnit AWS API Documentation
    #
    class ResourceDataSyncOrganizationalUnit < Struct.new(
      :organizational_unit_id)
      include Aws::Structure
    end

    # Information about the target S3 bucket for the Resource Data Sync.
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
    #         destination_data_sharing: {
    #           destination_data_sharing_type: "ResourceDataSyncDestinationDataSharingType",
    #         },
    #       }
    #
    # @!attribute [rw] bucket_name
    #   The name of the S3 bucket where the aggregated data is stored.
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
    #   The AWS Region with the S3 bucket targeted by the Resource Data
    #   Sync.
    #   @return [String]
    #
    # @!attribute [rw] awskms_key_arn
    #   The ARN of an encryption key for a destination in Amazon S3. Must
    #   belong to the same Region as the destination S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] destination_data_sharing
    #   Enables destination data sharing. By default, this field is `null`.
    #   @return [Types::ResourceDataSyncDestinationDataSharing]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ResourceDataSyncS3Destination AWS API Documentation
    #
    class ResourceDataSyncS3Destination < Struct.new(
      :bucket_name,
      :prefix,
      :sync_format,
      :region,
      :awskms_key_arn,
      :destination_data_sharing)
      include Aws::Structure
    end

    # Information about the source of the data included in the resource data
    # sync.
    #
    # @note When making an API call, you may pass ResourceDataSyncSource
    #   data as a hash:
    #
    #       {
    #         source_type: "ResourceDataSyncSourceType", # required
    #         aws_organizations_source: {
    #           organization_source_type: "ResourceDataSyncOrganizationSourceType", # required
    #           organizational_units: [
    #             {
    #               organizational_unit_id: "ResourceDataSyncOrganizationalUnitId",
    #             },
    #           ],
    #         },
    #         source_regions: ["ResourceDataSyncSourceRegion"], # required
    #         include_future_regions: false,
    #       }
    #
    # @!attribute [rw] source_type
    #   The type of data source for the resource data sync. `SourceType` is
    #   either `AwsOrganizations` (if an organization is present in AWS
    #   Organizations) or `singleAccountMultiRegions`.
    #   @return [String]
    #
    # @!attribute [rw] aws_organizations_source
    #   Information about the AwsOrganizationsSource resource data sync
    #   source. A sync source of this type can synchronize data from AWS
    #   Organizations.
    #   @return [Types::ResourceDataSyncAwsOrganizationsSource]
    #
    # @!attribute [rw] source_regions
    #   The `SyncSource` AWS Regions included in the resource data sync.
    #   @return [Array<String>]
    #
    # @!attribute [rw] include_future_regions
    #   Whether to automatically synchronize and aggregate data from new AWS
    #   Regions when those Regions come online.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ResourceDataSyncSource AWS API Documentation
    #
    class ResourceDataSyncSource < Struct.new(
      :source_type,
      :aws_organizations_source,
      :source_regions,
      :include_future_regions)
      include Aws::Structure
    end

    # The data type name for including resource data sync state. There are
    # four sync states:
    #
    # `OrganizationNotExists` (Your organization doesn't exist)
    #
    # `NoPermissions` (The system can't locate the service-linked role.
    # This role is automatically created when a user creates a resource data
    # sync in Explorer.)
    #
    # `InvalidOrganizationalUnit` (You specified or selected an invalid unit
    # in the resource data sync configuration.)
    #
    # `TrustedAccessDisabled` (You disabled Systems Manager access in the
    # organization in AWS Organizations.)
    #
    # @!attribute [rw] source_type
    #   The type of data source for the resource data sync. `SourceType` is
    #   either `AwsOrganizations` (if an organization is present in AWS
    #   Organizations) or `singleAccountMultiRegions`.
    #   @return [String]
    #
    # @!attribute [rw] aws_organizations_source
    #   The field name in `SyncSource` for the
    #   `ResourceDataSyncAwsOrganizationsSource` type.
    #   @return [Types::ResourceDataSyncAwsOrganizationsSource]
    #
    # @!attribute [rw] source_regions
    #   The `SyncSource` AWS Regions included in the resource data sync.
    #   @return [Array<String>]
    #
    # @!attribute [rw] include_future_regions
    #   Whether to automatically synchronize and aggregate data from new AWS
    #   Regions when those Regions come online.
    #   @return [Boolean]
    #
    # @!attribute [rw] state
    #   The data type name for including resource data sync state. There are
    #   four sync states:
    #
    #   `OrganizationNotExists`\: Your organization doesn't exist.
    #
    #   `NoPermissions`\: The system can't locate the service-linked role.
    #   This role is automatically created when a user creates a resource
    #   data sync in Explorer.
    #
    #   `InvalidOrganizationalUnit`\: You specified or selected an invalid
    #   unit in the resource data sync configuration.
    #
    #   `TrustedAccessDisabled`\: You disabled Systems Manager access in the
    #   organization in AWS Organizations.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ResourceDataSyncSourceWithState AWS API Documentation
    #
    class ResourceDataSyncSourceWithState < Struct.new(
      :source_type,
      :aws_organizations_source,
      :source_regions,
      :include_future_regions,
      :state)
      include Aws::Structure
    end

    # Error returned if an attempt is made to delete a patch baseline that
    # is registered for a patch group.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ResourceInUseException AWS API Documentation
    #
    class ResourceInUseException < Struct.new(
      :message)
      include Aws::Structure
    end

    # Error returned when the caller has exceeded the default resource
    # quotas. For example, too many maintenance windows or patch baselines
    # have been created.
    #
    # For information about resource quotas in Systems Manager, see [Systems
    # Manager service quotas][1] in the *AWS General Reference*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/general/latest/gr/ssm.html#limits_ssm
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ResourceLimitExceededException AWS API Documentation
    #
    class ResourceLimitExceededException < Struct.new(
      :message)
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
    #   `wss://ssmmessages.region.amazonaws.com/v1/data-channel/session-id?stream=(input|output)`.
    #
    #   **region** represents the Region identifier for an AWS Region
    #   supported by AWS Systems Manager, such as `us-east-2` for the US
    #   East (Ohio) Region. For a list of supported **region** values, see
    #   the **Region** column in [Systems Manager service endpoints][1] in
    #   the *AWS General Reference*.
    #
    #   **session-id** represents the ID of a Session Manager session, such
    #   as `1a2b3c4dEXAMPLE`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/ssm.html#ssm_region
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

    # An S3 bucket where you want to store the results of this request.
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
    #   Region of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] output_s3_bucket_name
    #   The name of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] output_s3_key_prefix
    #   The S3 bucket subfolder.
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

    # A URL for the S3 bucket where you want to store the results of this
    # request.
    #
    # @!attribute [rw] output_url
    #   A URL for an S3 bucket where you want to store the results of this
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/S3OutputUrl AWS API Documentation
    #
    class S3OutputUrl < Struct.new(
      :output_url)
      include Aws::Structure
    end

    # Information about a scheduled execution for a maintenance window.
    #
    # @!attribute [rw] window_id
    #   The ID of the maintenance window to be run.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the maintenance window to be run.
    #   @return [String]
    #
    # @!attribute [rw] execution_time
    #   The time, in ISO-8601 Extended format, that the maintenance window
    #   is scheduled to be run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ScheduledWindowExecution AWS API Documentation
    #
    class ScheduledWindowExecution < Struct.new(
      :window_id,
      :name,
      :execution_time)
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
    #   The type of signal to send to an Automation execution.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   The data sent with the signal. The data schema depends on the type
    #   of signal used in the request.
    #
    #   For `Approve` and `Reject` signal types, the payload is an optional
    #   comment that you can send with the signal type. For example:
    #
    #   `Comment="Looks good"`
    #
    #   For `StartStep` and `Resume` signal types, you must send the name of
    #   the Automation step to start or resume as the payload. For example:
    #
    #   `StepName="step1"`
    #
    #   For the `StopStep` signal type, you must send the step execution ID
    #   as the payload. For example:
    #
    #   `StepExecutionId="97fff367-fc5a-4299-aed8-0123456789ab"`
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
    #   The instance IDs where the command should run. You can specify a
    #   maximum of 50 IDs. If you prefer not to list individual instance
    #   IDs, you can instead send commands to a fleet of instances using the
    #   Targets parameter, which accepts EC2 tags. For more information
    #   about how to use targets, see [Using targets and rate controls to
    #   send commands to a fleet][1] in the *AWS Systems Manager User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] targets
    #   (Optional) An array of search criteria that targets instances using
    #   a Key,Value combination that you specify. Targets is required if you
    #   don't provide one or more instance IDs in the call. For more
    #   information about how to use targets, see [Sending commands to a
    #   fleet][1] in the *AWS Systems Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] document_name
    #   Required. The name of the Systems Manager document to run. This can
    #   be a public document or a custom document.
    #   @return [String]
    #
    # @!attribute [rw] document_version
    #   The SSM document version to use in the request. You can specify
    #   $DEFAULT, $LATEST, or a specific version number. If you run commands
    #   by using the AWS CLI, then you must escape the first two options by
    #   using a backslash. If you specify a version number, then you don't
    #   need to use the backslash. For example:
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
    #   running, it will not run.
    #   @return [Integer]
    #
    # @!attribute [rw] comment
    #   User-specified information about the command, such as a brief
    #   description of what the command should do.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The required and optional parameters specified in the document being
    #   run.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] output_s3_region
    #   (Deprecated) You can no longer specify this parameter. The system
    #   ignores it. Instead, Systems Manager automatically determines the
    #   Region of the S3 bucket.
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
    #   (Optional) The maximum number of instances that are allowed to run
    #   the command at the same time. You can specify a number such as 10 or
    #   a percentage such as 10%. The default value is 50. For more
    #   information about how to use MaxConcurrency, see [Using concurrency
    #   controls][1] in the *AWS Systems Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html#send-commands-velocity
    #   @return [String]
    #
    # @!attribute [rw] max_errors
    #   The maximum number of errors allowed without the command failing.
    #   When the command fails one more time beyond the value of MaxErrors,
    #   the systems stops sending the command to additional targets. You can
    #   specify a number like 10 or a percentage like 10%. The default value
    #   is 0. For more information about how to use MaxErrors, see [Using
    #   error controls][1] in the *AWS Systems Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html#send-commands-maxerrors
    #   @return [String]
    #
    # @!attribute [rw] service_role_arn
    #   The ARN of the IAM service role to use to publish Amazon Simple
    #   Notification Service (Amazon SNS) notifications for Run Command
    #   commands.
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

    # The service setting data structure.
    #
    # `ServiceSetting` is an account-level setting for an AWS service. This
    # setting defines how a user interacts with or uses a service or a
    # feature of a service. For example, if an AWS service charges money to
    # the account based on feature or service usage, then the AWS service
    # team might create a default setting of "false". This means the user
    # can't use this feature unless they change the setting to "true" and
    # intentionally opt in for a paid feature.
    #
    # Services map a `SettingId` object to a setting value. AWS services
    # teams define the default value for a `SettingId`. You can't create a
    # new `SettingId`, but you can overwrite the default value if you have
    # the `ssm:UpdateServiceSetting` permission for the setting. Use the
    # UpdateServiceSetting API action to change the default setting. Or, use
    # the ResetServiceSetting to change the value back to the original value
    # defined by the AWS service team.
    #
    # @!attribute [rw] setting_id
    #   The ID of the service setting.
    #   @return [String]
    #
    # @!attribute [rw] setting_value
    #   The value of the service setting.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The last time the service setting was modified.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_user
    #   The ARN of the last modified user. This field is populated only if
    #   the setting value was overwritten.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the service setting.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the service setting. The value can be Default,
    #   Customized or PendingUpdate.
    #
    #   * Default: The current setting uses a default value provisioned by
    #     the AWS service team.
    #
    #   * Customized: The current setting use a custom value specified by
    #     the customer.
    #
    #   * PendingUpdate: The current setting uses a default or custom value,
    #     but a setting change request is pending approval.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ServiceSetting AWS API Documentation
    #
    class ServiceSetting < Struct.new(
      :setting_id,
      :setting_value,
      :last_modified_date,
      :last_modified_user,
      :arn,
      :status)
      include Aws::Structure
    end

    # The specified service setting was not found. Either the service name
    # or the setting has not been provisioned by the AWS service team.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ServiceSettingNotFound AWS API Documentation
    #
    class ServiceSettingNotFound < Struct.new(
      :message)
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
    #   The association IDs that you want to run immediately and only one
    #   time.
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
    #         target_locations: [
    #           {
    #             accounts: ["Account"],
    #             regions: ["Region"],
    #             target_location_max_concurrency: "MaxConcurrency",
    #             target_location_max_errors: "MaxErrors",
    #             execution_role_name: "ExecutionRoleName",
    #           },
    #         ],
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
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
    #   rate-controlled execution. Required if you specify targets.
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
    # @!attribute [rw] target_locations
    #   A location is a combination of AWS Regions and/or AWS accounts where
    #   you want to run the Automation. Use this action to start an
    #   Automation in multiple Regions and multiple accounts. For more
    #   information, see [Running Automation workflows in multiple AWS
    #   Regions and accounts][1] in the *AWS Systems Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-automation-multiple-accounts-and-regions.html
    #   @return [Array<Types::TargetLocation>]
    #
    # @!attribute [rw] tags
    #   Optional metadata that you assign to a resource. You can specify a
    #   maximum of five tags for an automation. Tags enable you to
    #   categorize a resource in different ways, such as by purpose, owner,
    #   or environment. For example, you might want to tag an automation to
    #   identify an environment or operating system. In this case, you could
    #   specify the following key name/value pairs:
    #
    #   * `Key=environment,Value=test`
    #
    #   * `Key=OS,Value=Windows`
    #
    #   <note markdown="1"> To add tags to an existing patch baseline, use the AddTagsToResource
    #   action.
    #
    #    </note>
    #   @return [Array<Types::Tag>]
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
      :max_errors,
      :target_locations,
      :tags)
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
    #   `wss://ssmmessages.region.amazonaws.com/v1/data-channel/session-id?stream=(input|output)`
    #
    #   **region** represents the Region identifier for an AWS Region
    #   supported by AWS Systems Manager, such as `us-east-2` for the US
    #   East (Ohio) Region. For a list of supported **region** values, see
    #   the **Region** column in [Systems Manager service endpoints][1] in
    #   the *AWS General Reference*.
    #
    #   **session-id** represents the ID of a Session Manager session, such
    #   as `1a2b3c4dEXAMPLE`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/ssm.html#ssm_region
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

    # The updated status is the same as the current status.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/StatusUnchanged AWS API Documentation
    #
    class StatusUnchanged < Aws::EmptyStructure; end

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
    #   The execution status for this step.
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
    #   A user-specified list of parameters to override when running a step.
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
    #   ignore the failure of current step and allow automation to run the
    #   next step. With conditional branching, we add step:stepName to
    #   support the automation to go to another specific step.
    #   @return [Array<String>]
    #
    # @!attribute [rw] targets
    #   The targets for the step execution.
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] target_location
    #   The combination of AWS Regions and accounts targeted by the current
    #   Automation execution.
    #   @return [Types::TargetLocation]
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
      :valid_next_steps,
      :targets,
      :target_location)
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

    # The sub-type count exceeded the limit for the inventory type.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/SubTypeCountLimitExceededException AWS API Documentation
    #
    class SubTypeCountLimitExceededException < Struct.new(
      :message)
      include Aws::Structure
    end

    # Metadata that you assign to your AWS resources. Tags enable you to
    # categorize your resources in different ways, for example, by purpose,
    # owner, or environment. In Systems Manager, you can apply tags to
    # documents, managed instances, maintenance windows, Parameter Store
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
    # combination that you specify.
    #
    # Supported formats include the following.
    #
    # * `Key=InstanceIds,Values=instance-id-1,instance-id-2,instance-id-3 `
    #
    # * `Key=tag:my-tag-key,Values=my-tag-value-1,my-tag-value-2 `
    #
    # * `Key=tag-key,Values=my-tag-key-1,my-tag-key-2 `
    #
    # * (Maintenance window targets only)
    #   `Key=resource-groups:Name,Values=resource-group-name `
    #
    # * (Maintenance window targets only)
    #   `Key=resource-groups:ResourceTypeFilters,Values=resource-type-1,resource-type-2
    #   `
    #
    # For example:
    #
    # * `Key=InstanceIds,Values=i-02573cafcfEXAMPLE,i-0471e04240EXAMPLE,i-07782c72faEXAMPLE`
    #
    # * `Key=tag:CostCenter,Values=CostCenter1,CostCenter2,CostCenter3`
    #
    # * `Key=tag-key,Values=Name,Instance-Type,CostCenter`
    #
    # * (Maintenance window targets only)
    #   `Key=resource-groups:Name,Values=ProductionResourceGroup`
    #
    #   This example demonstrates how to target all resources in the
    #   resource group **ProductionResourceGroup** in your maintenance
    #   window.
    #
    # * (Maintenance window targets only)
    #   `Key=resource-groups:ResourceTypeFilters,Values=AWS::EC2::INSTANCE,AWS::EC2::VPC
    #   `
    #
    #   This example demonstrates how to target only EC2 instances and VPCs
    #   in your maintenance window.
    #
    # * (State Manager association targets only) `Key=InstanceIds,Values=* `
    #
    #   This example demonstrates how to target all managed instances in the
    #   AWS Region where the association was created.
    #
    # For information about how to send commands that target instances using
    # `Key,Value` parameters, see [Targeting multiple instances][1] in the
    # *AWS Systems Manager User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html#send-commands-targeting
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
    #   that meet the criteria.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   User-defined criteria that maps to `Key`. For example, if you
    #   specified `tag:ServerRole`, you could specify `value:WebServer` to
    #   run a command on instances that include EC2 tags of
    #   `ServerRole,WebServer`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/Target AWS API Documentation
    #
    class Target < Struct.new(
      :key,
      :values)
      include Aws::Structure
    end

    # You specified the `Safe` option for the
    # DeregisterTargetFromMaintenanceWindow operation, but the target is
    # still referenced in a task.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/TargetInUseException AWS API Documentation
    #
    class TargetInUseException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The combination of AWS Regions and accounts targeted by the current
    # Automation execution.
    #
    # @note When making an API call, you may pass TargetLocation
    #   data as a hash:
    #
    #       {
    #         accounts: ["Account"],
    #         regions: ["Region"],
    #         target_location_max_concurrency: "MaxConcurrency",
    #         target_location_max_errors: "MaxErrors",
    #         execution_role_name: "ExecutionRoleName",
    #       }
    #
    # @!attribute [rw] accounts
    #   The AWS accounts targeted by the current Automation execution.
    #   @return [Array<String>]
    #
    # @!attribute [rw] regions
    #   The AWS Regions targeted by the current Automation execution.
    #   @return [Array<String>]
    #
    # @!attribute [rw] target_location_max_concurrency
    #   The maximum number of AWS accounts and AWS regions allowed to run
    #   the Automation concurrently
    #   @return [String]
    #
    # @!attribute [rw] target_location_max_errors
    #   The maximum number of errors allowed before the system stops
    #   queueing additional Automation executions for the currently running
    #   Automation.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_name
    #   The Automation execution role used by the currently running
    #   Automation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/TargetLocation AWS API Documentation
    #
    class TargetLocation < Struct.new(
      :accounts,
      :regions,
      :target_location_max_concurrency,
      :target_location_max_errors,
      :execution_role_name)
      include Aws::Structure
    end

    # The specified target instance for the session is not fully configured
    # for use with Session Manager. For more information, see [Getting
    # started with Session Manager][1] in the *AWS Systems Manager User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-getting-started.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/TargetNotConnected AWS API Documentation
    #
    class TargetNotConnected < Struct.new(
      :message)
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

    # The `Targets` parameter includes too many tags. Remove one or more
    # tags and try the command again.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/TooManyTagsError AWS API Documentation
    #
    class TooManyTagsError < Aws::EmptyStructure; end

    # There are concurrent updates for a resource that supports one update
    # at a time.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/TooManyUpdates AWS API Documentation
    #
    class TooManyUpdates < Struct.new(
      :message)
      include Aws::Structure
    end

    # The size of inventory data has exceeded the total size limit for the
    # resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/TotalSizeLimitExceededException AWS API Documentation
    #
    class TotalSizeLimitExceededException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The calendar entry contained in the specified Systems Manager document
    # is not supported.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UnsupportedCalendarException AWS API Documentation
    #
    class UnsupportedCalendarException < Struct.new(
      :message)
      include Aws::Structure
    end

    # Microsoft application patching is only available on EC2 instances and
    # advanced instances. To patch Microsoft applications on on-premises
    # servers and VMs, you must enable advanced instances. For more
    # information, see [Using the advanced-instances tier][1] in the *AWS
    # Systems Manager User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-managedinstances-advanced.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UnsupportedFeatureRequiredException AWS API Documentation
    #
    class UnsupportedFeatureRequiredException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The `Context` attribute that you specified for the `InventoryItem` is
    # not allowed for this inventory type. You can only use the `Context`
    # attribute with inventory types like `AWS:ComplianceItem`.
    #
    # @!attribute [rw] type_name
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UnsupportedInventoryItemContextException AWS API Documentation
    #
    class UnsupportedInventoryItemContextException < Struct.new(
      :type_name,
      :message)
      include Aws::Structure
    end

    # Inventory item type schema version has to match supported versions in
    # the service. Check output of GetInventorySchema to see the available
    # schema version for each type.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UnsupportedInventorySchemaVersionException AWS API Documentation
    #
    class UnsupportedInventorySchemaVersionException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The operating systems you specified is not supported, or the operation
    # is not supported for the operating system. Valid operating systems
    # include: Windows, AmazonLinux, RedhatEnterpriseLinux, and Ubuntu.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UnsupportedOperatingSystem AWS API Documentation
    #
    class UnsupportedOperatingSystem < Struct.new(
      :message)
      include Aws::Structure
    end

    # The parameter type is not supported.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UnsupportedParameterType AWS API Documentation
    #
    class UnsupportedParameterType < Struct.new(
      :message)
      include Aws::Structure
    end

    # The document does not support the platform type of the given instance
    # ID(s). For example, you sent an document for a Windows instance to a
    # Linux instance.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UnsupportedPlatformType AWS API Documentation
    #
    class UnsupportedPlatformType < Struct.new(
      :message)
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
    #         name: "DocumentARN",
    #         targets: [
    #           {
    #             key: "TargetKey",
    #             values: ["TargetValue"],
    #           },
    #         ],
    #         association_name: "AssociationName",
    #         association_version: "AssociationVersion",
    #         automation_target_parameter_name: "AutomationTargetParameterName",
    #         max_errors: "MaxErrors",
    #         max_concurrency: "MaxConcurrency",
    #         compliance_severity: "CRITICAL", # accepts CRITICAL, HIGH, MEDIUM, LOW, UNSPECIFIED
    #         sync_compliance: "AUTO", # accepts AUTO, MANUAL
    #         apply_only_at_cron_interval: false,
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
    #   An S3 bucket where you want to store the results of this request.
    #   @return [Types::InstanceAssociationOutputLocation]
    #
    # @!attribute [rw] name
    #   The name of the SSM document that contains the configuration
    #   information for the instance. You can specify Command or Automation
    #   documents.
    #
    #   You can specify AWS-predefined documents, documents you created, or
    #   a document that is shared with you from another account.
    #
    #   For SSM documents that are shared with you from other AWS accounts,
    #   you must specify the complete SSM document ARN, in the following
    #   format:
    #
    #   `arn:aws:ssm:region:account-id:document/document-name `
    #
    #   For example:
    #
    #   `arn:aws:ssm:us-east-2:12345678912:document/My-Shared-Document`
    #
    #   For AWS-predefined documents and SSM documents you created in your
    #   account, you only need to specify the document name. For example,
    #   `AWS-ApplyPatchBaseline` or `My-Document`.
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
    # @!attribute [rw] automation_target_parameter_name
    #   Specify the target for the association. This target is required for
    #   associations that use an Automation document and target resources by
    #   using rate controls.
    #   @return [String]
    #
    # @!attribute [rw] max_errors
    #   The number of errors that are allowed before the system stops
    #   sending requests to run the association on additional targets. You
    #   can specify either an absolute number of errors, for example 10, or
    #   a percentage of the target set, for example 10%. If you specify 3,
    #   for example, the system stops sending requests when the fourth error
    #   is received. If you specify 0, then the system stops sending
    #   requests after the first error is returned. If you run an
    #   association on 50 instances and set MaxError to 10%, then the system
    #   stops sending the request when the sixth error is received.
    #
    #   Executions that are already running an association when MaxErrors is
    #   reached are allowed to complete, but some of these executions may
    #   fail as well. If you need to ensure that there won't be more than
    #   max-errors failed executions, set MaxConcurrency to 1 so that
    #   executions proceed one at a time.
    #   @return [String]
    #
    # @!attribute [rw] max_concurrency
    #   The maximum number of targets allowed to run the association at the
    #   same time. You can specify a number, for example 10, or a percentage
    #   of the target set, for example 10%. The default value is 100%, which
    #   means all targets run the association at the same time.
    #
    #   If a new instance starts and attempts to run an association while
    #   Systems Manager is running MaxConcurrency associations, the
    #   association is allowed to run. During the next association interval,
    #   the new instance will process its association within the limit
    #   specified for MaxConcurrency.
    #   @return [String]
    #
    # @!attribute [rw] compliance_severity
    #   The severity level to assign to the association.
    #   @return [String]
    #
    # @!attribute [rw] sync_compliance
    #   The mode for generating association compliance. You can specify
    #   `AUTO` or `MANUAL`. In `AUTO` mode, the system uses the status of
    #   the association execution to determine the compliance status. If the
    #   association execution runs successfully, then the association is
    #   `COMPLIANT`. If the association execution doesn't run successfully,
    #   the association is `NON-COMPLIANT`.
    #
    #   In `MANUAL` mode, you must specify the `AssociationId` as a
    #   parameter for the PutComplianceItems API action. In this case,
    #   compliance data is not managed by State Manager. It is managed by
    #   your direct call to the PutComplianceItems API action.
    #
    #   By default, all associations use `AUTO` mode.
    #   @return [String]
    #
    # @!attribute [rw] apply_only_at_cron_interval
    #   By default, when you update an association, the system runs it
    #   immediately after it is updated and then according to the schedule
    #   you specified. Specify this option if you don't want an association
    #   to run immediately after you update it.
    #
    #   Also, if you specified this option when you created the association,
    #   you can reset it. To do so, specify the
    #   `no-apply-only-at-cron-interval` parameter when you update the
    #   association from the command line. This parameter forces the
    #   association to run immediately after updating it and according to
    #   the interval specified.
    #   @return [Boolean]
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
      :association_version,
      :automation_target_parameter_name,
      :max_errors,
      :max_concurrency,
      :compliance_severity,
      :sync_compliance,
      :apply_only_at_cron_interval)
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
    #         name: "DocumentARN", # required
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
    #         attachments: [
    #           {
    #             key: "SourceUrl", # accepts SourceUrl, S3FileUrl, AttachmentReference
    #             values: ["AttachmentsSourceValue"],
    #             name: "AttachmentIdentifier",
    #           },
    #         ],
    #         name: "DocumentName", # required
    #         version_name: "DocumentVersionName",
    #         document_version: "DocumentVersion",
    #         document_format: "YAML", # accepts YAML, JSON, TEXT
    #         target_type: "TargetType",
    #       }
    #
    # @!attribute [rw] content
    #   A valid JSON or YAML string.
    #   @return [String]
    #
    # @!attribute [rw] attachments
    #   A list of key and value pairs that describe attachments to a version
    #   of a document.
    #   @return [Array<Types::AttachmentsSource>]
    #
    # @!attribute [rw] name
    #   The name of the document that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] version_name
    #   An optional field specifying the version of the artifact you are
    #   updating with the document. For example, "Release 12, Update 6".
    #   This value is unique across all versions of a document, and cannot
    #   be changed.
    #   @return [String]
    #
    # @!attribute [rw] document_version
    #   (Required) The latest version of the document that you want to
    #   update. The latest document version can be specified using the
    #   $LATEST variable or by the version number. Updating a previous
    #   version of a document is not supported.
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
      :attachments,
      :name,
      :version_name,
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
    #         start_date: "MaintenanceWindowStringDateTime",
    #         end_date: "MaintenanceWindowStringDateTime",
    #         schedule: "MaintenanceWindowSchedule",
    #         schedule_timezone: "MaintenanceWindowTimezone",
    #         duration: 1,
    #         cutoff: 1,
    #         allow_unassociated_targets: false,
    #         enabled: false,
    #         replace: false,
    #       }
    #
    # @!attribute [rw] window_id
    #   The ID of the maintenance window to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the maintenance window.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description for the update request.
    #   @return [String]
    #
    # @!attribute [rw] start_date
    #   The time zone that the scheduled maintenance window executions are
    #   based on, in Internet Assigned Numbers Authority (IANA) format. For
    #   example: "America/Los\_Angeles", "etc/UTC", or "Asia/Seoul".
    #   For more information, see the [Time Zone Database][1] on the IANA
    #   website.
    #
    #
    #
    #   [1]: https://www.iana.org/time-zones
    #   @return [String]
    #
    # @!attribute [rw] end_date
    #   The date and time, in ISO-8601 Extended format, for when you want
    #   the maintenance window to become inactive. EndDate allows you to set
    #   a date and time in the future when the maintenance window will no
    #   longer run.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   The schedule of the maintenance window in the form of a cron or rate
    #   expression.
    #   @return [String]
    #
    # @!attribute [rw] schedule_timezone
    #   The time zone that the scheduled maintenance window executions are
    #   based on, in Internet Assigned Numbers Authority (IANA) format. For
    #   example: "America/Los\_Angeles", "etc/UTC", or "Asia/Seoul".
    #   For more information, see the [Time Zone Database][1] on the IANA
    #   website.
    #
    #
    #
    #   [1]: https://www.iana.org/time-zones
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   The duration of the maintenance window in hours.
    #   @return [Integer]
    #
    # @!attribute [rw] cutoff
    #   The number of hours before the end of the maintenance window that
    #   Systems Manager stops scheduling new tasks for execution.
    #   @return [Integer]
    #
    # @!attribute [rw] allow_unassociated_targets
    #   Whether targets must be registered with the maintenance window
    #   before tasks can be defined for those targets.
    #   @return [Boolean]
    #
    # @!attribute [rw] enabled
    #   Whether the maintenance window is enabled.
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
      :start_date,
      :end_date,
      :schedule,
      :schedule_timezone,
      :duration,
      :cutoff,
      :allow_unassociated_targets,
      :enabled,
      :replace)
      include Aws::Structure
    end

    # @!attribute [rw] window_id
    #   The ID of the created maintenance window.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the maintenance window.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description of the update.
    #   @return [String]
    #
    # @!attribute [rw] start_date
    #   The date and time, in ISO-8601 Extended format, for when the
    #   maintenance window is scheduled to become active. The maintenance
    #   window will not run before this specified time.
    #   @return [String]
    #
    # @!attribute [rw] end_date
    #   The date and time, in ISO-8601 Extended format, for when the
    #   maintenance window is scheduled to become inactive. The maintenance
    #   window will not run after this specified time.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   The schedule of the maintenance window in the form of a cron or rate
    #   expression.
    #   @return [String]
    #
    # @!attribute [rw] schedule_timezone
    #   The time zone that the scheduled maintenance window executions are
    #   based on, in Internet Assigned Numbers Authority (IANA) format. For
    #   example: "America/Los\_Angeles", "etc/UTC", or "Asia/Seoul".
    #   For more information, see the [Time Zone Database][1] on the IANA
    #   website.
    #
    #
    #
    #   [1]: https://www.iana.org/time-zones
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   The duration of the maintenance window in hours.
    #   @return [Integer]
    #
    # @!attribute [rw] cutoff
    #   The number of hours before the end of the maintenance window that
    #   Systems Manager stops scheduling new tasks for execution.
    #   @return [Integer]
    #
    # @!attribute [rw] allow_unassociated_targets
    #   Whether targets must be registered with the maintenance window
    #   before tasks can be defined for those targets.
    #   @return [Boolean]
    #
    # @!attribute [rw] enabled
    #   Whether the maintenance window is enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateMaintenanceWindowResult AWS API Documentation
    #
    class UpdateMaintenanceWindowResult < Struct.new(
      :window_id,
      :name,
      :description,
      :start_date,
      :end_date,
      :schedule,
      :schedule_timezone,
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
    #   The maintenance window ID with which to modify the target.
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
    #   raised while running tasks for these targets in this maintenance
    #   window.
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
    #   The maintenance window ID specified in the update request.
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
    #             cloud_watch_output_config: {
    #               cloud_watch_log_group_name: "CloudWatchLogGroupName",
    #               cloud_watch_output_enabled: false,
    #             },
    #             document_hash: "DocumentHash",
    #             document_hash_type: "Sha256", # accepts Sha256, Sha1
    #             document_version: "DocumentVersion",
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
    #   The maintenance window ID that contains the task to modify.
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
    #   The ARN of the IAM service role for Systems Manager to assume when
    #   running a maintenance window task. If you do not specify a service
    #   role ARN, Systems Manager uses your account's service-linked role.
    #   If no service-linked role for Systems Manager exists in your
    #   account, it is created when you run
    #   `RegisterTaskWithMaintenanceWindow`.
    #
    #   For more information, see the following topics in the in the *AWS
    #   Systems Manager User Guide*\:
    #
    #   * [Using service-linked roles for Systems Manager][1]
    #
    #   * [Should I use a service-linked role or a custom service role to
    #     run maintenance window tasks? ][2]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/using-service-linked-roles.html#slr-permissions
    #   [2]: https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-maintenance-permissions.html#maintenance-window-tasks-service-role
    #   @return [String]
    #
    # @!attribute [rw] task_parameters
    #   The parameters to modify.
    #
    #   <note markdown="1"> `TaskParameters` has been deprecated. To specify parameters to pass
    #   to a task when it runs, instead use the `Parameters` option in the
    #   `TaskInvocationParameters` structure. For information about how
    #   Systems Manager handles these options for the supported maintenance
    #   window task types, see MaintenanceWindowTaskInvocationParameters.
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
    #   options for the supported maintenance window task types, see
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
    #   The ID of the maintenance window that was updated.
    #   @return [String]
    #
    # @!attribute [rw] window_task_id
    #   The task ID of the maintenance window that was updated.
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
    #   The ARN of the IAM service role to use to publish Amazon Simple
    #   Notification Service (Amazon SNS) notifications for maintenance
    #   window Run Command tasks.
    #   @return [String]
    #
    # @!attribute [rw] task_parameters
    #   The updated parameter values.
    #
    #   <note markdown="1"> `TaskParameters` has been deprecated. To specify parameters to pass
    #   to a task when it runs, instead use the `Parameters` option in the
    #   `TaskInvocationParameters` structure. For information about how
    #   Systems Manager handles these options for the supported maintenance
    #   window task types, see MaintenanceWindowTaskInvocationParameters.
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
    #   options for the supported maintenance window task types, see
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

    # @note When making an API call, you may pass UpdateOpsItemRequest
    #   data as a hash:
    #
    #       {
    #         description: "OpsItemDescription",
    #         operational_data: {
    #           "OpsItemDataKey" => {
    #             value: "OpsItemDataValueString",
    #             type: "SearchableString", # accepts SearchableString, String
    #           },
    #         },
    #         operational_data_to_delete: ["String"],
    #         notifications: [
    #           {
    #             arn: "String",
    #           },
    #         ],
    #         priority: 1,
    #         related_ops_items: [
    #           {
    #             ops_item_id: "String", # required
    #           },
    #         ],
    #         status: "Open", # accepts Open, InProgress, Resolved
    #         ops_item_id: "OpsItemId", # required
    #         title: "OpsItemTitle",
    #         category: "OpsItemCategory",
    #         severity: "OpsItemSeverity",
    #       }
    #
    # @!attribute [rw] description
    #   Update the information about the OpsItem. Provide enough information
    #   so that users reading this OpsItem for the first time understand the
    #   issue.
    #   @return [String]
    #
    # @!attribute [rw] operational_data
    #   Add new keys or edit existing key-value pairs of the OperationalData
    #   map in the OpsItem object.
    #
    #   Operational data is custom data that provides useful reference
    #   details about the OpsItem. For example, you can specify log files,
    #   error strings, license keys, troubleshooting tips, or other relevant
    #   data. You enter operational data as key-value pairs. The key has a
    #   maximum length of 128 characters. The value has a maximum size of 20
    #   KB.
    #
    #   Operational data keys *can't* begin with the following: amazon,
    #   aws, amzn, ssm, /amazon, /aws, /amzn, /ssm.
    #
    #   You can choose to make the data searchable by other users in the
    #   account or you can restrict search access. Searchable data means
    #   that all users with access to the OpsItem Overview page (as provided
    #   by the DescribeOpsItems API action) can view and search on the
    #   specified data. Operational data that is not searchable is only
    #   viewable by users who have access to the OpsItem (as provided by the
    #   GetOpsItem API action).
    #
    #   Use the `/aws/resources` key in OperationalData to specify a related
    #   resource in the request. Use the `/aws/automations` key in
    #   OperationalData to associate an Automation runbook with the OpsItem.
    #   To view AWS CLI example commands that use these keys, see [Creating
    #   OpsItems manually][1] in the *AWS Systems Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-creating-OpsItems.html#OpsCenter-manually-create-OpsItems
    #   @return [Hash<String,Types::OpsItemDataValue>]
    #
    # @!attribute [rw] operational_data_to_delete
    #   Keys that you want to remove from the OperationalData map.
    #   @return [Array<String>]
    #
    # @!attribute [rw] notifications
    #   The Amazon Resource Name (ARN) of an SNS topic where notifications
    #   are sent when this OpsItem is edited or changed.
    #   @return [Array<Types::OpsItemNotification>]
    #
    # @!attribute [rw] priority
    #   The importance of this OpsItem in relation to other OpsItems in the
    #   system.
    #   @return [Integer]
    #
    # @!attribute [rw] related_ops_items
    #   One or more OpsItems that share something in common with the current
    #   OpsItems. For example, related OpsItems can include OpsItems with
    #   similar error messages, impacted resources, or statuses for the
    #   impacted resource.
    #   @return [Array<Types::RelatedOpsItem>]
    #
    # @!attribute [rw] status
    #   The OpsItem status. Status can be `Open`, `In Progress`, or
    #   `Resolved`. For more information, see [Editing OpsItem details][1]
    #   in the *AWS Systems Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-working-with-OpsItems.html#OpsCenter-working-with-OpsItems-editing-details
    #   @return [String]
    #
    # @!attribute [rw] ops_item_id
    #   The ID of the OpsItem.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   A short heading that describes the nature of the OpsItem and the
    #   impacted resource.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   Specify a new category for an OpsItem.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   Specify a new severity for an OpsItem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateOpsItemRequest AWS API Documentation
    #
    class UpdateOpsItemRequest < Struct.new(
      :description,
      :operational_data,
      :operational_data_to_delete,
      :notifications,
      :priority,
      :related_ops_items,
      :status,
      :ops_item_id,
      :title,
      :category,
      :severity)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateOpsItemResponse AWS API Documentation
    #
    class UpdateOpsItemResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdatePatchBaselineRequest
    #   data as a hash:
    #
    #       {
    #         baseline_id: "BaselineId", # required
    #         name: "BaselineName",
    #         global_filters: {
    #           patch_filters: [ # required
    #             {
    #               key: "PATCH_SET", # required, accepts PATCH_SET, PRODUCT, PRODUCT_FAMILY, CLASSIFICATION, MSRC_SEVERITY, PATCH_ID, SECTION, PRIORITY, SEVERITY
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
    #                     key: "PATCH_SET", # required, accepts PATCH_SET, PRODUCT, PRODUCT_FAMILY, CLASSIFICATION, MSRC_SEVERITY, PATCH_ID, SECTION, PRIORITY, SEVERITY
    #                     values: ["PatchFilterValue"], # required
    #                   },
    #                 ],
    #               },
    #               compliance_level: "CRITICAL", # accepts CRITICAL, HIGH, MEDIUM, LOW, INFORMATIONAL, UNSPECIFIED
    #               approve_after_days: 1,
    #               approve_until_date: "PatchStringDateTime",
    #               enable_non_security: false,
    #             },
    #           ],
    #         },
    #         approved_patches: ["PatchId"],
    #         approved_patches_compliance_level: "CRITICAL", # accepts CRITICAL, HIGH, MEDIUM, LOW, INFORMATIONAL, UNSPECIFIED
    #         approved_patches_enable_non_security: false,
    #         rejected_patches: ["PatchId"],
    #         rejected_patches_action: "ALLOW_AS_DEPENDENCY", # accepts ALLOW_AS_DEPENDENCY, BLOCK
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
    #   A set of global filters used to include patches in the baseline.
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
    #   and rejected patches, see [About package name formats for approved
    #   and rejected patch lists][1] in the *AWS Systems Manager User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html
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
    #   and rejected patches, see [About package name formats for approved
    #   and rejected patch lists][1] in the *AWS Systems Manager User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] rejected_patches_action
    #   The action for Patch Manager to take on patches included in the
    #   RejectedPackages list.
    #
    #   * **ALLOW\_AS\_DEPENDENCY**\: A package in the Rejected patches list
    #     is installed only if it is a dependency of another package. It is
    #     considered compliant with the patch baseline, and its status is
    #     reported as *InstalledOther*. This is the default action if no
    #     option is specified.
    #
    #   * **BLOCK**\: Packages in the RejectedPatches list, and packages
    #     that include them as dependencies, are not installed under any
    #     circumstances. If a package was installed before it was added to
    #     the Rejected patches list, it is considered non-compliant with the
    #     patch baseline, and its status is reported as *InstalledRejected*.
    #   @return [String]
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
      :rejected_patches_action,
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
    # @!attribute [rw] rejected_patches_action
    #   The action specified to take on patches included in the
    #   RejectedPatches list. A patch can be allowed only if it is a
    #   dependency of another package, or blocked entirely along with
    #   packages that include it as a dependency.
    #   @return [String]
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
      :rejected_patches_action,
      :created_date,
      :modified_date,
      :description,
      :sources)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateResourceDataSyncRequest
    #   data as a hash:
    #
    #       {
    #         sync_name: "ResourceDataSyncName", # required
    #         sync_type: "ResourceDataSyncType", # required
    #         sync_source: { # required
    #           source_type: "ResourceDataSyncSourceType", # required
    #           aws_organizations_source: {
    #             organization_source_type: "ResourceDataSyncOrganizationSourceType", # required
    #             organizational_units: [
    #               {
    #                 organizational_unit_id: "ResourceDataSyncOrganizationalUnitId",
    #               },
    #             ],
    #           },
    #           source_regions: ["ResourceDataSyncSourceRegion"], # required
    #           include_future_regions: false,
    #         },
    #       }
    #
    # @!attribute [rw] sync_name
    #   The name of the resource data sync you want to update.
    #   @return [String]
    #
    # @!attribute [rw] sync_type
    #   The type of resource data sync. The supported `SyncType` is
    #   SyncFromSource.
    #   @return [String]
    #
    # @!attribute [rw] sync_source
    #   Specify information about the data sources to synchronize.
    #   @return [Types::ResourceDataSyncSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateResourceDataSyncRequest AWS API Documentation
    #
    class UpdateResourceDataSyncRequest < Struct.new(
      :sync_name,
      :sync_type,
      :sync_source)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateResourceDataSyncResult AWS API Documentation
    #
    class UpdateResourceDataSyncResult < Aws::EmptyStructure; end

    # The request body of the UpdateServiceSetting API action.
    #
    # @note When making an API call, you may pass UpdateServiceSettingRequest
    #   data as a hash:
    #
    #       {
    #         setting_id: "ServiceSettingId", # required
    #         setting_value: "ServiceSettingValue", # required
    #       }
    #
    # @!attribute [rw] setting_id
    #   The Amazon Resource Name (ARN) of the service setting to reset. For
    #   example,
    #   `arn:aws:ssm:us-east-1:111122223333:servicesetting/ssm/parameter-store/high-throughput-enabled`.
    #   The setting ID can be one of the following.
    #
    #   * `/ssm/parameter-store/default-parameter-tier`
    #
    #   * `/ssm/parameter-store/high-throughput-enabled`
    #
    #   * `/ssm/managed-instance/activation-tier`
    #   @return [String]
    #
    # @!attribute [rw] setting_value
    #   The new value to specify for the service setting. For the
    #   `/ssm/parameter-store/default-parameter-tier` setting ID, the
    #   setting value can be one of the following.
    #
    #   * Standard
    #
    #   * Advanced
    #
    #   * Intelligent-Tiering
    #
    #   For the `/ssm/parameter-store/high-throughput-enabled`, and
    #   `/ssm/managed-instance/activation-tier` setting IDs, the setting
    #   value can be true or false.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateServiceSettingRequest AWS API Documentation
    #
    class UpdateServiceSettingRequest < Struct.new(
      :setting_id,
      :setting_value)
      include Aws::Structure
    end

    # The result body of the UpdateServiceSetting API action.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateServiceSettingResult AWS API Documentation
    #
    class UpdateServiceSettingResult < Aws::EmptyStructure; end

  end
end
