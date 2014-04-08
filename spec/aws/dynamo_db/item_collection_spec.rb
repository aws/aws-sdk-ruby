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
  class DynamoDB

    describe ItemCollection do

      let(:config) { stub_config }

      let(:client) { config.dynamo_db_client }

      let(:table) { Table.new("MyTable", :config => config) }

      let(:items) { ItemCollection.new(table) }

      before(:each) do
        table.hash_key = [:foo, :string]
      end

      context "#put" do

        let(:resp) { double("response",
                            :request_type => :put_item,
                            :data => {
                              "Attributes" => {
                                "foo" => { :s => "bar" }
                              }
                            }) }

        let(:required_attributes) { { :foo => "bar" } }

        it 'should call put_item' do
          client.should_receive(:put_item).
            with(:table_name => "MyTable",
                 :item => { "foo" => { :s => "bar" } })
          items.put("foo" => "bar")
        end

        it 'should work with symbol keys' do
          client.should_receive(:put_item).
            with(:table_name => "MyTable",
                 :item => { "foo" => { :s => "bar" } })
          items.put(:foo => "bar")
        end

        it 'should raise type errors with the correct context' do
          lambda { items.put(:foo => [12, "foo"]) }.
            should raise_error("mixed types in value for attribute foo")
        end

        it 'should call assert_schema! on the table' do
          table.should_receive(:assert_schema!)
          Item.stub(:new_from).and_return("foo")
          items.put(:foo => "bar")
        end

        it_should_behave_like "a DynamoDB method accepting expectations" do
          let(:client_method) { :put_item }
          def use_expectations(options)
            items.put({ :foo => "bar" }, options)
          end
        end

        it_should_behave_like "a DynamoDB method accepting :return" do
          let(:client_method) { :put_item }
          let(:required_args) { [{ :foo => "bar" }] }
          def compute_value(args, block)
            items.put(*args)
          end
        end

      end

      context '#[]' do

        it 'returns an item with the specified hash value' do
          item = items["hash"]
          item.should be_an(Item)
          item.hash_value.should == "hash"
          item.range_value.should be_nil
          item.table.should be(table)
          item.config.should be(config)
        end

        it 'should assert the table schema' do
          table.should_receive(:assert_schema!)
          items["hash"]
        end

      end

      context '#at' do

        it 'returns an item with the specified hash value' do
          item = items.at("hash")
          item.should be_an(Item)
          item.hash_value.should == "hash"
          item.range_value.should be_nil
          item.table.should be(table)
          item.config.should be(config)
        end

        it 'should assert the table schema' do
          table.should_receive(:assert_schema!)
          items.at("hash")
        end

        context 'when the table has a range key' do

          it 'requires a range value' do
            table.range_key = [:range, :number]
            lambda { items.at("hash") }.
              should raise_error(ArgumentError,
                                 "a range key value is required for this table")
          end

          it 'accepts a range value' do
            table.range_key = [:range, :number]
            items.at("hash", 12).range_value.should == 12
          end

        end

      end

      context '#where' do

        context 'with a hash' do

          it 'should add a scan filter with equality conditions' do
            items.where(:foo => "bar",
                        :baz => 12).
              scan_filters.should == {
              "foo" => {
                :attribute_value_list => [{ :s => "bar" }],
                :comparison_operator => "EQ"
              },
              "baz" => {
                :attribute_value_list => [{ :n => 12.to_s }],
                :comparison_operator => "EQ"
              }
            }
          end

          it 'should be chainable' do
            items.where(:foo => "bar").
              where(:baz => 12).
              scan_filters.should == {
              "foo" => {
                :attribute_value_list => [{ :s => "bar" }],
                :comparison_operator => "EQ"
              },
              "baz" => {
                :attribute_value_list => [{ :n => 12.to_s }],
                :comparison_operator => "EQ"
              }
            }
          end

          it 'should add a NULL filter for nil values' do
            items.where(:foo => nil).
              scan_filters.should == {
              "foo" => {
                :attribute_value_list => [],
                :comparison_operator => "NULL"
              }
            }
          end

          it 'should add a BETWEEN filter for range values' do
            items.where(:foo => 1..100).
              scan_filters.should == {
              "foo" => {
                :attribute_value_list => [{ :n => 1.to_s },
                                          { :n => 100.to_s }],
                :comparison_operator => "BETWEEN"
              }
            }
          end

          it 'should raise an error if conflicting filters are added' do
            lambda do
              items.where("foo").equals("bar").
                and("foo" => "baz")
            end.should raise_error(ArgumentError,
                                   "conflicting filters for attribute foo")
          end

        end

        context 'with an attribute name' do

          it 'should return a filter builder' do
            items.where("foo").should be_an(ItemCollection::FilterBuilder)
          end

          it 'should set the attribute name' do
            items.where("foo").attribute.should == "foo"
          end

          it 'should work for symbols' do
            items.where(:foo).attribute.should == "foo"
          end

          it 'should set the original collection' do
            items.where(:foo).items.should be(items)
          end

          it 'should be chainable' do
            items.where(:foo).equals("bar").
              where(:baz).equals(12).
              scan_filters.should == {
              "foo" => {
                :attribute_value_list => [{ :s => "bar" }],
                :comparison_operator => "EQ"
              },
              "baz" => {
                :attribute_value_list => [{ :n => 12.to_s }],
                :comparison_operator => "EQ"
              }
            }
          end

          it 'should raise an error if conflicting filters are added' do
            lambda do
              items.where("foo").equals("bar").
                and("foo").less_than(12)
            end.should raise_error(ArgumentError,
                                   "conflicting filters for attribute foo")
          end

          shared_examples_for "DynamoDB scan filter operator" do

            it "should produce the right scan filter" do
              items.where("foo").send(method, *args).
                scan_filters.should == {
                "foo" => {
                  :attribute_value_list => filter_value_list,
                  :comparison_operator => operator
                }
              }
            end

          end

          context 'binary operators' do

            let(:args) { ["bar"] }
            let(:filter_value_list) { [{ :s => "bar" }] }

            context '#equals' do
              it_should_behave_like "DynamoDB scan filter operator" do
                let(:method) { :equals }
                let(:operator) { "EQ" }
              end
            end

            context '#not_equal_to' do
              it_should_behave_like "DynamoDB scan filter operator" do
                let(:method) { :not_equal_to }
                let(:operator) { "NE" }
              end
            end

            context '#less_than' do
              it_should_behave_like "DynamoDB scan filter operator" do
                let(:method) { :less_than }
                let(:operator) { "LT" }
              end
            end

            context '#greater_than' do
              it_should_behave_like "DynamoDB scan filter operator" do
                let(:method) { :greater_than }
                let(:operator) { "GT" }
              end
            end

            context '#lte' do
              it_should_behave_like "DynamoDB scan filter operator" do
                let(:method) { :lte }
                let(:operator) { "LE" }
              end
            end

            context '#gte' do
              it_should_behave_like "DynamoDB scan filter operator" do
                let(:method) { :gte }
                let(:operator) { "GE" }
              end
            end

            context '#contains' do
              it_should_behave_like "DynamoDB scan filter operator" do
                let(:method) { :contains }
                let(:operator) { "CONTAINS" }
              end
            end

            context '#does_not_contain' do
              it_should_behave_like "DynamoDB scan filter operator" do
                let(:method) { :does_not_contain }
                let(:operator) { "NOT_CONTAINS" }
              end
            end

            context '#begins_with' do
              it_should_behave_like "DynamoDB scan filter operator" do
                let(:method) { :does_not_contain }
                let(:operator) { "NOT_CONTAINS" }
              end
            end

          end

          context 'unary operators' do

            let(:args) { [] }
            let(:filter_value_list) { [] }

            context '#not_null' do
              it_should_behave_like "DynamoDB scan filter operator" do
                let(:method) { :not_null }
                let(:operator) { "NOT_NULL" }
              end
            end

            context '#is_null' do
              it_should_behave_like "DynamoDB scan filter operator" do
                let(:method) { :is_null }
                let(:operator) { "NULL" }
              end
            end

          end

          context '#in' do
            it_should_behave_like "DynamoDB scan filter operator" do
              let(:method) { :in }
              let(:operator) { "IN" }
              let(:args) { ["foo", "bar", "baz"] }
              let(:filter_value_list) { [{ :s => "foo" },
                                         { :s => "bar" },
                                         { :s => "baz" }] }
            end
          end

          context '#between' do
            it_should_behave_like "DynamoDB scan filter operator" do
              let(:method) { :between }
              let(:operator) { "BETWEEN" }
              let(:args) { ["foo", "bar"] }
              let(:filter_value_list) { [{ :s => "foo" },
                                         { :s => "bar" }] }
            end
          end

        end

      end

      context '#each' do

        it 'should pass the scan filters with each request' do
          client.should_receive(:scan).
            with(hash_including(:scan_filter => {
                                  "foo" => "bar"
                                })).
            and_return(double("scan response",
                              :data => { "Items" => [] }))
          items.stub(:scan_filters).and_return({ "foo" => "bar" })
          items.each { |i| }
        end

        it 'should accept :where with a hash' do
          obj = Object.new
          obj.should_receive(:call).with("FOO")
          filtered = double("filtered")
          items.should_receive(:where).with(:foo => "bar").
            and_return(filtered)
          filtered.should_receive(:each).
            and_yield("FOO")
          items.each(:where => { :foo => "bar" }) do |v|
            obj.call(v)
          end
        end

      end

      context '#select' do

        it 'should return an enumerator with :item_data set' do
          items.stub(:enumerator).with(:item_data => true).and_return("FOO")
          items.select.should == "FOO"
        end

        it 'should pass :attributes_to_get with the attribute names' do
          items.stub(:enumerator).with(:item_data => true,
                                       :attributes_to_get => ["foo", "bar"]).
            and_return("FOO")
          items.select("foo", "bar").should == "FOO"
        end

        it 'should work for symbol attribute names' do
          items.stub(:enumerator).with(:item_data => true,
                                       :attributes_to_get => ["foo", "bar"]).
            and_return("FOO")
          items.select(:foo, :bar).should == "FOO"
        end

        it 'should pass additional options to #enumerator' do
          items.should_receive(:enumerator).
            with(:foo => "bar",
                 :item_data => true)
          items.select(:foo => "bar")
        end

        context 'block form' do

          it 'should call #each with :item_data' do
            obj = Object.new
            obj.should_receive(:call).with("FOO")
            items.should_receive(:each).
              with(:item_data => true).
              and_yield("FOO")
            items.select { |value| obj.call(value) }
          end

        end

      end

      context '#count' do

        it 'should sum the enumerator with :count set to true' do
          items.stub(:enumerator).with(:count => true).
            and_return([1, 2, 3])
          items.count.should == 6
        end

        it 'should pass :max_requests as :limit' do
          items.should_receive(:enumerator).with(:count => true,
                                                 :limit => 10).
            and_return([])
          items.count(:max_requests => 10)
        end

        it 'should accept :limit as an upper bound for the count' do
          items.stub(:enumerator => [1, 2, 3])
          items.count(:limit => 2).should == 2
        end

        it 'should return the count if it is lower than :limit' do
          items.stub(:enumerator => [1, 2, 3])
          items.count(:limit => 10).should == 6
        end

        it 'should set :batch_size to :limit by default' do
          items.should_receive(:enumerator).
            with(hash_including(:batch_size => 10)).
            and_return([])
          items.count(:limit => 10)
        end

        it 'should accept both :batch_size and :limit at the same time' do
          items.should_receive(:enumerator).
            with(hash_including(:batch_size => 100)).
            and_return([])
          items.count(:limit => 10,
                      :batch_size => 100)
        end

        it 'should pass additional options to the enumerator' do
          items.should_receive(:enumerator).with(:count => true,
                                                 :foo => "bar").
            and_return([])
          items.count(:foo => "bar")
        end

      end

      context '#query' do

        it 'should return an enumerator with :query set' do
          items.stub(:enumerator).
            with(hash_including(:query => true)).
            and_return("FOO")
          items.query(:hash_value => "hash").should == "FOO"
        end

        context ':hash_value option' do

          it 'should pass the value as :hash_key_value' do
            items.should_receive(:enumerator).
              with(hash_including(:hash_key_value =>
                                  { :s => "foo" }))
            items.query(:hash_value => "foo")
          end

          it 'should raise an error if the hash value is not provided' do
            lambda { items.query }.
              should raise_error(ArgumentError,
                                 "a hash key value is required")
          end

        end

        context ':range_value option' do

          it 'should use EQ for string values' do
            items.should_receive(:enumerator).
              with(hash_including(:range_key_condition =>
                                  { :attribute_value_list =>
                                    [{ :s => "foo" }],
                                    :comparison_operator => "EQ" }))
            items.query(:hash_value => "hash",
                        :range_value => "foo")
          end

          it 'should use EQ for numeric values' do
            items.should_receive(:enumerator).
              with(hash_including(:range_key_condition =>
                                  { :attribute_value_list =>
                                    [{ :n => 12.to_s }],
                                    :comparison_operator => "EQ" }))
            items.query(:hash_value => "hash",
                        :range_value => 12)
          end

          it 'should use BETWEEN for range values' do
            items.should_receive(:enumerator).
              with(hash_including(:range_key_condition =>
                                  { :attribute_value_list =>
                                    [{ :n => 1.to_s },
                                     { :n => 100.to_s }],
                                    :comparison_operator => "BETWEEN" }))
            items.query(:hash_value => "hash",
                        :range_value => 1..100)
          end

        end

        shared_examples_for "DynamoDB range key operator" do |option, operator|
          context ":#{option} option" do
            it "should use the #{operator} operator" do
              items.should_receive(:enumerator).
                with(hash_including(:range_key_condition =>
                                    { :attribute_value_list =>
                                      [{ :s => "foo" }],
                                      :comparison_operator => operator }))
              items.query(:hash_value => "hash",
                          option => "foo")
            end
          end
        end

        it_should_behave_like("DynamoDB range key operator",
                              :range_less_than, "LT")

        it_should_behave_like("DynamoDB range key operator",
                              :range_greater_than, "GT")

        it_should_behave_like("DynamoDB range key operator",
                              :range_lte, "LE")

        it_should_behave_like("DynamoDB range key operator",
                              :range_gte, "GE")

        it_should_behave_like("DynamoDB range key operator",
                              :range_begins_with, "BEGINS_WITH")

        it 'should raise an error if multiple range conditions are specified' do
          lambda { items.query(:hash_value => "hash",
                               :range_value => 1..100,
                               :range_less_than => 50) }.
            should raise_error(ArgumentError,
                               "only one range key condition is supported")
        end

        context ':select option' do

          it 'should set :item_data to true' do
            items.stub(:enumerator).
              with(hash_including(:item_data => true)).
              and_return("FOO")
            items.query(:hash_value => "hash",
                        :select => ["foo", "bar"])
          end

          it 'should not pass :select through' do
            items.stub(:enumerator).
              with(hash_not_including(:select))
            items.query(:hash_value => "hash",
                        :select => ["foo", "bar"])
          end

          it 'should accept a list of attribute names to get' do
            items.stub(:enumerator).
              with(hash_including(:attributes_to_get => ["foo", "bar"])).
              and_return("FOO")
            items.query(:hash_value => "hash",
                        :select => ["foo", "bar"]).should == "FOO"
          end

          it 'should also accept :attributes_to_get' do
            items.stub(:enumerator).
              with(hash_including(
                :attributes_to_get => ["foo", "bar"],
                :item_data => true)).
              and_return("FOO")
            items.query(:hash_value => "hash",
                        :attributes_to_get => ["foo", "bar"]).should == "FOO"
          end

          it 'should work for symbol attribute names' do
            items.stub(:enumerator).
              with(hash_including(:attributes_to_get => ["foo", "bar"])).
              and_return("FOO")
            items.query(:hash_value => "hash",
                        :select => [:foo, :bar]).should == "FOO"
          end

          it 'should not pass :attributes_to_get for the special value :all' do
            items.stub(:enumerator).
              with(hash_not_including(:attributes_to_get))
            items.query(:hash_value => "hash",
                        :select => :all)
          end

        end

        it 'should pass additional options to #enumerator' do
          items.should_receive(:enumerator).
            with(hash_including(:foo => "bar"))
          items.query(:hash_value => "hash",
                      :foo => "bar")
        end

        context 'block form' do

          it 'should call #each with :query' do
            obj = Object.new
            obj.should_receive(:call).with("FOO")
            items.should_receive(:each).
              with(hash_including(:query => true)).
              and_yield("FOO")
            items.query(:hash_value => "hash") { |value| obj.call(value) }
          end

        end

      end

      it_should_behave_like "a pageable collection with limits" do

        let(:collection)      { items }
        let(:client_method)   { :scan }
        let(:limit_key)       { :limit }
        let(:next_token_key)  { :exclusive_start_key }
        let(:request_options) {
          { :table_name => "MyTable", :attributes_to_get => ["foo"] }
        }

        def stub_n_members response, n
          response.data["Items"] = (1..n).map do |i|
            { "foo" => { "S" => "hash#{i}" } }
          end
        end

        def stub_next_token response, token
          response.data["LastEvaluatedKey"] = token
        end

        it 'asks for both parts of a composite key' do
          table.range_key = [:bar, :number]
          client.should_receive(:scan).
            with(hash_including(:attributes_to_get => ["foo", "bar"]))
          collection.to_a
        end

        it_behaves_like "a collection that yields models" do

          let(:member_class) { Item }

          it 'should construct items with populated hash values' do
            items.map { |i| i.hash_value }.should == ["hash1", "hash2"]
          end

          context 'tables with range keys' do

            def stub_n_members response, n
              response.stub(:data).
                and_return("Items" => (1..n).map do |i|
                             { "foo" => { "S" => "hash#{i}" },
                               "bar" => { "N" => BigDecimal(i.to_s) } }
                           end)
            end

            it 'should construct items with populated range values' do
              table.range_key = [:bar, :number]
              items.map { |i| i.range_value }.should == [BigDecimal("1"),
                                                         BigDecimal("2")]
            end

          end

        end

        context ':query set to true' do

          let(:collection) { items.enumerator(:query => true) }

          it 'should make a query request' do
            client.should_receive(:query).
              with(request_options).
              and_return(response)
            collection.to_a
          end

        end

        context ':count set to true' do

          let(:collection) { items.enumerator(:count => true) }

          before(:each) do
            response.data["Count"] = 12
          end

          it 'should pass :count to the client' do
            client.should_receive(:scan).
              with(hash_including(:count => true))
            collection.each { |n| }
          end

          it 'should not pass :attributes_to_get to the client' do
            client.should_receive(:scan).
              with(hash_not_including(:attributes_to_get))
            collection.each { |n| }
          end

          it 'should yield the count for each page of results' do
            collection.to_a.should == [12]
          end

        end

        context ':item_data set to true' do

          let(:collection) { items.enumerator(enum_opts) }

          let(:enum_opts) { { :item_data => true } }

          before(:each) do
            table.hash_key = [:id, :string]
            response.data["Items"] =
              [{ "id" => { "S" => "1" },
                 "foo" => { "S" => "bar" } },
               { "id" => { "S" => "2" },
                 "foo" => { "S" => "baz" } }]
          end

          it 'should not pass :item_data to the client' do
            client.should_receive(:scan).
              with(hash_not_including(:item_data))
            collection.each { |i| }
          end

          it 'should not pass :attributes_to_get by default' do
            client.should_receive(:scan).
              with(hash_not_including(:attributes_to_get))
            collection.each { |i| }
          end

          it 'should pass :attributes_to_get as provided in the options' do
            client.should_receive(:scan).
              with(hash_including(:attributes_to_get => ["foo"]))
            enum_opts[:attributes_to_get] = ["foo"]
            collection.each { |i| }
          end

          it 'yields ItemData' do
            collection.each { |i| i.should be_an(ItemData) }
          end

          it 'populates the attributes' do
            collection.map { |i| i.attributes }.
              should == [{ "id" => "1",
                           "foo" => "bar" },
                         { "id" => "2",
                           "foo" => "baz" }]
          end

          context 'request asks for only non-primary key attributes' do

            before(:each) do
              response.request_options[:attributes_to_get] =
                ["foo"]
            end

            it 'does not populate the items' do
              collection.map { |i| i.item }.
                should == [nil, nil]
            end

          end

          context 'request asks only for the hash key' do

            before(:each) do
              response.request_options[:attributes_to_get] = ["id"]
            end

            it 'populates the items' do
              collection.map { |i| i.item.hash_value }.
                should == ["1", "2"]
            end

            context 'when the table has a composite key' do

              before(:each) { table.range_key = [:foo, :string] }

              it 'does not populate the items' do
                collection.map { |i| i.item }.
                  should == [nil, nil]
              end

            end

          end

          context 'request asks for the hash key and range key' do

            before(:each) do
              table.range_key = [:foo, :string]
              response.request_options[:attributes_to_get] =
                ["id", "foo"]
            end

            it 'populates the items with the correct hash values' do
              collection.map { |i| i.item.hash_value }.
                should == ["1", "2"]
            end

            it 'populates the items with the correct range values' do
              collection.map { |i| i.item.range_value }.
                should == ["bar", "baz"]
            end

          end

          context 'request asks for all attributes' do

            before(:each) do
              response.request_options[:attributes_to_get] = nil
            end

            it 'populates the items with correct hash key values' do
              collection.map { |i| i.item.hash_value }.
                should == ["1", "2"]
            end

            it 'populates the items with correct config' do
              collection.map { |i| i.item.config }.
                should == [config, config]
            end

            it 'populates the items with a nil range key' do
              collection.map { |i| i.item.range_value }.
                should == [nil, nil]
            end

            context 'table has a range key' do

              it 'populates the items with correct range key values' do
                table.range_key = [:foo, :string]
                collection.map { |i| i.item.range_value }.
                  should == ["bar", "baz"]
              end

            end

          end

        end

      end

    end

  end
end
