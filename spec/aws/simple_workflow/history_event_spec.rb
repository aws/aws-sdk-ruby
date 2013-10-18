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
    describe HistoryEvent do

      let(:config) { stub_config }

      let(:domain) { Domain.new('domain-name', :config => config) }

      let(:execution) { WorkflowExecution.new(domain, 'wid', 'rid') }

      let(:event) { HistoryEvent.new(execution, event_data) }

      let(:event_data) {{
        'eventType' => 'eventType',
        'eventTypeEventAttributes' => data,
        'eventId' => 12345,
        'eventTimestamp' => 123456789,
      }}

      let(:data) {{

        # generic
        'arrayValues' => ['abc', 'xyz'],
        'complexArray' => [{ 'abc' => 'xyz' }, { 'mno' => 'jkl' }],
        'simpleKey' => 'simple-value',
        'nestedHash' => {
          'nestedAgain' => { 'keyAbc' => 'abc', 'keyXyz' => 'xyz' },
          'nestedArray' => [1,2],
          'key2' => 'value2',
        },

        # special keys
        'simpleTimeout' => '123456',
        'infiniteTimeout' => 'NONE',
        'childPolicy' => 'TERMINATE',
        'activityType' => { 'name' => 'name', 'version' => 'version' },
        'workflowType' => { 'name' => 'name', 'version' => 'version' },
        'workflowExecution' => { 'workflowId' => 'wid', 'runId' => 'rid' },
        'taskList' => { 'name' => 'task-list-name' },

      }}

      context 'methods' do

        it 'workflow execution' do
          event.workflow_execution.should == execution
        end

        it 'event_type' do
          event.event_type.should == 'eventType'
        end

        it 'event id' do
          event.event_id.should ==  12345
        end

        it 'created at' do
          event.created_at.should be_a(Time)
          event.created_at.to_i.should == 123456789
        end

      end

      context '#attributes' do

        it 'returns the attributes in a Attributes object' do

          event.attributes.to_h.should == {

            # generic
            :array_values => ['abc', 'xyz'],
            :complex_array => [{ :abc => 'xyz' }, { :mno => 'jkl' }],
            :simple_key => 'simple-value',
            :nested_hash => {
              :nested_again => { :key_abc => 'abc', :key_xyz => 'xyz' },
              :nested_array => [1,2],
              :key_2 => 'value2',
            },

            # special keys
            :simple_timeout => 123456,
            :infinite_timeout => :none,
            :child_policy => :terminate,
            :activity_type => domain.activity_types['name','version'],
            :workflow_type => domain.workflow_types['name','version'],
            :workflow_execution => domain.workflow_executions['wid','rid'],
            :task_list => 'task-list-name',

          }

        end

      end

      context '#to_json' do

        it 'returns json representation of the event' do
          JSON.parse(event.to_json).should == event_data
        end

      end

    end
  end
end
