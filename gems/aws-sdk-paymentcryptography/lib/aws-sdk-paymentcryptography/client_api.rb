# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::PaymentCryptography
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Alias = Shapes::StructureShape.new(name: 'Alias')
    AliasName = Shapes::StringShape.new(name: 'AliasName')
    Aliases = Shapes::ListShape.new(name: 'Aliases')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CertificateType = Shapes::StringShape.new(name: 'CertificateType')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateAliasInput = Shapes::StructureShape.new(name: 'CreateAliasInput')
    CreateAliasOutput = Shapes::StructureShape.new(name: 'CreateAliasOutput')
    CreateKeyInput = Shapes::StructureShape.new(name: 'CreateKeyInput')
    CreateKeyOutput = Shapes::StructureShape.new(name: 'CreateKeyOutput')
    DeleteAliasInput = Shapes::StructureShape.new(name: 'DeleteAliasInput')
    DeleteAliasOutput = Shapes::StructureShape.new(name: 'DeleteAliasOutput')
    DeleteKeyInput = Shapes::StructureShape.new(name: 'DeleteKeyInput')
    DeleteKeyInputDeleteKeyInDaysInteger = Shapes::IntegerShape.new(name: 'DeleteKeyInputDeleteKeyInDaysInteger')
    DeleteKeyOutput = Shapes::StructureShape.new(name: 'DeleteKeyOutput')
    ExportKeyInput = Shapes::StructureShape.new(name: 'ExportKeyInput')
    ExportKeyMaterial = Shapes::UnionShape.new(name: 'ExportKeyMaterial')
    ExportKeyOutput = Shapes::StructureShape.new(name: 'ExportKeyOutput')
    ExportTokenId = Shapes::StringShape.new(name: 'ExportTokenId')
    ExportTr31KeyBlock = Shapes::StructureShape.new(name: 'ExportTr31KeyBlock')
    ExportTr34KeyBlock = Shapes::StructureShape.new(name: 'ExportTr34KeyBlock')
    GetAliasInput = Shapes::StructureShape.new(name: 'GetAliasInput')
    GetAliasOutput = Shapes::StructureShape.new(name: 'GetAliasOutput')
    GetKeyInput = Shapes::StructureShape.new(name: 'GetKeyInput')
    GetKeyOutput = Shapes::StructureShape.new(name: 'GetKeyOutput')
    GetParametersForExportInput = Shapes::StructureShape.new(name: 'GetParametersForExportInput')
    GetParametersForExportOutput = Shapes::StructureShape.new(name: 'GetParametersForExportOutput')
    GetParametersForImportInput = Shapes::StructureShape.new(name: 'GetParametersForImportInput')
    GetParametersForImportOutput = Shapes::StructureShape.new(name: 'GetParametersForImportOutput')
    GetPublicKeyCertificateInput = Shapes::StructureShape.new(name: 'GetPublicKeyCertificateInput')
    GetPublicKeyCertificateOutput = Shapes::StructureShape.new(name: 'GetPublicKeyCertificateOutput')
    HexLength16 = Shapes::StringShape.new(name: 'HexLength16')
    ImportKeyInput = Shapes::StructureShape.new(name: 'ImportKeyInput')
    ImportKeyMaterial = Shapes::UnionShape.new(name: 'ImportKeyMaterial')
    ImportKeyOutput = Shapes::StructureShape.new(name: 'ImportKeyOutput')
    ImportTokenId = Shapes::StringShape.new(name: 'ImportTokenId')
    ImportTr31KeyBlock = Shapes::StructureShape.new(name: 'ImportTr31KeyBlock')
    ImportTr34KeyBlock = Shapes::StructureShape.new(name: 'ImportTr34KeyBlock')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    Key = Shapes::StructureShape.new(name: 'Key')
    KeyAlgorithm = Shapes::StringShape.new(name: 'KeyAlgorithm')
    KeyArn = Shapes::StringShape.new(name: 'KeyArn')
    KeyArnOrKeyAliasType = Shapes::StringShape.new(name: 'KeyArnOrKeyAliasType')
    KeyAttributes = Shapes::StructureShape.new(name: 'KeyAttributes')
    KeyCheckValue = Shapes::StringShape.new(name: 'KeyCheckValue')
    KeyCheckValueAlgorithm = Shapes::StringShape.new(name: 'KeyCheckValueAlgorithm')
    KeyClass = Shapes::StringShape.new(name: 'KeyClass')
    KeyMaterial = Shapes::StringShape.new(name: 'KeyMaterial')
    KeyMaterialType = Shapes::StringShape.new(name: 'KeyMaterialType')
    KeyModesOfUse = Shapes::StructureShape.new(name: 'KeyModesOfUse')
    KeyOrigin = Shapes::StringShape.new(name: 'KeyOrigin')
    KeyState = Shapes::StringShape.new(name: 'KeyState')
    KeySummary = Shapes::StructureShape.new(name: 'KeySummary')
    KeySummaryList = Shapes::ListShape.new(name: 'KeySummaryList')
    KeyUsage = Shapes::StringShape.new(name: 'KeyUsage')
    ListAliasesInput = Shapes::StructureShape.new(name: 'ListAliasesInput')
    ListAliasesOutput = Shapes::StructureShape.new(name: 'ListAliasesOutput')
    ListKeysInput = Shapes::StructureShape.new(name: 'ListKeysInput')
    ListKeysOutput = Shapes::StructureShape.new(name: 'ListKeysOutput')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    PrimitiveBoolean = Shapes::BooleanShape.new(name: 'PrimitiveBoolean')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RestoreKeyInput = Shapes::StructureShape.new(name: 'RestoreKeyInput')
    RestoreKeyOutput = Shapes::StructureShape.new(name: 'RestoreKeyOutput')
    RootCertificatePublicKey = Shapes::StructureShape.new(name: 'RootCertificatePublicKey')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    StartKeyUsageInput = Shapes::StructureShape.new(name: 'StartKeyUsageInput')
    StartKeyUsageOutput = Shapes::StructureShape.new(name: 'StartKeyUsageOutput')
    StopKeyUsageInput = Shapes::StructureShape.new(name: 'StopKeyUsageInput')
    StopKeyUsageOutput = Shapes::StructureShape.new(name: 'StopKeyUsageOutput')
    String = Shapes::StringShape.new(name: 'String')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagResourceOutput = Shapes::StructureShape.new(name: 'TagResourceOutput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::ListShape.new(name: 'Tags')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    Tr31WrappedKeyBlock = Shapes::StringShape.new(name: 'Tr31WrappedKeyBlock')
    Tr34KeyBlockFormat = Shapes::StringShape.new(name: 'Tr34KeyBlockFormat')
    Tr34WrappedKeyBlock = Shapes::StringShape.new(name: 'Tr34WrappedKeyBlock')
    TrustedCertificatePublicKey = Shapes::StructureShape.new(name: 'TrustedCertificatePublicKey')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UntagResourceOutput = Shapes::StructureShape.new(name: 'UntagResourceOutput')
    UpdateAliasInput = Shapes::StructureShape.new(name: 'UpdateAliasInput')
    UpdateAliasOutput = Shapes::StructureShape.new(name: 'UpdateAliasOutput')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    WrappedKey = Shapes::StructureShape.new(name: 'WrappedKey')
    WrappedKeyMaterialFormat = Shapes::StringShape.new(name: 'WrappedKeyMaterialFormat')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    Alias.add_member(:alias_name, Shapes::ShapeRef.new(shape: AliasName, required: true, location_name: "AliasName"))
    Alias.add_member(:key_arn, Shapes::ShapeRef.new(shape: KeyArn, location_name: "KeyArn"))
    Alias.struct_class = Types::Alias

    Aliases.member = Shapes::ShapeRef.new(shape: Alias)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    CreateAliasInput.add_member(:alias_name, Shapes::ShapeRef.new(shape: AliasName, required: true, location_name: "AliasName"))
    CreateAliasInput.add_member(:key_arn, Shapes::ShapeRef.new(shape: KeyArn, location_name: "KeyArn"))
    CreateAliasInput.struct_class = Types::CreateAliasInput

    CreateAliasOutput.add_member(:alias, Shapes::ShapeRef.new(shape: Alias, required: true, location_name: "Alias"))
    CreateAliasOutput.struct_class = Types::CreateAliasOutput

    CreateKeyInput.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    CreateKeyInput.add_member(:exportable, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "Exportable"))
    CreateKeyInput.add_member(:key_attributes, Shapes::ShapeRef.new(shape: KeyAttributes, required: true, location_name: "KeyAttributes"))
    CreateKeyInput.add_member(:key_check_value_algorithm, Shapes::ShapeRef.new(shape: KeyCheckValueAlgorithm, location_name: "KeyCheckValueAlgorithm"))
    CreateKeyInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateKeyInput.struct_class = Types::CreateKeyInput

    CreateKeyOutput.add_member(:key, Shapes::ShapeRef.new(shape: Key, required: true, location_name: "Key"))
    CreateKeyOutput.struct_class = Types::CreateKeyOutput

    DeleteAliasInput.add_member(:alias_name, Shapes::ShapeRef.new(shape: AliasName, required: true, location_name: "AliasName"))
    DeleteAliasInput.struct_class = Types::DeleteAliasInput

    DeleteAliasOutput.struct_class = Types::DeleteAliasOutput

    DeleteKeyInput.add_member(:delete_key_in_days, Shapes::ShapeRef.new(shape: DeleteKeyInputDeleteKeyInDaysInteger, location_name: "DeleteKeyInDays"))
    DeleteKeyInput.add_member(:key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "KeyIdentifier"))
    DeleteKeyInput.struct_class = Types::DeleteKeyInput

    DeleteKeyOutput.add_member(:key, Shapes::ShapeRef.new(shape: Key, required: true, location_name: "Key"))
    DeleteKeyOutput.struct_class = Types::DeleteKeyOutput

    ExportKeyInput.add_member(:export_key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "ExportKeyIdentifier"))
    ExportKeyInput.add_member(:key_material, Shapes::ShapeRef.new(shape: ExportKeyMaterial, required: true, location_name: "KeyMaterial"))
    ExportKeyInput.struct_class = Types::ExportKeyInput

    ExportKeyMaterial.add_member(:tr_31_key_block, Shapes::ShapeRef.new(shape: ExportTr31KeyBlock, location_name: "Tr31KeyBlock"))
    ExportKeyMaterial.add_member(:tr_34_key_block, Shapes::ShapeRef.new(shape: ExportTr34KeyBlock, location_name: "Tr34KeyBlock"))
    ExportKeyMaterial.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ExportKeyMaterial.add_member_subclass(:tr_31_key_block, Types::ExportKeyMaterial::Tr31KeyBlock)
    ExportKeyMaterial.add_member_subclass(:tr_34_key_block, Types::ExportKeyMaterial::Tr34KeyBlock)
    ExportKeyMaterial.add_member_subclass(:unknown, Types::ExportKeyMaterial::Unknown)
    ExportKeyMaterial.struct_class = Types::ExportKeyMaterial

    ExportKeyOutput.add_member(:wrapped_key, Shapes::ShapeRef.new(shape: WrappedKey, location_name: "WrappedKey"))
    ExportKeyOutput.struct_class = Types::ExportKeyOutput

    ExportTr31KeyBlock.add_member(:wrapping_key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "WrappingKeyIdentifier"))
    ExportTr31KeyBlock.struct_class = Types::ExportTr31KeyBlock

    ExportTr34KeyBlock.add_member(:certificate_authority_public_key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "CertificateAuthorityPublicKeyIdentifier"))
    ExportTr34KeyBlock.add_member(:export_token, Shapes::ShapeRef.new(shape: ExportTokenId, required: true, location_name: "ExportToken"))
    ExportTr34KeyBlock.add_member(:key_block_format, Shapes::ShapeRef.new(shape: Tr34KeyBlockFormat, required: true, location_name: "KeyBlockFormat"))
    ExportTr34KeyBlock.add_member(:random_nonce, Shapes::ShapeRef.new(shape: HexLength16, location_name: "RandomNonce"))
    ExportTr34KeyBlock.add_member(:wrapping_key_certificate, Shapes::ShapeRef.new(shape: CertificateType, required: true, location_name: "WrappingKeyCertificate"))
    ExportTr34KeyBlock.struct_class = Types::ExportTr34KeyBlock

    GetAliasInput.add_member(:alias_name, Shapes::ShapeRef.new(shape: AliasName, required: true, location_name: "AliasName"))
    GetAliasInput.struct_class = Types::GetAliasInput

    GetAliasOutput.add_member(:alias, Shapes::ShapeRef.new(shape: Alias, required: true, location_name: "Alias"))
    GetAliasOutput.struct_class = Types::GetAliasOutput

    GetKeyInput.add_member(:key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "KeyIdentifier"))
    GetKeyInput.struct_class = Types::GetKeyInput

    GetKeyOutput.add_member(:key, Shapes::ShapeRef.new(shape: Key, required: true, location_name: "Key"))
    GetKeyOutput.struct_class = Types::GetKeyOutput

    GetParametersForExportInput.add_member(:key_material_type, Shapes::ShapeRef.new(shape: KeyMaterialType, required: true, location_name: "KeyMaterialType"))
    GetParametersForExportInput.add_member(:signing_key_algorithm, Shapes::ShapeRef.new(shape: KeyAlgorithm, required: true, location_name: "SigningKeyAlgorithm"))
    GetParametersForExportInput.struct_class = Types::GetParametersForExportInput

    GetParametersForExportOutput.add_member(:export_token, Shapes::ShapeRef.new(shape: ExportTokenId, required: true, location_name: "ExportToken"))
    GetParametersForExportOutput.add_member(:parameters_valid_until_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ParametersValidUntilTimestamp"))
    GetParametersForExportOutput.add_member(:signing_key_algorithm, Shapes::ShapeRef.new(shape: KeyAlgorithm, required: true, location_name: "SigningKeyAlgorithm"))
    GetParametersForExportOutput.add_member(:signing_key_certificate, Shapes::ShapeRef.new(shape: CertificateType, required: true, location_name: "SigningKeyCertificate"))
    GetParametersForExportOutput.add_member(:signing_key_certificate_chain, Shapes::ShapeRef.new(shape: CertificateType, required: true, location_name: "SigningKeyCertificateChain"))
    GetParametersForExportOutput.struct_class = Types::GetParametersForExportOutput

    GetParametersForImportInput.add_member(:key_material_type, Shapes::ShapeRef.new(shape: KeyMaterialType, required: true, location_name: "KeyMaterialType"))
    GetParametersForImportInput.add_member(:wrapping_key_algorithm, Shapes::ShapeRef.new(shape: KeyAlgorithm, required: true, location_name: "WrappingKeyAlgorithm"))
    GetParametersForImportInput.struct_class = Types::GetParametersForImportInput

    GetParametersForImportOutput.add_member(:import_token, Shapes::ShapeRef.new(shape: ImportTokenId, required: true, location_name: "ImportToken"))
    GetParametersForImportOutput.add_member(:parameters_valid_until_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ParametersValidUntilTimestamp"))
    GetParametersForImportOutput.add_member(:wrapping_key_algorithm, Shapes::ShapeRef.new(shape: KeyAlgorithm, required: true, location_name: "WrappingKeyAlgorithm"))
    GetParametersForImportOutput.add_member(:wrapping_key_certificate, Shapes::ShapeRef.new(shape: CertificateType, required: true, location_name: "WrappingKeyCertificate"))
    GetParametersForImportOutput.add_member(:wrapping_key_certificate_chain, Shapes::ShapeRef.new(shape: CertificateType, required: true, location_name: "WrappingKeyCertificateChain"))
    GetParametersForImportOutput.struct_class = Types::GetParametersForImportOutput

    GetPublicKeyCertificateInput.add_member(:key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "KeyIdentifier"))
    GetPublicKeyCertificateInput.struct_class = Types::GetPublicKeyCertificateInput

    GetPublicKeyCertificateOutput.add_member(:key_certificate, Shapes::ShapeRef.new(shape: CertificateType, required: true, location_name: "KeyCertificate"))
    GetPublicKeyCertificateOutput.add_member(:key_certificate_chain, Shapes::ShapeRef.new(shape: CertificateType, required: true, location_name: "KeyCertificateChain"))
    GetPublicKeyCertificateOutput.struct_class = Types::GetPublicKeyCertificateOutput

    ImportKeyInput.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    ImportKeyInput.add_member(:key_check_value_algorithm, Shapes::ShapeRef.new(shape: KeyCheckValueAlgorithm, location_name: "KeyCheckValueAlgorithm"))
    ImportKeyInput.add_member(:key_material, Shapes::ShapeRef.new(shape: ImportKeyMaterial, required: true, location_name: "KeyMaterial"))
    ImportKeyInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    ImportKeyInput.struct_class = Types::ImportKeyInput

    ImportKeyMaterial.add_member(:root_certificate_public_key, Shapes::ShapeRef.new(shape: RootCertificatePublicKey, location_name: "RootCertificatePublicKey"))
    ImportKeyMaterial.add_member(:tr_31_key_block, Shapes::ShapeRef.new(shape: ImportTr31KeyBlock, location_name: "Tr31KeyBlock"))
    ImportKeyMaterial.add_member(:tr_34_key_block, Shapes::ShapeRef.new(shape: ImportTr34KeyBlock, location_name: "Tr34KeyBlock"))
    ImportKeyMaterial.add_member(:trusted_certificate_public_key, Shapes::ShapeRef.new(shape: TrustedCertificatePublicKey, location_name: "TrustedCertificatePublicKey"))
    ImportKeyMaterial.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ImportKeyMaterial.add_member_subclass(:root_certificate_public_key, Types::ImportKeyMaterial::RootCertificatePublicKey)
    ImportKeyMaterial.add_member_subclass(:tr_31_key_block, Types::ImportKeyMaterial::Tr31KeyBlock)
    ImportKeyMaterial.add_member_subclass(:tr_34_key_block, Types::ImportKeyMaterial::Tr34KeyBlock)
    ImportKeyMaterial.add_member_subclass(:trusted_certificate_public_key, Types::ImportKeyMaterial::TrustedCertificatePublicKey)
    ImportKeyMaterial.add_member_subclass(:unknown, Types::ImportKeyMaterial::Unknown)
    ImportKeyMaterial.struct_class = Types::ImportKeyMaterial

    ImportKeyOutput.add_member(:key, Shapes::ShapeRef.new(shape: Key, required: true, location_name: "Key"))
    ImportKeyOutput.struct_class = Types::ImportKeyOutput

    ImportTr31KeyBlock.add_member(:wrapped_key_block, Shapes::ShapeRef.new(shape: Tr31WrappedKeyBlock, required: true, location_name: "WrappedKeyBlock"))
    ImportTr31KeyBlock.add_member(:wrapping_key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "WrappingKeyIdentifier"))
    ImportTr31KeyBlock.struct_class = Types::ImportTr31KeyBlock

    ImportTr34KeyBlock.add_member(:certificate_authority_public_key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "CertificateAuthorityPublicKeyIdentifier"))
    ImportTr34KeyBlock.add_member(:import_token, Shapes::ShapeRef.new(shape: ImportTokenId, required: true, location_name: "ImportToken"))
    ImportTr34KeyBlock.add_member(:key_block_format, Shapes::ShapeRef.new(shape: Tr34KeyBlockFormat, required: true, location_name: "KeyBlockFormat"))
    ImportTr34KeyBlock.add_member(:random_nonce, Shapes::ShapeRef.new(shape: HexLength16, location_name: "RandomNonce"))
    ImportTr34KeyBlock.add_member(:signing_key_certificate, Shapes::ShapeRef.new(shape: CertificateType, required: true, location_name: "SigningKeyCertificate"))
    ImportTr34KeyBlock.add_member(:wrapped_key_block, Shapes::ShapeRef.new(shape: Tr34WrappedKeyBlock, required: true, location_name: "WrappedKeyBlock"))
    ImportTr34KeyBlock.struct_class = Types::ImportTr34KeyBlock

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    Key.add_member(:create_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreateTimestamp"))
    Key.add_member(:delete_pending_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DeletePendingTimestamp"))
    Key.add_member(:delete_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DeleteTimestamp"))
    Key.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "Enabled"))
    Key.add_member(:exportable, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "Exportable"))
    Key.add_member(:key_arn, Shapes::ShapeRef.new(shape: KeyArn, required: true, location_name: "KeyArn"))
    Key.add_member(:key_attributes, Shapes::ShapeRef.new(shape: KeyAttributes, required: true, location_name: "KeyAttributes"))
    Key.add_member(:key_check_value, Shapes::ShapeRef.new(shape: KeyCheckValue, required: true, location_name: "KeyCheckValue"))
    Key.add_member(:key_check_value_algorithm, Shapes::ShapeRef.new(shape: KeyCheckValueAlgorithm, required: true, location_name: "KeyCheckValueAlgorithm"))
    Key.add_member(:key_origin, Shapes::ShapeRef.new(shape: KeyOrigin, required: true, location_name: "KeyOrigin"))
    Key.add_member(:key_state, Shapes::ShapeRef.new(shape: KeyState, required: true, location_name: "KeyState"))
    Key.add_member(:usage_start_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UsageStartTimestamp"))
    Key.add_member(:usage_stop_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UsageStopTimestamp"))
    Key.struct_class = Types::Key

    KeyAttributes.add_member(:key_algorithm, Shapes::ShapeRef.new(shape: KeyAlgorithm, required: true, location_name: "KeyAlgorithm"))
    KeyAttributes.add_member(:key_class, Shapes::ShapeRef.new(shape: KeyClass, required: true, location_name: "KeyClass"))
    KeyAttributes.add_member(:key_modes_of_use, Shapes::ShapeRef.new(shape: KeyModesOfUse, required: true, location_name: "KeyModesOfUse"))
    KeyAttributes.add_member(:key_usage, Shapes::ShapeRef.new(shape: KeyUsage, required: true, location_name: "KeyUsage"))
    KeyAttributes.struct_class = Types::KeyAttributes

    KeyModesOfUse.add_member(:decrypt, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "Decrypt"))
    KeyModesOfUse.add_member(:derive_key, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "DeriveKey"))
    KeyModesOfUse.add_member(:encrypt, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "Encrypt"))
    KeyModesOfUse.add_member(:generate, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "Generate"))
    KeyModesOfUse.add_member(:no_restrictions, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "NoRestrictions"))
    KeyModesOfUse.add_member(:sign, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "Sign"))
    KeyModesOfUse.add_member(:unwrap, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "Unwrap"))
    KeyModesOfUse.add_member(:verify, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "Verify"))
    KeyModesOfUse.add_member(:wrap, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "Wrap"))
    KeyModesOfUse.struct_class = Types::KeyModesOfUse

    KeySummary.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "Enabled"))
    KeySummary.add_member(:exportable, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "Exportable"))
    KeySummary.add_member(:key_arn, Shapes::ShapeRef.new(shape: KeyArn, required: true, location_name: "KeyArn"))
    KeySummary.add_member(:key_attributes, Shapes::ShapeRef.new(shape: KeyAttributes, required: true, location_name: "KeyAttributes"))
    KeySummary.add_member(:key_check_value, Shapes::ShapeRef.new(shape: KeyCheckValue, required: true, location_name: "KeyCheckValue"))
    KeySummary.add_member(:key_state, Shapes::ShapeRef.new(shape: KeyState, required: true, location_name: "KeyState"))
    KeySummary.struct_class = Types::KeySummary

    KeySummaryList.member = Shapes::ShapeRef.new(shape: KeySummary)

    ListAliasesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListAliasesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAliasesInput.struct_class = Types::ListAliasesInput

    ListAliasesOutput.add_member(:aliases, Shapes::ShapeRef.new(shape: Aliases, required: true, location_name: "Aliases"))
    ListAliasesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAliasesOutput.struct_class = Types::ListAliasesOutput

    ListKeysInput.add_member(:key_state, Shapes::ShapeRef.new(shape: KeyState, location_name: "KeyState"))
    ListKeysInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListKeysInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListKeysInput.struct_class = Types::ListKeysInput

    ListKeysOutput.add_member(:keys, Shapes::ShapeRef.new(shape: KeySummaryList, required: true, location_name: "Keys"))
    ListKeysOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListKeysOutput.struct_class = Types::ListKeysOutput

    ListTagsForResourceInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListTagsForResourceInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsForResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "ResourceId"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RestoreKeyInput.add_member(:key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "KeyIdentifier"))
    RestoreKeyInput.struct_class = Types::RestoreKeyInput

    RestoreKeyOutput.add_member(:key, Shapes::ShapeRef.new(shape: Key, required: true, location_name: "Key"))
    RestoreKeyOutput.struct_class = Types::RestoreKeyOutput

    RootCertificatePublicKey.add_member(:key_attributes, Shapes::ShapeRef.new(shape: KeyAttributes, required: true, location_name: "KeyAttributes"))
    RootCertificatePublicKey.add_member(:public_key_certificate, Shapes::ShapeRef.new(shape: CertificateType, required: true, location_name: "PublicKeyCertificate"))
    RootCertificatePublicKey.struct_class = Types::RootCertificatePublicKey

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    StartKeyUsageInput.add_member(:key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "KeyIdentifier"))
    StartKeyUsageInput.struct_class = Types::StartKeyUsageInput

    StartKeyUsageOutput.add_member(:key, Shapes::ShapeRef.new(shape: Key, required: true, location_name: "Key"))
    StartKeyUsageOutput.struct_class = Types::StartKeyUsageOutput

    StopKeyUsageInput.add_member(:key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "KeyIdentifier"))
    StopKeyUsageInput.struct_class = Types::StopKeyUsageInput

    StopKeyUsageOutput.add_member(:key, Shapes::ShapeRef.new(shape: Key, required: true, location_name: "Key"))
    StopKeyUsageOutput.struct_class = Types::StopKeyUsageOutput

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    TagResourceOutput.struct_class = Types::TagResourceOutput

    Tags.member = Shapes::ShapeRef.new(shape: Tag)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TrustedCertificatePublicKey.add_member(:certificate_authority_public_key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "CertificateAuthorityPublicKeyIdentifier"))
    TrustedCertificatePublicKey.add_member(:key_attributes, Shapes::ShapeRef.new(shape: KeyAttributes, required: true, location_name: "KeyAttributes"))
    TrustedCertificatePublicKey.add_member(:public_key_certificate, Shapes::ShapeRef.new(shape: CertificateType, required: true, location_name: "PublicKeyCertificate"))
    TrustedCertificatePublicKey.struct_class = Types::TrustedCertificatePublicKey

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location_name: "TagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UntagResourceOutput.struct_class = Types::UntagResourceOutput

    UpdateAliasInput.add_member(:alias_name, Shapes::ShapeRef.new(shape: AliasName, required: true, location_name: "AliasName"))
    UpdateAliasInput.add_member(:key_arn, Shapes::ShapeRef.new(shape: KeyArn, location_name: "KeyArn"))
    UpdateAliasInput.struct_class = Types::UpdateAliasInput

    UpdateAliasOutput.add_member(:alias, Shapes::ShapeRef.new(shape: Alias, required: true, location_name: "Alias"))
    UpdateAliasOutput.struct_class = Types::UpdateAliasOutput

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException

    WrappedKey.add_member(:key_material, Shapes::ShapeRef.new(shape: KeyMaterial, required: true, location_name: "KeyMaterial"))
    WrappedKey.add_member(:wrapped_key_material_format, Shapes::ShapeRef.new(shape: WrappedKeyMaterialFormat, required: true, location_name: "WrappedKeyMaterialFormat"))
    WrappedKey.add_member(:wrapping_key_arn, Shapes::ShapeRef.new(shape: KeyArn, required: true, location_name: "WrappingKeyArn"))
    WrappedKey.struct_class = Types::WrappedKey


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2021-09-14"

      api.metadata = {
        "apiVersion" => "2021-09-14",
        "endpointPrefix" => "controlplane.payment-cryptography",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "serviceFullName" => "Payment Cryptography Control Plane",
        "serviceId" => "Payment Cryptography",
        "signatureVersion" => "v4",
        "signingName" => "payment-cryptography",
        "targetPrefix" => "PaymentCryptographyControlPlane",
        "uid" => "payment-cryptography-2021-09-14",
      }

      api.add_operation(:create_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAlias"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAliasInput)
        o.output = Shapes::ShapeRef.new(shape: CreateAliasOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateKey"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateKeyInput)
        o.output = Shapes::ShapeRef.new(shape: CreateKeyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAlias"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAliasInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteAliasOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteKey"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteKeyInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteKeyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:export_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExportKey"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ExportKeyInput)
        o.output = Shapes::ShapeRef.new(shape: ExportKeyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAlias"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAliasInput)
        o.output = Shapes::ShapeRef.new(shape: GetAliasOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetKey"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetKeyInput)
        o.output = Shapes::ShapeRef.new(shape: GetKeyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_parameters_for_export, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetParametersForExport"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetParametersForExportInput)
        o.output = Shapes::ShapeRef.new(shape: GetParametersForExportOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_parameters_for_import, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetParametersForImport"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetParametersForImportInput)
        o.output = Shapes::ShapeRef.new(shape: GetParametersForImportOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_public_key_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPublicKeyCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetPublicKeyCertificateInput)
        o.output = Shapes::ShapeRef.new(shape: GetPublicKeyCertificateOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:import_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ImportKey"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ImportKeyInput)
        o.output = Shapes::ShapeRef.new(shape: ImportKeyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_aliases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAliases"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAliasesInput)
        o.output = Shapes::ShapeRef.new(shape: ListAliasesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_keys, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListKeys"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListKeysInput)
        o.output = Shapes::ShapeRef.new(shape: ListKeysOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:restore_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RestoreKey"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RestoreKeyInput)
        o.output = Shapes::ShapeRef.new(shape: RestoreKeyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_key_usage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartKeyUsage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartKeyUsageInput)
        o.output = Shapes::ShapeRef.new(shape: StartKeyUsageOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:stop_key_usage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopKeyUsage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopKeyUsageInput)
        o.output = Shapes::ShapeRef.new(shape: StopKeyUsageOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: TagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAlias"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAliasInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateAliasOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
