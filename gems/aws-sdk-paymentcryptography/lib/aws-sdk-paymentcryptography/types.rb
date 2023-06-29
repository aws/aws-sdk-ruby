# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::PaymentCryptography
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an alias.
    #
    # @!attribute [rw] alias_name
    #   A friendly name that you can use to refer to a key. The value must
    #   begin with `alias/`.
    #
    #   Do not include confidential or sensitive information in this field.
    #   This field may be displayed in plaintext in CloudTrail logs and
    #   other output.
    #   @return [String]
    #
    # @!attribute [rw] key_arn
    #   The `KeyARN` of the key associated with the alias.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/Alias AWS API Documentation
    #
    class Alias < Struct.new(
      :alias_name,
      :key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # This request can cause an inconsistent state for the resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] alias_name
    #   A friendly name that you can use to refer a key. An alias must begin
    #   with `alias/` followed by a name, for example `alias/ExampleAlias`.
    #   It can contain only alphanumeric characters, forward slashes (/),
    #   underscores (\_), and dashes (-).
    #
    #   Don't include confidential or sensitive information in this field.
    #   This field may be displayed in plaintext in CloudTrail logs and
    #   other output.
    #   @return [String]
    #
    # @!attribute [rw] key_arn
    #   The `KeyARN` of the key to associate with the alias.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/CreateAliasInput AWS API Documentation
    #
    class CreateAliasInput < Struct.new(
      :alias_name,
      :key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] alias
    #   The alias for the key.
    #   @return [Types::Alias]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/CreateAliasOutput AWS API Documentation
    #
    class CreateAliasOutput < Struct.new(
      :alias)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] enabled
    #   Specifies whether to enable the key. If the key is enabled, it is
    #   activated for use within the service. If the key not enabled, then
    #   it is created but not activated. The default value is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] exportable
    #   Specifies whether the key is exportable from the service.
    #   @return [Boolean]
    #
    # @!attribute [rw] key_attributes
    #   The role of the key, the algorithm it supports, and the
    #   cryptographic operations allowed with the key. This data is
    #   immutable after the key is created.
    #   @return [Types::KeyAttributes]
    #
    # @!attribute [rw] key_check_value_algorithm
    #   The algorithm that Amazon Web Services Payment Cryptography uses to
    #   calculate the key check value (KCV) for DES and AES keys.
    #
    #   For DES key, the KCV is computed by encrypting 8 bytes, each with
    #   value '00', with the key to be checked and retaining the 3 highest
    #   order bytes of the encrypted result. For AES key, the KCV is
    #   computed by encrypting 8 bytes, each with value '01', with the key
    #   to be checked and retaining the 3 highest order bytes of the
    #   encrypted result.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to attach to the key. Each tag consists of a tag key and a
    #   tag value. Both the tag key and the tag value are required, but the
    #   tag value can be an empty (null) string. You can't have more than
    #   one tag on an Amazon Web Services Payment Cryptography key with the
    #   same tag key.
    #
    #   To use this parameter, you must have `TagResource` permission.
    #
    #   Don't include confidential or sensitive information in this field.
    #   This field may be displayed in plaintext in CloudTrail logs and
    #   other output.
    #
    #   <note markdown="1"> Tagging or untagging an Amazon Web Services Payment Cryptography key
    #   can allow or deny permission to the key.
    #
    #    </note>
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/CreateKeyInput AWS API Documentation
    #
    class CreateKeyInput < Struct.new(
      :enabled,
      :exportable,
      :key_attributes,
      :key_check_value_algorithm,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key
    #   The key material that contains all the key attributes.
    #   @return [Types::Key]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/CreateKeyOutput AWS API Documentation
    #
    class CreateKeyOutput < Struct.new(
      :key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] alias_name
    #   A friendly name that you can use to refer Amazon Web Services
    #   Payment Cryptography key. This value must begin with `alias/`
    #   followed by a name, such as `alias/ExampleAlias`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/DeleteAliasInput AWS API Documentation
    #
    class DeleteAliasInput < Struct.new(
      :alias_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/DeleteAliasOutput AWS API Documentation
    #
    class DeleteAliasOutput < Aws::EmptyStructure; end

    # @!attribute [rw] delete_key_in_days
    #   The waiting period for key deletion. The default value is seven
    #   days.
    #   @return [Integer]
    #
    # @!attribute [rw] key_identifier
    #   The `KeyARN` of the key that is scheduled for deletion.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/DeleteKeyInput AWS API Documentation
    #
    class DeleteKeyInput < Struct.new(
      :delete_key_in_days,
      :key_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key
    #   The `KeyARN` of the key that is scheduled for deletion.
    #   @return [Types::Key]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/DeleteKeyOutput AWS API Documentation
    #
    class DeleteKeyOutput < Struct.new(
      :key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] export_key_identifier
    #   The `KeyARN` of the key under export from Amazon Web Services
    #   Payment Cryptography.
    #   @return [String]
    #
    # @!attribute [rw] key_material
    #   The key block format type, for example, TR-34 or TR-31, to use
    #   during key material export.
    #   @return [Types::ExportKeyMaterial]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ExportKeyInput AWS API Documentation
    #
    class ExportKeyInput < Struct.new(
      :export_key_identifier,
      :key_material)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameter information for key material export from Amazon Web Services
    # Payment Cryptography.
    #
    # @note ExportKeyMaterial is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] tr_31_key_block
    #   Parameter information for key material export using TR-31 standard.
    #   @return [Types::ExportTr31KeyBlock]
    #
    # @!attribute [rw] tr_34_key_block
    #   Parameter information for key material export using TR-34 standard.
    #   @return [Types::ExportTr34KeyBlock]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ExportKeyMaterial AWS API Documentation
    #
    class ExportKeyMaterial < Struct.new(
      :tr_31_key_block,
      :tr_34_key_block,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Tr31KeyBlock < ExportKeyMaterial; end
      class Tr34KeyBlock < ExportKeyMaterial; end
      class Unknown < ExportKeyMaterial; end
    end

    # @!attribute [rw] wrapped_key
    #   The key material under export as a TR-34 or TR-31 wrapped key block.
    #   @return [Types::WrappedKey]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ExportKeyOutput AWS API Documentation
    #
    class ExportKeyOutput < Struct.new(
      :wrapped_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameter information for key material export using TR-31 standard.
    #
    # @!attribute [rw] wrapping_key_identifier
    #   The `KeyARN` of the the wrapping key. This key encrypts or wraps the
    #   key under export for TR-31 key block generation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ExportTr31KeyBlock AWS API Documentation
    #
    class ExportTr31KeyBlock < Struct.new(
      :wrapping_key_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameter information for key material export using TR-34 standard.
    #
    # @!attribute [rw] certificate_authority_public_key_identifier
    #   The `KeyARN` of the certificate chain that signs the wrapping key
    #   certificate during TR-34 key export.
    #   @return [String]
    #
    # @!attribute [rw] export_token
    #   The export token to initiate key export from Amazon Web Services
    #   Payment Cryptography. It also contains the signing key certificate
    #   that will sign the wrapped key during TR-34 key block generation.
    #   Call GetParametersForExport to receive an export token. It expires
    #   after 7 days. You can use the same export token to export multiple
    #   keys from the same service account.
    #   @return [String]
    #
    # @!attribute [rw] key_block_format
    #   The format of key block that Amazon Web Services Payment
    #   Cryptography will use during key export.
    #   @return [String]
    #
    # @!attribute [rw] random_nonce
    #   A random number value that is unique to the TR-34 key block
    #   generated using 2 pass. The operation will fail, if a random nonce
    #   value is not provided for a TR-34 key block generated using 2 pass.
    #   @return [String]
    #
    # @!attribute [rw] wrapping_key_certificate
    #   The `KeyARN` of the wrapping key certificate. Amazon Web Services
    #   Payment Cryptography uses this certificate to wrap the key under
    #   export.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ExportTr34KeyBlock AWS API Documentation
    #
    class ExportTr34KeyBlock < Struct.new(
      :certificate_authority_public_key_identifier,
      :export_token,
      :key_block_format,
      :random_nonce,
      :wrapping_key_certificate)
      SENSITIVE = [:wrapping_key_certificate]
      include Aws::Structure
    end

    # @!attribute [rw] alias_name
    #   The alias of the Amazon Web Services Payment Cryptography key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/GetAliasInput AWS API Documentation
    #
    class GetAliasInput < Struct.new(
      :alias_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] alias
    #   The alias of the Amazon Web Services Payment Cryptography key.
    #   @return [Types::Alias]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/GetAliasOutput AWS API Documentation
    #
    class GetAliasOutput < Struct.new(
      :alias)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_identifier
    #   The `KeyARN` of the Amazon Web Services Payment Cryptography key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/GetKeyInput AWS API Documentation
    #
    class GetKeyInput < Struct.new(
      :key_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key
    #   The key material, including the immutable and mutable data for the
    #   key.
    #   @return [Types::Key]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/GetKeyOutput AWS API Documentation
    #
    class GetKeyOutput < Struct.new(
      :key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_material_type
    #   The key block format type (for example, TR-34 or TR-31) to use
    #   during key material export. Export token is only required for a
    #   TR-34 key export, `TR34_KEY_BLOCK`. Export token is not required for
    #   TR-31 key export.
    #   @return [String]
    #
    # @!attribute [rw] signing_key_algorithm
    #   The signing key algorithm to generate a signing key certificate.
    #   This certificate signs the wrapped key under export within the TR-34
    #   key block cryptogram. `RSA_2048` is the only signing key algorithm
    #   allowed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/GetParametersForExportInput AWS API Documentation
    #
    class GetParametersForExportInput < Struct.new(
      :key_material_type,
      :signing_key_algorithm)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] export_token
    #   The export token to initiate key export from Amazon Web Services
    #   Payment Cryptography. The export token expires after 7 days. You can
    #   use the same export token to export multiple keys from the same
    #   service account.
    #   @return [String]
    #
    # @!attribute [rw] parameters_valid_until_timestamp
    #   The validity period of the export token.
    #   @return [Time]
    #
    # @!attribute [rw] signing_key_algorithm
    #   The algorithm of the signing key certificate for use in TR-34 key
    #   block generation. `RSA_2048` is the only signing key algorithm
    #   allowed.
    #   @return [String]
    #
    # @!attribute [rw] signing_key_certificate
    #   The signing key certificate of the public key for signature within
    #   the TR-34 key block cryptogram. The certificate expires after 7
    #   days.
    #   @return [String]
    #
    # @!attribute [rw] signing_key_certificate_chain
    #   The certificate chain that signed the signing key certificate. This
    #   is the root certificate authority (CA) within your service account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/GetParametersForExportOutput AWS API Documentation
    #
    class GetParametersForExportOutput < Struct.new(
      :export_token,
      :parameters_valid_until_timestamp,
      :signing_key_algorithm,
      :signing_key_certificate,
      :signing_key_certificate_chain)
      SENSITIVE = [:signing_key_certificate, :signing_key_certificate_chain]
      include Aws::Structure
    end

    # @!attribute [rw] key_material_type
    #   The key block format type such as TR-34 or TR-31 to use during key
    #   material import. Import token is only required for TR-34 key import
    #   `TR34_KEY_BLOCK`. Import token is not required for TR-31 key import.
    #   @return [String]
    #
    # @!attribute [rw] wrapping_key_algorithm
    #   The wrapping key algorithm to generate a wrapping key certificate.
    #   This certificate wraps the key under import within the TR-34 key
    #   block cryptogram. `RSA_2048` is the only wrapping key algorithm
    #   allowed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/GetParametersForImportInput AWS API Documentation
    #
    class GetParametersForImportInput < Struct.new(
      :key_material_type,
      :wrapping_key_algorithm)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] import_token
    #   The import token to initiate key import into Amazon Web Services
    #   Payment Cryptography. The import token expires after 7 days. You can
    #   use the same import token to import multiple keys to the same
    #   service account.
    #   @return [String]
    #
    # @!attribute [rw] parameters_valid_until_timestamp
    #   The validity period of the import token.
    #   @return [Time]
    #
    # @!attribute [rw] wrapping_key_algorithm
    #   The algorithm of the wrapping key for use within TR-34 key block.
    #   `RSA_2048` is the only wrapping key algorithm allowed.
    #   @return [String]
    #
    # @!attribute [rw] wrapping_key_certificate
    #   The wrapping key certificate of the wrapping key for use within the
    #   TR-34 key block. The certificate expires in 7 days.
    #   @return [String]
    #
    # @!attribute [rw] wrapping_key_certificate_chain
    #   The Amazon Web Services Payment Cryptography certificate chain that
    #   signed the wrapping key certificate. This is the root certificate
    #   authority (CA) within your service account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/GetParametersForImportOutput AWS API Documentation
    #
    class GetParametersForImportOutput < Struct.new(
      :import_token,
      :parameters_valid_until_timestamp,
      :wrapping_key_algorithm,
      :wrapping_key_certificate,
      :wrapping_key_certificate_chain)
      SENSITIVE = [:wrapping_key_certificate, :wrapping_key_certificate_chain]
      include Aws::Structure
    end

    # @!attribute [rw] key_identifier
    #   The `KeyARN` of the asymmetric key pair.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/GetPublicKeyCertificateInput AWS API Documentation
    #
    class GetPublicKeyCertificateInput < Struct.new(
      :key_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_certificate
    #   The public key component of the asymmetric key pair in a certificate
    #   (PEM) format. It is signed by the root certificate authority (CA)
    #   within your service account. The certificate expires in 90 days.
    #   @return [String]
    #
    # @!attribute [rw] key_certificate_chain
    #   The certificate chain that signed the public key certificate of the
    #   asymmetric key pair. This is the root certificate authority (CA)
    #   within your service account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/GetPublicKeyCertificateOutput AWS API Documentation
    #
    class GetPublicKeyCertificateOutput < Struct.new(
      :key_certificate,
      :key_certificate_chain)
      SENSITIVE = [:key_certificate, :key_certificate_chain]
      include Aws::Structure
    end

    # @!attribute [rw] enabled
    #   Specifies whether import key is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] key_check_value_algorithm
    #   The algorithm that Amazon Web Services Payment Cryptography uses to
    #   calculate the key check value (KCV) for DES and AES keys.
    #
    #   For DES key, the KCV is computed by encrypting 8 bytes, each with
    #   value '00', with the key to be checked and retaining the 3 highest
    #   order bytes of the encrypted result. For AES key, the KCV is
    #   computed by encrypting 8 bytes, each with value '01', with the key
    #   to be checked and retaining the 3 highest order bytes of the
    #   encrypted result.
    #   @return [String]
    #
    # @!attribute [rw] key_material
    #   The key or public key certificate type to use during key material
    #   import, for example TR-34 or RootCertificatePublicKey.
    #   @return [Types::ImportKeyMaterial]
    #
    # @!attribute [rw] tags
    #   The tags to attach to the key. Each tag consists of a tag key and a
    #   tag value. Both the tag key and the tag value are required, but the
    #   tag value can be an empty (null) string. You can't have more than
    #   one tag on an Amazon Web Services Payment Cryptography key with the
    #   same tag key.
    #
    #   You can't have more than one tag on an Amazon Web Services Payment
    #   Cryptography key with the same tag key. If you specify an existing
    #   tag key with a different tag value, Amazon Web Services Payment
    #   Cryptography replaces the current tag value with the specified one.
    #
    #   To use this parameter, you must have `TagResource` permission.
    #
    #   Don't include confidential or sensitive information in this field.
    #   This field may be displayed in plaintext in CloudTrail logs and
    #   other output.
    #
    #   <note markdown="1"> Tagging or untagging an Amazon Web Services Payment Cryptography key
    #   can allow or deny permission to the key.
    #
    #    </note>
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ImportKeyInput AWS API Documentation
    #
    class ImportKeyInput < Struct.new(
      :enabled,
      :key_check_value_algorithm,
      :key_material,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameter information for key material import.
    #
    # @note ImportKeyMaterial is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] root_certificate_public_key
    #   Parameter information for root public key certificate import.
    #   @return [Types::RootCertificatePublicKey]
    #
    # @!attribute [rw] tr_31_key_block
    #   Parameter information for key material import using TR-31 standard.
    #   @return [Types::ImportTr31KeyBlock]
    #
    # @!attribute [rw] tr_34_key_block
    #   Parameter information for key material import using TR-34 standard.
    #   @return [Types::ImportTr34KeyBlock]
    #
    # @!attribute [rw] trusted_certificate_public_key
    #   Parameter information for trusted public key certificate import.
    #   @return [Types::TrustedCertificatePublicKey]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ImportKeyMaterial AWS API Documentation
    #
    class ImportKeyMaterial < Struct.new(
      :root_certificate_public_key,
      :tr_31_key_block,
      :tr_34_key_block,
      :trusted_certificate_public_key,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class RootCertificatePublicKey < ImportKeyMaterial; end
      class Tr31KeyBlock < ImportKeyMaterial; end
      class Tr34KeyBlock < ImportKeyMaterial; end
      class TrustedCertificatePublicKey < ImportKeyMaterial; end
      class Unknown < ImportKeyMaterial; end
    end

    # @!attribute [rw] key
    #   The `KeyARN` of the key material imported within Amazon Web Services
    #   Payment Cryptography.
    #   @return [Types::Key]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ImportKeyOutput AWS API Documentation
    #
    class ImportKeyOutput < Struct.new(
      :key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameter information for key material import using TR-31 standard.
    #
    # @!attribute [rw] wrapped_key_block
    #   The TR-34 wrapped key block to import.
    #   @return [String]
    #
    # @!attribute [rw] wrapping_key_identifier
    #   The `KeyARN` of the key that will decrypt or unwrap a TR-31 key
    #   block during import.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ImportTr31KeyBlock AWS API Documentation
    #
    class ImportTr31KeyBlock < Struct.new(
      :wrapped_key_block,
      :wrapping_key_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameter information for key material import using TR-34 standard.
    #
    # @!attribute [rw] certificate_authority_public_key_identifier
    #   The `KeyARN` of the certificate chain that signs the signing key
    #   certificate during TR-34 key import.
    #   @return [String]
    #
    # @!attribute [rw] import_token
    #   The import token that initiates key import into Amazon Web Services
    #   Payment Cryptography. It expires after 7 days. You can use the same
    #   import token to import multiple keys to the same service account.
    #   @return [String]
    #
    # @!attribute [rw] key_block_format
    #   The key block format to use during key import. The only value
    #   allowed is `X9_TR34_2012`.
    #   @return [String]
    #
    # @!attribute [rw] random_nonce
    #   A random number value that is unique to the TR-34 key block
    #   generated using 2 pass. The operation will fail, if a random nonce
    #   value is not provided for a TR-34 key block generated using 2 pass.
    #   @return [String]
    #
    # @!attribute [rw] signing_key_certificate
    #   The public key component in PEM certificate format of the private
    #   key that signs the KDH TR-34 wrapped key block.
    #   @return [String]
    #
    # @!attribute [rw] wrapped_key_block
    #   The TR-34 wrapped key block to import.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ImportTr34KeyBlock AWS API Documentation
    #
    class ImportTr34KeyBlock < Struct.new(
      :certificate_authority_public_key_identifier,
      :import_token,
      :key_block_format,
      :random_nonce,
      :signing_key_certificate,
      :wrapped_key_block)
      SENSITIVE = [:signing_key_certificate]
      include Aws::Structure
    end

    # The request processing has failed because of an unknown error,
    # exception, or failure.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata about an Amazon Web Services Payment Cryptography key.
    #
    # @!attribute [rw] create_timestamp
    #   The date and time when the key was created.
    #   @return [Time]
    #
    # @!attribute [rw] delete_pending_timestamp
    #   The date and time after which Amazon Web Services Payment
    #   Cryptography will delete the key. This value is present only when
    #   `KeyState` is `DELETE_PENDING` and the key is scheduled for
    #   deletion.
    #   @return [Time]
    #
    # @!attribute [rw] delete_timestamp
    #   The date and time after which Amazon Web Services Payment
    #   Cryptography will delete the key. This value is present only when
    #   when the `KeyState` is `DELETE_COMPLETE` and the Amazon Web Services
    #   Payment Cryptography key is deleted.
    #   @return [Time]
    #
    # @!attribute [rw] enabled
    #   Specifies whether the key is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] exportable
    #   Specifies whether the key is exportable. This data is immutable
    #   after the key is created.
    #   @return [Boolean]
    #
    # @!attribute [rw] key_arn
    #   The Amazon Resource Name (ARN) of the key.
    #   @return [String]
    #
    # @!attribute [rw] key_attributes
    #   The role of the key, the algorithm it supports, and the
    #   cryptographic operations allowed with the key. This data is
    #   immutable after the key is created.
    #   @return [Types::KeyAttributes]
    #
    # @!attribute [rw] key_check_value
    #   The key check value (KCV) is used to check if all parties holding a
    #   given key have the same key or to detect that a key has changed.
    #   Amazon Web Services Payment Cryptography calculates the KCV by using
    #   standard algorithms, typically by encrypting 8 or 16 bytes or "00"
    #   or "01" and then truncating the result to the first 3 bytes, or 6
    #   hex digits, of the resulting cryptogram.
    #   @return [String]
    #
    # @!attribute [rw] key_check_value_algorithm
    #   The algorithm used for calculating key check value (KCV) for DES and
    #   AES keys. For a DES key, Amazon Web Services Payment Cryptography
    #   computes the KCV by encrypting 8 bytes, each with value '00', with
    #   the key to be checked and retaining the 3 highest order bytes of the
    #   encrypted result. For an AES key, Amazon Web Services Payment
    #   Cryptography computes the KCV by encrypting 8 bytes, each with value
    #   '01', with the key to be checked and retaining the 3 highest order
    #   bytes of the encrypted result.
    #   @return [String]
    #
    # @!attribute [rw] key_origin
    #   The source of the key material. For keys created within Amazon Web
    #   Services Payment Cryptography, the value is
    #   `AWS_PAYMENT_CRYPTOGRAPHY`. For keys imported into Amazon Web
    #   Services Payment Cryptography, the value is `EXTERNAL`.
    #   @return [String]
    #
    # @!attribute [rw] key_state
    #   The state of key that is being created or deleted.
    #   @return [String]
    #
    # @!attribute [rw] usage_start_timestamp
    #   The date and time after which Amazon Web Services Payment
    #   Cryptography will start using the key material for cryptographic
    #   operations.
    #   @return [Time]
    #
    # @!attribute [rw] usage_stop_timestamp
    #   The date and time after which Amazon Web Services Payment
    #   Cryptography will stop using the key material for cryptographic
    #   operations.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/Key AWS API Documentation
    #
    class Key < Struct.new(
      :create_timestamp,
      :delete_pending_timestamp,
      :delete_timestamp,
      :enabled,
      :exportable,
      :key_arn,
      :key_attributes,
      :key_check_value,
      :key_check_value_algorithm,
      :key_origin,
      :key_state,
      :usage_start_timestamp,
      :usage_stop_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The role of the key, the algorithm it supports, and the cryptographic
    # operations allowed with the key. This data is immutable after the key
    # is created.
    #
    # @!attribute [rw] key_algorithm
    #   The key algorithm to be use during creation of an Amazon Web
    #   Services Payment Cryptography key.
    #
    #   For symmetric keys, Amazon Web Services Payment Cryptography
    #   supports `AES` and `TDES` algorithms. For asymmetric keys, Amazon
    #   Web Services Payment Cryptography supports `RSA` and `ECC_NIST`
    #   algorithms.
    #   @return [String]
    #
    # @!attribute [rw] key_class
    #   The type of Amazon Web Services Payment Cryptography key to create,
    #   which determines the classiﬁcation of the cryptographic method and
    #   whether Amazon Web Services Payment Cryptography key contains a
    #   symmetric key or an asymmetric key pair.
    #   @return [String]
    #
    # @!attribute [rw] key_modes_of_use
    #   The list of cryptographic operations that you can perform using the
    #   key.
    #   @return [Types::KeyModesOfUse]
    #
    # @!attribute [rw] key_usage
    #   The cryptographic usage of an Amazon Web Services Payment
    #   Cryptography key as deﬁned in section A.5.2 of the TR-31 spec.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/KeyAttributes AWS API Documentation
    #
    class KeyAttributes < Struct.new(
      :key_algorithm,
      :key_class,
      :key_modes_of_use,
      :key_usage)
      SENSITIVE = []
      include Aws::Structure
    end

    # The list of cryptographic operations that you can perform using the
    # key. The modes of use are deﬁned in section A.5.3 of the TR-31 spec.
    #
    # @!attribute [rw] decrypt
    #   Speciﬁes whether an Amazon Web Services Payment Cryptography key can
    #   be used to decrypt data.
    #   @return [Boolean]
    #
    # @!attribute [rw] derive_key
    #   Speciﬁes whether an Amazon Web Services Payment Cryptography key can
    #   be used to derive new keys.
    #   @return [Boolean]
    #
    # @!attribute [rw] encrypt
    #   Speciﬁes whether an Amazon Web Services Payment Cryptography key can
    #   be used to encrypt data.
    #   @return [Boolean]
    #
    # @!attribute [rw] generate
    #   Speciﬁes whether an Amazon Web Services Payment Cryptography key can
    #   be used to generate and verify other card and PIN verification keys.
    #   @return [Boolean]
    #
    # @!attribute [rw] no_restrictions
    #   Speciﬁes whether an Amazon Web Services Payment Cryptography key has
    #   no special restrictions other than the restrictions implied by
    #   `KeyUsage`.
    #   @return [Boolean]
    #
    # @!attribute [rw] sign
    #   Speciﬁes whether an Amazon Web Services Payment Cryptography key can
    #   be used for signing.
    #   @return [Boolean]
    #
    # @!attribute [rw] unwrap
    #   Speciﬁes whether an Amazon Web Services Payment Cryptography key can
    #   be used to unwrap other keys.
    #   @return [Boolean]
    #
    # @!attribute [rw] verify
    #   Speciﬁes whether an Amazon Web Services Payment Cryptography key can
    #   be used to verify signatures.
    #   @return [Boolean]
    #
    # @!attribute [rw] wrap
    #   Speciﬁes whether an Amazon Web Services Payment Cryptography key can
    #   be used to wrap other keys.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/KeyModesOfUse AWS API Documentation
    #
    class KeyModesOfUse < Struct.new(
      :decrypt,
      :derive_key,
      :encrypt,
      :generate,
      :no_restrictions,
      :sign,
      :unwrap,
      :verify,
      :wrap)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata about an Amazon Web Services Payment Cryptography key.
    #
    # @!attribute [rw] enabled
    #   Specifies whether the key is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] exportable
    #   Specifies whether the key is exportable. This data is immutable
    #   after the key is created.
    #   @return [Boolean]
    #
    # @!attribute [rw] key_arn
    #   The Amazon Resource Name (ARN) of the key.
    #   @return [String]
    #
    # @!attribute [rw] key_attributes
    #   The role of the key, the algorithm it supports, and the
    #   cryptographic operations allowed with the key. This data is
    #   immutable after the key is created.
    #   @return [Types::KeyAttributes]
    #
    # @!attribute [rw] key_check_value
    #   The key check value (KCV) is used to check if all parties holding a
    #   given key have the same key or to detect that a key has changed.
    #   Amazon Web Services Payment Cryptography calculates the KCV by using
    #   standard algorithms, typically by encrypting 8 or 16 bytes or "00"
    #   or "01" and then truncating the result to the first 3 bytes, or 6
    #   hex digits, of the resulting cryptogram.
    #   @return [String]
    #
    # @!attribute [rw] key_state
    #   The state of an Amazon Web Services Payment Cryptography that is
    #   being created or deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/KeySummary AWS API Documentation
    #
    class KeySummary < Struct.new(
      :enabled,
      :exportable,
      :key_arn,
      :key_attributes,
      :key_check_value,
      :key_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   Use this parameter to specify the maximum number of items to return.
    #   When this value is present, Amazon Web Services Payment Cryptography
    #   does not return more than the specified number of items, but it
    #   might return fewer.
    #
    #   This value is optional. If you include a value, it must be between 1
    #   and 100, inclusive. If you do not include a value, it defaults to
    #   50.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Use this parameter in a subsequent request after you receive a
    #   response with truncated results. Set it to the value of `NextToken`
    #   from the truncated response you just received.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ListAliasesInput AWS API Documentation
    #
    class ListAliasesInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aliases
    #   The list of aliases. Each alias describes the `KeyArn` contained
    #   within.
    #   @return [Array<Types::Alias>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or an empty or null value if
    #   there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ListAliasesOutput AWS API Documentation
    #
    class ListAliasesOutput < Struct.new(
      :aliases,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_state
    #   The key state of the keys you want to list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Use this parameter to specify the maximum number of items to return.
    #   When this value is present, Amazon Web Services Payment Cryptography
    #   does not return more than the specified number of items, but it
    #   might return fewer.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Use this parameter in a subsequent request after you receive a
    #   response with truncated results. Set it to the value of `NextToken`
    #   from the truncated response you just received.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ListKeysInput AWS API Documentation
    #
    class ListKeysInput < Struct.new(
      :key_state,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] keys
    #   The list of keys created within the caller's Amazon Web Services
    #   account and Amazon Web Services Region.
    #   @return [Array<Types::KeySummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or an empty or null value if
    #   there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ListKeysOutput AWS API Documentation
    #
    class ListKeysOutput < Struct.new(
      :keys,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   Use this parameter to specify the maximum number of items to return.
    #   When this value is present, Amazon Web Services Payment Cryptography
    #   does not return more than the specified number of items, but it
    #   might return fewer.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Use this parameter in a subsequent request after you receive a
    #   response with truncated results. Set it to the value of `NextToken`
    #   from the truncated response you just received.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The `KeyARN` of the key whose tags you are getting.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :max_results,
      :next_token,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of results, or an empty or null value if
    #   there are no more results.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tags associated with a `ResourceArn`. Each tag will list
    #   the key-value pair contained within that tag.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :next_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to an invalid resource error.
    #
    # @!attribute [rw] resource_id
    #   The string for the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_identifier
    #   The `KeyARN` of the key to be restored within Amazon Web Services
    #   Payment Cryptography.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/RestoreKeyInput AWS API Documentation
    #
    class RestoreKeyInput < Struct.new(
      :key_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key
    #   The key material of the restored key. The `KeyState` will change to
    #   `CREATE_COMPLETE` and value for `DeletePendingTimestamp` gets
    #   removed.
    #   @return [Types::Key]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/RestoreKeyOutput AWS API Documentation
    #
    class RestoreKeyOutput < Struct.new(
      :key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameter information for root public key certificate import.
    #
    # @!attribute [rw] key_attributes
    #   The role of the key, the algorithm it supports, and the
    #   cryptographic operations allowed with the key. This data is
    #   immutable after the root public key is imported.
    #   @return [Types::KeyAttributes]
    #
    # @!attribute [rw] public_key_certificate
    #   Parameter information for root public key certificate import.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/RootCertificatePublicKey AWS API Documentation
    #
    class RootCertificatePublicKey < Struct.new(
      :key_attributes,
      :public_key_certificate)
      SENSITIVE = [:public_key_certificate]
      include Aws::Structure
    end

    # This request would cause a service quota to be exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service cannot complete the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_identifier
    #   The `KeyArn` of the key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/StartKeyUsageInput AWS API Documentation
    #
    class StartKeyUsageInput < Struct.new(
      :key_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key
    #   The `KeyARN` of the Amazon Web Services Payment Cryptography key
    #   activated for use.
    #   @return [Types::Key]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/StartKeyUsageOutput AWS API Documentation
    #
    class StartKeyUsageOutput < Struct.new(
      :key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_identifier
    #   The `KeyArn` of the key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/StopKeyUsageInput AWS API Documentation
    #
    class StopKeyUsageInput < Struct.new(
      :key_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key
    #   The `KeyARN` of the key.
    #   @return [Types::Key]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/StopKeyUsageOutput AWS API Documentation
    #
    class StopKeyUsageOutput < Struct.new(
      :key)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains information about a tag.
    #
    # @!attribute [rw] key
    #   The key of the tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The `KeyARN` of the key whose tags are being updated.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   One or more tags. Each tag consists of a tag key and a tag value.
    #   The tag value can be an empty (null) string. You can't have more
    #   than one tag on an Amazon Web Services Payment Cryptography key with
    #   the same tag key. If you specify an existing tag key with a
    #   different tag value, Amazon Web Services Payment Cryptography
    #   replaces the current tag value with the new one.
    #
    #   Don't include confidential or sensitive information in this field.
    #   This field may be displayed in plaintext in CloudTrail logs and
    #   other output.
    #
    #   To use this parameter, you must have TagResource permission in an
    #   IAM policy.
    #
    #   Don't include confidential or sensitive information in this field.
    #   This field may be displayed in plaintext in CloudTrail logs and
    #   other output.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/TagResourceOutput AWS API Documentation
    #
    class TagResourceOutput < Aws::EmptyStructure; end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameter information for trusted public key certificate import.
    #
    # @!attribute [rw] certificate_authority_public_key_identifier
    #   The `KeyARN` of the root public key certificate or certificate chain
    #   that signs the trusted public key certificate import.
    #   @return [String]
    #
    # @!attribute [rw] key_attributes
    #   The role of the key, the algorithm it supports, and the
    #   cryptographic operations allowed with the key. This data is
    #   immutable after a trusted public key is imported.
    #   @return [Types::KeyAttributes]
    #
    # @!attribute [rw] public_key_certificate
    #   Parameter information for trusted public key certificate import.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/TrustedCertificatePublicKey AWS API Documentation
    #
    class TrustedCertificatePublicKey < Struct.new(
      :certificate_authority_public_key_identifier,
      :key_attributes,
      :public_key_certificate)
      SENSITIVE = [:public_key_certificate]
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The `KeyARN` of the key whose tags are being removed.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   One or more tag keys. Don't include the tag values.
    #
    #   If the Amazon Web Services Payment Cryptography key doesn't have
    #   the specified tag key, Amazon Web Services Payment Cryptography
    #   doesn't throw an exception or return a response. To confirm that
    #   the operation succeeded, use the ListTagsForResource operation.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/UntagResourceOutput AWS API Documentation
    #
    class UntagResourceOutput < Aws::EmptyStructure; end

    # @!attribute [rw] alias_name
    #   The alias whose associated key is changing.
    #   @return [String]
    #
    # @!attribute [rw] key_arn
    #   The `KeyARN` for the key that you are updating or removing from the
    #   alias.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/UpdateAliasInput AWS API Documentation
    #
    class UpdateAliasInput < Struct.new(
      :alias_name,
      :key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] alias
    #   The alias name.
    #   @return [Types::Alias]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/UpdateAliasOutput AWS API Documentation
    #
    class UpdateAliasOutput < Struct.new(
      :alias)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to an invalid request error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameter information for generating a wrapped key using TR-31 or
    # TR-34 standard.
    #
    # @!attribute [rw] key_material
    #   Parameter information for generating a wrapped key using TR-31 or
    #   TR-34 standard.
    #   @return [String]
    #
    # @!attribute [rw] wrapped_key_material_format
    #   The key block format of a wrapped key.
    #   @return [String]
    #
    # @!attribute [rw] wrapping_key_arn
    #   The `KeyARN` of the wrapped key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/WrappedKey AWS API Documentation
    #
    class WrappedKey < Struct.new(
      :key_material,
      :wrapped_key_material_format,
      :wrapping_key_arn)
      SENSITIVE = [:key_material]
      include Aws::Structure
    end

  end
end
