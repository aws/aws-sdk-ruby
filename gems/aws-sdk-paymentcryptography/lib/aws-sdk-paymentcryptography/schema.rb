# frozen_string_literal: true

# This is generated code!

module Aws::PaymentCryptography
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AddKeyReplicationRegionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#AddKeyReplicationRegionsInput', name: 'AddKeyReplicationRegionsInput')
    AddKeyReplicationRegionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#AddKeyReplicationRegionsOutput', name: 'AddKeyReplicationRegionsOutput')
    Alias = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#Alias', name: 'Alias')
    AliasName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#AliasName', name: 'AliasName', traits: {"smithy.api#length" => {"min" => 7, "max" => 256}, "smithy.api#pattern" => "^alias/[a-zA-Z0-9/_-]+$"})
    Aliases = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.paymentcryptography#Aliases', name: 'Aliases')
    CertificateSigningRequestType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#CertificateSigningRequestType', name: 'CertificateSigningRequestType', traits: {"smithy.api#length" => {"min" => 1, "max" => 32768}, "smithy.api#pattern" => "^[^\\[;\\]<>]+$", "smithy.api#sensitive" => {}})
    CertificateSubjectType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#CertificateSubjectType', name: 'CertificateSubjectType')
    CertificateType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#CertificateType', name: 'CertificateType', traits: {"smithy.api#length" => {"min" => 1, "max" => 32768}, "smithy.api#pattern" => "^[^\\[;\\]<>]+$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateAliasInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#CreateAliasInput', name: 'CreateAliasInput')
    CreateAliasOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#CreateAliasOutput', name: 'CreateAliasOutput')
    CreateKeyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#CreateKeyInput', name: 'CreateKeyInput')
    CreateKeyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#CreateKeyOutput', name: 'CreateKeyOutput')
    DeleteAliasInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#DeleteAliasInput', name: 'DeleteAliasInput')
    DeleteAliasOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#DeleteAliasOutput', name: 'DeleteAliasOutput')
    DeleteKeyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#DeleteKeyInput', name: 'DeleteKeyInput')
    DeleteKeyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#DeleteKeyOutput', name: 'DeleteKeyOutput')
    DeriveKeyUsage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#DeriveKeyUsage', name: 'DeriveKeyUsage', traits: {"smithy.api#enum" => [{"value" => "TR31_B0_BASE_DERIVATION_KEY", "name" => "TR31_B0_BASE_DERIVATION_KEY"}, {"value" => "TR31_C0_CARD_VERIFICATION_KEY", "name" => "TR31_C0_CARD_VERIFICATION_KEY"}, {"value" => "TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY", "name" => "TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY"}, {"value" => "TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS", "name" => "TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS"}, {"value" => "TR31_E1_EMV_MKEY_CONFIDENTIALITY", "name" => "TR31_E1_EMV_MKEY_CONFIDENTIALITY"}, {"value" => "TR31_E2_EMV_MKEY_INTEGRITY", "name" => "TR31_E2_EMV_MKEY_INTEGRITY"}, {"value" => "TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS", "name" => "TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS"}, {"value" => "TR31_E5_EMV_MKEY_CARD_PERSONALIZATION", "name" => "TR31_E5_EMV_MKEY_CARD_PERSONALIZATION"}, {"value" => "TR31_E6_EMV_MKEY_OTHER", "name" => "TR31_E6_EMV_MKEY_OTHER"}, {"value" => "TR31_K0_KEY_ENCRYPTION_KEY", "name" => "TR31_K0_KEY_ENCRYPTION_KEY"}, {"value" => "TR31_K1_KEY_BLOCK_PROTECTION_KEY", "name" => "TR31_K1_KEY_BLOCK_PROTECTION_KEY"}, {"value" => "TR31_M3_ISO_9797_3_MAC_KEY", "name" => "TR31_M3_ISO_9797_3_MAC_KEY"}, {"value" => "TR31_M1_ISO_9797_1_MAC_KEY", "name" => "TR31_M1_ISO_9797_1_MAC_KEY"}, {"value" => "TR31_M6_ISO_9797_5_CMAC_KEY", "name" => "TR31_M6_ISO_9797_5_CMAC_KEY"}, {"value" => "TR31_M7_HMAC_KEY", "name" => "TR31_M7_HMAC_KEY"}, {"value" => "TR31_P0_PIN_ENCRYPTION_KEY", "name" => "TR31_P0_PIN_ENCRYPTION_KEY"}, {"value" => "TR31_P1_PIN_GENERATION_KEY", "name" => "TR31_P1_PIN_GENERATION_KEY"}, {"value" => "TR31_V1_IBM3624_PIN_VERIFICATION_KEY", "name" => "TR31_V1_IBM3624_PIN_VERIFICATION_KEY"}, {"value" => "TR31_V2_VISA_PIN_VERIFICATION_KEY", "name" => "TR31_V2_VISA_PIN_VERIFICATION_KEY"}]})
    DiffieHellmanDerivationData = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.paymentcryptography#DiffieHellmanDerivationData', name: 'DiffieHellmanDerivationData')
    DisableDefaultKeyReplicationRegionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#DisableDefaultKeyReplicationRegionsInput', name: 'DisableDefaultKeyReplicationRegionsInput')
    DisableDefaultKeyReplicationRegionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#DisableDefaultKeyReplicationRegionsOutput', name: 'DisableDefaultKeyReplicationRegionsOutput')
    EnableDefaultKeyReplicationRegionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#EnableDefaultKeyReplicationRegionsInput', name: 'EnableDefaultKeyReplicationRegionsInput')
    EnableDefaultKeyReplicationRegionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#EnableDefaultKeyReplicationRegionsOutput', name: 'EnableDefaultKeyReplicationRegionsOutput')
    EvenHexLengthBetween16And32 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#EvenHexLengthBetween16And32', name: 'EvenHexLengthBetween16And32', traits: {"smithy.api#length" => {"min" => 16, "max" => 32}, "smithy.api#pattern" => "^(?:[0-9a-fA-F][0-9a-fA-F])+$"})
    ExportAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ExportAttributes', name: 'ExportAttributes')
    ExportDiffieHellmanTr31KeyBlock = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ExportDiffieHellmanTr31KeyBlock', name: 'ExportDiffieHellmanTr31KeyBlock')
    ExportDukptInitialKey = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ExportDukptInitialKey', name: 'ExportDukptInitialKey')
    ExportKeyCryptogram = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ExportKeyCryptogram', name: 'ExportKeyCryptogram')
    ExportKeyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ExportKeyInput', name: 'ExportKeyInput')
    ExportKeyMaterial = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.paymentcryptography#ExportKeyMaterial', name: 'ExportKeyMaterial')
    ExportKeyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ExportKeyOutput', name: 'ExportKeyOutput')
    ExportTokenId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#ExportTokenId', name: 'ExportTokenId', traits: {"smithy.api#pattern" => "^(export-token-[0-9a-zA-Z]{16,64})?$"})
    ExportTr31KeyBlock = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ExportTr31KeyBlock', name: 'ExportTr31KeyBlock')
    ExportTr34KeyBlock = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ExportTr34KeyBlock', name: 'ExportTr34KeyBlock')
    GetAliasInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#GetAliasInput', name: 'GetAliasInput')
    GetAliasOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#GetAliasOutput', name: 'GetAliasOutput')
    GetCertificateSigningRequestInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#GetCertificateSigningRequestInput', name: 'GetCertificateSigningRequestInput')
    GetCertificateSigningRequestOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#GetCertificateSigningRequestOutput', name: 'GetCertificateSigningRequestOutput')
    GetDefaultKeyReplicationRegionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#GetDefaultKeyReplicationRegionsInput', name: 'GetDefaultKeyReplicationRegionsInput')
    GetDefaultKeyReplicationRegionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#GetDefaultKeyReplicationRegionsOutput', name: 'GetDefaultKeyReplicationRegionsOutput')
    GetKeyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#GetKeyInput', name: 'GetKeyInput')
    GetKeyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#GetKeyOutput', name: 'GetKeyOutput')
    GetParametersForExportInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#GetParametersForExportInput', name: 'GetParametersForExportInput')
    GetParametersForExportOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#GetParametersForExportOutput', name: 'GetParametersForExportOutput')
    GetParametersForImportInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#GetParametersForImportInput', name: 'GetParametersForImportInput')
    GetParametersForImportOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#GetParametersForImportOutput', name: 'GetParametersForImportOutput')
    GetPublicKeyCertificateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#GetPublicKeyCertificateInput', name: 'GetPublicKeyCertificateInput')
    GetPublicKeyCertificateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#GetPublicKeyCertificateOutput', name: 'GetPublicKeyCertificateOutput')
    HexLength20Or24 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#HexLength20Or24', name: 'HexLength20Or24', traits: {"smithy.api#length" => {"min" => 20, "max" => 24}, "smithy.api#pattern" => "^[0-9A-F]{20}$|^[0-9A-F]{24}$"})
    ImportDiffieHellmanTr31KeyBlock = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ImportDiffieHellmanTr31KeyBlock', name: 'ImportDiffieHellmanTr31KeyBlock')
    ImportKeyCryptogram = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ImportKeyCryptogram', name: 'ImportKeyCryptogram')
    ImportKeyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ImportKeyInput', name: 'ImportKeyInput')
    ImportKeyMaterial = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.paymentcryptography#ImportKeyMaterial', name: 'ImportKeyMaterial')
    ImportKeyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ImportKeyOutput', name: 'ImportKeyOutput')
    ImportTokenId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#ImportTokenId', name: 'ImportTokenId', traits: {"smithy.api#pattern" => "^(import-token-[0-9a-zA-Z]{16,64})?$"})
    ImportTr31KeyBlock = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ImportTr31KeyBlock', name: 'ImportTr31KeyBlock')
    ImportTr34KeyBlock = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ImportTr34KeyBlock', name: 'ImportTr34KeyBlock')
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    Key = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#Key', name: 'Key', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.paymentcryptography#KeyResource", "service" => "com.amazonaws.paymentcryptography#PaymentCryptographyControlPlane", "ids" => {"KeyIdentifier" => "KeyArn"}}]})
    KeyAlgorithm = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#KeyAlgorithm', name: 'KeyAlgorithm', traits: {"smithy.api#enum" => [{"value" => "TDES_2KEY", "name" => "TDES_2KEY"}, {"value" => "TDES_3KEY", "name" => "TDES_3KEY"}, {"value" => "AES_128", "name" => "AES_128"}, {"value" => "AES_192", "name" => "AES_192"}, {"value" => "AES_256", "name" => "AES_256"}, {"value" => "HMAC_SHA256", "name" => "HMAC_SHA256"}, {"value" => "HMAC_SHA384", "name" => "HMAC_SHA384"}, {"value" => "HMAC_SHA512", "name" => "HMAC_SHA512"}, {"value" => "HMAC_SHA224", "name" => "HMAC_SHA224"}, {"value" => "RSA_2048", "name" => "RSA_2048"}, {"value" => "RSA_3072", "name" => "RSA_3072"}, {"value" => "RSA_4096", "name" => "RSA_4096"}, {"value" => "ECC_NIST_P256", "name" => "ECC_NIST_P256"}, {"value" => "ECC_NIST_P384", "name" => "ECC_NIST_P384"}, {"value" => "ECC_NIST_P521", "name" => "ECC_NIST_P521"}]})
    KeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#KeyArn', name: 'KeyArn', traits: {"smithy.api#length" => {"min" => 70, "max" => 150}, "smithy.api#pattern" => "^arn:aws:payment-cryptography:[a-z]{2}-[a-z]{1,16}-[0-9]+:[0-9]{12}:key/[0-9a-zA-Z]{16,64}$"})
    KeyArnOrKeyAliasType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#KeyArnOrKeyAliasType', name: 'KeyArnOrKeyAliasType', traits: {"smithy.api#length" => {"min" => 7, "max" => 322}, "smithy.api#pattern" => "^arn:aws:payment-cryptography:[a-z]{2}-[a-z]{1,16}-[0-9]+:[0-9]{12}:(key/[0-9a-zA-Z]{16,64}|alias/[a-zA-Z0-9/_-]+)$|^alias/[a-zA-Z0-9/_-]+$"})
    KeyAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#KeyAttributes', name: 'KeyAttributes')
    KeyBlockHeaders = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#KeyBlockHeaders', name: 'KeyBlockHeaders')
    KeyCheckValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#KeyCheckValue', name: 'KeyCheckValue', traits: {"smithy.api#length" => {"min" => 4, "max" => 16}, "smithy.api#pattern" => "^[0-9a-fA-F]+$"})
    KeyCheckValueAlgorithm = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#KeyCheckValueAlgorithm', name: 'KeyCheckValueAlgorithm', traits: {"smithy.api#enum" => [{"value" => "CMAC", "name" => "CMAC"}, {"value" => "ANSI_X9_24", "name" => "ANSI_X9_24"}, {"value" => "HMAC", "name" => "HMAC"}, {"value" => "SHA_1", "name" => "SHA_1"}]})
    KeyClass = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#KeyClass', name: 'KeyClass', traits: {"smithy.api#enum" => [{"value" => "SYMMETRIC_KEY", "name" => "SYMMETRIC_KEY"}, {"value" => "ASYMMETRIC_KEY_PAIR", "name" => "ASYMMETRIC_KEY_PAIR"}, {"value" => "PRIVATE_KEY", "name" => "PRIVATE_KEY"}, {"value" => "PUBLIC_KEY", "name" => "PUBLIC_KEY"}]})
    KeyDerivationFunction = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.paymentcryptography#KeyDerivationFunction', name: 'KeyDerivationFunction')
    KeyDerivationHashAlgorithm = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.paymentcryptography#KeyDerivationHashAlgorithm', name: 'KeyDerivationHashAlgorithm')
    KeyExportability = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#KeyExportability', name: 'KeyExportability', traits: {"smithy.api#enum" => [{"value" => "EXPORTABLE", "name" => "EXPORTABLE"}, {"value" => "NON_EXPORTABLE", "name" => "NON_EXPORTABLE"}, {"value" => "SENSITIVE", "name" => "SENSITIVE"}]})
    KeyMaterial = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#KeyMaterial', name: 'KeyMaterial', traits: {"smithy.api#length" => {"min" => 48, "max" => 16384}, "smithy.api#sensitive" => {}})
    KeyMaterialType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#KeyMaterialType', name: 'KeyMaterialType', traits: {"smithy.api#enum" => [{"value" => "TR34_KEY_BLOCK", "name" => "TR34_KEY_BLOCK"}, {"value" => "TR31_KEY_BLOCK", "name" => "TR31_KEY_BLOCK"}, {"value" => "ROOT_PUBLIC_KEY_CERTIFICATE", "name" => "ROOT_PUBLIC_KEY_CERTIFICATE"}, {"value" => "TRUSTED_PUBLIC_KEY_CERTIFICATE", "name" => "TRUSTED_PUBLIC_KEY_CERTIFICATE"}, {"value" => "KEY_CRYPTOGRAM", "name" => "KEY_CRYPTOGRAM"}]})
    KeyModesOfUse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#KeyModesOfUse', name: 'KeyModesOfUse')
    KeyOrigin = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#KeyOrigin', name: 'KeyOrigin', traits: {"smithy.api#enum" => [{"value" => "EXTERNAL", "name" => "EXTERNAL"}, {"value" => "AWS_PAYMENT_CRYPTOGRAPHY", "name" => "AWS_PAYMENT_CRYPTOGRAPHY"}]})
    KeyReplicationState = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#KeyReplicationState', name: 'KeyReplicationState', traits: {"smithy.api#enum" => [{"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "DELETE_IN_PROGRESS", "name" => "DELETE_IN_PROGRESS"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "SYNCHRONIZED", "name" => "SYNCHRONIZED"}]})
    KeyState = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#KeyState', name: 'KeyState', traits: {"smithy.api#enum" => [{"value" => "CREATE_IN_PROGRESS", "name" => "CREATE_IN_PROGRESS"}, {"value" => "CREATE_COMPLETE", "name" => "CREATE_COMPLETE"}, {"value" => "DELETE_PENDING", "name" => "DELETE_PENDING"}, {"value" => "DELETE_COMPLETE", "name" => "DELETE_COMPLETE"}]})
    KeySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#KeySummary', name: 'KeySummary')
    KeySummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.paymentcryptography#KeySummaryList', name: 'KeySummaryList')
    KeyUsage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#KeyUsage', name: 'KeyUsage', traits: {"smithy.api#enum" => [{"value" => "TR31_B0_BASE_DERIVATION_KEY", "name" => "TR31_B0_BASE_DERIVATION_KEY"}, {"value" => "TR31_C0_CARD_VERIFICATION_KEY", "name" => "TR31_C0_CARD_VERIFICATION_KEY"}, {"value" => "TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY", "name" => "TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY"}, {"value" => "TR31_D1_ASYMMETRIC_KEY_FOR_DATA_ENCRYPTION", "name" => "TR31_D1_ASYMMETRIC_KEY_FOR_DATA_ENCRYPTION"}, {"value" => "TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS", "name" => "TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS"}, {"value" => "TR31_E1_EMV_MKEY_CONFIDENTIALITY", "name" => "TR31_E1_EMV_MKEY_CONFIDENTIALITY"}, {"value" => "TR31_E2_EMV_MKEY_INTEGRITY", "name" => "TR31_E2_EMV_MKEY_INTEGRITY"}, {"value" => "TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS", "name" => "TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS"}, {"value" => "TR31_E5_EMV_MKEY_CARD_PERSONALIZATION", "name" => "TR31_E5_EMV_MKEY_CARD_PERSONALIZATION"}, {"value" => "TR31_E6_EMV_MKEY_OTHER", "name" => "TR31_E6_EMV_MKEY_OTHER"}, {"value" => "TR31_K0_KEY_ENCRYPTION_KEY", "name" => "TR31_K0_KEY_ENCRYPTION_KEY"}, {"value" => "TR31_K1_KEY_BLOCK_PROTECTION_KEY", "name" => "TR31_K1_KEY_BLOCK_PROTECTION_KEY"}, {"value" => "TR31_K3_ASYMMETRIC_KEY_FOR_KEY_AGREEMENT", "name" => "TR31_K3_ASYMMETRIC_KEY_FOR_KEY_AGREEMENT"}, {"value" => "TR31_M3_ISO_9797_3_MAC_KEY", "name" => "TR31_M3_ISO_9797_3_MAC_KEY"}, {"value" => "TR31_M1_ISO_9797_1_MAC_KEY", "name" => "TR31_M1_ISO_9797_1_MAC_KEY"}, {"value" => "TR31_M6_ISO_9797_5_CMAC_KEY", "name" => "TR31_M6_ISO_9797_5_CMAC_KEY"}, {"value" => "TR31_M7_HMAC_KEY", "name" => "TR31_M7_HMAC_KEY"}, {"value" => "TR31_P0_PIN_ENCRYPTION_KEY", "name" => "TR31_P0_PIN_ENCRYPTION_KEY"}, {"value" => "TR31_P1_PIN_GENERATION_KEY", "name" => "TR31_P1_PIN_GENERATION_KEY"}, {"value" => "TR31_S0_ASYMMETRIC_KEY_FOR_DIGITAL_SIGNATURE", "name" => "TR31_S0_ASYMMETRIC_KEY_FOR_DIGITAL_SIGNATURE"}, {"value" => "TR31_V1_IBM3624_PIN_VERIFICATION_KEY", "name" => "TR31_V1_IBM3624_PIN_VERIFICATION_KEY"}, {"value" => "TR31_V2_VISA_PIN_VERIFICATION_KEY", "name" => "TR31_V2_VISA_PIN_VERIFICATION_KEY"}, {"value" => "TR31_K2_TR34_ASYMMETRIC_KEY", "name" => "TR31_K2_TR34_ASYMMETRIC_KEY"}]})
    KeyVersion = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#KeyVersion', name: 'KeyVersion', traits: {"smithy.api#length" => {"min" => 2, "max" => 2}, "smithy.api#pattern" => "^[0-9A-Z]{2}+$"})
    ListAliasesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ListAliasesInput', name: 'ListAliasesInput')
    ListAliasesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ListAliasesOutput', name: 'ListAliasesOutput')
    ListKeysInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ListKeysInput', name: 'ListKeysInput')
    ListKeysOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ListKeysOutput', name: 'ListKeysOutput')
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.paymentcryptography#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MultiRegionKeyType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#MultiRegionKeyType', name: 'MultiRegionKeyType', traits: {"smithy.api#enum" => [{"value" => "PRIMARY", "name" => "PRIMARY"}, {"value" => "REPLICA", "name" => "REPLICA"}]})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 8192}})
    OptionalBlockId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#OptionalBlockId', name: 'OptionalBlockId', traits: {"smithy.api#length" => {"min" => 2, "max" => 2}, "smithy.api#pattern" => "^[0-9A-Z]{2}+$", "smithy.api#sensitive" => {}})
    OptionalBlockValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#OptionalBlockValue', name: 'OptionalBlockValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 108}, "smithy.api#pattern" => "^[0-9a-zA-Z]+$", "smithy.api#sensitive" => {}})
    OptionalBlocks = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.paymentcryptography#OptionalBlocks', name: 'OptionalBlocks')
    Region = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#Region', name: 'Region', traits: {"smithy.api#pattern" => "^[a-z]{2}-[a-z]{1,16}-[0-9]+$"})
    Regions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.paymentcryptography#Regions', name: 'Regions')
    RemoveKeyReplicationRegionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#RemoveKeyReplicationRegionsInput', name: 'RemoveKeyReplicationRegionsInput')
    RemoveKeyReplicationRegionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#RemoveKeyReplicationRegionsOutput', name: 'RemoveKeyReplicationRegionsOutput')
    ReplicationStatus = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.paymentcryptography#ReplicationStatus', name: 'ReplicationStatus')
    ReplicationStatusType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ReplicationStatusType', name: 'ReplicationStatusType')
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#ResourceArn', name: 'ResourceArn', traits: {"smithy.api#length" => {"min" => 70, "max" => 150}, "smithy.api#pattern" => "^arn:aws:payment-cryptography:[a-z]{2}-[a-z]{1,16}-[0-9]+:[0-9]{12}:key/[0-9a-zA-Z]{16,64}$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RestoreKeyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#RestoreKeyInput', name: 'RestoreKeyInput')
    RestoreKeyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#RestoreKeyOutput', name: 'RestoreKeyOutput')
    RootCertificatePublicKey = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#RootCertificatePublicKey', name: 'RootCertificatePublicKey')
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ServiceUnavailableException', name: 'ServiceUnavailableException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    SharedInformation = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#SharedInformation', name: 'SharedInformation', traits: {"smithy.api#length" => {"min" => 2, "max" => 2048}, "smithy.api#pattern" => "^(?:[0-9a-fA-F][0-9a-fA-F])+$"})
    SigningAlgorithmType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#SigningAlgorithmType', name: 'SigningAlgorithmType', traits: {"smithy.api#enum" => [{"value" => "SHA224", "name" => "SHA224"}, {"value" => "SHA256", "name" => "SHA256"}, {"value" => "SHA384", "name" => "SHA384"}, {"value" => "SHA512", "name" => "SHA512"}]})
    StartKeyUsageInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#StartKeyUsageInput', name: 'StartKeyUsageInput')
    StartKeyUsageOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#StartKeyUsageOutput', name: 'StartKeyUsageOutput')
    StopKeyUsageInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#StopKeyUsageInput', name: 'StopKeyUsageInput')
    StopKeyUsageOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#StopKeyUsageOutput', name: 'StopKeyUsageOutput')
    SymmetricKeyAlgorithm = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.paymentcryptography#SymmetricKeyAlgorithm', name: 'SymmetricKeyAlgorithm')
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#Tag', name: 'Tag')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.paymentcryptography#TagKeys', name: 'TagKeys', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#TagResourceOutput', name: 'TagResourceOutput')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Tags = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.paymentcryptography#Tags', name: 'Tags', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.paymentcryptography#Timestamp', name: 'Timestamp')
    Tr31WrappedKeyBlock = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#Tr31WrappedKeyBlock', name: 'Tr31WrappedKeyBlock', traits: {"smithy.api#length" => {"min" => 56, "max" => 9984}, "smithy.api#pattern" => "^[0-9a-zA-Z]+$", "smithy.api#sensitive" => {}})
    Tr34KeyBlockFormat = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#Tr34KeyBlockFormat', name: 'Tr34KeyBlockFormat', traits: {"smithy.api#enum" => [{"value" => "X9_TR34_2012", "name" => "X9_TR34_2012"}]})
    Tr34WrappedKeyBlock = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#Tr34WrappedKeyBlock', name: 'Tr34WrappedKeyBlock', traits: {"smithy.api#length" => {"min" => 2, "max" => 4096}, "smithy.api#pattern" => "^[0-9A-F]+$", "smithy.api#sensitive" => {}})
    TrustedCertificatePublicKey = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#TrustedCertificatePublicKey', name: 'TrustedCertificatePublicKey')
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateAliasInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#UpdateAliasInput', name: 'UpdateAliasInput')
    UpdateAliasOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#UpdateAliasOutput', name: 'UpdateAliasOutput')
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    WrappedKey = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#WrappedKey', name: 'WrappedKey')
    WrappedKeyCryptogram = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#WrappedKeyCryptogram', name: 'WrappedKeyCryptogram', traits: {"smithy.api#length" => {"min" => 16, "max" => 4096}, "smithy.api#pattern" => "^[0-9A-F]+$", "smithy.api#sensitive" => {}})
    WrappedKeyMaterialFormat = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#WrappedKeyMaterialFormat', name: 'WrappedKeyMaterialFormat', traits: {"smithy.api#enum" => [{"value" => "KEY_CRYPTOGRAM", "name" => "KEY_CRYPTOGRAM"}, {"value" => "TR31_KEY_BLOCK", "name" => "TR31_KEY_BLOCK"}, {"value" => "TR34_KEY_BLOCK", "name" => "TR34_KEY_BLOCK"}]})
    WrappingKeySpec = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#WrappingKeySpec', name: 'WrappingKeySpec', traits: {"smithy.api#enum" => [{"value" => "RSA_OAEP_SHA_256", "name" => "RSA_OAEP_SHA_256"}, {"value" => "RSA_OAEP_SHA_512", "name" => "RSA_OAEP_SHA_512"}]})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    AccessDeniedException.type = Types::AccessDeniedException
    AddKeyReplicationRegionsInput.add_member(:key_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, location_name: 'KeyIdentifier', traits: {"smithy.api#required" => {}}))
    AddKeyReplicationRegionsInput.add_member(:replication_regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Regions, location_name: 'ReplicationRegions', traits: {"smithy.api#required" => {}}))
    AddKeyReplicationRegionsInput.type = Types::AddKeyReplicationRegionsInput
    AddKeyReplicationRegionsOutput.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: 'Key', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    AddKeyReplicationRegionsOutput.type = Types::AddKeyReplicationRegionsOutput
    Alias.add_member(:alias_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AliasName, location_name: 'AliasName', traits: {"smithy.api#required" => {}}))
    Alias.add_member(:key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArn, location_name: 'KeyArn'))
    Alias.type = Types::Alias
    Aliases.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Alias)
    CertificateSubjectType.add_member(:common_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'CommonName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z]+$", "smithy.api#required" => {}}))
    CertificateSubjectType.add_member(:organization_unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'OrganizationUnit', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z]+$"}))
    CertificateSubjectType.add_member(:organization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Organization', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z]+$"}))
    CertificateSubjectType.add_member(:city, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'City', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Za-z]+$"}))
    CertificateSubjectType.add_member(:country, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Country', traits: {"smithy.api#length" => {"min" => 2, "max" => 2}, "smithy.api#pattern" => "^[A-Za-z]+$"}))
    CertificateSubjectType.add_member(:state_or_province, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'StateOrProvince', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Za-z]+$"}))
    CertificateSubjectType.add_member(:email_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'EmailAddress', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9.!\#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\\.[a-zA-Z0-9-]+)*$"}))
    CertificateSubjectType.type = Types::CertificateSubjectType
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    ConflictException.type = Types::ConflictException
    CreateAliasInput.add_member(:alias_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AliasName, location_name: 'AliasName', traits: {"aws.cloudformation#cfnMutability" => "create", "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    CreateAliasInput.add_member(:key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArn, location_name: 'KeyArn', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#suppress" => ["UnstableTrait"]}))
    CreateAliasInput.type = Types::CreateAliasInput
    CreateAliasOutput.add_member(:alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Alias, location_name: 'Alias', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    CreateAliasOutput.type = Types::CreateAliasOutput
    CreateKeyInput.add_member(:key_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyAttributes, location_name: 'KeyAttributes', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    CreateKeyInput.add_member(:key_check_value_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyCheckValueAlgorithm, location_name: 'KeyCheckValueAlgorithm', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#suppress" => ["UnstableTrait"]}))
    CreateKeyInput.add_member(:exportable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'Exportable', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    CreateKeyInput.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'Enabled', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#suppress" => ["UnstableTrait"]}))
    CreateKeyInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#suppress" => ["UnstableTrait"]}))
    CreateKeyInput.add_member(:derive_key_usage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeriveKeyUsage, location_name: 'DeriveKeyUsage', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#suppress" => ["UnstableTrait"]}))
    CreateKeyInput.add_member(:replication_regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Regions, location_name: 'ReplicationRegions', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    CreateKeyInput.type = Types::CreateKeyInput
    CreateKeyOutput.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: 'Key', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    CreateKeyOutput.type = Types::CreateKeyOutput
    DeleteAliasInput.add_member(:alias_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AliasName, location_name: 'AliasName', traits: {"smithy.api#required" => {}}))
    DeleteAliasInput.type = Types::DeleteAliasInput
    DeleteAliasOutput.type = Types::DeleteAliasOutput
    DeleteKeyInput.add_member(:key_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, location_name: 'KeyIdentifier', traits: {"smithy.api#required" => {}}))
    DeleteKeyInput.add_member(:delete_key_in_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'DeleteKeyInDays', traits: {"smithy.api#range" => {"min" => 3, "max" => 180}}))
    DeleteKeyInput.type = Types::DeleteKeyInput
    DeleteKeyOutput.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: 'Key', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    DeleteKeyOutput.type = Types::DeleteKeyOutput
    DiffieHellmanDerivationData.add_member(:shared_information, Types::DiffieHellmanDerivationData::SharedInformation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SharedInformation, location_name: 'SharedInformation'))
    DiffieHellmanDerivationData.add_member(:unknown, Types::DiffieHellmanDerivationData::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    DiffieHellmanDerivationData.type = Types::DiffieHellmanDerivationData
    DisableDefaultKeyReplicationRegionsInput.add_member(:replication_regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Regions, location_name: 'ReplicationRegions', traits: {"smithy.api#required" => {}}))
    DisableDefaultKeyReplicationRegionsInput.type = Types::DisableDefaultKeyReplicationRegionsInput
    DisableDefaultKeyReplicationRegionsOutput.add_member(:enabled_replication_regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Regions, location_name: 'EnabledReplicationRegions', traits: {"smithy.api#required" => {}}))
    DisableDefaultKeyReplicationRegionsOutput.type = Types::DisableDefaultKeyReplicationRegionsOutput
    EnableDefaultKeyReplicationRegionsInput.add_member(:replication_regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Regions, location_name: 'ReplicationRegions', traits: {"smithy.api#required" => {}}))
    EnableDefaultKeyReplicationRegionsInput.type = Types::EnableDefaultKeyReplicationRegionsInput
    EnableDefaultKeyReplicationRegionsOutput.add_member(:enabled_replication_regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Regions, location_name: 'EnabledReplicationRegions', traits: {"smithy.api#required" => {}}))
    EnableDefaultKeyReplicationRegionsOutput.type = Types::EnableDefaultKeyReplicationRegionsOutput
    ExportAttributes.add_member(:export_dukpt_initial_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportDukptInitialKey, location_name: 'ExportDukptInitialKey'))
    ExportAttributes.add_member(:key_check_value_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyCheckValueAlgorithm, location_name: 'KeyCheckValueAlgorithm'))
    ExportAttributes.type = Types::ExportAttributes
    ExportDiffieHellmanTr31KeyBlock.add_member(:private_key_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, location_name: 'PrivateKeyIdentifier', traits: {"smithy.api#required" => {}}))
    ExportDiffieHellmanTr31KeyBlock.add_member(:certificate_authority_public_key_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, location_name: 'CertificateAuthorityPublicKeyIdentifier', traits: {"smithy.api#required" => {}}))
    ExportDiffieHellmanTr31KeyBlock.add_member(:public_key_certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateType, location_name: 'PublicKeyCertificate', traits: {"smithy.api#required" => {}}))
    ExportDiffieHellmanTr31KeyBlock.add_member(:derive_key_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SymmetricKeyAlgorithm, location_name: 'DeriveKeyAlgorithm', traits: {"smithy.api#required" => {}}))
    ExportDiffieHellmanTr31KeyBlock.add_member(:key_derivation_function, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyDerivationFunction, location_name: 'KeyDerivationFunction', traits: {"smithy.api#required" => {}}))
    ExportDiffieHellmanTr31KeyBlock.add_member(:key_derivation_hash_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyDerivationHashAlgorithm, location_name: 'KeyDerivationHashAlgorithm', traits: {"smithy.api#required" => {}}))
    ExportDiffieHellmanTr31KeyBlock.add_member(:derivation_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DiffieHellmanDerivationData, location_name: 'DerivationData', traits: {"smithy.api#required" => {}}))
    ExportDiffieHellmanTr31KeyBlock.add_member(:key_block_headers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyBlockHeaders, location_name: 'KeyBlockHeaders'))
    ExportDiffieHellmanTr31KeyBlock.type = Types::ExportDiffieHellmanTr31KeyBlock
    ExportDukptInitialKey.add_member(:key_serial_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HexLength20Or24, location_name: 'KeySerialNumber', traits: {"smithy.api#required" => {}}))
    ExportDukptInitialKey.type = Types::ExportDukptInitialKey
    ExportKeyCryptogram.add_member(:certificate_authority_public_key_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, location_name: 'CertificateAuthorityPublicKeyIdentifier', traits: {"smithy.api#required" => {}}))
    ExportKeyCryptogram.add_member(:wrapping_key_certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateType, location_name: 'WrappingKeyCertificate', traits: {"smithy.api#required" => {}}))
    ExportKeyCryptogram.add_member(:wrapping_spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrappingKeySpec, location_name: 'WrappingSpec'))
    ExportKeyCryptogram.type = Types::ExportKeyCryptogram
    ExportKeyInput.add_member(:key_material, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportKeyMaterial, location_name: 'KeyMaterial', traits: {"smithy.api#required" => {}}))
    ExportKeyInput.add_member(:export_key_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, location_name: 'ExportKeyIdentifier', traits: {"smithy.api#required" => {}}))
    ExportKeyInput.add_member(:export_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportAttributes, location_name: 'ExportAttributes'))
    ExportKeyInput.type = Types::ExportKeyInput
    ExportKeyMaterial.add_member(:tr31_key_block, Types::ExportKeyMaterial::Tr31KeyBlock, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTr31KeyBlock, location_name: 'Tr31KeyBlock'))
    ExportKeyMaterial.add_member(:tr34_key_block, Types::ExportKeyMaterial::Tr34KeyBlock, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTr34KeyBlock, location_name: 'Tr34KeyBlock'))
    ExportKeyMaterial.add_member(:key_cryptogram, Types::ExportKeyMaterial::KeyCryptogram, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportKeyCryptogram, location_name: 'KeyCryptogram'))
    ExportKeyMaterial.add_member(:diffie_hellman_tr31_key_block, Types::ExportKeyMaterial::DiffieHellmanTr31KeyBlock, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportDiffieHellmanTr31KeyBlock, location_name: 'DiffieHellmanTr31KeyBlock'))
    ExportKeyMaterial.add_member(:unknown, Types::ExportKeyMaterial::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    ExportKeyMaterial.type = Types::ExportKeyMaterial
    ExportKeyOutput.add_member(:wrapped_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrappedKey, location_name: 'WrappedKey'))
    ExportKeyOutput.type = Types::ExportKeyOutput
    ExportTr31KeyBlock.add_member(:wrapping_key_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, location_name: 'WrappingKeyIdentifier', traits: {"smithy.api#required" => {}}))
    ExportTr31KeyBlock.add_member(:key_block_headers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyBlockHeaders, location_name: 'KeyBlockHeaders'))
    ExportTr31KeyBlock.type = Types::ExportTr31KeyBlock
    ExportTr34KeyBlock.add_member(:certificate_authority_public_key_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, location_name: 'CertificateAuthorityPublicKeyIdentifier', traits: {"smithy.api#required" => {}}))
    ExportTr34KeyBlock.add_member(:wrapping_key_certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateType, location_name: 'WrappingKeyCertificate', traits: {"smithy.api#required" => {}}))
    ExportTr34KeyBlock.add_member(:export_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTokenId, location_name: 'ExportToken', traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => ""}))
    ExportTr34KeyBlock.add_member(:signing_key_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, location_name: 'SigningKeyIdentifier'))
    ExportTr34KeyBlock.add_member(:signing_key_certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateType, location_name: 'SigningKeyCertificate'))
    ExportTr34KeyBlock.add_member(:key_block_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tr34KeyBlockFormat, location_name: 'KeyBlockFormat', traits: {"smithy.api#required" => {}}))
    ExportTr34KeyBlock.add_member(:random_nonce, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvenHexLengthBetween16And32, location_name: 'RandomNonce'))
    ExportTr34KeyBlock.add_member(:key_block_headers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyBlockHeaders, location_name: 'KeyBlockHeaders'))
    ExportTr34KeyBlock.type = Types::ExportTr34KeyBlock
    GetAliasInput.add_member(:alias_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AliasName, location_name: 'AliasName', traits: {"smithy.api#required" => {}}))
    GetAliasInput.type = Types::GetAliasInput
    GetAliasOutput.add_member(:alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Alias, location_name: 'Alias', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    GetAliasOutput.type = Types::GetAliasOutput
    GetCertificateSigningRequestInput.add_member(:key_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, location_name: 'KeyIdentifier', traits: {"smithy.api#required" => {}}))
    GetCertificateSigningRequestInput.add_member(:signing_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SigningAlgorithmType, location_name: 'SigningAlgorithm', traits: {"smithy.api#required" => {}}))
    GetCertificateSigningRequestInput.add_member(:certificate_subject, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateSubjectType, location_name: 'CertificateSubject', traits: {"smithy.api#required" => {}}))
    GetCertificateSigningRequestInput.type = Types::GetCertificateSigningRequestInput
    GetCertificateSigningRequestOutput.add_member(:certificate_signing_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateSigningRequestType, location_name: 'CertificateSigningRequest', traits: {"smithy.api#required" => {}}))
    GetCertificateSigningRequestOutput.type = Types::GetCertificateSigningRequestOutput
    GetDefaultKeyReplicationRegionsInput.type = Types::GetDefaultKeyReplicationRegionsInput
    GetDefaultKeyReplicationRegionsOutput.add_member(:enabled_replication_regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Regions, location_name: 'EnabledReplicationRegions', traits: {"smithy.api#required" => {}}))
    GetDefaultKeyReplicationRegionsOutput.type = Types::GetDefaultKeyReplicationRegionsOutput
    GetKeyInput.add_member(:key_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, location_name: 'KeyIdentifier', traits: {"smithy.api#required" => {}}))
    GetKeyInput.type = Types::GetKeyInput
    GetKeyOutput.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: 'Key', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    GetKeyOutput.type = Types::GetKeyOutput
    GetParametersForExportInput.add_member(:key_material_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyMaterialType, location_name: 'KeyMaterialType', traits: {"smithy.api#required" => {}}))
    GetParametersForExportInput.add_member(:signing_key_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyAlgorithm, location_name: 'SigningKeyAlgorithm', traits: {"smithy.api#required" => {}}))
    GetParametersForExportInput.type = Types::GetParametersForExportInput
    GetParametersForExportOutput.add_member(:signing_key_certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateType, location_name: 'SigningKeyCertificate', traits: {"smithy.api#required" => {}}))
    GetParametersForExportOutput.add_member(:signing_key_certificate_chain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateType, location_name: 'SigningKeyCertificateChain', traits: {"smithy.api#required" => {}}))
    GetParametersForExportOutput.add_member(:signing_key_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyAlgorithm, location_name: 'SigningKeyAlgorithm', traits: {"smithy.api#required" => {}}))
    GetParametersForExportOutput.add_member(:export_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTokenId, location_name: 'ExportToken', traits: {"smithy.api#required" => {}}))
    GetParametersForExportOutput.add_member(:parameters_valid_until_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ParametersValidUntilTimestamp', traits: {"smithy.api#required" => {}}))
    GetParametersForExportOutput.type = Types::GetParametersForExportOutput
    GetParametersForImportInput.add_member(:key_material_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyMaterialType, location_name: 'KeyMaterialType', traits: {"smithy.api#required" => {}}))
    GetParametersForImportInput.add_member(:wrapping_key_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyAlgorithm, location_name: 'WrappingKeyAlgorithm', traits: {"smithy.api#required" => {}}))
    GetParametersForImportInput.type = Types::GetParametersForImportInput
    GetParametersForImportOutput.add_member(:wrapping_key_certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateType, location_name: 'WrappingKeyCertificate', traits: {"smithy.api#required" => {}}))
    GetParametersForImportOutput.add_member(:wrapping_key_certificate_chain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateType, location_name: 'WrappingKeyCertificateChain', traits: {"smithy.api#required" => {}}))
    GetParametersForImportOutput.add_member(:wrapping_key_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyAlgorithm, location_name: 'WrappingKeyAlgorithm', traits: {"smithy.api#required" => {}}))
    GetParametersForImportOutput.add_member(:import_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTokenId, location_name: 'ImportToken', traits: {"smithy.api#required" => {}}))
    GetParametersForImportOutput.add_member(:parameters_valid_until_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ParametersValidUntilTimestamp', traits: {"smithy.api#required" => {}}))
    GetParametersForImportOutput.type = Types::GetParametersForImportOutput
    GetPublicKeyCertificateInput.add_member(:key_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, location_name: 'KeyIdentifier', traits: {"smithy.api#required" => {}}))
    GetPublicKeyCertificateInput.type = Types::GetPublicKeyCertificateInput
    GetPublicKeyCertificateOutput.add_member(:key_certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateType, location_name: 'KeyCertificate', traits: {"smithy.api#required" => {}}))
    GetPublicKeyCertificateOutput.add_member(:key_certificate_chain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateType, location_name: 'KeyCertificateChain', traits: {"smithy.api#required" => {}}))
    GetPublicKeyCertificateOutput.type = Types::GetPublicKeyCertificateOutput
    ImportDiffieHellmanTr31KeyBlock.add_member(:private_key_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, location_name: 'PrivateKeyIdentifier', traits: {"smithy.api#required" => {}}))
    ImportDiffieHellmanTr31KeyBlock.add_member(:certificate_authority_public_key_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, location_name: 'CertificateAuthorityPublicKeyIdentifier', traits: {"smithy.api#required" => {}}))
    ImportDiffieHellmanTr31KeyBlock.add_member(:public_key_certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateType, location_name: 'PublicKeyCertificate', traits: {"smithy.api#required" => {}}))
    ImportDiffieHellmanTr31KeyBlock.add_member(:derive_key_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SymmetricKeyAlgorithm, location_name: 'DeriveKeyAlgorithm', traits: {"smithy.api#required" => {}}))
    ImportDiffieHellmanTr31KeyBlock.add_member(:key_derivation_function, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyDerivationFunction, location_name: 'KeyDerivationFunction', traits: {"smithy.api#required" => {}}))
    ImportDiffieHellmanTr31KeyBlock.add_member(:key_derivation_hash_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyDerivationHashAlgorithm, location_name: 'KeyDerivationHashAlgorithm', traits: {"smithy.api#required" => {}}))
    ImportDiffieHellmanTr31KeyBlock.add_member(:derivation_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DiffieHellmanDerivationData, location_name: 'DerivationData', traits: {"smithy.api#required" => {}}))
    ImportDiffieHellmanTr31KeyBlock.add_member(:wrapped_key_block, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tr31WrappedKeyBlock, location_name: 'WrappedKeyBlock', traits: {"smithy.api#required" => {}}))
    ImportDiffieHellmanTr31KeyBlock.type = Types::ImportDiffieHellmanTr31KeyBlock
    ImportKeyCryptogram.add_member(:key_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyAttributes, location_name: 'KeyAttributes', traits: {"smithy.api#required" => {}}))
    ImportKeyCryptogram.add_member(:exportable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'Exportable', traits: {"smithy.api#required" => {}}))
    ImportKeyCryptogram.add_member(:wrapped_key_cryptogram, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrappedKeyCryptogram, location_name: 'WrappedKeyCryptogram', traits: {"smithy.api#required" => {}}))
    ImportKeyCryptogram.add_member(:import_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTokenId, location_name: 'ImportToken', traits: {"smithy.api#required" => {}}))
    ImportKeyCryptogram.add_member(:wrapping_spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrappingKeySpec, location_name: 'WrappingSpec'))
    ImportKeyCryptogram.type = Types::ImportKeyCryptogram
    ImportKeyInput.add_member(:key_material, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportKeyMaterial, location_name: 'KeyMaterial', traits: {"smithy.api#required" => {}}))
    ImportKeyInput.add_member(:key_check_value_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyCheckValueAlgorithm, location_name: 'KeyCheckValueAlgorithm'))
    ImportKeyInput.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'Enabled'))
    ImportKeyInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    ImportKeyInput.add_member(:replication_regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Regions, location_name: 'ReplicationRegions'))
    ImportKeyInput.type = Types::ImportKeyInput
    ImportKeyMaterial.add_member(:root_certificate_public_key, Types::ImportKeyMaterial::RootCertificatePublicKey, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RootCertificatePublicKey, location_name: 'RootCertificatePublicKey'))
    ImportKeyMaterial.add_member(:trusted_certificate_public_key, Types::ImportKeyMaterial::TrustedCertificatePublicKey, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedCertificatePublicKey, location_name: 'TrustedCertificatePublicKey'))
    ImportKeyMaterial.add_member(:tr31_key_block, Types::ImportKeyMaterial::Tr31KeyBlock, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTr31KeyBlock, location_name: 'Tr31KeyBlock'))
    ImportKeyMaterial.add_member(:tr34_key_block, Types::ImportKeyMaterial::Tr34KeyBlock, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTr34KeyBlock, location_name: 'Tr34KeyBlock'))
    ImportKeyMaterial.add_member(:key_cryptogram, Types::ImportKeyMaterial::KeyCryptogram, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportKeyCryptogram, location_name: 'KeyCryptogram'))
    ImportKeyMaterial.add_member(:diffie_hellman_tr31_key_block, Types::ImportKeyMaterial::DiffieHellmanTr31KeyBlock, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportDiffieHellmanTr31KeyBlock, location_name: 'DiffieHellmanTr31KeyBlock'))
    ImportKeyMaterial.add_member(:unknown, Types::ImportKeyMaterial::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    ImportKeyMaterial.type = Types::ImportKeyMaterial
    ImportKeyOutput.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: 'Key', traits: {"smithy.api#required" => {}}))
    ImportKeyOutput.type = Types::ImportKeyOutput
    ImportTr31KeyBlock.add_member(:wrapping_key_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, location_name: 'WrappingKeyIdentifier', traits: {"smithy.api#required" => {}}))
    ImportTr31KeyBlock.add_member(:wrapped_key_block, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tr31WrappedKeyBlock, location_name: 'WrappedKeyBlock', traits: {"smithy.api#required" => {}}))
    ImportTr31KeyBlock.type = Types::ImportTr31KeyBlock
    ImportTr34KeyBlock.add_member(:certificate_authority_public_key_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, location_name: 'CertificateAuthorityPublicKeyIdentifier', traits: {"smithy.api#required" => {}}))
    ImportTr34KeyBlock.add_member(:signing_key_certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateType, location_name: 'SigningKeyCertificate', traits: {"smithy.api#required" => {}}))
    ImportTr34KeyBlock.add_member(:import_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTokenId, location_name: 'ImportToken', traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => ""}))
    ImportTr34KeyBlock.add_member(:wrapping_key_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, location_name: 'WrappingKeyIdentifier'))
    ImportTr34KeyBlock.add_member(:wrapping_key_certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateType, location_name: 'WrappingKeyCertificate'))
    ImportTr34KeyBlock.add_member(:wrapped_key_block, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tr34WrappedKeyBlock, location_name: 'WrappedKeyBlock', traits: {"smithy.api#required" => {}}))
    ImportTr34KeyBlock.add_member(:key_block_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tr34KeyBlockFormat, location_name: 'KeyBlockFormat', traits: {"smithy.api#required" => {}}))
    ImportTr34KeyBlock.add_member(:random_nonce, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvenHexLengthBetween16And32, location_name: 'RandomNonce'))
    ImportTr34KeyBlock.type = Types::ImportTr34KeyBlock
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    InternalServerException.type = Types::InternalServerException
    Key.add_member(:key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArn, location_name: 'KeyArn', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    Key.add_member(:key_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyAttributes, location_name: 'KeyAttributes', traits: {"smithy.api#required" => {}}))
    Key.add_member(:key_check_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyCheckValue, location_name: 'KeyCheckValue', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    Key.add_member(:key_check_value_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyCheckValueAlgorithm, location_name: 'KeyCheckValueAlgorithm', traits: {"smithy.api#required" => {}}))
    Key.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'Enabled', traits: {"smithy.api#required" => {}}))
    Key.add_member(:exportable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'Exportable', traits: {"smithy.api#required" => {}}))
    Key.add_member(:key_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyState, location_name: 'KeyState', traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    Key.add_member(:key_origin, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyOrigin, location_name: 'KeyOrigin', traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    Key.add_member(:create_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreateTimestamp', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    Key.add_member(:usage_start_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UsageStartTimestamp', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    Key.add_member(:usage_stop_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UsageStopTimestamp', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    Key.add_member(:delete_pending_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DeletePendingTimestamp', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    Key.add_member(:delete_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DeleteTimestamp', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    Key.add_member(:derive_key_usage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeriveKeyUsage, location_name: 'DeriveKeyUsage', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    Key.add_member(:multi_region_key_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionKeyType, location_name: 'MultiRegionKeyType', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    Key.add_member(:primary_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'PrimaryRegion', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    Key.add_member(:replication_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationStatus, location_name: 'ReplicationStatus', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    Key.add_member(:using_default_replication_regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'UsingDefaultReplicationRegions', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    Key.type = Types::Key
    KeyAttributes.add_member(:key_usage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyUsage, location_name: 'KeyUsage', traits: {"smithy.api#required" => {}}))
    KeyAttributes.add_member(:key_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyClass, location_name: 'KeyClass', traits: {"smithy.api#required" => {}}))
    KeyAttributes.add_member(:key_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyAlgorithm, location_name: 'KeyAlgorithm', traits: {"smithy.api#required" => {}}))
    KeyAttributes.add_member(:key_modes_of_use, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyModesOfUse, location_name: 'KeyModesOfUse', traits: {"smithy.api#required" => {}}))
    KeyAttributes.type = Types::KeyAttributes
    KeyBlockHeaders.add_member(:key_modes_of_use, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyModesOfUse, location_name: 'KeyModesOfUse'))
    KeyBlockHeaders.add_member(:key_exportability, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyExportability, location_name: 'KeyExportability'))
    KeyBlockHeaders.add_member(:key_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyVersion, location_name: 'KeyVersion'))
    KeyBlockHeaders.add_member(:optional_blocks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionalBlocks, location_name: 'OptionalBlocks'))
    KeyBlockHeaders.type = Types::KeyBlockHeaders
    KeyDerivationFunction.add_member(:nist_sp800, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NIST_SP800', traits: {"smithy.api#enumValue" => "NIST_SP800"}))
    KeyDerivationFunction.add_member(:ansi_x963, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANSI_X963', traits: {"smithy.api#enumValue" => "ANSI_X963"}))
    KeyDerivationHashAlgorithm.add_member(:sha_256, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHA_256', traits: {"smithy.api#enumValue" => "SHA_256"}))
    KeyDerivationHashAlgorithm.add_member(:sha_384, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHA_384', traits: {"smithy.api#enumValue" => "SHA_384"}))
    KeyDerivationHashAlgorithm.add_member(:sha_512, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHA_512', traits: {"smithy.api#enumValue" => "SHA_512"}))
    KeyModesOfUse.add_member(:encrypt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'Encrypt', traits: {"smithy.api#default" => false}))
    KeyModesOfUse.add_member(:decrypt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'Decrypt', traits: {"smithy.api#default" => false}))
    KeyModesOfUse.add_member(:wrap, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'Wrap', traits: {"smithy.api#default" => false}))
    KeyModesOfUse.add_member(:unwrap, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'Unwrap', traits: {"smithy.api#default" => false}))
    KeyModesOfUse.add_member(:generate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'Generate', traits: {"smithy.api#default" => false}))
    KeyModesOfUse.add_member(:sign, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'Sign', traits: {"smithy.api#default" => false}))
    KeyModesOfUse.add_member(:verify, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'Verify', traits: {"smithy.api#default" => false}))
    KeyModesOfUse.add_member(:derive_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'DeriveKey', traits: {"smithy.api#default" => false}))
    KeyModesOfUse.add_member(:no_restrictions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'NoRestrictions', traits: {"smithy.api#default" => false}))
    KeyModesOfUse.type = Types::KeyModesOfUse
    KeySummary.add_member(:key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArn, location_name: 'KeyArn', traits: {"smithy.api#required" => {}}))
    KeySummary.add_member(:key_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyState, location_name: 'KeyState', traits: {"smithy.api#required" => {}}))
    KeySummary.add_member(:key_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyAttributes, location_name: 'KeyAttributes', traits: {"smithy.api#required" => {}}))
    KeySummary.add_member(:key_check_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyCheckValue, location_name: 'KeyCheckValue', traits: {"smithy.api#required" => {}}))
    KeySummary.add_member(:exportable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'Exportable', traits: {"smithy.api#required" => {}}))
    KeySummary.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'Enabled', traits: {"smithy.api#required" => {}}))
    KeySummary.add_member(:multi_region_key_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionKeyType, location_name: 'MultiRegionKeyType'))
    KeySummary.add_member(:primary_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'PrimaryRegion'))
    KeySummary.type = Types::KeySummary
    KeySummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeySummary)
    ListAliasesInput.add_member(:key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArn, location_name: 'KeyArn'))
    ListAliasesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListAliasesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListAliasesInput.type = Types::ListAliasesInput
    ListAliasesOutput.add_member(:aliases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Aliases, location_name: 'Aliases', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    ListAliasesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListAliasesOutput.type = Types::ListAliasesOutput
    ListKeysInput.add_member(:key_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyState, location_name: 'KeyState'))
    ListKeysInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListKeysInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListKeysInput.type = Types::ListKeysInput
    ListKeysOutput.add_member(:keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeySummaryList, location_name: 'Keys', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    ListKeysOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListKeysOutput.type = Types::ListKeysOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#required" => {}}))
    ListTagsForResourceInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListTagsForResourceInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    ListTagsForResourceOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    OptionalBlocks.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionalBlockId)
    OptionalBlocks.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionalBlockValue)
    Regions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region)
    RemoveKeyReplicationRegionsInput.add_member(:key_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, location_name: 'KeyIdentifier', traits: {"smithy.api#required" => {}}))
    RemoveKeyReplicationRegionsInput.add_member(:replication_regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Regions, location_name: 'ReplicationRegions', traits: {"smithy.api#required" => {}}))
    RemoveKeyReplicationRegionsInput.type = Types::RemoveKeyReplicationRegionsInput
    RemoveKeyReplicationRegionsOutput.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: 'Key', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    RemoveKeyReplicationRegionsOutput.type = Types::RemoveKeyReplicationRegionsOutput
    ReplicationStatus.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region)
    ReplicationStatus.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationStatusType)
    ReplicationStatusType.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyReplicationState, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    ReplicationStatusType.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'StatusMessage'))
    ReplicationStatusType.type = Types::ReplicationStatusType
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'ResourceId'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RestoreKeyInput.add_member(:key_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, location_name: 'KeyIdentifier', traits: {"smithy.api#required" => {}}))
    RestoreKeyInput.type = Types::RestoreKeyInput
    RestoreKeyOutput.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: 'Key', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    RestoreKeyOutput.type = Types::RestoreKeyOutput
    RootCertificatePublicKey.add_member(:key_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyAttributes, location_name: 'KeyAttributes', traits: {"smithy.api#required" => {}}))
    RootCertificatePublicKey.add_member(:public_key_certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateType, location_name: 'PublicKeyCertificate', traits: {"smithy.api#required" => {}}))
    RootCertificatePublicKey.type = Types::RootCertificatePublicKey
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    StartKeyUsageInput.add_member(:key_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, location_name: 'KeyIdentifier', traits: {"smithy.api#required" => {}}))
    StartKeyUsageInput.type = Types::StartKeyUsageInput
    StartKeyUsageOutput.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: 'Key', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    StartKeyUsageOutput.type = Types::StartKeyUsageOutput
    StopKeyUsageInput.add_member(:key_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, location_name: 'KeyIdentifier', traits: {"smithy.api#required" => {}}))
    StopKeyUsageInput.type = Types::StopKeyUsageInput
    StopKeyUsageOutput.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: 'Key', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    StopKeyUsageOutput.type = Types::StopKeyUsageOutput
    SymmetricKeyAlgorithm.add_member(:tdes_2_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TDES_2KEY', traits: {"smithy.api#enumValue" => "TDES_2KEY"}))
    SymmetricKeyAlgorithm.add_member(:tdes_3_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TDES_3KEY', traits: {"smithy.api#enumValue" => "TDES_3KEY"}))
    SymmetricKeyAlgorithm.add_member(:aes_128, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AES_128', traits: {"smithy.api#enumValue" => "AES_128"}))
    SymmetricKeyAlgorithm.add_member(:aes_192, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AES_192', traits: {"smithy.api#enumValue" => "AES_192"}))
    SymmetricKeyAlgorithm.add_member(:aes_256, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AES_256', traits: {"smithy.api#enumValue" => "AES_256"}))
    SymmetricKeyAlgorithm.add_member(:hmac_sha256, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HMAC_SHA256', traits: {"smithy.api#enumValue" => "HMAC_SHA256"}))
    SymmetricKeyAlgorithm.add_member(:hmac_sha384, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HMAC_SHA384', traits: {"smithy.api#enumValue" => "HMAC_SHA384"}))
    SymmetricKeyAlgorithm.add_member(:hmac_sha512, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HMAC_SHA512', traits: {"smithy.api#enumValue" => "HMAC_SHA512"}))
    SymmetricKeyAlgorithm.add_member(:hmac_sha224, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HMAC_SHA224', traits: {"smithy.api#enumValue" => "HMAC_SHA224"}))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeys.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    Tags.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    ThrottlingException.type = Types::ThrottlingException
    TrustedCertificatePublicKey.add_member(:key_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyAttributes, location_name: 'KeyAttributes', traits: {"smithy.api#required" => {}}))
    TrustedCertificatePublicKey.add_member(:public_key_certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateType, location_name: 'PublicKeyCertificate', traits: {"smithy.api#required" => {}}))
    TrustedCertificatePublicKey.add_member(:certificate_authority_public_key_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, location_name: 'CertificateAuthorityPublicKeyIdentifier', traits: {"smithy.api#required" => {}}))
    TrustedCertificatePublicKey.type = Types::TrustedCertificatePublicKey
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'TagKeys', traits: {"smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateAliasInput.add_member(:alias_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AliasName, location_name: 'AliasName', traits: {"smithy.api#required" => {}}))
    UpdateAliasInput.add_member(:key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArn, location_name: 'KeyArn'))
    UpdateAliasInput.type = Types::UpdateAliasInput
    UpdateAliasOutput.add_member(:alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Alias, location_name: 'Alias', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    UpdateAliasOutput.type = Types::UpdateAliasOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    ValidationException.type = Types::ValidationException
    WrappedKey.add_member(:wrapping_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArn, location_name: 'WrappingKeyArn', traits: {"smithy.api#required" => {}}))
    WrappedKey.add_member(:wrapped_key_material_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrappedKeyMaterialFormat, location_name: 'WrappedKeyMaterialFormat', traits: {"smithy.api#required" => {}}))
    WrappedKey.add_member(:key_material, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyMaterial, location_name: 'KeyMaterial', traits: {"smithy.api#required" => {}}))
    WrappedKey.add_member(:key_check_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyCheckValue, location_name: 'KeyCheckValue'))
    WrappedKey.add_member(:key_check_value_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyCheckValueAlgorithm, location_name: 'KeyCheckValueAlgorithm'))
    WrappedKey.type = Types::WrappedKey

    PaymentCryptographyControlPlane = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.paymentcryptography#PaymentCryptographyControlPlane"
      service.name = "PaymentCryptographyControlPlane"
      service.version = "2021-09-14"
      service.traits = {"aws.api#service" => {"sdkId" => "Payment Cryptography", "arnNamespace" => "payment-cryptography", "endpointPrefix" => "controlplane.payment-cryptography", "cloudFormationName" => "PaymentCryptography"}, "aws.auth#sigv4" => {"name" => "payment-cryptography"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#cors" => {}, "smithy.api#title" => "Payment Cryptography Control Plane"}
      service.add_operation(:add_key_replication_regions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#AddKeyReplicationRegions"
        operation.name = "AddKeyReplicationRegions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddKeyReplicationRegionsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddKeyReplicationRegionsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}}
      end)
      service.add_operation(:create_alias, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#CreateAlias"
        operation.name = "CreateAlias"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAliasInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAliasOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#CreateKey"
        operation.name = "CreateKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateKeyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateKeyOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}}
      end)
      service.add_operation(:delete_alias, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#DeleteAlias"
        operation.name = "DeleteAlias"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAliasInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAliasOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#DeleteKey"
        operation.name = "DeleteKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteKeyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteKeyOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disable_default_key_replication_regions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#DisableDefaultKeyReplicationRegions"
        operation.name = "DisableDefaultKeyReplicationRegions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisableDefaultKeyReplicationRegionsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisableDefaultKeyReplicationRegionsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}}
      end)
      service.add_operation(:enable_default_key_replication_regions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#EnableDefaultKeyReplicationRegions"
        operation.name = "EnableDefaultKeyReplicationRegions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableDefaultKeyReplicationRegionsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableDefaultKeyReplicationRegionsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}}
      end)
      service.add_operation(:export_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#ExportKey"
        operation.name = "ExportKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportKeyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportKeyOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}}
      end)
      service.add_operation(:get_alias, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#GetAlias"
        operation.name = "GetAlias"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAliasInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAliasOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_certificate_signing_request, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#GetCertificateSigningRequest"
        operation.name = "GetCertificateSigningRequest"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCertificateSigningRequestInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCertificateSigningRequestOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}}
      end)
      service.add_operation(:get_default_key_replication_regions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#GetDefaultKeyReplicationRegions"
        operation.name = "GetDefaultKeyReplicationRegions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDefaultKeyReplicationRegionsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDefaultKeyReplicationRegionsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}}
      end)
      service.add_operation(:get_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#GetKey"
        operation.name = "GetKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetKeyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetKeyOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_parameters_for_export, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#GetParametersForExport"
        operation.name = "GetParametersForExport"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetParametersForExportInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetParametersForExportOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}}
      end)
      service.add_operation(:get_parameters_for_import, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#GetParametersForImport"
        operation.name = "GetParametersForImport"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetParametersForImportInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetParametersForImportOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}}
      end)
      service.add_operation(:get_public_key_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#GetPublicKeyCertificate"
        operation.name = "GetPublicKeyCertificate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPublicKeyCertificateInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPublicKeyCertificateOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:import_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#ImportKey"
        operation.name = "ImportKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportKeyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportKeyOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}}
      end)
      service.add_operation(:list_aliases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#ListAliases"
        operation.name = "ListAliases"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAliasesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAliasesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAliases.new
      end)
      service.add_operation(:list_keys, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#ListKeys"
        operation.name = "ListKeys"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListKeysInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListKeysOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListKeys.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:remove_key_replication_regions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#RemoveKeyReplicationRegions"
        operation.name = "RemoveKeyReplicationRegions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveKeyReplicationRegionsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveKeyReplicationRegionsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}}
      end)
      service.add_operation(:restore_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#RestoreKey"
        operation.name = "RestoreKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreKeyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreKeyOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}}
      end)
      service.add_operation(:start_key_usage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#StartKeyUsage"
        operation.name = "StartKeyUsage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartKeyUsageInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartKeyUsageOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}}
      end)
      service.add_operation(:stop_key_usage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#StopKeyUsage"
        operation.name = "StopKeyUsage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopKeyUsageInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopKeyUsageOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}}
      end)
      service.add_operation(:update_alias, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#UpdateAlias"
        operation.name = "UpdateAlias"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAliasInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAliasOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}}
      end)
    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(::Smithy::Schema::Shapes::StructureShape) }
        @type_registry = ::Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
