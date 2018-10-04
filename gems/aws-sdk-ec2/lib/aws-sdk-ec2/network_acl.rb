# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EC2
  class NetworkAcl

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
    alias :network_acl_id :id

    # Any associations between the network ACL and one or more subnets
    # @return [Array<Types::NetworkAclAssociation>]
    def associations
      data[:associations]
    end

    # One or more entries (rules) in the network ACL.
    # @return [Array<Types::NetworkAclEntry>]
    def entries
      data[:entries]
    end

    # Indicates whether this is the default network ACL for the VPC.
    # @return [Boolean]
    def is_default
      data[:is_default]
    end

    # Any tags assigned to the network ACL.
    # @return [Array<Types::Tag>]
    def tags
      data[:tags]
    end

    # The ID of the VPC for the network ACL.
    # @return [String]
    def vpc_id
      data[:vpc_id]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {NetworkAcl}.
    # Returns `self` making it possible to chain methods.
    #
    #     network_acl.reload.data
    #
    # @return [self]
    def load
      resp = @client.describe_network_acls(network_acl_ids: [@id])
      @data = resp.network_acls[0]
      self
    end
    alias :reload :load

    # @return [Types::NetworkAcl]
    #   Returns the data for this {NetworkAcl}. Calls
    #   {Client#describe_network_acls} if {#data_loaded?} is `false`.
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
    #   network_acl.create_entry({
    #     cidr_block: "String",
    #     dry_run: false,
    #     egress: false, # required
    #     icmp_type_code: {
    #       code: 1,
    #       type: 1,
    #     },
    #     ipv_6_cidr_block: "String",
    #     port_range: {
    #       from: 1,
    #       to: 1,
    #     },
    #     protocol: "String", # required
    #     rule_action: "allow", # required, accepts allow, deny
    #     rule_number: 1, # required
    #   })
    # @param [Hash] options ({})
    # @option options [String] :cidr_block
    #   The IPv4 network range to allow or deny, in CIDR notation (for example
    #   `172.16.0.0/24`).
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [required, Boolean] :egress
    #   Indicates whether this is an egress rule (rule is applied to traffic
    #   leaving the subnet).
    # @option options [Types::IcmpTypeCode] :icmp_type_code
    #   ICMP protocol: The ICMP or ICMPv6 type and code. Required if
    #   specifying the ICMP protocol, or protocol 58 (ICMPv6) with an IPv6
    #   CIDR block.
    # @option options [String] :ipv_6_cidr_block
    #   The IPv6 network range to allow or deny, in CIDR notation (for example
    #   `2001:db8:1234:1a00::/64`).
    # @option options [Types::PortRange] :port_range
    #   TCP or UDP protocols: The range of ports the rule applies to.
    # @option options [required, String] :protocol
    #   The protocol. A value of `-1` or `all` means all protocols. If you
    #   specify `all`, `-1`, or a protocol number other than `6` (tcp), `17`
    #   (udp), or `1` (icmp), traffic on all ports is allowed, regardless of
    #   any ports or ICMP types or codes that you specify. If you specify
    #   protocol `58` (ICMPv6) and specify an IPv4 CIDR block, traffic for all
    #   ICMP types and codes allowed, regardless of any that you specify. If
    #   you specify protocol `58` (ICMPv6) and specify an IPv6 CIDR block, you
    #   must specify an ICMP type and code.
    # @option options [required, String] :rule_action
    #   Indicates whether to allow or deny the traffic that matches the rule.
    # @option options [required, Integer] :rule_number
    #   The rule number for the entry (for example, 100). ACL entries are
    #   processed in ascending order by rule number.
    #
    #   Constraints: Positive integer from 1 to 32766. The range 32767 to
    #   65535 is reserved for internal use.
    # @return [EmptyStructure]
    def create_entry(options = {})
      options = options.merge(network_acl_id: @id)
      resp = @client.create_network_acl_entry(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   tag = network_acl.create_tags({
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
    #   network_acl.delete({
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
      options = options.merge(network_acl_id: @id)
      resp = @client.delete_network_acl(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   network_acl.delete_entry({
    #     dry_run: false,
    #     egress: false, # required
    #     rule_number: 1, # required
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [required, Boolean] :egress
    #   Indicates whether the rule is an egress rule.
    # @option options [required, Integer] :rule_number
    #   The rule number of the entry to delete.
    # @return [EmptyStructure]
    def delete_entry(options = {})
      options = options.merge(network_acl_id: @id)
      resp = @client.delete_network_acl_entry(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   network_acl.replace_association({
    #     association_id: "String", # required
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :association_id
    #   The ID of the current association between the original network ACL and
    #   the subnet.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [Types::ReplaceNetworkAclAssociationResult]
    def replace_association(options = {})
      options = options.merge(network_acl_id: @id)
      resp = @client.replace_network_acl_association(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   network_acl.replace_entry({
    #     cidr_block: "String",
    #     dry_run: false,
    #     egress: false, # required
    #     icmp_type_code: {
    #       code: 1,
    #       type: 1,
    #     },
    #     ipv_6_cidr_block: "String",
    #     port_range: {
    #       from: 1,
    #       to: 1,
    #     },
    #     protocol: "String", # required
    #     rule_action: "allow", # required, accepts allow, deny
    #     rule_number: 1, # required
    #   })
    # @param [Hash] options ({})
    # @option options [String] :cidr_block
    #   The IPv4 network range to allow or deny, in CIDR notation (for example
    #   `172.16.0.0/24`).
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [required, Boolean] :egress
    #   Indicates whether to replace the egress rule.
    #
    #   Default: If no value is specified, we replace the ingress rule.
    # @option options [Types::IcmpTypeCode] :icmp_type_code
    #   ICMP protocol: The ICMP or ICMPv6 type and code. Required if
    #   specifying the ICMP (1) protocol, or protocol 58 (ICMPv6) with an IPv6
    #   CIDR block.
    # @option options [String] :ipv_6_cidr_block
    #   The IPv6 network range to allow or deny, in CIDR notation (for example
    #   `2001:bd8:1234:1a00::/64`).
    # @option options [Types::PortRange] :port_range
    #   TCP or UDP protocols: The range of ports the rule applies to. Required
    #   if specifying TCP (6) or UDP (17) for the protocol.
    # @option options [required, String] :protocol
    #   The IP protocol. You can specify `all` or `-1` to mean all protocols.
    #   If you specify `all`, `-1`, or a protocol number other than `tcp`,
    #   `udp`, or `icmp`, traffic on all ports is allowed, regardless of any
    #   ports or ICMP types or codes you that specify. If you specify protocol
    #   `58` (ICMPv6) and specify an IPv4 CIDR block, traffic for all ICMP
    #   types and codes allowed, regardless of any that you specify. If you
    #   specify protocol `58` (ICMPv6) and specify an IPv6 CIDR block, you
    #   must specify an ICMP type and code.
    # @option options [required, String] :rule_action
    #   Indicates whether to allow or deny the traffic that matches the rule.
    # @option options [required, Integer] :rule_number
    #   The rule number of the entry to replace.
    # @return [EmptyStructure]
    def replace_entry(options = {})
      options = options.merge(network_acl_id: @id)
      resp = @client.replace_network_acl_entry(options)
      resp.data
    end

    # @!group Associations

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
