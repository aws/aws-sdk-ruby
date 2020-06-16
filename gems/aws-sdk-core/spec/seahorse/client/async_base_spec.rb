# frozen_string_literal: true

require_relative '../../spec_helper'

module Seahorse
  module Client
    describe AsyncBase do
      if RUBY_VERSION >= '2.1' && !ENV['NO_H2']

        describe 'api operations' do

          let(:api) { Seahorse::Model::Api.new }

          let(:client) {
            AsyncBase.define(api: api).new(endpoint: 'http://example.com')
          }

          before(:each) do
            op = Model::Operation.new
            op.async = true
            api.add_operation(:op_1, op)
            api.add_operation(:op_2, Model::Operation.new)
          end

          it 'returns async operation names' do
            expect(client.operation_names).to eq([:op_1])
          end

        end

        describe '.connection' do

          let(:client_class) { AsyncBase.define(api: Seahorse::Model::Api.new) }
          let(:options) { { endpoint: 'http://example.com' } }

          let(:client) { client_class.new(options) }

          it 'returns a H2::Connection' do
            expect(client.connection).to be_kind_of(H2::Connection)
          end

          it 'configures the connection #max_concurrent_streams' do
            options[:max_concurrent_streams] = 5
            expect(client.connection.max_concurrent_streams).to eq(5)
          end

          it 'configures the connection #connection_timeout' do
            options[:connection_timeout] = 10
            expect(client.connection.connection_timeout).to eq(10)
          end

          it 'configures the connection #connection_read_timeout' do
            options[:connection_read_timeout] = 15
            expect(client.connection.connection_read_timeout).to eq(15)
          end

          it 'configures the connection #http_wire_trace' do
            options[:http_wire_trace] = true
            expect(client.connection.http_wire_trace).to eq(true)
          end

          it 'configures the connection #logger' do
            options[:http_wire_trace] = true
            options[:logger] = Object.new
            expect(client.connection.logger).to eq(options[:logger])
          end

          it 'configures the connection #ssl_verify_peer' do
            options[:ssl_verify_peer] = true
            expect(client.connection.ssl_verify_peer).to eq(true)
          end

          it 'configures the connection #ssl_ca_bundle' do
            options[:ssl_ca_bundle] = '/path/to/cert.crt'
            expect(client.connection.ssl_ca_bundle).to eq('/path/to/cert.crt')
          end

          it 'configures the connection #ssl_ca_directory' do
            options[:ssl_ca_directory] = '/path/to/certs'
            expect(client.connection.ssl_ca_directory).to eq('/path/to/certs')
          end

          it 'closes the connection' do
            expect(client.connection).to receive(:close!)
            client.close_connection
          end

          it 'can #new_connection if previous connection is closed' do
            old_conn = client.connection.dup
            expect(client.connection).to receive(:closed?)

            client.close_connection
            client.new_connection
            expect(client.connection).to_not eq(old_conn)
          end

          it 'returns array of connection errors' do
            expect(client.connection).to receive(:errors)
            client.connection_errors
          end

        end

        describe '.plugins' do

          it 'has a default list of plugins' do
            client_class = Class.new(AsyncBase)
            expect(client_class.plugins.to_a).to eq([
              Plugins::Endpoint,
              Plugins::H2,
              Plugins::ResponseTarget
            ])
          end

        end
      end
    end
  end
end
