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
    describe NetworkInterface do

      let(:config) { stub_config }

      let(:client) { config.ec2_client }

      let(:network_interface) { NetworkInterface.new('ni-id', :config => config) }

      it_should_behave_like "an ec2 resource object"

      context '#network_interface_id' do

        it 'returns the route table id passed in' do
          network_interface.network_interface_id.should == 'ni-id'
        end

        it 'is aliased as #id' do
          network_interface.id.should == network_interface.network_interface_id
        end

      end

      context '#vpc' do

        it 'returns the vpc' do
          network_interface = NetworkInterface.new('ni-id', :vpc_id => 'vpc-id', :config => config)
          network_interface.vpc.should be_a(VPC)
          network_interface.vpc.vpc_id.should == 'vpc-id'
          network_interface.vpc.config.should == network_interface.config
        end

      end

      context '#subnet' do

        it 'returns the subnet' do
          network_interface = NetworkInterface.new('ni-id',
            :vpc_id => 'vpc-id',
            :subnet_id => 'subnet-id',
            :config => config)

          network_interface.subnet.should be_a(Subnet)
          network_interface.subnet.subnet_id.should == 'subnet-id'
          network_interface.subnet.config.should == network_interface.config
        end

      end

      context '#attach' do

        it 'calls #attach_network_interface on the client' do
          client.should_receive(:attach_network_interface).with(
            :network_interface_id => network_interface.id,
            :instance_id => 'i-123',
            :device_index => 1)
          network_interface.attach('i-123')
        end

        it 'accepts instances' do
          instance = Instance.new('i-123')
          client.should_receive(:attach_network_interface).with(
            :network_interface_id => network_interface.id,
            :instance_id => instance.id,
            :device_index => 1)
          network_interface.attach(instance)
        end

        it 'accepts a device index' do
          client.should_receive(:attach_network_interface).with(
            :network_interface_id => network_interface.id,
            :instance_id => 'i-123',
            :device_index => 2)
          network_interface.attach('i-123', :device_index => 2)
        end

      end

      context 'existing network interface' do

        let(:now) { Time.now }

        let(:attachment) {{
          :attachment_id => 'attachment-id',
          :instance_id => 'i-123',
          :instance_owner_id => 'instance-owner-id',
          :device_index => 0,
          :status => 'attached',
          :attach_time => now,
          :delete_on_termination => true,
        }}

        let(:groups) {[
          { :group_id => 'sg-123', :group_name => 'sg-1-name' },
          { :group_id => 'sg-321', :group_name => 'sg-2-name' },
        ]}

        let(:details) {{
          :network_interface_id => network_interface.id,
          :vpc_id => 'vpc-12345',
          :subnet_id => 'subnet-id',
          :description => 'desc',
          :owner_id => 'owner-id',
          :status => 'pending',
          :private_ip_address => '1.2.3.4',
          :private_dns_name => 'private-dns-name',
          :source_dest_check => true,
          :attachment => attachment,
          :groups => groups,
        }}

        let(:response) { client.stub_for(:describe_network_interfaces) }

        before(:each) do
          response.data[:network_interface_set] = [details]
          response.stub(:describe_network_interfaces).and_return(response)
        end

        context '#detach' do

          it 'raises an error if there is no attachment' do
            details.delete(:attachment)
            lambda {
              network_interface.detach
            }.should raise_error(/unable to detach/)
          end

          it 'calls #detach_network_interface on the client' do
            client.should_receive(:detach_network_interface).with(
              :attachment_id => attachment[:attachment_id],
              :force => false)
            network_interface.detach
          end

          it 'accepts a force option' do
            client.should_receive(:detach_network_interface).with(
              :attachment_id => attachment[:attachment_id],
              :force => true)
            network_interface.detach :force => true
          end

        end

        context '#security_groups' do

          let(:groups) {[
            { :group_id => 'sg-123', :group_name => 'sg-1-name' },
            { :group_id => 'sg-321', :group_name => 'sg-2-name' },
          ]}

          it 'returns security groups' do
            sg = network_interface.security_groups
            sg[0].should be_a(SecurityGroup)
            sg[0].id.should == 'sg-123'
            sg[0].name.should == 'sg-1-name'
            sg[0].config.should == network_interface.config
            sg[1].should be_a(SecurityGroup)
            sg[1].id.should == 'sg-321'
            sg[1].name.should == 'sg-2-name'
            sg[1].config.should == network_interface.config
          end

        end

        context '#set_security_groups' do

          it 'calls #modify_network_interface_attribute on the client' do
            client.should_receive(:modify_network_interface_attribute).with(
              :network_interface_id => network_interface.id,
              :groups => %w(sg1 sg2))
            network_interface.set_security_groups('sg1', 'sg2')
          end

          it 'accepts and flattens an array of security group ids' do
            client.should_receive(:modify_network_interface_attribute).with(
              :network_interface_id => network_interface.id,
              :groups => %w(sg1 sg2))
            network_interface.set_security_groups(%w(sg1 sg2))
          end

          it 'accepts security group objects' do
            client.should_receive(:modify_network_interface_attribute).with(
              :network_interface_id => network_interface.id,
              :groups => %w(sg1 sg2))
            network_interface.set_security_groups([
              SecurityGroup.new('sg1'),
              SecurityGroup.new('sg2'),
            ])
          end

        end

        context '#attachment' do

          it 'returns an attachment' do
            attachment = network_interface.attachment
            attachment.attachment_id.should == 'attachment-id'
            attachment.device_index.should == 0
            attachment.status.should == :attached
            attachment.attach_time.should == now
            attachment.delete_on_termination?.should == true
            attachment.instance.should be_an(Instance)
            attachment.instance_owner_id.should == 'instance-owner-id'
          end

        end

        context "#association" do

          let(:assoc) {{
            :public_ip => '1.2.3.4',
            :ip_owner_id => '12345',
            :association_id => "eipassoc-12345",
          }}

          it 'returns nil when not present' do
            network_interface.association.should == nil
            network_interface.elastic_ip.should == nil
          end

          it 'returns a hash of data when present' do
            details[:association] = assoc
            network_interface.association.should == assoc
          end

          it 'returns an elastic ip when present' do
            details[:association] = assoc
            ip = network_interface.elastic_ip
            ip.should be_an(ElasticIp)
            ip.public_ip.should == assoc[:public_ip]
            ip.config.should == config
          end

        end

        context '#exists?' do

          it 'returns true if it can be described' do
            network_interface.exists?.should == true
          end

          it 'returns false if an error is raised trying to describe it' do
            client.stub(:describe_network_interfaces).
              and_raise(Errors::InvalidNetworkInterfaceID::NotFound)
            network_interface.exists?.should == false
          end

        end

        context '#instance' do

          it 'returns the attachment instance' do
            instance = network_interface.instance
            instance.id.should == 'i-123'
            instance.owner_id.should == 'instance-owner-id'
            instance.config.should == network_interface.config
          end

        end

        context '#delete' do

          it 'calls delete_network_interface on the client' do
            client.should_receive(:delete_network_interface).with(
              :network_interface_id => network_interface.id)
            network_interface.delete
          end

        end

      end
    end
  end
end
