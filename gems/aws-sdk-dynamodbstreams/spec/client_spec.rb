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

        it 'nmarshals returned attribute values' do
          ddb = Client.new(stub_responses: true, simple_attributes: true)
          ddb.stub_responses(:get_records, {
            :records=>
              [{:event_id=>"event_1",
                :dynamodb=>
                 {
                  :keys=>{"id"=>{:s=>"guid"}},
                  :new_image=>{"id"=>{:s=>"guid"}},
                  }
              }]
            })

            resp = ddb.get_records(shard_iterator: 'itr')
            expect(resp.data.records.first.dynamodb.keys).to eq('id' => 'guid')
            expect(resp.data.records.first.dynamodb.new_image).to eq('id' => 'guid')
        end
      end
    end
  end
end
