# frozen_string_literal: true

require 'openssl'

module Aws
  module S3
    module EncryptionV3
      # @api private
      module Utils

        class << self

          def encrypt_aes_gcm(key, data, auth_data)
            cipher = aes_encryption_cipher(:GCM, key)
            cipher.iv = (iv = cipher.random_iv)
            cipher.auth_data = auth_data

            iv + cipher.update(data) + cipher.final + cipher.auth_tag
          end

          def encrypt_rsa(key, data, auth_data)
            # Plaintext must be KeyLengthInBytes (1 Byte) + DataKey + AuthData
            buf = [data.bytesize] + data.unpack('C*') + auth_data.unpack('C*')
            key.public_encrypt(buf.pack('C*'), OpenSSL::PKey::RSA::PKCS1_OAEP_PADDING)
          end

          def decrypt(key, data)
            begin
              case key
              when OpenSSL::PKey::RSA # asymmetric decryption
                key.private_decrypt(data)
              when String # symmetric Decryption
                cipher = aes_cipher(:decrypt, :ECB, key, nil)
                cipher.update(data) + cipher.final
              end
            rescue OpenSSL::Cipher::CipherError
              msg = 'decryption failed, possible incorrect key'
              raise Errors::DecryptionError, msg
            end
          end

          def decrypt_aes_gcm(key, data, auth_data)
            # data is iv (12B) + key + tag (16B)
            buf = data.unpack('C*')
            iv = buf[0,12].pack('C*') # iv will always be 12 bytes
            tag = buf[-16, 16].pack('C*') # tag is 16 bytes
            enc_key = buf[12, buf.size - (12+16)].pack('C*')
            cipher = aes_cipher(:decrypt, :GCM, key, iv)
            cipher.auth_tag = tag
            cipher.auth_data = auth_data
            cipher.update(enc_key) + cipher.final
          end

          # returns the decrypted data + auth_data
          def decrypt_rsa(key, enc_data)
            # Plaintext must be KeyLengthInBytes (1 Byte) + DataKey + AuthData
            buf = key.private_decrypt(enc_data, OpenSSL::PKey::RSA::PKCS1_OAEP_PADDING).unpack('C*')
            key_length = buf[0]
            data = buf[1, key_length].pack('C*')
            auth_data = buf[key_length+1, buf.length - key_length].pack('C*')
            [data, auth_data]
          end

          # @param [String] block_mode "CBC" or "ECB"
          # @param [OpenSSL::PKey::RSA, String, nil] key
          # @param [String, nil] iv The initialization vector
          def aes_encryption_cipher(block_mode, key = nil, iv = nil)
            aes_cipher(:encrypt, block_mode, key, iv)
          end

          # @param [String] block_mode "CBC" or "ECB"
          # @param [OpenSSL::PKey::RSA, String, nil] key
          # @param [String, nil] iv The initialization vector
          def aes_decryption_cipher(block_mode, key = nil, iv = nil)
            aes_cipher(:decrypt, block_mode, key, iv)
          end

          # @param [String] mode "encrypt" or "decrypt"
          # @param [String] block_mode "CBC" or "ECB"
          # @param [OpenSSL::PKey::RSA, String, nil] key
          # @param [String, nil] iv The initialization vector
          def aes_cipher(mode, block_mode, key, iv)
            cipher = key ?
              OpenSSL::Cipher.new("aes-#{cipher_size(key)}-#{block_mode.downcase}") :
              OpenSSL::Cipher.new("aes-256-#{block_mode.downcase}")
            cipher.send(mode) # encrypt or decrypt
            cipher.key = key if key
            cipher.iv = iv if iv
            cipher
          end

          # @param [String] key
          # @return [Integer]
          # @raise ArgumentError
          def cipher_size(key)
            key.bytesize * 8
          end

          # There is only 1 supported algorithm suite at this time
          ENCRYPTION_KEY_INFO = [0x00, 0x73].pack('C*').freeze + "DERIVEKEY".encode('UTF-8')
          COMMITMENT_KEY_INFO = [0x00, 0x73].pack('C*').freeze + "COMMITKEY".encode('UTF-8')

          SHA512_DIGEST = OpenSSL::Digest::SHA512.new.freeze
          V3_IV_BYTES = ("\x00" * 12).freeze
          ALGO_ID = [0x00, 0x73].pack('C*').freeze

          def generate_alg_aes_256_gcm_hkdf_sha512_commit_key_cipher(data_key)

            ##= ../specification/s3-encryption/encryption.md#content-encryption
            ##% The client MUST generate an IV or Message ID using the length of the IV or Message ID defined in the algorithm suite.
            message_id = Utils.generate_message_id()
            ##= ../specification/s3-encryption/key-derivation.md#hkdf-operation
            ##% - The salt MUST be the Message ID with the length defined in the algorithm suite.
            commitment_key = Utils.derive_commitment_key(data_key, message_id)
            cipher = alg_aes_256_gcm_hkdf_sha512_commit_key_cipher(:encrypt, data_key, message_id)

            ##= ../specification/s3-encryption/encryption.md#content-encryption
            ##% The generated IV or Message ID MUST be set or returned from the encryption process such that it can be included in the content metadata.
            [cipher, message_id, commitment_key]
          end

          def derive_alg_aes_256_gcm_hkdf_sha512_commit_key_cipher(data_key, message_id, stored_commitment_key)
            unless data_key.length == 32
              raise DecryptionError, "Data key length does not match algorithm suite"
            end

            unless message_id.length == 28
              raise DecryptionError, "Message id length does not match algorithm suite"
            end

            unless stored_commitment_key.length == 28
              raise DecryptionError, "Commitment key length does not match algorithm suite"
            end

            unless OpenSSL.secure_compare(
              Utils.derive_commitment_key(data_key, message_id),
              stored_commitment_key
            )
              raise DecryptionError, "Commitment key verification failed"
            end

            alg_aes_256_gcm_hkdf_sha512_commit_key_cipher(:decrypt, data_key, message_id)
          end

          def alg_aes_256_gcm_hkdf_sha512_commit_key_cipher(mode, data_key, message_id)
            ##= ../specification/s3-encryption/key-derivation.md#hkdf-operation
            ##% The client MUST initialize the cipher, or call an AES-GCM encryption API, with the derived encryption key, an IV containing only zeros, and the tag length defined in the Algorithm Suite when encrypting or decrypting with ALG_AES_256_GCM_HKDF_SHA512_COMMIT_KEY.
            cipher =  Utils.aes_cipher(
              mode,
              :GCM,
              Utils.derive_encryption_key(data_key, message_id),
              ##= ../specification/s3-encryption/key-derivation.md#hkdf-operation
              ##% When encrypting or decrypting with ALG_AES_256_GCM_HKDF_SHA512_COMMIT_KEY, the IV used in the AES-GCM content encryption/decryption MUST contain only zeros of the length defined in the algorithm suite.
              V3_IV_BYTES
            ) #OpenSSL::Cipher.new("aes-256-gcm")
            ##= ../specification/s3-encryption/key-derivation.md#hkdf-operation
            ##% The client MUST set the AAD to the Algorithm Suite ID represented as bytes.
            cipher.auth_data = ALGO_ID # auth_data must be set after key and iv
            cipher
          end

          def generate_data_key()
            OpenSSL::Random.random_bytes(32)
          end

          def generate_message_id()
            ##= ../specification/s3-encryption/encryption.md#content-encryption
            ##% The client MUST generate an IV or Message ID using the length of the IV or Message ID defined in the algorithm suite.
            OpenSSL::Random.random_bytes(28)
          end

          def derive_encryption_key(data_key, message_id)
            ##= ../specification/s3-encryption/key-derivation.md#hkdf-operation
            ##% - The DEK input pseudorandom key MUST be the output from the extract step.
            hkdf(
              data_key,
              ##= ../specification/s3-encryption/key-derivation.md#hkdf-operation
              ##% - The salt MUST be the Message ID with the length defined in the algorithm suite.
              message_id,
              ##= ../specification/s3-encryption/key-derivation.md#hkdf-operation
              ##% - The input info MUST be a concatenation of the algorithm suite ID as bytes followed by the string DERIVEKEY as UTF8 encoded bytes.
              ENCRYPTION_KEY_INFO,
              ##= ../specification/s3-encryption/key-derivation.md#hkdf-operation
              ##% - The length of the output keying material MUST equal the encryption key length specified by the algorithm suite encryption settings.
              32
            )
          end

          def derive_commitment_key(data_key, message_id)
            ##= ../specification/s3-encryption/key-derivation.md#hkdf-operation
            ##% - The CK input pseudorandom key MUST be the output from the extract step.
            hkdf(
              data_key,
              message_id,
              ##= ../specification/s3-encryption/key-derivation.md#hkdf-operation
              ##% - The input info MUST be a concatenation of the algorithm suite ID as bytes followed by the string COMMITKEY as UTF8 encoded bytes.
              COMMITMENT_KEY_INFO,
              ##= ../specification/s3-encryption/key-derivation.md#hkdf-operation
              ##% - The length of the output keying material MUST equal the commit key length specified by the supported algorithm suites.
              28
            )
          end

          def valid_commitment_key?(derived, stored)
            OpenSSL.secure_compare(derived, stored)
          end

          def hkdf(input_key_material, salt, info, desired_length)
            OpenSSL::KDF.hkdf(
              ##= ../specification/s3-encryption/key-derivation.md#hkdf-operation
              ##% - The input keying material MUST be the plaintext data key (PDK) generated by the key provider.
              input_key_material,
              salt: salt,
              info: info,
              ##= ../specification/s3-encryption/key-derivation.md#hkdf-operation
              ##% - The length of the input keying material MUST equal the key derivation input length specified by the algorithm suite commit key derivation setting.
              length: desired_length,
              ##= ../specification/s3-encryption/key-derivation.md#hkdf-operation
              ##% - The hash function MUST be specified by the algorithm suite commitment settings.
              hash: SHA512_DIGEST
            )
          end

        end
      end
    end
  end
end
