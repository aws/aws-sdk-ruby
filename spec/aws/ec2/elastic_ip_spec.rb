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
        resp.stub(:address_index).
          and_return(Hash[[[member.public_ip, member]]])
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

      context '#associated?' do

        it 'returns false when :instance_id is not set' do
          ip.stub(:instance_id).and_return(nil)
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
          ip.delete  
        end

      end

      context '#release' do

        it 'should be an alias of delete' do
          ip.method(:release).should == ip.method(:delete)
        end

      end

      context '#disassociate' do

        it 'calls disassociate_address on the client' do
          client.should_receive(:disassociate_address).
            with(:public_ip => ip.public_ip)
          ip.disassociate
        end

      end

    end
  end
end
