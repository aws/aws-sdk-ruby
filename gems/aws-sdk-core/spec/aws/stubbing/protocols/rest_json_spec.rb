# frozen_string_literal: true

require_relative '../../../spec_helper'
require 'json'

module Aws
  module Stubbing
    module Protocols
      describe RestJson do
        describe '#stub_data' do

          def normalize(json)
            JSON.pretty_generate(JSON.load(json), indent: '  ')
          end

          let(:api) { ApiHelper.sample_rest_json::Client.api }

          let(:operation) { api.operation(:list_vaults) }

          it 'returns a stubbed http response' do
            resp = RestJson.new.stub_data(api, operation, {})
            expect(resp).to be_kind_of(Seahorse::Client::Http::Response)
            expect(resp.status_code).to eq(200)
          end

          it 'populates the expected headers' do
            resp = RestJson.new.stub_data(api, operation, {})
            expect(resp.headers.to_h).to eq({
              "x-amzn-requestid" => "stubbed-request-id",
            })
          end

          it 'populates the body with the stub data' do
            now = Time.now
            data = {
              vault_list: [
                {
                  creation_date: now.utc.iso8601,
                  last_inventory_date: now.utc.iso8601,
                  number_of_archives: 1,
                  size_in_bytes: 100,
                  vault_arn: 'arn',
                  vault_name: 'name',
                }
              ]
            }
            resp = RestJson.new.stub_data(api, operation, data)
            expect(normalize(resp.body.string)).to eq(normalize(<<-JSON))
              {
                "VaultList": [
                  {
                    "CreationDate": #{now.utc.iso8601.inspect},
                    "LastInventoryDate": #{now.utc.iso8601.inspect},
                    "NumberOfArchives": 1,
                    "SizeInBytes": 100,
                    "VaultARN": "arn",
                    "VaultName": "name"
                  }
                ]
              }
            JSON
          end

          it 'supports stubbing streaming response bodies' do
            data = StringIO.new('DATA')
            params = {
              body: data,
              checksum: 'checksum',
              status: 201,
              content_range: 'range',
              accept_ranges: 'accept-range',
              content_type: 'application/octet-stream',
              archive_description: 'description',
            }
            operation = api.operation(:get_job_output)
            resp = RestJson.new.stub_data(api, operation, params)
            expect(resp.status_code).to eq(201)
            expect(resp.headers['x-amz-sha256-tree-hash']).to eq('checksum')
            expect(resp.headers['Content-Range']).to eq('range')
            expect(resp.headers['Accept-Ranges']).to eq('accept-range')
            expect(resp.headers['Content-Type']).to eq('application/octet-stream')
            expect(resp.headers['x-amz-archive-description']).to eq('description')
            expect(resp.body).to be(data)
            expect(resp.body.read).to eq('DATA')
          end

          it 'does not stub status code when not present' do
            data = StringIO.new('DATA')
            params = {
              body: data,
            }
            operation = api.operation(:get_job_output)
            resp = RestJson.new.stub_data(api, operation, params)
            expect(resp.status_code).to eq(200)
            expect(resp.body).to be(data)
            expect(resp.body.read).to eq('DATA')
          end

          it 'supports structure payloads' do
            params = {
              policy: {
                policy: 'policy-document'
              }
            }
            operation = api.operation(:get_vault_access_policy)
            resp = RestJson.new.stub_data(api, operation, params)
            expect(resp.status_code).to eq(200)
            expect(normalize(resp.body.string)).to eq(normalize(<<-JSON))
              {
                "Policy": "policy-document"
              }
            JSON
          end

        end
      end
    end
  end
end
