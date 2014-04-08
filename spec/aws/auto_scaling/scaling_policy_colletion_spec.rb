
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
  class AutoScaling
    describe ScalingPolicyCollection do

      let(:config) { stub_config }

      let(:client) { config.auto_scaling_client }

      let(:group) { Group.new('group-name', :config => config) }

      let(:policies) { ScalingPolicyCollection.new(group) }

      context '#group' do

        it 'returns the group' do
          policies.group.should == group
        end

        it 'is aliased as auto_scaling_group' do
          policies.auto_scaling_group.should == policies.group
        end

      end

      context '#create' do

        let(:response) { client.stub_for(:put_scaling_policy) }

        before(:each) do
          response.data[:policy_arn] = 'arn'
          client.stub(:put_scaling_policy).and_return(response)
        end

        it 'calls #put_policy on the client' do

          client.should_receive(:put_scaling_policy).with(
            :auto_scaling_group_name => group.name,
            :policy_name => 'name',
            :adjustment_type => 'type',
            :scaling_adjustment => 1,
            :min_adjustment_step => 2,
            :cooldown => 10)

          policies.create('name',
            :adjustment_type => 'type',
            :scaling_adjustment => 1,
            :min_adjustment_step => 2,
            :cooldown => 10)

        end

        it 'returns a scaling policy' do

          policy = policies.create('name',
            :adjustment_type => 'type',
            :scaling_adjustment => 1)

          policy.should be_a(ScalingPolicy)
          policy.name.should == 'name'
          policy.group.should == group
          policy.config.should == config

        end

        it 'populates the policy arn' do
          policy = policies.create('name',
            :adjustment_type => 'type',
            :scaling_adjustment => 1)
          policy.arn.should == 'arn'
        end

      end

      context '#[]' do

        it 'returns a scaling policy' do
          policies['name'].should be_a(ScalingPolicy)
        end

        it 'returns a scaling policy with the proper name' do
          policies['name'].name.should == 'name'
        end

        it 'returns a scaling policy with the proper group' do
          policies['name'].group.should == group
        end

        it 'returns a scaling policy with the proper config' do
          policies['name'].config.should == group.config
        end

      end

      it_behaves_like "a pageable collection with limits" do

        let(:collection)      { policies }
        let(:client_method)   { :describe_policies }
        let(:next_token_key)  { :next_token }
        let(:limit_key)       { :max_records }
        let(:request_options) {{ :auto_scaling_group_name => group.name }}

        def stub_next_token(response, token)
          response.data[:next_token] = token
        end

        def stub_n_members response, n
          response.data[:scaling_policies] = (1..n).map{|i|
            {
              :policy_name => i.to_s,
              :auto_scaling_group_name => group.name,
            }
          }
        end

      end

    end
  end
end
