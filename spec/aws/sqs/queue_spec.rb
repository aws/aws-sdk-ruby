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

    describe Queue do

      let(:config) { stub_config }

      let(:client) { config.sqs_client }

      let(:url) { "http://queue-url.sqs.us-east-1.amazonaws.com" }

      let(:queue) do
        described_class.new(url, :config => config)
      end

      let(:default_wait_time) do
        described_class.const_get(:DEFAULT_WAIT_TIME_SECONDS)
      end

      it_should_behave_like "an SQS model object", 'http://url.com', {}

      it_should_behave_like "a resource object" do
        let(:identifiers) { [url] }
        let(:constructor_args) { identifiers }
        let(:comparison_instances) { [described_class.new("url2")] }
      end

      context '#initialize' do

        it 'should store the url' do
          queue.url.should == url
        end

      end

      context '#delete' do

        it 'returns nil' do
          queue.delete.should == nil
        end

        it 'should call delete_queue' do
          client.should_receive(:delete_queue).with(:queue_url => url)
          queue.delete
        end

      end

      context '#send_message' do

        let(:resp) { client.stub_for(:send_message) }

        before(:each) do
          resp.data[:message_id] = 'abc123'
          resp.data[:md5_of_message_body] = '123abc'
          client.stub(:send_message).and_return(resp)
        end

        it 'should call send_message on the client' do
          client.should_receive(:send_message).
            with(:queue_url => url,
                 :message_body => "HELLO")
          queue.send_message("HELLO")
        end

        it 'passes along the delay option' do
          client.should_receive(:send_message).with(
            :queue_url => url,
            :message_body => "HELLO",
            :delay_seconds => 400)
          queue.send_message('HELLO', :delay_seconds => 400)
        end

        it 'should return an object with the message ID from the response' do
          queue.send_message("HELLO").message_id.should == "abc123"
        end

        it 'should return an object with the md5 digest from the response' do
          queue.send_message("HELLO").md5.should == "123abc"
        end

      end

      context 'receiving messages' do

        let(:resp) { client.new_stub_for(:receive_message) }

        let(:response_message) {{
          :message_id => "ID",
          :md5_of_body => "MD5",
          :body => "HELLO",
          :receipt_handle => "HANDLE",
          :attributes => attributes,
        }}

        let(:attributes) {{
          "SenderId" => "123456789012",
          "SentTimestamp" => Time.now.to_i.to_s,
          "ApproximateReceivedCount" => "12",
          "ApproximateFirstReceiveTimestamp" => (Time.now + 12).to_i.to_s,
        }}

        before(:each) do
          resp.data[:messages] = [response_message]
          client.stub(:receive_message).and_return(resp)
        end

        context '#receive_message' do

          it 'should call receive_message on the client' do
            client.should_receive(:receive_message).
              with(:queue_url => url).
              and_return(resp)
            queue.receive_message
          end

          it 'should pass :visibility_timeout' do
            client.should_receive(:receive_message).
              with(:queue_url => url,
                   :visibility_timeout => 12).
              and_return(resp)
            queue.receive_message(:visibility_timeout => 12)
          end

          it 'should pass :attributes as :attribute_names' do
            client.should_receive(:receive_message).
              with(:queue_url => url,
                   :attribute_names => ["foo", "bar"]).
              and_return(resp)
            queue.receive_message(:attributes => ["foo", "bar"])
          end

          it 'should not pass :wait_time_seconds if not set' do
            client.should_receive(:receive_message).
              with(:queue_url => url).
              and_return(resp)
            queue.receive_message
          end

          it 'should not pass :wait_time_seconds if nil' do
            client.should_receive(:receive_message).
              with(:queue_url => url).
              and_return(resp)
            queue.receive_message(:wait_time_seconds => nil)
          end

          it 'should pass :wait_time_seconds if set' do
            client.should_receive(:receive_message).
              with(:queue_url => url,
                   :wait_time_seconds => 3).
              and_return(resp)
            queue.receive_message(:wait_time_seconds => 3)
          end

          context 'attribute names' do

            it 'should inflect symbol names' do
              client.should_receive(:receive_message).
                with(:queue_url => url,
                     :attribute_names => ["FooBar"]).
              and_return(resp)
              queue.receive_message(:attributes => [:foo_bar])
            end

            it 'should interpret aliases' do
              client.should_receive(:receive_message).
                with(:queue_url => url,
                     :attribute_names => ["SentTimestamp",
                                          "ApproximateReceiveCount",
                                          "ApproximateFirstReceiveTimestamp"]).
              and_return(resp)
              queue.receive_message(:attributes => [:sent_at,
                                                    :receive_count,
                                                    :first_received_at])
            end

          end

          it 'should return a message object with the response data' do
            msg = queue.receive_message
            msg.should be_a(ReceivedMessage)
            msg.queue.should be(queue)
            msg.config.should be(config)
            msg.id.should == "ID"
            msg.md5.should == "MD5"
            msg.body.should == "HELLO"
            msg.handle.should == "HANDLE"
          end

          it 'should pass the attribute data to the message constructor' do
            ReceivedMessage.should_receive(:new).
              with(anything, anything, anything,
                   hash_including(:attributes => attributes))
            queue.receive_message
          end

          it 'should pass :limit as :max_number_of_messages' do
            client.should_receive(:receive_message).
              with(:queue_url => url,
                   :max_number_of_messages => 10).
              and_return(resp)
            queue.receive_message(:limit => 10)
          end

          it 'should return an array of message objects if :limit is passed' do
            resp.data[:messages] = [
              {
                :message_id => "ID1",
                :md5_of_body => "MD5",
                :body => "HELLO",
                :receipt_handle => "HANDLE",
                :attributes => attributes,
              }, {
                :message_id => "ID2",
                :md5_of_body => "MD5",
                :body => "HELLO",
                :receipt_handle => "HANDLE",
                :attributes => attributes,
              }
            ]
            messages = queue.receive_message(:limit => 10)
            messages.should be_an(Array)
            messages.each { |msg| msg.should be_a(ReceivedMessage) }
            messages.map(&:id).should == ["ID1", "ID2"]
          end

          it 'should return nil if no messages are returned' do
            resp.data[:messages] = []
            queue.receive_message.should be_nil
          end

          context 'block form' do

            it 'should yield the message' do
              obj = double("object")
              obj.should_receive(:call).with do |msg|
                msg.should be_a(ReceivedMessage)
              end
              queue.receive_message do |msg|
                obj.call(msg)
              end
            end

            it 'should not call the block if no message is returned' do
              obj = double("object")
              obj.should_not_receive(:call)
              resp.data[:messages] = []
              queue.receive_message do |msg|
                obj.call(msg)
              end
            end

            it 'should return the return value of the block' do
              queue.receive_message { |msg| 3 }.should == 3
            end

            it 'should automatically delete the message on normal exit' do
              client.should_receive(:receive_message).
                with(:queue_url => url).
                and_return(resp)
              client.should_receive(:delete_message).
                with(:queue_url => url,
                     :receipt_handle => "HANDLE")
              queue.receive_message { |msg| }
            end

            it 'should not delete the message on an exceptional exit' do
              client.should_receive(:receive_message).
                with(:queue_url => url).
                and_return(resp)
              client.should_not_receive(:delete_message)
              lambda do
                queue.receive_message { |msg| raise "FOO" }
              end.should raise_error("FOO")
            end

          end

        end

        context '#poll' do

          before(:each) do
            client.stub(:delete_message)
            Kernel.stub(:sleep)
          end

          def receive_one(*args)
            catch(:got_msg) do
              queue.poll(*args) { |msg| throw :got_msg }
            end
          end

          it 'should call receive_message on the client' do
            client.should_receive(:receive_message).
              with(:queue_url => url,
                   :wait_time_seconds => default_wait_time).
              and_return(resp)
            receive_one
          end

          it 'should pass :visibility_timeout' do
            client.should_receive(:receive_message).
              with(:queue_url => url,
                   :wait_time_seconds => default_wait_time,
                   :visibility_timeout => 12).
              and_return(resp)
            receive_one(:visibility_timeout => 12)
          end

          it 'should pass :batch_size as :max_number_of_messages' do
            client.should_receive(:receive_message).
              with(:queue_url => url,
                   :wait_time_seconds => default_wait_time,
                   :max_number_of_messages => 10).
              and_return(resp)
            receive_one(:batch_size => 10)
          end

          it 'should default :wait_time_seconds to 15' do
            client.should_receive(:receive_message).
              with(:queue_url => url,
                   :wait_time_seconds => default_wait_time).
              and_return(resp)
            receive_one
          end

          it 'should not pass :wait_time_seconds if set to nil' do
            client.should_receive(:receive_message).
              with(:queue_url => url).
              and_return(resp)
            receive_one(:wait_time_seconds => nil)
          end

          it 'yields each message' do
            resp.data[:messages] = [
              {
                :message_id => "ID1",
                :md5_of_body => "MD5",
                :body => "HELLO",
                :receipt_handle => "HANDLE",
                :attributes => attributes,
              }, {
                :message_id => "ID2",
                :md5_of_body => "MD5",
                :body => "HELLO",
                :receipt_handle => "HANDLE",
                :attributes => attributes,
              }
            ]
            catch(:second_request) do
              first = true
              client.stub(:receive_message) do |opts|
                throw :second_request unless first
                first = false
                resp
              end
              obj = double("object")
              obj.should_receive(:call).with("ID1")
              obj.should_receive(:call).with("ID2")
              queue.poll do |msg|
                msg.should be_a(ReceivedMessage)
                obj.call(msg.id)
              end
            end
          end

          it 'calls receive_message repeatedly' do
            count = 0
            client.stub(:receive_message) do |opts|
              count += 1
              throw :third_request if count == 3
              response_message[:message_id] = "ID#{count}"
              resp
            end
            catch(:third_request) do
              queue.poll do |msg|
                msg.should be_a(ReceivedMessage)
                msg.id.should == "ID#{count}"
              end
            end
            count.should == 3
          end

          context ':idle_timeout' do

            let(:response_lists) { [[response_message],
                                    [],
                                    [response_message]] }

            let(:start_time) { Time.now }

            before(:each) do
              client.stub(:receive_message) do |opts|
                resp.data[:messages] = response_lists.shift
                resp
              end
              start_time
              Time.stub(:now).and_return(start_time)
            end

            it 'should stop polling if the timeout has elapsed since the last message' do
              got_first = false
              queue.poll(:idle_timeout => 10) do |msg|
                fail("got to the second item") if got_first
                got_first = true
                Time.stub(:now).and_return(start_time + 11)
              end
            end

            it 'should not stop if another item is received before the timeout' do
              got_first = false
              catch(:done) do
                queue.poll(:idle_timeout => 10) do |msg|
                  throw :done if got_first
                  got_first = true
                  Time.stub(:now).and_return(start_time + 9)
                end
              end
            end

            it 'should not stop as long as items are being received' do
              response_lists[1,1] = []
              got_first = false
              catch(:done) do
                queue.poll(:idle_timeout => 10) do |msg|
                  throw :done if got_first
                  got_first = true
                  Time.stub(:now).and_return(start_time + 11)
                end
              end
            end

          end

          context ':initial_timeout' do

            let(:response_lists) { [[],
                                    [response_message],
                                    [],
                                    [response_message]] }

            let(:start_time) { Time.now }

            let(:response_times) { [start_time + 10,
                                    start_time + 15,
                                    start_time + 50,
                                    start_time + 55] }

            before(:each) do
              start_time
              Time.stub(:now).and_return(start_time)
              client.stub(:receive_message) do |opts|
                Time.stub(:now).and_return(response_times.shift)
                resp.data[:messages] = response_lists.shift
                resp
              end
            end

            it 'should stop polling if the timeout expires before the first message' do
              queue.poll(:initial_timeout => 9) do |msg|
                fail("got a message after the initial timeout")
              end
            end

            it 'should override the idle timeout if smaller' do
              queue.poll(:initial_timeout => 9,
                         :idle_timeout => 11) do |msg|
                fail("got a message after the initial timeout")
              end
            end

            it 'should default to the idle timeout' do
              queue.poll(:idle_timeout => 9) do |msg|
                fail("got a message after the initial timeout")
              end
            end

            it 'should not prevent the first message within the timeout' do
              got_message = false
              catch(:done) do
                queue.poll(:initial_timeout => 11) do |msg|
                  got_message = true
                  throw :done
                end
              end
              got_message.should be_true
            end

            it 'should override the idle timeout if larger' do
              got_message = false
              catch(:done) do
                queue.poll(:initial_timeout => 11,
                           :idle_timeout => 9) do |msg|
                  got_message = true
                  throw :done
                end
              end
              got_message.should be_true
            end

            it 'should not prevent the first message if false' do
              got_message = false
              catch(:done) do
                queue.poll(:initial_timeout => false,
                           :idle_timeout => 9) do |msg|
                  got_message = true
                  throw :done
                end
              end
              got_message.should be_true
            end

            it 'should not apply after the first message' do
              got_first = false
              got_second = false
              catch(:done) do
                queue.poll(:initial_timeout => 11) do |msg|
                  if got_first
                    got_second = true
                    throw :done
                  else
                    got_first = true
                  end
                end
              end
              got_second.should be_true
            end

          end

        end

      end

      context '#exists?' do

        it 'should call get_queue_attributes' do
          client.should_receive(:get_queue_attributes).
            with(:queue_url => url,
                 :attribute_names => ["QueueArn"])
          queue.exists?
        end

        it 'should return false if NonExistentQueue is raised' do
          client.stub(:get_queue_attributes).
            and_raise(SQS::Errors::NonExistentQueue)
          queue.exists?.should be_false
        end

        it 'should return false if InvalidAddress is raised' do
          client.stub(:get_queue_attributes).
            and_raise(SQS::Errors::InvalidAddress)
          queue.exists?.should be_false
        end

        it 'should return true if no exception is raised' do
          queue.exists?.should be_true
        end

        it 'should not rescue other exceptions' do
          client.stub(:get_queue_attributes).
            and_raise(SQS::Errors::InvalidParameterValue)
          lambda {
            queue.exists?
          }.should raise_error(SQS::Errors::InvalidParameterValue)
        end

      end

      shared_examples_for "sqs queue attribute accessor" do

        let(:resp) { client.stub_for(:get_queue_attributes) }

        before(:each) do
          resp.data[:attributes] = { response_attribute => response_value }
          resp.data[:attributes]["QueueArn"] ||= "abc123"
          client.stub(:get_queue_attributes).and_return(resp)
        end

        let(:translated_value) { response_value }

        let(:response_attribute) { request_attribute }

        it 'should call get_queue_attributes' do
          client.should_receive(:get_queue_attributes).
            with(:queue_url => url,
                 :attribute_names => [request_attribute,
                                      "QueueArn"].uniq).
            and_return(resp)
          queue.send(attribute)
        end

        it 'should return the correct value' do
          queue.send(attribute).should == translated_value
        end

        it 'should populate the arn' do
          client.should_receive(:get_queue_attributes).once.
            and_return(resp)
          queue.send(attribute)
          queue.arn
        end

      end

      context '#approximate_number_of_messages' do
        it_should_behave_like "sqs queue attribute accessor" do
          let(:attribute) { :approximate_number_of_messages }
          let(:request_attribute) { "ApproximateNumberOfMessages" }
          let(:response_value) { "12" }
          let(:translated_value) { 12 }
        end
      end

      context '#approximate_number_of_messages_not_visible' do
        it_should_behave_like "sqs queue attribute accessor" do
          let(:attribute) { :approximate_number_of_messages_not_visible }
          let(:request_attribute) { "ApproximateNumberOfMessagesNotVisible" }
          let(:response_value) { "12" }
          let(:translated_value) { 12 }
        end
      end

      context '#visibility_timeout' do
        it_should_behave_like "sqs queue attribute accessor" do
          let(:attribute) { :visibility_timeout }
          let(:request_attribute) { "VisibilityTimeout" }
          let(:response_value) { "12" }
          let(:translated_value) { 12 }
        end
      end

      context '#visibility_timeout=' do

        it 'should call set_queue_attributes' do
          client.should_receive(:set_queue_attributes).with(
            :queue_url => url,
            :attributes => { "VisibilityTimeout" => "12" })
          queue.visibility_timeout = 12
        end

        it 'returns nil' do
          (queue.visibility_timeout = 12).should == 12
        end

      end

      context '#created_timestamp' do
        it_should_behave_like "sqs queue attribute accessor" do
          let(:attribute) { :created_timestamp }
          let(:request_attribute) { "CreatedTimestamp" }
          let(:response_value) { Time.parse("2011-06-06 15:58:23 -0700").utc.to_i.to_s }
          let(:translated_value) { Time.parse("2011-06-06 15:58:23 -0700") }
        end
      end

      context '#last_modified_timestamp' do
        it_should_behave_like "sqs queue attribute accessor" do
          let(:attribute) { :last_modified_timestamp }
          let(:request_attribute) { "LastModifiedTimestamp" }
          let(:response_value) { Time.parse("2011-06-06 15:58:23 -0700").utc.to_i.to_s }
          let(:translated_value) { Time.parse("2011-06-06 15:58:23 -0700") }
        end
      end

      context '#maximum_message_size' do
        it_should_behave_like "sqs queue attribute accessor" do
          let(:attribute) { :maximum_message_size }
          let(:request_attribute) { "MaximumMessageSize" }
          let(:response_value) { "12" }
          let(:translated_value) { 12 }
        end
      end

      context '#maximum_message_size=' do

        it 'returns the size argument' do
          (queue.maximum_message_size = 12).should == 12
        end

        it 'should call set_queue_attributes' do
          client.should_receive(:set_queue_attributes).with(
            :queue_url => url,
            :attributes => { "MaximumMessageSize" => "12" })
          queue.maximum_message_size = 12
        end

      end

      context '#message_retention_period' do
        it_should_behave_like "sqs queue attribute accessor" do
          let(:attribute) { :message_retention_period }
          let(:request_attribute) { "MessageRetentionPeriod" }
          let(:response_value) { "12" }
          let(:translated_value) { 12 }
        end
      end

      context '#message_retention_period=' do

        it 'should call set_queue_attributes' do
          client.should_receive(:set_queue_attributes).with(
            :queue_url => url,
            :attributes => { "MessageRetentionPeriod" => "12" })
          queue.message_retention_period = 12
        end

        it 'returns the period argument' do
          (queue.message_retention_period = 12).should == 12
        end

      end

      context '#wait_time_seconds' do

        it_should_behave_like "sqs queue attribute accessor" do
          let(:attribute) { :wait_time_seconds }
          let(:request_attribute) { "ReceiveMessageWaitTimeSeconds" }
          let(:response_value) { "12" }
          let(:translated_value) { 12 }
        end

      end

      context '#wait_time_seconds=' do

        it 'should call set_queue_attributes' do
          client.should_receive(:set_queue_attributes).with(
            :queue_url => url,
            :attributes => { "ReceiveMessageWaitTimeSeconds" => "12" })
          queue.wait_time_seconds = 12
        end

        it 'returns the period argument' do
          (queue.wait_time_seconds = 12).should == 12
        end

      end

      context '#arn' do
        it_should_behave_like "sqs queue attribute accessor" do
          let(:attribute) { :arn }
          let(:request_attribute) { "QueueArn" }
          let(:response_value) { "abc123" }
        end
      end

      context '#policy' do

        it_should_behave_like "sqs queue attribute accessor" do

          let(:policy) {
            p = SQS::Policy.new
            p.allow(:actions => :any, :resource => queue, :principles => :any)
            p
          }

          let(:attribute) { :policy }
          let(:request_attribute) { "Policy" }
          let(:response_value) { policy.to_json }
          let(:translated_value) { SQS::Policy.from_json(policy.to_json) }

        end

      end

      context '#policy=' do

        it 'should call set queue attribute' do

          policy = double('policy', :to_json => '{}')

          client.should_receive(:set_queue_attributes).
            with(hash_including(:attributes => { 'Policy' => policy.to_json }))

          queue.policy = policy

        end

        it 'passes policy strings unmodified' do

          client.should_receive(:set_queue_attributes).
            with(hash_including(:attributes => { 'Policy' => '{}' }))

          queue.policy = '{}'

        end

        it 'deletes a policy by passing an empty string' do

          client.should_receive(:set_queue_attributes).
            with(hash_including(:attributes => { 'Policy' => '' }))

          queue.policy = nil

        end

      end

      context '#batch_delete' do

        let(:response) { client.stub_for(:delete_message_batch) }

        before(:each) do
          client.stub(:delete_message_batch).and_return(response)
        end

        it 'calls #delete_message_batch on the client' do
          client.should_receive(:delete_message_batch).with(
            :queue_url => queue.url,
            :entries => [
              { :id => '0', :receipt_handle => 'handle1' },
              { :id => '1', :receipt_handle => 'handle2' },
            ]).and_return(response)
          queue.batch_delete('handle1', 'handle2')
        end

        it 'accepts an array of values' do
          client.should_receive(:delete_message_batch).with(
            :queue_url => queue.url,
            :entries => [
              { :id => '0', :receipt_handle => 'handle1' },
              { :id => '1', :receipt_handle => 'handle2' },
            ]).and_return(response)
          queue.batch_delete(['handle1', 'handle2'])
        end

        it 'returns nil' do
          queue.batch_delete('handle1', 'handle2').should == nil
        end

        it 'accepts ReceivedMesssage objects' do

          client.should_receive(:delete_message_batch).with(
            :queue_url => queue.url,
            :entries => [
              { :id => '0', :receipt_handle => 'handle1' },
              { :id => '1', :receipt_handle => 'handle2' },
            ]).and_return(response)

          m1 = SQS::ReceivedMessage.new('q', 'id1', 'handle1')
          m2 = SQS::ReceivedMessage.new('q', 'id2', 'handle2')
          queue.batch_delete(m1, m2)

        end

        it 'raises an error if some of the messages in the batch fail' do

          failed = []
          failed << {
            :code => 'error-code-1',
            :message => 'error-message-1',
            :sender_fault => true,
            :id => '0',
          }
          failed << {
            :code => 'error-code-2',
            :message => 'error-message-2',
            :sender_fault => false,
            :id => '2',
          }
          response.data[:failed] = failed

          raised = false
          begin
            m1 = SQS::ReceivedMessage.new('q', 'id1', 'handle1')
            m2 = SQS::ReceivedMessage.new('q', 'id2', 'handle2')
            queue.batch_delete(m1, m2, 'handle3', 'handle4')
          rescue SQS::Errors::BatchDeleteError => e
            raised = true
            e.failures.should == [
              {
                :error_code => 'error-code-1',
                :error_message => 'error-message-1',
                :sender_fault => true,
                :receipt_handle => 'handle1',
              },
              {
                :error_code => 'error-code-2',
                :error_message => 'error-message-2',
                :sender_fault => false,
                :receipt_handle => 'handle3',
              }
            ]
          end

          raised.should == true

        end

      end

      context '#batch_change_visibility' do

        let(:response) { client.stub_for(:change_message_visibility_batch) }

        before(:each) do
          client.stub(:change_message_visibility_batch).and_return(response)
        end

        it 'calls #change_message_visibility_batch on the client' do

          client.should_receive(:change_message_visibility_batch).with(
            :queue_url => queue.url,
            :entries => [
              { :id => '0', :receipt_handle => 'h1', :visibility_timeout => 5 },
              { :id => '1', :receipt_handle => 'h2', :visibility_timeout => 5 },
            ]
          ).and_return(response)

          queue.batch_change_visibility(5, 'h1', 'h2')

        end

        it 'accepts an array of values' do

          client.should_receive(:change_message_visibility_batch).with(
            :queue_url => queue.url,
            :entries => [
              { :id => '0', :receipt_handle => 'h1', :visibility_timeout => 5 },
              { :id => '1', :receipt_handle => 'h2', :visibility_timeout => 5 },
            ]
          ).and_return(response)

          queue.batch_change_visibility(5, ['h1', 'h2'])

        end

        it 'accepts ReceivedMesssage objects' do

          client.should_receive(:change_message_visibility_batch).with(
            :queue_url => queue.url,
            :entries => [
              { :id => '0', :receipt_handle => 'h1', :visibility_timeout => 5 },
              { :id => '1', :receipt_handle => 'h2', :visibility_timeout => 5 },
            ]
          ).and_return(response)

          m1 = SQS::ReceivedMessage.new('q', 'id1', 'h1')
          m2 = SQS::ReceivedMessage.new('q', 'id2', 'h2')
          queue.batch_change_visibility(5, m1, m2)

        end

        it 'accepts a list of hashes' do

          client.should_receive(:change_message_visibility_batch).with(
            :queue_url => queue.url,
            :entries => [
              { :id => '0', :receipt_handle => 'h1', :visibility_timeout => 5 },
              { :id => '1', :receipt_handle => 'h2', :visibility_timeout => 10 },
            ]
          ).and_return(response)

          m2 = SQS::ReceivedMessage.new('q', 'id2', 'h2')

          messages = []
          messages << { :message => 'h1', :visibility_timeout => 5 }
          messages << { :message => m2, :visibility_timeout => 10 }

          queue.batch_change_visibility(*messages)

        end

        it 'returns nil' do
          queue.batch_change_visibility(5, ['h1', 'h2']).should == nil
        end

        it 'raises an error if any of the messages in the batch fail' do

          failed = []
          failed << {
            :code => 'error-code-1',
            :message => 'error-message-1',
            :sender_fault => true,
            :id => '0',
          }
          failed << {
            :code => 'error-code-2',
            :message => 'error-message-2',
            :sender_fault => false,
            :id => '2',
          }
          response.data[:failed] = failed

          raised = false
          begin
            m1 = SQS::ReceivedMessage.new('q', 'id1', 'h1')
            m2 = SQS::ReceivedMessage.new('q', 'id2', 'h2')
            queue.batch_change_visibility(5, m1, m2, 'h3', 'h4')
          rescue SQS::Errors::BatchChangeVisibilityError => e
            raised = true
            e.failures.should == [
              {
                :error_code => 'error-code-1',
                :error_message => 'error-message-1',
                :sender_fault => true,
                :receipt_handle => 'h1',
              },
              {
                :error_code => 'error-code-2',
                :error_message => 'error-message-2',
                :sender_fault => false,
                :receipt_handle => 'h3',
              }
            ]
          end

          raised.should == true

        end

        context '#batch_send' do

          let(:response) { client.stub_for(:send_message_batch) }

          before(:each) do
            client.stub(:send_message_batch).and_return(response)
          end

          it 'calls #send_message_batch on the client' do
            client.should_receive(:send_message_batch).with(
              :queue_url => queue.url,
              :entries => [
                { :id => '0', :message_body => 'msg1' },
                { :id => '1', :message_body => 'msg2' },
              ]
            ).and_return(response)
            queue.batch_send 'msg1', 'msg2'
          end

          it 'accepts an array of messages' do
            client.should_receive(:send_message_batch).with(
              :queue_url => queue.url,
              :entries => [
                { :id => '0', :message_body => 'msg1' },
                { :id => '1', :message_body => 'msg2' },
              ]
            ).and_return(response)
            queue.batch_send ['msg1', 'msg2']
          end

          it 'returns an array of sent messages' do

            sent = []
            sent << {
              :message_id => 'msg-1-id',
              :md5_of_message_body => 'msg-1-md5',
            }
            sent << {
              :message_id => 'msg-2-id',
              :md5_of_message_body => 'msg-2-md5',
            }
            response.data[:successful] = sent

            sent = queue.batch_send 'msg-1', 'msg-12'

            sent[0].should be_a(Queue::SentMessage)
            sent[0].message_id.should == 'msg-1-id'
            sent[0].md5.should == 'msg-1-md5'
            sent[1].should be_a(Queue::SentMessage)
            sent[1].message_id.should == 'msg-2-id'
            sent[1].md5.should == 'msg-2-md5'

          end

          it 'raises a BatchSendError if any of the messages failed' do

            sent = []
            sent << {
              :message_id => 'msg-1-id',
              :md5_of_message_body => 'msg-1-md5',
            }
            sent << {
              :message_id => 'msg-2-id',
              :md5_of_message_body => 'msg-2-md5',
            }

            failed = []
            failed << {
              :code => 'error-code-1',
              :message => 'error-message-1',
              :sender_fault => true,
              :id => '0',
            }
            failed << {
              :code => 'error-code-2',
              :message => 'error-message-2',
              :sender_fault => false,
              :id => '2',
            }
            response.data[:successful] = sent
            response.data[:failed] = failed

            begin
              queue.batch_send 'msg-1', 'msg-2', 'msg-3', 'msg-4'
            rescue Errors::BatchSendError => e
              sent = e.sent
              failed = e.failures
            end

            sent[0].should be_a(Queue::SentMessage)
            sent[0].message_id.should == 'msg-1-id'
            sent[0].md5.should == 'msg-1-md5'
            sent[1].should be_a(Queue::SentMessage)
            sent[1].message_id.should == 'msg-2-id'
            sent[1].md5.should == 'msg-2-md5'

            failed.should == [{
              :error_code => "error-code-1",
              :error_message => "error-message-1",
              :sender_fault => true
            }, {
              :error_code => "error-code-2",
              :error_message => "error-message-2",
              :sender_fault => false
            }]

          end

        end

      end

    end
  end
end
