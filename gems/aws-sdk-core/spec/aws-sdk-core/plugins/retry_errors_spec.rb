# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Core
    module Plugins
      describe RetryErrors do
        let(:sample_client) { ClientHelper.sample_client }
        let(:client_class) { sample_client.const_get(:Client) }
        let(:client) { client_class.new(stub_responses: true) }

        it 'adds a :retry_mode option to config' do
          expect(client.config).to respond_to(:retry_mode)
        end

        it 'adds a :max_attempts option to config' do
          expect(client.config).to respond_to(:max_attempts)
        end

        it 'adds an :adaptive_retry_wait_to_fill option to config' do
          expect(client.config).to respond_to(:adaptive_retry_wait_to_fill)
        end

        it 'defaults retry_mode to standard' do
          expect(client.config.retry_mode).to eq('standard')
        end

        it 'resolves retry_mode from ENV' do
          stub_const('ENV', { 'AWS_RETRY_MODE' => 'adaptive' })
          c = client_class.new(stub_responses: true)
          expect(c.config.retry_mode).to eq('adaptive')
        end

        it 'resolves max_attempts from ENV' do
          stub_const('ENV', { 'AWS_MAX_ATTEMPTS' => '5' })
          c = client_class.new(stub_responses: true)
          expect(c.config.max_attempts).to eq(5)
        end

        it 'raises on invalid retry_mode' do
          stub_const('ENV', { 'AWS_RETRY_MODE' => 'invalid' })
          expect { client_class.new(stub_responses: true) }
            .to raise_error(ArgumentError, /standard.*adaptive/)
        end

        it 'accepts retry_mode as a string' do
          c = client_class.new(retry_mode: 'adaptive', stub_responses: true)
          expect(c.config.retry_mode).to eq('adaptive')
        end

        it 'raises on non-positive max_attempts' do
          stub_const('ENV', { 'AWS_MAX_ATTEMPTS' => '0' })
          expect { client_class.new(stub_responses: true) }
            .to raise_error(ArgumentError, /positive integer/)
        end

        it 'does not add the handler if :stub_responses is enabled' do
          expect(client.handlers).not_to include(Aws::Core::Plugins::RetryErrors::Handler)
        end

        describe RetryErrors::Handler do
          let(:config) do
            config = Smithy::Client::Configuration.new
            config.add_option(:service,
                              double('service', traits: { 'aws.api#service' => { 'sdkId' => 'TestService' } }))
            config.add_option(:profile)
            Plugins::RetryErrors.new.add_options(config)
            config.build!(profile: 'default')
          end

          let(:operation) { Smithy::Schema::Shapes::OperationShape.new(traits: {}) }
          let(:context) { Smithy::Client::HandlerContext.new(config: config, operation: operation) }
          let(:response) { Smithy::Client::Response.new(context: context) }
          let(:service_error) { Smithy::Client::ServiceError.new(context, Smithy::Schema::EmptyStructure.new) }

          let(:retry_strategy) { config.retry_strategy }
          let(:quota) { retry_strategy.instance_variable_get(:@quota) }

          subject { RetryErrors::Handler.new }

          # Helper to run retry test cases through the handler
          def handle_with_retry(test_cases)
            allow(Kernel).to receive(:sleep)
            i = 0
            subject.handler = proc { |_context|
              apply_delay(test_cases[i])
              apply_expectations(test_cases[i - 1]) if i.positive?
              setup_next_response(test_cases[i])
              i += 1
              response
            }
            subject.call(response.context)

            expect(i).to(
              eq(test_cases.size),
              "Handler called #{i} times but #{test_cases.size} test cases defined."
            )
            apply_expectations(test_cases[i - 1])
          end

          def reset_request
            response.context.retries = 0
          end

          def apply_delay(test_case)
            expected = test_case[:expect]
            return unless expected[:delay]

            expect(Kernel).to receive(:sleep).with(expected[:delay])
          end

          def apply_expectations(test_case)
            expected = test_case[:expect]
            if expected[:available_capacity]
              expect(quota.instance_variable_get(:@available_capacity))
                .to eq(expected[:available_capacity])
            end
            expect(response.context.retries).to eq(expected[:retries]) if expected[:retries]
            if expected[:calculated_rate]
              limiter = retry_strategy.instance_variable_get(:@client_rate_limiter)
              expect(limiter.instance_variable_get(:@calculated_rate))
                .to be_within(0.2).of(expected[:calculated_rate])
            end
            if expected[:measured_tx_rate]
              limiter = retry_strategy.instance_variable_get(:@client_rate_limiter)
              expect(limiter.instance_variable_get(:@measured_tx_rate))
                .to be_within(0.1).of(expected[:measured_tx_rate])
            end
            return unless expected[:fill_rate]

            limiter = retry_strategy.instance_variable_get(:@client_rate_limiter)
            expect(limiter.instance_variable_get(:@fill_rate))
              .to be_within(0.1).of(expected[:fill_rate])
          end

          def setup_next_response(test_case)
            next_response = test_case[:response]
            response.context.http_response.status_code = next_response[:status_code]
            response.error = next_response[:error]

            next_response[:headers]&.each do |k, v|
              response.context.http_response.headers[k] = v
            end

            allow(Process).to receive(:clock_gettime).and_return(next_response[:timestamp]) if next_response[:timestamp]
          end

          context 'standard mode' do
            before(:each) do
              config.retry_strategy = Aws::Core::Retry::Standard.new
              allow(Kernel).to receive(:rand).and_return(1)
            end

            it 'retry eventually succeeds' do
              test_case_def = [
                {
                  response: { status_code: 500, error: service_error },
                  expect: { available_capacity: 486, retries: 1, delay: 0.05 }
                },
                {
                  response: { status_code: 500, error: service_error },
                  expect: { available_capacity: 472, retries: 2, delay: 0.1 }
                },
                {
                  response: { status_code: 200, error: nil },
                  expect: { available_capacity: 486, retries: 2 }
                }
              ]
              handle_with_retry(test_case_def)
            end

            it 'fails due to max attempts reached' do
              test_case_def = [
                {
                  response: { status_code: 502, error: service_error },
                  expect: { available_capacity: 486, retries: 1, delay: 0.05 }
                },
                {
                  response: { status_code: 502, error: service_error },
                  expect: { available_capacity: 472, retries: 2, delay: 0.1 }
                },
                {
                  response: { status_code: 502, error: service_error },
                  expect: { available_capacity: 472, retries: 2 }
                }
              ]
              handle_with_retry(test_case_def)
            end

            it 'retry quota reached after a single retry' do
              quota.instance_variable_set(:@available_capacity, 14)

              test_case_def = [
                {
                  response: { status_code: 500, error: service_error },
                  expect: { available_capacity: 0, retries: 1, delay: 0.05 }
                },
                {
                  response: { status_code: 500, error: service_error },
                  expect: { available_capacity: 0, retries: 1 }
                }
              ]
              handle_with_retry(test_case_def)
            end

            it 'no retries at all if retry quota is 0' do
              quota.instance_variable_set(:@available_capacity, 0)

              test_case_def = [
                {
                  response: { status_code: 500, error: service_error },
                  expect: { available_capacity: 0, retries: 0 }
                }
              ]
              handle_with_retry(test_case_def)
            end

            it 'verifies exponential backoff timing' do
              retry_strategy.instance_variable_set(:@max_attempts, 5)

              test_case_def = [
                {
                  response: { status_code: 500, error: service_error },
                  expect: { available_capacity: 486, retries: 1, delay: 0.05 }
                },
                {
                  response: { status_code: 500, error: service_error },
                  expect: { available_capacity: 472, retries: 2, delay: 0.1 }
                },
                {
                  response: { status_code: 500, error: service_error },
                  expect: { available_capacity: 458, retries: 3, delay: 0.2 }
                },
                {
                  response: { status_code: 500, error: service_error },
                  expect: { available_capacity: 444, retries: 4, delay: 0.4 }
                },
                {
                  response: { status_code: 500, error: service_error },
                  expect: { available_capacity: 444, retries: 4 }
                }
              ]
              handle_with_retry(test_case_def)
            end

            it 'does not exceed max backoff time' do
              retry_strategy.instance_variable_set(:@max_attempts, 5)
              stub_const('Smithy::Client::Retry::ExponentialBackoff::MAX_BACKOFF', 0.2)

              test_case_def = [
                {
                  response: { status_code: 500, error: service_error },
                  expect: { available_capacity: 486, retries: 1, delay: 0.05 }
                },
                {
                  response: { status_code: 500, error: service_error },
                  expect: { available_capacity: 472, retries: 2, delay: 0.1 }
                },
                {
                  response: { status_code: 500, error: service_error },
                  expect: { available_capacity: 458, retries: 3, delay: 0.2 }
                },
                {
                  response: { status_code: 500, error: service_error },
                  expect: { available_capacity: 444, retries: 4, delay: 0.2 }
                },
                {
                  response: { status_code: 500, error: service_error },
                  expect: { available_capacity: 444, retries: 4 }
                }
              ]
              handle_with_retry(test_case_def)
            end

            it 'throttling error costs 5 tokens and uses 1s base backoff' do
              throttling_class = Class.new(Smithy::Client::ServiceError) { self.code = 'Throttling' }
              throttling_error = throttling_class.new(context, Smithy::Schema::EmptyStructure.new)
              test_case_def = [
                {
                  response: { status_code: 400, error: throttling_error },
                  expect: { available_capacity: 495, retries: 1, delay: 1.0 }
                },
                {
                  response: { status_code: 200, error: nil },
                  expect: { available_capacity: 500, retries: 1 }
                }
              ]
              handle_with_retry(test_case_def)
            end

            it 'stops retrying after quota exhaustion' do
              retry_strategy.instance_variable_set(:@max_attempts, 5)
              quota.instance_variable_set(:@available_capacity, 20)

              test_case_def = [
                {
                  response: { status_code: 500, error: service_error },
                  expect: { available_capacity: 6, retries: 1, delay: 0.05 }
                },
                {
                  response: { status_code: 502, error: service_error },
                  expect: { available_capacity: 6, retries: 1 }
                }
              ]
              handle_with_retry(test_case_def)
            end

            it 'recovers quota after successful responses' do
              retry_strategy.instance_variable_set(:@max_attempts, 5)
              quota.instance_variable_set(:@available_capacity, 30)

              test_case_def = [
                {
                  response: { status_code: 500, error: service_error },
                  expect: { available_capacity: 16, retries: 1, delay: 0.05 }
                },
                {
                  response: { status_code: 502, error: service_error },
                  expect: { available_capacity: 2, retries: 2, delay: 0.1 }
                },
                {
                  response: { status_code: 200, error: nil },
                  expect: { available_capacity: 16, retries: 2 }
                }
              ]
              handle_with_retry(test_case_def)

              reset_request
              test_case_def2 = [
                {
                  response: { status_code: 500, error: service_error },
                  expect: { available_capacity: 2, retries: 1, delay: 0.05 }
                },
                {
                  response: { status_code: 200, error: nil },
                  expect: { available_capacity: 16, retries: 1 }
                }
              ]
              handle_with_retry(test_case_def2)
            end

            it 'shares retry quota across requests' do
              test_case_def = [
                {
                  response: { status_code: 500, error: service_error },
                  expect: { available_capacity: 486, retries: 1, delay: 0.05 }
                },
                {
                  response: { status_code: 500, error: service_error },
                  expect: { available_capacity: 472, retries: 2, delay: 0.1 }
                },
                {
                  response: { status_code: 200, error: nil },
                  expect: { available_capacity: 486, retries: 2 }
                }
              ]
              handle_with_retry(test_case_def)

              reset_request
              test_case_def2 = [
                {
                  response: { status_code: 500, error: service_error },
                  expect: { available_capacity: 472, retries: 1, delay: 0.05 }
                },
                {
                  response: { status_code: 200, error: nil },
                  expect: { available_capacity: 486, retries: 1 }
                }
              ]
              handle_with_retry(test_case_def2)
            end

            context 'x-amz-retry-after header' do
              it 'honors the header value' do
                test_case_def = [
                  {
                    response: { status_code: 500, error: service_error, headers: { 'x-amz-retry-after' => '1500' } },
                    expect: { available_capacity: 486, retries: 1, delay: 1.5 }
                  },
                  {
                    response: { status_code: 200, error: nil },
                    expect: { available_capacity: 500, retries: 1 }
                  }
                ]
                handle_with_retry(test_case_def)
              end

              it 'minimum is exponential backoff duration' do
                test_case_def = [
                  {
                    # x-amz-retry-after=0ms, t_i=0.05, uses t_i as floor
                    response: { status_code: 500, error: service_error, headers: { 'x-amz-retry-after' => '0' } },
                    expect: { available_capacity: 486, retries: 1, delay: 0.05 }
                  },
                  {
                    response: { status_code: 200, error: nil },
                    expect: { available_capacity: 500, retries: 1 }
                  }
                ]
                handle_with_retry(test_case_def)
              end

              it 'maximum is 5 + exponential backoff duration' do
                test_case_def = [
                  {
                    # x-amz-retry-after=10000ms (10s), t_i=0.05, clamped to 5.05
                    response: { status_code: 500, error: service_error, headers: { 'x-amz-retry-after' => '10000' } },
                    expect: { available_capacity: 486, retries: 1, delay: 5.05 }
                  },
                  {
                    response: { status_code: 200, error: nil },
                    expect: { available_capacity: 500, retries: 1 }
                  }
                ]
                handle_with_retry(test_case_def)
              end

              it 'ignores invalid values and falls back to exponential backoff' do
                test_case_def = [
                  {
                    response: { status_code: 500, error: service_error, headers: { 'x-amz-retry-after' => 'invalid' } },
                    expect: { available_capacity: 486, retries: 1, delay: 0.05 }
                  },
                  {
                    response: { status_code: 200, error: nil },
                    expect: { available_capacity: 500, retries: 1 }
                  }
                ]
                handle_with_retry(test_case_def)
              end
            end

            context 'AWS error code classification' do
              it 'retries known throttling error codes' do
                # SlowDown with 503 should be throttling (cost 5), not transient (cost 14)
                slow_down_class = Class.new(Smithy::Client::ServiceError) { self.code = 'SlowDown' }
                slow_down_error = slow_down_class.new(context, Smithy::Schema::EmptyStructure.new)
                test_case_def = [
                  {
                    response: { status_code: 503, error: slow_down_error },
                    expect: { available_capacity: 495, retries: 1, delay: 1.0 }
                  },
                  {
                    response: { status_code: 200, error: nil },
                    expect: { available_capacity: 500, retries: 1 }
                  }
                ]
                handle_with_retry(test_case_def)
              end
            end
          end

          context 'long-polling operations' do
            before(:each) do
              config.retry_strategy = Aws::Core::Retry::Standard.new
              allow(Kernel).to receive(:rand).and_return(1)
              # Simulate a long-polling operation via trait
              allow(response.context.operation).to receive(:traits)
                .and_return({ 'smithy.api#longPoll' => {} })
            end

            it 'backs off after transient error when token bucket empty' do
              quota.instance_variable_set(:@available_capacity, 0)

              test_case_def = [
                {
                  response: { status_code: 500, error: service_error },
                  expect: { available_capacity: 0, retries: 0, delay: 0.05 }
                }
              ]
              handle_with_retry(test_case_def)
            end

            it 'backs off after throttling error when token bucket empty' do
              quota.instance_variable_set(:@available_capacity, 0)

              test_case_def = [
                {
                  response: { status_code: 429, error: service_error },
                  expect: { available_capacity: 0, retries: 0, delay: 1.0 }
                }
              ]
              handle_with_retry(test_case_def)
            end

            it 'does not delay when max attempts exceeded' do
              test_case_def = [
                {
                  response: { status_code: 500, error: service_error },
                  expect: { retries: 1, delay: 0.05 }
                },
                {
                  response: { status_code: 500, error: service_error },
                  expect: { retries: 2, delay: 0.1 }
                },
                {
                  response: { status_code: 500, error: service_error },
                  expect: { retries: 2 }
                }
              ]
              handle_with_retry(test_case_def)
            end

            it 'does not delay on success' do
              test_case_def = [
                {
                  response: { status_code: 500, error: service_error },
                  expect: { retries: 1, delay: 0.05 }
                },
                {
                  response: { status_code: 200, error: nil },
                  expect: { retries: 1 }
                }
              ]
              handle_with_retry(test_case_def)
            end

            it 'does not delay on non-retryable errors' do
              test_case_def = [
                {
                  response: { status_code: 404, error: service_error },
                  expect: { retries: 0 }
                }
              ]
              handle_with_retry(test_case_def)
            end
          end

          context 'adaptive mode' do
            let(:client_rate_limiter) do
              retry_strategy.instance_variable_get(:@client_rate_limiter)
            end

            before(:each) do
              config.retry_strategy = Aws::Core::Retry::Adaptive.new
              client_rate_limiter.instance_variable_set(:@last_throttle_time, 5)
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

              successes.each { |s| handle_with_retry([s]) }
            end

            it 'verifies success and throttling behavior' do
              client_rate_limiter.instance_variable_set(:@last_throttle_time, 0)
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
  end
end
