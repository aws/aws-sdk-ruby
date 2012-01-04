# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

      class IngressIpPermissionCollection

        include Core::Model
        include Enumerable

        attr_reader :security_group

        def initialize security_group, options = {}
          @security_group = security_group
          super
        end

        def each
          security_group.ip_permissions_list.each do |p|

            ports = p.respond_to?(:from_port) ? [p.from_port, p.to_port] : nil

            ip_ranges = p.ip_ranges.collect{|ip| ip.cidr_ip }

            groups = p.groups.collect do |group|
              SecurityGroup.new(group.group_id,
                :owner_id => group.user_id,
                :config => config)
            end

            permission = IpPermission.new(security_group, p.ip_protocol, ports,
              :ip_ranges => ip_ranges,
              :groups => groups,
              :config => config)

            yield(permission)

          end
        end

      end

      # alias for ingress permissions
      IpPermissionCollection = IngressIpPermissionCollection

    end
  end
end
