# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EC2
  class NetworkInterface

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
    alias :network_interface_id :id

    # The network interface attachment.
    # @return [Types::NetworkInterfaceAttachment]
    def attachment
      data[:attachment]
    end

    # The Availability Zone.
    # @return [String]
    def availability_zone
      data[:availability_zone]
    end

    # A description.
    # @return [String]
    def description
      data[:description]
    end

    # Any security groups for the network interface.
    # @return [Array<Types::GroupIdentifier>]
    def groups
      data[:groups]
    end

    # The type of interface.
    # @return [String]
    def interface_type
      data[:interface_type]
    end

    # The IPv6 addresses associated with the network interface.
    # @return [Array<Types::NetworkInterfaceIpv6Address>]
    def ipv_6_addresses
      data[:ipv_6_addresses]
    end

    # The MAC address.
    # @return [String]
    def mac_address
      data[:mac_address]
    end

    # The AWS account ID of the owner of the network interface.
    # @return [String]
    def owner_id
      data[:owner_id]
    end

    # The private DNS name.
    # @return [String]
    def private_dns_name
      data[:private_dns_name]
    end

    # The IPv4 address of the network interface within the subnet.
    # @return [String]
    def private_ip_address
      data[:private_ip_address]
    end

    # The private IPv4 addresses associated with the network interface.
    # @return [Array<Types::NetworkInterfacePrivateIpAddress>]
    def private_ip_addresses
      data[:private_ip_addresses]
    end

    # The ID of the entity that launched the instance on your behalf (for
    # example, AWS Management Console or Auto Scaling).
    # @return [String]
    def requester_id
      data[:requester_id]
    end

    # Indicates whether the network interface is being managed by AWS.
    # @return [Boolean]
    def requester_managed
      data[:requester_managed]
    end

    # Indicates whether traffic to or from the instance is validated.
    # @return [Boolean]
    def source_dest_check
      data[:source_dest_check]
    end

    # The status of the network interface.
    # @return [String]
    def status
      data[:status]
    end

    # The ID of the subnet.
    # @return [String]
    def subnet_id
      data[:subnet_id]
    end

    # Any tags assigned to the network interface.
    # @return [Array<Types::Tag>]
    def tag_set
      data[:tag_set]
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

    # Loads, or reloads {#data} for the current {NetworkInterface}.
    # Returns `self` making it possible to chain methods.
    #
    #     network_interface.reload.data
    #
    # @return [self]
    def load
      resp = @client.describe_network_interfaces(network_interface_ids: [@id])
      @data = resp.network_interfaces[0]
      self
    end
    alias :reload :load

    # @return [Types::NetworkInterface]
    #   Returns the data for this {NetworkInterface}. Calls
    #   {Client#describe_network_interfaces} if {#data_loaded?} is `false`.
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
    #   network_interface.assign_private_ip_addresses({
    #     allow_reassignment: false,
    #     private_ip_addresses: ["String"],
    #     secondary_private_ip_address_count: 1,
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :allow_reassignment
    #   Indicates whether to allow an IP address that is already assigned to
    #   another network interface or instance to be reassigned to the
    #   specified network interface.
    # @option options [Array<String>] :private_ip_addresses
    #   One or more IP addresses to be assigned as a secondary private IP
    #   address to the network interface. You can't specify this parameter
    #   when also specifying a number of secondary IP addresses.
    #
    #   If you don't specify an IP address, Amazon EC2 automatically selects
    #   an IP address within the subnet range.
    # @option options [Integer] :secondary_private_ip_address_count
    #   The number of secondary IP addresses to assign to the network
    #   interface. You can't specify this parameter when also specifying
    #   private IP addresses.
    # @return [EmptyStructure]
    def assign_private_ip_addresses(options = {})
      options = options.merge(network_interface_id: @id)
      resp = @client.assign_private_ip_addresses(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   network_interface.attach({
    #     device_index: 1, # required
    #     dry_run: false,
    #     instance_id: "String", # required
    #   })
    # @param [Hash] options ({})
    # @option options [required, Integer] :device_index
    #   The index of the device for the network interface attachment.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [required, String] :instance_id
    #   The ID of the instance.
    # @return [Types::AttachNetworkInterfaceResult]
    def attach(options = {})
      options = options.merge(network_interface_id: @id)
      resp = @client.attach_network_interface(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   tag = network_interface.create_tags({
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
    #   network_interface.delete({
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
      options = options.merge(network_interface_id: @id)
      resp = @client.delete_network_interface(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   network_interface.describe_attribute({
    #     attribute: "description", # accepts description, groupSet, sourceDestCheck, attachment
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [String] :attribute
    #   The attribute of the network interface. This parameter is required.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [Types::DescribeNetworkInterfaceAttributeResult]
    def describe_attribute(options = {})
      options = options.merge(network_interface_id: @id)
      resp = @client.describe_network_interface_attribute(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   network_interface.detach({
    #     dry_run: false,
    #     force: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [Boolean] :force
    #   Specifies whether to force a detachment.
    # @return [EmptyStructure]
    def detach(options = {})
      options = options.merge(attachment_id: data[:attachment][:attachment_id])
      resp = @client.detach_network_interface(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   network_interface.modify_attribute({
    #     attachment: {
    #       attachment_id: "String",
    #       delete_on_termination: false,
    #     },
    #     description: "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #     dry_run: false,
    #     groups: ["String"],
    #     source_dest_check: {
    #       value: false,
    #     },
    #   })
    # @param [Hash] options ({})
    # @option options [Types::NetworkInterfaceAttachmentChanges] :attachment
    #   Information about the interface attachment. If modifying the 'delete
    #   on termination' attribute, you must specify the ID of the interface
    #   attachment.
    # @option options [Types::AttributeValue] :description
    #   A description for the network interface.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [Array<String>] :groups
    #   Changes the security groups for the network interface. The new set of
    #   groups you specify replaces the current set. You must specify at least
    #   one group, even if it's just the default security group in the VPC.
    #   You must specify the ID of the security group, not the name.
    # @option options [Types::AttributeBooleanValue] :source_dest_check
    #   Indicates whether source/destination checking is enabled. A value of
    #   `true` means checking is enabled, and `false` means checking is
    #   disabled. This value must be `false` for a NAT instance to perform
    #   NAT. For more information, see [NAT Instances][1] in the *Amazon
    #   Virtual Private Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_NAT_Instance.html
    # @return [EmptyStructure]
    def modify_attribute(options = {})
      options = options.merge(network_interface_id: @id)
      resp = @client.modify_network_interface_attribute(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   network_interface.reset_attribute({
    #     dry_run: false,
    #     source_dest_check: "String",
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [String] :source_dest_check
    #   The source/destination checking attribute. Resets the value to `true`.
    # @return [EmptyStructure]
    def reset_attribute(options = {})
      options = options.merge(network_interface_id: @id)
      resp = @client.reset_network_interface_attribute(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   network_interface.unassign_private_ip_addresses({
    #     private_ip_addresses: ["String"], # required
    #   })
    # @param [Hash] options ({})
    # @option options [required, Array<String>] :private_ip_addresses
    #   The secondary private IP addresses to unassign from the network
    #   interface. You can specify this option multiple times to unassign more
    #   than one IP address.
    # @return [EmptyStructure]
    def unassign_private_ip_addresses(options = {})
      options = options.merge(network_interface_id: @id)
      resp = @client.unassign_private_ip_addresses(options)
      resp.data
    end

    # @!group Associations

    # @return [NetworkInterfaceAssociation, nil]
    def association
      if data[:association][:association_id]
        NetworkInterfaceAssociation.new(
          id: data[:association][:association_id],
          data: data[:association],
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
