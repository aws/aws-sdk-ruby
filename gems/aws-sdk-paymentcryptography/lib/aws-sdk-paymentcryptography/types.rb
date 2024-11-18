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
    #   A friendly name that you can use to refer to a key. An alias must
    #   begin with `alias/` followed by a name, for example
    #   `alias/ExampleAlias`. It can contain only alphanumeric characters,
    #   forward slashes (/), underscores (\_), and dashes (-).
    #
    #   Don't include personal, confidential or sensitive information in
    #   this field. This field may be displayed in plaintext in CloudTrail
    #   logs and other output.
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

    # @!attribute [rw] key_attributes
    #   The role of the key, the algorithm it supports, and the
    #   cryptographic operations allowed with the key. This data is
    #   immutable after the key is created.
    #   @return [Types::KeyAttributes]
    #
    # @!attribute [rw] key_check_value_algorithm
    #   The algorithm that Amazon Web Services Payment Cryptography uses to
    #   calculate the key check value (KCV). It is used to validate the key
    #   integrity.
    #
    #   For TDES keys, the KCV is computed by encrypting 8 bytes, each with
    #   value of zero, with the key to be checked and retaining the 3
    #   highest order bytes of the encrypted result. For AES keys, the KCV
    #   is computed using a CMAC algorithm where the input data is 16 bytes
    #   of zero and retaining the 3 highest order bytes of the encrypted
    #   result.
    #   @return [String]
    #
    # @!attribute [rw] exportable
    #   Specifies whether the key is exportable from the service.
    #   @return [Boolean]
    #
    # @!attribute [rw] enabled
    #   Specifies whether to enable the key. If the key is enabled, it is
    #   activated for use within the service. If the key is not enabled,
    #   then it is created but not activated. The default value is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   Assigns one or more tags to the Amazon Web Services Payment
    #   Cryptography key. Use this parameter to tag a key when it is
    #   created. To tag an existing Amazon Web Services Payment Cryptography
    #   key, use the [TagResource][1] operation.
    #
    #   Each tag consists of a tag key and a tag value. Both the tag key and
    #   the tag value are required, but the tag value can be an empty (null)
    #   string. You can't have more than one tag on an Amazon Web Services
    #   Payment Cryptography key with the same tag key.
    #
    #   Don't include personal, confidential or sensitive information in
    #   this field. This field may be displayed in plaintext in CloudTrail
    #   logs and other output.
    #
    #   <note markdown="1"> Tagging or untagging an Amazon Web Services Payment Cryptography key
    #   can allow or deny permission to the key.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_TagResource.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/CreateKeyInput AWS API Documentation
    #
    class CreateKeyInput < Struct.new(
      :key_attributes,
      :key_check_value_algorithm,
      :exportable,
      :enabled,
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

    # @!attribute [rw] key_identifier
    #   The `KeyARN` of the key that is scheduled for deletion.
    #   @return [String]
    #
    # @!attribute [rw] delete_key_in_days
    #   The waiting period for key deletion. The default value is seven
    #   days.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/DeleteKeyInput AWS API Documentation
    #
    class DeleteKeyInput < Struct.new(
      :key_identifier,
      :delete_key_in_days)
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

    # The attributes for IPEK generation during export.
    #
    # @!attribute [rw] export_dukpt_initial_key
    #   Parameter information for IPEK export.
    #   @return [Types::ExportDukptInitialKey]
    #
    # @!attribute [rw] key_check_value_algorithm
    #   The algorithm that Amazon Web Services Payment Cryptography uses to
    #   calculate the key check value (KCV). It is used to validate the key
    #   integrity. Specify KCV for IPEK export only.
    #
    #   For TDES keys, the KCV is computed by encrypting 8 bytes, each with
    #   value of zero, with the key to be checked and retaining the 3
    #   highest order bytes of the encrypted result. For AES keys, the KCV
    #   is computed using a CMAC algorithm where the input data is 16 bytes
    #   of zero and retaining the 3 highest order bytes of the encrypted
    #   result.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ExportAttributes AWS API Documentation
    #
    class ExportAttributes < Struct.new(
      :export_dukpt_initial_key,
      :key_check_value_algorithm)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameter information for IPEK generation during export.
    #
    # @!attribute [rw] key_serial_number
    #   The KSN for IPEK generation using DUKPT.
    #
    #   KSN must be padded before sending to Amazon Web Services Payment
    #   Cryptography. KSN hex length should be 20 for a TDES\_2KEY key or 24
    #   for an AES key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ExportDukptInitialKey AWS API Documentation
    #
    class ExportDukptInitialKey < Struct.new(
      :key_serial_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameter information for key material export using asymmetric RSA
    # wrap and unwrap key exchange method.
    #
    # @!attribute [rw] certificate_authority_public_key_identifier
    #   The `KeyARN` of the certificate chain that signs the wrapping key
    #   certificate during RSA wrap and unwrap key export.
    #   @return [String]
    #
    # @!attribute [rw] wrapping_key_certificate
    #   The wrapping key certificate in PEM format (base64 encoded). Amazon
    #   Web Services Payment Cryptography uses this certificate to wrap the
    #   key under export.
    #   @return [String]
    #
    # @!attribute [rw] wrapping_spec
    #   The wrapping spec for the key under export.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ExportKeyCryptogram AWS API Documentation
    #
    class ExportKeyCryptogram < Struct.new(
      :certificate_authority_public_key_identifier,
      :wrapping_key_certificate,
      :wrapping_spec)
      SENSITIVE = [:wrapping_key_certificate]
      include Aws::Structure
    end

    # @!attribute [rw] key_material
    #   The key block format type, for example, TR-34 or TR-31, to use
    #   during key material export.
    #   @return [Types::ExportKeyMaterial]
    #
    # @!attribute [rw] export_key_identifier
    #   The `KeyARN` of the key under export from Amazon Web Services
    #   Payment Cryptography.
    #   @return [String]
    #
    # @!attribute [rw] export_attributes
    #   The attributes for IPEK generation during export.
    #   @return [Types::ExportAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ExportKeyInput AWS API Documentation
    #
    class ExportKeyInput < Struct.new(
      :key_material,
      :export_key_identifier,
      :export_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameter information for key material export from Amazon Web Services
    # Payment Cryptography using TR-31 or TR-34 or RSA wrap and unwrap key
    # exchange method.
    #
    # @note ExportKeyMaterial is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] tr_31_key_block
    #   Parameter information for key material export using symmetric TR-31
    #   key exchange method.
    #   @return [Types::ExportTr31KeyBlock]
    #
    # @!attribute [rw] tr_34_key_block
    #   Parameter information for key material export using the asymmetric
    #   TR-34 key exchange method.
    #   @return [Types::ExportTr34KeyBlock]
    #
    # @!attribute [rw] key_cryptogram
    #   Parameter information for key material export using asymmetric RSA
    #   wrap and unwrap key exchange method
    #   @return [Types::ExportKeyCryptogram]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ExportKeyMaterial AWS API Documentation
    #
    class ExportKeyMaterial < Struct.new(
      :tr_31_key_block,
      :tr_34_key_block,
      :key_cryptogram,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Tr31KeyBlock < ExportKeyMaterial; end
      class Tr34KeyBlock < ExportKeyMaterial; end
      class KeyCryptogram < ExportKeyMaterial; end
      class Unknown < ExportKeyMaterial; end
    end

    # @!attribute [rw] wrapped_key
    #   The key material under export as a TR-34 WrappedKeyBlock or a TR-31
    #   WrappedKeyBlock. or a RSA WrappedKeyCryptogram.
    #   @return [Types::WrappedKey]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ExportKeyOutput AWS API Documentation
    #
    class ExportKeyOutput < Struct.new(
      :wrapped_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameter information for key material export using symmetric TR-31
    # key exchange method.
    #
    # @!attribute [rw] wrapping_key_identifier
    #   The `KeyARN` of the the wrapping key. This key encrypts or wraps the
    #   key under export for TR-31 key block generation.
    #   @return [String]
    #
    # @!attribute [rw] key_block_headers
    #   Optional metadata for export associated with the key material. This
    #   data is signed but transmitted in clear text.
    #   @return [Types::KeyBlockHeaders]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ExportTr31KeyBlock AWS API Documentation
    #
    class ExportTr31KeyBlock < Struct.new(
      :wrapping_key_identifier,
      :key_block_headers)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameter information for key material export using the asymmetric
    # TR-34 key exchange method.
    #
    # @!attribute [rw] certificate_authority_public_key_identifier
    #   The `KeyARN` of the certificate chain that signs the wrapping key
    #   certificate during TR-34 key export.
    #   @return [String]
    #
    # @!attribute [rw] wrapping_key_certificate
    #   The `KeyARN` of the wrapping key certificate. Amazon Web Services
    #   Payment Cryptography uses this certificate to wrap the key under
    #   export.
    #   @return [String]
    #
    # @!attribute [rw] export_token
    #   The export token to initiate key export from Amazon Web Services
    #   Payment Cryptography. It also contains the signing key certificate
    #   that will sign the wrapped key during TR-34 key block generation.
    #   Call [GetParametersForExport][1] to receive an export token. It
    #   expires after 7 days. You can use the same export token to export
    #   multiple keys from the same service account.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetParametersForExport.html
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
    # @!attribute [rw] key_block_headers
    #   Optional metadata for export associated with the key material. This
    #   data is signed but transmitted in clear text.
    #   @return [Types::KeyBlockHeaders]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ExportTr34KeyBlock AWS API Documentation
    #
    class ExportTr34KeyBlock < Struct.new(
      :certificate_authority_public_key_identifier,
      :wrapping_key_certificate,
      :export_token,
      :key_block_format,
      :random_nonce,
      :key_block_headers)
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
    #   key block. `RSA_2048` is the only signing key algorithm allowed.
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

    # @!attribute [rw] signing_key_certificate
    #   The signing key certificate in PEM format (base64 encoded) of the
    #   public key for signature within the TR-34 key block. The certificate
    #   expires after 7 days.
    #   @return [String]
    #
    # @!attribute [rw] signing_key_certificate_chain
    #   The root certificate authority (CA) that signed the signing key
    #   certificate in PEM format (base64 encoded).
    #   @return [String]
    #
    # @!attribute [rw] signing_key_algorithm
    #   The algorithm of the signing key certificate for use in TR-34 key
    #   block generation. `RSA_2048` is the only signing key algorithm
    #   allowed.
    #   @return [String]
    #
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/GetParametersForExportOutput AWS API Documentation
    #
    class GetParametersForExportOutput < Struct.new(
      :signing_key_certificate,
      :signing_key_certificate_chain,
      :signing_key_algorithm,
      :export_token,
      :parameters_valid_until_timestamp)
      SENSITIVE = [:signing_key_certificate, :signing_key_certificate_chain]
      include Aws::Structure
    end

    # @!attribute [rw] key_material_type
    #   The method to use for key material import. Import token is only
    #   required for TR-34 WrappedKeyBlock (`TR34_KEY_BLOCK`) and RSA
    #   WrappedKeyCryptogram (`KEY_CRYPTOGRAM`).
    #
    #   Import token is not required for TR-31, root public key cerificate
    #   or trusted public key certificate.
    #   @return [String]
    #
    # @!attribute [rw] wrapping_key_algorithm
    #   The wrapping key algorithm to generate a wrapping key certificate.
    #   This certificate wraps the key under import.
    #
    #   At this time, `RSA_2048` is the allowed algorithm for TR-34
    #   WrappedKeyBlock import. Additionally, `RSA_2048`, `RSA_3072`,
    #   `RSA_4096` are the allowed algorithms for RSA WrappedKeyCryptogram
    #   import.
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

    # @!attribute [rw] wrapping_key_certificate
    #   The wrapping key certificate in PEM format (base64 encoded) of the
    #   wrapping key for use within the TR-34 key block. The certificate
    #   expires in 7 days.
    #   @return [String]
    #
    # @!attribute [rw] wrapping_key_certificate_chain
    #   The Amazon Web Services Payment Cryptography root certificate
    #   authority (CA) that signed the wrapping key certificate in PEM
    #   format (base64 encoded).
    #   @return [String]
    #
    # @!attribute [rw] wrapping_key_algorithm
    #   The algorithm of the wrapping key for use within TR-34
    #   WrappedKeyBlock or RSA WrappedKeyCryptogram.
    #   @return [String]
    #
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/GetParametersForImportOutput AWS API Documentation
    #
    class GetParametersForImportOutput < Struct.new(
      :wrapping_key_certificate,
      :wrapping_key_certificate_chain,
      :wrapping_key_algorithm,
      :import_token,
      :parameters_valid_until_timestamp)
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
    #   PEM format (base64 encoded). It is signed by the root certificate
    #   authority (CA). The certificate expires in 90 days.
    #   @return [String]
    #
    # @!attribute [rw] key_certificate_chain
    #   The root certificate authority (CA) that signed the public key
    #   certificate in PEM format (base64 encoded) of the asymmetric key
    #   pair.
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

    # Parameter information for key material import using asymmetric RSA
    # wrap and unwrap key exchange method.
    #
    # @!attribute [rw] key_attributes
    #   The role of the key, the algorithm it supports, and the
    #   cryptographic operations allowed with the key. This data is
    #   immutable after the key is created.
    #   @return [Types::KeyAttributes]
    #
    # @!attribute [rw] exportable
    #   Specifies whether the key is exportable from the service.
    #   @return [Boolean]
    #
    # @!attribute [rw] wrapped_key_cryptogram
    #   The RSA wrapped key cryptogram under import.
    #   @return [String]
    #
    # @!attribute [rw] import_token
    #   The import token that initiates key import using the asymmetric RSA
    #   wrap and unwrap key exchange method into AWS Payment Cryptography.
    #   It expires after 7 days. You can use the same import token to import
    #   multiple keys to the same service account.
    #   @return [String]
    #
    # @!attribute [rw] wrapping_spec
    #   The wrapping spec for the wrapped key cryptogram.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ImportKeyCryptogram AWS API Documentation
    #
    class ImportKeyCryptogram < Struct.new(
      :key_attributes,
      :exportable,
      :wrapped_key_cryptogram,
      :import_token,
      :wrapping_spec)
      SENSITIVE = [:wrapped_key_cryptogram]
      include Aws::Structure
    end

    # @!attribute [rw] key_material
    #   The key or public key certificate type to use during key material
    #   import, for example TR-34 or RootCertificatePublicKey.
    #   @return [Types::ImportKeyMaterial]
    #
    # @!attribute [rw] key_check_value_algorithm
    #   The algorithm that Amazon Web Services Payment Cryptography uses to
    #   calculate the key check value (KCV). It is used to validate the key
    #   integrity.
    #
    #   For TDES keys, the KCV is computed by encrypting 8 bytes, each with
    #   value of zero, with the key to be checked and retaining the 3
    #   highest order bytes of the encrypted result. For AES keys, the KCV
    #   is computed using a CMAC algorithm where the input data is 16 bytes
    #   of zero and retaining the 3 highest order bytes of the encrypted
    #   result.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Specifies whether import key is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   Assigns one or more tags to the Amazon Web Services Payment
    #   Cryptography key. Use this parameter to tag a key when it is
    #   imported. To tag an existing Amazon Web Services Payment
    #   Cryptography key, use the [TagResource][1] operation.
    #
    #   Each tag consists of a tag key and a tag value. Both the tag key and
    #   the tag value are required, but the tag value can be an empty (null)
    #   string. You can't have more than one tag on an Amazon Web Services
    #   Payment Cryptography key with the same tag key. If you specify an
    #   existing tag key with a different tag value, Amazon Web Services
    #   Payment Cryptography replaces the current tag value with the
    #   specified one.
    #
    #   Don't include personal, confidential or sensitive information in
    #   this field. This field may be displayed in plaintext in CloudTrail
    #   logs and other output.
    #
    #   <note markdown="1"> Tagging or untagging an Amazon Web Services Payment Cryptography key
    #   can allow or deny permission to the key.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_TagResource.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ImportKeyInput AWS API Documentation
    #
    class ImportKeyInput < Struct.new(
      :key_material,
      :key_check_value_algorithm,
      :enabled,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameter information for key material import into Amazon Web Services
    # Payment Cryptography using TR-31 or TR-34 or RSA wrap and unwrap key
    # exchange method.
    #
    # @note ImportKeyMaterial is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] root_certificate_public_key
    #   Parameter information for root public key certificate import.
    #   @return [Types::RootCertificatePublicKey]
    #
    # @!attribute [rw] trusted_certificate_public_key
    #   Parameter information for trusted public key certificate import.
    #   @return [Types::TrustedCertificatePublicKey]
    #
    # @!attribute [rw] tr_31_key_block
    #   Parameter information for key material import using symmetric TR-31
    #   key exchange method.
    #   @return [Types::ImportTr31KeyBlock]
    #
    # @!attribute [rw] tr_34_key_block
    #   Parameter information for key material import using the asymmetric
    #   TR-34 key exchange method.
    #   @return [Types::ImportTr34KeyBlock]
    #
    # @!attribute [rw] key_cryptogram
    #   Parameter information for key material import using asymmetric RSA
    #   wrap and unwrap key exchange method.
    #   @return [Types::ImportKeyCryptogram]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ImportKeyMaterial AWS API Documentation
    #
    class ImportKeyMaterial < Struct.new(
      :root_certificate_public_key,
      :trusted_certificate_public_key,
      :tr_31_key_block,
      :tr_34_key_block,
      :key_cryptogram,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class RootCertificatePublicKey < ImportKeyMaterial; end
      class TrustedCertificatePublicKey < ImportKeyMaterial; end
      class Tr31KeyBlock < ImportKeyMaterial; end
      class Tr34KeyBlock < ImportKeyMaterial; end
      class KeyCryptogram < ImportKeyMaterial; end
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

    # Parameter information for key material import using symmetric TR-31
    # key exchange method.
    #
    # @!attribute [rw] wrapping_key_identifier
    #   The `KeyARN` of the key that will decrypt or unwrap a TR-31 key
    #   block during import.
    #   @return [String]
    #
    # @!attribute [rw] wrapped_key_block
    #   The TR-31 wrapped key block to import.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ImportTr31KeyBlock AWS API Documentation
    #
    class ImportTr31KeyBlock < Struct.new(
      :wrapping_key_identifier,
      :wrapped_key_block)
      SENSITIVE = [:wrapped_key_block]
      include Aws::Structure
    end

    # Parameter information for key material import using the asymmetric
    # TR-34 key exchange method.
    #
    # @!attribute [rw] certificate_authority_public_key_identifier
    #   The `KeyARN` of the certificate chain that signs the signing key
    #   certificate during TR-34 key import.
    #   @return [String]
    #
    # @!attribute [rw] signing_key_certificate
    #   The public key component in PEM certificate format of the private
    #   key that signs the KDH TR-34 WrappedKeyBlock.
    #   @return [String]
    #
    # @!attribute [rw] import_token
    #   The import token that initiates key import using the asymmetric
    #   TR-34 key exchange method into Amazon Web Services Payment
    #   Cryptography. It expires after 7 days. You can use the same import
    #   token to import multiple keys to the same service account.
    #   @return [String]
    #
    # @!attribute [rw] wrapped_key_block
    #   The TR-34 wrapped key block to import.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ImportTr34KeyBlock AWS API Documentation
    #
    class ImportTr34KeyBlock < Struct.new(
      :certificate_authority_public_key_identifier,
      :signing_key_certificate,
      :import_token,
      :wrapped_key_block,
      :key_block_format,
      :random_nonce)
      SENSITIVE = [:signing_key_certificate, :wrapped_key_block]
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
    #   @return [String]
    #
    # @!attribute [rw] key_check_value_algorithm
    #   The algorithm that Amazon Web Services Payment Cryptography uses to
    #   calculate the key check value (KCV). It is used to validate the key
    #   integrity.
    #
    #   For TDES keys, the KCV is computed by encrypting 8 bytes, each with
    #   value of zero, with the key to be checked and retaining the 3
    #   highest order bytes of the encrypted result. For AES keys, the KCV
    #   is computed using a CMAC algorithm where the input data is 16 bytes
    #   of zero and retaining the 3 highest order bytes of the encrypted
    #   result.
    #   @return [String]
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
    # @!attribute [rw] key_state
    #   The state of key that is being created or deleted.
    #   @return [String]
    #
    # @!attribute [rw] key_origin
    #   The source of the key material. For keys created within Amazon Web
    #   Services Payment Cryptography, the value is
    #   `AWS_PAYMENT_CRYPTOGRAPHY`. For keys imported into Amazon Web
    #   Services Payment Cryptography, the value is `EXTERNAL`.
    #   @return [String]
    #
    # @!attribute [rw] create_timestamp
    #   The date and time when the key was created.
    #   @return [Time]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/Key AWS API Documentation
    #
    class Key < Struct.new(
      :key_arn,
      :key_attributes,
      :key_check_value,
      :key_check_value_algorithm,
      :enabled,
      :exportable,
      :key_state,
      :key_origin,
      :create_timestamp,
      :usage_start_timestamp,
      :usage_stop_timestamp,
      :delete_pending_timestamp,
      :delete_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The role of the key, the algorithm it supports, and the cryptographic
    # operations allowed with the key. This data is immutable after the key
    # is created.
    #
    # @!attribute [rw] key_usage
    #   The cryptographic usage of an Amazon Web Services Payment
    #   Cryptography key as deﬁned in section A.5.2 of the TR-31 spec.
    #   @return [String]
    #
    # @!attribute [rw] key_class
    #   The type of Amazon Web Services Payment Cryptography key to create,
    #   which determines the classiﬁcation of the cryptographic method and
    #   whether Amazon Web Services Payment Cryptography key contains a
    #   symmetric key or an asymmetric key pair.
    #   @return [String]
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
    # @!attribute [rw] key_modes_of_use
    #   The list of cryptographic operations that you can perform using the
    #   key.
    #   @return [Types::KeyModesOfUse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/KeyAttributes AWS API Documentation
    #
    class KeyAttributes < Struct.new(
      :key_usage,
      :key_class,
      :key_algorithm,
      :key_modes_of_use)
      SENSITIVE = []
      include Aws::Structure
    end

    # Optional metadata for export associated with the key material. This
    # data is signed but transmitted in clear text.
    #
    # @!attribute [rw] key_modes_of_use
    #   The list of cryptographic operations that you can perform using the
    #   key. The modes of use are deﬁned in section A.5.3 of the TR-31 spec.
    #   @return [Types::KeyModesOfUse]
    #
    # @!attribute [rw] key_exportability
    #   Specifies subsequent exportability of the key within the key block
    #   after it is received by the receiving party. It can be used to
    #   further restrict exportability of the key after export from Amazon
    #   Web Services Payment Cryptography.
    #
    #   When set to `EXPORTABLE`, the key can be subsequently exported by
    #   the receiver under a KEK using TR-31 or TR-34 key block export only.
    #   When set to `NON_EXPORTABLE`, the key cannot be subsequently
    #   exported by the receiver. When set to `SENSITIVE`, the key can be
    #   exported by the receiver under a KEK using TR-31, TR-34, RSA wrap
    #   and unwrap cryptogram or using a symmetric cryptogram key export
    #   method. For further information refer to [ANSI X9.143-2022][1].
    #
    #
    #
    #   [1]: https://webstore.ansi.org/standards/ascx9/ansix91432022
    #   @return [String]
    #
    # @!attribute [rw] key_version
    #   Parameter used to indicate the version of the key carried in the key
    #   block or indicate the value carried in the key block is a component
    #   of a key.
    #   @return [String]
    #
    # @!attribute [rw] optional_blocks
    #   Parameter used to indicate the type of optional data in key block
    #   headers. Refer to [ANSI X9.143-2022][1] for information on allowed
    #   data type for optional blocks.
    #
    #   Optional block character limit is 112 characters. For each optional
    #   block, 2 characters are reserved for optional block ID and 2
    #   characters reserved for optional block length. More than one
    #   optional blocks can be included as long as the combined length does
    #   not increase 112 characters.
    #
    #
    #
    #   [1]: https://webstore.ansi.org/standards/ascx9/ansix91432022
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/KeyBlockHeaders AWS API Documentation
    #
    class KeyBlockHeaders < Struct.new(
      :key_modes_of_use,
      :key_exportability,
      :key_version,
      :optional_blocks)
      SENSITIVE = [:optional_blocks]
      include Aws::Structure
    end

    # The list of cryptographic operations that you can perform using the
    # key. The modes of use are deﬁned in section A.5.3 of the TR-31 spec.
    #
    # @!attribute [rw] encrypt
    #   Speciﬁes whether an Amazon Web Services Payment Cryptography key can
    #   be used to encrypt data.
    #   @return [Boolean]
    #
    # @!attribute [rw] decrypt
    #   Speciﬁes whether an Amazon Web Services Payment Cryptography key can
    #   be used to decrypt data.
    #   @return [Boolean]
    #
    # @!attribute [rw] wrap
    #   Speciﬁes whether an Amazon Web Services Payment Cryptography key can
    #   be used to wrap other keys.
    #   @return [Boolean]
    #
    # @!attribute [rw] unwrap
    #   Speciﬁes whether an Amazon Web Services Payment Cryptography key can
    #   be used to unwrap other keys.
    #   @return [Boolean]
    #
    # @!attribute [rw] generate
    #   Speciﬁes whether an Amazon Web Services Payment Cryptography key can
    #   be used to generate and verify other card and PIN verification keys.
    #   @return [Boolean]
    #
    # @!attribute [rw] sign
    #   Speciﬁes whether an Amazon Web Services Payment Cryptography key can
    #   be used for signing.
    #   @return [Boolean]
    #
    # @!attribute [rw] verify
    #   Speciﬁes whether an Amazon Web Services Payment Cryptography key can
    #   be used to verify signatures.
    #   @return [Boolean]
    #
    # @!attribute [rw] derive_key
    #   Speciﬁes whether an Amazon Web Services Payment Cryptography key can
    #   be used to derive new keys.
    #   @return [Boolean]
    #
    # @!attribute [rw] no_restrictions
    #   Speciﬁes whether an Amazon Web Services Payment Cryptography key has
    #   no special restrictions other than the restrictions implied by
    #   `KeyUsage`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/KeyModesOfUse AWS API Documentation
    #
    class KeyModesOfUse < Struct.new(
      :encrypt,
      :decrypt,
      :wrap,
      :unwrap,
      :generate,
      :sign,
      :verify,
      :derive_key,
      :no_restrictions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata about an Amazon Web Services Payment Cryptography key.
    #
    # @!attribute [rw] key_arn
    #   The Amazon Resource Name (ARN) of the key.
    #   @return [String]
    #
    # @!attribute [rw] key_state
    #   The state of an Amazon Web Services Payment Cryptography that is
    #   being created or deleted.
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
    #   @return [String]
    #
    # @!attribute [rw] exportable
    #   Specifies whether the key is exportable. This data is immutable
    #   after the key is created.
    #   @return [Boolean]
    #
    # @!attribute [rw] enabled
    #   Specifies whether the key is enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/KeySummary AWS API Documentation
    #
    class KeySummary < Struct.new(
      :key_arn,
      :key_state,
      :key_attributes,
      :key_check_value,
      :exportable,
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_arn
    #   The `keyARN` for which you want to list all aliases.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Use this parameter in a subsequent request after you receive a
    #   response with truncated results. Set it to the value of `NextToken`
    #   from the truncated response you just received.
    #   @return [String]
    #
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ListAliasesInput AWS API Documentation
    #
    class ListAliasesInput < Struct.new(
      :key_arn,
      :next_token,
      :max_results)
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
    # @!attribute [rw] next_token
    #   Use this parameter in a subsequent request after you receive a
    #   response with truncated results. Set it to the value of `NextToken`
    #   from the truncated response you just received.
    #   @return [String]
    #
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ListKeysInput AWS API Documentation
    #
    class ListKeysInput < Struct.new(
      :key_state,
      :next_token,
      :max_results)
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

    # @!attribute [rw] resource_arn
    #   The `KeyARN` of the key whose tags you are getting.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Use this parameter in a subsequent request after you receive a
    #   response with truncated results. Set it to the value of `NextToken`
    #   from the truncated response you just received.
    #   @return [String]
    #
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tags associated with a `ResourceArn`. Each tag will list
    #   the key-value pair contained within that tag.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or an empty or null value if
    #   there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :tags,
      :next_token)
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
    #   Don't include personal, confidential or sensitive information in
    #   this field. This field may be displayed in plaintext in CloudTrail
    #   logs and other output.
    #
    #   To use this parameter, you must have [TagResource][1] permission in
    #   an IAM policy.
    #
    #   Don't include personal, confidential or sensitive information in
    #   this field. This field may be displayed in plaintext in CloudTrail
    #   logs and other output.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_TagResource.html
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
    # @!attribute [rw] certificate_authority_public_key_identifier
    #   The `KeyARN` of the root public key certificate or certificate chain
    #   that signs the trusted public key certificate import.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/TrustedCertificatePublicKey AWS API Documentation
    #
    class TrustedCertificatePublicKey < Struct.new(
      :key_attributes,
      :public_key_certificate,
      :certificate_authority_public_key_identifier)
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
    #   the operation succeeded, use the [ListTagsForResource][1] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ListTagsForResource.html
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

    # Parameter information for generating a WrappedKeyBlock for key
    # exchange.
    #
    # @!attribute [rw] wrapping_key_arn
    #   The `KeyARN` of the wrapped key.
    #   @return [String]
    #
    # @!attribute [rw] wrapped_key_material_format
    #   The key block format of a wrapped key.
    #   @return [String]
    #
    # @!attribute [rw] key_material
    #   Parameter information for generating a wrapped key using TR-31 or
    #   TR-34 skey exchange method.
    #   @return [String]
    #
    # @!attribute [rw] key_check_value
    #   The key check value (KCV) is used to check if all parties holding a
    #   given key have the same key or to detect that a key has changed.
    #   @return [String]
    #
    # @!attribute [rw] key_check_value_algorithm
    #   The algorithm that Amazon Web Services Payment Cryptography uses to
    #   calculate the key check value (KCV). It is used to validate the key
    #   integrity.
    #
    #   For TDES keys, the KCV is computed by encrypting 8 bytes, each with
    #   value of zero, with the key to be checked and retaining the 3
    #   highest order bytes of the encrypted result. For AES keys, the KCV
    #   is computed using a CMAC algorithm where the input data is 16 bytes
    #   of zero and retaining the 3 highest order bytes of the encrypted
    #   result.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/WrappedKey AWS API Documentation
    #
    class WrappedKey < Struct.new(
      :wrapping_key_arn,
      :wrapped_key_material_format,
      :key_material,
      :key_check_value,
      :key_check_value_algorithm)
      SENSITIVE = [:key_material]
      include Aws::Structure
    end

  end
end

