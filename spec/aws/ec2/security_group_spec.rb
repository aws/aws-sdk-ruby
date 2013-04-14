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

    describe SecurityGroup do

      let(:config) { stub_config }

      let(:client) { config.ec2_client }

      let(:group) { SecurityGroup.new('id', :config => config) }

      it_should_behave_like "an ec2 resource object"

      let(:response_id_field) { :group_id }
      let(:resource_id) { "id" }
      let(:describe_call) { :describe_security_groups }
      let(:describe_opts) { { :group_ids => ["id"] } }
      let(:instance) { group }

      def stub_member(resp, member)
        stub_response_group(resp, member[:group_id], member)
      end

      it_should_behave_like "a tagged ec2 item" do
        let(:taggable) { group }
        def stub_tags(resp, tags)
          stub_member(resp, { :group_id => "id", :tag_set => tags })
        end
      end

      def stub_response_group(resp, id, group)
        resp.data[:security_group_index] = { id => group }
      end

      context '#instances' do

        it 'returns a filtered instance collection' do
          group.stub(:vpc?).and_return(false)
          group.instances.should be_a(InstanceCollection)
          group.instances.config.should eq(config)
          client.should_receive(:describe_instances).
            with(:filters => [{:name => 'group-id',:values => [group.id]}]).
            and_return(client.stub_for(:describe_instances))
          group.instances.each {|i|}
        end

        it 'filteres differently for vpc security groups' do
          group.stub(:vpc?).and_return(true)
          client.should_receive(:describe_instances).
            with(:filters => [{:name => 'instance.group-id',:values => [group.id]}]).
            and_return(client.stub_for(:describe_instances))
          group.instances.each {|i|}
        end

      end

      context '#exists?' do
        let(:describe_call) { :describe_security_groups }
        let(:id_filter) { "group-id" }
        def stub_exists(resp)
          stub_response_group(resp, resource.id, {})
        end
        it_should_behave_like "ec2 resource exists method"
      end

      shared_examples_for("security group ingress method") do

        before(:each) do
          client.stub(client_method).and_return(client.stub_for(client_method))
        end

        it 'accepts ranges for ports and defaults ip ranges to 0.0.0.0/0' do
          client.should_receive(client_method).
            with(:group_id => 'id', :ip_permissions => [
              { :ip_protocol => 'tcp', :from_port => 20, :to_port => 22,
                :ip_ranges => [{ :cidr_ip => '0.0.0.0/0' }] }
            ])
          group.send(method, :tcp, 20..22)
        end

        it 'donwcases protocols and accepts ports as arrays' do
          client.should_receive(client_method).
            with(:group_id => 'id', :ip_permissions => [
              { :ip_protocol => 'tcp', :from_port => 22, :to_port => 22,
                :ip_ranges => [{ :cidr_ip => '0.0.0.0/0' }] }
            ])
          group.send(method, 'TCP', 22)
        end

        it 'accepts ip ranges as strings' do
          client.should_receive(client_method).
            with(:group_id => 'id', :ip_permissions => [
              { :ip_protocol => 'tcp', :from_port => 22, :to_port => 22,
                :ip_ranges => [
                  { :cidr_ip => '0.0.0.0/0' },
                  { :cidr_ip => '1.1.1.1/1' },
                ]
              }
            ])
          group.send(method, 'TCP', 22, '0.0.0.0/0', '1.1.1.1/1')
        end

        it 'accepts groups' do
          client.should_receive(client_method).
            with(:group_id => 'id', :ip_permissions => [
              { :ip_protocol => 'tcp', :from_port => 22, :to_port => 22,
                :user_id_group_pairs => [
                  { :group_id => 'foo', :user_id => 'bar' },
                ]
              }
            ])
          g1 = SecurityGroup.new('foo', :owner_id => 'bar')
          group.send(method, 'TCP', 22, g1)
        end

        it 'accepts group hashes' do
          client.should_receive(client_method).
            with(:group_id => 'id', :ip_permissions => [
              { :ip_protocol => 'tcp', :from_port => 22, :to_port => 22,
                :user_id_group_pairs => [
                  { :group_id => 'foo', :user_id => 'bar' },
                ]
              }
            ])
          group.send(method, 'TCP', 22,
            { :group_id => 'foo', :user_id => 'bar' })
        end

      end

      shared_examples_for("security group egress method") do

        before(:each) do
          client.stub(client_method).and_return(client.stub_for(client_method))
          group.stub(:vpc_id).and_return('vpc-123')
        end

        it 'returns a vpc' do
          group.vpc.should == VPC.new('vpc-123')
          group.vpc.config.should == group.config
        end

        it 'accepts ranges for ports and defaults ip ranges to 0.0.0.0/0' do
          client.should_receive(client_method).
            with(:group_id => 'id', :ip_permissions => [
              { :ip_protocol => 'tcp', :from_port => 20, :to_port => 22,
                :ip_ranges => [{ :cidr_ip => '0.0.0.0/0' }] }
            ])
          group.send(method, :ports => (20..22), :protocol => :tcp)
        end

        it 'donwcases protocols and accepts ports as arrays' do
          client.should_receive(client_method).
            with(:group_id => 'id', :ip_permissions => [
              { :ip_protocol => 'tcp', :from_port => 22, :to_port => 22,
                :ip_ranges => [{ :cidr_ip => '0.0.0.0/0' }] }
            ])
          group.send(method, :protocol => 'TCP', :ports => 22)
        end

        it 'accepts ip ranges as strings' do
          client.should_receive(client_method).
            with(:group_id => 'id', :ip_permissions => [
              { :ip_protocol => '-1', :ip_ranges => [
                  { :cidr_ip => '0.0.0.0/0' },
                  { :cidr_ip => '1.1.1.1/1' },
                ]
              }
            ])
          group.send(method, '0.0.0.0/0', '1.1.1.1/1')
        end

        it 'accepts groups' do
          client.should_receive(client_method).
            with(:group_id => 'id', :ip_permissions => [
              { :ip_protocol => '-1',
                :user_id_group_pairs => [
                  { :group_id => 'foo', :user_id => 'bar' },
                ]
              }
            ])
          g1 = SecurityGroup.new('foo', :owner_id => 'bar')
          group.send(method, g1)
        end

        it 'accepts group hashes with a group_id' do
          client.should_receive(client_method).
            with(:group_id => 'id', :ip_permissions => [
              { :ip_protocol => '-1',
                :user_id_group_pairs => [
                  { :group_id => 'foo' },
                ]
              }
            ])
          group.send(method, { :group_id => 'foo' })
        end

        it 'accepts group hashes with a group_name' do
          client.should_receive(client_method).
            with(:group_id => 'id', :ip_permissions => [
              { :ip_protocol => '-1',
                :user_id_group_pairs => [
                  { :group_name => 'foo' },
                ]
              }
            ])
          group.send(method, { :group_name => 'foo', })
        end

        it 'accepts group hashes with a group_id and user_id' do
          client.should_receive(client_method).
            with(:group_id => 'id', :ip_permissions => [
              { :ip_protocol => '-1',
                :user_id_group_pairs => [
                  { :group_id => 'foo', :user_id => 'bar' },
                ]
              }
            ])
          group.send(method, { :group_id => 'foo', :user_id => 'bar' })
        end

        it 'accepts group hashes with a group_name and user_id' do
          client.should_receive(client_method).
            with(:group_id => 'id', :ip_permissions => [
              { :ip_protocol => '-1',
                :user_id_group_pairs => [
                  { :group_name => 'foo', :user_id => 'bar' },
                ]
              }
            ])
          group.send(method, { :group_name => 'foo', :user_id => 'bar' })
        end

        it 'raises an error for missing group' do
          lambda {
            # must provide :group_id or :group_name
            group.send(method, { :user_id => 'bar' })
          }.should raise_error(ArgumentError, /provide :group_id or :group_name/)
        end

        it 'raises an error for unknown group keys' do
          lambda {
            # intentional typo
            group.send(method, { :group_id => 'foo', :usr_id => 'typo' })
          }.should raise_error(ArgumentError, /only accepts the following keys/)
        end

        it 'accepts a load balancer' do

          load_balancer = ELB::LoadBalancer.new('lb-name')
          load_balancer.stub(:source_security_group).
            and_return(
              :group_name => 'lb-group-name',
              :user_id => 'lb-owner-alias')

          client.should_receive(client_method).
            with(:group_id => 'id', :ip_permissions => [
              { :ip_protocol => '-1',
                :user_id_group_pairs => [
                  {
                    :group_name => 'lb-group-name',
                    :user_id => 'lb-owner-alias'
                  },
                ]
              }
            ])

          group.send(method, load_balancer)

        end

      end

      shared_examples_for "security group ping method" do

        it 'calls the client' do
          client.should_receive(client_method).
            with(:group_id => 'id', :ip_permissions => [
              { :ip_protocol => 'icmp', :from_port => -1, :to_port => -1,
                :ip_ranges => [{ :cidr_ip => '0.0.0.0/0' }] }
            ])
          group.send(method)
        end

        it 'should call authorize ingress pings for ip ranges' do
          client.should_receive(client_method).
            with(:group_id => 'id', :ip_permissions => [
              { :ip_protocol => 'icmp', :from_port => -1, :to_port => -1,
                :ip_ranges => [
                  { :cidr_ip => '123/123/123/123.0' },
                  { :cidr_ip => '129.168.1.5/0' },
                ]
              }
            ])
          group.send(method, '123/123/123/123.0', '129.168.1.5/0')
        end

      end

      context '#name' do

        it 'returns the name it was constructed with' do
          SecurityGroup.new('id', :name => 'name').name.should == 'name'
        end

        it 'calls describe_security_groups to get the name' do

          response = client.new_stub_for(:describe_security_groups)
          stub_response_group(response, "id", {
            :group_name => 'name',
            :owner_id => 'abc',
            :group_description => 'xyz',
          })

          client.should_receive(:describe_security_groups).
            with(:group_ids => ['id']).
            and_return(response)

          SecurityGroup.new('id', :config => config).name.should == 'name'

        end

        it 'raises an error when the security group cant be found' do
          lambda {
            SecurityGroup.new('id', :config => config).name
          }.should raise_error(/unable to find the security group/)
        end

      end

      context '#owner_id' do

        it 'returns the owner_id it was constructed with' do
          group = SecurityGroup.new('id', :owner_id => 'abc')
          group.owner_id.should == 'abc'
        end

        it 'calls describe_security_groups to get the owner_id' do

          response = client.stub_for(:describe_security_groups)
          stub_response_group(response, "id", {
            :group_name => 'name',
            :owner_id => 'abc',
            :group_description => 'xyz',
          })

          client.should_receive(:describe_security_groups).
            with(:group_ids => ['id']).
            and_return(response)

          SecurityGroup.new('id', :config => config).owner_id.
            should == 'abc'

        end

        it 'raises an error when the security group cant be found' do
          lambda {
            SecurityGroup.new('id', :config => config).owner_id
          }.should raise_error(/unable to find the security group/)
        end

      end

      context '#description' do

        it 'returns the description it was constructed with' do
          group = SecurityGroup.new('id', :description => 'desc')
          group.description.should == 'desc'
        end

        it 'calls describe_security_groups to get the desc when missing' do

          response = client.stub_for(:describe_security_groups)
          stub_response_group(response, "id", {
            :group_name => 'name',
            :owner_id => 'abc',
            :group_description => 'xyz'
          })

          client.should_receive(:describe_security_groups).
            with(:group_ids => ['id']).
            and_return(response)

          SecurityGroup.new('id', :config => config).description.
            should == 'xyz'

        end

        it 'raises an error when the security group cant be found' do
          lambda {
            SecurityGroup.new('name', :config => config).description
          }.should raise_error(/unable to find the security group/)
        end

      end

      context '#authorize_ingress' do
        it_behaves_like "security group ingress method" do
          let(:method) { :authorize_ingress }
          let(:client_method) { :authorize_security_group_ingress }
        end
      end

      context '#revoke_ingress' do
        it_behaves_like "security group ingress method" do
          let(:method) { :revoke_ingress }
          let(:client_method) { :revoke_security_group_ingress }
        end
      end

      context '#authorize_egress' do
        it_behaves_like "security group egress method" do
          let(:method) { :authorize_egress }
          let(:client_method) { :authorize_security_group_egress }
        end
      end

      context '#revoke_egress' do
        it_behaves_like "security group egress method" do
          let(:method) { :revoke_egress }
          let(:client_method) { :revoke_security_group_egress }
        end
      end

      context '#allow_ping' do
        it_behaves_like "security group ping method" do
          let(:method) { :allow_ping }
          let(:client_method) { :authorize_security_group_ingress }
        end
      end

      context '#disallow_ping' do
        it_behaves_like "security group ping method" do
          let(:method) { :disallow_ping }
          let(:client_method) { :revoke_security_group_ingress }
        end
      end

      context '#ip_permissions_list' do
        let(:attribute) { :ip_permissions_list }
        let(:response_field) { :ip_permissions }
        let(:response_value) { [] }
        let(:translated_value) { response_value }
        it_should_behave_like "ec2 resource attribute accessor (describe call)"
      end

      context '#ip_permissions' do
        it 'should return an ip permission collection' do
          collection = group.ip_permissions
          collection.should be_a(SecurityGroup::IpPermissionCollection)
          collection.security_group.should be(group)
          collection.config.should be(config)
        end
      end

      context '#<=>' do

        it 'sorts security groups by their ids' do
          g1 = SecurityGroup.new('a')
          g2 = SecurityGroup.new('b')
          g3 = SecurityGroup.new('c')
          [g3,g2,g1].sort.should eq([g1, g2, g3])
        end

      end

      context '#delete' do

        it 'calls #delete_security_group on the client with the correct id' do
          client.should_receive(:delete_security_group).
            with(:group_id => group.id)
          group.delete
        end

      end

    end
  end
end
