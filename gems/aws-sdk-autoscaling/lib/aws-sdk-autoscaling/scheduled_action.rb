# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AutoScaling
  class ScheduledAction

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
    alias :scheduled_action_name :name

    # The name of the Auto Scaling group.
    # @return [String]
    def auto_scaling_group_name
      data[:auto_scaling_group_name]
    end

    # The Amazon Resource Name (ARN) of the scheduled action.
    # @return [String]
    def scheduled_action_arn
      data[:scheduled_action_arn]
    end

    # This parameter is deprecated.
    # @return [Time]
    def time
      data[:time]
    end

    # The date and time that the action is scheduled to begin. This date and
    # time can be up to one month in the future.
    #
    # When `StartTime` and `EndTime` are specified with `Recurrence`, they
    # form the boundaries of when the recurring action will start and stop.
    # @return [Time]
    def start_time
      data[:start_time]
    end

    # The date and time that the action is scheduled to end. This date and
    # time can be up to one month in the future.
    # @return [Time]
    def end_time
      data[:end_time]
    end

    # The recurring schedule for the action.
    # @return [String]
    def recurrence
      data[:recurrence]
    end

    # The minimum size of the group.
    # @return [Integer]
    def min_size
      data[:min_size]
    end

    # The maximum size of the group.
    # @return [Integer]
    def max_size
      data[:max_size]
    end

    # The number of instances you prefer to maintain in the group.
    # @return [Integer]
    def desired_capacity
      data[:desired_capacity]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {ScheduledAction}.
    # Returns `self` making it possible to chain methods.
    #
    #     scheduled_action.reload.data
    #
    # @return [self]
    def load
      resp = @client.describe_scheduled_actions(scheduled_action_names: [@name])
      @data = resp.scheduled_update_group_actions[0]
      self
    end
    alias :reload :load

    # @return [Types::ScheduledUpdateGroupAction]
    #   Returns the data for this {ScheduledAction}. Calls
    #   {Client#describe_scheduled_actions} if {#data_loaded?} is `false`.
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

    # @deprecated Use [Aws::AutoScaling::Client] #wait_until instead
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
    #   scheduled_action.delete({
    #     auto_scaling_group_name: "ResourceName", # required
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    # @return [EmptyStructure]
    def delete(options = {})
      options = options.merge(scheduled_action_name: @name)
      resp = @client.delete_scheduled_action(options)
      resp.data
    end

    # @!group Associations

    # @return [AutoScalingGroup, nil]
    def group
      if data[:auto_scaling_group_name]
        AutoScalingGroup.new(
          name: data[:auto_scaling_group_name],
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

    class Collection < Aws::Resources::Collection; end
  end
end
