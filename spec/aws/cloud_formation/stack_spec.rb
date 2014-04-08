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
    describe Stack do

      let(:config) { stub_config }

      let(:client) { config.cloud_formation_client }

      let(:stack) { Stack.new('name', :config => config) }

      let(:now) { Time.now }

      shared_examples_for "a describe stack attribute" do

        let(:resp) { client.stub_for(:describe_stacks) }

        let(:get_as) { attr_name }

        let(:raw_value) { 'value' }

        let(:translated_value) { 'value' }

        let(:stack_details) {{
          :stack_name => stack.name,
          get_as => raw_value,
        }}

        before(:each) do
          resp.data[:stacks] = [{
            :stack_name => stack.name,
            get_as => raw_value
          }]
          client.stub(:describe_stacks).and_return(resp)
        end

        it 'calls #describe_stacks with the stack name to load the attr' do

          client.should_receive(:describe_stacks).
            with(:stack_name => stack.name).
            and_return(resp)

          stack.send(attr_name)

        end

        it 'returns the expected value' do
          stack.send(attr_name).should == translated_value
        end

      end

      context '#creation_time' do

        it_behaves_like "a describe stack attribute" do
          let(:attr_name) { :creation_time }
        end

      end

      context '#last_update_time' do

        it_behaves_like "a describe stack attribute" do
          let(:attr_name) { :last_updated_time }
        end

      end

      context '#stack_id' do

        it_behaves_like "a describe stack attribute" do
          let(:attr_name) { :stack_id }
        end

      end

      context '#status' do

        it_behaves_like "a describe stack attribute" do
          let(:attr_name)        { :status }
          let(:get_as)           { :stack_status }
          let(:raw_value)        { "STATUS_STRING" }
          let(:translated_value) { "STATUS_STRING" }
        end

      end

      context '#status_reason' do

        it_behaves_like "a describe stack attribute" do
          let(:attr_name) { :status_reason }
          let(:get_as)    { :stack_status_reason }
        end

      end

      context '#capabilities' do

        it_behaves_like "a describe stack attribute" do
          let(:attr_name)        { :capabilities }
          let(:raw_value)        { %w(abc xyz) }
          let(:translated_value) { %w(abc xyz) }
        end

      end

      context '#description' do

        it_behaves_like "a describe stack attribute" do
          let(:attr_name) { :description }
        end

      end

      context '#disable_rollback' do

        it_behaves_like "a describe stack attribute" do
          let(:attr_name) { :disable_rollback? }
          let(:get_as)    { :disable_rollback? }
        end

      end

      context '#notification_arns' do

        it_behaves_like "a describe stack attribute" do
          let(:attr_name)        { :notification_arns }
          let(:raw_value)        { %w(arn1 arn2) }
          let(:translated_value) { %w(arn1 arn2) }
        end

      end

      context '#outputs' do

        it_behaves_like "a describe stack attribute" do
          let(:attr_name) { :outputs }
          let(:raw_value) {[
            {
              :output_key => 'k1',
              :output_value => 'v1',
              :description => 'd1',
            },
            {
              :output_key => 'k2',
              :output_value => 'v2',
              :description => 'd2',
            },
          ]}
          let(:translated_value) {[
            StackOutput.new(stack, 'k1', 'v1', 'd1'),
            StackOutput.new(stack, 'k2', 'v2', 'd2'),
          ]}
        end

      end

      context '#parameters' do

        it_behaves_like "a describe stack attribute" do
          let(:attr_name) { :parameters }
          let(:raw_value) {[
            {
              :parameter_key => 'key1',
              :parameter_value => 'value1',
            }, {
              :parameter_key => 'key2',
              :parameter_value => 'value2',
            }, {
              :parameter_key => 'key3',
              :parameter_value => 'value3',
            },
          ]}
          let(:translated_value) {{
            'key1' => 'value1',
            'key2' => 'value2',
            'key3' => 'value3',
          }}
        end

      end

      context '#status_reason' do

        it_behaves_like "a describe stack attribute" do
          let(:attr_name) { :timeout_in_minutes }
        end

      end

      context '#template' do

        let(:resp) { client.stub_for(:get_template) }

        before(:each) do
          resp.request_options[:stack_name] = stack.name
          resp.data[:template_body] = 'template-body'
        end

        it 'calls #get_template on the client' do
          client.should_receive(:get_template).
            with(:stack_name => stack.name).
            and_return(resp)
          stack.template
        end

        it 'returns the template body' do
          client.stub(:get_template).and_return(resp)
          stack.template.should == 'template-body'
        end

      end

      context '#estimate_template_cost' do

        it 'calls CloudFormation#estimate_template_cost with its tepmlate and params' do

          template = double('template')
          params = double('params')

          cfm = double('cfm')
          cfm.should_receive(:estimate_template_cost).
            with(template, params).
            and_return('url')
          CloudFormation.stub(:new).and_return(cfm)

          stack.stub(:template).and_return(template)
          stack.stub(:parameters).and_return(params)
          stack.estimate_template_cost.should == 'url'

        end

      end

      context '#resources' do

        it 'returns a stack resource collection' do
          stack.resources.should be_a(StackResourceCollection)
        end

        it 'returns a collection with the proper stack' do
          stack.resources.stack.should == stack
        end

        it 'returns a collection with the proper config' do
          stack.resources.config.should == config
        end

      end

      context '#update' do

        it 'calls #update_stack on the client' do
          client.should_receive(:update_stack).with(hash_including(
            :stack_name => stack.name
          ))
          stack.update
        end

        it 'returns nil' do
          stack.update.should == nil
        end

        it 'passes along the tempate option' do
          client.should_receive(:update_stack).with(hash_including(
            :template_url => 'http://foo.com/template'
          ))
          stack.update(:template_url => 'http://foo.com/template')
        end

        it 'passes along the tempate body option' do
          client.should_receive(:update_stack).with(hash_including(
            :template_body => 'template-body'
          ))
          stack.update(:template => 'template-body')
        end

        it 'passes along the capabilities' do
          client.should_receive(:update_stack).with(hash_including(
            :capabilities => %w(abc mno xyz)
          ))
          stack.update(:capabilities => %w(abc mno xyz))
        end

        it 'passes along the parameters' do
          client.should_receive(:update_stack).with do |opts|
            opts[:parameters].sort_by{|p| p[:parameter_key] }.should == [
              { :parameter_key => 'k1', :parameter_value => 'v1' },
              { :parameter_key => 'k2', :parameter_value => 'v2' },
            ]
            opts
          end
          stack.update(:parameters => { 'k1' => 'v1', 'k2' => 'v2'})
        end

      end

      context '#delete' do

        it 'calls #delete_stack on the client' do
          client.should_receive(:delete_stack).with(:stack_name => stack.name)
          stack.delete
        end

        it 'returns nil' do
          stack.delete.should == nil
        end

      end

    end
  end
end
