require 'spec_helper'

module Aws
  module Waiters
    # functionally testing waiters using the S3 and EC2 waiter configurations
    describe 'Waiters' do

      let(:client) { EC2::Client.new(stub_responses: true, retry_limit: 0) }

      let(:waiters_file) {
        File.expand_path(File.join(File.dirname(__FILE__),
                                   '..', 'fixtures', 'waiters', 'waiters.json'))
      }

      describe 'client waiters module' do

        it 'accepts a waiter provider' do
          klass = Class.new { include ClientWaiters }
          klass.set_waiters(Waiters::Provider.new('waiters' => {}))
          expect(klass.new.waiter_names).to eq([])
        end

        it 'accepts a hash' do
          klass = Class.new { include ClientWaiters }
          klass.set_waiters('waiters' => {})
          expect(klass.new.waiter_names).to eq([])
        end

        it 'accepts a String' do
          klass = Class.new { include ClientWaiters }
          klass.set_waiters(waiters_file)
          expect(klass.new.waiter_names).to eq([])
        end

        it 'accepts a Pathname' do
          klass = Class.new { include ClientWaiters }
          klass.set_waiters(Pathname.new waiters_file)
          expect(klass.new.waiter_names).to eq([])
        end

        it 'accepts nil' do
          klass = Class.new { include ClientWaiters }
          klass.set_waiters(nil)
          expect(klass.new.waiter_names).to eq([])
        end

        it 'rejects unknown providers' do
          klass = Class.new { include ClientWaiters }
          expect {
            klass.set_waiters(123)
          }.to raise_error(ArgumentError, 'invalid waiters')
        end

      end

      describe 'unkonwn waiters' do

        it 'raises an error when attempting to wait for an unknown state' do
          expect {
            client.wait_until(:fake_condition)
          }.to raise_error(Waiters::Errors::NoSuchWaiterError)
        end

        it 'lists available waiters in the error message' do
          error = nil
          begin
            client.wait_until(:fake_condition)
          rescue => error
          end
          client.waiter_names.each do |waiter_name|
            expect(error.message).to match(waiter_name.inspect)
          end
        end

        it 'defaults new clients with an empty list of waiters' do
          Aws.add_service(:WaiterTestSvc, api: {})
          expect(Aws::WaiterTestSvc::Client.waiters.waiter_names).to eq([])
        end

      end

      describe 'Client#wait_until' do

        let(:instances) { [] }

        let(:data) {{
          reservations: [
            { instances: instances }
          ]
        }}

        let(:client) { EC2::Client.new(stub_responses: true, retry_limit: 0) }

        it 'can match an path value' do
          client = DynamoDB::Client.new(stub_responses:true)
          client.stub_responses(:describe_table, table: { table_status: 'ACTIVE' })
          r = client.wait_until(:table_exists, table_name:'foo')
          expect(!!r).to be(true)
        end

        it 'yields the waiter to the client #wait_until block' do
          client.wait_until(:instance_running) do |waiter|
            # pulled from apis/EC2.waiters.json, if these defaults
            # change this test case will need to be updated
            expect(waiter.delay).to eq(15)
            expect(waiter.interval).to eq(15) # aliased `#delay`
            expect(waiter.max_attempts).to eq(40)
            waiter.before_attempt do
              throw :success
            end
          end
        end

        it 'returns true when :success thrown' do
          result = client.wait_until(:instance_running) do |waiter|
            waiter.before_attempt do
              throw :success
            end
          end
          expect(result).to be(true)
        end

        it 'returns the thrown value when :success thrown' do
          result = client.wait_until(:instance_running) do |waiter|
            waiter.before_attempt do
              throw :success, 'sweet!'
            end
          end
          expect(result).to eq('sweet!')
        end

        it 'triggers callbacks before sending and before waiting' do
          instances << { state: { name: 'pending' }}
          client.stub_responses(:describe_instances, data)
          yielded = []
          expect {
            client.wait_until(:instance_running) do |w|
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
          instances << { state: { name: 'running' }}
          client.stub_responses(:describe_instances, data)
          expect {
            client.wait_until(:instance_running)
          }.not_to raise_error
        end

        it 'returns the client response' do
          instances << { state: { name: 'running' }}
          client.stub_responses(:describe_instances, data)
          resp = client.wait_until(:instance_running)
          expect(resp).to be_kind_of(Seahorse::Client::Response)
        end

        it 'raises an error when failed' do
          instances << { state: { name: 'terminated' }}
          client.stub_responses(:describe_instances, data)
          expect {
            client.wait_until(:instance_stopped)
          }.to raise_error(Errors::WaiterFailed)
        end

        it 'raises a max attempts after the configured attempt count' do
          expect {
            client.wait_until(:instance_stopped) do |w|
              w.interval = 0
              w.max_attempts = 4
            end
          }.to raise_error(Errors::TooManyAttemptsError,
                           /stopped waiting after 4 attempts/)
        end

        it 'sleeps between attempts' do
          instances << { state: { name: 'running' }}
          expect {
            client.wait_until(:instance_stopped) do |w|
              w.interval = 1.234
              w.max_attempts = 4
              expect(w).to receive(:sleep).with(1.234).exactly(3).times
            end
          }.to raise_error(Errors::TooManyAttemptsError)
        end

        it 'catches :failure from before attempt callbacks' do
          instances << { state: { name: 'running' }}
          client.stub_responses(:describe_instances, data)
          expect {
            instances << { 'state' => {'name' => 'running' }}
            client.wait_until(:instance_stopped) do |w|
              expect(w).not_to receive(:sleep)
              w.before_attempt do |attempts|
                throw :failure, 'custom-message'
              end
            end
          }.to raise_error(Errors::WaiterFailed, 'custom-message')
        end

        it 'catches :failure from before wait callbacks' do
          instances << { state: { name: 'running' }}
          client.stub_responses(:describe_instances, data)
          expect {
            instances << { 'state' => {'name' => 'running' }}
            client.wait_until(:instance_stopped) do |w|
              expect(w).not_to receive(:sleep)
              w.before_wait do |attempts, response|
                throw :failure, 'custom-message'
              end
            end
          }.to raise_error(Errors::WaiterFailed, 'custom-message')
        end

        it 'catches :success from before attempt callbacks' do
          expect(client).not_to receive(:build_request)
          client.wait_until(:instance_stopped) do |w|
            w.before_attempt do |attempt|
              throw :success
            end
          end
        end

        it 'catches :success from before wait callbacks' do
          expect(client).not_to receive(:build_request)
          client.wait_until(:instance_stopped) do |w|
            w.before_attempt do |attempt|
              throw :success
            end
          end
        end

        describe 'matching on expectd errors' do

          let(:client) { S3::Client.new(stub_responses: true) }

          it 'succeedes when an expected error is encountered' do
            attempts = 0
            client.handle do |context|
              attempts += 1
              context.http_response.status_code = 404
              Seahorse::Client::Response.new(context:context)
            end
            client.wait_until(:bucket_not_exists, bucket:'aws-sdk')
            expect(attempts).to be(1)
          end

          it 'fails when an expected error is not encountered' do
            expect {
              client.wait_until(:bucket_not_exists, bucket:'aws-sdk') do |w|
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
              client.wait_until(:instance_stopped)
            }.to raise_error('runtime-error')
          end

          it 'raises response errors' do
            client.stub_responses(:describe_instances, RuntimeError.new('oops'))
            expect {
              client.wait_until(:instance_stopped)
            }.to raise_error(Errors::WaiterFailed, /oops/)
          end

          it 'can match an error code' do
            client = DynamoDB::Client.new(stub_responses:true)
            attempts = 0
            client.handle do |context|
              attempts += 1
              resp = Seahorse::Client::Response.new(context:context)
              resp.error = DynamoDB::Errors::ResourceNotFoundException.new(context, 'msg')
              resp
            end
            client.wait_until(:table_not_exists, table_name:'foo')
            expect(attempts).to be(1)
          end

        end
      end
    end
  end
end
