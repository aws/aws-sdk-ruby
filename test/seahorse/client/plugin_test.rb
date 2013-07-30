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
  module Client
    describe Plugin do

      def handlers
        @handlers ||= HandlerList.new
      end

      def config
        @config ||= Configuration.new
      end

      def plugin_class
        @plugin_class ||= Class.new(Plugin)
      end

      describe '#add_options' do

        it 'does nothing by default' do
          options = config.options
          plugin_class.new.add_options(config)
          config.options.must_equal(options)
        end

        it 'adds options registered by .option' do
          plugin_class.option(:opt_without_default)
          plugin_class.option(:opt_with_default, 'DEFAULT')
          plugin_class.option(:opt_with_block) { 'BLOCK-DEFAULT' }
          plugin_class.new.add_options(config)
          config.opt_without_default.must_equal(nil)
          config.opt_with_default.must_equal('DEFAULT')
          config.opt_with_block.must_equal('BLOCK-DEFAULT')
        end

      end

      describe '#add_handlers' do

        it 'does nothing by default' do
          plugin_class.new.add_handlers(handlers, config)
        end

        it 'adds handlers registered by .handler' do
          build_handler = Class.new
          sign_handler = Class.new
          send_handler = Class.new
          plugin_class.handler(build_handler)
          plugin_class.handler(sign_handler, priority: :sign)
          plugin_class.handler(send_handler, priority: :send)
          plugin_class.new.add_handlers(handlers, config)
          handlers.to_a.must_equal([send_handler, sign_handler, build_handler])
        end

      end
    end
  end
end
