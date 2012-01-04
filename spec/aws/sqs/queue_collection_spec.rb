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
  class SQS

    describe QueueCollection do

      let(:config) { stub_config }

      let(:client) { config.sqs_client }

      let(:collection) do
        described_class.new(:config => config)
      end

      it_should_behave_like "an SQS model object", {}

      it_should_behave_like "collection object" do

        let(:client_method) { :list_queues }

        let(:member_class) { Queue }

        def stub_two_members(resp)
          resp.stub(:queue_urls).and_return(["one", "two"])
        end

        context 'yielded objects' do

          it 'should have the correct queue URL' do
            collection.map(&:url).should == ["one", "two"]
          end

        end

      end

      context '#create' do

        let(:resp) { client.new_stub_for(:create_queue) }

        before(:each) do
          resp.stub(:queue_url).and_return("url")
          client.stub(:create_queue).and_return(resp)
        end

        it 'should call create_queue' do
          client.should_receive(:create_queue).with(:queue_name => "foo")
          collection.create("foo")
        end

        it 'should pass additional options' do
          client.should_receive(:create_queue).
            with(:queue_name => "foo", :attributes => { 
              'Foo' => 'bar',
            })
          collection.create("foo", :foo => "bar")
        end

        it 'should return a queue object with the URL set' do
          q = collection.create("foo")
          q.should be_a(Queue)
          q.url.should == "url"
          q.config.should be(config)
        end

        it 'renames the deprecated :default_visibility_timeout option' do
          client.should_receive(:create_queue).with(
            :queue_name => 'name',
            :attributes => { 'VisibilityTimeout' => '1000' })
          collection.create('name', :default_visibility_timeout => 1000)
        end

        it 'passes policy strings unmodified' do
          client.should_receive(:create_queue).with(
            :queue_name => 'name',
            :attributes => { 'Policy' => 'policy-json' })
          policy = 'policy-json'
          collection.create('name', :policy => policy)
        end

        it 'calls #to_json on all other policy options' do
          client.should_receive(:create_queue).with(
            :queue_name => 'name',
            :attributes => { 'Policy' => 'policy-json' })
          policy = double('policy', :to_json => 'policy-json')
          collection.create('name', :policy => policy)
        end

        it 'merges multiple options/attributes' do
          client.should_receive(:create_queue).with(
            :queue_name => 'name',
            :attributes => { 'Abc' => 'xyz', 'Foo' => 'bar' }
          ).and_return(resp)
          collection.create("name", :foo => 'bar', :abc => 'xyz')
        end

      end

      context '#url_for' do

        let(:response) { client.stub_for(:get_queue_url) }
        
        before(:each) do
          response.stub(:queue_url).and_return('url')
          client.stub(:get_queue_url).and_return(response)
        end

        it 'gets the url for a queue' do
          client.should_receive(:get_queue_url).
            with(:queue_name => 'name').
            and_return(response)
          collection.url_for('name')
        end

        it 'accepts an :queue_owner_aws_account_id' do
          client.should_receive(:get_queue_url).with(
            :queue_name => 'name',
            :queue_owner_aws_account_id => 'id'
          ).and_return(response)
          collection.url_for('name', :queue_owner_aws_account_id => 'id')
        end

        it 'returns the queue url from the response' do
          collection.url_for('name').should == 'url'
        end

      end

      context '#with_prefix' do

        it 'should return a collection with the prefix' do
          collection.with_prefix("foo").prefix.should == "foo"
        end

        it 'should preserve the config' do
          collection.with_prefix("foo").config.should be(config)
        end

        it 'should not modify the original' do
          collection.with_prefix("foo")
          collection.prefix.should be_nil
        end

        it 'should pass :queue_name_prefix to the client' do
          client.should_receive(:list_queues).
            with(hash_including(:queue_name_prefix => "foo")).
            and_return(client.stub_for(:list_queues))
          collection.with_prefix("foo").to_a
        end

      end

      context '#[]' do

        it 'should return a queue object with the given url' do
          q = collection["foo"]
          q.should be_a(Queue)
          q.url.should == "foo"
          q.config.should be(config)
        end

      end

    end

  end
end
