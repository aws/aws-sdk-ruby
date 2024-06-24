# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module Waiters
    describe 'Waiters' do

      dir = File.expand_path('../../fixtures/waiters', __FILE__)
      WaiterTest = ApiHelper.sample_service(
        api: JSON.load_file("#{dir}/api.json"),
        waiters: JSON.load_file("#{dir}/waiters.json")
      )

      let(:client) {
        WaiterTest::Client.new(stub_responses: true)
      }

      describe 'unknown waiters' do

        it 'raises an error when attempting to wait for an unknown state' do
          expect {
            client.wait_until(:fake_waiter_name)
          }.to raise_error(Waiters::Errors::NoSuchWaiterError)
        end

        it 'lists available waiters in the error message' do
          error = nil
          begin
            client.wait_until(:fake_waiter_name)
          rescue => error
          end
          expect(client.waiter_names.size).to be > 0
          client.waiter_names.each do |waiter_name|
            expect(error.message).to match(waiter_name.inspect)
          end
        end

      end

      describe 'Client#wait_until' do

        it 'can match an path value' do
          client.stub_responses(:describe_table, table: { table_status: 'ACTIVE' })
          r = client.wait_until(:table_exists, table_name:'foo')
          expect(!!r).to be(true)
        end

        it 'yields the waiter to the client #wait_until block' do
          client.wait_until(:table_exists) do |waiter|
            expect(waiter.delay).to eq(20)
            expect(waiter.interval).to eq(20) # aliased `#delay`
            expect(waiter.max_attempts).to eq(25)
            waiter.before_attempt do
              throw :success
            end
          end
        end

        it 'returns true when :success thrown' do
          result = client.wait_until(:table_exists) do |waiter|
            waiter.before_attempt do
              throw :success
            end
          end
          expect(result).to be(true)
        end

        it 'returns the thrown value when :success thrown' do
          result = client.wait_until(:table_exists) do |waiter|
            waiter.before_attempt do
              throw :success, 'sweet!'
            end
          end
          expect(result).to eq('sweet!')
        end

        it 'triggers callbacks before sending and before waiting' do
          client.stub_responses(:describe_table, 'ResourceNotFoundException')
          yielded = []
          expect {
            client.wait_until(:table_exists, table_name: 'name') do |w|
              w.interval = 0
              w.max_attempts = 2
              w.before_attempt do |attempts|
                yielded << "before attempt #{attempts + 1}"
              end
              w.before_wait do |attempts, resp|
                yielded << "before wait #{attempts}"
              end
            end
          }.to raise_error(Waiters::Errors::WaiterFailed)
          expect(yielded).to eq([
            "before attempt 1",
            "before wait 1",
            "before attempt 2",
          ])
        end

        it 'returns when successful' do
          client.stub_responses(:describe_table, table: {table_status:'ACTIVE'})
          expect {
            client.wait_until(:table_exists, table_name:'table')
          }.not_to raise_error
        end

        it 'returns the client response' do
          client.stub_responses(:describe_table, table:{table_status:'ACTIVE'})
          resp = client.wait_until(:table_exists, table_name:'table')
          expect(resp.table.table_status).to eq('ACTIVE')
        end

        it 'raises an error when failed' do
          client.stub_responses(:describe_tables, 'ResourceNotFoundException')
          expect {
            client.wait_until(:table_exists, {table_name:'table'}, delay:0)
          }.to raise_error(Errors::WaiterFailed)
        end

        it 'raises a max attempts after the configured attempt count' do
          expect {
            client.wait_until(:table_exists, table_name:'table') do |w|
              w.interval = 0
              w.max_attempts = 4
            end
          }.to raise_error(Errors::TooManyAttemptsError,
                           /stopped waiting after 4 attempts/)
        end

        it 'sleeps between attempts' do
          expect {
            client.wait_until(:table_exists, table_name:'table') do |w|
              w.interval = 1.234
              w.max_attempts = 4
              expect(w).to receive(:sleep).with(1.234).exactly(3).times
            end
          }.to raise_error(Errors::TooManyAttemptsError)
        end

        it 'catches :failure from before attempt callbacks' do
          expect {
            client.wait_until(:table_exists, table_name:'table') do |w|
              expect(w).not_to receive(:sleep)
              w.before_attempt do |attempts|
                throw :failure, 'custom-message'
              end
            end
          }.to raise_error(Errors::WaiterFailed, 'custom-message')
        end

        it 'catches :failure from before wait callbacks' do
          expect {
            client.wait_until(:table_exists, table_name:'table') do |w|
              expect(w).not_to receive(:sleep)
              w.before_wait do |attempts, response|
                throw :failure, 'custom-message'
              end
            end
          }.to raise_error(Errors::WaiterFailed, 'custom-message')
        end

        it 'catches :success from before attempt callbacks' do
          expect(client).not_to receive(:describe_table)
          client.wait_until(:table_exists, table_name:'table') do |w|
            w.before_attempt do |attempt|
              throw :success
            end
          end
        end

        it 'catches :success from before wait callbacks' do
          expect(client).not_to receive(:describe_table)
          client.wait_until(:table_exists, table_name:'table') do |w|
            w.before_attempt do |attempt|
              throw :success
            end
          end
        end

        describe 'matching on expectd errors' do

          it 'succeedes when an expected error is encountered' do
            attempts = 0
            client.handle do |context|
              attempts += 1
              context.http_response.status_code = 404
              Seahorse::Client::Response.new(context:context)
            end
            client.wait_until(:table_not_exists, table_name:'table')
            expect(attempts).to be(1)
          end

          it 'fails when an expected error is not encountered' do
            expect {
              client.wait_until(:table_not_exists, table_name:'table') do |w|
                w.delay = 0
              end
            }.to raise_error(Errors::TooManyAttemptsError)
          end

        end

        describe 'errors' do

          it 'does not trap errors raised during reqest' do
            client.handle do |context|
              raise 'runtime-error'
            end
            expect {
              client.wait_until(:table_exists, table_name:'table')
            }.to raise_error('runtime-error')
          end

          it 'raises response errors' do
            client.stub_responses(:describe_table, RuntimeError.new('oops'))
            expect {
              client.wait_until(:table_exists, table_name:'table')
            }.to raise_error(Errors::WaiterFailed, /oops/)
          end

        end
      end
    end
  end
end
