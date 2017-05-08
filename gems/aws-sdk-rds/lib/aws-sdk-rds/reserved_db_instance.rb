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
      data.reserved_db_instances_offering_id
    end

    # The DB instance class for the reserved DB instance.
    # @return [String]
    def db_instance_class
      data.db_instance_class
    end

    # The time the reservation started.
    # @return [Time]
    def start_time
      data.start_time
    end

    # The duration of the reservation in seconds.
    # @return [Integer]
    def duration
      data.duration
    end

    # The fixed price charged for this reserved DB instance.
    # @return [Float]
    def fixed_price
      data.fixed_price
    end

    # The hourly price charged for this reserved DB instance.
    # @return [Float]
    def usage_price
      data.usage_price
    end

    # The currency code for the reserved DB instance.
    # @return [String]
    def currency_code
      data.currency_code
    end

    # The number of reserved DB instances.
    # @return [Integer]
    def db_instance_count
      data.db_instance_count
    end

    # The description of the reserved DB instance.
    # @return [String]
    def product_description
      data.product_description
    end

    # The offering type of this reserved DB instance.
    # @return [String]
    def offering_type
      data.offering_type
    end

    # Indicates if the reservation applies to Multi-AZ deployments.
    # @return [Boolean]
    def multi_az
      data.multi_az
    end

    # The state of the reserved DB instance.
    # @return [String]
    def state
      data.state
    end

    # The recurring price charged to run this reserved DB instance.
    # @return [Array<Types::RecurringCharge>]
    def recurring_charges
      data.recurring_charges
    end

    # The Amazon Resource Name (ARN) for the reserved DB instance.
    # @return [String]
    def reserved_db_instance_arn
      data.reserved_db_instance_arn
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

    # @!group Associations

    # @return [ReservedDBInstancesOffering, nil]
    def offering
      if data.reserved_db_instances_offering_id
        ReservedDBInstancesOffering.new(
          id: data.reserved_db_instances_offering_id,
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
