require_relative '../../spec_helper'

module Aws
  module Plugins
    describe RetryErrors do

      RetryErrorsSvc = ApiHelper.sample_service

      let(:client) { RetryErrorsSvc::Client.new(stub_responses: true) }

      it 'defaults config.retry_limit to 3' do
        expect(client.config.retry_limit).to eq(3)
      end

      it 'defaults config.retry_max_delay to 0' do
        config = Seahorse::Client::Configuration.new
        RetryErrors.new.add_options(config)
        config = config.build!
        expect(config.retry_max_delay).to eq(0)
      end

      it 'defaults config.retry_base_delay to 0.3' do
        config = Seahorse::Client::Configuration.new
        RetryErrors.new.add_options(config)
        config = config.build!
        expect(config.retry_base_delay).to eq(0.3)
      end

      it 'defaults config.retry_jitter to :none' do
        config = Seahorse::Client::Configuration.new
        RetryErrors.new.add_options(config)
        config = config.build!
        expect(config.retry_jitter).to eq(:none)
      end

      describe 'ErrorInspector' do

        def inspector(error, http_status_code = 404)
          RetryErrors::ErrorInspector.new(error, http_status_code)
        end

        describe '#expired_credentials?' do

          it 'returns true for InvalidClientTokenId' do
            error = RetryErrorsSvc::Errors::InvalidClientTokenId.new(nil,nil)
            expect(inspector(error).expired_credentials?).to be(true)
          end

          it 'returns true for UnrecognizedClientException' do
            error = RetryErrorsSvc::Errors::UnrecognizedClientException.new(nil,nil)
            expect(inspector(error).expired_credentials?).to be(true)
          end

          it 'returns true for InvalidAccessKeyId' do
            error = RetryErrorsSvc::Errors::InvalidAccessKeyId.new(nil,nil)
            expect(inspector(error).expired_credentials?).to be(true)
          end

          it 'returns true for AuthFailure' do
            error = RetryErrorsSvc::Errors::AuthFailure.new(nil,nil)
            expect(inspector(error).expired_credentials?).to be(true)
          end

          it 'returns true for InvalidIdentityToken' do
            error = RetryErrorsSvc::Errors::InvalidIdentityToken.new(nil,nil)
            expect(inspector(error).expired_credentials?).to be(true)
          end

          it 'returns true for error types that match /expired/' do
            error = RetryErrorsSvc::Errors::SomethingExpiredError.new(nil,nil)
            expect(inspector(error).expired_credentials?).to be(true)
          end

          it 'returns false for other errors' do
            error = RetryErrorsSvc::Errors::SomeRandomError.new(nil,nil)
            expect(inspector(error).expired_credentials?).to be(false)
          end

        end

        describe '#throttling_error?' do

          it 'returns true for Throttling' do
            error = RetryErrorsSvc::Errors::Throttling.new(nil,nil)
            expect(inspector(error).throttling_error?).to be(true)
          end

          it 'returns true for response status code 429' do
            error = RetryErrorsSvc::Errors::SomeRandomError.new(nil,nil)
            expect(inspector(error, 429).throttling_error?).to be(true)
          end

          it 'returns true for ThrottlingException' do
            error = RetryErrorsSvc::Errors::ThrottlingException.new(nil,nil)
            expect(inspector(error).throttling_error?).to be(true)
          end

          it 'returns true for RequestThrottled' do
            error = RetryErrorsSvc::Errors::RequestThrottled.new(nil,nil)
            expect(inspector(error).throttling_error?).to be(true)
          end

          it 'returns true for ProvisionedThroughputExceededException' do
            error = RetryErrorsSvc::Errors::ProvisionedThroughputExceededException.new(nil,nil)
            expect(inspector(error).throttling_error?).to be(true)
          end

          it 'returns true for RequestLimitExceeded' do
            error = RetryErrorsSvc::Errors::RequestLimitExceeded.new(nil,nil)
            expect(inspector(error).throttling_error?).to be(true)
          end

          it 'returns true for BandwidthLimitExceeded' do
            error = RetryErrorsSvc::Errors::BandwidthLimitExceeded.new(nil,nil)
            expect(inspector(error).throttling_error?).to be(true)
          end

          it 'returns true for LimitExceededException' do
            error = RetryErrorsSvc::Errors::LimitExceededException.new(nil,nil)
            expect(inspector(error).throttling_error?).to be(true)
          end

          it 'returns true for TooManyRequestsException' do
            error = RetryErrorsSvc::Errors::TooManyRequestsException.new(nil,nil)
            expect(inspector(error).throttling_error?).to be(true)
          end

          it 'returns true for PriorRequestNotComplete' do
            error = RetryErrorsSvc::Errors::PriorRequestNotComplete.new(nil,nil)
            expect(inspector(error).throttling_error?).to be(true)
          end

          it 'returns true for error types that match /throttl/' do
            error = RetryErrorsSvc::Errors::Throttled.new(nil,nil)
            expect(inspector(error).throttling_error?).to be(true)
          end

          it 'returns false for other errors' do
            error = RetryErrorsSvc::Errors::SomeRandomError.new(nil,nil)
            expect(inspector(error).throttling_error?).to be(false)
          end

        end

        describe '#checksum?' do

          it 'returns true if the error extends Errors::ChecksumError' do
            error = Errors::ChecksumError.new
            expect(inspector(error).checksum?).to be(true)
          end

          it 'returns true if the error is a crc32 error' do
            error = RetryErrorsSvc::Errors::CRC32CheckFailed.new(nil,nil)
            expect(inspector(error).checksum?).to be(true)
          end

          it 'returns false if the error does not exend ChecksumError' do
            error = double('error')
            expect(inspector(error).checksum?).to be(false)
          end

        end

        describe '#server?' do

          it 'returns true if the error is a 500 level error' do
            error = RetryErrorsSvc::Errors::RandomError.new(nil,nil)
            expect(inspector(error, 500).server?).to be(true)
          end

          it 'returns false if the error is not a 500 level error' do
            error = RetryErrorsSvc::Errors::RandomError.new(nil,nil)
            expect(inspector(error, 404).server?).to be(false)
          end

        end

        describe '#networking?' do

          it 'returns true for RequestTimeout' do
            error = RetryErrorsSvc::Errors::RequestTimeout.new(nil,nil)
            expect(inspector(error).networking?).to be(true)
          end

          it 'does not assume a networking error for 0 status code' do
            error = double('error')
            expect(inspector(error, 0).networking?).to be(false)
          end

          it 'returns false if the http status code is not 0' do
            error = double('error')
            expect(inspector(error, 307).networking?).to be(false)
          end

          it 'returns true if the error is wrapped in a NetworkingError' do
            error = StandardError.new('oops')
            error = Seahorse::Client::NetworkingError.new(error)
            expect(inspector(error, 200).networking?).to be(true)
          end

          it 'returns true if the error is wrapped in a NoSuchEndpointError' do
            req = double('request', endpoint: 'https://example.com')
            context = double('ctx', http_request: req)
            error = Errors::NoSuchEndpointError.new(context: context)
            expect(inspector(error).networking?).to be(true)
          end

        end

      end

      describe 'Handler' do

        let(:credentials) { Credentials.new('akid', 'secret') }

        let(:cache) { EndpointCache.new }

        let(:api) { Seahorse::Model::Api.new }

        let(:config) {
          cfg = Seahorse::Client::Configuration.new
          cfg.add_option(:credentials, credentials)
          cfg.add_option(:endpoint_cache, cache)
          cfg.add_option(:api, api)
          RetryErrors.new.add_options(cfg)
          cfg.build!
        }

        let(:operation) { Seahorse::Model::Operation.new }

        let(:resp) { Seahorse::Client::Response.new }

        let(:handler) { RetryErrors::Handler.new }

        before(:each) do
          resp.context.config = config
          operation.endpoint_discovery = {}
          resp.context.operation = operation
          resp.context.http_response.status_code = 400
        end

        def handle(send_handler = nil, &block)
          allow(Kernel).to receive(:sleep)
          handler.handler = send_handler || block
          handler.call(resp.context)
        end

        it 'does not retry responses that have no error' do
          resp.error = nil
          send_handler = double('send-handler')
          expect(send_handler).to receive(:call).once.and_return(resp)
          handle(send_handler)
        end

        it 'retries 3 times for a total of 4 attemps' do
          resp.error = RetryErrorsSvc::Errors::RequestLimitExceeded.new(nil,nil)
          send_handler = double('send-handler')
          expect(send_handler).to receive(:call).
            exactly(4).times.
            with(resp.context).
            and_return(resp)
          handle(send_handler)
        end

        it 'backs off according to custom retry_backoff proc'  do
          config.retry_backoff = lambda { |c| Kernel.sleep([0.4, 0.2, 1.7][c.retries]) }
          expect(Kernel).to receive(:sleep).with(0.4).ordered
          expect(Kernel).to receive(:sleep).with(0.2).ordered
          expect(Kernel).to receive(:sleep).with(1.7).ordered
          resp.error = RetryErrorsSvc::Errors::RequestLimitExceeded.new(nil,nil)
          handle { |context| resp }
        end

        it 'backs off exponentially between each retry attempt' do
          expect(Kernel).to receive(:sleep).with(0.3).ordered
          expect(Kernel).to receive(:sleep).with(0.6).ordered
          expect(Kernel).to receive(:sleep).with(1.2).ordered
          resp.error = RetryErrorsSvc::Errors::RequestLimitExceeded.new(nil,nil)
          handle { |context| resp }
        end

        it 'backs off exponentially between each retry attempt with custom :retry_base_delay' do
          config.retry_base_delay = 1.0
          expect(Kernel).to receive(:sleep).with(1.0).ordered
          expect(Kernel).to receive(:sleep).with(2.0).ordered
          expect(Kernel).to receive(:sleep).with(4.0).ordered
          resp.error = RetryErrorsSvc::Errors::RequestLimitExceeded.new(nil,nil)
          handle { |context| resp }
        end

        it 'caps backoff delay to :retry_max_delay 'do
          config.retry_max_delay = 4.0
          config.retry_limit = 6
          expect(Kernel).to receive(:sleep).with(0.3).ordered
          expect(Kernel).to receive(:sleep).with(0.6).ordered
          expect(Kernel).to receive(:sleep).with(1.2).ordered
          expect(Kernel).to receive(:sleep).with(2.4).ordered
          expect(Kernel).to receive(:sleep).with(4.0).ordered
          expect(Kernel).to receive(:sleep).with(4.0).ordered
          resp.error = RetryErrorsSvc::Errors::RequestLimitExceeded.new(nil,nil)
          handle { |context| resp }
        end

        it 'randomises the backoff delay with :retry_jitter set to :full' do
          config.retry_jitter = :full
          config.retry_max_delay = 2.0
          config.retry_limit = 4

          expect(Kernel).to receive(:rand).with(0..0.3).ordered.and_return(1)
          expect(Kernel).to receive(:sleep).with(1).ordered

          expect(Kernel).to receive(:rand).with(0..0.6).ordered.and_return(2)
          expect(Kernel).to receive(:sleep).with(2).ordered

          expect(Kernel).to receive(:rand).with(0..1.2).ordered.and_return(3)
          expect(Kernel).to receive(:sleep).with(3).ordered

          expect(Kernel).to receive(:rand).with(0..2.0).ordered.and_return(4)
          expect(Kernel).to receive(:sleep).with(4).ordered

          resp.error = RetryErrorsSvc::Errors::RequestLimitExceeded.new(nil,nil)
          handle { |context| resp }
        end

        it 'randomises the backoff delay with :retry_jitter set to :equal'  do
          config.retry_jitter = :equal
          config.retry_max_delay = 2.0
          config.retry_limit = 4

          expect(Kernel).to receive(:rand).with(0..0.3/2).ordered.and_return(1)
          expect(Kernel).to receive(:sleep).with(1 + 0.3/2).ordered

          expect(Kernel).to receive(:rand).with(0..0.6/2).ordered.and_return(2)
          expect(Kernel).to receive(:sleep).with(2 + 0.6/2).ordered

          expect(Kernel).to receive(:rand).with(0..1.2/2).ordered.and_return(3)
          expect(Kernel).to receive(:sleep).with(3 + 1.2/2).ordered

          expect(Kernel).to receive(:rand).with(0..2.0/2).ordered.and_return(4)
          expect(Kernel).to receive(:sleep).with(4 + 2.0/2).ordered

          resp.error = RetryErrorsSvc::Errors::RequestLimitExceeded.new(nil,nil)
          handle { |context| resp }
        end

        it 'raises KeyError with invalid jitter function' do
          config.retry_jitter = :unknown
          resp.error = RetryErrorsSvc::Errors::RequestLimitExceeded.new(nil,nil)
          expect { handle { |context| resp } }.to raise_error(KeyError)
        end

        it 'adjusts delay with custom jitter'  do
          config.retry_jitter = lambda { |delay| delay * 2}

          expect(Kernel).to receive(:sleep).with(0.6).ordered
          expect(Kernel).to receive(:sleep).with(1.2).ordered
          expect(Kernel).to receive(:sleep).with(2.4).ordered

          resp.error = RetryErrorsSvc::Errors::RequestLimitExceeded.new(nil,nil)
          handle { |context| resp }
        end

        it 'increments the retry count on the context' do
          resp.error = RetryErrorsSvc::Errors::RequestLimitExceeded.new(nil,nil)
          handle { |context| resp }
          expect(resp.context.retries).to eq(3)
        end

        it 'rewinds the request body before each retry attempt' do
          body = resp.context.http_request.body
          expect(body).to receive(:rewind).exactly(3).times
          resp.error = RetryErrorsSvc::Errors::RequestLimitExceeded.new(nil,nil)
          handle { |context| resp }
        end

        it 'truncates the response body before each retry attempt' do
          body = double('truncatable-body', pos: 100, truncate: 0)
          resp.context.http_response.body = body
          expect(body).to receive(:truncate).with(0).exactly(3).times
          resp.error = RetryErrorsSvc::Errors::RequestLimitExceeded.new(nil,nil)
          handle { |context| resp }
        end

        it 'skips retry if un-truncatable response body has received data' do
          resp.context.http_response.body = double('write-once-body', pos: 100)
          resp.error = RetryErrorsSvc::Errors::RequestLimitExceeded.new(nil,nil)
          handle { |context| resp }
          expect(resp.context.retries).to eq(0)
        end

        it 'retries if creds expire and are refreshable' do
          expect(credentials).to receive(:refresh!).exactly(3).times
          resp.error = RetryErrorsSvc::Errors::AuthFailure.new(nil,nil)
          handle { |context| resp }
          expect(resp.context.retries).to eq(3)
        end

        it 'retries if endpoint discovery error is detected' do
          config.api.endpoint_operation = :describe_endpoints
          DescribeEndpointsRequest = Seahorse::Model::Shapes::StructureShape.new(
            name:'DescribeEndpointsRequest')
          config.api.add_operation(:describe_endpoints, Seahorse::Model::Operation.new.tap do |o|
            o.endpoint_operation = true
            o.input = Seahorse::Model::Shapes::ShapeRef.new(shape: DescribeEndpointsRequest)
          end)
          resp.error = Errors::EndpointDiscoveryError.new

          handle { |context| resp }
          expect(resp.context.retries).to eq(3)
        end

        it 'skips retry if creds expire and are not refreshable' do
          resp.error = RetryErrorsSvc::Errors::AuthFailure.new(nil,nil)
          handle { |context| resp }
          expect(resp.context.retries).to eq(0)
        end

        it 'retries 500 level errors' do
          error = RuntimeError.new('random-runtime-error')
          handle do |context|
            context.http_response.signal_headers(500, {})
            context.http_response.signal_error(error)
            resp
          end
          expect(resp.context.retries).to eq(3)
        end

        it 'retries Seahorse::Client::NetworkingErrors' do
          error = RuntimeError.new('random-runtime-error')
          resp.error = Seahorse::Client::NetworkingError.new(error)
          handle { |context| resp }
          expect(resp.context.retries).to eq(3)
        end

      end
    end
  end
end
