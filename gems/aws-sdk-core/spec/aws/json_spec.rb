# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  describe Json do
    describe '.load' do
      subject(:load) { described_class.load(raw_json) }

      shared_examples 'loads JSON correctly' do
        let(:raw_json) { '{ "foo": "bar" }' }

        it 'returns a hash with the JSON' do
          expect(subject).to eq('foo' => 'bar')
        end

        context 'not JSON' do
          # OJ gem raises EncodingError in this case
          # OJ can also raise JSON::ParserError if using Oj.mimic_JSON
          let(:raw_json) { '<ServiceUnavailableException/>' }

          it 'raises a ParseError' do
            expect { subject }.to raise_error(Aws::Json::ParseError)
          end
        end

        context 'invalid JSON' do
          let(:raw_json) { '{ "steve": }' }

          it 'raises a ParseError' do
            expect { subject }.to raise_error(Aws::Json::ParseError)
          end
        end
      end

      if defined?(Oj)
        context 'when using oj gem' do
          it 'uses the oj engine adapter' do
            expect(Aws::Json::ENGINE).to be(Aws::Json::OjEngine)
          end

          include_examples 'loads JSON correctly'
        end
      end

      context 'when using bundled json' do
        before do
          engine = Aws::Json::JsonEngine
          stub_const('Aws::Json::ENGINE', engine)
        end

        include_examples 'loads JSON correctly'
      end
    end
  end
end
