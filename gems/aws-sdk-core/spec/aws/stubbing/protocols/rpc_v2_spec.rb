# frozen_string_literal: true

require_relative '../../../spec_helper'
require 'json'

module Aws
  module Stubbing
    module Protocols
      describe RpcV2 do
        describe '#stub_data' do

          def normalize(data)
            JSON.pretty_generate(data)
          end

          let(:api) { ApiHelper.sample_rpcv2_cbor::Client.api }

          let(:operation) { api.operation(:describe_log_groups) }

          it 'returns a stubbed http response' do
            resp = RpcV2.new.stub_data(api, operation, {})
            expect(resp).to be_kind_of(Seahorse::Client::Http::Response)
            expect(resp.status_code).to eq(200)
          end

          it 'populates the expected headers' do
            resp = RpcV2.new.stub_data(api, operation, {})
            expect(resp.headers.to_h).to eq(
              'smithy-protocol' => 'rpc-v2-cbor',
              'content-type' => 'application/cbor',
              'x-amzn-requestid' => 'stubbed-request-id'
            )
          end

          it 'populates the body with the stub data' do
            now = Time.now
            data = {
              log_groups: [
                {
                  log_group_name: 'my-log-group',
                  creation_time: now.to_i,
                  retention_in_days: 1,
                  metric_filter_count: 0,
                  arn: 'arn:aws:logs:us-west-2:012345678910:log-group:my-log-group:*',
                  stored_bytes: 0,
                  kms_key_id: 'arn:aws:kms:us-west-2:012345678910:key/1234abcd-12ab-34cd-56ef-1234567890ab',
                  data_protection_status: 'ENABLED',
                  inherited_properties: [ 'ACCOUNT_DATA_PROTECTION' ],
                  log_group_class: 'STANDARD',
                  log_group_arn: 'arn:aws:logs:us-west-2:012345678910:log-group:my-log-group:*'
                }
              ]
            }

            resp = RpcV2.new.stub_data(api, operation, data)
            actual = normalize(Aws::RpcV2.decode(resp.body.string))
            expect(actual).to eq(normalize(JSON.parse(<<-JSON)))
            {
              "logGroups": [
                {
                  "logGroupName": "my-log-group",
                  "creationTime": #{now.to_i},
                  "retentionInDays": 1,
                  "metricFilterCount": 0,
                  "arn": "arn:aws:logs:us-west-2:012345678910:log-group:my-log-group:*",
                  "storedBytes": 0,
                  "kmsKeyId": "arn:aws:kms:us-west-2:012345678910:key/1234abcd-12ab-34cd-56ef-1234567890ab",
                  "dataProtectionStatus": "ENABLED",
                  "inheritedProperties": [
                    "ACCOUNT_DATA_PROTECTION"
                  ],
                  "logGroupClass": "STANDARD",
                  "logGroupArn": "arn:aws:logs:us-west-2:012345678910:log-group:my-log-group:*"
                }
              ]
            }
            JSON
          end

          it 'can stub errors' do
            resp = RpcV2.new.stub_error('error-code')
            actual = normalize(Aws::RpcV2.decode(resp.body.string))
            expect(actual).to eq(normalize(JSON.parse(<<-JSON)))
              {
                "code": "error-code",
                "message": "stubbed-response-error-message"
              }
            JSON
          end

        end
      end
    end
  end
end
