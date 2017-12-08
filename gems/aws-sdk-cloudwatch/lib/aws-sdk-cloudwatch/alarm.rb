# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudWatch
  class Alarm

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
    alias :alarm_name :name

    # The Amazon Resource Name (ARN) of the alarm.
    # @return [String]
    def alarm_arn
      data[:alarm_arn]
    end

    # The description of the alarm.
    # @return [String]
    def alarm_description
      data[:alarm_description]
    end

    # The time stamp of the last update to the alarm configuration.
    # @return [Time]
    def alarm_configuration_updated_timestamp
      data[:alarm_configuration_updated_timestamp]
    end

    # Indicates whether actions should be executed during any changes to the
    # alarm state.
    # @return [Boolean]
    def actions_enabled
      data[:actions_enabled]
    end

    # The actions to execute when this alarm transitions to the `OK` state
    # from any other state. Each action is specified as an Amazon Resource
    # Name (ARN).
    # @return [Array<String>]
    def ok_actions
      data[:ok_actions]
    end

    # The actions to execute when this alarm transitions to the `ALARM`
    # state from any other state. Each action is specified as an Amazon
    # Resource Name (ARN).
    # @return [Array<String>]
    def alarm_actions
      data[:alarm_actions]
    end

    # The actions to execute when this alarm transitions to the
    # `INSUFFICIENT_DATA` state from any other state. Each action is
    # specified as an Amazon Resource Name (ARN).
    # @return [Array<String>]
    def insufficient_data_actions
      data[:insufficient_data_actions]
    end

    # The state value for the alarm.
    # @return [String]
    def state_value
      data[:state_value]
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

    # The name of the metric associated with the alarm.
    # @return [String]
    def metric_name
      data[:metric_name]
    end

    # The namespace of the metric associated with the alarm.
    # @return [String]
    def namespace
      data[:namespace]
    end

    # The statistic for the metric associated with the alarm, other than
    # percentile. For percentile statistics, use `ExtendedStatistic`.
    # @return [String]
    def statistic
      data[:statistic]
    end

    # The percentile statistic for the metric associated with the alarm.
    # Specify a value between p0.0 and p100.
    # @return [String]
    def extended_statistic
      data[:extended_statistic]
    end

    # The dimensions for the metric associated with the alarm.
    # @return [Array<Types::Dimension>]
    def dimensions
      data[:dimensions]
    end

    # The period, in seconds, over which the statistic is applied.
    # @return [Integer]
    def period
      data[:period]
    end

    # The unit of the metric associated with the alarm.
    # @return [String]
    def unit
      data[:unit]
    end

    # The number of periods over which data is compared to the specified
    # threshold.
    # @return [Integer]
    def evaluation_periods
      data[:evaluation_periods]
    end

    # The number of datapoints that must be breaching to trigger the alarm.
    # @return [Integer]
    def datapoints_to_alarm
      data[:datapoints_to_alarm]
    end

    # The value to compare with the specified statistic.
    # @return [Float]
    def threshold
      data[:threshold]
    end

    # The arithmetic operation to use when comparing the specified statistic
    # and threshold. The specified statistic value is used as the first
    # operand.
    # @return [String]
    def comparison_operator
      data[:comparison_operator]
    end

    # Sets how this alarm is to handle missing data points. If this
    # parameter is omitted, the default behavior of `missing` is used.
    # @return [String]
    def treat_missing_data
      data[:treat_missing_data]
    end

    # Used only for alarms based on percentiles. If `ignore`, the alarm
    # state does not change during periods with too few data points to be
    # statistically significant. If `evaluate` or this parameter is not
    # used, the alarm is always evaluated and possibly changes state no
    # matter how many data points are available.
    # @return [String]
    def evaluate_low_sample_count_percentile
      data[:evaluate_low_sample_count_percentile]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {Alarm}.
    # Returns `self` making it possible to chain methods.
    #
    #     alarm.reload.data
    #
    # @return [self]
    def load
      resp = @client.describe_alarms(alarm_names: [@name])
      @data = resp.metric_alarms[0]
      self
    end
    alias :reload :load

    # @return [Types::MetricAlarm]
    #   Returns the data for this {Alarm}. Calls
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
    #   Returns `true` if the Alarm exists.
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
    # @return [Alarm]
    def wait_until_exists(options = {})
      options, params = separate_params_and_options(options)
      waiter = Waiters::AlarmExists.new(options)
      yield_waiter_and_warn(waiter, &Proc.new) if block_given?
      waiter.wait(params.merge(alarm_names: [@name]))
      Alarm.new({
        name: @name,
        client: @client
      })
    end

    # @deprecated Use [Aws::CloudWatch::Client] #wait_until instead
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
    #   alarm.delete()
    # @param [Hash] options ({})
    # @return [EmptyStructure]
    def delete(options = {})
      options = Aws::Util.deep_merge(options, alarm_names: [@name])
      resp = @client.delete_alarms(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   alarm.describe_history({
    #     history_item_type: "ConfigurationUpdate", # accepts ConfigurationUpdate, StateUpdate, Action
    #     start_date: Time.now,
    #     end_date: Time.now,
    #     max_records: 1,
    #     next_token: "NextToken",
    #   })
    # @param [Hash] options ({})
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
    # @return [Types::DescribeAlarmHistoryOutput]
    def describe_history(options = {})
      options = options.merge(alarm_name: @name)
      resp = @client.describe_alarm_history(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   alarm.disable_actions()
    # @param [Hash] options ({})
    # @return [EmptyStructure]
    def disable_actions(options = {})
      options = Aws::Util.deep_merge(options, alarm_names: [@name])
      resp = @client.disable_alarm_actions(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   alarm.enable_actions()
    # @param [Hash] options ({})
    # @return [EmptyStructure]
    def enable_actions(options = {})
      options = Aws::Util.deep_merge(options, alarm_names: [@name])
      resp = @client.enable_alarm_actions(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   alarm.set_state({
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
    # @return [EmptyStructure]
    def set_state(options = {})
      options = options.merge(alarm_name: @name)
      resp = @client.set_alarm_state(options)
      resp.data
    end

    # @!group Associations

    # @return [Metric, nil]
    def metric
      if data[:namespace] && data[:metric_name]
        Metric.new(
          namespace: data[:namespace],
          name: data[:metric_name],
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
