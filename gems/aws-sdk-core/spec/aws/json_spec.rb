require_relative '../spec_helper'

module Aws
  describe Json do
    describe '.load' do
      subject(:load) { described_class.load(json) }

      context 'with valid JSON' do
        let(:json) { "{}" }

        it { expect { load }.not_to raise_error(Aws::Json::ParseError) }
      end

      context 'with invalid JSON' do
        let(:json) do
          '<html><body><b>Http/1.1 Service Unavailable</b></body> </html>
            '
        end

        it { expect { load }.to raise_error(Aws::Json::ParseError) }

        if !ENV["PURE_RUBY"]
          it { expect { load }.not_to raise_error(EncodingError) }
        end
      end
    end
  end
end
