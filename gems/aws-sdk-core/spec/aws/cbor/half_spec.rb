# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  describe Cbor::Half do

    it 'correctly decodes half precision numbers' do
      expect(Cbor::Half.decode(0)).to eq(0)
      expect(Cbor::Half.decode(0x3c00)).to eq(1)
      expect(Cbor::Half.decode(0x7bff)).to eq(65504)
      expect(Cbor::Half.decode(0x3555)).to be_within(0.0001).of(0.3333)
    end

    it 'decodes inf and nan' do
      expect(Cbor::Half.decode(0x7c00)).to eq(Float::INFINITY)
      expect(Cbor::Half.decode(0xfc00)).to eq(-Float::INFINITY)
      expect(Cbor::Half.decode(0x7c01).nan?).to be true
    end
  end
end