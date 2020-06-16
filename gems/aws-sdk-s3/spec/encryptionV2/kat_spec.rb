require_relative '../spec_helper'
require 'base64'
require 'openssl'
require 'json'

module Aws
  module S3
    module EncryptionV2

      # The known answer tests are a shared set of test cases
      # to ensure interop between SDKs
      describe 'Client Side Encryption AES/GCM Known Answer Tests' do

        def self.from_h(s)
          [s].pack('H*')
        end

        # all the KAT values are hex
        def self.build_kat(raw_kat)
          Struct.new(:comment, :key, :plain_text, :aad, :iv, :encrypted, :tag).new(
            raw_kat['comment'],
            from_h(raw_kat['key']),
            from_h(raw_kat['pt']),
            from_h(raw_kat['aad']),
            from_h(raw_kat['iv']),
            from_h(raw_kat['ct']),
            from_h(raw_kat['tag'])
          )
        end

        fixture_path = File.expand_path('../../fixtures/encryption', __FILE__)
        kats = JSON.load File.new(File.join(fixture_path, 'aes_gcm_kat.json'))
        kats.each_with_index do |raw, i|
          kat = build_kat(raw)

          it "passes test case #{i+1}: #{kat.comment}" do
            enc_cipher = Utils::aes_encryption_cipher(:GCM, kat.key)
            enc_cipher.iv = kat.iv
            enc_cipher.auth_data = kat.aad
            buf = IOEncrypter.new(enc_cipher, StringIO.new(kat.plain_text)).read.unpack('C*')
            encrypted = buf[0, buf.size-16].pack('C*')
            auth_tag = buf[-16, 16].pack('C*')
            expect(encrypted).to eq(kat.encrypted)
            expect(auth_tag).to eq(kat.tag)

            dec_cipher = Utils::aes_decryption_cipher(:GCM, kat.key)
            dec_cipher.iv = kat.iv
            dec_cipher.auth_tag = kat.tag
            dec_cipher.auth_data = kat.aad
            dec_out = StringIO.new
            dec = IODecrypter.new(dec_cipher, dec_out)
            dec.write(kat.encrypted) unless kat.encrypted.size.zero?
            dec.finalize
            dec_out.rewind
            expect(dec_out.read).to eq(kat.plain_text)
          end
        end
      end

    end
  end
end
