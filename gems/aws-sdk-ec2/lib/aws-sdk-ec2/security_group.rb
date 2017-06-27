# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
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
    end

    # @!group Read-Only Attributes

    # @return [String]
    def id
      @id
    end
    alias :group_id :id

    # A description of the security group.
    # @return [String]
    def description
      data.description
    end

    # The name of the security group.
    # @return [String]
    def group_name
      data.group_name
    end

    # One or more inbound rules associated with the security group.
    # @return [Array<Types::IpPermission>]
    def ip_permissions
      data.ip_permissions
    end

    # The AWS account ID of the owner of the security group.
    # @return [String]
    def owner_id
      data.owner_id
    end

    # \[EC2-VPC\] One or more outbound rules associated with the security
    # group.
    # @return [Array<Types::IpPermission>]
    def ip_permissions_egress
      data.ip_permissions_egress
    end

    # Any tags assigned to the security group.
    # @return [Array<Types::Tag>]
    def tags
      data.tags
    end

    # \[EC2-VPC\] The ID of the VPC for the security group.
    # @return [String]
    def vpc_id
      data.vpc_id
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
      resp = @client.describe_security_groups(group_ids: [@id])
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

    # @!group Actions

    # @example Request syntax with placeholder values
    #
    #   security_group.authorize_egress({
    #     dry_run: false,
    #     ip_permissions: [
    #       {
    #         from_port: 1,
    #         ip_protocol: "String",
    #         ip_ranges: [
    #           {
    #             cidr_ip: "String",
    #           },
    #         ],
    #         ipv_6_ranges: [
    #           {
    #             cidr_ipv_6: "String",
    #           },
    #         ],
    #         prefix_list_ids: [
    #           {
    #             prefix_list_id: "String",
    #           },
    #         ],
    #         to_port: 1,
    #         user_id_group_pairs: [
    #           {
    #             group_id: "String",
    #             group_name: "String",
    #             peering_status: "String",
    #             user_id: "String",
    #             vpc_id: "String",
    #             vpc_peering_connection_id: "String",
    #           },
    #         ],
    #       },
    #     ],
    #     cidr_ip: "String",
    #     from_port: 1,
    #     ip_protocol: "String",
    #     to_port: 1,
    #     source_security_group_name: "String",
    #     source_security_group_owner_id: "String",
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [Array<Types::IpPermission>] :ip_permissions
    #   A set of IP permissions. You can't specify a destination security
    #   group and a CIDR IP address range.
    # @option options [String] :cidr_ip
    #   The CIDR IPv4 address range. We recommend that you specify the CIDR
    #   range in a set of IP permissions instead.
    # @option options [Integer] :from_port
    #   The start of port range for the TCP and UDP protocols, or an ICMP type
    #   number. We recommend that you specify the port range in a set of IP
    #   permissions instead.
    # @option options [String] :ip_protocol
    #   The IP protocol name or number. We recommend that you specify the
    #   protocol in a set of IP permissions instead.
    # @option options [Integer] :to_port
    #   The end of port range for the TCP and UDP protocols, or an ICMP type
    #   number. We recommend that you specify the port range in a set of IP
    #   permissions instead.
    # @option options [String] :source_security_group_name
    #   The name of a destination security group. To authorize outbound access
    #   to a destination security group, we recommend that you use a set of IP
    #   permissions instead.
    # @option options [String] :source_security_group_owner_id
    #   The AWS account number for a destination security group. To authorize
    #   outbound access to a destination security group, we recommend that you
    #   use a set of IP permissions instead.
    # @return [EmptyStructure]
    def authorize_egress(options = {})
      options = options.merge(group_id: @id)
      resp = @client.authorize_security_group_egress(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   security_group.authorize_ingress({
    #     cidr_ip: "String",
    #     from_port: 1,
    #     group_name: "String",
    #     ip_permissions: [
    #       {
    #         from_port: 1,
    #         ip_protocol: "String",
    #         ip_ranges: [
    #           {
    #             cidr_ip: "String",
    #           },
    #         ],
    #         ipv_6_ranges: [
    #           {
    #             cidr_ipv_6: "String",
    #           },
    #         ],
    #         prefix_list_ids: [
    #           {
    #             prefix_list_id: "String",
    #           },
    #         ],
    #         to_port: 1,
    #         user_id_group_pairs: [
    #           {
    #             group_id: "String",
    #             group_name: "String",
    #             peering_status: "String",
    #             user_id: "String",
    #             vpc_id: "String",
    #             vpc_peering_connection_id: "String",
    #           },
    #         ],
    #       },
    #     ],
    #     ip_protocol: "String",
    #     source_security_group_name: "String",
    #     source_security_group_owner_id: "String",
    #     to_port: 1,
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [String] :cidr_ip
    #   The CIDR IPv4 address range. You can't specify this parameter when
    #   specifying a source security group.
    # @option options [Integer] :from_port
    #   The start of port range for the TCP and UDP protocols, or an
    #   ICMP/ICMPv6 type number. For the ICMP/ICMPv6 type number, use `-1` to
    #   specify all types.
    # @option options [String] :group_name
    #   \[EC2-Classic, default VPC\] The name of the security group.
    # @option options [Array<Types::IpPermission>] :ip_permissions
    #   A set of IP permissions. Can be used to specify multiple rules in a
    #   single command.
    # @option options [String] :ip_protocol
    #   The IP protocol name (`tcp`, `udp`, `icmp`) or number (see [Protocol
    #   Numbers][1]). (VPC only) Use `-1` to specify all protocols. If you
    #   specify `-1`, or a protocol number other than `tcp`, `udp`, `icmp`, or
    #   `58` (ICMPv6), traffic on all ports is allowed, regardless of any
    #   ports you specify. For `tcp`, `udp`, and `icmp`, you must specify a
    #   port range. For protocol `58` (ICMPv6), you can optionally specify a
    #   port range; if you don't, traffic for all types and codes is allowed.
    #
    #
    #
    #   [1]: http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml
    # @option options [String] :source_security_group_name
    #   \[EC2-Classic, default VPC\] The name of the source security group.
    #   You can't specify this parameter in combination with the following
    #   parameters: the CIDR IP address range, the start of the port range,
    #   the IP protocol, and the end of the port range. Creates rules that
    #   grant full ICMP, UDP, and TCP access. To create a rule with a specific
    #   IP protocol and port range, use a set of IP permissions instead. For
    #   EC2-VPC, the source security group must be in the same VPC.
    # @option options [String] :source_security_group_owner_id
    #   \[EC2-Classic\] The AWS account number for the source security group,
    #   if the source security group is in a different account. You can't
    #   specify this parameter in combination with the following parameters:
    #   the CIDR IP address range, the IP protocol, the start of the port
    #   range, and the end of the port range. Creates rules that grant full
    #   ICMP, UDP, and TCP access. To create a rule with a specific IP
    #   protocol and port range, use a set of IP permissions instead.
    # @option options [Integer] :to_port
    #   The end of port range for the TCP and UDP protocols, or an ICMP/ICMPv6
    #   code number. For the ICMP/ICMPv6 code number, use `-1` to specify all
    #   codes.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [EmptyStructure]
    def authorize_ingress(options = {})
      options = options.merge(group_id: @id)
      resp = @client.authorize_security_group_ingress(options)
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
    #   security_group.delete({
    #     group_name: "String",
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [String] :group_name
    #   \[EC2-Classic, default VPC\] The name of the security group. You can
    #   specify either the security group name or the security group ID.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [EmptyStructure]
    def delete(options = {})
      options = options.merge(group_id: @id)
      resp = @client.delete_security_group(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   security_group.revoke_egress({
    #     dry_run: false,
    #     ip_permissions: [
    #       {
    #         from_port: 1,
    #         ip_protocol: "String",
    #         ip_ranges: [
    #           {
    #             cidr_ip: "String",
    #           },
    #         ],
    #         ipv_6_ranges: [
    #           {
    #             cidr_ipv_6: "String",
    #           },
    #         ],
    #         prefix_list_ids: [
    #           {
    #             prefix_list_id: "String",
    #           },
    #         ],
    #         to_port: 1,
    #         user_id_group_pairs: [
    #           {
    #             group_id: "String",
    #             group_name: "String",
    #             peering_status: "String",
    #             user_id: "String",
    #             vpc_id: "String",
    #             vpc_peering_connection_id: "String",
    #           },
    #         ],
    #       },
    #     ],
    #     cidr_ip: "String",
    #     from_port: 1,
    #     ip_protocol: "String",
    #     to_port: 1,
    #     source_security_group_name: "String",
    #     source_security_group_owner_id: "String",
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [Array<Types::IpPermission>] :ip_permissions
    #   A set of IP permissions. You can't specify a destination security
    #   group and a CIDR IP address range.
    # @option options [String] :cidr_ip
    #   The CIDR IP address range. We recommend that you specify the CIDR
    #   range in a set of IP permissions instead.
    # @option options [Integer] :from_port
    #   The start of port range for the TCP and UDP protocols, or an ICMP type
    #   number. We recommend that you specify the port range in a set of IP
    #   permissions instead.
    # @option options [String] :ip_protocol
    #   The IP protocol name or number. We recommend that you specify the
    #   protocol in a set of IP permissions instead.
    # @option options [Integer] :to_port
    #   The end of port range for the TCP and UDP protocols, or an ICMP type
    #   number. We recommend that you specify the port range in a set of IP
    #   permissions instead.
    # @option options [String] :source_security_group_name
    #   The name of a destination security group. To revoke outbound access to
    #   a destination security group, we recommend that you use a set of IP
    #   permissions instead.
    # @option options [String] :source_security_group_owner_id
    #   The AWS account number for a destination security group. To revoke
    #   outbound access to a destination security group, we recommend that you
    #   use a set of IP permissions instead.
    # @return [EmptyStructure]
    def revoke_egress(options = {})
      options = options.merge(group_id: @id)
      resp = @client.revoke_security_group_egress(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   security_group.revoke_ingress({
    #     cidr_ip: "String",
    #     from_port: 1,
    #     group_name: "String",
    #     ip_permissions: [
    #       {
    #         from_port: 1,
    #         ip_protocol: "String",
    #         ip_ranges: [
    #           {
    #             cidr_ip: "String",
    #           },
    #         ],
    #         ipv_6_ranges: [
    #           {
    #             cidr_ipv_6: "String",
    #           },
    #         ],
    #         prefix_list_ids: [
    #           {
    #             prefix_list_id: "String",
    #           },
    #         ],
    #         to_port: 1,
    #         user_id_group_pairs: [
    #           {
    #             group_id: "String",
    #             group_name: "String",
    #             peering_status: "String",
    #             user_id: "String",
    #             vpc_id: "String",
    #             vpc_peering_connection_id: "String",
    #           },
    #         ],
    #       },
    #     ],
    #     ip_protocol: "String",
    #     source_security_group_name: "String",
    #     source_security_group_owner_id: "String",
    #     to_port: 1,
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [String] :cidr_ip
    #   The CIDR IP address range. You can't specify this parameter when
    #   specifying a source security group.
    # @option options [Integer] :from_port
    #   The start of port range for the TCP and UDP protocols, or an ICMP type
    #   number. For the ICMP type number, use `-1` to specify all ICMP types.
    # @option options [String] :group_name
    #   \[EC2-Classic, default VPC\] The name of the security group.
    # @option options [Array<Types::IpPermission>] :ip_permissions
    #   A set of IP permissions. You can't specify a source security group
    #   and a CIDR IP address range.
    # @option options [String] :ip_protocol
    #   The IP protocol name (`tcp`, `udp`, `icmp`) or number (see [Protocol
    #   Numbers][1]). Use `-1` to specify all.
    #
    #
    #
    #   [1]: http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml
    # @option options [String] :source_security_group_name
    #   \[EC2-Classic, default VPC\] The name of the source security group.
    #   You can't specify this parameter in combination with the following
    #   parameters: the CIDR IP address range, the start of the port range,
    #   the IP protocol, and the end of the port range. For EC2-VPC, the
    #   source security group must be in the same VPC. To revoke a specific
    #   rule for an IP protocol and port range, use a set of IP permissions
    #   instead.
    # @option options [String] :source_security_group_owner_id
    #   \[EC2-Classic\] The AWS account ID of the source security group, if
    #   the source security group is in a different account. You can't
    #   specify this parameter in combination with the following parameters:
    #   the CIDR IP address range, the IP protocol, the start of the port
    #   range, and the end of the port range. To revoke a specific rule for an
    #   IP protocol and port range, use a set of IP permissions instead.
    # @option options [Integer] :to_port
    #   The end of port range for the TCP and UDP protocols, or an ICMP code
    #   number. For the ICMP code number, use `-1` to specify all ICMP codes
    #   for the ICMP type.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [EmptyStructure]
    def revoke_ingress(options = {})
      options = options.merge(group_id: @id)
      resp = @client.revoke_security_group_ingress(options)
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
