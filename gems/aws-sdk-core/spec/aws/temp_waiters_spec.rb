# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module Waiters
    describe 'Waiters' do
      dir = File.expand_path('../../fixtures', __FILE__)
      WaiterTest = ApiHelper.sample_service(
        api: JSON.load_file("#{dir}/waiters/service.json"),
        waiters: JSON.load_file("#{dir}/waiters/waiters.json")
      )

      let(:client) { WaiterTest::Client.new(stub_responses: true) }

      let(:setup_stub_resp) do
        client.stub_responses(:waiter_operation, table: { table_status: 'ACTIVE' })
      end

      let(:setup_stub_resp_error) do
        client.stub_responses(:waiter_operation, 'ResourceNotFoundException')
      end

      describe 'unknown waiters' do
        it 'raises an error when attempting to wait for an unknown state' do
          expect do
            client.wait_until(:fake_waiter_name)
          end.to raise_error(Waiters::Errors::NoSuchWaiterError)
        end

        it 'lists available waiters in the error message' do
          error = nil
          begin
            client.wait_until(:fake_waiter_name)
          rescue Errors::NoSuchWaiterError => error
            # Ignored
          end
          expect(client.waiter_names.size).to be_positive
          client.waiter_names.each do |waiter_name|
            expect(error.message).to match(waiter_name.inspect)
          end
        end
      end

      describe 'Client#wait_until' do
        it 'yields the waiter to the client #wait_until block' do
          client.wait_until(:generic_waiter) do |waiter|
            expect(waiter.delay).to eq(20)
            expect(waiter.interval).to eq(20) # aliased `#delay`
            expect(waiter.max_attempts).to eq(25)
            waiter.before_attempt do
              throw :success
            end
          end
        end

        it 'returns true when :success thrown' do
          result = client.wait_until(:generic_waiter) do |waiter|
            waiter.before_attempt do
              throw :success
            end
          end
          expect(result).to be(true)
        end

        it 'returns the thrown value when :success thrown' do
          result = client.wait_until(:generic_waiter) do |waiter|
            waiter.before_attempt do
              throw :success, 'sweet!'
            end
          end
          expect(result).to eq('sweet!')
        end

        it 'triggers callbacks before sending and before waiting' do
          setup_stub_resp_error
          yielded = []
          expect do
            client.wait_until(:generic_waiter) do |w|
              w.interval = 0
              w.max_attempts = 2
              w.before_attempt do |attempts|
                yielded << "before attempt #{attempts + 1}"
              end
              w.before_wait do |attempts, _resp|
                yielded << "before wait #{attempts}"
              end
            end
          end.to raise_error(Waiters::Errors::WaiterFailed)
          expect(yielded).to eq(
            [
              'before attempt 1',
              'before wait 1',
              'before attempt 2'
            ]
          )
        end

        it 'returns when successful' do
          setup_stub_resp
          expect { client.wait_until(:generic_waiter) }
            .not_to raise_error
        end

        it 'returns the client response' do
          setup_stub_resp
          resp = client.wait_until(:generic_waiter)
          expect(resp.table.table_status).to eq('ACTIVE')
        end

        it 'raises an error when failed' do
          setup_stub_resp_error
          expect do
            client.wait_until(:generic_waiter, {}, delay: 0)
          end.to raise_error(Errors::WaiterFailed)
        end

        it 'raises a max attempts after the configured attempt count' do
          expect do
            client.wait_until(:generic_waiter) do |w|
              w.interval = 0
              w.max_attempts = 4
            end
          end.to raise_error(
            Errors::TooManyAttemptsError,
            /stopped waiting after 4 attempts/
          )
        end

        it 'sleeps between attempts' do
          expect do
            client.wait_until(:generic_waiter) do |w|
              w.interval = 1.234
              w.max_attempts = 4
              expect(w).to receive(:sleep).with(1.234).exactly(3).times
            end
          end.to raise_error(Errors::TooManyAttemptsError)
        end

        it 'catches :failure from before attempt callbacks' do
          expect do
            client.wait_until(:generic_waiter) do |w|
              expect(w).not_to receive(:sleep)
              w.before_attempt do
                throw :failure, 'custom-message'
              end
            end
          end.to raise_error(Errors::WaiterFailed, 'custom-message')
        end

        it 'catches :failure from before wait callbacks' do
          expect do
            client.wait_until(:generic_waiter) do |w|
              expect(w).not_to receive(:sleep)
              w.before_wait do
                throw :failure, 'custom-message'
              end
            end
          end.to raise_error(Errors::WaiterFailed, 'custom-message')
        end

        it 'catches :success from before attempt callbacks' do
          expect(client).not_to receive(:waiter_operation)
          client.wait_until(:generic_waiter) do |w|
            w.before_attempt do
              throw :success
            end
          end
        end

        it 'catches :success from before wait callbacks' do
          expect(client).not_to receive(:waiter_operation)
          client.wait_until(:generic_waiter) do |w|
            w.before_attempt do
              throw :success
            end
          end
        end

        it 'does not trap errors raised during request' do
          client.handle do |_c|
            raise 'Error'
          end
          expect { client.wait_until(:generic_waiter) }.to raise_error('Error')
        end

        it 'raises response errors' do
          client.stub_responses(:waiter_operation, RuntimeError.new('oops'))
          expect { client.wait_until(:generic_waiter) }
            .to raise_error(Errors::WaiterFailed, /oops/)
        end

        describe 'status matcher' do
          it 'succeeds when an expected status is encountered' do
            attempts = 0
            client.handle do |context|
              attempts += 1
              context.http_response.status_code = 404
              Seahorse::Client::Response.new(context: context)
            end
            client.wait_until(:status_matcher_waiter)
            expect(attempts).to be(1)
          end

          it 'fails when there are no matches encountered' do
            expect do
              client.wait_until(:status_matcher_waiter) do |w|
                w.max_attempts = 5
                w.delay = 0
              end
            end.to raise_error(Errors::TooManyAttemptsError)
          end
        end

        describe 'error matcher' do
          context 'expected is an error code' do
            it 'succeeds when matched' do
              setup_stub_resp_error
              expect { client.wait_until(:error_matcher_with_error_code) }
                .not_to raise_error
            end

            it 'fails when there are no matches' do
              expect { client.wait_until(:error_matcher_with_error_code) }
                .to raise_error(Errors::TooManyAttemptsError)
            end
          end

          context 'expected is true' do
            it 'succeeds when matched with any error' do
              client.stub_responses(:waiter_operation, RuntimeError.new)
              expect { client.wait_until(:error_matcher_with_true) }
                .not_to raise_error
            end
          end

          context 'expected is false' do # meaning no errors were encountered
            it 'eventually succeeds when a response with no error is received' do
              client.stub_responses(
                :waiter_operation,
                'ResourceNotFoundException',
                { table: { table_status: 'ACTIVE' } }
              )
              expect { client.wait_until(:error_matcher_with_false) }
                .not_to raise_error
            end

            it 'fails when matched' do
              setup_stub_resp
              expect { client.wait_until(:error_matcher_with_false_fails) }
                .to raise_error(Errors::WaiterFailed)
            end

            it 'retries when matched' do
              client.stub_responses(
                :waiter_operation,
                { table: { table_status: 'ACTIVE' } },
                'ResourceNotFoundException'
              )
              retries = 0
              client.wait_until(:error_matcher_with_false_retries) { retries += 1 }
              expect(retries).to be(1)
            end
          end
        end

        describe 'path matcher' do
          context 'path' do
            it 'retries and succeed when matched' do
              client.stub_responses(
                :waiter_operation,
                { table: { table_status: 'UPDATING' } },
                { table: { table_status: 'ACTIVE' } }
              )
              retries = 0
              expect do
                client.wait_until(:path_matcher) { retries += 1 }
              end.not_to raise_error
              expect(retries).to be(1)
            end

            it 'fails when matched' do
              client.stub_responses(:waiter_operation, table: { table_status: 'FAILED' })
              expect { client.wait_until(:path_matcher) }
                .to raise_error(Errors::FailureStateError)
            end
          end

          context 'pathAll' do
            it 'retries and succeed when matched' do
              client.stub_responses(
                :waiter_operation,
                { table_list: [{ table_status: 'UPDATING' }] },
                { table_list: [{ table_status: 'ACTIVE' }] }
              )
              retries = 0
              expect do
                client.wait_until(:path_all_matcher) { retries += 1 }
              end.not_to raise_error
              expect(retries).to be(1)
            end

            it 'fails when matched' do
              client.stub_responses(
                :waiter_operation,
                table_list: [{ table_status: 'FAILED' }]
              )
              expect { client.wait_until(:path_all_matcher) }
                .to raise_error(Errors::FailureStateError)
            end

            it 'fails when none are matched' do
              client.stub_responses(
                :waiter_operation,
                table_list: [{ table_status: 'UPDATING' }, { table_status: 'ACTIVE' }]
              )
              expect { client.wait_until(:path_all_matcher) }
                .to raise_error(Errors::TooManyAttemptsError)
            end

            it 'fails when none of the path matches' do
              client.stub_responses(
                :waiter_operation,
                table_list: [{ table_status: 'UPDATING' }, { table_status: 'ACTIVE' }]
              )
              expect do
                client.wait_until(:path_all_matcher) { |w| w.max_attempts = 1 }
              end.to raise_error(Errors::TooManyAttemptsError)
            end
          end

          context 'pathAny' do
            it 'retries and succeed when matched' do
              client.stub_responses(
                :waiter_operation,
                { table_list: [{ table_status: 'UPDATING' }, { table_status: 'CREATING' }] },
                { table_list: [{ table_status: 'ACTIVE' }, { table_status: 'CREATING' }] }
              )
              retries = 0
              expect do
                client.wait_until(:path_any_matcher) { retries += 1 }
              end.not_to raise_error
              expect(retries).to be(1)
            end

            it 'fails when matched' do
              client.stub_responses(
                :waiter_operation,
                { table_list: [{ table_status: 'FAILED' }, { table_status: 'CREATING' }] }
              )
              expect { client.wait_until(:path_any_matcher) }
                .to raise_error(Errors::FailureStateError)
            end

            it 'fails when none of the path matches' do
              client.stub_responses(
                :waiter_operation,
                table_list: [{ table_status: 'CREATING' }, { table_status: 'FOO' }]
              )
              expect { client.wait_until(:path_any_matcher) }
                .to raise_error(Errors::TooManyAttemptsError)
            end
          end
        end
      end
    end
  end
end
