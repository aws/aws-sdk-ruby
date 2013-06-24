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

      def client
        Client.new(:region => 'region')
      end

      it 'is a Seahorse::Client' do
        client.must_be_kind_of(Seahorse::Client)
      end

      describe '#region' do

        def setup
          ENV.delete('AWS_REGION')
          ENV.delete('AMAZON_REGION')
        end

        it 'is required' do
          assert_raises(ArgumentError) do
            Client.new
          end
        end

        it 'can be specified as a constructor argument' do
          Client.new(:region => 'us-west-1').region.must_equal('us-west-1')
        end

        it 'can be specified by ENV["AWS_REGION"]' do
          ENV['AWS_REGION'] = 'aws-region'
          Client.new.region.must_equal('aws-region')
        end

        it 'can be specified by ENV["AMAZON_REGION"]' do
          ENV['AWS_REGION'] = 'amazon-region'
          Client.new.region.must_equal('amazon-region')
        end

        it 'AWS_REGION has higher precedence than AMAZON_REGION' do
          ENV['AWS_REGION'] = 'aws-region'
          ENV['AMAZON_REGION'] = 'amazon-region'
          Client.new.region.must_equal('aws-region')
        end

      end

    end
  end
end
