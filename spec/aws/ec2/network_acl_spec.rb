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
    describe NetworkACL do

      let(:config) { stub_config }

      let(:client) { config.ec2_client }

      let(:network_acl) { NetworkACL.new('acl-id', :config => config) }

      it_should_behave_like "an ec2 resource object"

      context '#network_acl_id' do

        it 'returns the network acl id passed in' do
          network_acl.network_acl_id.should == 'acl-id'
        end

        it 'is aliased as #id' do
          network_acl.id.should == network_acl.network_acl_id
        end

      end

      context '#create_entry' do

        let(:response) { client.stub_for(:create_network_acl_entry) }

        it 'calls create entry on the client' do
          client.should_receive(:create_network_acl_entry).with(
            :network_acl_id => network_acl.id,
            :rule_number => 15,
            :protocol => '5',
            :rule_action => 'allow',
            :egress => false,
            :cidr_block => '10.0.0.0/16',
            :port_range => { :from => 20, :to => 22 }
          ).and_return(response)

          network_acl.create_entry(
            :rule_number => 15,
            :protocol => 5,
            :action => :allow,
            :egress => false,
            :cidr_block => '10.0.0.0/16',
            :port_range => 20..22)
        end

        it 'accpets icmp codes and types' do
          client.should_receive(:create_network_acl_entry).with(hash_including(
            :icmp_type_code => {
              :type => 1,
              :code => 2,
            }
          )).and_return(response)

          network_acl.create_entry(
            :rule_number => 15,
            :protocol => 5,
            :action => :allow,
            :egress => false,
            :cidr_block => '10.0.0.0/16',
            :icmp_type => 1,
            :icmp_code => 2)

        end

        it 'raises an error if I omit :egress' do
          lambda {
            network_acl.create_entry
          }.should raise_error(ArgumentError, /expected :egress/)
        end

      end

      context '#replace_entry' do

        let(:response) { client.stub_for(:replace_network_acl_entry) }

        it 'calls replace entry on the client' do
          client.should_receive(:replace_network_acl_entry).with(
            :network_acl_id => network_acl.id,
            :rule_number => 15,
            :protocol => 'tcp',
            :rule_action => 'allow',
            :egress => false,
            :cidr_block => '10.0.0.0/16',
            :port_range => { :from => 20, :to => 22 }
          ).and_return(response)

          network_acl.replace_entry(
            :rule_number => 15,
            :protocol => :tcp,
            :action => :allow,
            :egress => false,
            :cidr_block => '10.0.0.0/16',
            :port_range => 20..22)
        end

      end

      context '#delete_entry' do

        it 'can be used to delete ingress entries' do
          client.should_receive(:delete_network_acl_entry).with(
            :network_acl_id => network_acl.id,
            :egress => false,
            :rule_number => 1)
          network_acl.delete_entry(:ingress, 1)
        end

        it 'can be used to delete egress entries' do
          client.should_receive(:delete_network_acl_entry).with(
            :network_acl_id => network_acl.id,
            :egress => true,
            :rule_number => 2)
          network_acl.delete_entry(:egress, 2)
        end

      end

      context '#delete' do

        it 'calls delete on the client' do
          client.should_receive(:delete_network_acl).
            with(:network_acl_id => network_acl.id)
          network_acl.delete
        end

      end

      context 'attributes' do

        let(:response) { client.stub_for(:describe_network_acls) }

        let(:entry_data) {{
          :rule_number => 10,
          :protocol => '5',
          :rule_action => 'allow',
          :egress => true,
          :cidr_block => '10.0.0.0/16',
          :icmp_type_code => { :type => 1, :code => 2 },
          :port_range => { :from => 20, :to => 22 },
        }}

        let(:association_data) {{
          :network_acl_association_id => 'assoc-id',
          :network_acl_id => network_acl.id,
          :subnet_id => 'subnet-id',
        }}

        let(:acl_data) {{
          :network_acl_id => 'acl-id',
          :vpc_id => 'vpc-id',
          :default => true,
          :entry_set => [entry_data],
          :association_set => [association_data],
        }}

        before(:each) do
          response.data[:network_acl_set] = [acl_data]
          client.stub(:describe_network_acls).and_return(response)
        end

        context '#vpc_id' do

          it 'returns the vpc id of the network acl' do
            network_acl.vpc_id.should == 'vpc-id'
          end

        end

        context '#default?' do

          it 'returns the default attribute as a boolean' do
            network_acl.default?.should == true
          end

          it 'returns the default attribute as a boolean' do
            acl_data[:default] = false
            network_acl.default?.should == false
          end

        end

        context '#entries' do

          it 'returns an array of entries' do
            network_acl.entries[0].should be_a(NetworkACL::Entry)
            network_acl.entries.size.should == 1
          end

          it 'returns populated entries' do
            entry = network_acl.entries.first
            entry.network_acl.should == network_acl
            entry.rule_number.should == 10
            entry.protocol.should == 5
            entry.action.should == :allow
            entry.egress?.should == true
            entry.ingress?.should == false
            entry.cidr_block.should == '10.0.0.0/16'
            entry.icmp_type.should == 1
            entry.icmp_code.should == 2
            entry.port_range.should be_a(Range)
            entry.port_range.first.should == 20
            entry.port_range.last.should == 22
          end

        end

        context '#associations' do

          it 'returns an array of associations' do
            network_acl.associations[0].should be_a(NetworkACL::Association)
            network_acl.associations.size.should == 1
          end

          it 'returns populated associations' do
            assoc = network_acl.associations.first
            assoc.network_acl.should == network_acl
            assoc.subnet.should be_a(Subnet)
            assoc.subnet.subnet_id.should == 'subnet-id'
            assoc.subnet.vpc_id.should == 'vpc-id'
            assoc.subnet.config.should == network_acl.config
          end

          it 'is used for yielding subnets' do
            subnet = Subnet.new('subnet-id', :config => config)
            network_acl.subnets.should == [subnet]
          end

        end

      end

    end
  end
end
