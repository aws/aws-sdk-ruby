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
    describe LoadBalancerPolicy do

      let(:config) { stub_config }

      let(:client) { config.elb_client }

      let(:load_balancer) { LoadBalancer.new('lb-name', :config => config) }

      let(:policy) { described_class.new(load_balancer, 'policy-name') }

      context '#name' do

        it 'is returned from init' do
          described_class.new(load_balancer, :name).name.should == 'name'
        end

      end

      context '#type' do

        it 'can be passed to init' do
          described_class.new(load_balancer, 'name', :type => 'type').
            type.should == 'type'
        end

        it 'is requested when unknown' do

          response = client.stub_for(:describe_load_balancer_policies)
          response.request_options[:load_balancer_name] = load_balancer.name
          response.data[:policy_descriptions] = [
            { :policy_name => 'name', :policy_type_name => 'TYPE' },
          ]

          described_class.new(load_balancer, 'name').type.should == 'TYPE'
        end

      end

      context '#attributes' do

        let(:response) { client.stub_for(:describe_load_balancer_policies) }

        before(:each) do
          response.request_options[:load_balancer_name] = load_balancer.name
          response.data[:policy_descriptions] = [
            {
              :policy_name => policy.name,
              :policy_type_name => 'PolicyTypeName',
              :policy_attribute_descriptions => [
                { :attribute_name => 'a1', :attribute_value => 'v1' },
                { :attribute_name => 'a2', :attribute_value => 'v2' },
                { :attribute_name => 'a2', :attribute_value => 'v3' },
              ]
            },
          ]
          client.stub(:describe_load_balancer_policies).and_return(response)
        end

        it 'calls describe_load_balancer_policies to get attributes' do

          client.should_receive(:describe_load_balancer_policies).with(
            :load_balancer_name => load_balancer.name
          ).and_return(response)

          policy.attributes.should == {
            'a1' => %w(v1),
            'a2' => %w(v2 v3),
          }

        end

      end

      context '#delete' do

        it 'calls delete_load_balancer_policy' do
          client.should_receive(:delete_load_balancer_policy).with(
            :load_balancer_name => load_balancer.name,
            :policy_name => policy.name)
          policy.delete
        end

      end

      context '#exists?' do

        it 'returns false if the load balancer does not exist' do
          client.should_receive(:describe_load_balancer_policies).
            with(:load_balancer_name => load_balancer.name).
            and_raise(AWS::ELB::Errors::LoadBalancerNotFound)
          policy.exists?.should == false
        end

        it 'returns false if the policy does not exist' do
          response = client.stub_for(:describe_load_balancer_policies)
          response.request_options[:load_balancer_name] = load_balancer.name
          response.data[:policy_descriptions] = []
          policy.exists?.should == false
        end

        it 'returns true if the policy exists' do
          response = client.stub_for(:describe_load_balancer_policies)
          response.request_options[:load_balancer_name] = load_balancer.name
          response.data[:policy_descriptions] = [
            { :policy_name => policy.name },
          ]
          policy.exists?.should == true
        end

      end

    end
  end
end
