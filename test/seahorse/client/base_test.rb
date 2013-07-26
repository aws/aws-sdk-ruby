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

require 'test_helper'

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
          client.config.ssl_default.must_equal(true)
        end

        it 'has a #endpoint option that defaults to the API endpoint' do
          client.config.endpoint.must_equal(api['endpoint'])
        end

        it 'returns a Configuration object' do
          client.config.must_be_kind_of(Configuration)
        end

        it 'passes constructor options to the configuration constructor' do
          client = client_class.new(ssl_default: false)
          client.config.ssl_default.must_equal(false)
        end

      end

      describe '#endpoint' do

        it 'raises a runtime error if the endpoint can not be built' do
          client_class = Class.new(Base)
          client_class.set_api({}) # endpoint not specified in API
          err = assert_raises(ArgumentError) do
            client_class.new # endpoint not specified via :endpoint option
          end
          err.message.must_match(/endpoint/)
        end

        it 'returns an Endpoint object' do
          client_class.new.endpoint.must_be_kind_of(Http::Endpoint)
        end

        it 'is built from the :endpoint constructor option' do
          client_class = Client.define({})
          client = client_class.new(endpoint: 'http://foo.com')
          client.endpoint.must_equal('http://foo.com')
        end

        it 'comes from the client class API when not passed to the constructor' do
          client_class = Client.define('endpoint' => 'http://foo.com')
          client = client_class.new
          client.endpoint.must_equal('http://foo.com')
        end

        it 'defaults to https when scheme not given' do
          client = client_class.new(endpoint: 'foo.com')
          client.endpoint.must_equal('https://foo.com')
        end

        it 'defaults to http when :ssl_default is false' do
          client = client_class.new(endpoint: 'foo.com', ssl_default: false)
          client.endpoint.must_equal('http://foo.com')
        end

      end

      describe '#build_request' do

        it 'returns a Request object' do
          client.build_request('operation').must_be_kind_of(Request)
        end

        describe 'handler' do

          def request
            @request ||= client.build_request('operation')
          end

          it 'defaults to a Plugins::NetHttp::Handler' do
            request.handler.must_be_kind_of(Plugins::NetHttp::Handler)
          end

          it 'constructs the hander with the client configuration' do
            request.handler.config.must_be_same_as(client.config)
          end

          it 'accepts the handler as a client option' do
            handler = Class.new(Handler)
            client = client_class.new(:http_handler => handler)
            req = client.build_request('operation')
            req.handler.must_be_kind_of(handler)
          end

        end

        describe 'request context' do

          it 'defaults params to an empty hash' do
            client.build_request('operation').context.params.must_equal({})
          end

          it 'accepts params' do
            params = {}
            request = client.build_request('operation', params)
            request.context.params.must_be_same_as(params)
          end

          it 'populates the context with the operation name' do
            request = client.build_request('operation')
            request.context.operation_name.must_equal('operation')
          end

          it 'stringifies the operation name' do
            request = client.build_request(:operation)
            request.context.operation_name.must_equal('operation')
          end

          it 'populates the context with the endpoint' do
            request = client.build_request('operation')
            request.context.http_request.endpoint.must_be_same_as(client.endpoint)
          end

          it 'populates the context with the configuration' do
            request = client.build_request('operation')
            request.context.config.must_be_same_as(client.config)
          end

        end
      end

      describe '.api' do

        it 'can be set' do
          api = {}
          client_class = Class.new(Base)
          client_class.set_api(api)
          client_class.api.must_be_same_as(api)
        end

      end
    end
  end
end
