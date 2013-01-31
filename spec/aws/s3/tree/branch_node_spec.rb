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
    class Tree
      describe BranchNode do

        let(:collection) { [] }

        let(:parent) { double("parent") }

        let(:node) { BranchNode.new(parent, collection) }

        before(:each) do
          collection.stub(:prefix).and_return("foo")
        end

        context '#initialize' do

          it 'should store the parent' do
            BranchNode.new(parent, collection).parent.should be(parent)
          end

          it 'should store the collection' do
            BranchNode.new(parent, collection).collection.should be(collection)
          end

          it 'should store the delimiter' do
            BranchNode.new(parent, collection, :delimiter => ":").
              delimiter.should == ":"
          end

          it 'should store the append status' do
            BranchNode.new(parent, collection, :append => false).
              append?.should be_false
          end

        end

        context '#prefix' do

          it 'returns the prefix of the collection' do
            node.prefix.should == "foo"
          end

        end

        context '#delimiter' do

          it 'defaults to /' do
            node.delimiter.should == "/"
          end

        end

        context '#append?' do

          it 'defaults to true' do
            node.append?.should be_true
          end

        end

        context '#branch?' do

          it 'returns true' do
            node.branch?.should == true
          end

        end

        context '#leaf?' do

          it 'returns false' do
            node.leaf?.should == false
          end

        end

        context '#children' do

          it 'should construct a child collection with the correct settings' do
            node = BranchNode.new(parent, collection,
                                  :delimiter => ":",
                                  :append => false)
            children = node.children
            children.parent.should be(node)
            children.should be_a(ChildCollection)
            children.delimiter.should == ":"
            children.prefix.should == "foo"
            children.append?.should be_false
          end

        end

        context '#inspect' do

          it 'should include the full path to the node' do
            node = BranchNode.new(parent,
                                  double("collection",
                                         :bucket => double("bucket",
                                                           :name => "foo"),
                                         :prefix => "bar"),
                                  :prefix => "bar")
            node.inspect.should == "<AWS::S3::Tree::BranchNode:foo:bar>"
          end

        end

        context '#as_tree' do

          it 'should construct a Tree with the same prefix and settings' do
            node = BranchNode.new(parent, collection,
                                  :delimiter => ":",
                                  :append => false)
            tree = node.as_tree
            tree.should be_a(Tree)
            tree.delimiter.should == ":"
            tree.prefix.should == "foo"
            tree.append?.should be_false
          end

        end

      end
    end
  end
end
