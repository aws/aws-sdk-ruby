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
  class S3

    describe ObjectCollection do

      let(:config) { stub_config }

      let(:client) { config.s3_client }

      let(:bucket) { Bucket.new('bu', :config => config) }

      let(:collection) { ObjectCollection.new(bucket) }

      it_behaves_like "an S3 model object", Object.new

      let(:list_method) { :list_objects }

      let(:delete_response) { client.stub_for(:delete_objects) }

      it_behaves_like "an S3 tree-like collection"

      it_behaves_like "an S3 paginated collection" do

        let(:limit_param) { :max_keys }

        def stub_markers(resp, value)
          resp.data[:contents] = [{ :key => value }]
        end

        def expect_markers(client, value)
          client.should_receive(:list_objects).
            with(hash_including(:marker => value))
        end

        def stub_members(resp, quantity)
          resp.data[:contents] = [
            { :key => 'foo' },
            { :key => 'bar' },
          ].first(quantity)
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

        let(:contents) {[
          { :key => 'bar' },
          { :key => 'foo' },
        ]}

        let(:response) { client.stub_for(:list_objects) }

        let(:truncated_response) {
          response = client.new_stub_for(:list_objects)
          response.data[:contents] = contents
          response.data[:truncated] = true
          response.data[:next_marker] = 'foo'
          response
        }

        let(:truncated_response_without_next_marker) {
          response = client.new_stub_for(:list_objects)
          response.data[:contents] = contents
          response.data[:truncated] = true
          response.data[:next_marker] = nil
          response
        }

        let(:truncated_response_with_conflicting_marker) {
          response = client.new_stub_for(:list_objects)
          response.data[:contents] = contents
          response.data[:truncated] = true
          response.data[:next_marker] = 'precedence'
          response
        }

        before(:each) do
          resp = client.stub_for(:list_objects)
          resp.data[:contents] = contents
        end

        it 'raises a runtime error if the response says its truncated but there are no keys or next_marker' do
          response.data[:truncated] = true
          response.data[:next_marker] = nil
          response.data[:contents] = []
          lambda {
            collection.each{|o|}
          }.should raise_error(/Unable to find marker/)
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

        it 'should fall back to the last collection key if next_marker is missing' do

          client.should_receive(:list_objects).ordered.
            with(hash_not_including(:marker)).
            and_return(truncated_response_without_next_marker)

          client.should_receive(:list_objects).ordered.
            with(hash_including(:bucket_name => "bu", :marker => "foo")).
            and_return(response)

          collection.each { |o| }

        end

        it 'should use the next_marker before collection values' do

          client.should_receive(:list_objects).ordered.
            with(hash_not_including(:marker)).
            and_return(truncated_response_with_conflicting_marker)

          client.should_receive(:list_objects).ordered.
            with(hash_including(:bucket_name => "bu", :marker => "precedence")).
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

      context '#delete' do

        it 'calls delete_objects on the client' do

          client.should_receive(:delete_objects).with(
            :bucket_name => bucket.name,
            :quiet => true,
            :objects => [{ :key => '1' }, { :key => '2' }]).
            and_return(delete_response)


          collection.delete('1', '2')

        end

        it 'accepts mixed keys (strings, hashes, objects and versions)' do

          client.should_receive(:delete_objects).with(
            :bucket_name => bucket.name,
            :quiet => true,
            :objects => [
              { :key => 'key1' },
              { :key => 'key2' },
              { :key => 'key3' },
              { :key => 'key3', :version_id => 'vid' },
            ]
          ).and_return(delete_response)

          objects = [
            'key1',
            { :key => 'key2' },
            bucket.objects['key3'],
            bucket.objects['key3'].versions['vid'],
          ]

          collection.delete(objects)

        end


        it 'can delete a batch of 1k objects in a single call' do

          keys = (1..1000).map {|n| { :key => "key#{n}" } }

          client.should_receive(:delete_objects).exactly(1).times.with(
            :bucket_name => bucket.name, :quiet => true, :objects => keys).
            and_return(delete_response)

          collection.delete(*keys)

        end


        it 'deletes > 1k objects in multiple calls' do

          keys = (1..1500).map {|n| { :key => "key#{n}" } }

          client.should_receive(:delete_objects).ordered.with(
            :bucket_name => bucket.name, :quiet => true,
            :objects => keys[0..999]).
            and_return(delete_response)

          client.should_receive(:delete_objects).ordered.with(
            :bucket_name => bucket.name, :quiet => true,
            :objects => keys[1000..1499]).
            and_return(delete_response)

          collection.delete(*keys)

        end

        it 'uses an array of objects and hash of options when present' do

          objects = ['key1','key2']
          mfa     = '123456 7890'

          client.should_receive(:delete_objects).with(
            :bucket_name => bucket.name,
            :quiet => true,
            :objects => [{:key => 'key1'}, {:key => 'key2'}],
            :mfa     => mfa).
            and_return(delete_response)

          collection.delete(objects, {:mfa => mfa})

        end

      end

      context '#delete_if' do

        it 'enumerates the collection and deletes objects that return true' do

          # make this collection represent 3000 objects with numerical keys
          objects = (1..3000).map {|n| bucket.objects[n.to_s] }
          stub = collection.stub(:each)
          objects.each do |obj|
            stub = stub.and_yield(obj)
          end

          # we only want to delete those with even keys
          even_keys = objects.select{|o| o.key.to_i % 2 == 0 }.map do |o|
            { :key => o.key }
          end

          client.should_receive(:delete_objects).ordered.with(
            :bucket_name => bucket.name, :quiet => true,
            :objects => even_keys[0..999]).
            and_return(delete_response)

          client.should_receive(:delete_objects).ordered.with(
            :bucket_name => bucket.name, :quiet => true,
            :objects => even_keys[1000..1499]).
            and_return(delete_response)

          collection.delete_if do |obj|
            obj.key.to_i % 2 == 0
          end

        end

      end

      context '#delete_all' do

        it 'calls #delete on each batch of the collection' do

          # make this collection represent 3000 objects with numerical keys
          objects = (1..3000).map {|n| bucket.objects[n.to_s] }

          keys = objects.map{|o| { :key => o.key } }

          collection.stub(:each_batch).
            and_yield(objects[0..999]).
            and_yield(objects[1000..1999]).
            and_yield(objects[2000..2999])

          client.should_receive(:delete_objects).ordered.with(
            :bucket_name => bucket.name, :quiet => true,
            :objects => keys[0..999]).
            and_return(delete_response)
          client.should_receive(:delete_objects).ordered.with(
            :bucket_name => bucket.name, :quiet => true,
            :objects => keys[1000..1999]).
            and_return(delete_response)
          client.should_receive(:delete_objects).ordered.with(
            :bucket_name => bucket.name, :quiet => true,
            :objects => keys[2000..2999]).
            and_return(delete_response)

          collection.delete_all

        end

      end

    end
  end
end
