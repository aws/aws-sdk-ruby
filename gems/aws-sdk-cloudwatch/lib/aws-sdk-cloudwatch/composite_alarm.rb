# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudWatch

  class CompositeAlarm

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
      @waiter_block_warned = false
    end

    # @!group Read-Only Attributes

    # @return [String]
    def name
      @name
    end
    alias :alarm_name :name

    # Indicates whether actions should be executed during any changes to the
    # alarm state.
    # @return [Boolean]
    def actions_enabled
      data[:actions_enabled]
    end

    # The actions to execute when this alarm transitions to the ALARM state
    # from any other state. Each action is specified as an Amazon Resource
    # Name (ARN).
    # @return [Array<String>]
    def alarm_actions
      data[:alarm_actions]
    end

    # The Amazon Resource Name (ARN) of the alarm.
    # @return [String]
    def alarm_arn
      data[:alarm_arn]
    end

    # The time stamp of the last update to the alarm configuration.
    # @return [Time]
    def alarm_configuration_updated_timestamp
      data[:alarm_configuration_updated_timestamp]
    end

    # The description of the alarm.
    # @return [String]
    def alarm_description
      data[:alarm_description]
    end

    # The rule that this alarm uses to evaluate its alarm state.
    # @return [String]
    def alarm_rule
      data[:alarm_rule]
    end

    # The actions to execute when this alarm transitions to the
    # INSUFFICIENT\_DATA state from any other state. Each action is
    # specified as an Amazon Resource Name (ARN).
    # @return [Array<String>]
    def insufficient_data_actions
      data[:insufficient_data_actions]
    end

    # The actions to execute when this alarm transitions to the OK state
    # from any other state. Each action is specified as an Amazon Resource
    # Name (ARN).
    # @return [Array<String>]
    def ok_actions
      data[:ok_actions]
    end

    # An explanation for the alarm state, in text format.
    # @return [String]
    def state_reason
      data[:state_reason]
    end

    # An explanation for the alarm state, in JSON format.
    # @return [String]
    def state_reason_data
      data[:state_reason_data]
    end

    # The time stamp of the last update to the alarm state.
    # @return [Time]
    def state_updated_timestamp
      data[:state_updated_timestamp]
    end

    # The state value for the alarm.
    # @return [String]
    def state_value
      data[:state_value]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {CompositeAlarm}.
    # Returns `self` making it possible to chain methods.
    #
    #     composite_alarm.reload.data
    #
    # @return [self]
    def load
      resp = @client.describe_alarms(alarm_names: [@name])
      @data = resp.composite_alarms[0]
      self
    end
    alias :reload :load

    # @return [Types::CompositeAlarm]
    #   Returns the data for this {CompositeAlarm}. Calls
    #   {Client#describe_alarms} if {#data_loaded?} is `false`.
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
    #   Returns `true` if the CompositeAlarm exists.
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
    # @option options [Integer] :max_attempts (40)
    # @option options [Float] :delay (5)
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    # @return [CompositeAlarm]
    def wait_until_exists(options = {}, &block)
      options, params = separate_params_and_options(options)
      waiter = Waiters::CompositeAlarmExists.new(options)
      yield_waiter_and_warn(waiter, &block) if block_given?
      waiter.wait(params.merge(alarm_names: [@name]))
      CompositeAlarm.new({
        name: @name,
        client: @client
      })
    end

    # @deprecated Use [Aws::CloudWatch::Client] #wait_until instead
    #
    # Waiter polls an API operation until a resource enters a desired
    # state.
    #
    # @note The waiting operation is performed on a copy. The original resource
    #   remains unchanged.
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
    #     instance.wait_until(max_attempts:10, delay:5) do |instance|
    #       instance.state.name == 'running'
    #     end
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. The waiting condition is
    # set by passing a block to {#wait_until}:
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
    # @yieldparam [Resource] resource to be used in the waiting condition.
    #
    # @raise [Aws::Waiters::Errors::FailureStateError] Raised when the waiter
    #   terminates because the waiter has entered a state that it will not
    #   transition out of, preventing success.
    #
    #   yet successful.
    #
    # @raise [Aws::Waiters::Errors::UnexpectedError] Raised when an error is
    #   encountered while polling for a resource that is not expected.
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
    #   composite_alarm.delete()
    # @param [Hash] options ({})
    # @return [EmptyStructure]
    def delete(options = {})
      options = Aws::Util.deep_merge(options, alarm_names: [@name])
      resp = @client.delete_alarms(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   composite_alarm.describe_history({
    #     alarm_types: ["CompositeAlarm"], # accepts CompositeAlarm, MetricAlarm
    #     history_item_type: "ConfigurationUpdate", # accepts ConfigurationUpdate, StateUpdate, Action
    #     start_date: Time.now,
    #     end_date: Time.now,
    #     max_records: 1,
    #     next_token: "NextToken",
    #     scan_by: "TimestampDescending", # accepts TimestampDescending, TimestampAscending
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :alarm_types
    #   Use this parameter to specify whether you want the operation to return
    #   metric alarms or composite alarms. If you omit this parameter, only
    #   metric alarms are returned.
    # @option options [String] :history_item_type
    #   The type of alarm histories to retrieve.
    # @option options [Time,DateTime,Date,Integer,String] :start_date
    #   The starting date to retrieve alarm history.
    # @option options [Time,DateTime,Date,Integer,String] :end_date
    #   The ending date to retrieve alarm history.
    # @option options [Integer] :max_records
    #   The maximum number of alarm history records to retrieve.
    # @option options [String] :next_token
    #   The token returned by a previous call to indicate that there is more
    #   data available.
    # @option options [String] :scan_by
    #   Specified whether to return the newest or oldest alarm history first.
    #   Specify `TimestampDescending` to have the newest event history
    #   returned first, and specify `TimestampAscending` to have the oldest
    #   history returned first.
    # @return [Types::DescribeAlarmHistoryOutput]
    def describe_history(options = {})
      options = options.merge(alarm_name: @name)
      resp = @client.describe_alarm_history(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   composite_alarm.disable_actions()
    # @param [Hash] options ({})
    # @return [EmptyStructure]
    def disable_actions(options = {})
      options = Aws::Util.deep_merge(options, alarm_names: [@name])
      resp = @client.disable_alarm_actions(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   composite_alarm.enable_actions()
    # @param [Hash] options ({})
    # @return [EmptyStructure]
    def enable_actions(options = {})
      options = Aws::Util.deep_merge(options, alarm_names: [@name])
      resp = @client.enable_alarm_actions(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   composite_alarm.set_state({
    #     state_value: "OK", # required, accepts OK, ALARM, INSUFFICIENT_DATA
    #     state_reason: "StateReason", # required
    #     state_reason_data: "StateReasonData",
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :state_value
    #   The value of the state.
    # @option options [required, String] :state_reason
    #   The reason that this alarm is set to this specific state, in text
    #   format.
    # @option options [String] :state_reason_data
    #   The reason that this alarm is set to this specific state, in JSON
    #   format.
    #
    #   For SNS or EC2 alarm actions, this is just informational. But for EC2
    #   Auto Scaling or application Auto Scaling alarm actions, the Auto
    #   Scaling policy uses the information in this field to take the correct
    #   action.
    # @return [EmptyStructure]
    def set_state(options = {})
      options = options.merge(alarm_name: @name)
      resp = @client.set_alarm_state(options)
      resp.data
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
        msg = "pass options to configure the waiter; "\
              "yielding the waiter is deprecated"
        warn(msg)
        @waiter_block_warned = true
      end
      yield(waiter.waiter)
    end

    def separate_params_and_options(options)
      opts = Set.new(
        [:client, :max_attempts, :delay, :before_attempt, :before_wait]
      )
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

    class Collection < Aws::Resources::Collection

      # @!group Batch Actions

      # @param options ({})
      # @return [void]
      def batch_delete!(options = {})
        batch_enum.each do |batch|
          params = Aws::Util.copy_hash(options)
          params[:alarm_names] ||= []
          batch.each do |item|
            params[:alarm_names] << item.name
          end
          batch[0].client.delete_alarms(params)
        end
        nil
      end

      # @param options ({})
      # @return [void]
      def batch_disable_actions(options = {})
        batch_enum.each do |batch|
          params = Aws::Util.copy_hash(options)
          params[:alarm_names] ||= []
          batch.each do |item|
            params[:alarm_names] << item.name
          end
          batch[0].client.disable_alarm_actions(params)
        end
        nil
      end

      # @param options ({})
      # @return [void]
      def batch_enable_actions(options = {})
        batch_enum.each do |batch|
          params = Aws::Util.copy_hash(options)
          params[:alarm_names] ||= []
          batch.each do |item|
            params[:alarm_names] << item.name
          end
          batch[0].client.enable_alarm_actions(params)
        end
        nil
      end

      # @!endgroup

    end
  end
end
