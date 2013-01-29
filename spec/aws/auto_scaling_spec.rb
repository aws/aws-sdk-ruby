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
  describe AutoScaling do

    let(:config) { stub_config }

    let(:client) { config.auto_scaling_client }

    let(:auto_scaling) { AutoScaling.new(:config => config) }

    it_behaves_like 'a class that accepts configuration', :auto_scaling

    shared_examples_for 'an auto scaling service collection' do |method, klass|

      it "should return an instance of #{klass}" do
        auto_scaling.send(method).should be_a(klass)
      end

      it 'should pass the config' do
        auto_scaling.send(method).config.should == auto_scaling.config
      end

    end

    context '#launch_configurations' do
      it_should_behave_like 'an auto scaling service collection',
        :launch_configurations, AutoScaling::LaunchConfigurationCollection
    end

    context '#groups' do
      it_should_behave_like 'an auto scaling service collection',
        :groups, AutoScaling::GroupCollection
    end

    context '#tags' do
      it_should_behave_like 'an auto scaling service collection',
        :tags, AutoScaling::TagCollection
    end

    context '#notification_types' do

      let(:resp) { client.stub_for(:describe_auto_scaling_notification_types) }

      it 'calls #describe_auto_scaling_notification_types on the client' do
        client.should_receive(:describe_auto_scaling_notification_types).
          and_return(resp)
        auto_scaling.notification_types
      end

      it 'returns the notification types from the response' do
        types = %w(abc mno xyz)
        resp.stub(:auto_scaling_notification_types).and_return(types)
        auto_scaling.notification_types.should == types
      end

    end

    context '#adjustment_types' do

      let(:resp) { client.stub_for(:describe_adjustment_types) }

      let(:types) { %w(type1 type2 type3) }

      before(:each) do
        resp.stub(:adjustment_types).and_return(types.map do |type|
          double('type', :adjustment_type => type)
        end)
      end

      it 'calls #describe_describe_adjustment_types on the client' do
        client.should_receive(:describe_adjustment_types).
          and_return(resp)
        auto_scaling.adjustment_types
      end

      it 'returns the adjustment types from the response' do
        auto_scaling.adjustment_types.should == types
      end

    end

    context '#scaling_process_types' do

      let(:resp) { client.stub_for(:describe_scaling_process_types) }

      let(:types) { %w(type1 type2 type3) }

      before(:each) do
        resp.stub(:processes).and_return(types.map do |type|
          double('type', :process_name => type)
        end)
      end

      it 'calls #describe_scaling_process_types on the client' do
        client.should_receive(:describe_scaling_process_types).
          and_return(resp)
        auto_scaling.scaling_process_types
      end

      it 'returns the adjustment types from the response' do
        auto_scaling.scaling_process_types.should == types
      end

    end

    context '#metric_collection_types' do

      let(:resp) { client.stub_for(:describe_metric_collection_types) }

      let(:types) { %w(type1 type2 type3) }

      before(:each) do
        resp.stub(:metrics).and_return(types.map do |type|
          double('metric', :metric => type)
        end)
      end

      it 'calls #describe_scaling_process_types on the client' do
        client.should_receive(:describe_metric_collection_types).
          and_return(resp)
        auto_scaling.metric_collection_types
      end

      it 'returns the adjustment types from the response' do
        auto_scaling.metric_collection_types.should == types
      end

    end

    context '#metric_collection_granularities' do

      let(:resp) { client.stub_for(:describe_metric_collection_types) }

      let(:types) { %w(type1 type2 type3) }

      before(:each) do
        resp.stub(:granularities).and_return(types.map do |type|
          double('granularity', :granularity => type)
        end)
      end

      it 'calls #describe_scaling_process_types on the client' do
        client.should_receive(:describe_metric_collection_types).
          and_return(resp)
        auto_scaling.metric_collection_granularities
      end

      it 'returns the adjustment types from the response' do
        auto_scaling.metric_collection_granularities.should == types
      end

    end

    context '#notification_configuration' do

      it 'returns a notficiation configuration collection' do
        configs = auto_scaling.notification_configurations
        configs.should be_a(AutoScaling::NotificationConfigurationCollection)
        configs.group.should be_nil
        configs.config.should == config
      end

    end

    context '#instances' do

      it 'returns a instance collection' do
        instances = auto_scaling.instances
        instances.should be_a(AutoScaling::InstanceCollection)
        instances.config.should == config
      end

    end

    context '#instances' do

      it 'returns a instance collection' do
        activities = auto_scaling.activities
        activities.should be_a(AutoScaling::ActivityCollection)
        activities.config.should == config
      end

      it 'does not filter the activities (returns all)' do
        resp = client.stub_for(:describe_scaling_activities)
        client.should_receive(:describe_scaling_activities).
          with({}).and_return(resp)
        auto_scaling.activities.to_a
      end

    end

    context '#scheduled_actions' do

      it 'returns a scheduled action collection' do
        actions = auto_scaling.scheduled_actions
        actions.should be_a(AutoScaling::ScheduledActionCollection)
        actions.config.should == config
      end

      it 'does not filter the actions (returns all)' do
        resp = client.stub_for(:describe_scheduled_actions)
        client.should_receive(:describe_scheduled_actions).
          with({}).and_return(resp)
        auto_scaling.scheduled_actions.to_a
      end

    end

  end
end
