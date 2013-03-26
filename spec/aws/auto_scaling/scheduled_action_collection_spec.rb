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
    describe ScheduledActionCollection do

      let(:config) { stub_config }

      let(:client) { config.auto_scaling_client }

      let(:actions) { ScheduledActionCollection.new(:config => config) }

      context '#create' do

        it 'calls #put_scheduled_update_group_action on the client' do

          client.should_receive(:put_scheduled_update_group_action).with(
            :scheduled_action_name => 'name',
            :auto_scaling_group_name => 'group',
            :recurrence => 'cron-format',
            :desired_capacity => 2,
            :min_size => 1,
            :max_size => 2)

          actions.create('name',
            :group => 'group',
            :recurrence => 'cron-format',
            :desired_capacity => 2,
            :min_size => 1,
            :max_size => 2)

        end

        it 'returns a scheduled action' do
          action = actions.create('name', :group => 'group')
          action.should be_a(ScheduledAction)
          action.name.should == 'name'
          action.group.should == Group.new('group', :config => config)
          action.config.should == config
        end

        it 'accepts a group object' do
          group = Group.new('group', :config => config)
          action = actions.create('name', :group => group)
          action.group.should == group
        end

        it 'accepts a group option via the filters' do
          client.should_receive(:put_scheduled_update_group_action).with(
            hash_including(:auto_scaling_group_name => 'group'))
          actions.filter(:group => 'group').create('name')
        end

        it 'accepts gets group when chained from a group' do
          client.should_receive(:put_scheduled_update_group_action).with(
            :scheduled_action_name => 'name',
            :auto_scaling_group_name => 'group')
          group = Group.new('group', :config => config)
          group.scheduled_actions.create('name')
        end

        it 'raises an error when no group is provided' do
          lambda {
            actions.create('name')
          }.should raise_error(ArgumentError, /:group/)
        end

      end

      context '#[]' do

        it 'returns a scheduled action' do
          action = actions['name']
          action.should be_a(ScheduledAction)
          action.name.should == 'name'
          action.config.should == config
        end

      end

      context '#filter' do

        let(:method) { :describe_scheduled_actions }

        let(:resp) { client.stub_for(method) }

        let(:now) { Time.now }

        it 'applies filter options to the colleciton when enumerating' do
          client.should_receive(method).with(
            :auto_scaling_group_name => 'abc'
          ).and_return(resp)
          actions.filter(:group => 'abc').to_a
        end

        it 'accepts multiple filters' do
          client.should_receive(method).with(
            :auto_scaling_group_name => 'abc',
            :scheduled_action_names => %w(1 2 3),
            :start_time => now.iso8601,
            :end_time => now.iso8601
          ).and_return(resp)
          actions.filter(
            :group => 'abc',
            :scheduled_actions => %w(1 2 3),
            :start_time => now,
            :end_time => now
          ).to_a
        end

        it 'can be chained' do

          client.should_receive(method).with(
            :auto_scaling_group_name => 'abc',
            :scheduled_action_names => %w(1 2 3),
            :start_time => now.iso8601,
            :end_time => now.iso8601
          ).and_return(resp)

          actions.
            filter(:group => 'abc').
            filter(:scheduled_actions => %w(1 2 3)).
            filter(:start_time => now).
            filter(:end_time => now).
            to_a

        end

      end

      it_behaves_like "a pageable collection with limits" do

        let(:collection)      { actions }
        let(:client_method)   { :describe_scheduled_actions }
        let(:next_token_key)  { :next_token }
        let(:limit_key)       { :max_records }
        let(:request_options) {{}}

        def stub_next_token(response, token)
          response.data[:next_token] = token
        end

        def stub_n_members response, n
          response.data[:scheduled_update_group_actions] = (1..n).map{|i|
            { :scheduled_action_name => i.to_s }
          }
        end

      end

    end
  end
end
