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
    describe ScheduledAction do

      let(:config) { stub_config }

      let(:client) { config.auto_scaling_client }

      let(:action) { ScheduledAction.new('name', :config => config) }

      let(:response) { client.stub_for(:describe_scheduled_actions) }

      let(:now) { Time.now }

      let(:details) {{
        :scheduled_action_name => action.name,
        :scheduled_action_arn => 'arn',
        :auto_scaling_group_name => 'group',
        :desired_capacity => 2,
        :recurrence => 'recurrence',
        :start_time => now,
        :end_time => now,
        :min_size => 1,
        :max_size => 2,
      }}

      before(:each) do
        response.data[:scheduled_update_group_actions] = [details]
        client.stub(:describe_scheduled_actions).and_return(response)
      end

      context '#name' do

        it 'is set in the constructor' do
          ScheduledAction.new('name').name.should == 'name'
        end

      end

      context 'attributes' do

        it 'returns attributes from the describe call' do
          action.arn.should == 'arn'
          action.group.should == Group.new('group', :config => config)
          action.desired_capacity.should == 2
          action.recurrence.should == 'recurrence'
          action.start_time.should == now
          action.end_time.should == now
          action.min_size.should == 1
          action.max_size.should == 2
        end

      end

      context '#update' do

        it 'calls #put_scheduled_update_group_action on the client' do

          client.should_receive(:put_scheduled_update_group_action).with(
            :scheduled_action_name => action.name,
            :auto_scaling_group_name => 'group',
            :recurrence => 'cron-format',
            :desired_capacity => 2,
            :min_size => 1,
            :max_size => 2)

          action.update(
            :recurrence => 'cron-format',
            :desired_capacity => 2,
            :min_size => 1,
            :max_size => 2)

        end

        it 'converts time objects into iso8601 strings' do

          now = Time.now

          client.should_receive(:put_scheduled_update_group_action).with(
            :scheduled_action_name => action.name,
            :auto_scaling_group_name => 'group',
            :start_time => now.iso8601,
            :end_time => now.iso8601)

          action.update(:start_time => now, :end_time => now)

        end

      end

      context '#exists?' do

        let(:resp) { client.stub_for(:describe_scheduled_actions) }

        before(:each) do
          client.should_receive(:describe_scheduled_actions).
            with(:scheduled_action_names => [action.name]).
            and_return(resp)
        end

        it 'returns true if it can be described' do
          resp.data[:scheduled_update_group_actions] = [{}] # not-empty
          action.exists?.should == true
        end

        it 'returns false if it can be described' do
          resp.data[:scheduled_update_group_actions] = [] # empty
          action.exists?.should == false
        end

      end

      context '#delete' do

        it 'calls #delete_scheduled_action on the client' do
          client.should_receive(:delete_scheduled_action).with(
            :scheduled_action_name => action.name,
            :auto_scaling_group_name => 'group')
          action.delete
        end

      end

    end
  end
end
