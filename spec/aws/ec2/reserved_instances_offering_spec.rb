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
    describe ReservedInstancesOffering do

      let(:config) { stub_config }

      let(:client) { config.ec2_client }

      let(:offering) { ReservedInstancesOffering.new('id', :config => config) }

      it_should_behave_like "an ec2 resource object"

      let(:describe_call) { :describe_reserved_instances_offerings }

      let(:describe_opts) { { :reserved_instances_offering_ids => ["id"] } }

      let(:response_id_field) { :reserved_instances_offering_id }

      let(:resource_id) { 'id' }

      let(:instance) { offering }

      def stub_member(response, member)
        response.data[:reserved_instances_offerings_set] = [member]
      end

      it_should_behave_like "a tagged ec2 item" do
        let(:taggable) { offering }
        def stub_tags(resp, tags)
          stub_member(resp,
            :reserved_instances_offering_id => "id",
            :tag_set => tags)
        end
      end

      it_should_behave_like "it has reserved instance attributes"

      context '#purchase' do

        before(:each) do
          response = client.stub_for(:purchase_reserved_instances_offering)
          response.stub(:reserved_instances_id).and_return('12345')
          client.stub(:purchase_reserved_instances_offering).and_return(response)
        end

        it 'calls purchase_reserved_instances_offering on the client' do
          client.should_receive(:purchase_reserved_instances_offering).
            with(hash_including(:reserved_instances_offering_id => offering.id))
          offering.purchase
        end

        it 'defaults instance_count to 1' do
          client.should_receive(:purchase_reserved_instances_offering).
            with(hash_including(:instance_count => 1))
          offering.purchase
        end

        it 'accepts instance_count' do
          client.should_receive(:purchase_reserved_instances_offering).
            with(hash_including(:instance_count => 2))
          offering.purchase(:instance_count => 2)
        end

        it 'returns a reserved instance' do
          reservation = offering.purchase
          reservation.should be_a(ReservedInstances)
        end

        it 'returns a reserved instance with the correct id' do
          reservation = offering.purchase
          reservation.id.should == '12345'
        end

        it 'returns a reserved instance with the correct config' do
          reservation = offering.purchase
          reservation.config.should == offering.config
        end

      end

    end
  end
end
