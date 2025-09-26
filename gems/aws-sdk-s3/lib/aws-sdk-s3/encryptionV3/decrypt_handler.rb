# frozen_string_literal: true

require 'base64'

module Aws
  module S3
    module EncryptionV3
      # @api private
      class DecryptHandler < Seahorse::Client::Handler
        @@warned_response_target_proc = false

        ENVELOP_KEY = %w(
          x-amz-3
          x-amz-w
          x-amz-m
          x-amz-t
        )

        METADATA_KEY = %w(
          x-amz-c
          x-amz-d
          x-amz-i
        )

        POSSIBLE_ENVELOPE_KEYS = (ENVELOP_KEY + METADATA_KEY).uniq

        # POSSIBLE_WRAPPING_FORMATS = %w(
        #   AES/GCM
        #   kms
        #   kms+context
        #   RSA-OAEP-SHA1
        # )

        POSSIBLE_WRAPPING_FORMATS = %w(
          01
          02
          11
          12
          21
          22
        )

        POSSIBLE_ENCRYPTION_FORMATS = %w(
          115
        )

        def call(context)
          attach_http_event_listeners(context)
          apply_cse_user_agent(context)

          if context[:response_target].is_a?(Proc) && !@@warned_response_target_proc
            @@warned_response_target_proc = true
            warn(':response_target is a Proc, or a block was provided. ' \
              'Read the entire object to the ' \
              'end before you start using the decrypted data. This is to ' \
              'verify that the object has not been modified since it ' \
              'was encrypted.')

          end

          @handler.call(context)
        end

        private

        def attach_http_event_listeners(context)

          context.http_response.on_headers(200) do
            cipher, envelope = decryption_cipher(context)
            decrypter = authenticated_decrypter(context, cipher, envelope)
            context.http_response.body = decrypter
          end

          context.http_response.on_success(200) do
            decrypter = context.http_response.body
            decrypter.finalize
            decrypter.io.rewind if decrypter.io.respond_to?(:rewind)
            context.http_response.body = decrypter.io
          end

          context.http_response.on_error do
            if context.http_response.body.respond_to?(:io)
              context.http_response.body = context.http_response.body.io
            end
          end
        end

        def decryption_cipher(context)
          if (envelope = get_encryption_envelope(context))
            cipher = context[:encryption][:cipher_provider]
             .decryption_cipher(
               envelope,
               context[:encryption]
             )
            [cipher, envelope]
          else
            raise Errors::DecryptionError, "unable to locate encryption envelope"
          end
        end

        def get_encryption_envelope(context)
          # Get initial envelope data from :envelope_location
          envelope = if context[:encryption][:envelope_location] == :metadata
                      envelope_from_metadata(context)
                    else
                      envelope_from_instr_file(context)
                    end

          # If empty or incomplete, get/merge data from secondary source
          if envelope.nil? || envelope.empty? || !complete_envelop?(envelope)
            secondary = if context[:encryption][:envelope_location] == :metadata
                          envelope_from_instr_file(context)
                        else
                          envelope_from_metadata(context)
                        end
            envelope.merge!(secondary) if secondary
          end

          v3_envelope?(envelope)
        end

        def complete_envelop?(possible_envelope)
          # V3 envelops always store some information in metadata
          # If we look at the metadata, we may still need to check the instruction file
          # Similarly, if we start checking the instruction file,
          # we sill need to get the message id and commitment key from the metadata
          envelop_count = V3_ENVELOP_KEY.count { |key| possible_envelope.key?(key) }
          metadata_count = V3_METADATA_KEY.count { |key| possible_envelope.key?(key) }

          # If we have all keys, we are done
          (envelop_count == V3_ENVELOP_KEY.size && metadata_count == V3_METADATA_KEY.size) ||
          # If we have 0 keys, then this is done too.
          # Because it means we are not a v3 committing message.
          (envelop_count == 0 && metadata_count == 0)
        end

        def envelope_from_metadata(context)
          POSSIBLE_ENVELOPE_KEYS.filter_map do |suffix|
            if value = context.http_response.headers["x-amz-meta-#{suffix}"]
              [suffix, value]
            end
          end.to_h
        end

        def envelope_from_instr_file(context)
          suffix = context[:encryption][:instruction_file_suffix]
          possible_envelope = Json.load(context.client.get_object(
            bucket: context.params[:bucket],
            key: context.params[:key] + suffix
          ).body.read)
          unless V3_METADATA_KEY.any? { |key| possible_envelope.key?(key) }
            keys = V3_METADATA_KEY & possible_envelope.keys
            msg = "unsupported metadata key found in instruction file: #{keys.join(', ')}"
            raise Errors::DecryptionError, msg
          end
          possible_envelope
        rescue S3::Errors::ServiceError, Json::ParseError
          nil
        end

        def v3_envelope?(envelope)
          unless POSSIBLE_V3_ENCRYPTION_FORMATS.include? envelope['x-amz-c']
            alg = envelope['x-amz-c'].inspect
            msg = "unsupported content encrypting key (cek) format: #{alg}"
            raise Errors::DecryptionError, msg
          end
          unless POSSIBLE_V3_WRAPPING_FORMATS.include? envelope['x-amz-w']
            alg = envelope['x-amz-w'].inspect
            msg = "unsupported key wrapping algorithm: #{alg}"
            raise Errors::DecryptionError, msg
          end
          unless (missing_keys = V3_ENVELOPE_KEYS - envelope.keys).empty?
            msg = "incomplete v3 encryption envelope:\n"
            msg += "  missing: #{missing_keys.join(',')}\n"
            raise Errors::DecryptionError, msg
          end
          envelope
        end

        # This method fetches the tag from the end of the object by
        # making a GET Object w/range request. This auth tag is used
        # to initialize the cipher, and the decrypter truncates the
        # auth tag from the body when writing the final bytes.
        def authenticated_decrypter(context, cipher, envelope)
          http_resp = context.http_response
          content_length = http_resp.headers['content-length'].to_i
          auth_tag_length = auth_tag_length(envelope)

          auth_tag = context.client.get_object(
            bucket: context.params[:bucket],
            key: context.params[:key],
            version_id: context.params[:version_id],
            range: "bytes=-#{AES_GCM_TAG_LEN_BYTES}"
          ).body.read

          cipher.auth_tag = auth_tag
          cipher.auth_data = ''

          # The encrypted object contains both the cipher text
          # plus a trailing auth tag.
          IOAuthDecrypter.new(
            io: http_resp.body,
            encrypted_content_length: content_length - auth_tag_length,
            cipher: cipher)
        end

        def apply_cse_user_agent(context)
          if context.config.user_agent_suffix.nil?
            context.config.user_agent_suffix = EC_USER_AGENT
          elsif !context.config.user_agent_suffix.include? EC_USER_AGENT
            context.config.user_agent_suffix += " #{EC_USER_AGENT}"
          end
        end

      end
    end
  end
end
