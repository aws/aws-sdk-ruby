# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
  class CloudFormation
    describe StackResourceSummaryCollection do

      let(:config) { stub_config }

      let(:client) { config.cloud_formation_client }

      let(:stack) { Stack.new('stack-name', :config => config) }

      let(:summaries) { StackResourceSummaryCollection.new(stack) }

      context '#stack' do

        it 'returns the stack' do
          summaries.stack.should == stack
        end

      end

      it_behaves_like "a simple collection" do

        let(:collection)      { summaries }
        let(:client_method)   { :list_stack_resources }
        let(:request_options) {{}}
        let(:now)             { Time.now }

        def stub_n_members response, n
          response.stub(:stack_resource_summaries).and_return((1..n).map{|i|
            {
              :logical_resource_id => "log-#{i}",
              :physical_resource_id => "pid-#{i}",
              :resource_type => "stack-#{i}",
              :resource_status => "STATUS-#{i}",
              :resrouce_status_reason => 'reason',
              :last_updated_timestamp => now,
            }
          })
        end

        it 'yields populated stack summaries' do
          summaries.to_a.should == [
            {
              :logical_resource_id => "log-1",
              :physical_resource_id => "pid-1",
              :resource_type => "stack-1",
              :resource_status => "STATUS-1",
              :resrouce_status_reason => 'reason',
              :last_updated_timestamp => now,
            },
            {
              :logical_resource_id => "log-2",
              :physical_resource_id => "pid-2",
              :resource_type => "stack-2",
              :resource_status => "STATUS-2",
              :resrouce_status_reason => 'reason',
              :last_updated_timestamp => now,
            },
          ]
        end

      end

    end
  end
end
