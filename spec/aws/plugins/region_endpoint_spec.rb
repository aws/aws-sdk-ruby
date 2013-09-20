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

module Aws
  module Plugins
    describe RegionalEndpoint do

      let(:api) do
        Seahorse::Model::Api.new.tap do |api|
          api.endpoint = 'svc.%s.amazonaws.com'
        end
      end

      let(:env) { {} }

      before do
        stub_const("ENV", env)
      end

      def setup_plugin(options = {})
        options[:api] ||= api

        @config ||= Seahorse::Client::Configuration.new
        @config.add_option(:api)
        RegionalEndpoint.new.add_options(@config)
        @config = @config.build!(options)

        @handlers ||= Seahorse::Client::HandlerList.new
        RegionalEndpoint.new.add_handlers(@handlers, @config)
      end

      describe 'region option' do

        it 'adds a :region configuration option' do
          setup_plugin(region: 'region')
          expect(@config.region).to eq('region')
        end

        it 'defaults to ENV["AWS_REGION"]' do
          env['AWS_REGION'] = 'aws-region'
          setup_plugin
          expect(@config.region).to eq('aws-region')
        end

        it 'falls back to ENV["AMAZON_REGION"]' do
          env['AMAZON_REGION'] = 'amazon-region'
          setup_plugin
          expect(@config.region).to eq('amazon-region')
        end

        it 'prefers AWS_REGION to AMAZON_REGION' do
          env['AWS_REGION'] = 'aws-region'
          env['AMAZON_REGION'] = 'amazon-region'
          setup_plugin
          expect(@config.region).to eq('aws-region')
        end

        it 'raises an argument error when not set' do
          expect { setup_plugin }.to raise_error(
            ArgumentError, RegionalEndpoint::MISSING_REGION)
        end

        it 'raises an argument error when set to nil' do
          expect { setup_plugin(region: nil) }.to raise_error(
            ArgumentError, RegionalEndpoint::MISSING_REGION)
        end

        it 'can be set' do
          env['AWS_REGION'] = 'aws-region'
          setup_plugin(endpoint: 'my-endpoint')
          expect(@config.endpoint).to eq('my-endpoint')
        end

      end

      describe 'endpoint option' do

        it 'builds the endpoint from the regional_endpoint and the region' do
          api.metadata['regional_endpoint'] = 'svc.%s.amazonaws.com'
          setup_plugin(api: api, region: 'REGION')
          expect(@config.endpoint).to eq('svc.REGION.amazonaws.com')
        end

      end
    end
  end
end
