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
    describe ScalingPolicy do

      let(:config) { stub_config }

      let(:client) { config.auto_scaling_client }

      let(:group) { Group.new('group', :config => config) }

      let(:policy) { ScalingPolicy.new(group, 'name') }

      let(:response) { client.stub_for(:describe_policies) }

      before(:each) do
        response.data[:scaling_policies] = [
          {
            :auto_scaling_group_name => group.name,
            :policy_name => policy.name,
            :policy_arn => 'arn',
            :adjustment_type => 'type',
            :scaling_adjustment => 1,
            :min_adjustment_step => 2,
            :alarms => [
              { :alarm_name => 'name1', :alarm_arn => 'arn1' },
              { :alarm_name => 'name2', :alarm_arn => 'arn2' },
            ],
            :cooldown => 10,
          }
        ]
        client.stub(:describe_policies).and_return(response)
      end

      context '#name' do

        it 'is set in the constructor' do
          policy.name.should == 'name'
        end

      end

      context '#arn' do

        it 'returns the described arn' do
          policy.arn.should == 'arn'
        end

      end

      context '#adjustment_type' do

        it 'returns the described adjustment type' do
          policy.adjustment_type.should == 'type'
        end

      end

      context '#scaling_adjustment' do

        it 'returns the described scaling adjustment' do
          policy.scaling_adjustment.should == 1
        end

      end

      context '#min_adjustment_step' do

        it 'returns the min adjustment step' do
          policy.min_adjustment_step.should == 2
        end

      end

      context '#cooldown' do

        it 'returns the described cooldown' do
          policy.cooldown.should == 10
        end

      end

      context '#alarms' do

        it 'returns the alarms in a hash' do
          policy.alarms.should == {
            'name1' => 'arn1',
            'name2' => 'arn2',
          }
        end

      end

      context '#update' do

        it 'calls #put_scaling_policy on the client' do
          resp = client.stub_for(:put_scaling_policy)
          resp.data[:policy_arn] = 'arn'
          client.should_receive(:put_scaling_policy).with({
            :auto_scaling_group_name => group.name,
            :policy_name => policy.name,
            :adjustment_type => 'type2',
            :scaling_adjustment => 2,
            :min_adjustment_step => 4,
            :cooldown => 3,
          }).and_return(resp)
          policy.update(
            :adjustment_type => 'type2',
            :scaling_adjustment => 2,
            :min_adjustment_step => 4,
            :cooldown => 3)
        end

      end

      context '#execute' do

        it 'calls #execute_policy on the client' do
          client.should_receive(:execute_policy).with({
            :auto_scaling_group_name => group.name,
            :policy_name => policy.name,
            :honor_cooldown => false,
          })
          policy.execute
        end

        it 'calls accepts an :honor_cooldown option' do
          client.should_receive(:execute_policy).with({
            :auto_scaling_group_name => group.name,
            :policy_name => policy.name,
            :honor_cooldown => true,
          })
          policy.execute :honor_cooldown => true
        end

      end

      context '#delete' do

        it 'calls #delete_policy on the client' do
          client.should_receive(:delete_policy).with({
            :auto_scaling_group_name => group.name,
            :policy_name => policy.name,
          })
          policy.delete
        end

      end

      context '#exists' do

        let(:response) { client.stub_for(:describe_policies) }

        before(:each) do
          client.stub(:describe_policies).and_return(response)
        end

        it 'returns true if it can be described' do
          response.data[:scaling_policies] = [
            {
              :auto_scaling_policy_name => group.name,
              :policy_name => policy.name,
            }
          ]
          policy.exists?.should == true
        end

        it 'returns false if the describe call returns no results' do
          response.data[:scaling_policies] = []
          policy.exists?.should == false
        end
      end

    end
  end
end
