# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module SigV4
    describe Signature do
      describe '#initialize' do
        it 'requires :headers' do
          expect { Signature.new }.to raise_error(KeyError, /:headers/)
        end
      end

      describe 'attributes' do
        it 'gets values' do
          headers = { 'host' => 'example.com' }
          signature = Signature.new(
            headers: headers,
            canonical_request: 'canonical-request',
            string_to_sign: 'string-to-sign',
            content_sha256: 'content-sha256',
            signature: 'signature'
          )

          expect(signature.headers).to eq(headers)
          expect(signature.canonical_request).to eq('canonical-request')
          expect(signature.string_to_sign).to eq('string-to-sign')
          expect(signature.content_sha256).to eq('content-sha256')
          expect(signature.signature).to eq('signature')
        end
      end
    end
  end
end
