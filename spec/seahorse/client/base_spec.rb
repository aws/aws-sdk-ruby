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

      def api
        { 'endpoint' => 'http://endpoint:123' }
      end

      def client_class
        @client_class ||= Client.define(api)
      end

      def client
        @client ||= client_class.new
      end

      describe '#config' do

        it 'has a #ssl_default option that defaults to true' do
          client.config.ssl_default.should eq(true)
        end

        it 'has a #endpoint option that defaults to the API endpoint' do
          client.config.endpoint.should eq(api['endpoint'])
        end

        it 'returns a Configuration object' do
          client.config.should be_kind_of(Configuration)
        end

        it 'passes constructor options to the configuration constructor' do
          client = client_class.new(ssl_default: false)
          client.config.ssl_default.should eq(false)
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
          client_class.new.endpoint.should be_kind_of(Http::Endpoint)
        end

        it 'is built from the :endpoint constructor option' do
          client_class = Client.define({})
          client = client_class.new(endpoint: 'http://foo.com')
          client.endpoint.should eq('http://foo.com')
        end

        it 'comes from the client class API when not passed to the constructor' do
          client_class = Client.define('endpoint' => 'http://foo.com')
          client = client_class.new
          client.endpoint.should eq('http://foo.com')
        end

        it 'defaults to https when scheme not given' do
          client = client_class.new(endpoint: 'foo.com')
          client.endpoint.should eq('https://foo.com')
        end

        it 'defaults to http when :ssl_default is false' do
          client = client_class.new(endpoint: 'foo.com', ssl_default: false)
          client.endpoint.should eq('http://foo.com')
        end

      end

      describe '#build_request' do

        it 'returns a Request object' do
          client.build_request('operation').should be_kind_of(Request)
        end

        describe 'handler' do

          def request
            @request ||= client.build_request('operation')
          end

          it 'defaults to a Plugins::NetHttp::Handler' do
            request.handler.should be_kind_of(Plugins::NetHttp::Handler)
          end

          it 'constructs the hander with the client configuration' do
            request.handler.config.should be(client.config)
          end

          it 'accepts the handler as a client option' do
            handler = Class.new(Handler)
            client = client_class.new(:http_handler => handler)
            req = client.build_request('operation')
            req.handler.should be_kind_of(handler)
          end

        end

        describe 'request context' do

          it 'defaults params to an empty hash' do
            client.build_request('operation').context.params.should eq({})
          end

          it 'accepts params' do
            params = {}
            request = client.build_request('operation', params)
            request.context.params.should be(params)
          end

          it 'populates the context with the operation name' do
            request = client.build_request('operation')
            request.context.operation_name.should eq('operation')
          end

          it 'stringifies the operation name' do
            request = client.build_request(:operation)
            request.context.operation_name.should eq('operation')
          end

          it 'populates the context with the endpoint' do
            request = client.build_request('operation')
            request.context.http_request.endpoint.should be(client.endpoint)
          end

          it 'populates the context with the configuration' do
            request = client.build_request('operation')
            request.context.config.should be(client.config)
          end

        end
      end

      describe '.api' do

        it 'can be set' do
          api = Model::Api.from_hash({})
          client_class = Class.new(Base)
          client_class.set_api(api)
          client_class.api.should be(api)
        end

        it 'can be set as a hash, returning a Model::Api' do
          client_class = Class.new(Base)
          api = client_class.set_api({})
          api.should be_kind_of(Model::Api)
          api.to_hash.should eq(Model::Api.from_hash({}).to_hash)
        end

      end
    end
  end
end
