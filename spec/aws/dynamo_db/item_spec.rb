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

    describe Item do

      let(:config) { stub_config }

      let(:client) { config.dynamo_db_client }

      let(:table) { Table.new("MyTable", :config => config) }

      let(:item) { Item.new(table, "foo") }

      before(:each) do
        table.hash_key = [:id, :string]
      end

      it_should_behave_like "a resource object" do

        let(:identifiers) { ["MyTable", "h1", "r1"] }

        let(:comparison_instances) { [Item.new(Table.new("OtherTable"),
                                               "h1", "r1"),
                                      Item.new(table, "h1", "r2"),
                                      Item.new(table, "h2", "r1")] }

        let(:constructor_args) { [table, "h1", "r1"] }

      end

      context '#initialize' do

        it 'should store the table' do
          item.table.should be(table)
        end

        it 'should store the hash value' do
          described_class.new(table, "foo").hash_value.should == "foo"
        end

        it 'should store the range value' do
          described_class.new(table, "foo", "bar").range_value.should == "bar"
        end

      end

      context '#delete' do

        it 'should call assert_schema! on the table' do
          table.should_receive(:assert_schema!)
          item.delete
        end

        it 'should call delete_item' do
          client.should_receive(:delete_item).
            with(:table_name => "MyTable",
                 :key => {
                   :hash_key_element => { :s => "foo" }
                 })
          item.delete
        end

        it 'should pass the range key if it is in the schema' do
          table.range_key = [:range, :string]
          item = Item.new(table, "foo", "bar")
          client.should_receive(:delete_item).
            with(:table_name => "MyTable",
                 :key => {
                   :hash_key_element => { :s => "foo" },
                   :range_key_element => { :s => "bar" }
                 })
          item.delete
        end

        it 'should return nil' do
          item.delete.should be_nil
        end

        it_should_behave_like "a DynamoDB method accepting expectations" do
          let(:client_method) { :delete_item }
          def use_expectations(options)
            item.delete(options)
          end
        end

        it_should_behave_like "a DynamoDB method accepting :return" do
          let(:client_method) { :delete_item }
          def compute_value(args, block)
            item.delete(*args)
          end
        end

      end

      context '#attributes' do

        it 'should return an attribute collection' do
          attributes = item.attributes
          attributes.should be_an(AttributeCollection)
          attributes.item.should be(item)
          attributes.config.should be(config)
        end

      end

      context '#exists?' do

        let(:response) { double("response",
                                :request_type => :get_item,
                                :data => {}) }

        before(:each) { client.stub(:get_item).and_return(response) }

        it 'should call get_item requesting only the hash key' do
          client.should_receive(:get_item).
            with(:table_name => "MyTable",
                 :key => {
                   :hash_key_element => { :s => "foo" }
                 },
                 :attributes_to_get => ["id"]).
            and_return(response)
          item.exists?
        end

        it 'should return true if the response includes an "Item" key' do
          response.data["Item"] = {}
          item.exists?.should be_true
        end

        it 'should return false if the response does not include an "Item" key' do
          item.exists?.should be_false
        end

        it 'accepts a :consistent_read option' do
          client.should_receive(:get_item).
            with(hash_including(:consistent_read => true))
          item.exists?(:consistent_read => true)
        end

      end

      context '.new_from' do

        let(:hash_key) { double("hash key",
                                :name => "hash",
                                :type => :string) }

        let(:range_key) { double("range key",
                                 :name => "range",
                                 :type => :string) }

        before(:each) do
          table.stub(:hash_key).and_return(hash_key)
          table.stub(:range_key).and_return(range_key)
          table.stub(:assert_schema!)
        end

        context 'put_item' do

          let(:resp_obj) { {
              "hash" => { "S" => "foo" },
              "range" => { "S" => "bar" }
            } }

          it 'should assert the table schema' do
            table.should_receive(:assert_schema!)
            described_class.new_from(:put_item, resp_obj, table)
          end

          it 'should extract the hash value according to the schema' do
            described_class.new_from(:put_item, resp_obj, table).
              hash_value.should == "foo"
          end

          it 'should extract the range value according to the schema' do
            described_class.new_from(:put_item, resp_obj, table).
              range_value.should == "bar"
          end

          it 'should raise an error if the hash key is missing' do
            resp_obj.delete("hash")
            lambda { described_class.new_from(:put_item, resp_obj, table) }.
              should raise_error("missing hash key value in put_item response")
          end

          it 'should raise an error if the range key is missing' do
            resp_obj.delete("range")
            lambda { described_class.new_from(:put_item, resp_obj, table) }.
              should raise_error("missing range key value in put_item response")
          end

          context 'no range key' do

            let(:range_key) { nil }

            it 'should not extract the range value' do
              described_class.new_from(:put_item, resp_obj, table).
                range_value.should be_nil
            end

            it 'should not raise an error if the range key is missing' do
              resp_obj.delete("range")
              lambda { described_class.new_from(:put_item, resp_obj, table) }.
                should_not raise_error
            end

          end

        end

      end

    end

  end
end
