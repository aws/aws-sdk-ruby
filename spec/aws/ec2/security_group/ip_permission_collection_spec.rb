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

require 'spec_helper'

module AWS
  class EC2
    class SecurityGroup < Resource

      describe IpPermissionCollection do

        let(:config) { stub_config }

        let(:client) { config.ec2_client }

        let(:group) { SecurityGroup.new("sg-123", :config => config) }

        let(:collection) { IpPermissionCollection.new(group, :config => config) }

        it_should_behave_like "an ec2 model object", SecurityGroup.new("sg-123")

        it_should_behave_like "enumerable"

        context '#initialize' do

          it 'should set the group' do
            described_class.new(group).security_group.should be(group)
          end

        end

        context '#each' do

          let(:ip_permissions) do
            [
              double("ip-permission-1",
                :ip_protocol => :tcp,
                :from_port => 80,
                :to_port => 81,
                :ip_ranges => [
                  double("ip1", :cidr_ip => "1.1.1.1/1"),
                  double("ip2", :cidr_ip => "2.2.2.2/2")
                ],
                :groups => [
                  double('grp1',
                    :group_id => 'grp1-id',
                    :group_name => 'grp1-name',
                    :user_id => 'grp1-user-id'),
                  double('grp2',
                    :group_id => 'grp2-id',
                    :group_name => 'grp2-name',
                    :user_id => 'grp2-user-id')
                ]
              ),
            ]
          end

          before(:each) do
            group.stub(:ip_permissions_list).and_return(ip_permissions)
          end

          it 'yields IpPermission objects' do
            collection.each { |obj| obj.should be_an(IpPermission) }
          end

          it 'yielded permissions should all be ingress' do
            collection.all?{|obj| obj.egress? }.should == false
          end

          it 'passes the config' do
            collection.each { |obj| obj.config.should be(config) }
          end

          it 'should yield the right number of objects' do
            collection.to_a.size.should == 1
          end

          it 'should populate the correct information' do
            perm = collection.to_a.first
            perm.protocol.should == :tcp
            perm.port_range.should == (80..81)
            perm.ip_ranges.should == %w(1.1.1.1/1 2.2.2.2/2)
            perm.groups.should be_an(Array)
            perm.groups[0].should be_a(SecurityGroup)
            perm.groups[0].id.should == 'grp1-id'
            perm.groups[0].name.should == 'grp1-name'
            perm.groups[0].owner_id.should == 'grp1-user-id'
            perm.groups[1].should be_a(SecurityGroup)
            perm.groups[1].id.should == 'grp2-id'
            perm.groups[1].name.should == 'grp2-name'
            perm.groups[1].owner_id.should == 'grp2-user-id'
          end

        end

      end

    end
  end
end
