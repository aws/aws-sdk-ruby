# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

require 'spec_helper'

module AWS
  class SQS

    describe ReceivedMessage do

      let(:config) { stub_config }

      let(:client) { config.sqs_client }

      let(:url) { "http://queue-url.sqs.us-east-1.amazonaws.com" }

      let(:queue) { Queue.new(url, :config => config) }

      let(:required_args) { [queue, "id", "handle"] }

      let(:message) { described_class.new(*required_args) }

      it_should_behave_like "an SQS model object", Queue.new('http://foo.com'), "id", "handle"

      context '#initialize' do

        it 'should store the queue' do
          message.queue.should be(queue)
        end

        it 'should store the id' do
          message.id.should == "id"
        end

        it 'should store the handle' do
          message.handle.should == "handle"
        end

        it 'should store the body' do
          described_class.new(*(required_args + [{ :body => "HELLO" }])).
            body.should == "HELLO"
        end

        it 'should store the md5 digest' do
          described_class.new(*(required_args + [{ :md5 => "abc123" }])).
            md5.should == "abc123"
        end

        it 'should store the attributes' do
          described_class.new(*(required_args +
                                [{ :attributes => { "foo" => "bar" } }])).
            attributes.should == { "foo" => "bar" }
        end

      end

      context '#as_sns_message' do

        it 'returns a recieved sns message object' do
          msg = message.as_sns_message
          msg.should be_a(ReceivedSNSMessage)
          msg.config.should == message.config
          msg.raw_message.should == message.body
        end
      end

      context '#delete' do

        it 'should call delete_message' do
          client.should_receive(:delete_message).
            with(:queue_url => url,
                 :receipt_handle => "handle")
          message.delete
        end

      end

      context '#visibility_timeout=' do

        it 'returns the timeout argument' do
          (message.visibility_timeout = 12).should == 12
        end

        it 'should call change_message_visibility' do
          client.should_receive(:change_message_visibility).
            with(:queue_url => url,
                 :receipt_handle => "handle",
                 :visibility_timeout => 12)
          message.visibility_timeout = 12
        end

      end

      context 'attribute accessors' do

        before(:each) do
          message.stub(:attributes).
            and_return("SenderId" => "123456789012",
                       "SentTimestamp" => "1307565128000",
                       "ApproximateReceiveCount" => "12",
                       "ApproximateFirstReceiveTimestamp" => "1307565130000")
        end

        context '#sender_id' do

          it 'should return the SenderId attribute' do
            message.sender_id.should == "123456789012"
          end

          it 'should be nil when there is no SenderId attribute' do
            message.attributes.delete("SenderId")
            message.sender_id.should be_nil
          end

        end

        context '#sent_timestamp' do

          it 'should return the SentTimestamp attribute as a Time object' do
            message.sent_timestamp.
              should == Time.parse("2011-06-08 13:32:08 -0700")
          end

          it 'should be nil when there is no SentTimestamp attribute' do
            message.attributes.delete("SentTimestamp")
            message.sent_timestamp.should be_nil
          end

        end

        context '#approximate_receive_count' do

          it 'should return the ApproximateReceiveCount attribute as an integer' do
            message.approximate_receive_count.should == 12
          end

          it 'should be nil when there is no ApproximateReceiveCount attribute' do
            message.attributes.delete("ApproximateReceiveCount")
            message.approximate_receive_count.should be_nil
          end

        end

        context '#approximate_first_receive_timestamp' do

          it 'should return the ApproximateFirstReceiveTimestamp attribute as a Time object' do
            message.approximate_first_receive_timestamp.
              should == Time.parse("2011-06-08 13:32:10 -0700")
          end

          it 'should be nil when there is no ApproximateFirstReceiveTimestamp attribute' do
            message.attributes.delete("ApproximateFirstReceiveTimestamp")
            message.approximate_first_receive_timestamp.should be_nil
          end

        end

      end

    end

  end
end
