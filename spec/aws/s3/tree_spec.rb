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

    describe Tree do

      let(:collection) do
        Class.new(Array) do
          def each(*args, &block)
            super(&block)
          end
        end[*members]
      end

      let(:members) { [] }

      let(:tree) { Tree.new(collection) }

      context '#initialize' do

        it 'requires a collection' do
          lambda { Tree.new }.should raise_error(ArgumentError)
        end

        it 'stores the collection' do
          Tree.new(collection).collection.should be(collection)
        end

        it 'stores the prefix' do
          Tree.new(collection, :prefix => 'foo').prefix.should == 'foo'
        end

        it 'stores the delimiter' do
          Tree.new(collection, :delimiter => '|').delimiter.should == '|'
        end

        it 'stores the append setting' do
          Tree.new(collection, :append => false).append?.should == false
        end

      end

      context '#delimiter' do

        it 'defaults to /' do
          tree.delimiter.should == '/'
        end

      end

      context '#append?' do

        it 'defaults to true' do
          tree.append?.should == true
        end

      end

      context '#parent' do

        it 'should return nil' do
          tree.parent.should be_nil
        end

      end

      context '#children' do

        it 'should construct a child collection with the correct settings' do
          tree = Tree.new(collection,
                          :prefix => "foo",
                          :delimiter => ":",
                          :append => false)
          children = tree.children
          children.parent.should be(tree)
          children.should be_a(Tree::ChildCollection)
          children.delimiter.should == ":"
          children.prefix.should == "foo"
          children.append?.should be_false
        end

      end

      context '#inspect' do

        it 'should include the full path to the node' do
          tree = Tree.new(double("collection",
                                 :bucket => double("bucket",
                                                   :name => "foo"),
                                 :prefix => "bar"),
                          :prefix => "bar")
          tree.inspect.should == "<AWS::S3::Tree:foo:bar>"
        end

      end

    end

  end
end
