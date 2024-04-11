# frozen_string_literal: true

require_relative 'spec_helper'

module Aws
  module SecretsManager
    describe Client do

      it 'calls methods' do
        data = "v2pTZWNyZXRMaXN0n79jQVJOeFBhcm46YXdzOnNlY3JldHNtYW5hZ2VyOnVzLXdlc3QtMTo2NTUzNDc4OTU1NDU6c2VjcmV0Ok15VGVzdERhdGFiYXNlU2VjcmV0LTVvNFdSWGtDcmVhdGVkRGF0ZcH7Qde8kFhzlYFrRGVzY3JpcHRpb254LE15IHRlc3QgZGF0YWJhc2Ugc2VjcmV0IGNyZWF0ZWQgd2l0aCB0aGUgQ0xJb0xhc3RDaGFuZ2VkRGF0ZcH7QdkP78gbQ5ZkTmFtZXRNeVRlc3REYXRhYmFzZVNlY3JldHZTZWNyZXRWZXJzaW9uc1RvU3RhZ2Vzv3gkRVhBTVBMRTEtOTBhYi1jZGVmLWZlZGMtYmE5ODdTRUNSRVQxn2pBV1NDVVJSRU5U//////8="
        client = Client.new(stub_responses: true, rpcv2_parser_class: Aws::RpcV2::CallbackParser)
        client.stub_responses(:list_secrets, {
          status_code: 200,
          headers: { 'header-name' => 'header-value' },
          body: Base64.strict_decode64(data)
        })
        puts client.list_secrets
      end

      it 'stubs' do
        client = Client.new(stub_responses: true)
        puts client.list_secrets
      end

      it 'benchmarks' do
        n = 5000; m=100 ; x = m.times.map { SecureRandom.hex(10) }
        client = Aws::SecretsManager::Client.new(stub_responses: true, logger: nil)

        Thread.current[:build_time] = 0
        Thread.current[:parse_time] = 0

        n.times { client.batch_get_secret_value(secret_id_list: x)}

        puts Thread.current[:build_time]
        puts Thread.current[:parse_time]
      end
    end
  end
end
