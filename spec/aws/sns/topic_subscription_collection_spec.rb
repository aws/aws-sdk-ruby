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

    describe TopicSubscriptionCollection do

      let(:config) { stub_config }

      let(:client) { config.sns_client }

      let(:topic_arn) { 'arn:aws:sns:us-east-1:123456789012:topicname' }

      let(:topic) { Topic.new(topic_arn, :config => config) }

      let(:subscriptions) { described_class.new(topic) }

      it_should_behave_like "a pageable collection" do

        let(:collection) { subscriptions }
        let(:client_method) { :list_subscriptions_by_topic }
        let(:member_class) { Subscription }
        let(:request_options) {{ :topic_arn => topic.arn }}

        def stub_n_members resp, count
          resp.data[:subscriptions] = (1..count).map do |n|
            {
              :subscription_arn => "arn#{n}",
              :endpoint => "e#{n}",
              :protocol => "p-#{n}",
              :owner => "o#{n}",
              :topic_arn => "t#{n}",
            }
          end
        end

        it_should_behave_like "an indexed collection" do
          let(:identity_method) { :arn }
        end

        context 'yielded objects' do

          before(:each) do
            stub_n_members(response, 2)
          end

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

    end

  end

end
