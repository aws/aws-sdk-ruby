# Copyright 2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

module Seahorse
  class Client
    describe Configuration do

      def config
        @config ||= Configuration.new
      end

      describe '#initialize' do

        it 'can be constructed without any arguments' do
          Configuration.new.must_be_kind_of(Configuration)
        end

        it 'keeps all options passed to the constructor' do
          config = Configuration.new(:opt_name => 'opt-value')
          config.wont_respond_to(:opt_name)
          config.add_option(:opt_name)
          config.opt_name.must_equal('opt-value')
        end

      end

      describe '#add_option' do

        it 'defines a getter method' do
          config.add_option(:name)
          config.must_respond_to(:name)
        end

        it 'returns nil from getters by default' do
          config.add_option(:color)
          config.color.must_equal(nil)
        end

        it 'accepts a default value' do
          config.add_option(:size, 'large')
          config.size.must_equal('large')
        end

        it 'accpets a default via a block' do
          config.add_option(:dynamic) { 'value' }
          config.dynamic.must_equal('value')
        end

      end

      describe '#ssl_default' do

        it 'defaults to true' do
          Configuration.new.ssl_default.must_equal(true)
        end

        it 'can be set to false' do
          Configuration.new(ssl_default: false).ssl_default.must_equal(false)
        end

      end

    end
  end
end
