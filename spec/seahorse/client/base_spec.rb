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

      let(:client_class) { Client.define(api) }
      let(:client) { client_class.new }
      let(:api) do
        { 'endpoint' => 'http://endpoint:123' }
      end

      describe '#config' do

        it 'has a #ssl_default option that defaults to true' do
          expect(client.config.ssl_default).to eq(true)
        end

        it 'has a #endpoint option that defaults to the API endpoint' do
          expect(client.config.endpoint).to eq(api['endpoint'])
        end

        it 'returns a Configuration object' do
          expect(client.config).to be_kind_of(Configuration)
        end

        it 'passes constructor options to the configuration constructor' do
          client = client_class.new(ssl_default: false)
          expect(client.config.ssl_default).to eq(false)
        end

      end

      describe '#endpoint' do

        it 'raises a runtime error if the endpoint can not be built' do
          client_class = Class.new(Base)
          client_class.set_api({}) # endpoint not specified in API
          expect do
            client_class.new # endpoint not specified via :endpoint option
          end.to raise_error(ArgumentError, /endpoint/)
        end

        it 'returns an Endpoint object' do
          expect(client_class.new.endpoint).to be_kind_of(Http::Endpoint)
        end

        it 'is built from the :endpoint constructor option' do
          client_class = Client.define({})
          client = client_class.new(endpoint: 'http://foo.com')
          expect(client.endpoint).to eq('http://foo.com')
        end

        it 'comes from the client class API when not passed to the constructor' do
          client_class = Client.define('endpoint' => 'http://foo.com')
          client = client_class.new
          expect(client.endpoint).to eq('http://foo.com')
        end

        it 'defaults to https when scheme not given' do
          client = client_class.new(endpoint: 'foo.com')
          expect(client.endpoint).to eq('https://foo.com')
        end

        it 'defaults to http when :ssl_default is false' do
          client = client_class.new(endpoint: 'foo.com', ssl_default: false)
          expect(client.endpoint).to eq('http://foo.com')
        end

      end

      describe '#build_request' do

        it 'returns a Request object' do
          expect(client.build_request('operation')).to be_kind_of(Request)
        end

        describe 'handler' do

          let(:request) { client.build_request('operation') }

          it 'defaults to a Plugins::NetHttp::Handler' do
            expect(request.handler).to be_kind_of(Plugins::NetHttp::Handler)
          end

          it 'constructs the hander with the client configuration' do
            expect(request.handler.config).to be(client.config)
          end

          it 'accepts the handler as a client option' do
            handler = Class.new(Handler)
            client = client_class.new(:send_handler => handler)
            req = client.build_request('operation')
            expect(req.handler).to be_kind_of(handler)
          end

        end

        describe 'request context' do

          it 'defaults params to an empty hash' do
            expect(client.build_request('operation').context.params).to eq({})
          end

          it 'accepts params' do
            params = {}
            request = client.build_request('operation', params)
            expect(request.context.params).to be(params)
          end

          it 'populates the context with the operation name' do
            request = client.build_request('operation')
            expect(request.context.operation_name).to eq('operation')
          end

          it 'stringifies the operation name' do
            request = client.build_request(:operation)
            expect(request.context.operation_name).to eq('operation')
          end

          it 'populates the context with the endpoint' do
            request = client.build_request('operation')
            expect(request.context.http_request.endpoint).to be(client.endpoint)
          end

          it 'populates the context with the configuration' do
            request = client.build_request('operation')
            expect(request.context.config).to be(client.config)
          end

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
