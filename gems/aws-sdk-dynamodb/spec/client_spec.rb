# frozen_string_literal: true

require_relative 'spec_helper'
require 'zlib'

module Aws
  module DynamoDB
    describe Client do

      let(:opts) {{
        credentials: Credentials.new('akid', 'secret'),
        region: 'us-west-2',
      }}

      let(:ddb) { Client.new(opts) }

      describe ':simple_attributes' do

        it 'simple attributes mode is enabled by default' do
          expect(Client.new(opts).config.simple_attributes).to be(true)
        end

        it 'can be disabled' do
          ddb = Client.new(opts.merge(simple_attributes: false))
          expect(ddb.config.simple_attributes).to be(false)
        end

        it 'marshals given attribute values' do
          ddb.handle(step: :send) do |context|
            Seahorse::Client::Response.new(context: context)
          end
          resp = ddb.put_item(table_name: 'aws-sdk', item: { 'id' => 'guid' })
          expect(resp.context.params).to eq(
            table_name: 'aws-sdk',
            item: {"id"=>{:s=>"guid"}}
          )
        end

        it 'unmarshals returned attribute values' do
          ddb.handle(step: :send) do |context|
            context.http_response.signal_done(
              status_code: 200,
              headers: {},
              body: '{ "Item": { "id": { "S": "guid" } } }'
            )
            Seahorse::Client::Response.new(context: context)
          end
          resp = ddb.get_item(table_name: 'aws-sdk', key: { 'id' => 'guid' })
          expect(resp.data.item).to eq('id' => 'guid')
        end

        it 'avoids double-marshaling of structs' do
          batch = {
            "TableName" => [
              {
                put_request: {
                  item: {"attr-1-name" => "attr-1-value"}
                }
              }
            ]
          }
          stub = DynamoDB::Client.new(
            stub_responses: {
              batch_write_item: { unprocessed_items: batch }
            }
          )
          wr = DynamoDB::Types::WriteRequest.new
          pr = DynamoDB::Types::PutRequest.new
          pr.item = { "attr-1-name" => "attr-1-value" }
          wr.put_request = pr
          expected = {
            "TableName"=>[wr]
          }
          resp1 = stub.batch_write_item(request_items: batch)
          expect(resp1.unprocessed_items).to eq(expected)
          stub.batch_write_item(request_items: resp1.unprocessed_items)
          # Expect no mutation.
          expect(resp1.unprocessed_items).to eq(expected)
        end
      end

      describe 'CRC32' do
        it 'rejects responses with an invalid crc32 header' do
          opts[:retry_limit] = 0
          ddb.handle(step: :send) do |context|
            context.http_response.signal_done(
              status_code: 200,
              headers: { 'x-amz-crc32' => 'invalid' },
              body: '{ "Item": { "id": { "S": "guid" } } }'
            )
            Seahorse::Client::Response.new(context: context)
          end
          expect {
            ddb.get_item(table_name: 'aws-sdk', key: { 'id' => 'guid' })
          }.to raise_error(Errors::CRC32CheckFailed)
        end

        it 'accepts responses with a valid crc32 header' do
          ddb.handle(step: :send) do |context|
            context.http_response.status_code = 200
            body = <<-JSON
              { "Item": { "id": { "S": "guid" } } }
            JSON
            context.http_response.body = body
            context.http_response.headers['x-amz-crc32'] = Zlib.crc32(body)
            Seahorse::Client::Response.new(context: context)
          end
          ddb.get_item(table_name: 'aws-sdk', key: { 'id' => 'guid' })
        end

        it 'retries crc32 failures' do
          ddb.handle(step: :send) do |context|
            context.http_response.status_code = 200
            body = <<-JSON
              { "Item": { "id": { "S": "guid" } } }
            JSON
            context.http_response.body = body
            if context[:already_failed]
              context.http_response.headers['x-amz-crc32'] = Zlib.crc32(body)
            else
              context.http_response.headers['x-amz-crc32'] = 'invalid'
              context[:already_failed] = true
            end
            Seahorse::Client::Response.new(context: context)
          end
          ddb.get_item(table_name: 'aws-sdk', key: { 'id' => 'guid' })
        end

      end

      describe '#stub_responses' do

        it 'accepts the simplified attribute format' do
          client = Client.new(stub_responses: true)
          client.stub_responses(:get_item, item: {'id' => 'value', })
          resp = client.get_item(table_name:'table', key: {'id' => 'value' })
          expect(resp.item).to eq('id' => 'value')
        end

      end

      describe '#enumerable responses' do

        it 'can round trip paging params that contain item attributes' do
          client = Client.new(stub_responses: {
            query: {
              :items=> [
                {"indexhash"=>"hash", "id"=>"id-1", "indexrange"=>"range-1"},
                {"indexhash"=>"hash", "id"=>"id-2", "indexrange"=>"range-2"},
              ],
              :count=>2,
              :scanned_count=>2,
              :last_evaluated_key=>{
                "indexhash"=>"hash", "id"=>"id-160", "indexrange"=>"range-160"
              }
            }
          })
          result = client.query(
            table_name: 'table-name',
            limit: 2,
            index_name: 'indexname',
            key_condition_expression: 'indexhash = :value1',
            expression_attribute_values: { ':value1' => 'hash'}
          )
          result2 = result.next_page
          expect(result2.context.params[:expression_attribute_values]).to eq(
            ':value1' => { s:'hash'}
          )
        end

      end

      describe '#stub_data' do

        it 'accepts and returns simple attributes' do
          client = Client.new(stub_responses: true)
          data = client.stub_data(:get_item, item: { 'id' => 'value' })
          expect(data.item).to eq({ 'id' => 'value' })
        end

        it 'observes the :simple_attributes configuration option' do
          client = Client.new(stub_responses: true, simple_attributes: false)
          expect {
            client.stub_data(:get_item, item: { 'id' => 'value' })
          }.to raise_error(ArgumentError)

          data = client.stub_data(:get_item, item: { 'id' => { s: 'value' }})
          expect(data.to_h[:item]).to eq({ 'id' => { s: 'value' }})
        end

        it 'can be called without data' do
          expect {
            Client.new(stub_responses:true).stub_data(:get_item)
          }.not_to raise_error
        end

        it 'parses errors from DynamoDB __type' do
          client = Client.new(stub_responses: true)
          client.handle(step: :send) do |context|
            context.http_response.signal_headers(400, {})
            context.http_response.signal_data(<<-JSON)
              {
                "__type": "com.amazonaws.dynamodb.v20120810#ResourceNotFoundException",
                "message": "Requested resource not found: Table: abc not found"
              }
            JSON
            context.http_response.signal_done
            Seahorse::Client::Response.new(context: context)
          end
          expect {
            client.describe_table(table_name: 'abc')
          }.to raise_error(Errors::ResourceNotFoundException)
        end

      end
    end
  end
end
