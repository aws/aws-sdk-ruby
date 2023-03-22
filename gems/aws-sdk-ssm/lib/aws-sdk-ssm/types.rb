# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SSM
  module Types

    # Information includes the Amazon Web Services account ID where the
    # current document is shared and the version shared with that account.
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID where the current document is
    #   shared.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # An activation registers one or more on-premises servers or virtual
    # machines (VMs) with Amazon Web Services so that you can configure
    # those servers or VMs using Run Command. A server or VM that has been
    # registered with Amazon Web Services Systems Manager is called a
    # managed node.
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
    #   A name for the managed node when it is created.
    #   @return [String]
    #
    # @!attribute [rw] iam_role
    #   The Identity and Access Management (IAM) role to assign to the
    #   managed node.
    #   @return [String]
    #
    # @!attribute [rw] registration_limit
    #   The maximum number of managed nodes that can be registered using
    #   this activation.
    #   @return [Integer]
    #
    # @!attribute [rw] registrations_count
    #   The number of managed nodes already registered with this activation.
    #   @return [Integer]
    #
    # @!attribute [rw] expiration_date
    #   The date when this activation can no longer be used to register
    #   managed nodes.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_type
    #   Specifies the type of resource you are tagging.
    #
    #   <note markdown="1"> The `ManagedInstance` type for this API operation is for on-premises
    #   managed nodes. You must specify the name of the managed node in the
    #   following format: `mi-ID_number `. For example, `mi-1a2b3c4d5e6f`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The resource ID you want to tag.
    #
    #   Use the ID of the resource. Here are some examples:
    #
    #   `MaintenanceWindow`: `mw-012345abcde`
    #
    #   `PatchBaseline`: `pb-012345abcde`
    #
    #   `Automation`: `example-c160-4567-8519-012345abcde`
    #
    #   `OpsMetadata` object: `ResourceID` for tagging is created from the
    #   Amazon Resource Name (ARN) for the object. Specifically,
    #   `ResourceID` is created from the strings that come after the word
    #   `opsmetadata` in the ARN. For example, an OpsMetadata object with an
    #   ARN of
    #   `arn:aws:ssm:us-east-2:1234567890:opsmetadata/aws/ssm/MyGroup/appmanager`
    #   has a `ResourceID` of either `aws/ssm/MyGroup/appmanager` or
    #   `/aws/ssm/MyGroup/appmanager`.
    #
    #   For the `Document` and `Parameter` values, use the name of the
    #   resource.
    #
    #   `ManagedInstance`: `mi-012345abcde`
    #
    #   <note markdown="1"> The `ManagedInstance` type for this API operation is only for
    #   on-premises managed nodes. You must specify the name of the managed
    #   node in the following format: `mi-ID_number `. For example,
    #   `mi-1a2b3c4d5e6f`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   One or more tags. The value parameter is required.
    #
    #   Don't enter personally identifiable information in this field.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AddTagsToResourceRequest AWS API Documentation
    #
    class AddTagsToResourceRequest < Struct.new(
      :resource_type,
      :resource_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AddTagsToResourceResult AWS API Documentation
    #
    class AddTagsToResourceResult < Aws::EmptyStructure; end

    # A CloudWatch alarm you apply to an automation or command.
    #
    # @!attribute [rw] name
    #   The name of your CloudWatch alarm.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/Alarm AWS API Documentation
    #
    class Alarm < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details for the CloudWatch alarm you want to apply to an
    # automation or command.
    #
    # @!attribute [rw] ignore_poll_alarm_failure
    #   When this value is *true*, your automation or command continues to
    #   run in cases where we can’t retrieve alarm status information from
    #   CloudWatch. In cases where we successfully retrieve an alarm status
    #   of OK or INSUFFICIENT\_DATA, the automation or command continues to
    #   run, regardless of this value. Default is *false*.
    #   @return [Boolean]
    #
    # @!attribute [rw] alarms
    #   The name of the CloudWatch alarm specified in the configuration.
    #   @return [Array<Types::Alarm>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AlarmConfiguration AWS API Documentation
    #
    class AlarmConfiguration < Struct.new(
      :ignore_poll_alarm_failure,
      :alarms)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details about the state of your CloudWatch alarm.
    #
    # @!attribute [rw] name
    #   The name of your CloudWatch alarm.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of your CloudWatch alarm.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AlarmStateInformation AWS API Documentation
    #
    class AlarmStateInformation < Struct.new(
      :name,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ops_item_id
    #   The ID of the OpsItem to which you want to associate a resource as a
    #   related item.
    #   @return [String]
    #
    # @!attribute [rw] association_type
    #   The type of association that you want to create between an OpsItem
    #   and a resource. OpsCenter supports `IsParentOf` and `RelatesTo`
    #   association types.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource that you want to associate with an OpsItem.
    #   OpsCenter supports the following types:
    #
    #   `AWS::SSMIncidents::IncidentRecord`: an Incident Manager incident.
    #
    #   `AWS::SSM::Document`: a Systems Manager (SSM) document.
    #   @return [String]
    #
    # @!attribute [rw] resource_uri
    #   The Amazon Resource Name (ARN) of the Amazon Web Services resource
    #   that you want to associate with the OpsItem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AssociateOpsItemRelatedItemRequest AWS API Documentation
    #
    class AssociateOpsItemRelatedItemRequest < Struct.new(
      :ops_item_id,
      :association_type,
      :resource_type,
      :resource_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] association_id
    #   The association ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AssociateOpsItemRelatedItemResponse AWS API Documentation
    #
    class AssociateOpsItemRelatedItemResponse < Struct.new(
      :association_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # You must disassociate a document from all managed nodes before you can
    # delete it.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AssociatedInstances AWS API Documentation
    #
    class AssociatedInstances < Aws::EmptyStructure; end

    # Describes an association of a Amazon Web Services Systems Manager
    # document (SSM document) and a managed node.
    #
    # @!attribute [rw] name
    #   The name of the SSM document.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The managed node ID.
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
    #   The version of the document used in the association. If you change a
    #   document version for a State Manager association, Systems Manager
    #   immediately runs the association unless you previously specifed the
    #   `apply-only-at-cron-interval` parameter.
    #
    #   State Manager doesn't support running associations that use a new
    #   version of a document if that document is shared from another
    #   account. State Manager always runs the `default` version of a
    #   document if shared from another account, even though the Systems
    #   Manager console shows that a new version was processed. If you want
    #   to run an association using a new version of a document shared form
    #   another account, you must set the document version to `default`.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The managed nodes targeted by the request to create an association.
    #   You can target all managed nodes in an Amazon Web Services account
    #   by specifying the `InstanceIds` key with a value of `*`.
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
    #   runs. The schedule runs in Coordinated Universal Time (UTC).
    #   @return [String]
    #
    # @!attribute [rw] association_name
    #   The association name.
    #   @return [String]
    #
    # @!attribute [rw] schedule_offset
    #   Number of days to wait after the scheduled day to run an
    #   association.
    #   @return [Integer]
    #
    # @!attribute [rw] target_maps
    #   A key-value mapping of document parameters to target resources. Both
    #   Targets and TargetMaps can't be specified together.
    #   @return [Array<Hash<String,Array<String>>>]
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
      :association_name,
      :schedule_offset,
      :target_maps)
      SENSITIVE = []
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
    #   The name of the SSM document.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The managed node ID.
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
    #   Choose the parameter that will define how your automation will
    #   branch out. This target is required for associations that use an
    #   Automation runbook and target resources by using rate controls.
    #   Automation is a capability of Amazon Web Services Systems Manager.
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
    #   The managed nodes targeted by the request.
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
    #   association on 50 managed nodes and set `MaxError` to 10%, then the
    #   system stops sending the request when the sixth error is received.
    #
    #   Executions that are already running an association when `MaxErrors`
    #   is reached are allowed to complete, but some of these executions may
    #   fail as well. If you need to ensure that there won't be more than
    #   max-errors failed executions, set `MaxConcurrency` to 1 so that
    #   executions proceed one at a time.
    #   @return [String]
    #
    # @!attribute [rw] max_concurrency
    #   The maximum number of targets allowed to run the association at the
    #   same time. You can specify a number, for example 10, or a percentage
    #   of the target set, for example 10%. The default value is 100%, which
    #   means all targets run the association at the same time.
    #
    #   If a new managed node starts and attempts to run an association
    #   while Systems Manager is running `MaxConcurrency` associations, the
    #   association is allowed to run. During the next association interval,
    #   the new managed node will process its association within the limit
    #   specified for `MaxConcurrency`.
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
    #   parameter for the PutComplianceItems API operation. In this case,
    #   compliance data isn't managed by State Manager, a capability of
    #   Amazon Web Services Systems Manager. It is managed by your direct
    #   call to the PutComplianceItems API operation.
    #
    #   By default, all associations use `AUTO` mode.
    #   @return [String]
    #
    # @!attribute [rw] apply_only_at_cron_interval
    #   By default, when you create a new associations, the system runs it
    #   immediately after it is created and then according to the schedule
    #   you specified. Specify this option if you don't want an association
    #   to run immediately after you create it. This parameter isn't
    #   supported for rate expressions.
    #   @return [Boolean]
    #
    # @!attribute [rw] calendar_names
    #   The names or Amazon Resource Names (ARNs) of the Change Calendar
    #   type documents your associations are gated under. The associations
    #   only run when that change calendar is open. For more information,
    #   see [Amazon Web Services Systems Manager Change Calendar][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-change-calendar
    #   @return [Array<String>]
    #
    # @!attribute [rw] target_locations
    #   The combination of Amazon Web Services Regions and Amazon Web
    #   Services accounts where you want to run the association.
    #   @return [Array<Types::TargetLocation>]
    #
    # @!attribute [rw] schedule_offset
    #   Number of days to wait after the scheduled day to run an
    #   association.
    #   @return [Integer]
    #
    # @!attribute [rw] target_maps
    #   A key-value mapping of document parameters to target resources. Both
    #   Targets and TargetMaps can't be specified together.
    #   @return [Array<Hash<String,Array<String>>>]
    #
    # @!attribute [rw] alarm_configuration
    #   The details for the CloudWatch alarm you want to apply to an
    #   automation or command.
    #   @return [Types::AlarmConfiguration]
    #
    # @!attribute [rw] triggered_alarms
    #   The CloudWatch alarm that was invoked during the association.
    #   @return [Array<Types::AlarmStateInformation>]
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
      :apply_only_at_cron_interval,
      :calendar_names,
      :target_locations,
      :schedule_offset,
      :target_maps,
      :alarm_configuration,
      :triggered_alarms)
      SENSITIVE = [:parameters]
      include Aws::Structure
    end

    # The specified association doesn't exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AssociationDoesNotExist AWS API Documentation
    #
    class AssociationDoesNotExist < Struct.new(
      :message)
      SENSITIVE = []
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
    # @!attribute [rw] alarm_configuration
    #   The details for the CloudWatch alarm you want to apply to an
    #   automation or command.
    #   @return [Types::AlarmConfiguration]
    #
    # @!attribute [rw] triggered_alarms
    #   The CloudWatch alarms that were invoked by the association.
    #   @return [Array<Types::AlarmStateInformation>]
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
      :resource_count_by_status,
      :alarm_configuration,
      :triggered_alarms)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified execution ID doesn't exist. Verify the ID number and
    # try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AssociationExecutionDoesNotExist AWS API Documentation
    #
    class AssociationExecutionDoesNotExist < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters used in the request.
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
      SENSITIVE = []
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
    #   The resource ID, for example, the managed node ID where the
    #   association ran.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type, for example, EC2.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters for the association execution.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a filter.
    #
    # @!attribute [rw] key
    #   The name of the filter.
    #
    #   <note markdown="1"> `InstanceId` has been deprecated.
    #
    #    </note>
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
      SENSITIVE = []
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
    #   example, if you created an association with two managed nodes, and
    #   one of them was successful, this would return the count of managed
    #   nodes by status.
    #   @return [Hash<String,Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AssociationOverview AWS API Documentation
    #
    class AssociationOverview < Struct.new(
      :status,
      :detailed_status,
      :association_status_aggregated_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an association status.
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
      SENSITIVE = []
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
    #   The version of an Amazon Web Services Systems Manager document (SSM
    #   document) used when the association version was created.
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
    #   association on 50 managed nodes and set `MaxError` to 10%, then the
    #   system stops sending the request when the sixth error is received.
    #
    #   Executions that are already running an association when `MaxErrors`
    #   is reached are allowed to complete, but some of these executions may
    #   fail as well. If you need to ensure that there won't be more than
    #   max-errors failed executions, set `MaxConcurrency` to 1 so that
    #   executions proceed one at a time.
    #   @return [String]
    #
    # @!attribute [rw] max_concurrency
    #   The maximum number of targets allowed to run the association at the
    #   same time. You can specify a number, for example 10, or a percentage
    #   of the target set, for example 10%. The default value is 100%, which
    #   means all targets run the association at the same time.
    #
    #   If a new managed node starts and attempts to run an association
    #   while Systems Manager is running `MaxConcurrency` associations, the
    #   association is allowed to run. During the next association interval,
    #   the new managed node will process its association within the limit
    #   specified for `MaxConcurrency`.
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
    #   parameter for the PutComplianceItems API operation. In this case,
    #   compliance data isn't managed by State Manager, a capability of
    #   Amazon Web Services Systems Manager. It is managed by your direct
    #   call to the PutComplianceItems API operation.
    #
    #   By default, all associations use `AUTO` mode.
    #   @return [String]
    #
    # @!attribute [rw] apply_only_at_cron_interval
    #   By default, when you create a new associations, the system runs it
    #   immediately after it is created and then according to the schedule
    #   you specified. Specify this option if you don't want an association
    #   to run immediately after you create it. This parameter isn't
    #   supported for rate expressions.
    #   @return [Boolean]
    #
    # @!attribute [rw] calendar_names
    #   The names or Amazon Resource Names (ARNs) of the Change Calendar
    #   type documents your associations are gated under. The associations
    #   for this version only run when that Change Calendar is open. For
    #   more information, see [Amazon Web Services Systems Manager Change
    #   Calendar][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-change-calendar
    #   @return [Array<String>]
    #
    # @!attribute [rw] target_locations
    #   The combination of Amazon Web Services Regions and Amazon Web
    #   Services accounts where you wanted to run the association when this
    #   association version was created.
    #   @return [Array<Types::TargetLocation>]
    #
    # @!attribute [rw] schedule_offset
    #   Number of days to wait after the scheduled day to run an
    #   association.
    #   @return [Integer]
    #
    # @!attribute [rw] target_maps
    #   A key-value mapping of document parameters to target resources. Both
    #   Targets and TargetMaps can't be specified together.
    #   @return [Array<Hash<String,Array<String>>>]
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
      :apply_only_at_cron_interval,
      :calendar_names,
      :target_locations,
      :schedule_offset,
      :target_maps)
      SENSITIVE = [:parameters]
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifying information about a document attachment, including the
    # file name and a key-value pair that identifies the location of an
    # attachment to a document.
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
    #     `"Values": [ "s3://doc-example-bucket/my-folder" ]`
    #
    #   * For the key *S3FileUrl*, the value is a file in an S3 bucket. For
    #     example:
    #
    #     `"Values": [ "s3://doc-example-bucket/my-folder/my-file.py" ]`
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates that the Change Manager change template used in the change
    # request was rejected or is still in a pending state.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AutomationDefinitionNotApprovedException AWS API Documentation
    #
    class AutomationDefinitionNotApprovedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Automation runbook with the specified name couldn't be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AutomationDefinitionNotFoundException AWS API Documentation
    #
    class AutomationDefinitionNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Automation runbook with the specified name and version couldn't be
    # found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AutomationDefinitionVersionNotFoundException AWS API Documentation
    #
    class AutomationDefinitionVersionNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
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
    #   The name of the Automation runbook used during the execution.
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
    #   an execution. An Automation runbook contains a list of steps that
    #   are run in order.
    #   @return [Array<Types::StepExecution>]
    #
    # @!attribute [rw] step_executions_truncated
    #   A boolean value that indicates if the response contains the full
    #   list of the Automation step executions. If true, use the
    #   DescribeAutomationStepExecutions API operation to get the full list
    #   of step executions.
    #   @return [Boolean]
    #
    # @!attribute [rw] parameters
    #   The key-value map of execution parameters, which were supplied when
    #   calling StartAutomationExecution.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] outputs
    #   The list of execution outputs as defined in the Automation runbook.
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
    #   The `MaxConcurrency` value specified by the user when the execution
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
    #   The combination of Amazon Web Services Regions and/or Amazon Web
    #   Services accounts where you want to run the Automation.
    #   @return [Array<Types::TargetLocation>]
    #
    # @!attribute [rw] progress_counters
    #   An aggregate of step execution statuses displayed in the Amazon Web
    #   Services Systems Manager console for a multi-Region and
    #   multi-account Automation execution.
    #   @return [Types::ProgressCounters]
    #
    # @!attribute [rw] alarm_configuration
    #   The details for the CloudWatch alarm applied to your automation.
    #   @return [Types::AlarmConfiguration]
    #
    # @!attribute [rw] triggered_alarms
    #   The CloudWatch alarm that was invoked by the automation.
    #   @return [Array<Types::AlarmStateInformation>]
    #
    # @!attribute [rw] automation_subtype
    #   The subtype of the Automation operation. Currently, the only
    #   supported value is `ChangeRequest`.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_time
    #   The date and time the Automation operation is scheduled to start.
    #   @return [Time]
    #
    # @!attribute [rw] runbooks
    #   Information about the Automation runbooks that are run as part of a
    #   runbook workflow.
    #
    #   <note markdown="1"> The Automation runbooks specified for the runbook workflow can't
    #   run until all required approvals for the change request have been
    #   received.
    #
    #    </note>
    #   @return [Array<Types::Runbook>]
    #
    # @!attribute [rw] ops_item_id
    #   The ID of an OpsItem that is created to represent a Change Manager
    #   change request.
    #   @return [String]
    #
    # @!attribute [rw] association_id
    #   The ID of a State Manager association used in the Automation
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] change_request_name
    #   The name of the Change Manager change request.
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
      :target,
      :target_locations,
      :progress_counters,
      :alarm_configuration,
      :triggered_alarms,
      :automation_subtype,
      :scheduled_time,
      :runbooks,
      :ops_item_id,
      :association_id,
      :change_request_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter used to match specific automation executions. This is used to
    # limit the scope of Automation execution information returned.
    #
    # @!attribute [rw] key
    #   One or more keys to limit the results.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a specific Automation execution.
    #
    # @!attribute [rw] automation_execution_id
    #   The execution ID.
    #   @return [String]
    #
    # @!attribute [rw] document_name
    #   The name of the Automation runbook used during execution.
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
    #   The time the execution finished. This isn't populated if the
    #   execution is still in progress.
    #   @return [Time]
    #
    # @!attribute [rw] executed_by
    #   The IAM role ARN of the user who ran the automation.
    #   @return [String]
    #
    # @!attribute [rw] log_file
    #   An S3 bucket where execution information is stored.
    #   @return [String]
    #
    # @!attribute [rw] outputs
    #   The list of execution outputs as defined in the Automation runbook.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] mode
    #   The Automation execution mode.
    #   @return [String]
    #
    # @!attribute [rw] parent_automation_execution_id
    #   The execution ID of the parent automation.
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
    #   The list of execution outputs as defined in the Automation runbook.
    #   @return [String]
    #
    # @!attribute [rw] target_parameter_name
    #   The list of execution outputs as defined in the Automation runbook.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The targets defined by the user when starting the automation.
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
    #   The `MaxConcurrency` value specified by the user when starting the
    #   automation.
    #   @return [String]
    #
    # @!attribute [rw] max_errors
    #   The `MaxErrors` value specified by the user when starting the
    #   automation.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The list of execution outputs as defined in the Automation runbook.
    #   @return [String]
    #
    # @!attribute [rw] automation_type
    #   Use this filter with DescribeAutomationExecutions. Specify either
    #   Local or CrossAccount. CrossAccount is an Automation that runs in
    #   multiple Amazon Web Services Regions and Amazon Web Services
    #   accounts. For more information, see [Running Automation workflows in
    #   multiple Amazon Web Services Regions and accounts][1] in the *Amazon
    #   Web Services Systems Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-automation-multiple-accounts-and-regions.html
    #   @return [String]
    #
    # @!attribute [rw] alarm_configuration
    #   The details for the CloudWatch alarm applied to your automation.
    #   @return [Types::AlarmConfiguration]
    #
    # @!attribute [rw] triggered_alarms
    #   The CloudWatch alarm that was invoked by the automation.
    #   @return [Array<Types::AlarmStateInformation>]
    #
    # @!attribute [rw] automation_subtype
    #   The subtype of the Automation operation. Currently, the only
    #   supported value is `ChangeRequest`.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_time
    #   The date and time the Automation operation is scheduled to start.
    #   @return [Time]
    #
    # @!attribute [rw] runbooks
    #   Information about the Automation runbooks that are run during a
    #   runbook workflow in Change Manager.
    #
    #   <note markdown="1"> The Automation runbooks specified for the runbook workflow can't
    #   run until all required approvals for the change request have been
    #   received.
    #
    #    </note>
    #   @return [Array<Types::Runbook>]
    #
    # @!attribute [rw] ops_item_id
    #   The ID of an OpsItem that is created to represent a Change Manager
    #   change request.
    #   @return [String]
    #
    # @!attribute [rw] association_id
    #   The ID of a State Manager association used in the Automation
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] change_request_name
    #   The name of the Change Manager change request.
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
      :automation_type,
      :alarm_configuration,
      :triggered_alarms,
      :automation_subtype,
      :scheduled_time,
      :runbooks,
      :ops_item_id,
      :association_id,
      :change_request_name)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the basic information about a patch baseline override.
    #
    # @!attribute [rw] operating_system
    #   The operating system rule used by the patch baseline override.
    #   @return [String]
    #
    # @!attribute [rw] global_filters
    #   A set of patch filters, typically used for approval rules.
    #   @return [Types::PatchFilterGroup]
    #
    # @!attribute [rw] approval_rules
    #   A set of rules defining the approval rules for a patch baseline.
    #   @return [Types::PatchRuleGroup]
    #
    # @!attribute [rw] approved_patches
    #   A list of explicitly approved patches for the baseline.
    #
    #   For information about accepted formats for lists of approved patches
    #   and rejected patches, see [About package name formats for approved
    #   and rejected patch lists][1] in the *Amazon Web Services Systems
    #   Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] approved_patches_compliance_level
    #   Defines the compliance level for approved patches. When an approved
    #   patch is reported as missing, this value describes the severity of
    #   the compliance violation.
    #   @return [String]
    #
    # @!attribute [rw] rejected_patches
    #   A list of explicitly rejected patches for the baseline.
    #
    #   For information about accepted formats for lists of approved patches
    #   and rejected patches, see [About package name formats for approved
    #   and rejected patch lists][1] in the *Amazon Web Services Systems
    #   Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] rejected_patches_action
    #   The action for Patch Manager to take on patches included in the
    #   `RejectedPackages` list. A patch can be allowed only if it is a
    #   dependency of another package, or blocked entirely along with
    #   packages that include it as a dependency.
    #   @return [String]
    #
    # @!attribute [rw] approved_patches_enable_non_security
    #   Indicates whether the list of approved patches includes non-security
    #   updates that should be applied to the managed nodes. The default
    #   value is `false`. Applies to Linux managed nodes only.
    #   @return [Boolean]
    #
    # @!attribute [rw] sources
    #   Information about the patches to use to update the managed nodes,
    #   including target operating systems and source repositories. Applies
    #   to Linux managed nodes only.
    #   @return [Array<Types::PatchSource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/BaselineOverride AWS API Documentation
    #
    class BaselineOverride < Struct.new(
      :operating_system,
      :global_filters,
      :approval_rules,
      :approved_patches,
      :approved_patches_compliance_level,
      :rejected_patches,
      :rejected_patches_action,
      :approved_patches_enable_non_security,
      :sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] command_id
    #   The ID of the command you want to cancel.
    #   @return [String]
    #
    # @!attribute [rw] instance_ids
    #   (Optional) A list of managed node IDs on which you want to cancel
    #   the command. If not provided, the command is canceled on every node
    #   on which it was requested.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CancelCommandRequest AWS API Documentation
    #
    class CancelCommandRequest < Struct.new(
      :command_id,
      :instance_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Whether or not the command was successfully canceled. There is no
    # guarantee that a request can be canceled.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CancelCommandResult AWS API Documentation
    #
    class CancelCommandResult < Aws::EmptyStructure; end

    # @!attribute [rw] window_execution_id
    #   The ID of the maintenance window execution to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CancelMaintenanceWindowExecutionRequest AWS API Documentation
    #
    class CancelMaintenanceWindowExecutionRequest < Struct.new(
      :window_execution_id)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration options for sending command output to Amazon CloudWatch
    # Logs.
    #
    # @!attribute [rw] cloud_watch_log_group_name
    #   The name of the CloudWatch Logs log group where you want to send
    #   command output. If you don't specify a group name, Amazon Web
    #   Services Systems Manager automatically creates a log group for you.
    #   The log group uses the following naming format:
    #
    #   `aws/ssm/SystemsManagerDocumentName `
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
      SENSITIVE = []
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
    #   The Systems Manager document (SSM document) version.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   User-specified information about the command, such as a brief
    #   description of what the command should do.
    #   @return [String]
    #
    # @!attribute [rw] expires_after
    #   If a command expires, it changes status to `DeliveryTimedOut` for
    #   all invocations that have the status `InProgress`, `Pending`, or
    #   `Delayed`. `ExpiresAfter` is calculated based on the total timeout
    #   for the overall command. For more information, see [Understanding
    #   command timeout values][1] in the *Amazon Web Services Systems
    #   Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-commands.html?icmpid=docs_ec2_console#monitor-about-status-timeouts
    #   @return [Time]
    #
    # @!attribute [rw] parameters
    #   The parameter values to be inserted in the document when running the
    #   command.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] instance_ids
    #   The managed node IDs against which this command was requested.
    #   @return [Array<String>]
    #
    # @!attribute [rw] targets
    #   An array of search criteria that targets managed nodes using a
    #   Key,Value combination that you specify. Targets is required if you
    #   don't provide one or more managed node IDs in the call.
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
    #   A detailed status of the command execution. `StatusDetails` includes
    #   more information than `Status` because it includes states resulting
    #   from error and concurrency control parameters. `StatusDetails` can
    #   show different results than Status. For more information about these
    #   statuses, see [Understanding command statuses][1] in the *Amazon Web
    #   Services Systems Manager User Guide*. StatusDetails can be one of
    #   the following values:
    #
    #   * Pending: The command hasn't been sent to any managed nodes.
    #
    #   * In Progress: The command has been sent to at least one managed
    #     node but hasn't reached a final state on all managed nodes.
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
    #   * Incomplete: The command was attempted on all managed nodes and one
    #     or more invocations doesn't have a value of Success but not
    #     enough invocations failed for the status to be Failed. This is a
    #     terminal state.
    #
    #   * Cancelled: The command was terminated before it was completed.
    #     This is a terminal state.
    #
    #   * Rate Exceeded: The number of managed nodes targeted by the command
    #     exceeded the account limit for pending invocations. The system has
    #     canceled the command before running it on any managed node. This
    #     is a terminal state.
    #
    #   * Delayed: The system attempted to send the command to the managed
    #     node but wasn't successful. The system retries again.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-commands.html
    #   @return [String]
    #
    # @!attribute [rw] output_s3_region
    #   (Deprecated) You can no longer specify this parameter. The system
    #   ignores it. Instead, Systems Manager automatically determines the
    #   Amazon Web Services Region of the S3 bucket.
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
    #   The maximum number of managed nodes that are allowed to run the
    #   command at the same time. You can specify a number of managed nodes,
    #   such as 10, or a percentage of nodes, such as 10%. The default value
    #   is 50. For more information about how to use `MaxConcurrency`, see
    #   [Running commands using Systems Manager Run Command][1] in the
    #   *Amazon Web Services Systems Manager User Guide*.
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
    #   default value is `0`. For more information about how to use
    #   `MaxErrors`, see [Running commands using Systems Manager Run
    #   Command][1] in the *Amazon Web Services Systems Manager User Guide*.
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
    #   Failed, Execution Timed Out, Delivery Timed Out, Cancelled,
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
    #   The Identity and Access Management (IAM) service role that Run
    #   Command, a capability of Amazon Web Services Systems Manager, uses
    #   to act on your behalf when sending notifications about command
    #   status changes.
    #   @return [String]
    #
    # @!attribute [rw] notification_config
    #   Configurations for sending notifications about command status
    #   changes.
    #   @return [Types::NotificationConfig]
    #
    # @!attribute [rw] cloud_watch_output_config
    #   Amazon CloudWatch Logs information where you want Amazon Web
    #   Services Systems Manager to send the command output.
    #   @return [Types::CloudWatchOutputConfig]
    #
    # @!attribute [rw] timeout_seconds
    #   The `TimeoutSeconds` value specified for a command.
    #   @return [Integer]
    #
    # @!attribute [rw] alarm_configuration
    #   The details for the CloudWatch alarm applied to your command.
    #   @return [Types::AlarmConfiguration]
    #
    # @!attribute [rw] triggered_alarms
    #   The CloudWatch alarm that was invoked by the command.
    #   @return [Array<Types::AlarmStateInformation>]
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
      :timeout_seconds,
      :alarm_configuration,
      :triggered_alarms)
      SENSITIVE = [:parameters]
      include Aws::Structure
    end

    # Describes a command filter.
    #
    # <note markdown="1"> A managed node ID can't be specified when a command status is
    # `Pending` because the command hasn't run on the node yet.
    #
    #  </note>
    #
    # @!attribute [rw] key
    #   The name of the filter.
    #
    #   <note markdown="1"> The `ExecutionStage` filter can't be used with the
    #   `ListCommandInvocations` operation, only with `ListCommands`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The filter value. Valid values for each filter key are as follows:
    #
    #   * **InvokedAfter**: Specify a timestamp to limit your results. For
    #     example, specify `2021-07-07T00:00:00Z` to see a list of command
    #     executions occurring July 7, 2021, and later.
    #
    #   * **InvokedBefore**: Specify a timestamp to limit your results. For
    #     example, specify `2021-07-07T00:00:00Z` to see a list of command
    #     executions from before July 7, 2021.
    #
    #   * **Status**: Specify a valid command status to see a list of all
    #     command executions with that status. The status choices depend on
    #     the API you call.
    #
    #     The status values you can specify for `ListCommands` are:
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
    #     * `TimedOut` (this includes both Delivery and Execution time outs)
    #
    #     * `AccessDenied`
    #
    #     * `DeliveryTimedOut`
    #
    #     * `ExecutionTimedOut`
    #
    #     * `Incomplete`
    #
    #     * `NoInstancesInTag`
    #
    #     * `LimitExceeded`
    #
    #     The status values you can specify for `ListCommandInvocations`
    #     are:
    #
    #     * `Pending`
    #
    #     * `InProgress`
    #
    #     * `Delayed`
    #
    #     * `Success`
    #
    #     * `Cancelled`
    #
    #     * `Failed`
    #
    #     * `TimedOut` (this includes both Delivery and Execution time outs)
    #
    #     * `AccessDenied`
    #
    #     * `DeliveryTimedOut`
    #
    #     * `ExecutionTimedOut`
    #
    #     * `Undeliverable`
    #
    #     * `InvalidPlatform`
    #
    #     * `Terminated`
    #
    #   * **DocumentName**: Specify name of the Amazon Web Services Systems
    #     Manager document (SSM document) for which you want to see command
    #     execution results. For example, specify `AWS-RunPatchBaseline` to
    #     see command executions that used this SSM document to perform
    #     security patching operations on managed nodes.
    #
    #   * **ExecutionStage**: Specify one of the following values
    #     (`ListCommands` operations only):
    #
    #     * `Executing`: Returns a list of command executions that are
    #       currently still running.
    #
    #     * `Complete`: Returns a list of command executions that have
    #       already completed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CommandFilter AWS API Documentation
    #
    class CommandFilter < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # An invocation is a copy of a command sent to a specific managed node.
    # A command can apply to one or more managed nodes. A command invocation
    # applies to one managed node. For example, if a user runs `SendCommand`
    # against three managed nodes, then a command invocation is created for
    # each requested managed node ID. A command invocation returns status
    # and detail information about a command you ran.
    #
    # @!attribute [rw] command_id
    #   The command against which this invocation was requested.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The managed node ID in which this invocation was requested.
    #   @return [String]
    #
    # @!attribute [rw] instance_name
    #   The fully qualified host name of the managed node.
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
    #   The Systems Manager document (SSM document) version.
    #   @return [String]
    #
    # @!attribute [rw] requested_date_time
    #   The time and date the request was sent to this managed node.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   Whether or not the invocation succeeded, failed, or is pending.
    #   @return [String]
    #
    # @!attribute [rw] status_details
    #   A detailed status of the command execution for each invocation (each
    #   managed node targeted by the command). StatusDetails includes more
    #   information than Status because it includes states resulting from
    #   error and concurrency control parameters. StatusDetails can show
    #   different results than Status. For more information about these
    #   statuses, see [Understanding command statuses][1] in the *Amazon Web
    #   Services Systems Manager User Guide*. StatusDetails can be one of
    #   the following values:
    #
    #   * Pending: The command hasn't been sent to the managed node.
    #
    #   * In Progress: The command has been sent to the managed node but
    #     hasn't reached a terminal state.
    #
    #   * Success: The execution of the command or plugin was successfully
    #     completed. This is a terminal state.
    #
    #   * Delivery Timed Out: The command wasn't delivered to the managed
    #     node before the delivery timeout expired. Delivery timeouts don't
    #     count against the parent command's `MaxErrors` limit, but they do
    #     contribute to whether the parent command status is Success or
    #     Incomplete. This is a terminal state.
    #
    #   * Execution Timed Out: Command execution started on the managed
    #     node, but the execution wasn't complete before the execution
    #     timeout expired. Execution timeouts count against the `MaxErrors`
    #     limit of the parent command. This is a terminal state.
    #
    #   * Failed: The command wasn't successful on the managed node. For a
    #     plugin, this indicates that the result code wasn't zero. For a
    #     command invocation, this indicates that the result code for one or
    #     more plugins wasn't zero. Invocation failures count against the
    #     `MaxErrors` limit of the parent command. This is a terminal state.
    #
    #   * Cancelled: The command was terminated before it was completed.
    #     This is a terminal state.
    #
    #   * Undeliverable: The command can't be delivered to the managed
    #     node. The managed node might not exist or might not be responding.
    #     Undeliverable invocations don't count against the parent
    #     command's MaxErrors limit and don't contribute to whether the
    #     parent command status is Success or Incomplete. This is a terminal
    #     state.
    #
    #   * Terminated: The parent command exceeded its MaxErrors limit and
    #     subsequent command invocations were canceled by the system. This
    #     is a terminal state.
    #
    #   * Delayed: The system attempted to send the command to the managed
    #     node but wasn't successful. The system retries again.
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
    #   The URL to the plugin's StdOut file in Amazon Simple Storage
    #   Service (Amazon S3), if the S3 bucket was defined for the parent
    #   command. For an invocation, `StandardOutputUrl` is populated if
    #   there is just one plugin defined for the command, and the S3 bucket
    #   was defined for the command.
    #   @return [String]
    #
    # @!attribute [rw] standard_error_url
    #   The URL to the plugin's StdErr file in Amazon Simple Storage
    #   Service (Amazon S3), if the S3 bucket was defined for the parent
    #   command. For an invocation, `StandardErrorUrl` is populated if there
    #   is just one plugin defined for the command, and the S3 bucket was
    #   defined for the command.
    #   @return [String]
    #
    # @!attribute [rw] command_plugins
    #   Plugins processed by the command.
    #   @return [Array<Types::CommandPlugin>]
    #
    # @!attribute [rw] service_role
    #   The Identity and Access Management (IAM) service role that Run
    #   Command, a capability of Amazon Web Services Systems Manager, uses
    #   to act on your behalf when sending notifications about command
    #   status changes on a per managed node basis.
    #   @return [String]
    #
    # @!attribute [rw] notification_config
    #   Configurations for sending notifications about command status
    #   changes on a per managed node basis.
    #   @return [Types::NotificationConfig]
    #
    # @!attribute [rw] cloud_watch_output_config
    #   Amazon CloudWatch Logs information where you want Amazon Web
    #   Services Systems Manager to send the command output.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes plugin details.
    #
    # @!attribute [rw] name
    #   The name of the plugin. Must be one of the following:
    #   `aws:updateAgent`, `aws:domainjoin`, `aws:applications`,
    #   `aws:runPowerShellScript`, `aws:psmodule`, `aws:cloudWatch`,
    #   `aws:runShellScript`, or `aws:updateSSMAgent`.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of this plugin. You can run a document with multiple
    #   plugins.
    #   @return [String]
    #
    # @!attribute [rw] status_details
    #   A detailed status of the plugin execution. `StatusDetails` includes
    #   more information than Status because it includes states resulting
    #   from error and concurrency control parameters. StatusDetails can
    #   show different results than Status. For more information about these
    #   statuses, see [Understanding command statuses][1] in the *Amazon Web
    #   Services Systems Manager User Guide*. StatusDetails can be one of
    #   the following values:
    #
    #   * Pending: The command hasn't been sent to the managed node.
    #
    #   * In Progress: The command has been sent to the managed node but
    #     hasn't reached a terminal state.
    #
    #   * Success: The execution of the command or plugin was successfully
    #     completed. This is a terminal state.
    #
    #   * Delivery Timed Out: The command wasn't delivered to the managed
    #     node before the delivery timeout expired. Delivery timeouts don't
    #     count against the parent command's `MaxErrors` limit, but they do
    #     contribute to whether the parent command status is Success or
    #     Incomplete. This is a terminal state.
    #
    #   * Execution Timed Out: Command execution started on the managed
    #     node, but the execution wasn't complete before the execution
    #     timeout expired. Execution timeouts count against the `MaxErrors`
    #     limit of the parent command. This is a terminal state.
    #
    #   * Failed: The command wasn't successful on the managed node. For a
    #     plugin, this indicates that the result code wasn't zero. For a
    #     command invocation, this indicates that the result code for one or
    #     more plugins wasn't zero. Invocation failures count against the
    #     MaxErrors limit of the parent command. This is a terminal state.
    #
    #   * Cancelled: The command was terminated before it was completed.
    #     This is a terminal state.
    #
    #   * Undeliverable: The command can't be delivered to the managed
    #     node. The managed node might not exist, or it might not be
    #     responding. Undeliverable invocations don't count against the
    #     parent command's MaxErrors limit, and they don't contribute to
    #     whether the parent command status is Success or Incomplete. This
    #     is a terminal state.
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
    #   Amazon S3. If the S3 bucket for the command wasn't specified, then
    #   this string is empty.
    #   @return [String]
    #
    # @!attribute [rw] standard_error_url
    #   The URL for the complete text written by the plugin to stderr. If
    #   execution isn't yet complete, then this string is empty.
    #   @return [String]
    #
    # @!attribute [rw] output_s3_region
    #   (Deprecated) You can no longer specify this parameter. The system
    #   ignores it. Instead, Amazon Web Services Systems Manager
    #   automatically determines the S3 bucket region.
    #   @return [String]
    #
    # @!attribute [rw] output_s3_bucket_name
    #   The S3 bucket where the responses to the command executions should
    #   be stored. This was requested when issuing the command. For example,
    #   in the following response:
    #
    #   `doc-example-bucket/ab19cb99-a030-46dd-9dfc-8eSAMPLEPre-Fix/i-02573cafcfEXAMPLE/awsrunShellScript`
    #
    #   `doc-example-bucket` is the name of the S3 bucket;
    #
    #   `ab19cb99-a030-46dd-9dfc-8eSAMPLEPre-Fix` is the name of the S3
    #   prefix;
    #
    #   `i-02573cafcfEXAMPLE` is the managed node ID;
    #
    #   `awsrunShellScript` is the name of the plugin.
    #   @return [String]
    #
    # @!attribute [rw] output_s3_key_prefix
    #   The S3 directory path inside the bucket where the responses to the
    #   command executions should be stored. This was requested when issuing
    #   the command. For example, in the following response:
    #
    #   `doc-example-bucket/ab19cb99-a030-46dd-9dfc-8eSAMPLEPre-Fix/i-02573cafcfEXAMPLE/awsrunShellScript`
    #
    #   `doc-example-bucket` is the name of the S3 bucket;
    #
    #   `ab19cb99-a030-46dd-9dfc-8eSAMPLEPre-Fix` is the name of the S3
    #   prefix;
    #
    #   `i-02573cafcfEXAMPLE` is the managed node ID;
    #
    #   `awsrunShellScript` is the name of the plugin.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of the call execution that includes an execution ID, the
    # type of execution (for example, `Command`), and the date/time of the
    # execution using a datetime object that is saved in the following
    # format: yyyy-MM-dd'T'HH:mm:ss'Z'.
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
      SENSITIVE = []
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
    #   An ID for the resource. For a managed node, this is the node ID.
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
    #   The status of the compliance item. An item is either COMPLIANT,
    #   NON\_COMPLIANT, or an empty string (for Windows patches that aren't
    #   applicable).
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a compliance item.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more filters. Use a filter to return a more specific list of
    # results.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   A user-defined description of the resource that you want to register
    #   with Systems Manager.
    #
    #   Don't enter personally identifiable information in this field.
    #   @return [String]
    #
    # @!attribute [rw] default_instance_name
    #   The name of the registered, managed node as it will appear in the
    #   Amazon Web Services Systems Manager console or when you use the
    #   Amazon Web Services command line tools to list Systems Manager
    #   resources.
    #
    #   Don't enter personally identifiable information in this field.
    #   @return [String]
    #
    # @!attribute [rw] iam_role
    #   The name of the Identity and Access Management (IAM) role that you
    #   want to assign to the managed node. This IAM role must provide
    #   AssumeRole permissions for the Amazon Web Services Systems Manager
    #   service principal `ssm.amazonaws.com`. For more information, see
    #   [Create an IAM service role for a hybrid environment][1] in the
    #   *Amazon Web Services Systems Manager User Guide*.
    #
    #   <note markdown="1"> You can't specify an IAM service-linked role for this parameter.
    #   You must create a unique role.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-service-role.html
    #   @return [String]
    #
    # @!attribute [rw] registration_limit
    #   Specify the maximum number of managed nodes you want to register.
    #   The default value is `1`.
    #   @return [Integer]
    #
    # @!attribute [rw] expiration_date
    #   The date by which this activation request should expire, in
    #   timestamp format, such as "2021-07-07T00:00:00". You can specify a
    #   date up to 30 days in advance. If you don't provide an expiration
    #   date, the activation code expires in 24 hours.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   Optional metadata that you assign to a resource. Tags enable you to
    #   categorize a resource in different ways, such as by purpose, owner,
    #   or environment. For example, you might want to tag an activation to
    #   identify which servers or virtual machines (VMs) in your on-premises
    #   environment you intend to activate. In this case, you could specify
    #   the following key-value pairs:
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
    #   You can tag your on-premises servers, edge devices, and VMs after
    #   they connect to Systems Manager for the first time and are assigned
    #   a managed node ID. This means they are listed in the Amazon Web
    #   Services Systems Manager console with an ID that is prefixed with
    #   "mi-". For information about how to add tags to your managed
    #   nodes, see AddTagsToResource. For information about how to remove
    #   tags from your managed nodes, see RemoveTagsFromResource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] registration_metadata
    #   Reserved for internal use.
    #   @return [Array<Types::RegistrationMetadataItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateActivationRequest AWS API Documentation
    #
    class CreateActivationRequest < Struct.new(
      :description,
      :default_instance_name,
      :iam_role,
      :registration_limit,
      :expiration_date,
      :tags,
      :registration_metadata)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entries
    #   One or more associations.
    #   @return [Array<Types::CreateAssociationBatchRequestEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateAssociationBatchRequest AWS API Documentation
    #
    class CreateAssociationBatchRequest < Struct.new(
      :entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the association of a Amazon Web Services Systems Manager
    # document (SSM document) and a managed node.
    #
    # @!attribute [rw] name
    #   The name of the SSM document that contains the configuration
    #   information for the managed node. You can specify Command or
    #   Automation runbooks.
    #
    #   You can specify Amazon Web Services-predefined documents, documents
    #   you created, or a document that is shared with you from another
    #   account.
    #
    #   For SSM documents that are shared with you from other Amazon Web
    #   Services accounts, you must specify the complete SSM document ARN,
    #   in the following format:
    #
    #   `arn:aws:ssm:region:account-id:document/document-name `
    #
    #   For example:
    #
    #   `arn:aws:ssm:us-east-2:12345678912:document/My-Shared-Document`
    #
    #   For Amazon Web Services-predefined documents and SSM documents you
    #   created in your account, you only need to specify the document name.
    #   For example, `AWS-ApplyPatchBaseline` or `My-Document`.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The managed node ID.
    #
    #   <note markdown="1"> `InstanceId` has been deprecated. To specify a managed node ID for
    #   an association, use the `Targets` parameter. Requests that include
    #   the parameter `InstanceID` with Systems Manager documents (SSM
    #   documents) that use schema version 2.0 or later will fail. In
    #   addition, if you use the parameter `InstanceId`, you can't use the
    #   parameters `AssociationName`, `DocumentVersion`, `MaxErrors`,
    #   `MaxConcurrency`, `OutputLocation`, or `ScheduleExpression`. To use
    #   these parameters, you must use the `Targets` parameter.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A description of the parameters for a document.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] automation_target_parameter_name
    #   Specify the target for the association. This target is required for
    #   associations that use an Automation runbook and target resources by
    #   using rate controls. Automation is a capability of Amazon Web
    #   Services Systems Manager.
    #   @return [String]
    #
    # @!attribute [rw] document_version
    #   The document version.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The managed nodes targeted by the request.
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
    #   association on 50 managed nodes and set `MaxError` to 10%, then the
    #   system stops sending the request when the sixth error is received.
    #
    #   Executions that are already running an association when `MaxErrors`
    #   is reached are allowed to complete, but some of these executions may
    #   fail as well. If you need to ensure that there won't be more than
    #   max-errors failed executions, set `MaxConcurrency` to 1 so that
    #   executions proceed one at a time.
    #   @return [String]
    #
    # @!attribute [rw] max_concurrency
    #   The maximum number of targets allowed to run the association at the
    #   same time. You can specify a number, for example 10, or a percentage
    #   of the target set, for example 10%. The default value is 100%, which
    #   means all targets run the association at the same time.
    #
    #   If a new managed node starts and attempts to run an association
    #   while Systems Manager is running `MaxConcurrency` associations, the
    #   association is allowed to run. During the next association interval,
    #   the new managed node will process its association within the limit
    #   specified for `MaxConcurrency`.
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
    #   parameter for the PutComplianceItems API operation. In this case,
    #   compliance data isn't managed by State Manager, a capability of
    #   Amazon Web Services Systems Manager. It is managed by your direct
    #   call to the PutComplianceItems API operation.
    #
    #   By default, all associations use `AUTO` mode.
    #   @return [String]
    #
    # @!attribute [rw] apply_only_at_cron_interval
    #   By default, when you create a new associations, the system runs it
    #   immediately after it is created and then according to the schedule
    #   you specified. Specify this option if you don't want an association
    #   to run immediately after you create it. This parameter isn't
    #   supported for rate expressions.
    #   @return [Boolean]
    #
    # @!attribute [rw] calendar_names
    #   The names or Amazon Resource Names (ARNs) of the Change Calendar
    #   type documents your associations are gated under. The associations
    #   only run when that Change Calendar is open. For more information,
    #   see [Amazon Web Services Systems Manager Change Calendar][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-change-calendar
    #   @return [Array<String>]
    #
    # @!attribute [rw] target_locations
    #   Use this action to create an association in multiple Regions and
    #   multiple accounts.
    #   @return [Array<Types::TargetLocation>]
    #
    # @!attribute [rw] schedule_offset
    #   Number of days to wait after the scheduled day to run an
    #   association.
    #   @return [Integer]
    #
    # @!attribute [rw] target_maps
    #   A key-value mapping of document parameters to target resources. Both
    #   Targets and TargetMaps can't be specified together.
    #   @return [Array<Hash<String,Array<String>>>]
    #
    # @!attribute [rw] alarm_configuration
    #   The details for the CloudWatch alarm you want to apply to an
    #   automation or command.
    #   @return [Types::AlarmConfiguration]
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
      :apply_only_at_cron_interval,
      :calendar_names,
      :target_locations,
      :schedule_offset,
      :target_maps,
      :alarm_configuration)
      SENSITIVE = [:parameters]
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the SSM Command document or Automation runbook that
    #   contains the configuration information for the managed node.
    #
    #   You can specify Amazon Web Services-predefined documents, documents
    #   you created, or a document that is shared with you from another
    #   Amazon Web Services account.
    #
    #   For Systems Manager documents (SSM documents) that are shared with
    #   you from other Amazon Web Services accounts, you must specify the
    #   complete SSM document ARN, in the following format:
    #
    #   `arn:partition:ssm:region:account-id:document/document-name `
    #
    #   For example:
    #
    #   `arn:aws:ssm:us-east-2:12345678912:document/My-Shared-Document`
    #
    #   For Amazon Web Services-predefined documents and SSM documents you
    #   created in your account, you only need to specify the document name.
    #   For example, `AWS-ApplyPatchBaseline` or `My-Document`.
    #   @return [String]
    #
    # @!attribute [rw] document_version
    #   The document version you want to associate with the target(s). Can
    #   be a specific version or the default version.
    #
    #   State Manager doesn't support running associations that use a new
    #   version of a document if that document is shared from another
    #   account. State Manager always runs the `default` version of a
    #   document if shared from another account, even though the Systems
    #   Manager console shows that a new version was processed. If you want
    #   to run an association using a new version of a document shared form
    #   another account, you must set the document version to `default`.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The managed node ID.
    #
    #   <note markdown="1"> `InstanceId` has been deprecated. To specify a managed node ID for
    #   an association, use the `Targets` parameter. Requests that include
    #   the parameter `InstanceID` with Systems Manager documents (SSM
    #   documents) that use schema version 2.0 or later will fail. In
    #   addition, if you use the parameter `InstanceId`, you can't use the
    #   parameters `AssociationName`, `DocumentVersion`, `MaxErrors`,
    #   `MaxConcurrency`, `OutputLocation`, or `ScheduleExpression`. To use
    #   these parameters, you must use the `Targets` parameter.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters for the runtime configuration of the document.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] targets
    #   The targets for the association. You can target managed nodes by
    #   using tags, Amazon Web Services resource groups, all managed nodes
    #   in an Amazon Web Services account, or individual managed node IDs.
    #   You can target all managed nodes in an Amazon Web Services account
    #   by specifying the `InstanceIds` key with a value of `*`. For more
    #   information about choosing targets for an association, see [Using
    #   targets and rate controls with State Manager associations][1] in the
    #   *Amazon Web Services Systems Manager User Guide*.
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
    #   An Amazon Simple Storage Service (Amazon S3) bucket where you want
    #   to store the output details of the request.
    #   @return [Types::InstanceAssociationOutputLocation]
    #
    # @!attribute [rw] association_name
    #   Specify a descriptive name for the association.
    #   @return [String]
    #
    # @!attribute [rw] automation_target_parameter_name
    #   Choose the parameter that will define how your automation will
    #   branch out. This target is required for associations that use an
    #   Automation runbook and target resources by using rate controls.
    #   Automation is a capability of Amazon Web Services Systems Manager.
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
    #   association on 50 managed nodes and set `MaxError` to 10%, then the
    #   system stops sending the request when the sixth error is received.
    #
    #   Executions that are already running an association when `MaxErrors`
    #   is reached are allowed to complete, but some of these executions may
    #   fail as well. If you need to ensure that there won't be more than
    #   max-errors failed executions, set `MaxConcurrency` to 1 so that
    #   executions proceed one at a time.
    #   @return [String]
    #
    # @!attribute [rw] max_concurrency
    #   The maximum number of targets allowed to run the association at the
    #   same time. You can specify a number, for example 10, or a percentage
    #   of the target set, for example 10%. The default value is 100%, which
    #   means all targets run the association at the same time.
    #
    #   If a new managed node starts and attempts to run an association
    #   while Systems Manager is running `MaxConcurrency` associations, the
    #   association is allowed to run. During the next association interval,
    #   the new managed node will process its association within the limit
    #   specified for `MaxConcurrency`.
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
    #   parameter for the PutComplianceItems API operation. In this case,
    #   compliance data isn't managed by State Manager. It is managed by
    #   your direct call to the PutComplianceItems API operation.
    #
    #   By default, all associations use `AUTO` mode.
    #   @return [String]
    #
    # @!attribute [rw] apply_only_at_cron_interval
    #   By default, when you create a new association, the system runs it
    #   immediately after it is created and then according to the schedule
    #   you specified. Specify this option if you don't want an association
    #   to run immediately after you create it. This parameter isn't
    #   supported for rate expressions.
    #   @return [Boolean]
    #
    # @!attribute [rw] calendar_names
    #   The names or Amazon Resource Names (ARNs) of the Change Calendar
    #   type documents you want to gate your associations under. The
    #   associations only run when that change calendar is open. For more
    #   information, see [Amazon Web Services Systems Manager Change
    #   Calendar][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-change-calendar
    #   @return [Array<String>]
    #
    # @!attribute [rw] target_locations
    #   A location is a combination of Amazon Web Services Regions and
    #   Amazon Web Services accounts where you want to run the association.
    #   Use this action to create an association in multiple Regions and
    #   multiple accounts.
    #   @return [Array<Types::TargetLocation>]
    #
    # @!attribute [rw] schedule_offset
    #   Number of days to wait after the scheduled day to run an
    #   association. For example, if you specified a cron schedule of
    #   `cron(0 0 ? * THU#2 *)`, you could specify an offset of 3 to run the
    #   association each Sunday after the second Thursday of the month. For
    #   more information about cron schedules for associations, see
    #   [Reference: Cron and rate expressions for Systems Manager][1] in the
    #   *Amazon Web Services Systems Manager User Guide*.
    #
    #   <note markdown="1"> To use offsets, you must specify the `ApplyOnlyAtCronInterval`
    #   parameter. This option tells the system not to run an association
    #   immediately after you create it.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/reference-cron-and-rate-expressions.html
    #   @return [Integer]
    #
    # @!attribute [rw] target_maps
    #   A key-value mapping of document parameters to target resources. Both
    #   Targets and TargetMaps can't be specified together.
    #   @return [Array<Hash<String,Array<String>>>]
    #
    # @!attribute [rw] tags
    #   Adds or overwrites one or more tags for a State Manager association.
    #   *Tags* are metadata that you can assign to your Amazon Web Services
    #   resources. Tags enable you to categorize your resources in different
    #   ways, for example, by purpose, owner, or environment. Each tag
    #   consists of a key and an optional value, both of which you define.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] alarm_configuration
    #   The details for the CloudWatch alarm you want to apply to an
    #   automation or command.
    #   @return [Types::AlarmConfiguration]
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
      :apply_only_at_cron_interval,
      :calendar_names,
      :target_locations,
      :schedule_offset,
      :target_maps,
      :tags,
      :alarm_configuration)
      SENSITIVE = [:parameters]
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content
    #   The content for the new SSM document in JSON or YAML format. The
    #   content of the document must not exceed 64KB. This quota also
    #   includes the content specified for input parameters at runtime. We
    #   recommend storing the contents for your new document in an external
    #   JSON or YAML file and referencing the file in a command.
    #
    #   For examples, see the following topics in the *Amazon Web Services
    #   Systems Manager User Guide*.
    #
    #   * [Create an SSM document (Amazon Web Services API)][1]
    #
    #   * [Create an SSM document (Amazon Web Services CLI)][2]
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
    #   used exclusively by AppConfig. When a user creates an AppConfig
    #   configuration in an SSM document, the user must also specify a
    #   required document for validation purposes. In this case, an
    #   `ApplicationConfiguration` document requires an
    #   `ApplicationConfigurationSchema` document for validation purposes.
    #   For more information, see [What is AppConfig?][1] in the *AppConfig
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/appconfig/latest/userguide/what-is-appconfig.html
    #   @return [Array<Types::DocumentRequires>]
    #
    # @!attribute [rw] attachments
    #   A list of key-value pairs that describe attachments to a version of
    #   a document.
    #   @return [Array<Types::AttachmentsSource>]
    #
    # @!attribute [rw] name
    #   A name for the SSM document.
    #
    #   You can't use the following strings as document name prefixes.
    #   These are reserved by Amazon Web Services for use as document name
    #   prefixes:
    #
    #    * `aws`
    #
    #   * `amazon`
    #
    #   * `amzn`
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   An optional field where you can specify a friendly name for the SSM
    #   document. This value can differ for each version of the document.
    #   You can update this value at a later time using the UpdateDocument
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] version_name
    #   An optional field specifying the version of the artifact you are
    #   creating with the document. For example, `Release12.1`. This value
    #   is unique across all versions of a document, and can't be changed.
    #   @return [String]
    #
    # @!attribute [rw] document_type
    #   The type of document to create.
    #
    #   <note markdown="1"> The `DeploymentStrategy` document type is an internal-use-only
    #   document type reserved for AppConfig.
    #
    #    </note>
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
    #   the following value: `/AWS::EC2::Instance`. If you specify a value
    #   of '/' the document can run on all types of resources. If you
    #   don't specify a value, the document can't run on any resources.
    #   For a list of valid resource types, see [Amazon Web Services
    #   resource and property types reference][1] in the *CloudFormation
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Optional metadata that you assign to a resource. Tags enable you to
    #   categorize a resource in different ways, such as by purpose, owner,
    #   or environment. For example, you might want to tag an SSM document
    #   to identify the types of targets or the environment where it will
    #   run. In this case, you could specify the following key-value pairs:
    #
    #   * `Key=OS,Value=Windows`
    #
    #   * `Key=Environment,Value=Production`
    #
    #   <note markdown="1"> To add tags to an existing SSM document, use the AddTagsToResource
    #   operation.
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
      :display_name,
      :version_name,
      :document_type,
      :document_format,
      :target_type,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] document_description
    #   Information about the SSM document.
    #   @return [Types::DocumentDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateDocumentResult AWS API Documentation
    #
    class CreateDocumentResult < Struct.new(
      :document_description)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   the maintenance window to become active. `StartDate` allows you to
    #   delay activation of the maintenance window until the specified
    #   future date.
    #   @return [String]
    #
    # @!attribute [rw] end_date
    #   The date and time, in ISO-8601 Extended format, for when you want
    #   the maintenance window to become inactive. `EndDate` allows you to
    #   set a date and time in the future when the maintenance window will
    #   no longer run.
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
    #   example: "America/Los\_Angeles", "UTC", or "Asia/Seoul". For
    #   more information, see the [Time Zone Database][1] on the IANA
    #   website.
    #
    #
    #
    #   [1]: https://www.iana.org/time-zones
    #   @return [String]
    #
    # @!attribute [rw] schedule_offset
    #   The number of days to wait after the date and time specified by a
    #   cron expression before running the maintenance window.
    #
    #   For example, the following cron expression schedules a maintenance
    #   window to run on the third Tuesday of every month at 11:30 PM.
    #
    #   `cron(30 23 ? * TUE#3 *)`
    #
    #   If the schedule offset is `2`, the maintenance window won't run
    #   until two days later.
    #   @return [Integer]
    #
    # @!attribute [rw] duration
    #   The duration of the maintenance window in hours.
    #   @return [Integer]
    #
    # @!attribute [rw] cutoff
    #   The number of hours before the end of the maintenance window that
    #   Amazon Web Services Systems Manager stops scheduling new tasks for
    #   execution.
    #   @return [Integer]
    #
    # @!attribute [rw] allow_unassociated_targets
    #   Enables a maintenance window task to run on managed nodes, even if
    #   you haven't registered those nodes as targets. If enabled, then you
    #   must specify the unregistered managed nodes (by node ID) when you
    #   register a task with the maintenance window.
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
    #   specify the following key-value pairs:
    #
    #   * `Key=TaskType,Value=AgentUpdate`
    #
    #   * `Key=OS,Value=Windows`
    #
    #   * `Key=Environment,Value=Production`
    #
    #   <note markdown="1"> To add tags to an existing maintenance window, use the
    #   AddTagsToResource operation.
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
      :schedule_offset,
      :duration,
      :cutoff,
      :allow_unassociated_targets,
      :client_token,
      :tags)
      SENSITIVE = [:description]
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   Information about the OpsItem.
    #   @return [String]
    #
    # @!attribute [rw] ops_item_type
    #   The type of OpsItem to create. Systems Manager supports the
    #   following types of OpsItems:
    #
    #   * `/aws/issue`
    #
    #     This type of OpsItem is used for default OpsItems created by
    #     OpsCenter.
    #
    #   * `/aws/changerequest`
    #
    #     This type of OpsItem is used by Change Manager for reviewing and
    #     approving or rejecting change requests.
    #
    #   * `/aws/insights`
    #
    #     This type of OpsItem is used by OpsCenter for aggregating and
    #     reporting on duplicate OpsItems.
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
    #   Operational data keys *can't* begin with the following: `amazon`,
    #   `aws`, `amzn`, `ssm`, `/amazon`, `/aws`, `/amzn`, `/ssm`.
    #
    #   You can choose to make the data searchable by other users in the
    #   account or you can restrict search access. Searchable data means
    #   that all users with access to the OpsItem Overview page (as provided
    #   by the DescribeOpsItems API operation) can view and search on the
    #   specified data. Operational data that isn't searchable is only
    #   viewable by users who have access to the OpsItem (as provided by the
    #   GetOpsItem API operation).
    #
    #   Use the `/aws/resources` key in OperationalData to specify a related
    #   resource in the request. Use the `/aws/automations` key in
    #   OperationalData to associate an Automation runbook with the OpsItem.
    #   To view Amazon Web Services CLI example commands that use these
    #   keys, see [Creating OpsItems manually][1] in the *Amazon Web
    #   Services Systems Manager User Guide*.
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
    #   <note markdown="1"> The source name can't contain the following strings: `aws`,
    #   `amazon`, and `amzn`.
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
    #   in the *Amazon Web Services Systems Manager User Guide*.
    #
    #   Tags use a key-value pair. For example:
    #
    #   `Key=Department,Value=Finance`
    #
    #   To add tags to a new OpsItem, a user must have IAM permissions for
    #   both the `ssm:CreateOpsItems` operation and the
    #   `ssm:AddTagsToResource` operation. To add tags to an existing
    #   OpsItem, use the AddTagsToResource operation.
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
    # @!attribute [rw] actual_start_time
    #   The time a runbook workflow started. Currently reported only for the
    #   OpsItem type `/aws/changerequest`.
    #   @return [Time]
    #
    # @!attribute [rw] actual_end_time
    #   The time a runbook workflow ended. Currently reported only for the
    #   OpsItem type `/aws/changerequest`.
    #   @return [Time]
    #
    # @!attribute [rw] planned_start_time
    #   The time specified in a change request for a runbook workflow to
    #   start. Currently supported only for the OpsItem type
    #   `/aws/changerequest`.
    #   @return [Time]
    #
    # @!attribute [rw] planned_end_time
    #   The time specified in a change request for a runbook workflow to
    #   end. Currently supported only for the OpsItem type
    #   `/aws/changerequest`.
    #   @return [Time]
    #
    # @!attribute [rw] account_id
    #   The target Amazon Web Services account where you want to create an
    #   OpsItem. To make this call, your account must be configured to work
    #   with OpsItems across accounts. For more information, see [Setting up
    #   OpsCenter to work with OpsItems across accounts][1] in the *Amazon
    #   Web Services Systems Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-OpsCenter-multiple-accounts.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateOpsItemRequest AWS API Documentation
    #
    class CreateOpsItemRequest < Struct.new(
      :description,
      :ops_item_type,
      :operational_data,
      :notifications,
      :priority,
      :related_ops_items,
      :source,
      :title,
      :tags,
      :category,
      :severity,
      :actual_start_time,
      :actual_end_time,
      :planned_start_time,
      :planned_end_time,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ops_item_id
    #   The ID of the OpsItem.
    #   @return [String]
    #
    # @!attribute [rw] ops_item_arn
    #   The OpsItem Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateOpsItemResponse AWS API Documentation
    #
    class CreateOpsItemResponse < Struct.new(
      :ops_item_id,
      :ops_item_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_id
    #   A resource ID for a new Application Manager application.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   Metadata for a new Application Manager application.
    #   @return [Hash<String,Types::MetadataValue>]
    #
    # @!attribute [rw] tags
    #   Optional metadata that you assign to a resource. You can specify a
    #   maximum of five tags for an OpsMetadata object. Tags enable you to
    #   categorize a resource in different ways, such as by purpose, owner,
    #   or environment. For example, you might want to tag an OpsMetadata
    #   object to identify an environment or target Amazon Web Services
    #   Region. In this case, you could specify the following key-value
    #   pairs:
    #
    #   * `Key=Environment,Value=Production`
    #
    #   * `Key=Region,Value=us-east-2`
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateOpsMetadataRequest AWS API Documentation
    #
    class CreateOpsMetadataRequest < Struct.new(
      :resource_id,
      :metadata,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ops_metadata_arn
    #   The Amazon Resource Name (ARN) of the OpsMetadata Object or blob
    #   created by the call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateOpsMetadataResult AWS API Documentation
    #
    class CreateOpsMetadataResult < Struct.new(
      :ops_metadata_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operating_system
    #   Defines the operating system the patch baseline applies to. The
    #   default value is `WINDOWS`.
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
    #   and rejected patch lists][1] in the *Amazon Web Services Systems
    #   Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] approved_patches_compliance_level
    #   Defines the compliance level for approved patches. When an approved
    #   patch is reported as missing, this value describes the severity of
    #   the compliance violation. The default value is `UNSPECIFIED`.
    #   @return [String]
    #
    # @!attribute [rw] approved_patches_enable_non_security
    #   Indicates whether the list of approved patches includes non-security
    #   updates that should be applied to the managed nodes. The default
    #   value is `false`. Applies to Linux managed nodes only.
    #   @return [Boolean]
    #
    # @!attribute [rw] rejected_patches
    #   A list of explicitly rejected patches for the baseline.
    #
    #   For information about accepted formats for lists of approved patches
    #   and rejected patches, see [About package name formats for approved
    #   and rejected patch lists][1] in the *Amazon Web Services Systems
    #   Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] rejected_patches_action
    #   The action for Patch Manager to take on patches included in the
    #   `RejectedPackages` list.
    #
    #   * <b> <code>ALLOW_AS_DEPENDENCY</code> </b>: A package in the
    #     `Rejected` patches list is installed only if it is a dependency of
    #     another package. It is considered compliant with the patch
    #     baseline, and its status is reported as `InstalledOther`. This is
    #     the default action if no option is specified.
    #
    #   * <b> <code>BLOCK</code> </b>: Packages in the `RejectedPatches`
    #     list, and packages that include them as dependencies, aren't
    #     installed under any circumstances. If a package was installed
    #     before it was added to the Rejected patches list, it is considered
    #     non-compliant with the patch baseline, and its status is reported
    #     as `InstalledRejected`.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the patch baseline.
    #   @return [String]
    #
    # @!attribute [rw] sources
    #   Information about the patches to use to update the managed nodes,
    #   including target operating systems and source repositories. Applies
    #   to Linux managed nodes only.
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
    #   specify the following key-value pairs:
    #
    #   * `Key=PatchSeverity,Value=Critical`
    #
    #   * `Key=OS,Value=Windows`
    #
    #   <note markdown="1"> To add tags to an existing patch baseline, use the AddTagsToResource
    #   operation.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   and multiple Regions, or multiple Amazon Web Services accounts and
    #   Amazon Web Services Regions, as listed in Organizations for
    #   Explorer. If you specify `SyncFromSource`, you must provide a value
    #   for `SyncSource`. The default value is `SyncToDestination`.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] activation_id
    #   The ID of the activation that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteActivationRequest AWS API Documentation
    #
    class DeleteActivationRequest < Struct.new(
      :activation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteActivationResult AWS API Documentation
    #
    class DeleteActivationResult < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   The name of the SSM document.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The managed node ID.
    #
    #   <note markdown="1"> `InstanceId` has been deprecated. To specify a managed node ID for
    #   an association, use the `Targets` parameter. Requests that include
    #   the parameter `InstanceID` with Systems Manager documents (SSM
    #   documents) that use schema version 2.0 or later will fail. In
    #   addition, if you use the parameter `InstanceId`, you can't use the
    #   parameters `AssociationName`, `DocumentVersion`, `MaxErrors`,
    #   `MaxConcurrency`, `OutputLocation`, or `ScheduleExpression`. To use
    #   these parameters, you must use the `Targets` parameter.
    #
    #    </note>
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteAssociationResult AWS API Documentation
    #
    class DeleteAssociationResult < Aws::EmptyStructure; end

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
    #   `Force` flag in an Identity and Access Management (IAM) policy.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteDocumentRequest AWS API Documentation
    #
    class DeleteDocumentRequest < Struct.new(
      :name,
      :document_version,
      :version_name,
      :force)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteDocumentResult AWS API Documentation
    #
    class DeleteDocumentResult < Aws::EmptyStructure; end

    # @!attribute [rw] type_name
    #   The name of the custom inventory type for which you want to delete
    #   either all previously collected data or the inventory type itself.
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
    #   To enable this schema again, you must call the `PutInventory`
    #   operation for a version greater than the disabled version.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deletion_id
    #   Every `DeleteInventory` operation is assigned a unique ID. This
    #   option returns a unique ID. You can use this ID to query the status
    #   of a delete operation. This option is useful for ensuring that a
    #   delete operation has completed before you begin other operations.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The name of the inventory data type specified in the request.
    #   @return [String]
    #
    # @!attribute [rw] deletion_summary
    #   A summary of the delete operation. For more information about this
    #   summary, see [Deleting custom inventory][1] in the *Amazon Web
    #   Services Systems Manager User Guide*.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] window_id
    #   The ID of the maintenance window to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteMaintenanceWindowRequest AWS API Documentation
    #
    class DeleteMaintenanceWindowRequest < Struct.new(
      :window_id)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ops_metadata_arn
    #   The Amazon Resource Name (ARN) of an OpsMetadata Object to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteOpsMetadataRequest AWS API Documentation
    #
    class DeleteOpsMetadataRequest < Struct.new(
      :ops_metadata_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteOpsMetadataResult AWS API Documentation
    #
    class DeleteOpsMetadataResult < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   The name of the parameter to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteParameterRequest AWS API Documentation
    #
    class DeleteParameterRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteParameterResult AWS API Documentation
    #
    class DeleteParameterResult < Aws::EmptyStructure; end

    # @!attribute [rw] names
    #   The names of the parameters to delete. After deleting a parameter,
    #   wait for at least 30 seconds to create a parameter with the same
    #   name.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteParametersRequest AWS API Documentation
    #
    class DeleteParametersRequest < Struct.new(
      :names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deleted_parameters
    #   The names of the deleted parameters.
    #   @return [Array<String>]
    #
    # @!attribute [rw] invalid_parameters
    #   The names of parameters that weren't deleted because the parameters
    #   aren't valid.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteParametersResult AWS API Documentation
    #
    class DeleteParametersResult < Struct.new(
      :deleted_parameters,
      :invalid_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] baseline_id
    #   The ID of the patch baseline to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeletePatchBaselineRequest AWS API Documentation
    #
    class DeletePatchBaselineRequest < Struct.new(
      :baseline_id)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteResourceDataSyncResult AWS API Documentation
    #
    class DeleteResourceDataSyncResult < Aws::EmptyStructure; end

    # @!attribute [rw] resource_arn
    #   Amazon Resource Name (ARN) of the resource to which the policies are
    #   attached.
    #   @return [String]
    #
    # @!attribute [rw] policy_id
    #   The policy ID.
    #   @return [String]
    #
    # @!attribute [rw] policy_hash
    #   ID of the current policy version. The hash helps to prevent multiple
    #   calls from attempting to overwrite a policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteResourcePolicyRequest AWS API Documentation
    #
    class DeleteResourcePolicyRequest < Struct.new(
      :resource_arn,
      :policy_id,
      :policy_hash)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteResourcePolicyResponse AWS API Documentation
    #
    class DeleteResourcePolicyResponse < Aws::EmptyStructure; end

    # @!attribute [rw] instance_id
    #   The ID assigned to the managed node when you registered it using the
    #   activation process.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeregisterManagedInstanceRequest AWS API Documentation
    #
    class DeregisterManagedInstanceRequest < Struct.new(
      :instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeregisterManagedInstanceResult AWS API Documentation
    #
    class DeregisterManagedInstanceResult < Aws::EmptyStructure; end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   the target is being referenced, the system returns an error and
    #   doesn't deregister the target from the maintenance window.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeregisterTargetFromMaintenanceWindowRequest AWS API Documentation
    #
    class DeregisterTargetFromMaintenanceWindowRequest < Struct.new(
      :window_id,
      :window_target_id,
      :safe)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Filter for the DescribeActivation API.
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] activation_list
    #   A list of activations for your Amazon Web Services account.
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the SSM document.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The managed node ID.
    #   @return [String]
    #
    # @!attribute [rw] association_id
    #   The association ID for which you want information.
    #   @return [String]
    #
    # @!attribute [rw] association_version
    #   Specify the association version to retrieve. To view the latest
    #   version, either specify `$LATEST` for this parameter, or omit this
    #   parameter. To view a list of all associations for a managed node,
    #   use ListAssociations. To get a list of versions for a specific
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   Indicates whether to list step executions in reverse order by start
    #   time. The default value is 'false'.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   Each element in the array is a structure containing a key-value
    #   pair.
    #
    #   **Windows Server**
    #
    #   Supported keys for Windows Server managed node patches include the
    #   following:
    #
    #   * <b> <code>PATCH_SET</code> </b>
    #
    #     Sample values: `OS` \| `APPLICATION`
    #
    #   * <b> <code>PRODUCT</code> </b>
    #
    #     Sample values: `WindowsServer2012` \| `Office 2010` \|
    #     `MicrosoftDefenderAntivirus`
    #
    #   * <b> <code>PRODUCT_FAMILY</code> </b>
    #
    #     Sample values: `Windows` \| `Office`
    #
    #   * <b> <code>MSRC_SEVERITY</code> </b>
    #
    #     Sample values: `ServicePacks` \| `Important` \| `Moderate`
    #
    #   * <b> <code>CLASSIFICATION</code> </b>
    #
    #     Sample values: `ServicePacks` \| `SecurityUpdates` \|
    #     `DefinitionUpdates`
    #
    #   * <b> <code>PATCH_ID</code> </b>
    #
    #     Sample values: `KB123456` \| `KB4516046`
    #
    #   **Linux**
    #
    #   When specifying filters for Linux patches, you must specify a
    #   key-pair for `PRODUCT`. For example, using the Command Line
    #   Interface (CLI), the following command fails:
    #
    #    `aws ssm describe-available-patches --filters
    #   Key=CVE_ID,Values=CVE-2018-3615`
    #
    #    However, the following command succeeds:
    #
    #    `aws ssm describe-available-patches --filters
    #   Key=PRODUCT,Values=AmazonLinux2018.03
    #   Key=CVE_ID,Values=CVE-2018-3615`
    #
    #   Supported keys for Linux managed node patches include the following:
    #
    #   * <b> <code>PRODUCT</code> </b>
    #
    #     Sample values: `AmazonLinux2018.03` \| `AmazonLinux2.0`
    #
    #   * <b> <code>NAME</code> </b>
    #
    #     Sample values: `kernel-headers` \| `samba-python` \| `php`
    #
    #   * <b> <code>SEVERITY</code> </b>
    #
    #     Sample values: `Critical` \| `Important` \| `Medium` \| `Low`
    #
    #   * <b> <code>EPOCH</code> </b>
    #
    #     Sample values: `0` \| `1`
    #
    #   * <b> <code>VERSION</code> </b>
    #
    #     Sample values: `78.6.1` \| `4.10.16`
    #
    #   * <b> <code>RELEASE</code> </b>
    #
    #     Sample values: `9.56.amzn1` \| `1.amzn2`
    #
    #   * <b> <code>ARCH</code> </b>
    #
    #     Sample values: `i686` \| `x86_64`
    #
    #   * <b> <code>REPOSITORY</code> </b>
    #
    #     Sample values: `Core` \| `Updates`
    #
    #   * <b> <code>ADVISORY_ID</code> </b>
    #
    #     Sample values: `ALAS-2018-1058` \| `ALAS2-2021-1594`
    #
    #   * <b> <code>CVE_ID</code> </b>
    #
    #     Sample values: `CVE-2018-3615` \| `CVE-2020-1472`
    #
    #   * <b> <code>BUGZILLA_ID</code> </b>
    #
    #     Sample values: `1463241`
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the document for which you are the owner.
    #   @return [String]
    #
    # @!attribute [rw] permission_type
    #   The permission type for the document. The permission type can be
    #   *Share*.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeDocumentPermissionRequest AWS API Documentation
    #
    class DescribeDocumentPermissionRequest < Struct.new(
      :name,
      :permission_type,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_ids
    #   The account IDs that have permission to use this document. The ID
    #   can be either an Amazon Web Services account or *All*.
    #   @return [Array<String>]
    #
    # @!attribute [rw] account_sharing_info_list
    #   A list of Amazon Web Services accounts where the current document is
    #   shared and the version shared with each account.
    #   @return [Array<Types::AccountSharingInfo>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. Use this token to get
    #   the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeDocumentPermissionResponse AWS API Documentation
    #
    class DescribeDocumentPermissionResponse < Struct.new(
      :account_ids,
      :account_sharing_info_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the SSM document.
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
    #   is unique across all versions of a document, and can't be changed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeDocumentRequest AWS API Documentation
    #
    class DescribeDocumentRequest < Struct.new(
      :name,
      :document_version,
      :version_name)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The managed node ID for which you want to view all associations.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] associations
    #   The associations for the requested managed node.
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The managed node IDs for which you want association status
    #   information.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_information_filter_list
    #   This is a legacy method. We recommend that you don't use this
    #   method. Instead, use the `Filters` data type. `Filters` enables you
    #   to return node information by filtering based on tags applied to
    #   managed nodes.
    #
    #   <note markdown="1"> Attempting to use `InstanceInformationFilterList` and `Filters`
    #   leads to an exception error.
    #
    #    </note>
    #   @return [Array<Types::InstanceInformationFilter>]
    #
    # @!attribute [rw] filters
    #   One or more filters. Use a filter to return a more specific list of
    #   managed nodes. You can filter based on tags applied to your managed
    #   nodes. Use this `Filters` data type instead of
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_information_list
    #   The managed node information list.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] patch_group
    #   The name of the patch group for which the patch state information
    #   should be retrieved.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Each entry in the array is a structure containing:
    #
    #   * Key (string between 1 and 200 characters)
    #
    #   * Values (array containing a single string)
    #
    #   * Type (string "Equal", "NotEqual", "LessThan",
    #     "GreaterThan")
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_patch_states
    #   The high-level patch state for the requested managed nodes.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_ids
    #   The ID of the managed node for which patch state information should
    #   be retrieved.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of managed nodes to return (per page).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeInstancePatchStatesRequest AWS API Documentation
    #
    class DescribeInstancePatchStatesRequest < Struct.new(
      :instance_ids,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_patch_states
    #   The high-level patch state for the requested managed nodes.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The ID of the managed node whose patch state information should be
    #   retrieved.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Each element in the array is a structure containing a key-value
    #   pair.
    #
    #   Supported keys for `DescribeInstancePatches`include the following:
    #
    #   * <b> <code>Classification</code> </b>
    #
    #     Sample values: `Security` \| `SecurityUpdates`
    #
    #   * <b> <code>KBId</code> </b>
    #
    #     Sample values: `KB4480056` \| `java-1.7.0-openjdk.x86_64`
    #
    #   * <b> <code>Severity</code> </b>
    #
    #     Sample values: `Important` \| `Medium` \| `Low`
    #
    #   * <b> <code>State</code> </b>
    #
    #     Sample values: `Installed` \| `InstalledOther` \|
    #     `InstalledPendingReboot`
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] patches
    #   Each entry in the array is a structure containing:
    #
    #   * Title (string)
    #
    #   * KBId (string)
    #
    #   * Classification (string)
    #
    #   * Severity (string)
    #
    #   * State (string, such as "INSTALLED" or "FAILED")
    #
    #   * InstalledTime (DateTime)
    #
    #   * InstalledBy (string)
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deletion_id
    #   Specify the delete inventory ID for which you want information. This
    #   ID was returned by the `DeleteInventory` operation.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   The supported filter key is `STATUS` with the corresponding values
    #   `PENDING`, `IN_PROGRESS`, `SUCCESS`, `FAILED`, `TIMED_OUT`,
    #   `CANCELLING`, and `CANCELLED`.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] window_execution_id
    #   The ID of the maintenance window execution whose task executions
    #   should be retrieved.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Optional filters used to scope down the returned tasks. The
    #   supported filter key is `STATUS` with the corresponding values
    #   `PENDING`, `IN_PROGRESS`, `SUCCESS`, `FAILED`, `TIMED_OUT`,
    #   `CANCELLING`, and `CANCELLED`.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] window_id
    #   The ID of the maintenance window whose executions should be
    #   retrieved.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Each entry in the array is a structure containing:
    #
    #   * Key. A string between 1 and 128 characters. Supported keys include
    #     `ExecutedBefore` and `ExecutedAfter`.
    #
    #   * Values. An array of strings, each between 1 and 256 characters.
    #     Supported values are date/time strings in a valid ISO 8601
    #     date/time format, such as `2021-11-04T05:00:00Z`.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] window_id
    #   The ID of the maintenance window to retrieve information about.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The managed node ID or key-value pair to retrieve information about.
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] resource_type
    #   The type of resource you want to retrieve information about. For
    #   example, `INSTANCE`.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] window_id
    #   The ID of the maintenance window whose targets should be retrieved.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Optional filters that can be used to narrow down the scope of the
    #   returned window targets. The supported filter keys are `Type`,
    #   `WindowTargetId`, and `OwnerInformation`.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] window_id
    #   The ID of the maintenance window whose tasks should be retrieved.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Optional filters used to narrow down the scope of the returned
    #   tasks. The supported filter keys are `WindowTaskId`, `TaskArn`,
    #   `Priority`, and `TaskType`.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] targets
    #   The managed node ID or key-value pair to retrieve information about.
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] resource_type
    #   The type of resource you want to retrieve information about. For
    #   example, `INSTANCE`.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] window_identities
    #   Information about the maintenance window targets and tasks a managed
    #   node is associated with.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   Optional filters used to narrow down the scope of the returned
    #   maintenance windows. Supported filter keys are `Name` and `Enabled`.
    #   For example, `Name=MyMaintenanceWindow` and `Enabled=True`.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   * Key: Title*
    #
    #     Operations: Equals,Contains
    #
    #   * Key: OperationalData**
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
    #   *The Equals operator for Title matches the first 100 characters. If
    #   you specify more than 100 characters, they system returns an error
    #   that the filter value exceeds the length limit.
    #
    #   **If you filter the response by using the OperationalData
    #   operator, specify a key-value pair by using the following JSON
    #   format: \\\{"key":"key\_name","value":"a\_value"\\}
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   Each element in the array is a structure containing a key-value
    #   pair.
    #
    #   Supported keys for `DescribePatchBaselines` include the following:
    #
    #   * <b> <code>NAME_PREFIX</code> </b>
    #
    #     Sample values: `AWS-` \| `My-`
    #
    #   * <b> <code>OWNER</code> </b>
    #
    #     Sample values: `AWS` \| `Self`
    #
    #   * <b> <code>OPERATING_SYSTEM</code> </b>
    #
    #     Sample values: `AMAZON_LINUX` \| `SUSE` \| `WINDOWS`
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] baseline_identities
    #   An array of `PatchBaselineIdentity` elements.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] patch_group
    #   The name of the patch group whose patch snapshot should be
    #   retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribePatchGroupStateRequest AWS API Documentation
    #
    class DescribePatchGroupStateRequest < Struct.new(
      :patch_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instances
    #   The number of managed nodes in the patch group.
    #   @return [Integer]
    #
    # @!attribute [rw] instances_with_installed_patches
    #   The number of managed nodes with installed patches.
    #   @return [Integer]
    #
    # @!attribute [rw] instances_with_installed_other_patches
    #   The number of managed nodes with patches installed that aren't
    #   defined in the patch baseline.
    #   @return [Integer]
    #
    # @!attribute [rw] instances_with_installed_pending_reboot_patches
    #   The number of managed nodes with patches installed by Patch Manager
    #   that haven't been rebooted after the patch installation. The status
    #   of these managed nodes is `NON_COMPLIANT`.
    #   @return [Integer]
    #
    # @!attribute [rw] instances_with_installed_rejected_patches
    #   The number of managed nodes with patches installed that are
    #   specified in a `RejectedPatches` list. Patches with a status of
    #   `INSTALLED_REJECTED` were typically installed before they were added
    #   to a `RejectedPatches` list.
    #
    #   <note markdown="1"> If `ALLOW_AS_DEPENDENCY` is the specified option for
    #   `RejectedPatchesAction`, the value of
    #   `InstancesWithInstalledRejectedPatches` will always be `0` (zero).
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] instances_with_missing_patches
    #   The number of managed nodes with missing patches from the patch
    #   baseline.
    #   @return [Integer]
    #
    # @!attribute [rw] instances_with_failed_patches
    #   The number of managed nodes with patches from the patch baseline
    #   that failed to install.
    #   @return [Integer]
    #
    # @!attribute [rw] instances_with_not_applicable_patches
    #   The number of managed nodes with patches that aren't applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] instances_with_unreported_not_applicable_patches
    #   The number of managed nodes with `NotApplicable` patches beyond the
    #   supported limit, which aren't reported by name to Inventory.
    #   Inventory is a capability of Amazon Web Services Systems Manager.
    #   @return [Integer]
    #
    # @!attribute [rw] instances_with_critical_non_compliant_patches
    #   The number of managed nodes where patches that are specified as
    #   `Critical` for compliance reporting in the patch baseline aren't
    #   installed. These patches might be missing, have failed installation,
    #   were rejected, or were installed but awaiting a required managed
    #   node reboot. The status of these managed nodes is `NON_COMPLIANT`.
    #   @return [Integer]
    #
    # @!attribute [rw] instances_with_security_non_compliant_patches
    #   The number of managed nodes where patches that are specified as
    #   `Security` in a patch advisory aren't installed. These patches
    #   might be missing, have failed installation, were rejected, or were
    #   installed but awaiting a required managed node reboot. The status of
    #   these managed nodes is `NON_COMPLIANT`.
    #   @return [Integer]
    #
    # @!attribute [rw] instances_with_other_non_compliant_patches
    #   The number of managed nodes with patches installed that are
    #   specified as other than `Critical` or `Security` but aren't
    #   compliant with the patch baseline. The status of these managed nodes
    #   is `NON_COMPLIANT`.
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
      :instances_with_unreported_not_applicable_patches,
      :instances_with_critical_non_compliant_patches,
      :instances_with_security_non_compliant_patches,
      :instances_with_other_non_compliant_patches)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of patch groups to return (per page).
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   Each element in the array is a structure containing a key-value
    #   pair.
    #
    #   Supported keys for `DescribePatchGroups` include the following:
    #
    #   * <b> <code>NAME_PREFIX</code> </b>
    #
    #     Sample values: `AWS-` \| `My-`.
    #
    #   * <b> <code>OPERATING_SYSTEM</code> </b>
    #
    #     Sample values: `AMAZON_LINUX` \| `SUSE` \| `WINDOWS`
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] mappings
    #   Each entry in the array contains:
    #
    #   * `PatchGroup`: string (between 1 and 256 characters. Regex:
    #     `^([\p\{L\}\p\{Z\}\p\{N\}_.:/=+\-@]*)$)`
    #
    #   * `PatchBaselineIdentity`: A `PatchBaselineIdentity` element.
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
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   or for applications released by Microsoft. Not applicable for the
    #   Linux or macOS operating systems.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ops_item_id
    #   The ID of the OpsItem for which you want to delete an association
    #   between the OpsItem and a related item.
    #   @return [String]
    #
    # @!attribute [rw] association_id
    #   The ID of the association for which you want to delete an
    #   association between the OpsItem and a related item.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DisassociateOpsItemRelatedItemRequest AWS API Documentation
    #
    class DisassociateOpsItemRelatedItemRequest < Struct.new(
      :ops_item_id,
      :association_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DisassociateOpsItemRelatedItemResponse AWS API Documentation
    #
    class DisassociateOpsItemRelatedItemResponse < Aws::EmptyStructure; end

    # The specified document already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DocumentAlreadyExists AWS API Documentation
    #
    class DocumentAlreadyExists < Struct.new(
      :message)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an Amazon Web Services Systems Manager document (SSM
    # document).
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
    #   The name of the SSM document.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The friendly name of the SSM document. This value can differ for
    #   each version of the document. If you want to update this value, see
    #   UpdateDocument.
    #   @return [String]
    #
    # @!attribute [rw] version_name
    #   The version of the artifact associated with the document.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The Amazon Web Services user that created the document.
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
    # @!attribute [rw] status_information
    #   A message returned by Amazon Web Services Systems Manager that
    #   explains the `Status` value. For example, a `Failed` status might be
    #   explained by the `StatusInformation` message, "The specified S3
    #   bucket doesn't exist. Verify that the URL of the S3 bucket is
    #   correct."
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
    #   The list of operating system (OS) platforms compatible with this SSM
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
    #   can run on. For example, `/AWS::EC2::Instance`. For a list of valid
    #   resource types, see [Amazon Web Services resource and property types
    #   reference][1] in the *CloudFormation User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html
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
    # @!attribute [rw] author
    #   The user in your organization who created the document.
    #   @return [String]
    #
    # @!attribute [rw] review_information
    #   Details about the review of a document.
    #   @return [Array<Types::ReviewInformation>]
    #
    # @!attribute [rw] approved_version
    #   The version of the document currently approved for use in the
    #   organization.
    #   @return [String]
    #
    # @!attribute [rw] pending_review_version
    #   The version of the document that is currently under review.
    #   @return [String]
    #
    # @!attribute [rw] review_status
    #   The current status of the review.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   The classification of a document to help you identify and categorize
    #   its use.
    #   @return [Array<String>]
    #
    # @!attribute [rw] category_enum
    #   The value that identifies a document's category.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DocumentDescription AWS API Documentation
    #
    class DocumentDescription < Struct.new(
      :sha_1,
      :hash,
      :hash_type,
      :name,
      :display_name,
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
      :requires,
      :author,
      :review_information,
      :approved_version,
      :pending_review_version,
      :review_status,
      :category,
      :category_enum)
      SENSITIVE = []
      include Aws::Structure
    end

    # This data type is deprecated. Instead, use DocumentKeyValuesFilter.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the name of a SSM document.
    #
    # @!attribute [rw] name
    #   The name of the SSM document.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date the SSM document was created.
    #   @return [Time]
    #
    # @!attribute [rw] display_name
    #   An optional field where you can specify a friendly name for the SSM
    #   document. This value can differ for each version of the document. If
    #   you want to update this value, see UpdateDocument.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The Amazon Web Services user that created the document.
    #   @return [String]
    #
    # @!attribute [rw] version_name
    #   An optional field specifying the version of the artifact associated
    #   with the document. For example, "Release 12, Update 6". This value
    #   is unique across all versions of a document, and can't be changed.
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
    #   can run on. For example, `/AWS::EC2::Instance`. For a list of valid
    #   resource types, see [Amazon Web Services resource and property types
    #   reference][1] in the *CloudFormation User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html
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
    # @!attribute [rw] review_status
    #   The current status of a document review.
    #   @return [String]
    #
    # @!attribute [rw] author
    #   The user in your organization who created the document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DocumentIdentifier AWS API Documentation
    #
    class DocumentIdentifier < Struct.new(
      :name,
      :created_date,
      :display_name,
      :owner,
      :version_name,
      :platform_types,
      :document_version,
      :document_type,
      :schema_version,
      :document_format,
      :target_type,
      :tags,
      :requires,
      :review_status,
      :author)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more filters. Use a filter to return a more specific list of
    # documents.
    #
    # For keys, you can specify one or more tags that have been applied to a
    # document.
    #
    # You can also use Amazon Web Services-provided keys, some of which have
    # specific allowed values. These keys and their associated values are as
    # follows:
    #
    # DocumentType
    # : * `ApplicationConfiguration`
    #
    #   * `ApplicationConfigurationSchema`
    #
    #   * `Automation`
    #
    #   * `ChangeCalendar`
    #
    #   * `Command`
    #
    #   * `Package`
    #
    #   * `Policy`
    #
    #   * `Session`
    #
    # Owner
    #
    # : Note that only one `Owner` can be specified in a request. For
    #   example: `Key=Owner,Values=Self`.
    #
    #   * `Amazon`
    #
    #   * `Private`
    #
    #   * `Public`
    #
    #   * `Self`
    #
    #   * `ThirdParty`
    #
    # PlatformTypes
    # : * `Linux`
    #
    #   * `Windows`
    #
    # `Name` is another Amazon Web Services-provided key. If you use `Name`
    # as a key, you can use a name prefix to return a list of documents. For
    # example, in the Amazon Web Services CLI, to return a list of all
    # documents that begin with `Te`, run the following command:
    #
    # `aws ssm list-documents --filters Key=Name,Values=Te`
    #
    # You can also use the `TargetType` Amazon Web Services-provided key.
    # For a list of valid resource type values that can be used with this
    # key, see [Amazon Web Services resource and property types
    # reference][1] in the *CloudFormation User Guide*.
    #
    # If you specify more than two keys, only documents that are identified
    # by all the tags are returned in the results. If you specify more than
    # two values for a key, documents that are identified by any of the
    # values are returned in the results.
    #
    # To specify a custom key-value pair, use the format
    # `Key=tag:tagName,Values=valueName`.
    #
    # For example, if you created a key called region and are using the
    # Amazon Web Services CLI to call the `list-documents` command:
    #
    # `aws ssm list-documents --filters Key=tag:region,Values=east,west
    # Key=Owner,Values=Self`
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html
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
      SENSITIVE = []
      include Aws::Structure
    end

    # You can have at most 500 active SSM documents.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DocumentLimitExceeded AWS API Documentation
    #
    class DocumentLimitExceeded < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the response to a document review request.
    #
    # @!attribute [rw] reviewer_response
    #   Details about a reviewer's response to a document review request.
    #   @return [Array<Types::DocumentReviewerResponseSource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DocumentMetadataResponseInfo AWS API Documentation
    #
    class DocumentMetadataResponseInfo < Struct.new(
      :reviewer_response)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameters specified in a Systems Manager document that run on the
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The document can't be shared with more Amazon Web Services accounts.
    # You can specify a maximum of 20 accounts per API operation to share a
    # private document.
    #
    # By default, you can share a private document with a maximum of 1,000
    # accounts and publicly share up to five documents.
    #
    # If you need to increase the quota for privately or publicly shared
    # Systems Manager documents, contact Amazon Web Services Support.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DocumentPermissionLimit AWS API Documentation
    #
    class DocumentPermissionLimit < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An SSM document required by the current document.
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
    # @!attribute [rw] require_type
    #   The document type of the required SSM document.
    #   @return [String]
    #
    # @!attribute [rw] version_name
    #   An optional field specifying the version of the artifact associated
    #   with the document. For example, "Release 12, Update 6". This value
    #   is unique across all versions of a document, and can't be changed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DocumentRequires AWS API Documentation
    #
    class DocumentRequires < Struct.new(
      :name,
      :version,
      :require_type,
      :version_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about comments added to a document review request.
    #
    # @!attribute [rw] type
    #   The type of information added to a review request. Currently, only
    #   the value `Comment` is supported.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of a comment entered by a user who requests a review of
    #   a new document version, or who reviews the new version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DocumentReviewCommentSource AWS API Documentation
    #
    class DocumentReviewCommentSource < Struct.new(
      :type,
      :content)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a reviewer's response to a document review request.
    #
    # @!attribute [rw] create_time
    #   The date and time that a reviewer entered a response to a document
    #   review request.
    #   @return [Time]
    #
    # @!attribute [rw] updated_time
    #   The date and time that a reviewer last updated a response to a
    #   document review request.
    #   @return [Time]
    #
    # @!attribute [rw] review_status
    #   The current review status of a new custom SSM document created by a
    #   member of your organization, or of the latest version of an existing
    #   SSM document.
    #
    #   Only one version of a document can be in the APPROVED state at a
    #   time. When a new version is approved, the status of the previous
    #   version changes to REJECTED.
    #
    #   Only one version of a document can be in review, or PENDING, at a
    #   time.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   The comment entered by a reviewer as part of their document review
    #   response.
    #   @return [Array<Types::DocumentReviewCommentSource>]
    #
    # @!attribute [rw] reviewer
    #   The user in your organization assigned to review a document request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DocumentReviewerResponseSource AWS API Documentation
    #
    class DocumentReviewerResponseSource < Struct.new(
      :create_time,
      :updated_time,
      :review_status,
      :comment,
      :reviewer)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a document approval review.
    #
    # @!attribute [rw] action
    #   The action to take on a document approval review request.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   A comment entered by a user in your organization about the document
    #   review request.
    #   @return [Array<Types::DocumentReviewCommentSource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DocumentReviews AWS API Documentation
    #
    class DocumentReviews < Struct.new(
      :action,
      :comment)
      SENSITIVE = []
      include Aws::Structure
    end

    # Version information about the document.
    #
    # @!attribute [rw] name
    #   The document name.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The friendly name of the SSM document. This value can differ for
    #   each version of the document. If you want to update this value, see
    #   UpdateDocument.
    #   @return [String]
    #
    # @!attribute [rw] document_version
    #   The document version.
    #   @return [String]
    #
    # @!attribute [rw] version_name
    #   The version of the artifact associated with the document. For
    #   example, "Release 12, Update 6". This value is unique across all
    #   versions of a document, and can't be changed.
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
    #   The status of the SSM document, such as `Creating`, `Active`,
    #   `Failed`, and `Deleting`.
    #   @return [String]
    #
    # @!attribute [rw] status_information
    #   A message returned by Amazon Web Services Systems Manager that
    #   explains the `Status` value. For example, a `Failed` status might be
    #   explained by the `StatusInformation` message, "The specified S3
    #   bucket doesn't exist. Verify that the URL of the S3 bucket is
    #   correct."
    #   @return [String]
    #
    # @!attribute [rw] review_status
    #   The current status of the approval review for the latest version of
    #   the document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DocumentVersionInfo AWS API Documentation
    #
    class DocumentVersionInfo < Struct.new(
      :name,
      :display_name,
      :document_version,
      :version_name,
      :created_date,
      :is_default_version,
      :document_format,
      :status,
      :status_information,
      :review_status)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Error returned when the ID specified for a resource, such as a
    # maintenance window or patch baseline, doesn't exist.
    #
    # For information about resource quotas in Amazon Web Services Systems
    # Manager, see [Systems Manager service quotas][1] in the *Amazon Web
    # Services General Reference*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/general/latest/gr/ssm.html#limits_ssm
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DoesNotExistException AWS API Documentation
    #
    class DoesNotExistException < Struct.new(
      :message)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # You can't specify a managed node ID in more than one association.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DuplicateInstanceId AWS API Documentation
    #
    class DuplicateInstanceId < Aws::EmptyStructure; end

    # The `EffectivePatch` structure defines metadata about a patch along
    # with the approval state of the patch in a particular patch baseline.
    # The approval state includes information about whether the patch is
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # You attempted to register a `LAMBDA` or `STEP_FUNCTIONS` task in a
    # region where the corresponding service isn't available.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/FeatureNotAvailableException AWS API Documentation
    #
    class FeatureNotAvailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] automation_execution_id
    #   The unique identifier for an existing automation execution to
    #   examine. The execution ID is returned by StartAutomationExecution
    #   when the execution of an Automation runbook is initiated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetAutomationExecutionRequest AWS API Documentation
    #
    class GetAutomationExecutionRequest < Struct.new(
      :automation_execution_id)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] calendar_names
    #   The names or Amazon Resource Names (ARNs) of the Systems Manager
    #   documents (SSM documents) that represent the calendar entries for
    #   which you want to get the state.
    #   @return [Array<String>]
    #
    # @!attribute [rw] at_time
    #   (Optional) The specific time for which you want to get calendar
    #   state information, in [ISO 8601][1] format. If you don't specify a
    #   value or `AtTime`, the current time is used.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] state
    #   The state of the calendar. An `OPEN` calendar indicates that actions
    #   are allowed to proceed, and a `CLOSED` calendar indicates that
    #   actions aren't allowed to proceed.
    #   @return [String]
    #
    # @!attribute [rw] at_time
    #   The time, as an [ISO 8601][1] string, that you specified in your
    #   command. If you don't specify a time, `GetCalendarState` uses the
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] command_id
    #   (Required) The parent command ID of the invocation plugin.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   (Required) The ID of the managed node targeted by the command. A
    #   *managed node* can be an Amazon Elastic Compute Cloud (Amazon EC2)
    #   instance, edge device, and on-premises server or VM in your hybrid
    #   environment that is configured for Amazon Web Services Systems
    #   Manager.
    #   @return [String]
    #
    # @!attribute [rw] plugin_name
    #   The name of the step for which you want detailed results. If the
    #   document contains only one step, you can omit the name and details
    #   for that step. If the document contains more than one step, you must
    #   specify the name of the step for which you want to view details. Be
    #   sure to specify the name of the step, not the name of a plugin like
    #   `aws:RunShellScript`.
    #
    #   To find the `PluginName`, check the document content and find the
    #   name of the step you want details for. Alternatively, use
    #   ListCommandInvocations with the `CommandId` and `Details`
    #   parameters. The `PluginName` is the `Name` attribute of the
    #   `CommandPlugin` object in the `CommandPlugins` list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetCommandInvocationRequest AWS API Documentation
    #
    class GetCommandInvocationRequest < Struct.new(
      :command_id,
      :instance_id,
      :plugin_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] command_id
    #   The parent command ID of the invocation plugin.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The ID of the managed node targeted by the command. A *managed node*
    #   can be an Amazon Elastic Compute Cloud (Amazon EC2) instance, edge
    #   device, or on-premises server or VM in your hybrid environment that
    #   is configured for Amazon Web Services Systems Manager.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   The comment text for the command.
    #   @return [String]
    #
    # @!attribute [rw] document_name
    #   The name of the document that was run. For example,
    #   `AWS-RunShellScript`.
    #   @return [String]
    #
    # @!attribute [rw] document_version
    #   The Systems Manager document (SSM document) version used in the
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] plugin_name
    #   The name of the plugin, or *step name*, for which details are
    #   reported. For example, `aws:RunShellScript` is a plugin.
    #   @return [String]
    #
    # @!attribute [rw] response_code
    #   The error level response code for the plugin script. If the response
    #   code is `-1`, then the command hasn't started running on the
    #   managed node, or it wasn't received by the node.
    #   @return [Integer]
    #
    # @!attribute [rw] execution_start_date_time
    #   The date and time the plugin started running. Date and time are
    #   written in ISO 8601 format. For example, June 7, 2017 is represented
    #   as 2017-06-7. The following sample Amazon Web Services CLI command
    #   uses the `InvokedBefore` filter.
    #
    #   `aws ssm list-commands --filters
    #   key=InvokedBefore,value=2017-06-07T00:00:00Z`
    #
    #   If the plugin hasn't started to run, the string is empty.
    #   @return [String]
    #
    # @!attribute [rw] execution_elapsed_time
    #   Duration since `ExecutionStartDateTime`.
    #   @return [String]
    #
    # @!attribute [rw] execution_end_date_time
    #   The date and time the plugin finished running. Date and time are
    #   written in ISO 8601 format. For example, June 7, 2017 is represented
    #   as 2017-06-7. The following sample Amazon Web Services CLI command
    #   uses the `InvokedAfter` filter.
    #
    #   `aws ssm list-commands --filters
    #   key=InvokedAfter,value=2017-06-07T00:00:00Z`
    #
    #   If the plugin hasn't started to run, the string is empty.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of this invocation plugin. This status can be different
    #   than `StatusDetails`.
    #   @return [String]
    #
    # @!attribute [rw] status_details
    #   A detailed status of the command execution for an invocation.
    #   `StatusDetails` includes more information than `Status` because it
    #   includes states resulting from error and concurrency control
    #   parameters. `StatusDetails` can show different results than
    #   `Status`. For more information about these statuses, see
    #   [Understanding command statuses][1] in the *Amazon Web Services
    #   Systems Manager User Guide*. `StatusDetails` can be one of the
    #   following values:
    #
    #   * Pending: The command hasn't been sent to the managed node.
    #
    #   * In Progress: The command has been sent to the managed node but
    #     hasn't reached a terminal state.
    #
    #   * Delayed: The system attempted to send the command to the target,
    #     but the target wasn't available. The managed node might not be
    #     available because of network issues, because the node was stopped,
    #     or for similar reasons. The system will try to send the command
    #     again.
    #
    #   * Success: The command or plugin ran successfully. This is a
    #     terminal state.
    #
    #   * Delivery Timed Out: The command wasn't delivered to the managed
    #     node before the delivery timeout expired. Delivery timeouts don't
    #     count against the parent command's `MaxErrors` limit, but they do
    #     contribute to whether the parent command status is Success or
    #     Incomplete. This is a terminal state.
    #
    #   * Execution Timed Out: The command started to run on the managed
    #     node, but the execution wasn't complete before the timeout
    #     expired. Execution timeouts count against the `MaxErrors` limit of
    #     the parent command. This is a terminal state.
    #
    #   * Failed: The command wasn't run successfully on the managed node.
    #     For a plugin, this indicates that the result code wasn't zero.
    #     For a command invocation, this indicates that the result code for
    #     one or more plugins wasn't zero. Invocation failures count
    #     against the `MaxErrors` limit of the parent command. This is a
    #     terminal state.
    #
    #   * Cancelled: The command was terminated before it was completed.
    #     This is a terminal state.
    #
    #   * Undeliverable: The command can't be delivered to the managed
    #     node. The node might not exist or might not be responding.
    #     Undeliverable invocations don't count against the parent
    #     command's `MaxErrors` limit and don't contribute to whether the
    #     parent command status is Success or Incomplete. This is a terminal
    #     state.
    #
    #   * Terminated: The parent command exceeded its `MaxErrors` limit and
    #     subsequent command invocations were canceled by the system. This
    #     is a terminal state.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-commands.html
    #   @return [String]
    #
    # @!attribute [rw] standard_output_content
    #   The first 24,000 characters written by the plugin to `stdout`. If
    #   the command hasn't finished running, if `ExecutionStatus` is
    #   neither Succeeded nor Failed, then this string is empty.
    #   @return [String]
    #
    # @!attribute [rw] standard_output_url
    #   The URL for the complete text written by the plugin to `stdout` in
    #   Amazon Simple Storage Service (Amazon S3). If an S3 bucket wasn't
    #   specified, then this string is empty.
    #   @return [String]
    #
    # @!attribute [rw] standard_error_content
    #   The first 8,000 characters written by the plugin to `stderr`. If the
    #   command hasn't finished running, then this string is empty.
    #   @return [String]
    #
    # @!attribute [rw] standard_error_url
    #   The URL for the complete text written by the plugin to `stderr`. If
    #   the command hasn't finished running, then this string is empty.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_output_config
    #   Amazon CloudWatch Logs information where Systems Manager sent the
    #   command output.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] target
    #   The managed node ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetConnectionStatusRequest AWS API Documentation
    #
    class GetConnectionStatusRequest < Struct.new(
      :target)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] target
    #   The ID of the managed node to check connection status.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the connection to the managed node. For example,
    #   'Connected' or 'Not Connected'.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetConnectionStatusResponse AWS API Documentation
    #
    class GetConnectionStatusResponse < Struct.new(
      :target,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operating_system
    #   Returns the default patch baseline for the specified operating
    #   system.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetDefaultPatchBaselineRequest AWS API Documentation
    #
    class GetDefaultPatchBaselineRequest < Struct.new(
      :operating_system)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The ID of the managed node for which the appropriate patch snapshot
    #   should be retrieved.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_id
    #   The snapshot ID provided by the user when running
    #   `AWS-RunPatchBaseline`.
    #   @return [String]
    #
    # @!attribute [rw] baseline_override
    #   Defines the basic information about a patch baseline override.
    #   @return [Types::BaselineOverride]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetDeployablePatchSnapshotForInstanceRequest AWS API Documentation
    #
    class GetDeployablePatchSnapshotForInstanceRequest < Struct.new(
      :instance_id,
      :snapshot_id,
      :baseline_override)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The managed node ID.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_id
    #   The user-defined snapshot ID.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_download_url
    #   A pre-signed Amazon Simple Storage Service (Amazon S3) URL that can
    #   be used to download the patch snapshot.
    #   @return [String]
    #
    # @!attribute [rw] product
    #   Returns the specific operating system (for example Windows Server
    #   2012 or Amazon Linux 2015.09) on the managed node for the specified
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the SSM document.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the SSM document.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date the SSM document was created.
    #   @return [Time]
    #
    # @!attribute [rw] display_name
    #   The friendly name of the SSM document. This value can differ for
    #   each version of the document. If you want to update this value, see
    #   UpdateDocument.
    #   @return [String]
    #
    # @!attribute [rw] version_name
    #   The version of the artifact associated with the document. For
    #   example, "Release 12, Update 6". This value is unique across all
    #   versions of a document, and can't be changed.
    #   @return [String]
    #
    # @!attribute [rw] document_version
    #   The document version.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the SSM document, such as `Creating`, `Active`,
    #   `Updating`, `Failed`, and `Deleting`.
    #   @return [String]
    #
    # @!attribute [rw] status_information
    #   A message returned by Amazon Web Services Systems Manager that
    #   explains the `Status` value. For example, a `Failed` status might be
    #   explained by the `StatusInformation` message, "The specified S3
    #   bucket doesn't exist. Verify that the URL of the S3 bucket is
    #   correct."
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
    # @!attribute [rw] review_status
    #   The current review status of a new custom Systems Manager document
    #   (SSM document) created by a member of your organization, or of the
    #   latest version of an existing SSM document.
    #
    #   Only one version of an SSM document can be in the APPROVED state at
    #   a time. When a new version is approved, the status of the previous
    #   version changes to REJECTED.
    #
    #   Only one version of an SSM document can be in review, or PENDING, at
    #   a time.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetDocumentResult AWS API Documentation
    #
    class GetDocumentResult < Struct.new(
      :name,
      :created_date,
      :display_name,
      :version_name,
      :document_version,
      :status,
      :status_information,
      :content,
      :document_type,
      :document_format,
      :requires,
      :attachments_content,
      :review_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   One or more filters. Use a filter to return a more specific list of
    #   results.
    #   @return [Array<Types::InventoryFilter>]
    #
    # @!attribute [rw] aggregators
    #   Returns counts of inventory types based on one or more expressions.
    #   For example, if you aggregate by using an expression that uses the
    #   `AWS:InstanceInformation.PlatformType` type, you can see a count of
    #   how many Windows and Linux managed nodes exist in your inventoried
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entities
    #   Collection of inventory entities such as a collection of managed
    #   node inventory.
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] window_execution_id
    #   The ID of the maintenance window execution that includes the task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetMaintenanceWindowExecutionRequest AWS API Documentation
    #
    class GetMaintenanceWindowExecutionRequest < Struct.new(
      :window_execution_id)
      SENSITIVE = []
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
    #   The details explaining the status. Not available for all status
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
    #   Retrieves the task type for a maintenance window.
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
    #   User-provided value to be included in any Amazon CloudWatch Events
    #   or Amazon EventBridge events raised while running tasks for these
    #   targets in this maintenance window.
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
      SENSITIVE = [:parameters, :owner_information]
      include Aws::Structure
    end

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
      SENSITIVE = []
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
    #   The Amazon Resource Name (ARN) of the task that ran.
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
    #   * `Key`: string, between 1 and 255 characters
    #
    #   * `Value`: an array of strings, each between 1 and 255 characters
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
    #   The details explaining the status. Not available for all status
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
    # @!attribute [rw] alarm_configuration
    #   The details for the CloudWatch alarm you applied to your maintenance
    #   window task.
    #   @return [Types::AlarmConfiguration]
    #
    # @!attribute [rw] triggered_alarms
    #   The CloudWatch alarms that were invoked by the maintenance window
    #   task.
    #   @return [Array<Types::AlarmStateInformation>]
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
      :end_time,
      :alarm_configuration,
      :triggered_alarms)
      SENSITIVE = [:task_parameters]
      include Aws::Structure
    end

    # @!attribute [rw] window_id
    #   The ID of the maintenance window for which you want to retrieve
    #   information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetMaintenanceWindowRequest AWS API Documentation
    #
    class GetMaintenanceWindowRequest < Struct.new(
      :window_id)
      SENSITIVE = []
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
    #   window won't run before this specified time.
    #   @return [String]
    #
    # @!attribute [rw] end_date
    #   The date and time, in ISO-8601 Extended format, for when the
    #   maintenance window is scheduled to become inactive. The maintenance
    #   window won't run after this specified time.
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
    #   example: "America/Los\_Angeles", "UTC", or "Asia/Seoul". For
    #   more information, see the [Time Zone Database][1] on the IANA
    #   website.
    #
    #
    #
    #   [1]: https://www.iana.org/time-zones
    #   @return [String]
    #
    # @!attribute [rw] schedule_offset
    #   The number of days to wait to run a maintenance window after the
    #   scheduled cron expression date and time.
    #   @return [Integer]
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
    #   Amazon Web Services Systems Manager stops scheduling new tasks for
    #   execution.
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
      :schedule_offset,
      :next_execution_time,
      :duration,
      :cutoff,
      :allow_unassociated_targets,
      :enabled,
      :created_date,
      :modified_date)
      SENSITIVE = [:description]
      include Aws::Structure
    end

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
      SENSITIVE = []
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
    #   The resource that the task used during execution. For `RUN_COMMAND`
    #   and `AUTOMATION` task types, the value of `TaskArn` is the SSM
    #   document name/ARN. For `LAMBDA` tasks, the value is the function
    #   name/ARN. For `STEP_FUNCTIONS` tasks, the value is the state machine
    #   ARN.
    #   @return [String]
    #
    # @!attribute [rw] service_role_arn
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) service role to use to publish Amazon Simple Notification
    #   Service (Amazon SNS) notifications for maintenance window Run
    #   Command tasks.
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
    #
    #   <note markdown="1"> For maintenance window tasks without a target specified, you can't
    #   supply a value for this option. Instead, the system inserts a
    #   placeholder value of `1`, which may be reported in the response to
    #   this command. This value doesn't affect the running of your task
    #   and can be ignored.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] max_errors
    #   The maximum number of errors allowed before the task stops being
    #   scheduled.
    #
    #   <note markdown="1"> For maintenance window tasks without a target specified, you can't
    #   supply a value for this option. Instead, the system inserts a
    #   placeholder value of `1`, which may be reported in the response to
    #   this command. This value doesn't affect the running of your task
    #   and can be ignored.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] logging_info
    #   The location in Amazon Simple Storage Service (Amazon S3) where the
    #   task results are logged.
    #
    #   <note markdown="1"> `LoggingInfo` has been deprecated. To specify an Amazon Simple
    #   Storage Service (Amazon S3) bucket to contain logs, instead use the
    #   `OutputS3BucketName` and `OutputS3KeyPrefix` options in the
    #   `TaskInvocationParameters` structure. For information about how
    #   Amazon Web Services Systems Manager handles these options for the
    #   supported maintenance window task types, see
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
    # @!attribute [rw] cutoff_behavior
    #   The action to take on tasks when the maintenance window cutoff time
    #   is reached. `CONTINUE_TASK` means that tasks continue to run. For
    #   Automation, Lambda, Step Functions tasks, `CANCEL_TASK` means that
    #   currently running task invocations continue, but no new task
    #   invocations are started. For Run Command tasks, `CANCEL_TASK` means
    #   the system attempts to stop the task by sending a `CancelCommand`
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] alarm_configuration
    #   The details for the CloudWatch alarm you applied to your maintenance
    #   window task.
    #   @return [Types::AlarmConfiguration]
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
      :description,
      :cutoff_behavior,
      :alarm_configuration)
      SENSITIVE = [:task_parameters, :description]
      include Aws::Structure
    end

    # @!attribute [rw] ops_item_id
    #   The ID of the OpsItem that you want to get.
    #   @return [String]
    #
    # @!attribute [rw] ops_item_arn
    #   The OpsItem Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetOpsItemRequest AWS API Documentation
    #
    class GetOpsItemRequest < Struct.new(
      :ops_item_id,
      :ops_item_arn)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ops_metadata_arn
    #   The Amazon Resource Name (ARN) of an OpsMetadata Object to view.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetOpsMetadataRequest AWS API Documentation
    #
    class GetOpsMetadataRequest < Struct.new(
      :ops_metadata_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_id
    #   The resource ID of the Application Manager application.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   OpsMetadata for an Application Manager application.
    #   @return [Hash<String,Types::MetadataValue>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. Use this token to get
    #   the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetOpsMetadataResult AWS API Documentation
    #
    class GetOpsMetadataResult < Struct.new(
      :resource_id,
      :metadata,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sync_name
    #   Specify the name of a resource data sync to get.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Optional filters used to scope down the returned OpsData.
    #   @return [Array<Types::OpsFilter>]
    #
    # @!attribute [rw] aggregators
    #   Optional aggregators that return counts of OpsData based on one or
    #   more expressions.
    #   @return [Array<Types::OpsAggregator>]
    #
    # @!attribute [rw] result_attributes
    #   The OpsData data type to return.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entities
    #   The list of aggregated details and filtered OpsData.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the parameter for which you want to review history.
    #   @return [String]
    #
    # @!attribute [rw] with_decryption
    #   Return decrypted values for secure string parameters. This flag is
    #   ignored for `String` and `StringList` parameter types.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the parameter you want to query.
    #
    #   To query by parameter label, use `"Name": "name:label"`. To query by
    #   parameter version, use `"Name": "name:version"`.
    #   @return [String]
    #
    # @!attribute [rw] with_decryption
    #   Return decrypted values for secure string parameters. This flag is
    #   ignored for `String` and `StringList` parameter types.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetParameterRequest AWS API Documentation
    #
    class GetParameterRequest < Struct.new(
      :name,
      :with_decryption)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] path
    #   The hierarchy for the parameter. Hierarchies start with a forward
    #   slash (/). The hierarchy is the parameter name except the last part
    #   of the parameter. For the API call to succeed, the last part of the
    #   parameter name can't be in the path. A parameter name hierarchy can
    #   have a maximum of 15 levels. Here is an example of a hierarchy:
    #   `/Finance/Prod/IAD/WinServ2016/license33 `
    #   @return [String]
    #
    # @!attribute [rw] recursive
    #   Retrieve all parameters within a hierarchy.
    #
    #   If a user has access to a path, then the user can access all levels
    #   of that path. For example, if a user has permission to access path
    #   `/a`, then the user can also access `/a/b`. Even if a user has
    #   explicitly been denied access in IAM for parameter `/a/b`, they can
    #   still call the GetParametersByPath API operation recursively for
    #   `/a` and view `/a/b`.
    #   @return [Boolean]
    #
    # @!attribute [rw] parameter_filters
    #   Filters to limit the request results.
    #
    #   <note markdown="1"> The following `Key` values are supported for `GetParametersByPath`:
    #   `Type`, `KeyId`, and `Label`.
    #
    #    The following `Key` values aren't supported for
    #   `GetParametersByPath`: `tag`, `DataType`, `Name`, `Path`, and
    #   `Tier`.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] names
    #   Names of the parameters for which you want to query information.
    #
    #   To query by parameter label, use `"Name": "name:label"`. To query by
    #   parameter version, use `"Name": "name:version"`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] with_decryption
    #   Return decrypted secure string value. Return decrypted values for
    #   secure string parameters. This flag is ignored for `String` and
    #   `StringList` parameter types.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetParametersRequest AWS API Documentation
    #
    class GetParametersRequest < Struct.new(
      :names,
      :with_decryption)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] parameters
    #   A list of details for a parameter.
    #   @return [Array<Types::Parameter>]
    #
    # @!attribute [rw] invalid_parameters
    #   A list of parameters that aren't formatted correctly or don't run
    #   during an execution.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetParametersResult AWS API Documentation
    #
    class GetParametersResult < Struct.new(
      :parameters,
      :invalid_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] patch_group
    #   The name of the patch group whose patch baseline should be
    #   retrieved.
    #   @return [String]
    #
    # @!attribute [rw] operating_system
    #   Returns the operating system rule specified for patch groups using
    #   the patch baseline.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetPatchBaselineForPatchGroupRequest AWS API Documentation
    #
    class GetPatchBaselineForPatchGroupRequest < Struct.new(
      :patch_group,
      :operating_system)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] baseline_id
    #   The ID of the patch baseline to retrieve.
    #
    #   <note markdown="1"> To retrieve information about an Amazon Web Services managed patch
    #   baseline, specify the full Amazon Resource Name (ARN) of the
    #   baseline. For example, for the baseline
    #   `AWS-AmazonLinuxDefaultPatchBaseline`, specify
    #   `arn:aws:ssm:us-east-2:733109147000:patchbaseline/pb-0e392de35e7c563b7`
    #   instead of `pb-0e392de35e7c563b7`.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetPatchBaselineRequest AWS API Documentation
    #
    class GetPatchBaselineRequest < Struct.new(
      :baseline_id)
      SENSITIVE = []
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
    #   updates that should be applied to the managed nodes. The default
    #   value is `false`. Applies to Linux managed nodes only.
    #   @return [Boolean]
    #
    # @!attribute [rw] rejected_patches
    #   A list of explicitly rejected patches for the baseline.
    #   @return [Array<String>]
    #
    # @!attribute [rw] rejected_patches_action
    #   The action specified to take on patches included in the
    #   `RejectedPatches` list. A patch can be allowed only if it is a
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
    #   Information about the patches to use to update the managed nodes,
    #   including target operating systems and source repositories. Applies
    #   to Linux managed nodes only.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Amazon Resource Name (ARN) of the resource to which the policies are
    #   attached.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetResourcePoliciesRequest AWS API Documentation
    #
    class GetResourcePoliciesRequest < Struct.new(
      :resource_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of items to return. Use this token to get
    #   the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] policies
    #   An array of the `Policy` object.
    #   @return [Array<Types::GetResourcePoliciesResponseEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetResourcePoliciesResponse AWS API Documentation
    #
    class GetResourcePoliciesResponse < Struct.new(
      :next_token,
      :policies)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource policy helps you to define the IAM entity (for example, an
    # Amazon Web Services account) that can manage your Systems Manager
    # resources. Currently, `OpsItemGroup` is the only resource that
    # supports Systems Manager resource policies. The resource policy for
    # `OpsItemGroup` enables Amazon Web Services accounts to view and
    # interact with OpsCenter operational work items (OpsItems).
    #
    # @!attribute [rw] policy_id
    #   A policy ID.
    #   @return [String]
    #
    # @!attribute [rw] policy_hash
    #   ID of the current policy version. The hash helps to prevent a
    #   situation where multiple users attempt to overwrite a policy. You
    #   must provide this hash when updating or deleting a policy.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   A resource policy helps you to define the IAM entity (for example,
    #   an Amazon Web Services account) that can manage your Systems Manager
    #   resources. Currently, `OpsItemGroup` is the only resource that
    #   supports Systems Manager resource policies. The resource policy for
    #   `OpsItemGroup` enables Amazon Web Services accounts to view and
    #   interact with OpsCenter operational work items (OpsItems).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetResourcePoliciesResponseEntry AWS API Documentation
    #
    class GetResourcePoliciesResponseEntry < Struct.new(
      :policy_id,
      :policy_hash,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request body of the GetServiceSetting API operation.
    #
    # @!attribute [rw] setting_id
    #   The ID of the service setting to get. The setting ID can be one of
    #   the following.
    #
    #   * `/ssm/managed-instance/default-ec2-instance-management-role`
    #
    #   * `/ssm/automation/customer-script-log-destination`
    #
    #   * `/ssm/automation/customer-script-log-group-name`
    #
    #   * `/ssm/documents/console/public-sharing-permission`
    #
    #   * `/ssm/managed-instance/activation-tier`
    #
    #   * `/ssm/opsinsights/opscenter`
    #
    #   * `/ssm/parameter-store/default-parameter-tier`
    #
    #   * `/ssm/parameter-store/high-throughput-enabled`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetServiceSettingRequest AWS API Documentation
    #
    class GetServiceSettingRequest < Struct.new(
      :setting_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The query result body of the GetServiceSetting API operation.
    #
    # @!attribute [rw] service_setting
    #   The query result of the current service setting.
    #   @return [Types::ServiceSetting]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetServiceSettingResult AWS API Documentation
    #
    class GetServiceSettingResult < Struct.new(
      :service_setting)
      SENSITIVE = []
      include Aws::Structure
    end

    # A hierarchy can have a maximum of 15 levels. For more information, see
    # [Requirements and constraints for parameter names][1] in the *Amazon
    # Web Services Systems Manager User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-parameter-name-constraints.html
    #
    # @!attribute [rw] message
    #   A hierarchy can have a maximum of 15 levels. For more information,
    #   see [Requirements and constraints for parameter names][1] in the
    #   *Amazon Web Services Systems Manager User Guide*.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameter Store doesn't support changing a parameter type in a
    # hierarchy. For example, you can't change a parameter from a `String`
    # type to a `SecureString` type. You must create a new, unique
    # parameter.
    #
    # @!attribute [rw] message
    #   Parameter Store doesn't support changing a parameter type in a
    #   hierarchy. For example, you can't change a parameter from a
    #   `String` type to a `SecureString` type. You must create a new,
    #   unique parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/HierarchyTypeMismatchException AWS API Documentation
    #
    class HierarchyTypeMismatchException < Struct.new(
      :message)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Status information about the aggregated associations.
    #
    # @!attribute [rw] detailed_status
    #   Detailed status information about the aggregated associations.
    #   @return [String]
    #
    # @!attribute [rw] instance_association_status_aggregated_count
    #   The number of associations for the managed node(s).
    #   @return [Hash<String,Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InstanceAggregatedAssociationOverview AWS API Documentation
    #
    class InstanceAggregatedAssociationOverview < Struct.new(
      :detailed_status,
      :instance_association_status_aggregated_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more association documents on the managed node.
    #
    # @!attribute [rw] association_id
    #   The association ID.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The managed node ID.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the association document for the managed node(s).
    #   @return [String]
    #
    # @!attribute [rw] association_version
    #   Version information for the association on the managed node.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InstanceAssociation AWS API Documentation
    #
    class InstanceAssociation < Struct.new(
      :association_id,
      :instance_id,
      :content,
      :association_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # An S3 bucket where you want to store the results of this request.
    #
    # For the minimal permissions required to enable Amazon S3 output for an
    # association, see [Creating associations][1] in the *Systems Manager
    # User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-state-assoc.html
    #
    # @!attribute [rw] s3_location
    #   An S3 bucket where you want to store the results of this request.
    #   @return [Types::S3OutputLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InstanceAssociationOutputLocation AWS API Documentation
    #
    class InstanceAssociationOutputLocation < Struct.new(
      :s3_location)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Status information about the association.
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
    #   The version of the association applied to the managed node.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The managed node ID where the association was created.
    #   @return [String]
    #
    # @!attribute [rw] execution_date
    #   The date the association ran.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   Status information about the association.
    #   @return [String]
    #
    # @!attribute [rw] detailed_status
    #   Detailed status information about the association.
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
    #   The name of the association applied to the managed node.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a filter for a specific list of managed nodes.
    #
    # @!attribute [rw] instance_id
    #   The managed node ID.
    #   @return [String]
    #
    # @!attribute [rw] ping_status
    #   Connection status of SSM Agent.
    #
    #   <note markdown="1"> The status `Inactive` has been deprecated and is no longer in use.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] last_ping_date_time
    #   The date and time when the agent last pinged the Systems Manager
    #   service.
    #   @return [Time]
    #
    # @!attribute [rw] agent_version
    #   The version of SSM Agent running on your Linux managed node.
    #   @return [String]
    #
    # @!attribute [rw] is_latest_version
    #   Indicates whether the latest version of SSM Agent is running on your
    #   Linux managed node. This field doesn't indicate whether or not the
    #   latest version is installed on Windows managed nodes, because some
    #   older versions of Windows Server use the EC2Config service to
    #   process Systems Manager requests.
    #   @return [Boolean]
    #
    # @!attribute [rw] platform_type
    #   The operating system platform type.
    #   @return [String]
    #
    # @!attribute [rw] platform_name
    #   The name of the operating system platform running on your managed
    #   node.
    #   @return [String]
    #
    # @!attribute [rw] platform_version
    #   The version of the OS platform running on your managed node.
    #   @return [String]
    #
    # @!attribute [rw] activation_id
    #   The activation ID created by Amazon Web Services Systems Manager
    #   when the server or virtual machine (VM) was registered.
    #   @return [String]
    #
    # @!attribute [rw] iam_role
    #   The Identity and Access Management (IAM) role assigned to the
    #   on-premises Systems Manager managed node. This call doesn't return
    #   the IAM role for Amazon Elastic Compute Cloud (Amazon EC2)
    #   instances. To retrieve the IAM role for an EC2 instance, use the
    #   Amazon EC2 `DescribeInstances` operation. For information, see
    #   [DescribeInstances][1] in the *Amazon EC2 API Reference* or
    #   [describe-instances][2] in the *Amazon Web Services CLI Command
    #   Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances.html
    #   [2]: https://docs.aws.amazon.com/cli/latest/ec2/describe-instances.html
    #   @return [String]
    #
    # @!attribute [rw] registration_date
    #   The date the server or VM was registered with Amazon Web Services as
    #   a managed node.
    #   @return [Time]
    #
    # @!attribute [rw] resource_type
    #   The type of instance. Instances are either EC2 instances or managed
    #   instances.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name assigned to an on-premises server, edge device, or virtual
    #   machine (VM) when it is activated as a Systems Manager managed node.
    #   The name is specified as the `DefaultInstanceName` property using
    #   the CreateActivation command. It is applied to the managed node by
    #   specifying the Activation Code and Activation ID when you install
    #   SSM Agent on the node, as explained in [Install SSM Agent for a
    #   hybrid environment (Linux)][1] and [Install SSM Agent for a hybrid
    #   environment (Windows)][2]. To retrieve the `Name` tag of an EC2
    #   instance, use the Amazon EC2 `DescribeInstances` operation. For
    #   information, see [DescribeInstances][3] in the *Amazon EC2 API
    #   Reference* or [describe-instances][4] in the *Amazon Web Services
    #   CLI Command Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-install-managed-linux.html
    #   [2]: https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-install-managed-win.html
    #   [3]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances.html
    #   [4]: https://docs.aws.amazon.com/cli/latest/ec2/describe-instances.html
    #   @return [String]
    #
    # @!attribute [rw] ip_address
    #   The IP address of the managed node.
    #   @return [String]
    #
    # @!attribute [rw] computer_name
    #   The fully qualified host name of the managed node.
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
    # @!attribute [rw] source_id
    #   The ID of the source resource. For IoT Greengrass devices,
    #   `SourceId` is the Thing name.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   The type of the source resource. For IoT Greengrass devices,
    #   `SourceType` is `AWS::IoT::Thing`.
    #   @return [String]
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
      :association_overview,
      :source_id,
      :source_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a filter for a specific list of managed nodes. You can
    # filter node information by using tags. You specify tags by using a
    # key-value mapping.
    #
    # Use this operation instead of the
    # DescribeInstanceInformationRequest$InstanceInformationFilterList
    # method. The `InstanceInformationFilterList` method is a legacy method
    # and doesn't support tags.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The filters to describe or get information about your managed nodes.
    #
    # @!attribute [rw] key
    #   The filter key name to describe your managed nodes.
    #
    #   Valid filter key values: ActivationIds \| AgentVersion \|
    #   AssociationStatus \| IamRole \| InstanceIds \| PingStatus \|
    #   PlatformTypes \| ResourceType \| SourceIds \| SourceTypes \|
    #   "tag-key" \| "tag:`\{keyname\}`
    #
    #   * Valid values for the `AssociationStatus` filter key: Success \|
    #     Pending \| Failed
    #
    #   * Valid values for the `PingStatus` filter key: Online \|
    #     ConnectionLost \| Inactive (deprecated)
    #
    #   * Valid values for the `PlatformType` filter key: Windows \| Linux
    #     \| MacOS
    #
    #   * Valid values for the `ResourceType` filter key: EC2Instance \|
    #     ManagedInstance
    #
    #   * Valid values for the `SourceType` filter key: AWS::EC2::Instance
    #     \| AWS::SSM::ManagedInstance \| AWS::IoT::Thing
    #
    #   * Valid tag examples: `Key=tag-key,Values=Purpose` \|
    #     `Key=tag:Purpose,Values=Test`.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the high-level patch compliance state for a managed node,
    # providing information about the number of installed, missing, not
    # applicable, and failed patches along with metadata about the operation
    # when this information was gathered for the managed node.
    #
    # @!attribute [rw] instance_id
    #   The ID of the managed node the high-level patch compliance
    #   information was collected for.
    #   @return [String]
    #
    # @!attribute [rw] patch_group
    #   The name of the patch group the managed node belongs to.
    #   @return [String]
    #
    # @!attribute [rw] baseline_id
    #   The ID of the patch baseline used to patch the managed node.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_id
    #   The ID of the patch baseline snapshot used during the patching
    #   operation when this compliance data was collected.
    #   @return [String]
    #
    # @!attribute [rw] install_override_list
    #   An https URL or an Amazon Simple Storage Service (Amazon S3)
    #   path-style URL to a list of patches to be installed. This patch
    #   installation list, which you maintain in an S3 bucket in YAML format
    #   and specify in the SSM document `AWS-RunPatchBaseline`, overrides
    #   the patches specified by the default patch baseline.
    #
    #   For more information about the `InstallOverrideList` parameter, see
    #   [About the `AWS-RunPatchBaseline` ][1] SSM document in the *Amazon
    #   Web Services Systems Manager User Guide*.
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
    #   the managed node.
    #   @return [Integer]
    #
    # @!attribute [rw] installed_other_count
    #   The number of patches not specified in the patch baseline that are
    #   installed on the managed node.
    #   @return [Integer]
    #
    # @!attribute [rw] installed_pending_reboot_count
    #   The number of patches installed by Patch Manager since the last time
    #   the managed node was rebooted.
    #   @return [Integer]
    #
    # @!attribute [rw] installed_rejected_count
    #   The number of patches installed on a managed node that are specified
    #   in a `RejectedPatches` list. Patches with a status of
    #   `InstalledRejected` were typically installed before they were added
    #   to a `RejectedPatches` list.
    #
    #   <note markdown="1"> If `ALLOW_AS_DEPENDENCY` is the specified option for
    #   `RejectedPatchesAction`, the value of `InstalledRejectedCount` will
    #   always be `0` (zero).
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] missing_count
    #   The number of patches from the patch baseline that are applicable
    #   for the managed node but aren't currently installed.
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
    #   `NotApplicableCount` that aren't reported by name to Inventory.
    #   Inventory is a capability of Amazon Web Services Systems Manager.
    #   @return [Integer]
    #
    # @!attribute [rw] not_applicable_count
    #   The number of patches from the patch baseline that aren't
    #   applicable for the managed node and therefore aren't installed on
    #   the node. This number may be truncated if the list of patch names is
    #   very large. The number of patches beyond this limit are reported in
    #   `UnreportedNotApplicableCount`.
    #   @return [Integer]
    #
    # @!attribute [rw] operation_start_time
    #   The time the most recent patching operation was started on the
    #   managed node.
    #   @return [Time]
    #
    # @!attribute [rw] operation_end_time
    #   The time the most recent patching operation completed on the managed
    #   node.
    #   @return [Time]
    #
    # @!attribute [rw] operation
    #   The type of patching operation that was performed: or
    #
    #   * `SCAN` assesses the patch compliance state.
    #
    #   * `INSTALL` installs missing patches.
    #   @return [String]
    #
    # @!attribute [rw] last_no_reboot_install_operation_time
    #   The time of the last attempt to patch the managed node with
    #   `NoReboot` specified as the reboot option.
    #   @return [Time]
    #
    # @!attribute [rw] reboot_option
    #   Indicates the reboot option specified in the patch baseline.
    #
    #   <note markdown="1"> Reboot options apply to `Install` operations only. Reboots aren't
    #   attempted for Patch Manager `Scan` operations.
    #
    #    </note>
    #
    #   * `RebootIfNeeded`: Patch Manager tries to reboot the managed node
    #     if it installed any patches, or if any patches are detected with a
    #     status of `InstalledPendingReboot`.
    #
    #   * `NoReboot`: Patch Manager attempts to install missing packages
    #     without trying to reboot the system. Patches installed with this
    #     option are assigned a status of `InstalledPendingReboot`. These
    #     patches might not be in effect until a reboot is performed.
    #   @return [String]
    #
    # @!attribute [rw] critical_non_compliant_count
    #   The number of patches per node that are specified as `Critical` for
    #   compliance reporting in the patch baseline aren't installed. These
    #   patches might be missing, have failed installation, were rejected,
    #   or were installed but awaiting a required managed node reboot. The
    #   status of these managed nodes is `NON_COMPLIANT`.
    #   @return [Integer]
    #
    # @!attribute [rw] security_non_compliant_count
    #   The number of patches per node that are specified as `Security` in a
    #   patch advisory aren't installed. These patches might be missing,
    #   have failed installation, were rejected, or were installed but
    #   awaiting a required managed node reboot. The status of these managed
    #   nodes is `NON_COMPLIANT`.
    #   @return [Integer]
    #
    # @!attribute [rw] other_non_compliant_count
    #   The number of patches per node that are specified as other than
    #   `Critical` or `Security` but aren't compliant with the patch
    #   baseline. The status of these managed nodes is `NON_COMPLIANT`.
    #   @return [Integer]
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
      :reboot_option,
      :critical_non_compliant_count,
      :security_non_compliant_count,
      :other_non_compliant_count)
      SENSITIVE = [:owner_information]
      include Aws::Structure
    end

    # Defines a filter used in DescribeInstancePatchStatesForPatchGroup to
    # scope down the information returned by the API.
    #
    # **Example**: To filter for all managed nodes in a patch group having
    # more than three patches with a `FailedCount` status, use the following
    # for the filter:
    #
    # * Value for `Key`: `FailedCount`
    #
    # * Value for `Type`: `GreaterThan`
    #
    # * Value for `Values`: `3`
    #
    # @!attribute [rw] key
    #   The key for the filter. Supported values include the following:
    #
    #   * `InstalledCount`
    #
    #   * `InstalledOtherCount`
    #
    #   * `InstalledPendingRebootCount`
    #
    #   * `InstalledRejectedCount`
    #
    #   * `MissingCount`
    #
    #   * `FailedCount`
    #
    #   * `UnreportedNotApplicableCount`
    #
    #   * `NotApplicableCount`
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The value for the filter. Must be an integer greater than or equal
    #   to 0.
    #   @return [Array<String>]
    #
    # @!attribute [rw] type
    #   The type of comparison that should be performed for the value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InstancePatchStateFilter AWS API Documentation
    #
    class InstancePatchStateFilter < Struct.new(
      :key,
      :values,
      :type)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The activation isn't valid. The activation might have been deleted,
    # or the ActivationId and the ActivationCode don't match.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidActivation AWS API Documentation
    #
    class InvalidActivation < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The activation ID isn't valid. Verify the you entered the correct
    # ActivationId or ActivationCode and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidActivationId AWS API Documentation
    #
    class InvalidActivationId < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified aggregator isn't valid for inventory groups. Verify
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The request doesn't meet the regular expression requirement.
    #
    # @!attribute [rw] message
    #   The request doesn't meet the regular expression requirement.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidAllowedPatternException AWS API Documentation
    #
    class InvalidAllowedPatternException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The association isn't valid or doesn't exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidAssociation AWS API Documentation
    #
    class InvalidAssociation < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The version you specified isn't valid. Use ListAssociationVersions to
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The supplied parameters for invoking the specified Automation runbook
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The signal isn't valid for the current Automation execution.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidAutomationSignalException AWS API Documentation
    #
    class InvalidAutomationSignalException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified update status operation isn't valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidAutomationStatusUpdateException AWS API Documentation
    #
    class InvalidAutomationStatusUpdateException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified command ID isn't valid. Verify the ID and try again.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidCommandId AWS API Documentation
    #
    class InvalidCommandId < Aws::EmptyStructure; end

    # One or more of the parameters specified for the delete operation
    # isn't valid. Verify all parameters and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidDeleteInventoryParametersException AWS API Documentation
    #
    class InvalidDeleteInventoryParametersException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The ID specified for the delete operation doesn't exist or isn't
    # valid. Verify the ID and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidDeletionIdException AWS API Documentation
    #
    class InvalidDeletionIdException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified SSM document doesn't exist.
    #
    # @!attribute [rw] message
    #   The SSM document doesn't exist or the document isn't available to
    #   the user. This exception can be issued by various API operations.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidDocument AWS API Documentation
    #
    class InvalidDocument < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The content for the document isn't valid.
    #
    # @!attribute [rw] message
    #   A description of the validation error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidDocumentContent AWS API Documentation
    #
    class InvalidDocumentContent < Struct.new(
      :message)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The version of the document schema isn't supported.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidDocumentSchemaVersion AWS API Documentation
    #
    class InvalidDocumentSchemaVersion < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The SSM document type isn't valid. Valid document types are described
    # in the `DocumentType` property.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidDocumentType AWS API Documentation
    #
    class InvalidDocumentType < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The document version isn't valid or doesn't exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidDocumentVersion AWS API Documentation
    #
    class InvalidDocumentVersion < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The filter name isn't valid. Verify the you entered the correct name
    # and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidFilter AWS API Documentation
    #
    class InvalidFilter < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified key isn't valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidFilterKey AWS API Documentation
    #
    class InvalidFilterKey < Aws::EmptyStructure; end

    # The specified filter option isn't valid. Valid options are Equals and
    # BeginsWith. For Path filter, valid options are Recursive and OneLevel.
    #
    # @!attribute [rw] message
    #   The specified filter option isn't valid. Valid options are Equals
    #   and BeginsWith. For Path filter, valid options are Recursive and
    #   OneLevel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidFilterOption AWS API Documentation
    #
    class InvalidFilterOption < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The filter value isn't valid. Verify the value and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidFilterValue AWS API Documentation
    #
    class InvalidFilterValue < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The following problems can cause this exception:
    #
    # * You don't have permission to access the managed node.
    #
    # * Amazon Web Services Systems Manager Agent(SSM Agent) isn't running.
    #   Verify that SSM Agent is running.
    #
    # * SSM Agent isn't registered with the SSM endpoint. Try reinstalling
    #   SSM Agent.
    #
    # * The managed node isn't in valid state. Valid states are: `Running`,
    #   `Pending`, `Stopped`, and `Stopping`. Invalid states are:
    #   `Shutting-down` and `Terminated`.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidInstanceId AWS API Documentation
    #
    class InvalidInstanceId < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified filter value isn't valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidInstanceInformationFilterValue AWS API Documentation
    #
    class InvalidInstanceInformationFilterValue < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified inventory group isn't valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidInventoryGroupException AWS API Documentation
    #
    class InvalidInventoryGroupException < Struct.new(
      :message)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The request isn't valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidInventoryRequestException AWS API Documentation
    #
    class InvalidInventoryRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more content items isn't valid.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The query key ID isn't valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidKeyId AWS API Documentation
    #
    class InvalidKeyId < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified token isn't valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidNextToken AWS API Documentation
    #
    class InvalidNextToken < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more configuration items isn't valid. Verify that a valid
    # Amazon Resource Name (ARN) was provided for an Amazon Simple
    # Notification Service topic.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidNotificationConfig AWS API Documentation
    #
    class InvalidNotificationConfig < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The delete inventory option specified isn't valid. Verify the option
    # and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidOptionException AWS API Documentation
    #
    class InvalidOptionException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The S3 bucket doesn't exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidOutputFolder AWS API Documentation
    #
    class InvalidOutputFolder < Aws::EmptyStructure; end

    # The output location isn't valid or doesn't exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidOutputLocation AWS API Documentation
    #
    class InvalidOutputLocation < Aws::EmptyStructure; end

    # You must specify values for all required parameters in the Amazon Web
    # Services Systems Manager document (SSM document). You can only supply
    # values to parameters defined in the SSM document.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidParameters AWS API Documentation
    #
    class InvalidParameters < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The permission type isn't supported. *Share* is the only supported
    # permission type.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidPermissionType AWS API Documentation
    #
    class InvalidPermissionType < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The plugin name isn't valid.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The policy type isn't supported. Parameter Store supports the
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource ID isn't valid. Verify that you entered the correct ID
    # and try again.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidResourceId AWS API Documentation
    #
    class InvalidResourceId < Aws::EmptyStructure; end

    # The resource type isn't valid. For example, if you are attempting to
    # tag an EC2 instance, the instance must be a registered managed node.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidResourceType AWS API Documentation
    #
    class InvalidResourceType < Aws::EmptyStructure; end

    # The specified inventory item result attribute isn't valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidResultAttributeException AWS API Documentation
    #
    class InvalidResultAttributeException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The role name can't contain invalid characters. Also verify that you
    # specified an IAM role for notifications that includes the required
    # trust policy. For information about configuring the IAM role for Run
    # Command notifications, see [Configuring Amazon SNS Notifications for
    # Run Command][1] in the *Amazon Web Services Systems Manager User
    # Guide*.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified tag key or value isn't valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidTag AWS API Documentation
    #
    class InvalidTag < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The target isn't valid or doesn't exist. It might not be configured
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
      SENSITIVE = []
      include Aws::Structure
    end

    # TargetMap parameter isn't valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidTargetMaps AWS API Documentation
    #
    class InvalidTargetMaps < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameter type name isn't valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidTypeNameException AWS API Documentation
    #
    class InvalidTypeNameException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The update isn't valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/InvalidUpdate AWS API Documentation
    #
    class InvalidUpdate < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the inventory type and attribute for the aggregation
    # execution.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Status information returned by the `DeleteInventory` operation.
    #
    # @!attribute [rw] deletion_id
    #   The deletion ID returned by the `DeleteInventory` operation.
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
    #   the *Amazon Web Services Systems Manager User Guide*.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the delete operation.
    #
    # @!attribute [rw] total_count
    #   The total number of items to delete. This count doesn't change
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more filters. Use a filter to return a more specific list of
    # results.
    #
    # @!attribute [rw] key
    #   The name of the filter key.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   Inventory filter values. Example: inventory filter where managed
    #   node IDs are specified as values
    #   `Key=AWS:InstanceInformation.InstanceId,Values= i-a12b3c4d5e6g,
    #   i-1a2b3c4d5e6,Type=Equal`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] type
    #   The type of filter.
    #
    #   <note markdown="1"> The `Exists` filter must be used with aggregators. For more
    #   information, see [Aggregating inventory data][1] in the *Amazon Web
    #   Services Systems Manager User Guide*.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # A user-defined set of one or more filters on which to aggregate
    # inventory data. Groups return a count of resources that match and
    # don't match the specified criteria.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Information collected from managed nodes based on your inventory
    # policy document
    #
    # @!attribute [rw] type_name
    #   The name of the inventory type. Default inventory item type names
    #   start with `AWS`. Custom inventory type names will start with
    #   Custom. Default inventory item types include the following:
    #   `AWS:AWSComponent`, `AWS:Application`, `AWS:InstanceInformation`,
    #   `AWS:Network`, and `AWS:WindowsUpdate`.
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
    #   PutInventory API doesn't update the inventory item type contents if
    #   the MD5 hash hasn't changed since last update.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The inventory item schema definition. Users can use this to compose
    # inventory query filters.
    #
    # @!attribute [rw] type_name
    #   The name of the inventory type. Default inventory item type names
    #   start with Amazon Web Services. Custom inventory type names will
    #   start with Custom. Default inventory item types include the
    #   following: `AWS:AWSComponent`, `AWS:Application`,
    #   `AWS:InstanceInformation`, `AWS:Network`, and `AWS:WindowsUpdate`.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Inventory query results.
    #
    # @!attribute [rw] id
    #   ID of the inventory result entity. For example, for managed node
    #   inventory the result will be the managed node ID. For EC2 instance
    #   inventory, the result will be the instance ID.
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
      SENSITIVE = []
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
    #   PutInventory API doesn't update the inventory item type contents if
    #   the MD5 hash hasn't changed since last update.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The command ID and managed node ID you specified didn't match any
    # invocations. Verify the command ID and the managed node ID and try
    # again.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] invalid_labels
    #   The label doesn't meet the requirements. For information about
    #   parameter label requirements, see [Labeling parameters][1] in the
    #   *Amazon Web Services Systems Manager User Guide*.
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] association_filter_list
    #   One or more filters. Use a filter to return a more specific list of
    #   results.
    #
    #   <note markdown="1"> Filtering associations using the `InstanceID` attribute only returns
    #   legacy associations created using the `InstanceID` attribute.
    #   Associations targeting the managed node that are part of the Target
    #   Attributes `ResourceGroup` or `Tags` aren't returned.
    #
    #    </note>
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] command_id
    #   (Optional) The invocations for a specific command ID.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   (Optional) The command execution details for a specific managed node
    #   ID.
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
    #   executions and any command output. The default value is `false`.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] command_id
    #   (Optional) If provided, lists only the specified command.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   (Optional) Lists commands issued against this managed node ID.
    #
    #   <note markdown="1"> You can't specify a managed node ID in the same command that you
    #   specify `Status` = `Pending`. This is because the command hasn't
    #   reached the managed node yet.
    #
    #    </note>
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the change template.
    #   @return [String]
    #
    # @!attribute [rw] document_version
    #   The version of the change template.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The type of data for which details are being requested. Currently,
    #   the only supported value is `DocumentReviews`.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListDocumentMetadataHistoryRequest AWS API Documentation
    #
    class ListDocumentMetadataHistoryRequest < Struct.new(
      :name,
      :document_version,
      :metadata,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the change template.
    #   @return [String]
    #
    # @!attribute [rw] document_version
    #   The version of the change template.
    #   @return [String]
    #
    # @!attribute [rw] author
    #   The user ID of the person in the organization who requested the
    #   review of the change template.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   Information about the response to the change template approval
    #   request.
    #   @return [Types::DocumentMetadataResponseInfo]
    #
    # @!attribute [rw] next_token
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListDocumentMetadataHistoryResponse AWS API Documentation
    #
    class ListDocumentMetadataHistoryResponse < Struct.new(
      :name,
      :document_version,
      :author,
      :metadata,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] document_filter_list
    #   This data type is deprecated. Instead, use `Filters`.
    #   @return [Array<Types::DocumentFilter>]
    #
    # @!attribute [rw] filters
    #   One or more `DocumentKeyValuesFilter` objects. Use a filter to
    #   return a more specific list of results. For keys, you can specify
    #   one or more key-value pair tags that have been applied to a
    #   document. Other valid keys include `Owner`, `Name`, `PlatformTypes`,
    #   `DocumentType`, and `TargetType`. For example, to return documents
    #   you own use `Key=Owner,Values=Self`. To specify a custom key-value
    #   pair, use the format `Key=tag:tagName,Values=valueName`.
    #
    #   <note markdown="1"> This API operation only supports filtering documents by using a
    #   single tag key and one or more tag values. For example:
    #   `Key=tag:tagName,Values=valueName1,valueName2`
    #
    #    </note>
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The managed node ID for which you want inventory information.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] type_name
    #   The type of inventory item returned by the request.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The managed node ID targeted by the request to query inventory
    #   information.
    #   @return [String]
    #
    # @!attribute [rw] schema_version
    #   The inventory schema version used by the managed node(s).
    #   @return [String]
    #
    # @!attribute [rw] capture_time
    #   The time that inventory information was collected for the managed
    #   node(s).
    #   @return [String]
    #
    # @!attribute [rw] entries
    #   A list of inventory items on the managed node(s).
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   One or more OpsItem filters. Use a filter to return a more specific
    #   list of results.
    #   @return [Array<Types::OpsItemEventFilter>]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListOpsItemEventsRequest AWS API Documentation
    #
    class ListOpsItemEventsRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of items to return. Use this token to get
    #   the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] summaries
    #   A list of event information for the specified OpsItems.
    #   @return [Array<Types::OpsItemEventSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListOpsItemEventsResponse AWS API Documentation
    #
    class ListOpsItemEventsResponse < Struct.new(
      :next_token,
      :summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ops_item_id
    #   The ID of the OpsItem for which you want to list all related-item
    #   resources.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   One or more OpsItem filters. Use a filter to return a more specific
    #   list of results.
    #   @return [Array<Types::OpsItemRelatedItemsFilter>]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListOpsItemRelatedItemsRequest AWS API Documentation
    #
    class ListOpsItemRelatedItemsRequest < Struct.new(
      :ops_item_id,
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of items to return. Use this token to get
    #   the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] summaries
    #   A list of related-item resources for the specified OpsItem.
    #   @return [Array<Types::OpsItemRelatedItemSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListOpsItemRelatedItemsResponse AWS API Documentation
    #
    class ListOpsItemRelatedItemsResponse < Struct.new(
      :next_token,
      :summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   One or more filters to limit the number of OpsMetadata objects
    #   returned by the call.
    #   @return [Array<Types::OpsMetadataFilter>]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListOpsMetadataRequest AWS API Documentation
    #
    class ListOpsMetadataRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ops_metadata_list
    #   Returns a list of OpsMetadata objects.
    #   @return [Array<Types::OpsMetadata>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. Use this token to get
    #   the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListOpsMetadataResult AWS API Documentation
    #
    class ListOpsMetadataResult < Struct.new(
      :ops_metadata_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_compliance_summary_items
    #   A summary count for specified or targeted managed nodes. Summary
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sync_type
    #   View a list of resource data syncs according to the sync type.
    #   Specify `SyncToDestination` to view resource data syncs that
    #   synchronize data to an Amazon S3 bucket. Specify `SyncFromSource` to
    #   view resource data syncs from Organizations or from multiple Amazon
    #   Web Services Regions.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_data_sync_items
    #   A list of your current resource data sync configurations and their
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an Amazon Simple Storage Service (Amazon S3) bucket
    # to write managed node-level logs to.
    #
    # <note markdown="1"> `LoggingInfo` has been deprecated. To specify an Amazon Simple Storage
    # Service (Amazon S3) bucket to contain logs, instead use the
    # `OutputS3BucketName` and `OutputS3KeyPrefix` options in the
    # `TaskInvocationParameters` structure. For information about how Amazon
    # Web Services Systems Manager handles these options for the supported
    # maintenance window task types, see
    # MaintenanceWindowTaskInvocationParameters.
    #
    #  </note>
    #
    # @!attribute [rw] s3_bucket_name
    #   The name of an S3 bucket where execution logs are stored.
    #   @return [String]
    #
    # @!attribute [rw] s3_key_prefix
    #   (Optional) The S3 bucket subfolder.
    #   @return [String]
    #
    # @!attribute [rw] s3_region
    #   The Amazon Web Services Region where the S3 bucket is located.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/LoggingInfo AWS API Documentation
    #
    class LoggingInfo < Struct.new(
      :s3_bucket_name,
      :s3_key_prefix,
      :s3_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters for an `AUTOMATION` task type.
    #
    # @!attribute [rw] document_version
    #   The version of an Automation runbook to use during task execution.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters for the `AUTOMATION` task.
    #
    #   For information about specifying and updating task parameters, see
    #   RegisterTaskWithMaintenanceWindow and UpdateMaintenanceWindowTask.
    #
    #   <note markdown="1"> `LoggingInfo` has been deprecated. To specify an Amazon Simple
    #   Storage Service (Amazon S3) bucket to contain logs, instead use the
    #   `OutputS3BucketName` and `OutputS3KeyPrefix` options in the
    #   `TaskInvocationParameters` structure. For information about how
    #   Amazon Web Services Systems Manager handles these options for the
    #   supported maintenance window task types, see
    #   MaintenanceWindowTaskInvocationParameters.
    #
    #    `TaskParameters` has been deprecated. To specify parameters to pass
    #   to a task when it runs, instead use the `Parameters` option in the
    #   `TaskInvocationParameters` structure. For information about how
    #   Systems Manager handles these options for the supported maintenance
    #   window task types, see MaintenanceWindowTaskInvocationParameters.
    #
    #    For `AUTOMATION` task types, Amazon Web Services Systems Manager
    #   ignores any values specified for these parameters.
    #
    #    </note>
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/MaintenanceWindowAutomationParameters AWS API Documentation
    #
    class MaintenanceWindowAutomationParameters < Struct.new(
      :document_version,
      :parameters)
      SENSITIVE = []
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
    #   The details explaining the status. Not available for all status
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
      SENSITIVE = []
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
    #   The details explaining the status of the task execution. Not
    #   available for all status values.
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
    #   The Amazon Resource Name (ARN) of the task that ran.
    #   @return [String]
    #
    # @!attribute [rw] task_type
    #   The type of task that ran.
    #   @return [String]
    #
    # @!attribute [rw] alarm_configuration
    #   The details for the CloudWatch alarm applied to your maintenance
    #   window task.
    #   @return [Types::AlarmConfiguration]
    #
    # @!attribute [rw] triggered_alarms
    #   The CloudWatch alarm that was invoked by the maintenance window
    #   task.
    #   @return [Array<Types::AlarmStateInformation>]
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
      :task_type,
      :alarm_configuration,
      :triggered_alarms)
      SENSITIVE = []
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
    #   the task invocation. If the task type is `RUN_COMMAND`, this value
    #   is the command ID.
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
    #   The details explaining the status of the task invocation. Not
    #   available for all status values.
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
    #   any Amazon CloudWatch Events events raised during the task
    #   invocation.
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
      SENSITIVE = [:parameters, :owner_information]
      include Aws::Structure
    end

    # Filter used in the request. Supported filter keys depend on the API
    # operation that includes the filter. API operations that use
    # `MaintenanceWindowFilter>` include the following:
    #
    # * DescribeMaintenanceWindowExecutions
    #
    # * DescribeMaintenanceWindowExecutionTaskInvocations
    #
    # * DescribeMaintenanceWindowExecutionTasks
    #
    # * DescribeMaintenanceWindows
    #
    # * DescribeMaintenanceWindowTargets
    #
    # * DescribeMaintenanceWindowTasks
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
      SENSITIVE = []
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
    #   Amazon Web Services Systems Manager stops scheduling new tasks for
    #   execution.
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
    # @!attribute [rw] schedule_offset
    #   The number of days to wait to run a maintenance window after the
    #   scheduled cron expression date and time.
    #   @return [Integer]
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
      :schedule_offset,
      :end_date,
      :start_date,
      :next_execution_time)
      SENSITIVE = [:description]
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters for a `LAMBDA` task type.
    #
    # For information about specifying and updating task parameters, see
    # RegisterTaskWithMaintenanceWindow and UpdateMaintenanceWindowTask.
    #
    # <note markdown="1"> `LoggingInfo` has been deprecated. To specify an Amazon Simple Storage
    # Service (Amazon S3) bucket to contain logs, instead use the
    # `OutputS3BucketName` and `OutputS3KeyPrefix` options in the
    # `TaskInvocationParameters` structure. For information about how Amazon
    # Web Services Systems Manager handles these options for the supported
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
    # @!attribute [rw] client_context
    #   Pass client-specific information to the Lambda function that you are
    #   invoking. You can then process the client information in your Lambda
    #   function as you choose through the context variable.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   (Optional) Specify an Lambda function version or alias name. If you
    #   specify a function version, the operation uses the qualified
    #   function Amazon Resource Name (ARN) to invoke a specific Lambda
    #   function. If you specify an alias name, the operation uses the alias
    #   ARN to invoke the Lambda function version to which the alias points.
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
      SENSITIVE = [:payload]
      include Aws::Structure
    end

    # The parameters for a `RUN_COMMAND` task type.
    #
    # For information about specifying and updating task parameters, see
    # RegisterTaskWithMaintenanceWindow and UpdateMaintenanceWindowTask.
    #
    # <note markdown="1"> `LoggingInfo` has been deprecated. To specify an Amazon Simple Storage
    # Service (Amazon S3) bucket to contain logs, instead use the
    # `OutputS3BucketName` and `OutputS3KeyPrefix` options in the
    # `TaskInvocationParameters` structure. For information about how Amazon
    # Web Services Systems Manager handles these options for the supported
    # maintenance window task types, see
    # MaintenanceWindowTaskInvocationParameters.
    #
    #  `TaskParameters` has been deprecated. To specify parameters to pass to
    # a task when it runs, instead use the `Parameters` option in the
    # `TaskInvocationParameters` structure. For information about how
    # Systems Manager handles these options for the supported maintenance
    # window task types, see MaintenanceWindowTaskInvocationParameters.
    #
    #  For `RUN_COMMAND` tasks, Systems Manager uses specified values for
    # `TaskParameters` and `LoggingInfo` only if no values are specified for
    # `TaskInvocationParameters`.
    #
    #  </note>
    #
    # @!attribute [rw] comment
    #   Information about the commands to run.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_output_config
    #   Configuration options for sending command output to Amazon
    #   CloudWatch Logs.
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
    #   The Amazon Web Services Systems Manager document (SSM document)
    #   version to use in the request. You can specify `$DEFAULT`,
    #   `$LATEST`, or a specific version number. If you run commands by
    #   using the Amazon Web Services CLI, then you must escape the first
    #   two options by using a backslash. If you specify a version number,
    #   then you don't need to use the backslash. For example:
    #
    #   `--document-version "\$DEFAULT"`
    #
    #   `--document-version "\$LATEST"`
    #
    #   `--document-version "3"`
    #   @return [String]
    #
    # @!attribute [rw] notification_config
    #   Configurations for sending notifications about command status
    #   changes on a per-managed node basis.
    #   @return [Types::NotificationConfig]
    #
    # @!attribute [rw] output_s3_bucket_name
    #   The name of the Amazon Simple Storage Service (Amazon S3) bucket.
    #   @return [String]
    #
    # @!attribute [rw] output_s3_key_prefix
    #   The S3 bucket subfolder.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters for the `RUN_COMMAND` task execution.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] service_role_arn
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) service role to use to publish Amazon Simple Notification
    #   Service (Amazon SNS) notifications for maintenance window Run
    #   Command tasks.
    #   @return [String]
    #
    # @!attribute [rw] timeout_seconds
    #   If this time is reached and the command hasn't already started
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
      SENSITIVE = [:parameters]
      include Aws::Structure
    end

    # The parameters for a `STEP_FUNCTIONS` task.
    #
    # For information about specifying and updating task parameters, see
    # RegisterTaskWithMaintenanceWindow and UpdateMaintenanceWindowTask.
    #
    # <note markdown="1"> `LoggingInfo` has been deprecated. To specify an Amazon Simple Storage
    # Service (Amazon S3) bucket to contain logs, instead use the
    # `OutputS3BucketName` and `OutputS3KeyPrefix` options in the
    # `TaskInvocationParameters` structure. For information about how Amazon
    # Web Services Systems Manager handles these options for the supported
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
    # @!attribute [rw] input
    #   The inputs for the `STEP_FUNCTIONS` task.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the `STEP_FUNCTIONS` task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/MaintenanceWindowStepFunctionsParameters AWS API Documentation
    #
    class MaintenanceWindowStepFunctionsParameters < Struct.new(
      :input,
      :name)
      SENSITIVE = [:input]
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
    #   The targets, either managed nodes or tags.
    #
    #   Specify managed nodes using the following format:
    #
    #   `Key=instanceids,Values=<instanceid1>,<instanceid2>`
    #
    #   Tags are specified using the following format:
    #
    #   `Key=<tag name>,Values=<tag value>`.
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] owner_information
    #   A user-provided value that will be included in any Amazon CloudWatch
    #   Events events that are raised while running tasks for these targets
    #   in this maintenance window.
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
      SENSITIVE = [:owner_information, :description]
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
    #   The resource that the task uses during execution. For `RUN_COMMAND`
    #   and `AUTOMATION` task types, `TaskArn` is the Amazon Web Services
    #   Systems Manager (SSM document) name or ARN. For `LAMBDA` tasks,
    #   it's the function name or ARN. For `STEP_FUNCTIONS` tasks, it's
    #   the state machine ARN.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of task.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The targets (either managed nodes or tags). Managed nodes are
    #   specified using
    #   `Key=instanceids,Values=<instanceid1>,<instanceid2>`. Tags are
    #   specified using `Key=<tag name>,Values=<tag value>`.
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
    #   <note markdown="1"> `LoggingInfo` has been deprecated. To specify an Amazon Simple
    #   Storage Service (Amazon S3) bucket to contain logs, instead use the
    #   `OutputS3BucketName` and `OutputS3KeyPrefix` options in the
    #   `TaskInvocationParameters` structure. For information about how
    #   Amazon Web Services Systems Manager handles these options for the
    #   supported maintenance window task types, see
    #   MaintenanceWindowTaskInvocationParameters.
    #
    #    </note>
    #   @return [Types::LoggingInfo]
    #
    # @!attribute [rw] service_role_arn
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) service role to use to publish Amazon Simple Notification
    #   Service (Amazon SNS) notifications for maintenance window Run
    #   Command tasks.
    #   @return [String]
    #
    # @!attribute [rw] max_concurrency
    #   The maximum number of targets this task can be run for, in parallel.
    #
    #   <note markdown="1"> Although this element is listed as "Required: No", a value can be
    #   omitted only when you are registering or updating a [targetless
    #   task][1] You must provide a value in all other cases.
    #
    #    For maintenance window tasks without a target specified, you can't
    #   supply a value for this option. Instead, the system inserts a
    #   placeholder value of `1`. This value doesn't affect the running of
    #   your task.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html
    #   @return [String]
    #
    # @!attribute [rw] max_errors
    #   The maximum number of errors allowed before this task stops being
    #   scheduled.
    #
    #   <note markdown="1"> Although this element is listed as "Required: No", a value can be
    #   omitted only when you are registering or updating a [targetless
    #   task][1] You must provide a value in all other cases.
    #
    #    For maintenance window tasks without a target specified, you can't
    #   supply a value for this option. Instead, the system inserts a
    #   placeholder value of `1`. This value doesn't affect the running of
    #   your task.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html
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
    # @!attribute [rw] cutoff_behavior
    #   The specification for whether tasks should continue to run after the
    #   cutoff time specified in the maintenance windows is reached.
    #   @return [String]
    #
    # @!attribute [rw] alarm_configuration
    #   The details for the CloudWatch alarm applied to your maintenance
    #   window task.
    #   @return [Types::AlarmConfiguration]
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
      :description,
      :cutoff_behavior,
      :alarm_configuration)
      SENSITIVE = [:task_parameters, :description]
      include Aws::Structure
    end

    # The parameters for task execution.
    #
    # @!attribute [rw] run_command
    #   The parameters for a `RUN_COMMAND` task type.
    #   @return [Types::MaintenanceWindowRunCommandParameters]
    #
    # @!attribute [rw] automation
    #   The parameters for an `AUTOMATION` task type.
    #   @return [Types::MaintenanceWindowAutomationParameters]
    #
    # @!attribute [rw] step_functions
    #   The parameters for a `STEP_FUNCTIONS` task type.
    #   @return [Types::MaintenanceWindowStepFunctionsParameters]
    #
    # @!attribute [rw] lambda
    #   The parameters for a `LAMBDA` task type.
    #   @return [Types::MaintenanceWindowLambdaParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/MaintenanceWindowTaskInvocationParameters AWS API Documentation
    #
    class MaintenanceWindowTaskInvocationParameters < Struct.new(
      :run_command,
      :automation,
      :step_functions,
      :lambda)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the values for a task parameter.
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
      SENSITIVE = [:values]
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata to assign to an Application Manager application.
    #
    # @!attribute [rw] value
    #   Metadata value to assign to an Application Manager application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/MetadataValue AWS API Documentation
    #
    class MetadataValue < Struct.new(
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   The Amazon Web Services users that should have access to the
    #   document. The account IDs can either be a group of account IDs or
    #   *All*.
    #   @return [Array<String>]
    #
    # @!attribute [rw] account_ids_to_remove
    #   The Amazon Web Services users that should no longer have access to
    #   the document. The Amazon Web Services user can either be a group of
    #   account IDs or *All*. This action has a higher priority than
    #   *AccountIdsToAdd*. If you specify an ID to add and the same ID to
    #   remove, the system removes access to the document.
    #   @return [Array<String>]
    #
    # @!attribute [rw] shared_document_version
    #   (Optional) The version of the document to share. If it isn't
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ModifyDocumentPermissionResponse AWS API Documentation
    #
    class ModifyDocumentPermissionResponse < Aws::EmptyStructure; end

    # A summary of resources that aren't compliant. The summary is
    # organized according to resource type.
    #
    # @!attribute [rw] non_compliant_count
    #   The total number of compliance items that aren't compliant.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Configurations for sending notifications.
    #
    # @!attribute [rw] notification_arn
    #   An Amazon Resource Name (ARN) for an Amazon Simple Notification
    #   Service (Amazon SNS) topic. Run Command pushes notifications about
    #   command status changes to this topic.
    #   @return [String]
    #
    # @!attribute [rw] notification_events
    #   The different events for which you can receive notifications. To
    #   learn more about these events, see [Monitoring Systems Manager
    #   status changes using Amazon SNS notifications][1] in the *Amazon Web
    #   Services Systems Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/monitoring-sns-notifications.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] notification_type
    #   The type of notification.
    #
    #   * `Command`: Receive notification when the status of a command
    #     changes.
    #
    #   * `Invocation`: For commands sent to multiple managed nodes, receive
    #     notification on a per-node basis when the status of a command
    #     changes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/NotificationConfig AWS API Documentation
    #
    class NotificationConfig < Struct.new(
      :notification_arn,
      :notification_events,
      :notification_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more aggregators for viewing counts of OpsData using different
    # dimensions such as `Source`, `CreatedTime`, or `Source and
    # CreatedTime`, to name a few.
    #
    # @!attribute [rw] aggregator_type
    #   Either a `Range` or `Count` aggregator for limiting an OpsData
    #   summary.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The data type name to use for viewing counts of OpsData.
    #   @return [String]
    #
    # @!attribute [rw] attribute_name
    #   The name of an OpsData attribute on which to limit the count of
    #   OpsData.
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
    #   A nested aggregator for viewing counts of OpsData.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The OpsData summary.
    #
    # @!attribute [rw] capture_time
    #   The time the OpsData was captured.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The details of an OpsData summary.
    #   @return [Array<Hash<String,String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/OpsEntityItem AWS API Documentation
    #
    class OpsEntityItem < Struct.new(
      :capture_time,
      :content)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter for viewing OpsData summaries.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Operations engineers and IT professionals use Amazon Web Services
    # Systems Manager OpsCenter to view, investigate, and remediate
    # operational work items (OpsItems) impacting the performance and health
    # of their Amazon Web Services resources. OpsCenter is integrated with
    # Amazon EventBridge and Amazon CloudWatch. This means you can configure
    # these services to automatically create an OpsItem in OpsCenter when a
    # CloudWatch alarm enters the ALARM state or when EventBridge processes
    # an event from any Amazon Web Services service that publishes events.
    # Configuring Amazon CloudWatch alarms and EventBridge events to
    # automatically create OpsItems allows you to quickly diagnose and
    # remediate issues with Amazon Web Services resources from a single
    # console.
    #
    # To help you diagnose issues, each OpsItem includes contextually
    # relevant information such as the name and ID of the Amazon Web
    # Services resource that generated the OpsItem, alarm or event details,
    # alarm history, and an alarm timeline graph. For the Amazon Web
    # Services resource, OpsCenter aggregates information from Config,
    # CloudTrail logs, and EventBridge, so you don't have to navigate
    # across multiple console pages during your investigation. For more
    # information, see [OpsCenter][1] in the *Amazon Web Services Systems
    # Manager User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter.html
    #
    # @!attribute [rw] created_by
    #   The ARN of the Amazon Web Services account that created the OpsItem.
    #   @return [String]
    #
    # @!attribute [rw] ops_item_type
    #   The type of OpsItem. Systems Manager supports the following types of
    #   OpsItems:
    #
    #   * `/aws/issue`
    #
    #     This type of OpsItem is used for default OpsItems created by
    #     OpsCenter.
    #
    #   * `/aws/changerequest`
    #
    #     This type of OpsItem is used by Change Manager for reviewing and
    #     approving or rejecting change requests.
    #
    #   * `/aws/insights`
    #
    #     This type of OpsItem is used by OpsCenter for aggregating and
    #     reporting on duplicate OpsItems.
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
    #   The ARN of the Amazon Web Services account that last updated the
    #   OpsItem.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time the OpsItem was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] notifications
    #   The Amazon Resource Name (ARN) of an Amazon Simple Notification
    #   Service (Amazon SNS) topic where notifications are sent when this
    #   OpsItem is edited or changed.
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
    #   in the *Amazon Web Services Systems Manager User Guide*.
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
    #   Operational data keys *can't* begin with the following: `amazon`,
    #   `aws`, `amzn`, `ssm`, `/amazon`, `/aws`, `/amzn`, `/ssm`.
    #
    #   You can choose to make the data searchable by other users in the
    #   account or you can restrict search access. Searchable data means
    #   that all users with access to the OpsItem Overview page (as provided
    #   by the DescribeOpsItems API operation) can view and search on the
    #   specified data. Operational data that isn't searchable is only
    #   viewable by users who have access to the OpsItem (as provided by the
    #   GetOpsItem API operation).
    #
    #   Use the `/aws/resources` key in OperationalData to specify a related
    #   resource in the request. Use the `/aws/automations` key in
    #   OperationalData to associate an Automation runbook with the OpsItem.
    #   To view Amazon Web Services CLI example commands that use these
    #   keys, see [Creating OpsItems manually][1] in the *Amazon Web
    #   Services Systems Manager User Guide*.
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
    # @!attribute [rw] actual_start_time
    #   The time a runbook workflow started. Currently reported only for the
    #   OpsItem type `/aws/changerequest`.
    #   @return [Time]
    #
    # @!attribute [rw] actual_end_time
    #   The time a runbook workflow ended. Currently reported only for the
    #   OpsItem type `/aws/changerequest`.
    #   @return [Time]
    #
    # @!attribute [rw] planned_start_time
    #   The time specified in a change request for a runbook workflow to
    #   start. Currently supported only for the OpsItem type
    #   `/aws/changerequest`.
    #   @return [Time]
    #
    # @!attribute [rw] planned_end_time
    #   The time specified in a change request for a runbook workflow to
    #   end. Currently supported only for the OpsItem type
    #   `/aws/changerequest`.
    #   @return [Time]
    #
    # @!attribute [rw] ops_item_arn
    #   The OpsItem Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/OpsItem AWS API Documentation
    #
    class OpsItem < Struct.new(
      :created_by,
      :ops_item_type,
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
      :severity,
      :actual_start_time,
      :actual_end_time,
      :planned_start_time,
      :planned_end_time,
      :ops_item_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # You don't have permission to view OpsItems in the specified account.
    # Verify that your account is configured either as a Systems Manager
    # delegated administrator or that you are logged into the Organizations
    # management account.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/OpsItemAccessDeniedException AWS API Documentation
    #
    class OpsItemAccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that defines the value of the key and its type in the
    # OperationalData map.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a filter for a specific list of OpsItem events. You can
    # filter event information by using tags. You specify tags by using a
    # key-value pair mapping.
    #
    # @!attribute [rw] key
    #   The name of the filter key. Currently, the only supported value is
    #   `OpsItemId`.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values for the filter, consisting of one or more OpsItem IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] operator
    #   The operator used by the filter call. Currently, the only supported
    #   value is `Equal`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/OpsItemEventFilter AWS API Documentation
    #
    class OpsItemEventFilter < Struct.new(
      :key,
      :values,
      :operator)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about an OpsItem event or that associated an
    # OpsItem with a related item.
    #
    # @!attribute [rw] ops_item_id
    #   The ID of the OpsItem.
    #   @return [String]
    #
    # @!attribute [rw] event_id
    #   The ID of the OpsItem event.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The source of the OpsItem event.
    #   @return [String]
    #
    # @!attribute [rw] detail_type
    #   The type of information provided as a detail.
    #   @return [String]
    #
    # @!attribute [rw] detail
    #   Specific information about the OpsItem event.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   Information about the user or resource that created the OpsItem
    #   event.
    #   @return [Types::OpsItemIdentity]
    #
    # @!attribute [rw] created_time
    #   The date and time the OpsItem event was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/OpsItemEventSummary AWS API Documentation
    #
    class OpsItemEventSummary < Struct.new(
      :ops_item_id,
      :event_id,
      :source,
      :detail_type,
      :detail,
      :created_by,
      :created_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an OpsItem filter.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the user or resource that created an OpsItem event.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the IAM entity that created the
    #   OpsItem event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/OpsItemIdentity AWS API Documentation
    #
    class OpsItemIdentity < Struct.new(
      :arn)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # A notification about the OpsItem.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of an Amazon Simple Notification
    #   Service (Amazon SNS) topic where notifications are sent when this
    #   OpsItem is edited or changed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/OpsItemNotification AWS API Documentation
    #
    class OpsItemNotification < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Resource Name (ARN) is already associated with the OpsItem.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_uri
    #   @return [String]
    #
    # @!attribute [rw] ops_item_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/OpsItemRelatedItemAlreadyExistsException AWS API Documentation
    #
    class OpsItemRelatedItemAlreadyExistsException < Struct.new(
      :message,
      :resource_uri,
      :ops_item_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The association wasn't found using the parameters you specified in
    # the call. Verify the information and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/OpsItemRelatedItemAssociationNotFoundException AWS API Documentation
    #
    class OpsItemRelatedItemAssociationNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about related-item resources for an OpsItem.
    #
    # @!attribute [rw] ops_item_id
    #   The OpsItem ID.
    #   @return [String]
    #
    # @!attribute [rw] association_id
    #   The association ID.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #   @return [String]
    #
    # @!attribute [rw] association_type
    #   The association type.
    #   @return [String]
    #
    # @!attribute [rw] resource_uri
    #   The Amazon Resource Name (ARN) of the related-item resource.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   Information about the user or resource that created an OpsItem
    #   event.
    #   @return [Types::OpsItemIdentity]
    #
    # @!attribute [rw] created_time
    #   The time the related-item association was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_by
    #   Information about the user or resource that created an OpsItem
    #   event.
    #   @return [Types::OpsItemIdentity]
    #
    # @!attribute [rw] last_modified_time
    #   The time the related-item association was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/OpsItemRelatedItemSummary AWS API Documentation
    #
    class OpsItemRelatedItemSummary < Struct.new(
      :ops_item_id,
      :association_id,
      :resource_type,
      :association_type,
      :resource_uri,
      :created_by,
      :created_time,
      :last_modified_by,
      :last_modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a filter for a specific list of related-item resources.
    #
    # @!attribute [rw] key
    #   The name of the filter key. Supported values include `ResourceUri`,
    #   `ResourceType`, or `AssociationId`.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values for the filter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] operator
    #   The operator used by the filter call. The only supported operator is
    #   `EQUAL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/OpsItemRelatedItemsFilter AWS API Documentation
    #
    class OpsItemRelatedItemsFilter < Struct.new(
      :key,
      :values,
      :operator)
      SENSITIVE = []
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
    #   The impacted Amazon Web Services resource.
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
    # @!attribute [rw] ops_item_type
    #   The type of OpsItem. Systems Manager supports the following types of
    #   OpsItems:
    #
    #   * `/aws/issue`
    #
    #     This type of OpsItem is used for default OpsItems created by
    #     OpsCenter.
    #
    #   * `/aws/changerequest`
    #
    #     This type of OpsItem is used by Change Manager for reviewing and
    #     approving or rejecting change requests.
    #
    #   * `/aws/insights`
    #
    #     This type of OpsItem is used by OpsCenter for aggregating and
    #     reporting on duplicate OpsItems.
    #   @return [String]
    #
    # @!attribute [rw] actual_start_time
    #   The time a runbook workflow started. Currently reported only for the
    #   OpsItem type `/aws/changerequest`.
    #   @return [Time]
    #
    # @!attribute [rw] actual_end_time
    #   The time a runbook workflow ended. Currently reported only for the
    #   OpsItem type `/aws/changerequest`.
    #   @return [Time]
    #
    # @!attribute [rw] planned_start_time
    #   The time specified in a change request for a runbook workflow to
    #   start. Currently supported only for the OpsItem type
    #   `/aws/changerequest`.
    #   @return [Time]
    #
    # @!attribute [rw] planned_end_time
    #   The time specified in a change request for a runbook workflow to
    #   end. Currently supported only for the OpsItem type
    #   `/aws/changerequest`.
    #   @return [Time]
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
      :severity,
      :ops_item_type,
      :actual_start_time,
      :actual_end_time,
      :planned_start_time,
      :planned_end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Operational metadata for an application in Application Manager.
    #
    # @!attribute [rw] resource_id
    #   The ID of the Application Manager application.
    #   @return [String]
    #
    # @!attribute [rw] ops_metadata_arn
    #   The Amazon Resource Name (ARN) of the OpsMetadata Object or blob.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date the OpsMetadata object was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_user
    #   The user name who last updated the OpsMetadata object.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date the OpsMetadata objects was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/OpsMetadata AWS API Documentation
    #
    class OpsMetadata < Struct.new(
      :resource_id,
      :ops_metadata_arn,
      :last_modified_date,
      :last_modified_user,
      :creation_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # An OpsMetadata object already exists for the selected resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/OpsMetadataAlreadyExistsException AWS API Documentation
    #
    class OpsMetadataAlreadyExistsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter to limit the number of OpsMetadata objects displayed.
    #
    # @!attribute [rw] key
    #   A filter key.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   A filter value.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/OpsMetadataFilter AWS API Documentation
    #
    class OpsMetadataFilter < Struct.new(
      :key,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # One of the arguments passed is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/OpsMetadataInvalidArgumentException AWS API Documentation
    #
    class OpsMetadataInvalidArgumentException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The OpsMetadata object exceeds the maximum number of OpsMetadata keys
    # that you can assign to an application in Application Manager.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/OpsMetadataKeyLimitExceededException AWS API Documentation
    #
    class OpsMetadataKeyLimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your account reached the maximum number of OpsMetadata objects allowed
    # by Application Manager. The maximum is 200 OpsMetadata objects. Delete
    # one or more OpsMetadata object and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/OpsMetadataLimitExceededException AWS API Documentation
    #
    class OpsMetadataLimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The OpsMetadata object doesn't exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/OpsMetadataNotFoundException AWS API Documentation
    #
    class OpsMetadataNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The system is processing too many concurrent updates. Wait a few
    # moments and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/OpsMetadataTooManyUpdatesException AWS API Documentation
    #
    class OpsMetadataTooManyUpdatesException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The OpsItem data type to return.
    #
    # @!attribute [rw] type_name
    #   Name of the data type. Valid value: `AWS:OpsItem`,
    #   `AWS:EC2InstanceInformation`, `AWS:OpsItemTrendline`, or
    #   `AWS:ComplianceSummary`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/OpsResultAttribute AWS API Documentation
    #
    class OpsResultAttribute < Struct.new(
      :type_name)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # An Amazon Web Services Systems Manager parameter in Parameter Store.
    #
    # @!attribute [rw] name
    #   The name of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of parameter. Valid values include the following: `String`,
    #   `StringList`, and `SecureString`.
    #
    #   <note markdown="1"> If type is `StringList`, the system returns a comma-separated string
    #   with no spaces between commas in the `Value` field.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The parameter value.
    #
    #   <note markdown="1"> If type is `StringList`, the system returns a comma-separated string
    #   with no spaces between commas in the `Value` field.
    #
    #    </note>
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
    #   Applies to parameters that reference information in other Amazon Web
    #   Services services. `SourceResult` is the raw result or response from
    #   the source.
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
      SENSITIVE = [:value]
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
      SENSITIVE = []
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
    #   Amazon Resource Name (ARN) of the Amazon Web Services user who last
    #   changed the parameter.
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
    #   [Assigning parameter policies][1] in the *Amazon Web Services
    #   Systems Manager User Guide*.
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
      SENSITIVE = [:value]
      include Aws::Structure
    end

    # One or more policies assigned to a parameter.
    #
    # @!attribute [rw] policy_text
    #   The JSON text of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_type
    #   The type of policy. Parameter Store, a capability of Amazon Web
    #   Services Systems Manager, supports the following policy types:
    #   Expiration, ExpirationNotification, and NoChangeNotification.
    #   @return [String]
    #
    # @!attribute [rw] policy_status
    #   The status of the policy. Policies report the following statuses:
    #   Pending (the policy hasn't been enforced or applied yet), Finished
    #   (the policy was applied), Failed (the policy wasn't applied), or
    #   InProgress (the policy is being applied now).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ParameterInlinePolicy AWS API Documentation
    #
    class ParameterInlinePolicy < Struct.new(
      :policy_text,
      :policy_type,
      :policy_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have exceeded the number of parameters for this Amazon Web
    # Services account. Delete one or more parameters and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ParameterLimitExceeded AWS API Documentation
    #
    class ParameterLimitExceeded < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameter Store retains the 100 most recently created versions of a
    # parameter. After this number of versions has been created, Parameter
    # Store deletes the oldest version when a new one is created. However,
    # if the oldest version has a *label* attached to it, Parameter Store
    # won't delete the version and instead presents this error message:
    #
    # `An error occurred (ParameterMaxVersionLimitExceeded) when calling the
    # PutParameter operation: You attempted to create a new version of
    # parameter-name by calling the PutParameter API with the overwrite
    # flag. Version version-number, the oldest version, can't be deleted
    # because it has a label associated with it. Move the label to another
    # version of the parameter, and try again.`
    #
    # This safeguard is to prevent parameter versions with mission critical
    # labels assigned to them from being deleted. To continue creating new
    # parameters, first move the label from the oldest version of the
    # parameter to a newer one for use in your operations. For information
    # about moving parameter labels, see [Move a parameter label
    # (console)][1] or [Move a parameter label (CLI)][2] in the *Amazon Web
    # Services Systems Manager User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-paramstore-labels.html#sysman-paramstore-labels-console-move
    # [2]: https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-paramstore-labels.html#sysman-paramstore-labels-cli-move
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ParameterMaxVersionLimitExceeded AWS API Documentation
    #
    class ParameterMaxVersionLimitExceeded < Struct.new(
      :message)
      SENSITIVE = []
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
    #   Amazon Resource Name (ARN) of the Amazon Web Services user who last
    #   changed the parameter.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameter couldn't be found. Verify the name and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ParameterNotFound AWS API Documentation
    #
    class ParameterNotFound < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameter name isn't valid.
    #
    # @!attribute [rw] message
    #   The parameter name isn't valid.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ParameterPatternMismatchException AWS API Documentation
    #
    class ParameterPatternMismatchException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more filters. Use a filter to return a more specific list of
    # results.
    #
    # @!attribute [rw] key
    #   The name of the filter.
    #
    #   The `ParameterStringFilter` object is used by the DescribeParameters
    #   and GetParametersByPath API operations. However, not all of the
    #   pattern values listed for `Key` can be used with both operations.
    #
    #   For `DescribeParameters`, all of the listed patterns are valid
    #   except `Label`.
    #
    #   For `GetParametersByPath`, the following patterns listed for `Key`
    #   aren't valid: `tag`, `DataType`, `Name`, `Path`, and `Tier`.
    #
    #   For examples of Amazon Web Services CLI commands demonstrating valid
    #   parameter filter constructions, see [Searching for Systems Manager
    #   parameters][1] in the *Amazon Web Services Systems Manager User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-search.html
    #   @return [String]
    #
    # @!attribute [rw] option
    #   For all filters used with DescribeParameters, valid options include
    #   `Equals` and `BeginsWith`. The `Name` filter additionally supports
    #   the `Contains` option. (Exception: For filters using the key `Path`,
    #   valid options include `Recursive` and `OneLevel`.)
    #
    #   For filters used with GetParametersByPath, valid options include
    #   `Equals` and `BeginsWith`. (Exception: For filters using `Label` as
    #   the Key name, the only valid option is `Equals`.)
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified parameter version wasn't found. Verify the parameter
    # name and version, and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ParameterVersionNotFound AWS API Documentation
    #
    class ParameterVersionNotFound < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This data type is deprecated. Instead, use ParameterStringFilter.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents metadata about a patch.
    #
    # @!attribute [rw] id
    #   The ID of the patch. Applies to Windows patches only.
    #
    #   <note markdown="1"> This ID isn't the same as the Microsoft Knowledge Base ID.
    #
    #    </note>
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
    #   The product family the patch is applicable for. For example,
    #   `Windows` or `Amazon Linux 2`.
    #   @return [String]
    #
    # @!attribute [rw] product
    #   The specific product the patch is applicable for. For example,
    #   `WindowsServer2016` or `AmazonLinux2018.03`.
    #   @return [String]
    #
    # @!attribute [rw] classification
    #   The classification of the patch. For example, `SecurityUpdates`,
    #   `Updates`, or `CriticalUpdates`.
    #   @return [String]
    #
    # @!attribute [rw] msrc_severity
    #   The severity of the patch, such as `Critical`, `Important`, or
    #   `Moderate`. Applies to Windows patches only.
    #   @return [String]
    #
    # @!attribute [rw] kb_number
    #   The Microsoft Knowledge Base ID of the patch. Applies to Windows
    #   patches only.
    #   @return [String]
    #
    # @!attribute [rw] msrc_number
    #   The ID of the Microsoft Security Response Center (MSRC) bulletin the
    #   patch is related to. For example, `MS14-045`. Applies to Windows
    #   patches only.
    #   @return [String]
    #
    # @!attribute [rw] language
    #   The language of the patch if it's language-specific.
    #   @return [String]
    #
    # @!attribute [rw] advisory_ids
    #   The Advisory ID of the patch. For example, `RHSA-2020:3779`. Applies
    #   to Linux-based managed nodes only.
    #   @return [Array<String>]
    #
    # @!attribute [rw] bugzilla_ids
    #   The Bugzilla ID of the patch. For example, `1600646`. Applies to
    #   Linux-based managed nodes only.
    #   @return [Array<String>]
    #
    # @!attribute [rw] cve_ids
    #   The Common Vulnerabilities and Exposures (CVE) ID of the patch. For
    #   example, `CVE-2011-3192`. Applies to Linux-based managed nodes only.
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   The name of the patch. Applies to Linux-based managed nodes only.
    #   @return [String]
    #
    # @!attribute [rw] epoch
    #   The epoch of the patch. For example in
    #   `pkg-example-EE-20180914-2.2.amzn1.noarch`, the epoch value is
    #   `20180914-2`. Applies to Linux-based managed nodes only.
    #   @return [Integer]
    #
    # @!attribute [rw] version
    #   The version number of the patch. For example, in
    #   `example-pkg-1.710.10-2.7.abcd.x86_64`, the version number is
    #   indicated by `-1`. Applies to Linux-based managed nodes only.
    #   @return [String]
    #
    # @!attribute [rw] release
    #   The particular release of a patch. For example, in
    #   `pkg-example-EE-20180914-2.2.amzn1.noarch`, the release is
    #   `2.amaz1`. Applies to Linux-based managed nodes only.
    #   @return [String]
    #
    # @!attribute [rw] arch
    #   The architecture of the patch. For example, in
    #   `example-pkg-0.710.10-2.7.abcd.x86_64`, the architecture is
    #   indicated by `x86_64`. Applies to Linux-based managed nodes only.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   The severity level of the patch. For example, `CRITICAL` or
    #   `MODERATE`.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   The source patch repository for the operating system and version,
    #   such as `trusty-security` for Ubuntu Server 14.04 LTE and
    #   `focal-security` for Ubuntu Server 20.04 LTE. Applies to Linux-based
    #   managed nodes only.
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
      :language,
      :advisory_ids,
      :bugzilla_ids,
      :cve_ids,
      :name,
      :epoch,
      :version,
      :release,
      :arch,
      :severity,
      :repository)
      SENSITIVE = []
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
    #   default value is `WINDOWS`.
    #   @return [String]
    #
    # @!attribute [rw] baseline_description
    #   The description of the patch baseline.
    #   @return [String]
    #
    # @!attribute [rw] default_baseline
    #   Whether this is the default baseline. Amazon Web Services Systems
    #   Manager supports creating multiple default patch baselines. For
    #   example, you can create a default patch baseline for each operating
    #   system.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the state of a patch on a particular managed node as
    # it relates to the patch baseline used to patch the node.
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
    #   The classification of the patch, such as `SecurityUpdates`,
    #   `Updates`, and `CriticalUpdates`.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   The severity of the patch such as `Critical`, `Important`, and
    #   `Moderate`.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the patch on the managed node, such as INSTALLED or
    #   FAILED.
    #
    #   For descriptions of each patch state, see [About patch
    #   compliance][1] in the *Amazon Web Services Systems Manager User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-compliance-about.html#sysman-compliance-monitor-patch
    #   @return [String]
    #
    # @!attribute [rw] installed_time
    #   The date/time the patch was installed on the managed node. Not all
    #   operating systems provide this level of information.
    #   @return [Time]
    #
    # @!attribute [rw] cve_ids
    #   The IDs of one or more Common Vulnerabilities and Exposure (CVE)
    #   issues that are resolved by the patch.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/PatchComplianceData AWS API Documentation
    #
    class PatchComplianceData < Struct.new(
      :title,
      :kb_id,
      :classification,
      :severity,
      :state,
      :installed_time,
      :cve_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines which patches should be included in a patch baseline.
    #
    # A patch filter consists of a key and a set of values. The filter key
    # is a patch property. For example, the available filter keys for
    # `WINDOWS` are `PATCH_SET`, `PRODUCT`, `PRODUCT_FAMILY`,
    # `CLASSIFICATION`, and `MSRC_SEVERITY`.
    #
    # The filter values define a matching criterion for the patch property
    # indicated by the key. For example, if the filter key is `PRODUCT` and
    # the filter values are `["Office 2013", "Office 2016"]`, then the
    # filter accepts all patches where product name is either "Office
    # 2013" or "Office 2016". The filter values can be exact values for
    # the patch property given as a key, or a wildcard (*), which matches
    # all values.
    #
    # You can view lists of valid values for the patch properties by running
    # the `DescribePatchProperties` command. For information about which
    # patch properties can be used with each major operating system, see
    # DescribePatchProperties.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # A set of patch filters, typically used for approval rules.
    #
    # @!attribute [rw] patch_filters
    #   The set of patch filters that make up the group.
    #   @return [Array<Types::PatchFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/PatchFilterGroup AWS API Documentation
    #
    class PatchFilterGroup < Struct.new(
      :patch_filters)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a filter used in Patch Manager APIs. Supported filter keys
    # depend on the API operation that includes the filter. Patch Manager
    # API operations that use `PatchOrchestratorFilter` include the
    # following:
    #
    # * DescribeAvailablePatches
    #
    # * DescribeInstancePatches
    #
    # * DescribePatchBaselines
    #
    # * DescribePatchGroups
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines an approval rule for a patch baseline.
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
    #   days after they are released. Not supported on Debian Server or
    #   Ubuntu Server.
    #   @return [Integer]
    #
    # @!attribute [rw] approve_until_date
    #   The cutoff date for auto approval of released patches. Any patches
    #   released on or before this date are installed automatically. Not
    #   supported on Debian Server or Ubuntu Server.
    #
    #   Enter dates in the format `YYYY-MM-DD`. For example, `2021-12-31`.
    #   @return [String]
    #
    # @!attribute [rw] enable_non_security
    #   For managed nodes identified by the approval rule filters, enables a
    #   patch baseline to apply non-security updates available in the
    #   specified repository. The default value is `false`. Applies to Linux
    #   managed nodes only.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # A set of rules defining the approval rules for a patch baseline.
    #
    # @!attribute [rw] patch_rules
    #   The rules that make up the rule group.
    #   @return [Array<Types::PatchRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/PatchRuleGroup AWS API Documentation
    #
    class PatchRuleGroup < Struct.new(
      :patch_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the patches to use to update the managed nodes,
    # including target operating systems and source repository. Applies to
    # Linux managed nodes only.
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
    #   `name=MyCustomRepository`
    #
    #   `baseurl=https://my-custom-repository`
    #
    #   `enabled=1`
    #
    #   <note markdown="1"> For information about other options available for your yum
    #   repository configuration, see [dnf.conf(5)][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://man7.org/linux/man-pages/man5/dnf.conf.5.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/PatchSource AWS API Documentation
    #
    class PatchSource < Struct.new(
      :name,
      :products,
      :configuration)
      SENSITIVE = [:configuration]
      include Aws::Structure
    end

    # Information about the approval status of a patch.
    #
    # @!attribute [rw] deployment_status
    #   The approval status of a patch.
    #   @return [String]
    #
    # @!attribute [rw] compliance_level
    #   The compliance severity level for a patch.
    #   @return [String]
    #
    # @!attribute [rw] approval_date
    #   The date the patch was approved (or will be approved if the status
    #   is `PENDING_APPROVAL`).
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/PatchStatus AWS API Documentation
    #
    class PatchStatus < Struct.new(
      :deployment_status,
      :compliance_level,
      :approval_date)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # An aggregate of step execution statuses displayed in the Amazon Web
    # Services Systems Manager console for a multi-Region and multi-account
    # Automation execution.
    #
    # @!attribute [rw] total_steps
    #   The total number of steps run in all specified Amazon Web Services
    #   Regions and Amazon Web Services accounts for the current Automation
    #   execution.
    #   @return [Integer]
    #
    # @!attribute [rw] success_steps
    #   The total number of steps that successfully completed in all
    #   specified Amazon Web Services Regions and Amazon Web Services
    #   accounts for the current Automation execution.
    #   @return [Integer]
    #
    # @!attribute [rw] failed_steps
    #   The total number of steps that failed to run in all specified Amazon
    #   Web Services Regions and Amazon Web Services accounts for the
    #   current Automation execution.
    #   @return [Integer]
    #
    # @!attribute [rw] cancelled_steps
    #   The total number of steps that the system cancelled in all specified
    #   Amazon Web Services Regions and Amazon Web Services accounts for the
    #   current Automation execution.
    #   @return [Integer]
    #
    # @!attribute [rw] timed_out_steps
    #   The total number of steps that timed out in all specified Amazon Web
    #   Services Regions and Amazon Web Services accounts for the current
    #   Automation execution.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_id
    #   Specify an ID for this resource. For a managed node, this is the
    #   node ID.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/PutComplianceItemsResult AWS API Documentation
    #
    class PutComplianceItemsResult < Aws::EmptyStructure; end

    # @!attribute [rw] instance_id
    #   An managed node ID where you want to add or update inventory items.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The inventory items that you want to add or update on managed nodes.
    #   @return [Array<Types::InventoryItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/PutInventoryRequest AWS API Documentation
    #
    class PutInventoryRequest < Struct.new(
      :instance_id,
      :items)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   * A parameter name must be unique within an Amazon Web Services
    #     Region
    #
    #   * A parameter name can't be prefixed with "`aws`" or "`ssm`"
    #     (case-insensitive).
    #
    #   * Parameter names can include only the following symbols and
    #     letters: `a-zA-Z0-9_.-`
    #
    #     In addition, the slash character ( / ) is used to delineate
    #     hierarchies in parameter names. For example:
    #     `/Dev/Production/East/Project-ABC/MyParameter`
    #
    #   * A parameter name can't include spaces.
    #
    #   * Parameter hierarchies are limited to a maximum depth of fifteen
    #     levels.
    #
    #   For additional information about valid values for parameter names,
    #   see [Creating Systems Manager parameters][1] in the *Amazon Web
    #   Services Systems Manager User Guide*.
    #
    #   <note markdown="1"> The maximum length constraint of 2048 characters listed below
    #   includes 1037 characters reserved for internal use by Systems
    #   Manager. The maximum length for a parameter name that you create is
    #   1011 characters. This includes the characters in the ARN that
    #   precede the name you specify, such as
    #   `arn:aws:ssm:us-east-2:111122223333:parameter/`.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-paramstore-su-create.html
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Information about the parameter that you want to add to the system.
    #   Optional but recommended.
    #
    #   Don't enter personally identifiable information in this field.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The parameter value that you want to add to the system. Standard
    #   parameters have a value limit of 4 KB. Advanced parameters have a
    #   value limit of 8 KB.
    #
    #   <note markdown="1"> Parameters can't be referenced or nested in the values of other
    #   parameters. You can't include `\{\{\}\}` or
    #   `\{\{ssm:parameter-name\}\}` in a parameter value.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of parameter that you want to add to the system.
    #
    #   <note markdown="1"> `SecureString` isn't currently supported for CloudFormation
    #   templates.
    #
    #    </note>
    #
    #   Items in a `StringList` must be separated by a comma (,). You can't
    #   use other punctuation or special character to escape items in the
    #   list. If you have a parameter value that requires a comma, then use
    #   the `String` data type.
    #
    #   Specifying a parameter type isn't required when updating a
    #   parameter. You must specify a parameter type when creating a
    #   parameter.
    #   @return [String]
    #
    # @!attribute [rw] key_id
    #   The Key Management Service (KMS) ID that you want to use to encrypt
    #   a parameter. Use a custom key for better security. Required for
    #   parameters that use the `SecureString` data type.
    #
    #   If you don't specify a key ID, the system uses the default key
    #   associated with your Amazon Web Services account which is not as
    #   secure as using a custom key.
    #
    #   * To use a custom KMS key, choose the `SecureString` data type with
    #     the `Key ID` parameter.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] overwrite
    #   Overwrite an existing parameter. The default value is `false`.
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
    #   parameter. In this case, you could specify the following key-value
    #   pairs:
    #
    #   * `Key=Resource,Value=S3bucket`
    #
    #   * `Key=OS,Value=Windows`
    #
    #   * `Key=ParameterType,Value=LicenseKey`
    #
    #   <note markdown="1"> To add tags to an existing Systems Manager parameter, use the
    #   AddTagsToResource operation.
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
    #   maximum of 10,000 standard parameters for each Region in an Amazon
    #   Web Services account. Standard parameters are offered at no
    #   additional cost.
    #
    #   Advanced parameters have a content size limit of 8 KB and can be
    #   configured to use parameter policies. You can create a maximum of
    #   100,000 advanced parameters for each Region in an Amazon Web
    #   Services account. Advanced parameters incur a charge. For more
    #   information, see [Standard and advanced parameter tiers][1] in the
    #   *Amazon Web Services Systems Manager User Guide*.
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
    #   However, if you don't specify a tier in a request, Parameter Store
    #   assigns the tier based on the current Parameter Store default tier
    #   configuration.
    #
    #   The default tier when you begin using Parameter Store is the
    #   standard-parameter tier. If you use the advanced-parameter tier, you
    #   can specify one of the following as the default:
    #
    #   * **Advanced**: With this option, Parameter Store evaluates all
    #     requests as advanced parameters.
    #
    #   * **Intelligent-Tiering**: With this option, Parameter Store
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
    #   * More than 10,000 parameters already exist in your Amazon Web
    #     Services account in the current Amazon Web Services Region.
    #
    #   For more information about configuring the default tier option, see
    #   [Specifying a default parameter tier][2] in the *Amazon Web Services
    #   Systems Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-advanced-parameters.html
    #   [2]: https://docs.aws.amazon.com/systems-manager/latest/userguide/ps-default-tier.html
    #   @return [String]
    #
    # @!attribute [rw] policies
    #   One or more policies to apply to a parameter. This operation takes a
    #   JSON array. Parameter Store, a capability of Amazon Web Services
    #   Systems Manager supports the following policy types:
    #
    #   Expiration: This policy deletes the parameter after it expires. When
    #   you create the policy, you specify the expiration date. You can
    #   update the expiration date and time by updating the policy. Updating
    #   the *parameter* doesn't affect the expiration date and time. When
    #   the expiration time is reached, Parameter Store deletes the
    #   parameter.
    #
    #   ExpirationNotification: This policy initiates an event in Amazon
    #   CloudWatch Events that notifies you about the expiration. By using
    #   this policy, you can receive notification before or after the
    #   expiration time is reached, in units of days or hours.
    #
    #   NoChangeNotification: This policy initiates a CloudWatch Events
    #   event if a parameter hasn't been modified for a specified period of
    #   time. This policy type is useful when, for example, a secret needs
    #   to be changed within a period of time, but it hasn't been changed.
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
    #   plain text and Amazon Machine Image (AMI) IDs.
    #
    #   **The following data type values are supported.**
    #
    #   * `text`
    #
    #   * `aws:ec2:image`
    #
    #   * `aws:ssm:integration`
    #
    #   When you create a `String` parameter and specify `aws:ec2:image`,
    #   Amazon Web Services Systems Manager validates the parameter value is
    #   in the required format, such as `ami-12345abcdeEXAMPLE`, and that
    #   the specified AMI is available in your Amazon Web Services account.
    #
    #   <note markdown="1"> If the action is successful, the service sends back an HTTP 200
    #   response which indicates a successful `PutParameter` call for all
    #   cases except for data type `aws:ec2:image`. If you call
    #   `PutParameter` with `aws:ec2:image` data type, a successful HTTP 200
    #   response does not guarantee that your parameter was successfully
    #   created or updated. The `aws:ec2:image` value is validated
    #   asynchronously, and the `PutParameter` call returns before the
    #   validation is complete. If you submit an invalid AMI value, the
    #   PutParameter operation will return success, but the asynchronous
    #   validation will fail and the parameter will not be created or
    #   updated. To monitor whether your `aws:ec2:image` parameters are
    #   created successfully, see [Setting up notifications or trigger
    #   actions based on Parameter Store events][1]. For more information
    #   about AMI format validation , see [Native parameter support for
    #   Amazon Machine Image (AMI) IDs][2].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-paramstore-cwe.html
    #   [2]: https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-ec2-aliases.html
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
      SENSITIVE = [:value]
      include Aws::Structure
    end

    # @!attribute [rw] version
    #   The new version number of a parameter. If you edit a parameter
    #   value, Parameter Store automatically creates a new version and
    #   assigns this new version a unique ID. You can reference a parameter
    #   version ID in API operations or in Systems Manager documents (SSM
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Amazon Resource Name (ARN) of the resource to which you want to
    #   attach a policy.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   A policy you want to associate with a resource.
    #   @return [String]
    #
    # @!attribute [rw] policy_id
    #   The policy ID.
    #   @return [String]
    #
    # @!attribute [rw] policy_hash
    #   ID of the current policy version. The hash helps to prevent a
    #   situation where multiple users attempt to overwrite a policy. You
    #   must provide this hash when updating or deleting a policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/PutResourcePolicyRequest AWS API Documentation
    #
    class PutResourcePolicyRequest < Struct.new(
      :resource_arn,
      :policy,
      :policy_id,
      :policy_hash)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_id
    #   The policy ID. To update a policy, you must specify `PolicyId` and
    #   `PolicyHash`.
    #   @return [String]
    #
    # @!attribute [rw] policy_hash
    #   ID of the current policy version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/PutResourcePolicyResponse AWS API Documentation
    #
    class PutResourcePolicyResponse < Struct.new(
      :policy_id,
      :policy_hash)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] baseline_id
    #   The ID of the patch baseline that should be the default patch
    #   baseline.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/RegisterDefaultPatchBaselineRequest AWS API Documentation
    #
    class RegisterDefaultPatchBaselineRequest < Struct.new(
      :baseline_id)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] baseline_id
    #   The ID of the patch baseline to register with the patch group.
    #   @return [String]
    #
    # @!attribute [rw] patch_group
    #   The name of the patch group to be registered with the patch
    #   baseline.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/RegisterPatchBaselineForPatchGroupRequest AWS API Documentation
    #
    class RegisterPatchBaselineForPatchGroupRequest < Struct.new(
      :baseline_id,
      :patch_group)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   the managed nodes to run commands on when the maintenance window
    #   runs.
    #
    #   <note markdown="1"> If a single maintenance window task is registered with multiple
    #   targets, its task invocations occur sequentially and not in
    #   parallel. If your task must run on multiple targets at the same
    #   time, register a task for each target individually and assign each
    #   task the same priority level.
    #
    #    </note>
    #
    #   You can specify targets using managed node IDs, resource group
    #   names, or tags that have been applied to managed nodes.
    #
    #   **Example 1**: Specify managed node IDs
    #
    #   `Key=InstanceIds,Values=<instance-id-1>,<instance-id-2>,<instance-id-3>`
    #
    #   **Example 2**: Use tag key-pairs applied to managed nodes
    #
    #   `Key=tag:<my-tag-key>,Values=<my-tag-value-1>,<my-tag-value-2>`
    #
    #   **Example 3**: Use tag-keys applied to managed nodes
    #
    #   `Key=tag-key,Values=<my-tag-key-1>,<my-tag-key-2>`
    #
    #   **Example 4**: Use resource group names
    #
    #   `Key=resource-groups:Name,Values=<resource-group-name>`
    #
    #   **Example 5**: Use filters for resource group types
    #
    #   `Key=resource-groups:ResourceTypeFilters,Values=<resource-type-1>,<resource-type-2>`
    #
    #   <note markdown="1"> For `Key=resource-groups:ResourceTypeFilters`, specify resource
    #   types in the following format
    #
    #    `Key=resource-groups:ResourceTypeFilters,Values=AWS::EC2::INSTANCE,AWS::EC2::VPC`
    #
    #    </note>
    #
    #   For more information about these examples formats, including the
    #   best use case for each one, see [Examples: Register targets with a
    #   maintenance window][1] in the *Amazon Web Services Systems Manager
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/mw-cli-tutorial-targets-examples.html
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] owner_information
    #   User-provided value that will be included in any Amazon CloudWatch
    #   Events events raised while running tasks for these targets in this
    #   maintenance window.
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
      SENSITIVE = [:owner_information, :description]
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] window_id
    #   The ID of the maintenance window the task should be added to.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The targets (either managed nodes or maintenance window targets).
    #
    #   <note markdown="1"> One or more targets must be specified for maintenance window Run
    #   Command-type tasks. Depending on the task, targets are optional for
    #   other maintenance window task types (Automation, Lambda, and Step
    #   Functions). For more information about running tasks that don't
    #   specify targets, see [Registering maintenance window tasks without
    #   targets][1] in the *Amazon Web Services Systems Manager User Guide*.
    #
    #    </note>
    #
    #   Specify managed nodes using the following format:
    #
    #   `Key=InstanceIds,Values=<instance-id-1>,<instance-id-2>`
    #
    #   Specify maintenance window targets using the following format:
    #
    #   `Key=WindowTargetIds,Values=<window-target-id-1>,<window-target-id-2>`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] task_arn
    #   The ARN of the task to run.
    #   @return [String]
    #
    # @!attribute [rw] service_role_arn
    #   The Amazon Resource Name (ARN) of the IAM service role for Amazon
    #   Web Services Systems Manager to assume when running a maintenance
    #   window task. If you do not specify a service role ARN, Systems
    #   Manager uses your account's service-linked role. If no
    #   service-linked role for Systems Manager exists in your account, it
    #   is created when you run `RegisterTaskWithMaintenanceWindow`.
    #
    #   For more information, see the following topics in the in the *Amazon
    #   Web Services Systems Manager User Guide*:
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
    #   The maximum number of targets this task can be run for, in parallel.
    #
    #   <note markdown="1"> Although this element is listed as "Required: No", a value can be
    #   omitted only when you are registering or updating a [targetless
    #   task][1] You must provide a value in all other cases.
    #
    #    For maintenance window tasks without a target specified, you can't
    #   supply a value for this option. Instead, the system inserts a
    #   placeholder value of `1`. This value doesn't affect the running of
    #   your task.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html
    #   @return [String]
    #
    # @!attribute [rw] max_errors
    #   The maximum number of errors allowed before this task stops being
    #   scheduled.
    #
    #   <note markdown="1"> Although this element is listed as "Required: No", a value can be
    #   omitted only when you are registering or updating a [targetless
    #   task][1] You must provide a value in all other cases.
    #
    #    For maintenance window tasks without a target specified, you can't
    #   supply a value for this option. Instead, the system inserts a
    #   placeholder value of `1`. This value doesn't affect the running of
    #   your task.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html
    #   @return [String]
    #
    # @!attribute [rw] logging_info
    #   A structure containing information about an Amazon Simple Storage
    #   Service (Amazon S3) bucket to write managed node-level logs to.
    #
    #   <note markdown="1"> `LoggingInfo` has been deprecated. To specify an Amazon Simple
    #   Storage Service (Amazon S3) bucket to contain logs, instead use the
    #   `OutputS3BucketName` and `OutputS3KeyPrefix` options in the
    #   `TaskInvocationParameters` structure. For information about how
    #   Amazon Web Services Systems Manager handles these options for the
    #   supported maintenance window task types, see
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
    # @!attribute [rw] cutoff_behavior
    #   Indicates whether tasks should continue to run after the cutoff time
    #   specified in the maintenance windows is reached.
    #
    #   * `CONTINUE_TASK`: When the cutoff time is reached, any tasks that
    #     are running continue. The default value.
    #
    #   * `CANCEL_TASK`:
    #
    #     * For Automation, Lambda, Step Functions tasks: When the cutoff
    #       time is reached, any task invocations that are already running
    #       continue, but no new task invocations are started.
    #
    #     * For Run Command tasks: When the cutoff time is reached, the
    #       system sends a CancelCommand operation that attempts to cancel
    #       the command associated with the task. However, there is no
    #       guarantee that the command will be terminated and the underlying
    #       process stopped.
    #
    #     The status for tasks that are not completed is `TIMED_OUT`.
    #   @return [String]
    #
    # @!attribute [rw] alarm_configuration
    #   The CloudWatch alarm you want to apply to your maintenance window
    #   task.
    #   @return [Types::AlarmConfiguration]
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
      :client_token,
      :cutoff_behavior,
      :alarm_configuration)
      SENSITIVE = [:task_parameters, :description]
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Reserved for internal use.
    #
    # @!attribute [rw] key
    #   Reserved for internal use.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Reserved for internal use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/RegistrationMetadataItem AWS API Documentation
    #
    class RegistrationMetadataItem < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # An OpsItems that shares something in common with the current OpsItem.
    # For example, related OpsItems can include OpsItems with similar error
    # messages, impacted resources, or statuses for the impacted resource.
    #
    # @!attribute [rw] ops_item_id
    #   The ID of an OpsItem related to the current OpsItem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/RelatedOpsItem AWS API Documentation
    #
    class RelatedOpsItem < Struct.new(
      :ops_item_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_type
    #   The type of resource from which you want to remove a tag.
    #
    #   <note markdown="1"> The `ManagedInstance` type for this API operation is only for
    #   on-premises managed nodes. Specify the name of the managed node in
    #   the following format: `mi-ID_number `. For example,
    #   `mi-1a2b3c4d5e6f`.
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
    #   `Automation`: `example-c160-4567-8519-012345abcde`
    #
    #   PatchBaseline: pb-012345abcde
    #
    #   OpsMetadata object: `ResourceID` for tagging is created from the
    #   Amazon Resource Name (ARN) for the object. Specifically,
    #   `ResourceID` is created from the strings that come after the word
    #   `opsmetadata` in the ARN. For example, an OpsMetadata object with an
    #   ARN of
    #   `arn:aws:ssm:us-east-2:1234567890:opsmetadata/aws/ssm/MyGroup/appmanager`
    #   has a `ResourceID` of either `aws/ssm/MyGroup/appmanager` or
    #   `/aws/ssm/MyGroup/appmanager`.
    #
    #   For the Document and Parameter values, use the name of the resource.
    #
    #   <note markdown="1"> The `ManagedInstance` type for this API operation is only for
    #   on-premises managed nodes. Specify the name of the managed node in
    #   the following format: mi-ID\_number. For example, mi-1a2b3c4d5e6f.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/RemoveTagsFromResourceResult AWS API Documentation
    #
    class RemoveTagsFromResourceResult < Aws::EmptyStructure; end

    # The request body of the ResetServiceSetting API operation.
    #
    # @!attribute [rw] setting_id
    #   The Amazon Resource Name (ARN) of the service setting to reset. The
    #   setting ID can be one of the following.
    #
    #   * `/ssm/managed-instance/default-ec2-instance-management-role`
    #
    #   * `/ssm/automation/customer-script-log-destination`
    #
    #   * `/ssm/automation/customer-script-log-group-name`
    #
    #   * `/ssm/documents/console/public-sharing-permission`
    #
    #   * `/ssm/managed-instance/activation-tier`
    #
    #   * `/ssm/opsinsights/opscenter`
    #
    #   * `/ssm/parameter-store/default-parameter-tier`
    #
    #   * `/ssm/parameter-store/high-throughput-enabled`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ResetServiceSettingRequest AWS API Documentation
    #
    class ResetServiceSettingRequest < Struct.new(
      :setting_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result body of the ResetServiceSetting API operation.
    #
    # @!attribute [rw] service_setting
    #   The current, effective service setting after calling the
    #   ResetServiceSetting API operation.
    #   @return [Types::ServiceSetting]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ResetServiceSettingResult AWS API Documentation
    #
    class ResetServiceSettingResult < Struct.new(
      :service_setting)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the `AwsOrganizationsSource` resource data sync
    # source. A sync source of this type can synchronize data from
    # Organizations or, if an Amazon Web Services organization isn't
    # present, from multiple Amazon Web Services Regions.
    #
    # @!attribute [rw] organization_source_type
    #   If an Amazon Web Services organization is present, this is either
    #   `OrganizationalUnits` or `EntireOrganization`. For
    #   `OrganizationalUnits`, the data is aggregated from a set of
    #   organization units. For `EntireOrganization`, the data is aggregated
    #   from the entire Amazon Web Services organization.
    #   @return [String]
    #
    # @!attribute [rw] organizational_units
    #   The Organizations organization units included in the sync.
    #   @return [Array<Types::ResourceDataSyncOrganizationalUnit>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ResourceDataSyncAwsOrganizationsSource AWS API Documentation
    #
    class ResourceDataSyncAwsOrganizationsSource < Struct.new(
      :organization_source_type,
      :organizational_units)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Synchronize Amazon Web Services Systems Manager Inventory data from
    # multiple Amazon Web Services accounts defined in Organizations to a
    # centralized Amazon S3 bucket. Data is synchronized to individual key
    # prefixes in the central bucket. Each key prefix represents a different
    # Amazon Web Services account ID.
    #
    # @!attribute [rw] destination_data_sharing_type
    #   The sharing data type. Only `Organization` is supported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ResourceDataSyncDestinationDataSharing AWS API Documentation
    #
    class ResourceDataSyncDestinationDataSharing < Struct.new(
      :destination_data_sharing_type)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a resource data sync configuration, including its
    # current status and last successful sync.
    #
    # @!attribute [rw] sync_name
    #   The name of the resource data sync.
    #   @return [String]
    #
    # @!attribute [rw] sync_type
    #   The type of resource data sync. If `SyncType` is
    #   `SyncToDestination`, then the resource data sync synchronizes data
    #   to an S3 bucket. If the `SyncType` is `SyncFromSource` then the
    #   resource data sync synchronizes data from Organizations or from
    #   multiple Amazon Web Services Regions.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified sync name wasn't found.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The Organizations organizational unit data source for the sync.
    #
    # @!attribute [rw] organizational_unit_id
    #   The Organizations unit ID data source for the sync.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ResourceDataSyncOrganizationalUnit AWS API Documentation
    #
    class ResourceDataSyncOrganizationalUnit < Struct.new(
      :organizational_unit_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the target S3 bucket for the resource data sync.
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
    #   The Amazon Web Services Region with the S3 bucket targeted by the
    #   resource data sync.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the source of the data included in the resource data
    # sync.
    #
    # @!attribute [rw] source_type
    #   The type of data source for the resource data sync. `SourceType` is
    #   either `AwsOrganizations` (if an organization is present in
    #   Organizations) or `SingleAccountMultiRegions`.
    #   @return [String]
    #
    # @!attribute [rw] aws_organizations_source
    #   Information about the `AwsOrganizationsSource` resource data sync
    #   source. A sync source of this type can synchronize data from
    #   Organizations.
    #   @return [Types::ResourceDataSyncAwsOrganizationsSource]
    #
    # @!attribute [rw] source_regions
    #   The `SyncSource` Amazon Web Services Regions included in the
    #   resource data sync.
    #   @return [Array<String>]
    #
    # @!attribute [rw] include_future_regions
    #   Whether to automatically synchronize and aggregate data from new
    #   Amazon Web Services Regions when those Regions come online.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_all_ops_data_sources
    #   When you create a resource data sync, if you choose one of the
    #   Organizations options, then Systems Manager automatically enables
    #   all OpsData sources in the selected Amazon Web Services Regions for
    #   all Amazon Web Services accounts in your organization (or in the
    #   selected organization units). For more information, see [About
    #   multiple account and Region resource data syncs][1] in the *Amazon
    #   Web Services Systems Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/Explorer-resouce-data-sync-multiple-accounts-and-regions.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ResourceDataSyncSource AWS API Documentation
    #
    class ResourceDataSyncSource < Struct.new(
      :source_type,
      :aws_organizations_source,
      :source_regions,
      :include_future_regions,
      :enable_all_ops_data_sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data type name for including resource data sync state. There are
    # four sync states:
    #
    # `OrganizationNotExists` (Your organization doesn't exist)
    #
    # `NoPermissions` (The system can't locate the service-linked role.
    # This role is automatically created when a user creates a resource data
    # sync in Amazon Web Services Systems Manager Explorer.)
    #
    # `InvalidOrganizationalUnit` (You specified or selected an invalid unit
    # in the resource data sync configuration.)
    #
    # `TrustedAccessDisabled` (You disabled Systems Manager access in the
    # organization in Organizations.)
    #
    # @!attribute [rw] source_type
    #   The type of data source for the resource data sync. `SourceType` is
    #   either `AwsOrganizations` (if an organization is present in
    #   Organizations) or `singleAccountMultiRegions`.
    #   @return [String]
    #
    # @!attribute [rw] aws_organizations_source
    #   The field name in `SyncSource` for the
    #   `ResourceDataSyncAwsOrganizationsSource` type.
    #   @return [Types::ResourceDataSyncAwsOrganizationsSource]
    #
    # @!attribute [rw] source_regions
    #   The `SyncSource` Amazon Web Services Regions included in the
    #   resource data sync.
    #   @return [Array<String>]
    #
    # @!attribute [rw] include_future_regions
    #   Whether to automatically synchronize and aggregate data from new
    #   Amazon Web Services Regions when those Regions come online.
    #   @return [Boolean]
    #
    # @!attribute [rw] state
    #   The data type name for including resource data sync state. There are
    #   four sync states:
    #
    #   `OrganizationNotExists`: Your organization doesn't exist.
    #
    #   `NoPermissions`: The system can't locate the service-linked role.
    #   This role is automatically created when a user creates a resource
    #   data sync in Explorer.
    #
    #   `InvalidOrganizationalUnit`: You specified or selected an invalid
    #   unit in the resource data sync configuration.
    #
    #   `TrustedAccessDisabled`: You disabled Systems Manager access in the
    #   organization in Organizations.
    #   @return [String]
    #
    # @!attribute [rw] enable_all_ops_data_sources
    #   When you create a resource data sync, if you choose one of the
    #   Organizations options, then Systems Manager automatically enables
    #   all OpsData sources in the selected Amazon Web Services Regions for
    #   all Amazon Web Services accounts in your organization (or in the
    #   selected organization units). For more information, see [About
    #   multiple account and Region resource data syncs][1] in the *Amazon
    #   Web Services Systems Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/Explorer-resouce-data-sync-multiple-accounts-and-regions.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ResourceDataSyncSourceWithState AWS API Documentation
    #
    class ResourceDataSyncSourceWithState < Struct.new(
      :source_type,
      :aws_organizations_source,
      :source_regions,
      :include_future_regions,
      :state,
      :enable_all_ops_data_sources)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Error returned when the caller has exceeded the default resource
    # quotas. For example, too many maintenance windows or patch baselines
    # have been created.
    #
    # For information about resource quotas in Systems Manager, see [Systems
    # Manager service quotas][1] in the *Amazon Web Services General
    # Reference*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/general/latest/gr/ssm.html#limits_ssm
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ResourceLimitExceededException AWS API Documentation
    #
    class ResourceLimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The hash provided in the call doesn't match the stored hash. This
    # exception is thrown when trying to update an obsolete policy version
    # or when multiple requests to update a policy are sent.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ResourcePolicyConflictException AWS API Documentation
    #
    class ResourcePolicyConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more parameters specified for the call aren't valid. Verify
    # the parameters and their values and try again.
    #
    # @!attribute [rw] parameter_names
    #   @return [Array<String>]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ResourcePolicyInvalidParameterException AWS API Documentation
    #
    class ResourcePolicyInvalidParameterException < Struct.new(
      :parameter_names,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The PutResourcePolicy API action enforces two limits. A policy can't
    # be greater than 1024 bytes in size. And only one policy can be
    # attached to `OpsItemGroup`. Verify these limits and try again.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ResourcePolicyLimitExceededException AWS API Documentation
    #
    class ResourcePolicyLimitExceededException < Struct.new(
      :limit,
      :limit_type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The inventory item result attribute.
    #
    # @!attribute [rw] type_name
    #   Name of the inventory item type. Valid value:
    #   `AWS:InstanceInformation`. Default Value: `AWS:InstanceInformation`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ResultAttribute AWS API Documentation
    #
    class ResultAttribute < Struct.new(
      :type_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   The ID of the disconnected session to resume.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ResumeSessionRequest AWS API Documentation
    #
    class ResumeSessionRequest < Struct.new(
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   The ID of the session.
    #   @return [String]
    #
    # @!attribute [rw] token_value
    #   An encrypted token value containing session and caller information.
    #   Used to authenticate the connection to the managed node.
    #   @return [String]
    #
    # @!attribute [rw] stream_url
    #   A URL back to SSM Agent on the managed node that the Session Manager
    #   client uses to send commands and receive output from the managed
    #   node. Format:
    #   `wss://ssmmessages.region.amazonaws.com/v1/data-channel/session-id?stream=(input|output)`.
    #
    #   **region** represents the Region identifier for an Amazon Web
    #   Services Region supported by Amazon Web Services Systems Manager,
    #   such as `us-east-2` for the US East (Ohio) Region. For a list of
    #   supported **region** values, see the **Region** column in [Systems
    #   Manager service endpoints][1] in the *Amazon Web Services General
    #   Reference*.
    #
    #   **session-id** represents the ID of a Session Manager session, such
    #   as `1a2b3c4dEXAMPLE`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/ssm.html#ssm_region
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ResumeSessionResponse AWS API Documentation
    #
    class ResumeSessionResponse < Struct.new(
      :session_id,
      :token_value,
      :stream_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the result of a document review request.
    #
    # @!attribute [rw] reviewed_time
    #   The time that the reviewer took action on the document review
    #   request.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the document review request.
    #   @return [String]
    #
    # @!attribute [rw] reviewer
    #   The reviewer assigned to take action on the document review request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ReviewInformation AWS API Documentation
    #
    class ReviewInformation < Struct.new(
      :reviewed_time,
      :status,
      :reviewer)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an Automation runbook used in a runbook workflow in
    # Change Manager.
    #
    # <note markdown="1"> The Automation runbooks specified for the runbook workflow can't run
    # until all required approvals for the change request have been
    # received.
    #
    #  </note>
    #
    # @!attribute [rw] document_name
    #   The name of the Automation runbook used in a runbook workflow.
    #   @return [String]
    #
    # @!attribute [rw] document_version
    #   The version of the Automation runbook used in a runbook workflow.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The key-value map of execution parameters, which were supplied when
    #   calling `StartChangeRequestExecution`.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] target_parameter_name
    #   The name of the parameter used as the target resource for the
    #   rate-controlled runbook workflow. Required if you specify `Targets`.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   A key-value mapping to target resources that the runbook operation
    #   performs tasks on. Required if you specify `TargetParameterName`.
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] target_maps
    #   A key-value mapping of runbook parameters to target resources. Both
    #   Targets and TargetMaps can't be specified together.
    #   @return [Array<Hash<String,Array<String>>>]
    #
    # @!attribute [rw] max_concurrency
    #   The `MaxConcurrency` value specified by the user when the operation
    #   started, indicating the maximum number of resources that the runbook
    #   operation can run on at the same time.
    #   @return [String]
    #
    # @!attribute [rw] max_errors
    #   The `MaxErrors` value specified by the user when the execution
    #   started, indicating the maximum number of errors that can occur
    #   during the operation before the updates are stopped or rolled back.
    #   @return [String]
    #
    # @!attribute [rw] target_locations
    #   Information about the Amazon Web Services Regions and Amazon Web
    #   Services accounts targeted by the current Runbook operation.
    #   @return [Array<Types::TargetLocation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/Runbook AWS API Documentation
    #
    class Runbook < Struct.new(
      :document_name,
      :document_version,
      :parameters,
      :target_parameter_name,
      :targets,
      :target_maps,
      :max_concurrency,
      :max_errors,
      :target_locations)
      SENSITIVE = []
      include Aws::Structure
    end

    # An S3 bucket where you want to store the results of this request.
    #
    # @!attribute [rw] output_s3_region
    #   The Amazon Web Services Region of the S3 bucket.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # A URL for the Amazon Web Services Systems Manager (Systems Manager)
    # bucket where you want to store the results of this request.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/SendAutomationSignalResult AWS API Documentation
    #
    class SendAutomationSignalResult < Aws::EmptyStructure; end

    # @!attribute [rw] instance_ids
    #   The IDs of the managed nodes where the command should run.
    #   Specifying managed node IDs is most useful when you are targeting a
    #   limited number of managed nodes, though you can specify up to 50
    #   IDs.
    #
    #   To target a larger number of managed nodes, or if you prefer not to
    #   list individual node IDs, we recommend using the `Targets` option
    #   instead. Using `Targets`, which accepts tag key-value pairs to
    #   identify the managed nodes to send commands to, you can a send
    #   command to tens, hundreds, or thousands of nodes at once.
    #
    #   For more information about how to use targets, see [Using targets
    #   and rate controls to send commands to a fleet][1] in the *Amazon Web
    #   Services Systems Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] targets
    #   An array of search criteria that targets managed nodes using a
    #   `Key,Value` combination that you specify. Specifying targets is most
    #   useful when you want to send a command to a large number of managed
    #   nodes at once. Using `Targets`, which accepts tag key-value pairs to
    #   identify managed nodes, you can send a command to tens, hundreds, or
    #   thousands of nodes at once.
    #
    #   To send a command to a smaller number of managed nodes, you can use
    #   the `InstanceIds` option instead.
    #
    #   For more information about how to use targets, see [Sending commands
    #   to a fleet][1] in the *Amazon Web Services Systems Manager User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] document_name
    #   The name of the Amazon Web Services Systems Manager document (SSM
    #   document) to run. This can be a public document or a custom
    #   document. To run a shared document belonging to another account,
    #   specify the document Amazon Resource Name (ARN). For more
    #   information about how to use shared documents, see [Using shared SSM
    #   documents][1] in the *Amazon Web Services Systems Manager User
    #   Guide*.
    #
    #   <note markdown="1"> If you specify a document name or ARN that hasn't been shared with
    #   your account, you receive an `InvalidDocument` error.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/ssm-using-shared.html
    #   @return [String]
    #
    # @!attribute [rw] document_version
    #   The SSM document version to use in the request. You can specify
    #   $DEFAULT, $LATEST, or a specific version number. If you run commands
    #   by using the Command Line Interface (Amazon Web Services CLI), then
    #   you must escape the first two options by using a backslash. If you
    #   specify a version number, then you don't need to use the backslash.
    #   For example:
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
    #   If this time is reached and the command hasn't already started
    #   running, it won't run.
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
    #   Amazon Web Services Region of the S3 bucket.
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
    #   (Optional) The maximum number of managed nodes that are allowed to
    #   run the command at the same time. You can specify a number such as
    #   10 or a percentage such as 10%. The default value is `50`. For more
    #   information about how to use `MaxConcurrency`, see [Using
    #   concurrency controls][1] in the *Amazon Web Services Systems Manager
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html#send-commands-velocity
    #   @return [String]
    #
    # @!attribute [rw] max_errors
    #   The maximum number of errors allowed without the command failing.
    #   When the command fails one more time beyond the value of
    #   `MaxErrors`, the systems stops sending the command to additional
    #   targets. You can specify a number like 10 or a percentage like 10%.
    #   The default value is `0`. For more information about how to use
    #   `MaxErrors`, see [Using error controls][1] in the *Amazon Web
    #   Services Systems Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html#send-commands-maxerrors
    #   @return [String]
    #
    # @!attribute [rw] service_role_arn
    #   The ARN of the Identity and Access Management (IAM) service role to
    #   use to publish Amazon Simple Notification Service (Amazon SNS)
    #   notifications for Run Command commands.
    #
    #   This role must provide the `sns:Publish` permission for your
    #   notification topic. For information about creating and using this
    #   service role, see [Monitoring Systems Manager status changes using
    #   Amazon SNS notifications][1] in the *Amazon Web Services Systems
    #   Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/monitoring-sns-notifications.html
    #   @return [String]
    #
    # @!attribute [rw] notification_config
    #   Configurations for sending notifications.
    #   @return [Types::NotificationConfig]
    #
    # @!attribute [rw] cloud_watch_output_config
    #   Enables Amazon Web Services Systems Manager to send Run Command
    #   output to Amazon CloudWatch Logs. Run Command is a capability of
    #   Amazon Web Services Systems Manager.
    #   @return [Types::CloudWatchOutputConfig]
    #
    # @!attribute [rw] alarm_configuration
    #   The CloudWatch alarm you want to apply to your command.
    #   @return [Types::AlarmConfiguration]
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
      :cloud_watch_output_config,
      :alarm_configuration)
      SENSITIVE = [:parameters]
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The service setting data structure.
    #
    # `ServiceSetting` is an account-level setting for an Amazon Web
    # Services service. This setting defines how a user interacts with or
    # uses a service or a feature of a service. For example, if an Amazon
    # Web Services service charges money to the account based on feature or
    # service usage, then the Amazon Web Services service team might create
    # a default setting of "false". This means the user can't use this
    # feature unless they change the setting to "true" and intentionally
    # opt in for a paid feature.
    #
    # Services map a `SettingId` object to a setting value. Amazon Web
    # Services services teams define the default value for a `SettingId`.
    # You can't create a new `SettingId`, but you can overwrite the default
    # value if you have the `ssm:UpdateServiceSetting` permission for the
    # setting. Use the UpdateServiceSetting API operation to change the
    # default setting. Or, use the ResetServiceSetting to change the value
    # back to the original value defined by the Amazon Web Services service
    # team.
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
    #     the Amazon Web Services service team.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified service setting wasn't found. Either the service name
    # or the setting hasn't been provisioned by the Amazon Web Services
    # service team.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ServiceSettingNotFound AWS API Documentation
    #
    class ServiceSettingNotFound < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a Session Manager connection to a managed node.
    #
    # @!attribute [rw] session_id
    #   The ID of the session.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The managed node that the Session Manager session connected to.
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
    #   The ID of the Amazon Web Services user that started the session.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for connecting to the instance.
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
    # @!attribute [rw] max_session_duration
    #   The maximum duration of a session before it terminates.
    #   @return [String]
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
      :reason,
      :details,
      :output_url,
      :max_session_duration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a filter for Session Manager information.
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
    #   * Target: Specify a managed node to which session connections have
    #     been made.
    #
    #   * Owner: Specify an Amazon Web Services user to see a list of
    #     sessions started by that user.
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
    #
    #   * SessionId: Specify a session ID to return details about the
    #     session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/SessionFilter AWS API Documentation
    #
    class SessionFilter < Struct.new(
      :key,
      :value)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of managed nodes found for each patch severity level
    # defined in the request filter.
    #
    # @!attribute [rw] critical_count
    #   The total number of resources or compliance items that have a
    #   severity level of `Critical`. Critical severity is determined by the
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] association_ids
    #   The association IDs that you want to run immediately and only one
    #   time.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/StartAssociationsOnceRequest AWS API Documentation
    #
    class StartAssociationsOnceRequest < Struct.new(
      :association_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/StartAssociationsOnceResult AWS API Documentation
    #
    class StartAssociationsOnceResult < Aws::EmptyStructure; end

    # @!attribute [rw] document_name
    #   The name of the SSM document to run. This can be a public document
    #   or a custom document. To run a shared document belonging to another
    #   account, specify the document ARN. For more information about how to
    #   use shared documents, see [Using shared SSM documents][1] in the
    #   *Amazon Web Services Systems Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/ssm-using-shared.html
    #   @return [String]
    #
    # @!attribute [rw] document_version
    #   The version of the Automation runbook to use for this execution.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A key-value map of execution parameters, which match the declared
    #   parameters in the Automation runbook.
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
    #   Targets and TargetMaps can't be specified together.
    #   @return [Array<Hash<String,Array<String>>>]
    #
    # @!attribute [rw] max_concurrency
    #   The maximum number of targets allowed to run this task in parallel.
    #   You can specify a number, such as 10, or a percentage, such as 10%.
    #   The default value is `10`.
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
    #   A location is a combination of Amazon Web Services Regions and/or
    #   Amazon Web Services accounts where you want to run the automation.
    #   Use this operation to start an automation in multiple Amazon Web
    #   Services Regions and multiple Amazon Web Services accounts. For more
    #   information, see [Running Automation workflows in multiple Amazon
    #   Web Services Regions and Amazon Web Services accounts][1] in the
    #   *Amazon Web Services Systems Manager User Guide*.
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
    #   specify the following key-value pairs:
    #
    #   * `Key=environment,Value=test`
    #
    #   * `Key=OS,Value=Windows`
    #
    #   <note markdown="1"> To add tags to an existing automation, use the AddTagsToResource
    #   operation.
    #
    #    </note>
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] alarm_configuration
    #   The CloudWatch alarm you want to apply to your automation.
    #   @return [Types::AlarmConfiguration]
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
      :tags,
      :alarm_configuration)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scheduled_time
    #   The date and time specified in the change request to run the
    #   Automation runbooks.
    #
    #   <note markdown="1"> The Automation runbooks specified for the runbook workflow can't
    #   run until all required approvals for the change request have been
    #   received.
    #
    #    </note>
    #   @return [Time]
    #
    # @!attribute [rw] document_name
    #   The name of the change template document to run during the runbook
    #   workflow.
    #   @return [String]
    #
    # @!attribute [rw] document_version
    #   The version of the change template document to run during the
    #   runbook workflow.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A key-value map of parameters that match the declared parameters in
    #   the change template document.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] change_request_name
    #   The name of the change request associated with the runbook workflow
    #   to be run.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The user-provided idempotency token. The token must be unique, is
    #   case insensitive, enforces the UUID format, and can't be reused.
    #   @return [String]
    #
    # @!attribute [rw] auto_approve
    #   Indicates whether the change request can be approved automatically
    #   without the need for manual approvals.
    #
    #   If `AutoApprovable` is enabled in a change template, then setting
    #   `AutoApprove` to `true` in `StartChangeRequestExecution` creates a
    #   change request that bypasses approver review.
    #
    #   <note markdown="1"> Change Calendar restrictions are not bypassed in this scenario. If
    #   the state of an associated calendar is `CLOSED`, change freeze
    #   approvers must still grant permission for this change request to
    #   run. If they don't, the change won't be processed until the
    #   calendar state is again `OPEN`.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] runbooks
    #   Information about the Automation runbooks that are run during the
    #   runbook workflow.
    #
    #   <note markdown="1"> The Automation runbooks specified for the runbook workflow can't
    #   run until all required approvals for the change request have been
    #   received.
    #
    #    </note>
    #   @return [Array<Types::Runbook>]
    #
    # @!attribute [rw] tags
    #   Optional metadata that you assign to a resource. You can specify a
    #   maximum of five tags for a change request. Tags enable you to
    #   categorize a resource in different ways, such as by purpose, owner,
    #   or environment. For example, you might want to tag a change request
    #   to identify an environment or target Amazon Web Services Region. In
    #   this case, you could specify the following key-value pairs:
    #
    #   * `Key=Environment,Value=Production`
    #
    #   * `Key=Region,Value=us-east-2`
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] scheduled_end_time
    #   The time that the requester expects the runbook workflow related to
    #   the change request to complete. The time is an estimate only that
    #   the requester provides for reviewers.
    #   @return [Time]
    #
    # @!attribute [rw] change_details
    #   User-provided details about the change. If no details are provided,
    #   content specified in the **Template information** section of the
    #   associated change template is added.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/StartChangeRequestExecutionRequest AWS API Documentation
    #
    class StartChangeRequestExecutionRequest < Struct.new(
      :scheduled_time,
      :document_name,
      :document_version,
      :parameters,
      :change_request_name,
      :client_token,
      :auto_approve,
      :runbooks,
      :tags,
      :scheduled_end_time,
      :change_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] automation_execution_id
    #   The unique ID of a runbook workflow operation. (A runbook workflow
    #   is a type of Automation operation.)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/StartChangeRequestExecutionResult AWS API Documentation
    #
    class StartChangeRequestExecutionResult < Struct.new(
      :automation_execution_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] target
    #   The managed node to connect to for the session.
    #   @return [String]
    #
    # @!attribute [rw] document_name
    #   The name of the SSM document you want to use to define the type of
    #   session, input parameters, or preferences for the session. For
    #   example, `SSM-SessionManagerRunShell`. You can call the GetDocument
    #   API to verify the document exists before attempting to start a
    #   session. If no document name is provided, a shell to the managed
    #   node is launched by default. For more information, see [Start a
    #   session][1] in the *Amazon Web Services Systems Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-sessions-start.html
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for connecting to the instance. This value is included in
    #   the details for the Amazon CloudWatch Events event created when you
    #   start the session.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The values you want to specify for the parameters defined in the
    #   Session document.
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/StartSessionRequest AWS API Documentation
    #
    class StartSessionRequest < Struct.new(
      :target,
      :document_name,
      :reason,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   The ID of the session.
    #   @return [String]
    #
    # @!attribute [rw] token_value
    #   An encrypted token value containing session and caller information.
    #   This token is used to authenticate the connection to the managed
    #   node, and is valid only long enough to ensure the connection is
    #   successful. Never share your session's token.
    #   @return [String]
    #
    # @!attribute [rw] stream_url
    #   A URL back to SSM Agent on the managed node that the Session Manager
    #   client uses to send commands and receive output from the node.
    #   Format:
    #   `wss://ssmmessages.region.amazonaws.com/v1/data-channel/session-id?stream=(input|output)`
    #
    #   **region** represents the Region identifier for an Amazon Web
    #   Services Region supported by Amazon Web Services Systems Manager,
    #   such as `us-east-2` for the US East (Ohio) Region. For a list of
    #   supported **region** values, see the **Region** column in [Systems
    #   Manager service endpoints][1] in the *Amazon Web Services General
    #   Reference*.
    #
    #   **session-id** represents the ID of a Session Manager session, such
    #   as `1a2b3c4dEXAMPLE`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/ssm.html#ssm_region
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/StartSessionResponse AWS API Documentation
    #
    class StartSessionResponse < Struct.new(
      :session_id,
      :token_value,
      :stream_url)
      SENSITIVE = []
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
    #   The action to take if the step fails. The default value is `Abort`.
    #   @return [String]
    #
    # @!attribute [rw] max_attempts
    #   The maximum number of tries to run the action of the step. The
    #   default value is `1`.
    #   @return [Integer]
    #
    # @!attribute [rw] execution_start_time
    #   If a step has begun execution, this contains the time the step
    #   started. If the step is in Pending status, this field isn't
    #   populated.
    #   @return [Time]
    #
    # @!attribute [rw] execution_end_time
    #   If a step has finished execution, this contains the time the
    #   execution ended. If the step hasn't yet concluded, this field
    #   isn't populated.
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
    #   The combination of Amazon Web Services Regions and Amazon Web
    #   Services accounts targeted by the current Automation execution.
    #   @return [Types::TargetLocation]
    #
    # @!attribute [rw] triggered_alarms
    #   The CloudWatch alarms that were invoked by the automation.
    #   @return [Array<Types::AlarmStateInformation>]
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
      :target_location,
      :triggered_alarms)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter to limit the amount of step execution information returned by
    # the call.
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata that you assign to your Amazon Web Services resources. Tags
    # enable you to categorize your resources in different ways, for
    # example, by purpose, owner, or environment. In Amazon Web Services
    # Systems Manager, you can apply tags to Systems Manager documents (SSM
    # documents), managed nodes, maintenance windows, parameters, patch
    # baselines, OpsItems, and OpsMetadata.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # An array of search criteria that targets managed nodes using a
    # key-value pair that you specify.
    #
    # <note markdown="1"> One or more targets must be specified for maintenance window Run
    # Command-type tasks. Depending on the task, targets are optional for
    # other maintenance window task types (Automation, Lambda, and Step
    # Functions). For more information about running tasks that don't
    # specify targets, see [Registering maintenance window tasks without
    # targets][1] in the *Amazon Web Services Systems Manager User Guide*.
    #
    #  </note>
    #
    # Supported formats include the following.
    #
    # * `Key=InstanceIds,Values=<instance-id-1>,<instance-id-2>,<instance-id-3>`
    #
    # * `Key=tag:<my-tag-key>,Values=<my-tag-value-1>,<my-tag-value-2>`
    #
    # * `Key=tag-key,Values=<my-tag-key-1>,<my-tag-key-2>`
    #
    # * **Run Command and Maintenance window targets only**:
    #   `Key=resource-groups:Name,Values=<resource-group-name>`
    #
    # * **Maintenance window targets only**:
    #   `Key=resource-groups:ResourceTypeFilters,Values=<resource-type-1>,<resource-type-2>`
    #
    # * **Automation targets only**:
    #   `Key=ResourceGroup;Values=<resource-group-name>`
    #
    # For example:
    #
    # * `Key=InstanceIds,Values=i-02573cafcfEXAMPLE,i-0471e04240EXAMPLE,i-07782c72faEXAMPLE`
    #
    # * `Key=tag:CostCenter,Values=CostCenter1,CostCenter2,CostCenter3`
    #
    # * `Key=tag-key,Values=Name,Instance-Type,CostCenter`
    #
    # * **Run Command and Maintenance window targets only**:
    #   `Key=resource-groups:Name,Values=ProductionResourceGroup`
    #
    #   This example demonstrates how to target all resources in the
    #   resource group **ProductionResourceGroup** in your maintenance
    #   window.
    #
    # * **Maintenance window targets only**:
    #   `Key=resource-groups:ResourceTypeFilters,Values=AWS::EC2::INSTANCE,AWS::EC2::VPC`
    #
    #   This example demonstrates how to target only Amazon Elastic Compute
    #   Cloud (Amazon EC2) instances and VPCs in your maintenance window.
    #
    # * **Automation targets only**:
    #   `Key=ResourceGroup,Values=MyResourceGroup`
    #
    # * **State Manager association targets only**:
    #   `Key=InstanceIds,Values=*`
    #
    #   This example demonstrates how to target all managed instances in the
    #   Amazon Web Services Region where the association was created.
    #
    # For more information about how to send commands that target managed
    # nodes using `Key,Value` parameters, see [Targeting multiple
    # instances][2] in the *Amazon Web Services Systems Manager User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html
    # [2]: https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html#send-commands-targeting
    #
    # @!attribute [rw] key
    #   User-defined criteria for sending commands that target managed nodes
    #   that meet the criteria.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   User-defined criteria that maps to `Key`. For example, if you
    #   specified `tag:ServerRole`, you could specify `value:WebServer` to
    #   run a command on instances that include EC2 tags of
    #   `ServerRole,WebServer`.
    #
    #   Depending on the type of target, the maximum number of values for a
    #   key might be lower than the global maximum of 50.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/Target AWS API Documentation
    #
    class Target < Struct.new(
      :key,
      :values)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The combination of Amazon Web Services Regions and Amazon Web Services
    # accounts targeted by the current Automation execution.
    #
    # @!attribute [rw] accounts
    #   The Amazon Web Services accounts targeted by the current Automation
    #   execution.
    #   @return [Array<String>]
    #
    # @!attribute [rw] regions
    #   The Amazon Web Services Regions targeted by the current Automation
    #   execution.
    #   @return [Array<String>]
    #
    # @!attribute [rw] target_location_max_concurrency
    #   The maximum number of Amazon Web Services Regions and Amazon Web
    #   Services accounts allowed to run the Automation concurrently.
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
    #   Automation. If not specified, the default value is
    #   `AWS-SystemsManager-AutomationExecutionRole`.
    #   @return [String]
    #
    # @!attribute [rw] target_location_alarm_configuration
    #   The details for the CloudWatch alarm you want to apply to an
    #   automation or command.
    #   @return [Types::AlarmConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/TargetLocation AWS API Documentation
    #
    class TargetLocation < Struct.new(
      :accounts,
      :regions,
      :target_location_max_concurrency,
      :target_location_max_errors,
      :execution_role_name,
      :target_location_alarm_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified target managed node for the session isn't fully
    # configured for use with Session Manager. For more information, see
    # [Getting started with Session Manager][1] in the *Amazon Web Services
    # Systems Manager User Guide*. This error is also returned if you
    # attempt to start a session on a managed node that is located in a
    # different account or Region
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   The ID of the session to terminate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/TerminateSessionRequest AWS API Documentation
    #
    class TerminateSessionRequest < Struct.new(
      :session_id)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the parameter from which you want to delete one or more
    #   labels.
    #   @return [String]
    #
    # @!attribute [rw] parameter_version
    #   The specific version of the parameter which you want to delete one
    #   or more labels from. If it isn't present, the call will fail.
    #   @return [Integer]
    #
    # @!attribute [rw] labels
    #   One or more labels to delete from the specified parameter version.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UnlabelParameterVersionRequest AWS API Documentation
    #
    class UnlabelParameterVersionRequest < Struct.new(
      :name,
      :parameter_version,
      :labels)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] removed_labels
    #   A list of all labels deleted from the parameter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] invalid_labels
    #   The labels that aren't attached to the given parameter version.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UnlabelParameterVersionResult AWS API Documentation
    #
    class UnlabelParameterVersionResult < Struct.new(
      :removed_labels,
      :invalid_labels)
      SENSITIVE = []
      include Aws::Structure
    end

    # The calendar entry contained in the specified SSM document isn't
    # supported.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UnsupportedCalendarException AWS API Documentation
    #
    class UnsupportedCalendarException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Patching for applications released by Microsoft is only available on
    # EC2 instances and advanced instances. To patch applications released
    # by Microsoft on on-premises servers and VMs, you must enable advanced
    # instances. For more information, see [Enabling the advanced-instances
    # tier][1] in the *Amazon Web Services Systems Manager User Guide*.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The `Context` attribute that you specified for the `InventoryItem`
    # isn't allowed for this inventory type. You can only use the `Context`
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The operating systems you specified isn't supported, or the operation
    # isn't supported for the operating system.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UnsupportedOperatingSystem AWS API Documentation
    #
    class UnsupportedOperatingSystem < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameter type isn't supported.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UnsupportedParameterType AWS API Documentation
    #
    class UnsupportedParameterType < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The document doesn't support the platform type of the given managed
    # node ID(s). For example, you sent an document for a Windows managed
    # node to a Linux node.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UnsupportedPlatformType AWS API Documentation
    #
    class UnsupportedPlatformType < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] association_id
    #   The ID of the association you want to update.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters you want to update for the association. If you create
    #   a parameter using Parameter Store, a capability of Amazon Web
    #   Services Systems Manager, you can reference the parameter using
    #   `\{\{ssm:parameter-name\}\}`.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] document_version
    #   The document version you want update for the association.
    #
    #   State Manager doesn't support running associations that use a new
    #   version of a document if that document is shared from another
    #   account. State Manager always runs the `default` version of a
    #   document if shared from another account, even though the Systems
    #   Manager console shows that a new version was processed. If you want
    #   to run an association using a new version of a document shared form
    #   another account, you must set the document version to `default`.
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
    #   The name of the SSM Command document or Automation runbook that
    #   contains the configuration information for the managed node.
    #
    #   You can specify Amazon Web Services-predefined documents, documents
    #   you created, or a document that is shared with you from another
    #   account.
    #
    #   For Systems Manager document (SSM document) that are shared with you
    #   from other Amazon Web Services accounts, you must specify the
    #   complete SSM document ARN, in the following format:
    #
    #   `arn:aws:ssm:region:account-id:document/document-name `
    #
    #   For example:
    #
    #   `arn:aws:ssm:us-east-2:12345678912:document/My-Shared-Document`
    #
    #   For Amazon Web Services-predefined documents and SSM documents you
    #   created in your account, you only need to specify the document name.
    #   For example, `AWS-ApplyPatchBaseline` or `My-Document`.
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
    #   Choose the parameter that will define how your automation will
    #   branch out. This target is required for associations that use an
    #   Automation runbook and target resources by using rate controls.
    #   Automation is a capability of Amazon Web Services Systems Manager.
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
    #   association on 50 managed nodes and set `MaxError` to 10%, then the
    #   system stops sending the request when the sixth error is received.
    #
    #   Executions that are already running an association when `MaxErrors`
    #   is reached are allowed to complete, but some of these executions may
    #   fail as well. If you need to ensure that there won't be more than
    #   max-errors failed executions, set `MaxConcurrency` to 1 so that
    #   executions proceed one at a time.
    #   @return [String]
    #
    # @!attribute [rw] max_concurrency
    #   The maximum number of targets allowed to run the association at the
    #   same time. You can specify a number, for example 10, or a percentage
    #   of the target set, for example 10%. The default value is 100%, which
    #   means all targets run the association at the same time.
    #
    #   If a new managed node starts and attempts to run an association
    #   while Systems Manager is running `MaxConcurrency` associations, the
    #   association is allowed to run. During the next association interval,
    #   the new managed node will process its association within the limit
    #   specified for `MaxConcurrency`.
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
    #   parameter for the PutComplianceItems API operation. In this case,
    #   compliance data isn't managed by State Manager, a capability of
    #   Amazon Web Services Systems Manager. It is managed by your direct
    #   call to the PutComplianceItems API operation.
    #
    #   By default, all associations use `AUTO` mode.
    #   @return [String]
    #
    # @!attribute [rw] apply_only_at_cron_interval
    #   By default, when you update an association, the system runs it
    #   immediately after it is updated and then according to the schedule
    #   you specified. Specify this option if you don't want an association
    #   to run immediately after you update it. This parameter isn't
    #   supported for rate expressions.
    #
    #   If you chose this option when you created an association and later
    #   you edit that association or you make changes to the SSM document on
    #   which that association is based (by using the Documents page in the
    #   console), State Manager applies the association at the next
    #   specified cron interval. For example, if you chose the `Latest`
    #   version of an SSM document when you created an association and you
    #   edit the association by choosing a different document version on the
    #   Documents page, State Manager applies the association at the next
    #   specified cron interval if you previously selected this option. If
    #   this option wasn't selected, State Manager immediately runs the
    #   association.
    #
    #   You can reset this option. To do so, specify the
    #   `no-apply-only-at-cron-interval` parameter when you update the
    #   association from the command line. This parameter forces the
    #   association to run immediately after updating it and according to
    #   the interval specified.
    #   @return [Boolean]
    #
    # @!attribute [rw] calendar_names
    #   The names or Amazon Resource Names (ARNs) of the Change Calendar
    #   type documents you want to gate your associations under. The
    #   associations only run when that change calendar is open. For more
    #   information, see [Amazon Web Services Systems Manager Change
    #   Calendar][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-change-calendar
    #   @return [Array<String>]
    #
    # @!attribute [rw] target_locations
    #   A location is a combination of Amazon Web Services Regions and
    #   Amazon Web Services accounts where you want to run the association.
    #   Use this action to update an association in multiple Regions and
    #   multiple accounts.
    #   @return [Array<Types::TargetLocation>]
    #
    # @!attribute [rw] schedule_offset
    #   Number of days to wait after the scheduled day to run an
    #   association. For example, if you specified a cron schedule of
    #   `cron(0 0 ? * THU#2 *)`, you could specify an offset of 3 to run the
    #   association each Sunday after the second Thursday of the month. For
    #   more information about cron schedules for associations, see
    #   [Reference: Cron and rate expressions for Systems Manager][1] in the
    #   *Amazon Web Services Systems Manager User Guide*.
    #
    #   <note markdown="1"> To use offsets, you must specify the `ApplyOnlyAtCronInterval`
    #   parameter. This option tells the system not to run an association
    #   immediately after you create it.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/reference-cron-and-rate-expressions.html
    #   @return [Integer]
    #
    # @!attribute [rw] target_maps
    #   A key-value mapping of document parameters to target resources. Both
    #   Targets and TargetMaps can't be specified together.
    #   @return [Array<Hash<String,Array<String>>>]
    #
    # @!attribute [rw] alarm_configuration
    #   The details for the CloudWatch alarm you want to apply to an
    #   automation or command.
    #   @return [Types::AlarmConfiguration]
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
      :apply_only_at_cron_interval,
      :calendar_names,
      :target_locations,
      :schedule_offset,
      :target_maps,
      :alarm_configuration)
      SENSITIVE = [:parameters]
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the SSM document.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The managed node ID.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the change template for which a version's metadata is
    #   to be updated.
    #   @return [String]
    #
    # @!attribute [rw] document_version
    #   The version of a change template in which to update approval
    #   metadata.
    #   @return [String]
    #
    # @!attribute [rw] document_reviews
    #   The change template review details to update.
    #   @return [Types::DocumentReviews]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateDocumentMetadataRequest AWS API Documentation
    #
    class UpdateDocumentMetadataRequest < Struct.new(
      :name,
      :document_version,
      :document_reviews)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateDocumentMetadataResponse AWS API Documentation
    #
    class UpdateDocumentMetadataResponse < Aws::EmptyStructure; end

    # @!attribute [rw] content
    #   A valid JSON or YAML string.
    #   @return [String]
    #
    # @!attribute [rw] attachments
    #   A list of key-value pairs that describe attachments to a version of
    #   a document.
    #   @return [Array<Types::AttachmentsSource>]
    #
    # @!attribute [rw] name
    #   The name of the SSM document that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The friendly name of the SSM document that you want to update. This
    #   value can differ for each version of the document. If you don't
    #   specify a value for this parameter in your request, the existing
    #   value is applied to the new document version.
    #   @return [String]
    #
    # @!attribute [rw] version_name
    #   An optional field specifying the version of the artifact you are
    #   updating with the document. For example, "Release 12, Update 6".
    #   This value is unique across all versions of a document, and can't
    #   be changed.
    #   @return [String]
    #
    # @!attribute [rw] document_version
    #   The version of the document that you want to update. Currently,
    #   Systems Manager supports updating only the latest version of the
    #   document. You can specify the version number of the latest version
    #   or use the `$LATEST` variable.
    #
    #   <note markdown="1"> If you change a document version for a State Manager association,
    #   Systems Manager immediately runs the association unless you
    #   previously specifed the `apply-only-at-cron-interval` parameter.
    #
    #    </note>
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
      :display_name,
      :version_name,
      :document_version,
      :document_format,
      :target_type)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   The date and time, in ISO-8601 Extended format, for when you want
    #   the maintenance window to become active. `StartDate` allows you to
    #   delay activation of the maintenance window until the specified
    #   future date.
    #   @return [String]
    #
    # @!attribute [rw] end_date
    #   The date and time, in ISO-8601 Extended format, for when you want
    #   the maintenance window to become inactive. `EndDate` allows you to
    #   set a date and time in the future when the maintenance window will
    #   no longer run.
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
    #   example: "America/Los\_Angeles", "UTC", or "Asia/Seoul". For
    #   more information, see the [Time Zone Database][1] on the IANA
    #   website.
    #
    #
    #
    #   [1]: https://www.iana.org/time-zones
    #   @return [String]
    #
    # @!attribute [rw] schedule_offset
    #   The number of days to wait after the date and time specified by a
    #   cron expression before running the maintenance window.
    #
    #   For example, the following cron expression schedules a maintenance
    #   window to run the third Tuesday of every month at 11:30 PM.
    #
    #   `cron(30 23 ? * TUE#3 *)`
    #
    #   If the schedule offset is `2`, the maintenance window won't run
    #   until two days later.
    #   @return [Integer]
    #
    # @!attribute [rw] duration
    #   The duration of the maintenance window in hours.
    #   @return [Integer]
    #
    # @!attribute [rw] cutoff
    #   The number of hours before the end of the maintenance window that
    #   Amazon Web Services Systems Manager stops scheduling new tasks for
    #   execution.
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
    #   If `True`, then all fields that are required by the
    #   CreateMaintenanceWindow operation are also required for this API
    #   request. Optional fields that aren't specified are set to null.
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
      :schedule_offset,
      :duration,
      :cutoff,
      :allow_unassociated_targets,
      :enabled,
      :replace)
      SENSITIVE = [:description]
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
    #   window won't run before this specified time.
    #   @return [String]
    #
    # @!attribute [rw] end_date
    #   The date and time, in ISO-8601 Extended format, for when the
    #   maintenance window is scheduled to become inactive. The maintenance
    #   window won't run after this specified time.
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
    #   example: "America/Los\_Angeles", "UTC", or "Asia/Seoul". For
    #   more information, see the [Time Zone Database][1] on the IANA
    #   website.
    #
    #
    #
    #   [1]: https://www.iana.org/time-zones
    #   @return [String]
    #
    # @!attribute [rw] schedule_offset
    #   The number of days to wait to run a maintenance window after the
    #   scheduled cron expression date and time.
    #   @return [Integer]
    #
    # @!attribute [rw] duration
    #   The duration of the maintenance window in hours.
    #   @return [Integer]
    #
    # @!attribute [rw] cutoff
    #   The number of hours before the end of the maintenance window that
    #   Amazon Web Services Systems Manager stops scheduling new tasks for
    #   execution.
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
      :schedule_offset,
      :duration,
      :cutoff,
      :allow_unassociated_targets,
      :enabled)
      SENSITIVE = [:description]
      include Aws::Structure
    end

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
    #   User-provided value that will be included in any Amazon CloudWatch
    #   Events events raised while running tasks for these targets in this
    #   maintenance window.
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
    #   If `True`, then all fields that are required by the
    #   RegisterTargetWithMaintenanceWindow operation are also required for
    #   this API request. Optional fields that aren't specified are set to
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
      SENSITIVE = [:owner_information, :description]
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
      SENSITIVE = [:owner_information, :description]
      include Aws::Structure
    end

    # @!attribute [rw] window_id
    #   The maintenance window ID that contains the task to modify.
    #   @return [String]
    #
    # @!attribute [rw] window_task_id
    #   The task ID to modify.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The targets (either managed nodes or tags) to modify. Managed nodes
    #   are specified using the format
    #   `Key=instanceids,Values=instanceID_1,instanceID_2`. Tags are
    #   specified using the format ` Key=tag_name,Values=tag_value`.
    #
    #   <note markdown="1"> One or more targets must be specified for maintenance window Run
    #   Command-type tasks. Depending on the task, targets are optional for
    #   other maintenance window task types (Automation, Lambda, and Step
    #   Functions). For more information about running tasks that don't
    #   specify targets, see [Registering maintenance window tasks without
    #   targets][1] in the *Amazon Web Services Systems Manager User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] task_arn
    #   The task ARN to modify.
    #   @return [String]
    #
    # @!attribute [rw] service_role_arn
    #   The Amazon Resource Name (ARN) of the IAM service role for Amazon
    #   Web Services Systems Manager to assume when running a maintenance
    #   window task. If you do not specify a service role ARN, Systems
    #   Manager uses your account's service-linked role. If no
    #   service-linked role for Systems Manager exists in your account, it
    #   is created when you run `RegisterTaskWithMaintenanceWindow`.
    #
    #   For more information, see the following topics in the in the *Amazon
    #   Web Services Systems Manager User Guide*:
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
    #
    #   When you update a maintenance window task that has options specified
    #   in `TaskInvocationParameters`, you must provide again all the
    #   `TaskInvocationParameters` values that you want to retain. The
    #   values you don't specify again are removed. For example, suppose
    #   that when you registered a Run Command task, you specified
    #   `TaskInvocationParameters` values for `Comment`,
    #   `NotificationConfig`, and `OutputS3BucketName`. If you update the
    #   maintenance window task and specify only a different
    #   `OutputS3BucketName` value, the values for `Comment` and
    #   `NotificationConfig` are removed.
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
    #   is the number of targets that are allowed to run this task, in
    #   parallel.
    #
    #   <note markdown="1"> Although this element is listed as "Required: No", a value can be
    #   omitted only when you are registering or updating a [targetless
    #   task][1] You must provide a value in all other cases.
    #
    #    For maintenance window tasks without a target specified, you can't
    #   supply a value for this option. Instead, the system inserts a
    #   placeholder value of `1`. This value doesn't affect the running of
    #   your task.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html
    #   @return [String]
    #
    # @!attribute [rw] max_errors
    #   The new `MaxErrors` value to specify. `MaxErrors` is the maximum
    #   number of errors that are allowed before the task stops being
    #   scheduled.
    #
    #   <note markdown="1"> Although this element is listed as "Required: No", a value can be
    #   omitted only when you are registering or updating a [targetless
    #   task][1] You must provide a value in all other cases.
    #
    #    For maintenance window tasks without a target specified, you can't
    #   supply a value for this option. Instead, the system inserts a
    #   placeholder value of `1`. This value doesn't affect the running of
    #   your task.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html
    #   @return [String]
    #
    # @!attribute [rw] logging_info
    #   The new logging location in Amazon S3 to specify.
    #
    #   <note markdown="1"> `LoggingInfo` has been deprecated. To specify an Amazon Simple
    #   Storage Service (Amazon S3) bucket to contain logs, instead use the
    #   `OutputS3BucketName` and `OutputS3KeyPrefix` options in the
    #   `TaskInvocationParameters` structure. For information about how
    #   Amazon Web Services Systems Manager handles these options for the
    #   supported maintenance window task types, see
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
    #   RegisterTaskWithMaintenanceWindow operation are also required for
    #   this API request. Optional fields that aren't specified are set to
    #   null.
    #   @return [Boolean]
    #
    # @!attribute [rw] cutoff_behavior
    #   Indicates whether tasks should continue to run after the cutoff time
    #   specified in the maintenance windows is reached.
    #
    #   * `CONTINUE_TASK`: When the cutoff time is reached, any tasks that
    #     are running continue. The default value.
    #
    #   * `CANCEL_TASK`:
    #
    #     * For Automation, Lambda, Step Functions tasks: When the cutoff
    #       time is reached, any task invocations that are already running
    #       continue, but no new task invocations are started.
    #
    #     * For Run Command tasks: When the cutoff time is reached, the
    #       system sends a CancelCommand operation that attempts to cancel
    #       the command associated with the task. However, there is no
    #       guarantee that the command will be terminated and the underlying
    #       process stopped.
    #
    #     The status for tasks that are not completed is `TIMED_OUT`.
    #   @return [String]
    #
    # @!attribute [rw] alarm_configuration
    #   The CloudWatch alarm you want to apply to your maintenance window
    #   task.
    #   @return [Types::AlarmConfiguration]
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
      :replace,
      :cutoff_behavior,
      :alarm_configuration)
      SENSITIVE = [:task_parameters, :description]
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
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) service role to use to publish Amazon Simple Notification
    #   Service (Amazon SNS) notifications for maintenance window Run
    #   Command tasks.
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
    #   The updated `MaxConcurrency` value.
    #   @return [String]
    #
    # @!attribute [rw] max_errors
    #   The updated `MaxErrors` value.
    #   @return [String]
    #
    # @!attribute [rw] logging_info
    #   The updated logging information in Amazon S3.
    #
    #   <note markdown="1"> `LoggingInfo` has been deprecated. To specify an Amazon Simple
    #   Storage Service (Amazon S3) bucket to contain logs, instead use the
    #   `OutputS3BucketName` and `OutputS3KeyPrefix` options in the
    #   `TaskInvocationParameters` structure. For information about how
    #   Amazon Web Services Systems Manager handles these options for the
    #   supported maintenance window task types, see
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
    # @!attribute [rw] cutoff_behavior
    #   The specification for whether tasks should continue to run after the
    #   cutoff time specified in the maintenance windows is reached.
    #   @return [String]
    #
    # @!attribute [rw] alarm_configuration
    #   The details for the CloudWatch alarm you applied to your maintenance
    #   window task.
    #   @return [Types::AlarmConfiguration]
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
      :description,
      :cutoff_behavior,
      :alarm_configuration)
      SENSITIVE = [:task_parameters, :description]
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The ID of the managed node where you want to update the role.
    #   @return [String]
    #
    # @!attribute [rw] iam_role
    #   The name of the Identity and Access Management (IAM) role that you
    #   want to assign to the managed node. This IAM role must provide
    #   AssumeRole permissions for the Amazon Web Services Systems Manager
    #   service principal `ssm.amazonaws.com`. For more information, see
    #   [Create an IAM service role for a hybrid environment][1] in the
    #   *Amazon Web Services Systems Manager User Guide*.
    #
    #   <note markdown="1"> You can't specify an IAM service-linked role for this parameter.
    #   You must create a unique role.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-service-role.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateManagedInstanceRoleRequest AWS API Documentation
    #
    class UpdateManagedInstanceRoleRequest < Struct.new(
      :instance_id,
      :iam_role)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateManagedInstanceRoleResult AWS API Documentation
    #
    class UpdateManagedInstanceRoleResult < Aws::EmptyStructure; end

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
    #   Operational data keys *can't* begin with the following: `amazon`,
    #   `aws`, `amzn`, `ssm`, `/amazon`, `/aws`, `/amzn`, `/ssm`.
    #
    #   You can choose to make the data searchable by other users in the
    #   account or you can restrict search access. Searchable data means
    #   that all users with access to the OpsItem Overview page (as provided
    #   by the DescribeOpsItems API operation) can view and search on the
    #   specified data. Operational data that isn't searchable is only
    #   viewable by users who have access to the OpsItem (as provided by the
    #   GetOpsItem API operation).
    #
    #   Use the `/aws/resources` key in OperationalData to specify a related
    #   resource in the request. Use the `/aws/automations` key in
    #   OperationalData to associate an Automation runbook with the OpsItem.
    #   To view Amazon Web Services CLI example commands that use these
    #   keys, see [Creating OpsItems manually][1] in the *Amazon Web
    #   Services Systems Manager User Guide*.
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
    #   in the *Amazon Web Services Systems Manager User Guide*.
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
    # @!attribute [rw] actual_start_time
    #   The time a runbook workflow started. Currently reported only for the
    #   OpsItem type `/aws/changerequest`.
    #   @return [Time]
    #
    # @!attribute [rw] actual_end_time
    #   The time a runbook workflow ended. Currently reported only for the
    #   OpsItem type `/aws/changerequest`.
    #   @return [Time]
    #
    # @!attribute [rw] planned_start_time
    #   The time specified in a change request for a runbook workflow to
    #   start. Currently supported only for the OpsItem type
    #   `/aws/changerequest`.
    #   @return [Time]
    #
    # @!attribute [rw] planned_end_time
    #   The time specified in a change request for a runbook workflow to
    #   end. Currently supported only for the OpsItem type
    #   `/aws/changerequest`.
    #   @return [Time]
    #
    # @!attribute [rw] ops_item_arn
    #   The OpsItem Amazon Resource Name (ARN).
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
      :severity,
      :actual_start_time,
      :actual_end_time,
      :planned_start_time,
      :planned_end_time,
      :ops_item_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateOpsItemResponse AWS API Documentation
    #
    class UpdateOpsItemResponse < Aws::EmptyStructure; end

    # @!attribute [rw] ops_metadata_arn
    #   The Amazon Resource Name (ARN) of the OpsMetadata Object to update.
    #   @return [String]
    #
    # @!attribute [rw] metadata_to_update
    #   Metadata to add to an OpsMetadata object.
    #   @return [Hash<String,Types::MetadataValue>]
    #
    # @!attribute [rw] keys_to_delete
    #   The metadata keys to delete from the OpsMetadata object.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateOpsMetadataRequest AWS API Documentation
    #
    class UpdateOpsMetadataRequest < Struct.new(
      :ops_metadata_arn,
      :metadata_to_update,
      :keys_to_delete)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ops_metadata_arn
    #   The Amazon Resource Name (ARN) of the OpsMetadata Object that was
    #   updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateOpsMetadataResult AWS API Documentation
    #
    class UpdateOpsMetadataResult < Struct.new(
      :ops_metadata_arn)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   and rejected patch lists][1] in the *Amazon Web Services Systems
    #   Manager User Guide*.
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
    #   updates that should be applied to the managed nodes. The default
    #   value is `false`. Applies to Linux managed nodes only.
    #   @return [Boolean]
    #
    # @!attribute [rw] rejected_patches
    #   A list of explicitly rejected patches for the baseline.
    #
    #   For information about accepted formats for lists of approved patches
    #   and rejected patches, see [About package name formats for approved
    #   and rejected patch lists][1] in the *Amazon Web Services Systems
    #   Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] rejected_patches_action
    #   The action for Patch Manager to take on patches included in the
    #   `RejectedPackages` list.
    #
    #   * <b> <code>ALLOW_AS_DEPENDENCY</code> </b>: A package in the
    #     `Rejected` patches list is installed only if it is a dependency of
    #     another package. It is considered compliant with the patch
    #     baseline, and its status is reported as `InstalledOther`. This is
    #     the default action if no option is specified.
    #
    #   * <b> <code>BLOCK</code> </b>: Packages in the `RejectedPatches`
    #     list, and packages that include them as dependencies, aren't
    #     installed under any circumstances. If a package was installed
    #     before it was added to the `Rejected` patches list, it is
    #     considered non-compliant with the patch baseline, and its status
    #     is reported as `InstalledRejected`.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the patch baseline.
    #   @return [String]
    #
    # @!attribute [rw] sources
    #   Information about the patches to use to update the managed nodes,
    #   including target operating systems and source repositories. Applies
    #   to Linux managed nodes only.
    #   @return [Array<Types::PatchSource>]
    #
    # @!attribute [rw] replace
    #   If True, then all fields that are required by the
    #   CreatePatchBaseline operation are also required for this API
    #   request. Optional fields that aren't specified are set to null.
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
      SENSITIVE = []
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
    #   updates that should be applied to the managed nodes. The default
    #   value is `false`. Applies to Linux managed nodes only.
    #   @return [Boolean]
    #
    # @!attribute [rw] rejected_patches
    #   A list of explicitly rejected patches for the baseline.
    #   @return [Array<String>]
    #
    # @!attribute [rw] rejected_patches_action
    #   The action specified to take on patches included in the
    #   `RejectedPatches` list. A patch can be allowed only if it is a
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
    #   A description of the patch baseline.
    #   @return [String]
    #
    # @!attribute [rw] sources
    #   Information about the patches to use to update the managed nodes,
    #   including target operating systems and source repositories. Applies
    #   to Linux managed nodes only.
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateResourceDataSyncResult AWS API Documentation
    #
    class UpdateResourceDataSyncResult < Aws::EmptyStructure; end

    # The request body of the UpdateServiceSetting API operation.
    #
    # @!attribute [rw] setting_id
    #   The Amazon Resource Name (ARN) of the service setting to update. For
    #   example,
    #   `arn:aws:ssm:us-east-1:111122223333:servicesetting/ssm/parameter-store/high-throughput-enabled`.
    #   The setting ID can be one of the following.
    #
    #   * `/ssm/managed-instance/default-ec2-instance-management-role`
    #
    #   * `/ssm/automation/customer-script-log-destination`
    #
    #   * `/ssm/automation/customer-script-log-group-name`
    #
    #   * `/ssm/documents/console/public-sharing-permission`
    #
    #   * `/ssm/managed-instance/activation-tier`
    #
    #   * `/ssm/opsinsights/opscenter`
    #
    #   * `/ssm/parameter-store/default-parameter-tier`
    #
    #   * `/ssm/parameter-store/high-throughput-enabled`
    #
    #   <note markdown="1"> Permissions to update the
    #   `/ssm/managed-instance/default-ec2-instance-management-role` setting
    #   should only be provided to administrators. Implement least privilege
    #   access when allowing individuals to configure or modify the Default
    #   Host Management Configuration.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] setting_value
    #   The new value to specify for the service setting. The following list
    #   specifies the available values for each setting.
    #
    #   * `/ssm/managed-instance/default-ec2-instance-management-role: The
    #     name of an IAM role`
    #
    #   * `/ssm/automation/customer-script-log-destination`: `CloudWatch`
    #
    #   * `/ssm/automation/customer-script-log-group-name`: The name of an
    #     Amazon CloudWatch Logs log group
    #
    #   * `/ssm/documents/console/public-sharing-permission`: `Enable` or
    #     `Disable`
    #
    #   * `/ssm/managed-instance/activation-tier`: `standard` or `advanced`
    #
    #   * `/ssm/opsinsights/opscenter`: `Enabled` or `Disabled`
    #
    #   * `/ssm/parameter-store/default-parameter-tier`: `Standard`,
    #     `Advanced`, `Intelligent-Tiering`
    #
    #   * `/ssm/parameter-store/high-throughput-enabled`: `true` or `false`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateServiceSettingRequest AWS API Documentation
    #
    class UpdateServiceSettingRequest < Struct.new(
      :setting_id,
      :setting_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result body of the UpdateServiceSetting API operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateServiceSettingResult AWS API Documentation
    #
    class UpdateServiceSettingResult < Aws::EmptyStructure; end

  end
end
