# frozen_string_literal: true

# This is generated code!

module Aws::PaymentCryptography
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action.</p> <p>This exception is thrown when the caller lacks the necessary IAM permissions to perform the requested operation. Verify that your IAM policy includes the required permissions for the specific Amazon Web Services Payment Cryptography action you're attempting.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input parameters for adding replication regions to a specific key.</p>
    # @!attribute key_identifier
    #   <p>The key identifier (ARN or alias) of the key for which to add replication regions.</p> <p>This key must exist and be in a valid state for replication operations.</p>
    #   @return [String]
    # @!attribute replication_regions
    #   <p>The list of Amazon Web Services Regions to add to the key's replication configuration.</p> <p>Each region must be a valid Amazon Web Services Region where Amazon Web Services Payment Cryptography is available. The key will be replicated to these regions, allowing cryptographic operations to be performed closer to your applications.</p>
    #   @return [Array<String>]
    class AddKeyReplicationRegionsInput < Struct.new(
      :key_identifier,
      :replication_regions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output from adding replication regions to a key.</p>
    # @!attribute key
    #   <p>The updated key metadata after adding the replication regions.</p> <p>This includes the current state of the key and its replication configuration.</p>
    #   @return [Types::Key]
    class AddKeyReplicationRegionsOutput < Struct.new(
      :key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an alias.</p>
    # @!attribute alias_name
    #   <p>A friendly name that you can use to refer to a key. The value must begin with <code>alias/</code>.</p> <important> <p>Do not include confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p> </important>
    #   @return [String]
    # @!attribute key_arn
    #   <p>The <code>KeyARN</code> of the key associated with the alias.</p>
    #   @return [String]
    class Alias < Struct.new(
      :alias_name,
      :key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Metadata used in generating the CSR
    # @!attribute common_name
    #   Common Name to be used in the certificate signing request
    #   @return [String]
    # @!attribute organization_unit
    #   Organization Unit to be used in the certificate signing request
    #   @return [String]
    # @!attribute organization
    #   Organization to be used in the certificate signing request
    #   @return [String]
    # @!attribute city
    #   City to be used in the certificate signing request
    #   @return [String]
    # @!attribute country
    #   Country to be used in the certificate signing request
    #   @return [String]
    # @!attribute state_or_province
    #   State Or Province to be used in the certificate signing request
    #   @return [String]
    # @!attribute email_address
    #   Email to be used in the certificate signing request
    #   @return [String]
    class CertificateSubjectType < Struct.new(
      :common_name,
      :organization_unit,
      :organization,
      :city,
      :country,
      :state_or_province,
      :email_address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This request can cause an inconsistent state for the resource.</p> <p>The requested operation conflicts with the current state of the resource. For example, attempting to delete a key that is currently being used, or trying to create a resource that already exists.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute alias_name
    #   <p>A friendly name that you can use to refer to a key. An alias must begin with <code>alias/</code> followed by a name, for example <code>alias/ExampleAlias</code>. It can contain only alphanumeric characters, forward slashes (/), underscores (_), and dashes (-).</p> <important> <p>Don't include personal, confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p> </important>
    #   @return [String]
    # @!attribute key_arn
    #   <p>The <code>KeyARN</code> of the key to associate with the alias.</p>
    #   @return [String]
    class CreateAliasInput < Struct.new(
      :alias_name,
      :key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute alias
    #   <p>The alias for the key.</p>
    #   @return [Types::Alias]
    class CreateAliasOutput < Struct.new(
      :alias,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_attributes
    #   <p>The role of the key, the algorithm it supports, and the cryptographic operations allowed with the key. This data is immutable after the key is created.</p>
    #   @return [Types::KeyAttributes]
    # @!attribute key_check_value_algorithm
    #   <p>The algorithm that Amazon Web Services Payment Cryptography uses to calculate the key check value (KCV). It is used to validate the key integrity.</p> <p>For TDES keys, the KCV is computed by encrypting 8 bytes, each with value of zero, with the key to be checked and retaining the 3 highest order bytes of the encrypted result. For AES keys, the KCV is computed using a CMAC algorithm where the input data is 16 bytes of zero and retaining the 3 highest order bytes of the encrypted result.</p>
    #   @return [String]
    # @!attribute exportable
    #   <p>Specifies whether the key is exportable from the service.</p>
    #   @return [Boolean]
    # @!attribute enabled
    #   <p>Specifies whether to enable the key. If the key is enabled, it is activated for use within the service. If the key is not enabled, then it is created but not activated. The default value is enabled.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>Assigns one or more tags to the Amazon Web Services Payment Cryptography key. Use this parameter to tag a key when it is created. To tag an existing Amazon Web Services Payment Cryptography key, use the <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_TagResource.html">TagResource</a> operation.</p> <p>Each tag consists of a tag key and a tag value. Both the tag key and the tag value are required, but the tag value can be an empty (null) string. You can't have more than one tag on an Amazon Web Services Payment Cryptography key with the same tag key. </p> <important> <p>Don't include personal, confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p> </important> <note> <p>Tagging or untagging an Amazon Web Services Payment Cryptography key can allow or deny permission to the key.</p> </note>
    #   @return [Array<Types::Tag>]
    # @!attribute derive_key_usage
    #   <p>The intended cryptographic usage of keys derived from the ECC key pair to be created.</p> <p>After creating an ECC key pair, you cannot change the intended cryptographic usage of keys derived from it using ECDH.</p>
    #   @return [String]
    # @!attribute replication_regions
    #   <p>A list of Amazon Web Services Regions for key replication operations.</p> <p>Each region in the list must be a valid Amazon Web Services Region identifier where Amazon Web Services Payment Cryptography is available. This list is used to specify which regions should be added to or removed from a key's replication configuration.</p>
    #   @return [Array<String>]
    class CreateKeyInput < Struct.new(
      :key_attributes,
      :key_check_value_algorithm,
      :exportable,
      :enabled,
      :tags,
      :derive_key_usage,
      :replication_regions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key
    #   <p>The key material that contains all the key attributes.</p>
    #   @return [Types::Key]
    class CreateKeyOutput < Struct.new(
      :key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute alias_name
    #   <p>A friendly name that you can use to refer Amazon Web Services Payment Cryptography key. This value must begin with <code>alias/</code> followed by a name, such as <code>alias/ExampleAlias</code>.</p>
    #   @return [String]
    class DeleteAliasInput < Struct.new(
      :alias_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteAliasOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_identifier
    #   <p>The <code>KeyARN</code> of the key that is scheduled for deletion.</p>
    #   @return [String]
    # @!attribute delete_key_in_days
    #   <p>The waiting period for key deletion. The default value is seven days.</p>
    #   @return [Integer]
    class DeleteKeyInput < Struct.new(
      :key_identifier,
      :delete_key_in_days,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key
    #   <p>The <code>KeyARN</code> of the key that is scheduled for deletion.</p>
    #   @return [Types::Key]
    class DeleteKeyOutput < Struct.new(
      :key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The shared information used when deriving a key using ECDH.</p>
    # @!attribute shared_information
    #   <p>A string containing information that binds the ECDH derived key to the two parties involved or to the context of the key.</p> <p>It may include details like identities of the two parties deriving the key, context of the operation, session IDs, and optionally a nonce. It must not contain zero bytes. It is not recommended to reuse shared information for multiple ECDH key derivations, as it could result in derived key material being the same across different derivations.</p>
    #   @return [String]
    class DiffieHellmanDerivationData < Struct.new(
      :shared_information,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class SharedInformation < DiffieHellmanDerivationData; end
      class Unknown < DiffieHellmanDerivationData; end
    end

    # <p>Input parameters for disabling default key replication regions for the account.</p>
    # @!attribute replication_regions
    #   <p>The list of Amazon Web Services Regions to remove from the account's default replication regions.</p> <p>New keys created after this operation will not automatically be replicated to these regions, though existing keys with replication to these regions will be unaffected.</p>
    #   @return [Array<String>]
    class DisableDefaultKeyReplicationRegionsInput < Struct.new(
      :replication_regions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output from disabling default key replication regions for the account.</p>
    # @!attribute enabled_replication_regions
    #   <p>The remaining list of regions where default key replication is still enabled for the account.</p> <p>This reflects the account's default replication configuration after removing the specified regions.</p>
    #   @return [Array<String>]
    class DisableDefaultKeyReplicationRegionsOutput < Struct.new(
      :enabled_replication_regions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input parameters for enabling default key replication regions for the account.</p>
    # @!attribute replication_regions
    #   <p>The list of Amazon Web Services Regions to enable as default replication regions for the account.</p> <p>New keys created in this account will automatically be replicated to these regions unless explicitly overridden during key creation.</p>
    #   @return [Array<String>]
    class EnableDefaultKeyReplicationRegionsInput < Struct.new(
      :replication_regions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output from enabling default key replication regions for the account.</p>
    # @!attribute enabled_replication_regions
    #   <p>The complete list of regions where default key replication is now enabled for the account.</p> <p>This includes both previously enabled regions and the newly added regions from this operation.</p>
    #   @return [Array<String>]
    class EnableDefaultKeyReplicationRegionsOutput < Struct.new(
      :enabled_replication_regions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The attributes for IPEK generation during export.</p>
    # @!attribute export_dukpt_initial_key
    #   <p>Parameter information for IPEK export.</p>
    #   @return [Types::ExportDukptInitialKey]
    # @!attribute key_check_value_algorithm
    #   <p>The algorithm that Amazon Web Services Payment Cryptography uses to calculate the key check value (KCV). It is used to validate the key integrity. Specify KCV for IPEK export only.</p> <p>For TDES keys, the KCV is computed by encrypting 8 bytes, each with value of zero, with the key to be checked and retaining the 3 highest order bytes of the encrypted result. For AES keys, the KCV is computed using a CMAC algorithm where the input data is 16 bytes of zero and retaining the 3 highest order bytes of the encrypted result.</p>
    #   @return [String]
    class ExportAttributes < Struct.new(
      :export_dukpt_initial_key,
      :key_check_value_algorithm,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Key derivation parameter information for key material export using asymmetric ECDH key exchange method.</p>
    # @!attribute private_key_identifier
    #   <p>The <code>keyARN</code> of the asymmetric ECC key created within Amazon Web Services Payment Cryptography.</p>
    #   @return [String]
    # @!attribute certificate_authority_public_key_identifier
    #   <p>The <code>keyARN</code> of the CA that signed the <code>PublicKeyCertificate</code> for the client's receiving ECC key pair.</p>
    #   @return [String]
    # @!attribute public_key_certificate
    #   <p>The public key certificate of the client's receiving ECC key pair, in PEM format (base64 encoded), to use for ECDH key derivation.</p>
    #   @return [String]
    # @!attribute derive_key_algorithm
    #   <p>The key algorithm of the shared derived ECDH key.</p>
    #   @return [String]
    # @!attribute key_derivation_function
    #   <p>The key derivation function to use when deriving a key using ECDH.</p>
    #   @return [String]
    # @!attribute key_derivation_hash_algorithm
    #   <p>The hash type to use when deriving a key using ECDH.</p>
    #   @return [String]
    # @!attribute derivation_data
    #   <p>The shared information used when deriving a key using ECDH.</p>
    #   @return [Types::DiffieHellmanDerivationData]
    # @!attribute key_block_headers
    #   <p>Optional metadata for export associated with the key material. This data is signed but transmitted in clear text.</p>
    #   @return [Types::KeyBlockHeaders]
    class ExportDiffieHellmanTr31KeyBlock < Struct.new(
      :private_key_identifier,
      :certificate_authority_public_key_identifier,
      :public_key_certificate,
      :derive_key_algorithm,
      :key_derivation_function,
      :key_derivation_hash_algorithm,
      :derivation_data,
      :key_block_headers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameter information for IPEK generation during export.</p>
    # @!attribute key_serial_number
    #   <p>The KSN for IPEK generation using DUKPT. </p> <p>KSN must be padded before sending to Amazon Web Services Payment Cryptography. KSN hex length should be 20 for a TDES_2KEY key or 24 for an AES key.</p>
    #   @return [String]
    class ExportDukptInitialKey < Struct.new(
      :key_serial_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameter information for key material export using asymmetric RSA wrap and unwrap key exchange method.</p>
    # @!attribute certificate_authority_public_key_identifier
    #   <p>The <code>KeyARN</code> of the certificate chain that signs the wrapping key certificate during RSA wrap and unwrap key export.</p>
    #   @return [String]
    # @!attribute wrapping_key_certificate
    #   <p>The wrapping key certificate in PEM format (base64 encoded). Amazon Web Services Payment Cryptography uses this certificate to wrap the key under export.</p>
    #   @return [String]
    # @!attribute wrapping_spec
    #   <p>The wrapping spec for the key under export.</p>
    #   @return [String]
    class ExportKeyCryptogram < Struct.new(
      :certificate_authority_public_key_identifier,
      :wrapping_key_certificate,
      :wrapping_spec,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_material
    #   <p>The key block format type, for example, TR-34 or TR-31, to use during key material export.</p>
    #   @return [Types::ExportKeyMaterial]
    # @!attribute export_key_identifier
    #   <p>The <code>KeyARN</code> of the key under export from Amazon Web Services Payment Cryptography.</p>
    #   @return [String]
    # @!attribute export_attributes
    #   <p>The attributes for IPEK generation during export.</p>
    #   @return [Types::ExportAttributes]
    class ExportKeyInput < Struct.new(
      :key_material,
      :export_key_identifier,
      :export_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameter information for key material export from Amazon Web Services Payment Cryptography using TR-31 or TR-34 or RSA wrap and unwrap key exchange method.</p>
    # @!attribute tr31_key_block
    #   <p>Parameter information for key material export using symmetric TR-31 key exchange method.</p>
    #   @return [Types::ExportTr31KeyBlock]
    # @!attribute tr34_key_block
    #   <p>Parameter information for key material export using the asymmetric TR-34 key exchange method.</p>
    #   @return [Types::ExportTr34KeyBlock]
    # @!attribute key_cryptogram
    #   <p>Parameter information for key material export using asymmetric RSA wrap and unwrap key exchange method</p>
    #   @return [Types::ExportKeyCryptogram]
    # @!attribute diffie_hellman_tr31_key_block
    #   <p>Key derivation parameter information for key material export using asymmetric ECDH key exchange method.</p>
    #   @return [Types::ExportDiffieHellmanTr31KeyBlock]
    class ExportKeyMaterial < Struct.new(
      :tr31_key_block,
      :tr34_key_block,
      :key_cryptogram,
      :diffie_hellman_tr31_key_block,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Tr31KeyBlock < ExportKeyMaterial; end
      class Tr34KeyBlock < ExportKeyMaterial; end
      class KeyCryptogram < ExportKeyMaterial; end
      class DiffieHellmanTr31KeyBlock < ExportKeyMaterial; end
      class Unknown < ExportKeyMaterial; end
    end

    # @!attribute wrapped_key
    #   <p>The key material under export as a TR-34 WrappedKeyBlock or a TR-31 WrappedKeyBlock. or a RSA WrappedKeyCryptogram.</p>
    #   @return [Types::WrappedKey]
    class ExportKeyOutput < Struct.new(
      :wrapped_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameter information for key material export using symmetric TR-31 key exchange method.</p>
    # @!attribute wrapping_key_identifier
    #   <p>The <code>KeyARN</code> of the the wrapping key. This key encrypts or wraps the key under export for TR-31 key block generation.</p>
    #   @return [String]
    # @!attribute key_block_headers
    #   <p>Optional metadata for export associated with the key material. This data is signed but transmitted in clear text.</p>
    #   @return [Types::KeyBlockHeaders]
    class ExportTr31KeyBlock < Struct.new(
      :wrapping_key_identifier,
      :key_block_headers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameter information for key material export using the asymmetric TR-34 key exchange method.</p>
    # @!attribute certificate_authority_public_key_identifier
    #   <p>The <code>KeyARN</code> of the certificate chain that signs the wrapping key certificate during TR-34 key export.</p>
    #   @return [String]
    # @!attribute wrapping_key_certificate
    #   <p>The <code>KeyARN</code> of the wrapping key certificate. Amazon Web Services Payment Cryptography uses this certificate to wrap the key under export.</p>
    #   @return [String]
    # @!attribute export_token
    #   <p>The export token to initiate key export from Amazon Web Services Payment Cryptography. It also contains the signing key certificate that will sign the wrapped key during TR-34 key block generation. Call <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetParametersForExport.html">GetParametersForExport</a> to receive an export token. It expires after 30 days. You can use the same export token to export multiple keys from the same service account.</p>
    #   @return [String]
    # @!attribute signing_key_identifier
    #   Key Identifier used for signing the export key
    #   @return [String]
    # @!attribute signing_key_certificate
    #   Certificate used for signing the export key
    #   @return [String]
    # @!attribute key_block_format
    #   <p>The format of key block that Amazon Web Services Payment Cryptography will use during key export.</p>
    #   @return [String]
    # @!attribute random_nonce
    #   <p>A random number value that is unique to the TR-34 key block generated using 2 pass. The operation will fail, if a random nonce value is not provided for a TR-34 key block generated using 2 pass.</p>
    #   @return [String]
    # @!attribute key_block_headers
    #   <p>Optional metadata for export associated with the key material. This data is signed but transmitted in clear text.</p>
    #   @return [Types::KeyBlockHeaders]
    class ExportTr34KeyBlock < Struct.new(
      :certificate_authority_public_key_identifier,
      :wrapping_key_certificate,
      :export_token,
      :signing_key_identifier,
      :signing_key_certificate,
      :key_block_format,
      :random_nonce,
      :key_block_headers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:export_token] = '' unless options.key?(:export_token)
        super
      end
    end

    # @!attribute alias_name
    #   <p>The alias of the Amazon Web Services Payment Cryptography key.</p>
    #   @return [String]
    class GetAliasInput < Struct.new(
      :alias_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute alias
    #   <p>The alias of the Amazon Web Services Payment Cryptography key.</p>
    #   @return [Types::Alias]
    class GetAliasOutput < Struct.new(
      :alias,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_identifier
    #   Asymmetric key used for generating the certificate signing request
    #   @return [String]
    # @!attribute signing_algorithm
    #   Algorithm used to generate the certificate signing request
    #   @return [String]
    # @!attribute certificate_subject
    #   Certificate subject data
    #   @return [Types::CertificateSubjectType]
    class GetCertificateSigningRequestInput < Struct.new(
      :key_identifier,
      :signing_algorithm,
      :certificate_subject,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate_signing_request
    #   Certificate signing request
    #   @return [String]
    class GetCertificateSigningRequestOutput < Struct.new(
      :certificate_signing_request,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input parameters for retrieving the account's default key replication regions. This operation requires no input parameters.</p>
    class GetDefaultKeyReplicationRegionsInput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output containing the account's current default key replication configuration.</p>
    # @!attribute enabled_replication_regions
    #   <p>The list of regions where default key replication is currently enabled for the account.</p> <p>New keys created in this account will automatically be replicated to these regions unless explicitly configured otherwise during key creation.</p>
    #   @return [Array<String>]
    class GetDefaultKeyReplicationRegionsOutput < Struct.new(
      :enabled_replication_regions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_identifier
    #   <p>The <code>KeyARN</code> of the Amazon Web Services Payment Cryptography key.</p>
    #   @return [String]
    class GetKeyInput < Struct.new(
      :key_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key
    #   <p>Contains the key metadata, including both immutable and mutable attributes for the key, but does not include actual cryptographic key material.</p>
    #   @return [Types::Key]
    class GetKeyOutput < Struct.new(
      :key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_material_type
    #   <p>The key block format type (for example, TR-34 or TR-31) to use during key material export. Export token is only required for a TR-34 key export, <code>TR34_KEY_BLOCK</code>. Export token is not required for TR-31 key export.</p>
    #   @return [String]
    # @!attribute signing_key_algorithm
    #   <p>The signing key algorithm to generate a signing key certificate. This certificate signs the wrapped key under export within the TR-34 key block. <code>RSA_2048</code> is the only signing key algorithm allowed.</p>
    #   @return [String]
    class GetParametersForExportInput < Struct.new(
      :key_material_type,
      :signing_key_algorithm,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute signing_key_certificate
    #   <p>The signing key certificate in PEM format (base64 encoded) of the public key for signature within the TR-34 key block. The certificate expires after 30 days.</p>
    #   @return [String]
    # @!attribute signing_key_certificate_chain
    #   <p>The root certificate authority (CA) that signed the signing key certificate in PEM format (base64 encoded).</p>
    #   @return [String]
    # @!attribute signing_key_algorithm
    #   <p>The algorithm of the signing key certificate for use in TR-34 key block generation. <code>RSA_2048</code> is the only signing key algorithm allowed.</p>
    #   @return [String]
    # @!attribute export_token
    #   <p>The export token to initiate key export from Amazon Web Services Payment Cryptography. The export token expires after 30 days. You can use the same export token to export multiple keys from the same service account.</p>
    #   @return [String]
    # @!attribute parameters_valid_until_timestamp
    #   <p>The validity period of the export token.</p>
    #   @return [Time]
    class GetParametersForExportOutput < Struct.new(
      :signing_key_certificate,
      :signing_key_certificate_chain,
      :signing_key_algorithm,
      :export_token,
      :parameters_valid_until_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_material_type
    #   <p>The method to use for key material import. Import token is only required for TR-34 WrappedKeyBlock (<code>TR34_KEY_BLOCK</code>) and RSA WrappedKeyCryptogram (<code>KEY_CRYPTOGRAM</code>).</p> <p>Import token is not required for TR-31, root public key cerificate or trusted public key certificate.</p>
    #   @return [String]
    # @!attribute wrapping_key_algorithm
    #   <p>The wrapping key algorithm to generate a wrapping key certificate. This certificate wraps the key under import.</p> <p>At this time, <code>RSA_2048</code> is the allowed algorithm for TR-34 WrappedKeyBlock import. Additionally, <code>RSA_2048</code>, <code>RSA_3072</code>, <code>RSA_4096</code> are the allowed algorithms for RSA WrappedKeyCryptogram import.</p>
    #   @return [String]
    class GetParametersForImportInput < Struct.new(
      :key_material_type,
      :wrapping_key_algorithm,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute wrapping_key_certificate
    #   <p>The wrapping key certificate in PEM format (base64 encoded) of the wrapping key for use within the TR-34 key block. The certificate expires in 30 days.</p>
    #   @return [String]
    # @!attribute wrapping_key_certificate_chain
    #   <p>The Amazon Web Services Payment Cryptography root certificate authority (CA) that signed the wrapping key certificate in PEM format (base64 encoded).</p>
    #   @return [String]
    # @!attribute wrapping_key_algorithm
    #   <p>The algorithm of the wrapping key for use within TR-34 WrappedKeyBlock or RSA WrappedKeyCryptogram.</p>
    #   @return [String]
    # @!attribute import_token
    #   <p>The import token to initiate key import into Amazon Web Services Payment Cryptography. The import token expires after 30 days. You can use the same import token to import multiple keys to the same service account.</p>
    #   @return [String]
    # @!attribute parameters_valid_until_timestamp
    #   <p>The validity period of the import token.</p>
    #   @return [Time]
    class GetParametersForImportOutput < Struct.new(
      :wrapping_key_certificate,
      :wrapping_key_certificate_chain,
      :wrapping_key_algorithm,
      :import_token,
      :parameters_valid_until_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_identifier
    #   <p>The <code>KeyARN</code> of the asymmetric key pair.</p>
    #   @return [String]
    class GetPublicKeyCertificateInput < Struct.new(
      :key_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_certificate
    #   <p>The public key component of the asymmetric key pair in a certificate PEM format (base64 encoded). It is signed by the root certificate authority (CA). The certificate expires in 90 days.</p>
    #   @return [String]
    # @!attribute key_certificate_chain
    #   <p>The root certificate authority (CA) that signed the public key certificate in PEM format (base64 encoded) of the asymmetric key pair.</p>
    #   @return [String]
    class GetPublicKeyCertificateOutput < Struct.new(
      :key_certificate,
      :key_certificate_chain,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Key derivation parameter information for key material import using asymmetric ECDH key exchange method.</p>
    # @!attribute private_key_identifier
    #   <p>The <code>keyARN</code> of the asymmetric ECC key created within Amazon Web Services Payment Cryptography.</p>
    #   @return [String]
    # @!attribute certificate_authority_public_key_identifier
    #   <p>The <code>keyARN</code> of the CA that signed the <code>PublicKeyCertificate</code> for the client's receiving ECC key pair.</p>
    #   @return [String]
    # @!attribute public_key_certificate
    #   <p>The public key certificate of the client's receiving ECC key pair, in PEM format (base64 encoded), to use for ECDH key derivation.</p>
    #   @return [String]
    # @!attribute derive_key_algorithm
    #   <p>The key algorithm of the shared derived ECDH key.</p>
    #   @return [String]
    # @!attribute key_derivation_function
    #   <p>The key derivation function to use when deriving a key using ECDH.</p>
    #   @return [String]
    # @!attribute key_derivation_hash_algorithm
    #   <p>The hash type to use when deriving a key using ECDH.</p>
    #   @return [String]
    # @!attribute derivation_data
    #   <p>The shared information used when deriving a key using ECDH.</p>
    #   @return [Types::DiffieHellmanDerivationData]
    # @!attribute wrapped_key_block
    #   <p>The ECDH wrapped key block to import.</p>
    #   @return [String]
    class ImportDiffieHellmanTr31KeyBlock < Struct.new(
      :private_key_identifier,
      :certificate_authority_public_key_identifier,
      :public_key_certificate,
      :derive_key_algorithm,
      :key_derivation_function,
      :key_derivation_hash_algorithm,
      :derivation_data,
      :wrapped_key_block,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameter information for key material import using asymmetric RSA wrap and unwrap key exchange method.</p>
    # @!attribute key_attributes
    #   <p>The role of the key, the algorithm it supports, and the cryptographic operations allowed with the key. This data is immutable after the key is created.</p>
    #   @return [Types::KeyAttributes]
    # @!attribute exportable
    #   <p>Specifies whether the key is exportable from the service.</p>
    #   @return [Boolean]
    # @!attribute wrapped_key_cryptogram
    #   <p>The RSA wrapped key cryptogram under import.</p>
    #   @return [String]
    # @!attribute import_token
    #   <p>The import token that initiates key import using the asymmetric RSA wrap and unwrap key exchange method into AWS Payment Cryptography. It expires after 30 days. You can use the same import token to import multiple keys to the same service account.</p>
    #   @return [String]
    # @!attribute wrapping_spec
    #   <p>The wrapping spec for the wrapped key cryptogram.</p>
    #   @return [String]
    class ImportKeyCryptogram < Struct.new(
      :key_attributes,
      :exportable,
      :wrapped_key_cryptogram,
      :import_token,
      :wrapping_spec,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_material
    #   <p>The key or public key certificate type to use during key material import, for example TR-34 or RootCertificatePublicKey.</p>
    #   @return [Types::ImportKeyMaterial]
    # @!attribute key_check_value_algorithm
    #   <p>The algorithm that Amazon Web Services Payment Cryptography uses to calculate the key check value (KCV). It is used to validate the key integrity.</p> <p>For TDES keys, the KCV is computed by encrypting 8 bytes, each with value of zero, with the key to be checked and retaining the 3 highest order bytes of the encrypted result. For AES keys, the KCV is computed using a CMAC algorithm where the input data is 16 bytes of zero and retaining the 3 highest order bytes of the encrypted result.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>Specifies whether import key is enabled.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>Assigns one or more tags to the Amazon Web Services Payment Cryptography key. Use this parameter to tag a key when it is imported. To tag an existing Amazon Web Services Payment Cryptography key, use the <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_TagResource.html">TagResource</a> operation.</p> <p>Each tag consists of a tag key and a tag value. Both the tag key and the tag value are required, but the tag value can be an empty (null) string. You can't have more than one tag on an Amazon Web Services Payment Cryptography key with the same tag key. If you specify an existing tag key with a different tag value, Amazon Web Services Payment Cryptography replaces the current tag value with the specified one.</p> <important> <p>Don't include personal, confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p> </important> <note> <p>Tagging or untagging an Amazon Web Services Payment Cryptography key can allow or deny permission to the key.</p> </note>
    #   @return [Array<Types::Tag>]
    # @!attribute replication_regions
    #   <p>A list of Amazon Web Services Regions for key replication operations.</p> <p>Each region in the list must be a valid Amazon Web Services Region identifier where Amazon Web Services Payment Cryptography is available. This list is used to specify which regions should be added to or removed from a key's replication configuration.</p>
    #   @return [Array<String>]
    class ImportKeyInput < Struct.new(
      :key_material,
      :key_check_value_algorithm,
      :enabled,
      :tags,
      :replication_regions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameter information for key material import into Amazon Web Services Payment Cryptography using TR-31 or TR-34 or RSA wrap and unwrap key exchange method.</p>
    # @!attribute root_certificate_public_key
    #   <p>Parameter information for root public key certificate import.</p>
    #   @return [Types::RootCertificatePublicKey]
    # @!attribute trusted_certificate_public_key
    #   <p>Parameter information for trusted public key certificate import.</p>
    #   @return [Types::TrustedCertificatePublicKey]
    # @!attribute tr31_key_block
    #   <p>Parameter information for key material import using symmetric TR-31 key exchange method.</p>
    #   @return [Types::ImportTr31KeyBlock]
    # @!attribute tr34_key_block
    #   <p>Parameter information for key material import using the asymmetric TR-34 key exchange method.</p>
    #   @return [Types::ImportTr34KeyBlock]
    # @!attribute key_cryptogram
    #   <p>Parameter information for key material import using asymmetric RSA wrap and unwrap key exchange method.</p>
    #   @return [Types::ImportKeyCryptogram]
    # @!attribute diffie_hellman_tr31_key_block
    #   <p>Key derivation parameter information for key material import using asymmetric ECDH key exchange method.</p>
    #   @return [Types::ImportDiffieHellmanTr31KeyBlock]
    class ImportKeyMaterial < Struct.new(
      :root_certificate_public_key,
      :trusted_certificate_public_key,
      :tr31_key_block,
      :tr34_key_block,
      :key_cryptogram,
      :diffie_hellman_tr31_key_block,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class RootCertificatePublicKey < ImportKeyMaterial; end
      class TrustedCertificatePublicKey < ImportKeyMaterial; end
      class Tr31KeyBlock < ImportKeyMaterial; end
      class Tr34KeyBlock < ImportKeyMaterial; end
      class KeyCryptogram < ImportKeyMaterial; end
      class DiffieHellmanTr31KeyBlock < ImportKeyMaterial; end
      class Unknown < ImportKeyMaterial; end
    end

    # @!attribute key
    #   <p>The <code>KeyARN</code> of the key material imported within Amazon Web Services Payment Cryptography.</p>
    #   @return [Types::Key]
    class ImportKeyOutput < Struct.new(
      :key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameter information for key material import using symmetric TR-31 key exchange method.</p>
    # @!attribute wrapping_key_identifier
    #   <p>The <code>KeyARN</code> of the key that will decrypt or unwrap a TR-31 key block during import.</p>
    #   @return [String]
    # @!attribute wrapped_key_block
    #   <p>The TR-31 wrapped key block to import.</p>
    #   @return [String]
    class ImportTr31KeyBlock < Struct.new(
      :wrapping_key_identifier,
      :wrapped_key_block,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameter information for key material import using the asymmetric TR-34 key exchange method.</p>
    # @!attribute certificate_authority_public_key_identifier
    #   <p>The <code>KeyARN</code> of the certificate chain that signs the signing key certificate during TR-34 key import.</p>
    #   @return [String]
    # @!attribute signing_key_certificate
    #   <p>The public key component in PEM certificate format of the private key that signs the KDH TR-34 WrappedKeyBlock.</p>
    #   @return [String]
    # @!attribute import_token
    #   <p>The import token that initiates key import using the asymmetric TR-34 key exchange method into Amazon Web Services Payment Cryptography. It expires after 30 days. You can use the same import token to import multiple keys to the same service account.</p>
    #   @return [String]
    # @!attribute wrapping_key_identifier
    #   Key Identifier used for unwrapping the import key
    #   @return [String]
    # @!attribute wrapping_key_certificate
    #   Key Identifier used for unwrapping the import key
    #   @return [String]
    # @!attribute wrapped_key_block
    #   <p>The TR-34 wrapped key block to import.</p>
    #   @return [String]
    # @!attribute key_block_format
    #   <p>The key block format to use during key import. The only value allowed is <code>X9_TR34_2012</code>.</p>
    #   @return [String]
    # @!attribute random_nonce
    #   <p>A random number value that is unique to the TR-34 key block generated using 2 pass. The operation will fail, if a random nonce value is not provided for a TR-34 key block generated using 2 pass.</p>
    #   @return [String]
    class ImportTr34KeyBlock < Struct.new(
      :certificate_authority_public_key_identifier,
      :signing_key_certificate,
      :import_token,
      :wrapping_key_identifier,
      :wrapping_key_certificate,
      :wrapped_key_block,
      :key_block_format,
      :random_nonce,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:import_token] = '' unless options.key?(:import_token)
        super
      end
    end

    # <p>The request processing has failed because of an unknown error, exception, or failure.</p> <p>This indicates a server-side error within the Amazon Web Services Payment Cryptography service. If this error persists, contact support for assistance.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata about an Amazon Web Services Payment Cryptography key.</p>
    # @!attribute key_arn
    #   <p>The Amazon Resource Name (ARN) of the key.</p>
    #   @return [String]
    # @!attribute key_attributes
    #   <p>The role of the key, the algorithm it supports, and the cryptographic operations allowed with the key. This data is immutable after the key is created.</p>
    #   @return [Types::KeyAttributes]
    # @!attribute key_check_value
    #   <p>The key check value (KCV) is used to check if all parties holding a given key have the same key or to detect that a key has changed.</p>
    #   @return [String]
    # @!attribute key_check_value_algorithm
    #   <p>The algorithm that Amazon Web Services Payment Cryptography uses to calculate the key check value (KCV). It is used to validate the key integrity.</p> <p>For TDES keys, the KCV is computed by encrypting 8 bytes, each with value of zero, with the key to be checked and retaining the 3 highest order bytes of the encrypted result. For AES keys, the KCV is computed using a CMAC algorithm where the input data is 16 bytes of zero and retaining the 3 highest order bytes of the encrypted result.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>Specifies whether the key is enabled. </p>
    #   @return [Boolean]
    # @!attribute exportable
    #   <p>Specifies whether the key is exportable. This data is immutable after the key is created.</p>
    #   @return [Boolean]
    # @!attribute key_state
    #   <p>The state of key that is being created or deleted.</p>
    #   @return [String]
    # @!attribute key_origin
    #   <p>The source of the key material. For keys created within Amazon Web Services Payment Cryptography, the value is <code>AWS_PAYMENT_CRYPTOGRAPHY</code>. For keys imported into Amazon Web Services Payment Cryptography, the value is <code>EXTERNAL</code>.</p>
    #   @return [String]
    # @!attribute create_timestamp
    #   <p>The date and time when the key was created.</p>
    #   @return [Time]
    # @!attribute usage_start_timestamp
    #   <p>The date and time after which Amazon Web Services Payment Cryptography will start using the key material for cryptographic operations.</p>
    #   @return [Time]
    # @!attribute usage_stop_timestamp
    #   <p>The date and time after which Amazon Web Services Payment Cryptography will stop using the key material for cryptographic operations.</p>
    #   @return [Time]
    # @!attribute delete_pending_timestamp
    #   <p>The date and time after which Amazon Web Services Payment Cryptography will delete the key. This value is present only when <code>KeyState</code> is <code>DELETE_PENDING</code> and the key is scheduled for deletion.</p>
    #   @return [Time]
    # @!attribute delete_timestamp
    #   <p>The date and time after which Amazon Web Services Payment Cryptography will delete the key. This value is present only when when the <code>KeyState</code> is <code>DELETE_COMPLETE</code> and the Amazon Web Services Payment Cryptography key is deleted.</p>
    #   @return [Time]
    # @!attribute derive_key_usage
    #   <p>The cryptographic usage of an ECDH derived key as deﬁned in section A.5.2 of the TR-31 spec.</p>
    #   @return [String]
    # @!attribute multi_region_key_type
    #   <p>Indicates whether this key is a multi-region key and its role in the multi-region key hierarchy.</p> <p>Multi-region keys allow the same key material to be used across multiple Amazon Web Services Regions. This field specifies whether the key is a primary key (which can be replicated to other regions) or a replica key (which is a copy of a primary key in another region).</p>
    #   @return [String]
    # @!attribute primary_region
    #   <p>An Amazon Web Services Region identifier in the standard format (e.g., <code>us-east-1</code>, <code>eu-west-1</code>).</p> <p>Used to specify regions for key replication operations. The region must be a valid Amazon Web Services Region where Amazon Web Services Payment Cryptography is available.</p>
    #   @return [String]
    # @!attribute replication_status
    #   <p>Information about the replication status of the key across different regions.</p> <p>This field provides details about the current state of key replication, including any status messages or operational information. It helps track the progress and health of key replication operations.</p>
    #   @return [Hash<String, Types::ReplicationStatusType>]
    # @!attribute using_default_replication_regions
    #   <p>Indicates whether this key is using the account's default replication regions configuration.</p> <p>When set to <code>true</code>, the key automatically replicates to the regions specified in the account's default replication settings. When set to <code>false</code>, the key has a custom replication configuration that overrides the account defaults.</p>
    #   @return [Boolean]
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
      :delete_timestamp,
      :derive_key_usage,
      :multi_region_key_type,
      :primary_region,
      :replication_status,
      :using_default_replication_regions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The role of the key, the algorithm it supports, and the cryptographic operations allowed with the key. This data is immutable after the key is created.</p>
    # @!attribute key_usage
    #   <p>The cryptographic usage of an Amazon Web Services Payment Cryptography key as deﬁned in section A.5.2 of the TR-31 spec.</p>
    #   @return [String]
    # @!attribute key_class
    #   <p>The type of Amazon Web Services Payment Cryptography key to create, which determines the classiﬁcation of the cryptographic method and whether Amazon Web Services Payment Cryptography key contains a symmetric key or an asymmetric key pair.</p>
    #   @return [String]
    # @!attribute key_algorithm
    #   <p>The key algorithm to be use during creation of an Amazon Web Services Payment Cryptography key.</p> <p>For symmetric keys, Amazon Web Services Payment Cryptography supports <code>AES</code> and <code>TDES</code> algorithms. For asymmetric keys, Amazon Web Services Payment Cryptography supports <code>RSA</code> and <code>ECC_NIST</code> algorithms.</p>
    #   @return [String]
    # @!attribute key_modes_of_use
    #   <p>The list of cryptographic operations that you can perform using the key.</p>
    #   @return [Types::KeyModesOfUse]
    class KeyAttributes < Struct.new(
      :key_usage,
      :key_class,
      :key_algorithm,
      :key_modes_of_use,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Optional metadata for export associated with the key material. This data is signed but transmitted in clear text.</p>
    # @!attribute key_modes_of_use
    #   <p>The list of cryptographic operations that you can perform using the key. The modes of use are deﬁned in section A.5.3 of the TR-31 spec.</p>
    #   @return [Types::KeyModesOfUse]
    # @!attribute key_exportability
    #   <p>Specifies subsequent exportability of the key within the key block after it is received by the receiving party. It can be used to further restrict exportability of the key after export from Amazon Web Services Payment Cryptography.</p> <p>When set to <code>EXPORTABLE</code>, the key can be subsequently exported by the receiver under a KEK using TR-31 or TR-34 key block export only. When set to <code>NON_EXPORTABLE</code>, the key cannot be subsequently exported by the receiver. When set to <code>SENSITIVE</code>, the key can be exported by the receiver under a KEK using TR-31, TR-34, RSA wrap and unwrap cryptogram or using a symmetric cryptogram key export method. For further information refer to <a href="https://webstore.ansi.org/standards/ascx9/ansix91432022">ANSI X9.143-2022</a>.</p>
    #   @return [String]
    # @!attribute key_version
    #   <p>Parameter used to indicate the version of the key carried in the key block or indicate the value carried in the key block is a component of a key.</p>
    #   @return [String]
    # @!attribute optional_blocks
    #   <p>Parameter used to indicate the type of optional data in key block headers. Refer to <a href="https://webstore.ansi.org/standards/ascx9/ansix91432022">ANSI X9.143-2022</a> for information on allowed data type for optional blocks.</p> <p>Optional block character limit is 112 characters. For each optional block, 2 characters are reserved for optional block ID and 2 characters reserved for optional block length. More than one optional blocks can be included as long as the combined length does not increase 112 characters.</p>
    #   @return [Hash<String, String>]
    class KeyBlockHeaders < Struct.new(
      :key_modes_of_use,
      :key_exportability,
      :key_version,
      :optional_blocks,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The list of cryptographic operations that you can perform using the key. The modes of use are deﬁned in section A.5.3 of the TR-31 spec.</p>
    # @!attribute encrypt
    #   <p>Speciﬁes whether an Amazon Web Services Payment Cryptography key can be used to encrypt data.</p>
    #   @return [Boolean]
    # @!attribute decrypt
    #   <p>Speciﬁes whether an Amazon Web Services Payment Cryptography key can be used to decrypt data.</p>
    #   @return [Boolean]
    # @!attribute wrap
    #   <p>Speciﬁes whether an Amazon Web Services Payment Cryptography key can be used to wrap other keys.</p>
    #   @return [Boolean]
    # @!attribute unwrap
    #   <p>Speciﬁes whether an Amazon Web Services Payment Cryptography key can be used to unwrap other keys.</p>
    #   @return [Boolean]
    # @!attribute generate
    #   <p>Speciﬁes whether an Amazon Web Services Payment Cryptography key can be used to generate and verify other card and PIN verification keys.</p>
    #   @return [Boolean]
    # @!attribute sign
    #   <p>Speciﬁes whether an Amazon Web Services Payment Cryptography key can be used for signing.</p>
    #   @return [Boolean]
    # @!attribute verify
    #   <p>Speciﬁes whether an Amazon Web Services Payment Cryptography key can be used to verify signatures.</p>
    #   @return [Boolean]
    # @!attribute derive_key
    #   <p>Speciﬁes whether an Amazon Web Services Payment Cryptography key can be used to derive new keys.</p>
    #   @return [Boolean]
    # @!attribute no_restrictions
    #   <p>Speciﬁes whether an Amazon Web Services Payment Cryptography key has no special restrictions other than the restrictions implied by <code>KeyUsage</code>.</p>
    #   @return [Boolean]
    class KeyModesOfUse < Struct.new(
      :encrypt,
      :decrypt,
      :wrap,
      :unwrap,
      :generate,
      :sign,
      :verify,
      :derive_key,
      :no_restrictions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:encrypt] = false unless options.key?(:encrypt)
        options[:decrypt] = false unless options.key?(:decrypt)
        options[:wrap] = false unless options.key?(:wrap)
        options[:unwrap] = false unless options.key?(:unwrap)
        options[:generate] = false unless options.key?(:generate)
        options[:sign] = false unless options.key?(:sign)
        options[:verify] = false unless options.key?(:verify)
        options[:derive_key] = false unless options.key?(:derive_key)
        options[:no_restrictions] = false unless options.key?(:no_restrictions)
        super
      end
    end

    # <p>Metadata about an Amazon Web Services Payment Cryptography key.</p>
    # @!attribute key_arn
    #   <p>The Amazon Resource Name (ARN) of the key.</p>
    #   @return [String]
    # @!attribute key_state
    #   <p>The state of an Amazon Web Services Payment Cryptography that is being created or deleted.</p>
    #   @return [String]
    # @!attribute key_attributes
    #   <p>The role of the key, the algorithm it supports, and the cryptographic operations allowed with the key. This data is immutable after the key is created.</p>
    #   @return [Types::KeyAttributes]
    # @!attribute key_check_value
    #   <p>The key check value (KCV) is used to check if all parties holding a given key have the same key or to detect that a key has changed.</p>
    #   @return [String]
    # @!attribute exportable
    #   <p>Specifies whether the key is exportable. This data is immutable after the key is created.</p>
    #   @return [Boolean]
    # @!attribute enabled
    #   <p>Specifies whether the key is enabled. </p>
    #   @return [Boolean]
    # @!attribute multi_region_key_type
    #   <p>Indicates whether this key is a multi-region key and its role in the multi-region key hierarchy.</p> <p>Multi-region keys allow the same key material to be used across multiple Amazon Web Services Regions. This field specifies whether the key is a primary key (which can be replicated to other regions) or a replica key (which is a copy of a primary key in another region).</p>
    #   @return [String]
    # @!attribute primary_region
    #   <p>An Amazon Web Services Region identifier in the standard format (e.g., <code>us-east-1</code>, <code>eu-west-1</code>).</p> <p>Used to specify regions for key replication operations. The region must be a valid Amazon Web Services Region where Amazon Web Services Payment Cryptography is available.</p>
    #   @return [String]
    class KeySummary < Struct.new(
      :key_arn,
      :key_state,
      :key_attributes,
      :key_check_value,
      :exportable,
      :enabled,
      :multi_region_key_type,
      :primary_region,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_arn
    #   <p>The <code>keyARN</code> for which you want to list all aliases.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of <code>NextToken</code> from the truncated response you just received.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Use this parameter to specify the maximum number of items to return. When this value is present, Amazon Web Services Payment Cryptography does not return more than the specified number of items, but it might return fewer.</p> <p>This value is optional. If you include a value, it must be between 1 and 100, inclusive. If you do not include a value, it defaults to 50.</p>
    #   @return [Integer]
    class ListAliasesInput < Struct.new(
      :key_arn,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute aliases
    #   <p>The list of aliases. Each alias describes the <code>KeyArn</code> contained within.</p>
    #   @return [Array<Types::Alias>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or an empty or null value if there are no more results.</p>
    #   @return [String]
    class ListAliasesOutput < Struct.new(
      :aliases,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_state
    #   <p>The key state of the keys you want to list.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of <code>NextToken</code> from the truncated response you just received.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Use this parameter to specify the maximum number of items to return. When this value is present, Amazon Web Services Payment Cryptography does not return more than the specified number of items, but it might return fewer.</p> <p>This value is optional. If you include a value, it must be between 1 and 100, inclusive. If you do not include a value, it defaults to 50.</p>
    #   @return [Integer]
    class ListKeysInput < Struct.new(
      :key_state,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute keys
    #   <p>The list of keys created within the caller's Amazon Web Services account and Amazon Web Services Region.</p>
    #   @return [Array<Types::KeySummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or an empty or null value if there are no more results.</p>
    #   @return [String]
    class ListKeysOutput < Struct.new(
      :keys,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The <code>KeyARN</code> of the key whose tags you are getting.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of <code>NextToken</code> from the truncated response you just received.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Use this parameter to specify the maximum number of items to return. When this value is present, Amazon Web Services Payment Cryptography does not return more than the specified number of items, but it might return fewer.</p> <p>This value is optional. If you include a value, it must be between 1 and 100, inclusive. If you do not include a value, it defaults to 50.</p>
    #   @return [Integer]
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The list of tags associated with a <code>ResourceArn</code>. Each tag will list the key-value pair contained within that tag.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or an empty or null value if there are no more results.</p>
    #   @return [String]
    class ListTagsForResourceOutput < Struct.new(
      :tags,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input parameters for removing replication regions from a specific key.</p>
    # @!attribute key_identifier
    #   <p>The key identifier (ARN or alias) of the key from which to remove replication regions.</p> <p>This key must exist and have replication enabled in the specified regions.</p>
    #   @return [String]
    # @!attribute replication_regions
    #   <p>The list of Amazon Web Services Regions to remove from the key's replication configuration.</p> <p>The key will no longer be available for cryptographic operations in these regions after removal. Ensure no active operations depend on the key in these regions before removal.</p>
    #   @return [Array<String>]
    class RemoveKeyReplicationRegionsInput < Struct.new(
      :key_identifier,
      :replication_regions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output from removing replication regions from a key.</p>
    # @!attribute key
    #   <p>The updated key metadata after removing the replication regions.</p> <p>This reflects the current state of the key and its updated replication configuration.</p>
    #   @return [Types::Key]
    class RemoveKeyReplicationRegionsOutput < Struct.new(
      :key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the replication status information for a key in a replication region.</p> <p>This structure contains details about the current state of key replication, including any status messages and operational information about the replication process.</p>
    # @!attribute status
    #   <p>The current status of key replication in this region.</p> <p>This field indicates whether the key replication is in progress, completed successfully, or has encountered an error. Possible values include states such as SYNCRHONIZED, IN_PROGRESS, DELETE_IN_PROGRESS, or FAILED. This provides visibility into the replication process for monitoring and troubleshooting purposes.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>A message that provides additional information about the current replication status of the key.</p> <p>This field contains details about any issues or progress updates related to key replication operations. It may include information about replication failures, synchronization status, or other operational details.</p>
    #   @return [String]
    class ReplicationStatusType < Struct.new(
      :status,
      :status_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to resource not found.</p> <p>The specified key, alias, or other resource does not exist in your account or region. Verify that the resource identifier is correct and that the resource exists in the expected region.</p>
    # @!attribute resource_id
    #   <p>The identifier of the resource that was not found.</p> <p>This field contains the specific resource identifier (such as a key ARN or alias name) that could not be located.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :resource_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_identifier
    #   <p>The <code>KeyARN</code> of the key to be restored within Amazon Web Services Payment Cryptography.</p>
    #   @return [String]
    class RestoreKeyInput < Struct.new(
      :key_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key
    #   <p>The key material of the restored key. The <code>KeyState</code> will change to <code>CREATE_COMPLETE</code> and value for <code>DeletePendingTimestamp</code> gets removed. </p>
    #   @return [Types::Key]
    class RestoreKeyOutput < Struct.new(
      :key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameter information for root public key certificate import.</p>
    # @!attribute key_attributes
    #   <p>The role of the key, the algorithm it supports, and the cryptographic operations allowed with the key. This data is immutable after the root public key is imported.</p>
    #   @return [Types::KeyAttributes]
    # @!attribute public_key_certificate
    #   <p>Parameter information for root public key certificate import.</p>
    #   @return [String]
    class RootCertificatePublicKey < Struct.new(
      :key_attributes,
      :public_key_certificate,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This request would cause a service quota to be exceeded.</p> <p>You have reached the maximum number of keys, aliases, or other resources allowed in your account. Review your current usage and consider deleting unused resources or requesting a quota increase.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The service cannot complete the request.</p> <p>The Amazon Web Services Payment Cryptography service is temporarily unavailable. This is typically a temporary condition - retry your request after a brief delay.</p>
    # @!attribute message
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_identifier
    #   <p>The <code>KeyArn</code> of the key.</p>
    #   @return [String]
    class StartKeyUsageInput < Struct.new(
      :key_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key
    #   <p>The <code>KeyARN</code> of the Amazon Web Services Payment Cryptography key activated for use.</p>
    #   @return [Types::Key]
    class StartKeyUsageOutput < Struct.new(
      :key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_identifier
    #   <p>The <code>KeyArn</code> of the key.</p>
    #   @return [String]
    class StopKeyUsageInput < Struct.new(
      :key_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key
    #   <p>The <code>KeyARN</code> of the key.</p>
    #   @return [Types::Key]
    class StopKeyUsageOutput < Struct.new(
      :key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains information about a tag.</p>
    # @!attribute key
    #   <p>The key of the tag.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the tag.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The <code>KeyARN</code> of the key whose tags are being updated.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>One or more tags. Each tag consists of a tag key and a tag value. The tag value can be an empty (null) string. You can't have more than one tag on an Amazon Web Services Payment Cryptography key with the same tag key. If you specify an existing tag key with a different tag value, Amazon Web Services Payment Cryptography replaces the current tag value with the new one.</p> <important> <p>Don't include personal, confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p> </important> <p>To use this parameter, you must have <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_TagResource.html">TagResource</a> permission in an IAM policy.</p> <important> <p>Don't include personal, confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p> </important>
    #   @return [Array<Types::Tag>]
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p> <p>You have exceeded the rate limits for Amazon Web Services Payment Cryptography API calls. Implement exponential backoff and retry logic in your application to handle throttling gracefully.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameter information for trusted public key certificate import.</p>
    # @!attribute key_attributes
    #   <p>The role of the key, the algorithm it supports, and the cryptographic operations allowed with the key. This data is immutable after a trusted public key is imported.</p>
    #   @return [Types::KeyAttributes]
    # @!attribute public_key_certificate
    #   <p>Parameter information for trusted public key certificate import.</p>
    #   @return [String]
    # @!attribute certificate_authority_public_key_identifier
    #   <p>The <code>KeyARN</code> of the root public key certificate or certificate chain that signs the trusted public key certificate import.</p>
    #   @return [String]
    class TrustedCertificatePublicKey < Struct.new(
      :key_attributes,
      :public_key_certificate,
      :certificate_authority_public_key_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The <code>KeyARN</code> of the key whose tags are being removed.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>One or more tag keys. Don't include the tag values.</p> <p>If the Amazon Web Services Payment Cryptography key doesn't have the specified tag key, Amazon Web Services Payment Cryptography doesn't throw an exception or return a response. To confirm that the operation succeeded, use the <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ListTagsForResource.html">ListTagsForResource</a> operation.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute alias_name
    #   <p>The alias whose associated key is changing.</p>
    #   @return [String]
    # @!attribute key_arn
    #   <p>The <code>KeyARN</code> for the key that you are updating or removing from the alias.</p>
    #   @return [String]
    class UpdateAliasInput < Struct.new(
      :alias_name,
      :key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute alias
    #   <p>The alias name.</p>
    #   @return [Types::Alias]
    class UpdateAliasOutput < Struct.new(
      :alias,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to an invalid request error.</p> <p>One or more parameters in your request are invalid. Check the parameter values, formats, and constraints specified in the API documentation.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameter information for generating a WrappedKeyBlock for key exchange.</p>
    # @!attribute wrapping_key_arn
    #   <p>The <code>KeyARN</code> of the wrapped key.</p>
    #   @return [String]
    # @!attribute wrapped_key_material_format
    #   <p>The key block format of a wrapped key.</p>
    #   @return [String]
    # @!attribute key_material
    #   <p>Parameter information for generating a wrapped key using TR-31 or TR-34 skey exchange method.</p>
    #   @return [String]
    # @!attribute key_check_value
    #   <p>The key check value (KCV) is used to check if all parties holding a given key have the same key or to detect that a key has changed.</p>
    #   @return [String]
    # @!attribute key_check_value_algorithm
    #   <p>The algorithm that Amazon Web Services Payment Cryptography uses to calculate the key check value (KCV). It is used to validate the key integrity.</p> <p>For TDES keys, the KCV is computed by encrypting 8 bytes, each with value of zero, with the key to be checked and retaining the 3 highest order bytes of the encrypted result. For AES keys, the KCV is computed using a CMAC algorithm where the input data is 16 bytes of zero and retaining the 3 highest order bytes of the encrypted result.</p>
    #   @return [String]
    class WrappedKey < Struct.new(
      :wrapping_key_arn,
      :wrapped_key_material_format,
      :key_material,
      :key_check_value,
      :key_check_value_algorithm,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
