require_relative '../spec_helper'

module Aws
  describe Json do

    describe '.load' do
      subject(:load) { described_class.load(raw_json) }

      shared_examples 'loads JSON correctly' do
        let(:raw_json) {'{ "foo": "bar" }'}

        it 'returns an empty hash' do
          expect(subject).to eq({ 'foo' => 'bar' })
        end

        context 'not JSON' do
          # OJ gem raises EncodingError in this case
          let(:raw_json) {'<ServiceUnavailableException/>'}

          it 'raises a ParseError' do
            expect { subject }.to raise_error(Aws::Json::ParseError)
          end
        end

        context 'invalid JSON' do
          let(:raw_json) {'{ "steve": }'}

          it 'raises a ParseError' do
            expect { subject }.to raise_error(Aws::Json::ParseError)
          end
        end

      end

      context 'when using oj gem' do
        include_examples 'loads JSON correctly'
      end

      context 'when using bundled json' do

        before do
          engine, load_options, dump_options, errors = described_class.send(:json_engine)

          stub_const("Aws::Json::ENGINE", engine)
          stub_const("Aws::Json::ENGINE_LOAD_OPTIONS", load_options)
          stub_const("Aws::Json::ENGINE_DUMP_OPTIONS", dump_options)
          stub_const("Aws::Json::ENGINE_ERRORS", errors)
        end

        include_examples 'loads JSON correctly'
      end
    end

  end
end
