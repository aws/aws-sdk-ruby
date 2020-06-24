require 'base64'

module Aws
  module S3
    module EncryptionV2
      # @api private
      class DefaultCipherProvider

        def initialize(options = {})
          @key_provider = options[:key_provider]
        end

        # @return [Array<Hash,Cipher>] Creates an returns a new encryption
        #   envelope and encryption cipher.
        def encryption_cipher(options = {})
          cipher = Utils.aes_encryption_cipher(:GCM)
          cek_alg = 'AES/GCM/NoPadding'
          if @key_provider.encryption_materials.key.is_a? OpenSSL::PKey::RSA
            wrap_alg = 'RSA-OAEP-SHA1'
            enc_key = encode64(encrypt_rsa(envelope_key(cipher), cek_alg))
          else
            wrap_alg = 'AES/GCM'
            enc_key = encode64(encrypt_aes_gcm(envelope_key(cipher), cek_alg))
          end
          envelope = {
            'x-amz-key-v2' => enc_key,
            'x-amz-cek-alg' => cek_alg,
            'x-amz-tag-len' => 16 * 8,
            'x-amz-wrap-alg' => wrap_alg,
            'x-amz-iv' => encode64(envelope_iv(cipher)),
            'x-amz-matdesc' => materials_description,
          }
          cipher.auth_data = '' # auth_data must be set after key and iv
          [envelope, cipher]
        end

        # @return [Cipher] Given an encryption envelope, returns a
        #   decryption cipher.
        def decryption_cipher(envelope, options = {})
          master_key = @key_provider.key_for(envelope['x-amz-matdesc'])
          if envelope.key? 'x-amz-key'
            # Support for decryption of legacy objects
            key = Utils.decrypt(master_key, decode64(envelope['x-amz-key']))
            iv = decode64(envelope['x-amz-iv'])
            Utils.aes_decryption_cipher(:CBC, key, iv)
          else
            if envelope['x-amz-cek-alg'] != 'AES/GCM/NoPadding'
              raise ArgumentError, 'Unsupported cek-alg: ' \
                "#{envelope['x-amz-cek-alg']}"
            end
            key =
              case envelope['x-amz-wrap-alg']
              when 'AES/GCM'
                Utils.decrypt_aes_gcm(master_key,
                                    decode64(envelope['x-amz-key-v2']),
                                    envelope['x-amz-cek-alg'])
              when 'RSA-OAEP-SHA1'
                key, cek_alg = Utils.decrypt_rsa(master_key, decode64(envelope['x-amz-key-v2']))
                raise Errors::DecryptionError unless cek_alg == envelope['x-amz-cek-alg']
                key
              else
              raise ArgumentError, 'Unsupported wrap-alg: ' \
                "#{envelope['x-amz-wrap-alg']}"
            end
            iv = decode64(envelope['x-amz-iv'])
            Utils.aes_decryption_cipher(:GCM, key, iv)
          end
        end

        private

        def envelope_key(cipher)
          cipher.key = cipher.random_key
        end

        def envelope_iv(cipher)
          cipher.iv = cipher.random_iv
        end

        def encrypt_aes_gcm(data, auth_data)
          Utils.encrypt_aes_gcm(@key_provider.encryption_materials.key, data, auth_data)
        end

        def encrypt_rsa(data, auth_data)
          Utils.encrypt_rsa(@key_provider.encryption_materials.key, data, auth_data)
        end

        def materials_description
          @key_provider.encryption_materials.description
        end

        def encode64(str)
          Base64.encode64(str).split("\n") * ''
        end

        def decode64(str)
          Base64.decode64(str)
        end

      end
    end
  end
end
