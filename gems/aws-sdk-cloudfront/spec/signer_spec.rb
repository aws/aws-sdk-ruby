# frozen_string_literal: true

require_relative 'spec_helper'

module Aws
  module CloudFront
    describe Signer do
      let(:key_dir) { File.dirname(__FILE__) }

      describe ':hash_algorithm' do
        it 'defaults to SHA1' do
          signer = UrlSigner.new(key_pair_id: 'K', private_key_path: "#{key_dir}/sep_rsa_key")
          expect(signer.instance_variable_get(:@hash_algorithm)).to eq('SHA1')
        end

        it 'accepts SHA1 and SHA256' do
          %w[SHA1 SHA256 sha256].each do |alg|
            expect do
              UrlSigner.new(key_pair_id: 'K', private_key_path: "#{key_dir}/sep_rsa_key", hash_algorithm: alg)
            end.to_not raise_error
          end
        end

        it 'raises on an unsupported hash algorithm' do
          expect do
            UrlSigner.new(key_pair_id: 'K', private_key_path: "#{key_dir}/sep_rsa_key", hash_algorithm: 'SHA384')
          end.to raise_error(ArgumentError, /:hash_algorithm must be one of SHA1, SHA256/)
        end
      end

      describe 'private key validation' do
        it 'accepts a PKCS#8 RSA key' do
          expect do
            UrlSigner.new(key_pair_id: 'K', private_key_path: "#{key_dir}/sep_rsa_key")
          end.to_not raise_error
        end

        it 'accepts a PKCS#8 ECDSA P-256 key' do
          expect do
            UrlSigner.new(key_pair_id: 'K', private_key_path: "#{key_dir}/sep_ecdsa_key")
          end.to_not raise_error
        end

        it 'accepts a SEC1 ECDSA P-256 key' do
          expect do
            UrlSigner.new(key_pair_id: 'K', private_key_path: "#{key_dir}/ecdsa_dummy_key")
          end.to_not raise_error
        end

        it 'raises on an unsupported key type' do
          expect do
            UrlSigner.new(key_pair_id: 'K', private_key_path: "#{key_dir}/sep_dsa_key")
          end.to raise_error(ArgumentError, /unsupported private key type OpenSSL::PKey::DSA/)
        end

        it 'raises on an ECDSA key that is not P-256' do
          key = OpenSSL::PKey::EC.generate('secp384r1').to_pem
          expect do
            UrlSigner.new(key_pair_id: 'K', private_key: key)
          end.to raise_error(ArgumentError, /unsupported ECDSA curve `secp384r1'/)
        end

        it 'raises on an invalid key' do
          expect do
            UrlSigner.new(key_pair_id: 'K', private_key: 'not a key')
          end.to raise_error(ArgumentError, /invalid private key/)
        end
      end
    end
  end
end
