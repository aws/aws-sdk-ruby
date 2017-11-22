# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudFormation
  class Stack

    extend Aws::Deprecations

    # @overload def initialize(name, options = {})
    #   @param [String] name
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :name
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @name = extract_name(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
    end

    # @!group Read-Only Attributes

    # @return [String]
    def name
      @name
    end
    alias :stack_name :name

    # Unique identifier of the stack.
    # @return [String]
    def stack_id
      data[:stack_id]
    end

    # The unique ID of the change set.
    # @return [String]
    def change_set_id
      data[:change_set_id]
    end

    # A user-defined description associated with the stack.
    # @return [String]
    def description
      data[:description]
    end

    # A list of `Parameter` structures.
    # @return [Array<Types::Parameter>]
    def parameters
      data[:parameters]
    end

    # The time at which the stack was created.
    # @return [Time]
    def creation_time
      data[:creation_time]
    end

    # The time the stack was deleted.
    # @return [Time]
    def deletion_time
      data[:deletion_time]
    end

    # The time the stack was last updated. This field will only be returned
    # if the stack has been updated at least once.
    # @return [Time]
    def last_updated_time
      data[:last_updated_time]
    end

    # The rollback triggers for AWS CloudFormation to monitor during stack
    # creation and updating operations, and for the specified monitoring
    # period afterwards.
    # @return [Types::RollbackConfiguration]
    def rollback_configuration
      data[:rollback_configuration]
    end

    # Current status of the stack.
    # @return [String]
    def stack_status
      data[:stack_status]
    end

    # Success/failure message associated with the stack status.
    # @return [String]
    def stack_status_reason
      data[:stack_status_reason]
    end

    # Boolean to enable or disable rollback on stack creation failures:
    #
    # * `true`\: disable rollback
    #
    # * `false`\: enable rollback
    # @return [Boolean]
    def disable_rollback
      data[:disable_rollback]
    end

    # SNS topic ARNs to which stack related events are published.
    # @return [Array<String>]
    def notification_arns
      data[:notification_arns]
    end

    # The amount of time within which stack creation should complete.
    # @return [Integer]
    def timeout_in_minutes
      data[:timeout_in_minutes]
    end

    # The capabilities allowed in the stack.
    # @return [Array<String>]
    def capabilities
      data[:capabilities]
    end

    # A list of output structures.
    # @return [Array<Types::Output>]
    def outputs
      data[:outputs]
    end

    # The Amazon Resource Name (ARN) of an AWS Identity and Access
    # Management (IAM) role that is associated with the stack. During a
    # stack operation, AWS CloudFormation uses this role's credentials to
    # make calls on your behalf.
    # @return [String]
    def role_arn
      data[:role_arn]
    end

    # A list of `Tag`s that specify information about the stack.
    # @return [Array<Types::Tag>]
    def tags
      data[:tags]
    end

    # Whether termination protection is enabled for the stack.
    #
    # For [nested stacks][1], termination protection is set on the root
    # stack and cannot be changed directly on the nested stack. For more
    # information, see [Protecting a Stack From Being Deleted][2] in the
    # *AWS CloudFormation User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html
    # [2]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html
    # @return [Boolean]
    def enable_termination_protection
      data[:enable_termination_protection]
    end

    # For nested stacks--stacks created as resources for another stack--the
    # stack ID of the direct parent of this stack. For the first level of
    # nested stacks, the root stack is also the parent stack.
    #
    # For more information, see [Working with Nested Stacks][1] in the *AWS
    # CloudFormation User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html
    # @return [String]
    def parent_id
      data[:parent_id]
    end

    # For nested stacks--stacks created as resources for another stack--the
    # stack ID of the the top-level stack to which the nested stack
    # ultimately belongs.
    #
    # For more information, see [Working with Nested Stacks][1] in the *AWS
    # CloudFormation User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html
    # @return [String]
    def root_id
      data[:root_id]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {Stack}.
    # Returns `self` making it possible to chain methods.
    #
    #     stack.reload.data
    #
    # @return [self]
    def load
      resp = @client.describe_stacks(stack_name: @name)
      @data = resp.stacks[0]
      self
    end
    alias :reload :load

    # @return [Types::Stack]
    #   Returns the data for this {Stack}. Calls
    #   {Client#describe_stacks} if {#data_loaded?} is `false`.
    def data
      load unless @data
      @data
    end

    # @return [Boolean]
    #   Returns `true` if this resource is loaded.  Accessing attributes or
    #   {#data} on an unloaded resource will trigger a call to {#load}.
    def data_loaded?
      !!@data
    end

    # @param [Hash] options ({})
    # @return [Boolean]
    #   Returns `true` if the Stack exists.
    def exists?(options = {})
      begin
        wait_until_exists(options.merge(max_attempts: 1))
        true
      rescue Aws::Waiters::Errors::UnexpectedError => e
        raise e.error
      rescue Aws::Waiters::Errors::WaiterFailed
        false
      end
    end

    # @param [Hash] options ({})
    # @option options [Integer] :max_attempts (20)
    # @option options [Float] :delay (5)
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    # @return [Stack]
    def wait_until_exists(options = {})
      options, params = separate_params_and_options(options)
      waiter = Waiters::StackExists.new(options)
      yield_waiter_and_warn(waiter, &Proc.new) if block_given?
      waiter.wait(params.merge(stack_name: @name))
      Stack.new({
        name: @name,
        client: @client
      })
    end

    # @deprecated Use [Aws::CloudFormation::Client] #wait_until instead
    #
    # Waiter polls an API operation until a resource enters a desired
    # state.
    #
    # @note The waiting operation is performed on a copy. The original resource remains unchanged
    #
    # ## Basic Usage
    #
    # Waiter will polls until it is successful, it fails by
    # entering a terminal state, or until a maximum number of attempts
    # are made.
    #
    #     # polls in a loop until condition is true
    #     resource.wait_until(options) {|resource| condition}
    #
    # ## Example
    #
    #     instance.wait_until(max_attempts:10, delay:5) {|instance| instance.state.name == 'running' }
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. The waiting condition is set
    # by passing a block to {#wait_until}:
    #
    #     # poll for ~25 seconds
    #     resource.wait_until(max_attempts:5,delay:5) {|resource|...}
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     # poll for 1 hour, instead of a number of attempts
    #     proc = Proc.new do |attempts, response|
    #       throw :failure if Time.now - started_at > 3600
    #     end
    #
    #       # disable max attempts
    #     instance.wait_until(before_wait:proc, max_attempts:nil) {...}
    #
    # ## Handling Errors
    #
    # When a waiter is successful, it returns the Resource. When a waiter
    # fails, it raises an error.
    #
    #     begin
    #       resource.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    #
    # @yield param [Resource] resource to be used in the waiting condition
    #
    # @raise [Aws::Waiters::Errors::FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    #
    #   yet successful.
    #
    # @raise [Aws::Waiters::Errors::UnexpectedError] Raised when an error is encountered
    #   while polling for a resource that is not expected.
    #
    # @raise [NotImplementedError] Raised when the resource does not
    #
    # @option options [Integer] :max_attempts (10) Maximum number of
    # attempts
    # @option options [Integer] :delay (10) Delay between each
    # attempt in seconds
    # @option options [Proc] :before_attempt (nil) Callback
    # invoked before each attempt
    # @option options [Proc] :before_wait (nil) Callback
    # invoked before each wait
    # @return [Resource] if the waiter was successful
    def wait_until(options = {}, &block)
      self_copy = self.dup
      attempts = 0
      options[:max_attempts] = 10 unless options.key?(:max_attempts)
      options[:delay] ||= 10
      options[:poller] = Proc.new do
        attempts += 1
        if block.call(self_copy)
          [:success, self_copy]
        else
          self_copy.reload unless attempts == options[:max_attempts]
          :retry
        end
      end
      Aws::Waiters::Waiter.new(options).wait({})
    end

    # @!group Actions

    # @example Request syntax with placeholder values
    #
    #   stack.cancel_update({
    #     client_request_token: "ClientRequestToken",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :client_request_token
    #   A unique identifier for this `CancelUpdateStack` request. Specify this
    #   token if you plan to retry requests so that AWS CloudFormation knows
    #   that you're not attempting to cancel an update on a stack with the
    #   same name. You might retry `CancelUpdateStack` requests to ensure that
    #   AWS CloudFormation successfully received them.
    # @return [EmptyStructure]
    def cancel_update(options = {})
      options = options.merge(stack_name: @name)
      resp = @client.cancel_update_stack(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   stack.create({
    #     template_body: "TemplateBody",
    #     template_url: "TemplateURL",
    #     parameters: [
    #       {
    #         parameter_key: "ParameterKey",
    #         parameter_value: "ParameterValue",
    #         use_previous_value: false,
    #         resolved_value: "ParameterValue",
    #       },
    #     ],
    #     disable_rollback: false,
    #     rollback_configuration: {
    #       rollback_triggers: [
    #         {
    #           arn: "Arn", # required
    #           type: "Type", # required
    #         },
    #       ],
    #       monitoring_time_in_minutes: 1,
    #     },
    #     timeout_in_minutes: 1,
    #     notification_arns: ["NotificationARN"],
    #     capabilities: ["CAPABILITY_IAM"], # accepts CAPABILITY_IAM, CAPABILITY_NAMED_IAM
    #     resource_types: ["ResourceType"],
    #     role_arn: "RoleARN",
    #     on_failure: "DO_NOTHING", # accepts DO_NOTHING, ROLLBACK, DELETE
    #     stack_policy_body: "StackPolicyBody",
    #     stack_policy_url: "StackPolicyURL",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     client_request_token: "ClientRequestToken",
    #     enable_termination_protection: false,
    #   })
    # @param [Hash] options ({})
    # @option options [String] :template_body
    #   Structure containing the template body with a minimum length of 1 byte
    #   and a maximum length of 51,200 bytes. For more information, go to
    #   [Template Anatomy][1] in the AWS CloudFormation User Guide.
    #
    #   Conditional: You must specify either the `TemplateBody` or the
    #   `TemplateURL` parameter, but not both.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    # @option options [String] :template_url
    #   Location of file containing the template body. The URL must point to a
    #   template (max size: 460,800 bytes) that is located in an Amazon S3
    #   bucket. For more information, go to the [Template Anatomy][1] in the
    #   AWS CloudFormation User Guide.
    #
    #   Conditional: You must specify either the `TemplateBody` or the
    #   `TemplateURL` parameter, but not both.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    # @option options [Array<Types::Parameter>] :parameters
    #   A list of `Parameter` structures that specify input parameters for the
    #   stack. For more information, see the [Parameter][1] data type.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html
    # @option options [Boolean] :disable_rollback
    #   Set to `true` to disable rollback of the stack if stack creation
    #   failed. You can specify either `DisableRollback` or `OnFailure`, but
    #   not both.
    #
    #   Default: `false`
    # @option options [Types::RollbackConfiguration] :rollback_configuration
    #   The rollback triggers for AWS CloudFormation to monitor during stack
    #   creation and updating operations, and for the specified monitoring
    #   period afterwards.
    # @option options [Integer] :timeout_in_minutes
    #   The amount of time that can pass before the stack status becomes
    #   CREATE\_FAILED; if `DisableRollback` is not set or is set to `false`,
    #   the stack will be rolled back.
    # @option options [Array<String>] :notification_arns
    #   The Simple Notification Service (SNS) topic ARNs to publish stack
    #   related events. You can find your SNS topic ARNs using the SNS console
    #   or your Command Line Interface (CLI).
    # @option options [Array<String>] :capabilities
    #   A list of values that you must specify before AWS CloudFormation can
    #   create certain stacks. Some stack templates might include resources
    #   that can affect permissions in your AWS account, for example, by
    #   creating new AWS Identity and Access Management (IAM) users. For those
    #   stacks, you must explicitly acknowledge their capabilities by
    #   specifying this parameter.
    #
    #   The only valid values are `CAPABILITY_IAM` and `CAPABILITY_NAMED_IAM`.
    #   The following resources require you to specify this parameter: [
    #   AWS::IAM::AccessKey][1], [ AWS::IAM::Group][2], [
    #   AWS::IAM::InstanceProfile][3], [ AWS::IAM::Policy][4], [
    #   AWS::IAM::Role][5], [ AWS::IAM::User][6], and [
    #   AWS::IAM::UserToGroupAddition][7]. If your stack template contains
    #   these resources, we recommend that you review all permissions
    #   associated with them and edit their permissions if necessary.
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
    # @option options [Array<String>] :resource_types
    #   The template resource types that you have permissions to work with for
    #   this create stack action, such as `AWS::EC2::Instance`, `AWS::EC2::*`,
    #   or `Custom::MyCustomInstance`. Use the following syntax to describe
    #   template resource types: `AWS::*` (for all AWS resource), `Custom::*`
    #   (for all custom resources), `Custom::logical_ID ` (for a specific
    #   custom resource), `AWS::service_name::*` (for all resources of a
    #   particular AWS service), and `AWS::service_name::resource_logical_ID `
    #   (for a specific AWS resource).
    #
    #   If the list of resource types doesn't include a resource that you're
    #   creating, the stack creation fails. By default, AWS CloudFormation
    #   grants permissions to all resource types. AWS Identity and Access
    #   Management (IAM) uses this parameter for AWS CloudFormation-specific
    #   condition keys in IAM policies. For more information, see [Controlling
    #   Access with AWS Identity and Access Management][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html
    # @option options [String] :role_arn
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
    #   was previously associated with the stack. If no role is available, AWS
    #   CloudFormation uses a temporary session that is generated from your
    #   user credentials.
    # @option options [String] :on_failure
    #   Determines what action will be taken if stack creation fails. This
    #   must be one of: DO\_NOTHING, ROLLBACK, or DELETE. You can specify
    #   either `OnFailure` or `DisableRollback`, but not both.
    #
    #   Default: `ROLLBACK`
    # @option options [String] :stack_policy_body
    #   Structure containing the stack policy body. For more information, go
    #   to [ Prevent Updates to Stack Resources][1] in the *AWS CloudFormation
    #   User Guide*. You can specify either the `StackPolicyBody` or the
    #   `StackPolicyURL` parameter, but not both.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html
    # @option options [String] :stack_policy_url
    #   Location of a file containing the stack policy. The URL must point to
    #   a policy (maximum size: 16 KB) located in an S3 bucket in the same
    #   region as the stack. You can specify either the `StackPolicyBody` or
    #   the `StackPolicyURL` parameter, but not both.
    # @option options [Array<Types::Tag>] :tags
    #   Key-value pairs to associate with this stack. AWS CloudFormation also
    #   propagates these tags to the resources created in the stack. A maximum
    #   number of 50 tags can be specified.
    # @option options [String] :client_request_token
    #   A unique identifier for this `CreateStack` request. Specify this token
    #   if you plan to retry requests so that AWS CloudFormation knows that
    #   you're not attempting to create a stack with the same name. You might
    #   retry `CreateStack` requests to ensure that AWS CloudFormation
    #   successfully received them.
    #
    #   All events triggered by a given stack operation are assigned the same
    #   client request token, which you can use to track operations. For
    #   example, if you execute a `CreateStack` operation with the token
    #   `token1`, then all the `StackEvents` generated by that operation will
    #   have `ClientRequestToken` set as `token1`.
    #
    #   In the console, stack operations display the client request token on
    #   the Events tab. Stack operations that are initiated from the console
    #   use the token format *Console-StackOperation-ID*, which helps you
    #   easily identify the stack operation . For example, if you create a
    #   stack using the console, each stack event would be assigned the same
    #   token in the following format:
    #   `Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002`.
    # @option options [Boolean] :enable_termination_protection
    #   Whether to enable termination protection on the specified stack. If a
    #   user attempts to delete a stack with termination protection enabled,
    #   the operation fails and the stack remains unchanged. For more
    #   information, see [Protecting a Stack From Being Deleted][1] in the
    #   *AWS CloudFormation User Guide*. Termination protection is disabled on
    #   stacks by default.
    #
    #   For [nested stacks][2], termination protection is set on the root
    #   stack and cannot be changed directly on the nested stack.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html
    #   [2]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html
    # @return [Types::CreateStackOutput]
    def create(options = {})
      options = options.merge(stack_name: @name)
      resp = @client.create_stack(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   stack.delete({
    #     retain_resources: ["LogicalResourceId"],
    #     role_arn: "RoleARN",
    #     client_request_token: "ClientRequestToken",
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :retain_resources
    #   For stacks in the `DELETE_FAILED` state, a list of resource logical
    #   IDs that are associated with the resources you want to retain. During
    #   deletion, AWS CloudFormation deletes the stack but does not delete the
    #   retained resources.
    #
    #   Retaining resources is useful when you cannot delete a resource, such
    #   as a non-empty S3 bucket, but you want to delete the stack.
    # @option options [String] :role_arn
    #   The Amazon Resource Name (ARN) of an AWS Identity and Access
    #   Management (IAM) role that AWS CloudFormation assumes to delete the
    #   stack. AWS CloudFormation uses the role's credentials to make calls
    #   on your behalf.
    #
    #   If you don't specify a value, AWS CloudFormation uses the role that
    #   was previously associated with the stack. If no role is available, AWS
    #   CloudFormation uses a temporary session that is generated from your
    #   user credentials.
    # @option options [String] :client_request_token
    #   A unique identifier for this `DeleteStack` request. Specify this token
    #   if you plan to retry requests so that AWS CloudFormation knows that
    #   you're not attempting to delete a stack with the same name. You might
    #   retry `DeleteStack` requests to ensure that AWS CloudFormation
    #   successfully received them.
    #
    #   All events triggered by a given stack operation are assigned the same
    #   client request token, which you can use to track operations. For
    #   example, if you execute a `CreateStack` operation with the token
    #   `token1`, then all the `StackEvents` generated by that operation will
    #   have `ClientRequestToken` set as `token1`.
    #
    #   In the console, stack operations display the client request token on
    #   the Events tab. Stack operations that are initiated from the console
    #   use the token format *Console-StackOperation-ID*, which helps you
    #   easily identify the stack operation . For example, if you create a
    #   stack using the console, each stack event would be assigned the same
    #   token in the following format:
    #   `Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002`.
    # @return [EmptyStructure]
    def delete(options = {})
      options = options.merge(stack_name: @name)
      resp = @client.delete_stack(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   stack.update({
    #     template_body: "TemplateBody",
    #     template_url: "TemplateURL",
    #     use_previous_template: false,
    #     stack_policy_during_update_body: "StackPolicyDuringUpdateBody",
    #     stack_policy_during_update_url: "StackPolicyDuringUpdateURL",
    #     parameters: [
    #       {
    #         parameter_key: "ParameterKey",
    #         parameter_value: "ParameterValue",
    #         use_previous_value: false,
    #         resolved_value: "ParameterValue",
    #       },
    #     ],
    #     capabilities: ["CAPABILITY_IAM"], # accepts CAPABILITY_IAM, CAPABILITY_NAMED_IAM
    #     resource_types: ["ResourceType"],
    #     role_arn: "RoleARN",
    #     rollback_configuration: {
    #       rollback_triggers: [
    #         {
    #           arn: "Arn", # required
    #           type: "Type", # required
    #         },
    #       ],
    #       monitoring_time_in_minutes: 1,
    #     },
    #     stack_policy_body: "StackPolicyBody",
    #     stack_policy_url: "StackPolicyURL",
    #     notification_arns: ["NotificationARN"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     client_request_token: "ClientRequestToken",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :template_body
    #   Structure containing the template body with a minimum length of 1 byte
    #   and a maximum length of 51,200 bytes. (For more information, go to
    #   [Template Anatomy][1] in the AWS CloudFormation User Guide.)
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `TemplateBody`, `TemplateURL`, or set the `UsePreviousTemplate` to
    #   `true`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    # @option options [String] :template_url
    #   Location of file containing the template body. The URL must point to a
    #   template that is located in an Amazon S3 bucket. For more information,
    #   go to [Template Anatomy][1] in the AWS CloudFormation User Guide.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `TemplateBody`, `TemplateURL`, or set the `UsePreviousTemplate` to
    #   `true`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
    # @option options [Boolean] :use_previous_template
    #   Reuse the existing template that is associated with the stack that you
    #   are updating.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `TemplateBody`, `TemplateURL`, or set the `UsePreviousTemplate` to
    #   `true`.
    # @option options [String] :stack_policy_during_update_body
    #   Structure containing the temporary overriding stack policy body. You
    #   can specify either the `StackPolicyDuringUpdateBody` or the
    #   `StackPolicyDuringUpdateURL` parameter, but not both.
    #
    #   If you want to update protected resources, specify a temporary
    #   overriding stack policy during this update. If you do not specify a
    #   stack policy, the current policy that is associated with the stack
    #   will be used.
    # @option options [String] :stack_policy_during_update_url
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
    # @option options [Array<Types::Parameter>] :parameters
    #   A list of `Parameter` structures that specify input parameters for the
    #   stack. For more information, see the [Parameter][1] data type.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html
    # @option options [Array<String>] :capabilities
    #   A list of values that you must specify before AWS CloudFormation can
    #   update certain stacks. Some stack templates might include resources
    #   that can affect permissions in your AWS account, for example, by
    #   creating new AWS Identity and Access Management (IAM) users. For those
    #   stacks, you must explicitly acknowledge their capabilities by
    #   specifying this parameter.
    #
    #   The only valid values are `CAPABILITY_IAM` and `CAPABILITY_NAMED_IAM`.
    #   The following resources require you to specify this parameter: [
    #   AWS::IAM::AccessKey][1], [ AWS::IAM::Group][2], [
    #   AWS::IAM::InstanceProfile][3], [ AWS::IAM::Policy][4], [
    #   AWS::IAM::Role][5], [ AWS::IAM::User][6], and [
    #   AWS::IAM::UserToGroupAddition][7]. If your stack template contains
    #   these resources, we recommend that you review all permissions
    #   associated with them and edit their permissions if necessary.
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
    # @option options [Array<String>] :resource_types
    #   The template resource types that you have permissions to work with for
    #   this update stack action, such as `AWS::EC2::Instance`, `AWS::EC2::*`,
    #   or `Custom::MyCustomInstance`.
    #
    #   If the list of resource types doesn't include a resource that you're
    #   updating, the stack update fails. By default, AWS CloudFormation
    #   grants permissions to all resource types. AWS Identity and Access
    #   Management (IAM) uses this parameter for AWS CloudFormation-specific
    #   condition keys in IAM policies. For more information, see [Controlling
    #   Access with AWS Identity and Access Management][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html
    # @option options [String] :role_arn
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
    #   was previously associated with the stack. If no role is available, AWS
    #   CloudFormation uses a temporary session that is generated from your
    #   user credentials.
    # @option options [Types::RollbackConfiguration] :rollback_configuration
    #   The rollback triggers for AWS CloudFormation to monitor during stack
    #   creation and updating operations, and for the specified monitoring
    #   period afterwards.
    # @option options [String] :stack_policy_body
    #   Structure containing a new stack policy body. You can specify either
    #   the `StackPolicyBody` or the `StackPolicyURL` parameter, but not both.
    #
    #   You might update the stack policy, for example, in order to protect a
    #   new resource that you created during a stack update. If you do not
    #   specify a stack policy, the current policy that is associated with the
    #   stack is unchanged.
    # @option options [String] :stack_policy_url
    #   Location of a file containing the updated stack policy. The URL must
    #   point to a policy (max size: 16KB) located in an S3 bucket in the same
    #   region as the stack. You can specify either the `StackPolicyBody` or
    #   the `StackPolicyURL` parameter, but not both.
    #
    #   You might update the stack policy, for example, in order to protect a
    #   new resource that you created during a stack update. If you do not
    #   specify a stack policy, the current policy that is associated with the
    #   stack is unchanged.
    # @option options [Array<String>] :notification_arns
    #   Amazon Simple Notification Service topic Amazon Resource Names (ARNs)
    #   that AWS CloudFormation associates with the stack. Specify an empty
    #   list to remove all notification topics.
    # @option options [Array<Types::Tag>] :tags
    #   Key-value pairs to associate with this stack. AWS CloudFormation also
    #   propagates these tags to supported resources in the stack. You can
    #   specify a maximum number of 50 tags.
    #
    #   If you don't specify this parameter, AWS CloudFormation doesn't
    #   modify the stack's tags. If you specify an empty value, AWS
    #   CloudFormation removes all associated tags.
    # @option options [String] :client_request_token
    #   A unique identifier for this `UpdateStack` request. Specify this token
    #   if you plan to retry requests so that AWS CloudFormation knows that
    #   you're not attempting to update a stack with the same name. You might
    #   retry `UpdateStack` requests to ensure that AWS CloudFormation
    #   successfully received them.
    #
    #   All events triggered by a given stack operation are assigned the same
    #   client request token, which you can use to track operations. For
    #   example, if you execute a `CreateStack` operation with the token
    #   `token1`, then all the `StackEvents` generated by that operation will
    #   have `ClientRequestToken` set as `token1`.
    #
    #   In the console, stack operations display the client request token on
    #   the Events tab. Stack operations that are initiated from the console
    #   use the token format *Console-StackOperation-ID*, which helps you
    #   easily identify the stack operation . For example, if you create a
    #   stack using the console, each stack event would be assigned the same
    #   token in the following format:
    #   `Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002`.
    # @return [Types::UpdateStackOutput]
    def update(options = {})
      options = options.merge(stack_name: @name)
      resp = @client.update_stack(options)
      resp.data
    end

    # @!group Associations

    # @example Request syntax with placeholder values
    #
    #   stack.events()
    # @param [Hash] options ({})
    # @return [Event::Collection]
    def events(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(stack_name: @name)
        resp = @client.describe_stack_events(options)
        resp.each_page do |page|
          batch = []
          page.data.stack_events.each do |s|
            batch << Event.new(
              id: s.event_id,
              data: s,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      Event::Collection.new(batches)
    end

    # @param [String] logical_id
    # @return [StackResource]
    def resource(logical_id)
      StackResource.new(
        stack_name: @name,
        logical_id: logical_id,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   stack.resource_summaries()
    # @param [Hash] options ({})
    # @return [StackResourceSummary::Collection]
    def resource_summaries(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(stack_name: @name)
        resp = @client.list_stack_resources(options)
        resp.each_page do |page|
          batch = []
          page.data.stack_resource_summaries.each do |s|
            batch << StackResourceSummary.new(
              logical_id: s.logical_resource_id,
              stack_name: options[:stack_name],
              data: s,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      StackResourceSummary::Collection.new(batches)
    end

    # @deprecated
    # @api private
    def identifiers
      { name: @name }
    end
    deprecated(:identifiers)

    private

    def extract_name(args, options)
      value = args[0] || options.delete(:name)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :name"
      else
        msg = "expected :name to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    def yield_waiter_and_warn(waiter, &block)
      if !@waiter_block_warned
        msg = "pass options to configure the waiter; "
        msg << "yielding the waiter is deprecated"
        warn(msg)
        @waiter_block_warned = true
      end
      yield(waiter.waiter)
    end

    def separate_params_and_options(options)
      opts = Set.new([:client, :max_attempts, :delay, :before_attempt, :before_wait])
      waiter_opts = {}
      waiter_params = {}
      options.each_pair do |key, value|
        if opts.include?(key)
          waiter_opts[key] = value
        else
          waiter_params[key] = value
        end
      end
      waiter_opts[:client] ||= @client
      [waiter_opts, waiter_params]
    end

    class Collection < Aws::Resources::Collection; end
  end
end
