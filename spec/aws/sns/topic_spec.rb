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
require 'json'

module AWS
  class SNS
    describe Topic do

      let(:config) { stub_config }

      let(:client) { config.sns_client }

      let(:arn) { 'arn:aws:sns:us-east-1:123456789012:topicname' }

      let(:topic) { Topic.new(arn, :config => config) }

      it_behaves_like "it has a delivery policy" do
        let(:object) { topic }
        let(:arn_key) { :topic_arn }
        let(:get_method) { :get_topic_attributes }
        let(:set_method) { :set_topic_attributes }
      end

      context '#config' do

        it 'returns the config from initialize' do
          topic.config.should == config
        end

      end

      context '#arn' do

        it 'returns the arn from initialize' do
          topic.arn.should == arn
        end

      end

      context '#name' do

        it 'returns the trailing piece from the arn' do
          topic = Topic.new('arn:aws:sns:us-east-1:599169622985:MyTopic')
          topic.name.should == 'MyTopic'
        end

        it 'it should not make any requests against client' do
          topic = Topic.new('arn', :sns_client => double('client'))
          topic.name
        end

      end

      context '#subscribe' do

        let(:resp) { client.stub_for(:subscribe) }

        before(:each) do
          resp.data.delete(:subscription_arn)
          client.stub(:subscribe).and_return(resp)
        end

        it 'should return a subscription if an ARN is returned' do
          resp.data[:subscription_arn] = 'arn:foo:bar'
          subscription = topic.subscribe("http://foo.bar")
          subscription.should be_a(Subscription)
          subscription.arn.should == "arn:foo:bar"
          subscription.config.should be(config)
        end

        it 'should return nil if the subscription is pending' do
          resp.data[:subscription_arn] = 'pending confirmation'
          topic.subscribe("http://foo.bar").should be_nil
        end

        context 'endpoint' do

          def params_for_endpoint(*args)
            params = nil
            client.should_receive(:subscribe) do |p|
              params = p
              resp
            end
            topic.subscribe(*args)
            params
          end

          context 'http' do

            it 'should use the "http" protocol' do
              params_for_endpoint("http://aws.amazon.com").should == {
                :endpoint => "http://aws.amazon.com",
                :protocol => "http",
                :topic_arn => arn
              }
            end

            it 'should accept a URI object' do
              params_for_endpoint(URI.parse("http://aws.amazon.com")).should == {
                :endpoint => "http://aws.amazon.com",
                :protocol => "http",
                :topic_arn => arn
              }
            end

          end

          context 'https' do

            it 'should use the "https" protocol' do
              params_for_endpoint("https://aws.amazon.com").should == {
                :endpoint => "https://aws.amazon.com",
                :protocol => "https",
                :topic_arn => arn
              }
            end

            it 'should accept a URI object' do
              params_for_endpoint(URI.parse("https://aws.amazon.com")).should == {
                :endpoint => "https://aws.amazon.com",
                :protocol => "https",
                :topic_arn => arn
              }
            end

          end

          context 'email' do

            it 'should use the "email" protocol' do
              params_for_endpoint("foo@example.com").should == {
                :endpoint => "foo@example.com",
                :protocol => "email",
                :topic_arn => arn
              }
            end

          end

          context 'sms' do

            it 'accepts phone numbers 11 characters or longer' do
              params_for_endpoint('12345678901').should == {
                :endpoint => '12345678901',
                :protocol => 'sms',
                :topic_arn => arn,
              }
            end

            it 'strips non-digits from the phone number' do
              params_for_endpoint('1-234.567,8901').should == {
                :endpoint => '12345678901',
                :protocol => 'sms',
                :topic_arn => arn,
              }
            end

          end

          context 'email-json' do

            it 'should use the "email-json" protocol' do
              params_for_endpoint("foo@example.com", :json => true).should == {
                :endpoint => "foo@example.com",
                :protocol => "email-json",
                :topic_arn => arn
              }
            end

          end

          context 'sqs' do

            it 'should use the "sqs" protocol' do
              params_for_endpoint("arn:aws:sqs:foo:bar:baz").should == {
                :endpoint => "arn:aws:sqs:foo:bar:baz",
                :protocol => "sqs",
                :topic_arn => arn
              }
            end

            it 'should accept an SQS::Queue object' do
              queue = SQS::Queue.new(:config => config)
              queue.stub(:arn).and_return("arn:aws:sqs:foo:bar:baz")
              queue.stub(:policy).and_return(nil)
              queue.stub(:policy=)
              params_for_endpoint(queue).should == {
                :endpoint => "arn:aws:sqs:foo:bar:baz",
                :protocol => "sqs",
                :topic_arn => arn
              }
            end

            it 'should add a policy when the queue has not policy' do

              queue = SQS::Queue.new('http://domain.com/url/path', :config => config)
              queue.stub(:arn).and_return("arn:aws:sqs:foo:bar:baz")
              queue.stub(:policy).and_return(nil)

              policy = SQS::Policy.new
              policy.allow(
                :principal => :any,
                :actions => [:send_message],
                :resources => [queue]
              ).where(:source_arn).is(arn)

              queue.should_receive(:policy=).with(policy)

              params_for_endpoint(queue).should == {
                :endpoint => "arn:aws:sqs:foo:bar:baz",
                :protocol => "sqs",
                :topic_arn => arn
              }

            end

            it 'should update an existing queue policy' do

              queue = SQS::Queue.new('http://domain.com/url/path', :config => config)
              queue.stub(:arn).and_return("arn:aws:sqs:foo:bar:baz")
              queue.stub(:policy).and_return(SQS::Policy.new)

              policy = SQS::Policy.new
              policy.allow(
                :principal => :any,
                :actions => [:send_message],
                :resources => [queue]
              ).where(:source_arn).is(arn)

              queue.should_receive(:policy=).with(policy)

              params_for_endpoint(queue).should == {
                :endpoint => "arn:aws:sqs:foo:bar:baz",
                :protocol => "sqs",
                :topic_arn => arn
              }

            end

            it 'should not update policy when :update_policy is false' do

              queue = SQS::Queue.new(:config => config)
              queue.stub(:arn).and_return("arn:aws:sqs:foo:bar:baz")
              queue.should_not_receive(:policy)
              queue.should_not_receive(:policy=)

              params_for_endpoint(queue, :update_policy => false).should == {
                :endpoint => "arn:aws:sqs:foo:bar:baz",
                :protocol => "sqs",
                :topic_arn => arn
              }

            end

            it 'should raise ArgumentError if the ARN is not SQS-like' do
              lambda { topic.subscribe("arn:aws:sns:foo:bar:baz") }.
                should raise_error(ArgumentError, "expected a queue ARN")
            end

          end

          context 'unrecognized endpoint protocol' do
            it 'should raise ArgumentError' do
              lambda { topic.subscribe("foo") }.
                should raise_error(ArgumentError,
                                   "could not determine protocol for 'foo'")
            end
          end

        end

      end

      context '#confirm_subscription' do

        let(:resp) { client.new_stub_for(:confirm_subscription) }

        before(:each) do
          resp.data[:subscription_arn] = 'arn123'
          client.stub(:confirm_subscription).and_return(resp)
        end

        it 'should call confirm_subscription on the client' do
          client.should_receive(:confirm_subscription).
            with(:topic_arn => arn,
                 :token => "abc123").
            and_return(resp)
          topic.confirm_subscription("abc123")
        end

        it 'should pass :authenticate_on_unsubscribe' do
          client.should_receive(:confirm_subscription).
            with(hash_including(:authenticate_on_unsubscribe => "true")).
            and_return(resp)
          topic.confirm_subscription("abc123", :authenticate_on_unsubscribe => true)
        end

        it 'should return a subscription object with the ARN from the response' do
          sub = topic.confirm_subscription("abc123")
          sub.should be_a(Subscription)
          sub.arn.should == "arn123"
          sub.config.should == config
          sub.topic.should == topic
        end

      end

      context '#subscriptions' do

        it 'should return a collection of subscriptions for the topic' do
          subs = topic.subscriptions
          subs.should be_a(TopicSubscriptionCollection)
          subs.topic.should be(topic)
          subs.config.should be(config)
        end

      end

      context 'attributes' do

        let(:policy) { Policy.from_json('{"Version":"2008-10-17","Id":"us-east-1/698519295917/test__default_policy_ID","Statement" : [{"Effect":"Allow","Sid":"us-east-1/698519295917/test__default_statement_ID","Principal" : {"AWS": "*"},"Action":["SNS:GetTopicAttributes","SNS:SetTopicAttributes","SNS:AddPermission","SNS:RemovePermission","SNS:DeleteTopic","SNS:Subscribe","SNS:ListSubscriptionsByTopic","SNS:Publish","SNS:Receive"],"Resource":"arn:aws:sns:us-east-1:698519295917:test","Condition" : {"StringLike" : {"AWS:SourceArn": "arn:aws:*:*:698519295917:*"}}}]}') }

        let(:response) { client.stub_for(:get_topic_attributes) }

        before(:each) do
          response.data[:attributes] = {
            'DisplayName' => 'Display Name',
            'Owner' => '1234567890',
            'TopicArn' => 'arn:aws:sns:us-east-1:123456789012:topicname',
            'Policy' => policy.to_json,
            'SubscriptionsConfirmed' => '1',
            'SubscriptionsPending' => '2',
            'SubscriptionsDeleted' => '3',
          }
          client.stub(:get_topic_attributes).and_return(response)
        end

        context '#display_name' do

          it 'calls get_topic_attributes' do
            client.should_receive(:get_topic_attributes).
              with(:topic_arn => topic.arn)
            topic.display_name
          end

          it 'returns the display name as a string' do
            topic.display_name.should == 'Display Name'
          end

          it 'returns the name when the display name is not present' do
            response.data[:attributes] = {}
            topic.display_name.should == 'topicname'
          end

        end

        context '#num_subscriptions_confirmed' do

          it 'calls get_topic_attributes' do
            client.should_receive(:get_topic_attributes).
              with(:topic_arn => topic.arn)
            topic.num_subscriptions_confirmed
          end

          it 'returns the num_subscriptions_confirmed as an integer' do
            topic.num_subscriptions_confirmed.should == 1
          end

        end

        context '#num_subscriptions_pending' do

          it 'calls get_topic_attributes' do
            client.should_receive(:get_topic_attributes).
              with(:topic_arn => topic.arn)
            topic.num_subscriptions_pending
          end

          it 'returns the num_subscriptions_pending as an integer' do
            topic.num_subscriptions_pending.should == 2
          end

        end

        context '#num_subscriptions_deleted' do

          it 'calls get_topic_attributes' do
            client.should_receive(:get_topic_attributes).
              with(:topic_arn => topic.arn)
            topic.num_subscriptions_deleted
          end

          it 'returns the num_subscriptions_deleted as an integer' do
            topic.num_subscriptions_deleted.should == 3
          end

        end

        context '#owner' do

          it 'calls get_topic_attributes' do
            client.should_receive(:get_topic_attributes).
              with(:topic_arn => topic.arn)
            topic.owner
          end

          it 'returns the owner as a string' do
            topic.owner.should == '1234567890'
          end

        end

        context '#policy' do

          it 'calls get_topic_attributes' do
            client.should_receive(:get_topic_attributes).
              with(:topic_arn => topic.arn)
            topic.policy
          end

          it 'returns the policy' do
            #puts topic.policy.send(:hash_without_ids).to_yaml
            #puts policy.send(:hash_without_ids).to_yaml
            topic.policy.should == policy
          end

        end

      end

      context '#publish' do

        def should_receive_publish_with options = {}
          client.should_receive(:publish).with do |opts|
            opts[:topic_arn].should == topic.arn
            opts[:message_structure].should == 'json'
            JSON.parse(opts[:message]).should ==
              JSON.parse(options.merge(:default => 'message').to_json)
          end.and_return(response)
        end

        let(:response) { client.stub_for(:publish) }

        before(:each) do
          response.data[:message_id] = 'message-id'
          client.stub(:publish).and_return(response)
        end

        it 'calls publish on the client' do
          should_receive_publish_with
          topic.publish('message')
        end

        it 'returns the message id from the response' do
          topic.publish('message').should == 'message-id'
        end

        it 'passes the subject along' do
          client.should_receive(:publish).with(
            :topic_arn => topic.arn,
            :subject => 'subject',
            :message_structure => 'json',
            :message => { :default => 'message' }.to_json)
          topic.publish('message', :subject => 'subject')
        end

        it 'passes the http message along' do
          should_receive_publish_with('http' => 'http msg')
          topic.publish('message', :http => 'http msg')
        end

        it 'passes the https message along' do
          should_receive_publish_with('https' => 'https msg')
          topic.publish('message', :https => 'https msg')
        end

        it 'passes the email message along' do
          should_receive_publish_with('email' => 'email msg')
          topic.publish('message', :email => 'email msg')
        end

        it 'passes the email_json message along' do
          should_receive_publish_with('email-json' => 'email_json msg')
          topic.publish('message', :email_json => 'email_json msg')
        end

        it 'passes the sqs message along' do
          should_receive_publish_with('sqs' => 'sqs msg')
          topic.publish('message', :sqs => 'sqs msg')
        end

      end

      context '#delete' do

        it 'calls delete_topic on the client' do
          client.should_receive(:delete_topic).with(:topic_arn => topic.arn)
          topic.delete
        end

        it 'returns nil' do
          topic.delete.should == nil
        end

      end

      context '#==' do

        it 'returns true for topics with matching arn' do
          Topic.new('arn').should == Topic.new('arn')
        end

        it 'returns false for topics with miss-matching arn' do
          Topic.new('arn1').should_not == Topic.new('arn2')
        end

      end

    end
  end
end
