require 'spec_helper'

module Aws
  module Waiters
    # functionally testing waiters using the S3 and EC2 waiter configurations
    describe 'Waiters' do

      let(:client_options) {{
        region: 'us-west-2',
        access_key_id:'akid',
        secret_access_key:'akid',
        retry_limit: 0,
      }}

      describe 'unkonwn waiters' do

        let(:client) { S3::Client.new(client_options) }

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
          S3::Client.waiters.waiter_names.each do |waiter_name|
            expect(error.message).to match(waiter_name.inspect)
          end
        end

        it 'defaults new clients with an empty list of waiters' do
          Aws.add_service(:WaiterTestSvc, api: Seahorse::Model::Api.new)
          expect(Aws::WaiterTestSvc::Client.waiters.waiter_names).to eq([])
        end

      end

      describe 'Client#wait_until' do

        let(:client) { EC2::Client.new(client_options) }

        it 'yields the waiter to the client #wait_until block' do
          client.wait_until(:instance_stopped) do |waiter|
            # pulled from apis/EC2.waiters.json, if these defaults
            # change this test case will need to be updated
            expect(waiter.interval).to eq(15)
            expect(waiter.max_attempts).to eq(40)
            expect(waiter).to receive(:wait).with(client, {})
          end
        end

        it 'triggers callbacks before sending and before waiting' do
          client.handle(step: :send) do |context|
            Seahorse::Client::Response.new(context:context)
          end
          yielded = []
          expect {
            client.wait_until(:instance_running) do |w|
              w.interval = 0
              w.max_attempts = 2
              w.before_attempt do |attempts|
                yielded << "#{attempts}-attempts-made"
              end
              w.before_wait do |attempts, resp|
                expect(resp).to be_kind_of(Seahorse::Client::Response)
                yielded << "waited-#{attempts}-times"
              end
            end
          }.to raise_error
          expect(yielded).to eq(%w(0-attempts-made waited-1-times 1-attempts-made))
        end

        describe 'success and failure' do

          let(:instances) { [] }

          before(:each) do
            instance_states = instances
            client.handle(step: :send) do |context|
              resp = Seahorse::Client::Response.new(context:context)
              resp.data = {'reservations' => [{'instances' => instance_states}]}
              resp
            end
          end

          it 'passes additional params to the client request' do
            params = { instance_ids:['i-12345678'] }
            resp = client.wait_until(:instance_running, params)
            expect(resp.context.params).to eq(params)
          end

          it 'returns when successful' do
            instances << { 'state' => {'name' => 'stopped' }}
            expect {
              client.wait_until(:instance_stopped)
            }.not_to raise_error
          end

          it 'raises an error when failed' do
            instances << { 'state' => {'name' => 'terminated' }}
            expect {
              client.wait_until(:instance_stopped)
            }.to raise_error(Errors::WatierFailed)
          end

          it 'raises a max attempts after the configured attempt count' do
            instances << { 'state' => {'name' => 'running' }}
            expect {
              client.wait_until(:instance_stopped) do |w|
                w.interval = 0
                w.max_attempts = 4
              end
            }.to raise_error(Errors::WatierFailed, /4 attempts made/)
          end

          it 'sleeps between attempts' do
            expect {
              instances << { 'state' => {'name' => 'running' }}
              client.wait_until(:instance_stopped) do |w|
                w.interval = 1.234
                w.max_attempts = 4
                expect(w).to receive(:sleep).with(1.234).exactly(3).times
              end
            }.to raise_error(/too many attempts/)
          end

          it 'catches :stop_waiting from callbacks' do
            expect {
              instances << { 'state' => {'name' => 'running' }}
              client.wait_until(:instance_stopped) do |w|
                expect(w).not_to receive(:sleep)
                w.before_wait do |attempts, response|
                  throw :failure, 'custom-message'
                end
              end
            }.to raise_error(Errors::WatierFailed, 'custom-message')
          end

          it 'catches :stop_waiting from callbacks' do
            expect(client).not_to receive(:build_request)
            client.wait_until(:instance_stopped) do |w|
              w.before_attempt do |attempt|
                throw :success
              end
            end
          end

        end

        describe 'matching on expectd errors' do

          let(:client) { S3::Client.new(client_options) }

          before(:each) do
            client.handle(step: :send) do |context|
              Seahorse::Client::Response.new(context:context)
            end
          end

          it 'succeedes when an expected error is encountered' do
            client.handle(step: :send) do |context|
              resp = Seahorse::Client::Response.new(context:context)
              resp.error = S3::Errors::NotFound.new(context, 'not found')
              resp
            end
            client.wait_until(:bucket_not_exists, bucket:'aws-sdk')
          end

          it 'fails when an expected error is not encountered' do
            client.handle(step: :send) do |context|
              Seahorse::Client::Response.new(context:context)
            end
            expect {
              client.wait_until(:bucket_not_exists, bucket:'aws-sdk') do |w|
                w.interval = 0
              end
            }.to raise_error(Errors::WatierFailed)
          end

          it 'does not require an acceptor path to succeede' do
            client.handle(step: :send) do |context|
              Seahorse::Client::Response.new(context:context)
            end
            client.wait_until(:bucket_exists, bucket:'aws-sdk')
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
            client.handle(step: :send) do |context|
              resp = Seahorse::Client::Response.new(context:context)
              resp.error = RuntimeError.new('oops')
              resp
            end
            expect {
              client.wait_until(:instance_stopped)
            }.to raise_error(RuntimeError, 'oops')
          end

        end
      end
    end
  end
end
