# frozen_string_literal: true

require 'base64'

require 'logger'

module Aws
  module S3
    module EncryptionV3
      # @api private
      class DecryptHandler < Seahorse::Client::Handler
        @@warned_response_target_proc = false

        V2_HANDLER = Aws::S3::EncryptionV2::DecryptHandler.new

        ENVELOP_KEY = %w(
          x-amz-3
          x-amz-w
        )

        OPTIONAL_ENVELOP_KEY = %w(
          x-amz-m
          x-amz-t
        )

        METADATA_KEY = %w(
          x-amz-c
          x-amz-d
          x-amz-i
        )

        POSSIBLE_ENVELOPE_KEYS = (ENVELOP_KEY + METADATA_KEY + OPTIONAL_ENVELOP_KEY).uniq
        REQUIRED_ENVELOPE_KEYS = (ENVELOP_KEY + METADATA_KEY).uniq

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
            ##= ../specification/s3-encryption/decryption.md#key-commitment
            ##% The S3EC MUST validate the algorithm suite used for decryption
            ##% against the key commitment policy before attempting to decrypt the content ciphertext.
            # This is because the commitment policy _always_ allows decrypting committing algorithms.
            # In the else branch we check to see if 
            decrypter = if context.http_response.headers.key?('x-amz-meta-x-amz-i')
                ##= ../specification/s3-encryption/data-format/content-metadata.md#determining-s3ec-object-status
                ##% - If the metadata contains "x-amz-3" and "x-amz-d" and "x-amz-i" then the object MUST be considered an S3EC-encrypted object using the V3 format.
                cipher, envelope = decryption_cipher(context)
                authenticated_decrypter(context, cipher, envelope)
              else
                if context[:encryption][:commitment_policy] == :require_encrypt_require_decrypt
                  ##= ../specification/s3-encryption/decryption.md#key-commitment
                  ##% If the commitment policy requires decryption using a committing algorithm suite,
                  ##% and the algorithm suite associated with the object does not support key commitment, then the S3EC MUST throw an exception.
                  ##= ../specification/s3-encryption/key-commitment.md#commitment-policy
                  ##% When the commitment policy is REQUIRE_ENCRYPT_REQUIRE_DECRYPT, the S3EC MUST NOT allow decryption using algorithm suites which do not support key commitment.
                  raise Errors::NonCommittingDecryptionError
                end
                ##= ../specification/s3-encryption/key-commitment.md#commitment-policy
                ##% When the commitment policy is FORBID_ENCRYPT_ALLOW_DECRYPT, the S3EC MUST allow decryption using algorithm suites which do not support key commitment.
                ##= ../specification/s3-encryption/key-commitment.md#commitment-policy
                ##% When the commitment policy is REQUIRE_ENCRYPT_ALLOW_DECRYPT, the S3EC MUST allow decryption using algorithm suites which do not support key commitment.
                cipher, envelope = V2_HANDLER.send(:decryption_cipher, context)
                V2_HANDLER.send(:get_decrypter, context, cipher, envelope)
              end 
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
            cipher = context[:encryption][:v3_cipher_provider]
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
          ##= ../specification/s3-encryption/data-format/content-metadata.md#determining-s3ec-object-status
          ##% If the object matches none of the V1/V2/V3 formats, the S3EC MUST attempt to get the instruction file.
          if envelope.nil? || envelope.empty? || !complete_envelop?(envelope)
            secondary = if context[:encryption][:envelope_location] == :metadata
                          envelope_from_instr_file(context)
                        else
                          envelope_from_metadata(context)
                        end
            envelope.merge!(secondary) if secondary
          end

          ##= ../specification/s3-encryption/data-format/metadata-strategy.md#object-metadata
          ##% If the S3EC does not support decoding the S3 Server's "double encoding" then it MUST return the content metadata untouched.
          v3_envelope?(envelope)
        end

        def complete_envelop?(possible_envelope)
          # V3 envelops always store some information in metadata
          # If we look at the metadata, we may still need to check the instruction file
          # Similarly, if we start checking the instruction file,
          # we sill need to get the message id and commitment key from the metadata
          envelop_count = ENVELOP_KEY.count { |key| possible_envelope.key?(key) }
          metadata_count = METADATA_KEY.count { |key| possible_envelope.key?(key) }

          # If we have all keys, we are done
          (envelop_count == ENVELOP_KEY.size && metadata_count == METADATA_KEY.size) ||
          # If we have 0 keys, then this is done too.
          # Because it means we are not a v3 committing message.
          (envelop_count == 0 && metadata_count == 0)
        end

        def envelope_from_metadata(context)
          POSSIBLE_ENVELOPE_KEYS.filter_map do |suffix|
            if value = context.http_response.headers["x-amz-meta-#{suffix}"]
              ##= ../specification/s3-encryption/data-format/metadata-strategy.md#object-metadata
              ##= type=exception
              ##= reason=This has never been supported in Ruby
              ##% The S3EC SHOULD support decoding the S3 Server's "double encoding".

              ##= ../specification/s3-encryption/data-format/metadata-strategy.md#object-metadata
              ##% If the S3EC does not support decoding the S3 Server's "double encoding" then it MUST return the content metadata untouched.
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
          unless METADATA_KEY.any? { |key| possible_envelope.key?(key) }
            keys = METADATA_KEY & possible_envelope.keys
            msg = "unsupported metadata key found in instruction file: #{keys.join(', ')}"
            raise Errors::DecryptionError, msg
          end
          possible_envelope
        rescue S3::Errors::ServiceError, Json::ParseError
          nil
        end

        def v3_envelope?(possible_envelope)
          if possible_envelope.key?('x-amz-key') || possible_envelope.key?('x-amz-key-v2')
            ##= ../specification/s3-encryption/data-format/content-metadata.md#determining-s3ec-object-status
            ##% If there are multiple mapkeys which are meant to be exclusive, such as "x-amz-key", "x-amz-key-v2", and "x-amz-3" then the S3EC SHOULD throw an exception.
            raise Errors::LegacyDecryptionError
          end

          unless POSSIBLE_ENCRYPTION_FORMATS.include? possible_envelope['x-amz-c']
            alg = possible_envelope.inspect
            msg = "unsupported content encrypting key (cek) format: #{alg} #{possible_envelope.inspect}"
            raise Errors::DecryptionError, msg
          end
          unless POSSIBLE_WRAPPING_FORMATS.include? possible_envelope['x-amz-w']
            alg = possible_envelope['x-amz-w'].inspect
            msg = "unsupported key wrapping algorithm: #{alg}"
            raise Errors::DecryptionError, msg
          end
          unless (missing_keys = REQUIRED_ENVELOPE_KEYS - possible_envelope.keys).empty?
            ##= ../specification/s3-encryption/data-format/content-metadata.md#determining-s3ec-object-status
            ##% In general, if there is any deviation from the above format, with the exception of additional unrelated mapkeys, then the S3EC SHOULD throw an exception.
            msg = "incomplete v3 encryption envelope:\n"
            msg += "  missing: #{missing_keys.join(',')}\n"
            raise Errors::DecryptionError, msg
          end
          possible_envelope
        end

        # This method fetches the tag from the end of the object by
        # making a GET Object w/range request. This auth tag is used
        # to initialize the cipher, and the decrypter truncates the
        # auth tag from the body when writing the final bytes.
        def authenticated_decrypter(context, cipher, envelope)
          http_resp = context.http_response
          content_length = http_resp.headers['content-length'].to_i

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
            encrypted_content_length: content_length - AES_GCM_TAG_LEN_BYTES,
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

##= ../specification/s3-encryption/data-format/content-metadata.md#v3-only
##= type=exception
##= reason=This has never been supported in Ruby
##% This material description string MAY be encoded by the esoteric double-encoding scheme used by the S3 web server.

##= ../specification/s3-encryption/data-format/content-metadata.md#v3-only
##= type=exception
##= reason=This has never been supported in Ruby
##% This encryption context string MAY be encoded by the esoteric double-encoding scheme used by the S3 web server.
