# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws
  module CloudFormation
    module Types

      # The AccountLimit data type.
      # @!attribute [rw] name
      #   The name of the account limit. Currently, the only account limit is
      #   `StackLimit`.
      #   @return [String]
      #
      # @!attribute [rw] value
      #   The value that is associated with the account limit name.
      #   @return [Integer]
      class AccountLimit < Struct.new(
        :name,
        :value)
        include Aws::Structure
      end

      # The input for the CancelUpdateStack action.
      # @note When making an API call, pass CancelUpdateStackInput
      #   data as a hash:
      #
      #       {
      #         stack_name: "StackName", # required
      #       }
      # @!attribute [rw] stack_name
      #   The name or the unique stack ID that is associated with the stack.
      #   @return [String]
      class CancelUpdateStackInput < Struct.new(
        :stack_name)
        include Aws::Structure
      end

      # The `Change` structure describes the changes AWS CloudFormation will
      # perform if you execute the change set.
      # @!attribute [rw] type
      #   The type of entity that AWS CloudFormation changes. Currently, the
      #   only entity type is `Resource`.
      #   @return [String]
      #
      # @!attribute [rw] resource_change
      #   A `ResourceChange` structure that describes the resource and action
      #   that AWS CloudFormation will perform.
      #   @return [Types::ResourceChange]
      class Change < Struct.new(
        :type,
        :resource_change)
        include Aws::Structure
      end

      # The `ChangeSetSummary` structure describes a change set, its status,
      # and the stack with which it's associated.
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
      # @note When making an API call, pass ContinueUpdateRollbackInput
      #   data as a hash:
      #
      #       {
      #         stack_name: "StackNameOrId", # required
      #         role_arn: "RoleARN",
      #         resources_to_skip: ["ResourceToSkip"],
      #       }
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
      #   update was canceled. To check why a resource update failed, use the
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
      #   To specify resources in a nested stack, use the following format:
      #   `NestedStackName.ResourceLogicalID`. You can specify a nested stack
      #   resource (the logical ID of an `AWS::CloudFormation::Stack`
      #   resource) only if it's in one of the following states:
      #   `DELETE_IN_PROGRESS`, `DELETE_COMPLETE`, or `DELETE_FAILED`.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/troubleshooting.html#troubleshooting-errors-update-rollback-failed
      #   @return [Array<String>]
      class ContinueUpdateRollbackInput < Struct.new(
        :stack_name,
        :role_arn,
        :resources_to_skip)
        include Aws::Structure
      end

      # The output for a ContinueUpdateRollback action.
      class ContinueUpdateRollbackOutput < Aws::EmptyStructure; end

      # The input for the CreateChangeSet action.
      # @note When making an API call, pass CreateChangeSetInput
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
      #           },
      #         ],
      #         capabilities: ["CAPABILITY_IAM"], # accepts CAPABILITY_IAM, CAPABILITY_NAMED_IAM
      #         resource_types: ["ResourceType"],
      #         role_arn: "RoleARN",
      #         notification_arns: ["NotificationARN"],
      #         tags: [
      #           {
      #             key: "TagKey",
      #             value: "TagValue",
      #           },
      #         ],
      #         change_set_name: "ChangeSetName", # required
      #         client_token: "ClientToken",
      #         description: "Description",
      #         change_set_type: "CREATE", # accepts CREATE, UPDATE
      #       }
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
      #   specify a maximum of 10 tags.
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
      class CreateChangeSetInput < Struct.new(
        :stack_name,
        :template_body,
        :template_url,
        :use_previous_template,
        :parameters,
        :capabilities,
        :resource_types,
        :role_arn,
        :notification_arns,
        :tags,
        :change_set_name,
        :client_token,
        :description,
        :change_set_type)
        include Aws::Structure
      end

      # The output for the CreateChangeSet action.
      # @!attribute [rw] id
      #   The Amazon Resource Name (ARN) of the change set.
      #   @return [String]
      #
      # @!attribute [rw] stack_id
      #   The unique ID of the stack.
      #   @return [String]
      class CreateChangeSetOutput < Struct.new(
        :id,
        :stack_id)
        include Aws::Structure
      end

      # The input for CreateStack action.
      # @note When making an API call, pass CreateStackInput
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
      #           },
      #         ],
      #         disable_rollback: false,
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
      #             key: "TagKey",
      #             value: "TagValue",
      #           },
      #         ],
      #       }
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
      # @!attribute [rw] timeout_in_minutes
      #   The amount of time that can pass before the stack status becomes
      #   CREATE\_FAILED; if `DisableRollback` is not set or is set to
      #   `false`, the stack will be rolled back.
      #   @return [Integer]
      #
      # @!attribute [rw] notification_arns
      #   The Simple Notification Service (SNS) topic ARNs to publish stack
      #   related events. You can find your SNS topic ARNs using the [SNS
      #   console][1] or your Command Line Interface (CLI).
      #
      #
      #
      #   [1]: https://console.aws.amazon.com/sns
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
      #   maximum number of 10 tags can be specified.
      #   @return [Array<Types::Tag>]
      class CreateStackInput < Struct.new(
        :stack_name,
        :template_body,
        :template_url,
        :parameters,
        :disable_rollback,
        :timeout_in_minutes,
        :notification_arns,
        :capabilities,
        :resource_types,
        :role_arn,
        :on_failure,
        :stack_policy_body,
        :stack_policy_url,
        :tags)
        include Aws::Structure
      end

      # The output for a CreateStack action.
      # @!attribute [rw] stack_id
      #   Unique identifier of the stack.
      #   @return [String]
      class CreateStackOutput < Struct.new(
        :stack_id)
        include Aws::Structure
      end

      # The input for the DeleteChangeSet action.
      # @note When making an API call, pass DeleteChangeSetInput
      #   data as a hash:
      #
      #       {
      #         change_set_name: "ChangeSetNameOrId", # required
      #         stack_name: "StackNameOrId",
      #       }
      # @!attribute [rw] change_set_name
      #   The name or Amazon Resource Name (ARN) of the change set that you
      #   want to delete.
      #   @return [String]
      #
      # @!attribute [rw] stack_name
      #   If you specified the name of a change set to delete, specify the
      #   stack name or ID (ARN) that is associated with it.
      #   @return [String]
      class DeleteChangeSetInput < Struct.new(
        :change_set_name,
        :stack_name)
        include Aws::Structure
      end

      # The output for the DeleteChangeSet action.
      class DeleteChangeSetOutput < Aws::EmptyStructure; end

      # The input for DeleteStack action.
      # @note When making an API call, pass DeleteStackInput
      #   data as a hash:
      #
      #       {
      #         stack_name: "StackName", # required
      #         retain_resources: ["LogicalResourceId"],
      #         role_arn: "RoleARN",
      #       }
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
      class DeleteStackInput < Struct.new(
        :stack_name,
        :retain_resources,
        :role_arn)
        include Aws::Structure
      end

      # The input for the DescribeAccountLimits action.
      # @note When making an API call, pass DescribeAccountLimitsInput
      #   data as a hash:
      #
      #       {
      #         next_token: "NextToken",
      #       }
      # @!attribute [rw] next_token
      #   A string that identifies the next page of limits that you want to
      #   retrieve.
      #   @return [String]
      class DescribeAccountLimitsInput < Struct.new(
        :next_token)
        include Aws::Structure
      end

      # The output for the DescribeAccountLimits action.
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
      class DescribeAccountLimitsOutput < Struct.new(
        :account_limits,
        :next_token)
        include Aws::Structure
      end

      # The input for the DescribeChangeSet action.
      # @note When making an API call, pass DescribeChangeSetInput
      #   data as a hash:
      #
      #       {
      #         change_set_name: "ChangeSetNameOrId", # required
      #         stack_name: "StackNameOrId",
      #         next_token: "NextToken",
      #       }
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
      class DescribeChangeSetInput < Struct.new(
        :change_set_name,
        :stack_name,
        :next_token)
        include Aws::Structure
      end

      # The output for the DescribeChangeSet action.
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
        :capabilities,
        :tags,
        :changes,
        :next_token)
        include Aws::Structure
      end

      # The input for DescribeStackEvents action.
      # @note When making an API call, pass DescribeStackEventsInput
      #   data as a hash:
      #
      #       {
      #         stack_name: "StackName",
      #         next_token: "NextToken",
      #       }
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
      class DescribeStackEventsInput < Struct.new(
        :stack_name,
        :next_token)
        include Aws::Structure
      end

      # The output for a DescribeStackEvents action.
      # @!attribute [rw] stack_events
      #   A list of `StackEvents` structures.
      #   @return [Array<Types::StackEvent>]
      #
      # @!attribute [rw] next_token
      #   If the output exceeds 1 MB in size, a string that identifies the
      #   next page of events. If no additional page exists, this value is
      #   null.
      #   @return [String]
      class DescribeStackEventsOutput < Struct.new(
        :stack_events,
        :next_token)
        include Aws::Structure
      end

      # The input for DescribeStackResource action.
      # @note When making an API call, pass DescribeStackResourceInput
      #   data as a hash:
      #
      #       {
      #         stack_name: "StackName", # required
      #         logical_resource_id: "LogicalResourceId", # required
      #       }
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
      class DescribeStackResourceInput < Struct.new(
        :stack_name,
        :logical_resource_id)
        include Aws::Structure
      end

      # The output for a DescribeStackResource action.
      # @!attribute [rw] stack_resource_detail
      #   A `StackResourceDetail` structure containing the description of the
      #   specified resource in the specified stack.
      #   @return [Types::StackResourceDetail]
      class DescribeStackResourceOutput < Struct.new(
        :stack_resource_detail)
        include Aws::Structure
      end

      # The input for DescribeStackResources action.
      # @note When making an API call, pass DescribeStackResourcesInput
      #   data as a hash:
      #
      #       {
      #         stack_name: "StackName",
      #         logical_resource_id: "LogicalResourceId",
      #         physical_resource_id: "PhysicalResourceId",
      #       }
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
      class DescribeStackResourcesInput < Struct.new(
        :stack_name,
        :logical_resource_id,
        :physical_resource_id)
        include Aws::Structure
      end

      # The output for a DescribeStackResources action.
      # @!attribute [rw] stack_resources
      #   A list of `StackResource` structures.
      #   @return [Array<Types::StackResource>]
      class DescribeStackResourcesOutput < Struct.new(
        :stack_resources)
        include Aws::Structure
      end

      # The input for DescribeStacks action.
      # @note When making an API call, pass DescribeStacksInput
      #   data as a hash:
      #
      #       {
      #         stack_name: "StackName",
      #         next_token: "NextToken",
      #       }
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
      class DescribeStacksInput < Struct.new(
        :stack_name,
        :next_token)
        include Aws::Structure
      end

      # The output for a DescribeStacks action.
      # @!attribute [rw] stacks
      #   A list of stack structures.
      #   @return [Array<Types::Stack>]
      #
      # @!attribute [rw] next_token
      #   If the output exceeds 1 MB in size, a string that identifies the
      #   next page of stacks. If no additional page exists, this value is
      #   null.
      #   @return [String]
      class DescribeStacksOutput < Struct.new(
        :stacks,
        :next_token)
        include Aws::Structure
      end

      # The input for an EstimateTemplateCost action.
      # @note When making an API call, pass EstimateTemplateCostInput
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
      #           },
      #         ],
      #       }
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
      class EstimateTemplateCostInput < Struct.new(
        :template_body,
        :template_url,
        :parameters)
        include Aws::Structure
      end

      # The output for a EstimateTemplateCost action.
      # @!attribute [rw] url
      #   An AWS Simple Monthly Calculator URL with a query string that
      #   describes the resources required to run the template.
      #   @return [String]
      class EstimateTemplateCostOutput < Struct.new(
        :url)
        include Aws::Structure
      end

      # The input for the ExecuteChangeSet action.
      # @note When making an API call, pass ExecuteChangeSetInput
      #   data as a hash:
      #
      #       {
      #         change_set_name: "ChangeSetNameOrId", # required
      #         stack_name: "StackNameOrId",
      #       }
      # @!attribute [rw] change_set_name
      #   The name or ARN of the change set that you want use to update the
      #   specified stack.
      #   @return [String]
      #
      # @!attribute [rw] stack_name
      #   If you specified the name of a change set, specify the stack name or
      #   ID (ARN) that is associated with the change set you want to execute.
      #   @return [String]
      class ExecuteChangeSetInput < Struct.new(
        :change_set_name,
        :stack_name)
        include Aws::Structure
      end

      # The output for the ExecuteChangeSet action.
      class ExecuteChangeSetOutput < Aws::EmptyStructure; end

      # The `Export` structure describes the exported output values for a
      # stack.
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
      class Export < Struct.new(
        :exporting_stack_id,
        :name,
        :value)
        include Aws::Structure
      end

      # The input for the GetStackPolicy action.
      # @note When making an API call, pass GetStackPolicyInput
      #   data as a hash:
      #
      #       {
      #         stack_name: "StackName", # required
      #       }
      # @!attribute [rw] stack_name
      #   The name or unique stack ID that is associated with the stack whose
      #   policy you want to get.
      #   @return [String]
      class GetStackPolicyInput < Struct.new(
        :stack_name)
        include Aws::Structure
      end

      # The output for the GetStackPolicy action.
      # @!attribute [rw] stack_policy_body
      #   Structure containing the stack policy body. (For more information,
      #   go to [ Prevent Updates to Stack Resources][1] in the AWS
      #   CloudFormation User Guide.)
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html
      #   @return [String]
      class GetStackPolicyOutput < Struct.new(
        :stack_policy_body)
        include Aws::Structure
      end

      # The input for a GetTemplate action.
      # @note When making an API call, pass GetTemplateInput
      #   data as a hash:
      #
      #       {
      #         stack_name: "StackName",
      #         change_set_name: "ChangeSetNameOrId",
      #         template_stage: "Original", # accepts Original, Processed
      #       }
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
      class GetTemplateInput < Struct.new(
        :stack_name,
        :change_set_name,
        :template_stage)
        include Aws::Structure
      end

      # The output for GetTemplate action.
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
      class GetTemplateOutput < Struct.new(
        :template_body,
        :stages_available)
        include Aws::Structure
      end

      # The input for the GetTemplateSummary action.
      # @note When making an API call, pass GetTemplateSummaryInput
      #   data as a hash:
      #
      #       {
      #         template_body: "TemplateBody",
      #         template_url: "TemplateURL",
      #         stack_name: "StackNameOrId",
      #       }
      # @!attribute [rw] template_body
      #   Structure containing the template body with a minimum length of 1
      #   byte and a maximum length of 51,200 bytes. For more information
      #   about templates, see [Template Anatomy][1] in the AWS CloudFormation
      #   User Guide.
      #
      #   Conditional: You must specify only one of the following parameters:
      #   `StackName`, `TemplateBody`, or `TemplateURL`.
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
      #   `StackName`, `TemplateBody`, or `TemplateURL`.
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
      #   `StackName`, `TemplateBody`, or `TemplateURL`.
      #   @return [String]
      class GetTemplateSummaryInput < Struct.new(
        :template_body,
        :template_url,
        :stack_name)
        include Aws::Structure
      end

      # The output for the GetTemplateSummary action.
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
      # @note When making an API call, pass ListChangeSetsInput
      #   data as a hash:
      #
      #       {
      #         stack_name: "StackNameOrId", # required
      #         next_token: "NextToken",
      #       }
      # @!attribute [rw] stack_name
      #   The name or the Amazon Resource Name (ARN) of the stack for which
      #   you want to list change sets.
      #   @return [String]
      #
      # @!attribute [rw] next_token
      #   A string (provided by the ListChangeSets response output) that
      #   identifies the next page of change sets that you want to retrieve.
      #   @return [String]
      class ListChangeSetsInput < Struct.new(
        :stack_name,
        :next_token)
        include Aws::Structure
      end

      # The output for the ListChangeSets action.
      # @!attribute [rw] summaries
      #   A list of `ChangeSetSummary` structures that provides the ID and
      #   status of each change set for the specified stack.
      #   @return [Array<Types::ChangeSetSummary>]
      #
      # @!attribute [rw] next_token
      #   If the output exceeds 1 MB, a string that identifies the next page
      #   of change sets. If there is no additional page, this value is null.
      #   @return [String]
      class ListChangeSetsOutput < Struct.new(
        :summaries,
        :next_token)
        include Aws::Structure
      end

      # @note When making an API call, pass ListExportsInput
      #   data as a hash:
      #
      #       {
      #         next_token: "NextToken",
      #       }
      # @!attribute [rw] next_token
      #   A string (provided by the ListExports response output) that
      #   identifies the next page of exported output values that you asked to
      #   retrieve.
      #   @return [String]
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
      class ListExportsOutput < Struct.new(
        :exports,
        :next_token)
        include Aws::Structure
      end

      # @note When making an API call, pass ListImportsInput
      #   data as a hash:
      #
      #       {
      #         export_name: "ExportName", # required
      #         next_token: "NextToken",
      #       }
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
      class ListImportsOutput < Struct.new(
        :imports,
        :next_token)
        include Aws::Structure
      end

      # The input for the ListStackResource action.
      # @note When making an API call, pass ListStackResourcesInput
      #   data as a hash:
      #
      #       {
      #         stack_name: "StackName", # required
      #         next_token: "NextToken",
      #       }
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
      class ListStackResourcesInput < Struct.new(
        :stack_name,
        :next_token)
        include Aws::Structure
      end

      # The output for a ListStackResources action.
      # @!attribute [rw] stack_resource_summaries
      #   A list of `StackResourceSummary` structures.
      #   @return [Array<Types::StackResourceSummary>]
      #
      # @!attribute [rw] next_token
      #   If the output exceeds 1 MB, a string that identifies the next page
      #   of stack resources. If no additional page exists, this value is
      #   null.
      #   @return [String]
      class ListStackResourcesOutput < Struct.new(
        :stack_resource_summaries,
        :next_token)
        include Aws::Structure
      end

      # The input for ListStacks action.
      # @note When making an API call, pass ListStacksInput
      #   data as a hash:
      #
      #       {
      #         next_token: "NextToken",
      #         stack_status_filter: ["CREATE_IN_PROGRESS"], # accepts CREATE_IN_PROGRESS, CREATE_FAILED, CREATE_COMPLETE, ROLLBACK_IN_PROGRESS, ROLLBACK_FAILED, ROLLBACK_COMPLETE, DELETE_IN_PROGRESS, DELETE_FAILED, DELETE_COMPLETE, UPDATE_IN_PROGRESS, UPDATE_COMPLETE_CLEANUP_IN_PROGRESS, UPDATE_COMPLETE, UPDATE_ROLLBACK_IN_PROGRESS, UPDATE_ROLLBACK_FAILED, UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS, UPDATE_ROLLBACK_COMPLETE, REVIEW_IN_PROGRESS
      #       }
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
      class ListStacksInput < Struct.new(
        :next_token,
        :stack_status_filter)
        include Aws::Structure
      end

      # The output for ListStacks action.
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
      class ListStacksOutput < Struct.new(
        :stack_summaries,
        :next_token)
        include Aws::Structure
      end

      # The Output data type.
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
      class Output < Struct.new(
        :output_key,
        :output_value,
        :description)
        include Aws::Structure
      end

      # The Parameter data type.
      # @note When making an API call, pass Parameter
      #   data as a hash:
      #
      #       {
      #         parameter_key: "ParameterKey",
      #         parameter_value: "ParameterValue",
      #         use_previous_value: false,
      #       }
      # @!attribute [rw] parameter_key
      #   The key associated with the parameter. If you don't specify a key
      #   and value for a particular parameter, AWS CloudFormation uses the
      #   default value that is specified in your template.
      #   @return [String]
      #
      # @!attribute [rw] parameter_value
      #   The value associated with the parameter.
      #   @return [String]
      #
      # @!attribute [rw] use_previous_value
      #   During a stack update, use the existing parameter value that the
      #   stack is using for a given parameter key. If you specify `true`, do
      #   not specify a parameter value.
      #   @return [Boolean]
      class Parameter < Struct.new(
        :parameter_key,
        :parameter_value,
        :use_previous_value)
        include Aws::Structure
      end

      # A set of criteria that AWS CloudFormation uses to validate parameter
      # values. Although other constraints might be defined in the stack
      # template, AWS CloudFormation returns only the `AllowedValues`
      # property.
      # @!attribute [rw] allowed_values
      #   A list of values that are permitted for a parameter.
      #   @return [Array<String>]
      class ParameterConstraints < Struct.new(
        :allowed_values)
        include Aws::Structure
      end

      # The ParameterDeclaration data type.
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
      class ResourceChangeDetail < Struct.new(
        :target,
        :evaluation,
        :change_source,
        :causing_entity)
        include Aws::Structure
      end

      # The field that AWS CloudFormation will change, such as the name of a
      # resource's property, and whether the resource will be recreated.
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
      class ResourceTargetDefinition < Struct.new(
        :attribute,
        :name,
        :requires_recreation)
        include Aws::Structure
      end

      # The input for the SetStackPolicy action.
      # @note When making an API call, pass SetStackPolicyInput
      #   data as a hash:
      #
      #       {
      #         stack_name: "StackName", # required
      #         stack_policy_body: "StackPolicyBody",
      #         stack_policy_url: "StackPolicyURL",
      #       }
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
      class SetStackPolicyInput < Struct.new(
        :stack_name,
        :stack_policy_body,
        :stack_policy_url)
        include Aws::Structure
      end

      # The input for the SignalResource action.
      # @note When making an API call, pass SignalResourceInput
      #   data as a hash:
      #
      #       {
      #         stack_name: "StackNameOrId", # required
      #         logical_resource_id: "LogicalResourceId", # required
      #         unique_id: "ResourceSignalUniqueId", # required
      #         status: "SUCCESS", # required, accepts SUCCESS, FAILURE
      #       }
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
      class SignalResourceInput < Struct.new(
        :stack_name,
        :logical_resource_id,
        :unique_id,
        :status)
        include Aws::Structure
      end

      # The Stack data type.
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
      # @!attribute [rw] last_updated_time
      #   The time the stack was last updated. This field will only be
      #   returned if the stack has been updated at least once.
      #   @return [Time]
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
      class Stack < Struct.new(
        :stack_id,
        :stack_name,
        :change_set_id,
        :description,
        :parameters,
        :creation_time,
        :last_updated_time,
        :stack_status,
        :stack_status_reason,
        :disable_rollback,
        :notification_arns,
        :timeout_in_minutes,
        :capabilities,
        :outputs,
        :role_arn,
        :tags)
        include Aws::Structure
      end

      # The StackEvent data type.
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
        :resource_properties)
        include Aws::Structure
      end

      # The StackResource data type.
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
      class StackResourceSummary < Struct.new(
        :logical_resource_id,
        :physical_resource_id,
        :resource_type,
        :last_updated_timestamp,
        :resource_status,
        :resource_status_reason)
        include Aws::Structure
      end

      # The StackSummary Data Type
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
      class StackSummary < Struct.new(
        :stack_id,
        :stack_name,
        :template_description,
        :creation_time,
        :last_updated_time,
        :deletion_time,
        :stack_status,
        :stack_status_reason)
        include Aws::Structure
      end

      # The Tag type enables you to specify a key-value pair that can be used
      # to store information about an AWS CloudFormation stack.
      # @note When making an API call, pass Tag
      #   data as a hash:
      #
      #       {
      #         key: "TagKey",
      #         value: "TagValue",
      #       }
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
      class Tag < Struct.new(
        :key,
        :value)
        include Aws::Structure
      end

      # The TemplateParameter data type.
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
      class TemplateParameter < Struct.new(
        :parameter_key,
        :default_value,
        :no_echo,
        :description)
        include Aws::Structure
      end

      # The input for an UpdateStack action.
      # @note When making an API call, pass UpdateStackInput
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
      #           },
      #         ],
      #         capabilities: ["CAPABILITY_IAM"], # accepts CAPABILITY_IAM, CAPABILITY_NAMED_IAM
      #         resource_types: ["ResourceType"],
      #         role_arn: "RoleARN",
      #         stack_policy_body: "StackPolicyBody",
      #         stack_policy_url: "StackPolicyURL",
      #         notification_arns: ["NotificationARN"],
      #         tags: [
      #           {
      #             key: "TagKey",
      #             value: "TagValue",
      #           },
      #         ],
      #       }
      # @!attribute [rw] stack_name
      #   The name or unique stack ID of the stack to update.
      #   @return [String]
      #
      # @!attribute [rw] template_body
      #   Structure containing the template body with a minimum length of 1
      #   byte and a maximum length of 51,200 bytes. (For more information, go
      #   to [Template Anatomy][1] in the AWS CloudFormation User Guide.)
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
      #   a template that is located in an Amazon S3 bucket. For more
      #   information, go to [Template Anatomy][1] in the AWS CloudFormation
      #   User Guide.
      #
      #   Conditional: You must specify either the `TemplateBody` or the
      #   `TemplateURL` parameter, but not both.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
      #   @return [String]
      #
      # @!attribute [rw] use_previous_template
      #   Reuse the existing template that is associated with the stack that
      #   you are updating.
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
      #   can specify a maximum number of 10 tags.
      #
      #   If you don't specify this parameter, AWS CloudFormation doesn't
      #   modify the stack's tags. If you specify an empty value, AWS
      #   CloudFormation removes all associated tags.
      #   @return [Array<Types::Tag>]
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
        :stack_policy_body,
        :stack_policy_url,
        :notification_arns,
        :tags)
        include Aws::Structure
      end

      # The output for an UpdateStack action.
      # @!attribute [rw] stack_id
      #   Unique identifier of the stack.
      #   @return [String]
      class UpdateStackOutput < Struct.new(
        :stack_id)
        include Aws::Structure
      end

      # The input for ValidateTemplate action.
      # @note When making an API call, pass ValidateTemplateInput
      #   data as a hash:
      #
      #       {
      #         template_body: "TemplateBody",
      #         template_url: "TemplateURL",
      #       }
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
      class ValidateTemplateInput < Struct.new(
        :template_body,
        :template_url)
        include Aws::Structure
      end

      # The output for ValidateTemplate action.
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
end
