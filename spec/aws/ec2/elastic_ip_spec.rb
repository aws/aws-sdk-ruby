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

    describe ElasticIp do

      let(:config) { stub_config }

      let(:client) { config.ec2_client }

      let(:ip) { ElasticIp.new('1.1.1.1', :config => config) }

      it_should_behave_like "an ec2 resource object"

      let(:describe_call) { :describe_addresses }

      let(:describe_opts) { { :public_ips => ["1.1.1.1"] } }

      let(:response_id_field) { :public_ip }

      let(:resource_id) { "1.1.1.1" }

      let(:instance) { ip }

      def stub_member(resp, member)
        resp.data[:address_index] = { member[:public_ip] => member }
      end

      context '#public_ip' do

        it 'returns the ip address' do
          ip.public_ip.should == '1.1.1.1'
        end

      end

      context '#instance_id' do

        let(:attribute) { :instance_id }
        let(:response_field) { attribute }
        let(:response_value) { "i-123" }
        let(:translated_value) { response_value }
        it_should_behave_like "ec2 resource attribute accessor (describe call)"

      end

      context '#allocation_id' do
      end

      context '#domain' do
      end

      context '#association_id' do
      end

      context '#network_interface_id' do
      end

      context '#network_interface_owner_id' do
      end

      context '#vpc?' do

        it 'returns true when the domain is vpc' do
          ip.stub(:domain).and_return('vpc')
          ip.vpc?.should == true
        end

        it 'returns false when the domain is not vpc' do
          ip.stub(:domain).and_return('standard')
          ip.vpc?.should == false
        end

      end

      context '#associated?' do

        it 'returns false when :instance_id and :association_id are not set' do
          ip.stub(:instance_id).and_return(nil)
          ip.stub(:association_id).and_return(nil)
          ip.associated?.should == false
        end

        it 'returns true when :instance_id is set' do
          ip.stub(:instance_id).and_return("something")
          ip.associated?.should == true
        end

      end

      context '#instance' do
        let(:accessor) { :instance }
        let(:id_accessor) { :instance_id }
        let(:resource_class) { Instance }
        it_should_behave_like "accessor for ec2 resource"
      end

      context '#delete' do

        it 'calls release_address on the client' do

          client.should_receive(:release_address).
            with(:public_ip => ip.public_ip)

          ip.stub(:domain).and_return('standard')
          ip.delete

        end

        it 'calls release_address on the client with the association id' do

          client.should_receive(:release_address).
            with(:allocation_id => 'allocation-id')

          ip.stub(:domain).and_return('vpc')
          ip.stub(:allocation_id).and_return('allocation-id')
          ip.delete

        end

      end

      context '#release' do

        it 'should be an alias of delete' do
          ip.method(:release).should == ip.method(:delete)
        end

      end

      context '#associate' do

        let(:resp) { client.stub_for(:associate_address) }

        before(:each) do
          resp.data[:association_id] = 'assoc-id'
          client.stub(:associate_address).and_return(resp)
        end

        context 'vpc elastic ips' do

          let(:ip) {
            ElasticIp.new('1.1.1.1',
              :domain => 'vpc',
              :allocation_id => 'alloc-id',
              :config => config)
          }

          it 'accpets :instance with an instance object' do

            client.should_receive(:associate_address).with(
              :allocation_id => 'alloc-id',
              :instance_id => 'i-12345678')

            ip.associate :instance => Instance.new('i-12345678')

          end

          it 'accpets :instance with an instance id' do

            client.should_receive(:associate_address).with(
              :allocation_id => 'alloc-id',
              :instance_id => 'i-12345678')

            ip.associate :instance => 'i-12345678'

          end

          it 'accpets :network_interface with an id' do

            client.should_receive(:associate_address).with(
              :allocation_id => 'alloc-id',
              :network_interface_id => 'ni-12345678')

            ip.associate :network_interface => 'ni-12345678'

          end

          it 'accpets :network_interface with an object' do

            client.should_receive(:associate_address).with(
              :allocation_id => 'alloc-id',
              :network_interface_id => 'ni-12345678')

            ip.associate :network_interface => NetworkInterface.new('ni-12345678')

          end

        end

        context 'regular elastic ips' do

          let(:ip) {
            ElasticIp.new('1.1.1.1', :domain => 'standard', :config => config)
          }

          it 'accpets :instance with an instance object' do

            client.should_receive(:associate_address).with(
              :public_ip => '1.1.1.1',
              :instance_id => 'i-12345678')

            ip.associate :instance => Instance.new('i-12345678')

          end

          it 'accpets :instance with an instance id' do

            client.should_receive(:associate_address).with(
              :public_ip => '1.1.1.1',
              :instance_id => 'i-12345678')

            ip.associate :instance => 'i-12345678'

          end

          it 'returns the association id' do
            ip.associate(:instance => 'i-12345678').should == 'assoc-id'
          end

        end

      end

      context '#disassociate' do

        it 'calls disassociate_address on the client' do
          client.should_receive(:disassociate_address).
            with(:public_ip => ip.public_ip)
          ip.stub(:domain).and_return('stanrdard')
          ip.disassociate
        end

        it 'passes the allocation id for vpc elastic ips' do
          client.should_receive(:disassociate_address).
            with(:association_id => 'assoc-id')
          ip.stub(:domain).and_return('vpc')
          ip.stub(:association_id).and_return('assoc-id')
          ip.disassociate
        end

      end

    end
  end
end
