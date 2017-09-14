# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RDS
  class ReservedDBInstance

    extend Aws::Deprecations

    # @overload def initialize(id, options = {})
    #   @param [String] id
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :id
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @id = extract_id(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
    end

    # @!group Read-Only Attributes

    # @return [String]
    def id
      @id
    end
    alias :reserved_db_instance_id :id

    # The offering identifier.
    # @return [String]
    def reserved_db_instances_offering_id
      data[:reserved_db_instances_offering_id]
    end

    # The DB instance class for the reserved DB instance.
    # @return [String]
    def db_instance_class
      data[:db_instance_class]
    end

    # The time the reservation started.
    # @return [Time]
    def start_time
      data[:start_time]
    end

    # The duration of the reservation in seconds.
    # @return [Integer]
    def duration
      data[:duration]
    end

    # The fixed price charged for this reserved DB instance.
    # @return [Float]
    def fixed_price
      data[:fixed_price]
    end

    # The hourly price charged for this reserved DB instance.
    # @return [Float]
    def usage_price
      data[:usage_price]
    end

    # The currency code for the reserved DB instance.
    # @return [String]
    def currency_code
      data[:currency_code]
    end

    # The number of reserved DB instances.
    # @return [Integer]
    def db_instance_count
      data[:db_instance_count]
    end

    # The description of the reserved DB instance.
    # @return [String]
    def product_description
      data[:product_description]
    end

    # The offering type of this reserved DB instance.
    # @return [String]
    def offering_type
      data[:offering_type]
    end

    # Indicates if the reservation applies to Multi-AZ deployments.
    # @return [Boolean]
    def multi_az
      data[:multi_az]
    end

    # The state of the reserved DB instance.
    # @return [String]
    def state
      data[:state]
    end

    # The recurring price charged to run this reserved DB instance.
    # @return [Array<Types::RecurringCharge>]
    def recurring_charges
      data[:recurring_charges]
    end

    # The Amazon Resource Name (ARN) for the reserved DB instance.
    # @return [String]
    def reserved_db_instance_arn
      data[:reserved_db_instance_arn]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {ReservedDBInstance}.
    # Returns `self` making it possible to chain methods.
    #
    #     reserved_db_instance.reload.data
    #
    # @return [self]
    def load
      resp = @client.describe_reserved_db_instances(reserved_db_instance_id: @id)
      @data = resp.reserved_db_instances[0]
      self
    end
    alias :reload :load

    # @return [Types::ReservedDBInstance]
    #   Returns the data for this {ReservedDBInstance}. Calls
    #   {Client#describe_reserved_db_instances} if {#data_loaded?} is `false`.
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

    # @deprecated Use [Aws::RDS::Client] #wait_until instead
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

    # @!group Associations

    # @return [ReservedDBInstancesOffering, nil]
    def offering
      if data[:reserved_db_instances_offering_id]
        ReservedDBInstancesOffering.new(
          id: data[:reserved_db_instances_offering_id],
          client: @client
        )
      else
        nil
      end
    end

    # @deprecated
    # @api private
    def identifiers
      { id: @id }
    end
    deprecated(:identifiers)

    private

    def extract_id(args, options)
      value = args[0] || options.delete(:id)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :id"
      else
        msg = "expected :id to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    class Collection < Aws::Resources::Collection; end
  end
end
