# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Core
    module Plugins
      describe HttpChecksum do
        let(:shapes) { ClientHelper.sample_shapes }
        let(:sample_client) { ClientHelper.sample_client(shapes: shapes) }
        let(:client_class) { sample_client.const_get(:Client) }
        let(:client) do
          client_class.new(
            stub_responses: true,
            endpoint: 'https://example.com',
            request_checksum_calculation: 'when_required'
          )
        end

        before do
          shapes['smithy.ruby.tests#Structure']['members'].delete('streamingBlob')
          shapes['smithy.ruby.tests#SampleClient']['traits'] = {
            'aws.protocols#restJson1' => {}
          }
          shapes['smithy.ruby.tests#Operation']['traits'] = {
            'smithy.api#httpChecksumRequired' => {},
            'smithy.api#http' => {
              'method' => 'POST',
              'uri' => '/',
              'code' => 200
            }
          }
        end

        it 'replaces the Smithy legacy checksum plugin in AWS clients' do
          expect(client.handlers).to include(HttpChecksum::Handler)
          expect(client.handlers)
            .not_to include(Smithy::Client::Plugins::ChecksumRequired::Handler)
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
          shapes['smithy.ruby.tests#Structure']['members']['ChecksumAlgorithm'] = {
            'target' => 'smithy.api#String',
            'traits' => {
              'smithy.api#httpHeader' => 'x-amz-sdk-checksum-algorithm'
            }
          }

          response = client.operation(string: 'payload')
          headers = response.context.http_request.headers
          expect(headers['Content-Md5']).to be_nil
          expect(headers['x-amz-checksum-crc32']).not_to be_nil
        end
      end
    end
  end
end
