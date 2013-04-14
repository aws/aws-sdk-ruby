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
require 'uri'

module AWS
  class CloudFormation
    describe StackEventCollection do

      let(:config) { stub_config }

      let(:client) { config.cloud_formation_client }

      let(:stack) { Stack.new('stack-name', :config => config) }

      let(:events) { StackEventCollection.new(stack) }

      it_behaves_like "a simple collection" do

        let(:collection)      { events }
        let(:client_method)   { :describe_stack_events }
        let(:request_options) {{ :stack_name => stack.name }}
        let(:now)             { Time.now }

        def stub_n_members response, n
          response.data[:stack_events] = (1..n).map do |i|
            {
              :stack_name => stack.name,
              :stack_id => 'stack-id',
              :timestamp => now,
              :resource_type => 'AWS::EC2::Instance',
              :resource_status_reason => 'reason',
              :resource_status => 'status',
              :resource_properties => 'properties',
              :physical_resource_id => 'pid',
              :logical_resource_id => 'lid',
              :event_id => "id-#{i}",
            }
          end
        end

        it 'yields popualted events' do
          stub_n_members(response, 1)
          event = events.first
          event.stack.should == stack
          event.stack_name.should == stack.name
          event.stack_id.should == 'stack-id'
          event.timestamp.should == now
          event.resource_type.should == 'AWS::EC2::Instance'
          event.resource_status_reason.should == 'reason'
          event.resource_status.should == 'status'
          event.resource_properties.should == 'properties'
          event.physical_resource_id.should == 'pid'
          event.logical_resource_id.should == 'lid'
          event.event_id.should == "id-1"
        end

      end

    end
  end
end
