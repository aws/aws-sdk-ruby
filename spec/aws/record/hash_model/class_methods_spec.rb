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
  module Record
    describe Model do

      before(:each) do
        AWS.config(:access_key_id => "id", :secret_access_key => "secret")
        klass.stub(:name).and_return("ExampleClass")
      end

      after(:each) do
        AWS.config(:access_key_id => nil, :secret_access_key => nil)
      end

      let(:klass) { Class.new(AWS::Record::HashModel) }

      context 'create_table' do

        let(:tables) { double("tables", :create => nil) }

        before(:each) do
          DynamoDB.stub_chain(:new, :tables).and_return(tables)
        end

        it 'calls create on the table collection' do
          tables.should_receive(:create).with(
            klass.name, 11, 12, :hash_key => { 'id' => :string })
          klass.create_table 11, 12
        end

        it 'accepts an optional :shard_name' do
          tables.should_receive(:create).with(
            'products-2', 100, 200, :hash_key => { 'id' => :string })
          klass.create_table 100, 200, :shard_name => 'products-2'
        end

        it 'prefixes the shard name with AWS::Record.table_prefix' do
          AWS::Record.stub(:table_prefix).and_return('prefix-')
          tables.should_receive(:create).with(
            "prefix-#{klass.name}", 100, 200, :hash_key => { 'id' => :string })
          klass.create_table 100, 200
        end

        it 'accepts an assignable hash key' do
          klass.string_attr :isbn, :hash_key => true
          tables.should_receive(:create).with(
            klass.name, 10, 5, :hash_key => { 'isbn' => :string })
          klass.create_table(10, 5)
        end

      end

      context 'dynamo_db_table' do

        it 'returns a table object' do
          klass.dynamo_db_table.should be_a(AWS::DynamoDB::Table)
        end

        it 'returns a table object with the correct name' do
          klass.dynamo_db_table.name.should == klass.name
        end

        it 'applies the table prefix to the shard name' do
          AWS::Record.stub(:table_prefix).and_return('test-')
          klass.set_shard_name "table-name"
          klass.dynamo_db_table.name.should == "test-table-name"
        end

        it 'configures the schema' do
          klass.dynamo_db_table.hash_key.name.should == "id"
          klass.dynamo_db_table.hash_key.type.should == :string
        end

      end

      context '[]' do

        let(:data) {{
          'id' => 'item-name',
        }}

        let(:table) {
          DynamoDB::Table.new('shard-name', :config => stub_config)
        }

        before(:each) do
          klass.stub(:dynamo_db_table).and_return(table)
          table.stub_chain(:items, :[], :attributes, :to_h).and_return(data)
        end

        it 'returns an existing record' do
          klass['item-name'].should be_a(klass)
        end

        it 'populates the shard' do
          klass['item-name'].shard.should == table.name
        end

        it 'removes the table prefix' do
          AWS::Record.stub(:table_prefix).and_return('prefixed-')
          table.stub(:name).and_return('prefixed-shard-name')
          klass['item-name'].shard.should == 'shard-name'
        end

      end
    end
  end
end
