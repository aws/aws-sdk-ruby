# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EC2

  class NatGateway

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
    alias :nat_gateway_id :id

    # The date and time the NAT gateway was created.
    # @return [Time]
    def create_time
      data[:create_time]
    end

    # The date and time the NAT gateway was deleted, if applicable.
    # @return [Time]
    def delete_time
      data[:delete_time]
    end

    # If the NAT gateway could not be created, specifies the error code for
    # the failure. (`InsufficientFreeAddressesInSubnet` \|
    # `Gateway.NotAttached` \| `InvalidAllocationID.NotFound` \|
    # `Resource.AlreadyAssociated` \| `InternalError` \|
    # `InvalidSubnetID.NotFound`)
    # @return [String]
    def failure_code
      data[:failure_code]
    end

    # If the NAT gateway could not be created, specifies the error message
    # for the failure, that corresponds to the error code.
    #
    # * For InsufficientFreeAddressesInSubnet: "Subnet has insufficient
    #   free addresses to create this NAT gateway"
    #
    # * For Gateway.NotAttached: "Network vpc-xxxxxxxx has no Internet
    #   gateway attached"
    #
    # * For InvalidAllocationID.NotFound: "Elastic IP address
    #   eipalloc-xxxxxxxx could not be associated with this NAT gateway"
    #
    # * For Resource.AlreadyAssociated: "Elastic IP address
    #   eipalloc-xxxxxxxx is already associated"
    #
    # * For InternalError: "Network interface eni-xxxxxxxx, created and
    #   used internally by this NAT gateway is in an invalid state. Please
    #   try again."
    #
    # * For InvalidSubnetID.NotFound: "The specified subnet subnet-xxxxxxxx
    #   does not exist or could not be found."
    # @return [String]
    def failure_message
      data[:failure_message]
    end

    # Information about the IP addresses and network interface associated
    # with the NAT gateway.
    # @return [Array<Types::NatGatewayAddress>]
    def nat_gateway_addresses
      data[:nat_gateway_addresses]
    end

    # Reserved. If you need to sustain traffic greater than the [documented
    # limits][1], contact us through the [Support Center][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html
    # [2]: https://console.aws.amazon.com/support/home?
    # @return [Types::ProvisionedBandwidth]
    def provisioned_bandwidth
      data[:provisioned_bandwidth]
    end

    # The state of the NAT gateway.
    #
    # * `pending`\: The NAT gateway is being created and is not ready to
    #   process traffic.
    #
    # * `failed`\: The NAT gateway could not be created. Check the
    #   `failureCode` and `failureMessage` fields for the reason.
    #
    # * `available`\: The NAT gateway is able to process traffic. This
    #   status remains until you delete the NAT gateway, and does not
    #   indicate the health of the NAT gateway.
    #
    # * `deleting`\: The NAT gateway is in the process of being terminated
    #   and may still be processing traffic.
    #
    # * `deleted`\: The NAT gateway has been terminated and is no longer
    #   processing traffic.
    # @return [String]
    def state
      data[:state]
    end

    # The ID of the subnet in which the NAT gateway is located.
    # @return [String]
    def subnet_id
      data[:subnet_id]
    end

    # The ID of the VPC in which the NAT gateway is located.
    # @return [String]
    def vpc_id
      data[:vpc_id]
    end

    # The tags for the NAT gateway.
    # @return [Array<Types::Tag>]
    def tags
      data[:tags]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {NatGateway}.
    # Returns `self` making it possible to chain methods.
    #
    #     nat_gateway.reload.data
    #
    # @return [self]
    def load
      resp = @client.describe_nat_gateways(nat_gateway_ids: [@id])
      @data = resp.nat_gateways[0]
      self
    end
    alias :reload :load

    # @return [Types::NatGateway]
    #   Returns the data for this {NatGateway}. Calls
    #   {Client#describe_nat_gateways} if {#data_loaded?} is `false`.
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
    #   tag = nat_gateway.create_tags({
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
    #   The tags. The `value` parameter is required, but if you don't want
    #   the tag to have a value, specify the parameter with no value, and we
    #   set the value to an empty string.
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
    #   tag = nat_gateway.delete_tags({
    #     dry_run: false,
    #     tags: [
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
    # @option options [Array<Types::Tag>] :tags
    #   The tags to delete. Specify a tag key and an optional tag value to
    #   delete specific tags. If you specify a tag key without a tag value, we
    #   delete any tag with this key regardless of its value. If you specify a
    #   tag key with an empty string as the tag value, we delete the tag only
    #   if its value is an empty string.
    #
    #   If you omit this parameter, we delete all user-defined tags for the
    #   specified resources. We do not delete AWS-generated tags (tags that
    #   have the `aws:` prefix).
    # @return [Tag::Collection]
    def delete_tags(options = {})
      batch = []
      options = Aws::Util.deep_merge(options, resources: [@id])
      resp = @client.delete_tags(options)
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
    #   nat_gateway.delete({
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [Types::DeleteNatGatewayResult]
    def delete(options = {})
      options = options.merge(nat_gateway_id: @id)
      resp = @client.delete_nat_gateway(options)
      resp.data
    end

    # @!group Associations

    # @return [VpcAddress, nil]
    def address
      if data[:allocation_id]
        VpcAddress.new(
          allocation_id: data[:allocation_id],
          client: @client
        )
      else
        nil
      end
    end

    # @return [Subnet, nil]
    def subnet
      if data[:subnet_id]
        Subnet.new(
          id: data[:subnet_id],
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
