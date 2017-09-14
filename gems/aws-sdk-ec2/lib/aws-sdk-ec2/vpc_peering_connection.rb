# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EC2
  class VpcPeeringConnection

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
    alias :vpc_peering_connection_id :id

    # Information about the accepter VPC. CIDR block information is only
    # returned when describing an active VPC peering connection.
    # @return [Types::VpcPeeringConnectionVpcInfo]
    def accepter_vpc_info
      data[:accepter_vpc_info]
    end

    # The time that an unaccepted VPC peering connection will expire.
    # @return [Time]
    def expiration_time
      data[:expiration_time]
    end

    # Information about the requester VPC. CIDR block information is only
    # returned when describing an active VPC peering connection.
    # @return [Types::VpcPeeringConnectionVpcInfo]
    def requester_vpc_info
      data[:requester_vpc_info]
    end

    # The status of the VPC peering connection.
    # @return [Types::VpcPeeringConnectionStateReason]
    def status
      data[:status]
    end

    # Any tags assigned to the resource.
    # @return [Array<Types::Tag>]
    def tags
      data[:tags]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {VpcPeeringConnection}.
    # Returns `self` making it possible to chain methods.
    #
    #     vpc_peering_connection.reload.data
    #
    # @return [self]
    def load
      resp = @client.describe_vpc_peering_connections(vpc_peering_connection_ids: [@id])
      @data = resp.vpc_peering_connections[0]
      self
    end
    alias :reload :load

    # @return [Types::VpcPeeringConnection]
    #   Returns the data for this {VpcPeeringConnection}. Calls
    #   {Client#describe_vpc_peering_connections} if {#data_loaded?} is `false`.
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
    #   Returns `true` if the VpcPeeringConnection exists.
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
    # @option options [Float] :delay (15)
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    # @return [VpcPeeringConnection]
    def wait_until_exists(options = {})
      options, params = separate_params_and_options(options)
      waiter = Waiters::VpcPeeringConnectionExists.new(options)
      yield_waiter_and_warn(waiter, &Proc.new) if block_given?
      resp = waiter.wait(params.merge(vpc_peering_connection_ids: [@id]))
      VpcPeeringConnection.new({
        id: @id,
        data: resp.data.vpc_peering_connections[0],
        client: @client
      })
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
    #   vpc_peering_connection.accept({
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [Types::AcceptVpcPeeringConnectionResult]
    def accept(options = {})
      options = options.merge(vpc_peering_connection_id: @id)
      resp = @client.accept_vpc_peering_connection(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   vpc_peering_connection.delete({
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [Types::DeleteVpcPeeringConnectionResult]
    def delete(options = {})
      options = options.merge(vpc_peering_connection_id: @id)
      resp = @client.delete_vpc_peering_connection(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   vpc_peering_connection.reject({
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [Types::RejectVpcPeeringConnectionResult]
    def reject(options = {})
      options = options.merge(vpc_peering_connection_id: @id)
      resp = @client.reject_vpc_peering_connection(options)
      resp.data
    end

    # @!group Associations

    # @return [Vpc, nil]
    def accepter_vpc
      if data[:accepter_vpc_info][:vpc_id]
        Vpc.new(
          id: data[:accepter_vpc_info][:vpc_id],
          client: @client
        )
      else
        nil
      end
    end

    # @return [Vpc, nil]
    def requester_vpc
      if data[:requester_vpc_info][:vpc_id]
        Vpc.new(
          id: data[:requester_vpc_info][:vpc_id],
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

    class Collection < Aws::Resources::Collection; end
  end
end
