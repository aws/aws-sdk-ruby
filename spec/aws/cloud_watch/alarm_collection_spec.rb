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
    describe AlarmCollection do

      let(:config) { stub_config }

      let(:client) { config.cloud_watch_client }

      let(:alarms) { AlarmCollection.new(:config => config) }

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

          alarms.create('alarm_name',
            :comparison_operator => 'GreaterThanThreshold',
            :evaluation_periods => 60,
            :metric_name => 'metric_name',
            :namespace => 'namespace',
            :period => 300,
            :statistic => 'Average',
            :threshold => 50)

        end

        it 'returns an alarm' do
          client.should_receive(:put_metric_alarm)
          alarms.create('name', {}).should be_a(Alarm)
        end

        it 'returns an alarm with the proper name' do
          client.should_receive(:put_metric_alarm)
          alarms.create('name', {}).name.should eq('name')
        end

        it 'returns an alarm with the proper config' do
          client.should_receive(:put_metric_alarm)
          alarms.create('name', {}).config.should eq(config)
        end

        shared_examples_for "alarm create options" do |attr_name|

          it "raises an argument error if you omit #{attr_name}" do
            lambda {
              alarm_options = create_opts.dup
              alarm_options.delete(attr_name)
              alarms.create('metric_name', alarm_options)
            }.should raise_error(ArgumentError, /#{attr_name}/)
          end

        end

        it_behaves_like "alarm create options", :comparison_operator
        it_behaves_like "alarm create options", :evaluation_periods
        it_behaves_like "alarm create options", :metric_name
        it_behaves_like "alarm create options", :namespace
        it_behaves_like "alarm create options", :period
        it_behaves_like "alarm create options", :statistic
        it_behaves_like "alarm create options", :threshold

      end

      context '#[]' do

        it 'returns a metric alarm 'do
          metric_alarm = alarms['alarm_name']
          metric_alarm.should be_a(Alarm)
          metric_alarm.name.should == 'alarm_name'
          metric_alarm.config.should == config
        end

      end

      context '#filter' do

        it 'returns another collection' do
          alarms.filter('name','value').should be_a(AlarmCollection)
        end

        it 'returns a collection with the proper config' do
          alarms.filter('name','value').config.should eq(config)
        end

        it 'returns a collection that applies the filter when enumerating' do
          client.should_receive(:describe_alarms).with({
            :abc => 'xyz',
            :mno => 'hjk',
          }).and_return(client.stub_for(:describe_alarms))
          alarms.filter('abc', 'xyz').filter('mno', 'hjk').to_a
        end

      end

      context 'chainable filter methods' do

        let(:collection) { alarms }
        let(:client_method) { :describe_alarms }

        shared_examples_for "a filterable collection method" do |method,filter|

          let(:value) { double('filter-value') }

          let(:translated_value) { value }

          it 'is applied when enumerating' do

            resp = client.stub_for(client_method)

            client.should_receive(client_method).
              with(hash_including(filter => translated_value)).
              and_return(resp)

            collection.send(method, value).to_a

          end

        end

        it_behaves_like "a filterable collection method",
          :with_action_prefix, :action_prefix

        it_behaves_like "a filterable collection method",
          :with_name_prefix, :alarm_name_prefix

        it_behaves_like "a filterable collection method",
          :with_name, :alarm_names do
          let(:value) { 'single-name' }
          let(:translated_value) { ['single-name'] }
        end

        it_behaves_like "a filterable collection method",
          :with_name, :alarm_names do
          let(:value) { %w(abc xyz mno) }
        end

        it_behaves_like "a filterable collection method",
          :with_state_value, :state_value

      end

      it_behaves_like "a pageable collection with limits" do

        let(:collection)      { alarms }
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
          alarms.count.should == 2
          alarms.each{|a| a.should be_an(Alarm) }
          alarms.each{|a| a.config.should == config }
          alarms.map(&:alarm_name).should == %w(alarm_name1 alarm_name2)
        end

      end

    end
  end
end
