# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EC2
  class Route

    extend Aws::Deprecations

    # @overload def initialize(route_table_id, destination_cidr_block, options = {})
    #   @param [String] route_table_id
    #   @param [String] destination_cidr_block
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :route_table_id
    #   @option options [required, String] :destination_cidr_block
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @route_table_id = extract_route_table_id(args, options)
      @destination_cidr_block = extract_destination_cidr_block(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
    end

    # @!group Read-Only Attributes

    # @return [String]
    def route_table_id
      @route_table_id
    end

    # @return [String]
    def destination_cidr_block
      @destination_cidr_block
    end

    # The IPv6 CIDR block used for the destination match.
    # @return [String]
    def destination_ipv_6_cidr_block
      data[:destination_ipv_6_cidr_block]
    end

    # The prefix of the AWS service.
    # @return [String]
    def destination_prefix_list_id
      data[:destination_prefix_list_id]
    end

    # The ID of the egress-only internet gateway.
    # @return [String]
    def egress_only_internet_gateway_id
      data[:egress_only_internet_gateway_id]
    end

    # The ID of a gateway attached to your VPC.
    # @return [String]
    def gateway_id
      data[:gateway_id]
    end

    # The ID of a NAT instance in your VPC.
    # @return [String]
    def instance_id
      data[:instance_id]
    end

    # The AWS account ID of the owner of the instance.
    # @return [String]
    def instance_owner_id
      data[:instance_owner_id]
    end

    # The ID of a NAT gateway.
    # @return [String]
    def nat_gateway_id
      data[:nat_gateway_id]
    end

    # The ID of the network interface.
    # @return [String]
    def network_interface_id
      data[:network_interface_id]
    end

    # Describes how the route was created.
    #
    # * `CreateRouteTable` - The route was automatically created when the
    #   route table was created.
    #
    # * `CreateRoute` - The route was manually added to the route table.
    #
    # * `EnableVgwRoutePropagation` - The route was propagated by route
    #   propagation.
    # @return [String]
    def origin
      data[:origin]
    end

    # The state of the route. The `blackhole` state indicates that the
    # route's target isn't available (for example, the specified gateway
    # isn't attached to the VPC, or the specified NAT instance has been
    # terminated).
    # @return [String]
    def state
      data[:state]
    end

    # The ID of the VPC peering connection.
    # @return [String]
    def vpc_peering_connection_id
      data[:vpc_peering_connection_id]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # @raise [NotImplementedError]
    # @api private
    def load
      msg = "#load is not implemented, data only available via enumeration"
      raise NotImplementedError, msg
    end
    alias :reload :load

    # @raise [NotImplementedError] Raises when {#data_loaded?} is `false`.
    # @return [Types::Route]
    #   Returns the data for this {Route}.
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

    # @deprecated Use [Aws::EC2::Client] #wait_until instead
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
    #   route.delete({
    #     destination_ipv_6_cidr_block: "String",
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [String] :destination_ipv_6_cidr_block
    #   The IPv6 CIDR range for the route. The value you specify must match
    #   the CIDR for the route exactly.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [EmptyStructure]
    def delete(options = {})
      options = options.merge(
        route_table_id: @route_table_id,
        destination_cidr_block: @destination_cidr_block
      )
      resp = @client.delete_route(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   route.replace({
    #     destination_ipv_6_cidr_block: "String",
    #     dry_run: false,
    #     egress_only_internet_gateway_id: "String",
    #     gateway_id: "String",
    #     instance_id: "String",
    #     nat_gateway_id: "String",
    #     network_interface_id: "String",
    #     vpc_peering_connection_id: "String",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :destination_ipv_6_cidr_block
    #   The IPv6 CIDR address block used for the destination match. The value
    #   that you provide must match the CIDR of an existing route in the
    #   table.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [String] :egress_only_internet_gateway_id
    #   \[IPv6 traffic only\] The ID of an egress-only internet gateway.
    # @option options [String] :gateway_id
    #   The ID of an internet gateway or virtual private gateway.
    # @option options [String] :instance_id
    #   The ID of a NAT instance in your VPC.
    # @option options [String] :nat_gateway_id
    #   \[IPv4 traffic only\] The ID of a NAT gateway.
    # @option options [String] :network_interface_id
    #   The ID of a network interface.
    # @option options [String] :vpc_peering_connection_id
    #   The ID of a VPC peering connection.
    # @return [EmptyStructure]
    def replace(options = {})
      options = options.merge(
        route_table_id: @route_table_id,
        destination_cidr_block: @destination_cidr_block
      )
      resp = @client.replace_route(options)
      resp.data
    end

    # @!group Associations

    # @return [RouteTable]
    def route_table
      RouteTable.new(
        id: @route_table_id,
        client: @client
      )
    end

    # @deprecated
    # @api private
    def identifiers
      {
        route_table_id: @route_table_id,
        destination_cidr_block: @destination_cidr_block
      }
    end
    deprecated(:identifiers)

    private

    def extract_route_table_id(args, options)
      value = args[0] || options.delete(:route_table_id)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :route_table_id"
      else
        msg = "expected :route_table_id to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    def extract_destination_cidr_block(args, options)
      value = args[1] || options.delete(:destination_cidr_block)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :destination_cidr_block"
      else
        msg = "expected :destination_cidr_block to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    class Collection < Aws::Resources::Collection; end
  end
end
