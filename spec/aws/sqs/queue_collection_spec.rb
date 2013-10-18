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
  class SQS

    describe QueueCollection do

      let(:config) { stub_config }

      let(:client) { config.sqs_client }

      let(:queues) { described_class.new(:config => config) }

      it_should_behave_like "a simple collection" do

        let(:collection) { queues }
        let(:client_method) { :list_queues }
        let(:member_class) { Queue }
        let(:request_options) {{}}

        def stub_n_members resp, count
          resp.data[:queue_urls] = (1..count).map {|n| n.to_s }
        end

        it_should_behave_like "an indexed collection" do
          let(:identity_method) { :url }
        end

        context 'yielded objects' do

          before(:each) do
            stub_n_members(response, 2)
          end

          it 'should have the correct queue URL' do
            collection.map(&:url).should == ["1", "2"]
          end

        end

      end

      context '#create' do

        let(:resp) { client.stub_for(:create_queue) }

        before(:each) do
          resp.data[:queue_url] = 'url'
          client.stub(:create_queue).and_return(resp)
        end

        it 'should call create_queue' do
          client.should_receive(:create_queue).with(:queue_name => "foo")
          queues.create("foo")
        end

        it 'should pass additional options' do
          client.should_receive(:create_queue).
            with(:queue_name => "foo", :attributes => {
              'Foo' => 'bar',
            })
          queues.create("foo", :foo => "bar")
        end

        it 'should return a queue object with the URL set' do
          q = queues.create("foo")
          q.should be_a(Queue)
          q.url.should == "url"
          q.config.should be(config)
        end

        it 'renames the deprecated :default_visibility_timeout option' do
          client.should_receive(:create_queue).with(
            :queue_name => 'name',
            :attributes => { 'VisibilityTimeout' => '1000' })
          queues.create('name', :default_visibility_timeout => 1000)
        end

        it 'passes policy strings unmodified' do
          client.should_receive(:create_queue).with(
            :queue_name => 'name',
            :attributes => { 'Policy' => 'policy-json' })
          policy = 'policy-json'
          queues.create('name', :policy => policy)
        end

        it 'calls #to_json on all other policy options' do
          client.should_receive(:create_queue).with(
            :queue_name => 'name',
            :attributes => { 'Policy' => 'policy-json' })
          policy = double('policy', :to_json => 'policy-json')
          queues.create('name', :policy => policy)
        end

        it 'merges multiple options/attributes' do
          client.should_receive(:create_queue).with(
            :queue_name => 'name',
            :attributes => { 'Abc' => 'xyz', 'Foo' => 'bar' }
          ).and_return(resp)
          queues.create("name", :foo => 'bar', :abc => 'xyz')
        end

      end

      context '#url_for' do

        let(:response) { client.stub_for(:get_queue_url) }

        before(:each) do
          response.data[:queue_url] = 'url'
          client.stub(:get_queue_url).and_return(response)
        end

        it 'gets the url for a queue' do
          client.should_receive(:get_queue_url).
            with(:queue_name => 'name').
            and_return(response)
          queues.url_for('name')
        end

        it 'accepts an :queue_owner_aws_account_id' do
          client.should_receive(:get_queue_url).with(
            :queue_name => 'name',
            :queue_owner_aws_account_id => 'id'
          ).and_return(response)
          queues.url_for('name', :queue_owner_aws_account_id => 'id')
        end

        it 'returns the queue url from the response' do
          queues.url_for('name').should == 'url'
        end

      end

      context '#with_prefix' do

        it 'should return a collection with the prefix' do
          queues.with_prefix("foo").prefix.should == "foo"
        end

        it 'should preserve the config' do
          queues.with_prefix("foo").config.should be(config)
        end

        it 'should not modify the original' do
          queues.with_prefix("foo")
          queues.prefix.should be_nil
        end

        it 'should pass :queue_name_prefix to the client' do
          client.should_receive(:list_queues).
            with(hash_including(:queue_name_prefix => "foo")).
            and_return(client.stub_for(:list_queues))
          queues.with_prefix("foo").to_a
        end

      end

    end

  end

end
