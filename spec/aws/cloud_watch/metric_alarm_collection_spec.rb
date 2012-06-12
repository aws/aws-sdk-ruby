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
    describe MetricAlarmCollection do

      let(:config) { stub_config }

      let(:client) { config.cloud_watch_client }

      let(:metric_alarms) { MetricAlarmCollection.new(:config => config) }

      let(:create_opts) {{
        :comparison_operator => 'GreaterThanThreshold',
        :evaluation_periods => 60,
        :metric_name => 'metric_name',
        :namespace => 'namespace',
        :period => 300,
        :statistic => 'Average',
        :threshold => 50,
      }}

      context '#create' do

        it 'calls #put_metric_alarm on the client' do

          client.should_receive(:put_metric_alarm).with(
            :alarm_name => 'alarm_name',
            :comparison_operator => 'GreaterThanThreshold',
            :evaluation_periods => 60,
            :metric_name => 'metric_name',
            :namespace => 'namespace',
            :period => 300,
            :statistic => 'Average',
            :threshold => 50)

          metric_alarms.create('alarm_name', 
            :alarm_name => 'alarm_name',
            :comparison_operator => 'GreaterThanThreshold',
            :evaluation_periods => 60,
            :metric_name => 'metric_name',
            :namespace => 'namespace',
            :period => 300,
            :statistic => 'Average',
            :threshold => 50)

        end

        shared_examples_for "metric alarm create options" do |attr_name|

          it "raises an argument error if you omit #{attr_name}" do

            lambda {
              alarm_options = create_opts.dup
              alarm_options.delete(attr_name)
              metric_alarms.create('metric_name', alarm_options)
            }.should raise_error(ArgumentError, /#{attr_name}/)
          end

        end

        it_behaves_like "metric alarm create options", :comparison_operator
        it_behaves_like "metric alarm create options", :evaluation_periods
        it_behaves_like "metric alarm create options", :metric_name
        it_behaves_like "metric alarm create options", :namespace
        it_behaves_like "metric alarm create options", :period
        it_behaves_like "metric alarm create options", :statistic
        it_behaves_like "metric alarm create options", :threshold

      end

      context '#[]' do

        it 'returns a metric alarm 'do
          metric_alarm = metric_alarms['alarm_name']
          metric_alarm.should be_a(MetricAlarm)
          metric_alarm.name.should == 'alarm_name'
          metric_alarm.config.should == config
        end

      end

      it_behaves_like "a pageable collection with limits" do

        let(:collection)      { metric_alarms }
        let(:client_method)   { :describe_alarms }
        let(:next_token_key)  { :next_token }
        let(:limit_key)       { :max_records }
        let(:request_options) {{}}

        def stub_next_token(response, token)
          response.data[:next_token] = token
        end

        def stub_n_members response, n
          response.data[:metric_alarms] = (1..n).map{|i|
            { :alarm_name => "alarm_name#{i}" }
          }
        end

        it 'yields metrics' do
          stub_n_members(response,2)
          metric_alarms.count.should == 2
          metric_alarms.each{|a| a.should be_an(MetricAlarm) }
          metric_alarms.each{|a| a.config.should == config }
          metric_alarms.map(&:alarm_name).should == %w(alarm_name1 alarm_name2)
        end

      end

    end
  end
end
