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
  describe CloudFormation do

    let(:config) { stub_config }

    let(:client) { config.cloud_formation_client }

    let(:cloud_formation) { CloudFormation.new(:config => config) }

    it_behaves_like 'a class that accepts configuration', :cloud_formation

    context '#stacks' do

      it 'returns a stack collection' do
        cloud_formation.stacks.should be_a(CloudFormation::StackCollection)
      end

      it 'returns a collection with the proper config' do
        cloud_formation.stacks.config.should == config
      end

    end

    context '#stack_summaries' do

      it 'returns a stack collection' do
        cloud_formation.stack_summaries.should
          be_a(CloudFormation::StackSummaryCollection)
      end

    end

    context '#stack_resource' do

      let(:resp) { client.stub_for(:describe_stack_resources) }

      before(:each) do
        resp.data[:stack_resources] = [
          {
            :stack_name => 'stack-name',
            :logical_resource_id => 'logical-resource-id',
            :physical_resource_id => 'physical-resource-id',
          }
        ]
      end

      it 'accepts a stack name and a logical resource id' do

        client.should_receive(:describe_stack_resources).with(
          :stack_name => 'stack-name',
          :logical_resource_id => 'logical-resource-id'
        ).and_return(resp)

        cloud_formation.stack_resource('stack-name', 'logical-resource-id')

      end

      it 'when one string is passed, it is treated as a physical resource id' do

        client.should_receive(:describe_stack_resources).with(
          :physical_resource_id => 'physical-resource-id'
        ).and_return(resp)

        cloud_formation.stack_resource('physical-resource-id')

      end

      it 'returns a stack resource' do
        res = cloud_formation.stack_resource('physical-resource-id')
        res.should be_a(CloudFormation::StackResource)
        res.logical_resource_id.should == 'logical-resource-id'
        res.stack_name.should == 'stack-name'
        res.stack.should == CloudFormation::Stack.new('stack-name', :config => config)
        res.config.should == config
      end

    end

    context '#validte_template' do

      let(:resp) { client.stub_for(:validate_template) }

      it 'calls #validate_template on the client' do
        client.should_receive(:validate_template).
          with(:template_body => 'template').
          and_return(resp)
        cloud_formation.validate_template('template')
      end

      it 'returns a hash with parsed template details' do
        resp.data[:capabilities] = %w(c1 c2)
        resp.data[:capabilities_reason] = 'c-reason'
        resp.data[:description] = 'desc'
        resp.data[:parameters] = [
          {:no_echo=>false, :parameter_key=>"k1", :description=>"d1" },
          {:no_echo=>false, :parameter_key=>"k2", :description=>"d2" },
        ]
        cloud_formation.validate_template('template').should == {
          :capabilities => %w(c1 c2),
          :capabilities_reason => 'c-reason',
          :description => 'desc',
          :parameters => [
            {:no_echo=>false, :parameter_key=>"k1", :description=>"d1" },
            {:no_echo=>false, :parameter_key=>"k2", :description=>"d2" },
          ]
        }
      end

      it 'returns a hash of error details when invalid' do

        err = CloudFormation::Errors::ValidationError.new('msg')
        err.stub(:code).and_return('error-code')
        err.stub(:message).and_return('error-message')

        client.should_receive(:validate_template).and_raise(err)
        cloud_formation.validate_template('template').should == {
          :code => 'error-code',
          :message => 'error-message',
        }

      end

    end

    context '#estimate_template_cost' do

      let(:resp) { client.stub_for(:estimate_template_cost) }

      before(:each) do
        resp.stub(:url).and_return('url')
      end

      it 'calls #estimate_template_cost on the client' do
        client.should_receive(:estimate_template_cost).
          with(:parameters => [], :template_body => 'template').
          and_return(resp)
        cloud_formation.estimate_template_cost('template')
      end

      it 'accepts urls' do
        client.should_receive(:estimate_template_cost).
          with(:parameters => [], :template_url => 'http://domain.com/template').
          and_return(resp)
        cloud_formation.estimate_template_cost('http://domain.com/template')
      end

      it 'returns a url' do
        cloud_formation.estimate_template_cost('template').should == 'url'
      end

    end

  end
end
