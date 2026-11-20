# frozen_string_literal: true

require_relative '../../spec_helper'
require 'aws-sdk-core/plugins/checksum_algorithm'

module Aws
  module S3
    module Plugins
      describe ChecksumAlgorithm do
        before(:context) do
          Client.add_plugin(Aws::Core::Plugins::ChecksumAlgorithm)
        end

        after(:context) do
          Client.remove_plugin(Aws::Core::Plugins::ChecksumAlgorithm)
        end

        let(:client) { Client.new(region: 'us-east-1', stub_responses: true) }

        it 'returns GetObject responses without validating multipart checksums' do
          client.stub_responses(
            :get_object,
            status_code: 200,
            headers: {
              'x-amz-checksum-crc32' => 'AAAAAA==-2',
              'x-amz-checksum-sha256' => 'AAAAAA=='
            },
            body: 'payload'
          )

          expect do
            client.get_object(
              bucket: 'bucket',
              key: 'key',
              checksum_mode: 'ENABLED'
            ).body.read
          end.not_to raise_error
        end

        it 'validates GetObject checksums without a multipart suffix' do
          client.stub_responses(
            :get_object,
            status_code: 200,
            headers: { 'x-amz-checksum-crc32' => 'AAAAAA==' },
            body: 'payload'
          )

          expect do
            client.get_object(
              bucket: 'bucket',
              key: 'key',
              checksum_mode: 'ENABLED'
            ).body.read
          end.to raise_error(Aws::Core::Errors::ChecksumError)
        end

        it 'validates an available lower-priority GetObject checksum' do
          client.stub_responses(
            :get_object,
            status_code: 200,
            headers: { 'x-amz-checksum-sha256' => 'AAAAAA==' },
            body: 'payload'
          )

          expect do
            client.get_object(
              bucket: 'bucket',
              key: 'key',
              checksum_mode: 'ENABLED'
            ).body.read
          end.to raise_error(Aws::Core::Errors::ChecksumError)
        end
      end
    end
  end
end
