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
    describe Client do

      def client_class
        @client_class ||= begin
          klass = Class.new(Client)
          klass.set_api({})
          klass
        end
      end

      def client
        client_class.new(:region => 'REGION')
      end

      it 'is a Seahorse::Client' do
        client.must_be_kind_of(Seahorse::Client)
      end

      describe '#config' do

        it 'returns an Aws::Core::Configuration' do
          client.config.must_be_kind_of(Aws::Core::Configuration)
        end

      end

      describe '#endpoint' do

        it 'combines region and endpoint_prefix for the default endpoint' do
          client_class.api['endpoint_prefix'] = 'SVC'
          client = client_class.new(:region => 'REGION')
          client.endpoint.must_equal('https://SVC.REGION.amazonaws.com')
        end

      end

      describe '#region' do

        def teardown
          ENV.delete('AWS_REGION')
          ENV.delete('AMAZON_REGION')
        end

        it 'is required' do
          assert_raises(ArgumentError) do
            client_class.new
          end
        end

        it 'can be specified as a constructor argument' do
          client_class.new(:region => 'region').region.must_equal('region')
        end

        it 'can be specified by ENV["AWS_REGION"]' do
          ENV['AWS_REGION'] = 'aws-region'
          client_class.new.region.must_equal('aws-region')
        end

        it 'can be specified by ENV["AMAZON_REGION"]' do
          ENV['AWS_REGION'] = 'amazon-region'
          client_class.new.region.must_equal('amazon-region')
        end

        it 'AWS_REGION has higher precedence than AMAZON_REGION' do
          ENV['AWS_REGION'] = 'aws-region'
          ENV['AMAZON_REGION'] = 'amazon-region'
          client_class.new.region.must_equal('aws-region')
        end

      end

    end
  end
end
