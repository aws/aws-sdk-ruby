# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module DynamoDB
    describe Client do
      let(:client) { Client.new(stub_responses: true) }

      describe 'CRC32' do
        it 'rejects responses with an invalid crc32 header' do
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
          end.to raise_error(Core::Errors::ChecksumError)
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
            Smithy::Client::Response.new(context: context)
          end
          client.get_item(table_name: 'aws-sdk', key: { 'id' => 'guid' })
        end
      end
    end
  end
end
