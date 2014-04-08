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
    describe MetricCollection do

      let(:config) { stub_config }

      let(:client) { config.cloud_watch_client }

      let(:metrics) { MetricCollection.new(:config => config) }

      let(:response) { client.stub_for(:list_metrics) }

      context '#with_dimension' do

        it 'incrementially builds up a list of dimensions' do
          client.should_receive(:list_metrics).with(:dimensions => [
            { :name => 'd1', :value => 'v1' },
            { :name => 'd2', :value => 'v2' },
            { :name => 'd3', :value => 'v3' },
          ]).and_return(response)
          metrics.
            with_dimension('d1', 'v1').
            with_dimension('d2', 'v2').
            with_dimension('d3', 'v3').to_a
        end

      end

      context '#with_dimensions' do

        it 'passes dimensions to the client' do
          dimensions = [{:name => 'd1', :value => 'v1'}]
          client.should_receive(:list_metrics).
            with(:dimensions => dimensions).
            and_return(response)
          metrics.with_dimensions(dimensions).to_a
        end

        it 'can be chained' do
          client.should_receive(:list_metrics).with(:dimensions => [
            { :name => 'd1', :value => 'v1' },
            { :name => 'd2', :value => 'v2' },
          ]).and_return(response)
          metrics.
            with_dimensions([{ :name => 'd1', :value => 'v1' }]).
            with_dimensions([{ :name => 'd2', :value => 'v2' }]).
            to_a
        end

      end

      it_behaves_like "a pageable collection" do

        let(:collection)      { metrics }
        let(:client_method)   { :list_metrics }
        let(:next_token_key)  { :next_token }
        let(:request_options) {{}}

        def stub_next_token(response, token)
          response.data[:next_token] = token
        end

        def stub_n_members response, n
          response.data[:metrics] = (1..n).map{|i|
            { :namespace => 'namespace', :metric_name => "metric_name#{i}" }
          }
        end

        it 'yields metrics' do
          stub_n_members(response,2)
          metrics.count.should == 2
          metrics.each{|a| a.should be_an(Metric) }
          metrics.each{|a| a.config.should == config }
          metrics.map(&:metric_name).should == %w(metric_name1 metric_name2)
        end

      end

    end
  end
end
