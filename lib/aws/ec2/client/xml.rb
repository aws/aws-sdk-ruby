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
    class Client < Core::Client
      module XML

        include Core::ConfiguredXmlGrammars

        BaseError = Core::XmlGrammar.customize do
          element "Errors" do
            ignore
            element("Error") { ignore }
          end
        end

        define_configured_grammars

        CustomizedDescribeNetworkInterfaces = DescribeNetworkInterfaces.customize do
          element "networkInterfaceSet" do
            rename "set"
            element "item" do
              element "groupSet" do
                element "item" do
                  rename :groups
                end
              end
            end
          end
        end

        CustomizedDescribeCustomerGateways = DescribeCustomerGateways.customize do
          element "customerGatewaySet" do
            element "item" do
              element "type" do
                rename :vpn_type
              end
            end
          end
        end

        CustomizedDescribeVpnConnections = DescribeVpnConnections.customize do
          element "vpnConnectionSet" do
            element "item" do
              element "type" do
                rename :vpn_type
              end
            end
          end
        end

        CustomizedCreateVpnGateway = CreateVpnGateway.customize do
          element "vpnGateway" do
            element "type" do
              rename :vpn_type
            end
          end
        end

        CustomizedDescribeVpnGateways = DescribeVpnGateways.customize do
          element "vpnGatewaySet" do
            element "item" do
              element "type" do
                rename :vpn_type
              end
            end
          end
        end

        CustomizedDescribeSecurityGroups = DescribeSecurityGroups.customize do
          element "securityGroupInfo" do
            element "item" do
              index(:security_group_index) { |i| i.group_id }

              element "ipPermissions" do
                list "item"
                element "item" do
                  element("ipProtocol") { symbol_value }
                  element("fromPort") { integer_value }
                  element("toPort") { integer_value }
                  element("groups") { list "item" }
                  element("ipRanges") { list "item" }
                end
              end
            end
          end
        end

        CustomizedDescribeInstances = DescribeInstances.customize do
          element "reservationSet" do
            element "item" do
              index :reservation_index do |r|
                r.instances_set.map { |i| i.instance_id }
              end

              element "instancesSet" do
                element "item" do
                  index(:instance_index) { |i| i.instance_id }
                end
              end
            end
          end
        end

        CustomizedDescribeImages = DescribeImages.customize do
          element "imagesSet" do
            element "item" do
              index(:image_index) { |i| i.image_id }
            end
          end
        end

        CustomizedDescribeVolumes = DescribeVolumes.customize do
          element "volumeSet" do
            element "item" do
              index(:volume_index) { |v| v.volume_id }
            end
          end
        end

        CustomizedDescribeSnapshots = DescribeSnapshots.customize do
          element "snapshotSet" do
            element "item" do
              index(:snapshot_index) { |s| s.snapshot_id }
            end
          end
        end

        CustomizedDescribeAddresses = DescribeAddresses.customize do
          element "addressesSet" do
            element "item" do
              index(:address_index) { |a| a.public_ip }
              element "instanceId" do
                force
              end
            end
          end
        end

        CustomizedDescribeKeyPairs = DescribeKeyPairs.customize do
          element "keySet" do
            element "item" do
              index(:key_index) { |k| k.key_name }
            end
          end
        end

        CustomizedDescribeTags = DescribeTags.customize do
          element "tagSet" do
            element "item" do
              element("resourceType") { force }
              element("resourceId") { force }
              element("key") { force }
              index(:tag_index) do |t|
                "#{t.resource_type}:#{t.resource_id}:#{t.key}"
              end
            end
          end
        end

      end
    end
  end
end
