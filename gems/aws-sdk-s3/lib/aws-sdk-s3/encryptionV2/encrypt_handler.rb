require 'base64'

module Aws
  module S3
    module EncryptionV2
      # @api private
      class EncryptHandler < Seahorse::Client::Handler

        def call(context)
          envelope, cipher = context[:encryption][:cipher_provider].encryption_cipher
          apply_encryption_envelope(context, envelope, cipher)
          apply_encryption_cipher(context, cipher)
          @handler.call(context)
        end

        private

        def apply_encryption_envelope(context, envelope, cipher)
          context[:encryption][:cipher] = cipher
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
          io = StringIO.new(io) if io.is_a? String
          context.params[:body] = IOEncrypter.new(cipher, io)
          context.params[:metadata] ||= {}
          context.params[:metadata]['x-amz-unencrypted-content-length'] = io.size
          if md5 = context.params.delete(:content_md5)
            raise ArgumentError, 'content_md5 is not supported'
          end
          context.http_response.on_headers do
            context.params[:body].close
          end
        end

      end
    end
  end
end
