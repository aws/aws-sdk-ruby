# frozen_string_literal: true

require_relative '../../../spec_helper'

module Seahorse
  module Client
    module Plugins
      describe NetHttp do

        let(:config) do
          Configuration.new.tap do |config|
            config.add_option(:profile, nil)
            NetHttp.new.add_options(config)
            Aws::Plugins::DefaultsMode.new.add_options(config)
          end.build!
        end

        describe '#add_options' do
          it 'adds a :http_proxy option without default' do
            expect(config.http_proxy).to eq(nil)
          end

          it 'uses defaults mode for http_open_timeout' do
            allow_any_instance_of(Aws::ConfigurationDefaults::DefaultsModeConfigResolver)
              .to receive(:resolve)
            allow_any_instance_of(Aws::ConfigurationDefaults::DefaultsModeConfigResolver)
              .to receive(:resolve).with(:http_open_timeout).and_return(10)
            expect(config.http_open_timeout).to eq(10)
          end

          it 'adds a :http_open_timeout option with default' do
            expect(config.http_open_timeout).to eq(15)
          end

          it 'adds a :http_read_timeout option with default' do
            expect(config.http_read_timeout).to eq(60)
          end

          it 'uses defaults mode for http_read_timeout' do
            allow_any_instance_of(Aws::ConfigurationDefaults::DefaultsModeConfigResolver)
              .to receive(:resolve)
            allow_any_instance_of(Aws::ConfigurationDefaults::DefaultsModeConfigResolver)
              .to receive(:resolve).with(:http_read_timeout).and_return(10)
            expect(config.http_read_timeout).to eq(10)
          end

          it 'adds a :http_idle_timeout option with default' do
            expect(config.http_idle_timeout).to eq(5)
          end

          it 'adds a :http_continue_timeout option with default' do
            expect(config.http_continue_timeout).to eq(1)
          end

          it 'adds a :http_wire_trace option with default' do
            expect(config.http_wire_trace).to eq(false)
          end

          it 'adds a :logger option without default' do
            expect(config.logger).to eq(nil)
          end

          it 'adds a :ssl_verify_peer option with default' do
            expect(config.ssl_verify_peer).to eq(true)
          end

          it 'adds a :ssl_timeout option with no default' do
            expect(config.ssl_timeout).to eq(nil)
          end

          it 'uses defaults mode for ssl_timeout' do
            allow_any_instance_of(Aws::ConfigurationDefaults::DefaultsModeConfigResolver)
              .to receive(:resolve)
            allow_any_instance_of(Aws::ConfigurationDefaults::DefaultsModeConfigResolver)
              .to receive(:resolve).with(:ssl_timeout).and_return(10)
            expect(config.ssl_timeout).to eq(10)
          end

          context ':ssl_ca_bundle' do
            it 'adds a :ssl_ca_bundle option without default' do
              expect(config.ssl_ca_bundle).to be(nil)
            end

            it 'can be configured with shared config' do
              allow_any_instance_of(Aws::SharedConfig)
                .to receive(:ca_bundle).and_return('/path/to/bundle.crt')
              expect(config.ssl_ca_bundle).to eq('/path/to/bundle.crt')
            end

            it 'can configure ca_bundle using ENV with precedence' do
              allow_any_instance_of(Aws::SharedConfig)
                .to receive(:retry_mode).and_return('/other/path/to/bundle.crt')
              ENV['AWS_CA_BUNDLE'] = '/path/to/bundle.crt'
              expect(config.ssl_ca_bundle).to eq('/path/to/bundle.crt')
            end
          end

          it 'adds a :ssl_ca_directory option without default' do
            expect(config.ssl_ca_directory).to eq(nil)
          end

          it 'adds a :ssl_ca_store option without default' do
            expect(config.ssl_ca_store).to eq(nil)
          end
        end

        describe '#add_handlers' do

          it 'sets the :send hander to a Client::NetHttp::Handler' do
            handlers = HandlerList.new
            NetHttp.new.add_handlers(handlers, config)
            expect(handlers.to_a).to eq([Client::NetHttp::Handler])
          end

        end
      end
    end
  end
end
