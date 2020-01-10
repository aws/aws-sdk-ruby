require 'spec_helper'
require 'ostruct'
require 'stringio'
require 'uri'
require 'openssl'

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
          @endpoint ||= 'http://test.endpoint.api'
        end

        describe '#session_for' do

          it 're-uses session for endpoints that share port, scheme and host' do
            session = double('http-session', last_used: Time.now).as_null_object
            pool = ConnectionPool.for({})
            expect(pool).to receive(:start_session).
              exactly(1).times.
              with('http://foo.com').
              and_return(session)
            endpoint1 = URI.parse('http://foo.com/path?query')
            endpoint2 = URI.parse('http://foo.com/different')
            endpoint3 = URI.parse('http://foo.com')
            sessions = []
            pool.session_for(endpoint1) { |https| sessions << https }
            pool.session_for(endpoint2) { |https| sessions << https }
            pool.session_for(endpoint3) { |https| sessions << https }
            expect(sessions).to eq([session, session, session])
          end

          it 're-uses session for slow request that are taking more time than the configured idle timeout' do
            session = double('http-session').as_null_object
            session.stub(:request) { sleep 2 }
            pool = ConnectionPool.for(http_idle_timeout: 1)
            expect(pool).to receive(:start_session).
              exactly(1).times.
              and_return(ConnectionPool::ExtendedSession.new(session))
            endpoint = URI.parse('http://foo.com')
            sessions = []
            pool.session_for(endpoint) { |http| http.request; sessions << http }
            pool.session_for(endpoint) { |http| http.request; sessions << http }
            expect(sessions).to eq([session, session])
          end

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
              @endpoint = 'http://foo.bar.com'
              stub_request(:any, 'http://foo.bar.com')
              make_request
            end

            it 'observes the Endpoint#port' do
              @endpoint = 'http://foo.bar.com:9876'
              stub_request(:any, 'http://foo.bar.com:9876')
              make_request
            end

            it 'observes the Endpoint#scheme' do
              @endpoint = 'https://foo.bar.com'
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
              resp = make_request
              expect(resp.error.message).to eq(message)
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
              http_request.endpoint.path = '/path'
              stub_request(:any, http_request.endpoint.to_s)
              make_request
            end

            it 'sends the request with the querystring' do
              http_request.endpoint.path = '/abc'
              http_request.endpoint.query = 'mno=xyz'
              stub_request(:any, http_request.endpoint.to_s)
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
              resp = make_request
              expect(resp.context.http_response.status_code).to eq(200)
            end

            it 'populates the headers' do
              stub_request(:any, endpoint).to_return(headers: { foo: 'bar' })
              resp = make_request
              expect(resp.context.http_response.headers['foo']).to eq('bar')
            end

            it 'populates the response body' do
              stub_request(:any, endpoint).to_return(body: 'response-body')
              resp_body = make_request.context.http_response.body
              resp_body.rewind
              expect(resp_body.read).to eq('response-body')
            end

            it 'wraps errors with a NetworkingError' do
              stub_request(:any, endpoint).to_raise(EOFError)
              resp = make_request
              expect(resp.error).to be_a(Seahorse::Client::NetworkingError)
            end

            if OpenSSL::SSL.const_defined?(:SSLErrorWaitReadable)
              it 'wraps OpenSSL::SSL::SSLErrorWaitReadable w/NetworkingError' do
                stub_request(:any, endpoint).to_raise(
                  OpenSSL::SSL::SSLErrorWaitReadable)
                resp = make_request
                expect(resp.error).to be_a(Seahorse::Client::NetworkingError)
                expect(resp.error.original_error).to(
                  be_kind_of(OpenSSL::SSL::SSLErrorWaitReadable))
              end
            end

          end

          describe 'DNS errors' do

            it 'gives additional information about DNS errors' do
              msg = 'getaddrinfo: nodename nor servname provided, or not known'
              stub_request(:any, endpoint).to_raise(SocketError.new(msg))
              resp = make_request
              expect(resp.error).to be_a(Seahorse::Client::NetworkingError)
              expect(resp.error.message).to match("unable to connect to `#{URI.parse(endpoint).host}`; SocketError: #{msg}")
            end

          end
        end
      end
    end
  end
end
