# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module Polly
    describe Presigner do
      let(:options) { { stub_responses: true, region: 'us-west-2' } }
      let(:client) { Client.new(options) }
      let(:presigner) { Presigner.new(client: client) }
      let(:params) { { output_format: 'mp3', text: 'Hello World', voice_id: 'Ewa' } }

      describe '#synthesize_speech' do
        it 'returns a presigned url' do
          url = presigner.synthesize_speech(params)
          expect(url).to start_with('https://polly.us-west-2.amazonaws.com/v1/speech?')
          expect(url).to include('OutputFormat=mp3')
          expect(url).to include('Text=Hello%20World')
          expect(url).to include('VoiceId=Ewa')
          expect(url).to include('X-Amz-Algorithm=AWS4-HMAC-SHA256')
          expect(url).to include('X-Amz-Credential=stubbed-access-key-id')
          expect(url).to include('X-Amz-Date=')
          expect(url).to include('X-Amz-Expires=900')
          expect(url).to include('X-Amz-SignedHeaders=host')
          expect(url).to include('X-Amz-Signature=')
        end

        it 'can presign with the fips endpoint' do
          options[:use_fips_endpoint] = true
          url = presigner.synthesize_speech(params)
          expect(url).to start_with('https://polly-fips.us-west-2.amazonaws.com/v1/speech?')
        end

        it 'can presign with the dualstack endpoint' do
          options[:use_dualstack_endpoint] = true
          url = presigner.synthesize_speech(params)
          expect(url).to start_with('https://polly.us-west-2.api.aws/v1/speech?')
        end

        it 'validates params' do
          expect do
            presigner.synthesize_speech
          end.to raise_error(ArgumentError, /missing required parameter/)
        end
      end
    end
  end
end
