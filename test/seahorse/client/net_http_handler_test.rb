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
require 'ostruct'

module Seahorse
  class Client
    describe NetHttpHandler do

      def config
        @config ||= OpenStruct.new
      end

      def context
        @context ||= RequestContext.new
      end

      def handler
        @handler ||= NetHttpHandler.new(config)
      end

      describe '#config' do

        it 'provides access to the configuration' do
          NetHttpHandler.new(config).config.must_be_same_as(config)
        end

      end

      describe '#pool' do

        it 'constructs a NetHttpConnectionPool' do
          handler.pool.must_be_kind_of(NetHttpConnectionPool)
        end

        it 'configures the pool#http_proxy' do
          config.http_proxy = 'http://proxy.com'
          handler.pool.http_proxy.must_equal(URI.parse('http://proxy.com'))
        end

        it 'configures the pool#http_continue_timeout' do
          config.http_continue_timeout = 123
          handler.pool.http_continue_timeout.must_equal(123)
        end

        it 'configures the pool#http_open_timeout' do
          config.http_open_timeout = 123
          handler.pool.http_open_timeout.must_equal(123)
        end

        it 'configures the pool#http_read_timeout' do
          config.http_read_timeout = 123
          handler.pool.http_read_timeout.must_equal(123)
        end

        it 'configures the pool#http_idle_timeout' do
          config.http_idle_timeout = 123
          handler.pool.http_idle_timeout.must_equal(123)
        end

        it 'configures the pool#http_wire_trace' do
          config.http_wire_trace = true
          handler.pool.http_wire_trace.must_equal(true)
        end

        it 'configures the pool#logger' do
          config.http_wire_trace = true
          config.logger = Object.new
          handler.pool.logger.must_be_same_as(config.logger)
        end

        it 'configures the pool#ssl_verify_peer' do
          config.ssl_verify_peer = false
          handler.pool.ssl_verify_peer.must_equal(false)
        end

        it 'configures the pool#ssl_ca_bundle' do
          config.ssl_ca_bundle = '/path/to/ca-bundle.crt'
          handler.pool.ssl_ca_bundle.must_equal('/path/to/ca-bundle.crt')
        end

        it 'configures the pool#ssl_ca_directory' do
          config.ssl_ca_bundle = '/path/to/certs'
          handler.pool.ssl_ca_bundle.must_equal('/path/to/certs')
        end

      end

      describe '#call' do

        def setup
          @endpoint = Endpoint.new('test.endpoint.api')
          context.http_request.endpoint = @endpoint
        end

        it 'returns a Response object from #call' do
          stub_request(:any, @endpoint)
          handler.call(context).must_be_kind_of(Response)
        end

        it 'populates the #context of the returned response' do
          stub_request(:any, @endpoint)
          handler.call(context).context.must_be_same_as(context)
        end

        it 'returns a completed request' do
          stub_request(:any, @endpoint)
          handler.call(context).complete?.must_equal(true)
        end

      end
    end
  end
end
