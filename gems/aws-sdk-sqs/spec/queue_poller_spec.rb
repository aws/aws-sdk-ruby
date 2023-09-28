# frozen_string_literal: true

require_relative 'spec_helper'

module Aws
  module SQS
    describe QueuePoller do
      let(:queue_url) { 'https://sqs.us-east-1.amazonaws.com/12345/test' }

      let(:client) { Client.new(stub_responses: true) }

      let(:options) { { client: client } }

      let(:poller) { QueuePoller.new(queue_url, options) }

      def sample_message(n = nil)
        suffix = n ? "-#{n}" : ''
        {
          message_id: "id#{suffix}",
          receipt_handle: "rh#{suffix}",
          body: "body#{suffix}"
        }
      end

      describe 'configuration' do
        it 'raises an error on unknown configuration options' do
          expect do
            QueuePoller.new(queue_url, client: client, bad: 'option')
          end.to raise_error(ArgumentError, 'invalid option :bad')
          expect do
            QueuePoller.new(queue_url, client: client).poll(bad: 'option') { |m| }
          end.to raise_error(ArgumentError, 'invalid option :bad')
        end

        it 'is immutable' do
          expect(poller.default_config).to be_frozen
          expect(poller.default_config.request_params).to be_frozen
        end

        it 'has reasonable defaults' do
          expect(poller.queue_url).to eq(queue_url)
          expect(poller.default_config.idle_timeout).to be(nil)
          expect(poller.default_config.skip_delete).to be(false)
          expect(poller.default_config.before_request).to be(nil)
          expect(poller.default_config.request_params)
            .to eq(
              wait_time_seconds: 20,
              max_number_of_messages: 1,
              visibility_timeout: nil,
              attribute_names: ['All'],
              message_attribute_names: ['All']
            )
        end

        it 'accepts configuration options to the constructor' do
          client = double('client')
          callback = double('callback')
          poller = QueuePoller.new(
            queue_url,
            {
              client: client,
              idle_timeout: 60,
              skip_delete: true,
              before_request: callback,
              wait_time_seconds: 10,
              max_number_of_messages: 10,
              visibility_timeout: 10,
              attribute_names: ['attr-name'],
              message_attribute_names: ['msg-attr-name']
            }
          )
          expect(poller.client).to be(client)
          expect(poller.default_config.idle_timeout).to eq(60)
          expect(poller.default_config.skip_delete).to be(true)
          expect(poller.default_config.before_request).to be(callback)
          expect(poller.default_config.request_params)
            .to eq(
              wait_time_seconds: 10,
              max_number_of_messages: 10,
              visibility_timeout: 10,
              attribute_names: ['attr-name'],
              message_attribute_names: ['msg-attr-name']
            )
        end

        context 'max_number_of_messages validation' do
          subject do
            QueuePoller.new(
              queue_url,
              client: client,
              max_number_of_messages: max_number_of_messages
            )
          end

          let(:max_number_of_messages) { 1 }

          it 'accepts a positive integer' do
            expect(subject.default_config.request_params[:max_number_of_messages]).to eq(1)
          end

          [0, nil, 1.1, '1'].each do |value|
            context "with `max_number_of_messages: #{value.inspect}`" do
              let(:max_number_of_messages) { value }

              it 'raises an error' do
                expect { subject }.to raise_error(ArgumentError, /positive integer/)
              end
            end
          end
        end
      end

      describe '#poll' do
        it 'receives messages in a loop' do
          expect(client).to receive(:receive_message)
            .exactly(2).times
            .with(
              queue_url: queue_url,
              wait_time_seconds: 20,
              max_number_of_messages: 1,
              visibility_timeout: nil,
              attribute_names: ['All'],
              message_attribute_names: ['All']
            )
            .and_return(client.stub_data(:receive_message))
          poller.before_request do |stats|
            throw :stop_polling if stats.request_count >= 2
          end
          poller.poll { |msg| }
        end

        it 'yields received messages to the block' do
          client.stub_responses(:receive_message, [
                                  { messages: [sample_message] },
                                  { messages: [] }
                                ])
          yielded = nil
          poller.poll(idle_timeout: 0) do |msg|
            yielded = msg
          end
          expect(yielded.body).to eq('body')
        end

        it 'yields an array when max messages is greater than 1' do
          client.stub_responses(:receive_message, [
                                  { messages: [
                                    sample_message(1),
                                    sample_message(2)
                                  ] },
                                  { messages: [] }
                                ])
          yielded = nil
          poller.poll(idle_timeout: 0, max_number_of_messages: 2) do |messages|
            yielded = messages
          end
          expect(yielded.map(&:body)).to eq(%w[body-1 body-2])
        end

        it 'does not have duplicated messages and given the '\
           'most recently received duplicated message' do
          message_one = sample_message(1)
          message_dup = message_one.dup
          client.stub_responses(:receive_message, [
                                  { messages: [
                                    message_one,
                                    message_dup
                                  ] },
                                  { messages: [] }
                                ])
          yielded_arr = []
          poller.poll(idle_timeout: 0) do |msg|
            yielded_arr << msg
          end
          puts yielded_arr
          expect(yielded_arr.count).to eq(1)
          expect(yielded_arr[0].receipt_handle).to eq(message_dup[:receipt_handle])
        end

        describe 'message deletion' do
          it 'deletes the message at the end of the block' do
            expect(client).to receive(:delete_message_batch)
              .with(
                queue_url: queue_url,
                entries: [{ id: 'id', receipt_handle: 'rh' }]
              )
            client.stub_responses(:receive_message, [
                                    { messages: [sample_message] },
                                    { messages: [] }
                                  ])
            poller.poll(idle_timeout: 0) { |msg| }
          end

          it 'supports batch deletion' do
            expect(client).to receive(:delete_message_batch)
              .with({
                      queue_url: queue_url,
                      entries: [
                        { id: 'id-1', receipt_handle: 'rh-1' },
                        { id: 'id-2', receipt_handle: 'rh-2' }
                      ]
                    })
            client.stub_responses(:receive_message, [
                                    { messages: [
                                      sample_message(1),
                                      sample_message(2)
                                    ] },
                                    { messages: [] }
                                  ])
            poller.poll(idle_timeout: 0) { |msg| }
          end

          it 'can skip default delete behavior' do
            expect(client).not_to receive(:delete_message_batch)
            client.stub_responses(:receive_message, [
                                    { messages: [sample_message] },
                                    { messages: [] }
                                  ])
            poller.poll(idle_timeout: 0, skip_delete: true) { |msg| }
          end

          it 'skips delete when :skip_delete is thrown' do
            expect(client).not_to receive(:delete_message_batch)
            client.stub_responses(:receive_message, [
                                    { messages: [sample_message] },
                                    { messages: [] }
                                  ])
            poller.poll(idle_timeout: 0) { |_msg| throw :skip_delete }
          end

          it 'provides the ability to manually delete messages' do
            expect(client).to receive(:delete_message).with(
              queue_url: queue_url,
              receipt_handle: 'rh'
            )
            client.stub_responses(:receive_message, [
                                    { messages: [sample_message] },
                                    { messages: [] }
                                  ])
            poller.poll(idle_timeout: 0, skip_delete: true) do |msg|
              poller.delete_message(msg)
            end
          end

          it 'provides the ability to manually delete message batches' do
            expect(client).to receive(:delete_message_batch)
              .with(
                queue_url: queue_url,
                entries: [
                  { id: 'id-1', receipt_handle: 'rh-1' },
                  { id: 'id-2', receipt_handle: 'rh-2' }
                ]
              )
            client.stub_responses(:receive_message, [
                                    { messages: [
                                      sample_message(1),
                                      sample_message(2)
                                    ] },
                                    { messages: [] }
                                  ])
            poller.poll(idle_timeout: 0, max_number_of_messages: 10, skip_delete: true) do |messages|
              poller.delete_messages(messages)
            end
          end
        end

        describe 'visibility timeouts' do
          it 'provides a method to update the visibility timeout of a message' do
            client.stub_responses(:receive_message, [
                                    { messages: [sample_message] },
                                    { messages: [] }
                                  ])
            resp = nil
            poller.poll(idle_timeout: 0) do |msg|
              resp = poller.change_message_visibility_timeout(msg, 60)
            end
            expect(resp.context.operation_name.to_s).to eq('change_message_visibility')
            expect(resp.context.params)
              .to eq(
                queue_url: queue_url,
                receipt_handle: 'rh',
                visibility_timeout: 60
              )
          end
        end

        describe 'stop polling' do
          it 'polls until :stop_polling is thrown from #before_request' do
            expect(client).to receive(:receive_message)
              .exactly(10).times
              .and_return(client.stub_data(:receive_message))
            poller.before_request do |stats|
              throw :stop_polling if stats.request_count == 10
            end
            poller.poll { |msg| }
          end

          it 'polls until :idle_timeout seconds have past without messages' do
            now = Time.now
            allow(Time).to receive(:now).and_return(now)
            one_minute_later = now + 61
            expect(client).to receive(:receive_message)
              .exactly(10).times
              .and_return(client.stub_data(:receive_message))
            poller.before_request do |stats|
              if stats.request_count == 9
                allow(Time).to receive(:now)
                  .and_return(one_minute_later)
              end
            end
            poller.poll(idle_timeout: 60) { |msg| }
          end
        end

        describe 'tracking stats' do
          it 'counts the number of requests made' do
            client.stub_responses(:receive_message, [
                                    { messages: [sample_message] },
                                    { messages: [] },
                                    { messages: [sample_message] },
                                    { messages: [] },
                                    { messages: [sample_message] }
                                  ])
            poller.before_request do |stats|
              throw :stop_polling if stats.received_message_count == 3
            end
            stats = poller.poll { |msg| }
            expect(stats.request_count).to eq(5)
          end

          it 'counts the number of messages yielded in single mode' do
            client.stub_responses(:receive_message, [
                                    { messages: [sample_message] },
                                    { messages: [sample_message] },
                                    { messages: [sample_message] },
                                    { messages: [sample_message] },
                                    { messages: [sample_message] },
                                    { messages: [] }
                                  ])
            stats = poller.poll(idle_timeout: 0) { |msg| }
            expect(stats.received_message_count).to eq(5)
          end

          it 'counts the number of messages yielded in batch mode' do
            client.stub_responses(:receive_message, [
                                    { messages: [
                                      sample_message,
                                      sample_message,
                                      sample_message
                                    ] },
                                    { messages: [
                                      sample_message,
                                      sample_message,
                                      sample_message
                                    ] },
                                    { messages: [] }
                                  ])
            stats = poller.poll(idle_timeout: 0, max_number_of_messages: 3) { |msgs| }
            expect(stats.received_message_count).to eq(6)
          end

          it 'tracks when a message was most recently received' do
            client.stub_responses(:receive_message,
                                  [
                                    { messages: [sample_message] },
                                    { messages: [] }
                                  ])
            stats = poller.poll(idle_timeout: 0) { |msg| }
            expect(stats.last_message_received_at).to be_kind_of(Time)
          end

          it 'has a nil value for last_message_received_at with no messages' do
            stats = poller.poll(idle_timeout: 0) { |msg| }
            expect(stats.last_message_received_at).to be(nil)
          end

          it 'tracks when polling started' do
            stats = poller.poll(idle_timeout: 0) { |msg| }
            expect(stats.polling_started_at).to be_kind_of(Time)
          end

          it 'tracks when polling stops' do
            started = Time.now
            poller.before_request do |stats|
              expect(stats.polling_stopped_at).to be(nil)
            end
            stats = poller.poll(idle_timeout: 0) { |msg| }
            expect(stats.polling_stopped_at > started).to be(true)
          end

          it 'yields a stats object to #poll' do
            client.stub_responses(:receive_message, [
                                    { messages: [sample_message] },
                                    { messages: [sample_message] },
                                    { messages: [sample_message] },
                                    { messages: [] }
                                  ])
            yielded = nil
            poller.poll(idle_timeout: 0) do |_msg, stats|
              yielded = stats
            end
            expect(yielded).to be_kind_of(QueuePoller::PollerStats)
            expect(yielded.request_count).to eq(4)
            expect(yielded.received_message_count).to eq(3)
            expect(yielded.last_message_received_at).to be_kind_of(Time)
          end

          it 'returns a stats object' do
            client.stub_responses(:receive_message, [
                                    { messages: [sample_message] },
                                    { messages: [sample_message] },
                                    { messages: [sample_message] },
                                    { messages: [] }
                                  ])
            stats = poller.poll(idle_timeout: 0) { |msg| }
            expect(stats).to be_kind_of(QueuePoller::PollerStats)
            expect(stats.request_count).to eq(4)
            expect(stats.received_message_count).to eq(3)
            expect(stats.last_message_received_at).to be_kind_of(Time)
          end
        end
      end
    end
  end
end
