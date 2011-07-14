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
  class S3

    describe ObjectCollection do

      let(:config) { stub_config }

      let(:client) { config.s3_client }

      let(:bucket) { Bucket.new('bu', :config => config) }

      let(:collection) { ObjectCollection.new(bucket) }

      it_behaves_like "an S3 model object", Object.new

      let(:list_method) { :list_objects }

      it_behaves_like "an S3 tree-like collection"

      it_behaves_like "an S3 paginated collection" do

        let(:limit_param) { :max_keys }

        def stub_markers(resp, value)
          resp.stub(:contents).
            and_return([double("obj 1",
                               :key => value)])
        end

        def expect_markers(client, value)
          client.should_receive(:list_objects).
            with(hash_including(:marker => value))
        end

        def stub_members(resp, quantity)
          resp.stub(:contents).
            and_return([double("object 1",
                               :key => "foo"),
                        double("upload 2",
                               :key => "bar")].first(quantity))
        end

      end

      context '#create' do
        
        it 'creates a new s3 object and writes to it' do
          s3object = double('s3-object')
          s3object.should_receive(:write).with('HELLO', :foo => 'bar')
          S3Object.should_receive(:new).
            with(collection.bucket, 'key').
            and_return(s3object)
          collection.create('key', 'HELLO', :foo => 'bar')  
        end
        
        it 'creates a new s3 object and writes to it' do
          s3object = double('s3-object')
          s3object.should_receive(:write).with('HELLO', :foo => 'bar')
          S3Object.should_receive(:new).and_return(s3object)
          collection.create('key', 'HELLO', :foo => 'bar')  
        end

      end

      context '#each' do

        let(:contents) { [double('content', :key => 'bar'),
                          double('content', :key => 'foo')] }

        let(:response) { client.stub_for(:list_objects) }

        let(:truncated_response) { 
          response = client.new_stub_for(:list_objects) 
          response.stub(:contents).and_return(contents)
          response.stub(:truncated?).and_return(true)
          response
        }

        before(:each) do
          client.stub_for(:list_objects).
            stub(:contents).and_return(contents)
        end

        it 'should call list_objects with the bucket name' do
          client.should_receive(:list_objects).
            with(hash_including(:bucket_name => "bu")).
            and_return(response)
          collection.each { |o| }
        end

        it 'should yield one object for each listed contents' do
          got_objects = []
          collection.each { |o| got_objects << o }
          got_objects.should have(2).items
        end

        it 'should yield an s3 object for each item in the response list' do
          got_objects = []
          collection.each { |o| got_objects << o }
          got_objects.first.should be_an(S3Object)
        end

        it 'should yield an s3 object with the correct keys' do
          got_objects = []
          collection.each { |o| got_objects << o }
          got_objects.map { |o| o.key }.should == %w(bar foo)
        end

        it 'should request the next page if the result is trucated' do

          client.should_receive(:list_objects).ordered.
            with(hash_not_including(:marker)).
            and_return(truncated_response)

          client.should_receive(:list_objects).ordered.
            with(hash_including(:bucket_name => "bu", :marker => "foo")).
            and_return(response)

          collection.each { |o| }

        end

        context '#with_prefix' do

          it 'should pass #prefix to client#list_objects' do
            client.should_receive(:list_objects).
              with(hash_including(:prefix => '/foo')).
              and_return(response)
            collection.with_prefix('/foo').each{|o|}
          end

        end

      end
    end
  end
end
