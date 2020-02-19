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
        expect(client.config.retry_max_delay).to eq(0)
      end

      it 'defaults config.retry_base_delay to 0.3' do
        expect(client.config.retry_base_delay).to eq(0.3)
      end

      it 'defaults config.retry_jitter to :none' do
        expect(client.config.retry_jitter).to eq(:none)
      end

      it 'defaults config.retry_mode to legacy' do
        expect(client.config.retry_mode).to eq('legacy')
      end

      it 'can configure retry_mode with shared config' do
        allow_any_instance_of(Aws::SharedConfig)
          .to receive(:retry_mode).and_return('standard')
        expect(client.config.retry_mode).to eq('standard')
      end

      it 'can configure retry_mode using ENV with precedence over config' do
        allow_any_instance_of(Aws::SharedConfig)
          .to receive(:retry_mode).and_return('standard')
        ENV['AWS_RETRY_MODE'] = 'adaptive'
        expect(client.config.retry_mode).to eq('adaptive')
      end

      it 'raises when retry_mode is not legacy, standard, or adaptive' do
        ENV['AWS_RETRY_MODE'] = 'peccy'
        expect { client }.to raise_error(ArgumentError)
      end

      it 'defaults config.max_attempts to 3' do
        expect(client.config.max_attempts).to eq(3)
      end

      it 'can configure max_attempts with shared config' do
        allow_any_instance_of(Aws::SharedConfig)
          .to receive(:max_attempts).and_return(5)
        expect(client.config.max_attempts).to eq(5)
      end

      it 'can configure max_attempts using ENV with precedence over config' do
        allow_any_instance_of(Aws::SharedConfig)
          .to receive(:max_attempts).and_return(3)
        ENV['AWS_MAX_ATTEMPTS'] = 1
        expect(client.config.max_attempts).to eq(1)
      end

      it 'raises when max_attempts is not an integer' do
        ENV['AWS_MAX_ATTEMPTS'] = 'string'
        expect { client }.to raise_error(ArgumentError)
      end

      it 'raises when max_attempts is not >= 0' do
        ENV['AWS_MAX_ATTEMPTS'] = -1
        expect { client }.to raise_error(ArgumentError)
      end

      describe 'ErrorInspector' do
        def inspector(error, http_status_code = 404)
          resp = Seahorse::Client::Response.new
          resp.error = error
          resp.context.http_response.status_code = http_status_code
          RetryErrors::ErrorInspector.new(resp)
        end

        describe '#expired_credentials?' do
          it 'returns true for InvalidClientTokenId' do
            error = RetryErrorsSvc::Errors::InvalidClientTokenId.new(nil, nil)
            expect(inspector(error).expired_credentials?).to be(true)
          end

          it 'returns true for UnrecognizedClientException' do
            error = RetryErrorsSvc::Errors::UnrecognizedClientException.new(nil, nil)
            expect(inspector(error).expired_credentials?).to be(true)
          end

          it 'returns true for InvalidAccessKeyId' do
            error = RetryErrorsSvc::Errors::InvalidAccessKeyId.new(nil, nil)
            expect(inspector(error).expired_credentials?).to be(true)
          end

          it 'returns true for AuthFailure' do
            error = RetryErrorsSvc::Errors::AuthFailure.new(nil, nil)
            expect(inspector(error).expired_credentials?).to be(true)
          end

          it 'returns true for InvalidIdentityToken' do
            error = RetryErrorsSvc::Errors::InvalidIdentityToken.new(nil, nil)
            expect(inspector(error).expired_credentials?).to be(true)
          end

          it 'returns true for ExpiredToken' do
            error = RetryErrorsSvc::Errors::ExpiredToken.new(nil, nil)
            expect(inspector(error).expired_credentials?).to be(true)
          end

          it 'returns true for error types that match /expired/' do
            error = RetryErrorsSvc::Errors::SomethingExpiredError.new(nil, nil)
            expect(inspector(error).expired_credentials?).to be(true)
          end

          it 'returns false for other errors' do
            error = RetryErrorsSvc::Errors::SomeRandomError.new(nil, nil)
            expect(inspector(error).expired_credentials?).to be(false)
          end
        end

        describe '#throttling_error?' do
          it 'returns true for Throttling' do
            error = RetryErrorsSvc::Errors::Throttling.new(nil, nil)
            expect(inspector(error).throttling_error?).to be(true)
          end

          it 'returns true for ThrottlingException' do
            error = RetryErrorsSvc::Errors::ThrottlingException.new(nil, nil)
            expect(inspector(error).throttling_error?).to be(true)
          end

          it 'returns true for ThrottledException' do
            error = RetryErrorsSvc::Errors::ThrottledException.new(nil, nil)
            expect(inspector(error).throttling_error?).to be(true)
          end

          it 'returns true for RequestThrottled' do
            error = RetryErrorsSvc::Errors::RequestThrottled.new(nil, nil)
            expect(inspector(error).throttling_error?).to be(true)
          end

          it 'returns true for RequestThrottledException' do
            error = RetryErrorsSvc::Errors::RequestThrottledException.new(nil, nil)
            expect(inspector(error).throttling_error?).to be(true)
          end

          it 'returns true for ProvisionedThroughputExceededException' do
            error = RetryErrorsSvc::Errors::ProvisionedThroughputExceededException.new(nil, nil)
            expect(inspector(error).throttling_error?).to be(true)
          end

          it 'returns true for TransactionInProgressException' do
            error = RetryErrorsSvc::Errors::TransactionInProgressException.new(nil, nil)
            expect(inspector(error).throttling_error?).to be(true)
          end

          it 'returns true for RequestLimitExceeded' do
            error = RetryErrorsSvc::Errors::RequestLimitExceeded.new(nil, nil)
            expect(inspector(error).throttling_error?).to be(true)
          end

          it 'returns true for BandwidthLimitExceeded' do
            error = RetryErrorsSvc::Errors::BandwidthLimitExceeded.new(nil, nil)
            expect(inspector(error).throttling_error?).to be(true)
          end

          it 'returns true for LimitExceededException' do
            error = RetryErrorsSvc::Errors::LimitExceededException.new(nil, nil)
            expect(inspector(error).throttling_error?).to be(true)
          end

          it 'returns true for TooManyRequestsException' do
            error = RetryErrorsSvc::Errors::TooManyRequestsException.new(nil, nil)
            expect(inspector(error).throttling_error?).to be(true)
          end

          it 'returns true for PriorRequestNotComplete' do
            error = RetryErrorsSvc::Errors::PriorRequestNotComplete.new(nil, nil)
            expect(inspector(error).throttling_error?).to be(true)
          end

          it 'returns true for SlowDown' do
            error = RetryErrorsSvc::Errors::SlowDown.new(nil, nil)
            expect(inspector(error).throttling_error?).to be(true)
          end

          it 'returns true for EC2ThrottledException' do
            error = RetryErrorsSvc::Errors::EC2ThrottledException.new(nil, nil)
            expect(inspector(error).throttling_error?).to be(true)
          end

          it 'returns true for error types that match /throttl/' do
            error = RetryErrorsSvc::Errors::Throttled.new(nil, nil)
            expect(inspector(error).throttling_error?).to be(true)
          end

          it 'returns true for response status code 429' do
            error = RetryErrorsSvc::Errors::SomeRandomError.new(nil, nil)
            expect(inspector(error, 429).throttling_error?).to be(true)
          end

          it 'returns false for other errors' do
            error = RetryErrorsSvc::Errors::SomeRandomError.new(nil, nil)
            expect(inspector(error).throttling_error?).to be(false)
          end
        end

        describe '#checksum?' do
          it 'returns true for CRC32CheckFailed' do
            error = RetryErrorsSvc::Errors::CRC32CheckFailed.new(nil, nil)
            expect(inspector(error).checksum?).to be(true)
          end

          it 'returns true if the error extends Errors::ChecksumError' do
            error = Errors::ChecksumError.new
            expect(inspector(error).checksum?).to be(true)
          end

          it 'returns false for other errors' do
            error = double('error')
            expect(inspector(error).checksum?).to be(false)
          end
        end

        describe '#server?' do
          it 'returns true if the error is a 500 level error' do
            error = RetryErrorsSvc::Errors::RandomError.new(nil, nil)
            expect(inspector(error, 500).server?).to be(true)
          end

          it 'returns false if the error is not a 500 level error' do
            error = RetryErrorsSvc::Errors::RandomError.new(nil, nil)
            expect(inspector(error, 404).server?).to be(false)
          end
        end

        describe '#networking?' do
          it 'returns true for RequestTimeout' do
            error = RetryErrorsSvc::Errors::RequestTimeout.new(nil, nil)
            expect(inspector(error).networking?).to be(true)
          end

          it 'returns true for RequestTimeoutException' do
            error = RetryErrorsSvc::Errors::RequestTimeoutException.new(nil, nil)
            expect(inspector(error).networking?).to be(true)
          end

          it 'returns true for IDPCommunicationError' do
            error = RetryErrorsSvc::Errors::IDPCommunicationError.new(nil, nil)
            expect(inspector(error).networking?).to be(true)
          end

          it 'returns true if the error extends NetworkingError' do
            error = StandardError.new('oops')
            error = Seahorse::Client::NetworkingError.new(error)
            expect(inspector(error, 200).networking?).to be(true)
          end

          it 'returns true if the error extends NoSuchEndpointError' do
            req = double('request', endpoint: 'https://example.com')
            context = double('ctx', http_request: req)
            error = Errors::NoSuchEndpointError.new(context: context)
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
        end
      end

      describe 'LegacyHandler' do
        let(:credentials) { Credentials.new('akid', 'secret') }

        let(:cache) { EndpointCache.new }

        let(:api) { Seahorse::Model::Api.new }

        let(:config) do
          cfg = Seahorse::Client::Configuration.new
          cfg.add_option(:credentials, credentials)
          cfg.add_option(:endpoint_cache, cache)
          cfg.add_option(:api, api)
          cfg.add_option(:profile, nil)
          RetryErrors.new.add_options(cfg)
          cfg.build!
        end

        let(:operation) { Seahorse::Model::Operation.new }

        let(:resp) { Seahorse::Client::Response.new }

        let(:handler) { RetryErrors::LegacyHandler.new }

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

        it 'retries 3 times for a total of 4 attempts' do
          resp.error = RetryErrorsSvc::Errors::RequestLimitExceeded.new(nil, nil)
          send_handler = double('send-handler')
          expect(send_handler).to receive(:call)
            .exactly(4).times
            .with(resp.context)
            .and_return(resp)
          handle(send_handler)
        end

        it 'backs off according to custom retry_backoff proc' do
          config.retry_backoff = ->(c) { Kernel.sleep([0.4, 0.2, 1.7][c.retries]) }
          expect(Kernel).to receive(:sleep).with(0.4).ordered
          expect(Kernel).to receive(:sleep).with(0.2).ordered
          expect(Kernel).to receive(:sleep).with(1.7).ordered
          resp.error = RetryErrorsSvc::Errors::RequestLimitExceeded.new(nil, nil)
          handle { |_context| resp }
        end

        it 'backs off exponentially between each retry attempt' do
          expect(Kernel).to receive(:sleep).with(0.3).ordered
          expect(Kernel).to receive(:sleep).with(0.6).ordered
          expect(Kernel).to receive(:sleep).with(1.2).ordered
          resp.error = RetryErrorsSvc::Errors::RequestLimitExceeded.new(nil, nil)
          handle { |_context| resp }
        end

        it 'backs off exponentially between each retry attempt with custom :retry_base_delay' do
          config.retry_base_delay = 1.0
          expect(Kernel).to receive(:sleep).with(1.0).ordered
          expect(Kernel).to receive(:sleep).with(2.0).ordered
          expect(Kernel).to receive(:sleep).with(4.0).ordered
          resp.error = RetryErrorsSvc::Errors::RequestLimitExceeded.new(nil, nil)
          handle { |_context| resp }
        end

        it 'caps backoff delay to :retry_max_delay ' do
          config.retry_max_delay = 4.0
          config.retry_limit = 6
          expect(Kernel).to receive(:sleep).with(0.3).ordered
          expect(Kernel).to receive(:sleep).with(0.6).ordered
          expect(Kernel).to receive(:sleep).with(1.2).ordered
          expect(Kernel).to receive(:sleep).with(2.4).ordered
          expect(Kernel).to receive(:sleep).with(4.0).ordered
          expect(Kernel).to receive(:sleep).with(4.0).ordered
          resp.error = RetryErrorsSvc::Errors::RequestLimitExceeded.new(nil, nil)
          handle { |_context| resp }
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

          resp.error = RetryErrorsSvc::Errors::RequestLimitExceeded.new(nil, nil)
          handle { |_context| resp }
        end

        it 'randomises the backoff delay with :retry_jitter set to :equal' do
          config.retry_jitter = :equal
          config.retry_max_delay = 2.0
          config.retry_limit = 4

          expect(Kernel).to receive(:rand).with(0..0.3 / 2).ordered.and_return(1)
          expect(Kernel).to receive(:sleep).with(1 + 0.3 / 2).ordered

          expect(Kernel).to receive(:rand).with(0..0.6 / 2).ordered.and_return(2)
          expect(Kernel).to receive(:sleep).with(2 + 0.6 / 2).ordered

          expect(Kernel).to receive(:rand).with(0..1.2 / 2).ordered.and_return(3)
          expect(Kernel).to receive(:sleep).with(3 + 1.2 / 2).ordered

          expect(Kernel).to receive(:rand).with(0..2.0 / 2).ordered.and_return(4)
          expect(Kernel).to receive(:sleep).with(4 + 2.0 / 2).ordered

          resp.error = RetryErrorsSvc::Errors::RequestLimitExceeded.new(nil, nil)
          handle { |_context| resp }
        end

        it 'raises KeyError with invalid jitter function' do
          config.retry_jitter = :unknown
          resp.error = RetryErrorsSvc::Errors::RequestLimitExceeded.new(nil, nil)
          expect { handle { |_context| resp } }.to raise_error(KeyError)
        end

        it 'adjusts delay with custom jitter' do
          config.retry_jitter = ->(delay) { delay * 2 }

          expect(Kernel).to receive(:sleep).with(0.6).ordered
          expect(Kernel).to receive(:sleep).with(1.2).ordered
          expect(Kernel).to receive(:sleep).with(2.4).ordered

          resp.error = RetryErrorsSvc::Errors::RequestLimitExceeded.new(nil, nil)
          handle { |_context| resp }
        end

        it 'increments the retry count on the context' do
          resp.error = RetryErrorsSvc::Errors::RequestLimitExceeded.new(nil, nil)
          handle { |_context| resp }
          expect(resp.context.retries).to eq(3)
        end

        it 'rewinds the request body before each retry attempt' do
          body = resp.context.http_request.body
          expect(body).to receive(:rewind).exactly(3).times
          resp.error = RetryErrorsSvc::Errors::RequestLimitExceeded.new(nil, nil)
          handle { |_context| resp }
        end

        it 'truncates the response body before each retry attempt' do
          body = double('truncatable-body', pos: 100, truncate: 0)
          resp.context.http_response.body = body
          expect(body).to receive(:truncate).with(0).exactly(3).times
          resp.error = RetryErrorsSvc::Errors::RequestLimitExceeded.new(nil, nil)
          handle { |_context| resp }
        end

        it 'skips retry if un-truncatable response body has received data' do
          resp.context.http_response.body = double('write-once-body', pos: 100)
          resp.error = RetryErrorsSvc::Errors::RequestLimitExceeded.new(nil, nil)
          handle { |_context| resp }
          expect(resp.context.retries).to eq(0)
        end

        it 'retries if creds expire and are refreshable' do
          expect(credentials).to receive(:refresh!).exactly(3).times
          resp.error = RetryErrorsSvc::Errors::AuthFailure.new(nil, nil)
          handle { |_context| resp }
          expect(resp.context.retries).to eq(3)
        end

        it 'retries if endpoint discovery error is detected' do
          config.api.endpoint_operation = :describe_endpoints
          DescribeEndpointsRequest = Seahorse::Model::Shapes::StructureShape.new(
            name: 'DescribeEndpointsRequest'
          )
          config.api.add_operation(
            :describe_endpoints,
            Seahorse::Model::Operation.new.tap do |o|
              o.endpoint_operation = true
              o.input = Seahorse::Model::Shapes::ShapeRef.new(
                shape: DescribeEndpointsRequest
              )
            end
          )
          resp.error = Errors::EndpointDiscoveryError.new

          handle { |_context| resp }
          expect(resp.context.retries).to eq(3)
        end

        it 'skips retry if creds expire and are not refreshable' do
          resp.error = RetryErrorsSvc::Errors::AuthFailure.new(nil, nil)
          handle { |_context| resp }
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
          handle { |_context| resp }
          expect(resp.context.retries).to eq(3)
        end
      end

      describe 'Handler' do
        let(:credentials) { Credentials.new('akid', 'secret') }

        let(:cache) { EndpointCache.new }

        let(:api) { Seahorse::Model::Api.new }

        let(:config) do
          cfg = Seahorse::Client::Configuration.new
          cfg.add_option(:credentials, credentials)
          cfg.add_option(:endpoint_cache, cache)
          cfg.add_option(:api, api)
          cfg.add_option(:profile, nil)
          RetryErrors.new.add_options(cfg)
          cfg.build!
        end

        let(:operation) { Seahorse::Model::Operation.new }

        let(:resp) { Seahorse::Client::Response.new }

        let(:handler) { RetryErrors::Handler.new }

        let(:service_error) { RetryErrorsSvc::Errors::ServiceError.new(nil, nil) }

        before(:each) do
          resp.context.config = config
          operation.endpoint_discovery = {}
          resp.context.operation = operation
          resp.context.client =  Seahorse::Client::Base.new(endpoint:'http://example.com') # ApiHelper.sample_rest_xml::Client.new(region: 'us-west-2')
        end

        def handle(send_handler = nil, &block)
          allow(Kernel).to receive(:sleep)
          handler.handler = send_handler || block
          handler.call(resp.context)
        end

        context 'standard mode' do
          before(:each) do
            resp.context.config.retry_mode = 'standard'
            allow(Kernel).to receive(:rand).and_return(1)
          end

          it 'retry eventually succeeds' do
            test_case_def = [
              {
                response: { status_code: 500, error: service_error },
                expect: { available_capacity: 495, retries: 1, delay: 1 }
              },
              {
                response: {status_code: 500, error: service_error},
                expect: { available_capacity: 490, retries: 2, delay: 2 }
              },
              {
                response: { status_code: 200, error: nil },
                expect: { available_capacity: 495, retries: 2 }
              } # success
            ]

            run_retry(test_case_def)
          end

          it 'fails due to max attempts reached' do
            test_case_def = [
              {
                response: { status_code: 500, error: service_error },
                expect: { available_capacity: 495, retries: 1, delay: 1 }
              },
              {
                response: { status_code: 500, error: service_error },
                expect: { available_capacity: 490, retries: 2, delay: 2 }
              },
              {
                response: { status_code: 500, error: service_error },
                expect: { available_capacity: 490, retries: 2 }
              } # failure
            ]

            run_retry(test_case_def)
          end

          it 'fails due to retry quota reached after a single retry' do
            resp.context.config.retry_quota.instance_variable_set(:@available_capacity, 5)

            test_case_def = [
              {
                response: { status_code: 500, error: service_error },
                expect: { available_capacity: 0, retries: 1, delay: 1 }
              },
              {
                response: { status_code: 500, error: service_error },
                expect: { available_capacity: 0, retries: 1 }
              }
            ]

            run_retry(test_case_def)
          end

          it 'does not retry if the retry quota is 0' do
            resp.context.config.retry_quota.instance_variable_set(:@available_capacity, 0)

            test_case_def = [
              {
                response: { status_code: 500, error: service_error },
                expect: { available_capacity: 0, retries: 0 }
              }
            ]

            run_retry(test_case_def)
          end

          it 'uses exponential backoff timing' do
            resp.context.config.max_attempts = 5

            test_case_def = [
              {
                response: { status_code: 500, error: service_error },
                expect: { available_capacity: 495, retries: 1, delay: 1 }
              },
              {
                response: { status_code: 500, error: service_error },
                expect: { available_capacity: 490, retries: 2, delay: 2 }
              },
              {
                response: {status_code: 500, error: service_error },
                expect: { available_capacity: 485, retries: 3, delay: 4 }
              },
              {
                response: { status_code: 500, error: service_error },
                expect: { available_capacity: 480, retries: 4, delay: 8 }
              },
              {
                response: { status_code: 500, error: service_error },
                expect: { available_capacity: 480, retries: 4 }
              }
            ]

            run_retry(test_case_def)
          end

          it 'does not exceed the max backoff time' do
            resp.context.config.max_attempts = 5
            stub_const('Aws::Plugins::RetryErrors::Handler::MAX_BACKOFF', 3)

            test_case_def = [
              {
                response: { status_code: 500, error: service_error },
                expect: { available_capacity: 495, retries: 1, delay: 1 }
              },
              {
                response: { status_code: 500, error: service_error },
                expect: { available_capacity: 490, retries: 2, delay: 2 }
              },
              {
                response: { status_code: 500, error: service_error },
                expect: { available_capacity: 485, retries: 3, delay: 3 }
              },
              {
                response: { status_code: 500, error: service_error },
                expect: { available_capacity: 480, retries: 4, delay: 3 }
              },
              {
                response: { status_code: 500, error: service_error },
                expect: { available_capacity: 480, retries: 4 }
              }
            ]

            run_retry(test_case_def)
          end
        end

        context 'adaptive mode' do
          before(:each) do
            resp.context.config.retry_mode = 'adaptive'

            client_rate_limiter = resp.context.config.client_rate_limiter
            client_rate_limiter.instance_variable_set(:@last_throttle_time, 5)
            # Needs to be smaller than 't' in the iterations
            client_rate_limiter.instance_variable_set(:@last_tx_rate_bucket, 500)
            client_rate_limiter.instance_variable_set(:@last_max_rate, 10)
            client_rate_limiter.instance_variable_set(:@measured_tx_rate, 10)
          end

          it 'verifies cubic calculations for successes' do
            run_retry success(5, 7.0)
            run_retry success(6, 9.6)
            run_retry success(7, 10.0)
            run_retry success(8, 10.45)
            run_retry success(9, 13.4)
            run_retry success(10, 21.2)
            run_retry success(11, 36.4)
          end

          it 'verifies cubic calculations with throttling' do
            run_retry success(5, 7.0)
            run_retry success(6, 9.6)
            run_retry throttle(7, 6.8) + throttle(8, 4.7) + success(9, 6.6)
            run_retry success(10, 6.8)
            run_retry success(11, 7.6)
            run_retry success(12, 11.5)
          end
        end

        # A helper method to test Standard and Adaptive tests
        def run_retry(test_cases)
          # Apply delay expectations first
          test_cases.each do |test_case|
            if test_case[:expect][:delay]
              expect(Kernel).to receive(:sleep).with(test_case[:expect][:delay])
            end
          end

          i = 0
          handle do |_context|
            if i > 0
              # Apply expectations to previous call
              expected = test_cases[i - 1][:expect]
              if expected[:available_capacity]
                expect(resp.context.config.retry_quota.available_capacity)
                  .to eq(expected[:available_capacity])
              end
              if expected[:retries]
                expect(resp.context.retries).to eq(expected[:retries])
              end
              if expected[:calculated_rate]
                expect(resp.context.config.client_rate_limiter.instance_variable_get(:@calculated_rate))
                  .to be_within(0.1).of(expected[:calculated_rate])
              end
            end

            # Setup the next response
            test_case = test_cases[i]
            status_code = test_case[:response][:status_code]
            resp.context.http_response.status_code = status_code
            resp.error = test_case[:error]

            if test_case[:response][:timestamp]
              allow(Util).to receive(:monotonic_seconds).and_return(test_case[:response][:timestamp])
            end

            i += 1
            resp
          end

          expect(i).to(
            eq(test_cases.size),
            "Wrong number of retries. Handler was called #{i} times but "\
            "#{test_cases.size} test cases were defined."
          )

          # Handle has finished called.  Apply final expectations.
          expected = test_cases[i - 1][:expect]
          if expected[:available_capacity]
            expect(resp.context.config.retry_quota.available_capacity)
              .to eq(expected[:available_capacity])
          end
          if expected[:retries]
            expect(resp.context.retries).to eq(expected[:retries])
          end
          if expected[:calculated_rate]
            expect(resp.context.config.client_rate_limiter.instance_variable_get(:@calculated_rate))
              .to be_within(0.1).of(expected[:calculated_rate])
          end
        end

        def success(timestamp, calculated_rate)
          [{
             response: { status_code: 200, error: nil, timestamp: timestamp},
             expect: { calculated_rate: calculated_rate}
           }]
        end

        def throttle(timestamp, calculated_rate)
          [{
             response: { status_code: 429, error: nil, timestamp: timestamp},
             expect: { calculated_rate: calculated_rate}
           }]
        end
      end

      describe RetryErrors::ClientRateLimiting do
        let(:client_rate_limiter) { RetryErrors::ClientRateLimiting.new }

        ######
        # Cubic Calculator tests
        it 'sets the time window correctly from max rate' do
          client_rate_limiter.instance_variable_set(:@last_max_rate, 10)
          client_rate_limiter.send(:calculate_time_window)
          expect(client_rate_limiter.instance_variable_get(:@time_window)).to be_within(0.1).of(1.9)
        end

        it 'decreases rate by beta when throttled' do
          rate_when_throttled = 8
          new_rate = client_rate_limiter.send(:cubic_throttle, rate_when_throttled)
          expect(new_rate).to eq(rate_when_throttled * 0.7)
        end

        it 'should match beta decrease' do
          stub_const('Aws::Plugins::RetryErrors::ClientRateLimiting::BETA', 0.6)
          client_rate_limiter.instance_variable_set(:@last_max_rate, 10)

          new_rate = client_rate_limiter.send(:cubic_throttle, 10)
          client_rate_limiter.instance_variable_set(:@last_throttle_time, 1)
          client_rate_limiter.send(:calculate_time_window)
          expect(new_rate).to eq(6.0)

          new_rate = client_rate_limiter.send(:cubic_success, 1)
          expect(new_rate).to be_within(0.1).of(6.0)
        end

        #######
        # Rate Clocker tests
        it 'updates rate if after bucket range' do
          client_rate_limiter.instance_variable_set(:@last_tx_rate_bucket, 0)
          allow(Util).to receive(:monotonic_seconds).and_return(1)

          client_rate_limiter.send(:update_measured_rate)
          # This should be 1 * 0.8 + 0 * 0.2, or just 0.8
          expect(client_rate_limiter.instance_variable_get(:@measured_tx_rate)).to be_within(0.1).of(0.8)
        end

        it 'can measure a constant rate' do
          client_rate_limiter.instance_variable_set(:@last_tx_rate_bucket, 0)

          # send a constant 2 TPS
          (1..8).each do |t|
            allow(Util).to receive(:monotonic_seconds).and_return(t / 2.0)
            client_rate_limiter.send(:update_measured_rate)
          end

          expect(client_rate_limiter.instance_variable_get(:@measured_tx_rate)).to be_within(0.1).of(2.0)

          # if we now wait 10 seconds (0.1 TPS)
          # our rate is somewhere between 2 TPS and 0.1 TPS
          allow(Util).to receive(:monotonic_seconds).and_return(14)
          client_rate_limiter.send(:update_measured_rate)
          rate = client_rate_limiter.instance_variable_get(:@measured_tx_rate)
          expect(rate).to be_between(0.1, 2)
        end

      end

      describe 'RetryErrors::ClientRateLimiting' do
        let(:client_rate_limiter) { RetryErrors::ClientRateLimiting.new }

        ######
        # Cubic Calculator tests
        it 'sets the time window correctly from max rate' do
          client_rate_limiter.instance_variable_set(:@last_max_rate, 10)
          client_rate_limiter.send(:calculate_time_window)
          expect(client_rate_limiter.instance_variable_get(:@time_window)).to be_within(0.1).of(1.9)
        end

        it 'decreases rate by beta when throttled' do
          rate_when_throttled = 8
          new_rate = client_rate_limiter.send(:cubic_throttle, rate_when_throttled)
          expect(new_rate).to eq(rate_when_throttled * 0.7)
        end

        it 'should match beta decrease' do
          stub_const('Aws::Plugins::RetryErrors::ClientRateLimiting::BETA', 0.6)
          client_rate_limiter.instance_variable_set(:@last_max_rate, 10)

          new_rate = client_rate_limiter.send(:cubic_throttle, 10)
          client_rate_limiter.instance_variable_set(:@last_throttle_time, 1)
          client_rate_limiter.send(:calculate_time_window)
          expect(new_rate).to eq(6.0)

          new_rate = client_rate_limiter.send(:cubic_success, 1)
          expect(new_rate).to be_within(0.1).of(6.0)
        end

        #######
        # Rate Clocker tests
        it 'updates rate if after bucket range' do
          client_rate_limiter.instance_variable_set(:@last_tx_rate_bucket, 0)
          allow(Util).to receive(:monotonic_seconds).and_return(1)

          client_rate_limiter.send(:update_measured_rate)
          # This should be 1 * 0.8 + 0 * 0.2, or just 0.8
          expect(client_rate_limiter.instance_variable_get(:@measured_tx_rate)).to be_within(0.1).of(0.8)
        end

        it 'can measure a constant rate' do
          client_rate_limiter.instance_variable_set(:@last_tx_rate_bucket, 0)

          # send a constant 2 TPS
          (1..8).each do |t|
            allow(Util).to receive(:monotonic_seconds).and_return(t / 2.0)
            client_rate_limiter.send(:update_measured_rate)
          end

          expect(client_rate_limiter.instance_variable_get(:@measured_tx_rate)).to be_within(0.1).of(2.0)

          # if we now wait 10 seconds (0.1 TPS)
          # our rate is somewhere between 2 TPS and 0.1 TPS
          allow(Util).to receive(:monotonic_seconds).and_return(14)
          client_rate_limiter.send(:update_measured_rate)
          rate = client_rate_limiter.instance_variable_get(:@measured_tx_rate)
          expect(rate).to be_between(0.1, 2)
        end

      end

    end
  end
end
