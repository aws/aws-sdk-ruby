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
  class CloudWatch
    describe AlarmHistoryItem do

      let(:config) { stub_config }

      let(:client) { config.cloud_watch_client }

      let(:alarm_history_item) { AlarmHistoryItem.new('alarm_name', :history_data => 'history_data',
                                                      :history_item_type => 'history_item_type',
                                                      :history_summary => 'history_summary',
                                                      :timestamp => now, :config => config) }

      let(:response) { client.stub_for(:describe_alarm_history) }

      let(:now) { Time.now }

      let(:alarm_history_items) { [] }

      let(:details) {{
        :alarm_name => alarm_history_item.alarm_name,
        :history_data => alarm_history_item.history_data,
        :history_item_type => alarm_history_item.history_item_type,
        :history_summary => alarm_history_item.history_summary,
        :timestamp => alarm_history_item.timestamp,
      }}

      before(:each) do
        response.data[:alarm_history_items] = [details]
        client.stub(:describe_alarm_history).and_return(response)
      end

      context '#data' do

        it 'is aliased' do
          alarm_history_item.data.should == alarm_history_item.history_data
        end

      end

      context '#item_type' do

        it 'is aliased' do
          alarm_history_item.type.should == alarm_history_item.history_item_type
        end

      end

      context '#summary' do

        it 'is aliased' do
          alarm_history_item.summary.should == alarm_history_item.history_summary
        end

      end

    end
  end
end
