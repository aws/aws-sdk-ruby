# Copyright 2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

module AWS
  class EC2

    # Represents a security group in EC2.
    #
    # @attr_reader [String] description The short informal description 
    #   given when the group was created.
    #
    # @attr_reader [String] name The name of the security group.
    #
    # @attr_reader [String] owner_id The security group owner's id.
    #
    # @attr_reader [String,nil] vpc_id If this is a VPC security group, 
    #   vpc_id is the ID of the VPC this group was created in.
    #   Returns false otherwise.
    #
    class SecurityGroup < Resource

      AWS.register_autoloads(self, 'aws/ec2/security_group') do
        autoload :IpPermission,                 'ip_permission'
        autoload :IpPermissionCollection,       'ip_permission_collection'
        autoload :EgressIpPermissionCollection, 'egress_ip_permission_collection'
      end

      include TaggedItem

      def initialize id, options = {}
        @id = id
        super
      end

      # @return [String] The ID of the security group.
      attr_reader :id

      alias_method :group_id, :id

      attribute :name, :as => :group_name, :static => true

      attribute :owner_id, :static => true

      attribute :vpc_id, :static => true

      attribute :description, :as => :group_description, :static => true

      attribute :ip_permissions_list, :as => :ip_permissions

      attribute :ip_permissions_list_egress, :as => :ip_permissions_egress

      populates_from(:describe_security_groups) do |resp|
        resp.security_group_index[id]
      end

      # @return [Boolean] True if the security group exists.
      def exists?
        client.describe_security_groups(:filters => [
          { :name => "group-id", :values => [id] }
        ]).security_group_index.key?(id)
      end

      # Returns true if this security group is a VPC security group and 
      # not an EC2 security group.  VPC security groups belong to a VPC
      # subnet and can have egress rules.
      # @return [Boolean] Returns true if this is a VPC security group and 
      #   false if this is an EC2 security group.
      def vpc?
        vpc_id ? true : false
      end

      # @return [SecurityGroup::IpPermissionCollection] Returns a
      #   collection of {IpPermission} objects that represents all of
      #   the (ingress) permissions this security group has 
      #   authorizations for.
      def ingress_ip_permissions
        IpPermissionCollection.new(self, :config => config)
      end
      alias_method :ip_permissions, :ingress_ip_permissions

      # @return [SecurityGroup::EgressIpPermissionCollection] Returns a
      #   collection of {IpPermission} objects that represents all of
      #   the egress permissions this security group has authorizations for.
      def egress_ip_permissions
        EgressIpPermissionCollection.new(self, :config => config)
      end

      # Adds ingress rules for ICMP pings.  Defaults to 0.0.0.0/0 for 
      # the list of allowed IP ranges the ping can come from.
      #
      #   security_group.allow_ping # anyone can ping servers in this group
      #
      #   # only allow ping from a particular address
      #   security_group.allow_ping('123.123.123.123/0')
      #
      # @param [String] ip_ranges One or more IP ranges to allow ping from.
      #   Defaults to 0.0.0.0/0
      # @return [IpPermission] Returns an IpPermission object that was added
      #   to this security group.
      def allow_ping *sources
        sources << '0.0.0.0/0' if sources.empty?
        authorize_ingress('icmp', -1, *sources)
      end

      # Removes ingress rules for ICMP pings.  Defaults to 0.0.0.0/0 for 
      # the list of IP ranges to revoke.
      #
      # @param [String] ip_ranges One or more IP ranges to allow ping from.
      #   Defaults to 0.0.0.0/0
      # @return [IpPermission] Returns an IpPermission object that was added
      #   to this security group.
      def disallow_ping *sources
        sources << '0.0.0.0/0' if sources.empty?
        revoke_ingress('icmp', -1, *sources)
      end

      # Add an ingress rules to this security group.
      # Ingress rules permit inbound traffic over a given protocol for
      # a given port range from one or more souce ip addresses.
      #
      # This example grants the whole internet (0.0.0.0/0) access to port 80 
      # over TCP (HTTP web traffic).
      #
      #   security_group.authorize_ingress(:tcp, 80)
      #
      # You can specify port ranges as well:
      #
      #   # ftp
      #   security_group.authorize_ingress(:tcp, 20..21)
      #
      # In the following example allow incoming SSH from a list of 
      # IP address.
      #
      #   security_group.authorize_ingress(:tcp, 22, 
      #     '111.111.111.111/0', '222.222.222.222/0')
      #
      # You can also pass another security group as an ingress source.
      # Allows traffic through that originates from EC2 instances inside
      # the given security group.
      #
      #   web = security_groups.create('webservers')
      #   db = security_groups.create('database')
      #
      #   # allows ec2 instances in the webservers security group to make
      #   # tcp requests via port 3306 to instances in the database 
      #   # security group
      #   db.authorize_ingress(:tcp, 3306, web)
      #
      # You can even mix and match IP address and security group sources.
      #
      # @param [String, Symbol] protocol Should be :tcp, :udp or :icmp
      #   or the string equivalent.
      #
      # @param [Integer, Range] ports The port (or port range) to allow
      #   traffic through.  You can pass a single integer (like 80) 
      #   or a range (like 20..21).
      #
      # @param [Mixed] sources One or more CIDR IP addresses,
      #   security groups, or hashes.  Hash values should
      #   have :group_id and :user_id keys/values.  This is useful
      #   for when the security group belongs to another account.  The
      #   user id should be the owner_id (account id) of the security
      #   group.
      #
      # @return [IpPermission] Returns an IpPermission object that was added
      #   to this security group.
      #
      def authorize_ingress protocol, ports, *sources
        parse_ingress_sources(sources) do |options|
          permission = IpPermission.new(self, protocol, ports, options)
          permission.authorize
          permission
        end
      end

      # Revokes an ingress (inbound) ip permission.  This is the inverse 
      # operation to {#authorize_ingress}.  See {#authorize_ingress}
      # for param and option documentation.
      # @see #authorize_ingress
      # @return [IpPermission] Returns an IpPermission object that was added
      #   to this security group.
      def revoke_ingress protocol, ports, *sources
        parse_ingress_sources(sources) do |options|
          permission = IpPermission.new(self, protocol, ports, options)
          permission.revoke
          permission
        end
      end

      # Authorize egress (outbound) traffic for a VPC security group.
      # 
      #   # allow traffic for all protocols/ports from the given sources
      #   security_group.authorize_egress('10.0.0.0/16', '10.0.0.1/16')
      #
      #   # allow tcp traffic outband via port 80
      #   security_group.authorize_egress('10.0.0.0/16',
      #     :protocol => :tcp, :ports => 80..80)
      # 
      # @note Calling this method on a non-VPC security group raises an error.
      #
      # @overload authorize_egress(*sources, options = {})
      #   @param [Mixed] sources One or more CIDR IP addresses,
      #     security groups, or hashes.  Hash values should
      #     have :group_id and :user_id keys/values.  This is useful
      #     for when the security group belongs to another account.  The
      #     user id should be the owner_id (account id) of the security
      #     group.
      #   @param [Hash] options
      #   @option options [Symbol] :protocol (:any) The protocol to authorize
      #     traffic for.  If this option is ommitted, all protocols are
      #     allowed.  Defaults to the symbol +:any+.  For a complete list of
      #     supported protocols, see 
      #   @option options [Range<Integer>,Integer] :ports (nil) An optional
      #     port or range of ports.  This option is required depending on
      #     the protocal.  
      #
      # @param 
      # @return [IpPermission] Returns an IpPermission object that was added
      #   to this security group.
      def authorize_egress *args
        parse_egress_args(*args) do |protocol, ports, options|
          permission = IpPermission.new(self, protocol, ports, options)
          permission.authorize
          permission
        end
      end

      # Revokes an egress (outound) ip permission.  This is the inverse 
      # operation to {#authorize_egress}.  See {#authorize_egress}
      # for param and option documentation.
      # @see #authorize_egress
      # @return [IpPermission] Returns an IpPermission object that was added
      #   to this security group.
      def revoke_egress *args
        parse_egress_args(*args) do |protocol, ports, options|
          permission = IpPermission.new(self, protocol, ports, options)
          permission.revoke
          permission
        end
      end

      # Deletes this security group. 
      #
      # If you attempt to delete a security group that contains 
      # instances, or attempt to delete a security group that is referenced
      # by another security group, an error is raised. For example, if 
      # security group B has a rule that allows access from security 
      # group A, security group A cannot be deleted until the rule is 
      # removed.
      # @return [nil]
      def delete
        client.delete_security_group(:group_id => id)
        nil
      end

      # @private
      def resource_type
        'security-group'
      end

      # @private
      def inflected_name
        "group"
      end

      # @private
      def self.describe_call_name
        :describe_security_groups
      end
      def describe_call_name; self.class.describe_call_name; end

      # @private
      protected
      def parse_ingress_sources sources

        ips, groups = parse_sources(sources)

        options = {}
        options[:ip_ranges] = ips unless ips.empty?
        options[:groups] = groups unless groups.empty?
        options[:egress] = false

        yield(options)

      end

      # @private
      protected
      def parse_egress_args *args, &block
        ensure_vpc do

          last = args.last
          
          if last.is_a?(Hash) and (last.key?(:protocol) or last.key?(:ports))
            # hashes at the end of egress methods could be a hash intedned
            # to be a source, like:
            #
            #   { :group_id => ..., :user_id => ... }
            #
            options = args.pop
          else
            options = {}
          end

          protocol = options[:protocol] || :any

          ports = options[:ports]

          ips, groups = parse_sources(args)

          options[:ip_ranges] = ips unless ips.empty?
          options[:groups] = groups unless groups.empty?
          options[:egress] = true

          yield(protocol, ports, options)

        end
      end

      # @private
      protected
      def parse_sources sources

        ips = []
        groups = []

        sources.each do |source|
          case source
          when String then ips << source
          when SecurityGroup then groups << source
          when Hash
            if source.has_key?(:group_id) and source.has_key?(:user_id)

              group = SecurityGroup.new(source[:group_id],
                :owner_id => source[:user_id],
                :config => config)

              groups << group

            else
              raise ArgumentError, 'invalid ip permission hash, ' +
                'must provide :group_id and :user_id'
            end

          else
            raise ArgumentError, 'invalid ingress ip permission, ' +
              'expected CIDR IP addres or SecurityGroup'
          end
        end

        ips << '0.0.0.0/0' if ips.empty? and groups.empty?

        [ips, groups]
        
      end

      # @private
      protected
      def ensure_vpc &block
        raise 'operation permitted for VPC security groups only' unless vpc?
        yield
      end

      # @private
      protected
      def find_in_response(resp)
        resp.security_group_index[id]
      end

    end
  end
end
