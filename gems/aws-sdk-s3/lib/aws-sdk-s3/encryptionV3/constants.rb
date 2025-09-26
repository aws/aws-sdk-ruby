# frozen_string_literal: true

require 'base64'

module Aws
  module S3
    module EncryptionV3

      ##= ../specification/s3-encryption/data-format/content-metadata.md#content-metadata-mapkeys
      ##= type=implication
      ##% The "x-amz-meta-" prefix is automatically added by the S3 server and MUST NOT be included in implementation code.

      class MapKeys

        ##= ../specification/s3-encryption/data-format/content-metadata.md#content-metadata-mapkeys
        ##= type=implication
        ##% The "x-amz-" prefix denotes that the metadata is owned by an Amazon product and MUST be prepended to all S3EC metadata mapkeys.
        AMZ_PREFIX = 'x-amz-'
        
        V1_ENVELOPE_KEYS = %w(
          ##= ../specification/s3-encryption/data-format/content-metadata.md#content-metadata-mapkeys
          ##% - The mapkey "x-amz-key" MUST be present for V1 format objects.
          x-amz-key
          ##= ../specification/s3-encryption/data-format/content-metadata.md#content-metadata-mapkeys
          ##% - The mapkey "x-amz-iv" MUST be present for V1 format objects.
          x-amz-iv
          ##= ../specification/s3-encryption/data-format/content-metadata.md#content-metadata-mapkeys
          ##% - The mapkey "x-amz-matdesc" MUST be present for V1 format objects.
          x-amz-matdesc
        )

        V2_ENVELOPE_KEYS = %w(
          ##= ../specification/s3-encryption/data-format/content-metadata.md#content-metadata-mapkeys
          ##% - The mapkey "x-amz-key-v2" MUST be present for V2 format objects.
          x-amz-key-v2
          ##= ../specification/s3-encryption/data-format/content-metadata.md#content-metadata-mapkeys
          ##% - The mapkey "x-amz-iv" MUST be present for V2 format objects.
          x-amz-iv
          ##= ../specification/s3-encryption/data-format/content-metadata.md#content-metadata-mapkeys
          ##% - The mapkey "x-amz-cek-alg" MUST be present for V2 format objects.
          x-amz-cek-alg
          ##= ../specification/s3-encryption/data-format/content-metadata.md#content-metadata-mapkeys
          ##% - The mapkey "x-amz-wrap-alg" MUST be present for V2 format objects.
          x-amz-wrap-alg
          ##= ../specification/s3-encryption/data-format/content-metadata.md#content-metadata-mapkeys
          ##% - The mapkey "x-amz-matdesc" MUST be present for V2 format objects.
          x-amz-matdesc
          ##= ../specification/s3-encryption/data-format/content-metadata.md#content-metadata-mapkeys
          ##% - The mapkey "x-amz-tag-len" MUST be present for V2 format objects.
          x-amz-tag-len
        )

        ##= ../specification/s3-encryption/data-format/content-metadata.md#content-metadata-mapkeys
        ##= type=implication
        ##% - This mapkey ("x-amz-3") SHOULD be represented by a constant named "ENCRYPTED_DATA_KEY_V3" or similar in the implementation code.
        ##= ../specification/s3-encryption/data-format/content-metadata.md#content-metadata-mapkeys
        ##= type=implication
        ##% - This mapkey ("x-amz-w") SHOULD be represented by a constant named "ENCRYPTED_DATA_KEY_ALGORITHM_V3" or similar in the implementation code.
        ##= ../specification/s3-encryption/data-format/content-metadata.md#content-metadata-mapkeys
        ##= type=implication
        ##% - This mapkey ("x-amz-m") SHOULD be represented by a constant named "MAT_DESC_V3" or similar in the implementation code.
        ##= ../specification/s3-encryption/data-format/content-metadata.md#content-metadata-mapkeys
        ##= type=implication
        ##% - This mapkey ("x-amz-t") SHOULD be represented by a constant named "ENCRYPTION_CONTEXT_V3" or similar in the implementation code.

        V3_ENVELOP_KEY = %w(
          ##= ../specification/s3-encryption/data-format/content-metadata.md#content-metadata-mapkeys
          ##% - The mapkey "x-amz-3" MUST be present for V3 format objects.
          x-amz-3
          ##= ../specification/s3-encryption/data-format/content-metadata.md#content-metadata-mapkeys
          ##% - The mapkey "x-amz-w" MUST be present for V3 format objects.
          x-amz-w
          ##= ../specification/s3-encryption/data-format/content-metadata.md#content-metadata-mapkeys
          ##% - The mapkey "x-amz-m" SHOULD be present for V3 format objects.
          x-amz-m
          ##= ../specification/s3-encryption/data-format/content-metadata.md#content-metadata-mapkeys
          ##% - The mapkey "x-amz-t" SHOULD be present for V3 format objects.
          x-amz-t
        )

        ##= ../specification/s3-encryption/data-format/content-metadata.md#content-metadata-mapkeys
        ##= type=implication
        ##% - This mapkey ("x-amz-c") SHOULD be represented by a constant named "CONTENT_CIPHER_V3" or similar in the implementation code.
        ##= ../specification/s3-encryption/data-format/content-metadata.md#content-metadata-mapkeys
        ##= type=implication
        ##% - This mapkey ("x-amz-d") SHOULD be represented by a constant named "KEY_COMMITMENT_V3" or similar in the implementation code.
        ##= ../specification/s3-encryption/data-format/content-metadata.md#content-metadata-mapkeys
        ##= type=implication
        ##% - This mapkey ("x-amz-i") SHOULD be represented by a constant named "MESSAGE_ID_V3" or similar in the implementation code.
        V3_METADATA_KEY = %w(
          ##= ../specification/s3-encryption/data-format/content-metadata.md#content-metadata-mapkeys
          ##% - The mapkey "x-amz-c" MUST be present for V3 format objects.
          x-amz-c
          ##= ../specification/s3-encryption/data-format/content-metadata.md#content-metadata-mapkeys
          ##% - The mapkey "x-amz-d" MUST be present for V3 format objects.
          x-amz-d
          ##= ../specification/s3-encryption/data-format/content-metadata.md#content-metadata-mapkeys
          ##% - The mapkey "x-amz-i" MUST be present for V3 format objects.
          x-amz-i
        )

        V2_OPTIONAL_KEYS = %w(x-amz-tag-len)

        POSSIBLE_ENVELOPE_KEYS = (V1_ENVELOPE_KEYS +
          V2_ENVELOPE_KEYS + V2_OPTIONAL_KEYS +
          V3_ENVELOP_KEY + V3_METADATA_KEY).uniq

        POSSIBLE_WRAPPING_FORMATS = %w(
          AES/GCM
          kms
          kms+context
          RSA-OAEP-SHA1
        )

        POSSIBLE_V3_WRAPPING_FORMATS = %w(
          01
          02
          11
          12
          21
          22
        )

        POSSIBLE_NON_COMMITTING_ENCRYPTION_FORMATS = %w(
          AES/GCM/NoPadding
          AES/CBC/PKCS5Padding
          AES/CBC/PKCS7Padding
        )

        POSSIBLE_COMMITTING_ENCRYPTION_FORMATS = %w(
          115
        )

        AUTH_REQUIRED_CEK_ALGS = %w(AES/GCM/NoPadding 115)

        def envelop_version(hash)
          return :v1 if hash.key?('x-amz-key')
          return :v2 if hash.key?('x-amz-key-v2')
          return :v3 if hash.key?('x-amz-3')
        end

        def decrypt_allowed?(security_profile, envelop)
          case security_profile
          when :forbid_encrypt_allow_decrypt, :require_encrypt_allow_decrypt, :v2, :v2_and_legacy
            true
          when :require_encrypt_require_decrypt
            envelop_version(envelop) == :v3
          else
            raise DecryptionError, ""
          end
        end

      end
    end
  end
end


