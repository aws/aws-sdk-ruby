require_relative '../spec_helper'
require 'openssl'

module Aws
  module S3
    module Encryption
      describe IOEncrypter do
        let(:key) do
          Base64.decode64('kM5UVbhE/4rtMZJfsadYEdm2vaKFsmV2f5+URSeUCV4=')
        end

        let(:iv) { Base64.decode64('k8n8oF8ZNPRKAYY0RFqN2Q==') }

        let(:plain_text) { 'The quick brown fox jumps over the lazy dog.' }

        let(:cipher_text) do
          Base64.decode64(
            'MUeGuvB6IcjFo5VBWET659nWwx3+YH21HyVhF2Jf8bQ++2wvmtpXaGMJC2fae4j/'
          )
        end

        let(:cipher) do
          cipher = OpenSSL::Cipher.new('AES-256-CBC')
          cipher.encrypt
          cipher.key = key
          cipher.iv = iv
          cipher
        end

        it 'encrypts an IO object' do
          io = IOEncrypter.new(cipher, StringIO.new(plain_text))
          expect(io.read).to eq(cipher_text)
        end

        it 'supports partial reads' do
          io = IOEncrypter.new(cipher, StringIO.new(plain_text))
          parts = []
          while part = io.read(3)
            parts << part
          end
          expect(parts.join).to eq(cipher_text)
        end

        it 'caches the cipher-text of large objects to disk' do
          tempfile = double('tempfile').as_null_object
          expect(tempfile).to receive(:write)
          expect(tempfile).to receive(:binmode)
          allow(Tempfile).to receive(:new).and_return(tempfile)

          large_io = double(
            'large-io-object',
            size: 10 * 1024 * 1024, read: nil
          )
          allow(large_io).to receive(:read).and_return('data').and_return(nil)

          IOEncrypter.new(cipher, large_io)
        end

        it 'supports re-reading from the cache file to enable retries' do
          data = '.' * (2 * 1024 * 1024) # 2MB file
          io = IOEncrypter.new(cipher, StringIO.new(data))
          cipher_text = io.read
          io.close
          expect(io.read).to eq(cipher_text) # automatically re-opens the file
        end
      end
    end
  end
end
