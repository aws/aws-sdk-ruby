# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws
  module EC2
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

      # Information about the accepter VPC. CIDR block information is not
      # returned when creating a VPC peering connection, or when describing a
      # VPC peering connection that's in the `initiating-request` or
      # `pending-acceptance` state.
      # @return [Types::VpcPeeringConnectionVpcInfo]
      def accepter_vpc_info
        data.accepter_vpc_info
      end

      # The time that an unaccepted VPC peering connection will expire.
      # @return [Time]
      def expiration_time
        data.expiration_time
      end

      # Information about the requester VPC.
      # @return [Types::VpcPeeringConnectionVpcInfo]
      def requester_vpc_info
        data.requester_vpc_info
      end

      # The status of the VPC peering connection.
      # @return [Types::VpcPeeringConnectionStateReason]
      def status
        data.status
      end

      # Any tags assigned to the resource.
      # @return [Array<Types::Tag>]
      def tags
        data.tags
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
        @data = resp.vpcpeeringconnections[0]
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

      # @return [Boolean]
      #   Returns `true` if the VpcPeeringConnection exists.
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
      # @option options [Float] :delay (15)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      # @return [VpcPeeringConnection]
      def wait_until_exists(options = {})
        waiter = Waiters::VpcPeeringConnectionExists.new(options.merge(client: @client))
        yield_waiter_and_warn(waiter, &Proc.new) if block_given?
        resp = waiter.wait(vpc_peering_connection_ids: [@id])
        VpcPeeringConnection.new({
          id: @id,
          data: resp.data.vpc_peering_connections[0],
          client: @client
        })
      end

      # @!group Actions

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
        if data.accepter_vpc_info.vpc_id
          Vpc.new(
            id: data.accepter_vpc_info.vpc_id,
            client: @client
          )
        else
          nil
        end
      end

      # @return [Vpc, nil]
      def requester_vpc
        if data.requester_vpc_info.vpc_id
          Vpc.new(
            id: data.requester_vpc_info.vpc_id,
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

      class Collection

        include Aws::Resources::Collection

        # @return [Enumerator<VpcPeeringConnection>]
        def each(&block)
          enum = super
          enum.each(&block) if block
          enum
        end

      end
    end
  end
end
