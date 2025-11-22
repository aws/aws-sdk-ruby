# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module DynamoDB
    describe Client do
      let(:options) { { region: 'us-stubbed-1', access_key_id: 'akid', secret_access_key: 'secret' } }
      let(:client) { Client.new(options) }

      describe ':simple_attributes' do
        it 'simple attributes mode is enabled by default' do
          expect(client.config.simple_attributes).to be(true)
        end

        it 'can be disabled' do
          client = Client.new(options.merge(simple_attributes: false))
          expect(client.config.simple_attributes).to be(false)
        end

        it 'marshals given attribute values' do
          client.handle(step: :send) do |context|
            Smithy::Client::Response.new(context: context)
          end
          resp = client.put_item(table_name: 'aws-sdk', item: { 'id' => 'guid' })
          expect(resp.context.params).to eq(
            table_name: 'aws-sdk',
            item: { 'id' => { s: 'guid' } }
          )
        end

        it 'unmarshals returned attribute values' do
          client.handle(step: :send) do |context|
            context.http_response.signal_done(
              status_code: 200,
              headers: {},
              body: '{ "Item": { "id": { "S": "guid" } } }'
            )
            Smithy::Client::Response.new(context: context)
          end
          resp = client.get_item(table_name: 'aws-sdk', key: { 'id' => 'guid' })
          expect(resp.data.item).to eq('id' => 'guid')
        end

        it 'unmarshals attribute values in errors' do
          client.handle(step: :send) do |context|
            context.http_response.signal_headers(400, {})
            context.http_response.signal_data(<<~JSON)
              {
                "__type": "com.amazonaws.dynamodb.v20120810#ConditionalCheckFailedException",
                "Message": "The conditional request failed.",
                "Item": { "id": { "S": "guid" } }
              }
            JSON
            context.http_response.signal_done
            Smithy::Client::Response.new(context: context)
          end
          expectations = proc do |error|
            expect(error).to be_a(Errors::ConditionalCheckFailedException)
            expect(error.data.item).to eq('id' => 'guid')
          end
          expect do
            client.put_item(table_name: 'aws-sdk', item: { 'id' => 'guid' })
          end.to raise_error(&expectations)
        end

        it 'avoids double-marshaling of structs' do
          client.handle(step: :send) do |context|
            context.http_response.signal_headers(200, {})
            context.http_response.signal_data(<<~JSON)
              {
                "UnprocessedItems": {
                  "TableName": [
                    {
                      "PutRequest": {
                        "Item": { "attr-1-name": { "S": "attr-1-value" } }
                      }
                    }
                  ]
                }
              }
            JSON
            context.http_response.signal_done
            Smithy::Client::Response.new(context: context)
          end
          batch = { 'TableName' => [{ put_request: { item: { 'attr-1-name' => 'attr-1-value' } } }] }
          wr = DynamoDB::Types::WriteRequest.new
          pr = DynamoDB::Types::PutRequest.new
          pr.item = { 'attr-1-name' => 'attr-1-value' }
          wr.put_request = pr
          expected = { 'TableName' => [wr] }
          resp = client.batch_write_item(request_items: batch)
          expect(resp.unprocessed_items).to eq(expected)
          client.batch_write_item(request_items: resp.unprocessed_items)
          # Expect no mutation.
          expect(resp.unprocessed_items).to eq(expected)
        end
      end

      describe '#stub_responses' do
        it 'accepts the simplified attribute format' do
          client = Client.new(stub_responses: true)
          client.stub_responses(:get_item, item: { 'id' => 'value' })
          resp = client.get_item(table_name: 'table', key: { 'id' => 'value' })
          expect(resp.item).to eq('id' => 'value')
        end

        it 'observes the :simple_attributes configuration option' do
          client = Client.new(stub_responses: true, simple_attributes: false)
          client.stub_responses(:get_item, item: { 'id' => 'value' })
          expect do
            client.get_item(table_name: 'table', key: { 'id' => { s: 'value' } })
          end.to raise_error(ArgumentError)
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
          expect do
            client.stub_data(:get_item, item: { 'id' => 'value' })
          end.to raise_error(ArgumentError)

          data = client.stub_data(:get_item, item: { 'id' => { s: 'value' } })
          expect(data.to_h[:item]).to eq({ 'id' => { s: 'value' } })
        end

        it 'can be called without data' do
          expect do
            Client.new(stub_responses: true).stub_data(:get_item)
          end.not_to raise_error
        end
      end

      describe '#enumerable responses' do
        it 'can round trip paging params that contain item attributes' do
          client = Client.new(stub_responses: true)
          client.stub_responses(
            :query, {
              items: [
                { 'indexhash' => 'hash', 'id' => 'id-1', 'indexrange' => 'range-1' },
                { 'indexhash' => 'hash', 'id' => 'id-2', 'indexrange' => 'range-2' }
              ],
              count: 2,
              scanned_count: 2,
              last_evaluated_key: {
                'indexhash' => 'hash', 'id' => 'id-160', 'indexrange' => 'range-160'
              }
            }
          )
          resp = client.query(
            table_name: 'table-name',
            limit: 2,
            index_name: 'indexname',
            key_condition_expression: 'indexhash = :value1',
            expression_attribute_values: { ':value1' => 'hash' }
          )
          resp = resp.next_page
          expect(resp.context.params[:expression_attribute_values]).to eq(':value1' => { s: 'hash' })
        end
      end
    end
  end
end
