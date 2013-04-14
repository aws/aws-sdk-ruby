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
require 'base64'
require 'json'

module AWS
  class SQS
    describe ReceivedSNSMessage do

      let(:json) { '{ "Message": "test message", "Signature": "abcdefg", "TopicArn": "arn:aws:sns:us-east-1:123456789012:sample", "SignatureVersion": "1", "Timestamp": "2011-06-21T18:45:44.942Z", "MessageId": "5f5bc831-1877-4ed8-bdcf-da7bc64f3b11", "SigningCertURL": "https://sns.us-east-1.amazonaws.com/SimpleNotificationService-f3ecfb7224c7233fe7bb5f59f96de52f.pem", "UnsubscribeURL": "https://sns.us-east-1.amazonaws.com/?Action=Unsubscribe&SubscriptionArn=arn:aws:sns:us-east-1:123456789012:sample:84a744a5-1de8-4133-8dc3-872acf0b29ad", "Type": "Notification" }' }

      let(:config) { stub_config }

      let(:message) { described_class.new(json, :config => config) }

      context '#body' do

        it 'it decodes and returns the message as body' do
          message.body.should == 'test message'
        end

      end

      context '#topic_arn' do

        it 'it decodes and returns the topic arn' do
          message.topic_arn.should == "arn:aws:sns:us-east-1:123456789012:sample"
        end

      end

      context '#topic' do

        it 'it returns the sns topic' do
          topic = message.topic
          topic.should be_an(SNS::Topic)
          topic.arn.should == message.topic_arn
          topic.config.should == message.config
        end

      end

      context '#message_type' do

        it 'it decodes and returns the message type' do
          message.message_type.should == "Notification"
        end

      end

      context '#signature' do

        it 'it decodes and returns the signature' do
          message.signature.should == "abcdefg"
        end

      end

      let(:json) { '{ "Message": "test message", "Signature": "abcdefg", "TopicArn": "arn:aws:sns:us-east-1:123456789012:sample", "SignatureVersion": "1", "Timestamp": "2011-06-21T18:45:44.942Z", "MessageId": "5f5bc831-1877-4ed8-bdcf-da7bc64f3b11", "SigningCertURL": "https://sns.us-east-1.amazonaws.com/SimpleNotificationService-f3ecfb7224c7233fe7bb5f59f96de52f.pem", "UnsubscribeURL": "https://sns.us-east-1.amazonaws.com/?Action=Unsubscribe&SubscriptionArn=arn:aws:sns:us-east-1:123456789012:sample:84a744a5-1de8-4133-8dc3-872acf0b29ad", "Type": "Notification" }' }

      context '#published_at' do

        it 'it decodes and returns the time the message was published' do
          message.published_at.should == Time.parse("2011-06-21T18:45:44.942Z")
        end

      end

      context '#message_id' do

        it 'it decodes and returns the message id' do
          message.message_id.should == "5f5bc831-1877-4ed8-bdcf-da7bc64f3b11"
        end

      end

      context '#signing_cert_url' do

        it 'it decodes and returns the signing cert url' do
          message.signing_cert_url.should == "https://sns.us-east-1.amazonaws.com/SimpleNotificationService-f3ecfb7224c7233fe7bb5f59f96de52f.pem"
        end

      end

      context '#unsubscribe_url' do

        it 'it decodes and returns the unsubscribe url' do
          message.unsubscribe_url.should == "https://sns.us-east-1.amazonaws.com/?Action=Unsubscribe&SubscriptionArn=arn:aws:sns:us-east-1:123456789012:sample:84a744a5-1de8-4133-8dc3-872acf0b29ad"
        end

      end

    end
  end
end
