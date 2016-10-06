# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws
  module CloudFormation
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
        data.stack_id
      end

      # A user-defined description associated with the stack.
      # @return [String]
      def description
        data.description
      end

      # A list of `Parameter` structures.
      # @return [Array<Types::Parameter>]
      def parameters
        data.parameters
      end

      # The time at which the stack was created.
      # @return [Time]
      def creation_time
        data.creation_time
      end

      # The time the stack was last updated. This field will only be returned
      # if the stack has been updated at least once.
      # @return [Time]
      def last_updated_time
        data.last_updated_time
      end

      # Current status of the stack.
      # @return [String]
      def stack_status
        data.stack_status
      end

      # Success/failure message associated with the stack status.
      # @return [String]
      def stack_status_reason
        data.stack_status_reason
      end

      # Boolean to enable or disable rollback on stack creation failures:
      #
      # * `true`\: disable rollback
      #
      # * `false`\: enable rollback
      # @return [Boolean]
      def disable_rollback
        data.disable_rollback
      end

      # SNS topic ARNs to which stack related events are published.
      # @return [Array<String>]
      def notification_arns
        data.notification_arns
      end

      # The amount of time within which stack creation should complete.
      # @return [Integer]
      def timeout_in_minutes
        data.timeout_in_minutes
      end

      # The capabilities allowed in the stack.
      # @return [Array<String>]
      def capabilities
        data.capabilities
      end

      # A list of output structures.
      # @return [Array<Types::Output>]
      def outputs
        data.outputs
      end

      # A list of `Tag`s that specify information about the stack.
      # @return [Array<Types::Tag>]
      def tags
        data.tags
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

      # @return [Boolean]
      #   Returns `true` if the Stack exists.
      def exists?
        begin
          wait_until_exists(max_attempts: 1)
          true
        rescue Aws::Waiters::Errors::UnexpectedError => e
          raise e.error
        rescue Aws::Waiters::Errors::WaiterFailed
          false
        end
      end

      # @param options ({})
      # @option options [Integer] :max_attempts (20)
      # @option options [Float] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      # @return [Stack]
      def wait_until_exists(options = {})
        waiter = Waiters::StackExists.new(options.merge(client: @client))
        yield_waiter_and_warn(waiter, &Proc.new) if block_given?
        waiter.wait(stack_name: @name)
        Stack.new({
          name: @name,
          client: @client
        })
      end

      # @!group Actions

      # @example Request syntax with placeholder values
      #
      #   stack.cancel_update()
      # @param [Hash] options ({})
      # @return [EmptyStructure]
      def cancel_update(options = {})
        options = options.merge(stack_name: @name)
        resp = @client.cancel_update_stack(options)
        resp.data
      end

      # @example Request syntax with placeholder values
      #
      #   stack.delete({
      #     retain_resources: ["LogicalResourceId"],
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
      #       },
      #     ],
      #     capabilities: ["CAPABILITY_IAM"], # accepts CAPABILITY_IAM, CAPABILITY_NAMED_IAM
      #     resource_types: ["ResourceType"],
      #     stack_policy_body: "StackPolicyBody",
      #     stack_policy_url: "StackPolicyURL",
      #     notification_arns: ["NotificationARN"],
      #     tags: [
      #       {
      #         key: "TagKey",
      #         value: "TagValue",
      #       },
      #     ],
      #   })
      # @param [Hash] options ({})
      # @option options [String] :template_body
      #   Structure containing the template body with a minimum length of 1 byte
      #   and a maximum length of 51,200 bytes. (For more information, go to
      #   [Template Anatomy][1] in the AWS CloudFormation User Guide.)
      #
      #   Conditional: You must specify either the `TemplateBody` or the
      #   `TemplateURL` parameter, but not both.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
      # @option options [String] :template_url
      #   Location of file containing the template body. The URL must point to a
      #   template that is located in an Amazon S3 bucket. For more information,
      #   go to [Template Anatomy][1] in the AWS CloudFormation User Guide.
      #
      #   Conditional: You must specify either the `TemplateBody` or the
      #   `TemplateURL` parameter, but not both.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html
      # @option options [Boolean] :use_previous_template
      #   Reuse the existing template that is associated with the stack that you
      #   are updating.
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
      #   specify a maximum number of 10 tags.
      #
      #   If you don't specify this parameter, AWS CloudFormation doesn't
      #   modify the stack's tags. If you specify an empty value, AWS
      #   CloudFormation removes all associated tags.
      # @return [Types::UpdateStackOutput]
      def update(options = {})
        options = options.merge(stack_name: @name)
        resp = @client.update_stack(options)
        resp.data
      end

      # @!group Associations

      # @example Request syntax with placeholder values
      #
      #   events = stack.events()
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
      #   resourcesummaries = stack.resource_summaries()
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

      class Collection < Aws::Resources::Collection; end
    end
  end
end
