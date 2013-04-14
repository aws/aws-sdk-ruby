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
    class SecurityGroup < Resource

      describe EgressIpPermissionCollection do

        let(:config) { stub_config }

        let(:client) { config.ec2_client }

        let(:security_group) {
          SecurityGroup.new("sg-123", :vpc_id => "vpc-123", :config => config)
        }

        let(:collection) { described_class.new(security_group, :config => config) }

        it_should_behave_like "an ec2 model object", SecurityGroup.new("sg-123")

        it_should_behave_like "enumerable"

        context '#initialize' do

          it 'should set the group' do
            described_class.new(security_group).security_group.should be(security_group)
          end

        end

        context '#each' do

          let(:ip_permissions) do
            [
              {
                :ip_protocol => "-1",
                :ip_ranges => [{ :cidr_ip => "1.1.1.1/1" }],
                :groups => [],
              },
              # tcp, plus ports and groups
              {
                :ip_protocol => 'TCP',
                :from_port => 80,
                :to_port => 81,
                :ip_ranges => [],
                :groups => [
                  { :group_id => 'grp1-id', :user_id => 'grp1-user-id' },
                ]
              },
            ]
          end

          before(:each) do
            resp = client.stub_for(:describe_security_groups)
            resp[:security_group_index][security_group.id] = {
              :security_group_id => security_group.id,
              :vpc_id => security_group.vpc_id,
              :ip_permissions_egress => ip_permissions
            }
            client.stub(:describe_security_groups).and_return(resp)
          end

          it 'yields IpPermission objects' do
            collection.each { |obj| obj.should be_an(IpPermission) }
          end

          it 'passes the config' do
            collection.each { |obj| obj.config.should be(config) }
          end

          it 'yielded permissions should all be egress' do
            collection.all?{|obj| obj.egress? }.should == true
          end

          it 'should yield the right number of objects' do
            collection.to_a.size.should == 2
          end

          it 'should populate the correct information' do

            p1 = collection.to_a.first
            p1.protocol.should == :any
            p1.port_range.should == nil
            p1.ip_ranges.should == %w(1.1.1.1/1)
            p1.groups.should == []

            p2 = collection.to_a[1]
            p2.protocol.should == :tcp
            p2.port_range.should == (80..81)
            p2.ip_ranges.should == []
            p2.groups.should be_an(Array)
            p2.groups.size.should == 1
            p2.groups[0].should be_a(SecurityGroup)
            p2.groups[0].id.should == 'grp1-id'
            p2.groups[0].owner_id.should == 'grp1-user-id'
            p2.groups[0].vpc?.should == true

          end

        end

      end

    end
  end
end
