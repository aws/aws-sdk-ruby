require_relative '../../../spec_helper'
require_relative '../../../support/retry_errors_helper'

module Aws
  module Plugins
    describe RetryErrors::Handler do
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
        resp.context.client =  Seahorse::Client::Base.new(endpoint: 'http://example.com')
      end

      context 'standard mode' do
        before(:each) do
          config.retry_mode = 'standard'
          allow(Kernel).to receive(:rand).and_return(1)
        end

        it 'retry eventually succeeds' do
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
          config.retry_quota.instance_variable_set(:@available_capacity, 5)

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
          config.retry_quota.instance_variable_set(:@available_capacity, 0)

          test_case_def = [
            {
              response: { status_code: 500, error: service_error },
              expect: { available_capacity: 0, retries: 0 }
            }
          ]

          run_retry(test_case_def)
        end

        it 'uses exponential backoff timing' do
          config.max_attempts = 5

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
          config.max_attempts = 5
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
          config.retry_mode = 'adaptive'

          client_rate_limiter = config.client_rate_limiter
          client_rate_limiter.instance_variable_set(:@last_throttle_time, 5)
          # Needs to be smaller than 't' in the iterations
          client_rate_limiter.instance_variable_set(:@last_tx_rate_bucket, 4.5)
          client_rate_limiter.instance_variable_set(:@last_max_rate, 10)
        end

        it 'verifies cubic calculations for successes' do
          test_case_def = [
            {
              response: { status_code: 200, error: nil, timestamp: 5 },
              expect: { calculated_rate: 7.0 }
            },
            {
              response: { status_code: 200, error: nil, timestamp: 6 },
              expect: { calculated_rate: 9.6 }
            },
            {
              response: { status_code: 200, error: nil, timestamp: 7 },
              expect: { calculated_rate: 10.0 }
            },
            {
              response: { status_code: 200, error: nil, timestamp: 8 },
              expect: { calculated_rate: 10.45 }
            },
            {
              response: { status_code: 200, error: nil, timestamp: 9 },
              expect: { calculated_rate: 13.4 }
            },
            {
              response: { status_code: 200, error: nil, timestamp: 10 },
              expect: { calculated_rate: 21.2 }
            },
            {
              response: { status_code: 200, error: nil, timestamp: 11 },
              expect: { calculated_rate: 36.4 }
            }
          ]

          run_retry(test_case_def)
        end
      end
    end
  end
end
