require 'spec_helper'
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
    end
  end
end
