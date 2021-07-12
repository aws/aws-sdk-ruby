# frozen_string_literal: true

require_relative '../../../spec_helper'
require 'json'

module Aws
  module Stubbing
    module Protocols
      describe Json do
        describe '#stub_data' do

          def normalize(json)
            JSON.pretty_generate(JSON.load(json), indent: '  ')
          end

          let(:api) { ApiHelper.sample_json::Client.api }

          let(:operation) { api.operation(:describe_table) }

          it 'returns a stubbed http response' do
            resp = Json.new.stub_data(api, operation, {})
            expect(resp).to be_kind_of(Seahorse::Client::Http::Response)
            expect(resp.status_code).to eq(200)
          end

          it 'populates the expected headers' do
            resp = Json.new.stub_data(api, operation, {})
            expect(resp.headers.to_h).to eq({
              "content-type" => "application/x-amz-json-1.0",
              "x-amzn-requestid" => "stubbed-request-id",
            })
          end

          it 'populates the body with the stub data' do
            now = Time.now
            data = {
              table: {
                table_name: "my-table-name",
                table_size_bytes: 0,
                table_status: "ACTIVE",
                attribute_definitions: [
                  {
                    attribute_name: "Id",
                    attribute_type: "S"
                  }
                ],
                creation_date_time: now,
                item_count: 0,
                key_schema: [
                  attribute_name: "Id",
                  key_type: "HASH"
                ],
                provisioned_throughput: {
                  last_increase_date_time: now,
                  last_decrease_date_time: now,
                  number_of_decreases_today: 0,
                  read_capacity_units: 50,
                  write_capacity_units: 50,
                }
              }
            }
            resp = Json.new.stub_data(api, operation, data)
            expect(normalize(resp.body.string)).to eq(normalize(<<-JSON))
              {
                "Table": {
                  "TableName": "my-table-name",
                  "TableSizeBytes": 0,
                  "TableStatus": "ACTIVE",
                  "AttributeDefinitions": [
                    {
                      "AttributeName": "Id",
                      "AttributeType": "S"
                    }
                  ],
                  "CreationDateTime": #{now.to_i},
                  "ItemCount": 0,
                  "KeySchema": [
                    {
                      "AttributeName": "Id",
                      "KeyType": "HASH"
                    }
                  ],
                  "ProvisionedThroughput": {
                    "LastIncreaseDateTime": #{now.to_i},
                    "LastDecreaseDateTime": #{now.to_i},
                    "NumberOfDecreasesToday": 0,
                    "ReadCapacityUnits": 50,
                    "WriteCapacityUnits": 50
                  }
                }
              }
            JSON
          end

        end
      end
    end
  end
end
