# frozen_string_literal: true

require_relative '../../../spec_helper'

module Seahorse
  module Client
    module Plugins
      describe H2 do

        let(:config) do
          Configuration.new.tap do |config|
            config.add_option(:profile, nil)
            H2.new.add_options(config)
          end.build!
        end

        describe '#add_options' do

          it 'adds a :max_concurrent_streams option with default' do
            expect(config.max_concurrent_streams).to eq(100)
          end

          it 'adds a :connection_timeout option with default' do
            expect(config.connection_timeout).to eq(60)
          end

          it 'adds a :connection_read_timeout option with default' do
            expect(config.connection_read_timeout).to eq(60)
          end

          it 'adds a :read_chunk_size option with default' do
            expect(config.read_chunk_size).to eq(1024)
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

          it 'adds a :enable_alpn option with default' do
            expect(config.enable_alpn).to eq(false)
          end

          it 'defaults the :raise_response_errors to true' do
            expect(config.raise_response_errors).to eq(true)
          end

        end

        describe '#add_handlers' do

          it 'sets the :send handler to a Client::H2::Handler' do
            handlers = HandlerList.new
            H2.new.add_handlers(handlers, config)
            expect(handlers.to_a).to eq([Client::H2::Handler])
          end

        end

      end
    end
  end
end
