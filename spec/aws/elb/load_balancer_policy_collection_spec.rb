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

    describe LoadBalancerPolicyCollection do

      let(:config) { stub_config }

      let(:client) { config.elb_client }

      let(:load_balancer) { LoadBalancer.new('lb-name', :config => config) }

      let(:policies) { described_class.new(load_balancer) }

      context '#create' do

        it 'calls #create_load_balancer_policy' do

          client.should_receive(:create_load_balancer_policy).with do |opts|
            opts[:load_balancer_name].should ==  load_balancer.name
            opts[:policy_name].should == 'policy-name'
            opts[:policy_type_name].should ==  'policy-type-name'
            opts[:policy_attributes].sort_by do |a|
              a[:attribute_name] + a[:attribute_value]
            end.should == [
              { :attribute_name => 'attr1', :attribute_value => 'value1' },
              { :attribute_name => 'attr2', :attribute_value => 'value2' },
              { :attribute_name => 'attr2', :attribute_value => 'value3' },
              { :attribute_name => 'attr3', :attribute_value => 'true' },
              { :attribute_name => 'attr4', :attribute_value => 'false' },
            ]
          end

          policies.create('policy-name', 'policy-type-name', {
            'attr1' => 'value1',
            'attr2' => ['value2', 'value3'],
            'attr3' => true,
            'attr4' => false,
          })

        end

        it 'returns a policy object' do
          policy = policies.create('name', 'type', {})
          policy.should be_a(LoadBalancerPolicy)
          policy.name.should == 'name'
          policy.type.should == 'type'
          policy.config.should == config
        end

      end

      context '#[]' do

        it 'returns a load balancer policy' do
          policies['name'].should be_a(LoadBalancerPolicy)
        end

        it 'returns a load balancer policy with the proper name' do
          policies[:name].name.should == 'name'
        end

        it 'returns a load balancer policy with the proper config' do
          policies['name'].config.should == config
        end

        it 'returns a load balancer policy with the proper load balancer' do
          policies['name'].load_balancer.should == policies.load_balancer
        end

      end

      context '#each' do

        let(:response) { client.stub_for(:describe_load_balancer_policies) }

        before(:each) do
          response.data[:policy_descriptions] = [
            {
              :policy_name => 'abc-policy',
              :policy_type_name => 'AbcPolicyType',
              :policy_attribute_descriptions => [],
            }, {
              :policy_name => 'xyz-policy',
              :policy_type_name => 'XyzPolicyType',
              :policy_attribute_descriptions => [],
            },
          ]
          client.stub(:describe_load_balancer_policies).and_return(response)
        end

        it 'calls describe load balancer policies' do

          client.should_receive(:describe_load_balancer_policies).with(
            :load_balancer_name => load_balancer.name
          ).and_return(response)

          policies.each {|p|}

        end

        it 'appects extra optins like policy names' do

          client.should_receive(:describe_load_balancer_policies).with(
            :load_balancer_name => load_balancer.name,
            :policy_type_names => ['abc-policy', 'xyz-policy']
          ).and_return(response)

          policies.each(:policy_type_names => ['abc-policy', 'xyz-policy']) {|p|}

        end

        it 'yield load balancer policies' do
          policies.collect(&:name).should == ['abc-policy', 'xyz-policy']
        end

      end

    end
  end
end
