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

      it_behaves_like "it has a delivery policy" do
        let(:object) { subscription }
        let(:arn_key) { :subscription_arn }
        let(:get_method) { :get_subscription_attributes }
        let(:set_method) { :set_subscription_attributes }
      end

      context '#initialize' do

        it 'should set the arn' do
          subscription.arn.should == arn
        end

        it 'should set the topic' do
          topic = Topic.new("foo")
          subscription = Subscription.new(arn, :topic_arn => topic.arn)
          subscription.topic.should == topic
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

        it 'calls #get_subscription_attributes on the client' do

          client.should_receive(:get_subscription_attributes).
            with(:subscription_arn => subscription.arn).
            and_return(client.stub_for(:get_subscription_attributes))

          subscription.exists?

        end

        it 'returns true if no error is raised' do
          subscription.exists?.should == true
        end

        it 'returns false if the client raises a not found error' do
          client.stub(:get_subscription_attributes).and_raise(Errors::NotFound)
          subscription.exists?.should == false
        end

        it 'returns false if the client raises an invalid parameter error' do
          client.stub(:get_subscription_attributes).and_raise(Errors::InvalidParameter)
          subscription.exists?.should == false
        end

      end

    end
  end
end
