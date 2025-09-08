# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudFormation
  module Types

    # Structure that contains the results of the account gate function which
    # CloudFormation invokes, if present, before proceeding with a StackSet
    # operation in an account and Region.
    #
    # For each account and Region, CloudFormation lets you specify a Lambda
    # function that encapsulates any requirements that must be met before
    # CloudFormation can proceed with a StackSet operation in that account
    # and Region. CloudFormation invokes the function each time a StackSet
    # operation is requested for that account and Region; if the function
    # returns `FAILED`, CloudFormation cancels the operation in that account
    # and Region, and sets the StackSet operation result status for that
    # account and Region to `FAILED`.
    #
    # For more information, see [Prevent failed StackSets deployments using
    # target account gates][1] in the *CloudFormation User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-account-gating.html
    #
    # @!attribute [rw] status
    #   The status of the account gate function.
    #
    #   * `SUCCEEDED`: The account gate function has determined that the
    #     account and Region passes any requirements for a StackSet
    #     operation to occur. CloudFormation proceeds with the stack
    #     operation in that account and Region.
    #
    #   * `FAILED`: The account gate function has determined that the
    #     account and Region doesn't meet the requirements for a StackSet
    #     operation to occur. CloudFormation cancels the StackSet operation
    #     in that account and Region, and sets the StackSet operation result
    #     status for that account and Region to `FAILED`.
    #
    #   * `SKIPPED`: CloudFormation has skipped calling the account gate
    #     function for this account and Region, for one of the following
    #     reasons:
    #
    #     * An account gate function hasn't been specified for the account
    #       and Region. CloudFormation proceeds with the StackSet operation
    #       in this account and Region.
    #
    #     * The `AWSCloudFormationStackSetExecutionRole` of the
    #       administration account lacks permissions to invoke the function.
    #       CloudFormation proceeds with the StackSet operation in this
    #       account and Region.
    #
    #     * Either no action is necessary, or no action is possible, on the
    #       stack. CloudFormation skips the StackSet operation in this
    #       account and Region.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the account gate status assigned to this account and
    #   Region for the StackSet operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/AccountGateResult AWS API Documentation
    #
    class AccountGateResult < Struct.new(
      :status,
      :status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the current CloudFormation limits for your account.
    #
    # CloudFormation has the following limits per account:
    #
    # * Number of concurrent resources
    #
    # * Number of stacks
    #
    # * Number of stack outputs
    #
    # For more information, see [Understand CloudFormation quotas][1] in the
    # *CloudFormation User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cloudformation-limits.html
    #
    # @!attribute [rw] name
    #   The name of the account limit.
    #
    #   Values: `ConcurrentResourcesLimit` \| `StackLimit` \|
    #   `StackOutputsLimit`
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value that's associated with the account limit name.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/AccountLimit AWS API Documentation
    #
    class AccountLimit < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ActivateOrganizationsAccessInput AWS API Documentation
    #
    class ActivateOrganizationsAccessInput < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ActivateOrganizationsAccessOutput AWS API Documentation
    #
    class ActivateOrganizationsAccessOutput < Aws::EmptyStructure; end

    # @!attribute [rw] type
    #   The extension type.
    #
    #   Conditional: You must specify `PublicTypeArn`, or `TypeName`,
    #   `Type`, and `PublisherId`.
    #   @return [String]
    #
    # @!attribute [rw] public_type_arn
    #   The Amazon Resource Name (ARN) of the public extension.
    #
    #   Conditional: You must specify `PublicTypeArn`, or `TypeName`,
    #   `Type`, and `PublisherId`.
    #   @return [String]
    #
    # @!attribute [rw] publisher_id
    #   The ID of the extension publisher.
    #
    #   Conditional: You must specify `PublicTypeArn`, or `TypeName`,
    #   `Type`, and `PublisherId`.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The name of the extension.
    #
    #   Conditional: You must specify `PublicTypeArn`, or `TypeName`,
    #   `Type`, and `PublisherId`.
    #   @return [String]
    #
    # @!attribute [rw] type_name_alias
    #   An alias to assign to the public extension, in this account and
    #   Region. If you specify an alias for the extension, CloudFormation
    #   treats the alias as the extension type name within this account and
    #   Region. You must use the alias to refer to the extension in your
    #   templates, API calls, and CloudFormation console.
    #
    #   An extension alias must be unique within a given account and Region.
    #   You can activate the same public resource multiple times in the same
    #   account and Region, using different type name aliases.
    #   @return [String]
    #
    # @!attribute [rw] auto_update
    #   Whether to automatically update the extension in this account and
    #   Region when a new *minor* version is published by the extension
    #   publisher. Major versions released by the publisher must be manually
    #   updated.
    #
    #   The default is `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] logging_config
    #   Contains logging configuration information for an extension.
    #   @return [Types::LoggingConfig]
    #
    # @!attribute [rw] execution_role_arn
    #   The name of the IAM execution role to use to activate the extension.
    #   @return [String]
    #
    # @!attribute [rw] version_bump
    #   Manually updates a previously-activated type to a new major or minor
    #   version, if available. You can also use this parameter to update the
    #   value of `AutoUpdate`.
    #
    #   * `MAJOR`: CloudFormation updates the extension to the newest major
    #     version, if one is available.
    #
    #   * `MINOR`: CloudFormation updates the extension to the newest minor
    #     version, if one is available.
    #   @return [String]
    #
    # @!attribute [rw] major_version
    #   The major version of this extension you want to activate, if
    #   multiple major versions are available. The default is the latest
    #   major version. CloudFormation uses the latest available *minor*
    #   version of the major version selected.
    #
    #   You can specify `MajorVersion` or `VersionBump`, but not both.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ActivateTypeInput AWS API Documentation
    #
    class ActivateTypeInput < Struct.new(
      :type,
      :public_type_arn,
      :publisher_id,
      :type_name,
      :type_name_alias,
      :auto_update,
      :logging_config,
      :execution_role_arn,
      :version_bump,
      :major_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the activated extension, in this
    #   account and Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ActivateTypeOutput AWS API Documentation
    #
    class ActivateTypeOutput < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource with the name requested already exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/AlreadyExistsException AWS API Documentation
    #
    class AlreadyExistsException < Aws::EmptyStructure; end

    # Describes whether StackSets automatically deploys to Organizations
    # accounts that are added to a target organization or organizational
    # unit (OU). For more information, see [Enable or disable automatic
    # deployments for StackSets in Organizations][1] in the *CloudFormation
    # User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-manage-auto-deployment.html
    #
    # @!attribute [rw] enabled
    #   If set to `true`, StackSets automatically deploys additional stack
    #   instances to Organizations accounts that are added to a target
    #   organization or organizational unit (OU) in the specified Regions.
    #   If an account is removed from a target organization or OU, StackSets
    #   deletes stack instances from the account in the specified Regions.
    #   @return [Boolean]
    #
    # @!attribute [rw] retain_stacks_on_account_removal
    #   If set to `true`, stack resources are retained when an account is
    #   removed from a target organization or OU. If set to `false`, stack
    #   resources are deleted. Specify only if `Enabled` is set to `True`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/AutoDeployment AWS API Documentation
    #
    class AutoDeployment < Struct.new(
      :enabled,
      :retain_stacks_on_account_removal)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detailed information concerning an error generated during the setting
    # of configuration data for a CloudFormation extension.
    #
    # @!attribute [rw] error_code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message.
    #   @return [String]
    #
    # @!attribute [rw] type_configuration_identifier
    #   Identifying information for the configuration of a CloudFormation
    #   extension.
    #   @return [Types::TypeConfigurationIdentifier]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/BatchDescribeTypeConfigurationsError AWS API Documentation
    #
    class BatchDescribeTypeConfigurationsError < Struct.new(
      :error_code,
      :error_message,
      :type_configuration_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] type_configuration_identifiers
    #   The list of identifiers for the desired extension configurations.
    #   @return [Array<Types::TypeConfigurationIdentifier>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/BatchDescribeTypeConfigurationsInput AWS API Documentation
    #
    class BatchDescribeTypeConfigurationsInput < Struct.new(
      :type_configuration_identifiers)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   A list of information concerning any errors generated during the
    #   setting of the specified configurations.
    #   @return [Array<Types::BatchDescribeTypeConfigurationsError>]
    #
    # @!attribute [rw] unprocessed_type_configurations
    #   A list of any of the specified extension configurations that
    #   CloudFormation could not process for any reason.
    #   @return [Array<Types::TypeConfigurationIdentifier>]
    #
    # @!attribute [rw] type_configurations
    #   A list of any of the specified extension configurations from the
    #   CloudFormation registry.
    #   @return [Array<Types::TypeConfigurationDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/BatchDescribeTypeConfigurationsOutput AWS API Documentation
    #
    class BatchDescribeTypeConfigurationsOutput < Struct.new(
      :errors,
      :unprocessed_type_configurations,
      :type_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error occurred during a CloudFormation registry operation.
    #
    # @!attribute [rw] message
    #   A message with details about the error that occurred.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CFNRegistryException AWS API Documentation
    #
    class CFNRegistryException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the CancelUpdateStack action.
    #
    # @!attribute [rw] stack_name
    #   <note markdown="1"> If you don't pass a parameter to `StackName`, the API returns a
    #   response that describes all resources in the account.
    #
    #    The IAM policy below can be added to IAM policies when you want to
    #   limit resource-level permissions and avoid returning a response when
    #   no parameter is sent in the request:
    #
    #    `{ "Version": "2012-10-17", "Statement": [{ "Effect": "Deny",
    #   "Action": "cloudformation:DescribeStacks", "NotResource":
    #   "arn:aws:cloudformation:*:*:stack/*/*" }] }`
    #
    #    </note>
    #
    #   The name or the unique stack ID that's associated with the stack.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique identifier for this `CancelUpdateStack` request. Specify
    #   this token if you plan to retry requests so that CloudFormation
    #   knows that you're not attempting to cancel an update on a stack
    #   with the same name. You might retry `CancelUpdateStack` requests to
    #   ensure that CloudFormation successfully received them.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CancelUpdateStackInput AWS API Documentation
    #
    class CancelUpdateStackInput < Struct.new(
      :stack_name,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `Change` structure describes the changes CloudFormation will
    # perform if you execute the change set.
    #
    # @!attribute [rw] type
    #   The type of entity that CloudFormation changes.
    #
    #   * `Resource` This change is for a resource.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] hook_invocation_count
    #   Is either `null`, if no Hooks invoke for the resource, or contains
    #   the number of Hooks that will invoke for the resource.
    #   @return [Integer]
    #
    # @!attribute [rw] resource_change
    #   A `ResourceChange` structure that describes the resource and action
    #   that CloudFormation will perform.
    #   @return [Types::ResourceChange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/Change AWS API Documentation
    #
    class Change < Struct.new(
      :type,
      :hook_invocation_count,
      :resource_change)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the resource, the Hook, and the Hook version to be invoked.
    #
    # @!attribute [rw] invocation_point
    #   The specific point in the provisioning process where the Hook is
    #   invoked.
    #   @return [String]
    #
    # @!attribute [rw] failure_mode
    #   Specify the Hook failure mode for non-compliant resources in the
    #   followings ways.
    #
    #   * `FAIL` Stops provisioning resources.
    #
    #   * `WARN` Allows provisioning to continue with a warning message.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The unique name for your Hook. Specifies a three-part namespace for
    #   your Hook, with a recommended pattern of
    #   `Organization::Service::Hook`.
    #
    #   <note markdown="1"> The following organization namespaces are reserved and can't be
    #   used in your Hook type names:
    #
    #    * `Alexa`
    #
    #   * `AMZN`
    #
    #   * `Amazon`
    #
    #   * `ASK`
    #
    #   * `AWS`
    #
    #   * `Custom`
    #
    #   * `Dev`
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] type_version_id
    #   The version ID of the type specified.
    #   @return [String]
    #
    # @!attribute [rw] type_configuration_version_id
    #   The version ID of the type configuration.
    #   @return [String]
    #
    # @!attribute [rw] target_details
    #   Specifies details about the target that the Hook will run against.
    #   @return [Types::ChangeSetHookTargetDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ChangeSetHook AWS API Documentation
    #
    class ChangeSetHook < Struct.new(
      :invocation_point,
      :failure_mode,
      :type_name,
      :type_version_id,
      :type_configuration_version_id,
      :target_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies `RESOURCE` type target details for activated Hooks.
    #
    # @!attribute [rw] logical_resource_id
    #   The resource's logical ID, which is defined in the stack's
    #   template.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of CloudFormation resource, such as `AWS::S3::Bucket`.
    #   @return [String]
    #
    # @!attribute [rw] resource_action
    #   Specifies the action of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ChangeSetHookResourceTargetDetails AWS API Documentation
    #
    class ChangeSetHookResourceTargetDetails < Struct.new(
      :logical_resource_id,
      :resource_type,
      :resource_action)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies target details for an activated Hook.
    #
    # @!attribute [rw] target_type
    #   The name of the type.
    #   @return [String]
    #
    # @!attribute [rw] resource_target_details
    #   Required if `TargetType` is `RESOURCE`.
    #   @return [Types::ChangeSetHookResourceTargetDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ChangeSetHookTargetDetails AWS API Documentation
    #
    class ChangeSetHookTargetDetails < Struct.new(
      :target_type,
      :resource_target_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified change set name or ID doesn't exit. To view valid
    # change sets for a stack, use the `ListChangeSets` operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ChangeSetNotFoundException AWS API Documentation
    #
    class ChangeSetNotFoundException < Aws::EmptyStructure; end

    # The `ChangeSetSummary` structure describes a change set, its status,
    # and the stack with which it's associated.
    #
    # @!attribute [rw] stack_id
    #   The ID of the stack with which the change set is associated.
    #   @return [String]
    #
    # @!attribute [rw] stack_name
    #   The name of the stack with which the change set is associated.
    #   @return [String]
    #
    # @!attribute [rw] change_set_id
    #   The ID of the change set.
    #   @return [String]
    #
    # @!attribute [rw] change_set_name
    #   The name of the change set.
    #   @return [String]
    #
    # @!attribute [rw] execution_status
    #   If the change set execution status is `AVAILABLE`, you can execute
    #   the change set. If you can't execute the change set, the status
    #   indicates why. For example, a change set might be in an
    #   `UNAVAILABLE` state because CloudFormation is still creating it or
    #   in an `OBSOLETE` state because the stack was already updated.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The state of the change set, such as `CREATE_PENDING`,
    #   `CREATE_COMPLETE`, or `FAILED`.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   A description of the change set's status. For example, if your
    #   change set is in the `FAILED` state, CloudFormation shows the error
    #   message.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The start time when the change set was created, in UTC.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   Descriptive information about the change set.
    #   @return [String]
    #
    # @!attribute [rw] include_nested_stacks
    #   Specifies the current setting of `IncludeNestedStacks` for the
    #   change set.
    #   @return [Boolean]
    #
    # @!attribute [rw] parent_change_set_id
    #   The parent change set ID.
    #   @return [String]
    #
    # @!attribute [rw] root_change_set_id
    #   The root change set ID.
    #   @return [String]
    #
    # @!attribute [rw] import_existing_resources
    #   Indicates if the change set imports resources that already exist.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ChangeSetSummary AWS API Documentation
    #
    class ChangeSetSummary < Struct.new(
      :stack_id,
      :stack_name,
      :change_set_id,
      :change_set_name,
      :execution_status,
      :status,
      :status_reason,
      :creation_time,
      :description,
      :include_nested_stacks,
      :parent_change_set_id,
      :root_change_set_id,
      :import_existing_resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # No more than 5 generated templates can be in an `InProgress` or
    # `Pending` status at one time. This error is also returned if a
    # generated template that is in an `InProgress` or `Pending` status is
    # attempted to be updated or deleted.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ConcurrentResourcesLimitExceededException AWS API Documentation
    #
    class ConcurrentResourcesLimitExceededException < Aws::EmptyStructure; end

    # The input for the ContinueUpdateRollback action.
    #
    # @!attribute [rw] stack_name
    #   The name or the unique ID of the stack that you want to continue
    #   rolling back.
    #
    #   <note markdown="1"> Don't specify the name of a nested stack (a stack that was created
    #   by using the `AWS::CloudFormation::Stack` resource). Instead, use
    #   this operation on the parent stack (the stack that contains the
    #   `AWS::CloudFormation::Stack` resource).
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that CloudFormation
    #   assumes to roll back the stack. CloudFormation uses the role's
    #   credentials to make calls on your behalf. CloudFormation always uses
    #   this role for all future operations on the stack. Provided that
    #   users have permission to operate on the stack, CloudFormation uses
    #   this role even if the users don't have permission to pass it.
    #   Ensure that the role grants least permission.
    #
    #   If you don't specify a value, CloudFormation uses the role that was
    #   previously associated with the stack. If no role is available,
    #   CloudFormation uses a temporary session that's generated from your
    #   user credentials.
    #   @return [String]
    #
    # @!attribute [rw] resources_to_skip
    #   A list of the logical IDs of the resources that CloudFormation skips
    #   during the continue update rollback operation. You can specify only
    #   resources that are in the `UPDATE_FAILED` state because a rollback
    #   failed. You can't specify resources that are in the `UPDATE_FAILED`
    #   state for other reasons, for example, because an update was
    #   canceled. To check why a resource update failed, use the
    #   DescribeStackResources action, and view the resource status reason.
    #
    #   Specify this property to skip rolling back resources that
    #   CloudFormation can't successfully roll back. We recommend that you
    #   [ troubleshoot][1] resources before skipping them. CloudFormation
    #   sets the status of the specified resources to `UPDATE_COMPLETE` and
    #   continues to roll back the stack. After the rollback is complete,
    #   the state of the skipped resources will be inconsistent with the
    #   state of the resources in the stack template. Before performing
    #   another stack update, you must update the stack or resources to be
    #   consistent with each other. If you don't, subsequent stack updates
    #   might fail, and the stack will become unrecoverable.
    #
    #   Specify the minimum number of resources required to successfully
    #   roll back your stack. For example, a failed resource update might
    #   cause dependent resources to fail. In this case, it might not be
    #   necessary to skip the dependent resources.
    #
    #   To skip resources that are part of nested stacks, use the following
    #   format: `NestedStackName.ResourceLogicalID`. If you want to specify
    #   the logical ID of a stack resource (`Type:
    #   AWS::CloudFormation::Stack`) in the `ResourcesToSkip` list, then its
    #   corresponding embedded stack must be in one of the following states:
    #   `DELETE_IN_PROGRESS`, `DELETE_COMPLETE`, or `DELETE_FAILED`.
    #
    #   <note markdown="1"> Don't confuse a child stack's name with its corresponding logical
    #   ID defined in the parent stack. For an example of a continue update
    #   rollback operation with nested stacks, see [Continue rolling back
    #   from failed nested stack updates][2].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/troubleshooting.html#troubleshooting-errors-update-rollback-failed
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-continueupdaterollback.html#nested-stacks
    #   @return [Array<String>]
    #
    # @!attribute [rw] client_request_token
    #   A unique identifier for this `ContinueUpdateRollback` request.
    #   Specify this token if you plan to retry requests so that
    #   CloudFormation knows that you're not attempting to continue the
    #   rollback to a stack with the same name. You might retry
    #   `ContinueUpdateRollback` requests to ensure that CloudFormation
    #   successfully received them.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ContinueUpdateRollbackInput AWS API Documentation
    #
    class ContinueUpdateRollbackInput < Struct.new(
      :stack_name,
      :role_arn,
      :resources_to_skip,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output for a ContinueUpdateRollback operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ContinueUpdateRollbackOutput AWS API Documentation
    #
    class ContinueUpdateRollbackOutput < Aws::EmptyStructure; end

    # The input for the CreateChangeSet action.
    #
    # @!attribute [rw] stack_name
    #   The name or the unique ID of the stack for which you are creating a
    #   change set. CloudFormation generates the change set by comparing
    #   this stack's information with the information that you submit, such
    #   as a modified template or different parameter input values.
    #   @return [String]
    #
    # @!attribute [rw] template_body
    #   A structure that contains the body of the revised template, with a
    #   minimum length of 1 byte and a maximum length of 51,200 bytes.
    #   CloudFormation generates the change set by comparing this template
    #   with the template of the stack that you specified.
    #
    #   Conditional: You must specify only `TemplateBody` or `TemplateURL`.
    #   @return [String]
    #
    # @!attribute [rw] template_url
    #   The URL of the file that contains the revised template. The URL must
    #   point to a template (max size: 1 MB) that's located in an Amazon S3
    #   bucket or a Systems Manager document. CloudFormation generates the
    #   change set by comparing this template with the stack that you
    #   specified. The location for an Amazon S3 bucket must start with
    #   `https://`. URLs from S3 static websites are not supported.
    #
    #   Conditional: You must specify only `TemplateBody` or `TemplateURL`.
    #   @return [String]
    #
    # @!attribute [rw] use_previous_template
    #   Whether to reuse the template that's associated with the stack to
    #   create the change set.
    #   @return [Boolean]
    #
    # @!attribute [rw] parameters
    #   A list of `Parameter` structures that specify input parameters for
    #   the change set. For more information, see the Parameter data type.
    #   @return [Array<Types::Parameter>]
    #
    # @!attribute [rw] capabilities
    #   In some cases, you must explicitly acknowledge that your stack
    #   template contains certain capabilities in order for CloudFormation
    #   to create the stack.
    #
    #   * `CAPABILITY_IAM` and `CAPABILITY_NAMED_IAM`
    #
    #     Some stack templates might include resources that can affect
    #     permissions in your Amazon Web Services account; for example, by
    #     creating new IAM users. For those stacks, you must explicitly
    #     acknowledge this by specifying one of these capabilities.
    #
    #     The following IAM resources require you to specify either the
    #     `CAPABILITY_IAM` or `CAPABILITY_NAMED_IAM` capability.
    #
    #     * If you have IAM resources, you can specify either capability.
    #
    #     * If you have IAM resources with custom names, you *must* specify
    #       `CAPABILITY_NAMED_IAM`.
    #
    #     * If you don't specify either of these capabilities,
    #       CloudFormation returns an `InsufficientCapabilities` error.
    #     If your stack template contains these resources, we suggest that
    #     you review all permissions associated with them and edit their
    #     permissions if necessary.
    #
    #     * [ AWS::IAM::AccessKey][1]
    #
    #     * [ AWS::IAM::Group][2]
    #
    #     * [AWS::IAM::InstanceProfile][3]
    #
    #     * [ AWS::IAM::ManagedPolicy][4]
    #
    #     * [ AWS::IAM::Policy][5]
    #
    #     * [ AWS::IAM::Role][6]
    #
    #     * [ AWS::IAM::User][7]
    #
    #     * [AWS::IAM::UserToGroupAddition][8]
    #     For more information, see [Acknowledging IAM resources in
    #     CloudFormation templates][9].
    #
    #   * `CAPABILITY_AUTO_EXPAND`
    #
    #     Some template contain macros. Macros perform custom processing on
    #     templates; this can include simple actions like find-and-replace
    #     operations, all the way to extensive transformations of entire
    #     templates. Because of this, users typically create a change set
    #     from the processed template, so that they can review the changes
    #     resulting from the macros before actually creating the stack. If
    #     your stack template contains one or more macros, and you choose to
    #     create a stack directly from the processed template, without first
    #     reviewing the resulting changes in a change set, you must
    #     acknowledge this capability. This includes the [AWS::Include][10]
    #     and [AWS::Serverless][11] transforms, which are macros hosted by
    #     CloudFormation.
    #
    #     <note markdown="1"> This capacity doesn't apply to creating change sets, and
    #     specifying it when creating change sets has no effect.
    #
    #      If you want to create a stack from a stack template that contains
    #     macros *and* nested stacks, you must create or update the stack
    #     directly from the template using the CreateStack or UpdateStack
    #     action, and specifying this capability.
    #
    #      </note>
    #
    #     For more information about macros, see [Perform custom processing
    #     on CloudFormation templates with template macros][12].
    #
    #   <note markdown="1"> Only one of the `Capabilities` and `ResourceType` parameters can be
    #   specified.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-accesskey.html
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-group.html
    #   [3]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-instanceprofile.html
    #   [4]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-managedpolicy.html
    #   [5]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-policy.html
    #   [6]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-role.html
    #   [7]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-user.html
    #   [8]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-usertogroupaddition.html
    #   [9]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/control-access-with-iam.html#using-iam-capabilities
    #   [10]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-include.html
    #   [11]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html
    #   [12]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_types
    #   The template resource types that you have permissions to work with
    #   if you execute this change set, such as `AWS::EC2::Instance`,
    #   `AWS::EC2::*`, or `Custom::MyCustomInstance`.
    #
    #   If the list of resource types doesn't include a resource type that
    #   you're updating, the stack update fails. By default, CloudFormation
    #   grants permissions to all resource types. IAM uses this parameter
    #   for condition keys in IAM policies for CloudFormation. For more
    #   information, see [Control access with Identity and Access
    #   Management][1] in the *CloudFormation User Guide*.
    #
    #   <note markdown="1"> Only one of the `Capabilities` and `ResourceType` parameters can be
    #   specified.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/control-access-with-iam.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that CloudFormation
    #   assumes when executing the change set. CloudFormation uses the
    #   role's credentials to make calls on your behalf. CloudFormation
    #   uses this role for all future operations on the stack. Provided that
    #   users have permission to operate on the stack, CloudFormation uses
    #   this role even if the users don't have permission to pass it.
    #   Ensure that the role grants least permission.
    #
    #   If you don't specify a value, CloudFormation uses the role that was
    #   previously associated with the stack. If no role is available,
    #   CloudFormation uses a temporary session that is generated from your
    #   user credentials.
    #   @return [String]
    #
    # @!attribute [rw] rollback_configuration
    #   The rollback triggers for CloudFormation to monitor during stack
    #   creation and updating operations, and for the specified monitoring
    #   period afterwards.
    #   @return [Types::RollbackConfiguration]
    #
    # @!attribute [rw] notification_arns
    #   The Amazon Resource Names (ARNs) of Amazon SNS topics that
    #   CloudFormation associates with the stack. To remove all associated
    #   notification topics, specify an empty list.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Key-value pairs to associate with this stack. CloudFormation also
    #   propagates these tags to resources in the stack. You can specify a
    #   maximum of 50 tags.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] change_set_name
    #   The name of the change set. The name must be unique among all change
    #   sets that are associated with the specified stack.
    #
    #   A change set name can contain only alphanumeric, case sensitive
    #   characters, and hyphens. It must start with an alphabetical
    #   character and can't exceed 128 characters.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique identifier for this `CreateChangeSet` request. Specify this
    #   token if you plan to retry requests so that CloudFormation knows
    #   that you're not attempting to create another change set with the
    #   same name. You might retry `CreateChangeSet` requests to ensure that
    #   CloudFormation successfully received them.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description to help you identify this change set.
    #   @return [String]
    #
    # @!attribute [rw] change_set_type
    #   The type of change set operation. To create a change set for a new
    #   stack, specify `CREATE`. To create a change set for an existing
    #   stack, specify `UPDATE`. To create a change set for an import
    #   operation, specify `IMPORT`.
    #
    #   If you create a change set for a new stack, CloudFormation creates a
    #   stack with a unique stack ID, but no template or resources. The
    #   stack will be in the `REVIEW_IN_PROGRESS` state until you execute
    #   the change set.
    #
    #   By default, CloudFormation specifies `UPDATE`. You can't use the
    #   `UPDATE` type to create a change set for a new stack or the `CREATE`
    #   type to create a change set for an existing stack.
    #   @return [String]
    #
    # @!attribute [rw] resources_to_import
    #   The resources to import into your stack.
    #   @return [Array<Types::ResourceToImport>]
    #
    # @!attribute [rw] include_nested_stacks
    #   Creates a change set for the all nested stacks specified in the
    #   template. The default behavior of this action is set to `False`. To
    #   include nested sets in a change set, specify `True`.
    #   @return [Boolean]
    #
    # @!attribute [rw] on_stack_failure
    #   Determines what action will be taken if stack creation fails. If
    #   this parameter is specified, the `DisableRollback` parameter to the
    #   [ExecuteChangeSet][1] API operation must not be specified. This must
    #   be one of these values:
    #
    #   * `DELETE` - Deletes the change set if the stack creation fails.
    #     This is only valid when the `ChangeSetType` parameter is set to
    #     `CREATE`. If the deletion of the stack fails, the status of the
    #     stack is `DELETE_FAILED`.
    #
    #   * `DO_NOTHING` - if the stack creation fails, do nothing. This is
    #     equivalent to specifying `true` for the `DisableRollback`
    #     parameter to the [ExecuteChangeSet][1] API operation.
    #
    #   * `ROLLBACK` - if the stack creation fails, roll back the stack.
    #     This is equivalent to specifying `false` for the `DisableRollback`
    #     parameter to the [ExecuteChangeSet][1] API operation.
    #
    #   For nested stacks, when the `OnStackFailure` parameter is set to
    #   `DELETE` for the change set for the parent stack, any failure in a
    #   child stack will cause the parent stack creation to fail and all
    #   stacks to be deleted.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ExecuteChangeSet.html
    #   @return [String]
    #
    # @!attribute [rw] import_existing_resources
    #   Indicates if the change set auto-imports resources that already
    #   exist. For more information, see [Import Amazon Web Services
    #   resources into a CloudFormation stack automatically][1] in the
    #   *CloudFormation User Guide*.
    #
    #   <note markdown="1"> This parameter can only import resources that have custom names in
    #   templates. For more information, see [name type][2] in the
    #   *CloudFormation User Guide*. To import resources that do not accept
    #   custom names, such as EC2 instances, use the `ResourcesToImport`
    #   parameter instead.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/import-resources-automatically.html
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-properties-name.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSetInput AWS API Documentation
    #
    class CreateChangeSetInput < Struct.new(
      :stack_name,
      :template_body,
      :template_url,
      :use_previous_template,
      :parameters,
      :capabilities,
      :resource_types,
      :role_arn,
      :rollback_configuration,
      :notification_arns,
      :tags,
      :change_set_name,
      :client_token,
      :description,
      :change_set_type,
      :resources_to_import,
      :include_nested_stacks,
      :on_stack_failure,
      :import_existing_resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output for the CreateChangeSet action.
    #
    # @!attribute [rw] id
    #   The Amazon Resource Name (ARN) of the change set.
    #   @return [String]
    #
    # @!attribute [rw] stack_id
    #   The unique ID of the stack.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSetOutput AWS API Documentation
    #
    class CreateChangeSetOutput < Struct.new(
      :id,
      :stack_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resources
    #   An optional list of resources to be included in the generated
    #   template.
    #
    #   If no resources are specified,the template will be created without
    #   any resources. Resources can be added to the template using the
    #   `UpdateGeneratedTemplate` API action.
    #   @return [Array<Types::ResourceDefinition>]
    #
    # @!attribute [rw] generated_template_name
    #   The name assigned to the generated template.
    #   @return [String]
    #
    # @!attribute [rw] stack_name
    #   An optional name or ARN of a stack to use as the base stack for the
    #   generated template.
    #   @return [String]
    #
    # @!attribute [rw] template_configuration
    #   The configuration details of the generated template, including the
    #   `DeletionPolicy` and `UpdateReplacePolicy`.
    #   @return [Types::TemplateConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateGeneratedTemplateInput AWS API Documentation
    #
    class CreateGeneratedTemplateInput < Struct.new(
      :resources,
      :generated_template_name,
      :stack_name,
      :template_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] generated_template_id
    #   The ID of the generated template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateGeneratedTemplateOutput AWS API Documentation
    #
    class CreateGeneratedTemplateOutput < Struct.new(
      :generated_template_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for CreateStack action.
    #
    # @!attribute [rw] stack_name
    #   The name that's associated with the stack. The name must be unique
    #   in the Region in which you are creating the stack.
    #
    #   <note markdown="1"> A stack name can contain only alphanumeric characters (case
    #   sensitive) and hyphens. It must start with an alphabetical character
    #   and can't be longer than 128 characters.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] template_body
    #   Structure that contains the template body with a minimum length of 1
    #   byte and a maximum length of 51,200 bytes.
    #
    #   Conditional: You must specify either `TemplateBody` or
    #   `TemplateURL`, but not both.
    #   @return [String]
    #
    # @!attribute [rw] template_url
    #   The URL of a file that contains the template body. The URL must
    #   point to a template (max size: 1 MB) that's located in an Amazon S3
    #   bucket or a Systems Manager document. The location for an Amazon S3
    #   bucket must start with `https://`. URLs from S3 static websites are
    #   not supported.
    #
    #   Conditional: You must specify either the `TemplateBody` or the
    #   `TemplateURL` parameter, but not both.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A list of `Parameter` structures that specify input parameters for
    #   the stack. For more information, see the [Parameter][1] data type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html
    #   @return [Array<Types::Parameter>]
    #
    # @!attribute [rw] disable_rollback
    #   Set to `true` to disable rollback of the stack if stack creation
    #   failed. You can specify either `DisableRollback` or `OnFailure`, but
    #   not both.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] rollback_configuration
    #   The rollback triggers for CloudFormation to monitor during stack
    #   creation and updating operations, and for the specified monitoring
    #   period afterwards.
    #   @return [Types::RollbackConfiguration]
    #
    # @!attribute [rw] timeout_in_minutes
    #   The amount of time that can pass before the stack status becomes
    #   `CREATE_FAILED`; if `DisableRollback` is not set or is set to
    #   `false`, the stack will be rolled back.
    #   @return [Integer]
    #
    # @!attribute [rw] notification_arns
    #   The Amazon SNS topic ARNs to publish stack related events. You can
    #   find your Amazon SNS topic ARNs using the Amazon SNS console or your
    #   Command Line Interface (CLI).
    #   @return [Array<String>]
    #
    # @!attribute [rw] capabilities
    #   In some cases, you must explicitly acknowledge that your stack
    #   template contains certain capabilities in order for CloudFormation
    #   to create the stack.
    #
    #   * `CAPABILITY_IAM` and `CAPABILITY_NAMED_IAM`
    #
    #     Some stack templates might include resources that can affect
    #     permissions in your Amazon Web Services account; for example, by
    #     creating new IAM users. For those stacks, you must explicitly
    #     acknowledge this by specifying one of these capabilities.
    #
    #     The following IAM resources require you to specify either the
    #     `CAPABILITY_IAM` or `CAPABILITY_NAMED_IAM` capability.
    #
    #     * If you have IAM resources, you can specify either capability.
    #
    #     * If you have IAM resources with custom names, you *must* specify
    #       `CAPABILITY_NAMED_IAM`.
    #
    #     * If you don't specify either of these capabilities,
    #       CloudFormation returns an `InsufficientCapabilities` error.
    #     If your stack template contains these resources, we recommend that
    #     you review all permissions associated with them and edit their
    #     permissions if necessary.
    #
    #     * [AWS::IAM::AccessKey][1]
    #
    #     * [AWS::IAM::Group][2]
    #
    #     * [AWS::IAM::InstanceProfile][3]
    #
    #     * [ AWS::IAM::ManagedPolicy][4]
    #
    #     * [AWS::IAM::Policy][5]
    #
    #     * [AWS::IAM::Role][6]
    #
    #     * [AWS::IAM::User][7]
    #
    #     * [AWS::IAM::UserToGroupAddition][8]
    #     For more information, see [Acknowledging IAM resources in
    #     CloudFormation templates][9].
    #
    #   * `CAPABILITY_AUTO_EXPAND`
    #
    #     Some template contain macros. Macros perform custom processing on
    #     templates; this can include simple actions like find-and-replace
    #     operations, all the way to extensive transformations of entire
    #     templates. Because of this, users typically create a change set
    #     from the processed template, so that they can review the changes
    #     resulting from the macros before actually creating the stack. If
    #     your stack template contains one or more macros, and you choose to
    #     create a stack directly from the processed template, without first
    #     reviewing the resulting changes in a change set, you must
    #     acknowledge this capability. This includes the [AWS::Include][10]
    #     and [AWS::Serverless][11] transforms, which are macros hosted by
    #     CloudFormation.
    #
    #     If you want to create a stack from a stack template that contains
    #     macros *and* nested stacks, you must create the stack directly
    #     from the template using this capability.
    #
    #     You should only create stacks directly from a stack template that
    #     contains macros if you know what processing the macro performs.
    #
    #      Each macro relies on an underlying Lambda service function for
    #     processing stack templates. Be aware that the Lambda function
    #     owner can update the function operation without CloudFormation
    #     being notified.
    #
    #     For more information, see [Perform custom processing on
    #     CloudFormation templates with template macros][12].
    #
    #   <note markdown="1"> Only one of the `Capabilities` and `ResourceType` parameters can be
    #   specified.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-accesskey.html
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-group.html
    #   [3]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-instanceprofile.html
    #   [4]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-managedpolicy.html
    #   [5]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-policy.html
    #   [6]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-role.html
    #   [7]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-user.html
    #   [8]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-usertogroupaddition.html
    #   [9]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/control-access-with-iam.html#using-iam-capabilities
    #   [10]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-include.html
    #   [11]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html
    #   [12]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_types
    #   The template resource types that you have permissions to work with
    #   for this create stack action, such as `AWS::EC2::Instance`,
    #   `AWS::EC2::*`, or `Custom::MyCustomInstance`. Use the following
    #   syntax to describe template resource types: `AWS::*` (for all Amazon
    #   Web Services resources), `Custom::*` (for all custom resources),
    #   `Custom::logical_ID ` (for a specific custom resource),
    #   `AWS::service_name::*` (for all resources of a particular Amazon Web
    #   Services service), and `AWS::service_name::resource_logical_ID `
    #   (for a specific Amazon Web Services resource).
    #
    #   If the list of resource types doesn't include a resource that
    #   you're creating, the stack creation fails. By default,
    #   CloudFormation grants permissions to all resource types. IAM uses
    #   this parameter for CloudFormation-specific condition keys in IAM
    #   policies. For more information, see [Control access with Identity
    #   and Access Management][1].
    #
    #   <note markdown="1"> Only one of the `Capabilities` and `ResourceType` parameters can be
    #   specified.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/control-access-with-iam.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that CloudFormation
    #   assumes to create the stack. CloudFormation uses the role's
    #   credentials to make calls on your behalf. CloudFormation always uses
    #   this role for all future operations on the stack. Provided that
    #   users have permission to operate on the stack, CloudFormation uses
    #   this role even if the users don't have permission to pass it.
    #   Ensure that the role grants least privilege.
    #
    #   If you don't specify a value, CloudFormation uses the role that was
    #   previously associated with the stack. If no role is available,
    #   CloudFormation uses a temporary session that's generated from your
    #   user credentials.
    #   @return [String]
    #
    # @!attribute [rw] on_failure
    #   Determines what action will be taken if stack creation fails. This
    #   must be one of: `DO_NOTHING`, `ROLLBACK`, or `DELETE`. You can
    #   specify either `OnFailure` or `DisableRollback`, but not both.
    #
    #   <note markdown="1"> Although the default setting is `ROLLBACK`, there is one exception.
    #   This exception occurs when a StackSet attempts to deploy a stack
    #   instance and the stack instance fails to create successfully. In
    #   this case, the `CreateStack` call overrides the default setting and
    #   sets the value of `OnFailure` to `DELETE`.
    #
    #    </note>
    #
    #   Default: `ROLLBACK`
    #   @return [String]
    #
    # @!attribute [rw] stack_policy_body
    #   Structure that contains the stack policy body. For more information,
    #   see [Prevent updates to stack resources][1] in the *CloudFormation
    #   User Guide*. You can specify either the `StackPolicyBody` or the
    #   `StackPolicyURL` parameter, but not both.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html
    #   @return [String]
    #
    # @!attribute [rw] stack_policy_url
    #   Location of a file that contains the stack policy. The URL must
    #   point to a policy (maximum size: 16 KB) located in an S3 bucket in
    #   the same Region as the stack. The location for an Amazon S3 bucket
    #   must start with `https://`. URLs from S3 static websites are not
    #   supported.
    #
    #   You can specify either the `StackPolicyBody` or the `StackPolicyURL`
    #   parameter, but not both.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs to associate with this stack. CloudFormation also
    #   propagates these tags to the resources created in the stack. A
    #   maximum number of 50 tags can be specified.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] client_request_token
    #   A unique identifier for this `CreateStack` request. Specify this
    #   token if you plan to retry requests so that CloudFormation knows
    #   that you're not attempting to create a stack with the same name.
    #   You might retry `CreateStack` requests to ensure that CloudFormation
    #   successfully received them.
    #
    #   All events initiated by a given stack operation are assigned the
    #   same client request token, which you can use to track operations.
    #   For example, if you execute a `CreateStack` operation with the token
    #   `token1`, then all the `StackEvents` generated by that operation
    #   will have `ClientRequestToken` set as `token1`.
    #
    #   In the console, stack operations display the client request token on
    #   the Events tab. Stack operations that are initiated from the console
    #   use the token format *Console-StackOperation-ID*, which helps you
    #   easily identify the stack operation . For example, if you create a
    #   stack using the console, each stack event would be assigned the same
    #   token in the following format:
    #   `Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002`.
    #   @return [String]
    #
    # @!attribute [rw] enable_termination_protection
    #   Whether to enable termination protection on the specified stack. If
    #   a user attempts to delete a stack with termination protection
    #   enabled, the operation fails and the stack remains unchanged. For
    #   more information, see [Protect CloudFormation stacks from being
    #   deleted][1] in the *CloudFormation User Guide*. Termination
    #   protection is deactivated on stacks by default.
    #
    #   For [nested stacks][2], termination protection is set on the root
    #   stack and can't be changed directly on the nested stack.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html
    #   @return [Boolean]
    #
    # @!attribute [rw] retain_except_on_create
    #   When set to `true`, newly created resources are deleted when the
    #   operation rolls back. This includes newly created resources marked
    #   with a deletion policy of `Retain`.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateStackInput AWS API Documentation
    #
    class CreateStackInput < Struct.new(
      :stack_name,
      :template_body,
      :template_url,
      :parameters,
      :disable_rollback,
      :rollback_configuration,
      :timeout_in_minutes,
      :notification_arns,
      :capabilities,
      :resource_types,
      :role_arn,
      :on_failure,
      :stack_policy_body,
      :stack_policy_url,
      :tags,
      :client_request_token,
      :enable_termination_protection,
      :retain_except_on_create)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_set_name
    #   The name or unique ID of the StackSet that you want to create stack
    #   instances from.
    #   @return [String]
    #
    # @!attribute [rw] accounts
    #   \[Self-managed permissions\] The account IDs of one or more Amazon
    #   Web Services accounts that you want to create stack instances in the
    #   specified Region(s) for.
    #
    #   You can specify `Accounts` or `DeploymentTargets`, but not both.
    #   @return [Array<String>]
    #
    # @!attribute [rw] deployment_targets
    #   \[Service-managed permissions\] The Organizations accounts in which
    #   to create stack instances in the specified Amazon Web Services
    #   Regions.
    #
    #   You can specify `Accounts` or `DeploymentTargets`, but not both.
    #   @return [Types::DeploymentTargets]
    #
    # @!attribute [rw] regions
    #   The names of one or more Amazon Web Services Regions where you want
    #   to create stack instances using the specified Amazon Web Services
    #   accounts.
    #   @return [Array<String>]
    #
    # @!attribute [rw] parameter_overrides
    #   A list of StackSet parameters whose values you want to override in
    #   the selected stack instances.
    #
    #   Any overridden parameter values will be applied to all stack
    #   instances in the specified accounts and Amazon Web Services Regions.
    #   When specifying parameters and their values, be aware of how
    #   CloudFormation sets parameter values during stack instance
    #   operations:
    #
    #   * To override the current value for a parameter, include the
    #     parameter and specify its value.
    #
    #   * To leave an overridden parameter set to its present value, include
    #     the parameter and specify `UsePreviousValue` as `true`. (You
    #     can't specify both a value and set `UsePreviousValue` to `true`.)
    #
    #   * To set an overridden parameter back to the value specified in the
    #     StackSet, specify a parameter list but don't include the
    #     parameter in the list.
    #
    #   * To leave all parameters set to their present values, don't
    #     specify this property at all.
    #
    #   During StackSet updates, any parameter values overridden for a stack
    #   instance aren't updated, but retain their overridden value.
    #
    #   You can only override the parameter *values* that are specified in
    #   the StackSet; to add or delete a parameter itself, use
    #   [UpdateStackSet][1] to update the StackSet template.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html
    #   @return [Array<Types::Parameter>]
    #
    # @!attribute [rw] operation_preferences
    #   Preferences for how CloudFormation performs this StackSet operation.
    #   @return [Types::StackSetOperationPreferences]
    #
    # @!attribute [rw] operation_id
    #   The unique identifier for this StackSet operation.
    #
    #   The operation ID also functions as an idempotency token, to ensure
    #   that CloudFormation performs the StackSet operation only once, even
    #   if you retry the request multiple times. You might retry StackSet
    #   operation requests to ensure that CloudFormation successfully
    #   received them.
    #
    #   If you don't specify an operation ID, the SDK generates one
    #   automatically.
    #
    #   Repeating this StackSet operation with a new operation ID retries
    #   all stack instances whose status is `OUTDATED`.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] call_as
    #   \[Service-managed permissions\] Specifies whether you are acting as
    #   an account administrator in the organization's management account
    #   or as a delegated administrator in a member account.
    #
    #   By default, `SELF` is specified. Use `SELF` for StackSets with
    #   self-managed permissions.
    #
    #   * If you are signed in to the management account, specify `SELF`.
    #
    #   * If you are signed in to a delegated administrator account, specify
    #     `DELEGATED_ADMIN`.
    #
    #     Your Amazon Web Services account must be registered as a delegated
    #     administrator in the management account. For more information, see
    #     [Register a delegated administrator][1] in the *CloudFormation
    #     User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateStackInstancesInput AWS API Documentation
    #
    class CreateStackInstancesInput < Struct.new(
      :stack_set_name,
      :accounts,
      :deployment_targets,
      :regions,
      :parameter_overrides,
      :operation_preferences,
      :operation_id,
      :call_as)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation_id
    #   The unique identifier for this StackSet operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateStackInstancesOutput AWS API Documentation
    #
    class CreateStackInstancesOutput < Struct.new(
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output for a CreateStack action.
    #
    # @!attribute [rw] stack_id
    #   Unique identifier of the stack.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateStackOutput AWS API Documentation
    #
    class CreateStackOutput < Struct.new(
      :stack_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   A description to help you identify the stack refactor.
    #   @return [String]
    #
    # @!attribute [rw] enable_stack_creation
    #   Determines if a new stack is created with the refactor.
    #   @return [Boolean]
    #
    # @!attribute [rw] resource_mappings
    #   The mappings for the stack resource `Source` and stack resource
    #   `Destination`.
    #   @return [Array<Types::ResourceMapping>]
    #
    # @!attribute [rw] stack_definitions
    #   The stacks being refactored.
    #   @return [Array<Types::StackDefinition>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateStackRefactorInput AWS API Documentation
    #
    class CreateStackRefactorInput < Struct.new(
      :description,
      :enable_stack_creation,
      :resource_mappings,
      :stack_definitions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_refactor_id
    #   The ID associated with the stack refactor created from the
    #   CreateStackRefactor action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateStackRefactorOutput AWS API Documentation
    #
    class CreateStackRefactorOutput < Struct.new(
      :stack_refactor_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_set_name
    #   The name to associate with the StackSet. The name must be unique in
    #   the Region where you create your StackSet.
    #
    #   <note markdown="1"> A stack name can contain only alphanumeric characters
    #   (case-sensitive) and hyphens. It must start with an alphabetic
    #   character and can't be longer than 128 characters.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the StackSet. You can use the description to
    #   identify the StackSet's purpose or other important information.
    #   @return [String]
    #
    # @!attribute [rw] template_body
    #   The structure that contains the template body, with a minimum length
    #   of 1 byte and a maximum length of 51,200 bytes.
    #
    #   Conditional: You must specify either the `TemplateBody` or the
    #   `TemplateURL` parameter, but not both.
    #   @return [String]
    #
    # @!attribute [rw] template_url
    #   The URL of a file that contains the template body. The URL must
    #   point to a template (maximum size: 1 MB) that's located in an
    #   Amazon S3 bucket or a Systems Manager document. The location for an
    #   Amazon S3 bucket must start with `https://`. S3 static website URLs
    #   are not supported.
    #
    #   Conditional: You must specify either the `TemplateBody` or the
    #   `TemplateURL` parameter, but not both.
    #   @return [String]
    #
    # @!attribute [rw] stack_id
    #   The stack ID you are importing into a new StackSet. Specify the
    #   Amazon Resource Name (ARN) of the stack.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The input parameters for the StackSet template.
    #   @return [Array<Types::Parameter>]
    #
    # @!attribute [rw] capabilities
    #   In some cases, you must explicitly acknowledge that your StackSet
    #   template contains certain capabilities in order for CloudFormation
    #   to create the StackSet and related stack instances.
    #
    #   * `CAPABILITY_IAM` and `CAPABILITY_NAMED_IAM`
    #
    #     Some stack templates might include resources that can affect
    #     permissions in your Amazon Web Services account; for example, by
    #     creating new IAM users. For those StackSets, you must explicitly
    #     acknowledge this by specifying one of these capabilities.
    #
    #     The following IAM resources require you to specify either the
    #     `CAPABILITY_IAM` or `CAPABILITY_NAMED_IAM` capability.
    #
    #     * If you have IAM resources, you can specify either capability.
    #
    #     * If you have IAM resources with custom names, you *must* specify
    #       `CAPABILITY_NAMED_IAM`.
    #
    #     * If you don't specify either of these capabilities,
    #       CloudFormation returns an `InsufficientCapabilities` error.
    #     If your stack template contains these resources, we recommend that
    #     you review all permissions associated with them and edit their
    #     permissions if necessary.
    #
    #     * [AWS::IAM::AccessKey][1]
    #
    #     * [AWS::IAM::Group][2]
    #
    #     * [AWS::IAM::InstanceProfile][3]
    #
    #     * [AWS::IAM::Policy][4]
    #
    #     * [AWS::IAM::Role][5]
    #
    #     * [AWS::IAM::User][6]
    #
    #     * [AWS::IAM::UserToGroupAddition][7]
    #     For more information, see [Acknowledging IAM resources in
    #     CloudFormation templates][8].
    #
    #   * `CAPABILITY_AUTO_EXPAND`
    #
    #     Some templates reference macros. If your StackSet template
    #     references one or more macros, you must create the StackSet
    #     directly from the processed template, without first reviewing the
    #     resulting changes in a change set. To create the StackSet
    #     directly, you must acknowledge this capability. For more
    #     information, see [Perform custom processing on CloudFormation
    #     templates with template macros][9].
    #
    #     StackSets with service-managed permissions don't currently
    #     support the use of macros in templates. (This includes the
    #     [AWS::Include][10] and [AWS::Serverless][11] transforms, which are
    #     macros hosted by CloudFormation.) Even if you specify this
    #     capability for a StackSet with service-managed permissions, if you
    #     reference a macro in your template the StackSet operation will
    #     fail.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-accesskey.html
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-group.html
    #   [3]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-instanceprofile.html
    #   [4]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-policy.html
    #   [5]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-role.html
    #   [6]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-user.html
    #   [7]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-usertogroupaddition.html
    #   [8]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/control-access-with-iam.html#using-iam-capabilities
    #   [9]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html
    #   [10]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-include.html
    #   [11]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The key-value pairs to associate with this StackSet and the stacks
    #   created from it. CloudFormation also propagates these tags to
    #   supported resources that are created in the stacks. A maximum number
    #   of 50 tags can be specified.
    #
    #   If you specify tags as part of a `CreateStackSet` action,
    #   CloudFormation checks to see if you have the required IAM permission
    #   to tag resources. If you don't, the entire `CreateStackSet` action
    #   fails with an `access denied` error, and the StackSet is not
    #   created.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] administration_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to use to create this
    #   StackSet.
    #
    #   Specify an IAM role only if you are using customized administrator
    #   roles to control which users or groups can manage specific StackSets
    #   within the same administrator account. For more information, see
    #   [Grant self-managed permissions][1] in the *CloudFormation User
    #   Guide*.
    #
    #   Valid only if the permissions model is `SELF_MANAGED`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html
    #   @return [String]
    #
    # @!attribute [rw] execution_role_name
    #   The name of the IAM execution role to use to create the StackSet. If
    #   you do not specify an execution role, CloudFormation uses the
    #   `AWSCloudFormationStackSetExecutionRole` role for the StackSet
    #   operation.
    #
    #   Specify an IAM role only if you are using customized execution roles
    #   to control which stack resources users and groups can include in
    #   their StackSets.
    #
    #   Valid only if the permissions model is `SELF_MANAGED`.
    #   @return [String]
    #
    # @!attribute [rw] permission_model
    #   Describes how the IAM roles required for StackSet operations are
    #   created. By default, `SELF-MANAGED` is specified.
    #
    #   * With `self-managed` permissions, you must create the administrator
    #     and execution roles required to deploy to target accounts. For
    #     more information, see [Grant self-managed permissions][1].
    #
    #   * With `service-managed` permissions, StackSets automatically
    #     creates the IAM roles required to deploy to accounts managed by
    #     Organizations. For more information, see [Activate trusted access
    #     for StackSets with Organizations][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-activate-trusted-access.html
    #   @return [String]
    #
    # @!attribute [rw] auto_deployment
    #   Describes whether StackSets automatically deploys to Organizations
    #   accounts that are added to the target organization or organizational
    #   unit (OU). For more information, see [Enable or disable automatic
    #   deployments for StackSets in Organizations][1] in the
    #   *CloudFormation User Guide*.
    #
    #   Required if the permissions model is `SERVICE_MANAGED`. (Not used
    #   with self-managed permissions.)
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-manage-auto-deployment.html
    #   @return [Types::AutoDeployment]
    #
    # @!attribute [rw] call_as
    #   Specifies whether you are acting as an account administrator in the
    #   organization's management account or as a delegated administrator
    #   in a member account.
    #
    #   By default, `SELF` is specified. Use `SELF` for StackSets with
    #   self-managed permissions.
    #
    #   * To create a StackSet with service-managed permissions while signed
    #     in to the management account, specify `SELF`.
    #
    #   * To create a StackSet with service-managed permissions while signed
    #     in to a delegated administrator account, specify
    #     `DELEGATED_ADMIN`.
    #
    #     Your Amazon Web Services account must be registered as a delegated
    #     admin in the management account. For more information, see
    #     [Register a delegated administrator][1] in the *CloudFormation
    #     User Guide*.
    #
    #   StackSets with service-managed permissions are created in the
    #   management account, including StackSets that are created by
    #   delegated administrators.
    #
    #   Valid only if the permissions model is `SERVICE_MANAGED`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique identifier for this `CreateStackSet` request. Specify this
    #   token if you plan to retry requests so that CloudFormation knows
    #   that you're not attempting to create another StackSet with the same
    #   name. You might retry `CreateStackSet` requests to ensure that
    #   CloudFormation successfully received them.
    #
    #   If you don't specify an operation ID, the SDK generates one
    #   automatically.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] managed_execution
    #   Describes whether CloudFormation performs non-conflicting operations
    #   concurrently and queues conflicting operations.
    #   @return [Types::ManagedExecution]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateStackSetInput AWS API Documentation
    #
    class CreateStackSetInput < Struct.new(
      :stack_set_name,
      :description,
      :template_body,
      :template_url,
      :stack_id,
      :parameters,
      :capabilities,
      :tags,
      :administration_role_arn,
      :execution_role_name,
      :permission_model,
      :auto_deployment,
      :call_as,
      :client_request_token,
      :managed_execution)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_set_id
    #   The ID of the StackSet that you're creating.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateStackSetOutput AWS API Documentation
    #
    class CreateStackSetOutput < Struct.new(
      :stack_set_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource exists, but has been changed.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreatedButModifiedException AWS API Documentation
    #
    class CreatedButModifiedException < Aws::EmptyStructure; end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DeactivateOrganizationsAccessInput AWS API Documentation
    #
    class DeactivateOrganizationsAccessInput < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DeactivateOrganizationsAccessOutput AWS API Documentation
    #
    class DeactivateOrganizationsAccessOutput < Aws::EmptyStructure; end

    # @!attribute [rw] type_name
    #   The type name of the extension, in this account and Region. If you
    #   specified a type name alias when enabling the extension, use the
    #   type name alias.
    #
    #   Conditional: You must specify either `Arn`, or `TypeName` and
    #   `Type`.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The extension type.
    #
    #   Conditional: You must specify either `Arn`, or `TypeName` and
    #   `Type`.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the extension, in this account
    #   and Region.
    #
    #   Conditional: You must specify either `Arn`, or `TypeName` and
    #   `Type`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DeactivateTypeInput AWS API Documentation
    #
    class DeactivateTypeInput < Struct.new(
      :type_name,
      :type,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DeactivateTypeOutput AWS API Documentation
    #
    class DeactivateTypeOutput < Aws::EmptyStructure; end

    # The input for the DeleteChangeSet action.
    #
    # @!attribute [rw] change_set_name
    #   The name or Amazon Resource Name (ARN) of the change set that you
    #   want to delete.
    #   @return [String]
    #
    # @!attribute [rw] stack_name
    #   If you specified the name of a change set to delete, specify the
    #   stack name or Amazon Resource Name (ARN) that's associated with it.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DeleteChangeSetInput AWS API Documentation
    #
    class DeleteChangeSetInput < Struct.new(
      :change_set_name,
      :stack_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output for the DeleteChangeSet action.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DeleteChangeSetOutput AWS API Documentation
    #
    class DeleteChangeSetOutput < Aws::EmptyStructure; end

    # @!attribute [rw] generated_template_name
    #   The name or Amazon Resource Name (ARN) of a generated template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DeleteGeneratedTemplateInput AWS API Documentation
    #
    class DeleteGeneratedTemplateInput < Struct.new(
      :generated_template_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for DeleteStack action.
    #
    # @!attribute [rw] stack_name
    #   The name or the unique stack ID that's associated with the stack.
    #   @return [String]
    #
    # @!attribute [rw] retain_resources
    #   For stacks in the `DELETE_FAILED` state, a list of resource logical
    #   IDs that are associated with the resources you want to retain.
    #   During deletion, CloudFormation deletes the stack but doesn't
    #   delete the retained resources.
    #
    #   Retaining resources is useful when you can't delete a resource,
    #   such as a non-empty S3 bucket, but you want to delete the stack.
    #   @return [Array<String>]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that CloudFormation
    #   assumes to delete the stack. CloudFormation uses the role's
    #   credentials to make calls on your behalf.
    #
    #   If you don't specify a value, CloudFormation uses the role that was
    #   previously associated with the stack. If no role is available,
    #   CloudFormation uses a temporary session that's generated from your
    #   user credentials.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique identifier for this `DeleteStack` request. Specify this
    #   token if you plan to retry requests so that CloudFormation knows
    #   that you're not attempting to delete a stack with the same name.
    #   You might retry `DeleteStack` requests to ensure that CloudFormation
    #   successfully received them.
    #
    #   All events initiated by a given stack operation are assigned the
    #   same client request token, which you can use to track operations.
    #   For example, if you execute a `CreateStack` operation with the token
    #   `token1`, then all the `StackEvents` generated by that operation
    #   will have `ClientRequestToken` set as `token1`.
    #
    #   In the console, stack operations display the client request token on
    #   the Events tab. Stack operations that are initiated from the console
    #   use the token format *Console-StackOperation-ID*, which helps you
    #   easily identify the stack operation . For example, if you create a
    #   stack using the console, each stack event would be assigned the same
    #   token in the following format:
    #   `Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002`.
    #   @return [String]
    #
    # @!attribute [rw] deletion_mode
    #   Specifies the deletion mode for the stack. Possible values are:
    #
    #   * `STANDARD` - Use the standard behavior. Specifying this value is
    #     the same as not specifying this parameter.
    #
    #   * `FORCE_DELETE_STACK` - Delete the stack if it's stuck in a
    #     `DELETE_FAILED` state due to resource deletion failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DeleteStackInput AWS API Documentation
    #
    class DeleteStackInput < Struct.new(
      :stack_name,
      :retain_resources,
      :role_arn,
      :client_request_token,
      :deletion_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_set_name
    #   The name or unique ID of the StackSet that you want to delete stack
    #   instances for.
    #   @return [String]
    #
    # @!attribute [rw] accounts
    #   \[Self-managed permissions\] The account IDs of the Amazon Web
    #   Services accounts that you want to delete stack instances for.
    #
    #   You can specify `Accounts` or `DeploymentTargets`, but not both.
    #   @return [Array<String>]
    #
    # @!attribute [rw] deployment_targets
    #   \[Service-managed permissions\] The Organizations accounts from
    #   which to delete stack instances.
    #
    #   You can specify `Accounts` or `DeploymentTargets`, but not both.
    #   @return [Types::DeploymentTargets]
    #
    # @!attribute [rw] regions
    #   The Amazon Web Services Regions where you want to delete StackSet
    #   instances.
    #   @return [Array<String>]
    #
    # @!attribute [rw] operation_preferences
    #   Preferences for how CloudFormation performs this StackSet operation.
    #   @return [Types::StackSetOperationPreferences]
    #
    # @!attribute [rw] retain_stacks
    #   Removes the stack instances from the specified StackSet, but
    #   doesn't delete the stacks. You can't reassociate a retained stack
    #   or add an existing, saved stack to a new stack set.
    #
    #   For more information, see [StackSet operation options][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options
    #   @return [Boolean]
    #
    # @!attribute [rw] operation_id
    #   The unique identifier for this StackSet operation.
    #
    #   If you don't specify an operation ID, the SDK generates one
    #   automatically.
    #
    #   The operation ID also functions as an idempotency token, to ensure
    #   that CloudFormation performs the StackSet operation only once, even
    #   if you retry the request multiple times. You can retry StackSet
    #   operation requests to ensure that CloudFormation successfully
    #   received them.
    #
    #   Repeating this StackSet operation with a new operation ID retries
    #   all stack instances whose status is `OUTDATED`.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] call_as
    #   \[Service-managed permissions\] Specifies whether you are acting as
    #   an account administrator in the organization's management account
    #   or as a delegated administrator in a member account.
    #
    #   By default, `SELF` is specified. Use `SELF` for StackSets with
    #   self-managed permissions.
    #
    #   * If you are signed in to the management account, specify `SELF`.
    #
    #   * If you are signed in to a delegated administrator account, specify
    #     `DELEGATED_ADMIN`.
    #
    #     Your Amazon Web Services account must be registered as a delegated
    #     administrator in the management account. For more information, see
    #     [Register a delegated administrator][1] in the *CloudFormation
    #     User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DeleteStackInstancesInput AWS API Documentation
    #
    class DeleteStackInstancesInput < Struct.new(
      :stack_set_name,
      :accounts,
      :deployment_targets,
      :regions,
      :operation_preferences,
      :retain_stacks,
      :operation_id,
      :call_as)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation_id
    #   The unique identifier for this StackSet operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DeleteStackInstancesOutput AWS API Documentation
    #
    class DeleteStackInstancesOutput < Struct.new(
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_set_name
    #   The name or unique ID of the StackSet that you're deleting. You can
    #   obtain this value by running ListStackSets.
    #   @return [String]
    #
    # @!attribute [rw] call_as
    #   \[Service-managed permissions\] Specifies whether you are acting as
    #   an account administrator in the organization's management account
    #   or as a delegated administrator in a member account.
    #
    #   By default, `SELF` is specified. Use `SELF` for StackSets with
    #   self-managed permissions.
    #
    #   * If you are signed in to the management account, specify `SELF`.
    #
    #   * If you are signed in to a delegated administrator account, specify
    #     `DELEGATED_ADMIN`.
    #
    #     Your Amazon Web Services account must be registered as a delegated
    #     administrator in the management account. For more information, see
    #     [Register a delegated administrator][1] in the *CloudFormation
    #     User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DeleteStackSetInput AWS API Documentation
    #
    class DeleteStackSetInput < Struct.new(
      :stack_set_name,
      :call_as)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DeleteStackSetOutput AWS API Documentation
    #
    class DeleteStackSetOutput < Aws::EmptyStructure; end

    # Specifies the Organizations accounts where you want to create, update,
    # or delete stack instances. You can target either your entire
    # organization or specific accounts using organizational units (OUs) and
    # account filter options.
    #
    # CloudFormation doesn't deploy stack instances to the organization
    # management account, even if the organization management account is in
    # your organization or in an OU in your organization.
    #
    # When performing create operations, if you specify both
    # `OrganizationalUnitIds` and `Accounts`, you must also specify the
    # `AccountFilterType` property.
    #
    # @!attribute [rw] accounts
    #   The Amazon Web Services account IDs where you want to perform stack
    #   operations. How these accounts are used depends on the
    #   `AccountFilterType` property.
    #
    #   If you have many account numbers, you can provide those accounts
    #   using the `AccountsUrl` property instead.
    #   @return [Array<String>]
    #
    # @!attribute [rw] accounts_url
    #   The Amazon S3 URL path to a file that contains a list of Amazon Web
    #   Services account IDs. The file format must be either `.csv` or
    #   `.txt`, and the data can be comma-separated or new-line-separated.
    #   There is currently a 10MB limit for the data (approximately 800,000
    #   accounts).
    #
    #   This property serves the same purpose as `Accounts` but allows you
    #   to specify a large number of accounts.
    #   @return [String]
    #
    # @!attribute [rw] organizational_unit_ids
    #   The organization root ID or organizational unit (OU) IDs where you
    #   want to perform stack operations. CloudFormation will perform
    #   operations on accounts within these OUs and their child OUs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] account_filter_type
    #   Refines which accounts will have stack operations performed on them
    #   by specifying how to use the `Accounts` and `OrganizationalUnitIds`
    #   properties together.
    #
    #   The following values determine how CloudFormation selects target
    #   accounts:
    #
    #   * `INTERSECTION`: Performs stack operations only on specific
    #     individual accounts within the selected OUs. Only accounts that
    #     are both specified in the `Accounts` property and belong to the
    #     specified OUs will be targeted.
    #
    #   * `DIFFERENCE`: Performs stack operations on all accounts in the
    #     selected OUs except for specific accounts listed in the `Accounts`
    #     property. This enables you to exclude certain accounts within an
    #     OU, such as suspended accounts.
    #
    #   * `UNION`: Performs stack operations on the specified OUs plus
    #     additional individual accounts listed in the `Accounts` property.
    #     This is the default value if `AccountFilterType` is not provided.
    #     This lets you target an entire OU and individual accounts from a
    #     different OU in one request. Note that `UNION` is not supported
    #     for `CreateStackInstances` operations.
    #
    #   * `NONE`: Performs stack operations on all accounts in the specified
    #     organizational units (OUs).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DeploymentTargets AWS API Documentation
    #
    class DeploymentTargets < Struct.new(
      :accounts,
      :accounts_url,
      :organizational_unit_ids,
      :account_filter_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the extension.
    #
    #   Conditional: You must specify either `TypeName` and `Type`, or
    #   `Arn`.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The kind of extension.
    #
    #   Conditional: You must specify either `TypeName` and `Type`, or
    #   `Arn`.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The name of the extension.
    #
    #   Conditional: You must specify either `TypeName` and `Type`, or
    #   `Arn`.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The ID of a specific version of the extension. The version ID is the
    #   value at the end of the Amazon Resource Name (ARN) assigned to the
    #   extension version when it is registered.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DeregisterTypeInput AWS API Documentation
    #
    class DeregisterTypeInput < Struct.new(
      :arn,
      :type,
      :type_name,
      :version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DeregisterTypeOutput AWS API Documentation
    #
    class DeregisterTypeOutput < Aws::EmptyStructure; end

    # The input for the DescribeAccountLimits action.
    #
    # @!attribute [rw] next_token
    #   A string that identifies the next page of limits that you want to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeAccountLimitsInput AWS API Documentation
    #
    class DescribeAccountLimitsInput < Struct.new(
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output for the DescribeAccountLimits action.
    #
    # @!attribute [rw] account_limits
    #   An account limit structure that contain a list of CloudFormation
    #   account limits and their values.
    #   @return [Array<Types::AccountLimit>]
    #
    # @!attribute [rw] next_token
    #   If the output exceeds 1 MB in size, a string that identifies the
    #   next page of limits. If no additional page exists, this value is
    #   null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeAccountLimitsOutput AWS API Documentation
    #
    class DescribeAccountLimitsOutput < Struct.new(
      :account_limits,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] change_set_name
    #   The name or Amazon Resource Name (ARN) of the change set that you
    #   want to describe.
    #   @return [String]
    #
    # @!attribute [rw] stack_name
    #   If you specified the name of a change set, specify the stack name or
    #   stack ID (ARN) of the change set you want to describe.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A string, provided by the `DescribeChangeSetHooks` response output,
    #   that identifies the next page of information that you want to
    #   retrieve.
    #   @return [String]
    #
    # @!attribute [rw] logical_resource_id
    #   If specified, lists only the Hooks related to the specified
    #   `LogicalResourceId`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeChangeSetHooksInput AWS API Documentation
    #
    class DescribeChangeSetHooksInput < Struct.new(
      :change_set_name,
      :stack_name,
      :next_token,
      :logical_resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] change_set_id
    #   The change set identifier (stack ID).
    #   @return [String]
    #
    # @!attribute [rw] change_set_name
    #   The change set name.
    #   @return [String]
    #
    # @!attribute [rw] hooks
    #   List of Hook objects.
    #   @return [Array<Types::ChangeSetHook>]
    #
    # @!attribute [rw] status
    #   Provides the status of the change set hook.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Pagination token, `null` or empty if no more results.
    #   @return [String]
    #
    # @!attribute [rw] stack_id
    #   The stack identifier (stack ID).
    #   @return [String]
    #
    # @!attribute [rw] stack_name
    #   The stack name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeChangeSetHooksOutput AWS API Documentation
    #
    class DescribeChangeSetHooksOutput < Struct.new(
      :change_set_id,
      :change_set_name,
      :hooks,
      :status,
      :next_token,
      :stack_id,
      :stack_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the DescribeChangeSet action.
    #
    # @!attribute [rw] change_set_name
    #   The name or Amazon Resource Name (ARN) of the change set that you
    #   want to describe.
    #   @return [String]
    #
    # @!attribute [rw] stack_name
    #   If you specified the name of a change set, specify the stack name or
    #   ID (ARN) of the change set you want to describe.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A string (provided by the DescribeChangeSet response output) that
    #   identifies the next page of information that you want to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] include_property_values
    #   If `true`, the returned changes include detailed changes in the
    #   property values.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeChangeSetInput AWS API Documentation
    #
    class DescribeChangeSetInput < Struct.new(
      :change_set_name,
      :stack_name,
      :next_token,
      :include_property_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output for the DescribeChangeSet action.
    #
    # @!attribute [rw] change_set_name
    #   The name of the change set.
    #   @return [String]
    #
    # @!attribute [rw] change_set_id
    #   The Amazon Resource Name (ARN) of the change set.
    #   @return [String]
    #
    # @!attribute [rw] stack_id
    #   The Amazon Resource Name (ARN) of the stack that's associated with
    #   the change set.
    #   @return [String]
    #
    # @!attribute [rw] stack_name
    #   The name of the stack that's associated with the change set.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Information about the change set.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A list of `Parameter` structures that describes the input parameters
    #   and their values used to create the change set. For more
    #   information, see the [Parameter][1] data type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html
    #   @return [Array<Types::Parameter>]
    #
    # @!attribute [rw] creation_time
    #   The start time when the change set was created, in UTC.
    #   @return [Time]
    #
    # @!attribute [rw] execution_status
    #   If the change set execution status is `AVAILABLE`, you can execute
    #   the change set. If you can't execute the change set, the status
    #   indicates why. For example, a change set might be in an
    #   `UNAVAILABLE` state because CloudFormation is still creating it or
    #   in an `OBSOLETE` state because the stack was already updated.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the change set, such as `CREATE_PENDING`,
    #   `CREATE_COMPLETE`, or `FAILED`.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   A description of the change set's status. For example, if your
    #   attempt to create a change set failed, CloudFormation shows the
    #   error message.
    #   @return [String]
    #
    # @!attribute [rw] notification_arns
    #   The ARNs of the Amazon SNS topics that will be associated with the
    #   stack if you execute the change set.
    #   @return [Array<String>]
    #
    # @!attribute [rw] rollback_configuration
    #   The rollback triggers for CloudFormation to monitor during stack
    #   creation and updating operations, and for the specified monitoring
    #   period afterwards.
    #   @return [Types::RollbackConfiguration]
    #
    # @!attribute [rw] capabilities
    #   If you execute the change set, the list of capabilities that were
    #   explicitly acknowledged when the change set was created.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   If you execute the change set, the tags that will be associated with
    #   the stack.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] changes
    #   A list of `Change` structures that describes the resources
    #   CloudFormation changes if you execute the change set.
    #   @return [Array<Types::Change>]
    #
    # @!attribute [rw] next_token
    #   If the output exceeds 1 MB, a string that identifies the next page
    #   of changes. If there is no additional page, this value is null.
    #   @return [String]
    #
    # @!attribute [rw] include_nested_stacks
    #   Verifies if `IncludeNestedStacks` is set to `True`.
    #   @return [Boolean]
    #
    # @!attribute [rw] parent_change_set_id
    #   Specifies the change set ID of the parent change set in the current
    #   nested change set hierarchy.
    #   @return [String]
    #
    # @!attribute [rw] root_change_set_id
    #   Specifies the change set ID of the root change set in the current
    #   nested change set hierarchy.
    #   @return [String]
    #
    # @!attribute [rw] on_stack_failure
    #   Determines what action will be taken if stack creation fails. When
    #   this parameter is specified, the `DisableRollback` parameter to the
    #   [ExecuteChangeSet][1] API operation must not be specified. This must
    #   be one of these values:
    #
    #   * `DELETE` - Deletes the change set if the stack creation fails.
    #     This is only valid when the `ChangeSetType` parameter is set to
    #     `CREATE`. If the deletion of the stack fails, the status of the
    #     stack is `DELETE_FAILED`.
    #
    #   * `DO_NOTHING` - if the stack creation fails, do nothing. This is
    #     equivalent to specifying `true` for the `DisableRollback`
    #     parameter to the [ExecuteChangeSet][1] API operation.
    #
    #   * `ROLLBACK` - if the stack creation fails, roll back the stack.
    #     This is equivalent to specifying `false` for the `DisableRollback`
    #     parameter to the [ExecuteChangeSet][1] API operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ExecuteChangeSet.html
    #   @return [String]
    #
    # @!attribute [rw] import_existing_resources
    #   Indicates if the change set imports resources that already exist.
    #
    #   <note markdown="1"> This parameter can only import resources that have [custom names][1]
    #   in templates. To import resources that do not accept custom names,
    #   such as EC2 instances, use the [resource import][2] feature instead.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-properties-name.html
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resource-import.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeChangeSetOutput AWS API Documentation
    #
    class DescribeChangeSetOutput < Struct.new(
      :change_set_name,
      :change_set_id,
      :stack_id,
      :stack_name,
      :description,
      :parameters,
      :creation_time,
      :execution_status,
      :status,
      :status_reason,
      :notification_arns,
      :rollback_configuration,
      :capabilities,
      :tags,
      :changes,
      :next_token,
      :include_nested_stacks,
      :parent_change_set_id,
      :root_change_set_id,
      :on_stack_failure,
      :import_existing_resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] generated_template_name
    #   The name or Amazon Resource Name (ARN) of a generated template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeGeneratedTemplateInput AWS API Documentation
    #
    class DescribeGeneratedTemplateInput < Struct.new(
      :generated_template_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] generated_template_id
    #   The Amazon Resource Name (ARN) of the generated template. The format
    #   is
    #   `arn:${Partition}:cloudformation:${Region}:${Account}:generatedtemplate/${Id}`.
    #   For example,
    #   `arn:aws:cloudformation:us-east-1:123456789012:generatedtemplate/2e8465c1-9a80-43ea-a3a3-4f2d692fe6dc
    #   `.
    #   @return [String]
    #
    # @!attribute [rw] generated_template_name
    #   The name of the generated template.
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   A list of objects describing the details of the resources in the
    #   template generation.
    #   @return [Array<Types::ResourceDetail>]
    #
    # @!attribute [rw] status
    #   The status of the template generation. Supported values are:
    #
    #   * `CreatePending` - the creation of the template is pending.
    #
    #   * `CreateInProgress` - the creation of the template is in progress.
    #
    #   * `DeletePending` - the deletion of the template is pending.
    #
    #   * `DeleteInProgress` - the deletion of the template is in progress.
    #
    #   * `UpdatePending` - the update of the template is pending.
    #
    #   * `UpdateInProgress` - the update of the template is in progress.
    #
    #   * `Failed` - the template operation failed.
    #
    #   * `Complete` - the template operation is complete.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the current template generation status. This will
    #   provide more details if a failure happened.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time the generated template was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The time the generated template was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] progress
    #   An object describing the progress of the template generation.
    #   @return [Types::TemplateProgress]
    #
    # @!attribute [rw] stack_id
    #   The stack ARN of the base stack if a base stack was provided when
    #   generating the template.
    #   @return [String]
    #
    # @!attribute [rw] template_configuration
    #   The configuration details of the generated template, including the
    #   `DeletionPolicy` and `UpdateReplacePolicy`.
    #   @return [Types::TemplateConfiguration]
    #
    # @!attribute [rw] total_warnings
    #   The number of warnings generated for this template. The warnings are
    #   found in the details of each of the resources in the template.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeGeneratedTemplateOutput AWS API Documentation
    #
    class DescribeGeneratedTemplateOutput < Struct.new(
      :generated_template_id,
      :generated_template_name,
      :resources,
      :status,
      :status_reason,
      :creation_time,
      :last_updated_time,
      :progress,
      :stack_id,
      :template_configuration,
      :total_warnings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] call_as
    #   \[Service-managed permissions\] Specifies whether you are acting as
    #   an account administrator in the organization's management account
    #   or as a delegated administrator in a member account.
    #
    #   By default, `SELF` is specified.
    #
    #   * If you are signed in to the management account, specify `SELF`.
    #
    #   * If you are signed in to a delegated administrator account, specify
    #     `DELEGATED_ADMIN`.
    #
    #     Your Amazon Web Services account must be registered as a delegated
    #     administrator in the management account. For more information, see
    #     [Register a delegated administrator][1] in the *CloudFormation
    #     User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeOrganizationsAccessInput AWS API Documentation
    #
    class DescribeOrganizationsAccessInput < Struct.new(
      :call_as)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   Presents the status of the `OrganizationAccess`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeOrganizationsAccessOutput AWS API Documentation
    #
    class DescribeOrganizationsAccessOutput < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] publisher_id
    #   The ID of the extension publisher.
    #
    #   If you don't supply a `PublisherId`, and you have registered as an
    #   extension publisher, `DescribePublisher` returns information about
    #   your own publisher account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribePublisherInput AWS API Documentation
    #
    class DescribePublisherInput < Struct.new(
      :publisher_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] publisher_id
    #   The ID of the extension publisher.
    #   @return [String]
    #
    # @!attribute [rw] publisher_status
    #   Whether the publisher is verified. Currently, all registered
    #   publishers are verified.
    #   @return [String]
    #
    # @!attribute [rw] identity_provider
    #   The type of account used as the identity provider when registering
    #   this publisher with CloudFormation.
    #   @return [String]
    #
    # @!attribute [rw] publisher_profile
    #   The URL to the publisher's profile with the identity provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribePublisherOutput AWS API Documentation
    #
    class DescribePublisherOutput < Struct.new(
      :publisher_id,
      :publisher_status,
      :identity_provider,
      :publisher_profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_scan_id
    #   The Amazon Resource Name (ARN) of the resource scan.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeResourceScanInput AWS API Documentation
    #
    class DescribeResourceScanInput < Struct.new(
      :resource_scan_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_scan_id
    #   The Amazon Resource Name (ARN) of the resource scan. The format is
    #   `arn:${Partition}:cloudformation:${Region}:${Account}:resourceScan/${Id}`.
    #   An example is
    #   `arn:aws:cloudformation:us-east-1:123456789012:resourceScan/f5b490f7-7ed4-428a-aa06-31ff25db0772
    #   `.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of the resource scan.
    #
    #   IN\_PROGRESS
    #
    #   : The resource scan is still in progress.
    #
    #   COMPLETE
    #
    #   : The resource scan is complete.
    #
    #   EXPIRED
    #
    #   : The resource scan has expired.
    #
    #   FAILED
    #
    #   : The resource scan has failed.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the resource scan status, providing more information
    #   if a failure happened.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time that the resource scan was started.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time that the resource scan was finished.
    #   @return [Time]
    #
    # @!attribute [rw] percentage_completed
    #   The percentage of the resource scan that has been completed.
    #   @return [Float]
    #
    # @!attribute [rw] resource_types
    #   The list of resource types for the specified scan. Resource types
    #   are only available for scans with a `Status` set to `COMPLETE` or
    #   `FAILED `.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resources_scanned
    #   The number of resources that were listed. This is only available for
    #   scans with a `Status` set to `COMPLETE`, `EXPIRED`, or `FAILED `.
    #   @return [Integer]
    #
    # @!attribute [rw] resources_read
    #   The number of resources that were read. This is only available for
    #   scans with a `Status` set to `COMPLETE`, `EXPIRED`, or `FAILED`.
    #
    #   <note markdown="1"> This field may be 0 if the resource scan failed with a
    #   `ResourceScanLimitExceededException`.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] scan_filters
    #   The scan filters that were used.
    #   @return [Array<Types::ScanFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeResourceScanOutput AWS API Documentation
    #
    class DescribeResourceScanOutput < Struct.new(
      :resource_scan_id,
      :status,
      :status_reason,
      :start_time,
      :end_time,
      :percentage_completed,
      :resource_types,
      :resources_scanned,
      :resources_read,
      :scan_filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_drift_detection_id
    #   The ID of the drift detection results of this operation.
    #
    #   CloudFormation generates new results, with a new drift detection ID,
    #   each time this operation is run. However, the number of drift
    #   results CloudFormation retains for any given stack, and for how
    #   long, may vary.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackDriftDetectionStatusInput AWS API Documentation
    #
    class DescribeStackDriftDetectionStatusInput < Struct.new(
      :stack_drift_detection_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_id
    #   The ID of the stack.
    #   @return [String]
    #
    # @!attribute [rw] stack_drift_detection_id
    #   The ID of the drift detection results of this operation.
    #
    #   CloudFormation generates new results, with a new drift detection ID,
    #   each time this operation is run. However, the number of reports
    #   CloudFormation retains for any given stack, and for how long, may
    #   vary.
    #   @return [String]
    #
    # @!attribute [rw] stack_drift_status
    #   Status of the stack's actual configuration compared to its expected
    #   configuration.
    #
    #   * `DRIFTED`: The stack differs from its expected template
    #     configuration. A stack is considered to have drifted if one or
    #     more of its resources have drifted.
    #
    #   * `NOT_CHECKED`: CloudFormation hasn't checked if the stack differs
    #     from its expected template configuration.
    #
    #   * `IN_SYNC`: The stack's actual configuration matches its expected
    #     template configuration.
    #
    #   * `UNKNOWN`: CloudFormation could not run drift detection for a
    #     resource in the stack. See the `DetectionStatusReason` for
    #     details.
    #   @return [String]
    #
    # @!attribute [rw] detection_status
    #   The status of the stack drift detection operation.
    #
    #   * `DETECTION_COMPLETE`: The stack drift detection operation has
    #     successfully completed for all resources in the stack that support
    #     drift detection. (Resources that don't currently support stack
    #     detection remain unchecked.)
    #
    #     If you specified logical resource IDs for CloudFormation to use as
    #     a filter for the stack drift detection operation, only the
    #     resources with those logical IDs are checked for drift.
    #
    #   * `DETECTION_FAILED`: The stack drift detection operation has failed
    #     for at least one resource in the stack. Results will be available
    #     for resources on which CloudFormation successfully completed drift
    #     detection.
    #
    #   * `DETECTION_IN_PROGRESS`: The stack drift detection operation is
    #     currently in progress.
    #   @return [String]
    #
    # @!attribute [rw] detection_status_reason
    #   The reason the stack drift detection operation has its current
    #   status.
    #   @return [String]
    #
    # @!attribute [rw] drifted_stack_resource_count
    #   Total number of stack resources that have drifted. This is NULL
    #   until the drift detection operation reaches a status of
    #   `DETECTION_COMPLETE`. This value will be 0 for stacks whose drift
    #   status is `IN_SYNC`.
    #   @return [Integer]
    #
    # @!attribute [rw] timestamp
    #   Time at which the stack drift detection operation was initiated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackDriftDetectionStatusOutput AWS API Documentation
    #
    class DescribeStackDriftDetectionStatusOutput < Struct.new(
      :stack_id,
      :stack_drift_detection_id,
      :stack_drift_status,
      :detection_status,
      :detection_status_reason,
      :drifted_stack_resource_count,
      :timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for DescribeStackEvents action.
    #
    # @!attribute [rw] stack_name
    #   The name or the unique stack ID that's associated with the stack,
    #   which aren't always interchangeable:
    #
    #   * Running stacks: You can specify either the stack's name or its
    #     unique stack ID.
    #
    #   * Deleted stacks: You must specify the unique stack ID.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A string that identifies the next page of events that you want to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackEventsInput AWS API Documentation
    #
    class DescribeStackEventsInput < Struct.new(
      :stack_name,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output for a DescribeStackEvents action.
    #
    # @!attribute [rw] stack_events
    #   A list of `StackEvents` structures.
    #   @return [Array<Types::StackEvent>]
    #
    # @!attribute [rw] next_token
    #   If the output exceeds 1 MB in size, a string that identifies the
    #   next page of events. If no additional page exists, this value is
    #   null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackEventsOutput AWS API Documentation
    #
    class DescribeStackEventsOutput < Struct.new(
      :stack_events,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_set_name
    #   The name or the unique stack ID of the StackSet that you want to get
    #   stack instance information for.
    #   @return [String]
    #
    # @!attribute [rw] stack_instance_account
    #   The ID of an Amazon Web Services account that's associated with
    #   this stack instance.
    #   @return [String]
    #
    # @!attribute [rw] stack_instance_region
    #   The name of a Region that's associated with this stack instance.
    #   @return [String]
    #
    # @!attribute [rw] call_as
    #   \[Service-managed permissions\] Specifies whether you are acting as
    #   an account administrator in the organization's management account
    #   or as a delegated administrator in a member account.
    #
    #   By default, `SELF` is specified. Use `SELF` for StackSets with
    #   self-managed permissions.
    #
    #   * If you are signed in to the management account, specify `SELF`.
    #
    #   * If you are signed in to a delegated administrator account, specify
    #     `DELEGATED_ADMIN`.
    #
    #     Your Amazon Web Services account must be registered as a delegated
    #     administrator in the management account. For more information, see
    #     [Register a delegated administrator][1] in the *CloudFormation
    #     User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackInstanceInput AWS API Documentation
    #
    class DescribeStackInstanceInput < Struct.new(
      :stack_set_name,
      :stack_instance_account,
      :stack_instance_region,
      :call_as)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_instance
    #   The stack instance that matches the specified request parameters.
    #   @return [Types::StackInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackInstanceOutput AWS API Documentation
    #
    class DescribeStackInstanceOutput < Struct.new(
      :stack_instance)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_refactor_id
    #   The ID associated with the stack refactor created from the
    #   CreateStackRefactor action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackRefactorInput AWS API Documentation
    #
    class DescribeStackRefactorInput < Struct.new(
      :stack_refactor_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   A description to help you identify the refactor.
    #   @return [String]
    #
    # @!attribute [rw] stack_refactor_id
    #   The ID associated with the stack refactor created from the
    #   CreateStackRefactor action.
    #   @return [String]
    #
    # @!attribute [rw] stack_ids
    #   The unique ID for each stack.
    #   @return [Array<String>]
    #
    # @!attribute [rw] execution_status
    #   The stack refactor execution operation status that's provided after
    #   calling the ExecuteStackRefactor action.
    #   @return [String]
    #
    # @!attribute [rw] execution_status_reason
    #   A detailed explanation for the stack refactor `ExecutionStatus`.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The stack refactor operation status that's provided after calling
    #   the CreateStackRefactor action.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   A detailed explanation for the stack refactor operation `Status`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackRefactorOutput AWS API Documentation
    #
    class DescribeStackRefactorOutput < Struct.new(
      :description,
      :stack_refactor_id,
      :stack_ids,
      :execution_status,
      :execution_status_reason,
      :status,
      :status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_name
    #   The name of the stack for which you want drift information.
    #   @return [String]
    #
    # @!attribute [rw] stack_resource_drift_status_filters
    #   The resource drift status values to use as filters for the resource
    #   drift results returned.
    #
    #   * `DELETED`: The resource differs from its expected template
    #     configuration in that the resource has been deleted.
    #
    #   * `MODIFIED`: One or more resource properties differ from their
    #     expected template values.
    #
    #   * `IN_SYNC`: The resource's actual configuration matches its
    #     expected template configuration.
    #
    #   * `NOT_CHECKED`: CloudFormation doesn't currently return this
    #     value.
    #
    #   * `UNKNOWN`: CloudFormation could not run drift detection for the
    #     resource.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   A string that identifies the next page of stack resource drift
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned with a single call. If
    #   the number of available results exceeds this maximum, the response
    #   includes a `NextToken` value that you can assign to the `NextToken`
    #   request parameter to get the next set of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackResourceDriftsInput AWS API Documentation
    #
    class DescribeStackResourceDriftsInput < Struct.new(
      :stack_name,
      :stack_resource_drift_status_filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_resource_drifts
    #   Drift information for the resources that have been checked for drift
    #   in the specified stack. This includes actual and expected
    #   configuration values for resources where CloudFormation detects
    #   drift.
    #
    #   For a given stack, there will be one `StackResourceDrift` for each
    #   stack resource that has been checked for drift. Resources that
    #   haven't yet been checked for drift aren't included. Resources that
    #   do not currently support drift detection aren't checked, and so not
    #   included. For a list of resources that support drift detection, see
    #   [Resource type support for imports and drift detection][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resource-import-supported-resources.html
    #   @return [Array<Types::StackResourceDrift>]
    #
    # @!attribute [rw] next_token
    #   If the request doesn't return all the remaining results,
    #   `NextToken` is set to a token. To retrieve the next set of results,
    #   call `DescribeStackResourceDrifts` again and assign that token to
    #   the request object's `NextToken` parameter. If the request returns
    #   all results, `NextToken` is set to `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackResourceDriftsOutput AWS API Documentation
    #
    class DescribeStackResourceDriftsOutput < Struct.new(
      :stack_resource_drifts,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for DescribeStackResource action.
    #
    # @!attribute [rw] stack_name
    #   The name or the unique stack ID that's associated with the stack,
    #   which aren't always interchangeable:
    #
    #   * Running stacks: You can specify either the stack's name or its
    #     unique stack ID.
    #
    #   * Deleted stacks: You must specify the unique stack ID.
    #   @return [String]
    #
    # @!attribute [rw] logical_resource_id
    #   The logical name of the resource as specified in the template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackResourceInput AWS API Documentation
    #
    class DescribeStackResourceInput < Struct.new(
      :stack_name,
      :logical_resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output for a DescribeStackResource action.
    #
    # @!attribute [rw] stack_resource_detail
    #   A `StackResourceDetail` structure that contains the description of
    #   the specified resource in the specified stack.
    #   @return [Types::StackResourceDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackResourceOutput AWS API Documentation
    #
    class DescribeStackResourceOutput < Struct.new(
      :stack_resource_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for DescribeStackResources action.
    #
    # @!attribute [rw] stack_name
    #   The name or the unique stack ID that is associated with the stack,
    #   which aren't always interchangeable:
    #
    #   * Running stacks: You can specify either the stack's name or its
    #     unique stack ID.
    #
    #   * Deleted stacks: You must specify the unique stack ID.
    #
    #   Required: Conditional. If you don't specify `StackName`, you must
    #   specify `PhysicalResourceId`.
    #   @return [String]
    #
    # @!attribute [rw] logical_resource_id
    #   The logical name of the resource as specified in the template.
    #   @return [String]
    #
    # @!attribute [rw] physical_resource_id
    #   The name or unique identifier that corresponds to a physical
    #   instance ID of a resource supported by CloudFormation.
    #
    #   For example, for an Amazon Elastic Compute Cloud (EC2) instance,
    #   `PhysicalResourceId` corresponds to the `InstanceId`. You can pass
    #   the EC2 `InstanceId` to `DescribeStackResources` to find which stack
    #   the instance belongs to and what other resources are part of the
    #   stack.
    #
    #   Required: Conditional. If you don't specify `PhysicalResourceId`,
    #   you must specify `StackName`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackResourcesInput AWS API Documentation
    #
    class DescribeStackResourcesInput < Struct.new(
      :stack_name,
      :logical_resource_id,
      :physical_resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output for a DescribeStackResources action.
    #
    # @!attribute [rw] stack_resources
    #   A list of `StackResource` structures.
    #   @return [Array<Types::StackResource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackResourcesOutput AWS API Documentation
    #
    class DescribeStackResourcesOutput < Struct.new(
      :stack_resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_set_name
    #   The name or unique ID of the StackSet whose description you want.
    #   @return [String]
    #
    # @!attribute [rw] call_as
    #   \[Service-managed permissions\] Specifies whether you are acting as
    #   an account administrator in the organization's management account
    #   or as a delegated administrator in a member account.
    #
    #   By default, `SELF` is specified. Use `SELF` for StackSets with
    #   self-managed permissions.
    #
    #   * If you are signed in to the management account, specify `SELF`.
    #
    #   * If you are signed in to a delegated administrator account, specify
    #     `DELEGATED_ADMIN`.
    #
    #     Your Amazon Web Services account must be registered as a delegated
    #     administrator in the management account. For more information, see
    #     [Register a delegated administrator][1] in the *CloudFormation
    #     User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackSetInput AWS API Documentation
    #
    class DescribeStackSetInput < Struct.new(
      :stack_set_name,
      :call_as)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_set_name
    #   The name or the unique stack ID of the StackSet for the stack
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] operation_id
    #   The unique ID of the StackSet operation.
    #   @return [String]
    #
    # @!attribute [rw] call_as
    #   \[Service-managed permissions\] Specifies whether you are acting as
    #   an account administrator in the organization's management account
    #   or as a delegated administrator in a member account.
    #
    #   By default, `SELF` is specified. Use `SELF` for StackSets with
    #   self-managed permissions.
    #
    #   * If you are signed in to the management account, specify `SELF`.
    #
    #   * If you are signed in to a delegated administrator account, specify
    #     `DELEGATED_ADMIN`.
    #
    #     Your Amazon Web Services account must be registered as a delegated
    #     administrator in the management account. For more information, see
    #     [Register a delegated administrator][1] in the *CloudFormation
    #     User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackSetOperationInput AWS API Documentation
    #
    class DescribeStackSetOperationInput < Struct.new(
      :stack_set_name,
      :operation_id,
      :call_as)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_set_operation
    #   The specified StackSet operation.
    #   @return [Types::StackSetOperation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackSetOperationOutput AWS API Documentation
    #
    class DescribeStackSetOperationOutput < Struct.new(
      :stack_set_operation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_set
    #   The specified StackSet.
    #   @return [Types::StackSet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackSetOutput AWS API Documentation
    #
    class DescribeStackSetOutput < Struct.new(
      :stack_set)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for DescribeStacks action.
    #
    # @!attribute [rw] stack_name
    #   <note markdown="1"> If you don't pass a parameter to `StackName`, the API returns a
    #   response that describes all resources in the account, which can
    #   impact performance. This requires `ListStacks` and `DescribeStacks`
    #   permissions.
    #
    #    Consider using the ListStacks API if you're not passing a parameter
    #   to `StackName`.
    #
    #    The IAM policy below can be added to IAM policies when you want to
    #   limit resource-level permissions and avoid returning a response when
    #   no parameter is sent in the request:
    #
    #    \{ "Version": "2012-10-17", "Statement": \[\{ "Effect":
    #   "Deny", "Action": "cloudformation:DescribeStacks",
    #   "NotResource": "arn:aws:cloudformation:*:*:stack/*/*" }\] }
    #
    #    </note>
    #
    #   The name or the unique stack ID that's associated with the stack,
    #   which aren't always interchangeable:
    #
    #   * Running stacks: You can specify either the stack's name or its
    #     unique stack ID.
    #
    #   * Deleted stacks: You must specify the unique stack ID.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A string that identifies the next page of stacks that you want to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStacksInput AWS API Documentation
    #
    class DescribeStacksInput < Struct.new(
      :stack_name,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output for a DescribeStacks action.
    #
    # @!attribute [rw] stacks
    #   A list of stack structures.
    #   @return [Array<Types::Stack>]
    #
    # @!attribute [rw] next_token
    #   If the output exceeds 1 MB in size, a string that identifies the
    #   next page of stacks. If no additional page exists, this value is
    #   null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStacksOutput AWS API Documentation
    #
    class DescribeStacksOutput < Struct.new(
      :stacks,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] type
    #   The kind of extension.
    #
    #   Conditional: You must specify either `TypeName` and `Type`, or
    #   `Arn`.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The name of the extension.
    #
    #   Conditional: You must specify either `TypeName` and `Type`, or
    #   `Arn`.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the extension.
    #
    #   Conditional: You must specify either `TypeName` and `Type`, or
    #   `Arn`.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The ID of a specific version of the extension. The version ID is the
    #   value at the end of the Amazon Resource Name (ARN) assigned to the
    #   extension version when it is registered.
    #
    #   If you specify a `VersionId`, `DescribeType` returns information
    #   about that specific extension version. Otherwise, it returns
    #   information about the default extension version.
    #   @return [String]
    #
    # @!attribute [rw] publisher_id
    #   The publisher ID of the extension publisher.
    #
    #   Extensions provided by Amazon Web Services are not assigned a
    #   publisher ID.
    #   @return [String]
    #
    # @!attribute [rw] public_version_number
    #   The version number of a public third-party extension.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeTypeInput AWS API Documentation
    #
    class DescribeTypeInput < Struct.new(
      :type,
      :type_name,
      :arn,
      :version_id,
      :publisher_id,
      :public_version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the extension.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The kind of extension.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The name of the extension.
    #
    #   If the extension is a public third-party type you have activated
    #   with a type name alias, CloudFormation returns the type name alias.
    #   For more information, see [ActivateType][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ActivateType.html
    #   @return [String]
    #
    # @!attribute [rw] default_version_id
    #   The ID of the default version of the extension. The default version
    #   is used when the extension version isn't specified.
    #
    #   This applies only to private extensions you have registered in your
    #   account. For public extensions, both those provided by Amazon Web
    #   Services and published by third parties, CloudFormation returns
    #   `null`. For more information, see [RegisterType][1].
    #
    #   To set the default version of an extension, use
    #   SetTypeDefaultVersion.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html
    #   @return [String]
    #
    # @!attribute [rw] is_default_version
    #   Whether the specified extension version is set as the default
    #   version.
    #
    #   This applies only to private extensions you have registered in your
    #   account, and extensions published by Amazon Web Services. For public
    #   third-party extensions, whether they are activated in your account,
    #   CloudFormation returns `null`.
    #   @return [Boolean]
    #
    # @!attribute [rw] type_tests_status
    #   The contract test status of the registered extension version. To
    #   return the extension test status of a specific extension version,
    #   you must specify `VersionId`.
    #
    #   This applies only to registered private extension versions.
    #   CloudFormation doesn't return this information for public
    #   extensions, whether they are activated in your account.
    #
    #   * `PASSED`: The extension has passed all its contract tests.
    #
    #     An extension must have a test status of `PASSED` before it can be
    #     published. For more information, see [Publishing extensions to
    #     make them available for public use][1] in the *CloudFormation
    #     Command Line Interface (CLI) User Guide*.
    #
    #   * `FAILED`: The extension has failed one or more contract tests.
    #
    #   * `IN_PROGRESS`: Contract tests are currently being performed on the
    #     extension.
    #
    #   * `NOT_TESTED`: Contract tests haven't been performed on the
    #     extension.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-publish.html
    #   @return [String]
    #
    # @!attribute [rw] type_tests_status_description
    #   The description of the test status. To return the extension test
    #   status of a specific extension version, you must specify
    #   `VersionId`.
    #
    #   This applies only to registered private extension versions.
    #   CloudFormation doesn't return this information for public
    #   extensions, whether they are activated in your account.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the extension.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   The schema that defines the extension.
    #
    #   For more information about extension schemas, see [Resource type
    #   schema][1] in the *CloudFormation Command Line Interface (CLI) User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html
    #   @return [String]
    #
    # @!attribute [rw] provisioning_type
    #   For resource type extensions, the provisioning behavior of the
    #   resource type. CloudFormation determines the provisioning type
    #   during registration, based on the types of handlers in the schema
    #   handler package submitted.
    #
    #   Valid values include:
    #
    #   * `FULLY_MUTABLE`: The resource type includes an update handler to
    #     process updates to the type during stack update operations.
    #
    #   * `IMMUTABLE`: The resource type doesn't include an update handler,
    #     so the type can't be updated and must instead be replaced during
    #     stack update operations.
    #
    #   * `NON_PROVISIONABLE`: The resource type doesn't include all the
    #     following handlers, and therefore can't actually be provisioned.
    #
    #     * create
    #
    #     * read
    #
    #     * delete
    #   @return [String]
    #
    # @!attribute [rw] deprecated_status
    #   The deprecation status of the extension version.
    #
    #   Valid values include:
    #
    #   * `LIVE`: The extension is activated or registered and can be used
    #     in CloudFormation operations, dependent on its provisioning
    #     behavior and visibility scope.
    #
    #   * `DEPRECATED`: The extension has been deactivated or deregistered
    #     and can no longer be used in CloudFormation operations.
    #
    #   For public third-party extensions, CloudFormation returns `null`.
    #   @return [String]
    #
    # @!attribute [rw] logging_config
    #   Contains logging configuration information for private extensions.
    #   This applies only to private extensions you have registered in your
    #   account. For public extensions, both those provided by Amazon Web
    #   Services and published by third parties, CloudFormation returns
    #   `null`. For more information, see [RegisterType][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html
    #   @return [Types::LoggingConfig]
    #
    # @!attribute [rw] required_activated_types
    #   For extensions that are modules, the public third-party extensions
    #   that must be activated in your account in order for the module
    #   itself to be activated.
    #   @return [Array<Types::RequiredActivatedType>]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM execution role used to
    #   register the extension. This applies only to private extensions you
    #   have registered in your account. For more information, see
    #   [RegisterType][1].
    #
    #   If the registered extension calls any Amazon Web Services APIs, you
    #   must create an <i> <a
    #   href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html">IAM
    #   execution role</a> </i> that includes the necessary permissions to
    #   call those Amazon Web Services APIs, and provision that execution
    #   role in your account. CloudFormation then assumes that execution
    #   role to provide your extension with the appropriate credentials.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html
    #   @return [String]
    #
    # @!attribute [rw] visibility
    #   The scope at which the extension is visible and usable in
    #   CloudFormation operations.
    #
    #   Valid values include:
    #
    #   * `PRIVATE`: The extension is only visible and usable within the
    #     account in which it is registered. CloudFormation marks any
    #     extensions you register as `PRIVATE`.
    #
    #   * `PUBLIC`: The extension is publicly visible and usable within any
    #     Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] source_url
    #   The URL of the source code for the extension.
    #   @return [String]
    #
    # @!attribute [rw] documentation_url
    #   The URL of a page providing detailed documentation for this
    #   extension.
    #   @return [String]
    #
    # @!attribute [rw] last_updated
    #   When the specified extension version was registered. This applies
    #   only to:
    #
    #   * Private extensions you have registered in your account. For more
    #     information, see [RegisterType][1].
    #
    #   * Public extensions you have activated in your account with
    #     auto-update specified. For more information, see
    #     [ActivateType][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ActivateType.html
    #   @return [Time]
    #
    # @!attribute [rw] time_created
    #   When the specified private extension version was registered or
    #   activated in your account.
    #   @return [Time]
    #
    # @!attribute [rw] configuration_schema
    #   A JSON string that represent the current configuration data for the
    #   extension in this account and Region.
    #
    #   To set the configuration data for an extension, use
    #   [SetTypeConfiguration][1]. For more information, see [Edit
    #   configuration data for extensions in your account][2] in the
    #   *CloudFormation User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_SetTypeConfiguration.html
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-set-configuration.html
    #   @return [String]
    #
    # @!attribute [rw] publisher_id
    #   The publisher ID of the extension publisher.
    #
    #   This applies only to public third-party extensions. For private
    #   registered extensions, and extensions provided by Amazon Web
    #   Services, CloudFormation returns `null`.
    #   @return [String]
    #
    # @!attribute [rw] original_type_name
    #   For public extensions that have been activated for this account and
    #   Region, the type name of the public extension.
    #
    #   If you specified a `TypeNameAlias` when enabling the extension in
    #   this account and Region, CloudFormation treats that alias as the
    #   extension's type name within the account and Region, not the type
    #   name of the public extension. For more information, see [Use aliases
    #   to refer to extensions][1] in the *CloudFormation User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-public.html#registry-public-enable-alias
    #   @return [String]
    #
    # @!attribute [rw] original_type_arn
    #   For public extensions that have been activated for this account and
    #   Region, the Amazon Resource Name (ARN) of the public extension.
    #   @return [String]
    #
    # @!attribute [rw] public_version_number
    #   The version number of a public third-party extension.
    #
    #   This applies only if you specify a public extension you have
    #   activated in your account, or specify a public extension without
    #   specifying a version. For all other extensions, CloudFormation
    #   returns `null`.
    #   @return [String]
    #
    # @!attribute [rw] latest_public_version
    #   The latest version of a public extension *that is available* for
    #   use.
    #
    #   This only applies if you specify a public extension, and you don't
    #   specify a version. For all other requests, CloudFormation returns
    #   `null`.
    #   @return [String]
    #
    # @!attribute [rw] is_activated
    #   Whether the extension is activated in the account and Region.
    #
    #   This only applies to public third-party extensions. For all other
    #   extensions, CloudFormation returns `null`.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_update
    #   Whether CloudFormation automatically updates the extension in this
    #   account and Region when a new *minor* version is published by the
    #   extension publisher. Major versions released by the publisher must
    #   be manually updated. For more information, see [Automatically use
    #   new versions of extensions][1] in the *CloudFormation User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-public.html#registry-public-enable-auto
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeTypeOutput AWS API Documentation
    #
    class DescribeTypeOutput < Struct.new(
      :arn,
      :type,
      :type_name,
      :default_version_id,
      :is_default_version,
      :type_tests_status,
      :type_tests_status_description,
      :description,
      :schema,
      :provisioning_type,
      :deprecated_status,
      :logging_config,
      :required_activated_types,
      :execution_role_arn,
      :visibility,
      :source_url,
      :documentation_url,
      :last_updated,
      :time_created,
      :configuration_schema,
      :publisher_id,
      :original_type_name,
      :original_type_arn,
      :public_version_number,
      :latest_public_version,
      :is_activated,
      :auto_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registration_token
    #   The identifier for this registration request.
    #
    #   This registration token is generated by CloudFormation when you
    #   initiate a registration request using RegisterType.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeTypeRegistrationInput AWS API Documentation
    #
    class DescribeTypeRegistrationInput < Struct.new(
      :registration_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] progress_status
    #   The current status of the extension registration request.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the extension registration request.
    #   @return [String]
    #
    # @!attribute [rw] type_arn
    #   The Amazon Resource Name (ARN) of the extension being registered.
    #
    #   For registration requests with a `ProgressStatus` of other than
    #   `COMPLETE`, this will be `null`.
    #   @return [String]
    #
    # @!attribute [rw] type_version_arn
    #   The Amazon Resource Name (ARN) of this specific version of the
    #   extension being registered.
    #
    #   For registration requests with a `ProgressStatus` of other than
    #   `COMPLETE`, this will be `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeTypeRegistrationOutput AWS API Documentation
    #
    class DescribeTypeRegistrationOutput < Struct.new(
      :progress_status,
      :description,
      :type_arn,
      :type_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_name
    #   The name of the stack for which you want to detect drift.
    #   @return [String]
    #
    # @!attribute [rw] logical_resource_ids
    #   The logical names of any resources you want to use as filters.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DetectStackDriftInput AWS API Documentation
    #
    class DetectStackDriftInput < Struct.new(
      :stack_name,
      :logical_resource_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_drift_detection_id
    #   The ID of the drift detection results of this operation.
    #
    #   CloudFormation generates new results, with a new drift detection ID,
    #   each time this operation is run. However, the number of drift
    #   results CloudFormation retains for any given stack, and for how
    #   long, may vary.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DetectStackDriftOutput AWS API Documentation
    #
    class DetectStackDriftOutput < Struct.new(
      :stack_drift_detection_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_name
    #   The name of the stack to which the resource belongs.
    #   @return [String]
    #
    # @!attribute [rw] logical_resource_id
    #   The logical name of the resource for which to return drift
    #   information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DetectStackResourceDriftInput AWS API Documentation
    #
    class DetectStackResourceDriftInput < Struct.new(
      :stack_name,
      :logical_resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_resource_drift
    #   Information about whether the resource's actual configuration has
    #   drifted from its expected template configuration, including actual
    #   and expected property values and any differences detected.
    #   @return [Types::StackResourceDrift]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DetectStackResourceDriftOutput AWS API Documentation
    #
    class DetectStackResourceDriftOutput < Struct.new(
      :stack_resource_drift)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_set_name
    #   The name of the StackSet on which to perform the drift detection
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] operation_preferences
    #   The user-specified preferences for how CloudFormation performs a
    #   StackSet operation.
    #
    #   For more information about maximum concurrent accounts and failure
    #   tolerance, see [StackSet operation options][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options
    #   @return [Types::StackSetOperationPreferences]
    #
    # @!attribute [rw] operation_id
    #   *The ID of the StackSet operation.*
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] call_as
    #   \[Service-managed permissions\] Specifies whether you are acting as
    #   an account administrator in the organization's management account
    #   or as a delegated administrator in a member account.
    #
    #   By default, `SELF` is specified. Use `SELF` for StackSets with
    #   self-managed permissions.
    #
    #   * If you are signed in to the management account, specify `SELF`.
    #
    #   * If you are signed in to a delegated administrator account, specify
    #     `DELEGATED_ADMIN`.
    #
    #     Your Amazon Web Services account must be registered as a delegated
    #     administrator in the management account. For more information, see
    #     [Register a delegated administrator][1] in the *CloudFormation
    #     User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DetectStackSetDriftInput AWS API Documentation
    #
    class DetectStackSetDriftInput < Struct.new(
      :stack_set_name,
      :operation_preferences,
      :operation_id,
      :call_as)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation_id
    #   The ID of the drift detection StackSet operation.
    #
    #   You can use this operation ID with DescribeStackSetOperation to
    #   monitor the progress of the drift detection operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DetectStackSetDriftOutput AWS API Documentation
    #
    class DetectStackSetDriftOutput < Struct.new(
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for an EstimateTemplateCost action.
    #
    # @!attribute [rw] template_body
    #   Structure that contains the template body with a minimum length of 1
    #   byte and a maximum length of 51,200 bytes.
    #
    #   Conditional: You must pass `TemplateBody` or `TemplateURL`. If both
    #   are passed, only `TemplateBody` is used.
    #   @return [String]
    #
    # @!attribute [rw] template_url
    #   The URL of a file that contains the template body. The URL must
    #   point to a template that's located in an Amazon S3 bucket or a
    #   Systems Manager document. The location for an Amazon S3 bucket must
    #   start with `https://`. URLs from S3 static websites are not
    #   supported.
    #
    #   Conditional: You must pass `TemplateURL` or `TemplateBody`. If both
    #   are passed, only `TemplateBody` is used.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A list of `Parameter` structures that specify input parameters.
    #   @return [Array<Types::Parameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/EstimateTemplateCostInput AWS API Documentation
    #
    class EstimateTemplateCostInput < Struct.new(
      :template_body,
      :template_url,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output for a EstimateTemplateCost action.
    #
    # @!attribute [rw] url
    #   An Amazon Web Services Simple Monthly Calculator URL with a query
    #   string that describes the resources required to run the template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/EstimateTemplateCostOutput AWS API Documentation
    #
    class EstimateTemplateCostOutput < Struct.new(
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the ExecuteChangeSet action.
    #
    # @!attribute [rw] change_set_name
    #   The name or Amazon Resource Name (ARN) of the change set that you
    #   want use to update the specified stack.
    #   @return [String]
    #
    # @!attribute [rw] stack_name
    #   If you specified the name of a change set, specify the stack name or
    #   Amazon Resource Name (ARN) that's associated with the change set
    #   you want to execute.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique identifier for this `ExecuteChangeSet` request. Specify
    #   this token if you plan to retry requests so that CloudFormation
    #   knows that you're not attempting to execute a change set to update
    #   a stack with the same name. You might retry `ExecuteChangeSet`
    #   requests to ensure that CloudFormation successfully received them.
    #   @return [String]
    #
    # @!attribute [rw] disable_rollback
    #   Preserves the state of previously provisioned resources when an
    #   operation fails. This parameter can't be specified when the
    #   `OnStackFailure` parameter to the [CreateChangeSet][1] API operation
    #   was specified.
    #
    #   * `True` - if the stack creation fails, do nothing. This is
    #     equivalent to specifying `DO_NOTHING` for the `OnStackFailure`
    #     parameter to the [CreateChangeSet][1] API operation.
    #
    #   * `False` - if the stack creation fails, roll back the stack. This
    #     is equivalent to specifying `ROLLBACK` for the `OnStackFailure`
    #     parameter to the [CreateChangeSet][1] API operation.
    #
    #   Default: `True`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_CreateChangeSet.html
    #   @return [Boolean]
    #
    # @!attribute [rw] retain_except_on_create
    #   When set to `true`, newly created resources are deleted when the
    #   operation rolls back. This includes newly created resources marked
    #   with a deletion policy of `Retain`.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ExecuteChangeSetInput AWS API Documentation
    #
    class ExecuteChangeSetInput < Struct.new(
      :change_set_name,
      :stack_name,
      :client_request_token,
      :disable_rollback,
      :retain_except_on_create)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output for the ExecuteChangeSet action.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ExecuteChangeSetOutput AWS API Documentation
    #
    class ExecuteChangeSetOutput < Aws::EmptyStructure; end

    # @!attribute [rw] stack_refactor_id
    #   The ID associated with the stack refactor created from the
    #   CreateStackRefactor action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ExecuteStackRefactorInput AWS API Documentation
    #
    class ExecuteStackRefactorInput < Struct.new(
      :stack_refactor_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `Export` structure describes the exported output values for a
    # stack.
    #
    # For more information, see [Get exported outputs from a deployed
    # CloudFormation stack][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-exports.html
    #
    # @!attribute [rw] exporting_stack_id
    #   The stack that contains the exported output name and value.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of exported output value. Use this name and the
    #   `Fn::ImportValue` function to import the associated value into other
    #   stacks. The name is defined in the `Export` field in the associated
    #   stack's `Outputs` section.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the exported output, such as a resource physical ID.
    #   This value is defined in the `Export` field in the associated
    #   stack's `Outputs` section.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/Export AWS API Documentation
    #
    class Export < Struct.new(
      :exporting_stack_id,
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The generated template was not found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/GeneratedTemplateNotFoundException AWS API Documentation
    #
    class GeneratedTemplateNotFoundException < Aws::EmptyStructure; end

    # @!attribute [rw] format
    #   The language to use to retrieve for the generated template.
    #   Supported values are:
    #
    #   * `JSON`
    #
    #   * `YAML`
    #   @return [String]
    #
    # @!attribute [rw] generated_template_name
    #   The name or Amazon Resource Name (ARN) of the generated template.
    #   The format is
    #   `arn:${Partition}:cloudformation:${Region}:${Account}:generatedtemplate/${Id}`.
    #   For example,
    #   `arn:aws:cloudformation:us-east-1:123456789012:generatedtemplate/2e8465c1-9a80-43ea-a3a3-4f2d692fe6dc
    #   `.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/GetGeneratedTemplateInput AWS API Documentation
    #
    class GetGeneratedTemplateInput < Struct.new(
      :format,
      :generated_template_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The status of the template generation. Supported values are:
    #
    #   * `CreatePending` - the creation of the template is pending.
    #
    #   * `CreateInProgress` - the creation of the template is in progress.
    #
    #   * `DeletePending` - the deletion of the template is pending.
    #
    #   * `DeleteInProgress` - the deletion of the template is in progress.
    #
    #   * `UpdatePending` - the update of the template is pending.
    #
    #   * `UpdateInProgress` - the update of the template is in progress.
    #
    #   * `Failed` - the template operation failed.
    #
    #   * `Complete` - the template operation is complete.
    #   @return [String]
    #
    # @!attribute [rw] template_body
    #   The template body of the generated template, in the language
    #   specified by the `Language` parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/GetGeneratedTemplateOutput AWS API Documentation
    #
    class GetGeneratedTemplateOutput < Struct.new(
      :status,
      :template_body)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the GetStackPolicy action.
    #
    # @!attribute [rw] stack_name
    #   The name or unique stack ID that's associated with the stack whose
    #   policy you want to get.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/GetStackPolicyInput AWS API Documentation
    #
    class GetStackPolicyInput < Struct.new(
      :stack_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output for the GetStackPolicy action.
    #
    # @!attribute [rw] stack_policy_body
    #   Structure that contains the stack policy body. (For more
    #   information, see [Prevent updates to stack resources][1] in the
    #   *CloudFormation User Guide*.)
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/GetStackPolicyOutput AWS API Documentation
    #
    class GetStackPolicyOutput < Struct.new(
      :stack_policy_body)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for a GetTemplate action.
    #
    # @!attribute [rw] stack_name
    #   The name or the unique stack ID that's associated with the stack,
    #   which aren't always interchangeable:
    #
    #   * Running stacks: You can specify either the stack's name or its
    #     unique stack ID.
    #
    #   * Deleted stacks: You must specify the unique stack ID.
    #   @return [String]
    #
    # @!attribute [rw] change_set_name
    #   The name or Amazon Resource Name (ARN) of a change set for which
    #   CloudFormation returns the associated template. If you specify a
    #   name, you must also specify the `StackName`.
    #   @return [String]
    #
    # @!attribute [rw] template_stage
    #   For templates that include transforms, the stage of the template
    #   that CloudFormation returns. To get the user-submitted template,
    #   specify `Original`. To get the template after CloudFormation has
    #   processed all transforms, specify `Processed`.
    #
    #   If the template doesn't include transforms, `Original` and
    #   `Processed` return the same template. By default, CloudFormation
    #   specifies `Processed`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/GetTemplateInput AWS API Documentation
    #
    class GetTemplateInput < Struct.new(
      :stack_name,
      :change_set_name,
      :template_stage)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output for GetTemplate action.
    #
    # @!attribute [rw] template_body
    #   Structure that contains the template body.
    #
    #   CloudFormation returns the same template that was used when the
    #   stack was created.
    #   @return [String]
    #
    # @!attribute [rw] stages_available
    #   The stage of the template that you can retrieve. For stacks, the
    #   `Original` and `Processed` templates are always available. For
    #   change sets, the `Original` template is always available. After
    #   CloudFormation finishes creating the change set, the `Processed`
    #   template becomes available.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/GetTemplateOutput AWS API Documentation
    #
    class GetTemplateOutput < Struct.new(
      :template_body,
      :stages_available)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the GetTemplateSummary action.
    #
    # @!attribute [rw] template_body
    #   Structure that contains the template body with a minimum length of 1
    #   byte and a maximum length of 51,200 bytes.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `StackName`, `StackSetName`, `TemplateBody`, or `TemplateURL`.
    #   @return [String]
    #
    # @!attribute [rw] template_url
    #   The URL of a file that contains the template body. The URL must
    #   point to a template (max size: 1 MB) that's located in an Amazon S3
    #   bucket or a Systems Manager document. The location for an Amazon S3
    #   bucket must start with `https://`.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `StackName`, `StackSetName`, `TemplateBody`, or `TemplateURL`.
    #   @return [String]
    #
    # @!attribute [rw] stack_name
    #   The name or the stack ID that's associated with the stack, which
    #   aren't always interchangeable. For running stacks, you can specify
    #   either the stack's name or its unique stack ID. For deleted stack,
    #   you must specify the unique stack ID.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `StackName`, `StackSetName`, `TemplateBody`, or `TemplateURL`.
    #   @return [String]
    #
    # @!attribute [rw] stack_set_name
    #   The name or unique ID of the StackSet from which the stack was
    #   created.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `StackName`, `StackSetName`, `TemplateBody`, or `TemplateURL`.
    #   @return [String]
    #
    # @!attribute [rw] call_as
    #   \[Service-managed permissions\] Specifies whether you are acting as
    #   an account administrator in the organization's management account
    #   or as a delegated administrator in a member account.
    #
    #   By default, `SELF` is specified. Use `SELF` for StackSets with
    #   self-managed permissions.
    #
    #   * If you are signed in to the management account, specify `SELF`.
    #
    #   * If you are signed in to a delegated administrator account, specify
    #     `DELEGATED_ADMIN`.
    #
    #     Your Amazon Web Services account must be registered as a delegated
    #     administrator in the management account. For more information, see
    #     [Register a delegated administrator][1] in the *CloudFormation
    #     User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html
    #   @return [String]
    #
    # @!attribute [rw] template_summary_config
    #   Specifies options for the `GetTemplateSummary` API action.
    #   @return [Types::TemplateSummaryConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/GetTemplateSummaryInput AWS API Documentation
    #
    class GetTemplateSummaryInput < Struct.new(
      :template_body,
      :template_url,
      :stack_name,
      :stack_set_name,
      :call_as,
      :template_summary_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output for the GetTemplateSummary action.
    #
    # @!attribute [rw] parameters
    #   A list of parameter declarations that describe various properties
    #   for each parameter.
    #   @return [Array<Types::ParameterDeclaration>]
    #
    # @!attribute [rw] description
    #   The value that's defined in the `Description` property of the
    #   template.
    #   @return [String]
    #
    # @!attribute [rw] capabilities
    #   The capabilities found within the template. If your template
    #   contains IAM resources, you must specify the `CAPABILITY_IAM` or
    #   `CAPABILITY_NAMED_IAM` value for this parameter when you use the
    #   CreateStack or UpdateStack actions with your template; otherwise,
    #   those actions return an `InsufficientCapabilities` error.
    #
    #   For more information, see [Acknowledging IAM resources in
    #   CloudFormation templates][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/control-access-with-iam.html#using-iam-capabilities
    #   @return [Array<String>]
    #
    # @!attribute [rw] capabilities_reason
    #   The list of resources that generated the values in the
    #   `Capabilities` response element.
    #   @return [String]
    #
    # @!attribute [rw] resource_types
    #   A list of all the template resource types that are defined in the
    #   template, such as `AWS::EC2::Instance`, `AWS::Dynamo::Table`, and
    #   `Custom::MyCustomInstance`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] version
    #   The Amazon Web Services template format version, which identifies
    #   the capabilities of the template.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The value that's defined for the `Metadata` property of the
    #   template.
    #   @return [String]
    #
    # @!attribute [rw] declared_transforms
    #   A list of the transforms that are declared in the template.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_identifier_summaries
    #   A list of resource identifier summaries that describe the target
    #   resources of an import operation and the properties you can provide
    #   during the import to identify the target resources. For example,
    #   `BucketName` is a possible identifier property for an
    #   `AWS::S3::Bucket` resource.
    #   @return [Array<Types::ResourceIdentifierSummary>]
    #
    # @!attribute [rw] warnings
    #   An object that contains any warnings returned.
    #   @return [Types::Warnings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/GetTemplateSummaryOutput AWS API Documentation
    #
    class GetTemplateSummaryOutput < Struct.new(
      :parameters,
      :description,
      :capabilities,
      :capabilities_reason,
      :resource_types,
      :version,
      :metadata,
      :declared_transforms,
      :resource_identifier_summaries,
      :warnings)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified target doesn't have any requested Hook invocations.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/HookResultNotFoundException AWS API Documentation
    #
    class HookResultNotFoundException < Aws::EmptyStructure; end

    # Describes a Hook invocation, its status, and the reason for its
    # status.
    #
    # @!attribute [rw] hook_result_id
    #   The unique identifier for this Hook invocation result.
    #   @return [String]
    #
    # @!attribute [rw] invocation_point
    #   The specific point in the provisioning process where the Hook is
    #   invoked.
    #   @return [String]
    #
    # @!attribute [rw] failure_mode
    #   The failure mode of the invocation.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The name of the Hook that was invoked.
    #   @return [String]
    #
    # @!attribute [rw] type_version_id
    #   The version of the Hook that was invoked.
    #   @return [String]
    #
    # @!attribute [rw] type_configuration_version_id
    #   The version of the Hook configuration.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Hook invocation. The following statuses are
    #   possible:
    #
    #   * `HOOK_IN_PROGRESS`: The Hook is currently running.
    #
    #   * `HOOK_COMPLETE_SUCCEEDED`: The Hook completed successfully.
    #
    #   * `HOOK_COMPLETE_FAILED`: The Hook completed but failed validation.
    #
    #   * `HOOK_FAILED`: The Hook encountered an error during execution.
    #   @return [String]
    #
    # @!attribute [rw] hook_status_reason
    #   A description of the Hook results status. For example, if the Hook
    #   result is in a failed state, this may contain additional information
    #   for the failed state.
    #   @return [String]
    #
    # @!attribute [rw] invoked_at
    #   The timestamp when the Hook was invoked.
    #
    #   Only shown in responses when the request does not specify
    #   `TargetType` and `TargetId` filters.
    #   @return [Time]
    #
    # @!attribute [rw] target_type
    #   The target type that the Hook was invoked against.
    #   @return [String]
    #
    # @!attribute [rw] target_id
    #   The unique identifier of the Hook invocation target.
    #   @return [String]
    #
    # @!attribute [rw] type_arn
    #   The ARN of the Hook that was invoked.
    #   @return [String]
    #
    # @!attribute [rw] hook_execution_target
    #   The ARN of the target stack or request token of the Cloud Control
    #   API operation.
    #
    #   Only shown in responses when the request does not specify
    #   `TargetType` and `TargetId` filters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/HookResultSummary AWS API Documentation
    #
    class HookResultSummary < Struct.new(
      :hook_result_id,
      :invocation_point,
      :failure_mode,
      :type_name,
      :type_version_id,
      :type_configuration_version_id,
      :status,
      :hook_status_reason,
      :invoked_at,
      :target_type,
      :target_id,
      :type_arn,
      :hook_execution_target)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_set_name
    #   The name of the StackSet. The name must be unique in the Region
    #   where you create your StackSet.
    #   @return [String]
    #
    # @!attribute [rw] stack_ids
    #   The IDs of the stacks you are importing into a StackSet. You import
    #   up to 10 stacks per StackSet at a time.
    #
    #   Specify either `StackIds` or `StackIdsUrl`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] stack_ids_url
    #   The Amazon S3 URL which contains list of stack ids to be inputted.
    #
    #   Specify either `StackIds` or `StackIdsUrl`.
    #   @return [String]
    #
    # @!attribute [rw] organizational_unit_ids
    #   The list of OU ID's to which the imported stacks must be mapped as
    #   deployment targets.
    #   @return [Array<String>]
    #
    # @!attribute [rw] operation_preferences
    #   The user-specified preferences for how CloudFormation performs a
    #   StackSet operation.
    #
    #   For more information about maximum concurrent accounts and failure
    #   tolerance, see [StackSet operation options][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options
    #   @return [Types::StackSetOperationPreferences]
    #
    # @!attribute [rw] operation_id
    #   A unique, user defined, identifier for the StackSet operation.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] call_as
    #   By default, `SELF` is specified. Use `SELF` for StackSets with
    #   self-managed permissions.
    #
    #   * If you are signed in to the management account, specify `SELF`.
    #
    #   * For service managed StackSets, specify `DELEGATED_ADMIN`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ImportStacksToStackSetInput AWS API Documentation
    #
    class ImportStacksToStackSetInput < Struct.new(
      :stack_set_name,
      :stack_ids,
      :stack_ids_url,
      :organizational_unit_ids,
      :operation_preferences,
      :operation_id,
      :call_as)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation_id
    #   The unique identifier for the StackSet operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ImportStacksToStackSetOutput AWS API Documentation
    #
    class ImportStacksToStackSetOutput < Struct.new(
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The template contains resources with capabilities that weren't
    # specified in the Capabilities parameter.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/InsufficientCapabilitiesException AWS API Documentation
    #
    class InsufficientCapabilitiesException < Aws::EmptyStructure; end

    # The specified change set can't be used to update the stack. For
    # example, the change set status might be `CREATE_IN_PROGRESS`, or the
    # stack status might be `UPDATE_IN_PROGRESS`.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/InvalidChangeSetStatusException AWS API Documentation
    #
    class InvalidChangeSetStatusException < Aws::EmptyStructure; end

    # The specified operation isn't valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/InvalidOperationException AWS API Documentation
    #
    class InvalidOperationException < Aws::EmptyStructure; end

    # Error reserved for use by the [CloudFormation CLI][1]. CloudFormation
    # doesn't return this error to users.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/InvalidStateTransitionException AWS API Documentation
    #
    class InvalidStateTransitionException < Aws::EmptyStructure; end

    # The quota for the resource has already been reached.
    #
    # For information about resource and stack limitations, see
    # [CloudFormation quotas][1] in the *CloudFormation User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cloudformation-limits.html
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Aws::EmptyStructure; end

    # The input for the ListChangeSets action.
    #
    # @!attribute [rw] stack_name
    #   The name or the Amazon Resource Name (ARN) of the stack for which
    #   you want to list change sets.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A string (provided by the ListChangeSets response output) that
    #   identifies the next page of change sets that you want to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListChangeSetsInput AWS API Documentation
    #
    class ListChangeSetsInput < Struct.new(
      :stack_name,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output for the ListChangeSets action.
    #
    # @!attribute [rw] summaries
    #   A list of `ChangeSetSummary` structures that provides the ID and
    #   status of each change set for the specified stack.
    #   @return [Array<Types::ChangeSetSummary>]
    #
    # @!attribute [rw] next_token
    #   If the output exceeds 1 MB, a string that identifies the next page
    #   of change sets. If there is no additional page, this value is
    #   `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListChangeSetsOutput AWS API Documentation
    #
    class ListChangeSetsOutput < Struct.new(
      :summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A string (provided by the ListExports response output) that
    #   identifies the next page of exported output values that you asked to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListExportsInput AWS API Documentation
    #
    class ListExportsInput < Struct.new(
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] exports
    #   The output for the ListExports action.
    #   @return [Array<Types::Export>]
    #
    # @!attribute [rw] next_token
    #   If the output exceeds 100 exported output values, a string that
    #   identifies the next page of exports. If there is no additional page,
    #   this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListExportsOutput AWS API Documentation
    #
    class ListExportsOutput < Struct.new(
      :exports,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A string that identifies the next page of resource scan results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   If the number of available results exceeds this maximum, the
    #   response includes a `NextToken` value that you can use for the
    #   `NextToken` parameter to get the next set of results. By default the
    #   `ListGeneratedTemplates` API action will return at most 50 results
    #   in each response. The maximum value is 100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListGeneratedTemplatesInput AWS API Documentation
    #
    class ListGeneratedTemplatesInput < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] summaries
    #   A list of summaries of the generated templates.
    #   @return [Array<Types::TemplateSummary>]
    #
    # @!attribute [rw] next_token
    #   If the request doesn't return all the remaining results,
    #   `NextToken` is set to a token. To retrieve the next set of results,
    #   call `ListGeneratedTemplates` again and use that value for the
    #   `NextToken` parameter. If the request returns all results,
    #   `NextToken` is set to an empty string.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListGeneratedTemplatesOutput AWS API Documentation
    #
    class ListGeneratedTemplatesOutput < Struct.new(
      :summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] target_type
    #   Filters results by target type. Currently, only `CHANGE_SET` and
    #   `CLOUD_CONTROL` are supported filter options.
    #
    #   Required when `TargetId` is specified and cannot be used otherwise.
    #   @return [String]
    #
    # @!attribute [rw] target_id
    #   Filters results by the unique identifier of the target the Hook was
    #   invoked against.
    #
    #   For change sets, this is the change set ARN. When the target is a
    #   Cloud Control API operation, this value must be the
    #   `HookRequestToken` returned by the Cloud Control API request. For
    #   more information on the `HookRequestToken`, see [ProgressEvent][1].
    #
    #   Required when `TargetType` is specified and cannot be used
    #   otherwise.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_ProgressEvent.html
    #   @return [String]
    #
    # @!attribute [rw] type_arn
    #   Filters results by the ARN of the Hook. Can be used alone or in
    #   combination with `Status`.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Filters results by the status of Hook invocations. Can only be used
    #   in combination with `TypeArn`. Valid values are:
    #
    #   * `HOOK_IN_PROGRESS`: The Hook is currently running.
    #
    #   * `HOOK_COMPLETE_SUCCEEDED`: The Hook completed successfully.
    #
    #   * `HOOK_COMPLETE_FAILED`: The Hook completed but failed validation.
    #
    #   * `HOOK_FAILED`: The Hook encountered an error during execution.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A string that identifies the next page of events that you want to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListHookResultsInput AWS API Documentation
    #
    class ListHookResultsInput < Struct.new(
      :target_type,
      :target_id,
      :type_arn,
      :status,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] target_type
    #   The target type.
    #   @return [String]
    #
    # @!attribute [rw] target_id
    #   The unique identifier of the Hook invocation target.
    #   @return [String]
    #
    # @!attribute [rw] hook_results
    #   A list of `HookResultSummary` structures that provides the status
    #   and Hook status reason for each Hook invocation for the specified
    #   target.
    #   @return [Array<Types::HookResultSummary>]
    #
    # @!attribute [rw] next_token
    #   Pagination token, `null` or empty if no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListHookResultsOutput AWS API Documentation
    #
    class ListHookResultsOutput < Struct.new(
      :target_type,
      :target_id,
      :hook_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] export_name
    #   The name of the exported output value. CloudFormation returns the
    #   stack names that are importing this value.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A string (provided by the ListImports response output) that
    #   identifies the next page of stacks that are importing the specified
    #   exported output value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListImportsInput AWS API Documentation
    #
    class ListImportsInput < Struct.new(
      :export_name,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] imports
    #   A list of stack names that are importing the specified exported
    #   output value.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   A string that identifies the next page of exports. If there is no
    #   additional page, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListImportsOutput AWS API Documentation
    #
    class ListImportsOutput < Struct.new(
      :imports,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_scan_id
    #   The Amazon Resource Name (ARN) of the resource scan.
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   The list of resources for which you want to get the related
    #   resources. Up to 100 resources can be provided.
    #   @return [Array<Types::ScannedResourceIdentifier>]
    #
    # @!attribute [rw] next_token
    #   A string that identifies the next page of resource scan results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   If the number of available results exceeds this maximum, the
    #   response includes a `NextToken` value that you can use for the
    #   `NextToken` parameter to get the next set of results. By default the
    #   `ListResourceScanRelatedResources` API action will return up to 100
    #   results in each response. The maximum value is 100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListResourceScanRelatedResourcesInput AWS API Documentation
    #
    class ListResourceScanRelatedResourcesInput < Struct.new(
      :resource_scan_id,
      :resources,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] related_resources
    #   List of up to `MaxResults` resources in the specified resource scan
    #   related to the specified resources.
    #   @return [Array<Types::ScannedResource>]
    #
    # @!attribute [rw] next_token
    #   If the request doesn't return all the remaining results,
    #   `NextToken` is set to a token. To retrieve the next set of results,
    #   call `ListResourceScanRelatedResources` again and use that value for
    #   the `NextToken` parameter. If the request returns all results,
    #   `NextToken` is set to an empty string.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListResourceScanRelatedResourcesOutput AWS API Documentation
    #
    class ListResourceScanRelatedResourcesOutput < Struct.new(
      :related_resources,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_scan_id
    #   The Amazon Resource Name (ARN) of the resource scan.
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   If specified, the returned resources will have the specified
    #   resource identifier (or one of them in the case where the resource
    #   has multiple identifiers).
    #   @return [String]
    #
    # @!attribute [rw] resource_type_prefix
    #   If specified, the returned resources will be of any of the resource
    #   types with the specified prefix.
    #   @return [String]
    #
    # @!attribute [rw] tag_key
    #   If specified, the returned resources will have a matching tag key.
    #   @return [String]
    #
    # @!attribute [rw] tag_value
    #   If specified, the returned resources will have a matching tag value.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A string that identifies the next page of resource scan results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   If the number of available results exceeds this maximum, the
    #   response includes a `NextToken` value that you can use for the
    #   `NextToken` parameter to get the next set of results. By default the
    #   `ListResourceScanResources` API action will return at most 100
    #   results in each response. The maximum value is 100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListResourceScanResourcesInput AWS API Documentation
    #
    class ListResourceScanResourcesInput < Struct.new(
      :resource_scan_id,
      :resource_identifier,
      :resource_type_prefix,
      :tag_key,
      :tag_value,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resources
    #   List of up to `MaxResults` resources in the specified resource scan
    #   that match all of the specified filters.
    #   @return [Array<Types::ScannedResource>]
    #
    # @!attribute [rw] next_token
    #   If the request doesn't return all the remaining results,
    #   `NextToken` is set to a token. To retrieve the next set of results,
    #   call `ListResourceScanResources` again and use that value for the
    #   `NextToken` parameter. If the request returns all results,
    #   `NextToken` is set to an empty string.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListResourceScanResourcesOutput AWS API Documentation
    #
    class ListResourceScanResourcesOutput < Struct.new(
      :resources,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A string that identifies the next page of resource scan results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   If the number of available results exceeds this maximum, the
    #   response includes a `NextToken` value that you can use for the
    #   `NextToken` parameter to get the next set of results. The default
    #   value is 10. The maximum value is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] scan_type_filter
    #   The scan type that you want to get summary information about. The
    #   default is `FULL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListResourceScansInput AWS API Documentation
    #
    class ListResourceScansInput < Struct.new(
      :next_token,
      :max_results,
      :scan_type_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_scan_summaries
    #   The list of scans returned.
    #   @return [Array<Types::ResourceScanSummary>]
    #
    # @!attribute [rw] next_token
    #   If the request doesn't return all the remaining results,
    #   `NextToken` is set to a token. To retrieve the next set of results,
    #   call `ListResourceScans` again and use that value for the
    #   `NextToken` parameter. If the request returns all results,
    #   `NextToken` is set to an empty string.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListResourceScansOutput AWS API Documentation
    #
    class ListResourceScansOutput < Struct.new(
      :resource_scan_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_set_name
    #   The name or unique ID of the StackSet that you want to list drifted
    #   resources for.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the previous paginated request didn't return all of the
    #   remaining results, the response object's `NextToken` parameter
    #   value is set to a token. To retrieve the next set of results, call
    #   this action again and assign that token to the request object's
    #   `NextToken` parameter. If there are no remaining results, the
    #   previous response object's `NextToken` parameter is set to `null`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned with a single call. If
    #   the number of available results exceeds this maximum, the response
    #   includes a `NextToken` value that you can assign to the `NextToken`
    #   request parameter to get the next set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] stack_instance_resource_drift_statuses
    #   The resource drift status of the stack instance.
    #
    #   * `DELETED`: The resource differs from its expected template
    #     configuration in that the resource has been deleted.
    #
    #   * `MODIFIED`: One or more resource properties differ from their
    #     expected template values.
    #
    #   * `IN_SYNC`: The resource's actual configuration matches its
    #     expected template configuration.
    #
    #   * `NOT_CHECKED`: CloudFormation doesn't currently return this
    #     value.
    #   @return [Array<String>]
    #
    # @!attribute [rw] stack_instance_account
    #   The name of the Amazon Web Services account that you want to list
    #   resource drifts for.
    #   @return [String]
    #
    # @!attribute [rw] stack_instance_region
    #   The name of the Region where you want to list resource drifts.
    #   @return [String]
    #
    # @!attribute [rw] operation_id
    #   The unique ID of the drift operation.
    #   @return [String]
    #
    # @!attribute [rw] call_as
    #   \[Service-managed permissions\] Specifies whether you are acting as
    #   an account administrator in the organization's management account
    #   or as a delegated administrator in a member account.
    #
    #   By default, `SELF` is specified. Use `SELF` for StackSets with
    #   self-managed permissions.
    #
    #   * If you are signed in to the management account, specify `SELF`.
    #
    #   * If you are signed in to a delegated administrator account, specify
    #     `DELEGATED_ADMIN`.
    #
    #     Your Amazon Web Services account must be registered as a delegated
    #     administrator in the management account. For more information, see
    #     [Register a delegated administrator][1] in the *CloudFormation
    #     User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStackInstanceResourceDriftsInput AWS API Documentation
    #
    class ListStackInstanceResourceDriftsInput < Struct.new(
      :stack_set_name,
      :next_token,
      :max_results,
      :stack_instance_resource_drift_statuses,
      :stack_instance_account,
      :stack_instance_region,
      :operation_id,
      :call_as)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] summaries
    #   A list of `StackInstanceResourceDriftsSummary` structures that
    #   contain information about the specified stack instances.
    #   @return [Array<Types::StackInstanceResourceDriftsSummary>]
    #
    # @!attribute [rw] next_token
    #   If the previous paginated request didn't return all of the
    #   remaining results, the response object's `NextToken` parameter
    #   value is set to a token. To retrieve the next set of results, call
    #   this action again and assign that token to the request object's
    #   `NextToken` parameter. If there are no remaining results, the
    #   previous response object's `NextToken` parameter is set to `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStackInstanceResourceDriftsOutput AWS API Documentation
    #
    class ListStackInstanceResourceDriftsOutput < Struct.new(
      :summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_set_name
    #   The name or unique ID of the StackSet that you want to list stack
    #   instances for.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the previous request didn't return all the remaining results,
    #   the response's `NextToken` parameter value is set to a token. To
    #   retrieve the next set of results, call `ListStackInstances` again
    #   and assign that token to the request object's `NextToken`
    #   parameter. If there are no remaining results, the previous response
    #   object's `NextToken` parameter is set to `null`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned with a single call. If
    #   the number of available results exceeds this maximum, the response
    #   includes a `NextToken` value that you can assign to the `NextToken`
    #   request parameter to get the next set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   The filter to apply to stack instances
    #   @return [Array<Types::StackInstanceFilter>]
    #
    # @!attribute [rw] stack_instance_account
    #   The name of the Amazon Web Services account that you want to list
    #   stack instances for.
    #   @return [String]
    #
    # @!attribute [rw] stack_instance_region
    #   The name of the Region where you want to list stack instances.
    #   @return [String]
    #
    # @!attribute [rw] call_as
    #   \[Service-managed permissions\] Specifies whether you are acting as
    #   an account administrator in the organization's management account
    #   or as a delegated administrator in a member account.
    #
    #   By default, `SELF` is specified. Use `SELF` for StackSets with
    #   self-managed permissions.
    #
    #   * If you are signed in to the management account, specify `SELF`.
    #
    #   * If you are signed in to a delegated administrator account, specify
    #     `DELEGATED_ADMIN`.
    #
    #     Your Amazon Web Services account must be registered as a delegated
    #     administrator in the management account. For more information, see
    #     [Register a delegated administrator][1] in the *CloudFormation
    #     User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStackInstancesInput AWS API Documentation
    #
    class ListStackInstancesInput < Struct.new(
      :stack_set_name,
      :next_token,
      :max_results,
      :filters,
      :stack_instance_account,
      :stack_instance_region,
      :call_as)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] summaries
    #   A list of `StackInstanceSummary` structures that contain information
    #   about the specified stack instances.
    #   @return [Array<Types::StackInstanceSummary>]
    #
    # @!attribute [rw] next_token
    #   If the request doesn't return all the remaining results,
    #   `NextToken` is set to a token. To retrieve the next set of results,
    #   call `ListStackInstances` again and assign that token to the request
    #   object's `NextToken` parameter. If the request returns all results,
    #   `NextToken` is set to `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStackInstancesOutput AWS API Documentation
    #
    class ListStackInstancesOutput < Struct.new(
      :summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_refactor_id
    #   The ID associated with the stack refactor created from the
    #   CreateStackRefactor action.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the request doesn't return all the remaining results,
    #   `NextToken` is set to a token. To retrieve the next set of results,
    #   call this action again and assign that token to the request
    #   object's `NextToken` parameter. If the request returns all results,
    #   `NextToken` is set to `null`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned with a single call. If
    #   the number of available results exceeds this maximum, the response
    #   includes a `NextToken` value that you can assign to the `NextToken`
    #   request parameter to get the next set of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStackRefactorActionsInput AWS API Documentation
    #
    class ListStackRefactorActionsInput < Struct.new(
      :stack_refactor_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_refactor_actions
    #   The stack refactor actions.
    #   @return [Array<Types::StackRefactorAction>]
    #
    # @!attribute [rw] next_token
    #   If the request doesn't return all the remaining results,
    #   `NextToken` is set to a token. To retrieve the next set of results,
    #   call this action again and assign that token to the request
    #   object's `NextToken` parameter. If the request returns all results,
    #   `NextToken` is set to `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStackRefactorActionsOutput AWS API Documentation
    #
    class ListStackRefactorActionsOutput < Struct.new(
      :stack_refactor_actions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] execution_status_filter
    #   Execution status to use as a filter. Specify one or more execution
    #   status codes to list only stack refactors with the specified
    #   execution status codes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   If the request doesn't return all the remaining results,
    #   `NextToken` is set to a token. To retrieve the next set of results,
    #   call this action again and assign that token to the request
    #   object's `NextToken` parameter. If the request returns all results,
    #   `NextToken` is set to `null`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned with a single call. If
    #   the number of available results exceeds this maximum, the response
    #   includes a `NextToken` value that you can assign to the `NextToken`
    #   request parameter to get the next set of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStackRefactorsInput AWS API Documentation
    #
    class ListStackRefactorsInput < Struct.new(
      :execution_status_filter,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_refactor_summaries
    #   Provides a summary of a stack refactor, including the following:
    #
    #   * `StackRefactorId`
    #
    #   * `Status`
    #
    #   * `StatusReason`
    #
    #   * `ExecutionStatus`
    #
    #   * `ExecutionStatusReason`
    #
    #   * `Description`
    #   @return [Array<Types::StackRefactorSummary>]
    #
    # @!attribute [rw] next_token
    #   If the request doesn't return all the remaining results,
    #   `NextToken` is set to a token. To retrieve the next set of results,
    #   call this action again and assign that token to the request
    #   object's `NextToken` parameter. If the request returns all results,
    #   `NextToken` is set to `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStackRefactorsOutput AWS API Documentation
    #
    class ListStackRefactorsOutput < Struct.new(
      :stack_refactor_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the ListStackResource action.
    #
    # @!attribute [rw] stack_name
    #   The name or the unique stack ID that is associated with the stack,
    #   which aren't always interchangeable:
    #
    #   * Running stacks: You can specify either the stack's name or its
    #     unique stack ID.
    #
    #   * Deleted stacks: You must specify the unique stack ID.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A string that identifies the next page of stack resources that you
    #   want to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStackResourcesInput AWS API Documentation
    #
    class ListStackResourcesInput < Struct.new(
      :stack_name,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output for a ListStackResources action.
    #
    # @!attribute [rw] stack_resource_summaries
    #   A list of `StackResourceSummary` structures.
    #   @return [Array<Types::StackResourceSummary>]
    #
    # @!attribute [rw] next_token
    #   If the output exceeds 1 MB, a string that identifies the next page
    #   of stack resources. If no additional page exists, this value is
    #   null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStackResourcesOutput AWS API Documentation
    #
    class ListStackResourcesOutput < Struct.new(
      :stack_resource_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_set_name
    #   The name or unique ID of the StackSet that you want to get automatic
    #   deployment targets for.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A string that identifies the next page of deployment targets that
    #   you want to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned with a single call. If
    #   the number of available results exceeds this maximum, the response
    #   includes a `NextToken` value that you can assign to the `NextToken`
    #   request parameter to get the next set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] call_as
    #   Specifies whether you are acting as an account administrator in the
    #   organization's management account or as a delegated administrator
    #   in a member account.
    #
    #   By default, `SELF` is specified. Use `SELF` for StackSets with
    #   self-managed permissions.
    #
    #   * If you are signed in to the management account, specify `SELF`.
    #
    #   * If you are signed in to a delegated administrator account, specify
    #     `DELEGATED_ADMIN`.
    #
    #     Your Amazon Web Services account must be registered as a delegated
    #     administrator in the management account. For more information, see
    #     [Register a delegated administrator][1] in the *CloudFormation
    #     User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStackSetAutoDeploymentTargetsInput AWS API Documentation
    #
    class ListStackSetAutoDeploymentTargetsInput < Struct.new(
      :stack_set_name,
      :next_token,
      :max_results,
      :call_as)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] summaries
    #   An array of summaries of the deployment targets for the StackSet.
    #   @return [Array<Types::StackSetAutoDeploymentTargetSummary>]
    #
    # @!attribute [rw] next_token
    #   If the request doesn't return all the remaining results,
    #   `NextToken` is set to a token. To retrieve the next set of results,
    #   call [ListStackSetAutoDeploymentTargets][1] again and use that value
    #   for the `NextToken` parameter. If the request returns all results,
    #   `NextToken` is set to an empty string.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ListStackSetAutoDeploymentTargets.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStackSetAutoDeploymentTargetsOutput AWS API Documentation
    #
    class ListStackSetAutoDeploymentTargetsOutput < Struct.new(
      :summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_set_name
    #   The name or unique ID of the StackSet that you want to get operation
    #   results for.
    #   @return [String]
    #
    # @!attribute [rw] operation_id
    #   The ID of the StackSet operation.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the previous request didn't return all the remaining results,
    #   the response object's `NextToken` parameter value is set to a
    #   token. To retrieve the next set of results, call
    #   `ListStackSetOperationResults` again and assign that token to the
    #   request object's `NextToken` parameter. If there are no remaining
    #   results, the previous response object's `NextToken` parameter is
    #   set to `null`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned with a single call. If
    #   the number of available results exceeds this maximum, the response
    #   includes a `NextToken` value that you can assign to the `NextToken`
    #   request parameter to get the next set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] call_as
    #   \[Service-managed permissions\] Specifies whether you are acting as
    #   an account administrator in the organization's management account
    #   or as a delegated administrator in a member account.
    #
    #   By default, `SELF` is specified. Use `SELF` for StackSets with
    #   self-managed permissions.
    #
    #   * If you are signed in to the management account, specify `SELF`.
    #
    #   * If you are signed in to a delegated administrator account, specify
    #     `DELEGATED_ADMIN`.
    #
    #     Your Amazon Web Services account must be registered as a delegated
    #     administrator in the management account. For more information, see
    #     [Register a delegated administrator][1] in the *CloudFormation
    #     User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   The filter to apply to operation results.
    #   @return [Array<Types::OperationResultFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStackSetOperationResultsInput AWS API Documentation
    #
    class ListStackSetOperationResultsInput < Struct.new(
      :stack_set_name,
      :operation_id,
      :next_token,
      :max_results,
      :call_as,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] summaries
    #   A list of `StackSetOperationResultSummary` structures that contain
    #   information about the specified operation results, for accounts and
    #   Amazon Web Services Regions that are included in the operation.
    #   @return [Array<Types::StackSetOperationResultSummary>]
    #
    # @!attribute [rw] next_token
    #   If the request doesn't return all results, `NextToken` is set to a
    #   token. To retrieve the next set of results, call
    #   `ListOperationResults` again and assign that token to the request
    #   object's `NextToken` parameter. If there are no remaining results,
    #   `NextToken` is set to `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStackSetOperationResultsOutput AWS API Documentation
    #
    class ListStackSetOperationResultsOutput < Struct.new(
      :summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_set_name
    #   The name or unique ID of the StackSet that you want to get operation
    #   summaries for.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the previous paginated request didn't return all of the
    #   remaining results, the response object's `NextToken` parameter
    #   value is set to a token. To retrieve the next set of results, call
    #   `ListStackSetOperations` again and assign that token to the request
    #   object's `NextToken` parameter. If there are no remaining results,
    #   the previous response object's `NextToken` parameter is set to
    #   `null`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned with a single call. If
    #   the number of available results exceeds this maximum, the response
    #   includes a `NextToken` value that you can assign to the `NextToken`
    #   request parameter to get the next set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] call_as
    #   \[Service-managed permissions\] Specifies whether you are acting as
    #   an account administrator in the organization's management account
    #   or as a delegated administrator in a member account.
    #
    #   By default, `SELF` is specified. Use `SELF` for StackSets with
    #   self-managed permissions.
    #
    #   * If you are signed in to the management account, specify `SELF`.
    #
    #   * If you are signed in to a delegated administrator account, specify
    #     `DELEGATED_ADMIN`.
    #
    #     Your Amazon Web Services account must be registered as a delegated
    #     administrator in the management account. For more information, see
    #     [Register a delegated administrator][1] in the *CloudFormation
    #     User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStackSetOperationsInput AWS API Documentation
    #
    class ListStackSetOperationsInput < Struct.new(
      :stack_set_name,
      :next_token,
      :max_results,
      :call_as)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] summaries
    #   A list of `StackSetOperationSummary` structures that contain summary
    #   information about operations for the specified StackSet.
    #   @return [Array<Types::StackSetOperationSummary>]
    #
    # @!attribute [rw] next_token
    #   If the request doesn't return all results, `NextToken` is set to a
    #   token. To retrieve the next set of results, call
    #   `ListOperationResults` again and assign that token to the request
    #   object's `NextToken` parameter. If there are no remaining results,
    #   `NextToken` is set to `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStackSetOperationsOutput AWS API Documentation
    #
    class ListStackSetOperationsOutput < Struct.new(
      :summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If the previous paginated request didn't return all the remaining
    #   results, the response object's `NextToken` parameter value is set
    #   to a token. To retrieve the next set of results, call
    #   `ListStackSets` again and assign that token to the request object's
    #   `NextToken` parameter. If there are no remaining results, the
    #   previous response object's `NextToken` parameter is set to `null`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned with a single call. If
    #   the number of available results exceeds this maximum, the response
    #   includes a `NextToken` value that you can assign to the `NextToken`
    #   request parameter to get the next set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the StackSets that you want to get summary information
    #   about.
    #   @return [String]
    #
    # @!attribute [rw] call_as
    #   \[Service-managed permissions\] Specifies whether you are acting as
    #   an account administrator in the management account or as a delegated
    #   administrator in a member account.
    #
    #   By default, `SELF` is specified. Use `SELF` for StackSets with
    #   self-managed permissions.
    #
    #   * If you are signed in to the management account, specify `SELF`.
    #
    #   * If you are signed in to a delegated administrator account, specify
    #     `DELEGATED_ADMIN`.
    #
    #     Your Amazon Web Services account must be registered as a delegated
    #     administrator in the management account. For more information, see
    #     [Register a delegated administrator][1] in the *CloudFormation
    #     User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStackSetsInput AWS API Documentation
    #
    class ListStackSetsInput < Struct.new(
      :next_token,
      :max_results,
      :status,
      :call_as)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] summaries
    #   A list of `StackSetSummary` structures that contain information
    #   about the user's StackSets.
    #   @return [Array<Types::StackSetSummary>]
    #
    # @!attribute [rw] next_token
    #   If the request doesn't return all of the remaining results,
    #   `NextToken` is set to a token. To retrieve the next set of results,
    #   call `ListStackInstances` again and assign that token to the request
    #   object's `NextToken` parameter. If the request returns all results,
    #   `NextToken` is set to `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStackSetsOutput AWS API Documentation
    #
    class ListStackSetsOutput < Struct.new(
      :summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for ListStacks action.
    #
    # @!attribute [rw] next_token
    #   A string that identifies the next page of stacks that you want to
    #   retrieve.
    #   @return [String]
    #
    # @!attribute [rw] stack_status_filter
    #   Stack status to use as a filter. Specify one or more stack status
    #   codes to list only stacks with the specified status codes. For a
    #   complete list of stack status codes, see the `StackStatus` parameter
    #   of the Stack data type.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStacksInput AWS API Documentation
    #
    class ListStacksInput < Struct.new(
      :next_token,
      :stack_status_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output for ListStacks action.
    #
    # @!attribute [rw] stack_summaries
    #   A list of `StackSummary` structures that contains information about
    #   the specified stacks.
    #   @return [Array<Types::StackSummary>]
    #
    # @!attribute [rw] next_token
    #   If the output exceeds 1 MB in size, a string that identifies the
    #   next page of stacks. If no additional page exists, this value is
    #   null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStacksOutput AWS API Documentation
    #
    class ListStacksOutput < Struct.new(
      :stack_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] type
    #   The kind of extension.
    #
    #   Conditional: You must specify either `TypeName` and `Type`, or
    #   `Arn`.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The name of the extension.
    #
    #   Conditional: You must specify either `TypeName` and `Type`, or
    #   `Arn`.
    #   @return [String]
    #
    # @!attribute [rw] type_arn
    #   The Amazon Resource Name (ARN) of the extension.
    #
    #   Conditional: You must specify either `TypeName` and `Type`, or
    #   `Arn`.
    #   @return [String]
    #
    # @!attribute [rw] registration_status_filter
    #   The current status of the extension registration request.
    #
    #   The default is `IN_PROGRESS`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned with a single call. If
    #   the number of available results exceeds this maximum, the response
    #   includes a `NextToken` value that you can assign to the `NextToken`
    #   request parameter to get the next set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the previous paginated request didn't return all the remaining
    #   results, the response object's `NextToken` parameter value is set
    #   to a token. To retrieve the next set of results, call this action
    #   again and assign that token to the request object's `NextToken`
    #   parameter. If there are no remaining results, the previous response
    #   object's `NextToken` parameter is set to `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListTypeRegistrationsInput AWS API Documentation
    #
    class ListTypeRegistrationsInput < Struct.new(
      :type,
      :type_name,
      :type_arn,
      :registration_status_filter,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registration_token_list
    #   A list of extension registration tokens.
    #
    #   Use DescribeTypeRegistration to return detailed information about a
    #   type registration request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   If the request doesn't return all the remaining results,
    #   `NextToken` is set to a token. To retrieve the next set of results,
    #   call this action again and assign that token to the request
    #   object's `NextToken` parameter. If the request returns all results,
    #   `NextToken` is set to `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListTypeRegistrationsOutput AWS API Documentation
    #
    class ListTypeRegistrationsOutput < Struct.new(
      :registration_token_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] type
    #   The kind of the extension.
    #
    #   Conditional: You must specify either `TypeName` and `Type`, or
    #   `Arn`.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The name of the extension for which you want version summary
    #   information.
    #
    #   Conditional: You must specify either `TypeName` and `Type`, or
    #   `Arn`.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the extension for which you want
    #   version summary information.
    #
    #   Conditional: You must specify either `TypeName` and `Type`, or
    #   `Arn`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned with a single call. If
    #   the number of available results exceeds this maximum, the response
    #   includes a `NextToken` value that you can assign to the `NextToken`
    #   request parameter to get the next set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the previous paginated request didn't return all of the
    #   remaining results, the response object's `NextToken` parameter
    #   value is set to a token. To retrieve the next set of results, call
    #   this action again and assign that token to the request object's
    #   `NextToken` parameter. If there are no remaining results, the
    #   previous response object's `NextToken` parameter is set to `null`.
    #   @return [String]
    #
    # @!attribute [rw] deprecated_status
    #   The deprecation status of the extension versions that you want to
    #   get summary information about.
    #
    #   Valid values include:
    #
    #   * `LIVE`: The extension version is registered and can be used in
    #     CloudFormation operations, dependent on its provisioning behavior
    #     and visibility scope.
    #
    #   * `DEPRECATED`: The extension version has been deregistered and can
    #     no longer be used in CloudFormation operations.
    #
    #   The default is `LIVE`.
    #   @return [String]
    #
    # @!attribute [rw] publisher_id
    #   The publisher ID of the extension publisher.
    #
    #   Extensions published by Amazon aren't assigned a publisher ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListTypeVersionsInput AWS API Documentation
    #
    class ListTypeVersionsInput < Struct.new(
      :type,
      :type_name,
      :arn,
      :max_results,
      :next_token,
      :deprecated_status,
      :publisher_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] type_version_summaries
    #   A list of `TypeVersionSummary` structures that contain information
    #   about the specified extension's versions.
    #   @return [Array<Types::TypeVersionSummary>]
    #
    # @!attribute [rw] next_token
    #   If the request doesn't return all of the remaining results,
    #   `NextToken` is set to a token. To retrieve the next set of results,
    #   call this action again and assign that token to the request
    #   object's `NextToken` parameter. If the request returns all results,
    #   `NextToken` is set to `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListTypeVersionsOutput AWS API Documentation
    #
    class ListTypeVersionsOutput < Struct.new(
      :type_version_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] visibility
    #   The scope at which the extensions are visible and usable in
    #   CloudFormation operations.
    #
    #   Valid values include:
    #
    #   * `PRIVATE`: Extensions that are visible and usable within this
    #     account and Region. This includes:
    #
    #     * Private extensions you have registered in this account and
    #       Region.
    #
    #     * Public extensions that you have activated in this account and
    #       Region.
    #   * `PUBLIC`: Extensions that are publicly visible and available to be
    #     activated within any Amazon Web Services account. This includes
    #     extensions from Amazon Web Services, in addition to third-party
    #     publishers.
    #
    #   The default is `PRIVATE`.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_type
    #   For resource types, the provisioning behavior of the resource type.
    #   CloudFormation determines the provisioning type during registration,
    #   based on the types of handlers in the schema handler package
    #   submitted.
    #
    #   Valid values include:
    #
    #   * `FULLY_MUTABLE`: The resource type includes an update handler to
    #     process updates to the type during stack update operations.
    #
    #   * `IMMUTABLE`: The resource type doesn't include an update handler,
    #     so the type can't be updated and must instead be replaced during
    #     stack update operations.
    #
    #   * `NON_PROVISIONABLE`: The resource type doesn't include create,
    #     read, and delete handlers, and therefore can't actually be
    #     provisioned.
    #
    #   The default is `FULLY_MUTABLE`.
    #   @return [String]
    #
    # @!attribute [rw] deprecated_status
    #   The deprecation status of the extension that you want to get summary
    #   information about.
    #
    #   Valid values include:
    #
    #   * `LIVE`: The extension is registered for use in CloudFormation
    #     operations.
    #
    #   * `DEPRECATED`: The extension has been deregistered and can no
    #     longer be used in CloudFormation operations.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of extension.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filter criteria to use in determining which extensions to return.
    #
    #   Filters must be compatible with `Visibility` to return valid
    #   results. For example, specifying `AWS_TYPES` for `Category` and
    #   `PRIVATE` for `Visibility` returns an empty list of types, but
    #   specifying `PUBLIC` for `Visibility` returns the desired list.
    #   @return [Types::TypeFilters]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned with a single call. If
    #   the number of available results exceeds this maximum, the response
    #   includes a `NextToken` value that you can assign to the `NextToken`
    #   request parameter to get the next set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the previous paginated request didn't return all the remaining
    #   results, the response object's `NextToken` parameter value is set
    #   to a token. To retrieve the next set of results, call this action
    #   again and assign that token to the request object's `NextToken`
    #   parameter. If there are no remaining results, the previous response
    #   object's `NextToken` parameter is set to `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListTypesInput AWS API Documentation
    #
    class ListTypesInput < Struct.new(
      :visibility,
      :provisioning_type,
      :deprecated_status,
      :type,
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] type_summaries
    #   A list of `TypeSummary` structures that contain information about
    #   the specified extensions.
    #   @return [Array<Types::TypeSummary>]
    #
    # @!attribute [rw] next_token
    #   If the request doesn't return all the remaining results,
    #   `NextToken` is set to a token. To retrieve the next set of results,
    #   call this action again and assign that token to the request
    #   object's `NextToken` parameter. If the request returns all results,
    #   `NextToken` is set to `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListTypesOutput AWS API Documentation
    #
    class ListTypesOutput < Struct.new(
      :type_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains logging configuration information for an extension.
    #
    # @!attribute [rw] log_role_arn
    #   The Amazon Resource Name (ARN) of the role that CloudFormation
    #   should assume when sending log entries to CloudWatch Logs.
    #   @return [String]
    #
    # @!attribute [rw] log_group_name
    #   The Amazon CloudWatch Logs group to which CloudFormation sends error
    #   logging information when invoking the extension's handlers.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/LoggingConfig AWS API Documentation
    #
    class LoggingConfig < Struct.new(
      :log_role_arn,
      :log_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes whether StackSets performs non-conflicting operations
    # concurrently and queues conflicting operations.
    #
    # @!attribute [rw] active
    #   When `true`, CloudFormation performs non-conflicting operations
    #   concurrently and queues conflicting operations. After conflicting
    #   operations finish, CloudFormation starts queued operations in
    #   request order.
    #
    #   <note markdown="1"> If there are already running or queued operations, CloudFormation
    #   queues all incoming operations even if they are non-conflicting.
    #
    #    You can't modify your StackSet's execution configuration while
    #   there are running or queued operations for that StackSet.
    #
    #    </note>
    #
    #   When `false` (default), StackSets performs one operation at a time
    #   in request order.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ManagedExecution AWS API Documentation
    #
    class ManagedExecution < Struct.new(
      :active)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the module from which the resource was
    # created, if the resource was created from a module included in the
    # stack template.
    #
    # For more information about modules, see [Create reusable resource
    # configurations that can be included across templates with
    # CloudFormation modules][1] in the *CloudFormation User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/modules.html
    #
    # @!attribute [rw] type_hierarchy
    #   A concatenated list of the module type or types that contains the
    #   resource. Module types are listed starting with the inner-most
    #   nested module, and separated by `/`.
    #
    #   In the following example, the resource was created from a module of
    #   type `AWS::First::Example::MODULE`, that's nested inside a parent
    #   module of type `AWS::Second::Example::MODULE`.
    #
    #   `AWS::First::Example::MODULE/AWS::Second::Example::MODULE`
    #   @return [String]
    #
    # @!attribute [rw] logical_id_hierarchy
    #   A concatenated list of the logical IDs of the module or modules that
    #   contains the resource. Modules are listed starting with the
    #   inner-most nested module, and separated by `/`.
    #
    #   In the following example, the resource was created from a module,
    #   `moduleA`, that's nested inside a parent module, `moduleB`.
    #
    #   `moduleA/moduleB`
    #
    #   For more information, see [Reference module resources in
    #   CloudFormation templates][1] in the *CloudFormation User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/module-ref-resources.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ModuleInfo AWS API Documentation
    #
    class ModuleInfo < Struct.new(
      :type_hierarchy,
      :logical_id_hierarchy)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified name is already in use.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/NameAlreadyExistsException AWS API Documentation
    #
    class NameAlreadyExistsException < Aws::EmptyStructure; end

    # The specified operation ID already exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/OperationIdAlreadyExistsException AWS API Documentation
    #
    class OperationIdAlreadyExistsException < Aws::EmptyStructure; end

    # Another operation is currently in progress for this StackSet. Only one
    # operation can be performed for a stack set at a given time.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/OperationInProgressException AWS API Documentation
    #
    class OperationInProgressException < Aws::EmptyStructure; end

    # The specified ID refers to an operation that doesn't exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/OperationNotFoundException AWS API Documentation
    #
    class OperationNotFoundException < Aws::EmptyStructure; end

    # The status that operation results are filtered by.
    #
    # @!attribute [rw] name
    #   The type of filter to apply.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The value to filter by.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/OperationResultFilter AWS API Documentation
    #
    class OperationResultFilter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Error reserved for use by the [CloudFormation CLI][1]. CloudFormation
    # doesn't return this error to users.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/OperationStatusCheckFailedException AWS API Documentation
    #
    class OperationStatusCheckFailedException < Aws::EmptyStructure; end

    # The Output data type.
    #
    # @!attribute [rw] output_key
    #   The key associated with the output.
    #   @return [String]
    #
    # @!attribute [rw] output_value
    #   The value associated with the output.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   User defined description associated with the output.
    #   @return [String]
    #
    # @!attribute [rw] export_name
    #   The name of the export associated with the output.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/Output AWS API Documentation
    #
    class Output < Struct.new(
      :output_key,
      :output_value,
      :description,
      :export_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Parameter data type.
    #
    # @!attribute [rw] parameter_key
    #   The key associated with the parameter. If you don't specify a key
    #   and value for a particular parameter, CloudFormation uses the
    #   default value that's specified in your template.
    #   @return [String]
    #
    # @!attribute [rw] parameter_value
    #   The input value associated with the parameter.
    #   @return [String]
    #
    # @!attribute [rw] use_previous_value
    #   During a stack update, use the existing parameter value that the
    #   stack is using for a given parameter key. If you specify `true`, do
    #   not specify a parameter value.
    #   @return [Boolean]
    #
    # @!attribute [rw] resolved_value
    #   Read-only. The value that corresponds to a Systems Manager parameter
    #   key. This field is returned only for Systems Manager parameter types
    #   in the template. For more information, see [Specify existing
    #   resources at runtime with CloudFormation-supplied parameter
    #   types][1] in the *CloudFormation User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cloudformation-supplied-parameter-types.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/Parameter AWS API Documentation
    #
    class Parameter < Struct.new(
      :parameter_key,
      :parameter_value,
      :use_previous_value,
      :resolved_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A set of criteria that CloudFormation uses to validate parameter
    # values. Although other constraints might be defined in the stack
    # template, CloudFormation returns only the `AllowedValues` property.
    #
    # @!attribute [rw] allowed_values
    #   A list of values that are permitted for a parameter.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ParameterConstraints AWS API Documentation
    #
    class ParameterConstraints < Struct.new(
      :allowed_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The ParameterDeclaration data type.
    #
    # @!attribute [rw] parameter_key
    #   The name that's associated with the parameter.
    #   @return [String]
    #
    # @!attribute [rw] default_value
    #   The default value of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] parameter_type
    #   The type of parameter.
    #   @return [String]
    #
    # @!attribute [rw] no_echo
    #   Flag that indicates whether the parameter value is shown as plain
    #   text in logs and in the Amazon Web Services Management Console.
    #   @return [Boolean]
    #
    # @!attribute [rw] description
    #   The description that's associate with the parameter.
    #   @return [String]
    #
    # @!attribute [rw] parameter_constraints
    #   The criteria that CloudFormation uses to validate parameter values.
    #   @return [Types::ParameterConstraints]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ParameterDeclaration AWS API Documentation
    #
    class ParameterDeclaration < Struct.new(
      :parameter_key,
      :default_value,
      :parameter_type,
      :no_echo,
      :description,
      :parameter_constraints)
      SENSITIVE = []
      include Aws::Structure
    end

    # Context information that enables CloudFormation to uniquely identify a
    # resource. CloudFormation uses context key-value pairs in cases where a
    # resource's logical and physical IDs aren't enough to uniquely
    # identify that resource. Each context key-value pair specifies a
    # resource that contains the targeted resource.
    #
    # @!attribute [rw] key
    #   The resource context key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The resource context value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/PhysicalResourceIdContextKeyValuePair AWS API Documentation
    #
    class PhysicalResourceIdContextKeyValuePair < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a resource property whose actual value differs from
    # its expected value, as defined in the stack template and any values
    # specified as template parameters. These will be present only for
    # resources whose `StackResourceDriftStatus` is `MODIFIED`. For more
    # information, see [Detect unmanaged configuration changes to stacks and
    # resources with drift detection][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html
    #
    # @!attribute [rw] property_path
    #   The fully-qualified path to the resource property.
    #   @return [String]
    #
    # @!attribute [rw] expected_value
    #   The expected property value of the resource property, as defined in
    #   the stack template and any values specified as template parameters.
    #   @return [String]
    #
    # @!attribute [rw] actual_value
    #   The actual property value of the resource property.
    #   @return [String]
    #
    # @!attribute [rw] difference_type
    #   The type of property difference.
    #
    #   * `ADD`: A value has been added to a resource property that's an
    #     array or list data type.
    #
    #   * `REMOVE`: The property has been removed from the current resource
    #     configuration.
    #
    #   * `NOT_EQUAL`: The current property value differs from its expected
    #     value (as defined in the stack template and any values specified
    #     as template parameters).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/PropertyDifference AWS API Documentation
    #
    class PropertyDifference < Struct.new(
      :property_path,
      :expected_value,
      :actual_value,
      :difference_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] type
    #   The type of the extension.
    #
    #   Conditional: You must specify `Arn`, or `TypeName` and `Type`.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the extension.
    #
    #   Conditional: You must specify `Arn`, or `TypeName` and `Type`.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The name of the extension.
    #
    #   Conditional: You must specify `Arn`, or `TypeName` and `Type`.
    #   @return [String]
    #
    # @!attribute [rw] public_version_number
    #   The version number to assign to this version of the extension.
    #
    #   Use the following format, and adhere to semantic versioning when
    #   assigning a version number to your extension:
    #
    #   `MAJOR.MINOR.PATCH`
    #
    #   For more information, see [Semantic Versioning 2.0.0][1].
    #
    #   If you don't specify a version number, CloudFormation increments
    #   the version number by one minor version release.
    #
    #   You cannot specify a version number the first time you publish a
    #   type. CloudFormation automatically sets the first version number to
    #   be `1.0.0`.
    #
    #
    #
    #   [1]: https://semver.org/
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/PublishTypeInput AWS API Documentation
    #
    class PublishTypeInput < Struct.new(
      :type,
      :arn,
      :type_name,
      :public_version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] public_type_arn
    #   The Amazon Resource Name (ARN) assigned to the public extension upon
    #   publication.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/PublishTypeOutput AWS API Documentation
    #
    class PublishTypeOutput < Struct.new(
      :public_type_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bearer_token
    #   Reserved for use by the [CloudFormation CLI][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html
    #   @return [String]
    #
    # @!attribute [rw] operation_status
    #   Reserved for use by the [CloudFormation CLI][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html
    #   @return [String]
    #
    # @!attribute [rw] current_operation_status
    #   Reserved for use by the [CloudFormation CLI][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Reserved for use by the [CloudFormation CLI][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   Reserved for use by the [CloudFormation CLI][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html
    #   @return [String]
    #
    # @!attribute [rw] resource_model
    #   Reserved for use by the [CloudFormation CLI][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   Reserved for use by the [CloudFormation CLI][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RecordHandlerProgressInput AWS API Documentation
    #
    class RecordHandlerProgressInput < Struct.new(
      :bearer_token,
      :operation_status,
      :current_operation_status,
      :status_message,
      :error_code,
      :resource_model,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RecordHandlerProgressOutput AWS API Documentation
    #
    class RecordHandlerProgressOutput < Aws::EmptyStructure; end

    # @!attribute [rw] accept_terms_and_conditions
    #   Whether you accept the [Terms and Conditions][1] for publishing
    #   extensions in the CloudFormation registry. You must accept the terms
    #   and conditions in order to register to publish public extensions to
    #   the CloudFormation registry.
    #
    #   The default is `false`.
    #
    #
    #
    #   [1]: https://cloudformation-registry-documents.s3.amazonaws.com/Terms_and_Conditions_for_AWS_CloudFormation_Registry_Publishers.pdf
    #   @return [Boolean]
    #
    # @!attribute [rw] connection_arn
    #   If you are using a Bitbucket or GitHub account for identity
    #   verification, the Amazon Resource Name (ARN) for your connection to
    #   that account.
    #
    #   For more information, see [Prerequisite: Registering your account to
    #   publish CloudFormation extensions][1] in the *CloudFormation Command
    #   Line Interface (CLI) User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html#publish-extension-prereqs
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RegisterPublisherInput AWS API Documentation
    #
    class RegisterPublisherInput < Struct.new(
      :accept_terms_and_conditions,
      :connection_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] publisher_id
    #   The ID assigned this account by CloudFormation for publishing
    #   extensions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RegisterPublisherOutput AWS API Documentation
    #
    class RegisterPublisherOutput < Struct.new(
      :publisher_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] type
    #   The kind of extension.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The name of the extension being registered.
    #
    #   We suggest that extension names adhere to the following patterns:
    #
    #   * For resource types, `company_or_organization::service::type`.
    #
    #   * For modules, `company_or_organization::service::type::MODULE`.
    #
    #   * For Hooks, `MyCompany::Testing::MyTestHook`.
    #
    #   <note markdown="1"> The following organization namespaces are reserved and can't be
    #   used in your extension names:
    #
    #    * `Alexa`
    #
    #   * `AMZN`
    #
    #   * `Amazon`
    #
    #   * `AWS`
    #
    #   * `Custom`
    #
    #   * `Dev`
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] schema_handler_package
    #   A URL to the S3 bucket that contains the extension project package
    #   that contains the necessary files for the extension you want to
    #   register.
    #
    #   For information about generating a schema handler package for the
    #   extension you want to register, see [submit][1] in the
    #   *CloudFormation Command Line Interface (CLI) User Guide*.
    #
    #   <note markdown="1"> The user registering the extension must be able to access the
    #   package in the S3 bucket. That's, the user needs to have
    #   [GetObject][2] permissions for the schema handler package. For more
    #   information, see [Actions, Resources, and Condition Keys for Amazon
    #   S3][3] in the *Identity and Access Management User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-cli-submit.html
    #   [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html
    #   [3]: https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazons3.html
    #   @return [String]
    #
    # @!attribute [rw] logging_config
    #   Specifies logging configuration information for an extension.
    #   @return [Types::LoggingConfig]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role for CloudFormation to
    #   assume when invoking the extension.
    #
    #   For CloudFormation to assume the specified execution role, the role
    #   must contain a trust relationship with the CloudFormation service
    #   principal (`resources.cloudformation.amazonaws.com`). For more
    #   information about adding trust relationships, see [Modifying a role
    #   trust policy][1] in the *Identity and Access Management User Guide*.
    #
    #   If your extension calls Amazon Web Services APIs in any of its
    #   handlers, you must create an <i> <a
    #   href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html">IAM
    #   execution role</a> </i> that includes the necessary permissions to
    #   call those Amazon Web Services APIs, and provision that execution
    #   role in your account. When CloudFormation needs to invoke the
    #   resource type handler, CloudFormation assumes this execution role to
    #   create a temporary session token, which it then passes to the
    #   resource type handler, thereby supplying your resource type with the
    #   appropriate credentials.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/roles-managingrole-editing-console.html#roles-managingrole_edit-trust-policy
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique identifier that acts as an idempotency key for this
    #   registration request. Specifying a client request token prevents
    #   CloudFormation from generating more than one version of an extension
    #   from the same registration request, even if the request is submitted
    #   multiple times.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RegisterTypeInput AWS API Documentation
    #
    class RegisterTypeInput < Struct.new(
      :type,
      :type_name,
      :schema_handler_package,
      :logging_config,
      :execution_role_arn,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registration_token
    #   The identifier for this registration request.
    #
    #   Use this registration token when calling DescribeTypeRegistration,
    #   which returns information about the status and IDs of the extension
    #   registration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RegisterTypeOutput AWS API Documentation
    #
    class RegisterTypeOutput < Struct.new(
      :registration_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # For extensions that are modules, a public third-party extension that
    # must be activated in your account in order for the module itself to be
    # activated.
    #
    # For more information, see [Requirements for activating third-party
    # public modules][1] in the *CloudFormation User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/module-versioning.html#requirements-for-modules
    #
    # @!attribute [rw] type_name_alias
    #   An alias assigned to the public extension, in this account and
    #   Region. If you specify an alias for the extension, CloudFormation
    #   treats the alias as the extension type name within this account and
    #   Region. You must use the alias to refer to the extension in your
    #   templates, API calls, and CloudFormation console.
    #   @return [String]
    #
    # @!attribute [rw] original_type_name
    #   The type name of the public extension.
    #
    #   If you specified a `TypeNameAlias` when enabling the extension in
    #   this account and Region, CloudFormation treats that alias as the
    #   extension's type name within the account and Region, not the type
    #   name of the public extension. For more information, see [Use aliases
    #   to refer to extensions][1] in the *CloudFormation User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-public.html#registry-public-enable-alias
    #   @return [String]
    #
    # @!attribute [rw] publisher_id
    #   The publisher ID of the extension publisher.
    #   @return [String]
    #
    # @!attribute [rw] supported_major_versions
    #   A list of the major versions of the extension type that the macro
    #   supports.
    #   @return [Array<Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RequiredActivatedType AWS API Documentation
    #
    class RequiredActivatedType < Struct.new(
      :type_name_alias,
      :original_type_name,
      :publisher_id,
      :supported_major_versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `ResourceChange` structure describes the resource and the action
    # that CloudFormation will perform on it if you execute this change set.
    #
    # @!attribute [rw] policy_action
    #   The action that will be taken on the physical resource when the
    #   change set is executed.
    #
    #   * `Delete` The resource will be deleted.
    #
    #   * `Retain` The resource will be retained.
    #
    #   * `Snapshot` The resource will have a snapshot taken.
    #
    #   * `ReplaceAndDelete` The resource will be replaced and then deleted.
    #
    #   * `ReplaceAndRetain` The resource will be replaced and then
    #     retained.
    #
    #   * `ReplaceAndSnapshot` The resource will be replaced and then have a
    #     snapshot taken.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The action that CloudFormation takes on the resource, such as `Add`
    #   (adds a new resource), `Modify` (changes a resource), `Remove`
    #   (deletes a resource), `Import` (imports a resource), or `Dynamic`
    #   (exact action for the resource can't be determined).
    #   @return [String]
    #
    # @!attribute [rw] logical_resource_id
    #   The resource's logical ID, which is defined in the stack's
    #   template.
    #   @return [String]
    #
    # @!attribute [rw] physical_resource_id
    #   The resource's physical ID (resource name). Resources that you are
    #   adding don't have physical IDs because they haven't been created.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of CloudFormation resource, such as `AWS::S3::Bucket`.
    #   @return [String]
    #
    # @!attribute [rw] replacement
    #   For the `Modify` action, indicates whether CloudFormation will
    #   replace the resource by creating a new one and deleting the old one.
    #   This value depends on the value of the `RequiresRecreation` property
    #   in the `ResourceTargetDefinition` structure. For example, if the
    #   `RequiresRecreation` field is `Always` and the `Evaluation` field is
    #   `Static`, `Replacement` is `True`. If the `RequiresRecreation` field
    #   is `Always` and the `Evaluation` field is `Dynamic`, `Replacement`
    #   is `Conditional`.
    #
    #   If you have multiple changes with different `RequiresRecreation`
    #   values, the `Replacement` value depends on the change with the most
    #   impact. A `RequiresRecreation` value of `Always` has the most
    #   impact, followed by `Conditional`, and then `Never`.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   For the `Modify` action, indicates which resource attribute is
    #   triggering this update, such as a change in the resource
    #   attribute's `Metadata`, `Properties`, or `Tags`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] details
    #   For the `Modify` action, a list of `ResourceChangeDetail` structures
    #   that describes the changes that CloudFormation will make to the
    #   resource.
    #   @return [Array<Types::ResourceChangeDetail>]
    #
    # @!attribute [rw] change_set_id
    #   The change set ID of the nested change set.
    #   @return [String]
    #
    # @!attribute [rw] module_info
    #   Contains information about the module from which the resource was
    #   created, if the resource was created from a module included in the
    #   stack template.
    #   @return [Types::ModuleInfo]
    #
    # @!attribute [rw] before_context
    #   An encoded JSON string that contains the context of the resource
    #   before the change is executed.
    #   @return [String]
    #
    # @!attribute [rw] after_context
    #   An encoded JSON string that contains the context of the resource
    #   after the change is executed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ResourceChange AWS API Documentation
    #
    class ResourceChange < Struct.new(
      :policy_action,
      :action,
      :logical_resource_id,
      :physical_resource_id,
      :resource_type,
      :replacement,
      :scope,
      :details,
      :change_set_id,
      :module_info,
      :before_context,
      :after_context)
      SENSITIVE = []
      include Aws::Structure
    end

    # For a resource with `Modify` as the action, the `ResourceChange`
    # structure describes the changes CloudFormation will make to that
    # resource.
    #
    # @!attribute [rw] target
    #   A `ResourceTargetDefinition` structure that describes the field that
    #   CloudFormation will change and whether the resource will be
    #   recreated.
    #   @return [Types::ResourceTargetDefinition]
    #
    # @!attribute [rw] evaluation
    #   Indicates whether CloudFormation can determine the target value, and
    #   whether the target value will change before you execute a change
    #   set.
    #
    #   For `Static` evaluations, CloudFormation can determine that the
    #   target value will change, and its value. For example, if you
    #   directly modify the `InstanceType` property of an EC2 instance,
    #   CloudFormation knows that this property value will change, and its
    #   value, so this is a `Static` evaluation.
    #
    #   For `Dynamic` evaluations, can't determine the target value because
    #   it depends on the result of an intrinsic function, such as a `Ref`
    #   or `Fn::GetAtt` intrinsic function, when the stack is updated. For
    #   example, if your template includes a reference to a resource that's
    #   conditionally recreated, the value of the reference (the physical ID
    #   of the resource) might change, depending on if the resource is
    #   recreated. If the resource is recreated, it will have a new physical
    #   ID, so all references to that resource will also be updated.
    #   @return [String]
    #
    # @!attribute [rw] change_source
    #   The group to which the `CausingEntity` value belongs. There are five
    #   entity groups:
    #
    #   * `ResourceReference` entities are `Ref` intrinsic functions that
    #     refer to resources in the template, such as `{ "Ref" :
    #     "MyEC2InstanceResource" }`.
    #
    #   * `ParameterReference` entities are `Ref` intrinsic functions that
    #     get template parameter values, such as `{ "Ref" :
    #     "MyPasswordParameter" }`.
    #
    #   * `ResourceAttribute` entities are `Fn::GetAtt` intrinsic functions
    #     that get resource attribute values, such as `{ "Fn::GetAtt" : [
    #     "MyEC2InstanceResource", "PublicDnsName" ] }`.
    #
    #   * `DirectModification` entities are changes that are made directly
    #     to the template.
    #
    #   * `Automatic` entities are `AWS::CloudFormation::Stack` resource
    #     types, which are also known as nested stacks. If you made no
    #     changes to the `AWS::CloudFormation::Stack` resource,
    #     CloudFormation sets the `ChangeSource` to `Automatic` because the
    #     nested stack's template might have changed. Changes to a nested
    #     stack's template aren't visible to CloudFormation until you run
    #     an update on the parent stack.
    #   @return [String]
    #
    # @!attribute [rw] causing_entity
    #   The identity of the entity that triggered this change. This entity
    #   is a member of the group that's specified by the `ChangeSource`
    #   field. For example, if you modified the value of the `KeyPairName`
    #   parameter, the `CausingEntity` is the name of the parameter
    #   (`KeyPairName`).
    #
    #   If the `ChangeSource` value is `DirectModification`, no value is
    #   given for `CausingEntity`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ResourceChangeDetail AWS API Documentation
    #
    class ResourceChangeDetail < Struct.new(
      :target,
      :evaluation,
      :change_source,
      :causing_entity)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource included in a generated template. This data type is used
    # with the `CreateGeneratedTemplate` and `UpdateGeneratedTemplate` API
    # actions.
    #
    # @!attribute [rw] resource_type
    #   The type of the resource, such as `AWS::DynamoDB::Table`. For the
    #   list of supported resources, see [Resource type support for imports
    #   and drift detection][1] in the *CloudFormation User Guide*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resource-import-supported-resources.html
    #   @return [String]
    #
    # @!attribute [rw] logical_resource_id
    #   The logical resource id for this resource in the generated template.
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   A list of up to 256 key-value pairs that identifies the scanned
    #   resource. The key is the name of one of the primary identifiers for
    #   the resource. (Primary identifiers are specified in the
    #   `primaryIdentifier` list in the resource schema.) The value is the
    #   value of that primary identifier. For example, for a
    #   `AWS::DynamoDB::Table` resource, the primary identifiers is
    #   `TableName` so the key-value pair could be `"TableName":
    #   "MyDDBTable"`. For more information, see [primaryIdentifier][1] in
    #   the *CloudFormation Command Line Interface (CLI) User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html#schema-properties-primaryidentifier
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ResourceDefinition AWS API Documentation
    #
    class ResourceDefinition < Struct.new(
      :resource_type,
      :logical_resource_id,
      :resource_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a resource in a generated template
    #
    # @!attribute [rw] resource_type
    #   The type of the resource, such as `AWS::DynamoDB::Table`. For the
    #   list of supported resources, see [Resource type support for imports
    #   and drift detection][1] In the *CloudFormation User Guide*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resource-import-supported-resources.html
    #   @return [String]
    #
    # @!attribute [rw] logical_resource_id
    #   The logical id for this resource in the final generated template.
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   A list of up to 256 key-value pairs that identifies the resource in
    #   the generated template. The key is the name of one of the primary
    #   identifiers for the resource. (Primary identifiers are specified in
    #   the `primaryIdentifier` list in the resource schema.) The value is
    #   the value of that primary identifier. For example, for a
    #   `AWS::DynamoDB::Table` resource, the primary identifiers is
    #   `TableName` so the key-value pair could be `"TableName":
    #   "MyDDBTable"`. For more information, see [primaryIdentifier][1] in
    #   the *CloudFormation Command Line Interface (CLI) User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html#schema-properties-primaryidentifier
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] resource_status
    #   Status of the processing of a resource in a generated template.
    #
    #   InProgress
    #
    #   : The resource processing is still in progress.
    #
    #   Complete
    #
    #   : The resource processing is complete.
    #
    #   Pending
    #
    #   : The resource processing is pending.
    #
    #   Failed
    #
    #   : The resource processing has failed.
    #   @return [String]
    #
    # @!attribute [rw] resource_status_reason
    #   The reason for the resource detail, providing more information if a
    #   failure happened.
    #   @return [String]
    #
    # @!attribute [rw] warnings
    #   The warnings generated for this resource.
    #   @return [Array<Types::WarningDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ResourceDetail AWS API Documentation
    #
    class ResourceDetail < Struct.new(
      :resource_type,
      :logical_resource_id,
      :resource_identifier,
      :resource_status,
      :resource_status_reason,
      :warnings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the target resources of a specific type in your import
    # template (for example, all `AWS::S3::Bucket` resources) and the
    # properties you can provide during the import to identify resources of
    # that type.
    #
    # @!attribute [rw] resource_type
    #   The template resource type of the target resources, such as
    #   `AWS::S3::Bucket`.
    #   @return [String]
    #
    # @!attribute [rw] logical_resource_ids
    #   The logical IDs of the target resources of the specified
    #   `ResourceType`, as defined in the import template.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_identifiers
    #   The resource properties you can provide during the import to
    #   identify your target resources. For example, `BucketName` is a
    #   possible identifier property for `AWS::S3::Bucket` resources.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ResourceIdentifierSummary AWS API Documentation
    #
    class ResourceIdentifierSummary < Struct.new(
      :resource_type,
      :logical_resource_ids,
      :resource_identifiers)
      SENSITIVE = []
      include Aws::Structure
    end

    # The location of the resource in a stack template.
    #
    # @!attribute [rw] stack_name
    #   The name associated with the stack.
    #   @return [String]
    #
    # @!attribute [rw] logical_resource_id
    #   The logical name of the resource specified in the template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ResourceLocation AWS API Documentation
    #
    class ResourceLocation < Struct.new(
      :stack_name,
      :logical_resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the current source of the resource and the destination of
    # where it will be moved to.
    #
    # @!attribute [rw] source
    #   The source stack `StackName` and `LogicalResourceId` for the
    #   resource being refactored.
    #   @return [Types::ResourceLocation]
    #
    # @!attribute [rw] destination
    #   The destination stack `StackName` and `LogicalResourceId` for the
    #   resource being refactored.
    #   @return [Types::ResourceLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ResourceMapping AWS API Documentation
    #
    class ResourceMapping < Struct.new(
      :source,
      :destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource scan is currently in progress. Only one can be run at a
    # time for an account in a Region.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ResourceScanInProgressException AWS API Documentation
    #
    class ResourceScanInProgressException < Aws::EmptyStructure; end

    # The limit on resource scans has been exceeded. Reasons include:
    #
    # * Exceeded the daily quota for resource scans.
    #
    # * A resource scan recently failed. You must wait 10 minutes before
    #   starting a new resource scan.
    #
    # * The last resource scan failed after exceeding 100,000 resources.
    #   When this happens, you must wait 24 hours before starting a new
    #   resource scan.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ResourceScanLimitExceededException AWS API Documentation
    #
    class ResourceScanLimitExceededException < Aws::EmptyStructure; end

    # The resource scan was not found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ResourceScanNotFoundException AWS API Documentation
    #
    class ResourceScanNotFoundException < Aws::EmptyStructure; end

    # A summary of the resource scan. This is returned by the
    # `ListResourceScan` API action.
    #
    # @!attribute [rw] resource_scan_id
    #   The Amazon Resource Name (ARN) of the resource scan.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of the resource scan.
    #
    #   IN\_PROGRESS
    #
    #   : The resource scan is still in progress.
    #
    #   COMPLETE
    #
    #   : The resource scan is complete.
    #
    #   EXPIRED
    #
    #   : The resource scan has expired.
    #
    #   FAILED
    #
    #   : The resource scan has failed.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the resource scan status, providing more information
    #   if a failure happened.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time that the resource scan was started.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time that the resource scan was finished.
    #   @return [Time]
    #
    # @!attribute [rw] percentage_completed
    #   The percentage of the resource scan that has been completed.
    #   @return [Float]
    #
    # @!attribute [rw] scan_type
    #   The scan type that has been completed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ResourceScanSummary AWS API Documentation
    #
    class ResourceScanSummary < Struct.new(
      :resource_scan_id,
      :status,
      :status_reason,
      :start_time,
      :end_time,
      :percentage_completed,
      :scan_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The field that CloudFormation will change, such as the name of a
    # resource's property, and whether the resource will be recreated.
    #
    # @!attribute [rw] attribute
    #   Indicates which resource attribute is triggering this update, such
    #   as a change in the resource attribute's `Metadata`, `Properties`,
    #   or `Tags`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   If the `Attribute` value is `Properties`, the name of the property.
    #   For all other attributes, the value is null.
    #   @return [String]
    #
    # @!attribute [rw] requires_recreation
    #   If the `Attribute` value is `Properties`, indicates whether a change
    #   to this property causes the resource to be recreated. The value can
    #   be `Never`, `Always`, or `Conditionally`. To determine the
    #   conditions for a `Conditionally` recreation, see the update behavior
    #   for that property in the [Amazon Web Services resource and property
    #   types reference][1] in the *CloudFormation User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The property path of the property.
    #   @return [String]
    #
    # @!attribute [rw] before_value
    #   The value of the property before the change is executed. Large
    #   values can be truncated.
    #   @return [String]
    #
    # @!attribute [rw] after_value
    #   The value of the property after the change is executed. Large values
    #   can be truncated.
    #   @return [String]
    #
    # @!attribute [rw] attribute_change_type
    #   The type of change to be made to the property if the change is
    #   executed.
    #
    #   * `Add` The item will be added.
    #
    #   * `Remove` The item will be removed.
    #
    #   * `Modify` The item will be modified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ResourceTargetDefinition AWS API Documentation
    #
    class ResourceTargetDefinition < Struct.new(
      :attribute,
      :name,
      :requires_recreation,
      :path,
      :before_value,
      :after_value,
      :attribute_change_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the target resource of an import operation.
    #
    # @!attribute [rw] resource_type
    #   The type of resource to import into your stack, such as
    #   `AWS::S3::Bucket`. For a list of supported resource types, see
    #   [Resource type support for imports and drift detection][1] in the
    #   *CloudFormation User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resource-import-supported-resources.html
    #   @return [String]
    #
    # @!attribute [rw] logical_resource_id
    #   The logical ID of the target resource as specified in the template.
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   A key-value pair that identifies the target resource. The key is an
    #   identifier property (for example, `BucketName` for `AWS::S3::Bucket`
    #   resources) and the value is the actual property value (for example,
    #   `MyS3Bucket`).
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ResourceToImport AWS API Documentation
    #
    class ResourceToImport < Struct.new(
      :resource_type,
      :logical_resource_id,
      :resource_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Structure that contains the rollback triggers for CloudFormation to
    # monitor during stack creation and updating operations, and for the
    # specified monitoring period afterwards.
    #
    # Rollback triggers enable you to have CloudFormation monitor the state
    # of your application during stack creation and updating, and to roll
    # back that operation if the application breaches the threshold of any
    # of the alarms you've specified. For more information, see [Roll back
    # your CloudFormation stack on alarm breach with rollback triggers][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-rollback-triggers.html
    #
    # @!attribute [rw] rollback_triggers
    #   The triggers to monitor during stack creation or update actions.
    #
    #   By default, CloudFormation saves the rollback triggers specified for
    #   a stack and applies them to any subsequent update operations for the
    #   stack, unless you specify otherwise. If you do specify rollback
    #   triggers for this parameter, those triggers replace any list of
    #   triggers previously specified for the stack. This means:
    #
    #   * To use the rollback triggers previously specified for this stack,
    #     if any, don't specify this parameter.
    #
    #   * To specify new or updated rollback triggers, you must specify
    #     *all* the triggers that you want used for this stack, even
    #     triggers you've specified before (for example, when creating the
    #     stack or during a previous stack update). Any triggers that you
    #     don't include in the updated list of triggers are no longer
    #     applied to the stack.
    #
    #   * To remove all currently specified triggers, specify an empty list
    #     for this parameter.
    #
    #   If a specified trigger is missing, the entire stack operation fails
    #   and is rolled back.
    #   @return [Array<Types::RollbackTrigger>]
    #
    # @!attribute [rw] monitoring_time_in_minutes
    #   The amount of time, in minutes, during which CloudFormation should
    #   monitor all the rollback triggers after the stack creation or update
    #   operation deploys all necessary resources.
    #
    #   The default is 0 minutes.
    #
    #   If you specify a monitoring period but don't specify any rollback
    #   triggers, CloudFormation still waits the specified period of time
    #   before cleaning up old resources after update operations. You can
    #   use this monitoring period to perform any manual stack validation
    #   desired, and manually cancel the stack creation or update (using
    #   [CancelUpdateStack][1], for example) as necessary.
    #
    #   If you specify 0 for this parameter, CloudFormation still monitors
    #   the specified rollback triggers during stack creation and update
    #   operations. Then, for update operations, it begins disposing of old
    #   resources immediately once the operation completes.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_CancelUpdateStack.html
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RollbackConfiguration AWS API Documentation
    #
    class RollbackConfiguration < Struct.new(
      :rollback_triggers,
      :monitoring_time_in_minutes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_name
    #   The name that's associated with the stack.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that CloudFormation
    #   assumes to rollback the stack.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique identifier for this `RollbackStack` request.
    #   @return [String]
    #
    # @!attribute [rw] retain_except_on_create
    #   When set to `true`, newly created resources are deleted when the
    #   operation rolls back. This includes newly created resources marked
    #   with a deletion policy of `Retain`.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RollbackStackInput AWS API Documentation
    #
    class RollbackStackInput < Struct.new(
      :stack_name,
      :role_arn,
      :client_request_token,
      :retain_except_on_create)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_id
    #   Unique identifier of the stack.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RollbackStackOutput AWS API Documentation
    #
    class RollbackStackOutput < Struct.new(
      :stack_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A rollback trigger CloudFormation monitors during creation and
    # updating of stacks. If any of the alarms you specify goes to ALARM
    # state during the stack operation or within the specified monitoring
    # period afterwards, CloudFormation rolls back the entire stack
    # operation.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the rollback trigger.
    #
    #   If a specified trigger is missing, the entire stack operation fails
    #   and is rolled back.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The resource type of the rollback trigger. Specify either
    #   [AWS::CloudWatch::Alarm][1] or [AWS::CloudWatch::CompositeAlarm][2]
    #   resource types.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-cloudwatch-alarm.html
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-cloudwatch-compositealarm.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RollbackTrigger AWS API Documentation
    #
    class RollbackTrigger < Struct.new(
      :arn,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter that is used to specify which resource types to scan.
    #
    # @!attribute [rw] types
    #   An array of strings where each string represents an Amazon Web
    #   Services resource type you want to scan. Each string defines the
    #   resource type using the format `AWS::ServiceName::ResourceType`, for
    #   example, `AWS::DynamoDB::Table`. For the full list of supported
    #   resource types, see the [Resource type support][1] table in the
    #   *CloudFormation User Guide*.
    #
    #   To scan all resource types within a service, you can use a wildcard,
    #   represented by an asterisk (`*`). You can place an asterisk at only
    #   the end of the string, for example, `AWS::S3::*`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resource-import-supported-resources.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ScanFilter AWS API Documentation
    #
    class ScanFilter < Struct.new(
      :types)
      SENSITIVE = []
      include Aws::Structure
    end

    # A scanned resource returned by `ListResourceScanResources` or
    # `ListResourceScanRelatedResources`.
    #
    # @!attribute [rw] resource_type
    #   The type of the resource, such as `AWS::DynamoDB::Table`. For the
    #   list of supported resources, see [Resource type support for imports
    #   and drift detection][1] In the *CloudFormation User Guide*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resource-import-supported-resources.html
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   A list of up to 256 key-value pairs that identifies for the scanned
    #   resource. The key is the name of one of the primary identifiers for
    #   the resource. (Primary identifiers are specified in the
    #   `primaryIdentifier` list in the resource schema.) The value is the
    #   value of that primary identifier. For example, for a
    #   `AWS::DynamoDB::Table` resource, the primary identifiers is
    #   `TableName` so the key-value pair could be `"TableName":
    #   "MyDDBTable"`. For more information, see [primaryIdentifier][1] in
    #   the *CloudFormation Command Line Interface (CLI) User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html#schema-properties-primaryidentifier
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] managed_by_stack
    #   If `true`, the resource is managed by a CloudFormation stack.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ScannedResource AWS API Documentation
    #
    class ScannedResource < Struct.new(
      :resource_type,
      :resource_identifier,
      :managed_by_stack)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies a scanned resource. This is used with the
    # `ListResourceScanRelatedResources` API action.
    #
    # @!attribute [rw] resource_type
    #   The type of the resource, such as `AWS::DynamoDB::Table`. For the
    #   list of supported resources, see [Resource type support for imports
    #   and drift detection][1] In the *CloudFormation User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resource-import-supported-resources.html
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   A list of up to 256 key-value pairs that identifies the scanned
    #   resource. The key is the name of one of the primary identifiers for
    #   the resource. (Primary identifiers are specified in the
    #   `primaryIdentifier` list in the resource schema.) The value is the
    #   value of that primary identifier. For example, for a
    #   `AWS::DynamoDB::Table` resource, the primary identifiers is
    #   `TableName` so the key-value pair could be `"TableName":
    #   "MyDDBTable"`. For more information, see [primaryIdentifier][1] in
    #   the *CloudFormation Command Line Interface (CLI) User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html#schema-properties-primaryidentifier
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ScannedResourceIdentifier AWS API Documentation
    #
    class ScannedResourceIdentifier < Struct.new(
      :resource_type,
      :resource_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the SetStackPolicy action.
    #
    # @!attribute [rw] stack_name
    #   The name or unique stack ID that you want to associate a policy
    #   with.
    #   @return [String]
    #
    # @!attribute [rw] stack_policy_body
    #   Structure that contains the stack policy body. For more information,
    #   see [Prevent updates to stack resources][1] in the *CloudFormation
    #   User Guide*. You can specify either the `StackPolicyBody` or the
    #   `StackPolicyURL` parameter, but not both.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html
    #   @return [String]
    #
    # @!attribute [rw] stack_policy_url
    #   Location of a file that contains the stack policy. The URL must
    #   point to a policy (maximum size: 16 KB) located in an Amazon S3
    #   bucket in the same Amazon Web Services Region as the stack. The
    #   location for an Amazon S3 bucket must start with `https://`. URLs
    #   from S3 static websites are not supported.
    #
    #   You can specify either the `StackPolicyBody` or the `StackPolicyURL`
    #   parameter, but not both.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/SetStackPolicyInput AWS API Documentation
    #
    class SetStackPolicyInput < Struct.new(
      :stack_name,
      :stack_policy_body,
      :stack_policy_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] type_arn
    #   The Amazon Resource Name (ARN) for the extension, in this account
    #   and Region.
    #
    #   For public extensions, this will be the ARN assigned when you call
    #   the [ActivateType][1] API operation in this account and Region. For
    #   private extensions, this will be the ARN assigned when you call the
    #   [RegisterType][2] API operation in this account and Region.
    #
    #   Do not include the extension versions suffix at the end of the ARN.
    #   You can set the configuration for an extension, but not for a
    #   specific extension version.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ActivateType.html
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The configuration data for the extension, in this account and
    #   Region.
    #
    #   The configuration data must be formatted as JSON, and validate
    #   against the schema returned in the `ConfigurationSchema` response
    #   element of [DescribeType][1]. For more information, see [Defining
    #   the account-level configuration of an extension][2] in the
    #   *CloudFormation Command Line Interface (CLI) User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DescribeType.html
    #   [2]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-model.html#resource-type-howto-configuration
    #   @return [String]
    #
    # @!attribute [rw] configuration_alias
    #   An alias by which to refer to this extension configuration data.
    #
    #   Conditional: Specifying a configuration alias is required when
    #   setting a configuration for a resource type extension.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The name of the extension.
    #
    #   Conditional: You must specify `ConfigurationArn`, or `Type` and
    #   `TypeName`.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of extension.
    #
    #   Conditional: You must specify `ConfigurationArn`, or `Type` and
    #   `TypeName`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/SetTypeConfigurationInput AWS API Documentation
    #
    class SetTypeConfigurationInput < Struct.new(
      :type_arn,
      :configuration,
      :configuration_alias,
      :type_name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_arn
    #   The Amazon Resource Name (ARN) for the configuration data, in this
    #   account and Region.
    #
    #   Conditional: You must specify `ConfigurationArn`, or `Type` and
    #   `TypeName`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/SetTypeConfigurationOutput AWS API Documentation
    #
    class SetTypeConfigurationOutput < Struct.new(
      :configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the extension for which you want
    #   version summary information.
    #
    #   Conditional: You must specify either `TypeName` and `Type`, or
    #   `Arn`.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The kind of extension.
    #
    #   Conditional: You must specify either `TypeName` and `Type`, or
    #   `Arn`.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The name of the extension.
    #
    #   Conditional: You must specify either `TypeName` and `Type`, or
    #   `Arn`.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The ID of a specific version of the extension. The version ID is the
    #   value at the end of the Amazon Resource Name (ARN) assigned to the
    #   extension version when it is registered.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/SetTypeDefaultVersionInput AWS API Documentation
    #
    class SetTypeDefaultVersionInput < Struct.new(
      :arn,
      :type,
      :type_name,
      :version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/SetTypeDefaultVersionOutput AWS API Documentation
    #
    class SetTypeDefaultVersionOutput < Aws::EmptyStructure; end

    # The input for the SignalResource action.
    #
    # @!attribute [rw] stack_name
    #   The stack name or unique stack ID that includes the resource that
    #   you want to signal.
    #   @return [String]
    #
    # @!attribute [rw] logical_resource_id
    #   The logical ID of the resource that you want to signal. The logical
    #   ID is the name of the resource that given in the template.
    #   @return [String]
    #
    # @!attribute [rw] unique_id
    #   A unique ID of the signal. When you signal Amazon EC2 instances or
    #   Auto Scaling groups, specify the instance ID that you are signaling
    #   as the unique ID. If you send multiple signals to a single resource
    #   (such as signaling a wait condition), each signal requires a
    #   different unique ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the signal, which is either success or failure. A
    #   failure signal causes CloudFormation to immediately fail the stack
    #   creation or update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/SignalResourceInput AWS API Documentation
    #
    class SignalResourceInput < Struct.new(
      :stack_name,
      :logical_resource_id,
      :unique_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Stack data type.
    #
    # @!attribute [rw] stack_id
    #   Unique identifier of the stack.
    #   @return [String]
    #
    # @!attribute [rw] stack_name
    #   The name associated with the stack.
    #   @return [String]
    #
    # @!attribute [rw] change_set_id
    #   The unique ID of the change set.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A user-defined description associated with the stack.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A list of `Parameter` structures.
    #   @return [Array<Types::Parameter>]
    #
    # @!attribute [rw] creation_time
    #   The time at which the stack was created.
    #   @return [Time]
    #
    # @!attribute [rw] deletion_time
    #   The time the stack was deleted.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The time the stack was last updated. This field will only be
    #   returned if the stack has been updated at least once.
    #   @return [Time]
    #
    # @!attribute [rw] rollback_configuration
    #   The rollback triggers for CloudFormation to monitor during stack
    #   creation and updating operations, and for the specified monitoring
    #   period afterwards.
    #   @return [Types::RollbackConfiguration]
    #
    # @!attribute [rw] stack_status
    #   Current status of the stack.
    #   @return [String]
    #
    # @!attribute [rw] stack_status_reason
    #   Success/failure message associated with the stack status.
    #   @return [String]
    #
    # @!attribute [rw] disable_rollback
    #   Boolean to enable or disable rollback on stack creation failures:
    #
    #   * `true`: disable rollback.
    #
    #   * `false`: enable rollback.
    #   @return [Boolean]
    #
    # @!attribute [rw] notification_arns
    #   Amazon SNS topic Amazon Resource Names (ARNs) to which stack related
    #   events are published.
    #   @return [Array<String>]
    #
    # @!attribute [rw] timeout_in_minutes
    #   The amount of time within which stack creation should complete.
    #   @return [Integer]
    #
    # @!attribute [rw] capabilities
    #   The capabilities allowed in the stack.
    #   @return [Array<String>]
    #
    # @!attribute [rw] outputs
    #   A list of output structures.
    #   @return [Array<Types::Output>]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that's associated
    #   with the stack. During a stack operation, CloudFormation uses this
    #   role's credentials to make calls on your behalf.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of `Tag`s that specify information about the stack.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] enable_termination_protection
    #   Whether termination protection is enabled for the stack.
    #
    #   For [nested stacks][1], termination protection is set on the root
    #   stack and can't be changed directly on the nested stack. For more
    #   information, see [Protect a CloudFormation stack from being
    #   deleted][2] in the *CloudFormation User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html
    #   @return [Boolean]
    #
    # @!attribute [rw] parent_id
    #   For nested stacks, the stack ID of the direct parent of this stack.
    #   For the first level of nested stacks, the root stack is also the
    #   parent stack.
    #
    #   For more information, see [Nested stacks][1] in the *CloudFormation
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html
    #   @return [String]
    #
    # @!attribute [rw] root_id
    #   For nested stacks, the stack ID of the top-level stack to which the
    #   nested stack ultimately belongs.
    #
    #   For more information, see [Nested stacks][1] in the *CloudFormation
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html
    #   @return [String]
    #
    # @!attribute [rw] drift_information
    #   Information about whether a stack's actual configuration differs,
    #   or has *drifted*, from its expected configuration, as defined in the
    #   stack template and any values specified as template parameters. For
    #   more information, see [Detect unmanaged configuration changes to
    #   stacks and resources with drift detection][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html
    #   @return [Types::StackDriftInformation]
    #
    # @!attribute [rw] retain_except_on_create
    #   When set to `true`, newly created resources are deleted when the
    #   operation rolls back. This includes newly created resources marked
    #   with a deletion policy of `Retain`.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] deletion_mode
    #   Specifies the deletion mode for the stack. Possible values are:
    #
    #   * `STANDARD` - Use the standard behavior. Specifying this value is
    #     the same as not specifying this parameter.
    #
    #   * `FORCE_DELETE_STACK` - Delete the stack if it's stuck in a
    #     `DELETE_FAILED` state due to resource deletion failure.
    #   @return [String]
    #
    # @!attribute [rw] detailed_status
    #   The detailed status of the resource or stack. If
    #   `CONFIGURATION_COMPLETE` is present, the resource or resource
    #   configuration phase has completed and the stabilization of the
    #   resources is in progress. The StackSets `CONFIGURATION_COMPLETE`
    #   when all of the resources in the stack have reached that event. For
    #   more information, see [Understand CloudFormation stack creation
    #   events][1] in the *CloudFormation User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stack-resource-configuration-complete.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/Stack AWS API Documentation
    #
    class Stack < Struct.new(
      :stack_id,
      :stack_name,
      :change_set_id,
      :description,
      :parameters,
      :creation_time,
      :deletion_time,
      :last_updated_time,
      :rollback_configuration,
      :stack_status,
      :stack_status_reason,
      :disable_rollback,
      :notification_arns,
      :timeout_in_minutes,
      :capabilities,
      :outputs,
      :role_arn,
      :tags,
      :enable_termination_protection,
      :parent_id,
      :root_id,
      :drift_information,
      :retain_except_on_create,
      :deletion_mode,
      :detailed_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the stack and the template used by the stack.
    #
    # @!attribute [rw] stack_name
    #   The name associated with the stack.
    #   @return [String]
    #
    # @!attribute [rw] template_body
    #   The file path for the stack template file.
    #   @return [String]
    #
    # @!attribute [rw] template_url
    #   The desired final state of the stack template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StackDefinition AWS API Documentation
    #
    class StackDefinition < Struct.new(
      :stack_name,
      :template_body,
      :template_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about whether the stack's actual configuration
    # differs, or has *drifted*, from its expected configuration, as defined
    # in the stack template and any values specified as template parameters.
    # A stack is considered to have drifted if one or more of its resources
    # have drifted.
    #
    # @!attribute [rw] stack_drift_status
    #   Status of the stack's actual configuration compared to its expected
    #   template configuration.
    #
    #   * `DRIFTED`: The stack differs from its expected template
    #     configuration. A stack is considered to have drifted if one or
    #     more of its resources have drifted.
    #
    #   * `NOT_CHECKED`: CloudFormation hasn't checked if the stack differs
    #     from its expected template configuration.
    #
    #   * `IN_SYNC`: The stack's actual configuration matches its expected
    #     template configuration.
    #
    #   * `UNKNOWN`: CloudFormation could not run drift detection for a
    #     resource in the stack.
    #   @return [String]
    #
    # @!attribute [rw] last_check_timestamp
    #   Most recent time when a drift detection operation was initiated on
    #   the stack, or any of its individual resources that support drift
    #   detection.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StackDriftInformation AWS API Documentation
    #
    class StackDriftInformation < Struct.new(
      :stack_drift_status,
      :last_check_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about whether the stack's actual configuration
    # differs, or has *drifted*, from its expected configuration, as defined
    # in the stack template and any values specified as template parameters.
    # A stack is considered to have drifted if one or more of its resources
    # have drifted.
    #
    # @!attribute [rw] stack_drift_status
    #   Status of the stack's actual configuration compared to its expected
    #   template configuration.
    #
    #   * `DRIFTED`: The stack differs from its expected template
    #     configuration. A stack is considered to have drifted if one or
    #     more of its resources have drifted.
    #
    #   * `NOT_CHECKED`: CloudFormation hasn't checked if the stack differs
    #     from its expected template configuration.
    #
    #   * `IN_SYNC`: The stack's actual configuration matches its expected
    #     template configuration.
    #
    #   * `UNKNOWN`: CloudFormation could not run drift detection for a
    #     resource in the stack.
    #   @return [String]
    #
    # @!attribute [rw] last_check_timestamp
    #   Most recent time when a drift detection operation was initiated on
    #   the stack, or any of its individual resources that support drift
    #   detection.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StackDriftInformationSummary AWS API Documentation
    #
    class StackDriftInformationSummary < Struct.new(
      :stack_drift_status,
      :last_check_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The StackEvent data type.
    #
    # @!attribute [rw] stack_id
    #   The unique ID name of the instance of the stack.
    #   @return [String]
    #
    # @!attribute [rw] event_id
    #   The unique identifier of this event.
    #   @return [String]
    #
    # @!attribute [rw] stack_name
    #   The name associated with a stack.
    #   @return [String]
    #
    # @!attribute [rw] logical_resource_id
    #   The logical name of the resource specified in the template.
    #   @return [String]
    #
    # @!attribute [rw] physical_resource_id
    #   The name or unique identifier associated with the physical instance
    #   of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Type of resource. For more information, see [Amazon Web Services
    #   resource and property types reference][1] in the *CloudFormation
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   Time the status was updated.
    #   @return [Time]
    #
    # @!attribute [rw] resource_status
    #   Current status of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_status_reason
    #   Success/failure message associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_properties
    #   BLOB of the properties used to create the resource.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   The token passed to the operation that generated this event.
    #
    #   All events triggered by a given stack operation are assigned the
    #   same client request token, which you can use to track operations.
    #   For example, if you execute a `CreateStack` operation with the token
    #   `token1`, then all the `StackEvents` generated by that operation
    #   will have `ClientRequestToken` set as `token1`.
    #
    #   In the console, stack operations display the client request token on
    #   the Events tab. Stack operations that are initiated from the console
    #   use the token format *Console-StackOperation-ID*, which helps you
    #   easily identify the stack operation . For example, if you create a
    #   stack using the console, each stack event would be assigned the same
    #   token in the following format:
    #   `Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002`.
    #   @return [String]
    #
    # @!attribute [rw] hook_type
    #   The name of the Hook.
    #   @return [String]
    #
    # @!attribute [rw] hook_status
    #   Provides the status of the change set Hook.
    #   @return [String]
    #
    # @!attribute [rw] hook_status_reason
    #   Provides the reason for the Hook status.
    #   @return [String]
    #
    # @!attribute [rw] hook_invocation_point
    #   The specific point in the provisioning process where the Hook is
    #   invoked.
    #   @return [String]
    #
    # @!attribute [rw] hook_invocation_id
    #   The unique identifier of the Hook invocation.
    #   @return [String]
    #
    # @!attribute [rw] hook_failure_mode
    #   Specify the Hook failure mode for non-compliant resources in the
    #   followings ways.
    #
    #   * `FAIL` Stops provisioning resources.
    #
    #   * `WARN` Allows provisioning to continue with a warning message.
    #   @return [String]
    #
    # @!attribute [rw] detailed_status
    #   An optional field that contains information about the detailed
    #   status of the stack event.
    #
    #   * `CONFIGURATION_COMPLETE` - all of the resources in the stack have
    #     reached that event. For more information, see [Understand
    #     CloudFormation stack creation events][1] in the *CloudFormation
    #     User Guide*.
    #
    #   ^
    #   ^
    #
    #   * `VALIDATION_FAILED` - template validation failed because of
    #     invalid properties in the template. The `ResourceStatusReason`
    #     field shows what properties are defined incorrectly.
    #
    #   ^
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stack-resource-configuration-complete.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StackEvent AWS API Documentation
    #
    class StackEvent < Struct.new(
      :stack_id,
      :event_id,
      :stack_name,
      :logical_resource_id,
      :physical_resource_id,
      :resource_type,
      :timestamp,
      :resource_status,
      :resource_status_reason,
      :resource_properties,
      :client_request_token,
      :hook_type,
      :hook_status,
      :hook_status_reason,
      :hook_invocation_point,
      :hook_invocation_id,
      :hook_failure_mode,
      :detailed_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A CloudFormation stack, in a specific account and Region, that's part
    # of a StackSet operation. A stack instance is a reference to an
    # attempted or actual stack in a given account within a given Region. A
    # stack instance can exist without a stack—for example, if the stack
    # couldn't be created for some reason. A stack instance is associated
    # with only one StackSet. Each stack instance contains the ID of its
    # associated StackSet, in addition to the ID of the actual stack and the
    # stack status.
    #
    # @!attribute [rw] stack_set_id
    #   The name or unique ID of the StackSet that the stack instance is
    #   associated with.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The name of the Amazon Web Services Region that the stack instance
    #   is associated with.
    #   @return [String]
    #
    # @!attribute [rw] account
    #   \[Self-managed permissions\] The name of the Amazon Web Services
    #   account that the stack instance is associated with.
    #   @return [String]
    #
    # @!attribute [rw] stack_id
    #   The ID of the stack instance.
    #   @return [String]
    #
    # @!attribute [rw] parameter_overrides
    #   A list of parameters from the StackSet template whose values have
    #   been overridden in this stack instance.
    #   @return [Array<Types::Parameter>]
    #
    # @!attribute [rw] status
    #   The status of the stack instance, in terms of its synchronization
    #   with its associated stack set.
    #
    #   * `INOPERABLE`: A `DeleteStackInstances` operation has failed and
    #     left the stack in an unstable state. Stacks in this state are
    #     excluded from further `UpdateStackSet` operations. You might need
    #     to perform a `DeleteStackInstances` operation, with `RetainStacks`
    #     set to `true`, to delete the stack instance, and then delete the
    #     stack manually. `INOPERABLE` can be returned here when the cause
    #     is a failed import. If it's due to a failed import, the operation
    #     can be retried once the failures are fixed. To see if this is due
    #     to a failed import, look at the `DetailedStatus` member in the
    #     `StackInstanceSummary` member that is a peer to this `Status`
    #     member.
    #
    #   * `OUTDATED`: The stack isn't currently up to date with the
    #     StackSet because:
    #
    #     * The associated stack failed during a `CreateStackSet` or
    #       `UpdateStackSet` operation.
    #
    #     * The stack was part of a `CreateStackSet` or `UpdateStackSet`
    #       operation that failed or was stopped before the stack was
    #       created or updated.
    #   * `CURRENT`: The stack is currently up to date with the StackSet.
    #   @return [String]
    #
    # @!attribute [rw] stack_instance_status
    #   The detailed status of the stack instance.
    #   @return [Types::StackInstanceComprehensiveStatus]
    #
    # @!attribute [rw] status_reason
    #   The explanation for the specific status code that's assigned to
    #   this stack instance.
    #   @return [String]
    #
    # @!attribute [rw] organizational_unit_id
    #   \[Service-managed permissions\] The organization root ID or
    #   organizational unit (OU) IDs that you specified for
    #   [DeploymentTargets][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DeploymentTargets.html
    #   @return [String]
    #
    # @!attribute [rw] drift_status
    #   Status of the stack instance's actual configuration compared to the
    #   expected template and parameter configuration of the StackSet it
    #   belongs to.
    #
    #   * `DRIFTED`: The stack differs from the expected template and
    #     parameter configuration of the StackSet it belongs to. A stack
    #     instance is considered to have drifted if one or more of the
    #     resources in the associated stack have drifted.
    #
    #   * `NOT_CHECKED`: CloudFormation hasn't checked if the stack
    #     instance differs from its expected StackSet configuration.
    #
    #   * `IN_SYNC`: The stack instance's actual configuration matches its
    #     expected StackSset configuration.
    #
    #   * `UNKNOWN`: This value is reserved for future use.
    #   @return [String]
    #
    # @!attribute [rw] last_drift_check_timestamp
    #   Most recent time when CloudFormation performed a drift detection
    #   operation on the stack instance. This value will be `NULL` for any
    #   stack instance that drift detection hasn't yet been performed on.
    #   @return [Time]
    #
    # @!attribute [rw] last_operation_id
    #   The last unique ID of a StackSet operation performed on a stack
    #   instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StackInstance AWS API Documentation
    #
    class StackInstance < Struct.new(
      :stack_set_id,
      :region,
      :account,
      :stack_id,
      :parameter_overrides,
      :status,
      :stack_instance_status,
      :status_reason,
      :organizational_unit_id,
      :drift_status,
      :last_drift_check_timestamp,
      :last_operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The detailed status of the stack instance.
    #
    # @!attribute [rw] detailed_status
    #   * `CANCELLED`: The operation in the specified account and Region has
    #     been canceled. This is either because a user has stopped the
    #     StackSet operation, or because the failure tolerance of the
    #     StackSet operation has been exceeded.
    #
    #   * `FAILED`: The operation in the specified account and Region
    #     failed. If the StackSet operation fails in enough accounts within
    #     a Region, the failure tolerance for the StackSet operation as a
    #     whole might be exceeded.
    #
    #   * `FAILED_IMPORT`: The import of the stack instance in the specified
    #     account and Region failed and left the stack in an unstable state.
    #     Once the issues causing the failure are fixed, the import
    #     operation can be retried. If enough StackSet operations fail in
    #     enough accounts within a Region, the failure tolerance for the
    #     StackSet operation as a whole might be exceeded.
    #
    #   * `INOPERABLE`: A `DeleteStackInstances` operation has failed and
    #     left the stack in an unstable state. Stacks in this state are
    #     excluded from further `UpdateStackSet` operations. You might need
    #     to perform a `DeleteStackInstances` operation, with `RetainStacks`
    #     set to `true`, to delete the stack instance, and then delete the
    #     stack manually.
    #
    #   * `PENDING`: The operation in the specified account and Region has
    #     yet to start.
    #
    #   * `RUNNING`: The operation in the specified account and Region is
    #     currently in progress.
    #
    #   * `SKIPPED_SUSPENDED_ACCOUNT`: The operation in the specified
    #     account and Region has been skipped because the account was
    #     suspended at the time of the operation.
    #
    #   * `SUCCEEDED`: The operation in the specified account and Region
    #     completed successfully.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StackInstanceComprehensiveStatus AWS API Documentation
    #
    class StackInstanceComprehensiveStatus < Struct.new(
      :detailed_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The filter to apply to stack instances
    #
    # @!attribute [rw] name
    #   The type of filter to apply.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The status to filter by.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StackInstanceFilter AWS API Documentation
    #
    class StackInstanceFilter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified stack instance doesn't exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StackInstanceNotFoundException AWS API Documentation
    #
    class StackInstanceNotFoundException < Aws::EmptyStructure; end

    # The structure containing summary information about resource drifts for
    # a stack instance.
    #
    # @!attribute [rw] stack_id
    #   The ID of the stack instance.
    #   @return [String]
    #
    # @!attribute [rw] logical_resource_id
    #   The logical name of the resource specified in the template.
    #   @return [String]
    #
    # @!attribute [rw] physical_resource_id
    #   The name or unique identifier that corresponds to a physical
    #   instance ID of a resource supported by CloudFormation.
    #   @return [String]
    #
    # @!attribute [rw] physical_resource_id_context
    #   Context information that enables CloudFormation to uniquely identify
    #   a resource. CloudFormation uses context key-value pairs in cases
    #   where a resource's logical and physical IDs aren't enough to
    #   uniquely identify that resource. Each context key-value pair
    #   specifies a unique resource that contains the targeted resource.
    #   @return [Array<Types::PhysicalResourceIdContextKeyValuePair>]
    #
    # @!attribute [rw] resource_type
    #   Type of resource. For more information, see [Amazon Web Services
    #   resource and property types reference][1] in the *CloudFormation
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html
    #   @return [String]
    #
    # @!attribute [rw] property_differences
    #   Status of the actual configuration of the resource compared to its
    #   expected configuration. These will be present only for resources
    #   whose `StackInstanceResourceDriftStatus` is `MODIFIED`.
    #   @return [Array<Types::PropertyDifference>]
    #
    # @!attribute [rw] stack_resource_drift_status
    #   The drift status of the resource in a stack instance.
    #
    #   * `DELETED`: The resource differs from its expected template
    #     configuration in that the resource has been deleted.
    #
    #   * `MODIFIED`: One or more resource properties differ from their
    #     expected template values.
    #
    #   * `IN_SYNC`: The resource's actual configuration matches its
    #     expected template configuration.
    #
    #   * `NOT_CHECKED`: CloudFormation doesn't currently return this
    #     value.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   Time at which the stack instance drift detection operation was
    #   initiated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StackInstanceResourceDriftsSummary AWS API Documentation
    #
    class StackInstanceResourceDriftsSummary < Struct.new(
      :stack_id,
      :logical_resource_id,
      :physical_resource_id,
      :physical_resource_id_context,
      :resource_type,
      :property_differences,
      :stack_resource_drift_status,
      :timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure that contains summary information about a stack
    # instance.
    #
    # @!attribute [rw] stack_set_id
    #   The name or unique ID of the StackSet that the stack instance is
    #   associated with.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The name of the Amazon Web Services Region that the stack instance
    #   is associated with.
    #   @return [String]
    #
    # @!attribute [rw] account
    #   \[Self-managed permissions\] The name of the Amazon Web Services
    #   account that the stack instance is associated with.
    #   @return [String]
    #
    # @!attribute [rw] stack_id
    #   The ID of the stack instance.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the stack instance, in terms of its synchronization
    #   with its associated stack set.
    #
    #   * `INOPERABLE`: A `DeleteStackInstances` operation has failed and
    #     left the stack in an unstable state. Stacks in this state are
    #     excluded from further `UpdateStackSet` operations. You might need
    #     to perform a `DeleteStackInstances` operation, with `RetainStacks`
    #     set to `true`, to delete the stack instance, and then delete the
    #     stack manually. `INOPERABLE` can be returned here when the cause
    #     is a failed import. If it's due to a failed import, the operation
    #     can be retried once the failures are fixed. To see if this is due
    #     to a failed import, call the DescribeStackInstance API operation,
    #     look at the `DetailedStatus` member returned in the
    #     `StackInstanceSummary` member.
    #
    #   * `OUTDATED`: The stack isn't currently up to date with the
    #     StackSet because:
    #
    #     * The associated stack failed during a `CreateStackSet` or
    #       `UpdateStackSet` operation.
    #
    #     * The stack was part of a `CreateStackSet` or `UpdateStackSet`
    #       operation that failed or was stopped before the stack was
    #       created or updated.
    #   * `CURRENT`: The stack is currently up to date with the StackSet.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The explanation for the specific status code assigned to this stack
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] stack_instance_status
    #   The detailed status of the stack instance.
    #   @return [Types::StackInstanceComprehensiveStatus]
    #
    # @!attribute [rw] organizational_unit_id
    #   \[Service-managed permissions\] The organization root ID or
    #   organizational unit (OU) IDs that you specified for
    #   [DeploymentTargets][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DeploymentTargets.html
    #   @return [String]
    #
    # @!attribute [rw] drift_status
    #   Status of the stack instance's actual configuration compared to the
    #   expected template and parameter configuration of the StackSet it
    #   belongs to.
    #
    #   * `DRIFTED`: The stack differs from the expected template and
    #     parameter configuration of the StackSet it belongs to. A stack
    #     instance is considered to have drifted if one or more of the
    #     resources in the associated stack have drifted.
    #
    #   * `NOT_CHECKED`: CloudFormation hasn't checked if the stack
    #     instance differs from its expected StackSet configuration.
    #
    #   * `IN_SYNC`: The stack instance's actual configuration matches its
    #     expected StackSet configuration.
    #
    #   * `UNKNOWN`: This value is reserved for future use.
    #   @return [String]
    #
    # @!attribute [rw] last_drift_check_timestamp
    #   Most recent time when CloudFormation performed a drift detection
    #   operation on the stack instance. This value will be `NULL` for any
    #   stack instance that drift detection hasn't yet been performed on.
    #   @return [Time]
    #
    # @!attribute [rw] last_operation_id
    #   The last unique ID of a StackSet operation performed on a stack
    #   instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StackInstanceSummary AWS API Documentation
    #
    class StackInstanceSummary < Struct.new(
      :stack_set_id,
      :region,
      :account,
      :stack_id,
      :status,
      :status_reason,
      :stack_instance_status,
      :organizational_unit_id,
      :drift_status,
      :last_drift_check_timestamp,
      :last_operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified stack ARN doesn't exist or stack doesn't exist
    # corresponding to the ARN in input.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StackNotFoundException AWS API Documentation
    #
    class StackNotFoundException < Aws::EmptyStructure; end

    # Describes the stack and the action that CloudFormation will perform on
    # it if you execute the stack refactor.
    #
    # @!attribute [rw] action
    #   The action that CloudFormation takes on the stack.
    #   @return [String]
    #
    # @!attribute [rw] entity
    #   The type that will be evaluated in the `StackRefactorAction`. The
    #   following are potential `Entity` types:
    #
    #   * `Stack`
    #
    #   * `Resource`
    #   @return [String]
    #
    # @!attribute [rw] physical_resource_id
    #   The name or unique identifier associated with the physical instance
    #   of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   A key-value pair that identifies the target resource. The key is an
    #   identifier property (for example, `BucketName` for `AWS::S3::Bucket`
    #   resources) and the value is the actual property value (for example,
    #   `MyS3Bucket`).
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description to help you identify the refactor.
    #   @return [String]
    #
    # @!attribute [rw] detection
    #   The detection type is one of the following:
    #
    #   * Auto: CloudFormation figured out the mapping on its own.
    #
    #   * Manual: The customer provided the mapping in the `ResourceMapping`
    #     parameter.
    #   @return [String]
    #
    # @!attribute [rw] detection_reason
    #   The description of the detection type.
    #   @return [String]
    #
    # @!attribute [rw] tag_resources
    #   Assigns one or more tags to specified resources.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] untag_resources
    #   Removes one or more tags to specified resources.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_mapping
    #   The mapping for the stack resource `Source` and stack resource
    #   `Destination`.
    #   @return [Types::ResourceMapping]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StackRefactorAction AWS API Documentation
    #
    class StackRefactorAction < Struct.new(
      :action,
      :entity,
      :physical_resource_id,
      :resource_identifier,
      :description,
      :detection,
      :detection_reason,
      :tag_resources,
      :untag_resources,
      :resource_mapping)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified stack refactor can't be found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StackRefactorNotFoundException AWS API Documentation
    #
    class StackRefactorNotFoundException < Aws::EmptyStructure; end

    # The summary of a stack refactor operation.
    #
    # @!attribute [rw] stack_refactor_id
    #   The ID associated with the stack refactor created from the
    #   CreateStackRefactor action.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description to help you identify the refactor.
    #   @return [String]
    #
    # @!attribute [rw] execution_status
    #   The operation status that's provided after calling the
    #   ExecuteStackRefactor action.
    #   @return [String]
    #
    # @!attribute [rw] execution_status_reason
    #   A detailed explanation for the stack refactor `ExecutionStatus`.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The stack refactor operation status that's provided after calling
    #   the CreateStackRefactor action.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   A detailed explanation for the stack refactor `Status`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StackRefactorSummary AWS API Documentation
    #
    class StackRefactorSummary < Struct.new(
      :stack_refactor_id,
      :description,
      :execution_status,
      :execution_status_reason,
      :status,
      :status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The StackResource data type.
    #
    # @!attribute [rw] stack_name
    #   The name associated with the stack.
    #   @return [String]
    #
    # @!attribute [rw] stack_id
    #   Unique identifier of the stack.
    #   @return [String]
    #
    # @!attribute [rw] logical_resource_id
    #   The logical name of the resource specified in the template.
    #   @return [String]
    #
    # @!attribute [rw] physical_resource_id
    #   The name or unique identifier that corresponds to a physical
    #   instance ID of a resource supported by CloudFormation.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Type of resource. For more information, see [Amazon Web Services
    #   resource and property types reference][1] in the *CloudFormation
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   Time the status was updated.
    #   @return [Time]
    #
    # @!attribute [rw] resource_status
    #   Current status of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_status_reason
    #   Success/failure message associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   User defined description associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] drift_information
    #   Information about whether the resource's actual configuration
    #   differs, or has *drifted*, from its expected configuration, as
    #   defined in the stack template and any values specified as template
    #   parameters. For more information, see [Detect unmanaged
    #   configuration changes to stacks and resources with drift
    #   detection][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html
    #   @return [Types::StackResourceDriftInformation]
    #
    # @!attribute [rw] module_info
    #   Contains information about the module from which the resource was
    #   created, if the resource was created from a module included in the
    #   stack template.
    #   @return [Types::ModuleInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StackResource AWS API Documentation
    #
    class StackResource < Struct.new(
      :stack_name,
      :stack_id,
      :logical_resource_id,
      :physical_resource_id,
      :resource_type,
      :timestamp,
      :resource_status,
      :resource_status_reason,
      :description,
      :drift_information,
      :module_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains detailed information about the specified stack resource.
    #
    # @!attribute [rw] stack_name
    #   The name associated with the stack.
    #   @return [String]
    #
    # @!attribute [rw] stack_id
    #   Unique identifier of the stack.
    #   @return [String]
    #
    # @!attribute [rw] logical_resource_id
    #   The logical name of the resource specified in the template.
    #   @return [String]
    #
    # @!attribute [rw] physical_resource_id
    #   The name or unique identifier that corresponds to a physical
    #   instance ID of a resource supported by CloudFormation.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Type of resource. For more information, see [Amazon Web Services
    #   resource and property types reference][1] in the *CloudFormation
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html
    #   @return [String]
    #
    # @!attribute [rw] last_updated_timestamp
    #   Time the status was updated.
    #   @return [Time]
    #
    # @!attribute [rw] resource_status
    #   Current status of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_status_reason
    #   Success/failure message associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   User defined description associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The content of the `Metadata` attribute declared for the resource.
    #   For more information, see [Metadata attribute][1] in the
    #   *CloudFormation User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-metadata.html
    #   @return [String]
    #
    # @!attribute [rw] drift_information
    #   Information about whether the resource's actual configuration
    #   differs, or has *drifted*, from its expected configuration, as
    #   defined in the stack template and any values specified as template
    #   parameters. For more information, see [Detect unmanaged
    #   configuration changes to stacks and resources with drift
    #   detection][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html
    #   @return [Types::StackResourceDriftInformation]
    #
    # @!attribute [rw] module_info
    #   Contains information about the module from which the resource was
    #   created, if the resource was created from a module included in the
    #   stack template.
    #   @return [Types::ModuleInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StackResourceDetail AWS API Documentation
    #
    class StackResourceDetail < Struct.new(
      :stack_name,
      :stack_id,
      :logical_resource_id,
      :physical_resource_id,
      :resource_type,
      :last_updated_timestamp,
      :resource_status,
      :resource_status_reason,
      :description,
      :metadata,
      :drift_information,
      :module_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the drift information for a resource that has been checked
    # for drift. This includes actual and expected property values for
    # resources in which CloudFormation has detected drift. Only resource
    # properties explicitly defined in the stack template are checked for
    # drift. For more information, see [Detect unmanaged configuration
    # changes to stacks and resources with drift detection][1].
    #
    # Resources that don't currently support drift detection can't be
    # checked. For a list of resources that support drift detection, see
    # [Resource type support for imports and drift detection][2].
    #
    # Use DetectStackResourceDrift to detect drift on individual resources,
    # or DetectStackDrift to detect drift on all resources in a given stack
    # that support drift detection.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html
    # [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resource-import-supported-resources.html
    #
    # @!attribute [rw] stack_id
    #   The ID of the stack.
    #   @return [String]
    #
    # @!attribute [rw] logical_resource_id
    #   The logical name of the resource specified in the template.
    #   @return [String]
    #
    # @!attribute [rw] physical_resource_id
    #   The name or unique identifier that corresponds to a physical
    #   instance ID of a resource supported by CloudFormation.
    #   @return [String]
    #
    # @!attribute [rw] physical_resource_id_context
    #   Context information that enables CloudFormation to uniquely identify
    #   a resource. CloudFormation uses context key-value pairs in cases
    #   where a resource's logical and physical IDs aren't enough to
    #   uniquely identify that resource. Each context key-value pair
    #   specifies a unique resource that contains the targeted resource.
    #   @return [Array<Types::PhysicalResourceIdContextKeyValuePair>]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource.
    #   @return [String]
    #
    # @!attribute [rw] expected_properties
    #   A JSON structure that contains the expected property values of the
    #   stack resource, as defined in the stack template and any values
    #   specified as template parameters.
    #
    #   For resources whose `StackResourceDriftStatus` is `DELETED`, this
    #   structure will not be present.
    #   @return [String]
    #
    # @!attribute [rw] actual_properties
    #   A JSON structure that contains the actual property values of the
    #   stack resource.
    #
    #   For resources whose `StackResourceDriftStatus` is `DELETED`, this
    #   structure will not be present.
    #   @return [String]
    #
    # @!attribute [rw] property_differences
    #   A collection of the resource properties whose actual values differ
    #   from their expected values. These will be present only for resources
    #   whose `StackResourceDriftStatus` is `MODIFIED`.
    #   @return [Array<Types::PropertyDifference>]
    #
    # @!attribute [rw] stack_resource_drift_status
    #   Status of the resource's actual configuration compared to its
    #   expected configuration.
    #
    #   * `DELETED`: The resource differs from its expected template
    #     configuration because the resource has been deleted.
    #
    #   * `MODIFIED`: One or more resource properties differ from their
    #     expected values (as defined in the stack template and any values
    #     specified as template parameters).
    #
    #   * `IN_SYNC`: The resource's actual configuration matches its
    #     expected template configuration.
    #
    #   * `NOT_CHECKED`: CloudFormation does not currently return this
    #     value.
    #
    #   * `UNKNOWN`: CloudFormation could not run drift detection for the
    #     resource. See the `DriftStatusReason` for details.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   Time at which CloudFormation performed drift detection on the stack
    #   resource.
    #   @return [Time]
    #
    # @!attribute [rw] module_info
    #   Contains information about the module from which the resource was
    #   created, if the resource was created from a module included in the
    #   stack template.
    #   @return [Types::ModuleInfo]
    #
    # @!attribute [rw] drift_status_reason
    #   The reason for the drift status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StackResourceDrift AWS API Documentation
    #
    class StackResourceDrift < Struct.new(
      :stack_id,
      :logical_resource_id,
      :physical_resource_id,
      :physical_resource_id_context,
      :resource_type,
      :expected_properties,
      :actual_properties,
      :property_differences,
      :stack_resource_drift_status,
      :timestamp,
      :module_info,
      :drift_status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about whether the resource's actual
    # configuration differs, or has *drifted*, from its expected
    # configuration.
    #
    # @!attribute [rw] stack_resource_drift_status
    #   Status of the resource's actual configuration compared to its
    #   expected configuration
    #
    #   * `DELETED`: The resource differs from its expected configuration in
    #     that it has been deleted.
    #
    #   * `MODIFIED`: The resource differs from its expected configuration.
    #
    #   * `NOT_CHECKED`: CloudFormation has not checked if the resource
    #     differs from its expected configuration.
    #
    #     Any resources that do not currently support drift detection have a
    #     status of `NOT_CHECKED`. For more information, see [Resource type
    #     support for imports and drift detection][1].
    #
    #   * `IN_SYNC`: The resource's actual configuration matches its
    #     expected configuration.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resource-import-supported-resources.html
    #   @return [String]
    #
    # @!attribute [rw] last_check_timestamp
    #   When CloudFormation last checked if the resource had drifted from
    #   its expected configuration.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StackResourceDriftInformation AWS API Documentation
    #
    class StackResourceDriftInformation < Struct.new(
      :stack_resource_drift_status,
      :last_check_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summarizes information about whether the resource's actual
    # configuration differs, or has *drifted*, from its expected
    # configuration.
    #
    # @!attribute [rw] stack_resource_drift_status
    #   Status of the resource's actual configuration compared to its
    #   expected configuration.
    #
    #   * `DELETED`: The resource differs from its expected configuration in
    #     that it has been deleted.
    #
    #   * `MODIFIED`: The resource differs from its expected configuration.
    #
    #   * `NOT_CHECKED`: CloudFormation hasn't checked if the resource
    #     differs from its expected configuration.
    #
    #     Any resources that don't currently support drift detection have a
    #     status of `NOT_CHECKED`. For more information, see [Resource type
    #     support for imports and drift detection][1]. If you performed an
    #     ContinueUpdateRollback operation on a stack, any resources
    #     included in `ResourcesToSkip` will also have a status of
    #     `NOT_CHECKED`. For more information about skipping resources
    #     during rollback operations, see [Continue rolling back an
    #     update][2] in the *CloudFormation User Guide*.
    #
    #   * `IN_SYNC`: The resource's actual configuration matches its
    #     expected configuration.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resource-import-supported-resources.html
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-continueupdaterollback.html
    #   @return [String]
    #
    # @!attribute [rw] last_check_timestamp
    #   When CloudFormation last checked if the resource had drifted from
    #   its expected configuration.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StackResourceDriftInformationSummary AWS API Documentation
    #
    class StackResourceDriftInformationSummary < Struct.new(
      :stack_resource_drift_status,
      :last_check_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains high-level information about the specified stack resource.
    #
    # @!attribute [rw] logical_resource_id
    #   The logical name of the resource specified in the template.
    #   @return [String]
    #
    # @!attribute [rw] physical_resource_id
    #   The name or unique identifier that corresponds to a physical
    #   instance ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Type of resource. (For more information, see [Amazon Web Services
    #   resource and property types reference][1] in the *CloudFormation
    #   User Guide*.)
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html
    #   @return [String]
    #
    # @!attribute [rw] last_updated_timestamp
    #   Time the status was updated.
    #   @return [Time]
    #
    # @!attribute [rw] resource_status
    #   Current status of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_status_reason
    #   Success/failure message associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] drift_information
    #   Information about whether the resource's actual configuration
    #   differs, or has *drifted*, from its expected configuration, as
    #   defined in the stack template and any values specified as template
    #   parameters. For more information, see [Detect unmanaged
    #   configuration changes to stacks and resources with drift
    #   detection][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html
    #   @return [Types::StackResourceDriftInformationSummary]
    #
    # @!attribute [rw] module_info
    #   Contains information about the module from which the resource was
    #   created, if the resource was created from a module included in the
    #   stack template.
    #   @return [Types::ModuleInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StackResourceSummary AWS API Documentation
    #
    class StackResourceSummary < Struct.new(
      :logical_resource_id,
      :physical_resource_id,
      :resource_type,
      :last_updated_timestamp,
      :resource_status,
      :resource_status_reason,
      :drift_information,
      :module_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains information about a StackSet. With
    # StackSets, you can provision stacks across Amazon Web Services
    # accounts and Regions from a single CloudFormation template. Each stack
    # is based on the same CloudFormation template, but you can customize
    # individual stacks using parameters.
    #
    # @!attribute [rw] stack_set_name
    #   The name that's associated with the StackSet.
    #   @return [String]
    #
    # @!attribute [rw] stack_set_id
    #   The ID of the StackSet.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the StackSet that you specify when the StackSet is
    #   created or updated.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the StackSet.
    #   @return [String]
    #
    # @!attribute [rw] template_body
    #   The structure that contains the body of the template that was used
    #   to create or update the StackSet.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A list of input parameters for a StackSet.
    #   @return [Array<Types::Parameter>]
    #
    # @!attribute [rw] capabilities
    #   The capabilities that are allowed in the StackSet. Some StackSet
    #   templates might include resources that can affect permissions in
    #   your Amazon Web Services account—for example, by creating new
    #   Identity and Access Management (IAM) users. For more information,
    #   see [Acknowledging IAM resources in CloudFormation templates][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/control-access-with-iam.html#using-iam-capabilities
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   A list of tags that specify information about the StackSet. A
    #   maximum number of 50 tags can be specified.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] stack_set_arn
    #   The Amazon Resource Name (ARN) of the StackSet.
    #   @return [String]
    #
    # @!attribute [rw] administration_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role used to create or
    #   update the stack set.
    #
    #   Use customized administrator roles to control which users or groups
    #   can manage specific StackSets within the same administrator account.
    #   For more information, see [Prerequisites for using CloudFormation
    #   StackSets][1] in the *CloudFormation User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html
    #   @return [String]
    #
    # @!attribute [rw] execution_role_name
    #   The name of the IAM execution role used to create or update the
    #   StackSet.
    #
    #   Use customized execution roles to control which stack resources
    #   users and groups can include in their StackSets.
    #   @return [String]
    #
    # @!attribute [rw] stack_set_drift_detection_details
    #   Detailed information about the drift status of the StackSet.
    #
    #   For StackSets, contains information about the last *completed* drift
    #   operation performed on the StackSet. Information about drift
    #   operations currently in progress isn't included.
    #   @return [Types::StackSetDriftDetectionDetails]
    #
    # @!attribute [rw] auto_deployment
    #   Describes whether StackSets automatically deploys to Organizations
    #   accounts that are added to a target organization or organizational
    #   unit (OU). Valid only if the StackSet uses service-managed
    #   permissions.
    #   @return [Types::AutoDeployment]
    #
    # @!attribute [rw] permission_model
    #   Describes how the IAM roles required for StackSet operations are
    #   created.
    #
    #   * With `self-managed` permissions, you must create the administrator
    #     and execution roles required to deploy to target accounts. For
    #     more information, see [Grant self-managed permissions][1].
    #
    #   * With `service-managed` permissions, StackSets automatically
    #     creates the IAM roles required to deploy to accounts managed by
    #     Organizations. For more information, see [Activate trusted access
    #     for StackSets with Organizations][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-activate-trusted-access.html
    #   @return [String]
    #
    # @!attribute [rw] organizational_unit_ids
    #   \[Service-managed permissions\] The organization root ID or
    #   organizational unit (OU) IDs that you specified for
    #   [DeploymentTargets][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DeploymentTargets.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] managed_execution
    #   Describes whether StackSets performs non-conflicting operations
    #   concurrently and queues conflicting operations.
    #   @return [Types::ManagedExecution]
    #
    # @!attribute [rw] regions
    #   Returns a list of all Amazon Web Services Regions the given StackSet
    #   has stack instances deployed in. The Amazon Web Services Regions
    #   list output is in no particular order.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StackSet AWS API Documentation
    #
    class StackSet < Struct.new(
      :stack_set_name,
      :stack_set_id,
      :description,
      :status,
      :template_body,
      :parameters,
      :capabilities,
      :tags,
      :stack_set_arn,
      :administration_role_arn,
      :execution_role_name,
      :stack_set_drift_detection_details,
      :auto_deployment,
      :permission_model,
      :organizational_unit_ids,
      :managed_execution,
      :regions)
      SENSITIVE = []
      include Aws::Structure
    end

    # One of the targets for the StackSet. Returned by the
    # [ListStackSetAutoDeploymentTargets][1] API operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ListStackSetAutoDeploymentTargets.html
    #
    # @!attribute [rw] organizational_unit_id
    #   The organization root ID or organizational unit (OU) IDs where the
    #   StackSet is targeted.
    #   @return [String]
    #
    # @!attribute [rw] regions
    #   The list of Regions targeted for this organization or OU.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StackSetAutoDeploymentTargetSummary AWS API Documentation
    #
    class StackSetAutoDeploymentTargetSummary < Struct.new(
      :organizational_unit_id,
      :regions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detailed information about the drift status of the StackSet.
    #
    # For StackSets, contains information about the last *completed* drift
    # operation performed on the StackSet. Information about drift
    # operations in-progress isn't included.
    #
    # For StackSet operations, includes information about drift operations
    # currently being performed on the StackSet.
    #
    # For more information, see [Performing drift detection on
    # CloudFormation StackSets][1] in the *CloudFormation User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-drift.html
    #
    # @!attribute [rw] drift_status
    #   Status of the StackSet's actual configuration compared to its
    #   expected template and parameter configuration.
    #
    #   * `DRIFTED`: One or more of the stack instances belonging to the
    #     StackSet differs from the expected template and parameter
    #     configuration. A stack instance is considered to have drifted if
    #     one or more of the resources in the associated stack have drifted.
    #
    #   * `NOT_CHECKED`: CloudFormation hasn't checked the StackSet for
    #     drift.
    #
    #   * `IN_SYNC`: All of the stack instances belonging to the StackSet
    #     stack match the expected template and parameter configuration.
    #   @return [String]
    #
    # @!attribute [rw] drift_detection_status
    #   The status of the StackSet drift detection operation.
    #
    #   * `COMPLETED`: The drift detection operation completed without
    #     failing on any stack instances.
    #
    #   * `FAILED`: The drift detection operation exceeded the specified
    #     failure tolerance.
    #
    #   * `PARTIAL_SUCCESS`: The drift detection operation completed without
    #     exceeding the failure tolerance for the operation.
    #
    #   * `IN_PROGRESS`: The drift detection operation is currently being
    #     performed.
    #
    #   * `STOPPED`: The user has canceled the drift detection operation.
    #   @return [String]
    #
    # @!attribute [rw] last_drift_check_timestamp
    #   Most recent time when CloudFormation performed a drift detection
    #   operation on the StackSet. This value will be `NULL` for any
    #   StackSet that drift detection hasn't yet been performed on.
    #   @return [Time]
    #
    # @!attribute [rw] total_stack_instances_count
    #   The total number of stack instances belonging to this StackSet.
    #
    #   The total number of stack instances is equal to the total of:
    #
    #   * Stack instances that match the StackSet configuration.
    #
    #   * Stack instances that have drifted from the StackSet configuration.
    #
    #   * Stack instances where the drift detection operation has failed.
    #
    #   * Stack instances currently being checked for drift.
    #   @return [Integer]
    #
    # @!attribute [rw] drifted_stack_instances_count
    #   The number of stack instances that have drifted from the expected
    #   template and parameter configuration of the StackSet. A stack
    #   instance is considered to have drifted if one or more of the
    #   resources in the associated stack don't match their expected
    #   configuration.
    #   @return [Integer]
    #
    # @!attribute [rw] in_sync_stack_instances_count
    #   The number of stack instances which match the expected template and
    #   parameter configuration of the StackSet.
    #   @return [Integer]
    #
    # @!attribute [rw] in_progress_stack_instances_count
    #   The number of stack instances that are currently being checked for
    #   drift.
    #   @return [Integer]
    #
    # @!attribute [rw] failed_stack_instances_count
    #   The number of stack instances for which the drift detection
    #   operation failed.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StackSetDriftDetectionDetails AWS API Documentation
    #
    class StackSetDriftDetectionDetails < Struct.new(
      :drift_status,
      :drift_detection_status,
      :last_drift_check_timestamp,
      :total_stack_instances_count,
      :drifted_stack_instances_count,
      :in_sync_stack_instances_count,
      :in_progress_stack_instances_count,
      :failed_stack_instances_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # You can't yet delete this StackSet, because it still contains one or
    # more stack instances. Delete all stack instances from the StackSet
    # before deleting the StackSet.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StackSetNotEmptyException AWS API Documentation
    #
    class StackSetNotEmptyException < Aws::EmptyStructure; end

    # The specified StackSet doesn't exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StackSetNotFoundException AWS API Documentation
    #
    class StackSetNotFoundException < Aws::EmptyStructure; end

    # The structure that contains information about a StackSet operation.
    #
    # @!attribute [rw] operation_id
    #   The unique ID of a StackSet operation.
    #   @return [String]
    #
    # @!attribute [rw] stack_set_id
    #   The ID of the StackSet.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The type of StackSet operation: `CREATE`, `UPDATE`, or `DELETE`.
    #   Create and delete operations affect only the specified stack
    #   instances that are associated with the specified StackSet. Update
    #   operations affect both the StackSet itself, in addition to *all*
    #   associated stack instances.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the operation.
    #
    #   * `FAILED`: The operation exceeded the specified failure tolerance.
    #     The failure tolerance value that you've set for an operation is
    #     applied for each Region during stack create and update operations.
    #     If the number of failed stacks within a Region exceeds the failure
    #     tolerance, the status of the operation in the Region is set to
    #     `FAILED`. This in turn sets the status of the operation as a whole
    #     to `FAILED`, and CloudFormation cancels the operation in any
    #     remaining Regions.
    #
    #   * `QUEUED`: \[Service-managed permissions\] For automatic
    #     deployments that require a sequence of operations, the operation
    #     is queued to be performed. For more information, see the
    #     [StackSets status codes][1] in the *CloudFormation User Guide*.
    #
    #   * `RUNNING`: The operation is currently being performed.
    #
    #   * `STOPPED`: The user has canceled the operation.
    #
    #   * `STOPPING`: The operation is in the process of stopping, at user
    #     request.
    #
    #   * `SUCCEEDED`: The operation completed creating or updating all the
    #     specified stacks without exceeding the failure tolerance for the
    #     operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-status-codes
    #   @return [String]
    #
    # @!attribute [rw] operation_preferences
    #   The preferences for how CloudFormation performs this StackSet
    #   operation.
    #   @return [Types::StackSetOperationPreferences]
    #
    # @!attribute [rw] retain_stacks
    #   For StackSet operations of action type `DELETE`, specifies whether
    #   to remove the stack instances from the specified StackSet, but
    #   doesn't delete the stacks. You can't re-associate a retained
    #   stack, or add an existing, saved stack to a new StackSet.
    #   @return [Boolean]
    #
    # @!attribute [rw] administration_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role used to perform this
    #   StackSet operation.
    #
    #   Use customized administrator roles to control which users or groups
    #   can manage specific StackSets within the same administrator account.
    #   For more information, see [Grant self-managed permissions][1] in the
    #   *CloudFormation User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html
    #   @return [String]
    #
    # @!attribute [rw] execution_role_name
    #   The name of the IAM execution role used to create or update the
    #   StackSet.
    #
    #   Use customized execution roles to control which stack resources
    #   users and groups can include in their StackSets.
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   The time at which the operation was initiated. Note that the
    #   creation times for the stack set operation might differ from the
    #   creation time of the individual stacks themselves. This is because
    #   CloudFormation needs to perform preparatory work for the operation,
    #   such as dispatching the work to the requested Regions, before
    #   actually creating the first stacks.
    #   @return [Time]
    #
    # @!attribute [rw] end_timestamp
    #   The time at which the StackSet operation ended, across all accounts
    #   and Regions specified. Note that this doesn't necessarily mean that
    #   the StackSet operation was successful, or even attempted, in each
    #   account or Region.
    #   @return [Time]
    #
    # @!attribute [rw] deployment_targets
    #   The Organizations accounts affected by the stack operation. Valid
    #   only if the StackSet uses service-managed permissions.
    #   @return [Types::DeploymentTargets]
    #
    # @!attribute [rw] stack_set_drift_detection_details
    #   Detailed information about the drift status of the StackSet. This
    #   includes information about drift operations currently being
    #   performed on the StackSet.
    #
    #   This information will only be present for StackSet operations whose
    #   `Action` type is `DETECT_DRIFT`.
    #
    #   For more information, see [Performing drift detection on
    #   CloudFormation StackSets][1] in the *CloudFormation User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-drift.html
    #   @return [Types::StackSetDriftDetectionDetails]
    #
    # @!attribute [rw] status_reason
    #   The status of the operation in details.
    #   @return [String]
    #
    # @!attribute [rw] status_details
    #   Detailed information about the StackSet operation.
    #   @return [Types::StackSetOperationStatusDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StackSetOperation AWS API Documentation
    #
    class StackSetOperation < Struct.new(
      :operation_id,
      :stack_set_id,
      :action,
      :status,
      :operation_preferences,
      :retain_stacks,
      :administration_role_arn,
      :execution_role_name,
      :creation_timestamp,
      :end_timestamp,
      :deployment_targets,
      :stack_set_drift_detection_details,
      :status_reason,
      :status_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # The user-specified preferences for how CloudFormation performs a
    # StackSet operation.
    #
    # For more information about maximum concurrent accounts and failure
    # tolerance, see [StackSet operation options][1].
    #
    # <note markdown="1"> `StackSetOperationPreferences` don't apply to `AutoDeployment`, even
    # if it's enabled.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options
    #
    # @!attribute [rw] region_concurrency_type
    #   The concurrency type of deploying StackSets operations in Regions,
    #   could be in parallel or one Region at a time.
    #   @return [String]
    #
    # @!attribute [rw] region_order
    #   The order of the Regions where you want to perform the stack
    #   operation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] failure_tolerance_count
    #   The number of accounts per Region this operation can fail in before
    #   CloudFormation stops the operation in that Region. If the operation
    #   is stopped in a Region, CloudFormation doesn't attempt the
    #   operation in any subsequent Regions.
    #
    #   You can specify either `FailureToleranceCount` or
    #   `FailureTolerancePercentage`, but not both.
    #
    #   By default, `0` is specified.
    #   @return [Integer]
    #
    # @!attribute [rw] failure_tolerance_percentage
    #   The percentage of accounts per Region this stack operation can fail
    #   in before CloudFormation stops the operation in that Region. If the
    #   operation is stopped in a Region, CloudFormation doesn't attempt
    #   the operation in any subsequent Regions.
    #
    #   When calculating the number of accounts based on the specified
    #   percentage, CloudFormation rounds *down* to the next whole number.
    #
    #   You can specify either `FailureToleranceCount` or
    #   `FailureTolerancePercentage`, but not both.
    #
    #   By default, `0` is specified.
    #   @return [Integer]
    #
    # @!attribute [rw] max_concurrent_count
    #   The maximum number of accounts in which to perform this operation at
    #   one time. This can depend on the value of `FailureToleranceCount`
    #   depending on your `ConcurrencyMode`. `MaxConcurrentCount` is at most
    #   one more than the `FailureToleranceCount` if you're using
    #   `STRICT_FAILURE_TOLERANCE`.
    #
    #   Note that this setting lets you specify the *maximum* for
    #   operations. For large deployments, under certain circumstances the
    #   actual number of accounts acted upon concurrently may be lower due
    #   to service throttling.
    #
    #   You can specify either `MaxConcurrentCount` or
    #   `MaxConcurrentPercentage`, but not both.
    #
    #   By default, `1` is specified.
    #   @return [Integer]
    #
    # @!attribute [rw] max_concurrent_percentage
    #   The maximum percentage of accounts in which to perform this
    #   operation at one time.
    #
    #   When calculating the number of accounts based on the specified
    #   percentage, CloudFormation rounds down to the next whole number.
    #   This is true except in cases where rounding down would result is
    #   zero. In this case, CloudFormation sets the number as one instead.
    #
    #   Note that this setting lets you specify the *maximum* for
    #   operations. For large deployments, under certain circumstances the
    #   actual number of accounts acted upon concurrently may be lower due
    #   to service throttling.
    #
    #   You can specify either `MaxConcurrentCount` or
    #   `MaxConcurrentPercentage`, but not both.
    #
    #   By default, `1` is specified.
    #   @return [Integer]
    #
    # @!attribute [rw] concurrency_mode
    #   Specifies how the concurrency level behaves during the operation
    #   execution.
    #
    #   * `STRICT_FAILURE_TOLERANCE`: This option dynamically lowers the
    #     concurrency level to ensure the number of failed accounts never
    #     exceeds the value of `FailureToleranceCount` +1. The initial
    #     actual concurrency is set to the lower of either the value of the
    #     `MaxConcurrentCount`, or the value of `FailureToleranceCount` +1.
    #     The actual concurrency is then reduced proportionally by the
    #     number of failures. This is the default behavior.
    #
    #     If failure tolerance or Maximum concurrent accounts are set to
    #     percentages, the behavior is similar.
    #
    #   * `SOFT_FAILURE_TOLERANCE`: This option decouples
    #     `FailureToleranceCount` from the actual concurrency. This allows
    #     StackSet operations to run at the concurrency level set by the
    #     `MaxConcurrentCount` value, or `MaxConcurrentPercentage`,
    #     regardless of the number of failures.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StackSetOperationPreferences AWS API Documentation
    #
    class StackSetOperationPreferences < Struct.new(
      :region_concurrency_type,
      :region_order,
      :failure_tolerance_count,
      :failure_tolerance_percentage,
      :max_concurrent_count,
      :max_concurrent_percentage,
      :concurrency_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure that contains information about a specified operation's
    # results for a given account in a given Region.
    #
    # @!attribute [rw] account
    #   \[Self-managed permissions\] The name of the Amazon Web Services
    #   account for this operation result.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The name of the Amazon Web Services Region for this operation
    #   result.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The result status of the StackSet operation for the given account in
    #   the given Region.
    #
    #   * `CANCELLED`: The operation in the specified account and Region has
    #     been canceled. This is either because a user has stopped the
    #     StackSet operation, or because the failure tolerance of the
    #     StackSet operation has been exceeded.
    #
    #   * `FAILED`: The operation in the specified account and Region
    #     failed.
    #
    #     If the StackSet operation fails in enough accounts within a
    #     Region, the failure tolerance for the StackSet operation as a
    #     whole might be exceeded.
    #
    #   * `RUNNING`: The operation in the specified account and Region is
    #     currently in progress.
    #
    #   * `PENDING`: The operation in the specified account and Region has
    #     yet to start.
    #
    #   * `SUCCEEDED`: The operation in the specified account and Region
    #     completed successfully.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the assigned result status.
    #   @return [String]
    #
    # @!attribute [rw] account_gate_result
    #   The results of the account gate function CloudFormation invokes, if
    #   present, before proceeding with StackSet operations in an account.
    #   @return [Types::AccountGateResult]
    #
    # @!attribute [rw] organizational_unit_id
    #   \[Service-managed permissions\] The organization root ID or
    #   organizational unit (OU) IDs that you specified for
    #   [DeploymentTargets][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DeploymentTargets.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StackSetOperationResultSummary AWS API Documentation
    #
    class StackSetOperationResultSummary < Struct.new(
      :account,
      :region,
      :status,
      :status_reason,
      :account_gate_result,
      :organizational_unit_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detailed information about the StackSet operation.
    #
    # @!attribute [rw] failed_stack_instances_count
    #   The number of stack instances for which the StackSet operation
    #   failed.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StackSetOperationStatusDetails AWS API Documentation
    #
    class StackSetOperationStatusDetails < Struct.new(
      :failed_stack_instances_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structures that contain summary information about the specified
    # operation.
    #
    # @!attribute [rw] operation_id
    #   The unique ID of the StackSet operation.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The type of operation: `CREATE`, `UPDATE`, or `DELETE`. Create and
    #   delete operations affect only the specified stack instances that are
    #   associated with the specified StackSet. Update operations affect
    #   both the StackSet itself and *all* associated StackSet instances.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The overall status of the operation.
    #
    #   * `FAILED`: The operation exceeded the specified failure tolerance.
    #     The failure tolerance value that you've set for an operation is
    #     applied for each Region during stack create and update operations.
    #     If the number of failed stacks within a Region exceeds the failure
    #     tolerance, the status of the operation in the Region is set to
    #     `FAILED`. This in turn sets the status of the operation as a whole
    #     to `FAILED`, and CloudFormation cancels the operation in any
    #     remaining Regions.
    #
    #   * `QUEUED`: \[Service-managed permissions\] For automatic
    #     deployments that require a sequence of operations, the operation
    #     is queued to be performed. For more information, see the [StackSet
    #     status codes][1] in the *CloudFormation User Guide*.
    #
    #   * `RUNNING`: The operation is currently being performed.
    #
    #   * `STOPPED`: The user has canceled the operation.
    #
    #   * `STOPPING`: The operation is in the process of stopping, at user
    #     request.
    #
    #   * `SUCCEEDED`: The operation completed creating or updating all the
    #     specified stacks without exceeding the failure tolerance for the
    #     operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-status-codes
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   The time at which the operation was initiated. Note that the
    #   creation times for the StackSet operation might differ from the
    #   creation time of the individual stacks themselves. This is because
    #   CloudFormation needs to perform preparatory work for the operation,
    #   such as dispatching the work to the requested Regions, before
    #   actually creating the first stacks.
    #   @return [Time]
    #
    # @!attribute [rw] end_timestamp
    #   The time at which the StackSet operation ended, across all accounts
    #   and Regions specified. Note that this doesn't necessarily mean that
    #   the StackSet operation was successful, or even attempted, in each
    #   account or Region.
    #   @return [Time]
    #
    # @!attribute [rw] status_reason
    #   The status of the operation in details.
    #   @return [String]
    #
    # @!attribute [rw] status_details
    #   Detailed information about the StackSet operation.
    #   @return [Types::StackSetOperationStatusDetails]
    #
    # @!attribute [rw] operation_preferences
    #   The user-specified preferences for how CloudFormation performs a
    #   StackSet operation.
    #
    #   For more information about maximum concurrent accounts and failure
    #   tolerance, see [StackSet operation options][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options
    #   @return [Types::StackSetOperationPreferences]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StackSetOperationSummary AWS API Documentation
    #
    class StackSetOperationSummary < Struct.new(
      :operation_id,
      :action,
      :status,
      :creation_timestamp,
      :end_timestamp,
      :status_reason,
      :status_details,
      :operation_preferences)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structures that contain summary information about the specified
    # StackSet.
    #
    # @!attribute [rw] stack_set_name
    #   The name of the StackSet.
    #   @return [String]
    #
    # @!attribute [rw] stack_set_id
    #   The ID of the StackSet.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the StackSet that you specify when the StackSet is
    #   created or updated.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the StackSet.
    #   @return [String]
    #
    # @!attribute [rw] auto_deployment
    #   \[Service-managed permissions\] Describes whether StackSets
    #   automatically deploys to Organizations accounts that are added to a
    #   target organizational unit (OU).
    #   @return [Types::AutoDeployment]
    #
    # @!attribute [rw] permission_model
    #   Describes how the IAM roles required for StackSet operations are
    #   created.
    #
    #   * With `self-managed` permissions, you must create the administrator
    #     and execution roles required to deploy to target accounts. For
    #     more information, see [Grant self-managed permissions][1].
    #
    #   * With `service-managed` permissions, StackSets automatically
    #     creates the IAM roles required to deploy to accounts managed by
    #     Organizations. For more information, see [Activate trusted access
    #     for StackSets with Organizations][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-activate-trusted-access.html
    #   @return [String]
    #
    # @!attribute [rw] drift_status
    #   Status of the StackSet's actual configuration compared to its
    #   expected template and parameter configuration.
    #
    #   * `DRIFTED`: One or more of the stack instances belonging to the
    #     StackSet differs from the expected template and parameter
    #     configuration. A stack instance is considered to have drifted if
    #     one or more of the resources in the associated stack have drifted.
    #
    #   * `NOT_CHECKED`: CloudFormation hasn't checked the StackSet for
    #     drift.
    #
    #   * `IN_SYNC`: All the stack instances belonging to the StackSet match
    #     the expected template and parameter configuration.
    #
    #   * `UNKNOWN`: This value is reserved for future use.
    #   @return [String]
    #
    # @!attribute [rw] last_drift_check_timestamp
    #   Most recent time when CloudFormation performed a drift detection
    #   operation on the StackSet. This value will be `NULL` for any
    #   StackSet that drift detection hasn't yet been performed on.
    #   @return [Time]
    #
    # @!attribute [rw] managed_execution
    #   Describes whether StackSets performs non-conflicting operations
    #   concurrently and queues conflicting operations.
    #   @return [Types::ManagedExecution]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StackSetSummary AWS API Documentation
    #
    class StackSetSummary < Struct.new(
      :stack_set_name,
      :stack_set_id,
      :description,
      :status,
      :auto_deployment,
      :permission_model,
      :drift_status,
      :last_drift_check_timestamp,
      :managed_execution)
      SENSITIVE = []
      include Aws::Structure
    end

    # The StackSummary Data Type
    #
    # @!attribute [rw] stack_id
    #   Unique stack identifier.
    #   @return [String]
    #
    # @!attribute [rw] stack_name
    #   The name associated with the stack.
    #   @return [String]
    #
    # @!attribute [rw] template_description
    #   The template description of the template used to create the stack.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time the stack was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The time the stack was last updated. This field will only be
    #   returned if the stack has been updated at least once.
    #   @return [Time]
    #
    # @!attribute [rw] deletion_time
    #   The time the stack was deleted.
    #   @return [Time]
    #
    # @!attribute [rw] stack_status
    #   The current status of the stack.
    #   @return [String]
    #
    # @!attribute [rw] stack_status_reason
    #   Success/Failure message associated with the stack status.
    #   @return [String]
    #
    # @!attribute [rw] parent_id
    #   For nested stacks, the stack ID of the direct parent of this stack.
    #   For the first level of nested stacks, the root stack is also the
    #   parent stack.
    #
    #   For more information, see [Nested stacks][1] in the *CloudFormation
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html
    #   @return [String]
    #
    # @!attribute [rw] root_id
    #   For nested stacks, the stack ID of the top-level stack to which the
    #   nested stack ultimately belongs.
    #
    #   For more information, see [Nested stacks][1] in the *CloudFormation
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html
    #   @return [String]
    #
    # @!attribute [rw] drift_information
    #   Summarizes information about whether a stack's actual configuration
    #   differs, or has *drifted*, from its expected configuration, as
    #   defined in the stack template and any values specified as template
    #   parameters. For more information, see [Detect unmanaged
    #   configuration changes to stacks and resources with drift
    #   detection][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html
    #   @return [Types::StackDriftInformationSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StackSummary AWS API Documentation
    #
    class StackSummary < Struct.new(
      :stack_id,
      :stack_name,
      :template_description,
      :creation_time,
      :last_updated_time,
      :deletion_time,
      :stack_status,
      :stack_status_reason,
      :parent_id,
      :root_id,
      :drift_information)
      SENSITIVE = []
      include Aws::Structure
    end

    # Another operation has been performed on this StackSet since the
    # specified operation was performed.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StaleRequestException AWS API Documentation
    #
    class StaleRequestException < Aws::EmptyStructure; end

    # @!attribute [rw] client_request_token
    #   A unique identifier for this `StartResourceScan` request. Specify
    #   this token if you plan to retry requests so that CloudFormation
    #   knows that you're not attempting to start a new resource scan.
    #   @return [String]
    #
    # @!attribute [rw] scan_filters
    #   The scan filters to use.
    #   @return [Array<Types::ScanFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StartResourceScanInput AWS API Documentation
    #
    class StartResourceScanInput < Struct.new(
      :client_request_token,
      :scan_filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_scan_id
    #   The Amazon Resource Name (ARN) of the resource scan. The format is
    #   `arn:${Partition}:cloudformation:${Region}:${Account}:resourceScan/${Id}`.
    #   An example is
    #   `arn:aws:cloudformation:us-east-1:123456789012:resourceScan/f5b490f7-7ed4-428a-aa06-31ff25db0772
    #   `.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StartResourceScanOutput AWS API Documentation
    #
    class StartResourceScanOutput < Struct.new(
      :resource_scan_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_set_name
    #   The name or unique ID of the StackSet that you want to stop the
    #   operation for.
    #   @return [String]
    #
    # @!attribute [rw] operation_id
    #   The ID of the stack operation.
    #   @return [String]
    #
    # @!attribute [rw] call_as
    #   Specifies whether you are acting as an account administrator in the
    #   organization's management account or as a delegated administrator
    #   in a member account. Valid only if the StackSet uses service-managed
    #   permissions.
    #
    #   By default, `SELF` is specified. Use `SELF` for StackSets with
    #   self-managed permissions.
    #
    #   * If you are signed in to the management account, specify `SELF`.
    #
    #   * If you are signed in to a delegated administrator account, specify
    #     `DELEGATED_ADMIN`.
    #
    #     Your Amazon Web Services account must be registered as a delegated
    #     administrator in the management account. For more information, see
    #     [Register a delegated administrator][1] in the *CloudFormation
    #     User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StopStackSetOperationInput AWS API Documentation
    #
    class StopStackSetOperationInput < Struct.new(
      :stack_set_name,
      :operation_id,
      :call_as)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StopStackSetOperationOutput AWS API Documentation
    #
    class StopStackSetOperationOutput < Aws::EmptyStructure; end

    # The Tag type enables you to specify a key-value pair that can be used
    # to store information about an CloudFormation stack.
    #
    # @!attribute [rw] key
    #   *Required*. A string used to identify this tag. You can specify a
    #   maximum of 128 characters for a tag key. Tags owned by Amazon Web
    #   Services have the reserved prefix: `aws:`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   *Required*. A string that contains the value for this tag. You can
    #   specify a maximum of 256 characters for a tag value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration details of a generated template.
    #
    # @!attribute [rw] deletion_policy
    #   The `DeletionPolicy` assigned to resources in the generated
    #   template. Supported values are:
    #
    #   * `DELETE` - delete all resources when the stack is deleted.
    #
    #   * `RETAIN` - retain all resources when the stack is deleted.
    #
    #   For more information, see [DeletionPolicy attribute][1] in the
    #   *CloudFormation User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-deletionpolicy.html
    #   @return [String]
    #
    # @!attribute [rw] update_replace_policy
    #   The `UpdateReplacePolicy` assigned to resources in the generated
    #   template. Supported values are:
    #
    #   * `DELETE` - delete all resources when the resource is replaced
    #     during an update operation.
    #
    #   * `RETAIN` - retain all resources when the resource is replaced
    #     during an update operation.
    #
    #   For more information, see [UpdateReplacePolicy attribute][1] in the
    #   *CloudFormation User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-updatereplacepolicy.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/TemplateConfiguration AWS API Documentation
    #
    class TemplateConfiguration < Struct.new(
      :deletion_policy,
      :update_replace_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # The TemplateParameter data type.
    #
    # @!attribute [rw] parameter_key
    #   The name associated with the parameter.
    #   @return [String]
    #
    # @!attribute [rw] default_value
    #   The default value associated with the parameter.
    #   @return [String]
    #
    # @!attribute [rw] no_echo
    #   Flag indicating whether the parameter should be displayed as plain
    #   text in logs and UIs.
    #   @return [Boolean]
    #
    # @!attribute [rw] description
    #   User defined description associated with the parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/TemplateParameter AWS API Documentation
    #
    class TemplateParameter < Struct.new(
      :parameter_key,
      :default_value,
      :no_echo,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of the progress of the template generation.
    #
    # @!attribute [rw] resources_succeeded
    #   The number of resources that succeeded the template generation.
    #   @return [Integer]
    #
    # @!attribute [rw] resources_failed
    #   The number of resources that failed the template generation.
    #   @return [Integer]
    #
    # @!attribute [rw] resources_processing
    #   The number of resources that are in-process for the template
    #   generation.
    #   @return [Integer]
    #
    # @!attribute [rw] resources_pending
    #   The number of resources that are still pending the template
    #   generation.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/TemplateProgress AWS API Documentation
    #
    class TemplateProgress < Struct.new(
      :resources_succeeded,
      :resources_failed,
      :resources_processing,
      :resources_pending)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of a generated template.
    #
    # @!attribute [rw] generated_template_id
    #   The Amazon Resource Name (ARN) of the generated template. The format
    #   is
    #   `arn:${Partition}:cloudformation:${Region}:${Account}:generatedtemplate/${Id}`.
    #   For example,
    #   `arn:aws:cloudformation:us-east-1:123456789012:generatedtemplate/2e8465c1-9a80-43ea-a3a3-4f2d692fe6dc
    #   `.
    #   @return [String]
    #
    # @!attribute [rw] generated_template_name
    #   The name of the generated template.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the template generation. Supported values are:
    #
    #   * `CreatePending` - the creation of the template is pending.
    #
    #   * `CreateInProgress` - the creation of the template is in progress.
    #
    #   * `DeletePending` - the deletion of the template is pending.
    #
    #   * `DeleteInProgress` - the deletion of the template is in progress.
    #
    #   * `UpdatePending` - the update of the template is pending.
    #
    #   * `UpdateInProgress` - the update of the template is in progress.
    #
    #   * `Failed` - the template operation failed.
    #
    #   * `Complete` - the template operation is complete.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the current template generation status. This will
    #   provide more details if a failure happened.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time the generated template was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The time the generated template was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] number_of_resources
    #   The number of resources in the generated template. This is a total
    #   of resources in pending, in-progress, completed, and failed states.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/TemplateSummary AWS API Documentation
    #
    class TemplateSummary < Struct.new(
      :generated_template_id,
      :generated_template_name,
      :status,
      :status_reason,
      :creation_time,
      :last_updated_time,
      :number_of_resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # Options for the `GetTemplateSummary` API action.
    #
    # @!attribute [rw] treat_unrecognized_resource_types_as_warnings
    #   If set to `True`, any unrecognized resource types generate warnings
    #   and not an error. Any unrecognized resource types are returned in
    #   the `Warnings` output parameter.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/TemplateSummaryConfig AWS API Documentation
    #
    class TemplateSummaryConfig < Struct.new(
      :treat_unrecognized_resource_types_as_warnings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the extension.
    #
    #   Conditional: You must specify `Arn`, or `TypeName` and `Type`.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the extension to test.
    #
    #   Conditional: You must specify `Arn`, or `TypeName` and `Type`.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The name of the extension to test.
    #
    #   Conditional: You must specify `Arn`, or `TypeName` and `Type`.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The version of the extension to test.
    #
    #   You can specify the version id with either `Arn`, or with `TypeName`
    #   and `Type`.
    #
    #   If you don't specify a version, CloudFormation uses the default
    #   version of the extension in this account and Region for testing.
    #   @return [String]
    #
    # @!attribute [rw] log_delivery_bucket
    #   The S3 bucket to which CloudFormation delivers the contract test
    #   execution logs.
    #
    #   CloudFormation delivers the logs by the time contract testing has
    #   completed and the extension has been assigned a test type status of
    #   `PASSED` or `FAILED`.
    #
    #   The user calling `TestType` must be able to access items in the
    #   specified S3 bucket. Specifically, the user needs the following
    #   permissions:
    #
    #   * `GetObject`
    #
    #   * `PutObject`
    #
    #   For more information, see [Actions, Resources, and Condition Keys
    #   for Amazon S3][1] in the *Identity and Access Management User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazons3.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/TestTypeInput AWS API Documentation
    #
    class TestTypeInput < Struct.new(
      :arn,
      :type,
      :type_name,
      :version_id,
      :log_delivery_bucket)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] type_version_arn
    #   The Amazon Resource Name (ARN) of the extension.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/TestTypeOutput AWS API Documentation
    #
    class TestTypeOutput < Struct.new(
      :type_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A client request token already exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/TokenAlreadyExistsException AWS API Documentation
    #
    class TokenAlreadyExistsException < Aws::EmptyStructure; end

    # Detailed information concerning the specification of a CloudFormation
    # extension in a given account and Region.
    #
    # For more information, see [Edit configuration data for extensions in
    # your account][1] in the *CloudFormation User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-set-configuration.html
    #
    # @!attribute [rw] arn
    #   The ARN for the configuration data, in this account and Region.
    #   @return [String]
    #
    # @!attribute [rw] alias
    #   The alias specified for this configuration, if one was specified
    #   when the configuration was set.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   A JSON string specifying the configuration data for the extension,
    #   in this account and Region.
    #
    #   If a configuration hasn't been set for a specified extension,
    #   CloudFormation returns `{}`.
    #   @return [String]
    #
    # @!attribute [rw] last_updated
    #   When the configuration data was last updated for this extension.
    #
    #   If a configuration hasn't been set for a specified extension,
    #   CloudFormation returns `null`.
    #   @return [Time]
    #
    # @!attribute [rw] type_arn
    #   The ARN for the extension, in this account and Region.
    #
    #   For public extensions, this will be the ARN assigned when you call
    #   the [ActivateType][1] API operation in this account and Region. For
    #   private extensions, this will be the ARN assigned when you call the
    #   [RegisterType][2] API operation in this account and Region.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ActivateType.html
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The name of the extension.
    #   @return [String]
    #
    # @!attribute [rw] is_default_configuration
    #   Whether this configuration data is the default configuration for the
    #   extension.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/TypeConfigurationDetails AWS API Documentation
    #
    class TypeConfigurationDetails < Struct.new(
      :arn,
      :alias,
      :configuration,
      :last_updated,
      :type_arn,
      :type_name,
      :is_default_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifying information for the configuration of a CloudFormation
    # extension.
    #
    # @!attribute [rw] type_arn
    #   The ARN for the extension, in this account and Region.
    #
    #   For public extensions, this will be the ARN assigned when you call
    #   the [ActivateType][1] API operation in this account and Region. For
    #   private extensions, this will be the ARN assigned when you call the
    #   [RegisterType][2] API operation in this account and Region.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ActivateType.html
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html
    #   @return [String]
    #
    # @!attribute [rw] type_configuration_alias
    #   The alias specified for this configuration, if one was specified
    #   when the configuration was set.
    #   @return [String]
    #
    # @!attribute [rw] type_configuration_arn
    #   The ARN for the configuration, in this account and Region.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of extension.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The name of the extension type to which this configuration applies.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/TypeConfigurationIdentifier AWS API Documentation
    #
    class TypeConfigurationIdentifier < Struct.new(
      :type_arn,
      :type_configuration_alias,
      :type_configuration_arn,
      :type,
      :type_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified extension configuration can't be found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/TypeConfigurationNotFoundException AWS API Documentation
    #
    class TypeConfigurationNotFoundException < Aws::EmptyStructure; end

    # Filter criteria to use in determining which extensions to return.
    #
    # @!attribute [rw] category
    #   The category of extensions to return.
    #
    #   * `REGISTERED`: Private extensions that have been registered for
    #     this account and Region.
    #
    #   * `ACTIVATED`: Public extensions that have been activated for this
    #     account and Region.
    #
    #   * `THIRD_PARTY`: Extensions available for use from publishers other
    #     than Amazon. This includes:
    #
    #     * Private extensions registered in the account.
    #
    #     * Public extensions from publishers other than Amazon, whether
    #       activated or not.
    #   * `AWS_TYPES`: Extensions available for use from Amazon.
    #   @return [String]
    #
    # @!attribute [rw] publisher_id
    #   The id of the publisher of the extension.
    #
    #   Extensions published by Amazon aren't assigned a publisher ID. Use
    #   the `AWS_TYPES` category to specify a list of types published by
    #   Amazon.
    #   @return [String]
    #
    # @!attribute [rw] type_name_prefix
    #   A prefix to use as a filter for results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/TypeFilters AWS API Documentation
    #
    class TypeFilters < Struct.new(
      :category,
      :publisher_id,
      :type_name_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified extension doesn't exist in the CloudFormation registry.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/TypeNotFoundException AWS API Documentation
    #
    class TypeNotFoundException < Aws::EmptyStructure; end

    # Contains summary information about the specified CloudFormation
    # extension.
    #
    # @!attribute [rw] type
    #   The kind of extension.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The name of the extension.
    #
    #   If you specified a `TypeNameAlias` when you call the
    #   [ActivateType][1] API operation in your account and Region,
    #   CloudFormation considers that alias as the type name.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ActivateType.html
    #   @return [String]
    #
    # @!attribute [rw] default_version_id
    #   The ID of the default version of the extension. The default version
    #   is used when the extension version isn't specified.
    #
    #   This applies only to private extensions you have registered in your
    #   account. For public extensions, both those provided by Amazon and
    #   published by third parties, CloudFormation returns `null`. For more
    #   information, see [RegisterType][1].
    #
    #   To set the default version of an extension, use
    #   SetTypeDefaultVersion.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html
    #   @return [String]
    #
    # @!attribute [rw] type_arn
    #   The ARN of the extension.
    #   @return [String]
    #
    # @!attribute [rw] last_updated
    #   When the specified extension version was registered. This applies
    #   only to:
    #
    #   * Private extensions you have registered in your account. For more
    #     information, see [RegisterType][1].
    #
    #   * Public extensions you have activated in your account with
    #     auto-update specified. For more information, see
    #     [ActivateType][2].
    #
    #   For all other extension types, CloudFormation returns `null`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ActivateType.html
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the extension.
    #   @return [String]
    #
    # @!attribute [rw] publisher_id
    #   The ID of the extension publisher, if the extension is published by
    #   a third party. Extensions published by Amazon don't return a
    #   publisher ID.
    #   @return [String]
    #
    # @!attribute [rw] original_type_name
    #   For public extensions that have been activated for this account and
    #   Region, the type name of the public extension.
    #
    #   If you specified a `TypeNameAlias` when enabling the extension in
    #   this account and Region, CloudFormation treats that alias as the
    #   extension's type name within the account and Region, not the type
    #   name of the public extension. For more information, see [Use aliases
    #   to refer to extensions][1] in the *CloudFormation User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-public.html#registry-public-enable-alias
    #   @return [String]
    #
    # @!attribute [rw] public_version_number
    #   For public extensions that have been activated for this account and
    #   Region, the version of the public extension to be used for
    #   CloudFormation operations in this account and Region.
    #
    #   How you specified `AutoUpdate` when enabling the extension affects
    #   whether CloudFormation automatically updates the extension in this
    #   account and Region when a new version is released. For more
    #   information, see [Automatically use new versions of extensions][1]
    #   in the *CloudFormation User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-public.html#registry-public-enable-auto
    #   @return [String]
    #
    # @!attribute [rw] latest_public_version
    #   For public extensions that have been activated for this account and
    #   Region, the latest version of the public extension *that is
    #   available*. For any extensions other than activated third-party
    #   extensions, CloudFormation returns `null`.
    #
    #   How you specified `AutoUpdate` when enabling the extension affects
    #   whether CloudFormation automatically updates the extension in this
    #   account and Region when a new version is released. For more
    #   information, see [Automatically use new versions of extensions][1]
    #   in the *CloudFormation User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-public.html#registry-public-enable-auto
    #   @return [String]
    #
    # @!attribute [rw] publisher_identity
    #   The service used to verify the publisher identity.
    #
    #   For more information, see [Publishing extensions to make them
    #   available for public use][1] in the *CloudFormation Command Line
    #   Interface (CLI) User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html
    #   @return [String]
    #
    # @!attribute [rw] publisher_name
    #   The publisher name, as defined in the public profile for that
    #   publisher in the service used to verify the publisher identity.
    #   @return [String]
    #
    # @!attribute [rw] is_activated
    #   Whether the extension is activated for this account and Region.
    #
    #   This applies only to third-party public extensions. Extensions
    #   published by Amazon are activated by default.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/TypeSummary AWS API Documentation
    #
    class TypeSummary < Struct.new(
      :type,
      :type_name,
      :default_version_id,
      :type_arn,
      :last_updated,
      :description,
      :publisher_id,
      :original_type_name,
      :public_version_number,
      :latest_public_version,
      :publisher_identity,
      :publisher_name,
      :is_activated)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a specific version of a
    # CloudFormation extension.
    #
    # @!attribute [rw] type
    #   The kind of extension.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The name of the extension.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The ID of a specific version of the extension. The version ID is the
    #   value at the end of the ARN assigned to the extension version when
    #   it's registered.
    #   @return [String]
    #
    # @!attribute [rw] is_default_version
    #   Whether the specified extension version is set as the default
    #   version.
    #
    #   This applies only to private extensions you have registered in your
    #   account, and extensions published by Amazon. For public third-party
    #   extensions, CloudFormation returns `null`.
    #   @return [Boolean]
    #
    # @!attribute [rw] arn
    #   The ARN of the extension version.
    #   @return [String]
    #
    # @!attribute [rw] time_created
    #   When the version was registered.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the extension version.
    #   @return [String]
    #
    # @!attribute [rw] public_version_number
    #   For public extensions that have been activated for this account and
    #   Region, the version of the public extension to be used for
    #   CloudFormation operations in this account and Region. For any
    #   extensions other than activated third-party extensions,
    #   CloudFormation returns `null`.
    #
    #   How you specified `AutoUpdate` when enabling the extension affects
    #   whether CloudFormation automatically updates the extension in this
    #   account and Region when a new version is released. For more
    #   information, see [Automatically use new versions of extensions][1]
    #   in the *CloudFormation User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-public.html#registry-public-enable-auto
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/TypeVersionSummary AWS API Documentation
    #
    class TypeVersionSummary < Struct.new(
      :type,
      :type_name,
      :version_id,
      :is_default_version,
      :arn,
      :time_created,
      :description,
      :public_version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] generated_template_name
    #   The name or Amazon Resource Name (ARN) of a generated template.
    #   @return [String]
    #
    # @!attribute [rw] new_generated_template_name
    #   An optional new name to assign to the generated template.
    #   @return [String]
    #
    # @!attribute [rw] add_resources
    #   An optional list of resources to be added to the generated template.
    #   @return [Array<Types::ResourceDefinition>]
    #
    # @!attribute [rw] remove_resources
    #   A list of logical ids for resources to remove from the generated
    #   template.
    #   @return [Array<String>]
    #
    # @!attribute [rw] refresh_all_resources
    #   If `true`, update the resource properties in the generated template
    #   with their current live state. This feature is useful when the
    #   resource properties in your generated a template does not reflect
    #   the live state of the resource properties. This happens when a user
    #   update the resource properties after generating a template.
    #   @return [Boolean]
    #
    # @!attribute [rw] template_configuration
    #   The configuration details of the generated template, including the
    #   `DeletionPolicy` and `UpdateReplacePolicy`.
    #   @return [Types::TemplateConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/UpdateGeneratedTemplateInput AWS API Documentation
    #
    class UpdateGeneratedTemplateInput < Struct.new(
      :generated_template_name,
      :new_generated_template_name,
      :add_resources,
      :remove_resources,
      :refresh_all_resources,
      :template_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] generated_template_id
    #   The Amazon Resource Name (ARN) of the generated template. The format
    #   is
    #   `arn:${Partition}:cloudformation:${Region}:${Account}:generatedtemplate/${Id}`.
    #   For example,
    #   `arn:aws:cloudformation:us-east-1:123456789012:generatedtemplate/2e8465c1-9a80-43ea-a3a3-4f2d692fe6dc
    #   `.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/UpdateGeneratedTemplateOutput AWS API Documentation
    #
    class UpdateGeneratedTemplateOutput < Struct.new(
      :generated_template_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for an UpdateStack action.
    #
    # @!attribute [rw] stack_name
    #   The name or unique stack ID of the stack to update.
    #   @return [String]
    #
    # @!attribute [rw] template_body
    #   Structure that contains the template body with a minimum length of 1
    #   byte and a maximum length of 51,200 bytes.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `TemplateBody`, `TemplateURL`, or set the `UsePreviousTemplate` to
    #   `true`.
    #   @return [String]
    #
    # @!attribute [rw] template_url
    #   The URL of a file that contains the template body. The URL must
    #   point to a template that's located in an Amazon S3 bucket or a
    #   Systems Manager document. The location for an Amazon S3 bucket must
    #   start with `https://`.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `TemplateBody`, `TemplateURL`, or set the `UsePreviousTemplate` to
    #   `true`.
    #   @return [String]
    #
    # @!attribute [rw] use_previous_template
    #   Reuse the existing template that is associated with the stack that
    #   you are updating.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `TemplateBody`, `TemplateURL`, or set the `UsePreviousTemplate` to
    #   `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] stack_policy_during_update_body
    #   Structure that contains the temporary overriding stack policy body.
    #   You can specify either the `StackPolicyDuringUpdateBody` or the
    #   `StackPolicyDuringUpdateURL` parameter, but not both.
    #
    #   If you want to update protected resources, specify a temporary
    #   overriding stack policy during this update. If you don't specify a
    #   stack policy, the current policy that is associated with the stack
    #   will be used.
    #   @return [String]
    #
    # @!attribute [rw] stack_policy_during_update_url
    #   Location of a file that contains the temporary overriding stack
    #   policy. The URL must point to a policy (max size: 16KB) located in
    #   an S3 bucket in the same Region as the stack. The location for an
    #   Amazon S3 bucket must start with `https://`. URLs from S3 static
    #   websites are not supported.
    #
    #   You can specify either the `StackPolicyDuringUpdateBody` or the
    #   `StackPolicyDuringUpdateURL` parameter, but not both.
    #
    #   If you want to update protected resources, specify a temporary
    #   overriding stack policy during this update. If you don't specify a
    #   stack policy, the current policy that is associated with the stack
    #   will be used.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A list of `Parameter` structures that specify input parameters for
    #   the stack. For more information, see the [Parameter][1] data type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html
    #   @return [Array<Types::Parameter>]
    #
    # @!attribute [rw] capabilities
    #   In some cases, you must explicitly acknowledge that your stack
    #   template contains certain capabilities in order for CloudFormation
    #   to update the stack.
    #
    #   * `CAPABILITY_IAM` and `CAPABILITY_NAMED_IAM`
    #
    #     Some stack templates might include resources that can affect
    #     permissions in your Amazon Web Services account, for example, by
    #     creating new IAM users. For those stacks, you must explicitly
    #     acknowledge this by specifying one of these capabilities.
    #
    #     The following IAM resources require you to specify either the
    #     `CAPABILITY_IAM` or `CAPABILITY_NAMED_IAM` capability.
    #
    #     * If you have IAM resources, you can specify either capability.
    #
    #     * If you have IAM resources with custom names, you *must* specify
    #       `CAPABILITY_NAMED_IAM`.
    #
    #     * If you don't specify either of these capabilities,
    #       CloudFormation returns an `InsufficientCapabilities` error.
    #     If your stack template contains these resources, we suggest that
    #     you review all permissions associated with them and edit their
    #     permissions if necessary.
    #
    #     * [ AWS::IAM::AccessKey][1]
    #
    #     * [ AWS::IAM::Group][2]
    #
    #     * [AWS::IAM::InstanceProfile][3]
    #
    #     * [ AWS::IAM::ManagedPolicy][4]
    #
    #     * [AWS::IAM::Policy][5]
    #
    #     * [ AWS::IAM::Role][6]
    #
    #     * [ AWS::IAM::User][7]
    #
    #     * [AWS::IAM::UserToGroupAddition][8]
    #     For more information, see [Acknowledging IAM resources in
    #     CloudFormation templates][9].
    #
    #   * `CAPABILITY_AUTO_EXPAND`
    #
    #     Some template contain macros. Macros perform custom processing on
    #     templates; this can include simple actions like find-and-replace
    #     operations, all the way to extensive transformations of entire
    #     templates. Because of this, users typically create a change set
    #     from the processed template, so that they can review the changes
    #     resulting from the macros before actually updating the stack. If
    #     your stack template contains one or more macros, and you choose to
    #     update a stack directly from the processed template, without first
    #     reviewing the resulting changes in a change set, you must
    #     acknowledge this capability. This includes the [AWS::Include][10]
    #     and [AWS::Serverless][11] transforms, which are macros hosted by
    #     CloudFormation.
    #
    #     If you want to update a stack from a stack template that contains
    #     macros *and* nested stacks, you must update the stack directly
    #     from the template using this capability.
    #
    #     You should only update stacks directly from a stack template that
    #     contains macros if you know what processing the macro performs.
    #
    #      Each macro relies on an underlying Lambda service function for
    #     processing stack templates. Be aware that the Lambda function
    #     owner can update the function operation without CloudFormation
    #     being notified.
    #
    #     For more information, see [Perform custom processing on
    #     CloudFormation templates with template macros][12].
    #
    #   <note markdown="1"> Only one of the `Capabilities` and `ResourceType` parameters can be
    #   specified.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-accesskey.html
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-group.html
    #   [3]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-instanceprofile.html
    #   [4]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-managedpolicy.html
    #   [5]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-policy.html
    #   [6]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-role.html
    #   [7]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-user.html
    #   [8]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-usertogroupaddition.html
    #   [9]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/control-access-with-iam.html#using-iam-capabilities
    #   [10]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-include.html
    #   [11]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html
    #   [12]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_types
    #   The template resource types that you have permissions to work with
    #   for this update stack action, such as `AWS::EC2::Instance`,
    #   `AWS::EC2::*`, or `Custom::MyCustomInstance`.
    #
    #   If the list of resource types doesn't include a resource that
    #   you're updating, the stack update fails. By default, CloudFormation
    #   grants permissions to all resource types. IAM uses this parameter
    #   for CloudFormation-specific condition keys in IAM policies. For more
    #   information, see [Control access with Identity and Access
    #   Management][1].
    #
    #   <note markdown="1"> Only one of the `Capabilities` and `ResourceType` parameters can be
    #   specified.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/control-access-with-iam.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that CloudFormation
    #   assumes to update the stack. CloudFormation uses the role's
    #   credentials to make calls on your behalf. CloudFormation always uses
    #   this role for all future operations on the stack. Provided that
    #   users have permission to operate on the stack, CloudFormation uses
    #   this role even if the users don't have permission to pass it.
    #   Ensure that the role grants least privilege.
    #
    #   If you don't specify a value, CloudFormation uses the role that was
    #   previously associated with the stack. If no role is available,
    #   CloudFormation uses a temporary session that is generated from your
    #   user credentials.
    #   @return [String]
    #
    # @!attribute [rw] rollback_configuration
    #   The rollback triggers for CloudFormation to monitor during stack
    #   creation and updating operations, and for the specified monitoring
    #   period afterwards.
    #   @return [Types::RollbackConfiguration]
    #
    # @!attribute [rw] stack_policy_body
    #   Structure that contains a new stack policy body. You can specify
    #   either the `StackPolicyBody` or the `StackPolicyURL` parameter, but
    #   not both.
    #
    #   You might update the stack policy, for example, in order to protect
    #   a new resource that you created during a stack update. If you don't
    #   specify a stack policy, the current policy that is associated with
    #   the stack is unchanged.
    #   @return [String]
    #
    # @!attribute [rw] stack_policy_url
    #   Location of a file that contains the updated stack policy. The URL
    #   must point to a policy (max size: 16KB) located in an S3 bucket in
    #   the same Region as the stack. The location for an Amazon S3 bucket
    #   must start with `https://`. URLs from S3 static websites are not
    #   supported.
    #
    #   You can specify either the `StackPolicyBody` or the `StackPolicyURL`
    #   parameter, but not both.
    #
    #   You might update the stack policy, for example, in order to protect
    #   a new resource that you created during a stack update. If you don't
    #   specify a stack policy, the current policy that is associated with
    #   the stack is unchanged.
    #   @return [String]
    #
    # @!attribute [rw] notification_arns
    #   Amazon Simple Notification Service topic Amazon Resource Names
    #   (ARNs) that CloudFormation associates with the stack. Specify an
    #   empty list to remove all notification topics.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Key-value pairs to associate with this stack. CloudFormation also
    #   propagates these tags to supported resources in the stack. You can
    #   specify a maximum number of 50 tags.
    #
    #   If you don't specify this parameter, CloudFormation doesn't modify
    #   the stack's tags. If you specify an empty value, CloudFormation
    #   removes all associated tags.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] disable_rollback
    #   Preserve the state of previously provisioned resources when an
    #   operation fails.
    #
    #   Default: `False`
    #   @return [Boolean]
    #
    # @!attribute [rw] client_request_token
    #   A unique identifier for this `UpdateStack` request. Specify this
    #   token if you plan to retry requests so that CloudFormation knows
    #   that you're not attempting to update a stack with the same name.
    #   You might retry `UpdateStack` requests to ensure that CloudFormation
    #   successfully received them.
    #
    #   All events triggered by a given stack operation are assigned the
    #   same client request token, which you can use to track operations.
    #   For example, if you execute a `CreateStack` operation with the token
    #   `token1`, then all the `StackEvents` generated by that operation
    #   will have `ClientRequestToken` set as `token1`.
    #
    #   In the console, stack operations display the client request token on
    #   the Events tab. Stack operations that are initiated from the console
    #   use the token format *Console-StackOperation-ID*, which helps you
    #   easily identify the stack operation . For example, if you create a
    #   stack using the console, each stack event would be assigned the same
    #   token in the following format:
    #   `Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002`.
    #   @return [String]
    #
    # @!attribute [rw] retain_except_on_create
    #   When set to `true`, newly created resources are deleted when the
    #   operation rolls back. This includes newly created resources marked
    #   with a deletion policy of `Retain`.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/UpdateStackInput AWS API Documentation
    #
    class UpdateStackInput < Struct.new(
      :stack_name,
      :template_body,
      :template_url,
      :use_previous_template,
      :stack_policy_during_update_body,
      :stack_policy_during_update_url,
      :parameters,
      :capabilities,
      :resource_types,
      :role_arn,
      :rollback_configuration,
      :stack_policy_body,
      :stack_policy_url,
      :notification_arns,
      :tags,
      :disable_rollback,
      :client_request_token,
      :retain_except_on_create)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_set_name
    #   The name or unique ID of the StackSet associated with the stack
    #   instances.
    #   @return [String]
    #
    # @!attribute [rw] accounts
    #   \[Self-managed permissions\] The account IDs of one or more Amazon
    #   Web Services accounts in which you want to update parameter values
    #   for stack instances. The overridden parameter values will be applied
    #   to all stack instances in the specified accounts and Amazon Web
    #   Services Regions.
    #
    #   You can specify `Accounts` or `DeploymentTargets`, but not both.
    #   @return [Array<String>]
    #
    # @!attribute [rw] deployment_targets
    #   \[Service-managed permissions\] The Organizations accounts in which
    #   you want to update parameter values for stack instances. If your
    #   update targets OUs, the overridden parameter values only apply to
    #   the accounts that are currently in the target OUs and their child
    #   OUs. Accounts added to the target OUs and their child OUs in the
    #   future won't use the overridden values.
    #
    #   You can specify `Accounts` or `DeploymentTargets`, but not both.
    #   @return [Types::DeploymentTargets]
    #
    # @!attribute [rw] regions
    #   The names of one or more Amazon Web Services Regions in which you
    #   want to update parameter values for stack instances. The overridden
    #   parameter values will be applied to all stack instances in the
    #   specified accounts and Amazon Web Services Regions.
    #   @return [Array<String>]
    #
    # @!attribute [rw] parameter_overrides
    #   A list of input parameters whose values you want to update for the
    #   specified stack instances.
    #
    #   Any overridden parameter values will be applied to all stack
    #   instances in the specified accounts and Amazon Web Services Regions.
    #   When specifying parameters and their values, be aware of how
    #   CloudFormation sets parameter values during stack instance update
    #   operations:
    #
    #   * To override the current value for a parameter, include the
    #     parameter and specify its value.
    #
    #   * To leave an overridden parameter set to its present value, include
    #     the parameter and specify `UsePreviousValue` as `true`. (You
    #     can't specify both a value and set `UsePreviousValue` to `true`.)
    #
    #   * To set an overridden parameter back to the value specified in the
    #     StackSet, specify a parameter list but don't include the
    #     parameter in the list.
    #
    #   * To leave all parameters set to their present values, don't
    #     specify this property at all.
    #
    #   During StackSet updates, any parameter values overridden for a stack
    #   instance aren't updated, but retain their overridden value.
    #
    #   You can only override the parameter *values* that are specified in
    #   the StackSet. To add or delete a parameter itself, use
    #   `UpdateStackSet` to update the StackSet template. If you add a
    #   parameter to a template, before you can override the parameter value
    #   specified in the StackSet you must first use [UpdateStackSet][1] to
    #   update all stack instances with the updated template and parameter
    #   value specified in the StackSet. Once a stack instance has been
    #   updated with the new parameter, you can then override the parameter
    #   value using `UpdateStackInstances`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html
    #   @return [Array<Types::Parameter>]
    #
    # @!attribute [rw] operation_preferences
    #   Preferences for how CloudFormation performs this StackSet operation.
    #   @return [Types::StackSetOperationPreferences]
    #
    # @!attribute [rw] operation_id
    #   The unique identifier for this StackSet operation.
    #
    #   The operation ID also functions as an idempotency token, to ensure
    #   that CloudFormation performs the StackSet operation only once, even
    #   if you retry the request multiple times. You might retry StackSet
    #   operation requests to ensure that CloudFormation successfully
    #   received them.
    #
    #   If you don't specify an operation ID, the SDK generates one
    #   automatically.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] call_as
    #   \[Service-managed permissions\] Specifies whether you are acting as
    #   an account administrator in the organization's management account
    #   or as a delegated administrator in a member account.
    #
    #   By default, `SELF` is specified. Use `SELF` for StackSets with
    #   self-managed permissions.
    #
    #   * If you are signed in to the management account, specify `SELF`.
    #
    #   * If you are signed in to a delegated administrator account, specify
    #     `DELEGATED_ADMIN`.
    #
    #     Your Amazon Web Services account must be registered as a delegated
    #     administrator in the management account. For more information, see
    #     [Register a delegated administrator][1] in the *CloudFormation
    #     User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/UpdateStackInstancesInput AWS API Documentation
    #
    class UpdateStackInstancesInput < Struct.new(
      :stack_set_name,
      :accounts,
      :deployment_targets,
      :regions,
      :parameter_overrides,
      :operation_preferences,
      :operation_id,
      :call_as)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation_id
    #   The unique identifier for this StackSet operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/UpdateStackInstancesOutput AWS API Documentation
    #
    class UpdateStackInstancesOutput < Struct.new(
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output for an UpdateStack action.
    #
    # @!attribute [rw] stack_id
    #   Unique identifier of the stack.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/UpdateStackOutput AWS API Documentation
    #
    class UpdateStackOutput < Struct.new(
      :stack_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_set_name
    #   The name or unique ID of the StackSet that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A brief description of updates that you are making.
    #   @return [String]
    #
    # @!attribute [rw] template_body
    #   The structure that contains the template body, with a minimum length
    #   of 1 byte and a maximum length of 51,200 bytes.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `TemplateBody` or `TemplateURL`—or set `UsePreviousTemplate` to
    #   true.
    #   @return [String]
    #
    # @!attribute [rw] template_url
    #   The URL of a file that contains the template body. The URL must
    #   point to a template (maximum size: 1 MB) that is located in an
    #   Amazon S3 bucket or a Systems Manager document. The location for an
    #   Amazon S3 bucket must start with `https://`. S3 static website URLs
    #   are not supported.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `TemplateBody` or `TemplateURL`—or set `UsePreviousTemplate` to
    #   true.
    #   @return [String]
    #
    # @!attribute [rw] use_previous_template
    #   Use the existing template that's associated with the StackSet that
    #   you're updating.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `TemplateBody` or `TemplateURL`—or set `UsePreviousTemplate` to
    #   true.
    #   @return [Boolean]
    #
    # @!attribute [rw] parameters
    #   A list of input parameters for the StackSet template.
    #   @return [Array<Types::Parameter>]
    #
    # @!attribute [rw] capabilities
    #   In some cases, you must explicitly acknowledge that your stack
    #   template contains certain capabilities in order for CloudFormation
    #   to update the StackSet and its associated stack instances.
    #
    #   * `CAPABILITY_IAM` and `CAPABILITY_NAMED_IAM`
    #
    #     Some stack templates might include resources that can affect
    #     permissions in your Amazon Web Services account, for example, by
    #     creating new IAM users. For those stacks sets, you must explicitly
    #     acknowledge this by specifying one of these capabilities.
    #
    #     The following IAM resources require you to specify either the
    #     `CAPABILITY_IAM` or `CAPABILITY_NAMED_IAM` capability.
    #
    #     * If you have IAM resources, you can specify either capability.
    #
    #     * If you have IAM resources with custom names, you *must* specify
    #       `CAPABILITY_NAMED_IAM`.
    #
    #     * If you don't specify either of these capabilities,
    #       CloudFormation returns an `InsufficientCapabilities` error.
    #     If your stack template contains these resources, we recommend that
    #     you review all permissions associated with them and edit their
    #     permissions if necessary.
    #
    #     * [AWS::IAM::AccessKey][1]
    #
    #     * [AWS::IAM::Group][2]
    #
    #     * [AWS::IAM::InstanceProfile][3]
    #
    #     * [AWS::IAM::Policy][4]
    #
    #     * [AWS::IAM::Role][5]
    #
    #     * [AWS::IAM::User][6]
    #
    #     * [AWS::IAM::UserToGroupAddition][7]
    #     For more information, see [Acknowledging IAM resources in
    #     CloudFormation templates][8].
    #
    #   * `CAPABILITY_AUTO_EXPAND`
    #
    #     Some templates reference macros. If your StackSet template
    #     references one or more macros, you must update the StackSet
    #     directly from the processed template, without first reviewing the
    #     resulting changes in a change set. To update the StackSet
    #     directly, you must acknowledge this capability. For more
    #     information, see [Perform custom processing on CloudFormation
    #     templates with template macros][9].
    #
    #     StackSets with service-managed permissions do not currently
    #     support the use of macros in templates. (This includes the
    #     [AWS::Include][10] and [AWS::Serverless][11] transforms, which are
    #     macros hosted by CloudFormation.) Even if you specify this
    #     capability for a StackSet with service-managed permissions, if you
    #     reference a macro in your template the StackSet operation will
    #     fail.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-accesskey.html
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-group.html
    #   [3]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-instanceprofile.html
    #   [4]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-policy.html
    #   [5]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-role.html
    #   [6]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-user.html
    #   [7]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-usertogroupaddition.html
    #   [8]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/control-access-with-iam.html#using-iam-capabilities
    #   [9]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html
    #   [10]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-include.html
    #   [11]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The key-value pairs to associate with this StackSet and the stacks
    #   created from it. CloudFormation also propagates these tags to
    #   supported resources that are created in the stacks. You can specify
    #   a maximum number of 50 tags.
    #
    #   If you specify tags for this parameter, those tags replace any list
    #   of tags that are currently associated with this StackSet. This
    #   means:
    #
    #   * If you don't specify this parameter, CloudFormation doesn't
    #     modify the stack's tags.
    #
    #   * If you specify *any* tags using this parameter, you must specify
    #     *all* the tags that you want associated with this StackSet, even
    #     tags you've specified before (for example, when creating the
    #     StackSet or during a previous update of the StackSet.). Any tags
    #     that you don't include in the updated list of tags are removed
    #     from the StackSet, and therefore from the stacks and resources as
    #     well.
    #
    #   * If you specify an empty value, CloudFormation removes all
    #     currently associated tags.
    #
    #   If you specify new tags as part of an `UpdateStackSet` action,
    #   CloudFormation checks to see if you have the required IAM permission
    #   to tag resources. If you omit tags that are currently associated
    #   with the StackSet from the list of tags you specify, CloudFormation
    #   assumes that you want to remove those tags from the StackSet, and
    #   checks to see if you have permission to untag resources. If you
    #   don't have the necessary permission(s), the entire `UpdateStackSet`
    #   action fails with an `access denied` error, and the StackSet is not
    #   updated.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] operation_preferences
    #   Preferences for how CloudFormation performs this StackSet operation.
    #   @return [Types::StackSetOperationPreferences]
    #
    # @!attribute [rw] administration_role_arn
    #   \[Self-managed permissions\] The Amazon Resource Name (ARN) of the
    #   IAM role to use to update this StackSet.
    #
    #   Specify an IAM role only if you are using customized administrator
    #   roles to control which users or groups can manage specific StackSets
    #   within the same administrator account. For more information, see
    #   [Grant self-managed permissions][1] in the *CloudFormation User
    #   Guide*.
    #
    #   If you specified a customized administrator role when you created
    #   the StackSet, you must specify a customized administrator role, even
    #   if it is the same customized administrator role used with this
    #   StackSet previously.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html
    #   @return [String]
    #
    # @!attribute [rw] execution_role_name
    #   \[Self-managed permissions\] The name of the IAM execution role to
    #   use to update the stack set. If you do not specify an execution
    #   role, CloudFormation uses the
    #   `AWSCloudFormationStackSetExecutionRole` role for the StackSet
    #   operation.
    #
    #   Specify an IAM role only if you are using customized execution roles
    #   to control which stack resources users and groups can include in
    #   their StackSets.
    #
    #   If you specify a customized execution role, CloudFormation uses that
    #   role to update the stack. If you do not specify a customized
    #   execution role, CloudFormation performs the update using the role
    #   previously associated with the StackSet, so long as you have
    #   permissions to perform operations on the StackSet.
    #   @return [String]
    #
    # @!attribute [rw] deployment_targets
    #   \[Service-managed permissions\] The Organizations accounts in which
    #   to update associated stack instances.
    #
    #   To update all the stack instances associated with this StackSet, do
    #   not specify `DeploymentTargets` or `Regions`.
    #
    #   If the StackSet update includes changes to the template (that is, if
    #   `TemplateBody` or `TemplateURL` is specified), or the `Parameters`,
    #   CloudFormation marks all stack instances with a status of `OUTDATED`
    #   prior to updating the stack instances in the specified accounts and
    #   Amazon Web Services Regions. If the StackSet update doesn't include
    #   changes to the template or parameters, CloudFormation updates the
    #   stack instances in the specified accounts and Regions, while leaving
    #   all other stack instances with their existing stack instance status.
    #   @return [Types::DeploymentTargets]
    #
    # @!attribute [rw] permission_model
    #   Describes how the IAM roles required for StackSet operations are
    #   created. You cannot modify `PermissionModel` if there are stack
    #   instances associated with your stack set.
    #
    #   * With `self-managed` permissions, you must create the administrator
    #     and execution roles required to deploy to target accounts. For
    #     more information, see [Grant self-managed permissions][1].
    #
    #   * With `service-managed` permissions, StackSets automatically
    #     creates the IAM roles required to deploy to accounts managed by
    #     Organizations. For more information, see [Activate trusted access
    #     for StackSets with Organizations][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-activate-trusted-access.html
    #   @return [String]
    #
    # @!attribute [rw] auto_deployment
    #   \[Service-managed permissions\] Describes whether StackSets
    #   automatically deploys to Organizations accounts that are added to a
    #   target organization or organizational unit (OU). For more
    #   information, see [Enable or disable automatic deployments for
    #   StackSets in Organizations][1] in the *CloudFormation User Guide*.
    #
    #   If you specify `AutoDeployment`, don't specify `DeploymentTargets`
    #   or `Regions`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-manage-auto-deployment.html
    #   @return [Types::AutoDeployment]
    #
    # @!attribute [rw] operation_id
    #   The unique ID for this StackSet operation.
    #
    #   The operation ID also functions as an idempotency token, to ensure
    #   that CloudFormation performs the StackSet operation only once, even
    #   if you retry the request multiple times. You might retry StackSet
    #   operation requests to ensure that CloudFormation successfully
    #   received them.
    #
    #   If you don't specify an operation ID, CloudFormation generates one
    #   automatically.
    #
    #   Repeating this StackSet operation with a new operation ID retries
    #   all stack instances whose status is `OUTDATED`.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] accounts
    #   \[Self-managed permissions\] The accounts in which to update
    #   associated stack instances. If you specify accounts, you must also
    #   specify the Amazon Web Services Regions in which to update StackSet
    #   instances.
    #
    #   To update *all* the stack instances associated with this StackSet,
    #   don't specify the `Accounts` or `Regions` properties.
    #
    #   If the StackSet update includes changes to the template (that is, if
    #   the `TemplateBody` or `TemplateURL` properties are specified), or
    #   the `Parameters` property, CloudFormation marks all stack instances
    #   with a status of `OUTDATED` prior to updating the stack instances in
    #   the specified accounts and Amazon Web Services Regions. If the
    #   StackSet update does not include changes to the template or
    #   parameters, CloudFormation updates the stack instances in the
    #   specified accounts and Amazon Web Services Regions, while leaving
    #   all other stack instances with their existing stack instance status.
    #   @return [Array<String>]
    #
    # @!attribute [rw] regions
    #   The Amazon Web Services Regions in which to update associated stack
    #   instances. If you specify Regions, you must also specify accounts in
    #   which to update StackSet instances.
    #
    #   To update *all* the stack instances associated with this StackSet,
    #   do not specify the `Accounts` or `Regions` properties.
    #
    #   If the StackSet update includes changes to the template (that is, if
    #   the `TemplateBody` or `TemplateURL` properties are specified), or
    #   the `Parameters` property, CloudFormation marks all stack instances
    #   with a status of `OUTDATED` prior to updating the stack instances in
    #   the specified accounts and Regions. If the StackSet update does not
    #   include changes to the template or parameters, CloudFormation
    #   updates the stack instances in the specified accounts and Regions,
    #   while leaving all other stack instances with their existing stack
    #   instance status.
    #   @return [Array<String>]
    #
    # @!attribute [rw] call_as
    #   \[Service-managed permissions\] Specifies whether you are acting as
    #   an account administrator in the organization's management account
    #   or as a delegated administrator in a member account.
    #
    #   By default, `SELF` is specified. Use `SELF` for StackSets with
    #   self-managed permissions.
    #
    #   * If you are signed in to the management account, specify `SELF`.
    #
    #   * If you are signed in to a delegated administrator account, specify
    #     `DELEGATED_ADMIN`.
    #
    #     Your Amazon Web Services account must be registered as a delegated
    #     administrator in the management account. For more information, see
    #     [Register a delegated administrator][1] in the *CloudFormation
    #     User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html
    #   @return [String]
    #
    # @!attribute [rw] managed_execution
    #   Describes whether CloudFormation performs non-conflicting operations
    #   concurrently and queues conflicting operations.
    #   @return [Types::ManagedExecution]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/UpdateStackSetInput AWS API Documentation
    #
    class UpdateStackSetInput < Struct.new(
      :stack_set_name,
      :description,
      :template_body,
      :template_url,
      :use_previous_template,
      :parameters,
      :capabilities,
      :tags,
      :operation_preferences,
      :administration_role_arn,
      :execution_role_name,
      :deployment_targets,
      :permission_model,
      :auto_deployment,
      :operation_id,
      :accounts,
      :regions,
      :call_as,
      :managed_execution)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation_id
    #   The unique ID for this StackSet operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/UpdateStackSetOutput AWS API Documentation
    #
    class UpdateStackSetOutput < Struct.new(
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] enable_termination_protection
    #   Whether to enable termination protection on the specified stack.
    #   @return [Boolean]
    #
    # @!attribute [rw] stack_name
    #   The name or unique ID of the stack for which you want to set
    #   termination protection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/UpdateTerminationProtectionInput AWS API Documentation
    #
    class UpdateTerminationProtectionInput < Struct.new(
      :enable_termination_protection,
      :stack_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stack_id
    #   The unique ID of the stack.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/UpdateTerminationProtectionOutput AWS API Documentation
    #
    class UpdateTerminationProtectionOutput < Struct.new(
      :stack_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for ValidateTemplate action.
    #
    # @!attribute [rw] template_body
    #   Structure that contains the template body with a minimum length of 1
    #   byte and a maximum length of 51,200 bytes.
    #
    #   Conditional: You must pass `TemplateURL` or `TemplateBody`. If both
    #   are passed, only `TemplateBody` is used.
    #   @return [String]
    #
    # @!attribute [rw] template_url
    #   The URL of a file that contains the template body. The URL must
    #   point to a template (max size: 1 MB) that is located in an Amazon S3
    #   bucket or a Systems Manager document. The location for an Amazon S3
    #   bucket must start with `https://`.
    #
    #   Conditional: You must pass `TemplateURL` or `TemplateBody`. If both
    #   are passed, only `TemplateBody` is used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ValidateTemplateInput AWS API Documentation
    #
    class ValidateTemplateInput < Struct.new(
      :template_body,
      :template_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output for ValidateTemplate action.
    #
    # @!attribute [rw] parameters
    #   A list of `TemplateParameter` structures.
    #   @return [Array<Types::TemplateParameter>]
    #
    # @!attribute [rw] description
    #   The description found within the template.
    #   @return [String]
    #
    # @!attribute [rw] capabilities
    #   The capabilities found within the template. If your template
    #   contains IAM resources, you must specify the CAPABILITY\_IAM or
    #   CAPABILITY\_NAMED\_IAM value for this parameter when you use the
    #   CreateStack or UpdateStack actions with your template; otherwise,
    #   those actions return an InsufficientCapabilities error.
    #
    #   For more information, see [Acknowledging IAM resources in
    #   CloudFormation templates][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/control-access-with-iam.html#using-iam-capabilities
    #   @return [Array<String>]
    #
    # @!attribute [rw] capabilities_reason
    #   The list of resources that generated the values in the
    #   `Capabilities` response element.
    #   @return [String]
    #
    # @!attribute [rw] declared_transforms
    #   A list of the transforms that are declared in the template.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ValidateTemplateOutput AWS API Documentation
    #
    class ValidateTemplateOutput < Struct.new(
      :parameters,
      :description,
      :capabilities,
      :capabilities_reason,
      :declared_transforms)
      SENSITIVE = []
      include Aws::Structure
    end

    # The warnings generated for a specific resource for this generated
    # template.
    #
    # @!attribute [rw] type
    #   The type of this warning. For more information, see [Resolve
    #   write-only properties][1] in the *CloudFormation User Guide*.
    #
    #   * `MUTUALLY_EXCLUSIVE_PROPERTIES` - The resource requires
    #     mutually-exclusive write-only properties. The IaC generator
    #     selects one set of mutually exclusive properties and converts the
    #     included properties into parameters. The parameter names have a
    #     suffix `OneOf` and the parameter descriptions indicate that the
    #     corresponding property can be replaced with other exclusive
    #     properties.
    #
    #   * `UNSUPPORTED_PROPERTIES` - Unsupported properties are present in
    #     the resource. One example of unsupported properties would be a
    #     required write-only property that is an array, because a parameter
    #     cannot be an array. Another example is an optional write-only
    #     property.
    #
    #   * `MUTUALLY_EXCLUSIVE_TYPES` - One or more required write-only
    #     properties are found in the resource, and the type of that
    #     property can be any of several types.
    #
    #   <note markdown="1"> Currently the resource and property reference documentation does not
    #   indicate if a property uses a type of `oneOf` or `anyOf`. You need
    #   to look at the resource provider schema.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/generate-IaC-write-only-properties.html
    #   @return [String]
    #
    # @!attribute [rw] properties
    #   The properties of the resource that are impacted by this warning.
    #   @return [Array<Types::WarningProperty>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/WarningDetail AWS API Documentation
    #
    class WarningDetail < Struct.new(
      :type,
      :properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # A specific property that is impacted by a warning.
    #
    # @!attribute [rw] property_path
    #   The path of the property. For example, if this is for the `S3Bucket`
    #   member of the `Code` property, the property path would be
    #   `Code/S3Bucket`.
    #   @return [String]
    #
    # @!attribute [rw] required
    #   If `true`, the specified property is required.
    #   @return [Boolean]
    #
    # @!attribute [rw] description
    #   The description of the property from the resource provider schema.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/WarningProperty AWS API Documentation
    #
    class WarningProperty < Struct.new(
      :property_path,
      :required,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains any warnings returned by the `GetTemplateSummary` API action.
    #
    # @!attribute [rw] unrecognized_resource_types
    #   A list of all of the unrecognized resource types. This is only
    #   returned if the `TemplateSummaryConfig` parameter has the
    #   `TreatUnrecognizedResourceTypesAsWarning` configuration set to
    #   `True`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/Warnings AWS API Documentation
    #
    class Warnings < Struct.new(
      :unrecognized_resource_types)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

