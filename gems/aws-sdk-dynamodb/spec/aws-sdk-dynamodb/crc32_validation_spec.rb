# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module DynamoDB
    describe Client do
      let(:client_options) { { region: 'us-stubbed-1', access_key_id: 'akid', secret_access_key: 'secret' } }
      let(:client) { Client.new(client_options) }

      describe 'CRC32' do
        it 'rejects responses with an invalid crc32 header' do
          client_options[:retry_max_attempts] = 1
          client.handle(step: :send) do |context|
            context.http_response.signal_done(
              status_code: 200,
              headers: { 'x-amz-crc32' => 'invalid' },
              body: '{ "Item": { "id": { "S": "guid" } } }'
            )
            Smithy::Client::Response.new(context: context)
          end
          expect do
            client.get_item(table_name: 'aws-sdk', key: { 'id' => 'guid' })
          end.to raise_error(Smithy::Client::NetworkingError)
        end

        it 'accepts responses with a valid crc32 header' do
          client.handle(step: :send) do |context|
            context.http_response.status_code = 200
            body = <<-JSON
              { "Item": { "id": { "S": "guid" } } }
            JSON
            context.http_response.body = body
            context.http_response.headers['x-amz-crc32'] = Zlib.crc32(body)
            Smithy::Client::Response.new(context: context)
          end
          client.get_item(table_name: 'aws-sdk', key: { 'id' => 'guid' })
        end

        it 'retries crc32 failures' do
          client.handle(step: :send) do |context|
            body = <<-JSON
              { "Item": { "id": { "S": "guid" } } }
            JSON
            if context[:already_failed]
              context.http_response.signal_headers(200, { 'x-amz-crc32' => Zlib.crc32(body) })
            else
              context.http_response.signal_headers(200, { 'x-amz-crc32' => 'invalid' })
              context[:already_failed] = true
            end
            context.http_response.signal_data(body)
            context.http_response.signal_done
            Smithy::Client::Response.new(context: context)
          end
          resp = client.get_item(table_name: 'aws-sdk', key: { 'id' => 'guid' })
          expect(resp.context.retries).to eq(1)
        end
      end
    end
  end
end
