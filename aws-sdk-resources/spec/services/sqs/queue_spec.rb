require 'spec_helper'

module Aws
  module SQS
    describe Queue do

      let(:client) { SQS::Client.new(stub_responses: true) }

      let(:queue) {
        Queue.new(
          url: 'http://queue-name.sqs.us-east-1.amazonaws.com',
          client: client
        )
      }

      let(:attributes) {{}}

      describe 'attributes' do

        # This test uses the API model to assert that every queue attribute
        # defined in the enum is represented as a getter. If additional
        # attributes are added to the enum, but not represented in the Queue
        # class, this should generate a failure.
        Client.api.shape_map.shape('shape' => 'QueueAttributeName').enum.each do |attr|
          it "responds to ##{Seahorse::Util.underscore(attr)}" do
            expect(queue).to respond_to(Seahorse::Util.underscore(attr))
          end

        end

        describe '#policy' do

          it 'returns the "Policy" attribute as a string' do
            client.stub_responses(:get_queue_attributes, attributes: {
              'Policy' => 'policy-string'
            })
            expect(queue.policy).to eq('policy-string')
          end

        end

        describe '#visibility_timeout' do

          it 'returns the "VisibilityTimeout" attribute as an integer' do
            client.stub_responses(:get_queue_attributes, attributes: {
              'VisibilityTimeout' => '12345'
            })
            expect(queue.visibility_timeout).to eq(12345)
          end

        end

        describe '#maximum_message_size' do

          it 'returns the "MaximumMessageSize" attribute as an integer' do
            client.stub_responses(:get_queue_attributes, attributes: {
              'MaximumMessageSize' => '12345'
            })
            expect(queue.maximum_message_size).to eq(12345)
          end

        end

        describe "#message_retention_period" do

          it 'returns the "MessageRetentionPeriod" attribute as an integer' do
            client.stub_responses(:get_queue_attributes, attributes: {
              'MessageRetentionPeriod' => '12345'
            })
            expect(queue.message_retention_period).to eq(12345)
          end

        end

        describe "#approximate_number_of_messages" do

          it 'returns the "ApproximateNumberOfMessages" attribute as an integer' do
            client.stub_responses(:get_queue_attributes, attributes: {
              'ApproximateNumberOfMessages' => '12345'
            })
            expect(queue.approximate_number_of_messages).to eq(12345)
          end

        end

        describe "#approximate_number_of_messages_not_visible" do

          it 'returns the "ApproximateNumberOfMessagesNotVisible" attribute as an integer' do
            client.stub_responses(:get_queue_attributes, attributes: {
              'ApproximateNumberOfMessagesNotVisible' => '12345'
            })
            expect(queue.approximate_number_of_messages_not_visible).to eq(12345)
          end

        end

        describe "#created_timestamp" do

          it 'returns the "CreatedTimestamp" attribute as a Time object' do
            client.stub_responses(:get_queue_attributes, attributes: {
              'CreatedTimestamp' => '123456789'
            })
            expect(queue.created_timestamp).to eq(Time.at(123456789))
          end

        end

        describe "LastModifiedTimestamp" do

          it 'returns the "#last_modified_timestamp" attribute as a Time object' do
            client.stub_responses(:get_queue_attributes, attributes: {
              'LastModifiedTimestamp' => '123456789'
            })
            expect(queue.last_modified_timestamp).to eq(Time.at(123456789))
          end

        end

        describe '#arn' do

          before(:each) do
            client.stub_responses(:get_queue_attributes, attributes: {
              'QueueArn' => 'queue-arn'
            })
          end

          it 'returns the "QueueArn" attribute as a string' do
            expect(queue.arn).to eq('queue-arn')
          end

        end

        describe "#approximate_number_of_messages_delayed" do

          it 'returns the "ApproximateNumberOfMessagesDelayed" attribute as an integer' do
            client.stub_responses(:get_queue_attributes, attributes: {
              'ApproximateNumberOfMessagesDelayed' => '12345'
            })
            expect(queue.approximate_number_of_messages_delayed).to eq(12345)
          end

        end

        describe "#delay_seconds" do

          it 'returns the "DelaySeconds" attribute as an integer' do
            client.stub_responses(:get_queue_attributes, attributes: {
              'DelaySeconds' => '12345'
            })
            expect(queue.delay_seconds).to eq(12345)
          end

        end

        describe "#receive_message_wait_time_seconds" do

          it 'returns the "ReceiveMessageWaitTimeSeconds" attribute as an integer' do
            client.stub_responses(:get_queue_attributes, attributes: {
              'ReceiveMessageWaitTimeSeconds' => '12345'
            })
            expect(queue.receive_message_wait_time_seconds).to eq(12345)
          end

        end

        describe "#redrive_policy" do

          it 'returns the "RedrivePolicy" attribute as a string' do
            client.stub_responses(:get_queue_attributes, attributes: {
              'RedrivePolicy' => 'redrive-policy'
            })
            expect(queue.redrive_policy).to eq('redrive-policy')
          end

        end
      end
    end
  end
end
