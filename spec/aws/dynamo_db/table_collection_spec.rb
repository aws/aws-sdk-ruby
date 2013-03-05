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

    describe TableCollection do

      let(:config) { stub_config }

      let(:client) { config.dynamo_db_client }

      let(:tables) { TableCollection.new(:config => config) }

      context '#create' do

        let(:response) { double("response", :data => {
          "TableDescription" => {
            "TableName" => "ResponseTable",
            "KeySchema" => {},
            "ProvisionedThroughput" => {},
          }
        })}

        it 'calls #create_table on the client' do
          client.should_receive(:create_table).with(
            :table_name => 'mytable',
            :key_schema => {
              :hash_key_element => {
                :attribute_name => 'id',
                :attribute_type => 'S',
              },
            },
            :provisioned_throughput => {
              :read_capacity_units => 11,
              :write_capacity_units => 12,
            }
          ).and_return(response)
          tables.create('mytable', 11, 12)
        end

        it 'accpets a :hash_key option' do
          client.should_receive(:create_table).with(hash_including(
            :key_schema => {
              :hash_key_element => {
                :attribute_name => 'username',
                :attribute_type => 'S',
              },
            }
          )).and_return(response)
          tables.create('mytable', 10, 10, :hash_key => { :username => :string })
        end

        it 'primary key elements can be numbers' do
          client.should_receive(:create_table).with(hash_including(
            :key_schema => {
              :hash_key_element => {
                :attribute_name => 'id',
                :attribute_type => 'N',
              },
            }
          )).and_return(response)
          tables.create('mytable', 10, 10, :hash_key => { :id => :number })
        end

        it 'accpets a :range_key option' do
          client.should_receive(:create_table).with(hash_including(
            :key_schema => {
              :hash_key_element => {
                :attribute_name => 'id',
                :attribute_type => 'S',
              },
              :range_key_element => {
                :attribute_name => 'child_id',
                :attribute_type => 'N',
              },
            }
          )).and_return(response)
          tables.create('mytable', 10, 10, :range_key => { :child_id => :number })
        end

      end

      context '#[]' do

        it 'should return a table with the correct name' do
          table = tables["MyTable"]
          table.should be_a(Table)
          table.name.should == "MyTable"
          table.config.should be(config)
        end

      end

      it_behaves_like "a pageable collection with limits" do

        let(:collection)     { tables }
        let(:client_method)  { :list_tables }
        let(:limit_key)      { :limit }
        let(:next_token_key) { :exclusive_start_table_name }

        def stub_next_token(response, token)
          response.data['LastEvaluatedTableName'] = token
        end

        def stub_n_members response, n
          response.data["TableNames"] = (1..n).map{|i| "table-#{i}" }
        end

        it_should_behave_like "a collection that yields models" do
          let(:member_class)  { Table }
        end

      end

    end

  end
end
