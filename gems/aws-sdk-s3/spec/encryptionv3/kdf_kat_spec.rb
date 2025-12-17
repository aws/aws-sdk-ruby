require_relative '../spec_helper'
require 'base64'
require 'openssl'
require 'json'

module Aws
  module S3
    module EncryptionV3

      # The known answer tests are a shared set of test cases
      # to ensure interop between SDKs
      context 'HKDF Known Answer Tests' do
        def self.from_h(s)
          [s].pack('H*')
        end

        # all the KAT values are hex
        def self.build_kat(raw_kat)
          Struct.new(:comment, :data_key, :message_id, :encryption_key, :commitment_key,
                     :plaintext, :ciphertext, :auth_tag).new(
            raw_kat['comment'],
            from_h(raw_kat['data_key']),
            from_h(raw_kat['message_id']),
            from_h(raw_kat['encryption_key']),
            from_h(raw_kat['commitment_key']),
            raw_kat['plaintext'] ? from_h(raw_kat['plaintext']) : nil,
            raw_kat['ciphertext'] ? from_h(raw_kat['ciphertext']) : nil,
            raw_kat['auth_tag'] ? from_h(raw_kat['auth_tag']) : nil
          )
        end

        fixture_path = File.expand_path('../fixtures/encryption', __dir__)
        kats = JSON.load_file(File.new(File.join(fixture_path, 'kdf_kat.json')))

        it "kat tests to verify" do
          expect(kats).not_to be_empty
        end

        kats.each_with_index do |raw, i|
          kat = build_kat(raw)

          it "passes KDF test case #{i+1}: #{kat.comment}" do
            encryption_key = Utils::derive_encryption_key(kat.data_key, kat.message_id)
            commitment_key = Utils::derive_commitment_key(kat.data_key, kat.message_id)

            expect(encryption_key).to eq(kat.encryption_key)
            expect(commitment_key).to eq(kat.commitment_key)

            # Only test encryption/decryption if plaintext is present
            if kat.plaintext             
              # Test decryption recovers original plaintext
              decipher = Utils.derive_alg_aes_256_gcm_hkdf_sha512_commit_key_cipher(
                kat.data_key, kat.message_id, kat.commitment_key
              )
              decipher.auth_tag = kat.auth_tag
              decrypted = decipher.update(kat.ciphertext) + decipher.final
              
              expect(decrypted).to eq(kat.plaintext)
            end
          end
        end
      end
    end
  end
end
