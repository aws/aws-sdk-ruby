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
      class EgressIpPermissionCollection < IpPermissionCollection

        def each
          security_group.ip_permissions_list_egress.each do |p|

            # egress permissions don't always have ports
            if p.respond_to?(:from_port)
              ports = [p.from_port, p.to_port]
            else
              ports = nil
            end

            ip_ranges = p.ip_ranges.collect{|ip| ip.cidr_ip }

            groups = p.groups.collect do |group|
              SecurityGroup.new(group.group_id,
                :owner_id => group.user_id,
                :vpc_id => security_group.vpc_id,
                :config => config)
            end

            permission = IpPermission.new(security_group, p.ip_protocol, ports,
              :ip_ranges => ip_ranges,
              :groups => groups,
              :egress => true,
              :config => config)

            yield(permission)

          end
        end

      end
    end
  end
end
