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
              {
                :ip_protocol => :tcp,
                :from_port => 80,
                :to_port => 81,
                :ip_ranges => [
                  { :cidr_ip => '1.1.1.1/1' },
                  { :cidr_ip => '2.2.2.2/2' },
                ],
                :groups => [
                  { :group_id => 'grp1-id', :user_id => 'grp1-user-id' },
                  { :group_id => 'grp2-id', :user_id => 'grp2-user-id' },
                ]
              },
            ]
          end

          before(:each) do
            resp = client.stub_for(:describe_security_groups)
            resp[:security_group_index][group.id] = {
              :security_group_id => group.id,
              :ip_permissions => ip_permissions
            }
            client.stub(:describe_security_groups).and_return(resp)
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
            perm.groups[0].owner_id.should == 'grp1-user-id'
            perm.groups[1].should be_a(SecurityGroup)
            perm.groups[1].id.should == 'grp2-id'
            perm.groups[1].owner_id.should == 'grp2-user-id'
          end

          it 'should properly execute include?' do
            perm = collection.to_a.first
            collection.include?(perm).should be(true)
          end

          context 'vpc security group without ports' do

            let(:ip_permissions) do
              [
                {
                  :ip_protocol => 39,
                  :ip_ranges => [
                    { :cidr_ip => '1.1.1.1/1' },
                    { :cidr_ip => '2.2.2.2/2' },
                  ],
                  :groups => []
                },
              ]
            end

            it 'should accept a permission without port ranges' do
              perm = collection.to_a.first
              perm.protocol.should == :"39"
              perm.port_range.should == nil
              perm.ip_ranges.should == %w(1.1.1.1/1 2.2.2.2/2)
            end

          end

        end

      end

    end
  end
end
