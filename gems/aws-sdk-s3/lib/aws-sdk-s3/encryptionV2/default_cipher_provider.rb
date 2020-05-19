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
        def encryption_cipher
          cipher = Utils.aes_encryption_cipher(:GCM)
          cipher.auth_data = ''
          envelope = {
            'x-amz-key-v2' => encode64(encrypt(envelope_key(cipher))),
            'x-amz-cek-alg' => 'AES/GCM/NoPadding',
            'x-amz-tag-len' => 16 * 8,
            'x-amz-wrap-alg' => 'AES/GCM', # TODO: Update this after changing encrypt(key) above
            'x-amz-iv' => encode64(envelope_iv(cipher)),
            'x-amz-matdesc' => materials_description,
          }
          [envelope, cipher]
        end

        # @return [Cipher] Given an encryption envelope, returns a
        #   decryption cipher.
        def decryption_cipher(envelope)
          if envelope.key? 'x-amz-key'
            # Support for decryption of legacy objects
            master_key = @key_provider.key_for(envelope['x-amz-matdesc'])
            key = Utils.decrypt(master_key, decode64(envelope['x-amz-key']))
            iv = decode64(envelope['x-amz-iv'])
            Utils.aes_decryption_cipher(:CBC, key, iv)
          else
            puts "Building Decryption_cipher for: #{envelope}"
            master_key = @key_provider.key_for(envelope['x-amz-matdesc'])
            if envelope['x-amz-cek-alg'] != 'AES/GCM/NoPadding'
              raise ArgumentError, 'Unsupported cek-alg: ' \
                "#{envelope['x-amz-cek-alg']}"
            end
            key = Utils.decrypt(master_key, decode64(envelope['x-amz-key-v2']))
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

        def encrypt(data)
          Utils.encrypt(@key_provider.encryption_materials.key, data)
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
