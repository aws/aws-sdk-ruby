# frozen_string_literal: true

require_relative './spec_helper'

module Aws
  module Polly
    describe Presigner do

      before(:each) do
        allow(Time).to receive(:now).and_return(now)
        allow(now).to receive(:utc).and_return(utc)
        allow(utc).to receive(:strftime).and_return(datetime)
      end

      let(:now) { double('now') }
      let(:utc) { double('utc-time') }
      let(:datetime) { '20160101T112233Z' }
      let(:credentials) { Credentials.new('akid', 'secret') }
      let(:region) { 'us-west-2' }

      describe '#initialize' do

        it 'requires :credentials' do
          expect {
            Presigner.new(region: region)
          }.to raise_error(
            KeyError, /credentials/
          )
        end

        it 'requries :region' do
          expect {
            Presigner.new(credentials: credentials)
          }.to raise_error(
            KeyError, /region/
          )
        end

      end

      describe '#presigned_url' do

        it 'can presign #synthesize_speech correctly' do
          expected_url =
            'https://polly.us-west-2.amazonaws.com/v1/speech?'\
            'LexiconNames=mno&LexiconNames=abc&OutputFormat=mp3&SampleRate=128&'\
            'Text=Hello%20World&TextType=text&VoiceId=Ewa&'\
            'X-Amz-Algorithm=AWS4-HMAC-SHA256&'\
            'X-Amz-Credential=akid%2F20160101%2F'\
            'us-west-2%2Fpolly%2Faws4_request&'\
            'X-Amz-Date=20160101T112233Z&X-Amz-Expires=900&'\
            'X-Amz-SignedHeaders=host&'\
            'X-Amz-Signature=956ef486286b12f43ffc02dd09eae03cfea4cd8dfb30e0fab3f23de4e131195a'

          pre = Presigner.new(region: region, credentials: credentials)
          params = {
            lexicon_names: [ 'mno', 'abc' ],
            output_format: 'mp3',
            sample_rate: '128',
            text: 'Hello World',
            text_type: 'text',
            voice_id: 'Ewa'
          }

          actual_url = pre.synthesize_speech_presigned_url(params)
          expect(actual_url).to eq(expected_url)
        end

      end

    end
  end
end
