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
    describe Base do

      let(:api) {{ 'endpoint' => 'http://endpoint:123' }}

      let(:client_class) { Client.define(api: api) }

      let(:client) { client_class.new }

      describe '#config' do

        it 'returns a Configuration object' do
          expect(client.config).to be_kind_of(Configuration)
        end

        it 'contains the client api' do
          expect(client.config.api).to be(client_class.api)
        end

        it 'defaults endpoint to the api endpoint' do
          expect(client.config.endpoint).to eq(api['endpoint'])
        end

        it 'defaults ssl_default to true' do
          expect(client.config.ssl_default).to equal(true)
        end

        it 'passes constructor args to the config' do
          client = client_class.new(foo: 'bar')
          client.config.add_option(:foo)
          expect(client.config.foo).to eq('bar')
        end

      end

      describe '#build_request' do

        let(:request) { client_class.new.build_request('operation') }

        it 'returns a Request object' do
          expect(request).to be_kind_of(Request)
        end

        it 'builds a handler list from client plugins' do
          client_class.clear_plugins
          client_class.add_plugin(Plugins::Api)
          client_class.add_plugin(Plugins::NetHttp)
          client_class.add_plugin(Plugins::Endpoint)
          handlers = request.handlers.to_a
          expect(handlers).to include(NetHttp::Handler)
          expect(handlers).to include(Plugins::Endpoint::EndpointHandler)
        end

        it 'defaults the send handler to a NetHttp::Handler' do
          handlers = request.handlers.to_a
          expect(handlers).to include(NetHttp::Handler)
        end

        it 'sets the send handler if given as a client constructor option' do
          send_handler = Class.new(Handler)
          client = client_class.new(:send_handler => send_handler)
          request = client.build_request('operation')
          expect(request.handlers.to_a).to include(send_handler)
          expect(request.handlers.to_a).not_to include(NetHttp::Handler)
        end

        it 'populates the request context with the operation name' do
          request = client.build_request('operation_name')
          expect(request.context.operation_name).to eq('operation_name')
        end

        it 'stringifies the operation name' do
          request = client.build_request(:operation)
          expect(request.context.operation_name).to eq('operation')
        end

        it 'populates the request context params' do
          params = double('params')
          request = client.build_request('operation', params)
          expect(request.context.params).to be(params)
        end

        it 'defaults request context params to an empty hash' do
          request = client.build_request('operation')
          expect(request.context.params).to eq({})
        end

        it 'populates the context with the client configuration' do
          request = client.build_request('operation')
          expect(request.context.config).to be(client.config)
        end

      end

      describe '.api' do

        it 'can be set' do
          api = Model::Api.from_hash({})
          client_class = Class.new(Base)
          client_class.set_api(api)
          expect(client_class.api).to be(api)
        end

        it 'can be set as a hash, returning a Model::Api' do
          client_class = Class.new(Base)
          api = client_class.set_api({})
          expect(api).to be_kind_of(Model::Api)
          expect(api.to_hash).to eq(Model::Api.from_hash({}).to_hash)
        end

      end
    end
  end
end
