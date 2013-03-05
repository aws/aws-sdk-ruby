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

    describe BatchGet do

      let(:config) { stub_config }

      let(:client) { config.dynamo_db_client }

      let(:batch) { BatchGet.new(:config => config) }

      let(:response) {
        resp = client.stub_for(:batch_get_item)
        resp.data['Responses'] = {}
        resp.data['UnprocessedKeys'] = {}
        resp
      }

      context 'specifying attributes' do

        context '#table' do

          it 'omits :attributes_to_get when attributes == :all' do

            client.should_receive(:batch_get_item).with({
              :request_items => {
                "table1" => {:keys=>[{:hash_key_element=>{:s=>"hk1"}}]}
            }}).and_return(response)

            batch.table 'table1', :all, ['hk1']

            batch.to_a

          end

          it 'accepts a :consistent_read option for each table' do

            client.should_receive(:batch_get_item).with({
              :request_items => {
                "table1" => {
                  :keys=>[{:hash_key_element=>{:s=>"hk1"}}],
                  :consistent_read => true
                },
                "table2" => {
                  :keys=>[{:hash_key_element=>{:s=>"hk1"}}],
                  :consistent_read => false,
                },
                "table3" => {
                  :keys=>[{:hash_key_element=>{:s=>"hk1"}}],
                  # ommited consistent read
                },
            }}).and_return(response)

            batch.table 'table1', :all, ['hk1'], :consistent_read => true
            batch.table 'table2', :all, ['hk1'], :consistent_read => false
            batch.table 'table3', :all, ['hk1']  # ommited consistent read

            batch.to_a

          end

        end

        context '#items' do

          it 'omits :attributes_to_get when attributes == :all' do

            client.should_receive(:batch_get_item).with({
              :request_items => {
                "table1" => {:keys=>[{:hash_key_element=>{:s=>"hk1"}}]}
            }}).and_return(response)

            table = Table.new('table1', 'hk1')
            table.hash_key = [:id, :string]
            batch.items :all, [Item.new(table, 'hk1')]
            batch.to_a

          end

        end

      end

      context '#table' do

        context 'specifing the table' do

          it 'accepts a string table name' do

            client.should_receive(:batch_get_item).with(
              :request_items => { 'table1' => anything() }
            ).and_return(response)

            batch.table 'table1', :all, ['hk1']

            batch.to_a

          end

          it 'accepts a symbolized table name' do

            client.should_receive(:batch_get_item).with(
              :request_items => { 'table1' => anything() }
            ).and_return(response)

            batch.table :table1, :all, ['hk1']

            batch.to_a

          end

          it 'accepts a Table object' do

            client.should_receive(:batch_get_item).with(
              :request_items => { 'table1' => anything() }
            ).and_return(response)

            table = Table.new('table1')

            batch.table table, :all, ['hk1']

            batch.to_a

          end

          it 'can be called multiple times for the same table' do

            client.should_receive(:batch_get_item).with(
              :request_items => {
                "table1" => {
                  :keys => [
                    { :hash_key_element => { :s => "hk1" }},
                    { :hash_key_element => { :s => "hk2" }},
                  ]
                }
              }
            ).and_return(response)

            batch.table 'table1', :all, ['hk1']
            batch.table 'table1', :all, ['hk2']

            batch.to_a

          end

          it 'raises an error if the attributes differ' do

            batch.table 'table1', ['size','color'], ['hk1']
            lambda {
              batch.table 'table1', ['color'], ['hk2']
            }.should raise_error(ArgumentError, /attributes/)

          end

        end

        context 'specifing items' do

          it 'accepts an array of of hash key values' do

            client.should_receive(:batch_get_item).with(
              :request_items => {
                "table1" => {
                  :keys => [
                    { :hash_key_element => { :s => "hk1" }},
                    { :hash_key_element => { :s => "hk2" }},
                  ]
                }
              }
            ).and_return(response)

            batch.table 'table1', :all, ['hk1', 'hk2']

            batch.to_a

          end

          it 'accpets an array of hash and range key value pairs' do

            client.should_receive(:batch_get_item).with(
              :request_items => {
                "table1" => {
                  :keys => [
                    {:hash_key_element=>{:s=>"hk1"}, :range_key_element=>{:s=>"rk1"}},
                    {:hash_key_element=>{:s=>"hk1"}, :range_key_element=>{:s=>"rk2"}}
                  ]
                }
              }
            ).and_return(response)

            batch.table 'table1', :all, [%w(hk1 rk1), %w(hk1 rk2)]

            batch.to_a

          end

          it 'accepts an array of item objects' do

            client.should_receive(:batch_get_item).with(
              :request_items => {
                "table1" => {
                  :keys => [
                    {:hash_key_element=>{:s=>"hk1"}, :range_key_element=>{:s=>"rk1"}},
                    {:hash_key_element=>{:s=>"hk1"}, :range_key_element=>{:s=>"rk2"}}
                  ]
                }
              }
            ).and_return(response)

            table = Table.new('table1', 'hk1')
            table.hash_key = [:foo, :string]
            table.range_key = [:bar, :string]

            items = []
            items << Item.new(table, 'hk1', 'rk1')
            items << Item.new(table, 'hk1', 'rk2')

            batch.table(table, :all, items)
            batch.to_a

          end

        end

      end

      context '#items' do

        it 'accepts a list of items' do

            client.should_receive(:batch_get_item).with(
              :request_items => {
                "table1" => {
                  :keys => [
                    {:hash_key_element=>{:s=>"hk1"}, :range_key_element=>{:s=>"rk1"}},
                    {:hash_key_element=>{:s=>"hk1"}, :range_key_element=>{:s=>"rk2"}}
                  ]
                }
              }
            ).and_return(response)

            table = Table.new('table1', 'hk1')
            table.hash_key = [:foo, :string]
            table.range_key = [:bar, :string]

            items = []
            items << Item.new(table, 'hk1', 'rk1')
            items << Item.new(table, 'hk1', 'rk2')

            batch.items(:all, *items)
            batch.to_a

        end

        it 'accepts an array of items' do

            client.should_receive(:batch_get_item).with(
              :request_items => {
                "table1" => {
                  :keys => [
                    {:hash_key_element=>{:s=>"hk1"}, :range_key_element=>{:s=>"rk1"}},
                    {:hash_key_element=>{:s=>"hk1"}, :range_key_element=>{:s=>"rk2"}}
                  ]
                }
              }
            ).and_return(response)

            table = Table.new('table1', 'hk1')
            table.hash_key = [:foo, :string]
            table.range_key = [:bar, :string]

            items = []
            items << Item.new(table, 'hk1', 'rk1')
            items << Item.new(table, 'hk1', 'rk2')

            batch.items(:all, items)
            batch.to_a

        end

        it 'accepts items from different tables' do

            client.should_receive(:batch_get_item).with(
              :request_items => {
                "table1" => { :keys => [{:hash_key_element=>{:s=>"hk1"}}] },
                "table2" => {
                  :keys => [
                    {:hash_key_element=>{:s=>"hk1"}, :range_key_element=>{:s=>"rk1"}},
                    {:hash_key_element=>{:s=>"hk1"}, :range_key_element=>{:s=>"rk2"}}
                  ]
                }
              }
            ).and_return(response)

            t1 = Table.new('table1', 'hk1')
            t1.hash_key = [:foo, :string]

            t2 = Table.new('table2', 'hk1')
            t2.hash_key = [:foo, :string]
            t2.range_key = [:bar, :string]

            items = []
            items << Item.new(t1, 'hk1')
            items << Item.new(t2, 'hk1', 'rk1')
            items << Item.new(t2, 'hk1', 'rk2')

            batch.items(:all, items)
            batch.to_a

        end

      end

      context 'paged results' do

        let(:resp1) {
          resp = double('resp1', :data => {}).as_null_object
          resp.data['Responses'] = {}
          resp.data['UnprocessedKeys'] = {
            'table1' => {
              'AttributesToGet' => ['a1', 'a2'],
              'Keys' => [
                { 'HashKeyElement' => { 'S' => 'key1' } },
              ]
            },
            'table2' => {
              'Keys' => [
                {
                  'HashKeyElement' => { 'S' => 'key2' },
                  'RangeKeyElement' => { 'N' => 1 },
                },
                {
                  'HashKeyElement' => { 'S' => 'key2' },
                  'RangeKeyElement' => { 'N' => 2 },
                },
              ]
            }
          }
          resp
        }

        let(:resp2) {
          resp = client.new_stub_for(:batch_get_item)
          resp.stub(:size).and_return(10)
          resp.data['Responses'] = {}
          resp.data['UnprocessedKeys'] = {
            'table2' => {
              'Keys' => [
                {
                  'HashKeyElement' => { 'S' => 'key2' },
                  'RangeKeyElement' => { 'N' => 2 },
                },
              ]
            }
          }
          resp
        }

        let(:resp3) {
          resp = client.new_stub_for(:batch_get_item)
          resp.data['Responses'] = {}
          resp.data['UnprocessedKeys'] = {}
          resp
        }

        it 'continues requesting until the response has no unproccessed keys' do
          client.should_receive(:batch_get_item).
            exactly(3).times.and_return(resp1, resp2, resp3)
          batch.each{|table,attributes|}
        end

        it 'it formats the unproccessed keys into request items' do

          client.should_receive(:batch_get_item).ordered.
            with(:request_items=>{"table1"=>{:keys=>[{:hash_key_element=>{:s=>"hk1"}}]}}).
            and_return(resp1)

          client.should_receive(:batch_get_item).ordered.with(
            :request_items => {
              'table1' => {
                :attributes_to_get => %w(a1 a2),
                :keys => [
                  { :hash_key_element => { :s => "key1" }},
                ]
              },
              'table2' => {
                :keys => [
                  {
                    :hash_key_element => { :s => "key2" },
                    :range_key_element => { :n => 1 },
                  },
                  {
                    :hash_key_element => { :s => "key2" },
                    :range_key_element => { :n => 2 },
                  },
                ]
              }
            }
          ).and_return(resp2)

          client.should_receive(:batch_get_item).ordered.with(
            :request_items => {
              'table2' => {
                :keys => [
                  {
                    :hash_key_element => { :s => "key2" },
                    :range_key_element => { :n => 2 },
                  },
                ]
              }
            }
          ).and_return(resp3)

          batch.table 'table1', :all, ['hk1'] # ignored on first request
          batch.each{|table,attributes|}

        end

      end

    end

  end
end
