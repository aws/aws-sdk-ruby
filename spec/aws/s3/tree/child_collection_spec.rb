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

      describe ChildCollection do

        let(:collection) do
          # An array that accepts (and ignores) arguments to #each
          Class.new(Array) do
            def each(*args, &block)
              super(&block)
            end
          end[*members]
        end

        let(:members) { [] }

        let(:children) { described_class.new(parent, collection) }

        let(:parent) { double("parent") }

        it_behaves_like 'enumerable'

        context '#initialize' do

          it 'stores the parent' do
            described_class.new(parent, collection).parent.should be(parent)
          end

          it 'stores the collection' do
            described_class.new(parent, collection).collection.should be(collection)
          end

          it 'stores the prefix' do
            described_class.new(parent, collection, :prefix => 'foo').prefix.should == 'foo'
          end

          it 'stores the delimiter' do
            described_class.new(parent, collection, :delimiter => '|').delimiter.should == '|'
          end

          it 'stores the append setting' do
            described_class.new(parent, collection, :append => false).append?.should == false
          end

        end

        context '#delimiter' do

          it 'defaults to /' do
            children.delimiter.should == '/'
          end

        end

        context '#append?' do

          it 'defaults to true' do
            children.append?.should == true
          end

        end

        context '#each' do

          it 'calls each with the delimiter' do
            collection.should_receive(:each).with(:delimiter => '/')
            children.each { |node| }
          end

          it 'calls each with the prefix if specified' do
            children = described_class.new(parent, collection, :prefix => 'foo/')
            collection.should_receive(:with_prefix).with("foo/").
              and_return(double("prefixed collection",
                                :each => nil))
            children.each { |node| }
          end

          it 'appends the delimiter to the prefix when missing' do
            children = described_class.new(parent, collection, :prefix => 'photos')
            collection.should_receive(:with_prefix).with("photos/").
              and_return(double("prefixed collection",
                                :each => nil))
            children.each {|node|}
          end

          it 'does not append the delimiter when append? is false' do
            children = described_class.new(parent, collection, :prefix => 'photos', :append => false)
            collection.should_receive(:with_prefix).with("photos").
              and_return(double("prefixed collection",
                                :each => nil))
            children.each {|node|}
          end

          context 'yields' do

            let(:members) { [double("obj 1",
                                    :key => "foo"),
                             double("obj 2",
                                    :key => "bar"),
                             double("collection 1",
                                    :prefix => "foo/"),
                             double("collection 2",
                                    :prefix => "bar/")] }

            let(:branches) { children.select {|node| node.branch? } }

            let(:leaves) { children.select {|node| node.leaf? } }

            it 'yields one leaf for each non-iterable object' do
              leaves.map { |l| l.key }.
                should == ["foo", "bar"]
            end

            it 'yields one branch for each iterable object' do
              branches.map { |b| b.prefix }.
                should == ["foo/", "bar/"]
            end

            it 'yields each branch with a child collection appropriate for the branch' do
              children = described_class.new(parent, collection,
                                             :append => false,
                                             :delimiter => ":")
              children.select { |b| b.branch? }.each do |branch|
                branch.children.delimiter.should == children.delimiter
                branch.children.append?.should == children.append?
                branch.children.prefix.should == branch.prefix
              end
            end

            it 'passes the parent to each node' do
              children.each { |child| child.parent.should be(children.parent) }
            end

          end

        end

      end

    end
  end
end
