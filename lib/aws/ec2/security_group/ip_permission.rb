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
    class SecurityGroup < Resource
      class IpPermission

        include Core::Model

        # @param protocol [:tcp, :udp, :icmp]
        # @param port [Range,Integer] An integer or a range of integers
        #   to open ports for.
        # @param [Hash] options
        # @option options [Array] :ip_ranges An array of CIDR ip address
        #   to grant permission to.
        # @option options [Array] :groups An array of SecurityGroup objects to
        #   grant permission to.
        # @option options [Boolean] :egress (false) When true this IpPermission
        #   is assumed to be an egree permission.
        def initialize security_group, protocol, ports, options = {}

          @security_group = security_group

          @protocol = protocol == '-1' ?  :any : protocol.to_s.downcase.to_sym

          @ip_ranges = Array(options[:ip_ranges])

          @groups = Array(options[:groups])

          @egress = options[:egress]

          # not all egress permissions require port ranges, depends on the
          # protocol
          if ports
            @port_range = Array(ports).first.to_i..Array(ports).last.to_i
          end

          super

        end

        # @return [SecurityGroup] The security group this permission is 
        #   authorized for.
        attr_reader :security_group

        # @return [Symbol] The protocol (:tcp, :udp, :icmp)
        attr_reader :protocol

        # @return [Range] The port range (e.g. 80..80, 4000..4010, etc)
        attr_reader :port_range

        # @return [Array] An array of string CIDR ip addresses.
        attr_reader :ip_ranges

        # @return [Array] An array of security groups that have been 
        # granted access with this permission.
        attr_reader :groups

        # @return [Boolean] Returns true if this is an egress permission.
        def egress?
          @egress ? true : false
        end

        # Authorizes this permission from its security group.
        # @return [IpPermission] Returns self
        def authorize

          method = egress? ? 
            :authorize_security_group_egress :
            :authorize_security_group_ingress

          client.send(method, 
            :group_id => security_group.id,
            :ip_permissions => [format_permission])

          self

        end

        # Revokes this permission from its security group.
        # @return [IpPermission] Returns self
        def revoke

          method = egress? ? 
            :revoke_security_group_egress :
            :revoke_security_group_ingress

          client.send(method, 
            :group_id => security_group.id,
            :ip_permissions => [format_permission])

          self

        end

        # @return [Boolean] Returns true if the other IpPermission matches
        #   this one.
        def == other
          other.is_a?(IpPermission) and
          other.security_group == security_group and
          other.protocol == protocol and
          other.port_range == port_range and
          other.ip_ranges == ip_ranges and
          other.groups == groups and
          other.egress == egress?
        end

        alias_method :eql?, :==

        # @private
        protected
        def format_permission
      
          permission = {}

          permission[:ip_protocol] = protocol == :any ? '-1' : protocol.to_s

          if port_range
            permission[:from_port] = port_range.first
            permission[:to_port] = port_range.last
          end

          unless ip_ranges.empty?
            permission[:ip_ranges] = ip_ranges.collect{|ip| { :cidr_ip => ip } }
          end

          unless groups.empty?
            permission[:user_id_group_pairs] = groups.inject([]) do |list,group|
              list << { :group_id => group.id, :user_id => group.owner_id }
              list
            end
          end

          permission

        end

      end
    end
  end
end
