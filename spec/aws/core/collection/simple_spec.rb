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
  module Core
    module Collection

      describe Simple do

        class ExampleSimpleCollection

          include Collection::Simple

          def initialize size = 10
            @size = size
          end

          protected
          def _each_item options = {}, &block
            (1..@size).each do |n|
              if options[:even_only] and n % 2 == 1
                next
              end
              yield(n)
            end
          end

        end

        let(:collection) { ExampleSimpleCollection.new }

        context '#each' do

          it 'yields once for each item in the collection' do
            items = []
            collection.each do |item|
              items << item
            end
            items.should == [1,2,3,4,5,6,7,8,9,10]
          end

          it 'accepts the :limit option' do
            items = []
            collection.each(:limit => 3) do |item|
              items << item
            end
            items.should == [1,2,3]
          end

          it 'returns a next_token if limited' do
            next_token = collection.each(:limit => 3) {|item|}
            next_token.should == 4
          end

          it 'returns nil if limit is greater than collection size' do
            next_token = collection.each(:limit => 20) {|item|}
            next_token.should == nil
          end

          it 'accepts :next_token as an offset' do
            items = []
            collection.each(:next_token => 4) do |item|
              items << item
            end
            items.should == (4..10).to_a
          end

          it 'accpets a hash of options' do
            items = []
            collection.each(:even_only => true) do |item|
              items << item
            end
            items.should == [2,4,6,8,10]
          end

          it 'accepts multiple options' do
            opts = { :even_only => true, :limit => 2, :next_token => 3 }
            items = []
            collection.each(opts) do |item|
              items << item
            end

            # :next_token of 3 means skip items 1 and 2, in this case items
            # 1 and 2 are the first two even items (2 & 4)
            items.should == [6,8]
          end

        end

        context '#each_batch' do

          it 'yields all items in a single array to the first block' do
            batch = nil
            collection.each_batch do |b|
              batch = b
            end
            batch.should == (1..10).to_a
          end

          it 'accepts :limit' do
            batch = nil
            collection.each_batch(:limit => 3) do |b|
              batch = b
            end
            batch.should == [1,2,3]
          end

          it 'accepts :next_token' do
            batch = nil
            collection.each_batch(:next_token => 4) do |b|
              batch = b
            end
            batch.should == (4..10).to_a
          end

          it 'accpets custom options' do
            batch = nil
            collection.each_batch(:even_only => true) do |b|
              batch = b
            end
            batch.should == [2,4,6,8,10]
          end

          it 'accpets multiple options' do
            opts = { :even_only => true, :limit => 2, :next_token => 3 }
            batch = nil
            collection.each_batch(opts) do |b|
              batch = b
            end
            # :next_token of 3 means skip items 1 and 2, in this case items
            # 1 and 2 are the first two even items (2 & 4)
            batch.should == [6,8]
          end

        end

        context '#in_groups_of' do

          it 'yields items in arrays of the given size' do
            groups = []
            collection.in_groups_of(2) do |group|
              groups << group
            end
            groups.should == [[1,2],[3,4],[5,6],[7,8],[9,10]]
          end

          it 'accepts the :limit option' do
            groups = []
            collection.in_groups_of(2, :limit => 3) do |group|
              groups << group
            end
            groups.should == [[1,2],[3]]
          end

          it 'accepts custom options' do
            groups = []
            collection.in_groups_of(2, :even_only => true) do |group|
              groups << group
            end
            groups.should == [[2,4],[6,8],[10]]
          end

          it 'accepts multiple options' do
            opts = { :even_only => true, :limit => 2, :next_token => 3 }
            groups = []
            collection.in_groups_of(2, opts) do |group|
              groups << group
            end
            # :next_token of 3 means skip items 1 and 2, in this case items
            # 1 and 2 are the first two even items (2 & 4)
            groups.should == [[6,8]]
          end

        end

        context '#enum' do

          it 'returns an enumerator' do
            # ruby versions name Enumerator differently
            collection.enum.class.name.should =~ /Enumerator/
          end

          it 'calls #each on the collection' do
            collection.should_receive(:each).with({})
            collection.enum.map{|n|n}
          end

          it 'passes along options' do
            collection.should_receive(:each).with(:foo => 'bar')
            collection.enum(:foo => 'bar').map{|n|n}
          end

        end

        context '#first' do

          it 'returns the first element' do
            collection.first.should == 1
          end

          it 'accepts :next_token' do
            collection.first(:next_token => 3).should == 3
          end

          it 'accepts custom options' do
            collection.first(:even_only => true).should == 2
          end

          it 'accepts multiple options' do
            opts = { :even_only => true, :next_token => 3 }
            # :next_token of 3 means skip items 1 and 2, in this case items
            # 1 and 2 are the first two even items (2 & 4)
            collection.first(opts).should == 6
          end

        end

        context '#page' do

          def new_collection size
            ExampleSimpleCollection.new(size)
          end

          it 'returns a page result' do
            new_collection(20).page.should be_a(PageResult)
          end

          it 'defaults page size to 10' do
            collection = new_collection(20)
            collection.page.per_page.should == 10
            collection.page.to_a.should == (1..10).to_a
          end

          context '#collection' do

            it 'returns the collection that is being paged' do
              collection = new_collection(20)
              collection.page.collection.should == collection
            end

            it 'maintains the collection across paging requests' do
              collection = new_collection(20)
              page = collection.page
              page.next_page.collection.should == collection
            end

          end

          context '#next_token' do

            it 'returns a simulated next_token which is actually an offset' do
              collection = new_collection(20)
              page = collection.page(:per_page => 10)
              page.next_token.should == 11
            end

            it 'converts :next_token of nil into the first page' do
              page = collection.page(:next_token => nil)
              page.to_a.should == (1..10).to_a
            end

            it 'converts :next_token of empty string into the first page' do
              page = collection.page(:next_token => '')
              page.to_a.should == (1..10).to_a
            end

            it 'converts :next_token of 0 into the first page' do
              page = collection.page(:next_token => 0)
              page.to_a.should == (1..10).to_a
            end

            it 'converts :next_token of \'0\' into the first page' do
              page = collection.page(:next_token => '0')
              page.to_a.should == (1..10).to_a
            end

            it 'returns an empty collection with :next_token is too large' do
              collection = new_collection(100)
              page = collection.page(:next_token => 200)
              page.next_token.should == nil
              page.to_a.should == []
            end

          end

          context '#next_page' do

            it 'grabs the next page of items' do

              collection = new_collection(35)

              p1 = collection.page
              p2 = p1.next_page
              p3 = p2.next_page
              p4 = p3.next_page

              p1.to_a.should == (1..10).to_a
              p2.to_a.should == (11..20).to_a
              p3.to_a.should == (21..30).to_a
              p4.to_a.should == (31..35).to_a
              p4.next_token.should == nil

            end

            it 'works with alternate :per_page values' do

              collection = new_collection(35)

              p1 = collection.page(:per_page => 15)
              p2 = p1.next_page
              p3 = p2.next_page

              p1.to_a.should == (1..15).to_a
              p2.to_a.should == (16..30).to_a
              p3.to_a.should == (31..35).to_a
              p3.next_token.should == nil

            end

          end

          context '#collection' do

            it 'returns the entire list when it receives #collection' do
              collection.page.collection.should == collection
            end

          end

        end

      end
    end
  end
end
