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

module Seahorse
  class Client
    describe Configuration do

      # this throw-away helper class extends Configuration.  This allows tests
      # to add_options without leaking state to the next test case.
      def config_class
        @klass ||= Class.new(Configuration)
      end

      def config options = {}
        config_class.new(options)
      end

      it 'can be constructed without any arguments' do
        Configuration.new.must_be_kind_of(Configuration)
      end

      describe '.add_option' do

        it 'defines a getter' do
          config = config_class.new
          config.wont_respond_to(:new_getter)
          config_class.add_option(:new_getter)
          config.must_respond_to(:new_getter)
        end

        describe 'default values' do

          it 'accepts a default options' do
            config_class.add_option :attr, 'default'
            config_class.new.attr.must_equal('default')
          end

          it 'allows users to override defaults' do
            config_class.add_option :attr, 'default'
            config_class.new(:attr => 'value').attr.must_equal('value')
          end

        end

      end

      describe '#use_ssl' do

        it 'defaults to true' do
          config.use_ssl.must_equal(true)
        end

        it 'can be set to false' do
          config(:use_ssl => false).use_ssl.must_equal(false)
        end

      end

    end
  end
end
