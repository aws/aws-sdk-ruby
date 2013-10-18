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
    describe AlarmHistoryItem do

      let(:config) { stub_config }

      let(:client) { config.cloud_watch_client }

      let(:alarm_history_item) {
        AlarmHistoryItem.new(
          :alarm_name => 'alarm_name',
          :history_data => 'history_data',
          :history_item_type => 'history_item_type',
          :history_summary => 'history_summary',
          :timestamp => now, :config => config)
      }

      shared_examples_for 'alarm history item attribute' do |attr_name,aka|

        context "##{attr_name}" do

          it "returns the :#{attr_name} option passed to initialize" do
            v = double('attribute-value')
            AlarmHistoryItem.new(attr_name => v).send(attr_name).should eq(v)
          end

          if aka
            it "aliases #{attr_name} as #{aka}" do
              item = AlarmHistoryItem.new({})
              item.method(attr_name).should eq(item.method(aka))
            end
          end

        end

      end

      it_behaves_like "alarm history item attribute", :alarm_name, false
      it_behaves_like "alarm history item attribute", :history_data, :data
      it_behaves_like "alarm history item attribute", :history_item_type, :type
      it_behaves_like "alarm history item attribute", :history_summary, :summary
      it_behaves_like "alarm history item attribute", :timestamp, false

    end
  end
end
