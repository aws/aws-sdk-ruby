# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
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
      @waiter_block_warned = false
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

    # The type of network interface.
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

    # The Amazon Resource Name (ARN) of the Outpost.
    # @return [String]
    def outpost_arn
      data[:outpost_arn]
    end

    # The Amazon Web Services account ID of the owner of the network
    # interface.
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

    # The IPv4 prefixes that are assigned to the network interface.
    # @return [Array<Types::Ipv4PrefixSpecification>]
    def ipv_4_prefixes
      data[:ipv_4_prefixes]
    end

    # The IPv6 prefixes that are assigned to the network interface.
    # @return [Array<Types::Ipv6PrefixSpecification>]
    def ipv_6_prefixes
      data[:ipv_6_prefixes]
    end

    # The alias or Amazon Web Services account ID of the principal or
    # service that created the network interface.
    # @return [String]
    def requester_id
      data[:requester_id]
    end

    # Indicates whether the network interface is being managed by Amazon Web
    # Services.
    # @return [Boolean]
    def requester_managed
      data[:requester_managed]
    end

    # Indicates whether source/destination checking is enabled.
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

    # Indicates whether a network interface with an IPv6 address is
    # unreachable from the public internet. If the value is `true`, inbound
    # traffic from the internet is dropped and you cannot assign an elastic
    # IP address to the network interface. The network interface is
    # reachable from peered VPCs and resources connected through a transit
    # gateway, including on-premises networks.
    # @return [Boolean]
    def deny_all_igw_traffic
      data[:deny_all_igw_traffic]
    end

    # Indicates whether this is an IPv6 only network interface.
    # @return [Boolean]
    def ipv_6_native
      data[:ipv_6_native]
    end

    # The IPv6 globally unique address associated with the network
    # interface.
    # @return [String]
    def ipv_6_address
      data[:ipv_6_address]
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
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.describe_network_interfaces(network_interface_ids: [@id])
      end
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
      Aws::Plugins::UserAgent.feature('resource') do
        Aws::Waiters::Waiter.new(options).wait({})
      end
    end

    # @!group Actions

    # @example Request syntax with placeholder values
    #
    #   network_interface.assign_private_ip_addresses({
    #     allow_reassignment: false,
    #     private_ip_addresses: ["String"],
    #     secondary_private_ip_address_count: 1,
    #     ipv_4_prefixes: ["String"],
    #     ipv_4_prefix_count: 1,
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :allow_reassignment
    #   Indicates whether to allow an IP address that is already assigned to
    #   another network interface or instance to be reassigned to the
    #   specified network interface.
    # @option options [Array<String>] :private_ip_addresses
    #   The IP addresses to be assigned as a secondary private IP address to
    #   the network interface. You can't specify this parameter when also
    #   specifying a number of secondary IP addresses.
    #
    #   If you don't specify an IP address, Amazon EC2 automatically selects
    #   an IP address within the subnet range.
    # @option options [Integer] :secondary_private_ip_address_count
    #   The number of secondary IP addresses to assign to the network
    #   interface. You can't specify this parameter when also specifying
    #   private IP addresses.
    # @option options [Array<String>] :ipv_4_prefixes
    #   One or more IPv4 prefixes assigned to the network interface. You
    #   cannot use this option if you use the `Ipv4PrefixCount` option.
    # @option options [Integer] :ipv_4_prefix_count
    #   The number of IPv4 prefixes that Amazon Web Services automatically
    #   assigns to the network interface. You cannot use this option if you
    #   use the `Ipv4 Prefixes` option.
    # @return [Types::AssignPrivateIpAddressesResult]
    def assign_private_ip_addresses(options = {})
      options = options.merge(network_interface_id: @id)
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.assign_private_ip_addresses(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   network_interface.attach({
    #     device_index: 1, # required
    #     dry_run: false,
    #     instance_id: "InstanceId", # required
    #     network_card_index: 1,
    #     ena_srd_specification: {
    #       ena_srd_enabled: false,
    #       ena_srd_udp_specification: {
    #         ena_srd_udp_enabled: false,
    #       },
    #     },
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
    # @option options [Integer] :network_card_index
    #   The index of the network card. Some instance types support multiple
    #   network cards. The primary network interface must be assigned to
    #   network card index 0. The default is network card index 0.
    # @option options [Types::EnaSrdSpecification] :ena_srd_specification
    #   Configures ENA Express for the network interface that this action
    #   attaches to the instance.
    # @return [Types::AttachNetworkInterfaceResult]
    def attach(options = {})
      options = options.merge(network_interface_id: @id)
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.attach_network_interface(options)
      end
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
    #   The tags. The `value` parameter is required, but if you don't want
    #   the tag to have a value, specify the parameter with no value, and we
    #   set the value to an empty string.
    # @return [Tag::Collection]
    def create_tags(options = {})
      batch = []
      options = Aws::Util.deep_merge(options, resources: [@id])
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.create_tags(options)
      end
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
    #   tag = network_interface.delete_tags({
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
    #   specified resources. We do not delete Amazon Web Services-generated
    #   tags (tags that have the `aws:` prefix).
    #
    #   Constraints: Up to 1000 tags.
    # @return [Tag::Collection]
    def delete_tags(options = {})
      batch = []
      options = Aws::Util.deep_merge(options, resources: [@id])
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.delete_tags(options)
      end
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
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.delete_network_interface(options)
      end
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
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.describe_network_interface_attribute(options)
      end
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
    #
    #   <note markdown="1"> * Use the `Force` parameter only as a last resort to detach a network
    #     interface from a failed instance.
    #
    #   * If you use the `Force` parameter to detach a network interface, you
    #     might not be able to attach a different network interface to the
    #     same index on the instance without first stopping and starting the
    #     instance.
    #
    #   * If you force the detachment of a network interface, the [instance
    #     metadata][1] might not get updated. This means that the attributes
    #     associated with the detached network interface might still be
    #     visible. The instance metadata will get updated when you stop and
    #     start the instance.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html
    # @return [EmptyStructure]
    def detach(options = {})
      options = options.merge(attachment_id: data[:attachment][:attachment_id])
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.detach_network_interface(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   network_interface.modify_attribute({
    #     attachment: {
    #       attachment_id: "NetworkInterfaceAttachmentId",
    #       delete_on_termination: false,
    #     },
    #     description: "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #     dry_run: false,
    #     groups: ["SecurityGroupId"],
    #     source_dest_check: {
    #       value: false,
    #     },
    #     ena_srd_specification: {
    #       ena_srd_enabled: false,
    #       ena_srd_udp_specification: {
    #         ena_srd_udp_enabled: false,
    #       },
    #     },
    #   })
    # @param [Hash] options ({})
    # @option options [Types::NetworkInterfaceAttachmentChanges] :attachment
    #   Information about the interface attachment. If modifying the `delete
    #   on termination` attribute, you must specify the ID of the interface
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
    #   Enable or disable source/destination checks, which ensure that the
    #   instance is either the source or the destination of any traffic that
    #   it receives. If the value is `true`, source/destination checks are
    #   enabled; otherwise, they are disabled. The default value is `true`.
    #   You must disable source/destination checks if the instance runs
    #   services such as network address translation, routing, or firewalls.
    # @option options [Types::EnaSrdSpecification] :ena_srd_specification
    #   Updates the ENA Express configuration for the network interface that’s
    #   attached to the instance.
    # @return [EmptyStructure]
    def modify_attribute(options = {})
      options = options.merge(network_interface_id: @id)
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.modify_network_interface_attribute(options)
      end
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
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.reset_network_interface_attribute(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   network_interface.unassign_private_ip_addresses({
    #     private_ip_addresses: ["String"],
    #     ipv_4_prefixes: ["String"],
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :private_ip_addresses
    #   The secondary private IP addresses to unassign from the network
    #   interface. You can specify this option multiple times to unassign more
    #   than one IP address.
    # @option options [Array<String>] :ipv_4_prefixes
    #   The IPv4 prefixes to unassign from the network interface.
    # @return [EmptyStructure]
    def unassign_private_ip_addresses(options = {})
      options = options.merge(network_interface_id: @id)
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.unassign_private_ip_addresses(options)
      end
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
