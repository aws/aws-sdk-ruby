# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws
  module EC2
    class Vpc

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
      alias :vpc_id :id

      # The current state of the VPC.
      # @return [String]
      def state
        data.state
      end

      # The CIDR block for the VPC.
      # @return [String]
      def cidr_block
        data.cidr_block
      end

      # The ID of the set of DHCP options you\'ve associated with the VPC (or
      # `default` if the default options are associated with the VPC).
      # @return [String]
      def dhcp_options_id
        data.dhcp_options_id
      end

      # Any tags assigned to the VPC.
      # @return [Array<Types::Tag>]
      def tags
        data.tags
      end

      # The allowed tenancy of instances launched into the VPC.
      # @return [String]
      def instance_tenancy
        data.instance_tenancy
      end

      # Indicates whether the VPC is the default VPC.
      # @return [Boolean]
      def is_default
        data.is_default
      end

      # @!endgroup

      # @return [Client]
      def client
        @client
      end

      # Loads, or reloads {#data} for the current {Vpc}.
      # Returns `self` making it possible to chain methods.
      #
      #     vpc.reload.data
      #
      # @return [self]
      def load
        resp = @client.describe_vpcs(vpc_ids: [@id])
        @data = resp.vpcs[0]
        self
      end
      alias :reload :load

      # @return [Types::Vpc]
      #   Returns the data for this {Vpc}. Calls
      #   {Client#describe_vpcs} if {#data_loaded?} is `false`.
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
      #   Returns `true` if the Vpc exists.
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
      # @return [Vpc]
      def wait_until_available(options = {})
        waiter = Waiters::VpcAvailable.new(options.merge(client: @client))
        yield_waiter_and_warn(waiter, &Proc.new) if block_given?
        waiter.wait(vpc_ids: [@id])
        Vpc.new({
          id: @id,
          client: @client
        })
      end

      # @param options ({})
      # @option options [Integer] :max_attempts (5)
      # @option options [Float] :delay (1)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      # @return [Vpc]
      def wait_until_exists(options = {})
        waiter = Waiters::VpcExists.new(options.merge(client: @client))
        yield_waiter_and_warn(waiter, &Proc.new) if block_given?
        waiter.wait(vpc_ids: [@id])
        Vpc.new({
          id: @id,
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
      # @option options [required, String] :dhcp_options_id
      #   The ID of the DHCP options set, or `default` to associate no DHCP
      #   options with the VPC.
      # @return [EmptyStructure]
      def associate_dhcp_options(options = {})
        options = options.merge(vpc_id: @id)
        resp = @client.associate_dhcp_options(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [required, String] :instance_id
      #   The ID of an EC2-Classic instance to link to the ClassicLink-enabled
      #   VPC.
      # @option options [required, Array<String>] :groups
      #   The ID of one or more of the VPC\'s security groups. You cannot
      #   specify security groups from a different VPC.
      # @return [Types::AttachClassicLinkVpcResult]
      def attach_classic_link_instance(options = {})
        options = options.merge(vpc_id: @id)
        resp = @client.attach_classic_link_vpc(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [required, String] :internet_gateway_id
      #   The ID of the Internet gateway.
      # @return [EmptyStructure]
      def attach_internet_gateway(options = {})
        options = options.merge(vpc_id: @id)
        resp = @client.attach_internet_gateway(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @return [NetworkAcl]
      def create_network_acl(options = {})
        options = options.merge(vpc_id: @id)
        resp = @client.create_network_acl(options)
        NetworkAcl.new(
          id: resp.data.network_acl.network_acl_id,
          data: resp.data.network_acl,
          client: @client
        )
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @return [RouteTable]
      def create_route_table(options = {})
        options = options.merge(vpc_id: @id)
        resp = @client.create_route_table(options)
        RouteTable.new(
          id: resp.data.route_table.route_table_id,
          data: resp.data.route_table,
          client: @client
        )
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [required, String] :group_name
      #   The name of the security group.
      #
      #   Constraints: Up to 255 characters in length
      #
      #   Constraints for EC2-Classic: ASCII characters
      #
      #   Constraints for EC2-VPC: a-z, A-Z, 0-9, spaces, and
      #   .\_-:/()#,@\[\]+=&amp;;\\\{\\}!$\*
      # @option options [required, String] :description
      #   A description for the security group. This is informational only.
      #
      #   Constraints: Up to 255 characters in length
      #
      #   Constraints for EC2-Classic: ASCII characters
      #
      #   Constraints for EC2-VPC: a-z, A-Z, 0-9, spaces, and
      #   .\_-:/()#,@\[\]+=&amp;;\\\{\\}!$\*
      # @return [SecurityGroup]
      def create_security_group(options = {})
        options = options.merge(vpc_id: @id)
        resp = @client.create_security_group(options)
        SecurityGroup.new(
          id: resp.data.group_id,
          client: @client
        )
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [required, String] :cidr_block
      #   The network range for the subnet, in CIDR notation. For example,
      #   `10.0.0.0/24`.
      # @option options [String] :availability_zone
      #   The Availability Zone for the subnet.
      #
      #   Default: AWS selects one for you. If you create more than one subnet
      #   in your VPC, we may not necessarily select a different zone for each
      #   subnet.
      # @return [Subnet]
      def create_subnet(options = {})
        options = options.merge(vpc_id: @id)
        resp = @client.create_subnet(options)
        Subnet.new(
          id: resp.data.subnet.subnet_id,
          data: resp.data.subnet,
          client: @client
        )
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [required, Array<Types::Tag>] :tags
      #   One or more tags. The `value` parameter is required, but if you don\'t
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

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @return [EmptyStructure]
      def delete(options = {})
        options = options.merge(vpc_id: @id)
        resp = @client.delete_vpc(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [required, String] :attribute
      #   The VPC attribute.
      # @return [Types::DescribeVpcAttributeResult]
      def describe_attribute(options = {})
        options = options.merge(vpc_id: @id)
        resp = @client.describe_vpc_attribute(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [required, String] :instance_id
      #   The ID of the instance to unlink from the VPC.
      # @return [Types::DetachClassicLinkVpcResult]
      def detach_classic_link_instance(options = {})
        options = options.merge(vpc_id: @id)
        resp = @client.detach_classic_link_vpc(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [required, String] :internet_gateway_id
      #   The ID of the Internet gateway.
      # @return [EmptyStructure]
      def detach_internet_gateway(options = {})
        options = options.merge(vpc_id: @id)
        resp = @client.detach_internet_gateway(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @return [Types::DisableVpcClassicLinkResult]
      def disable_classic_link(options = {})
        options = options.merge(vpc_id: @id)
        resp = @client.disable_vpc_classic_link(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @return [Types::EnableVpcClassicLinkResult]
      def enable_classic_link(options = {})
        options = options.merge(vpc_id: @id)
        resp = @client.enable_vpc_classic_link(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [Types::AttributeBooleanValue] :enable_dns_support
      #   Indicates whether the DNS resolution is supported for the VPC. If
      #   enabled, queries to the Amazon provided DNS server at the
      #   169.254.169.253 IP address, or the reserved IP address at the base of
      #   the VPC network range \"plus two\" will succeed. If disabled, the
      #   Amazon provided DNS service in the VPC that resolves public DNS
      #   hostnames to IP addresses is not enabled.
      #
      #   You cannot modify the DNS resolution and DNS hostnames attributes in
      #   the same request. Use separate requests for each attribute.
      # @option options [Types::AttributeBooleanValue] :enable_dns_hostnames
      #   Indicates whether the instances launched in the VPC get DNS hostnames.
      #   If enabled, instances in the VPC get DNS hostnames; otherwise, they do
      #   not.
      #
      #   You cannot modify the DNS resolution and DNS hostnames attributes in
      #   the same request. Use separate requests for each attribute. You can
      #   only enable DNS hostnames if you\'ve enabled DNS support.
      # @return [EmptyStructure]
      def modify_attribute(options = {})
        options = options.merge(vpc_id: @id)
        resp = @client.modify_vpc_attribute(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [String] :peer_vpc_id
      #   The ID of the VPC with which you are creating the VPC peering
      #   connection.
      # @option options [String] :peer_owner_id
      #   The AWS account ID of the owner of the peer VPC.
      #
      #   Default: Your AWS account ID
      # @return [VpcPeeringConnection]
      def request_vpc_peering_connection(options = {})
        options = options.merge(vpc_id: @id)
        resp = @client.create_vpc_peering_connection(options)
        VpcPeeringConnection.new(
          id: resp.data.vpc_peering_connection.vpc_peering_connection_id,
          data: resp.data.vpc_peering_connection,
          client: @client
        )
      end

      # @!group Associations

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [Array<String>] :vpc_peering_connection_ids
      #   One or more VPC peering connection IDs.
      #
      #   Default: Describes all your VPC peering connections.
      # @return [VpcPeeringConnection::Collection]
      def accepted_vpc_peering_connections(options = {})
        batches = Enumerator.new do |y|
          batch = []
          options = Aws::Util.deep_merge(options, filters: [{
            name: "accepter-vpc-info.vpc-id",
            values: [@id]
          }])
          resp = @client.describe_vpc_peering_connections(options)
          resp.data.vpc_peering_connections.each do |v|
            batch << VpcPeeringConnection.new(
              id: v.vpc_peering_connection_id,
              data: v,
              client: @client
            )
          end
          y.yield(batch)
        end
        VpcPeeringConnection::Collection.new(batches)
      end

      # @return [DhcpOptions, nil]
      def dhcp_options
        if data.dhcp_options_id
          DhcpOptions.new(
            id: data.dhcp_options_id,
            client: @client
          )
        else
          nil
        end
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [Array<String>] :instance_ids
      #   One or more instance IDs.
      #
      #   Default: Describes all your instances.
      # @return [Instance::Collection]
      def instances(options = {})
        batches = Enumerator.new do |y|
          options = Aws::Util.deep_merge(options, filters: [{
            name: "vpc-id",
            values: [@id]
          }])
          resp = @client.describe_instances(options)
          resp.each_page do |page|
            batch = []
            page.data.reservations.each do |r|
              r.instances.each do |i|
                batch << Instance.new(
                  id: i.instance_id,
                  data: i,
                  client: @client
                )
              end
            end
            y.yield(batch)
          end
        end
        Instance::Collection.new(batches)
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [Array<String>] :internet_gateway_ids
      #   One or more Internet gateway IDs.
      #
      #   Default: Describes all your Internet gateways.
      # @return [InternetGateway::Collection]
      def internet_gateways(options = {})
        batches = Enumerator.new do |y|
          batch = []
          options = Aws::Util.deep_merge(options, filters: [{
            name: "attachment.vpc-id",
            values: [@id]
          }])
          resp = @client.describe_internet_gateways(options)
          resp.data.internet_gateways.each do |i|
            batch << InternetGateway.new(
              id: i.internet_gateway_id,
              data: i,
              client: @client
            )
          end
          y.yield(batch)
        end
        InternetGateway::Collection.new(batches)
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [Array<String>] :network_acl_ids
      #   One or more network ACL IDs.
      #
      #   Default: Describes all your network ACLs.
      # @return [NetworkAcl::Collection]
      def network_acls(options = {})
        batches = Enumerator.new do |y|
          batch = []
          options = Aws::Util.deep_merge(options, filters: [{
            name: "vpc-id",
            values: [@id]
          }])
          resp = @client.describe_network_acls(options)
          resp.data.network_acls.each do |n|
            batch << NetworkAcl.new(
              id: n.network_acl_id,
              data: n,
              client: @client
            )
          end
          y.yield(batch)
        end
        NetworkAcl::Collection.new(batches)
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [Array<String>] :network_interface_ids
      #   One or more network interface IDs.
      #
      #   Default: Describes all your network interfaces.
      # @return [NetworkInterface::Collection]
      def network_interfaces(options = {})
        batches = Enumerator.new do |y|
          batch = []
          options = Aws::Util.deep_merge(options, filters: [{
            name: "vpc-id",
            values: [@id]
          }])
          resp = @client.describe_network_interfaces(options)
          resp.data.network_interfaces.each do |n|
            batch << NetworkInterface.new(
              id: n.network_interface_id,
              data: n,
              client: @client
            )
          end
          y.yield(batch)
        end
        NetworkInterface::Collection.new(batches)
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [Array<String>] :vpc_peering_connection_ids
      #   One or more VPC peering connection IDs.
      #
      #   Default: Describes all your VPC peering connections.
      # @return [VpcPeeringConnection::Collection]
      def requested_vpc_peering_connections(options = {})
        batches = Enumerator.new do |y|
          batch = []
          options = Aws::Util.deep_merge(options, filters: [{
            name: "requester-vpc-info.vpc-id",
            values: [@id]
          }])
          resp = @client.describe_vpc_peering_connections(options)
          resp.data.vpc_peering_connections.each do |v|
            batch << VpcPeeringConnection.new(
              id: v.vpc_peering_connection_id,
              data: v,
              client: @client
            )
          end
          y.yield(batch)
        end
        VpcPeeringConnection::Collection.new(batches)
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [Array<String>] :route_table_ids
      #   One or more route table IDs.
      #
      #   Default: Describes all your route tables.
      # @return [RouteTable::Collection]
      def route_tables(options = {})
        batches = Enumerator.new do |y|
          batch = []
          options = Aws::Util.deep_merge(options, filters: [{
            name: "vpc-id",
            values: [@id]
          }])
          resp = @client.describe_route_tables(options)
          resp.data.route_tables.each do |r|
            batch << RouteTable.new(
              id: r.route_table_id,
              data: r,
              client: @client
            )
          end
          y.yield(batch)
        end
        RouteTable::Collection.new(batches)
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [Array<String>] :group_names
      #   \[EC2-Classic and default VPC only\] One or more security group names.
      #   You can specify either the security group name or the security group
      #   ID. For security groups in a nondefault VPC, use the `group-name`
      #   filter to describe security groups by name.
      #
      #   Default: Describes all your security groups.
      # @option options [Array<String>] :group_ids
      #   One or more security group IDs. Required for security groups in a
      #   nondefault VPC.
      #
      #   Default: Describes all your security groups.
      # @return [SecurityGroup::Collection]
      def security_groups(options = {})
        batches = Enumerator.new do |y|
          batch = []
          options = Aws::Util.deep_merge(options, filters: [{
            name: "vpc-id",
            values: [@id]
          }])
          resp = @client.describe_security_groups(options)
          resp.data.security_groups.each do |s|
            batch << SecurityGroup.new(
              id: s.group_id,
              data: s,
              client: @client
            )
          end
          y.yield(batch)
        end
        SecurityGroup::Collection.new(batches)
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [Array<String>] :subnet_ids
      #   One or more subnet IDs.
      #
      #   Default: Describes all your subnets.
      # @return [Subnet::Collection]
      def subnets(options = {})
        batches = Enumerator.new do |y|
          batch = []
          options = Aws::Util.deep_merge(options, filters: [{
            name: "vpc-id",
            values: [@id]
          }])
          resp = @client.describe_subnets(options)
          resp.data.subnets.each do |s|
            batch << Subnet.new(
              id: s.subnet_id,
              data: s,
              client: @client
            )
          end
          y.yield(batch)
        end
        Subnet::Collection.new(batches)
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

        # @return [Enumerator<Vpc>]
        def each(&block)
          enum = super
          enum.each(&block) if block
          enum
        end

      end
    end
  end
end
