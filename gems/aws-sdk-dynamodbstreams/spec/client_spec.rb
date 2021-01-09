# frozen_string_literal: true
require_relative 'spec_helper'
require 'zlib'
module Aws
  module DynamoDBStreams
    describe Client do
      let(:opts) {{
        credentials: Credentials.new('akid', 'secret'),
        region: 'us-west-2',
      }}
      let(:ddb) { Client.new(opts) }
      describe ':simple_attributes' do
        it 'simple attributes mode is disabled by default' do
          expect(Client.new(opts).config.simple_attributes).to be(false)
        end

        it 'can be enabled' do
          ddb = Client.new(opts.merge(simple_attributes: true))
          expect(ddb.config.simple_attributes).to be(true)
        end

        it 'unmarshals returned attribute values' do
          ddb = Client.new(opts.merge(simple_attributes: true))
          ddb.handle(step: :send) do |context|
            context.http_response.signal_done(
              status_code: 200,
              headers: {},
              body: '{"Records":[{"dynamodb":{"Keys":{"id":{"S":"guid"}}}}]}'
            )
            Seahorse::Client::Response.new(context: context)
          end
          resp = ddb.get_records(shard_iterator: 'itr')
          expect(resp.data.records.first.dynamodb.keys).to eq('id' => 'guid')
        end
      end
    end
  end
end
