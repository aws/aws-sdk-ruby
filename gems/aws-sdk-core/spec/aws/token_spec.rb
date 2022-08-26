# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  describe Token do

    it 'provides access to the token' do
      expect(Token.new('token').token).to eq('token')
    end

    it 'defaults the expiration nil' do
      expect(Token.new('token').expiration).to be(nil)
    end

    it 'provides access to the expiration' do
      expiration = Time.now
      expect(Token.new('token', expiration).expiration).to be(expiration)
    end

    describe '#set?' do

      it 'returns true when the token is a non nil value' do
        expect(Token.new('token').set?).to be(true)
      end

      it 'returns false if the token is nil' do
        expect(Token.new(nil).set?).to be(false)
      end

      it 'returns false if the token is empty' do
        expect(Token.new('').set?).to be(false)
      end
    end
  end
end
