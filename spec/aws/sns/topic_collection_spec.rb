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
    describe TopicCollection do

      let(:config) { stub_config }

      let(:client) { config.sns_client }

      let(:topics) { TopicCollection.new(:config => config) }

      it_behaves_like 'enumerable'

      context '#create' do

        let(:response) { client.stub_for(:create_topic) }

        before(:each) do
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
          client.stub_for(:create_topic).stub(:topic_arn).and_return('arn')
          topics.create('topic-name').arn.should == 'arn'
        end

        it 'returns a topic with the correct config' do
          topics.create('topic-name').config.should == topics.config
        end

      end

      context '#[]' do

        it 'returns a topic' do
          topics['arn:aws:sns:us-east-1:599169622985:topic'].should be_a(Topic)
        end
        
        it 'returns a topic with the given arn' do
          topics['arn:aws:sns:us-east-1:599169622985:topic'].arn.should == 
            'arn:aws:sns:us-east-1:599169622985:topic'
        end

        it 'returns a topic with the correct config' do
          topics['arn:aws:sns:us-east-1:599169622985:topic'].config.should == 
            topics.config
        end

        it 'raises an argument error when an invalid topic arn is passed' do
          lambda {
            topics['arn']
          }.should raise_error(ArgumentError, /invalid topic arn/)
        end

      end

      context '#each' do

        let(:response) { client.stub_for(:list_topics) }

        before(:each) do
          response.stub(:topics).and_return([
            double('t1', :topic_arn => 'arn1'),
            double('t2', :topic_arn => 'arn2'),
          ])
          client.stub(:list_topics).and_return(response)
        end

        it 'calls list_topics on the client' do
          client.should_receive(:list_topics).with({})
          topics.each{|topic|}
        end

        it 'yields once for each returned topic' do
          yielded = 0
          topics.each{|topic| yielded += 1 }
          yielded.should == 2
        end

        it 'yields topic objects with the correct arns and configs' do
          yielded = []
          topics.each{|topic| yielded << topic }
          yielded.all?{|topic| topic.should be_a(Topic) }
          yielded.all?{|topic| topic.config.should == config }
          yielded.collect{|t| t.arn }.should == %w(arn1 arn2)
        end

        it 'continunes calling get_topics when a next_token is returned' do

          ## 3 stub responses, first 2 have a next token, the 3rd doesn't

          r1 = client.new_stub_for(:list_topics)
          r1.stub(:topics).and_return([double('t1', :topic_arn => 'arn1')])
          r1.should_receive(:next_token).and_return('abc')

          r2 = client.new_stub_for(:list_topics)
          r2.stub(:topics).and_return([double('t2', :topic_arn => 'arn2')])
          r2.should_receive(:next_token).and_return('xyz')

          r3 = response
          r3.stub(:topics).and_return([double('t3', :topic_arn => 'arn3')])

          ## client should recieve list topics 3 times with the correct 
          ## next tokens (those returned by the previous response)

          client.should_receive(:list_topics).with({}).
            ordered.and_return(r1)

          client.should_receive(:list_topics).with(:next_token => 'abc').
            ordered.and_return(r2)

          client.should_receive(:list_topics).with(:next_token => 'xyz').
            ordered.and_return(r3)

          ## each response returned 1 topic, so we should have 3

          yielded = []
          topics.each{|t| yielded << t }
          yielded.length.should == 3

        end

      end

    end
  end
end
