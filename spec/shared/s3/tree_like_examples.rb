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

  shared_examples_for 'an S3 tree-like collection' do

    it_behaves_like 'an S3 prefixed collection'

    context '#as_tree' do

      it 'should return a Tree object' do
        tree = collection.as_tree
        tree.collection.should be(collection)
      end

      it 'should pass any additional options' do
        S3::Tree.should_receive(:new).
          with(collection,
               :foo => "bar",
               :prefix => nil)
        collection.as_tree(:foo => "bar")
      end

      it 'should pass the collection prefix by default' do
        prefixed = collection.with_prefix("foo")
        S3::Tree.should_receive(:new).
          with(prefixed,
               :prefix => "foo")
        prefixed.as_tree
      end

      it 'should allow the prefix to be overridden' do
        prefixed = collection.with_prefix("foo")
        S3::Tree.should_receive(:new).
          with(prefixed,
               :prefix => "bar")
        prefixed.as_tree(:prefix => "bar")
      end

    end

    context '#each' do

      let(:resp) { client.new_stub_for(list_method) }

      before(:each) do
        client.stub(list_method).and_return(resp)
      end

      it 'should pass the delimiter if provided' do
        client.should_receive(list_method).
          with(hash_including(:delimiter => '/'))
        collection.each(:delimiter => '/') { |u| }
      end

      context 'common prefixes' do

        before(:each) do
          resp.data[:common_prefixes] = [
            { :prefix => 'one' },
            { :prefix => 'two' },
          ]
        end

        it 'should yield a new collection for each prefix' do
          collection.select { |u| u.kind_of?(described_class) }.
            map { |c| c.prefix }.should == %w(one two)
        end

        it 'should pass the config' do
          collection.all? { |obj| obj.config.should be(config) }
        end

      end

    end

  end

end
