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

require 'test_helper'

module Aws
  module Plugins
    describe RegionalEndpoint do

      def setup_plugin(options = {})
        @config ||= Seahorse::Client::Configuration.new(options)
        @config.add_option(:api)
        @handlers ||= Seahorse::Client::HandlerList.new
        RegionalEndpoint.new.add_options(@config)
        RegionalEndpoint.new.add_handlers(@handlers, @config)
      end

      describe 'region option' do

        def teardown
          ENV.delete('AWS_REGION')
          ENV.delete('AMAZON_REGION')
        end

        it 'adds a :region configuration option' do
          setup_plugin(region: 'region')
          @config.region.must_equal('region')
        end

        it 'defaults to ENV["AWS_REGION"]' do
          ENV['AWS_REGION'] = 'aws-region'
          setup_plugin
          @config.region.must_equal('aws-region')
        end

        it 'falls back to ENV["AMAZON_REGION"]' do
          ENV['AMAZON_REGION'] = 'amazon-region'
          setup_plugin
          @config.region.must_equal('amazon-region')
        end

        it 'prefers AWS_REGION to AMAZON_REGION' do
          ENV['AWS_REGION'] = 'aws-region'
          ENV['AMAZON_REGION'] = 'amazon-region'
          setup_plugin
          @config.region.must_equal('aws-region')
        end

        it 'raises an argument error when not set' do
          err = assert_raises(ArgumentError) { setup_plugin }
          err.message.must_equal(RegionalEndpoint::MISSING_REGION)
        end

        it 'can be set' do
          ENV['AWS_REGION'] = 'aws-region'
          setup_plugin(endpoint: 'my-endpoint')
          @config.endpoint.must_equal('my-endpoint')
        end

      end

      describe 'endpoint option' do

        it 'builds the endpoint from the regional_endpoint and the region' do
          api = Seahorse::Model::Api.new
          api.metadata['regional_endpoint'] = 'svc.%s.amazonaws.com'
          setup_plugin(api: api, region: 'REGION')
          @config.endpoint.must_equal('svc.REGION.amazonaws.com')
        end

      end
    end
  end
end
