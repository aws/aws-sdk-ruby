# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module AutoScaling
    class ScalingPolicy

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
      alias :policy_name :name

      # The name of the Auto Scaling group associated with this scaling
      # policy.
      # @return [String]
      def auto_scaling_group_name
        data.auto_scaling_group_name
      end

      # The Amazon Resource Name (ARN) of the policy.
      # @return [String]
      def policy_arn
        data.policy_arn
      end

      # The policy type. Valid values are `SimpleScaling` and `StepScaling`.
      # @return [String]
      def policy_type
        data.policy_type
      end

      # The adjustment type, which specifies how `ScalingAdjustment` is
      # interpreted. Valid values are `ChangeInCapacity`, `ExactCapacity`, and
      # `PercentChangeInCapacity`.
      # @return [String]
      def adjustment_type
        data.adjustment_type
      end

      # Available for backward compatibility. Use `MinAdjustmentMagnitude`
      # instead.
      # @return [Integer]
      def min_adjustment_step
        data.min_adjustment_step
      end

      # The minimum number of instances to scale. If the value of
      # `AdjustmentType` is `PercentChangeInCapacity`, the scaling policy
      # changes the `DesiredCapacity` of the Auto Scaling group by at least
      # this many instances. Otherwise, the error is `ValidationError`.
      # @return [Integer]
      def min_adjustment_magnitude
        data.min_adjustment_magnitude
      end

      # The amount by which to scale, based on the specified adjustment type.
      # A positive value adds to the current capacity while a negative number
      # removes from the current capacity.
      # @return [Integer]
      def scaling_adjustment
        data.scaling_adjustment
      end

      # The amount of time, in seconds, after a scaling activity completes
      # before any further trigger-related scaling activities can start.
      # @return [Integer]
      def cooldown
        data.cooldown
      end

      # A set of adjustments that enable you to scale based on the size of the
      # alarm breach.
      # @return [Array<Types::StepAdjustment>]
      def step_adjustments
        data.step_adjustments
      end

      # The aggregation type for the CloudWatch metrics. Valid values are
      # `Minimum`, `Maximum`, and `Average`.
      # @return [String]
      def metric_aggregation_type
        data.metric_aggregation_type
      end

      # The estimated time, in seconds, until a newly launched instance can
      # contribute to the CloudWatch metrics.
      # @return [Integer]
      def estimated_instance_warmup
        data.estimated_instance_warmup
      end

      # The CloudWatch alarms related to the policy.
      # @return [Array<Types::Alarm>]
      def alarms
        data.alarms
      end

      # @!endgroup

      # @return [Client]
      def client
        @client
      end

      # Loads, or reloads {#data} for the current {ScalingPolicy}.
      # Returns `self` making it possible to chain methods.
      #
      #     scaling_policy.reload.data
      #
      # @return [self]
      def load
        resp = @client.describe_policies(policy_names: [@name])
        @data = resp.scalingpolicies[0]
        self
      end
      alias :reload :load

      # @return [Types::ScalingPolicy]
      #   Returns the data for this {ScalingPolicy}. Calls
      #   {Client#describe_policies} if {#data_loaded?} is `false`.
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

      # @!group Actions

      # @param [Hash] options ({})
      # @option options [String] :auto_scaling_group_name
      #   The name of the Auto Scaling group.
      # @return [EmptyStructure]
      def delete(options = {})
        options = options.merge(policy_name: @name)
        resp = @client.delete_policy(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [String] :auto_scaling_group_name
      #   The name or Amazon Resource Name (ARN) of the Auto Scaling group.
      # @option options [Boolean] :honor_cooldown
      #   If this parameter is true, Auto Scaling waits for the cooldown period
      #   to complete before executing the policy. Otherwise, Auto Scaling
      #   executes the policy without waiting for the cooldown period to
      #   complete.
      #
      #   This parameter is not supported if the policy type is `StepScaling`.
      #
      #   For more information, see [Auto Scaling Cooldowns][1] in the *Auto
      #   Scaling User Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AutoScaling/latest/DeveloperGuide/Cooldown.html
      # @option options [Float] :metric_value
      #   The metric value to compare to `BreachThreshold`. This enables you to
      #   execute a policy of type `StepScaling` and determine which step
      #   adjustment to use. For example, if the breach threshold is 50 and you
      #   want to use a step adjustment with a lower bound of 0 and an upper
      #   bound of 10, you can set the metric value to 59.
      #
      #   If you specify a metric value that doesn\'t correspond to a step
      #   adjustment for the policy, the call returns an error.
      #
      #   This parameter is required if the policy type is `StepScaling` and not
      #   supported otherwise.
      # @option options [Float] :breach_threshold
      #   The breach threshold for the alarm.
      #
      #   This parameter is required if the policy type is `StepScaling` and not
      #   supported otherwise.
      # @return [EmptyStructure]
      def execute(options = {})
        options = options.merge(policy_name: @name)
        resp = @client.execute_policy(options)
        resp.data
      end

      # @!group Associations

      # @return [AutoScalingGroup, nil]
      def group
        if data.auto_scaling_group_name
          AutoScalingGroup.new(
            name: data.auto_scaling_group_name,
            client: @client
          )
        else
          nil
        end
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

      class Collection

        include Aws::Resources::Collection

        # @return [Enumerator<ScalingPolicy>]
        def each(&block)
          enum = super
          enum.each(&block) if block
          enum
        end

      end
    end
  end
end
