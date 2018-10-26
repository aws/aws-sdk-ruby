# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EC2
  class RouteTable

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
    alias :route_table_id :id

    # Any virtual private gateway (VGW) propagating routes.
    # @return [Array<Types::PropagatingVgw>]
    def propagating_vgws
      data[:propagating_vgws]
    end

    # Any tags assigned to the route table.
    # @return [Array<Types::Tag>]
    def tags
      data[:tags]
    end

    # The ID of the VPC.
    # @return [String]
    def vpc_id
      data[:vpc_id]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {RouteTable}.
    # Returns `self` making it possible to chain methods.
    #
    #     route_table.reload.data
    #
    # @return [self]
    def load
      resp = @client.describe_route_tables(route_table_ids: [@id])
      @data = resp.route_tables[0]
      self
    end
    alias :reload :load

    # @return [Types::RouteTable]
    #   Returns the data for this {RouteTable}. Calls
    #   {Client#describe_route_tables} if {#data_loaded?} is `false`.
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
    #   routetableassociation = route_table.associate_with_subnet({
    #     dry_run: false,
    #     subnet_id: "String", # required
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [required, String] :subnet_id
    #   The ID of the subnet.
    # @return [RouteTableAssociation]
    def associate_with_subnet(options = {})
      options = options.merge(route_table_id: @id)
      resp = @client.associate_route_table(options)
      RouteTableAssociation.new(
        id: resp.data.association_id,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   route = route_table.create_route({
    #     destination_cidr_block: "String",
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
    # @option options [String] :destination_cidr_block
    #   The IPv4 CIDR address block used for the destination match. Routing
    #   decisions are based on the most specific match.
    # @option options [String] :destination_ipv_6_cidr_block
    #   The IPv6 CIDR block used for the destination match. Routing decisions
    #   are based on the most specific match.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [String] :egress_only_internet_gateway_id
    #   \[IPv6 traffic only\] The ID of an egress-only internet gateway.
    # @option options [String] :gateway_id
    #   The ID of an internet gateway or virtual private gateway attached to
    #   your VPC.
    # @option options [String] :instance_id
    #   The ID of a NAT instance in your VPC. The operation fails if you
    #   specify an instance ID unless exactly one network interface is
    #   attached.
    # @option options [String] :nat_gateway_id
    #   \[IPv4 traffic only\] The ID of a NAT gateway.
    # @option options [String] :network_interface_id
    #   The ID of a network interface.
    # @option options [String] :vpc_peering_connection_id
    #   The ID of a VPC peering connection.
    # @return [Route]
    def create_route(options = {})
      options = options.merge(route_table_id: @id)
      resp = @client.create_route(options)
      Route.new(
        route_table_id: @id,
        destination_cidr_block: options[:destination_cidr_block],
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   tag = route_table.create_tags({
    #     dry_run: false,
    #     tags: [ # required
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [required, Array<Types::Tag>] :tags
    #   One or more tags. The `value` parameter is required, but if you don't
    #   want the tag to have a value, specify the parameter with no value, and
    #   we set the value to an empty string.
    # @return [Tag::Collection]
    def create_tags(options = {})
      batch = []
      options = Aws::Util.deep_merge(options, resources: [@id])
      resp = @client.create_tags(options)
      options[:tags].each do |t|
        batch << Tag.new(
          resource_id: @id,
          key: t[:key],
          value: t[:value],
          client: @client
        )
      end
      Tag::Collection.new([batch], size: batch.size)
    end

    # @example Request syntax with placeholder values
    #
    #   route_table.delete({
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [EmptyStructure]
    def delete(options = {})
      options = options.merge(route_table_id: @id)
      resp = @client.delete_route_table(options)
      resp.data
    end

    # @!group Associations

    # @return [RouteTableAssociation::Collection]
    def associations
      batch = []
      data[:associations].each do |d|
        batch << RouteTableAssociation.new(
          id: d[:route_table_association_id],
          data: d,
          client: @client
        )
      end
      RouteTableAssociation::Collection.new([batch], size: batch.size)
    end

    # @return [Route::Collection]
    def routes
      batch = []
      data[:routes].each do |d|
        batch << Route.new(
          route_table_id: @id,
          destination_cidr_block: d[:destination_cidr_block],
          data: d,
          client: @client
        )
      end
      Route::Collection.new([batch], size: batch.size)
    end

    # @return [Vpc, nil]
    def vpc
      if data[:vpc_id]
        Vpc.new(
          id: data[:vpc_id],
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
