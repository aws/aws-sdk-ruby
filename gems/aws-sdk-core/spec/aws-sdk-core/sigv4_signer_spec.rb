# frozen_string_literal: true

require_relative '../spec_helper'
require 'aws-sdk-core/sigv4_signer'

module Aws
  module Core
    describe SigV4Signer do
      subject { described_class.new(signer_options) }

      let(:signer_options) do
        {
          service: 's3',
          region: 'us-west-2',
          access_key_id: 'akid',
          secret_access_key: 'secret'
        }
      end

      let(:signer) { Aws::SigV4::Signer.new(signer_options) }

      let(:request_options) do
        {
          http_method: 'GET',
          url: 'https://example.com/resource',
          headers: { 'X-Amz-Date' => '20200101T000000Z' },
          expires_in: 60
        }
      end

      describe '#presign_url' do
        it 'forwards a positional options hash' do
          expected = signer.presign_url(request_options)
          expect(subject.presign_url(request_options).url).to eq(expected.url)
        end

        it 'forwards keyword options' do
          expected = signer.presign_url(**request_options)
          expect(subject.presign_url(**request_options).url).to eq(expected.url)
        end

        it 'forwards signing region and service overrides' do
          options = request_options.merge(service: 'sts', region: 'us-east-1')
          expected = signer.presign_url(**options)
          expect(subject.presign_url(**options).url).to eq(expected.url)
        end
      end
    end
  end
end
