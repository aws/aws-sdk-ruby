# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

require 'spec_helper'

module AWS
  class EC2
    class SecurityGroup
      describe IpPermission do

        let(:config) { stub_config }

        let(:client) { config.ec2_client }

        let(:group) { SecurityGroup.new('id', :config => config) }

        let(:ip_permission) { IpPermission.new(group, :tcp, 80) }

        it_should_behave_like "an ec2 model object", 'foo', :tcp, 80

        context '#security_group' do

          it 'should return the correct security group' do
            ip_permission.security_group.should == group
          end

        end

        context '#protocol' do

          it 'returns the protocol' do
            IpPermission.new(group, :udp, 80).protocol.should == :udp
          end

          it 'is the lowercase symbolized version of what is passed' do
            IpPermission.new(group, 'TCP', 80).protocol.should == :tcp
          end

          it 'converts -1 to :any' do
            # ec2 returns the string -1 to indicate any protocol
            # for egress ip permissions
            IpPermission.new(group, '-1', 80).protocol.should == :any
          end

        end

        context '#port_range' do

          it 'converts integers into a range' do
            IpPermission.new(group, :tcp, 80).port_range.
              should == (80..80)
          end

          it 'converts arrays into ranges' do
            IpPermission.new(group, :tcp, [20,21]).port_range.
              should == (20..21)
          end

          it 'accepts ranges' do
            IpPermission.new(group, :tcp, 20..22).port_range.
              should == (20..22)
          end

          it 'accepts nil' do
            IpPermission.new(group, :tcp, nil).port_range.should == nil
          end

        end

        context '#ip_ranges' do

          it 'defaults to []' do
            ip_permission.ip_ranges.should == []
          end

          it 'returns whatever it received as an array' do
            IpPermission.new(group, :tcp, 80, :ip_ranges => 'foo').
              ip_ranges.should == ['foo']
          end

        end

        context '#groups' do

          it 'defaults to []' do
            ip_permission.groups.should == []
          end

          it 'returns whatever it received as an array' do
            IpPermission.new(group, :tcp, 80, :groups => 'foo').
              groups.should == ['foo']
          end

        end

        context '#egress?' do

          it 'defaults to false' do
            IpPermission.new(group, :tcp, 80).egress?.should == false
          end

          it 'can be set to true' do
            IpPermission.new(group, :tcp, 80, :egress => true).egress?.
              should == true
          end

        end

        context '#authorize' do

          it 'calls authorize_security_group_ingress' do

            client.should_receive(:authorize_security_group_ingress).
              with(:group_id => 'id', :ip_permissions => [
                { :ip_protocol => 'tcp', :from_port => 80, :to_port => 80,
                  :ip_ranges => [
                    { :cidr_ip => '1.1.1.1/1' },
                    { :cidr_ip => '2.2.2.2/2' },
                  ],
                  :user_id_group_pairs => [
                    { :group_id => 'other-id', :user_id => 'abc' },
                  ],
                }
              ])

            other_group = SecurityGroup.new('other-id', :owner_id => 'abc')
            p = IpPermission.new(group, :tcp, 80,
              :ip_ranges => ['1.1.1.1/1', '2.2.2.2/2'],
              :groups => other_group)
            p.authorize

          end

        end

        context '#eql?' do

          it 'sorts ip_ranges and groups when comparing' do

            sg1 = SecurityGroup.new('id-1')
            sg2 = SecurityGroup.new('id-2')
            sg3 = SecurityGroup.new('id-3')

            protocol = :tcp
            port_range = 80..80
            ips = ['1.1.1.1', '2.2.2.2']
            groups = [sg2, sg3]
            egress = true

            p1 = IpPermission.new(sg1, protocol, port_range,
              :ip_ranges => ips,
              :groups => groups,
              :egress => egress,
              :config => config)

            p2 = IpPermission.new(sg1, protocol, port_range,
              :ip_ranges => ips.reverse,
              :groups => groups.reverse,
              :egress => egress,
              :config => config)

            p1.eql?(p2).should eq(true)

          end

          it 'is aliased as #==' do
            ip_permission.method(:eql?).should eq(ip_permission.method(:==))
          end

        end

        context '#revoke' do

          it 'calls revoke_security_group_ingress' do

            client.should_receive(:revoke_security_group_ingress).
              with(:group_id => 'id', :ip_permissions => [
                { :ip_protocol => 'tcp', :from_port => 80, :to_port => 80,
                  :ip_ranges => [
                    { :cidr_ip => '1.1.1.1/1' },
                    { :cidr_ip => '2.2.2.2/2' },
                  ],
                  :user_id_group_pairs => [
                    { :group_id => 'other-id', :user_id => 'abc' },
                  ],
                }
              ])

            other_group = SecurityGroup.new('other-id', :owner_id => 'abc')
            p = IpPermission.new(group, :tcp, 80,
              :ip_ranges => ['1.1.1.1/1', '2.2.2.2/2'],
              :groups => other_group)
            p.revoke

          end
        end

      end
    end
  end
end
