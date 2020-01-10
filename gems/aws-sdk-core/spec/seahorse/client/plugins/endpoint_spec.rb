require_relative '../../../spec_helper'

module Seahorse
  module Client
    module Plugins
      describe Endpoint do

        let(:client_class) do
          api = Model::Api.new
          api.add_operation(:operation_name, Model::Operation.new)
          client_class = Class.new(Client::Base)
          client_class.set_api(api)
          client_class.clear_plugins
          client_class.add_plugin(Endpoint)
          client_class.add_plugin(DummySendPlugin)
          client_class
        end

        it 'adds an #endpoint option to config' do
          client = client_class.new(endpoint:'http://foo.com')
          expect(client.config.endpoint.to_s).to eq('http://foo.com')
        end

        it 'populates the http request endpoint' do
          client = client_class.new(endpoint:'https://foo.com')
          resp = client.build_request('operation_name').send_request
          expect(resp.context.http_request.endpoint).to eq(URI.parse('https://foo.com/'))
        end

      end
    end
  end
end
