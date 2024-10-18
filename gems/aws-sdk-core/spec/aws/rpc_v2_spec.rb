# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  describe RpcV2 do
    [:cbor].each do |engine|
      describe("ENGINE: #{engine}") do

        begin
          RpcV2.engine = engine
        rescue LoadError
          next
        end

        describe '.encode' do
          it 'encodes an object into bytes' do
            expect(RpcV2.encode('abc')).to eq("\x63abc")
          end
        end

        describe '.decode' do
          it 'decodes bytes into an object' do
            # frozen string
            bytes = StringIO.new("\x63abc").read
            expect(RpcV2.decode(bytes)).to eq('abc')
          end
        end
      end
    end
  end
end
