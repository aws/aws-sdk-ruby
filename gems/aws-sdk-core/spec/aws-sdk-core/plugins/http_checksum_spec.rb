# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Core
    module Plugins
      describe HttpChecksum do
        let(:shapes) { checksum_shapes('smithy.api#httpChecksumRequired' => {}) }
        let(:client_class) { checksum_client_class(shapes) }
        let(:client) do
          checksum_client(
            client_class,
            request_checksum_calculation: 'when_required'
          )
        end

        it 'calculates Content-MD5 for legacy checksum-required operations' do
          response = client.operation(string: 'payload')
          request = response.context.http_request
          body = request.body
          body.rewind
          expected = OpenSSL::Digest.new('MD5').update(body.read).base64digest

          expect(request.headers['Content-Md5']).to eq(expected)
        end

        it 'does not calculate Content-MD5 when a flexible checksum is applied' do
          shapes['smithy.ruby.tests#Operation']['traits'].merge!(
            'aws.protocols#httpChecksum' => {
              'requestAlgorithmMember' => 'ChecksumAlgorithm',
              'requestChecksumRequired' => true
            }
          )

          response = client.operation(string: 'payload')
          headers = response.context.http_request.headers
          expect(headers['Content-Md5']).to be_nil
          expect(headers['x-amz-checksum-crc32']).not_to be_nil
        end

        it 'preserves Content-MD5 when a flexible checksum is supplied' do
          client_class.add_plugin(
            checksum_header_plugin('X-Amz-Checksum-Sha256', 'supplied')
          )

          response = client.operation(string: 'payload')
          request = response.context.http_request
          body = request.body
          body.rewind
          expected = OpenSSL::Digest.new('MD5').update(body.read).base64digest

          expect(request.headers['Content-Md5']).to eq(expected)
          expect(request.headers['x-amz-checksum-sha256']).to eq('supplied')
        end
      end
    end
  end
end
