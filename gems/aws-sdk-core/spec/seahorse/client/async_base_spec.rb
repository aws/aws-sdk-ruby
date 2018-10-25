require_relative '../../spec_helper'

module Seahorse
  module Client
    describe AsyncBase do

      describe '.connection' do

        let(:client_class) { AsyncBase.define(api: Seahorse::Model::Api.new) }
        let(:client) { client_class.new(endpoint: 'http://example.com') }

        it 'returns a H2::Connection' do
          expect(client.connection).to be_kind_of(H2::Connection)
        end

        it 'closes the connection' do
          expect(client.connection).to receive(:close!)
          client.close_connection
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
