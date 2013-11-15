require 'spec_helper'

module Seahorse
  module Client
    module Plugins
      describe Endpoint do
        let(:client_class) do
          client_class = Client::Base.define api: {
            'endpoint' => 'foo.com',
            'operations' => {
              'operation' => {},
            }
          }
          client_class.clear_plugins
          client_class.add_plugin(DummySendPlugin)
          client_class
        end

        def client(opts = {}) @client ||= client_class.new(opts) end

        it 'adds an #endpoint option to config' do
          expect(client.config.endpoint).to eq('foo.com')
        end

        it 'adds an #ssl_default option to config' do
          expect(client.config.ssl_default).to be(true)
        end

        it 'populates the http request endpoint' do
          resp = client.build_request('operation').send_request
          expect(resp.context.http_request.endpoint).to eq('https://foo.com/')
        end

        it 'defaults to http when ssl_default is false' do
          client = client(ssl_default: false)
          resp = client.build_request('operation').send_request
          expect(resp.context.http_request.endpoint).to eq('http://foo.com/')
       end

      end
    end
  end
end
