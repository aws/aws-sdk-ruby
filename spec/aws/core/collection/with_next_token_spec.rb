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

      describe WithNextToken do

        # This class is used for testing the WithNextToken module.
        # It implements the _each_item method and gets data in
        # batches from a data provider that accepts next_token
        # but not limit (batch size).
        class DummyCollectionWithNextToken

          include Collection::WithNextToken

          def initialize options
            @data_provider = DummyDataProvider.new(options)
          end

          attr_reader :data_provider

          protected

          def _each_item next_token, options = {}, &block

            options[:marker] = next_token if next_token

            resp = @data_provider.get_data(options)
            resp[:items].each do |item|
              yield(item)
            end

            # _each_item expects us to return a next toke when appropiate
            resp[:truncated] ? resp[:items].last : nil

          end

        end


        # Imitates a service that returns items in a fixed batch size,
        # where the batch size can not be controlled by a request
        # parameter.
        class DummyDataProvider

          # @param [Hash] options
          # @option options [Integer] size
          # @option options [Integer] batch_size
          def initialize options = {}
            @size = options[:size]
            @batch_size = options[:batch_size]
            @calls = []
          end

          attr_reader :calls

          # @param [Hash] options
          # @option options [Integer] :marker The last item from a
          #   previously truncated resp.
          # @return [Hash] Returns a response hash. hash
          def get_data options = {}

            @calls << options

            first = options[:marker] ? options[:marker] + 1 : 1
            last = [first + @batch_size - 1, @size].min
            resp = {}
            resp[:items] = (first..last).to_a
            resp[:truncated] = resp[:items] == [] ? false : resp[:items].last < @size
            resp

          end

        end

        let(:provider_opts) {{}}

        let(:collection) { DummyCollectionWithNextToken.new(provider_opts) }

        context '#each' do

          it 'yields once for each item in the collection' do
            provider_opts[:size] = 100
            provider_opts[:batch_size] = 10
            collection.to_a.should == (1..100).to_a
          end

          it 'limits the number of items returned' do
            provider_opts[:size] = 100
            provider_opts[:batch_size] = 10
            collection.enum(:limit => 3).to_a.should eq([1,2,3])
          end

          it 'returns a next_token when fewer than all items returned' do

            # the service will return up to 50 items at a time
            provider_opts[:size] = 100
            provider_opts[:batch_size] = 50

            # but the user only wants 3 items, we will have to return
            # a "simulated" next token that offsets us within the first
            # page of results
            next_token = collection.each(:limit => 3) {|item|}
            next_token.should eq({ :offset => 3 })

          end

          it 'returns nil if limit is greater than collection size' do

            # the "service" will return up to 100 items at a time, but there
            # are only a total of 50 items to return at the moment
            provider_opts[:size] = 50
            provider_opts[:batch_size] = 100

            # users asks for more than the current number of items
            next_token = collection.each(:limit => 70) {|item|}
            next_token.should eq(nil)

          end

          it 'accepts :next_token with an offset' do

            provider_opts[:size] = 30
            provider_opts[:batch_size] = 10

            opts = {
              :limit => 10,
              :next_token => { :offset => 9 },
            }

            collection.enum(opts).to_a.should eq((10..19).to_a)

          end

          it 'passes additional options to the data provider' do
            provider_opts[:size] = 10
            provider_opts[:batch_size] = 3
            collection.each(:foo => 'bar') {|item|}
            collection.data_provider.calls.first.should eq(:foo => 'bar')
          end

          it 'keeps getting data until all items are returned' do

            provider_opts[:size] = 10
            provider_opts[:batch_size] = 3

            collection.to_a.should eq((1..10).to_a)
            collection.data_provider.calls.count.should eq(4)
            collection.data_provider.calls.should eq([
              {},
              { :marker => 3 },
              { :marker => 6 },
              { :marker => 9 },
            ])

          end

        end

        context '#each_batch' do

          it 'yields items in batches of a size determined by the provider' do

            provider_opts[:size] = 10
            provider_opts[:batch_size] = 3

            sizes = []
            collection.each_batch do |batch|
              sizes << batch.size
            end

            sizes.should eq([3,3,3,1])

          end

          it 'accepts :limit' do

            provider_opts[:size] = 10
            provider_opts[:batch_size] = 3

            sizes = []
            collection.each_batch(:limit => 5) do |batch|
              sizes << batch.size
            end

            sizes.should eq([3,2])

          end

          it 'accepts :next_token without offset' do

            provider_opts[:size] = 10
            provider_opts[:batch_size] = 3

            sizes = []
            items = []
            opts = { :next_token => 3 }
            collection.each_batch(opts) do |batch|
              sizes << batch.size
              items += batch
            end

            sizes.should eq([3,3,1])
            items.should eq((4..10).to_a)

          end

          it 'accepts :next_token with offset' do

            provider_opts[:size] = 10
            provider_opts[:batch_size] = 3

            sizes = []
            items = []
            opts = { :next_token => { :token => 3, :offset => 1 }}
            collection.each_batch(opts) do |batch|
              sizes << batch.size
              items += batch
            end

            sizes.should eq([2,3,1])
            items.should eq((5..10).to_a)

          end

          it 'accepts offset without :next_token' do

            provider_opts[:size] = 10
            provider_opts[:batch_size] = 3

            sizes = []
            items = []
            opts = { :next_token => { :offset => 1 }}
            collection.each_batch(opts) do |batch|
              sizes << batch.size
              items += batch
            end

            sizes.should eq([2,3,3,1])
            items.should eq((2..10).to_a)

          end

          it 'accepts :next_token with :offset and :limit' do

            provider_opts[:size] = 10
            provider_opts[:batch_size] = 3

            sizes = []
            items = []
            opts = {
              :limit => 4,
              :next_token => { :token => 3, :offset => 1 },
            }
            collection.each_batch(opts) do |batch|
              sizes << batch.size
              items += batch
            end

            sizes.should eq([2,2])
            items.should eq((5..8).to_a)

          end

        end

        context '#in_groups_of' do

          before(:each) do
            provider_opts[:size] = 10
            provider_opts[:batch_size] = 3
          end

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
            collection.in_groups_of(2, :abc => 'xyz') {|group|}
            collection.data_provider.calls.should eq([
              { :abc => "xyz" },
              { :abc => "xyz", :marker => 3 },
              { :abc => "xyz", :marker => 6 },
              { :abc => "xyz", :marker => 9 }
            ])
          end

        end

        context '#enum' do

          it 'returns an enumerator' do
            # ruby versions name Enumerator differently
            collection.enum.class.name.should match(/Enumerator/)
          end

          it 'calls #each on the collection' do
            collection.should_receive(:each).with({})
            collection.enum.map{|n|n}
          end

          it 'passes along options' do
            collection.should_receive(:each).with(:foo => 'bar')
            collection.enum(:foo => 'bar').map{|n|n}
          end

          it 'makes no calls against the provider' do
            collection.enum
            collection.data_provider.calls.should eq([])
          end

        end

        context '#first' do

          before(:each) do
            provider_opts[:size] = 10
            provider_opts[:batch_size] = 5
          end

          it 'returns the first element' do
            collection.first.should eq(1)
          end

          it 'accepts :next_token' do
            collection.first(:next_token => 4).should eq(5)
          end

          it 'accepts custom options' do
            collection.first(:abc => 'xyz').should eq(1)
            collection.data_provider.calls.should eq([{ :abc => 'xyz' }])
          end

          it 'makes a single call against the data provider' do
            collection.first
            collection.data_provider.calls.should eq([{}])
          end

        end

        context '#page' do

          def new_collection size = 100, batch_size = 30
            provider_opts = {}
            provider_opts[:size] = size
            provider_opts[:batch_size] = batch_size
            DummyCollectionWithNextToken.new(provider_opts)
          end

          it 'returns a page result' do
            new_collection.page.should be_a(PageResult)
          end

          it 'defualts page size to 10' do
            collection = new_collection(100,30)
            collection.page.per_page.should eq(10)
            collection.page.to_a.should == (1..10).to_a
          end

          context '#collection' do

            it 'returns the collection that is being paged' do
              collection = new_collection
              collection.page.collection.should eq(collection)
            end

            it 'maintains the collection across paging requests' do
              collection = new_collection
              page = collection.page
              page.next_page.collection.should eq(collection)
            end

          end

          context '#next_token' do

            it 'returns a simulated next_token which is actually an offset' do
              collection = new_collection(20,20)
              page = collection.page(:per_page => 10)
              page.next_token.should eq(:offset => 10)
            end

            it 'returns a simulated next_token hash with a real next token' do
              collection = new_collection(10,3)
              page = collection.page(:per_page => 5)
              page.next_token.should eq(:token => 3, :offset => 2)
            end

            it 'converts :next_token of nil into the first page' do
              page = new_collection(20,10).page(:next_token => nil)
              page.to_a.should == (1..10).to_a
            end

            it 'converts :next_token of empty string into the first page' do
              page = new_collection(20,10).page(:next_token => '')
              page.to_a.should == (1..10).to_a
            end

            it 'returns a real next token when page and batch size lines up' do
              page = new_collection(30,10).page(:per_page => 10)
              page.next_token.should eq({ :token => 10 })
            end

            it 'returns an empty collection with :next_token is too large' do
              collection = new_collection(100,10)
              page = collection.page(:next_token => 200)
              page.next_token.should eq(nil)
              page.to_a.should eq([])
            end

          end

          context '#next_page' do

            it 'when page size is smaller than batch size' do

              # page size of 10, 30 items returned per get request
              collection = new_collection(35,30)

              # expected page sizes
              p1 = collection.page # 10 items
              p2 = p1.next_page    # 10 items
              p3 = p2.next_page    # 10 items
              p4 = p3.next_page    # 5  items

              p1.next_token.should eq({ :offset => 10 })
              p2.next_token.should eq({ :offset => 20 })
              p3.next_token.should eq({ :token => 30 })
              p4.next_token.should eq(nil)
              p4.last_page?.should eq(true)

              p1.to_a.should == (1..10).to_a
              p2.to_a.should == (11..20).to_a
              p3.to_a.should == (21..30).to_a
              p4.to_a.should == (31..35).to_a

            end

            it 'when page size is larger than batch size' do

              # page size of 10, 30 items returned per get request
              collection = new_collection(100,10)

              # expected page sizes
              p1 = collection.page(:per_page => 25)
              p2 = p1.next_page
              p3 = p2.next_page
              p4 = p3.next_page

              p1.next_token.should eq({ :token => 20, :offset => 5 })
              p2.next_token.should eq({ :token => 50 })
              p3.next_token.should eq({ :token => 70, :offset => 5 })
              p4.next_token.should eq(nil)
              p4.last_page?.should eq(true)

              p1.to_a.should == (1..25).to_a
              p2.to_a.should == (26..50).to_a
              p3.to_a.should == (51..75).to_a
              p4.to_a.should == (76..100).to_a

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
              provider_opts[:size] = 10
              provider_opts[:batch_size] = 10
              collection.page.collection.should eq(collection)
            end

          end


        end

      end

    end
  end
end
