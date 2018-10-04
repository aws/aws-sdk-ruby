# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudFormation
  module Types

    # Structure that contains the results of the account gate function which
    # AWS CloudFormation invokes, if present, before proceeding with a stack
    # set operation in an account and region.
    #
    # For each account and region, AWS CloudFormation lets you specify a
    # Lamdba function that encapsulates any requirements that must be met
    # before CloudFormation can proceed with a stack set operation in that
    # account and region. CloudFormation invokes the function each time a
    # stack set operation is requested for that account and region; if the
    # function returns `FAILED`, CloudFormation cancels the operation in
    # that account and region, and sets the stack set operation result
    # status for that account and region to `FAILED`.
    #
    # For more information, see [Configuring a target account gate][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-account-gating.html
    #
    # @!attribute [rw] status
    #   The status of the account gate function.
    #
    #   * `SUCCEEDED`\: The account gate function has determined that the
    #     account and region passes any requirements for a stack set
    #     operation to occur. AWS CloudFormation proceeds with the stack
    #     operation in that account and region.
    #
    #   * `FAILED`\: The account gate function has determined that the
    #     account and region does not meet the requirements for a stack set
    #     operation to occur. AWS CloudFormation cancels the stack set
    #     operation in that account and region, and sets the stack set
    #     operation result status for that account and region to `FAILED`.
    #
    #   * `SKIPPED`\: AWS CloudFormation has skipped calling the account
    #     gate function for this account and region, for one of the
    #     following reasons:
    #
    #     * An account gate function has not been specified for the account
    #       and region. AWS CloudFormation proceeds with the stack set
    #       operation in this account and region.
    #
    #     * The `AWSCloudFormationStackSetExecutionRole` of the stack set
    #       adminstration account lacks permissions to invoke the function.
    #       AWS CloudFormation proceeds with the stack set operation in this
    #       account and region.
    #
    #     * Either no action is necessary, or no action is possible, on the
    #       stack. AWS CloudFormation skips the stack set operation in this
    #       account and region.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the account gate status assigned to this account and
    #   region for the stack set operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/AccountGateResult AWS API Documentation
    #
    class AccountGateResult < Struct.new(
      :status,
      :status_reason)
      include Aws::Structure
    end

    # The AccountLimit data type.
    #
    # @!attribute [rw] name
    #   The name of the account limit. Currently, the only account limit is
    #   `StackLimit`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value that is associated with the account limit name.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/AccountLimit AWS API Documentation
    #
    class AccountLimit < Struct.new(
      :name,
      :value)
      include Aws::Structure
    end

    # The input for the CancelUpdateStack action.
    #
    # @note When making an API call, you may pass CancelUpdateStackInput
    #   data as a hash:
    #
    #       {
    #         stack_name: "StackName", # required
    #         client_request_token: "ClientRequestToken",
    #       }
    #
    # @!attribute [rw] stack_name
    #   The name or the unique stack ID that is associated with the stack.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique identifier for this `CancelUpdateStack` request. Specify
    #   this token if you plan to retry requests so that AWS CloudFormation
    #   knows that you're not attempting to cancel an update on a stack
    #   with the same name. You might retry `CancelUpdateStack` requests to
    #   ensure that AWS CloudFormation successfully received them.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CancelUpdateStackInput AWS API Documentation
    #
    class CancelUpdateStackInput < Struct.new(
      :stack_name,
      :client_request_token)
      include Aws::Structure
    end

    # The `Change` structure describes the changes AWS CloudFormation will
    # perform if you execute the change set.
    #
    # @!attribute [rw] type
    #   The type of entity that AWS CloudFormation changes. Currently, the
    #   only entity type is `Resource`.
    #   @return [String]
    #
    # @!attribute [rw] resource_change
    #   A `ResourceChange` structure that describes the resource and action
    #   that AWS CloudFormation will perform.
    #   @return [Types::ResourceChange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/Change AWS API Documentation
    #
    class Change < Struct.new(
      :type,
      :resource_change)
      include Aws::Structure
    end

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
    #   the change set. If you can’t execute the change set, the status
    #   indicates why. For example, a change set might be in an
    #   `UNAVAILABLE` state because AWS CloudFormation is still creating it
    #   or in an `OBSOLETE` state because the stack was already updated.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The state of the change set, such as `CREATE_IN_PROGRESS`,
    #   `CREATE_COMPLETE`, or `FAILED`.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   A description of the change set's status. For example, if your
    #   change set is in the `FAILED` state, AWS CloudFormation shows the
    #   error message.
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
      :description)
      include Aws::Structure
    end

    # The input for the ContinueUpdateRollback action.
    #
    # @note When making an API call, you may pass ContinueUpdateRollbackInput
    #   data as a hash:
    #
    #       {
    #         stack_name: "StackNameOrId", # required
    #         role_arn: "RoleARN",
    #         resources_to_skip: ["ResourceToSkip"],
    #         client_request_token: "ClientRequestToken",
    #       }
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
    #   The Amazon Resource Name (ARN) of an AWS Identity and Access
    #   Management (IAM) role that AWS CloudFormation assumes to roll back
    #   the stack. AWS CloudFormation uses the role's credentials to make
    #   calls on your behalf. AWS CloudFormation always uses this role for
    #   all future operations on the stack. As long as users have permission
    #   to operate on the stack, AWS CloudFormation uses this role even if
    #   the users don't have permission to pass it. Ensure that the role
    #   grants least privilege.
    #
    #   If you don't specify a value, AWS CloudFormation uses the role that
    #   was previously associated with the stack. If no role is available,
    #   AWS CloudFormation uses a temporary session that is generated from
    #   your user credentials.
    #   @return [String]
    #
    # @!attribute [rw] resources_to_skip
    #   A list of the logical IDs of the resources that AWS CloudFormation
    #   skips during the continue update rollback operation. You can specify
    #   only resources that are in the `UPDATE_FAILED` state because a
    #   rollback failed. You can't specify resources that are in the
    #   `UPDATE_FAILED` state for other reasons, for example, because an
    #   update was cancelled. To check why a resource update failed, use the
    #   DescribeStackResources action, and view the resource status reason.
    #
    #   Specify this property to skip rolling back resources that AWS
    #   CloudFormation can't successfully roll back. We recommend that you
    #   [ troubleshoot][1] resources before skipping them. AWS
    #   CloudFormation sets the status of the specified resources to
    #   `UPDATE_COMPLETE` and continues to roll back the stack. After the
    #   rollback is complete, the state of the skipped resources will be
    #   inconsistent with the state of the resources in the stack template.
    #   Before performing another stack update, you must update the stack or
    #   resources to be consistent with each other. If you don't,
    #   subsequent stack updates might fail, and the stack will become
    #   unrecoverable.
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
    #   rollback operation with nested stacks, see [Using ResourcesToSkip to
    #   recover a nested stacks hierarchy][2].
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/troubleshooting.html#troubleshooting-errors-update-rollback-failed
    #   [2]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-continueupdaterollback.html#nested-stacks
    #   @return [Array<String>]
    #
    # @!attribute [rw] client_request_token
    #   A unique identifier for this `ContinueUpdateRollback` request.
    #   Specify this token if you plan to retry requests so that AWS
    #   CloudFormation knows that you're not attempting to continue the
    #   rollback to a stack with the same name. You might retry
    #   `ContinueUpdateRollback` requests to ensure that AWS CloudFormation
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
      include Aws::Structure
    end

    # The output for a ContinueUpdateRollback action.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ContinueUpdateRollbackOutput AWS API Documentation
    #
    class ContinueUpdateRollbackOutput < Aws::EmptyStructure; end

    # The input for the CreateChangeSet action.
    #
    # @note When making an API call, you may pass CreateChangeSetInput
    #   data as a hash:
    #
    #       {
    #         stack_name: "StackNameOrId", # required
    #         template_body: "TemplateBody",
    #         template_url: "TemplateURL",
    #         use_previous_template: false,
    #         parameters: [
    #           {
    #             parameter_key: "ParameterKey",
    #             parameter_value: "ParameterValue",
    #             use_previous_value: false,
    #             resolved_value: "ParameterValue",
    #           },
    #         ],
    #         capabilities: ["CAPABILITY_IAM"], # accepts CAPABILITY_IAM, CAPABILITY_NAMED_IAM
    #         resource_types: ["ResourceType"],
    #         role_arn: "RoleARN",
    #         rollback_configuration: {
    #           rollback_triggers: [
    #             {
    #               arn: "Arn", # required
    #               type: "Type", # required
    #             },
    #           ],
    #           monitoring_time_in_minutes: 1,
    #         },
    #         notification_arns: ["NotificationARN"],
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         change_set_name: "ChangeSetName", # required
    #         client_token: "ClientToken",
    #         description: "Description",
    #         change_set_type: "CREATE", # accepts CREATE, UPDATE
    #       }
    #
    # @!attribute [rw] stack_name
    #   The name or the unique ID of the stack for which you are creating a
    #   change set. AWS CloudFormation generates the change set by comparing
    #   this stack's information with the information that you submit, such
    #   as a modified template or different parameter input values.
    #   @return [String]
    #
    # @!attribute [rw] template_body
    #   A structure that contains the body of the revised template, with a
    #   minimum length of 1 byte and a maximum length of 51,200 bytes. AWS
    #   CloudFormation generates the change set by comparing this template
    #   with the template of the stack that you specified.
    #
    #   Conditional: You must specify only `TemplateBody` or `TemplateURL`.
    #   @return [String]
    #
    # @!attribute [rw] template_url
    #   The location of the file that contains the revised template. The URL
    #   must point to a template (max size: 460,800 bytes) that is located
    #   in an S3 bucket. AWS CloudFormation generates the change set by
    #   comparing this template with the stack that you specified.
    #
    #   Conditional: You must specify only `TemplateBody` or `TemplateURL`.
    #   @return [String]
    #
    # @!attribute [rw] use_previous_template
    #   Whether to reuse the template that is associated with the stack to
    #   create the change set.
    #   @return [Boolean]
    #
    # @!attribute [rw] parameters
    #   A list of `Parameter` structures that specify input parameters for
    #   the change set. For more information, see the [Parameter][1] data
    #   type.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html
    #   @return [Array<Types::Parameter>]
    #
    # @!attribute [rw] capabilities
    #   A list of values that you must specify before AWS CloudFormation can
    #   update certain stacks. Some stack templates might include resources
    #   that can affect permissions in your AWS account, for example, by
    #   creating new AWS Identity and Access Management (IAM) users. For
    #   those stacks, you must explicitly acknowledge their capabilities by
    #   specifying this parameter.
    #
    #   The only valid values are `CAPABILITY_IAM` and
    #   `CAPABILITY_NAMED_IAM`. The following resources require you to
    #   specify this parameter: [ AWS::IAM::AccessKey][1], [
    #   AWS::IAM::Group][2], [ AWS::IAM::InstanceProfile][3], [
    #   AWS::IAM::Policy][4], [ AWS::IAM::Role][5], [ AWS::IAM::User][6],
    #   and [ AWS::IAM::UserToGroupAddition][7]. If your stack template
    #   contains these resources, we recommend that you review all
    #   permissions associated with them and edit their permissions if
    #   necessary.
    #
    #   If you have IAM resources, you can specify either capability. If you
    #   have IAM resources with custom names, you must specify
    #   `CAPABILITY_NAMED_IAM`. If you don't specify this parameter, this
    #   action returns an `InsufficientCapabilities` error.
    #
    #   For more information, see [Acknowledging IAM Resources in AWS
    #   CloudFormation Templates][8].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html
    #   [2]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html
    #   [3]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html
    #   [4]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html
    #   [5]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html
    #   [6]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html
    #   [7]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html
    #   [8]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_types
    #   The template resource types that you have permissions to work with
    #   if you execute this change set, such as `AWS::EC2::Instance`,
    #   `AWS::EC2::*`, or `Custom::MyCustomInstance`.
    #
    #   If the list of resource types doesn't include a resource type that
    #   you're updating, the stack update fails. By default, AWS
    #   CloudFormation grants permissions to all resource types. AWS
    #   Identity and Access Management (IAM) uses this parameter for
    #   condition keys in IAM policies for AWS CloudFormation. For more
    #   information, see [Controlling Access with AWS Identity and Access
    #   Management][1] in the AWS CloudFormation User Guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an AWS Identity and Access
    #   Management (IAM) role that AWS CloudFormation assumes when executing
    #   the change set. AWS CloudFormation uses the role's credentials to
    #   make calls on your behalf. AWS CloudFormation uses this role for all
    #   future operations on the stack. As long as users have permission to
    #   operate on the stack, AWS CloudFormation uses this role even if the
    #   users don't have permission to pass it. Ensure that the role grants
    #   least privilege.
    #
    #   If you don't specify a value, AWS CloudFormation uses the role that
    #   was previously associated with the stack. If no role is available,
    #   AWS CloudFormation uses a temporary session that is generated from
    #   your user credentials.
    #   @return [String]
    #
    # @!attribute [rw] rollback_configuration
    #   The rollback triggers for AWS CloudFormation to monitor during stack
    #   creation and updating operations, and for the specified monitoring
    #   period afterwards.
    #   @return [Types::RollbackConfiguration]
    #
    # @!attribute [rw] notification_arns
    #   The Amazon Resource Names (ARNs) of Amazon Simple Notification
    #   Service (Amazon SNS) topics that AWS CloudFormation associates with
    #   the stack. To remove all associated notification topics, specify an
    #   empty list.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Key-value pairs to associate with this stack. AWS CloudFormation
    #   also propagates these tags to resources in the stack. You can
    #   specify a maximum of 50 tags.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] change_set_name
    #   The name of the change set. The name must be unique among all change
    #   sets that are associated with the specified stack.
    #
    #   A change set name can contain only alphanumeric, case sensitive
    #   characters and hyphens. It must start with an alphabetic character
    #   and cannot exceed 128 characters.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique identifier for this `CreateChangeSet` request. Specify this
    #   token if you plan to retry requests so that AWS CloudFormation knows
    #   that you're not attempting to create another change set with the
    #   same name. You might retry `CreateChangeSet` requests to ensure that
    #   AWS CloudFormation successfully received them.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description to help you identify this change set.
    #   @return [String]
    #
    # @!attribute [rw] change_set_type
    #   The type of change set operation. To create a change set for a new
    #   stack, specify `CREATE`. To create a change set for an existing
    #   stack, specify `UPDATE`.
    #
    #   If you create a change set for a new stack, AWS Cloudformation
    #   creates a stack with a unique stack ID, but no template or
    #   resources. The stack will be in the [ `REVIEW_IN_PROGRESS` ][1]
    #   state until you execute the change set.
    #
    #   By default, AWS CloudFormation specifies `UPDATE`. You can't use
    #   the `UPDATE` type to create a change set for a new stack or the
    #   `CREATE` type to create a change set for an existing stack.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-describing-stacks.html#d0e11995
    #   @return [String]
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
      :change_set_type)
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
      include Aws::Structure
    end

    # The input for CreateStack action.
    #
    # @note When making an API call, you may pass CreateStackInput
    #   data as a hash:
    #
    #       {
    #         stack_name: "StackName", # required
    #         template_body: "TemplateBody",
    #         template_url: "TemplateURL",
    #         parameters: [
    #           {
    #             parameter_key: "ParameterKey",
    #             parameter_value: "ParameterValue",
    #             use_previous_value: false,
    #             resolved_value: "ParameterValue",
    #           },
    #         ],
    #         disable_rollback: false,
    #         rollback_configuration: {
    #           rollback_triggers: [
    #             {
    #               arn: "Arn", # required
    #               type: "Type", # required
    #             },
    #           ],
    #           monitoring_time_in_minutes: 1,
    #         },
    #         timeout_in_minutes: 1,
    #         notification_arns: ["NotificationARN"],
    #         capabilities: ["CAPABILITY_IAM"], # accepts CAPABILITY_IAM, CAPABILITY_NAMED_IAM
    #         resource_types: ["ResourceType"],
    #         role_arn: "RoleARN",
    #         on_failure: "DO_NOTHING", # accepts DO_NOTHING, ROLLBACK, DELETE
    #         stack_policy_body: "StackPolicyBody",
    #         stack_policy_url: "StackPolicyURL",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         client_request_token: "ClientRequestToken",
    #         enable_termination_protection: false,
    #       }
    #
    # @!attribute [rw] stack_name
    #   The name that is associated with the stack. The name must be unique
    #   in the region in which you are creating the stack.
    #
    #   <note markdown="1"> A stack name can contain only alphanumeric characters (case
    #   sensitive) and hyphens. It must start with an alphabetic character
    #   and cannot be longer than 128 characters.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] template_body
    #   Structure containing the template body with a minimum length of 1
    #   byte and a maximum length of 51,200 bytes. For more information, go
    #   to [Template Anatomy][1] in the AWS CloudFormation User Guide.
    #
    #   Conditional: You must specify either the `TemplateBody` or the
    #   `TemplateURL` parameter, but not both.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #   @return [String]
    #
    # @!attribute [rw] template_url
    #   Location of file containing the template body. The URL must point to
    #   a template (max size: 460,800 bytes) that is located in an Amazon S3
    #   bucket. For more information, go to the [Template Anatomy][1] in the
    #   AWS CloudFormation User Guide.
    #
    #   Conditional: You must specify either the `TemplateBody` or the
    #   `TemplateURL` parameter, but not both.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A list of `Parameter` structures that specify input parameters for
    #   the stack. For more information, see the [Parameter][1] data type.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html
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
    #   The rollback triggers for AWS CloudFormation to monitor during stack
    #   creation and updating operations, and for the specified monitoring
    #   period afterwards.
    #   @return [Types::RollbackConfiguration]
    #
    # @!attribute [rw] timeout_in_minutes
    #   The amount of time that can pass before the stack status becomes
    #   CREATE\_FAILED; if `DisableRollback` is not set or is set to
    #   `false`, the stack will be rolled back.
    #   @return [Integer]
    #
    # @!attribute [rw] notification_arns
    #   The Simple Notification Service (SNS) topic ARNs to publish stack
    #   related events. You can find your SNS topic ARNs using the SNS
    #   console or your Command Line Interface (CLI).
    #   @return [Array<String>]
    #
    # @!attribute [rw] capabilities
    #   A list of values that you must specify before AWS CloudFormation can
    #   create certain stacks. Some stack templates might include resources
    #   that can affect permissions in your AWS account, for example, by
    #   creating new AWS Identity and Access Management (IAM) users. For
    #   those stacks, you must explicitly acknowledge their capabilities by
    #   specifying this parameter.
    #
    #   The only valid values are `CAPABILITY_IAM` and
    #   `CAPABILITY_NAMED_IAM`. The following resources require you to
    #   specify this parameter: [ AWS::IAM::AccessKey][1], [
    #   AWS::IAM::Group][2], [ AWS::IAM::InstanceProfile][3], [
    #   AWS::IAM::Policy][4], [ AWS::IAM::Role][5], [ AWS::IAM::User][6],
    #   and [ AWS::IAM::UserToGroupAddition][7]. If your stack template
    #   contains these resources, we recommend that you review all
    #   permissions associated with them and edit their permissions if
    #   necessary.
    #
    #   If you have IAM resources, you can specify either capability. If you
    #   have IAM resources with custom names, you must specify
    #   `CAPABILITY_NAMED_IAM`. If you don't specify this parameter, this
    #   action returns an `InsufficientCapabilities` error.
    #
    #   For more information, see [Acknowledging IAM Resources in AWS
    #   CloudFormation Templates][8].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html
    #   [2]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html
    #   [3]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html
    #   [4]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html
    #   [5]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html
    #   [6]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html
    #   [7]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html
    #   [8]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_types
    #   The template resource types that you have permissions to work with
    #   for this create stack action, such as `AWS::EC2::Instance`,
    #   `AWS::EC2::*`, or `Custom::MyCustomInstance`. Use the following
    #   syntax to describe template resource types: `AWS::*` (for all AWS
    #   resource), `Custom::*` (for all custom resources),
    #   `Custom::logical_ID ` (for a specific custom resource),
    #   `AWS::service_name::*` (for all resources of a particular AWS
    #   service), and `AWS::service_name::resource_logical_ID ` (for a
    #   specific AWS resource).
    #
    #   If the list of resource types doesn't include a resource that
    #   you're creating, the stack creation fails. By default, AWS
    #   CloudFormation grants permissions to all resource types. AWS
    #   Identity and Access Management (IAM) uses this parameter for AWS
    #   CloudFormation-specific condition keys in IAM policies. For more
    #   information, see [Controlling Access with AWS Identity and Access
    #   Management][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an AWS Identity and Access
    #   Management (IAM) role that AWS CloudFormation assumes to create the
    #   stack. AWS CloudFormation uses the role's credentials to make calls
    #   on your behalf. AWS CloudFormation always uses this role for all
    #   future operations on the stack. As long as users have permission to
    #   operate on the stack, AWS CloudFormation uses this role even if the
    #   users don't have permission to pass it. Ensure that the role grants
    #   least privilege.
    #
    #   If you don't specify a value, AWS CloudFormation uses the role that
    #   was previously associated with the stack. If no role is available,
    #   AWS CloudFormation uses a temporary session that is generated from
    #   your user credentials.
    #   @return [String]
    #
    # @!attribute [rw] on_failure
    #   Determines what action will be taken if stack creation fails. This
    #   must be one of: DO\_NOTHING, ROLLBACK, or DELETE. You can specify
    #   either `OnFailure` or `DisableRollback`, but not both.
    #
    #   Default: `ROLLBACK`
    #   @return [String]
    #
    # @!attribute [rw] stack_policy_body
    #   Structure containing the stack policy body. For more information, go
    #   to [ Prevent Updates to Stack Resources][1] in the *AWS
    #   CloudFormation User Guide*. You can specify either the
    #   `StackPolicyBody` or the `StackPolicyURL` parameter, but not both.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html
    #   @return [String]
    #
    # @!attribute [rw] stack_policy_url
    #   Location of a file containing the stack policy. The URL must point
    #   to a policy (maximum size: 16 KB) located in an S3 bucket in the
    #   same region as the stack. You can specify either the
    #   `StackPolicyBody` or the `StackPolicyURL` parameter, but not both.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs to associate with this stack. AWS CloudFormation
    #   also propagates these tags to the resources created in the stack. A
    #   maximum number of 50 tags can be specified.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] client_request_token
    #   A unique identifier for this `CreateStack` request. Specify this
    #   token if you plan to retry requests so that AWS CloudFormation knows
    #   that you're not attempting to create a stack with the same name.
    #   You might retry `CreateStack` requests to ensure that AWS
    #   CloudFormation successfully received them.
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
    # @!attribute [rw] enable_termination_protection
    #   Whether to enable termination protection on the specified stack. If
    #   a user attempts to delete a stack with termination protection
    #   enabled, the operation fails and the stack remains unchanged. For
    #   more information, see [Protecting a Stack From Being Deleted][1] in
    #   the *AWS CloudFormation User Guide*. Termination protection is
    #   disabled on stacks by default.
    #
    #   For [nested stacks][2], termination protection is set on the root
    #   stack and cannot be changed directly on the nested stack.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html
    #   [2]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html
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
      :enable_termination_protection)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateStackInstancesInput
    #   data as a hash:
    #
    #       {
    #         stack_set_name: "StackSetName", # required
    #         accounts: ["Account"], # required
    #         regions: ["Region"], # required
    #         parameter_overrides: [
    #           {
    #             parameter_key: "ParameterKey",
    #             parameter_value: "ParameterValue",
    #             use_previous_value: false,
    #             resolved_value: "ParameterValue",
    #           },
    #         ],
    #         operation_preferences: {
    #           region_order: ["Region"],
    #           failure_tolerance_count: 1,
    #           failure_tolerance_percentage: 1,
    #           max_concurrent_count: 1,
    #           max_concurrent_percentage: 1,
    #         },
    #         operation_id: "ClientRequestToken",
    #       }
    #
    # @!attribute [rw] stack_set_name
    #   The name or unique ID of the stack set that you want to create stack
    #   instances from.
    #   @return [String]
    #
    # @!attribute [rw] accounts
    #   The names of one or more AWS accounts that you want to create stack
    #   instances in the specified region(s) for.
    #   @return [Array<String>]
    #
    # @!attribute [rw] regions
    #   The names of one or more regions where you want to create stack
    #   instances using the specified AWS account(s).
    #   @return [Array<String>]
    #
    # @!attribute [rw] parameter_overrides
    #   A list of stack set parameters whose values you want to override in
    #   the selected stack instances.
    #
    #   Any overridden parameter values will be applied to all stack
    #   instances in the specified accounts and regions. When specifying
    #   parameters and their values, be aware of how AWS CloudFormation sets
    #   parameter values during stack instance operations:
    #
    #   * To override the current value for a parameter, include the
    #     parameter and specify its value.
    #
    #   * To leave a parameter set to its present value, you can do one of
    #     the following:
    #
    #     * Do not include the parameter in the list.
    #
    #     * Include the parameter and specify `UsePreviousValue` as `true`.
    #       (You cannot specify both a value and set `UsePreviousValue` to
    #       `true`.)
    #
    #   * To set all overridden parameter back to the values specified in
    #     the stack set, specify a parameter list but do not include any
    #     parameters.
    #
    #   * To leave all parameters set to their present values, do not
    #     specify this property at all.
    #
    #   During stack set updates, any parameter values overridden for a
    #   stack instance are not updated, but retain their overridden value.
    #
    #   You can only override the parameter *values* that are specified in
    #   the stack set; to add or delete a parameter itself, use
    #   [UpdateStackSet][1] to update the stack set template.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html
    #   @return [Array<Types::Parameter>]
    #
    # @!attribute [rw] operation_preferences
    #   Preferences for how AWS CloudFormation performs this stack set
    #   operation.
    #   @return [Types::StackSetOperationPreferences]
    #
    # @!attribute [rw] operation_id
    #   The unique identifier for this stack set operation.
    #
    #   The operation ID also functions as an idempotency token, to ensure
    #   that AWS CloudFormation performs the stack set operation only once,
    #   even if you retry the request multiple times. You might retry stack
    #   set operation requests to ensure that AWS CloudFormation
    #   successfully received them.
    #
    #   If you don't specify an operation ID, the SDK generates one
    #   automatically.
    #
    #   Repeating this stack set operation with a new operation ID retries
    #   all stack instances whose status is `OUTDATED`.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateStackInstancesInput AWS API Documentation
    #
    class CreateStackInstancesInput < Struct.new(
      :stack_set_name,
      :accounts,
      :regions,
      :parameter_overrides,
      :operation_preferences,
      :operation_id)
      include Aws::Structure
    end

    # @!attribute [rw] operation_id
    #   The unique identifier for this stack set operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateStackInstancesOutput AWS API Documentation
    #
    class CreateStackInstancesOutput < Struct.new(
      :operation_id)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateStackSetInput
    #   data as a hash:
    #
    #       {
    #         stack_set_name: "StackSetName", # required
    #         description: "Description",
    #         template_body: "TemplateBody",
    #         template_url: "TemplateURL",
    #         parameters: [
    #           {
    #             parameter_key: "ParameterKey",
    #             parameter_value: "ParameterValue",
    #             use_previous_value: false,
    #             resolved_value: "ParameterValue",
    #           },
    #         ],
    #         capabilities: ["CAPABILITY_IAM"], # accepts CAPABILITY_IAM, CAPABILITY_NAMED_IAM
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         administration_role_arn: "RoleARN",
    #         execution_role_name: "ExecutionRoleName",
    #         client_request_token: "ClientRequestToken",
    #       }
    #
    # @!attribute [rw] stack_set_name
    #   The name to associate with the stack set. The name must be unique in
    #   the region where you create your stack set.
    #
    #   <note markdown="1"> A stack name can contain only alphanumeric characters
    #   (case-sensitive) and hyphens. It must start with an alphabetic
    #   character and can't be longer than 128 characters.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the stack set. You can use the description to
    #   identify the stack set's purpose or other important information.
    #   @return [String]
    #
    # @!attribute [rw] template_body
    #   The structure that contains the template body, with a minimum length
    #   of 1 byte and a maximum length of 51,200 bytes. For more
    #   information, see [Template Anatomy][1] in the AWS CloudFormation
    #   User Guide.
    #
    #   Conditional: You must specify either the TemplateBody or the
    #   TemplateURL parameter, but not both.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #   @return [String]
    #
    # @!attribute [rw] template_url
    #   The location of the file that contains the template body. The URL
    #   must point to a template (maximum size: 460,800 bytes) that's
    #   located in an Amazon S3 bucket. For more information, see [Template
    #   Anatomy][1] in the AWS CloudFormation User Guide.
    #
    #   Conditional: You must specify either the TemplateBody or the
    #   TemplateURL parameter, but not both.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The input parameters for the stack set template.
    #   @return [Array<Types::Parameter>]
    #
    # @!attribute [rw] capabilities
    #   A list of values that you must specify before AWS CloudFormation can
    #   create certain stack sets. Some stack set templates might include
    #   resources that can affect permissions in your AWS account—for
    #   example, by creating new AWS Identity and Access Management (IAM)
    #   users. For those stack sets, you must explicitly acknowledge their
    #   capabilities by specifying this parameter.
    #
    #   The only valid values are CAPABILITY\_IAM and
    #   CAPABILITY\_NAMED\_IAM. The following resources require you to
    #   specify this parameter:
    #
    #   * AWS::IAM::AccessKey
    #
    #   * AWS::IAM::Group
    #
    #   * AWS::IAM::InstanceProfile
    #
    #   * AWS::IAM::Policy
    #
    #   * AWS::IAM::Role
    #
    #   * AWS::IAM::User
    #
    #   * AWS::IAM::UserToGroupAddition
    #
    #   If your stack template contains these resources, we recommend that
    #   you review all permissions that are associated with them and edit
    #   their permissions if necessary.
    #
    #   If you have IAM resources, you can specify either capability. If you
    #   have IAM resources with custom names, you must specify
    #   CAPABILITY\_NAMED\_IAM. If you don't specify this parameter, this
    #   action returns an `InsufficientCapabilities` error.
    #
    #   For more information, see [Acknowledging IAM Resources in AWS
    #   CloudFormation Templates.][1]
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The key-value pairs to associate with this stack set and the stacks
    #   created from it. AWS CloudFormation also propagates these tags to
    #   supported resources that are created in the stacks. A maximum number
    #   of 50 tags can be specified.
    #
    #   If you specify tags as part of a `CreateStackSet` action, AWS
    #   CloudFormation checks to see if you have the required IAM permission
    #   to tag resources. If you don't, the entire `CreateStackSet` action
    #   fails with an `access denied` error, and the stack set is not
    #   created.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] administration_role_arn
    #   The Amazon Resource Number (ARN) of the IAM role to use to create
    #   this stack set.
    #
    #   Specify an IAM role only if you are using customized administrator
    #   roles to control which users or groups can manage specific stack
    #   sets within the same administrator account. For more information,
    #   see [Prerequisites: Granting Permissions for Stack Set
    #   Operations][1] in the *AWS CloudFormation User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html
    #   @return [String]
    #
    # @!attribute [rw] execution_role_name
    #   The name of the IAM execution role to use to create the stack set.
    #   If you do not specify an execution role, AWS CloudFormation uses the
    #   `AWSCloudFormationStackSetExecutionRole` role for the stack set
    #   operation.
    #
    #   Specify an IAM role only if you are using customized execution roles
    #   to control which stack resources users and groups can include in
    #   their stack sets.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique identifier for this `CreateStackSet` request. Specify this
    #   token if you plan to retry requests so that AWS CloudFormation knows
    #   that you're not attempting to create another stack set with the
    #   same name. You might retry `CreateStackSet` requests to ensure that
    #   AWS CloudFormation successfully received them.
    #
    #   If you don't specify an operation ID, the SDK generates one
    #   automatically.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateStackSetInput AWS API Documentation
    #
    class CreateStackSetInput < Struct.new(
      :stack_set_name,
      :description,
      :template_body,
      :template_url,
      :parameters,
      :capabilities,
      :tags,
      :administration_role_arn,
      :execution_role_name,
      :client_request_token)
      include Aws::Structure
    end

    # @!attribute [rw] stack_set_id
    #   The ID of the stack set that you're creating.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateStackSetOutput AWS API Documentation
    #
    class CreateStackSetOutput < Struct.new(
      :stack_set_id)
      include Aws::Structure
    end

    # The input for the DeleteChangeSet action.
    #
    # @note When making an API call, you may pass DeleteChangeSetInput
    #   data as a hash:
    #
    #       {
    #         change_set_name: "ChangeSetNameOrId", # required
    #         stack_name: "StackNameOrId",
    #       }
    #
    # @!attribute [rw] change_set_name
    #   The name or Amazon Resource Name (ARN) of the change set that you
    #   want to delete.
    #   @return [String]
    #
    # @!attribute [rw] stack_name
    #   If you specified the name of a change set to delete, specify the
    #   stack name or ID (ARN) that is associated with it.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DeleteChangeSetInput AWS API Documentation
    #
    class DeleteChangeSetInput < Struct.new(
      :change_set_name,
      :stack_name)
      include Aws::Structure
    end

    # The output for the DeleteChangeSet action.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DeleteChangeSetOutput AWS API Documentation
    #
    class DeleteChangeSetOutput < Aws::EmptyStructure; end

    # The input for DeleteStack action.
    #
    # @note When making an API call, you may pass DeleteStackInput
    #   data as a hash:
    #
    #       {
    #         stack_name: "StackName", # required
    #         retain_resources: ["LogicalResourceId"],
    #         role_arn: "RoleARN",
    #         client_request_token: "ClientRequestToken",
    #       }
    #
    # @!attribute [rw] stack_name
    #   The name or the unique stack ID that is associated with the stack.
    #   @return [String]
    #
    # @!attribute [rw] retain_resources
    #   For stacks in the `DELETE_FAILED` state, a list of resource logical
    #   IDs that are associated with the resources you want to retain.
    #   During deletion, AWS CloudFormation deletes the stack but does not
    #   delete the retained resources.
    #
    #   Retaining resources is useful when you cannot delete a resource,
    #   such as a non-empty S3 bucket, but you want to delete the stack.
    #   @return [Array<String>]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an AWS Identity and Access
    #   Management (IAM) role that AWS CloudFormation assumes to delete the
    #   stack. AWS CloudFormation uses the role's credentials to make calls
    #   on your behalf.
    #
    #   If you don't specify a value, AWS CloudFormation uses the role that
    #   was previously associated with the stack. If no role is available,
    #   AWS CloudFormation uses a temporary session that is generated from
    #   your user credentials.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique identifier for this `DeleteStack` request. Specify this
    #   token if you plan to retry requests so that AWS CloudFormation knows
    #   that you're not attempting to delete a stack with the same name.
    #   You might retry `DeleteStack` requests to ensure that AWS
    #   CloudFormation successfully received them.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DeleteStackInput AWS API Documentation
    #
    class DeleteStackInput < Struct.new(
      :stack_name,
      :retain_resources,
      :role_arn,
      :client_request_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteStackInstancesInput
    #   data as a hash:
    #
    #       {
    #         stack_set_name: "StackSetName", # required
    #         accounts: ["Account"], # required
    #         regions: ["Region"], # required
    #         operation_preferences: {
    #           region_order: ["Region"],
    #           failure_tolerance_count: 1,
    #           failure_tolerance_percentage: 1,
    #           max_concurrent_count: 1,
    #           max_concurrent_percentage: 1,
    #         },
    #         retain_stacks: false, # required
    #         operation_id: "ClientRequestToken",
    #       }
    #
    # @!attribute [rw] stack_set_name
    #   The name or unique ID of the stack set that you want to delete stack
    #   instances for.
    #   @return [String]
    #
    # @!attribute [rw] accounts
    #   The names of the AWS accounts that you want to delete stack
    #   instances for.
    #   @return [Array<String>]
    #
    # @!attribute [rw] regions
    #   The regions where you want to delete stack set instances.
    #   @return [Array<String>]
    #
    # @!attribute [rw] operation_preferences
    #   Preferences for how AWS CloudFormation performs this stack set
    #   operation.
    #   @return [Types::StackSetOperationPreferences]
    #
    # @!attribute [rw] retain_stacks
    #   Removes the stack instances from the specified stack set, but
    #   doesn't delete the stacks. You can't reassociate a retained stack
    #   or add an existing, saved stack to a new stack set.
    #
    #   For more information, see [Stack set operation options][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options
    #   @return [Boolean]
    #
    # @!attribute [rw] operation_id
    #   The unique identifier for this stack set operation.
    #
    #   If you don't specify an operation ID, the SDK generates one
    #   automatically.
    #
    #   The operation ID also functions as an idempotency token, to ensure
    #   that AWS CloudFormation performs the stack set operation only once,
    #   even if you retry the request multiple times. You can retry stack
    #   set operation requests to ensure that AWS CloudFormation
    #   successfully received them.
    #
    #   Repeating this stack set operation with a new operation ID retries
    #   all stack instances whose status is `OUTDATED`.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DeleteStackInstancesInput AWS API Documentation
    #
    class DeleteStackInstancesInput < Struct.new(
      :stack_set_name,
      :accounts,
      :regions,
      :operation_preferences,
      :retain_stacks,
      :operation_id)
      include Aws::Structure
    end

    # @!attribute [rw] operation_id
    #   The unique identifier for this stack set operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DeleteStackInstancesOutput AWS API Documentation
    #
    class DeleteStackInstancesOutput < Struct.new(
      :operation_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteStackSetInput
    #   data as a hash:
    #
    #       {
    #         stack_set_name: "StackSetName", # required
    #       }
    #
    # @!attribute [rw] stack_set_name
    #   The name or unique ID of the stack set that you're deleting. You
    #   can obtain this value by running ListStackSets.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DeleteStackSetInput AWS API Documentation
    #
    class DeleteStackSetInput < Struct.new(
      :stack_set_name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DeleteStackSetOutput AWS API Documentation
    #
    class DeleteStackSetOutput < Aws::EmptyStructure; end

    # The input for the DescribeAccountLimits action.
    #
    # @note When making an API call, you may pass DescribeAccountLimitsInput
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #       }
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
      include Aws::Structure
    end

    # The output for the DescribeAccountLimits action.
    #
    # @!attribute [rw] account_limits
    #   An account limit structure that contain a list of AWS CloudFormation
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
      include Aws::Structure
    end

    # The input for the DescribeChangeSet action.
    #
    # @note When making an API call, you may pass DescribeChangeSetInput
    #   data as a hash:
    #
    #       {
    #         change_set_name: "ChangeSetNameOrId", # required
    #         stack_name: "StackNameOrId",
    #         next_token: "NextToken",
    #       }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeChangeSetInput AWS API Documentation
    #
    class DescribeChangeSetInput < Struct.new(
      :change_set_name,
      :stack_name,
      :next_token)
      include Aws::Structure
    end

    # The output for the DescribeChangeSet action.
    #
    # @!attribute [rw] change_set_name
    #   The name of the change set.
    #   @return [String]
    #
    # @!attribute [rw] change_set_id
    #   The ARN of the change set.
    #   @return [String]
    #
    # @!attribute [rw] stack_id
    #   The ARN of the stack that is associated with the change set.
    #   @return [String]
    #
    # @!attribute [rw] stack_name
    #   The name of the stack that is associated with the change set.
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
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html
    #   @return [Array<Types::Parameter>]
    #
    # @!attribute [rw] creation_time
    #   The start time when the change set was created, in UTC.
    #   @return [Time]
    #
    # @!attribute [rw] execution_status
    #   If the change set execution status is `AVAILABLE`, you can execute
    #   the change set. If you can’t execute the change set, the status
    #   indicates why. For example, a change set might be in an
    #   `UNAVAILABLE` state because AWS CloudFormation is still creating it
    #   or in an `OBSOLETE` state because the stack was already updated.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the change set, such as `CREATE_IN_PROGRESS`,
    #   `CREATE_COMPLETE`, or `FAILED`.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   A description of the change set's status. For example, if your
    #   attempt to create a change set failed, AWS CloudFormation shows the
    #   error message.
    #   @return [String]
    #
    # @!attribute [rw] notification_arns
    #   The ARNs of the Amazon Simple Notification Service (Amazon SNS)
    #   topics that will be associated with the stack if you execute the
    #   change set.
    #   @return [Array<String>]
    #
    # @!attribute [rw] rollback_configuration
    #   The rollback triggers for AWS CloudFormation to monitor during stack
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
    #   A list of `Change` structures that describes the resources AWS
    #   CloudFormation changes if you execute the change set.
    #   @return [Array<Types::Change>]
    #
    # @!attribute [rw] next_token
    #   If the output exceeds 1 MB, a string that identifies the next page
    #   of changes. If there is no additional page, this value is null.
    #   @return [String]
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
      :next_token)
      include Aws::Structure
    end

    # The input for DescribeStackEvents action.
    #
    # @note When making an API call, you may pass DescribeStackEventsInput
    #   data as a hash:
    #
    #       {
    #         stack_name: "StackName",
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] stack_name
    #   The name or the unique stack ID that is associated with the stack,
    #   which are not always interchangeable:
    #
    #   * Running stacks: You can specify either the stack's name or its
    #     unique stack ID.
    #
    #   * Deleted stacks: You must specify the unique stack ID.
    #
    #   Default: There is no default value.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeStackInstanceInput
    #   data as a hash:
    #
    #       {
    #         stack_set_name: "StackSetName", # required
    #         stack_instance_account: "Account", # required
    #         stack_instance_region: "Region", # required
    #       }
    #
    # @!attribute [rw] stack_set_name
    #   The name or the unique stack ID of the stack set that you want to
    #   get stack instance information for.
    #   @return [String]
    #
    # @!attribute [rw] stack_instance_account
    #   The ID of an AWS account that's associated with this stack
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] stack_instance_region
    #   The name of a region that's associated with this stack instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackInstanceInput AWS API Documentation
    #
    class DescribeStackInstanceInput < Struct.new(
      :stack_set_name,
      :stack_instance_account,
      :stack_instance_region)
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
      include Aws::Structure
    end

    # The input for DescribeStackResource action.
    #
    # @note When making an API call, you may pass DescribeStackResourceInput
    #   data as a hash:
    #
    #       {
    #         stack_name: "StackName", # required
    #         logical_resource_id: "LogicalResourceId", # required
    #       }
    #
    # @!attribute [rw] stack_name
    #   The name or the unique stack ID that is associated with the stack,
    #   which are not always interchangeable:
    #
    #   * Running stacks: You can specify either the stack's name or its
    #     unique stack ID.
    #
    #   * Deleted stacks: You must specify the unique stack ID.
    #
    #   Default: There is no default value.
    #   @return [String]
    #
    # @!attribute [rw] logical_resource_id
    #   The logical name of the resource as specified in the template.
    #
    #   Default: There is no default value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackResourceInput AWS API Documentation
    #
    class DescribeStackResourceInput < Struct.new(
      :stack_name,
      :logical_resource_id)
      include Aws::Structure
    end

    # The output for a DescribeStackResource action.
    #
    # @!attribute [rw] stack_resource_detail
    #   A `StackResourceDetail` structure containing the description of the
    #   specified resource in the specified stack.
    #   @return [Types::StackResourceDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackResourceOutput AWS API Documentation
    #
    class DescribeStackResourceOutput < Struct.new(
      :stack_resource_detail)
      include Aws::Structure
    end

    # The input for DescribeStackResources action.
    #
    # @note When making an API call, you may pass DescribeStackResourcesInput
    #   data as a hash:
    #
    #       {
    #         stack_name: "StackName",
    #         logical_resource_id: "LogicalResourceId",
    #         physical_resource_id: "PhysicalResourceId",
    #       }
    #
    # @!attribute [rw] stack_name
    #   The name or the unique stack ID that is associated with the stack,
    #   which are not always interchangeable:
    #
    #   * Running stacks: You can specify either the stack's name or its
    #     unique stack ID.
    #
    #   * Deleted stacks: You must specify the unique stack ID.
    #
    #   Default: There is no default value.
    #
    #   Required: Conditional. If you do not specify `StackName`, you must
    #   specify `PhysicalResourceId`.
    #   @return [String]
    #
    # @!attribute [rw] logical_resource_id
    #   The logical name of the resource as specified in the template.
    #
    #   Default: There is no default value.
    #   @return [String]
    #
    # @!attribute [rw] physical_resource_id
    #   The name or unique identifier that corresponds to a physical
    #   instance ID of a resource supported by AWS CloudFormation.
    #
    #   For example, for an Amazon Elastic Compute Cloud (EC2) instance,
    #   `PhysicalResourceId` corresponds to the `InstanceId`. You can pass
    #   the EC2 `InstanceId` to `DescribeStackResources` to find which stack
    #   the instance belongs to and what other resources are part of the
    #   stack.
    #
    #   Required: Conditional. If you do not specify `PhysicalResourceId`,
    #   you must specify `StackName`.
    #
    #   Default: There is no default value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackResourcesInput AWS API Documentation
    #
    class DescribeStackResourcesInput < Struct.new(
      :stack_name,
      :logical_resource_id,
      :physical_resource_id)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeStackSetInput
    #   data as a hash:
    #
    #       {
    #         stack_set_name: "StackSetName", # required
    #       }
    #
    # @!attribute [rw] stack_set_name
    #   The name or unique ID of the stack set whose description you want.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackSetInput AWS API Documentation
    #
    class DescribeStackSetInput < Struct.new(
      :stack_set_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeStackSetOperationInput
    #   data as a hash:
    #
    #       {
    #         stack_set_name: "StackSetName", # required
    #         operation_id: "ClientRequestToken", # required
    #       }
    #
    # @!attribute [rw] stack_set_name
    #   The name or the unique stack ID of the stack set for the stack
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] operation_id
    #   The unique ID of the stack set operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackSetOperationInput AWS API Documentation
    #
    class DescribeStackSetOperationInput < Struct.new(
      :stack_set_name,
      :operation_id)
      include Aws::Structure
    end

    # @!attribute [rw] stack_set_operation
    #   The specified stack set operation.
    #   @return [Types::StackSetOperation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackSetOperationOutput AWS API Documentation
    #
    class DescribeStackSetOperationOutput < Struct.new(
      :stack_set_operation)
      include Aws::Structure
    end

    # @!attribute [rw] stack_set
    #   The specified stack set.
    #   @return [Types::StackSet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/DescribeStackSetOutput AWS API Documentation
    #
    class DescribeStackSetOutput < Struct.new(
      :stack_set)
      include Aws::Structure
    end

    # The input for DescribeStacks action.
    #
    # @note When making an API call, you may pass DescribeStacksInput
    #   data as a hash:
    #
    #       {
    #         stack_name: "StackName",
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] stack_name
    #   The name or the unique stack ID that is associated with the stack,
    #   which are not always interchangeable:
    #
    #   * Running stacks: You can specify either the stack's name or its
    #     unique stack ID.
    #
    #   * Deleted stacks: You must specify the unique stack ID.
    #
    #   Default: There is no default value.
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
      include Aws::Structure
    end

    # The input for an EstimateTemplateCost action.
    #
    # @note When making an API call, you may pass EstimateTemplateCostInput
    #   data as a hash:
    #
    #       {
    #         template_body: "TemplateBody",
    #         template_url: "TemplateURL",
    #         parameters: [
    #           {
    #             parameter_key: "ParameterKey",
    #             parameter_value: "ParameterValue",
    #             use_previous_value: false,
    #             resolved_value: "ParameterValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] template_body
    #   Structure containing the template body with a minimum length of 1
    #   byte and a maximum length of 51,200 bytes. (For more information, go
    #   to [Template Anatomy][1] in the AWS CloudFormation User Guide.)
    #
    #   Conditional: You must pass `TemplateBody` or `TemplateURL`. If both
    #   are passed, only `TemplateBody` is used.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #   @return [String]
    #
    # @!attribute [rw] template_url
    #   Location of file containing the template body. The URL must point to
    #   a template that is located in an Amazon S3 bucket. For more
    #   information, go to [Template Anatomy][1] in the AWS CloudFormation
    #   User Guide.
    #
    #   Conditional: You must pass `TemplateURL` or `TemplateBody`. If both
    #   are passed, only `TemplateBody` is used.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
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
      include Aws::Structure
    end

    # The output for a EstimateTemplateCost action.
    #
    # @!attribute [rw] url
    #   An AWS Simple Monthly Calculator URL with a query string that
    #   describes the resources required to run the template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/EstimateTemplateCostOutput AWS API Documentation
    #
    class EstimateTemplateCostOutput < Struct.new(
      :url)
      include Aws::Structure
    end

    # The input for the ExecuteChangeSet action.
    #
    # @note When making an API call, you may pass ExecuteChangeSetInput
    #   data as a hash:
    #
    #       {
    #         change_set_name: "ChangeSetNameOrId", # required
    #         stack_name: "StackNameOrId",
    #         client_request_token: "ClientRequestToken",
    #       }
    #
    # @!attribute [rw] change_set_name
    #   The name or ARN of the change set that you want use to update the
    #   specified stack.
    #   @return [String]
    #
    # @!attribute [rw] stack_name
    #   If you specified the name of a change set, specify the stack name or
    #   ID (ARN) that is associated with the change set you want to execute.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique identifier for this `ExecuteChangeSet` request. Specify
    #   this token if you plan to retry requests so that AWS CloudFormation
    #   knows that you're not attempting to execute a change set to update
    #   a stack with the same name. You might retry `ExecuteChangeSet`
    #   requests to ensure that AWS CloudFormation successfully received
    #   them.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ExecuteChangeSetInput AWS API Documentation
    #
    class ExecuteChangeSetInput < Struct.new(
      :change_set_name,
      :stack_name,
      :client_request_token)
      include Aws::Structure
    end

    # The output for the ExecuteChangeSet action.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ExecuteChangeSetOutput AWS API Documentation
    #
    class ExecuteChangeSetOutput < Aws::EmptyStructure; end

    # The `Export` structure describes the exported output values for a
    # stack.
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
      include Aws::Structure
    end

    # The input for the GetStackPolicy action.
    #
    # @note When making an API call, you may pass GetStackPolicyInput
    #   data as a hash:
    #
    #       {
    #         stack_name: "StackName", # required
    #       }
    #
    # @!attribute [rw] stack_name
    #   The name or unique stack ID that is associated with the stack whose
    #   policy you want to get.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/GetStackPolicyInput AWS API Documentation
    #
    class GetStackPolicyInput < Struct.new(
      :stack_name)
      include Aws::Structure
    end

    # The output for the GetStackPolicy action.
    #
    # @!attribute [rw] stack_policy_body
    #   Structure containing the stack policy body. (For more information,
    #   go to [ Prevent Updates to Stack Resources][1] in the AWS
    #   CloudFormation User Guide.)
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/GetStackPolicyOutput AWS API Documentation
    #
    class GetStackPolicyOutput < Struct.new(
      :stack_policy_body)
      include Aws::Structure
    end

    # The input for a GetTemplate action.
    #
    # @note When making an API call, you may pass GetTemplateInput
    #   data as a hash:
    #
    #       {
    #         stack_name: "StackName",
    #         change_set_name: "ChangeSetNameOrId",
    #         template_stage: "Original", # accepts Original, Processed
    #       }
    #
    # @!attribute [rw] stack_name
    #   The name or the unique stack ID that is associated with the stack,
    #   which are not always interchangeable:
    #
    #   * Running stacks: You can specify either the stack's name or its
    #     unique stack ID.
    #
    #   * Deleted stacks: You must specify the unique stack ID.
    #
    #   Default: There is no default value.
    #   @return [String]
    #
    # @!attribute [rw] change_set_name
    #   The name or Amazon Resource Name (ARN) of a change set for which AWS
    #   CloudFormation returns the associated template. If you specify a
    #   name, you must also specify the `StackName`.
    #   @return [String]
    #
    # @!attribute [rw] template_stage
    #   For templates that include transforms, the stage of the template
    #   that AWS CloudFormation returns. To get the user-submitted template,
    #   specify `Original`. To get the template after AWS CloudFormation has
    #   processed all transforms, specify `Processed`.
    #
    #   If the template doesn't include transforms, `Original` and
    #   `Processed` return the same template. By default, AWS CloudFormation
    #   specifies `Original`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/GetTemplateInput AWS API Documentation
    #
    class GetTemplateInput < Struct.new(
      :stack_name,
      :change_set_name,
      :template_stage)
      include Aws::Structure
    end

    # The output for GetTemplate action.
    #
    # @!attribute [rw] template_body
    #   Structure containing the template body. (For more information, go to
    #   [Template Anatomy][1] in the AWS CloudFormation User Guide.)
    #
    #   AWS CloudFormation returns the same template that was used when the
    #   stack was created.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #   @return [String]
    #
    # @!attribute [rw] stages_available
    #   The stage of the template that you can retrieve. For stacks, the
    #   `Original` and `Processed` templates are always available. For
    #   change sets, the `Original` template is always available. After AWS
    #   CloudFormation finishes creating the change set, the `Processed`
    #   template becomes available.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/GetTemplateOutput AWS API Documentation
    #
    class GetTemplateOutput < Struct.new(
      :template_body,
      :stages_available)
      include Aws::Structure
    end

    # The input for the GetTemplateSummary action.
    #
    # @note When making an API call, you may pass GetTemplateSummaryInput
    #   data as a hash:
    #
    #       {
    #         template_body: "TemplateBody",
    #         template_url: "TemplateURL",
    #         stack_name: "StackNameOrId",
    #         stack_set_name: "StackSetNameOrId",
    #       }
    #
    # @!attribute [rw] template_body
    #   Structure containing the template body with a minimum length of 1
    #   byte and a maximum length of 51,200 bytes. For more information
    #   about templates, see [Template Anatomy][1] in the AWS CloudFormation
    #   User Guide.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `StackName`, `StackSetName`, `TemplateBody`, or `TemplateURL`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #   @return [String]
    #
    # @!attribute [rw] template_url
    #   Location of file containing the template body. The URL must point to
    #   a template (max size: 460,800 bytes) that is located in an Amazon S3
    #   bucket. For more information about templates, see [Template
    #   Anatomy][1] in the AWS CloudFormation User Guide.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `StackName`, `StackSetName`, `TemplateBody`, or `TemplateURL`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #   @return [String]
    #
    # @!attribute [rw] stack_name
    #   The name or the stack ID that is associated with the stack, which
    #   are not always interchangeable. For running stacks, you can specify
    #   either the stack's name or its unique stack ID. For deleted stack,
    #   you must specify the unique stack ID.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `StackName`, `StackSetName`, `TemplateBody`, or `TemplateURL`.
    #   @return [String]
    #
    # @!attribute [rw] stack_set_name
    #   The name or unique ID of the stack set from which the stack was
    #   created.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `StackName`, `StackSetName`, `TemplateBody`, or `TemplateURL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/GetTemplateSummaryInput AWS API Documentation
    #
    class GetTemplateSummaryInput < Struct.new(
      :template_body,
      :template_url,
      :stack_name,
      :stack_set_name)
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
    #   The value that is defined in the `Description` property of the
    #   template.
    #   @return [String]
    #
    # @!attribute [rw] capabilities
    #   The capabilities found within the template. If your template
    #   contains IAM resources, you must specify the CAPABILITY\_IAM or
    #   CAPABILITY\_NAMED\_IAM value for this parameter when you use the
    #   CreateStack or UpdateStack actions with your template; otherwise,
    #   those actions return an InsufficientCapabilities error.
    #
    #   For more information, see [Acknowledging IAM Resources in AWS
    #   CloudFormation Templates][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities
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
    #   The AWS template format version, which identifies the capabilities
    #   of the template.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The value that is defined for the `Metadata` property of the
    #   template.
    #   @return [String]
    #
    # @!attribute [rw] declared_transforms
    #   A list of the transforms that are declared in the template.
    #   @return [Array<String>]
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
      :declared_transforms)
      include Aws::Structure
    end

    # The input for the ListChangeSets action.
    #
    # @note When making an API call, you may pass ListChangeSetsInput
    #   data as a hash:
    #
    #       {
    #         stack_name: "StackNameOrId", # required
    #         next_token: "NextToken",
    #       }
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
    #   of change sets. If there is no additional page, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListChangeSetsOutput AWS API Documentation
    #
    class ListChangeSetsOutput < Struct.new(
      :summaries,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListExportsInput
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #       }
    #
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListImportsInput
    #   data as a hash:
    #
    #       {
    #         export_name: "ExportName", # required
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] export_name
    #   The name of the exported output value. AWS CloudFormation returns
    #   the stack names that are importing this value.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListStackInstancesInput
    #   data as a hash:
    #
    #       {
    #         stack_set_name: "StackSetName", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #         stack_instance_account: "Account",
    #         stack_instance_region: "Region",
    #       }
    #
    # @!attribute [rw] stack_set_name
    #   The name or unique ID of the stack set that you want to list stack
    #   instances for.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the previous request didn't return all of the remaining results,
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
    # @!attribute [rw] stack_instance_account
    #   The name of the AWS account that you want to list stack instances
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] stack_instance_region
    #   The name of the region where you want to list stack instances.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStackInstancesInput AWS API Documentation
    #
    class ListStackInstancesInput < Struct.new(
      :stack_set_name,
      :next_token,
      :max_results,
      :stack_instance_account,
      :stack_instance_region)
      include Aws::Structure
    end

    # @!attribute [rw] summaries
    #   A list of `StackInstanceSummary` structures that contain information
    #   about the specified stack instances.
    #   @return [Array<Types::StackInstanceSummary>]
    #
    # @!attribute [rw] next_token
    #   If the request doesn't return all of the remaining results,
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
      include Aws::Structure
    end

    # The input for the ListStackResource action.
    #
    # @note When making an API call, you may pass ListStackResourcesInput
    #   data as a hash:
    #
    #       {
    #         stack_name: "StackName", # required
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] stack_name
    #   The name or the unique stack ID that is associated with the stack,
    #   which are not always interchangeable:
    #
    #   * Running stacks: You can specify either the stack's name or its
    #     unique stack ID.
    #
    #   * Deleted stacks: You must specify the unique stack ID.
    #
    #   Default: There is no default value.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListStackSetOperationResultsInput
    #   data as a hash:
    #
    #       {
    #         stack_set_name: "StackSetName", # required
    #         operation_id: "ClientRequestToken", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] stack_set_name
    #   The name or unique ID of the stack set that you want to get
    #   operation results for.
    #   @return [String]
    #
    # @!attribute [rw] operation_id
    #   The ID of the stack set operation.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the previous request didn't return all of the remaining results,
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStackSetOperationResultsInput AWS API Documentation
    #
    class ListStackSetOperationResultsInput < Struct.new(
      :stack_set_name,
      :operation_id,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] summaries
    #   A list of `StackSetOperationResultSummary` structures that contain
    #   information about the specified operation results, for accounts and
    #   regions that are included in the operation.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListStackSetOperationsInput
    #   data as a hash:
    #
    #       {
    #         stack_set_name: "StackSetName", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] stack_set_name
    #   The name or unique ID of the stack set that you want to get
    #   operation summaries for.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStackSetOperationsInput AWS API Documentation
    #
    class ListStackSetOperationsInput < Struct.new(
      :stack_set_name,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] summaries
    #   A list of `StackSetOperationSummary` structures that contain summary
    #   information about operations for the specified stack set.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListStackSetsInput
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         status: "ACTIVE", # accepts ACTIVE, DELETED
    #       }
    #
    # @!attribute [rw] next_token
    #   If the previous paginated request didn't return all of the
    #   remaining results, the response object's `NextToken` parameter
    #   value is set to a token. To retrieve the next set of results, call
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
    #   The status of the stack sets that you want to get summary
    #   information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ListStackSetsInput AWS API Documentation
    #
    class ListStackSetsInput < Struct.new(
      :next_token,
      :max_results,
      :status)
      include Aws::Structure
    end

    # @!attribute [rw] summaries
    #   A list of `StackSetSummary` structures that contain information
    #   about the user's stack sets.
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
      include Aws::Structure
    end

    # The input for ListStacks action.
    #
    # @note When making an API call, you may pass ListStacksInput
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         stack_status_filter: ["CREATE_IN_PROGRESS"], # accepts CREATE_IN_PROGRESS, CREATE_FAILED, CREATE_COMPLETE, ROLLBACK_IN_PROGRESS, ROLLBACK_FAILED, ROLLBACK_COMPLETE, DELETE_IN_PROGRESS, DELETE_FAILED, DELETE_COMPLETE, UPDATE_IN_PROGRESS, UPDATE_COMPLETE_CLEANUP_IN_PROGRESS, UPDATE_COMPLETE, UPDATE_ROLLBACK_IN_PROGRESS, UPDATE_ROLLBACK_FAILED, UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS, UPDATE_ROLLBACK_COMPLETE, REVIEW_IN_PROGRESS
    #       }
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
      include Aws::Structure
    end

    # The output for ListStacks action.
    #
    # @!attribute [rw] stack_summaries
    #   A list of `StackSummary` structures containing information about the
    #   specified stacks.
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
      include Aws::Structure
    end

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
      include Aws::Structure
    end

    # The Parameter data type.
    #
    # @note When making an API call, you may pass Parameter
    #   data as a hash:
    #
    #       {
    #         parameter_key: "ParameterKey",
    #         parameter_value: "ParameterValue",
    #         use_previous_value: false,
    #         resolved_value: "ParameterValue",
    #       }
    #
    # @!attribute [rw] parameter_key
    #   The key associated with the parameter. If you don't specify a key
    #   and value for a particular parameter, AWS CloudFormation uses the
    #   default value that is specified in your template.
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
    #   key. This field is returned only for [ `SSM` parameter types][1] in
    #   the template.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/parameters-section-structure.html#aws-ssm-parameter-types
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/Parameter AWS API Documentation
    #
    class Parameter < Struct.new(
      :parameter_key,
      :parameter_value,
      :use_previous_value,
      :resolved_value)
      include Aws::Structure
    end

    # A set of criteria that AWS CloudFormation uses to validate parameter
    # values. Although other constraints might be defined in the stack
    # template, AWS CloudFormation returns only the `AllowedValues`
    # property.
    #
    # @!attribute [rw] allowed_values
    #   A list of values that are permitted for a parameter.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ParameterConstraints AWS API Documentation
    #
    class ParameterConstraints < Struct.new(
      :allowed_values)
      include Aws::Structure
    end

    # The ParameterDeclaration data type.
    #
    # @!attribute [rw] parameter_key
    #   The name that is associated with the parameter.
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
    #   text in logs and in the AWS Management Console.
    #   @return [Boolean]
    #
    # @!attribute [rw] description
    #   The description that is associate with the parameter.
    #   @return [String]
    #
    # @!attribute [rw] parameter_constraints
    #   The criteria that AWS CloudFormation uses to validate parameter
    #   values.
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
      include Aws::Structure
    end

    # The `ResourceChange` structure describes the resource and the action
    # that AWS CloudFormation will perform on it if you execute this change
    # set.
    #
    # @!attribute [rw] action
    #   The action that AWS CloudFormation takes on the resource, such as
    #   `Add` (adds a new resource), `Modify` (changes a resource), or
    #   `Remove` (deletes a resource).
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
    #   The type of AWS CloudFormation resource, such as `AWS::S3::Bucket`.
    #   @return [String]
    #
    # @!attribute [rw] replacement
    #   For the `Modify` action, indicates whether AWS CloudFormation will
    #   replace the resource by creating a new one and deleting the old one.
    #   This value depends on the value of the `RequiresRecreation` property
    #   in the `ResourceTargetDefinition` structure. For example, if the
    #   `RequiresRecreation` field is `Always` and the `Evaluation` field is
    #   `Static`, `Replacement` is `True`. If the `RequiresRecreation` field
    #   is `Always` and the `Evaluation` field is `Dynamic`, `Replacement`
    #   is `Conditionally`.
    #
    #   If you have multiple changes with different `RequiresRecreation`
    #   values, the `Replacement` value depends on the change with the most
    #   impact. A `RequiresRecreation` value of `Always` has the most
    #   impact, followed by `Conditionally`, and then `Never`.
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
    #   that describes the changes that AWS CloudFormation will make to the
    #   resource.
    #   @return [Array<Types::ResourceChangeDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ResourceChange AWS API Documentation
    #
    class ResourceChange < Struct.new(
      :action,
      :logical_resource_id,
      :physical_resource_id,
      :resource_type,
      :replacement,
      :scope,
      :details)
      include Aws::Structure
    end

    # For a resource with `Modify` as the action, the `ResourceChange`
    # structure describes the changes AWS CloudFormation will make to that
    # resource.
    #
    # @!attribute [rw] target
    #   A `ResourceTargetDefinition` structure that describes the field that
    #   AWS CloudFormation will change and whether the resource will be
    #   recreated.
    #   @return [Types::ResourceTargetDefinition]
    #
    # @!attribute [rw] evaluation
    #   Indicates whether AWS CloudFormation can determine the target value,
    #   and whether the target value will change before you execute a change
    #   set.
    #
    #   For `Static` evaluations, AWS CloudFormation can determine that the
    #   target value will change, and its value. For example, if you
    #   directly modify the `InstanceType` property of an EC2 instance, AWS
    #   CloudFormation knows that this property value will change, and its
    #   value, so this is a `Static` evaluation.
    #
    #   For `Dynamic` evaluations, cannot determine the target value because
    #   it depends on the result of an intrinsic function, such as a `Ref`
    #   or `Fn::GetAtt` intrinsic function, when the stack is updated. For
    #   example, if your template includes a reference to a resource that is
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
    #     refer to resources in the template, such as `\{ "Ref" :
    #     "MyEC2InstanceResource" \}`.
    #
    #   * `ParameterReference` entities are `Ref` intrinsic functions that
    #     get template parameter values, such as `\{ "Ref" :
    #     "MyPasswordParameter" \}`.
    #
    #   * `ResourceAttribute` entities are `Fn::GetAtt` intrinsic functions
    #     that get resource attribute values, such as `\{ "Fn::GetAtt" : [
    #     "MyEC2InstanceResource", "PublicDnsName" ] \}`.
    #
    #   * `DirectModification` entities are changes that are made directly
    #     to the template.
    #
    #   * `Automatic` entities are `AWS::CloudFormation::Stack` resource
    #     types, which are also known as nested stacks. If you made no
    #     changes to the `AWS::CloudFormation::Stack` resource, AWS
    #     CloudFormation sets the `ChangeSource` to `Automatic` because the
    #     nested stack's template might have changed. Changes to a nested
    #     stack's template aren't visible to AWS CloudFormation until you
    #     run an update on the parent stack.
    #   @return [String]
    #
    # @!attribute [rw] causing_entity
    #   The identity of the entity that triggered this change. This entity
    #   is a member of the group that is specified by the `ChangeSource`
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
      include Aws::Structure
    end

    # The field that AWS CloudFormation will change, such as the name of a
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
    #   for that [property][1] in the AWS CloudFormation User Guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ResourceTargetDefinition AWS API Documentation
    #
    class ResourceTargetDefinition < Struct.new(
      :attribute,
      :name,
      :requires_recreation)
      include Aws::Structure
    end

    # Structure containing the rollback triggers for AWS CloudFormation to
    # monitor during stack creation and updating operations, and for the
    # specified monitoring period afterwards.
    #
    # Rollback triggers enable you to have AWS CloudFormation monitor the
    # state of your application during stack creation and updating, and to
    # roll back that operation if the application breaches the threshold of
    # any of the alarms you've specified. For more information, see
    # [Monitor and Roll Back Stack Operations][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-rollback-triggers.html
    #
    # @note When making an API call, you may pass RollbackConfiguration
    #   data as a hash:
    #
    #       {
    #         rollback_triggers: [
    #           {
    #             arn: "Arn", # required
    #             type: "Type", # required
    #           },
    #         ],
    #         monitoring_time_in_minutes: 1,
    #       }
    #
    # @!attribute [rw] rollback_triggers
    #   The triggers to monitor during stack creation or update actions.
    #
    #   By default, AWS CloudFormation saves the rollback triggers specified
    #   for a stack and applies them to any subsequent update operations for
    #   the stack, unless you specify otherwise. If you do specify rollback
    #   triggers for this parameter, those triggers replace any list of
    #   triggers previously specified for the stack. This means:
    #
    #   * To use the rollback triggers previously specified for this stack,
    #     if any, don't specify this parameter.
    #
    #   * To specify new or updated rollback triggers, you must specify
    #     *all* the triggers that you want used for this stack, even
    #     triggers you've specifed before (for example, when creating the
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
    #   If you specify a monitoring period but do not specify any rollback
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
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_CancelUpdateStack.html
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RollbackConfiguration AWS API Documentation
    #
    class RollbackConfiguration < Struct.new(
      :rollback_triggers,
      :monitoring_time_in_minutes)
      include Aws::Structure
    end

    # A rollback trigger AWS CloudFormation monitors during creation and
    # updating of stacks. If any of the alarms you specify goes to ALARM
    # state during the stack operation or within the specified monitoring
    # period afterwards, CloudFormation rolls back the entire stack
    # operation.
    #
    # @note When making an API call, you may pass RollbackTrigger
    #   data as a hash:
    #
    #       {
    #         arn: "Arn", # required
    #         type: "Type", # required
    #       }
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the rollback trigger.
    #
    #   If a specified trigger is missing, the entire stack operation fails
    #   and is rolled back.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The resource type of the rollback trigger. Currently,
    #   [AWS::CloudWatch::Alarm][1] is the only supported resource type.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RollbackTrigger AWS API Documentation
    #
    class RollbackTrigger < Struct.new(
      :arn,
      :type)
      include Aws::Structure
    end

    # The input for the SetStackPolicy action.
    #
    # @note When making an API call, you may pass SetStackPolicyInput
    #   data as a hash:
    #
    #       {
    #         stack_name: "StackName", # required
    #         stack_policy_body: "StackPolicyBody",
    #         stack_policy_url: "StackPolicyURL",
    #       }
    #
    # @!attribute [rw] stack_name
    #   The name or unique stack ID that you want to associate a policy
    #   with.
    #   @return [String]
    #
    # @!attribute [rw] stack_policy_body
    #   Structure containing the stack policy body. For more information, go
    #   to [ Prevent Updates to Stack Resources][1] in the AWS
    #   CloudFormation User Guide. You can specify either the
    #   `StackPolicyBody` or the `StackPolicyURL` parameter, but not both.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html
    #   @return [String]
    #
    # @!attribute [rw] stack_policy_url
    #   Location of a file containing the stack policy. The URL must point
    #   to a policy (maximum size: 16 KB) located in an S3 bucket in the
    #   same region as the stack. You can specify either the
    #   `StackPolicyBody` or the `StackPolicyURL` parameter, but not both.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/SetStackPolicyInput AWS API Documentation
    #
    class SetStackPolicyInput < Struct.new(
      :stack_name,
      :stack_policy_body,
      :stack_policy_url)
      include Aws::Structure
    end

    # The input for the SignalResource action.
    #
    # @note When making an API call, you may pass SignalResourceInput
    #   data as a hash:
    #
    #       {
    #         stack_name: "StackNameOrId", # required
    #         logical_resource_id: "LogicalResourceId", # required
    #         unique_id: "ResourceSignalUniqueId", # required
    #         status: "SUCCESS", # required, accepts SUCCESS, FAILURE
    #       }
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
    #   failure signal causes AWS CloudFormation to immediately fail the
    #   stack creation or update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/SignalResourceInput AWS API Documentation
    #
    class SignalResourceInput < Struct.new(
      :stack_name,
      :logical_resource_id,
      :unique_id,
      :status)
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
    #   The rollback triggers for AWS CloudFormation to monitor during stack
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
    #   * `true`\: disable rollback
    #
    #   * `false`\: enable rollback
    #   @return [Boolean]
    #
    # @!attribute [rw] notification_arns
    #   SNS topic ARNs to which stack related events are published.
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
    #   The Amazon Resource Name (ARN) of an AWS Identity and Access
    #   Management (IAM) role that is associated with the stack. During a
    #   stack operation, AWS CloudFormation uses this role's credentials to
    #   make calls on your behalf.
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
    #   stack and cannot be changed directly on the nested stack. For more
    #   information, see [Protecting a Stack From Being Deleted][2] in the
    #   *AWS CloudFormation User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html
    #   [2]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html
    #   @return [Boolean]
    #
    # @!attribute [rw] parent_id
    #   For nested stacks--stacks created as resources for another
    #   stack--the stack ID of the direct parent of this stack. For the
    #   first level of nested stacks, the root stack is also the parent
    #   stack.
    #
    #   For more information, see [Working with Nested Stacks][1] in the
    #   *AWS CloudFormation User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html
    #   @return [String]
    #
    # @!attribute [rw] root_id
    #   For nested stacks--stacks created as resources for another
    #   stack--the stack ID of the the top-level stack to which the nested
    #   stack ultimately belongs.
    #
    #   For more information, see [Working with Nested Stacks][1] in the
    #   *AWS CloudFormation User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html
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
      :root_id)
      include Aws::Structure
    end

    # The StackEvent data type.
    #
    # @!attribute [rw] stack_id
    #   The unique ID name of the instance of the stack.
    #   @return [String]
    #
    # @!attribute [rw] event_id
    #   The unique ID of this event.
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
    #   Type of resource. (For more information, go to [ AWS Resource Types
    #   Reference][1] in the AWS CloudFormation User Guide.)
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html
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
      :client_request_token)
      include Aws::Structure
    end

    # An AWS CloudFormation stack, in a specific account and region, that's
    # part of a stack set operation. A stack instance is a reference to an
    # attempted or actual stack in a given account within a given region. A
    # stack instance can exist without a stack—for example, if the stack
    # couldn't be created for some reason. A stack instance is associated
    # with only one stack set. Each stack instance contains the ID of its
    # associated stack set, as well as the ID of the actual stack and the
    # stack status.
    #
    # @!attribute [rw] stack_set_id
    #   The name or unique ID of the stack set that the stack instance is
    #   associated with.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The name of the AWS region that the stack instance is associated
    #   with.
    #   @return [String]
    #
    # @!attribute [rw] account
    #   The name of the AWS account that the stack instance is associated
    #   with.
    #   @return [String]
    #
    # @!attribute [rw] stack_id
    #   The ID of the stack instance.
    #   @return [String]
    #
    # @!attribute [rw] parameter_overrides
    #   A list of parameters from the stack set template whose values have
    #   been overridden in this stack instance.
    #   @return [Array<Types::Parameter>]
    #
    # @!attribute [rw] status
    #   The status of the stack instance, in terms of its synchronization
    #   with its associated stack set.
    #
    #   * `INOPERABLE`\: A `DeleteStackInstances` operation has failed and
    #     left the stack in an unstable state. Stacks in this state are
    #     excluded from further `UpdateStackSet` operations. You might need
    #     to perform a `DeleteStackInstances` operation, with `RetainStacks`
    #     set to `true`, to delete the stack instance, and then delete the
    #     stack manually.
    #
    #   * `OUTDATED`\: The stack isn't currently up to date with the stack
    #     set because:
    #
    #     * The associated stack failed during a `CreateStackSet` or
    #       `UpdateStackSet` operation.
    #
    #     * The stack was part of a `CreateStackSet` or `UpdateStackSet`
    #       operation that failed or was stopped before the stack was
    #       created or updated.
    #
    #   * `CURRENT`\: The stack is currently up to date with the stack set.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The explanation for the specific status code that is assigned to
    #   this stack instance.
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
      :status_reason)
      include Aws::Structure
    end

    # The structure that contains summary information about a stack
    # instance.
    #
    # @!attribute [rw] stack_set_id
    #   The name or unique ID of the stack set that the stack instance is
    #   associated with.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The name of the AWS region that the stack instance is associated
    #   with.
    #   @return [String]
    #
    # @!attribute [rw] account
    #   The name of the AWS account that the stack instance is associated
    #   with.
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
    #   * `INOPERABLE`\: A `DeleteStackInstances` operation has failed and
    #     left the stack in an unstable state. Stacks in this state are
    #     excluded from further `UpdateStackSet` operations. You might need
    #     to perform a `DeleteStackInstances` operation, with `RetainStacks`
    #     set to `true`, to delete the stack instance, and then delete the
    #     stack manually.
    #
    #   * `OUTDATED`\: The stack isn't currently up to date with the stack
    #     set because:
    #
    #     * The associated stack failed during a `CreateStackSet` or
    #       `UpdateStackSet` operation.
    #
    #     * The stack was part of a `CreateStackSet` or `UpdateStackSet`
    #       operation that failed or was stopped before the stack was
    #       created or updated.
    #
    #   * `CURRENT`\: The stack is currently up to date with the stack set.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The explanation for the specific status code assigned to this stack
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
      :status_reason)
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
    #   instance ID of a resource supported by AWS CloudFormation.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Type of resource. (For more information, go to [ AWS Resource Types
    #   Reference][1] in the AWS CloudFormation User Guide.)
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html
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
      :description)
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
    #   instance ID of a resource supported by AWS CloudFormation.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Type of resource. ((For more information, go to [ AWS Resource Types
    #   Reference][1] in the AWS CloudFormation User Guide.)
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html
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
    #   For more information, see [Metadata Attribute][1] in the AWS
    #   CloudFormation User Guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-metadata.html
    #   @return [String]
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
      :metadata)
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
    #   Type of resource. (For more information, go to [ AWS Resource Types
    #   Reference][1] in the AWS CloudFormation User Guide.)
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StackResourceSummary AWS API Documentation
    #
    class StackResourceSummary < Struct.new(
      :logical_resource_id,
      :physical_resource_id,
      :resource_type,
      :last_updated_timestamp,
      :resource_status,
      :resource_status_reason)
      include Aws::Structure
    end

    # A structure that contains information about a stack set. A stack set
    # enables you to provision stacks into AWS accounts and across regions
    # by using a single CloudFormation template. In the stack set, you
    # specify the template to use, as well as any parameters and
    # capabilities that the template requires.
    #
    # @!attribute [rw] stack_set_name
    #   The name that's associated with the stack set.
    #   @return [String]
    #
    # @!attribute [rw] stack_set_id
    #   The ID of the stack set.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the stack set that you specify when the stack set
    #   is created or updated.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the stack set.
    #   @return [String]
    #
    # @!attribute [rw] template_body
    #   The structure that contains the body of the template that was used
    #   to create or update the stack set.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A list of input parameters for a stack set.
    #   @return [Array<Types::Parameter>]
    #
    # @!attribute [rw] capabilities
    #   The capabilities that are allowed in the stack set. Some stack set
    #   templates might include resources that can affect permissions in
    #   your AWS account—for example, by creating new AWS Identity and
    #   Access Management (IAM) users. For more information, see
    #   [Acknowledging IAM Resources in AWS CloudFormation Templates.][1]
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   A list of tags that specify information about the stack set. A
    #   maximum number of 50 tags can be specified.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] stack_set_arn
    #   The Amazon Resource Number (ARN) of the stack set.
    #   @return [String]
    #
    # @!attribute [rw] administration_role_arn
    #   The Amazon Resource Number (ARN) of the IAM role used to create or
    #   update the stack set.
    #
    #   Use customized administrator roles to control which users or groups
    #   can manage specific stack sets within the same administrator
    #   account. For more information, see [Prerequisites: Granting
    #   Permissions for Stack Set Operations][1] in the *AWS CloudFormation
    #   User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html
    #   @return [String]
    #
    # @!attribute [rw] execution_role_name
    #   The name of the IAM execution role used to create or update the
    #   stack set.
    #
    #   Use customized execution roles to control which stack resources
    #   users and groups can include in their stack sets.
    #   @return [String]
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
      :execution_role_name)
      include Aws::Structure
    end

    # The structure that contains information about a stack set operation.
    #
    # @!attribute [rw] operation_id
    #   The unique ID of a stack set operation.
    #   @return [String]
    #
    # @!attribute [rw] stack_set_id
    #   The ID of the stack set.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The type of stack set operation: `CREATE`, `UPDATE`, or `DELETE`.
    #   Create and delete operations affect only the specified stack set
    #   instances that are associated with the specified stack set. Update
    #   operations affect both the stack set itself, as well as *all*
    #   associated stack set instances.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the operation.
    #
    #   * `FAILED`\: The operation exceeded the specified failure tolerance.
    #     The failure tolerance value that you've set for an operation is
    #     applied for each region during stack create and update operations.
    #     If the number of failed stacks within a region exceeds the failure
    #     tolerance, the status of the operation in the region is set to
    #     `FAILED`. This in turn sets the status of the operation as a whole
    #     to `FAILED`, and AWS CloudFormation cancels the operation in any
    #     remaining regions.
    #
    #   * `RUNNING`\: The operation is currently being performed.
    #
    #   * `STOPPED`\: The user has cancelled the operation.
    #
    #   * `STOPPING`\: The operation is in the process of stopping, at user
    #     request.
    #
    #   * `SUCCEEDED`\: The operation completed creating or updating all the
    #     specified stacks without exceeding the failure tolerance for the
    #     operation.
    #   @return [String]
    #
    # @!attribute [rw] operation_preferences
    #   The preferences for how AWS CloudFormation performs this stack set
    #   operation.
    #   @return [Types::StackSetOperationPreferences]
    #
    # @!attribute [rw] retain_stacks
    #   For stack set operations of action type `DELETE`, specifies whether
    #   to remove the stack instances from the specified stack set, but
    #   doesn't delete the stacks. You can't reassociate a retained stack,
    #   or add an existing, saved stack to a new stack set.
    #   @return [Boolean]
    #
    # @!attribute [rw] administration_role_arn
    #   The Amazon Resource Number (ARN) of the IAM role used to perform
    #   this stack set operation.
    #
    #   Use customized administrator roles to control which users or groups
    #   can manage specific stack sets within the same administrator
    #   account. For more information, see [Define Permissions for Multiple
    #   Administrators][1] in the *AWS CloudFormation User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html
    #   @return [String]
    #
    # @!attribute [rw] execution_role_name
    #   The name of the IAM execution role used to create or update the
    #   stack set.
    #
    #   Use customized execution roles to control which stack resources
    #   users and groups can include in their stack sets.
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   The time at which the operation was initiated. Note that the
    #   creation times for the stack set operation might differ from the
    #   creation time of the individual stacks themselves. This is because
    #   AWS CloudFormation needs to perform preparatory work for the
    #   operation, such as dispatching the work to the requested regions,
    #   before actually creating the first stacks.
    #   @return [Time]
    #
    # @!attribute [rw] end_timestamp
    #   The time at which the stack set operation ended, across all accounts
    #   and regions specified. Note that this doesn't necessarily mean that
    #   the stack set operation was successful, or even attempted, in each
    #   account or region.
    #   @return [Time]
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
      :end_timestamp)
      include Aws::Structure
    end

    # The user-specified preferences for how AWS CloudFormation performs a
    # stack set operation.
    #
    # For more information on maximum concurrent accounts and failure
    # tolerance, see [Stack set operation options][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options
    #
    # @note When making an API call, you may pass StackSetOperationPreferences
    #   data as a hash:
    #
    #       {
    #         region_order: ["Region"],
    #         failure_tolerance_count: 1,
    #         failure_tolerance_percentage: 1,
    #         max_concurrent_count: 1,
    #         max_concurrent_percentage: 1,
    #       }
    #
    # @!attribute [rw] region_order
    #   The order of the regions in where you want to perform the stack
    #   operation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] failure_tolerance_count
    #   The number of accounts, per region, for which this operation can
    #   fail before AWS CloudFormation stops the operation in that region.
    #   If the operation is stopped in a region, AWS CloudFormation doesn't
    #   attempt the operation in any subsequent regions.
    #
    #   Conditional: You must specify either `FailureToleranceCount` or
    #   `FailureTolerancePercentage` (but not both).
    #   @return [Integer]
    #
    # @!attribute [rw] failure_tolerance_percentage
    #   The percentage of accounts, per region, for which this stack
    #   operation can fail before AWS CloudFormation stops the operation in
    #   that region. If the operation is stopped in a region, AWS
    #   CloudFormation doesn't attempt the operation in any subsequent
    #   regions.
    #
    #   When calculating the number of accounts based on the specified
    #   percentage, AWS CloudFormation rounds *down* to the next whole
    #   number.
    #
    #   Conditional: You must specify either `FailureToleranceCount` or
    #   `FailureTolerancePercentage`, but not both.
    #   @return [Integer]
    #
    # @!attribute [rw] max_concurrent_count
    #   The maximum number of accounts in which to perform this operation at
    #   one time. This is dependent on the value of
    #   `FailureToleranceCount`—`MaxConcurrentCount` is at most one more
    #   than the `FailureToleranceCount` .
    #
    #   Note that this setting lets you specify the *maximum* for
    #   operations. For large deployments, under certain circumstances the
    #   actual number of accounts acted upon concurrently may be lower due
    #   to service throttling.
    #
    #   Conditional: You must specify either `MaxConcurrentCount` or
    #   `MaxConcurrentPercentage`, but not both.
    #   @return [Integer]
    #
    # @!attribute [rw] max_concurrent_percentage
    #   The maximum percentage of accounts in which to perform this
    #   operation at one time.
    #
    #   When calculating the number of accounts based on the specified
    #   percentage, AWS CloudFormation rounds down to the next whole number.
    #   This is true except in cases where rounding down would result is
    #   zero. In this case, CloudFormation sets the number as one instead.
    #
    #   Note that this setting lets you specify the *maximum* for
    #   operations. For large deployments, under certain circumstances the
    #   actual number of accounts acted upon concurrently may be lower due
    #   to service throttling.
    #
    #   Conditional: You must specify either `MaxConcurrentCount` or
    #   `MaxConcurrentPercentage`, but not both.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StackSetOperationPreferences AWS API Documentation
    #
    class StackSetOperationPreferences < Struct.new(
      :region_order,
      :failure_tolerance_count,
      :failure_tolerance_percentage,
      :max_concurrent_count,
      :max_concurrent_percentage)
      include Aws::Structure
    end

    # The structure that contains information about a specified operation's
    # results for a given account in a given region.
    #
    # @!attribute [rw] account
    #   The name of the AWS account for this operation result.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The name of the AWS region for this operation result.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The result status of the stack set operation for the given account
    #   in the given region.
    #
    #   * `CANCELLED`\: The operation in the specified account and region
    #     has been cancelled. This is either because a user has stopped the
    #     stack set operation, or because the failure tolerance of the stack
    #     set operation has been exceeded.
    #
    #   * `FAILED`\: The operation in the specified account and region
    #     failed.
    #
    #     If the stack set operation fails in enough accounts within a
    #     region, the failure tolerance for the stack set operation as a
    #     whole might be exceeded.
    #
    #   * `RUNNING`\: The operation in the specified account and region is
    #     currently in progress.
    #
    #   * `PENDING`\: The operation in the specified account and region has
    #     yet to start.
    #
    #   * `SUCCEEDED`\: The operation in the specified account and region
    #     completed successfully.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the assigned result status.
    #   @return [String]
    #
    # @!attribute [rw] account_gate_result
    #   The results of the account gate function AWS CloudFormation invokes,
    #   if present, before proceeding with stack set operations in an
    #   account
    #   @return [Types::AccountGateResult]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StackSetOperationResultSummary AWS API Documentation
    #
    class StackSetOperationResultSummary < Struct.new(
      :account,
      :region,
      :status,
      :status_reason,
      :account_gate_result)
      include Aws::Structure
    end

    # The structures that contain summary information about the specified
    # operation.
    #
    # @!attribute [rw] operation_id
    #   The unique ID of the stack set operation.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The type of operation: `CREATE`, `UPDATE`, or `DELETE`. Create and
    #   delete operations affect only the specified stack instances that are
    #   associated with the specified stack set. Update operations affect
    #   both the stack set itself as well as *all* associated stack set
    #   instances.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The overall status of the operation.
    #
    #   * `FAILED`\: The operation exceeded the specified failure tolerance.
    #     The failure tolerance value that you've set for an operation is
    #     applied for each region during stack create and update operations.
    #     If the number of failed stacks within a region exceeds the failure
    #     tolerance, the status of the operation in the region is set to
    #     `FAILED`. This in turn sets the status of the operation as a whole
    #     to `FAILED`, and AWS CloudFormation cancels the operation in any
    #     remaining regions.
    #
    #   * `RUNNING`\: The operation is currently being performed.
    #
    #   * `STOPPED`\: The user has cancelled the operation.
    #
    #   * `STOPPING`\: The operation is in the process of stopping, at user
    #     request.
    #
    #   * `SUCCEEDED`\: The operation completed creating or updating all the
    #     specified stacks without exceeding the failure tolerance for the
    #     operation.
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   The time at which the operation was initiated. Note that the
    #   creation times for the stack set operation might differ from the
    #   creation time of the individual stacks themselves. This is because
    #   AWS CloudFormation needs to perform preparatory work for the
    #   operation, such as dispatching the work to the requested regions,
    #   before actually creating the first stacks.
    #   @return [Time]
    #
    # @!attribute [rw] end_timestamp
    #   The time at which the stack set operation ended, across all accounts
    #   and regions specified. Note that this doesn't necessarily mean that
    #   the stack set operation was successful, or even attempted, in each
    #   account or region.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StackSetOperationSummary AWS API Documentation
    #
    class StackSetOperationSummary < Struct.new(
      :operation_id,
      :action,
      :status,
      :creation_timestamp,
      :end_timestamp)
      include Aws::Structure
    end

    # The structures that contain summary information about the specified
    # stack set.
    #
    # @!attribute [rw] stack_set_name
    #   The name of the stack set.
    #   @return [String]
    #
    # @!attribute [rw] stack_set_id
    #   The ID of the stack set.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the stack set that you specify when the stack set
    #   is created or updated.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the stack set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StackSetSummary AWS API Documentation
    #
    class StackSetSummary < Struct.new(
      :stack_set_name,
      :stack_set_id,
      :description,
      :status)
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
    #   For nested stacks--stacks created as resources for another
    #   stack--the stack ID of the direct parent of this stack. For the
    #   first level of nested stacks, the root stack is also the parent
    #   stack.
    #
    #   For more information, see [Working with Nested Stacks][1] in the
    #   *AWS CloudFormation User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html
    #   @return [String]
    #
    # @!attribute [rw] root_id
    #   For nested stacks--stacks created as resources for another
    #   stack--the stack ID of the the top-level stack to which the nested
    #   stack ultimately belongs.
    #
    #   For more information, see [Working with Nested Stacks][1] in the
    #   *AWS CloudFormation User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html
    #   @return [String]
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
      :root_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopStackSetOperationInput
    #   data as a hash:
    #
    #       {
    #         stack_set_name: "StackSetName", # required
    #         operation_id: "ClientRequestToken", # required
    #       }
    #
    # @!attribute [rw] stack_set_name
    #   The name or unique ID of the stack set that you want to stop the
    #   operation for.
    #   @return [String]
    #
    # @!attribute [rw] operation_id
    #   The ID of the stack operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StopStackSetOperationInput AWS API Documentation
    #
    class StopStackSetOperationInput < Struct.new(
      :stack_set_name,
      :operation_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/StopStackSetOperationOutput AWS API Documentation
    #
    class StopStackSetOperationOutput < Aws::EmptyStructure; end

    # The Tag type enables you to specify a key-value pair that can be used
    # to store information about an AWS CloudFormation stack.
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
    #   *Required*. A string used to identify this tag. You can specify a
    #   maximum of 128 characters for a tag key. Tags owned by Amazon Web
    #   Services (AWS) have the reserved prefix: `aws:`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   *Required*. A string containing the value for this tag. You can
    #   specify a maximum of 256 characters for a tag value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
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
      include Aws::Structure
    end

    # The input for an UpdateStack action.
    #
    # @note When making an API call, you may pass UpdateStackInput
    #   data as a hash:
    #
    #       {
    #         stack_name: "StackName", # required
    #         template_body: "TemplateBody",
    #         template_url: "TemplateURL",
    #         use_previous_template: false,
    #         stack_policy_during_update_body: "StackPolicyDuringUpdateBody",
    #         stack_policy_during_update_url: "StackPolicyDuringUpdateURL",
    #         parameters: [
    #           {
    #             parameter_key: "ParameterKey",
    #             parameter_value: "ParameterValue",
    #             use_previous_value: false,
    #             resolved_value: "ParameterValue",
    #           },
    #         ],
    #         capabilities: ["CAPABILITY_IAM"], # accepts CAPABILITY_IAM, CAPABILITY_NAMED_IAM
    #         resource_types: ["ResourceType"],
    #         role_arn: "RoleARN",
    #         rollback_configuration: {
    #           rollback_triggers: [
    #             {
    #               arn: "Arn", # required
    #               type: "Type", # required
    #             },
    #           ],
    #           monitoring_time_in_minutes: 1,
    #         },
    #         stack_policy_body: "StackPolicyBody",
    #         stack_policy_url: "StackPolicyURL",
    #         notification_arns: ["NotificationARN"],
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         client_request_token: "ClientRequestToken",
    #       }
    #
    # @!attribute [rw] stack_name
    #   The name or unique stack ID of the stack to update.
    #   @return [String]
    #
    # @!attribute [rw] template_body
    #   Structure containing the template body with a minimum length of 1
    #   byte and a maximum length of 51,200 bytes. (For more information, go
    #   to [Template Anatomy][1] in the AWS CloudFormation User Guide.)
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `TemplateBody`, `TemplateURL`, or set the `UsePreviousTemplate` to
    #   `true`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #   @return [String]
    #
    # @!attribute [rw] template_url
    #   Location of file containing the template body. The URL must point to
    #   a template that is located in an Amazon S3 bucket. For more
    #   information, go to [Template Anatomy][1] in the AWS CloudFormation
    #   User Guide.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `TemplateBody`, `TemplateURL`, or set the `UsePreviousTemplate` to
    #   `true`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
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
    #   Structure containing the temporary overriding stack policy body. You
    #   can specify either the `StackPolicyDuringUpdateBody` or the
    #   `StackPolicyDuringUpdateURL` parameter, but not both.
    #
    #   If you want to update protected resources, specify a temporary
    #   overriding stack policy during this update. If you do not specify a
    #   stack policy, the current policy that is associated with the stack
    #   will be used.
    #   @return [String]
    #
    # @!attribute [rw] stack_policy_during_update_url
    #   Location of a file containing the temporary overriding stack policy.
    #   The URL must point to a policy (max size: 16KB) located in an S3
    #   bucket in the same region as the stack. You can specify either the
    #   `StackPolicyDuringUpdateBody` or the `StackPolicyDuringUpdateURL`
    #   parameter, but not both.
    #
    #   If you want to update protected resources, specify a temporary
    #   overriding stack policy during this update. If you do not specify a
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
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html
    #   @return [Array<Types::Parameter>]
    #
    # @!attribute [rw] capabilities
    #   A list of values that you must specify before AWS CloudFormation can
    #   update certain stacks. Some stack templates might include resources
    #   that can affect permissions in your AWS account, for example, by
    #   creating new AWS Identity and Access Management (IAM) users. For
    #   those stacks, you must explicitly acknowledge their capabilities by
    #   specifying this parameter.
    #
    #   The only valid values are `CAPABILITY_IAM` and
    #   `CAPABILITY_NAMED_IAM`. The following resources require you to
    #   specify this parameter: [ AWS::IAM::AccessKey][1], [
    #   AWS::IAM::Group][2], [ AWS::IAM::InstanceProfile][3], [
    #   AWS::IAM::Policy][4], [ AWS::IAM::Role][5], [ AWS::IAM::User][6],
    #   and [ AWS::IAM::UserToGroupAddition][7]. If your stack template
    #   contains these resources, we recommend that you review all
    #   permissions associated with them and edit their permissions if
    #   necessary.
    #
    #   If you have IAM resources, you can specify either capability. If you
    #   have IAM resources with custom names, you must specify
    #   `CAPABILITY_NAMED_IAM`. If you don't specify this parameter, this
    #   action returns an `InsufficientCapabilities` error.
    #
    #   For more information, see [Acknowledging IAM Resources in AWS
    #   CloudFormation Templates][8].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html
    #   [2]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html
    #   [3]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html
    #   [4]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html
    #   [5]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html
    #   [6]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html
    #   [7]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html
    #   [8]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_types
    #   The template resource types that you have permissions to work with
    #   for this update stack action, such as `AWS::EC2::Instance`,
    #   `AWS::EC2::*`, or `Custom::MyCustomInstance`.
    #
    #   If the list of resource types doesn't include a resource that
    #   you're updating, the stack update fails. By default, AWS
    #   CloudFormation grants permissions to all resource types. AWS
    #   Identity and Access Management (IAM) uses this parameter for AWS
    #   CloudFormation-specific condition keys in IAM policies. For more
    #   information, see [Controlling Access with AWS Identity and Access
    #   Management][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an AWS Identity and Access
    #   Management (IAM) role that AWS CloudFormation assumes to update the
    #   stack. AWS CloudFormation uses the role's credentials to make calls
    #   on your behalf. AWS CloudFormation always uses this role for all
    #   future operations on the stack. As long as users have permission to
    #   operate on the stack, AWS CloudFormation uses this role even if the
    #   users don't have permission to pass it. Ensure that the role grants
    #   least privilege.
    #
    #   If you don't specify a value, AWS CloudFormation uses the role that
    #   was previously associated with the stack. If no role is available,
    #   AWS CloudFormation uses a temporary session that is generated from
    #   your user credentials.
    #   @return [String]
    #
    # @!attribute [rw] rollback_configuration
    #   The rollback triggers for AWS CloudFormation to monitor during stack
    #   creation and updating operations, and for the specified monitoring
    #   period afterwards.
    #   @return [Types::RollbackConfiguration]
    #
    # @!attribute [rw] stack_policy_body
    #   Structure containing a new stack policy body. You can specify either
    #   the `StackPolicyBody` or the `StackPolicyURL` parameter, but not
    #   both.
    #
    #   You might update the stack policy, for example, in order to protect
    #   a new resource that you created during a stack update. If you do not
    #   specify a stack policy, the current policy that is associated with
    #   the stack is unchanged.
    #   @return [String]
    #
    # @!attribute [rw] stack_policy_url
    #   Location of a file containing the updated stack policy. The URL must
    #   point to a policy (max size: 16KB) located in an S3 bucket in the
    #   same region as the stack. You can specify either the
    #   `StackPolicyBody` or the `StackPolicyURL` parameter, but not both.
    #
    #   You might update the stack policy, for example, in order to protect
    #   a new resource that you created during a stack update. If you do not
    #   specify a stack policy, the current policy that is associated with
    #   the stack is unchanged.
    #   @return [String]
    #
    # @!attribute [rw] notification_arns
    #   Amazon Simple Notification Service topic Amazon Resource Names
    #   (ARNs) that AWS CloudFormation associates with the stack. Specify an
    #   empty list to remove all notification topics.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Key-value pairs to associate with this stack. AWS CloudFormation
    #   also propagates these tags to supported resources in the stack. You
    #   can specify a maximum number of 50 tags.
    #
    #   If you don't specify this parameter, AWS CloudFormation doesn't
    #   modify the stack's tags. If you specify an empty value, AWS
    #   CloudFormation removes all associated tags.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] client_request_token
    #   A unique identifier for this `UpdateStack` request. Specify this
    #   token if you plan to retry requests so that AWS CloudFormation knows
    #   that you're not attempting to update a stack with the same name.
    #   You might retry `UpdateStack` requests to ensure that AWS
    #   CloudFormation successfully received them.
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
      :client_request_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateStackInstancesInput
    #   data as a hash:
    #
    #       {
    #         stack_set_name: "StackSetNameOrId", # required
    #         accounts: ["Account"], # required
    #         regions: ["Region"], # required
    #         parameter_overrides: [
    #           {
    #             parameter_key: "ParameterKey",
    #             parameter_value: "ParameterValue",
    #             use_previous_value: false,
    #             resolved_value: "ParameterValue",
    #           },
    #         ],
    #         operation_preferences: {
    #           region_order: ["Region"],
    #           failure_tolerance_count: 1,
    #           failure_tolerance_percentage: 1,
    #           max_concurrent_count: 1,
    #           max_concurrent_percentage: 1,
    #         },
    #         operation_id: "ClientRequestToken",
    #       }
    #
    # @!attribute [rw] stack_set_name
    #   The name or unique ID of the stack set associated with the stack
    #   instances.
    #   @return [String]
    #
    # @!attribute [rw] accounts
    #   The names of one or more AWS accounts for which you want to update
    #   parameter values for stack instances. The overridden parameter
    #   values will be applied to all stack instances in the specified
    #   accounts and regions.
    #   @return [Array<String>]
    #
    # @!attribute [rw] regions
    #   The names of one or more regions in which you want to update
    #   parameter values for stack instances. The overridden parameter
    #   values will be applied to all stack instances in the specified
    #   accounts and regions.
    #   @return [Array<String>]
    #
    # @!attribute [rw] parameter_overrides
    #   A list of input parameters whose values you want to update for the
    #   specified stack instances.
    #
    #   Any overridden parameter values will be applied to all stack
    #   instances in the specified accounts and regions. When specifying
    #   parameters and their values, be aware of how AWS CloudFormation sets
    #   parameter values during stack instance update operations:
    #
    #   * To override the current value for a parameter, include the
    #     parameter and specify its value.
    #
    #   * To leave a parameter set to its present value, you can do one of
    #     the following:
    #
    #     * Do not include the parameter in the list.
    #
    #     * Include the parameter and specify `UsePreviousValue` as `true`.
    #       (You cannot specify both a value and set `UsePreviousValue` to
    #       `true`.)
    #
    #   * To set all overridden parameter back to the values specified in
    #     the stack set, specify a parameter list but do not include any
    #     parameters.
    #
    #   * To leave all parameters set to their present values, do not
    #     specify this property at all.
    #
    #   During stack set updates, any parameter values overridden for a
    #   stack instance are not updated, but retain their overridden value.
    #
    #   You can only override the parameter *values* that are specified in
    #   the stack set; to add or delete a parameter itself, use
    #   `UpdateStackSet` to update the stack set template. If you add a
    #   parameter to a template, before you can override the parameter value
    #   specified in the stack set you must first use [UpdateStackSet][1] to
    #   update all stack instances with the updated template and parameter
    #   value specified in the stack set. Once a stack instance has been
    #   updated with the new parameter, you can then override the parameter
    #   value using `UpdateStackInstances`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html
    #   @return [Array<Types::Parameter>]
    #
    # @!attribute [rw] operation_preferences
    #   Preferences for how AWS CloudFormation performs this stack set
    #   operation.
    #   @return [Types::StackSetOperationPreferences]
    #
    # @!attribute [rw] operation_id
    #   The unique identifier for this stack set operation.
    #
    #   The operation ID also functions as an idempotency token, to ensure
    #   that AWS CloudFormation performs the stack set operation only once,
    #   even if you retry the request multiple times. You might retry stack
    #   set operation requests to ensure that AWS CloudFormation
    #   successfully received them.
    #
    #   If you don't specify an operation ID, the SDK generates one
    #   automatically.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/UpdateStackInstancesInput AWS API Documentation
    #
    class UpdateStackInstancesInput < Struct.new(
      :stack_set_name,
      :accounts,
      :regions,
      :parameter_overrides,
      :operation_preferences,
      :operation_id)
      include Aws::Structure
    end

    # @!attribute [rw] operation_id
    #   The unique identifier for this stack set operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/UpdateStackInstancesOutput AWS API Documentation
    #
    class UpdateStackInstancesOutput < Struct.new(
      :operation_id)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateStackSetInput
    #   data as a hash:
    #
    #       {
    #         stack_set_name: "StackSetName", # required
    #         description: "Description",
    #         template_body: "TemplateBody",
    #         template_url: "TemplateURL",
    #         use_previous_template: false,
    #         parameters: [
    #           {
    #             parameter_key: "ParameterKey",
    #             parameter_value: "ParameterValue",
    #             use_previous_value: false,
    #             resolved_value: "ParameterValue",
    #           },
    #         ],
    #         capabilities: ["CAPABILITY_IAM"], # accepts CAPABILITY_IAM, CAPABILITY_NAMED_IAM
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         operation_preferences: {
    #           region_order: ["Region"],
    #           failure_tolerance_count: 1,
    #           failure_tolerance_percentage: 1,
    #           max_concurrent_count: 1,
    #           max_concurrent_percentage: 1,
    #         },
    #         administration_role_arn: "RoleARN",
    #         execution_role_name: "ExecutionRoleName",
    #         operation_id: "ClientRequestToken",
    #         accounts: ["Account"],
    #         regions: ["Region"],
    #       }
    #
    # @!attribute [rw] stack_set_name
    #   The name or unique ID of the stack set that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A brief description of updates that you are making.
    #   @return [String]
    #
    # @!attribute [rw] template_body
    #   The structure that contains the template body, with a minimum length
    #   of 1 byte and a maximum length of 51,200 bytes. For more
    #   information, see [Template Anatomy][1] in the AWS CloudFormation
    #   User Guide.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `TemplateBody` or `TemplateURL`—or set `UsePreviousTemplate` to
    #   true.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #   @return [String]
    #
    # @!attribute [rw] template_url
    #   The location of the file that contains the template body. The URL
    #   must point to a template (maximum size: 460,800 bytes) that is
    #   located in an Amazon S3 bucket. For more information, see [Template
    #   Anatomy][1] in the AWS CloudFormation User Guide.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `TemplateBody` or `TemplateURL`—or set `UsePreviousTemplate` to
    #   true.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #   @return [String]
    #
    # @!attribute [rw] use_previous_template
    #   Use the existing template that's associated with the stack set that
    #   you're updating.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `TemplateBody` or `TemplateURL`—or set `UsePreviousTemplate` to
    #   true.
    #   @return [Boolean]
    #
    # @!attribute [rw] parameters
    #   A list of input parameters for the stack set template.
    #   @return [Array<Types::Parameter>]
    #
    # @!attribute [rw] capabilities
    #   A list of values that you must specify before AWS CloudFormation can
    #   create certain stack sets. Some stack set templates might include
    #   resources that can affect permissions in your AWS account—for
    #   example, by creating new AWS Identity and Access Management (IAM)
    #   users. For those stack sets, you must explicitly acknowledge their
    #   capabilities by specifying this parameter.
    #
    #   The only valid values are CAPABILITY\_IAM and
    #   CAPABILITY\_NAMED\_IAM. The following resources require you to
    #   specify this parameter:
    #
    #   * AWS::IAM::AccessKey
    #
    #   * AWS::IAM::Group
    #
    #   * AWS::IAM::InstanceProfile
    #
    #   * AWS::IAM::Policy
    #
    #   * AWS::IAM::Role
    #
    #   * AWS::IAM::User
    #
    #   * AWS::IAM::UserToGroupAddition
    #
    #   If your stack template contains these resources, we recommend that
    #   you review all permissions that are associated with them and edit
    #   their permissions if necessary.
    #
    #   If you have IAM resources, you can specify either capability. If you
    #   have IAM resources with custom names, you must specify
    #   CAPABILITY\_NAMED\_IAM. If you don't specify this parameter, this
    #   action returns an `InsufficientCapabilities` error.
    #
    #   For more information, see [Acknowledging IAM Resources in AWS
    #   CloudFormation Templates.][1]
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The key-value pairs to associate with this stack set and the stacks
    #   created from it. AWS CloudFormation also propagates these tags to
    #   supported resources that are created in the stacks. You can specify
    #   a maximum number of 50 tags.
    #
    #   If you specify tags for this parameter, those tags replace any list
    #   of tags that are currently associated with this stack set. This
    #   means:
    #
    #   * If you don't specify this parameter, AWS CloudFormation doesn't
    #     modify the stack's tags.
    #
    #   * If you specify *any* tags using this parameter, you must specify
    #     *all* the tags that you want associated with this stack set, even
    #     tags you've specifed before (for example, when creating the stack
    #     set or during a previous update of the stack set.). Any tags that
    #     you don't include in the updated list of tags are removed from
    #     the stack set, and therefore from the stacks and resources as
    #     well.
    #
    #   * If you specify an empty value, AWS CloudFormation removes all
    #     currently associated tags.
    #
    #   If you specify new tags as part of an `UpdateStackSet` action, AWS
    #   CloudFormation checks to see if you have the required IAM permission
    #   to tag resources. If you omit tags that are currently associated
    #   with the stack set from the list of tags you specify, AWS
    #   CloudFormation assumes that you want to remove those tags from the
    #   stack set, and checks to see if you have permission to untag
    #   resources. If you don't have the necessary permission(s), the
    #   entire `UpdateStackSet` action fails with an `access denied` error,
    #   and the stack set is not updated.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] operation_preferences
    #   Preferences for how AWS CloudFormation performs this stack set
    #   operation.
    #   @return [Types::StackSetOperationPreferences]
    #
    # @!attribute [rw] administration_role_arn
    #   The Amazon Resource Number (ARN) of the IAM role to use to update
    #   this stack set.
    #
    #   Specify an IAM role only if you are using customized administrator
    #   roles to control which users or groups can manage specific stack
    #   sets within the same administrator account. For more information,
    #   see [Define Permissions for Multiple Administrators][1] in the *AWS
    #   CloudFormation User Guide*.
    #
    #   If you specify a customized administrator role, AWS CloudFormation
    #   uses that role to update the stack. If you do not specify a
    #   customized administrator role, AWS CloudFormation performs the
    #   update using the role previously associated with the stack set, so
    #   long as you have permissions to perform operations on the stack set.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html
    #   @return [String]
    #
    # @!attribute [rw] execution_role_name
    #   The name of the IAM execution role to use to update the stack set.
    #   If you do not specify an execution role, AWS CloudFormation uses the
    #   `AWSCloudFormationStackSetExecutionRole` role for the stack set
    #   operation.
    #
    #   Specify an IAM role only if you are using customized execution roles
    #   to control which stack resources users and groups can include in
    #   their stack sets.
    #
    #   If you specify a customized execution role, AWS CloudFormation uses
    #   that role to update the stack. If you do not specify a customized
    #   execution role, AWS CloudFormation performs the update using the
    #   role previously associated with the stack set, so long as you have
    #   permissions to perform operations on the stack set.
    #   @return [String]
    #
    # @!attribute [rw] operation_id
    #   The unique ID for this stack set operation.
    #
    #   The operation ID also functions as an idempotency token, to ensure
    #   that AWS CloudFormation performs the stack set operation only once,
    #   even if you retry the request multiple times. You might retry stack
    #   set operation requests to ensure that AWS CloudFormation
    #   successfully received them.
    #
    #   If you don't specify an operation ID, AWS CloudFormation generates
    #   one automatically.
    #
    #   Repeating this stack set operation with a new operation ID retries
    #   all stack instances whose status is `OUTDATED`.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] accounts
    #   The accounts in which to update associated stack instances. If you
    #   specify accounts, you must also specify the regions in which to
    #   update stack set instances.
    #
    #   To update *all* the stack instances associated with this stack set,
    #   do not specify the `Accounts` or `Regions` properties.
    #
    #   If the stack set update includes changes to the template (that is,
    #   if the `TemplateBody` or `TemplateURL` properties are specified), or
    #   the `Parameters` property, AWS CloudFormation marks all stack
    #   instances with a status of `OUTDATED` prior to updating the stack
    #   instances in the specified accounts and regions. If the stack set
    #   update does not include changes to the template or parameters, AWS
    #   CloudFormation updates the stack instances in the specified accounts
    #   and regions, while leaving all other stack instances with their
    #   existing stack instance status.
    #   @return [Array<String>]
    #
    # @!attribute [rw] regions
    #   The regions in which to update associated stack instances. If you
    #   specify regions, you must also specify accounts in which to update
    #   stack set instances.
    #
    #   To update *all* the stack instances associated with this stack set,
    #   do not specify the `Accounts` or `Regions` properties.
    #
    #   If the stack set update includes changes to the template (that is,
    #   if the `TemplateBody` or `TemplateURL` properties are specified), or
    #   the `Parameters` property, AWS CloudFormation marks all stack
    #   instances with a status of `OUTDATED` prior to updating the stack
    #   instances in the specified accounts and regions. If the stack set
    #   update does not include changes to the template or parameters, AWS
    #   CloudFormation updates the stack instances in the specified accounts
    #   and regions, while leaving all other stack instances with their
    #   existing stack instance status.
    #   @return [Array<String>]
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
      :operation_id,
      :accounts,
      :regions)
      include Aws::Structure
    end

    # @!attribute [rw] operation_id
    #   The unique ID for this stack set operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/UpdateStackSetOutput AWS API Documentation
    #
    class UpdateStackSetOutput < Struct.new(
      :operation_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateTerminationProtectionInput
    #   data as a hash:
    #
    #       {
    #         enable_termination_protection: false, # required
    #         stack_name: "StackNameOrId", # required
    #       }
    #
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
      include Aws::Structure
    end

    # The input for ValidateTemplate action.
    #
    # @note When making an API call, you may pass ValidateTemplateInput
    #   data as a hash:
    #
    #       {
    #         template_body: "TemplateBody",
    #         template_url: "TemplateURL",
    #       }
    #
    # @!attribute [rw] template_body
    #   Structure containing the template body with a minimum length of 1
    #   byte and a maximum length of 51,200 bytes. For more information, go
    #   to [Template Anatomy][1] in the AWS CloudFormation User Guide.
    #
    #   Conditional: You must pass `TemplateURL` or `TemplateBody`. If both
    #   are passed, only `TemplateBody` is used.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #   @return [String]
    #
    # @!attribute [rw] template_url
    #   Location of file containing the template body. The URL must point to
    #   a template (max size: 460,800 bytes) that is located in an Amazon S3
    #   bucket. For more information, go to [Template Anatomy][1] in the AWS
    #   CloudFormation User Guide.
    #
    #   Conditional: You must pass `TemplateURL` or `TemplateBody`. If both
    #   are passed, only `TemplateBody` is used.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/ValidateTemplateInput AWS API Documentation
    #
    class ValidateTemplateInput < Struct.new(
      :template_body,
      :template_url)
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
    #   For more information, see [Acknowledging IAM Resources in AWS
    #   CloudFormation Templates][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities
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
      include Aws::Structure
    end

  end
end
