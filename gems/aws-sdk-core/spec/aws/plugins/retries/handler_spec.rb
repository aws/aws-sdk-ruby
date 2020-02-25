require_relative '../../../spec_helper'
require_relative 'retry_errors_spec_helper'

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
          client_rate_limiter.instance_variable_set(:@last_tx_rate_bucket, 4.5)
          client_rate_limiter.instance_variable_set(:@last_max_rate, 10)
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
          # TODO: These tests from the SEP are broken
          #run_retry throttle(7, 6.8) + throttle(8, 4.7) + success(9, 6.6)
          #run_retry success(10, 6.8)
          #run_retry success(11, 7.6)
          #run_retry success(12, 11.5)
        end
      end
    end
  end
end
