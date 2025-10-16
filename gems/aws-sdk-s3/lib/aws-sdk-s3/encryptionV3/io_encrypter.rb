# frozen_string_literal: true

require 'stringio'
require 'tempfile'

module Aws
  module S3
    module EncryptionV3

      # Provides an IO wrapper encrypting a stream of data.
      # @api private
      class IOEncrypter

        # @api private
        ONE_MEGABYTE = 1024 * 1024

        ##= ../specification/s3-encryption/encryption.md#content-encryption
        ##% The client MUST validate that the length of the plaintext bytes does not exceed the algorithm suite's cipher's maximum content length in bytes.
        #  Maximum number of bytes for a single AES-GCM "operation."
        # This is related to the GHASH block size,
        # and can be thought of as the maximum bytes
        # that can be encrypted with a single key/IV pair.
        # The AWS Encryption SDK for Javascript
        # does not support non-framed encrypt
        # https://github.com/awslabs/aws-encryption-sdk-specification/blob/master/data-format/message-body.md#non-framed-data
        # So this value is only needed to ensure
        # that messages submitted for decrypt
        # are well formed.
        # 
        BYTES_PER_AES_GCM_NONCE = 2 ** 36 - 32,

        def initialize(cipher, io)
          @encrypted = io.size <= ONE_MEGABYTE ?
            encrypt_to_stringio(cipher, io.read) :
            encrypt_to_tempfile(cipher, io)
          @size = @encrypted.size
        end

        # @return [Integer]
        attr_reader :size

        def read(bytes = nil, output_buffer = nil)
          if @encrypted.is_a?(Tempfile) && @encrypted.closed?
            @encrypted.open
            @encrypted.binmode
          end
          @encrypted.read(bytes, output_buffer)
        end

        def rewind
          @encrypted.rewind
        end

        # @api private
        def close
          @encrypted.close if @encrypted.is_a?(Tempfile)
        end

        private

        ##= ../specification/s3-encryption/encryption.md#alg-aes-256-gcm-hkdf-sha512-commit-key
        ##% The client MUST append the GCM auth tag to the ciphertext if the underlying crypto provider does not do so automatically.

        def encrypt_to_stringio(cipher, plain_text)
          if plain_text.empty?
            StringIO.new(cipher.final + cipher.auth_tag)
          else
            StringIO.new(cipher.update(plain_text) + cipher.final + cipher.auth_tag)
          end
        end

        def encrypt_to_tempfile(cipher, io)
          encrypted = Tempfile.new(self.object_id.to_s)
          encrypted.binmode
          ##= ../specification/s3-encryption/encryption.md#content-encryption
          ##= type=implication
          ##% The client MUST validate that the length of the plaintext bytes does not exceed the algorithm suite's cipher's maximum content length in bytes.
          # The expectation is that this is handled by the underlying cryptographic provider.
          # In Ruby this is OpenSSL by default.
          # See OpenSSL: https://github.com/openssl/openssl/blob/master/crypto/modes/gcm128.c#L784
          # The relevant line is:
          # if (mlen > ((U64(1) << 36) - 32) || (sizeof(len) == 8 && mlen < len))
          #   return -1;          
          while chunk = io.read(ONE_MEGABYTE, read_buffer ||= String.new)
            if cipher.method(:update).arity == 1
              encrypted.write(cipher.update(chunk))
            else
              encrypted.write(cipher.update(chunk, cipher_buffer ||= String.new))
            end
          end
          encrypted.write(cipher.final)
          encrypted.write(cipher.auth_tag)
          encrypted.rewind
          encrypted
        end

      end
    end
  end
end
