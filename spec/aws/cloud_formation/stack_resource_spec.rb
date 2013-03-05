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
    describe StackResource do

      let(:config) { stub_config }

      let(:client) { config.cloud_formation_client }

      let(:stack) { Stack.new('stack-name', :config => config) }

      let(:resource) { StackResource.new(stack, 'logical-resource-id') }

      shared_examples_for "a describe attribute" do

        let(:resp) { client.stub_for(:describe_stack_resource) }

        let(:get_as) { attr_name }

        let(:raw_value) { 'value' }

        let(:translated_value) { raw_value }

        let(:stack_resource) {{
          :logical_resource_id => resource.logical_resource_id,
          :stack_name => stack.name,
          get_as => raw_value,
        }}

        before(:each) do
          resp.data[:stack_resource_detail] = stack_resource
          client.stub(:describe_stack_resource).and_return(resp)
        end

        it 'calls #describe_stack_resource' do

          client.should_receive(:describe_stack_resource).with(
            :stack_name => stack.name,
            :logical_resource_id => resource.logical_resource_id
          ).and_return(resp)

          resource.send(attr_name)

        end

        it 'returns the expected value' do
          resource.send(attr_name).should == translated_value
        end

      end

      context '#creation_time' do

        it_behaves_like "a describe attribute" do
          let(:attr_name) { :description }
        end

      end

      context '#physical_resource_id' do

        it_behaves_like "a describe attribute" do
          let(:attr_name) { :physical_resource_id }
        end

      end

      context '#resource_status' do

        it_behaves_like "a describe attribute" do
          let(:attr_name) { :resource_status }
        end

      end

      context '#resource_status_reason' do

        it_behaves_like "a describe attribute" do
          let(:attr_name) { :resource_status_reason }
        end

      end

      context '#resource_type' do

        it_behaves_like "a describe attribute" do
          let(:attr_name) { :resource_type }
        end

      end

      context '#stack_id' do

        it_behaves_like "a describe attribute" do
          let(:attr_name) { :stack_id }
        end

      end

      context '#stack_name' do

        it_behaves_like "a describe attribute" do
          let(:attr_name) { :stack_name }
        end

      end

      context '#last_updated_timestamp' do

        it_behaves_like "a describe attribute" do
          let(:attr_name) { :last_updated_timestamp }
        end

      end

      context '#metadata' do

        it_behaves_like "a describe attribute" do
          let(:attr_name) { :metadata }
        end

      end

    end
  end
end
