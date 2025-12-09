# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EC2

  class SecurityGroup

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
    alias :group_id :id

    # The outbound rules associated with the security group.
    # @return [Array<Types::IpPermission>]
    def ip_permissions_egress
      data[:ip_permissions_egress]
    end

    # Any tags assigned to the security group.
    # @return [Array<Types::Tag>]
    def tags
      data[:tags]
    end

    # The ID of the VPC for the security group.
    # @return [String]
    def vpc_id
      data[:vpc_id]
    end

    # The ARN of the security group.
    # @return [String]
    def security_group_arn
      data[:security_group_arn]
    end

    # The Amazon Web Services account ID of the owner of the security group.
    # @return [String]
    def owner_id
      data[:owner_id]
    end

    # The name of the security group.
    # @return [String]
    def group_name
      data[:group_name]
    end

    # A description of the security group.
    # @return [String]
    def description
      data[:description]
    end

    # The inbound rules associated with the security group.
    # @return [Array<Types::IpPermission>]
    def ip_permissions
      data[:ip_permissions]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {SecurityGroup}.
    # Returns `self` making it possible to chain methods.
    #
    #     security_group.reload.data
    #
    # @return [self]
    def load
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.describe_security_groups(group_ids: [@id])
      end
      @data = resp.security_groups[0]
      self
    end
    alias :reload :load

    # @return [Types::SecurityGroup]
    #   Returns the data for this {SecurityGroup}. Calls
    #   {Client#describe_security_groups} if {#data_loaded?} is `false`.
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
      Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        Aws::Waiters::Waiter.new(options).wait({})
      end
    end

    # @!group Actions

    # @example Request syntax with placeholder values
    #
    #   security_group.authorize_egress({
    #     tag_specifications: [
    #       {
    #         resource_type: "capacity-reservation", # accepts capacity-reservation, client-vpn-endpoint, customer-gateway, carrier-gateway, coip-pool, declarative-policies-report, dedicated-host, dhcp-options, egress-only-internet-gateway, elastic-ip, elastic-gpu, export-image-task, export-instance-task, fleet, fpga-image, host-reservation, image, image-usage-report, import-image-task, import-snapshot-task, instance, instance-event-window, internet-gateway, ipam, ipam-pool, ipam-scope, ipv4pool-ec2, ipv6pool-ec2, key-pair, launch-template, local-gateway, local-gateway-route-table, local-gateway-virtual-interface, local-gateway-virtual-interface-group, local-gateway-route-table-vpc-association, local-gateway-route-table-virtual-interface-group-association, natgateway, network-acl, network-interface, network-insights-analysis, network-insights-path, network-insights-access-scope, network-insights-access-scope-analysis, outpost-lag, placement-group, prefix-list, replace-root-volume-task, reserved-instances, route-table, security-group, security-group-rule, service-link-virtual-interface, snapshot, spot-fleet-request, spot-instances-request, subnet, subnet-cidr-reservation, traffic-mirror-filter, traffic-mirror-session, traffic-mirror-target, transit-gateway, transit-gateway-attachment, transit-gateway-connect-peer, transit-gateway-multicast-domain, transit-gateway-policy-table, transit-gateway-metering-policy, transit-gateway-route-table, transit-gateway-route-table-announcement, volume, vpc, vpc-endpoint, vpc-endpoint-connection, vpc-endpoint-service, vpc-endpoint-service-permission, vpc-peering-connection, vpn-connection, vpn-gateway, vpc-flow-log, capacity-reservation-fleet, traffic-mirror-filter-rule, vpc-endpoint-connection-device-type, verified-access-instance, verified-access-group, verified-access-endpoint, verified-access-policy, verified-access-trust-provider, vpn-connection-device-type, vpc-block-public-access-exclusion, vpc-encryption-control, route-server, route-server-endpoint, route-server-peer, ipam-resource-discovery, ipam-resource-discovery-association, instance-connect-endpoint, verified-access-endpoint-target, ipam-external-resource-verification-token, capacity-block, mac-modification-task, ipam-prefix-list-resolver, ipam-policy, ipam-prefix-list-resolver-target, capacity-manager-data-export, vpn-concentrator
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       },
    #     ],
    #     dry_run: false,
    #     source_security_group_name: "String",
    #     source_security_group_owner_id: "String",
    #     ip_protocol: "String",
    #     from_port: 1,
    #     to_port: 1,
    #     cidr_ip: "String",
    #     ip_permissions: [
    #       {
    #         ip_protocol: "String",
    #         from_port: 1,
    #         to_port: 1,
    #         user_id_group_pairs: [
    #           {
    #             description: "String",
    #             user_id: "String",
    #             group_name: "String",
    #             group_id: "String",
    #             vpc_id: "String",
    #             vpc_peering_connection_id: "String",
    #             peering_status: "String",
    #           },
    #         ],
    #         ip_ranges: [
    #           {
    #             description: "String",
    #             cidr_ip: "String",
    #           },
    #         ],
    #         ipv_6_ranges: [
    #           {
    #             description: "String",
    #             cidr_ipv_6: "String",
    #           },
    #         ],
    #         prefix_list_ids: [
    #           {
    #             description: "String",
    #             prefix_list_id: "String",
    #           },
    #         ],
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [Array<Types::TagSpecification>] :tag_specifications
    #   The tags applied to the security group rule.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [String] :source_security_group_name
    #   Not supported. Use IP permissions instead.
    # @option options [String] :source_security_group_owner_id
    #   Not supported. Use IP permissions instead.
    # @option options [String] :ip_protocol
    #   Not supported. Use IP permissions instead.
    # @option options [Integer] :from_port
    #   Not supported. Use IP permissions instead.
    # @option options [Integer] :to_port
    #   Not supported. Use IP permissions instead.
    # @option options [String] :cidr_ip
    #   Not supported. Use IP permissions instead.
    # @option options [Array<Types::IpPermission>] :ip_permissions
    #   The permissions for the security group rules.
    # @return [Types::AuthorizeSecurityGroupEgressResult]
    def authorize_egress(options = {})
      options = options.merge(group_id: @id)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.authorize_security_group_egress(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   security_group.authorize_ingress({
    #     cidr_ip: "String",
    #     from_port: 1,
    #     group_name: "SecurityGroupName",
    #     ip_permissions: [
    #       {
    #         ip_protocol: "String",
    #         from_port: 1,
    #         to_port: 1,
    #         user_id_group_pairs: [
    #           {
    #             description: "String",
    #             user_id: "String",
    #             group_name: "String",
    #             group_id: "String",
    #             vpc_id: "String",
    #             vpc_peering_connection_id: "String",
    #             peering_status: "String",
    #           },
    #         ],
    #         ip_ranges: [
    #           {
    #             description: "String",
    #             cidr_ip: "String",
    #           },
    #         ],
    #         ipv_6_ranges: [
    #           {
    #             description: "String",
    #             cidr_ipv_6: "String",
    #           },
    #         ],
    #         prefix_list_ids: [
    #           {
    #             description: "String",
    #             prefix_list_id: "String",
    #           },
    #         ],
    #       },
    #     ],
    #     ip_protocol: "String",
    #     source_security_group_name: "String",
    #     source_security_group_owner_id: "String",
    #     to_port: 1,
    #     tag_specifications: [
    #       {
    #         resource_type: "capacity-reservation", # accepts capacity-reservation, client-vpn-endpoint, customer-gateway, carrier-gateway, coip-pool, declarative-policies-report, dedicated-host, dhcp-options, egress-only-internet-gateway, elastic-ip, elastic-gpu, export-image-task, export-instance-task, fleet, fpga-image, host-reservation, image, image-usage-report, import-image-task, import-snapshot-task, instance, instance-event-window, internet-gateway, ipam, ipam-pool, ipam-scope, ipv4pool-ec2, ipv6pool-ec2, key-pair, launch-template, local-gateway, local-gateway-route-table, local-gateway-virtual-interface, local-gateway-virtual-interface-group, local-gateway-route-table-vpc-association, local-gateway-route-table-virtual-interface-group-association, natgateway, network-acl, network-interface, network-insights-analysis, network-insights-path, network-insights-access-scope, network-insights-access-scope-analysis, outpost-lag, placement-group, prefix-list, replace-root-volume-task, reserved-instances, route-table, security-group, security-group-rule, service-link-virtual-interface, snapshot, spot-fleet-request, spot-instances-request, subnet, subnet-cidr-reservation, traffic-mirror-filter, traffic-mirror-session, traffic-mirror-target, transit-gateway, transit-gateway-attachment, transit-gateway-connect-peer, transit-gateway-multicast-domain, transit-gateway-policy-table, transit-gateway-metering-policy, transit-gateway-route-table, transit-gateway-route-table-announcement, volume, vpc, vpc-endpoint, vpc-endpoint-connection, vpc-endpoint-service, vpc-endpoint-service-permission, vpc-peering-connection, vpn-connection, vpn-gateway, vpc-flow-log, capacity-reservation-fleet, traffic-mirror-filter-rule, vpc-endpoint-connection-device-type, verified-access-instance, verified-access-group, verified-access-endpoint, verified-access-policy, verified-access-trust-provider, vpn-connection-device-type, vpc-block-public-access-exclusion, vpc-encryption-control, route-server, route-server-endpoint, route-server-peer, ipam-resource-discovery, ipam-resource-discovery-association, instance-connect-endpoint, verified-access-endpoint-target, ipam-external-resource-verification-token, capacity-block, mac-modification-task, ipam-prefix-list-resolver, ipam-policy, ipam-prefix-list-resolver-target, capacity-manager-data-export, vpn-concentrator
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       },
    #     ],
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [String] :cidr_ip
    #   The IPv4 address range, in CIDR format.
    #
    #   <note markdown="1"> Amazon Web Services [canonicalizes][1] IPv4 and IPv6 CIDRs. For
    #   example, if you specify 100.68.0.18/18 for the CIDR block, Amazon Web
    #   Services canonicalizes the CIDR block to 100.68.0.0/18. Any subsequent
    #   DescribeSecurityGroups and DescribeSecurityGroupRules calls will
    #   return the canonicalized form of the CIDR block. Additionally, if you
    #   attempt to add another rule with the non-canonical form of the CIDR
    #   (such as 100.68.0.18/18) and there is already a rule for the
    #   canonicalized form of the CIDR block (such as 100.68.0.0/18), the API
    #   throws an duplicate rule error.
    #
    #    </note>
    #
    #   To specify an IPv6 address range, use IP permissions instead.
    #
    #   To specify multiple rules and descriptions for the rules, use IP
    #   permissions instead.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Canonicalization
    # @option options [Integer] :from_port
    #   If the protocol is TCP or UDP, this is the start of the port range. If
    #   the protocol is ICMP, this is the ICMP type or -1 (all ICMP types).
    #
    #   To specify multiple rules and descriptions for the rules, use IP
    #   permissions instead.
    # @option options [String] :group_name
    #   \[Default VPC\] The name of the security group. For security groups
    #   for a default VPC you can specify either the ID or the name of the
    #   security group. For security groups for a nondefault VPC, you must
    #   specify the ID of the security group.
    # @option options [Array<Types::IpPermission>] :ip_permissions
    #   The permissions for the security group rules.
    # @option options [String] :ip_protocol
    #   The IP protocol name (`tcp`, `udp`, `icmp`) or number (see [Protocol
    #   Numbers][1]). To specify all protocols, use `-1`.
    #
    #   To specify `icmpv6`, use IP permissions instead.
    #
    #   If you specify a protocol other than one of the supported values,
    #   traffic is allowed on all ports, regardless of any ports that you
    #   specify.
    #
    #   To specify multiple rules and descriptions for the rules, use IP
    #   permissions instead.
    #
    #
    #
    #   [1]: http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml
    # @option options [String] :source_security_group_name
    #   \[Default VPC\] The name of the source security group.
    #
    #   The rule grants full ICMP, UDP, and TCP access. To create a rule with
    #   a specific protocol and port range, specify a set of IP permissions
    #   instead.
    # @option options [String] :source_security_group_owner_id
    #   The Amazon Web Services account ID for the source security group, if
    #   the source security group is in a different account.
    #
    #   The rule grants full ICMP, UDP, and TCP access. To create a rule with
    #   a specific protocol and port range, use IP permissions instead.
    # @option options [Integer] :to_port
    #   If the protocol is TCP or UDP, this is the end of the port range. If
    #   the protocol is ICMP, this is the ICMP code or -1 (all ICMP codes). If
    #   the start port is -1 (all ICMP types), then the end port must be -1
    #   (all ICMP codes).
    #
    #   To specify multiple rules and descriptions for the rules, use IP
    #   permissions instead.
    # @option options [Array<Types::TagSpecification>] :tag_specifications
    #   The tags applied to the security group rule.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [Types::AuthorizeSecurityGroupIngressResult]
    def authorize_ingress(options = {})
      options = options.merge(group_id: @id)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.authorize_security_group_ingress(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   tag = security_group.create_tags({
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
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
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
    #   tag = security_group.delete_tags({
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
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
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
    #   security_group.delete({
    #     group_name: "SecurityGroupName",
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [String] :group_name
    #   \[Default VPC\] The name of the security group. You can specify either
    #   the security group name or the security group ID. For security groups
    #   in a nondefault VPC, you must specify the security group ID.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [Types::DeleteSecurityGroupResult]
    def delete(options = {})
      options = options.merge(group_id: @id)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.delete_security_group(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   security_group.revoke_egress({
    #     security_group_rule_ids: ["String"],
    #     dry_run: false,
    #     source_security_group_name: "String",
    #     source_security_group_owner_id: "String",
    #     ip_protocol: "String",
    #     from_port: 1,
    #     to_port: 1,
    #     cidr_ip: "String",
    #     ip_permissions: [
    #       {
    #         ip_protocol: "String",
    #         from_port: 1,
    #         to_port: 1,
    #         user_id_group_pairs: [
    #           {
    #             description: "String",
    #             user_id: "String",
    #             group_name: "String",
    #             group_id: "String",
    #             vpc_id: "String",
    #             vpc_peering_connection_id: "String",
    #             peering_status: "String",
    #           },
    #         ],
    #         ip_ranges: [
    #           {
    #             description: "String",
    #             cidr_ip: "String",
    #           },
    #         ],
    #         ipv_6_ranges: [
    #           {
    #             description: "String",
    #             cidr_ipv_6: "String",
    #           },
    #         ],
    #         prefix_list_ids: [
    #           {
    #             description: "String",
    #             prefix_list_id: "String",
    #           },
    #         ],
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :security_group_rule_ids
    #   The IDs of the security group rules.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [String] :source_security_group_name
    #   Not supported. Use a set of IP permissions to specify a destination
    #   security group.
    # @option options [String] :source_security_group_owner_id
    #   Not supported. Use a set of IP permissions to specify a destination
    #   security group.
    # @option options [String] :ip_protocol
    #   Not supported. Use a set of IP permissions to specify the protocol
    #   name or number.
    # @option options [Integer] :from_port
    #   Not supported. Use a set of IP permissions to specify the port.
    # @option options [Integer] :to_port
    #   Not supported. Use a set of IP permissions to specify the port.
    # @option options [String] :cidr_ip
    #   Not supported. Use a set of IP permissions to specify the CIDR.
    # @option options [Array<Types::IpPermission>] :ip_permissions
    #   The sets of IP permissions. You can't specify a destination security
    #   group and a CIDR IP address range in the same set of permissions.
    # @return [Types::RevokeSecurityGroupEgressResult]
    def revoke_egress(options = {})
      options = options.merge(group_id: @id)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.revoke_security_group_egress(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   security_group.revoke_ingress({
    #     cidr_ip: "String",
    #     from_port: 1,
    #     group_name: "SecurityGroupName",
    #     ip_permissions: [
    #       {
    #         ip_protocol: "String",
    #         from_port: 1,
    #         to_port: 1,
    #         user_id_group_pairs: [
    #           {
    #             description: "String",
    #             user_id: "String",
    #             group_name: "String",
    #             group_id: "String",
    #             vpc_id: "String",
    #             vpc_peering_connection_id: "String",
    #             peering_status: "String",
    #           },
    #         ],
    #         ip_ranges: [
    #           {
    #             description: "String",
    #             cidr_ip: "String",
    #           },
    #         ],
    #         ipv_6_ranges: [
    #           {
    #             description: "String",
    #             cidr_ipv_6: "String",
    #           },
    #         ],
    #         prefix_list_ids: [
    #           {
    #             description: "String",
    #             prefix_list_id: "String",
    #           },
    #         ],
    #       },
    #     ],
    #     ip_protocol: "String",
    #     source_security_group_name: "String",
    #     source_security_group_owner_id: "String",
    #     to_port: 1,
    #     security_group_rule_ids: ["String"],
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [String] :cidr_ip
    #   The CIDR IP address range. You can't specify this parameter when
    #   specifying a source security group.
    # @option options [Integer] :from_port
    #   If the protocol is TCP or UDP, this is the start of the port range. If
    #   the protocol is ICMP, this is the ICMP type or -1 (all ICMP types).
    # @option options [String] :group_name
    #   \[Default VPC\] The name of the security group. You must specify
    #   either the security group ID or the security group name in the
    #   request. For security groups in a nondefault VPC, you must specify the
    #   security group ID.
    # @option options [Array<Types::IpPermission>] :ip_permissions
    #   The sets of IP permissions. You can't specify a source security group
    #   and a CIDR IP address range in the same set of permissions.
    # @option options [String] :ip_protocol
    #   The IP protocol name (`tcp`, `udp`, `icmp`) or number (see [Protocol
    #   Numbers][1]). Use `-1` to specify all.
    #
    #
    #
    #   [1]: http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml
    # @option options [String] :source_security_group_name
    #   \[Default VPC\] The name of the source security group. You can't
    #   specify this parameter in combination with the following parameters:
    #   the CIDR IP address range, the start of the port range, the IP
    #   protocol, and the end of the port range. The source security group
    #   must be in the same VPC. To revoke a specific rule for an IP protocol
    #   and port range, use a set of IP permissions instead.
    # @option options [String] :source_security_group_owner_id
    #   Not supported.
    # @option options [Integer] :to_port
    #   If the protocol is TCP or UDP, this is the end of the port range. If
    #   the protocol is ICMP, this is the ICMP code or -1 (all ICMP codes).
    # @option options [Array<String>] :security_group_rule_ids
    #   The IDs of the security group rules.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [Types::RevokeSecurityGroupIngressResult]
    def revoke_ingress(options = {})
      options = options.merge(group_id: @id)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.revoke_security_group_ingress(options)
      end
      resp.data
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
