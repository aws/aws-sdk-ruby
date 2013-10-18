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
    describe HistoryEventCollection do

      let(:config)    { stub_config }
      let(:client)    { config.simple_workflow_client }
      let(:domain)    { Domain.new('domain-name', :config => config) }
      let(:execution) { WorkflowExecution.new(domain, 'wid', 'rid') }
      let(:events)    { HistoryEventCollection.new(execution) }

      context '#workflow_execution' do

        it 'matches what was sent to init' do
          events.workflow_execution.should == execution
        end

      end

      it_behaves_like "a pageable collection with limits" do

        let(:now)             { Time.now }
        let(:collection)      { events }
        let(:client_method)   { :get_workflow_execution_history }
        let(:next_token_key)  { :next_page_token }
        let(:limit_key)       { :maximum_page_size }
        let(:request_options) {{
          :domain => "domain-name",
          :reverse_order => false,
          :execution => {
            :workflow_id => execution.workflow_id,
            :run_id => execution.run_id,
          },
        }}

        def stub_next_token(response, token)
          response.data['nextPageToken'] = token
        end

        def stub_n_members response, n
          response.data['events'] = (1..n).collect do |i|
            {
              'eventType' => "type#{i}",
              'eventId' => "event-id-#{i}",
              'eventTimestamp' => now.to_i,
              "type#{i}EventAttributes" => { 'foo' => 'bar', 'i' => i },
            }
          end
        end

        it_should_behave_like "a collection that yields models" do
          let(:member_class)  { HistoryEvent }
        end

      end

    end
  end
end
