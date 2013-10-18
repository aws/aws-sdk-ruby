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
    describe ActivityTaskCollection do

      let(:config) { stub_config }

      let(:client) { config.simple_workflow_client }

      let(:domain) { Domain.new('domain-name', :config => config) }

      let(:tasks) { ActivityTaskCollection.new(domain) }

      context '#domain' do

        it 'returns the domain' do
          tasks.domain.should == domain
          tasks.config.should == domain.config
        end

      end

      context '#count' do

        let(:response) { client.stub_for(:count_pending_activity_tasks) }

        before(:each) do
          response.data['count'] = 1
          response.data['truncated'] = true
        end

        it 'calls count_pending_activity_tasks on the client' do
          client.should_receive(:count_pending_activity_tasks).with(
            :domain => domain.name,
            :task_list => { :name => 'task-list' }
          ).and_return(response)
          tasks.count('task-list')
        end

        it 'returns the count' do
          tasks.count('task-list').should == Count.new(1, true)
        end

      end

      context '#poll_for_single_task' do

        let(:response) { client.stub_for(:poll_for_activity_task) }

        let(:data) {{
          'taskToken' => 'task-token',
          'activityId' => 'activity-id',
          'startedEventId' => 4,
          'input' => 'input',
          'activityType' => { 'name' => 'name', 'version' => 'version' },
          'workflowExecution' => { 'workflowId' => 'wid', 'runId' => 'rid' },
        }}

        before(:each) do
          response.stub(:data).and_return(data)
        end

        it 'calls poll_for_activity_task on the client' do
          client.should_receive(:poll_for_activity_task).with(hash_including(
            :domain => domain.name,
            :task_list => { :name => 'task-list' }
          )).and_return(response)
          tasks.poll_for_single_task('task-list')
        end

        it 'accepts an identity' do
          client.should_receive(:poll_for_activity_task).with(
            :domain => domain.name,
            :task_list => { :name => 'task-list' },
            :identity => 'abc'
          ).and_return(response)
          tasks.poll_for_single_task('task-list', :identity => 'abc')
        end

        it 'defaults the identit to the hostname and pid' do

          ident = "#{Socket.gethostname}:#{Process.pid}"

          client.should_receive(:poll_for_activity_task).with(
            :domain => domain.name,
            :task_list => { :name => 'task-list' },
            :identity => ident
          ).and_return(response)

          tasks.poll_for_single_task('task-list')
        end

        context 'with block' do

          it 'yields an activity task' do
            yielded = nil
            tasks.poll_for_single_task('task-list') do |task|
              yielded = task
            end
            yielded.should be_a(ActivityTask)
          end

          it 'does not yield if a task is not found' do
            response.stub(:data).and_return({})
            yielded = false
            tasks.poll_for_single_task('task-list') do |task|
              yielded = true
            end
            yielded.should == false
          end

          it 'calls complete on the activity task' do
            task = double('activity-task')
            task.stub(:responded?).and_return(false)
            task.should_receive(:complete!)
            ActivityTask.stub(:new).and_return(task)
            tasks.poll_for_single_task('task-list') do |task|
              # ...
            end
          end

          it 'does not call complete! on a task that already responded' do
            task = double('activity-task')
            task.stub(:responded?).and_return(true)
            task.should_not_receive(:complete!)
            ActivityTask.stub(:new).and_return(task)
            tasks.poll_for_single_task('task-list') do |task|
              # ...
            end
          end

          it 'calls cancel! if cancel requested error is raised' do
            task = double('activity-task')
            task.stub(:responded?).and_return(false)
            task.should_receive(:cancel!)
            ActivityTask.stub(:new).and_return(task)
            tasks.poll_for_single_task('task-list') do |task|
              raise ActivityTask::CancelRequestedError
            end
          end

          it 'calls fail! if an error is raised' do

            trace = ['a/b/c', 'x/y/z']

            task = double('activity-task')
            task.stub(:responded?).and_return(false)
            task.should_receive(:fail!).with(
              :reason => 'UNTRAPPED ERROR: error-msg',
              :details => trace.join("\n"))

            ActivityTask.stub(:new).and_return(task)

            lambda {
              tasks.poll_for_single_task('task-list') do |task|
                error = StandardError.new('error-msg')
                error.stub(:backtrace).and_return(trace)
                raise error
              end
            }.should raise_error

          end

        end

      end

      context '#poll' do

        it 'calls #poll_for_single_task in a loop' do

          tasks.should_receive(:poll_for_single_task).
            with('task-list', {}).
            exactly(11).times.
            and_yield(true)

          n = 0
          tasks.poll('task-list') do |task|
            n += 1
            break if n > 10
          end

        end

      end

    end
  end
end
