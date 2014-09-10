require 'spec_helper'

module Aws
  module Waiters
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
          }.to raise_error(Errors::MaxAttemptsError)
          expect(yielded).to eq(%w(0-attempts-made waited-1-times 1-attempts-made))
        end

        describe 'success and failure' do

          let(:instances) { [] }

          before(:each) do
            instance_states = instances
            client.handle(step: :send) do |context|
              resp = Seahorse::Client::Response.new(context:context)
              resp.data = {
                'reservations' => [
                  { 'instances' => instance_states }
                ]
              }
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
            }.to raise_error(Errors::TerminalConditionError)
          end

          it 'raises a max attempts after the configured attempt count' do
            msg = '4 attempts made without success or failure'
            instances << { 'state' => {'name' => 'running' }}
            expect {
              client.wait_until(:instance_stopped) do |w|
                w.interval = 0
                w.max_attempts = 4
              end
            }.to raise_error(Errors::MaxAttemptsError, msg)
          end

          it 'sleeps between attempts' do
            begin
              instances << { 'state' => {'name' => 'running' }}
              client.wait_until(:instance_stopped) do |w|
                w.interval = 1.234
                w.max_attempts = 4
                expect(w).to receive(:sleep).with(1.234).exactly(3).times
              end
            rescue Errors::MaxAttemptsError
            end
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
              resp.error = StandardError.new('oops')
              resp
            end
            expect {
              client.wait_until(:instance_stopped)
            }.to raise_error(StandardError, 'oops')
          end

        end
      end
    end
  end
end
