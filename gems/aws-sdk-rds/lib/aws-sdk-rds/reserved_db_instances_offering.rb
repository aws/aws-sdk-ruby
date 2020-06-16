# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RDS

  class ReservedDBInstancesOffering

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
      @waiter_block_warned = false
    end

    # @!group Read-Only Attributes

    # @return [String]
    def id
      @id
    end
    alias :reserved_db_instances_offering_id :id

    # The DB instance class for the reserved DB instance.
    # @return [String]
    def db_instance_class
      data[:db_instance_class]
    end

    # The duration of the offering in seconds.
    # @return [Integer]
    def duration
      data[:duration]
    end

    # The fixed price charged for this offering.
    # @return [Float]
    def fixed_price
      data[:fixed_price]
    end

    # The hourly price charged for this offering.
    # @return [Float]
    def usage_price
      data[:usage_price]
    end

    # The currency code for the reserved DB instance offering.
    # @return [String]
    def currency_code
      data[:currency_code]
    end

    # The database engine used by the offering.
    # @return [String]
    def product_description
      data[:product_description]
    end

    # The offering type.
    # @return [String]
    def offering_type
      data[:offering_type]
    end

    # Indicates if the offering applies to Multi-AZ deployments.
    # @return [Boolean]
    def multi_az
      data[:multi_az]
    end

    # The recurring price charged to run this reserved DB instance.
    # @return [Array<Types::RecurringCharge>]
    def recurring_charges
      data[:recurring_charges]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {ReservedDBInstancesOffering}.
    # Returns `self` making it possible to chain methods.
    #
    #     reserved_db_instances_offering.reload.data
    #
    # @return [self]
    def load
      resp = @client.describe_reserved_db_instances_offerings(reserved_db_instances_offering_id: @id)
      @data = resp.reserved_db_instances_offerings[0]
      self
    end
    alias :reload :load

    # @return [Types::ReservedDBInstancesOffering]
    #   Returns the data for this {ReservedDBInstancesOffering}. Calls
    #   {Client#describe_reserved_db_instances_offerings} if {#data_loaded?} is `false`.
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
    #   reserveddbinstance = reserved_db_instances_offering.purchase({
    #     reserved_db_instance_id: "String",
    #     db_instance_count: 1,
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [String] :reserved_db_instance_id
    #   Customer-specified identifier to track this reservation.
    #
    #   Example: myreservationID
    # @option options [Integer] :db_instance_count
    #   The number of instances to reserve.
    #
    #   Default: `1`
    # @option options [Array<Types::Tag>] :tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    # @return [ReservedDBInstance]
    def purchase(options = {})
      options = options.merge(reserved_db_instances_offering_id: @id)
      resp = @client.purchase_reserved_db_instances_offering(options)
      ReservedDBInstance.new(
        id: resp.data.reserved_db_instance.reserved_db_instance_id,
        data: resp.data.reserved_db_instance,
        client: @client
      )
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
