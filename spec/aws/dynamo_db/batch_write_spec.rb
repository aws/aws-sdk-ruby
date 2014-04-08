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

    describe BatchWrite do

      let(:config) { stub_config }

      let(:client) { config.dynamo_db_client }

      let(:batch) { BatchWrite.new(:config => config) }

      let(:response) {
        resp = client.stub_for(:batch_write_item)
        resp.data['UnprocessedItems'] = {}
        resp
      }

      context '#write' do

        it 'accpets :put' do

          client.should_receive(:batch_write_item).with(:request_items => {
            "table1"=>[
              {:put_request=>{:item=>{"id"=>{:s=>"id1"}, "val"=>{:s=>"v1"}}}}
            ]
          }).and_return(response)

          batch.write('table1', :put => [{:id => 'id1', :val => 'v1' }])
          batch.process!

        end

        it 'accpets :delete' do

          client.should_receive(:batch_write_item).with(:request_items => {
            "table1"=>[
              {:delete_request=>{:key=>{:hash_key_element=>{:s=>"id1"}}}},
            ]
          }).and_return(response)

          batch.write('table1', :delete => ['id1'])
          batch.process!

        end

        it 'accepts multiple puts and deletes' do

          client.should_receive(:batch_write_item).with(:request_items => {
            "table1"=>[
              {:put_request=>{:item=>{"id"=>{:s=>"id1"}}}},
              {:put_request=>{:item=>{"id"=>{:s=>"id2"}}}},
              {:put_request=>{:item=>{"id"=>{:s=>"id3"}}}},
              {:delete_request=>{:key=>{:hash_key_element=>{:s=>"id4"}}}},
              {:delete_request=>{:key=>{:hash_key_element=>{:s=>"id5"}}}},
              {:delete_request=>{:key=>{:hash_key_element=>{:s=>"id6"}}}},
            ]
          }).and_return(response)

          batch.put('table1', [{:id=>'id1'},{:id=>'id2'},{:id=>'id3'}])
          batch.delete('table1', %w(id4 id5 id6))
          batch.process!
        end

        it 'can build a batch over multiple calls' do
          client.should_receive(:batch_write_item).with(:request_items => {
            "table1"=>[
              {:put_request=>{:item=>{"id"=>{:s=>"id1"}}}},
              {:put_request=>{:item=>{"id"=>{:s=>"id2"}}}},
              {:delete_request=>{:key=>{:hash_key_element=>{:s=>"id3"}}}},
              {:delete_request=>{:key=>{:hash_key_element=>{:s=>"id4"}}}}
            ],
            "table2"=>[
              {:put_request=>{:item=>{"id"=>{:s=>"id1"}}}},
              {:put_request=>{:item=>{"id"=>{:s=>"id2"}}}},
              {:delete_request=>{:key=>{:hash_key_element=>{:s=>"id3"}}}},
              {:delete_request=>{:key=>{:hash_key_element=>{:s=>"id4"}}}}
            ]
          }).and_return(response)
          batch.put('table1', [{:id=>'id1'}])
          batch.put('table1', [{:id=>'id2'}])
          batch.put('table2', [{:id=>'id1'}])
          batch.put('table2', [{:id=>'id2'}])
          batch.delete('table1', ['id3'])
          batch.delete('table1', ['id4'])
          batch.delete('table2', ['id3'])
          batch.delete('table2', ['id4'])
          batch.process!
        end

        it 'does nothing if no attributes added' do
          client.should_not_receive(:batch_write_item)
          batch.process!
        end

      end

      context 'unprocessed items' do

        it 'calls #batch_write_item again with converted unprocessed items' do

          # return a mix of puts and deletes across multiple tables

          continue_resp = client.new_stub_for(:batch_write_item)
          continue_resp.data['UnprocessedItems'] = {"table2"=>[{"DeleteRequest"=>{"Key"=>{"HashKeyElement"=>{"S"=>"13"}, "RangeKeyElement"=>{"N"=>"13"}}}}, {"PutRequest"=>{"Item"=>{"position"=>{"N"=>"4"}, "id"=>{"S"=>"4"}}}}, {"DeleteRequest"=>{"Key"=>{"HashKeyElement"=>{"S"=>"14"}, "RangeKeyElement"=>{"N"=>"14"}}}}, {"PutRequest"=>{"Item"=>{"position"=>{"N"=>"5"}, "id"=>{"S"=>"5"}}}}, {"DeleteRequest"=>{"Key"=>{"HashKeyElement"=>{"S"=>"15"}, "RangeKeyElement"=>{"N"=>"15"}}}}, {"PutRequest"=>{"Item"=>{"position"=>{"N"=>"6"}, "id"=>{"S"=>"6"}}}}, {"DeleteRequest"=>{"Key"=>{"HashKeyElement"=>{"S"=>"16"}, "RangeKeyElement"=>{"N"=>"16"}}}}], "table1"=>[{"DeleteRequest"=>{"Key"=>{"HashKeyElement"=>{"S"=>"13"}}}}, {"PutRequest"=>{"Item"=>{"id"=>{"S"=>"4"}, "value"=>{"N"=>"4"}}}}, {"DeleteRequest"=>{"Key"=>{"HashKeyElement"=>{"S"=>"14"}}}}, {"PutRequest"=>{"Item"=>{"id"=>{"S"=>"5"}, "value"=>{"N"=>"5"}}}}, {"DeleteRequest"=>{"Key"=>{"HashKeyElement"=>{"S"=>"15"}}}}, {"PutRequest"=>{"Item"=>{"id"=>{"S"=>"6"}, "value"=>{"N"=>"6"}}}}, {"DeleteRequest"=>{"Key"=>{"HashKeyElement"=>{"S"=>"16"}}}}]}

          client.should_receive(:batch_write_item).with(:request_items=>{"table1"=>[{:put_request=>{:item=>{"id"=>{:s=>"1"}, "value"=>{:n=>"1"}}}}, {:delete_request=>{:key=>{:hash_key_element=>{:s=>"11"}}}}, {:put_request=>{:item=>{"id"=>{:s=>"2"}, "value"=>{:n=>"2"}}}}, {:delete_request=>{:key=>{:hash_key_element=>{:s=>"12"}}}}, {:put_request=>{:item=>{"id"=>{:s=>"3"}, "value"=>{:n=>"3"}}}}, {:delete_request=>{:key=>{:hash_key_element=>{:s=>"13"}}}}, {:put_request=>{:item=>{"id"=>{:s=>"4"}, "value"=>{:n=>"4"}}}}, {:delete_request=>{:key=>{:hash_key_element=>{:s=>"14"}}}}, {:put_request=>{:item=>{"id"=>{:s=>"5"}, "value"=>{:n=>"5"}}}}, {:delete_request=>{:key=>{:hash_key_element=>{:s=>"15"}}}}, {:put_request=>{:item=>{"id"=>{:s=>"6"}, "value"=>{:n=>"6"}}}}, {:delete_request=>{:key=>{:hash_key_element=>{:s=>"16"}}}}], "table2"=>[{:put_request=>{:item=>{"id"=>{:s=>"1"}, "position"=>{:n=>"1"}}}}, {:delete_request=>{:key=>{:hash_key_element=>{:s=>"11"}, :range_key_element=>{:n=>"11"}}}}, {:put_request=>{:item=>{"id"=>{:s=>"2"}, "position"=>{:n=>"2"}}}}, {:delete_request=>{:key=>{:hash_key_element=>{:s=>"12"}, :range_key_element=>{:n=>"12"}}}}, {:put_request=>{:item=>{"id"=>{:s=>"3"}, "position"=>{:n=>"3"}}}}, {:delete_request=>{:key=>{:hash_key_element=>{:s=>"13"}, :range_key_element=>{:n=>"13"}}}}, {:put_request=>{:item=>{"id"=>{:s=>"4"}, "position"=>{:n=>"4"}}}}, {:delete_request=>{:key=>{:hash_key_element=>{:s=>"14"}, :range_key_element=>{:n=>"14"}}}}, {:put_request=>{:item=>{"id"=>{:s=>"5"}, "position"=>{:n=>"5"}}}}, {:delete_request=>{:key=>{:hash_key_element=>{:s=>"15"}, :range_key_element=>{:n=>"15"}}}}, {:put_request=>{:item=>{"id"=>{:s=>"6"}, "position"=>{:n=>"6"}}}}, {:delete_request=>{:key=>{:hash_key_element=>{:s=>"16"}, :range_key_element=>{:n=>"16"}}}}]}).
            ordered.and_return(continue_resp)

          client.should_receive(:batch_write_item).ordered.with(:request_items=>{"table2"=>[{:delete_request=>{:key=>{:hash_key_element=>{:s=>"13"}, :range_key_element=>{:n=>"13"}}}}, {:put_request=>{:item=>{"position"=>{:n=>"4"}, "id"=>{:s=>"4"}}}}, {:delete_request=>{:key=>{:hash_key_element=>{:s=>"14"}, :range_key_element=>{:n=>"14"}}}}, {:put_request=>{:item=>{"position"=>{:n=>"5"}, "id"=>{:s=>"5"}}}}, {:delete_request=>{:key=>{:hash_key_element=>{:s=>"15"}, :range_key_element=>{:n=>"15"}}}}, {:put_request=>{:item=>{"position"=>{:n=>"6"}, "id"=>{:s=>"6"}}}}, {:delete_request=>{:key=>{:hash_key_element=>{:s=>"16"}, :range_key_element=>{:n=>"16"}}}}], "table1"=>[{:delete_request=>{:key=>{:hash_key_element=>{:s=>"13"}}}}, {:put_request=>{:item=>{"id"=>{:s=>"4"}, "value"=>{:n=>"4"}}}}, {:delete_request=>{:key=>{:hash_key_element=>{:s=>"14"}}}}, {:put_request=>{:item=>{"id"=>{:s=>"5"}, "value"=>{:n=>"5"}}}}, {:delete_request=>{:key=>{:hash_key_element=>{:s=>"15"}}}}, {:put_request=>{:item=>{"id"=>{:s=>"6"}, "value"=>{:n=>"6"}}}}, {:delete_request=>{:key=>{:hash_key_element=>{:s=>"16"}}}}]}).
          and_return(response)

          (1..6).each do |n|

            m = n + 10

            batch.put('table1', [{ :id => n.to_s, :value => n }])
            batch.delete('table1', [m.to_s])
            batch.put('table2', [{ :id => n.to_s, :position => n }])
            batch.delete('table2', [[m.to_s, m]])
          end

          batch.process!


        end

      end

    end
  end
end
