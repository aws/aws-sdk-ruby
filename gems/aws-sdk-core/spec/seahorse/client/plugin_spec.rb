require_relative '../../spec_helper'
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

      describe '.before_initialize' do

        it 'yeilds the client class and constructor options to the plugin' do
          yielded_class = nil
          yielded_options = nil
          client = SpecHelper.client_with_plugin(foo: 'bar') do
            option(:foo)
            option(:endpoint, 'http://foo.com')
            option(:regional_endpoint, false)
            before_initialize do |klass, options|
              yielded_class = klass
              yielded_options = options
            end
          end
          expect(yielded_class).to be(client.class)
          expect(yielded_options).to eq(foo: 'bar')
          expect(client.config.foo).to eq('bar')
        end

      end

      describe '.after_initialize' do

        it 'yieldes the fully constructed client to the plugin' do
          initialized_client = nil
          client = SpecHelper.client_with_plugin do
            option(:endpoint, 'http://foo.com')
            option(:regional_endpoint, false)
            after_initialize {|c| initialized_client = c }
          end
          expect(client).to be(initialized_client)
        end

      end
    end
  end
end
