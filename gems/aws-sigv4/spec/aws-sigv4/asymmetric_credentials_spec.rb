# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module SigV4
    describe AsymmetricCredentials do
      # values for d,pk_x and pk_y are taken from get-vanilla sigv4a reference test
      let(:access_key_id) { 'AKIDEXAMPLE' }
      let(:secret_access_key) { 'wJalrXUtnFEMI/K7MDENG+bPxRfiCYEXAMPLEKEY' }
      let(:assymetric_key) { subject.derive_asymmetric_key(access_key_id, secret_access_key) }

      describe '#derive_asymmetric_key' do
        it 'returns an EC PKey' do
          expect(assymetric_key[:ec]).to be_a(OpenSSL::PKey::EC)
        end

        it 'computes the private key' do
          expect(assymetric_key[:d]).to be_a(Integer)
          expect(assymetric_key[:d]).to eq(57_437_631_014_447_175_651_096_573_782_723_065_210_935_272_504_912_550_018_654_791_361_221_980_923_292) # rubocop:disable Layout/LineLength
        end

        it 'computes the public key' do
          expect(assymetric_key[:public_key]).to be_a(OpenSSL::PKey::EC::Point)
        end

        it 'computes the pk_x and pk_y' do
          expect(assymetric_key[:pk_x]).to be_a(Integer)
          expect(assymetric_key[:pk_x]).to eq 82_493_312_425_604_201_858_614_910_479_538_123_276_547_530_192_671_928_569_404_457_423_490_168_469_169 # rubocop:disable Layout/LineLength

          expect(assymetric_key[:pk_y]).to be_a(Integer)
          expect(assymetric_key[:pk_y]).to eq 60_777_455_846_638_291_266_199_385_583_357_715_250_110_920_888_403_467_466_325_436_560_561_456_866_584 # rubocop:disable Layout/LineLength
        end

        # ensure that encoding of private keys with MSB set result in valid EC objects
        context 'private key with most significant bit set' do
          let(:access_key_id) { 'ASIAJOP4OINN7EXAMPLE' }
          let(:secret_access_key) { 'bJalbXutNFeni/k7MDEnG/byxRfiCYEXAMPLEKEY' }
          let(:test_value) { 'test_value' }

          it 'derives a valid EC PKey' do
            signature = assymetric_key[:ec].dsa_sign_asn1(test_value)
            expect(assymetric_key[:ec].dsa_verify_asn1(test_value, signature)).to be_truthy
          end
        end
      end
    end
  end
end
