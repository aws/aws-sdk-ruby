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

require 'aws/ec2/resource'
require 'aws/ec2/tagged_item'
require 'aws/ec2/security_group/ip_permission'
require 'aws/ec2/security_group/ip_permission_collection'

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
    class SecurityGroup < Resource

      include TaggedItem

      def initialize id, options = {}
        @id = id
        @name = options[:name]
        @description = options[:description]
        @owner_id = options[:owner_id]
        super
      end

      # @return [String] The id of the security group.
      attr_reader :id

      alias_method :group_id, :id

      attribute :name, :as => :group_name, :static => true

      attribute :owner_id, :static => true

      attribute :description, :as => :group_description, :static => true

      attribute :ip_permissions_list, :as => :ip_permissions

      populates_from(:describe_security_groups) do |resp|
        resp.security_group_index[id]
      end

      # @return [Boolean] True if the security group exists.
      def exists?
        client.describe_security_groups(:filters => [
          { :name => "group-id", :values => [id] }
        ]).security_group_index.key?(id)
      end

      # @return [SecurityGroup::IpPermissionCollection] Returns a
      #   collection of {IpPermission} objects that represents all of
      #   the permissions this security group has authorizations for.
      def ip_permissions
        IpPermissionCollection.new(self, :config => config)
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
      def allow_ping *sources
        sources << '0.0.0.0/0' if sources.empty?
        authorize_ingress('icmp', -1, *sources)
      end

      # Removes ingress rules for ICMP pings.  Defaults to 0.0.0.0/0 for 
      # the list of IP ranges to revoke.
      #
      # @param [String] ip_ranges One or more IP ranges to allow ping from.
      #   Defaults to 0.0.0.0/0
      def disallow_ping *sources
        sources << '0.0.0.0/0' if sources.empty?
        revoke_ingress('icmp', -1, *sources)
      end

      # Adds an ingress rules to a security group.
      #
      # Each ingress exception is comprised of a protocol a port range
      # and a list of sources.
      # 
      #
      # This example grants the whole internet (0.0.0.0/0) access to port 80 
      # over TCP (HTTP web traffic).
      #
      #   security_groups['websrv'].authorize_ingress(:tcp, 80)
      #
      # In the following example we grant SSH access from a list of 
      # IP address.
      #
      #   security_groups['appsrv'].authorize_ingress(:tcp, 22, 
      #     '111.111.111.111/0', '222.222.222.222/0')
      #
      # You can also grant privileges to other security groups. This
      # is a convenient shortcut for granting permissions to all EC2
      # servers in a particular security group access.
      #
      #   web = security_groups['httpservers']
      #   db = security_groups['dbservers']
      #
      #   db.authorize_ingress(:tcp, 3306, web)
      #
      # You can specify port ranges as well:
      #
      #   security_groups['ftpsvr'].authorize_ingress(:tcp, 20..21)
      #
      # You can even mix and match IP address and security groups.
      #
      # @param [String, Symbol] protocol Should be :tcp, :udp or :icmp
      #   or the string equivalent.
      #
      # @param [Integer, Range] ports The port (or port range) to allow
      #   ingress traffic over.  You can pass a single integer (like 80) 
      #   or a range (like 20..21).
      #
      # @param [Mixed] sources One or more CIDR IP addresses,
      #   security groups, or hashes.  Hash values should
      #   have :group_id and :user_id keys/values.  This is useful
      #   for when the security group belongs to another account.  The
      #   user id should be the owner_id (account id) of the security
      #   group.
      #
      # @return [nil]
      def authorize_ingress protocol, ports, *sources
        permissions = format_permission(protocol, ports, sources)
        client.authorize_security_group_ingress(
          :group_id => id,
          :ip_permissions => permissions)
        nil
      end

      # @param see #authorize_ingress
      # @return [nil]
      def revoke_ingress protocol, ports, *sources
        permissions = format_permission(protocol, ports, sources)
        client.revoke_security_group_ingress(
          :group_id => id,
          :ip_permissions => permissions)
        nil
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
      def find_in_response(resp)
        resp.security_group_index[id]
      end

      # @private
      protected
      def format_permission protocol, ports, sources

        permission = {}
        permission[:ip_protocol] = protocol.to_s.downcase
        permission[:from_port] = Array(ports).first.to_i
        permission[:to_port] = Array(ports).last.to_i

        ip_ranges = []
        groups = []

        # default to 0.0.0.0/0
        sources << '0.0.0.0/0' if sources.empty?

        sources.each do |where|
          case where 

          when String 
            ip_ranges << where

          when SecurityGroup
            groups << {:group_id => where.id, :user_id => where.owner_id}

          when Hash 
            if where.has_key?(:group_id) and where.has_key?(:user_id)
              groups << where
            else
              raise ArgumentError, 'invalid ingress ip permission, hashes ' +
               'must have :group_id and :user_id key/values'
            end
          else
            raise ArgumentError, 'invalid ingress ip permission, ' +
              'expected CIDR IP addres or SecurityGroup'
          end
        end

        unless ip_ranges.empty?
          permission[:ip_ranges] = ip_ranges.collect{|ip| { :cidr_ip => ip } }
        end

        unless groups.empty?
          permission[:user_id_group_pairs] = groups
        end

        [permission]

      end
    end
  end
end
