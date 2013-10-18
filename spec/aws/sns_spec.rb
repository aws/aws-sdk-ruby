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
  describe SNS do

    let(:config) { stub_config }

    let(:client) { config.sns_client }

    let(:sns) { SNS.new(:sns_client => client) }

    it_behaves_like 'a class that accepts configuration', :sns_client

    context '#topics' do

      it 'returns a topics collections' do
        sns.topics.should be_a(SNS::TopicCollection)
      end

      it 'returns a collection with the correct config' do
        sns.topics.config.should == sns.config
      end

    end

    context '#subscriptions' do

      it 'returns a subscriptions collection' do
        sns.subscriptions.should be_a(SNS::SubscriptionCollection)
      end

      it 'returns a collection with the correct config' do
        sns.subscriptions.config.should == sns.config
      end

    end

  end
end
