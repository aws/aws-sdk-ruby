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
  class SimpleWorkflow
    describe ActivityTypeCollection do

      it_should_behave_like "a simple workflow type collection" do

        let(:config) { stub_config }
        let(:client) { config.simple_workflow_client }
        let(:domain) { Domain.new('domain-name', :config => config) }
        let(:types)  { ActivityTypeCollection.new(domain) }

        let(:type_class)      { ActivityType }
        let(:describe_method) { :describe_activity_type }
        let(:list_method)     { :list_activity_types }
        let(:register_method) { :register_activity_type }

        context '#register' do

          it 'accepts :default_task_heartbeat_timeout as an integer' do
            client.should_receive(register_method).with(register_opts.merge(
              :default_task_heartbeat_timeout => '123456'))
            types.register('name', 'version',
              :default_task_heartbeat_timeout => 123456)
          end

          it 'accepts :default_task_heartbeat_timeout as :none' do
            client.should_receive(register_method).with(register_opts.merge(
              :default_task_heartbeat_timeout => 'NONE'))
            types.register('name', 'version',
              :default_task_heartbeat_timeout => :none)
          end

          it 'accepts :default_task_schedule_to_close_timeout as an integer' do
            client.should_receive(register_method).with(register_opts.merge(
              :default_task_schedule_to_close_timeout => '123456'))
            types.register('name', 'version',
              :default_task_schedule_to_close_timeout => 123456)
          end

          it 'accepts :default_task_schedule_to_close_timeout as :none' do
            client.should_receive(register_method).with(register_opts.merge(
              :default_task_schedule_to_close_timeout => 'NONE'))
            types.register('name', 'version',
              :default_task_schedule_to_close_timeout => :none)
          end

          it 'accepts :default_task_schedule_to_start_timeout as an integer' do
            client.should_receive(register_method).with(register_opts.merge(
              :default_task_schedule_to_start_timeout => '123456'))
            types.register('name', 'version',
              :default_task_schedule_to_start_timeout => 123456)
          end

          it 'accepts :default_task_schedule_to_start_timeout as :none' do
            client.should_receive(register_method).with(register_opts.merge(
              :default_task_schedule_to_start_timeout => 'NONE'))
            types.register('name', 'version',
              :default_task_schedule_to_start_timeout => :none)
          end

          it 'accepts :default_task_start_to_close_timeout as an integer' do
            client.should_receive(register_method).with(register_opts.merge(
              :default_task_start_to_close_timeout => '123456'))
            types.register('name', 'version',
              :default_task_start_to_close_timeout => 123456)
          end

          it 'accepts :default_task_start_to_close_timeout as :none' do
            client.should_receive(register_method).with(register_opts.merge(
              :default_task_start_to_close_timeout => 'NONE'))
            types.register('name', 'version',
              :default_task_start_to_close_timeout => :none)
          end

        end

      end
    end
  end
end
