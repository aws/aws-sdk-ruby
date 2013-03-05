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
    describe TopicCollection do

      let(:config) { stub_config }

      let(:client) { config.sns_client }

      let(:topics) { TopicCollection.new(:config => config) }

      context '#create' do

        let(:response) { client.stub_for(:create_topic) }

        before(:each) do
          response.data[:topic_arn] = 'arn'
          client.stub(:create_topic).and_return(response)
        end

        it 'call create_topic on the client' do
          client.should_receive(:create_topic).with(:name => 'topic-name')
          topics.create('topic-name')
        end

        it 'returns a new topic' do
          topics.create('topic-name').should be_a(Topic)
        end

        it 'returns a new topic with the correct arn' do
          topics.create('topic-name').arn.should == 'arn'
        end

        it 'returns a topic with the correct config' do
          topics.create('topic-name').config.should == topics.config
        end

      end

      it_should_behave_like "a pageable collection" do

        let(:collection) { topics }
        let(:client_method) { :list_topics }
        let(:next_token_key) { :next_token }

        def stub_n_members resp, count
          resp.data[:topics] = (1..count).map do |n|
            { :topic_arn => "topic-arn-#{n}" }
          end
        end

        it_should_behave_like "an indexed collection" do
          let(:identity) { 'arn:aws:sns:foo' }
          let(:identity_method) { :arn }
        end

      end

      context '#[]' do

        it 'raises an argument error when an invalid topic arn is passed' do
          lambda {
            topics['arn']
          }.should raise_error(ArgumentError, /invalid topic arn/)
        end

      end

    end

  end

end
