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
  class ELB

    describe BackendServerPolicyCollection do

      let(:config) { stub_config }

      let(:client) { config.elb_client }

      let(:load_balancer) { LoadBalancer.new('lb-name', :config => config) }

      let(:policies) { described_class.new(load_balancer) }

      before(:each) do
        response = client.stub_for(:describe_load_balancers)
        response.data[:load_balancer_descriptions] = [
          {
            :load_balancer_name => load_balancer.name,
            :backend_server_descriptions => [
              {
                :instance_port => 80,
                :policy_names => %w(abc),
              }, {
                :instance_port => 81,
                :policy_names => %w(xyz),
              },
            ]
          },
        ]
        client.stub(:describe_load_balancers).and_return(response)
      end

      context '#[]' do

        it 'calls #describe_load_balancers to get the policy' do
          policies[80].should == load_balancer.policies['abc']
          policies[81].should == load_balancer.policies['xyz']
        end

        it 'returns nil if there was no policy' do
          policies[82].should == nil
        end

      end


      context '#[]=' do

        it 'calls #set_load_balancer_policies_for_backend_server' do

          client.should_receive(:set_load_balancer_policies_for_backend_server).
            with(
              :load_balancer_name => load_balancer.name,
              :instance_port => 80,
              :policy_names => %w(abc))

            policies[80] = 'abc'

        end

        it 'accepts policy objects' do

          client.should_receive(:set_load_balancer_policies_for_backend_server).
            with(
              :load_balancer_name => load_balancer.name,
              :instance_port => 80,
              :policy_names => %w(abc))

            policies[80] = load_balancer.policies['abc']

        end

        it 'accepts nil to remove a policy' do

          client.should_receive(:set_load_balancer_policies_for_backend_server).
            with(
              :load_balancer_name => load_balancer.name,
              :instance_port => 80,
              :policy_names => [])

            policies[80] = nil

        end

      end

      context '#each' do

        it 'yields policies' do
          policies.to_a.should == [
            load_balancer.policies['abc'],
            load_balancer.policies['xyz'],
          ]
        end

      end

    end
  end
end
