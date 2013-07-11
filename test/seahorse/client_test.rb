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
  describe Client do

    def api
      { 'endpoint' => 'http://endpoint:123' }
    end

    def client_class
      @client_class ||= Client.define(api)
    end

    def client
      @client ||= client_class.new
    end

    it 'defines a semver compatible version' do
      Client::VERSION.must_match(/\d+\.\d+\.\d+/)
    end

    describe '#endpoint' do

      it 'returns an Endpoint object' do
        client_class.new.endpoint.must_be_kind_of(Client::Endpoint)
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

    describe '.define' do

      it 'creates a new client class' do
        client_class = Client.define({})
        client_class.ancestors.must_include(Client)
      end

    end

    describe '.api' do

      it 'returns the API passed to .define' do
        api = {}
        client_class = Client.define(api)
        client_class.api.must_be_same_as(api)
      end

      it 'can be set' do
        api = {}
        client_class = Class.new(Client)
        client_class.set_api(api)
        client_class.api.must_be_same_as(api)
      end

    end

    describe '#build_request' do

      def params
        @params ||= {}
      end

      def operation_name
        @operation_name ||= 'operation_name'
      end

      def request
        @request ||= client.build_request(operation_name, params)
      end

      it 'returns a Request object' do
        client.build_request(operation_name).must_be_kind_of(Client::Request)
      end

      it 'populates the context with the params' do
        request.context.params.must_be_same_as(params)
      end

      it 'populates the context with the operation name' do
        request.context.operation_name.must_equal(operation_name)
      end

      it 'stringifies the operation name' do
        request = client.build_request(:operation, params)
        request.context.operation_name.must_equal('operation')
      end

    end

  end
end
