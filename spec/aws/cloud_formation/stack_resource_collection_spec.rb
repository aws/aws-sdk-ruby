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
  class CloudFormation
    describe StackResourceCollection do

      let(:config) { stub_config }

      let(:client) { config.cloud_formation_client }

      let(:stack) { Stack.new('stack-name', :config => config) }

      let(:resources) { StackResourceCollection.new(stack) }

      context '#[]' do

        it 'returns a stack resource' do
          resources['id'].should be_a(StackResource)
        end

        it 'returns a resource with the proper logical resource id' do
          resources['id'].logical_resource_id.should == 'id'
        end

        it 'returns a resource with the proper stack' do
          resources['id'].stack.should == stack
        end

        it 'returns a resource with the proper config' do
          resources['id'].config.should == config
        end

      end

      it_behaves_like "a simple collection" do

        let(:collection)      { resources }
        let(:client_method)   { :describe_stack_resources }
        let(:request_options) {{ :stack_name => stack.name }}

        def stub_n_members response, n
          response.data[:stack_resources] = (1..n).map{|i|
            {
              :stack_name => stack.name,
              :stack_id => 'stack-id',
              :resource_type => 'AWS::EC2::Instance',
              :physical_resource_id => "i-#{i}1234567",
              :logical_resource_id => "id-#{i}",
              :description => 'desc',
              :resource_status => 'CREATE_IN_PROGRESS',
            }
          }
        end

        it 'enumerates stack resources' do
          stub_n_members(response, 1)
          res = resources.first
          res.should be_a(StackResource)
          res.stack_name.should == 'stack-name'
          res.stack_id.should == 'stack-id'
          res.resource_type.should == 'AWS::EC2::Instance'
          res.physical_resource_id.should == 'i-11234567'
          res.logical_resource_id.should == 'id-1'
          res.description.should == 'desc'
        end

      end

    end
  end
end
