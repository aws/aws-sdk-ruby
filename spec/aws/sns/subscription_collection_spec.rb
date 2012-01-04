# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

    describe SubscriptionCollection do

      let(:config) { stub_config }

      let(:client) { config.sns_client }

      let(:collection) { described_class.new(:config => config) }

      it_should_behave_like "collection object" do

        let(:client_method) { :list_subscriptions }

        let(:member_class) { Subscription }

        def stub_two_members(resp)
          resp.stub(:subscriptions).
            and_return([double("sub 1",
                               :subscription_arn => "arn1",
                               :endpoint => "e1",
                               :protocol => "p-1",
                               :owner => "o1",
                               :topic_arn => "t1"),
                        double("sub 2",
                               :subscription_arn => "arn2",
                               :endpoint => "e2",
                               :protocol => "p-2",
                               :owner => "o2",
                               :topic_arn => "t2")])
        end

        it_should_behave_like "paginated collection"

        context 'yielded objects' do

          it 'should have the correct arns' do
            collection.map(&:arn).should == ["arn1", "arn2"]
          end

          it 'should have the correct endpoints' do
            collection.map(&:endpoint).should == %w(e1 e2)
          end

          it 'should have the correct protocols' do
            collection.map(&:protocol).should == [:p_1, :p_2]
          end

          it 'should have the correct owner IDs' do
            collection.map(&:owner_id).should == %w(o1 o2)
          end

          it 'should have the correct topic ARNs' do
            collection.map { |s| s.topic.arn }.should == %w(t1 t2)
          end

          it 'should have topics with the correct config' do
            collection.each { |s| s.topic.config.should be(config) }
          end

        end

      end

      context '#[]' do

        it 'should return a subscription object' do
          sub = collection["arn"]
          sub.should be_a(Subscription)
          sub.arn.should == "arn"
          sub.config.should be(config)
        end

      end

    end

  end
end
