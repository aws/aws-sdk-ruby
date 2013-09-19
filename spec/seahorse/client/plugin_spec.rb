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
require 'ostruct'

module Seahorse
  module Client
    describe Plugin do

      let(:handlers) { HandlerList.new }

      let(:plugin) { Class.new(Plugin) }

      let(:config) { Configuration.new }

      it 'is a HandlerBuilder' do
        expect(plugin).to be_kind_of(HandlerBuilder)
      end

      describe '#add_options' do

        it 'adds options registered by .option' do
          plugin.option(:opt_without_default)
          plugin.option(:opt_with_default, 'DEFAULT')
          plugin.option(:opt_with_block) { 'BLOCK-DEFAULT' }
          plugin.new.add_options(config)
          cfg = config.build!
          expect(cfg.opt_without_default).to eq(nil)
          expect(cfg.opt_with_default).to eq('DEFAULT')
          expect(cfg.opt_with_block).to eq('BLOCK-DEFAULT')
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
          plugin.handler(sign_handler, step: :sign)
          plugin.handler(send_handler, step: :send)
          plugin.new.add_handlers(handlers, config)
          expect(handlers.to_a).to eq([send_handler, sign_handler, build_handler])
        end

      end

      describe '.option' do

        it 'provides a short-cut method for adding options' do
          plugin = Class.new(Plugin) { option(:opt) }
          plugin.new.add_options(config)
          expect(config.build!.opt).to be(nil)
        end

        it 'accepts a static default value' do
          plugin = Class.new(Plugin) { option(:opt, 'default') }
          plugin.new.add_options(config)
          expect(config.build!.opt).to eq('default')
        end

        it 'accepts a default value as a block' do
          value = Object.new
          plugin = Class.new(Plugin) do
            option(:opt) { value }
          end
          plugin.new.add_options(config)
          expect(config.build!.opt).to be(value)
       end

        it 'accepts a default block value and yields the config' do
          plugin = Class.new(Plugin) do
            option(:opt1, 10)
            option(:opt2) { |config| config.opt1 * 2 }
          end
          plugin.new.add_options(config)
          expect(config.build!.opt2).to equal(20)
        end

      end

      describe '.initialize_client' do

        it 'provides a short-cut method for adding initializers' do
          initialized_client = nil
          client = client_with_plugin do
            initialize_client {|c| initialized_client = c }
          end
          expect(client).to be(initialized_client)
        end

      end

      describe '.client_class_for' do

        it 'provides a method to specify a different client class' do
          client = client_with_plugin do
            client_class_for {|klass, options| OpenStruct }
          end
          expect(client).to be_kind_of(OpenStruct)
        end

        it 'gives the constructor options to the block' do
          yielded = nil
          client_with_plugin(foo: 'bar') do
            client_class_for {|klass, options| yielded = options }
          end
          expect(yielded).to eq(foo: 'bar')
        end

      end
    end
  end
end
