require 'base64'

module Aws
  module S3
    module Encryption
      # @api private
      class EncryptHandler < Seahorse::Client::Handler

        def call(context)
          cipher = Utils.aes_encryption_cipher(:CBC)
          context[:encryption][:cipher] = cipher
          envelope = {
            'x-amz-key' => encode64(encrypt(context, envelope_key(cipher))),
            'x-amz-iv' => encode64(envelope_iv(cipher)),
            'x-amz-matdesc' => context[:encryption][:materials].description,
          }
          apply_encryption_envelope(context, envelope)
          apply_encryption_cipher(context, cipher)
          @handler.call(context)
        end

        private

        def apply_encryption_envelope(context, envelope)
          if context[:encryption][:envelope_location] == :metadata
            context.params[:metadata] ||= {}
            context.params[:metadata].update(envelope)
          else # :instruction_file
            suffix = context[:encryption][:instruction_file_suffix]
            context.client.put_object(
              bucket: context.params[:bucket],
              key: context.params[:key] + suffix,
              body: Json.dump(envelope)
            )
          end
        end

        def apply_encryption_cipher(context, cipher)
          io = context.params[:body] || ''
          io = StringIO.new(io) if String === io
          context.params[:body] = IOEncrypter.new(cipher, io)
          context.params[:metadata] ||= {}
          context.params[:metadata]['x-amz-unencrypted-content-length'] = io.size
          if md5 = context.params.delete(:content_md5)
            context.params[:metadata]['x-amz-unencrypted-content-md5'] = md5
          end
          context.http_response.on_headers do
            context.params[:body].close
          end
        end

        def envelope_key(cipher)
          cipher.key = cipher.random_key
        end

        def envelope_iv(cipher)
          cipher.iv = cipher.random_iv
        end

        def encode64(str)
          Base64.encode64(str).split("\n") * ""
        end

        def encrypt(context, data)
          Utils.encrypt(context[:encryption][:materials].key, data)
        end

      end
    end
  end
end
