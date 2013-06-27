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
  module Core
    describe Configuration do

      def config(options = {})
        @cfg ||= Aws::Core::Configuration.new(options)
      end

      it 'extends Seahorse::Client::Configuration' do
        config.must_be_kind_of(Seahorse::Client::Configuration)
      end

      describe '#ssl_default' do

        it 'defaults to true' do
          config.ssl_default.must_equal(true)
        end

        it 'can be set to false' do
          config(:ssl_default => false).ssl_default.must_equal(false)
        end

      end

      describe '#region' do

        def teardown
          ENV.delete('AWS_REGION')
          ENV.delete('AMAZON_REGION')
        end

        it 'defaults to nil' do
          config.region.must_equal(nil)
        end

        it "can be specified via ENV['AWS_REGION']" do
          ENV['AWS_REGION'] = 'aws-region'
          config.region.must_equal('aws-region')
        end

        it "can be specified via ENV['AMAZON_REGION']" do
          ENV['AMAZON_REGION'] = 'amazon-region'
          config.region.must_equal('amazon-region')
        end

        it 'prefers AWS_REGION to AMAZON_REGION' do
          ENV['AWS_REGION'] = 'aws-region'
          ENV['AMAZON_REGION'] = 'amazon-region'
          config.region.must_equal('aws-region')
        end

        it 'can be specified' do
          config(:region => 'REGION').region.must_equal('REGION')
        end

      end

    end
  end
end
