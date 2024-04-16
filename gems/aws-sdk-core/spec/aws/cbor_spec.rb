# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  describe Cbor do
    [:cbor].each do |engine|
      describe("ENGINE: #{engine}") do

        begin
          Cbor.engine = engine
        rescue LoadError
          next
        end

        describe '.encode' do
          it 'encodes an object into bytes' do
            expect(Cbor.encode('abc')).to eq("\x63abc")
          end
        end

        describe '.decode' do
          it 'decodes bytes into an object' do
            # frozen string
            bytes = StringIO.new("\x63abc").read
            expect(Cbor.decode(bytes)).to eq('abc')
          end
        end
      end
    end
  end
end
