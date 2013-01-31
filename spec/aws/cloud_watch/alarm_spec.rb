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
  class CloudWatch
    describe Alarm do

      let(:config) { stub_config }

      let(:client) { config.cloud_watch_client }

      let(:metric_alarm) { Alarm.new('alarm_name', :config => config) }

      let(:response) { client.stub_for(:describe_alarms) }

      let(:now) { Time.now }

      let(:metric_alarms) { [] }

      let(:details) {{
        :alarm_name => metric_alarm.name,
        :actions_enabled => true,
        :alarm_actions => [ ],
        :alarm_arn => 'alarm_arn',
        :alarm_configuration_updated_timestamp => now,
        :alarm_description => 'alarm_description',
        :comparison_operator => 'comparison_operator',
        :dimensions => [ ],
        :evaluation_periods => 60,
        :insufficient_data_actions => [ ],
        :metric_name => 'metric_name',
        :namespace => 'namespace',
        :ok_actions => [ ],
        :period => 300,
        :state_reason => 'state_reason',
        :state_reason_data => 'state_reason_data',
        :state_updated_timestamp => now,
        :state_value => 'state_value',
        :statistic => 'statistic',
        :threshold => 50,
        :unit => 'unit',
      }}

      before(:each) do
        response.data[:metric_alarms] = [details]
        client.stub(:describe_alarms).and_return(response)
      end

      context '#name' do

        it 'is aliased' do
          metric_alarm.name.should == metric_alarm.alarm_name
          metric_alarm.enabled?.should == metric_alarm.actions_enabled
          metric_alarm.actions.should == metric_alarm.alarm_actions
          metric_alarm.arn.should == metric_alarm.alarm_arn
          metric_alarm.configuration_updated_timestamp.should == metric_alarm.alarm_configuration_updated_timestamp
          metric_alarm.description.should == metric_alarm.alarm_description
        end

      end

      shared_examples_for "metric alarm attribute" do |attr_name|

        it 'describe metric alarms to fetch attribute' do

          client.should_receive(:describe_alarms).
            with(:alarm_names => [metric_alarm.name]).
            and_return(response)

          metric_alarm.send(attr_name)

        end

        it 'returns the attribute value' do
          metric_alarm.send(attr_name).should == details[attr_name]
        end

      end

      it_behaves_like "metric alarm attribute", :actions_enabled
      it_behaves_like "metric alarm attribute", :alarm_actions
      it_behaves_like "metric alarm attribute", :alarm_arn
      it_behaves_like "metric alarm attribute", :alarm_configuration_updated_timestamp
      it_behaves_like "metric alarm attribute", :alarm_description
      it_behaves_like "metric alarm attribute", :comparison_operator
      it_behaves_like "metric alarm attribute", :dimensions
      it_behaves_like "metric alarm attribute", :evaluation_periods
      it_behaves_like "metric alarm attribute", :insufficient_data_actions
      it_behaves_like "metric alarm attribute", :metric_name
      it_behaves_like "metric alarm attribute", :namespace
      it_behaves_like "metric alarm attribute", :ok_actions
      it_behaves_like "metric alarm attribute", :period
      it_behaves_like "metric alarm attribute", :state_reason
      it_behaves_like "metric alarm attribute", :state_reason_data
      it_behaves_like "metric alarm attribute", :state_updated_timestamp
      it_behaves_like "metric alarm attribute", :state_value
      it_behaves_like "metric alarm attribute", :statistic
      it_behaves_like "metric alarm attribute", :threshold
      it_behaves_like "metric alarm attribute", :unit

      context '#histories' do

        it 'returns alarm history' do
          metric_alarm.histories.should be_an(AlarmHistoryItemCollection)
        end

        it 'returns a collection with the proper config' do
          metric_alarm.histories.config.should eq(config)
        end

      end

      context '#exists?' do

        it 'returns true if it can be described' do
          response.data[:metric_alarms] = [{}] # not empty
          metric_alarm.exists?.should == true
        end

        it 'returns false if it can not be found' do
          response.data[:metric_alarms] = [] # empty
          metric_alarm.exists?.should == false
        end

      end

      context '#delete' do

        it 'calls #delete_alarms on the client' do
          client.should_receive(:delete_alarms).
            with(:alarm_names => [metric_alarm.name])
          metric_alarm.delete
        end

      end

      context '#enable' do

        it 'calls #enable_alarm_actions on the client' do
          client.should_receive(:enable_alarm_actions).
            with(:alarm_names => [metric_alarm.name])
          metric_alarm.enable
        end

      end

      context '#disable' do

        it 'calls #disable_alarm_actions on the client' do
          client.should_receive(:disable_alarm_actions).
            with(:alarm_names => [metric_alarm.name])
          metric_alarm.disable
        end

      end

      context '#set_state' do

        it 'calls #set_alarm_state on the client' do
          client.should_receive(:set_alarm_state).
            with(:alarm_name => metric_alarm.name, :state_reason => 'state_reason', :state_value => 'state_value')
          metric_alarm.set_state('state_reason', 'state_value')
        end

      end

    end
  end
end
