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

  describe DynamoDB do

    let(:config) { stub_config }

    let(:client) { config.dynamo_db_client }

    let(:dynamo_db) { DynamoDB.new(:config => config) }

    it_behaves_like 'a class that accepts configuration',
      :dynamo_db_client

    context '#tables' do

      it 'should return a tables collection' do
        tables = dynamo_db.tables
        tables.should be_a(DynamoDB::TableCollection)
        tables.config.should be(dynamo_db.config)
      end

    end

    context '#batch_get' do

      it 'yeilds a batch get object' do
        yielded = nil
        dynamo_db.batch_get do |batch|
          yielded = batch
        end
        yielded.should be_a(DynamoDB::BatchGet)
      end

      it 'returns the batch enumerator' do
        enumerator = double('enumerator')
        batch = double('batch')
        batch.should_receive(:to_enum).and_return(enumerator)
        DynamoDB::BatchGet.should_receive(:new).and_return(batch)
        dynamo_db.batch_get {|batch|}.should be(enumerator)
      end

    end

    context '#batch_write' do

      let(:resp) {
        r = client.stub_for(:batch_write_item)
        r.data['UnprocessedItems'] = {}
        r
      }

      it 'calls #batch_write_item on the client' do

        client.should_receive(:batch_write_item).with(:request_items=>{
          "table1"=>[
            {:put_request=>{:item=>{"id"=>{:n=>"1"}}}},
            {:put_request=>{:item=>{"id"=>{:n=>"2"}}}},
            {:delete_request=>{:key=>{:hash_key_element=>{:n=>"3"}}}},
            {:delete_request=>{:key=>{:hash_key_element=>{:n=>"4"}}}}
          ],
          "table2"=>[
            {:put_request=>{:item=>{"id"=>{:s=>"1"}}}},
            {:put_request=>{:item=>{"id"=>{:s=>"2"}}}},
            {:delete_request=>{:key=>{:hash_key_element=>{:s=>"3"}}}},
            {:delete_request=>{:key=>{:hash_key_element=>{:s=>"4"}}}}
          ]
        }).and_return(resp)

        dynamo_db.batch_write do |batch|
          batch.put('table1', [{ :id => 1}, {:id => 2}])
          batch.delete('table1', [3,4])
          batch.put('table2', [{ :id => '1'}, {:id => '2'}])
          batch.delete('table2', %w(3 4))
        end


      end

    end

  end

end
