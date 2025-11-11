# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module DynamoDBStreams
    describe Client do
      let(:options) { { access_key_id: 'akid', secret_access_key: 'secret' } }
      let(:client) { Client.new(options) }

      describe ':simple_attributes' do
        it 'simple attributes mode is enabled by default' do
          expect(client.config.simple_attributes).to be(true)
        end

        it 'can be disabled' do
          client = Client.new(options.merge(simple_attributes: false))
          expect(client.config.simple_attributes).to be(false)
        end

        it 'unmarshals attribute values in get_records response' do
          client.handle(step: :send) do |context|
            context.http_response.signal_done(
              status_code: 200,
              headers: {},
              body: <<~JSON
                {
                  "Records": [
                    {
                      "eventID": "1",
                      "eventName": "INSERT",
                      "eventVersion": "1.0",
                      "eventSource": "aws:dynamodb",
                      "awsRegion": "us-west-2",
                      "dynamodb": {
                        "ApproximateCreationDateTime": 1479499740,
                        "Keys": {
                          "id": { "S": "guid" }
                        },
                        "NewImage": {
                          "id": { "S": "guid" },
                          "name": { "S": "Jane Doe" },
                          "age": { "N": "25" },
                          "active": { "BOOL": true },
                          "tags": { "SS": ["tag1", "tag2"] }
                        },
                        "SequenceNumber": "111",
                        "SizeBytes": 26,
                        "StreamViewType": "NEW_AND_OLD_IMAGES"
                      }
                    }
                  ]
                }
              JSON
            )
            Smithy::Client::Response.new(context: context)
          end

          resp = client.get_records(shard_iterator: 'iterator')
          record = resp.data.records.first
          expect(record.dynamodb.keys).to eq('id' => 'guid')
          expect(record.dynamodb.new_image).to eq(
            'id' => 'guid',
            'name' => 'Jane Doe',
            'age' => BigDecimal('25'),
            'active' => true,
            'tags' => Set.new(%w[tag1 tag2])
          )
        end

        it 'unmarshals complex nested structures in get_records response' do
          client.handle(step: :send) do |context|
            context.http_response.signal_done(
              status_code: 200,
              headers: {},
              body: <<~JSON
                {
                  "Records": [
                    {
                      "eventID": "1",
                      "eventName": "INSERT",
                      "eventVersion": "1.0",
                      "eventSource": "aws:dynamodb",
                      "awsRegion": "us-west-2",
                      "dynamodb": {
                        "ApproximateCreationDateTime": 1479499740,
                        "Keys": {
                          "id": { "S": "guid" }
                        },
                        "NewImage": {
                          "id": { "S": "guid" },
                          "scores": { "L": [
                            { "N": "10" },
                            { "N": "20" },
                            { "NULL": true }
                          ]},
                          "metadata": { "M": {
                            "created": { "S": "2023-01-01" },
                            "modified": { "S": "2023-01-02" },
                            "flags": { "M": {
                              "active": { "BOOL": true },
                              "archived": { "BOOL": false }
                            }}
                          }}
                        },
                        "SequenceNumber": "111",
                        "SizeBytes": 26,
                        "StreamViewType": "NEW_AND_OLD_IMAGES"
                      }
                    }
                  ]
                }
              JSON
            )
            Smithy::Client::Response.new(context: context)
          end
          resp = client.get_records(shard_iterator: 'iterator')
          record = resp.data.records.first
          new_image = record.dynamodb.new_image
          expect(new_image['id']).to eq('guid')
          expect(new_image['scores']).to eq([BigDecimal('10'), BigDecimal('20'), nil])
          expect(new_image['metadata']).to eq(
            'created' => '2023-01-01',
            'modified' => '2023-01-02',
            'flags' => {
              'active' => true,
              'archived' => false
            }
          )
        end
      end

      describe '#stub_responses' do
        it 'accepts the simplified attribute format for get_records' do
          client = Client.new(stub_responses: true)
          records = [
            {
              event_id: '1',
              event_name: 'INSERT',
              event_version: '1.0',
              event_source: 'aws:dynamodb',
              aws_region: 'us-west-2',
              dynamodb: {
                keys: { 'id' => 'guid' },
                new_image: {
                  'id' => 'guid',
                  'name' => 'Jane Doe',
                  'active' => true
                },
                sequence_number: '111',
                size_bytes: 26,
                stream_view_type: 'NEW_AND_OLD_IMAGES'
              }
            }
          ]
          client.stub_responses(:get_records, records: records)
          resp = client.get_records(shard_iterator: 'iterator')
          expect(resp.records.first.dynamodb.new_image).to eq(
            'id' => 'guid',
            'name' => 'Jane Doe',
            'active' => true
          )
        end

        it 'observes the :simple_attributes configuration option' do
          client = Client.new(stub_responses: true, simple_attributes: false)
          records = [
            {
              event_id: '1',
              event_name: 'INSERT',
              dynamodb: {
                keys: { 'id' => { s: 'guid' } },
                new_image: {
                  'id' => { s: 'guid' },
                  'active' => { bool: true }
                },
                sequence_number: '111'
              }
            }
          ]
          client.stub_responses(:get_records, records: records)
          resp = client.get_records(shard_iterator: 'iterator')
          expect(resp.records.first.dynamodb.new_image['id'].s).to eq('guid')
          expect(resp.records.first.dynamodb.new_image['active'].bool).to eq(true)
        end
      end

      describe '#stub_data' do
        it 'accepts and returns simple attributes for get_records' do
          client = Client.new(stub_responses: true)
          records = [{
            event_id: '1',
            event_name: 'INSERT',
            dynamodb: {
              keys: { 'id' => 'guid' },
              new_image: {
                'id' => 'guid',
                'name' => 'Jane Doe',
                'active' => true,
                'tags' => Set.new(%w[tag1 tag2])
              }
            }
          }]
          data = client.stub_data(:get_records, records: records)
          expect(data.records.first.dynamodb.new_image).to eq(
            'id' => 'guid',
            'name' => 'Jane Doe',
            'active' => true,
            'tags' => Set.new(%w[tag1 tag2])
          )
        end

        it 'observes the :simple_attributes configuration option' do
          client = Client.new(stub_responses: true, simple_attributes: false)
          expect do
            client.stub_data(
              :get_records, records: [{
                event_id: '1',
                dynamodb: {
                  keys: { 'id' => 'guid' },
                  new_image: { 'id' => 'guid' }
                }
              }]
            )
          end.to raise_error(ArgumentError)

          data = client.stub_data(
            :get_records, records: [{
              event_id: '1',
              dynamodb: {
                keys: { 'id' => { s: 'guid' } },
                new_image: { 'id' => { s: 'guid' } }
              }
            }]
          )
          expect(data.records.first.dynamodb.new_image['id']).to be_a(Hash)
          expect(data.records.first.dynamodb.new_image['id'][:s]).to eq('guid')
        end

        it 'can be called without data' do
          expect do
            Client.new(stub_responses: true).stub_data(:get_records)
          end.not_to raise_error
        end
      end
    end
  end
end
