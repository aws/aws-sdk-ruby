# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module SigV4
    describe PresignedUrl do
      describe '#initialize' do
        it 'requires :url' do
          expect { PresignedUrl.new }.to raise_error(KeyError, /url/)
        end

        it 'has empty headers by default' do
          presigned_url = PresignedUrl.new(url: 'https://example.com')
          expect(presigned_url.headers).to eq({})
        end
      end

      describe 'attributes' do
        it 'gets values' do
          url = 'https://example.com?param=value&X-Amz-Signature=abcdef'
          headers = { 'host' => 'example.com' }
          presigned_url = PresignedUrl.new(
            url: url,
            headers: headers,
            canonical_request: 'canonical-request',
            string_to_sign: 'string-to-sign',
            content_sha256: 'content-sha256',
            signature: 'signature'
          )

          expect(presigned_url.url).to eq(url)
          expect(presigned_url.headers).to eq(headers)
          expect(presigned_url.canonical_request).to eq('canonical-request')
          expect(presigned_url.string_to_sign).to eq('string-to-sign')
          expect(presigned_url.content_sha256).to eq('content-sha256')
          expect(presigned_url.signature).to eq('signature')
        end
      end
    end
  end
end
