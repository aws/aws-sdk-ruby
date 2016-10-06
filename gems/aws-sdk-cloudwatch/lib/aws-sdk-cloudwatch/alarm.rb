# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws
  module CloudWatch
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
        data.alarm_arn
      end

      # The description for the alarm.
      # @return [String]
      def alarm_description
        data.alarm_description
      end

      # The time stamp of the last update to the alarm configuration.
      # @return [Time]
      def alarm_configuration_updated_timestamp
        data.alarm_configuration_updated_timestamp
      end

      # Indicates whether actions should be executed during any changes to the
      # alarm's state.
      # @return [Boolean]
      def actions_enabled
        data.actions_enabled
      end

      # The list of actions to execute when this alarm transitions into an
      # `OK` state from any other state. Each action is specified as an Amazon
      # Resource Name (ARN).
      # @return [Array<String>]
      def ok_actions
        data.ok_actions
      end

      # The list of actions to execute when this alarm transitions into an
      # `ALARM` state from any other state. Each action is specified as an
      # Amazon Resource Name (ARN).
      # @return [Array<String>]
      def alarm_actions
        data.alarm_actions
      end

      # The list of actions to execute when this alarm transitions into an
      # `INSUFFICIENT_DATA` state from any other state. Each action is
      # specified as an Amazon Resource Name (ARN).
      #
      # The current WSDL lists this attribute as `UnknownActions`.
      # @return [Array<String>]
      def insufficient_data_actions
        data.insufficient_data_actions
      end

      # The state value for the alarm.
      # @return [String]
      def state_value
        data.state_value
      end

      # A human-readable explanation for the alarm's state.
      # @return [String]
      def state_reason
        data.state_reason
      end

      # An explanation for the alarm's state in machine-readable JSON format
      # @return [String]
      def state_reason_data
        data.state_reason_data
      end

      # The time stamp of the last update to the alarm's state.
      # @return [Time]
      def state_updated_timestamp
        data.state_updated_timestamp
      end

      # The name of the alarm's metric.
      # @return [String]
      def metric_name
        data.metric_name
      end

      # The namespace of alarm's associated metric.
      # @return [String]
      def namespace
        data.namespace
      end

      # The statistic to apply to the alarm's associated metric.
      # @return [String]
      def statistic
        data.statistic
      end

      # The list of dimensions associated with the alarm's associated metric.
      # @return [Array<Types::Dimension>]
      def dimensions
        data.dimensions
      end

      # The period in seconds over which the statistic is applied.
      # @return [Integer]
      def period
        data.period
      end

      # The unit of the alarm's associated metric.
      # @return [String]
      def unit
        data.unit
      end

      # The number of periods over which data is compared to the specified
      # threshold.
      # @return [Integer]
      def evaluation_periods
        data.evaluation_periods
      end

      # The value against which the specified statistic is compared.
      # @return [Float]
      def threshold
        data.threshold
      end

      # The arithmetic operation to use when comparing the specified
      # `Statistic` and `Threshold`. The specified `Statistic` value is used
      # as the first operand.
      # @return [String]
      def comparison_operator
        data.comparison_operator
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
        @data = resp.metricalarms[0]
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

      # @return [Boolean]
      #   Returns `true` if the Alarm exists.
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
      # @option options [Integer] :max_attempts (40)
      # @option options [Float] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      # @return [Alarm]
      def wait_until_exists(options = {})
        waiter = Waiters::AlarmExists.new(options.merge(client: @client))
        yield_waiter_and_warn(waiter, &Proc.new) if block_given?
        waiter.wait(alarm_names: [@name])
        Alarm.new({
          name: @name,
          client: @client
        })
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
      #   The reason that this alarm is set to this specific state (in
      #   human-readable text format)
      # @option options [String] :state_reason_data
      #   The reason that this alarm is set to this specific state (in
      #   machine-readable JSON format)
      # @return [EmptyStructure]
      def set_state(options = {})
        options = options.merge(alarm_name: @name)
        resp = @client.set_alarm_state(options)
        resp.data
      end

      # @!group Associations

      # @return [Metric, nil]
      def metric
        if data.namespace && data.metric_name
          Metric.new(
            namespace: data.namespace,
            name: data.metric_name,
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

      class Collection < Aws::Resources::Collection

        # @!group Batch Actions

        # @param options ({})
        # @return [void]
        def batch_delete!(options = {})
        end

        # @param options ({})
        # @return [void]
        def batch_disable_actions(options = {})
        end

        # @param options ({})
        # @return [void]
        def batch_enable_actions(options = {})
        end

        # @!endgroup

      end
    end
  end
end
