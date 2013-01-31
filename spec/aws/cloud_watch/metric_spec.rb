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
    describe Metric do

      let(:config) { stub_config }

      let(:client) { config.cloud_watch_client }

      let(:metric) { Metric.new('namespace', 'metric_name', :dimensions => [], :config => config) }

      let(:response) { client.stub_for(:list_metrics) }

      let(:now) { Time.now }

      let(:metrics) { [] }

      let(:details) {{
        :namespace => metric.namespace,
        :metric_name => metric.name,
        :dimensions => metric.dimensions,
      }}

      before(:each) do
        response.data[:metrics] = [details]
        client.stub(:list_metrics).and_return(response)
      end

      context '#name' do

        it 'is aliased' do
          metric.name.should == metric.metric_name
        end

      end

      context '#alarms' do

        it 'returns metric alarms' do
          metric.alarms.should be_an(MetricAlarmCollection)
        end

      end

      context '#exists?' do

        it 'returns true if it can be described' do
          response.data[:metrics] = [{}] # not empty
          metric.exists?.should == true
        end

        it 'returns false if it can not be found' do
          response.data[:metrics] = [] # empty
          metric.exists?.should == false
        end

      end

    end
  end
end
