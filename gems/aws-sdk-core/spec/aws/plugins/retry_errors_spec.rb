# frozen_string_literal: true

require_relative '../../spec_helper'
require_relative '../../retry_errors_helper'

module Aws
  module Plugins
    describe RetryErrors do
      let(:client) { RetryErrorsSvc::Client.new(stub_responses: true) }

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

      it 'can configure retry_mode using defaults mode' do
        allow_any_instance_of(Aws::DefaultsModeConfigResolver)
          .to receive(:resolve)
        allow_any_instance_of(Aws::DefaultsModeConfigResolver)
          .to receive(:resolve).with(:retry_mode).and_return('standard')
        expect(client.config.retry_mode).to eq('standard')
      end

      it 'raises when retry_mode is not legacy, standard, or adaptive' do
        ENV['AWS_RETRY_MODE'] = 'peccy'
        expect { client }.to raise_error(ArgumentError)
      end

      it 'uses the handler when retry_mode is standard' do
        client = RetryErrorsSvc::Client.new(
          retry_mode: 'standard', region: 'us-west-2'
        )
        expect(client.handlers.entries.map(&:handler_class)).
          to include(RetryErrors::Handler)
      end

      it 'uses the handler when retry_mode is adaptive' do
        client = RetryErrorsSvc::Client.new(
          retry_mode: 'adaptive', region: 'us-west-2'
        )
        expect(client.handlers.entries.map(&:handler_class))
          .to include(RetryErrors::Handler)
      end

      it 'defaults config.max_attempts to 3' do
        expect(client.config.max_attempts).to eq(3)
      end

      it 'can configure max_attempts with shared config' do
        allow_any_instance_of(Aws::SharedConfig)
          .to receive(:max_attempts).and_return('5')
        expect(client.config.max_attempts).to eq(5)
      end

      it 'can configure max_attempts using ENV with precedence over config' do
        allow_any_instance_of(Aws::SharedConfig)
          .to receive(:max_attempts).and_return('3')
        ENV['AWS_MAX_ATTEMPTS'] = '1'
        expect(client.config.max_attempts).to eq(1)
      end

      it 'raises when max_attempts is not an integer' do
        ENV['AWS_MAX_ATTEMPTS'] = 'string'
        expect { client }.to raise_error(ArgumentError)
      end

      it 'raises when max_attempts is not >= 0' do
        ENV['AWS_MAX_ATTEMPTS'] = '-1'
        expect { client }.to raise_error(ArgumentError)
      end

      it 'defaults config.adaptive_retry_wait_to_fill to true' do
        expect(client.config.adaptive_retry_wait_to_fill).to eq(true)
      end

      it 'can configure adaptive_retry_wait_to_fill using ENV with precedence over config' do
        ENV['AWS_ADAPTIVE_RETRY_WAIT_TO_FILL'] = 'false'
        expect(client.config.adaptive_retry_wait_to_fill).to eq(false)
      end

      it 'can configure adaptive_retry_wait_to_fill with shared config' do
        allow_any_instance_of(Aws::SharedConfig)
          .to receive(:adaptive_retry_wait_to_fill).and_return('false')
        expect(client.config.adaptive_retry_wait_to_fill).to eq(false)
      end

      it 'defaults config.correct_clock_skew to true' do
        expect(client.config.correct_clock_skew).to eq(true)
      end

      it 'can configure correct_clock_skew using ENV with precedence over config' do
        ENV['AWS_CORRECT_CLOCK_SKEW'] = 'true'
        expect(client.config.correct_clock_skew).to eq(true)
      end

      it 'can configure correct_clock_skew with shared config' do
        allow_any_instance_of(Aws::SharedConfig)
          .to receive(:correct_clock_skew).and_return('true')
        expect(client.config.correct_clock_skew).to eq(true)
      end

      it 'sets user-agent metric for standard' do
        client = RetryErrorsSvc::Client.new(retry_mode: 'standard', region: 'us-west-2')
        stub_request(:post, client.config.endpoint)
        resp = client.example_operation
        metric = Aws::Plugins::UserAgent::METRICS['RETRY_MODE_STANDARD']
        expect(resp.context.http_request.headers['User-Agent'])
          .to include("m/#{metric}")
      end

      it 'sets user-agent metric for adaptive' do
        client = RetryErrorsSvc::Client.new(retry_mode: 'adaptive', region: 'us-west-2')
        stub_request(:post, client.config.endpoint)
        resp = client.example_operation
        metric = Aws::Plugins::UserAgent::METRICS['RETRY_MODE_ADAPTIVE']
        expect(resp.context.http_request.headers['User-Agent'])
          .to include("m/#{metric}")
      end
    end

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

          handle_with_retry(test_case_def)
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

          handle_with_retry(test_case_def)
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

          handle_with_retry(test_case_def)
        end

        it 'does not retry if the retry quota is 0' do
          config.retry_quota.instance_variable_set(:@available_capacity, 0)

          test_case_def = [
            {
              response: { status_code: 500, error: service_error },
              expect: { available_capacity: 0, retries: 0 }
            }
          ]

          handle_with_retry(test_case_def)
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

          handle_with_retry(test_case_def)
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

          handle_with_retry(test_case_def)
        end

        it 'corrects and retries clock skew errors' do
          clock_skew_error = RetryErrorsSvc::Errors::RequestTimeTooSkewed
                               .new(nil, nil)
          test_case_def = [
            {
              response: { status_code: 500, error: clock_skew_error,
                          clock_skew: 1000 },
              expect: { retries: 1 }
            },
            {
              response: { status_code: 200, error: nil },
              expect: { retries: 1, clock_correction: 1000 }
            }
          ]

          handle_with_retry(test_case_def)
        end

        it 'deletes endpoints from the endpoint cache and retries endpoint discovery errors' do
          endpoint_error = Errors::EndpointDiscoveryError.new(nil, nil)

          test_case_def = [
            {
              response: { status_code: 421, error: endpoint_error, endpoint_discovery: true },
              expect: { retries: 1 }
            },
            {
              response: { status_code: 200, error: nil },
              expect: { retries: 1 }
            }
          ]

          expect(resp.context.config.endpoint_cache).to receive(:extract_key).and_return('key')
          expect(resp.context.config.endpoint_cache).to receive(:delete).with('key')
          handle_with_retry(test_case_def)
        end

        it 'correctly sets the TTL value on the retry header' do
          allow(config).to receive(:http_read_timeout).and_return(60)
          test_case_def = [
            {
              response: { status_code: 500, error: service_error,
                          clock_skew: 100 },
              expect: { retries: 1, ttl: false }
            },
            {
              response: { status_code: 200, error: nil },
              expect: { retries: 1, ttl: 100 + 60 }
            }
          ]

          handle_with_retry(test_case_def)
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
          successes = [
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

          # Have to run the method each time because there are no failures
          successes.each { |success| handle_with_retry([success]) }
        end

        it 'verifies success and throttling behavior' do
          client_rate_limiter = config.client_rate_limiter
          client_rate_limiter.instance_variable_set(:@last_throttle_time, 0)
          # Needs to be smaller than 't' in the iterations
          client_rate_limiter.instance_variable_set(:@last_tx_rate_bucket, 0)
          client_rate_limiter.instance_variable_set(:@last_max_rate, 0)


          def success(timestamp, measured_tx_rate, fill_rate)
            [{
              response: { status_code: 200, error: nil, timestamp: timestamp },
              expect: { fill_rate: fill_rate, measured_tx_rate: measured_tx_rate }
            }]
          end

          def throttle(timestamp, measured_tx_rate, fill_rate)
            [{
               response: { status_code: 429, error: service_error, timestamp: timestamp },
               expect: { fill_rate: fill_rate, measured_tx_rate: measured_tx_rate }
             }]
          end

          handle_with_retry success(0.2, 0.0, 0.5)
          handle_with_retry success(0.4, 0.0, 0.5)
          handle_with_retry success(0.6, 4.8, 0.5)
          handle_with_retry success(0.8, 4.8, 0.5)
          handle_with_retry success(1.0, 4.16, 0.5)
          handle_with_retry success(1.2, 4.16, 0.69)
          handle_with_retry success(1.4, 4.16, 1.10)
          handle_with_retry success(1.6, 5.63, 1.63)
          handle_with_retry success(1.8, 5.63, 2.33)

          handle_with_retry throttle(2.0, 4.32, 3.02) +
                            success(2.2, 4.32, 3.48)

          handle_with_retry success(2.4, 4.32, 3.82)

          # the token bucket need additional capacity to fulfill this request
          client_rate_limiter.instance_variable_set(:@current_capacity, 10)
          handle_with_retry success(2.6, 5.66, 4.05)

          handle_with_retry success(2.8, 5.66, 4.20)
          handle_with_retry success(3.0, 4.33, 4.28)

          handle_with_retry throttle(3.2, 4.33, 2.99) +
                            success(3.4, 4.32, 3.45)
        end
      end
    end
  end
end
