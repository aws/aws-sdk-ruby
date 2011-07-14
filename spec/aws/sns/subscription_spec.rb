# Copyright 2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
  class SNS
    describe Subscription do

      let(:config) { stub_config }

      let(:client) { config.sns_client }

      let(:arn) { 'arn:aws:sns:us-east-1:123456789012:topicname:uuid' }

      let(:subscription) { Subscription.new(arn, :config => config) }

      it_should_behave_like "a resource object" do
        let(:identifiers) { ["arn"] }
        let(:constructor_args) { identifiers }
        let(:comparison_instances) { [described_class.new("arn2")] }
      end

      context '#initialize' do

        it 'should set the arn' do
          subscription.arn.should == arn
        end

        it 'should set the topic' do
          topic = Topic.new("foo")
          described_class.new(arn,
                              :topic => topic).
            topic.should be(topic)
        end

        it 'should set the endpoint' do
          described_class.new(arn,
                              :endpoint => "foo").
            endpoint.should == "foo"
        end

        it 'should set the protocol' do
          described_class.new(arn,
                              :protocol => "foo").
            protocol.should == "foo"
        end

        it 'should set the owner_id' do
          described_class.new(arn,
                              :owner_id => "1234").
            owner_id.should == "1234"
        end

      end

      context '#unsubscribe' do

        it 'should call unsubscribe' do
          client.should_receive(:unsubscribe).
            with(:subscription_arn => arn)
          subscription.unsubscribe
        end

        it 'should return nil' do
          subscription.unsubscribe.should be_nil
        end

      end

      context '#exists?' do

        let(:collection) { [] }

        it 'should return true if the subscription is in the collection' do
          SubscriptionCollection.should_receive(:new).and_return([subscription])
          subscription.exists?.should be_true
        end

        it 'should return false if the subscription is not in the collection' do
          SubscriptionCollection.should_receive(:new).and_return([])
          subscription.exists?.should be_false
        end

        it 'should use the topic collection if the topic is set' do
          topic = Topic.new("topicARN")
          subscription.stub(:topic).and_return(topic)
          TopicSubscriptionCollection.should_receive(:new).
            with(topic, :config => config).
            and_return([subscription])
          subscription.exists?.should be_true
        end

      end

    end
  end
end
