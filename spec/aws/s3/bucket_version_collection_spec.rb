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
    describe BucketVersionCollection do

      let(:client) { config.s3_client }

      let(:config) { stub_config }

      let(:bucket) { Bucket.new('foo', :config => config) }

      let(:collection) { BucketVersionCollection.new(bucket) }

      it_should_behave_like "an S3 model object", Object.new

      let(:list_method) { :list_object_versions }

      it_should_behave_like "an S3 tree-like collection"

      it_behaves_like "an S3 paginated collection" do

        let(:limit_param) { :max_keys }

        def stub_markers(resp, value)
          resp.data[:next_key_marker] = value + '_key'
          resp.data[:next_version_id_marker] = value + '_version_id'
        end

        def expect_markers(client, value)
          client.should_receive(:list_object_versions).
            with(hash_including(:key_marker => value+"_key",
                                :version_id_marker => value+"_version_id"))
        end

        def stub_members(resp, quantity)
          resp.data[:contents] = [
            {
              :key => 'a',
              :version_id => 'v1',
              :delete_marker => true,
              :latest => true,
            },{
              :key => 'b',
              :version_id => 'v1',
              :delete_marker => false,
              :latest => false,
            },{
              :key => 'c',
              :version_id => 'v1',
              :delete_marker => false,
              :latest => true,
            }
          ].first(quantity)
        end

      end

      it_should_behave_like "enumerable"

      context '#intialize' do

        it 'requires bucket' do
          lambda {
            BucketVersionCollection.new
          }.should raise_error(ArgumentError)
        end

      end

      context '#[]' do

        it 'does not respond to #[]' do
          lambda {
            collection['foo']
          }.should raise_error(NoMethodError)
        end

      end

      context '#each' do

        let(:versions) {[
          { :key => 'a', :version_id => 'v1', :delete_marker => true, :latest => true },
          { :key => 'b', :version_id => 'v1', :delete_marker => false, :latest => false },
          { :key => 'c', :version_id => 'v1', :delete_marker => false, :latest => true },
        ]}

        let(:list) { client.new_stub_for(:list_object_versions) }

        before(:each) do
          list.data[:versions] = versions
          client.stub(:list_object_versions).and_return(list)
        end

        it 'calls #list_object_versions on the client' do
          client.should_receive(:list_object_versions).
            with(hash_including(:bucket_name => 'foo')).
            and_return(client.stub_for(:list_object_versions))
          collection.each{|version| }
        end

        it 'calls list_object_versions while the list is truncated' do

          r1 = client.new_stub_for(:list_object_versions)
          r2 = client.new_stub_for(:list_object_versions)
          r3 = client.new_stub_for(:list_object_versions)

          r1.data[:truncated] = true
          r2.data[:truncated] = true
          r3.data[:truncated] = false

          client.should_receive(:list_object_versions).
            exactly(3).times.
            and_return(r1,r2,r3)

          collection.each {|version|}

        end

        it 'yields once for each version' do
          yielded = []
          collection.each do |version|
            yielded << version
          end
          yielded.length.should == versions.length
        end

        it 'yields object versions' do
          yielded = []
          collection.each do |version|
            yielded << version
          end
          yielded.all?{|version| version.should be_a(ObjectVersion) }
        end

        it 'correctly populates delete marker states' do
          states = []
          collection.each do |version|
            states << version.delete_marker?
          end
          states.should == [true, false, false]
        end

        context '#with_prefix' do
          it 'calls #list_object_versions with a prefix' do
            client.should_receive(:list_object_versions).
              with(hash_including(:bucket_name => 'foo', :prefix => '/prefix'))
            collection.with_prefix('/prefix').each{|version| }
          end

          it 'replaces prefixes by default' do
            client.should_receive(:list_object_versions).
              with(hash_including(:prefix => 'bar'))
            collection.with_prefix('foo').with_prefix('bar').each{|version| }
          end

          it 'can replace prefixes' do
            client.should_receive(:list_object_versions).
              with(hash_including(:prefix => '/bar'))
            collection.with_prefix('/foo').with_prefix('/bar', :replace).each{|v|}
          end

          it 'can append prefixes' do
            client.should_receive(:list_object_versions).
              with(hash_including(:prefix => '/foo/bar'))
            collection.with_prefix('/foo').with_prefix('/bar', :append).each{|v|}
          end

          it 'can prepend prefixes' do
            client.should_receive(:list_object_versions).
              with(hash_including(:prefix => '/bar/foo'))
            collection.with_prefix('/foo').with_prefix('/bar', :prepend).each{|v|}
          end
        end
      end

      context '#latest' do
        it 'should return the first object' do

          list = client.new_stub_for(:list_object_versions)
          list.stub(:versions).
            and_return([double('version1', :key => '1').as_null_object,
                        double('version2', :key => '2').as_null_object,
                        double('version3', :key => '3').as_null_object])

          client.stub(:list_object_versions).and_return(list)

          collection.latest.key.should == '1'

        end
      end

    end
  end
end
