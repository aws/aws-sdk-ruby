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

      def config_class
        @klass ||= Class.new(Configuration)
      end

      it 'can be constructed without any arguments' do
        config_class.new.must_be_kind_of(Configuration)
      end

      it 'keeps all options passed to the constructor' do
        config = config_class.new(:opt_name => 'opt-value')
        config.wont_respond_to(:opt_name)
        config_class.add_option(:opt_name)
        config.opt_name.must_equal('opt-value')
      end

      describe '.add_option' do

        it 'defines a getter method' do
          config_class.add_option(:name)
          config_class.new.must_respond_to(:name)
        end

        it 'returns nil from getters by default' do
          config_class.add_option(:color)
          config_class.new.color.must_equal(nil)
        end

        describe ':default' do

          it 'causes the getter to return an alternative default value' do
            config_class.add_option(:size, :default => 'large')
            config_class.new.size.must_equal('large')
          end

        end

      end

    end
  end
end
