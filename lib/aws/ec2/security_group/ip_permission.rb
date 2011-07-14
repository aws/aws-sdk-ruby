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

require 'aws/model'

module AWS
  class EC2
    class SecurityGroup < Resource
      class IpPermission

        include Model

        # @param protocol [:tcp, :udp, :icmp]
        # @param port [Range,Integer] An integer or a range of integers
        #   to open ports for.
        # @param [Hash] options
        # @option options [Array] :ip_ranges An array of CIDR ip address
        #   to grant permission to.
        # @option options [Array] :groups An array of SecurityGroup objects to
        #   grant permission to.
        def initialize security_group, protocol, ports, options = {}
          @security_group = security_group
          @protocol = protocol.to_s.downcase.to_sym
          @port_range = (Array(ports).first..Array(ports).last)
          @ip_ranges = Array(options[:ip_ranges])
          @groups = Array(options[:groups])
          super
        end

        # @return [SecurityGroup] The security group this permission is 
        #   authorized for.
        attr_reader :security_group

        # @return [Symbol] The protocol (:tcp, :udp, :icmp)
        attr_reader :protocol

        # @return [Range] The port range (e.g. 80..80, 4000..4010, etc)
        attr_reader :port_range

        # @return [Array] An array if string CIDR ip addresses.
        attr_reader :ip_ranges

        # @return [Array] An array of security groups that have been 
        # granted access with this permission.
        attr_reader :groups

        def authorize
          sources = groups + ip_ranges
          security_group.authorize_ingress(protocol, port_range, *sources)
        end

        def revoke
          sources = groups + ip_ranges
          security_group.revoke_ingress(protocol, port_range, *sources)
        end

      end
    end
  end
end
