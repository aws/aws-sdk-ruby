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
require 'stringio'

module Seahorse::Client::Plugins::NetHttp
  describe Handler do

    def config
      @config ||= OpenStruct.new
    end

    def endpoint
      @endpoint ||= Seahorse::Client::Http::Endpoint.new('test.endpoint.api')
    end

    def context
      @context ||= begin
        context = Seahorse::Client::RequestContext.new
        context.http_request.endpoint = endpoint
        context
      end
    end

    def handler
      @handler ||= Handler.new(config)
    end

    def make_request
      handler.call(context)
    end

    def setup
      WebMock.disable_net_connect!
    end

    describe '#config' do

      it 'provides access to the configuration' do
        config = OpenStruct.new
        Handler.new(config).config.must_be_same_as(config)
      end

    end

    describe '#pool' do

      it 'constructs a ConnectionPool' do
        handler.pool.must_be_kind_of(ConnectionPool)
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

      def http_request
        context.http_request
      end

      it 'returns a Response object from #call' do
        stub_request(:any, endpoint)
        resp = make_request
        resp.must_be_kind_of(Seahorse::Client::Response)
      end

      it 'populates the #context of the returned response' do
        stub_request(:any, endpoint)
        resp = make_request
        resp.context.must_be_same_as(context)
      end

      it 'returns a completed request' do
        stub_request(:any, endpoint)
        resp = make_request
        resp.complete?.must_equal(true)
      end

      describe 'request endpoint' do

        it 'makes a request against the given endpoint' do
          @endpoint = Seahorse::Client::Http::Endpoint.new('http://foo.bar.com')
          stub_request(:any, 'http://foo.bar.com')
          make_request
        end

        it 'observes the Endpoint#port' do
          @endpoint = Seahorse::Client::Http::Endpoint.new('http://foo.bar.com:9876')
          stub_request(:any, 'http://foo.bar.com:9876')
          make_request
        end

        it 'observes the Endpoint#scheme' do
          @endpoint = Seahorse::Client::Http::Endpoint.new('https://foo.bar.com')
          stub_request(:any, 'https://foo.bar.com')
          make_request
        end

      end

      describe 'request http method' do

        it 'uses the http_request#http_method to make the request' do
          http_request.http_method = 'POST'
          stub_request(:post, endpoint)
          make_request
        end

        it 'raises a helpful error if the request method is invalid' do
          http_request.http_method = 'abc'
          err = assert_raises(Handler::InvalidHttpVerbError) do
            make_request
          end
          err.message.must_equal('`abc` is not a valid http verb')
        end

      end

      describe 'request headers' do

        it 'passes along http_request#headers' do
          http_request.headers['abc'] = 'xyz'
          stub_request(:any, endpoint).with(:headers => { 'abc' => 'xyz' })
          make_request
        end

        it 'populates a default content-type header' do
          # this prevents net/http from setting content-type on our behalf
          stub_request(:any, endpoint).
            with(:headers => { 'content-type' => '' })
          make_request
        end

        it 'does not clobber a custom content-type' do
          http_request.headers['Content-Type'] = 'application/json'
          stub_request(:any, endpoint).
            with(:headers => { 'content-type' => 'application/json' })
          make_request
        end

        it 'populates a default accept-encoding header' do
          # this prevents net/http from setting accept-encoding on our behalf
          stub_request(:any, endpoint).
            with(:headers => { 'accept-encoding' => '' })
          make_request
        end

        it 'does not clobber a custom accept-encoding' do
          http_request.headers['Accept-Encoding'] = 'text/plain'
          stub_request(:any, endpoint).
            with(:headers => { 'accept-encoding' => 'text/plain' })
          make_request
        end

      end

      describe 'request path' do

        it 'sends the request with the correct request uri' do
          http_request.path = '/path'
          stub_request(:any, "#{endpoint}/path")
          make_request
        end

        it 'sends the request with the querystring' do
          http_request.path = '/abc?mno=xyz'
          stub_request(:any, "#{endpoint}/abc?mno=xyz")
          make_request
        end

      end

      describe 'request body' do

        it 'sends the body' do
          http_request.body = StringIO.new('request-body')
          stub_request(:any, endpoint).with(body: 'request-body')
          make_request
        end

      end

      describe 'response' do

        it 'populates the status code' do
          stub_request(:any, endpoint).to_return(status: 200)
          make_request.http_response.status_code.must_equal(200)
        end

        it 'populates the headers' do
          stub_request(:any, endpoint).to_return(headers: { foo: 'bar' })
          make_request.http_response.headers['foo'].must_equal('bar')
        end

        it 'populates the response body' do
          stub_request(:any, endpoint).to_return(body: 'response-body')
          make_request.http_response.body.read.must_equal('response-body')
        end

      end
    end
  end
end
