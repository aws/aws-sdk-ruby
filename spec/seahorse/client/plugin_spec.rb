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

require 'spec_helper'

module Seahorse
  module Client
    describe Plugin do

      let(:handlers) { HandlerList.new }

      let(:plugin) { Class.new(Plugin) }

      let(:config) { Configuration.new }

      describe '#add_options' do

        it 'does nothing by default' do
          options = config.options
          plugin.new.add_options(config)
          expect(config.options).to eq(options)
        end

        it 'adds options registered by .option' do
          plugin.option(:opt_without_default)
          plugin.option(:opt_with_default, 'DEFAULT')
          plugin.option(:opt_with_block) { 'BLOCK-DEFAULT' }
          plugin.new.add_options(config)
          expect(config.opt_without_default).to eq(nil)
          expect(config.opt_with_default).to eq('DEFAULT')
          expect(config.opt_with_block).to eq('BLOCK-DEFAULT')
        end

      end

      describe '#add_handlers' do

        it 'does nothing by default' do
          plugin.new.add_handlers(handlers, config)
        end

        it 'adds handlers registered by .handler' do
          build_handler = Class.new
          sign_handler = Class.new
          send_handler = Class.new
          plugin.handler(build_handler)
          plugin.handler(sign_handler, priority: :sign)
          plugin.handler(send_handler, priority: :send)
          plugin.new.add_handlers(handlers, config)
          expect(handlers.to_a).to eq([send_handler, sign_handler, build_handler])
        end

      end

      describe '.option' do

        it 'provides a short-cut method for adding options' do
          plugin = Class.new(Plugin) { option(:opt) }
          plugin.new.add_options(config)
          expect(config.opt).to be(nil)
        end

        it 'accepts a static default value' do
          plugin = Class.new(Plugin) { option(:opt, 'default') }
          plugin.new.add_options(config)
          expect(config.opt).to eq('default')
        end

        it 'accepts a default value as a block' do
          value = Object.new
          plugin = Class.new(Plugin) do
            option(:opt) { value }
          end
          plugin.new.add_options(config)
          expect(config.opt).to be(value)
       end

        it 'accepts a default block value and yields the config' do
          plugin = Class.new(Plugin) do
            option(:opt1, 10)
            option(:opt2) { |config| config.opt1 * 2 }
          end
          plugin.new.add_options(config)
          expect(config.opt2).to equal(20)
        end

        it 'instance evals the block' do
          plugin = Class.new(Plugin) do
            def initialize
              @value = 'instance-value'
            end
            option(:value) { @value }
          end
          plugin.new.add_options(config)
          expect(config.value).to eq('instance-value')
        end

      end

      describe '.handler' do

        let(:handlers) { HandlerList.new }

        it 'registers a handler' do
          handler_class = Class.new(Handler)
          client = client_with_plugin { handler handler_class }
          expect(client.handlers).to include(handler_class)
        end

        it 'accepts a priority option' do
          handler1 = Class.new(Handler)
          handler2 = Class.new(Handler)
          client = client_with_plugin do
            handler(handler1, priority: :validate)
            handler(handler2, priority: :build)
          end
          expect(client.handlers.to_a).to eq([handler2, handler1])
        end

        it 'builds a handler from a block' do
          plugin = Class.new(Plugin) do
            handler do |context|
              'handler-return-value'
            end
          end
          plugin.new.add_handlers(handlers, config)
          resp = handlers.to_stack.call('context')
          expect(resp).to eq('handler-return-value')
        end

        it 'accepts a priority with the block' do
          plugin = Class.new(Plugin) do
            handler(priority: :validate) do |context|
              context << :validate
              super(context)
            end
            handler(priority: :build) do |context|
              context << :build
              @handler.call(context)
            end
            handler(priority: :sign) do |context|
              context << :sign
              handler.call(context)
            end
            handler(priority: :send) do |context|
              context << :send
              context
            end
          end
          plugin.new.add_handlers(handlers, config)
          resp = handlers.to_stack.call([])
          expect(resp).to eq([:validate, :build, :sign, :send])
        end

        it 'returns the handler class' do
          handler_class = Class.new(Handler)
          expect(plugin.handler(handler_class)).to be(handler_class)
        end

        it 'returns the handler class created from a block' do
          handler = plugin.handler { |context| 'handler-return' }
          expect(handler.ancestors).to include(Handler)
          expect(handler.new.call('context')).to eq('handler-return')
        end

        it 'assigns the handler to a constant if a name is given' do
          expect(plugin.const_defined?('MyHandler')).to be(false)
          handler_class = plugin.handler('MyHandler') { |arg| arg }
          expect(plugin::MyHandler).to be(handler_class)
        end

        it 'accepts the handler name as a symbol' do
          handler_class = plugin.handler(:MyHandler) { |arg| arg }
          expect(plugin::MyHandler).to be(handler_class)
        end

        it 'only defines the handler class once' do
          expect(plugin).to receive(:const_set).with('MyHandler', anything).once
          plugin.handler('MyHandler') {|context|}
          5.times { plugin.new.add_handlers(HandlerList.new, config) }
        end

      end

      describe '.request_handler' do

        it 'passes the context to the block' do
          yielded = nil
          handler = plugin.request_handler do |context|
            yielded = context
          end
          handler.new(->(_) { }).call('context')
          expect(yielded).to eq('context')
        end

        it 'calls the next handler in the stack reguardless of the return' do
          handler = plugin.request_handler do |context|
            nil # still calls the next handler, despite the block return value
          end
          context = Object.new
          resp = handler.new(->(context) { context }).call(context)
          expect(resp).to be(context)
        end

      end

      describe '.response_handler' do

        it 'is called when the response is signaled complete' do
          called = false
          handler = plugin.response_handler { |response| called = true }
          handler.new(->(_) { Response.new.signal_complete }).call(nil)
          expect(called).to be(true)
        end

        it 'is not called if the response is not signaled complete' do
          called = false
          handler = plugin.response_handler { |response| called = true }
          handler.new(->(_) { Response.new }).call(nil)
          expect(called).to be(false)
        end

      end
    end
  end
end
