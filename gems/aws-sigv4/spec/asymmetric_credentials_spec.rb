# frozen_string_literal: true

require_relative 'spec_helper'

module Aws
  module Sigv4
    describe AsymmetricCredentials do

      # values for d,pk_x and pk_y are taken from get-vanilla sigv4a reference test
      let(:access_key_id) { 'AKIDEXAMPLE' }
      let(:secret_access_key) { 'wJalrXUtnFEMI/K7MDENG+bPxRfiCYEXAMPLEKEY' }
      let(:ec) do
        subject.derive_asymmetric_key(access_key_id, secret_access_key)[0]
      end

      let(:extra) do
        subject.derive_asymmetric_key(access_key_id, secret_access_key)[1]
      end

      describe 'derive_asymmetric_key' do
        it 'returns an EC PKey' do
          expect(ec).to be_a(OpenSSL::PKey::EC)
        end

        it 'computes the private key' do
          expect(extra[:d]).to be_a(Integer)
          expect(extra[:d]).to eq 57437631014447175651096573782723065210935272504912550018654791361221980923292
        end

        it 'computes the public key' do
          expect(extra[:public_key]).to be_a(OpenSSL::PKey::EC::Point)
        end

        it 'computes the pk_x and pk_y' do
          expect(extra[:pk_x]).to be_a(Integer)
          expect(extra[:pk_x]).to eq 82493312425604201858614910479538123276547530192671928569404457423490168469169

          expect(extra[:pk_y]).to be_a(Integer)
          expect(extra[:pk_y]).to eq 60777455846638291266199385583357715250110920888403467466325436560561456866584
        end
      end
    end
  end
end
