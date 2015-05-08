require 'base64'

module Aws
  module S3
    module Encryption
      # @api private
      class DecryptHandler < Seahorse::Client::Handler

        def call(context)
          attach_http_event_listeners(context)
          @handler.call(context)
        end

        private

        def attach_http_event_listeners(context)
          context.http_response.on_headers(200) do
            cipher = decryption_cipher(context)
            body = context.http_response.body
            context.http_response.body = IODecrypter.new(cipher, body)
          end

          context.http_response.on_success(200) do
            decrypter = context.http_response.body
            decrypter.finalize
            decrypter.io.rewind if decrypter.io.respond_to?(:rewind)
            context.http_response.body = decrypter.io
          end

          context.http_response.on_error do
            if context.http_response.body.is_a?(IODecrypter)
              context.http_response.body = context.http_response.body.io
            end
          end
        end

        def decryption_cipher(context)
          if envelope = get_encryption_envelope(context)
            key_provider = context[:encryption][:key_provider]
            key = key_provider.key_for(envelope['x-amz-matdesc'])
            envelope_key = Utils.decrypt(key, decode64(envelope['x-amz-key']))
            envelope_iv = decode64(envelope['x-amz-iv'])
            Utils.aes_decryption_cipher(:CBC, envelope_key, envelope_iv)
          else
            raise Errors::DecryptionError, "unable to locate encyrption envelope"
          end
        end

        def get_encryption_envelope(context)
          if context[:encryption][:envelope_location] == :metadata
            envelope_from_metadata(context) || envelope_from_instr_file(context)
          else
            envelope_from_instr_file(context) || envelope_from_metadata(context)
          end
        end

        def envelope_from_metadata(context)
          keys = %w(x-amz-key x-amz-iv x-amz-matdesc)
          envelope = keys.each.with_object({}) do |key, hash|
            if value = context.http_response.headers["x-amz-meta-#{key}"]
              hash[key] = value
            end
          end
          envelope.keys == keys ? envelope : nil
        end

        def envelope_from_instr_file(context)
          suffix = context[:encryption][:instruction_file_suffix]
          Json.load(context.client.get_object(
            bucket: context.params[:bucket],
            key: context.params[:key] + suffix
          ).body.read)
        rescue S3::Errors::ServiceError, Json::ParseError
          nil
        end

        def decode64(str)
          Base64.decode64(str)
        end

      end
    end
  end
end
