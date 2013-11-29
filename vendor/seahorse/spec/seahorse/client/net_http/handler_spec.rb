require 'spec_helper'
require 'ostruct'
require 'stringio'

module Seahorse
  module Client
    module NetHttp
      describe Handler do

        before(:each) { WebMock.disable_net_connect! }

        let(:config) { OpenStruct.new }

        let(:handler) { Handler.new }

        let(:make_request) { handler.call(context) }

        let(:context) do
          RequestContext.new.tap do |context|
            context.config = config
            context.http_request.endpoint = endpoint
          end
        end

        def endpoint
          @endpoint ||= Http::Endpoint.new('test.endpoint.api')
        end

        describe '#pool' do

          let(:handler_pool) { handler.pool_for(config) }

          it 'constructs a ConnectionPool' do
            expect(handler_pool).to be_kind_of(ConnectionPool)
          end

          it 'configures the pool#http_proxy' do
            config.http_proxy = 'http://proxy.com'
            expect(handler_pool.http_proxy).to eq(URI.parse('http://proxy.com'))
          end

          it 'configures the pool#http_continue_timeout' do
            config.http_continue_timeout = 123
            expect(handler_pool.http_continue_timeout).to eq(123)
          end

          it 'configures the pool#http_open_timeout' do
            config.http_open_timeout = 123
            expect(handler_pool.http_open_timeout).to eq(123)
          end

          it 'configures the pool#http_read_timeout' do
            config.http_read_timeout = 123
            expect(handler_pool.http_read_timeout).to eq(123)
          end

          it 'configures the pool#http_idle_timeout' do
            config.http_idle_timeout = 123
            expect(handler_pool.http_idle_timeout).to eq(123)
          end

          it 'configures the pool#http_wire_trace' do
            config.http_wire_trace = true
            expect(handler_pool.http_wire_trace).to eq(true)
          end

          it 'configures the pool#logger' do
            config.http_wire_trace = true
            config.logger = Object.new
            expect(handler_pool.logger).to be(config.logger)
          end

          it 'configures the pool#ssl_verify_peer' do
            config.ssl_verify_peer = false
            expect(handler_pool.ssl_verify_peer).to eq(false)
          end

          it 'configures the pool#ssl_ca_bundle' do
            config.ssl_ca_bundle = '/path/to/ca-bundle.crt'
            expect(handler_pool.ssl_ca_bundle).to eq('/path/to/ca-bundle.crt')
          end

          it 'configures the pool#ssl_ca_directory' do
            config.ssl_ca_bundle = '/path/to/certs'
            expect(handler_pool.ssl_ca_bundle).to eq('/path/to/certs')
          end

        end

        describe '#call' do

          let(:http_request) { context.http_request }

          it 'returns a Response object from #call' do
            stub_request(:any, endpoint)
            resp = make_request
            expect(resp).to be_kind_of(Response)
          end

          it 'populates the #context of the returned response' do
            stub_request(:any, endpoint)
            resp = make_request
            expect(resp.context).to be(context)
          end

          describe 'request endpoint' do

            it 'makes a request against the given endpoint' do
              @endpoint = Http::Endpoint.new('http://foo.bar.com')
              stub_request(:any, 'http://foo.bar.com')
              make_request
            end

            it 'observes the Endpoint#port' do
              @endpoint = Http::Endpoint.new('http://foo.bar.com:9876')
              stub_request(:any, 'http://foo.bar.com:9876')
              make_request
            end

            it 'observes the Endpoint#scheme' do
              @endpoint = Http::Endpoint.new('https://foo.bar.com')
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
              message = '`abc` is not a valid http verb'
              http_request.http_method = 'abc'
              expect { make_request }.to raise_error(
                Handler::InvalidHttpVerbError, message)
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
              http_request.endpoint.request_uri = '/path'
              stub_request(:any, http_request.endpoint)
              make_request
            end

            it 'sends the request with the querystring' do
              http_request.endpoint.request_uri = '/abc?mno=xyz'
              stub_request(:any, http_request.endpoint)
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
              expect(make_request.http_response.status_code).to eq(200)
            end

            it 'populates the headers' do
              stub_request(:any, endpoint).to_return(headers: { foo: 'bar' })
              expect(make_request.http_response.headers['foo']).to eq('bar')
            end

            it 'populates the response body' do
              stub_request(:any, endpoint).to_return(body: 'response-body')
              resp_body = make_request.http_response.body
              resp_body.rewind
              expect(resp_body.read).to eq('response-body')
            end

            it 'wraps errors with a Http::Error' do
              stub_request(:any, endpoint).to_raise(EOFError)
              resp = make_request
              expect(resp.error).to be_a(Seahorse::Client::Http::Error)
            end

          end
        end
      end
    end
  end
end
