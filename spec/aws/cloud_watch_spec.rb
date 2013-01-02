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
  describe CloudWatch do

    let(:config) { stub_config }

    let(:client) { config.cloud_watch_client }

    let(:cloud_watch) { CloudWatch.new(:config => config) }

    it_behaves_like 'a class that accepts configuration', :cloud_watch

    shared_examples_for 'an cloud watch service collection' do |method, klass|

      it "should return an instance of #{klass}" do
        cloud_watch.send(method).should be_a(klass)
      end

      it 'should pass the config' do
        cloud_watch.send(method).config.should == cloud_watch.config
      end

    end

    context '#put_metric_data' do

      it 'calls #put_metric_data on the client' do
        options = double('options-hash')
        client.should_receive(:put_metric_data).with(options)
        cloud_watch.put_metric_data(options)
      end

    end

    context '#alarms' do
      it_should_behave_like 'an cloud watch service collection',
        :alarms, CloudWatch::AlarmCollection
    end

    context '#metrics' do
      it_should_behave_like 'an cloud watch service collection',
        :metrics, CloudWatch::MetricCollection
    end

  end
end
