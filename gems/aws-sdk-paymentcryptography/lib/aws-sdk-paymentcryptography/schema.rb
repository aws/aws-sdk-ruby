# frozen_string_literal: true

# This is generated code!

module Aws::PaymentCryptography
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Alias = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#Alias', name: 'Alias')
    AliasName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#AliasName', name: 'AliasName', traits: {"smithy.api#length" => {"min" => 7, "max" => 256}, "smithy.api#pattern" => "^alias/[a-zA-Z0-9/_-]+$"})
    Aliases = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.paymentcryptography#Aliases', name: 'Aliases')
    CertificateType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#CertificateType', name: 'CertificateType', traits: {"smithy.api#length" => {"min" => 1, "max" => 32768}, "smithy.api#pattern" => "^[^\\[;\\]<>]+$", "smithy.api#sensitive" => {}})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateAliasInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#CreateAliasInput', name: 'CreateAliasInput')
    CreateAliasOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#CreateAliasOutput', name: 'CreateAliasOutput')
    CreateKeyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#CreateKeyInput', name: 'CreateKeyInput')
    CreateKeyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#CreateKeyOutput', name: 'CreateKeyOutput')
    DeleteAliasInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#DeleteAliasInput', name: 'DeleteAliasInput')
    DeleteAliasOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#DeleteAliasOutput', name: 'DeleteAliasOutput')
    DeleteKeyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#DeleteKeyInput', name: 'DeleteKeyInput')
    DeleteKeyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#DeleteKeyOutput', name: 'DeleteKeyOutput')
    DeriveKeyUsage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#DeriveKeyUsage', name: 'DeriveKeyUsage', traits: {"smithy.api#enum" => [{"value" => "TR31_B0_BASE_DERIVATION_KEY", "name" => "TR31_B0_BASE_DERIVATION_KEY"}, {"value" => "TR31_C0_CARD_VERIFICATION_KEY", "name" => "TR31_C0_CARD_VERIFICATION_KEY"}, {"value" => "TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY", "name" => "TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY"}, {"value" => "TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS", "name" => "TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS"}, {"value" => "TR31_E1_EMV_MKEY_CONFIDENTIALITY", "name" => "TR31_E1_EMV_MKEY_CONFIDENTIALITY"}, {"value" => "TR31_E2_EMV_MKEY_INTEGRITY", "name" => "TR31_E2_EMV_MKEY_INTEGRITY"}, {"value" => "TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS", "name" => "TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS"}, {"value" => "TR31_E5_EMV_MKEY_CARD_PERSONALIZATION", "name" => "TR31_E5_EMV_MKEY_CARD_PERSONALIZATION"}, {"value" => "TR31_E6_EMV_MKEY_OTHER", "name" => "TR31_E6_EMV_MKEY_OTHER"}, {"value" => "TR31_K0_KEY_ENCRYPTION_KEY", "name" => "TR31_K0_KEY_ENCRYPTION_KEY"}, {"value" => "TR31_K1_KEY_BLOCK_PROTECTION_KEY", "name" => "TR31_K1_KEY_BLOCK_PROTECTION_KEY"}, {"value" => "TR31_M3_ISO_9797_3_MAC_KEY", "name" => "TR31_M3_ISO_9797_3_MAC_KEY"}, {"value" => "TR31_M1_ISO_9797_1_MAC_KEY", "name" => "TR31_M1_ISO_9797_1_MAC_KEY"}, {"value" => "TR31_M6_ISO_9797_5_CMAC_KEY", "name" => "TR31_M6_ISO_9797_5_CMAC_KEY"}, {"value" => "TR31_M7_HMAC_KEY", "name" => "TR31_M7_HMAC_KEY"}, {"value" => "TR31_P0_PIN_ENCRYPTION_KEY", "name" => "TR31_P0_PIN_ENCRYPTION_KEY"}, {"value" => "TR31_P1_PIN_GENERATION_KEY", "name" => "TR31_P1_PIN_GENERATION_KEY"}, {"value" => "TR31_V1_IBM3624_PIN_VERIFICATION_KEY", "name" => "TR31_V1_IBM3624_PIN_VERIFICATION_KEY"}, {"value" => "TR31_V2_VISA_PIN_VERIFICATION_KEY", "name" => "TR31_V2_VISA_PIN_VERIFICATION_KEY"}]})
    DiffieHellmanDerivationData = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.paymentcryptography#DiffieHellmanDerivationData', name: 'DiffieHellmanDerivationData')
    EvenHexLengthBetween16And32 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#EvenHexLengthBetween16And32', name: 'EvenHexLengthBetween16And32', traits: {"smithy.api#length" => {"min" => 16, "max" => 32}, "smithy.api#pattern" => "^(?:[0-9a-fA-F][0-9a-fA-F])+$"})
    ExportAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ExportAttributes', name: 'ExportAttributes')
    ExportDiffieHellmanTr31KeyBlock = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ExportDiffieHellmanTr31KeyBlock', name: 'ExportDiffieHellmanTr31KeyBlock')
    ExportDukptInitialKey = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ExportDukptInitialKey', name: 'ExportDukptInitialKey')
    ExportKeyCryptogram = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ExportKeyCryptogram', name: 'ExportKeyCryptogram')
    ExportKeyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ExportKeyInput', name: 'ExportKeyInput')
    ExportKeyMaterial = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.paymentcryptography#ExportKeyMaterial', name: 'ExportKeyMaterial')
    ExportKeyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ExportKeyOutput', name: 'ExportKeyOutput')
    ExportTokenId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#ExportTokenId', name: 'ExportTokenId', traits: {"smithy.api#pattern" => "^export-token-[0-9a-zA-Z]{16,64}$"})
    ExportTr31KeyBlock = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ExportTr31KeyBlock', name: 'ExportTr31KeyBlock')
    ExportTr34KeyBlock = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ExportTr34KeyBlock', name: 'ExportTr34KeyBlock')
    GetAliasInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#GetAliasInput', name: 'GetAliasInput')
    GetAliasOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#GetAliasOutput', name: 'GetAliasOutput')
    GetKeyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#GetKeyInput', name: 'GetKeyInput')
    GetKeyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#GetKeyOutput', name: 'GetKeyOutput')
    GetParametersForExportInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#GetParametersForExportInput', name: 'GetParametersForExportInput')
    GetParametersForExportOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#GetParametersForExportOutput', name: 'GetParametersForExportOutput')
    GetParametersForImportInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#GetParametersForImportInput', name: 'GetParametersForImportInput')
    GetParametersForImportOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#GetParametersForImportOutput', name: 'GetParametersForImportOutput')
    GetPublicKeyCertificateInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#GetPublicKeyCertificateInput', name: 'GetPublicKeyCertificateInput')
    GetPublicKeyCertificateOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#GetPublicKeyCertificateOutput', name: 'GetPublicKeyCertificateOutput')
    HexLength20Or24 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#HexLength20Or24', name: 'HexLength20Or24', traits: {"smithy.api#length" => {"min" => 20, "max" => 24}, "smithy.api#pattern" => "^[0-9A-F]{20}$|^[0-9A-F]{24}$"})
    ImportDiffieHellmanTr31KeyBlock = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ImportDiffieHellmanTr31KeyBlock', name: 'ImportDiffieHellmanTr31KeyBlock')
    ImportKeyCryptogram = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ImportKeyCryptogram', name: 'ImportKeyCryptogram')
    ImportKeyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ImportKeyInput', name: 'ImportKeyInput')
    ImportKeyMaterial = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.paymentcryptography#ImportKeyMaterial', name: 'ImportKeyMaterial')
    ImportKeyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ImportKeyOutput', name: 'ImportKeyOutput')
    ImportTokenId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#ImportTokenId', name: 'ImportTokenId', traits: {"smithy.api#pattern" => "^import-token-[0-9a-zA-Z]{16,64}$"})
    ImportTr31KeyBlock = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ImportTr31KeyBlock', name: 'ImportTr31KeyBlock')
    ImportTr34KeyBlock = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ImportTr34KeyBlock', name: 'ImportTr34KeyBlock')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    Key = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#Key', name: 'Key', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.paymentcryptography#KeyResource", "service" => "com.amazonaws.paymentcryptography#PaymentCryptographyControlPlane", "ids" => {"KeyIdentifier" => "KeyArn"}}]})
    KeyAlgorithm = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#KeyAlgorithm', name: 'KeyAlgorithm', traits: {"smithy.api#enum" => [{"value" => "TDES_2KEY", "name" => "TDES_2KEY"}, {"value" => "TDES_3KEY", "name" => "TDES_3KEY"}, {"value" => "AES_128", "name" => "AES_128"}, {"value" => "AES_192", "name" => "AES_192"}, {"value" => "AES_256", "name" => "AES_256"}, {"value" => "HMAC_SHA256", "name" => "HMAC_SHA256"}, {"value" => "HMAC_SHA384", "name" => "HMAC_SHA384"}, {"value" => "HMAC_SHA512", "name" => "HMAC_SHA512"}, {"value" => "HMAC_SHA224", "name" => "HMAC_SHA224"}, {"value" => "RSA_2048", "name" => "RSA_2048"}, {"value" => "RSA_3072", "name" => "RSA_3072"}, {"value" => "RSA_4096", "name" => "RSA_4096"}, {"value" => "ECC_NIST_P256", "name" => "ECC_NIST_P256"}, {"value" => "ECC_NIST_P384", "name" => "ECC_NIST_P384"}, {"value" => "ECC_NIST_P521", "name" => "ECC_NIST_P521"}]})
    KeyArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#KeyArn', name: 'KeyArn', traits: {"smithy.api#length" => {"min" => 70, "max" => 150}, "smithy.api#pattern" => "^arn:aws:payment-cryptography:[a-z]{2}-[a-z]{1,16}-[0-9]+:[0-9]{12}:key/[0-9a-zA-Z]{16,64}$"})
    KeyArnOrKeyAliasType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#KeyArnOrKeyAliasType', name: 'KeyArnOrKeyAliasType', traits: {"smithy.api#length" => {"min" => 7, "max" => 322}, "smithy.api#pattern" => "^arn:aws:payment-cryptography:[a-z]{2}-[a-z]{1,16}-[0-9]+:[0-9]{12}:(key/[0-9a-zA-Z]{16,64}|alias/[a-zA-Z0-9/_-]+)$|^alias/[a-zA-Z0-9/_-]+$"})
    KeyAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#KeyAttributes', name: 'KeyAttributes')
    KeyBlockHeaders = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#KeyBlockHeaders', name: 'KeyBlockHeaders')
    KeyCheckValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#KeyCheckValue', name: 'KeyCheckValue', traits: {"smithy.api#length" => {"min" => 4, "max" => 16}, "smithy.api#pattern" => "^[0-9a-fA-F]+$"})
    KeyCheckValueAlgorithm = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#KeyCheckValueAlgorithm', name: 'KeyCheckValueAlgorithm', traits: {"smithy.api#enum" => [{"value" => "CMAC", "name" => "CMAC"}, {"value" => "ANSI_X9_24", "name" => "ANSI_X9_24"}, {"value" => "HMAC", "name" => "HMAC"}]})
    KeyClass = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#KeyClass', name: 'KeyClass', traits: {"smithy.api#enum" => [{"value" => "SYMMETRIC_KEY", "name" => "SYMMETRIC_KEY"}, {"value" => "ASYMMETRIC_KEY_PAIR", "name" => "ASYMMETRIC_KEY_PAIR"}, {"value" => "PRIVATE_KEY", "name" => "PRIVATE_KEY"}, {"value" => "PUBLIC_KEY", "name" => "PUBLIC_KEY"}]})
    KeyDerivationFunction = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.paymentcryptography#KeyDerivationFunction', name: 'KeyDerivationFunction')
    KeyDerivationHashAlgorithm = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.paymentcryptography#KeyDerivationHashAlgorithm', name: 'KeyDerivationHashAlgorithm')
    KeyExportability = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#KeyExportability', name: 'KeyExportability', traits: {"smithy.api#enum" => [{"value" => "EXPORTABLE", "name" => "EXPORTABLE"}, {"value" => "NON_EXPORTABLE", "name" => "NON_EXPORTABLE"}, {"value" => "SENSITIVE", "name" => "SENSITIVE"}]})
    KeyMaterial = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#KeyMaterial', name: 'KeyMaterial', traits: {"smithy.api#length" => {"min" => 48, "max" => 16384}, "smithy.api#sensitive" => {}})
    KeyMaterialType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#KeyMaterialType', name: 'KeyMaterialType', traits: {"smithy.api#enum" => [{"value" => "TR34_KEY_BLOCK", "name" => "TR34_KEY_BLOCK"}, {"value" => "TR31_KEY_BLOCK", "name" => "TR31_KEY_BLOCK"}, {"value" => "ROOT_PUBLIC_KEY_CERTIFICATE", "name" => "ROOT_PUBLIC_KEY_CERTIFICATE"}, {"value" => "TRUSTED_PUBLIC_KEY_CERTIFICATE", "name" => "TRUSTED_PUBLIC_KEY_CERTIFICATE"}, {"value" => "KEY_CRYPTOGRAM", "name" => "KEY_CRYPTOGRAM"}]})
    KeyModesOfUse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#KeyModesOfUse', name: 'KeyModesOfUse')
    KeyOrigin = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#KeyOrigin', name: 'KeyOrigin', traits: {"smithy.api#enum" => [{"value" => "EXTERNAL", "name" => "EXTERNAL"}, {"value" => "AWS_PAYMENT_CRYPTOGRAPHY", "name" => "AWS_PAYMENT_CRYPTOGRAPHY"}]})
    KeyState = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#KeyState', name: 'KeyState', traits: {"smithy.api#enum" => [{"value" => "CREATE_IN_PROGRESS", "name" => "CREATE_IN_PROGRESS"}, {"value" => "CREATE_COMPLETE", "name" => "CREATE_COMPLETE"}, {"value" => "DELETE_PENDING", "name" => "DELETE_PENDING"}, {"value" => "DELETE_COMPLETE", "name" => "DELETE_COMPLETE"}]})
    KeySummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#KeySummary', name: 'KeySummary')
    KeySummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.paymentcryptography#KeySummaryList', name: 'KeySummaryList')
    KeyUsage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#KeyUsage', name: 'KeyUsage', traits: {"smithy.api#enum" => [{"value" => "TR31_B0_BASE_DERIVATION_KEY", "name" => "TR31_B0_BASE_DERIVATION_KEY"}, {"value" => "TR31_C0_CARD_VERIFICATION_KEY", "name" => "TR31_C0_CARD_VERIFICATION_KEY"}, {"value" => "TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY", "name" => "TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY"}, {"value" => "TR31_D1_ASYMMETRIC_KEY_FOR_DATA_ENCRYPTION", "name" => "TR31_D1_ASYMMETRIC_KEY_FOR_DATA_ENCRYPTION"}, {"value" => "TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS", "name" => "TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS"}, {"value" => "TR31_E1_EMV_MKEY_CONFIDENTIALITY", "name" => "TR31_E1_EMV_MKEY_CONFIDENTIALITY"}, {"value" => "TR31_E2_EMV_MKEY_INTEGRITY", "name" => "TR31_E2_EMV_MKEY_INTEGRITY"}, {"value" => "TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS", "name" => "TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS"}, {"value" => "TR31_E5_EMV_MKEY_CARD_PERSONALIZATION", "name" => "TR31_E5_EMV_MKEY_CARD_PERSONALIZATION"}, {"value" => "TR31_E6_EMV_MKEY_OTHER", "name" => "TR31_E6_EMV_MKEY_OTHER"}, {"value" => "TR31_K0_KEY_ENCRYPTION_KEY", "name" => "TR31_K0_KEY_ENCRYPTION_KEY"}, {"value" => "TR31_K1_KEY_BLOCK_PROTECTION_KEY", "name" => "TR31_K1_KEY_BLOCK_PROTECTION_KEY"}, {"value" => "TR31_K3_ASYMMETRIC_KEY_FOR_KEY_AGREEMENT", "name" => "TR31_K3_ASYMMETRIC_KEY_FOR_KEY_AGREEMENT"}, {"value" => "TR31_M3_ISO_9797_3_MAC_KEY", "name" => "TR31_M3_ISO_9797_3_MAC_KEY"}, {"value" => "TR31_M1_ISO_9797_1_MAC_KEY", "name" => "TR31_M1_ISO_9797_1_MAC_KEY"}, {"value" => "TR31_M6_ISO_9797_5_CMAC_KEY", "name" => "TR31_M6_ISO_9797_5_CMAC_KEY"}, {"value" => "TR31_M7_HMAC_KEY", "name" => "TR31_M7_HMAC_KEY"}, {"value" => "TR31_P0_PIN_ENCRYPTION_KEY", "name" => "TR31_P0_PIN_ENCRYPTION_KEY"}, {"value" => "TR31_P1_PIN_GENERATION_KEY", "name" => "TR31_P1_PIN_GENERATION_KEY"}, {"value" => "TR31_S0_ASYMMETRIC_KEY_FOR_DIGITAL_SIGNATURE", "name" => "TR31_S0_ASYMMETRIC_KEY_FOR_DIGITAL_SIGNATURE"}, {"value" => "TR31_V1_IBM3624_PIN_VERIFICATION_KEY", "name" => "TR31_V1_IBM3624_PIN_VERIFICATION_KEY"}, {"value" => "TR31_V2_VISA_PIN_VERIFICATION_KEY", "name" => "TR31_V2_VISA_PIN_VERIFICATION_KEY"}, {"value" => "TR31_K2_TR34_ASYMMETRIC_KEY", "name" => "TR31_K2_TR34_ASYMMETRIC_KEY"}]})
    KeyVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#KeyVersion', name: 'KeyVersion', traits: {"smithy.api#length" => {"min" => 2, "max" => 2}, "smithy.api#pattern" => "^[0-9A-Z]{2}+$"})
    ListAliasesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ListAliasesInput', name: 'ListAliasesInput')
    ListAliasesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ListAliasesOutput', name: 'ListAliasesOutput')
    ListKeysInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ListKeysInput', name: 'ListKeysInput')
    ListKeysOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ListKeysOutput', name: 'ListKeysOutput')
    ListTagsForResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.paymentcryptography#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 8192}})
    OptionalBlockId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#OptionalBlockId', name: 'OptionalBlockId', traits: {"smithy.api#length" => {"min" => 2, "max" => 2}, "smithy.api#pattern" => "^[0-9A-Z]{2}+$", "smithy.api#sensitive" => {}})
    OptionalBlockValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#OptionalBlockValue', name: 'OptionalBlockValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 108}, "smithy.api#pattern" => "^[0-9A-Z]+$", "smithy.api#sensitive" => {}})
    OptionalBlocks = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.paymentcryptography#OptionalBlocks', name: 'OptionalBlocks')
    ResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#ResourceArn', name: 'ResourceArn', traits: {"smithy.api#length" => {"min" => 70, "max" => 150}, "smithy.api#pattern" => "^arn:aws:payment-cryptography:[a-z]{2}-[a-z]{1,16}-[0-9]+:[0-9]{12}:key/[0-9a-zA-Z]{16,64}$"})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RestoreKeyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#RestoreKeyInput', name: 'RestoreKeyInput')
    RestoreKeyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#RestoreKeyOutput', name: 'RestoreKeyOutput')
    RootCertificatePublicKey = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#RootCertificatePublicKey', name: 'RootCertificatePublicKey')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ServiceUnavailableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ServiceUnavailableException', name: 'ServiceUnavailableException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    SharedInformation = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#SharedInformation', name: 'SharedInformation', traits: {"smithy.api#length" => {"min" => 2, "max" => 2048}, "smithy.api#pattern" => "^(?:[0-9a-fA-F][0-9a-fA-F])+$"})
    StartKeyUsageInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#StartKeyUsageInput', name: 'StartKeyUsageInput')
    StartKeyUsageOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#StartKeyUsageOutput', name: 'StartKeyUsageOutput')
    StopKeyUsageInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#StopKeyUsageInput', name: 'StopKeyUsageInput')
    StopKeyUsageOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#StopKeyUsageOutput', name: 'StopKeyUsageOutput')
    SymmetricKeyAlgorithm = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.paymentcryptography#SymmetricKeyAlgorithm', name: 'SymmetricKeyAlgorithm')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.paymentcryptography#TagKeys', name: 'TagKeys', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#TagResourceOutput', name: 'TagResourceOutput')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Tags = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.paymentcryptography#Tags', name: 'Tags', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.paymentcryptography#Timestamp', name: 'Timestamp')
    Tr31WrappedKeyBlock = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#Tr31WrappedKeyBlock', name: 'Tr31WrappedKeyBlock', traits: {"smithy.api#length" => {"min" => 56, "max" => 9984}, "smithy.api#pattern" => "^[0-9A-Z]+$", "smithy.api#sensitive" => {}})
    Tr34KeyBlockFormat = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#Tr34KeyBlockFormat', name: 'Tr34KeyBlockFormat', traits: {"smithy.api#enum" => [{"value" => "X9_TR34_2012", "name" => "X9_TR34_2012"}]})
    Tr34WrappedKeyBlock = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#Tr34WrappedKeyBlock', name: 'Tr34WrappedKeyBlock', traits: {"smithy.api#length" => {"min" => 2, "max" => 4096}, "smithy.api#pattern" => "^[0-9A-F]+$", "smithy.api#sensitive" => {}})
    TrustedCertificatePublicKey = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#TrustedCertificatePublicKey', name: 'TrustedCertificatePublicKey')
    UntagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateAliasInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#UpdateAliasInput', name: 'UpdateAliasInput')
    UpdateAliasOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#UpdateAliasOutput', name: 'UpdateAliasOutput')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    WrappedKey = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.paymentcryptography#WrappedKey', name: 'WrappedKey')
    WrappedKeyCryptogram = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#WrappedKeyCryptogram', name: 'WrappedKeyCryptogram', traits: {"smithy.api#length" => {"min" => 16, "max" => 4096}, "smithy.api#pattern" => "^[0-9A-F]+$", "smithy.api#sensitive" => {}})
    WrappedKeyMaterialFormat = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#WrappedKeyMaterialFormat', name: 'WrappedKeyMaterialFormat', traits: {"smithy.api#enum" => [{"value" => "KEY_CRYPTOGRAM", "name" => "KEY_CRYPTOGRAM"}, {"value" => "TR31_KEY_BLOCK", "name" => "TR31_KEY_BLOCK"}, {"value" => "TR34_KEY_BLOCK", "name" => "TR34_KEY_BLOCK"}]})
    WrappingKeySpec = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.paymentcryptography#WrappingKeySpec', name: 'WrappingKeySpec', traits: {"smithy.api#enum" => [{"value" => "RSA_OAEP_SHA_256", "name" => "RSA_OAEP_SHA_256"}, {"value" => "RSA_OAEP_SHA_512", "name" => "RSA_OAEP_SHA_512"}]})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    AccessDeniedException.type = Types::AccessDeniedException
    Alias.add_member(:alias_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AliasName, location_name: 'AliasName', traits: {"smithy.api#documentation" => "<p>A friendly name that you can use to refer to a key. The value must begin with <code>alias/</code>.</p> <important> <p>Do not include confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p> </important>", "smithy.api#required" => {}}))
    Alias.add_member(:key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArn, location_name: 'KeyArn', traits: {"smithy.api#documentation" => "<p>The <code>KeyARN</code> of the key associated with the alias.</p>"}))
    Alias.type = Types::Alias
    Aliases.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Alias)
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    ConflictException.type = Types::ConflictException
    CreateAliasInput.add_member(:alias_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AliasName, location_name: 'AliasName', traits: {"aws.cloudformation#cfnMutability" => "create", "smithy.api#documentation" => "<p>A friendly name that you can use to refer to a key. An alias must begin with <code>alias/</code> followed by a name, for example <code>alias/ExampleAlias</code>. It can contain only alphanumeric characters, forward slashes (/), underscores (_), and dashes (-).</p> <important> <p>Don't include personal, confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p> </important>", "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    CreateAliasInput.add_member(:key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArn, location_name: 'KeyArn', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#documentation" => "<p>The <code>KeyARN</code> of the key to associate with the alias.</p>", "smithy.api#suppress" => ["UnstableTrait"]}))
    CreateAliasInput.type = Types::CreateAliasInput
    CreateAliasOutput.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: Alias, location_name: 'Alias', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The alias for the key.</p>", "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    CreateAliasOutput.type = Types::CreateAliasOutput
    CreateKeyInput.add_member(:key_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyAttributes, location_name: 'KeyAttributes', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#documentation" => "<p>The role of the key, the algorithm it supports, and the cryptographic operations allowed with the key. This data is immutable after the key is created.</p>", "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    CreateKeyInput.add_member(:key_check_value_algorithm, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyCheckValueAlgorithm, location_name: 'KeyCheckValueAlgorithm', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#documentation" => "<p>The algorithm that Amazon Web Services Payment Cryptography uses to calculate the key check value (KCV). It is used to validate the key integrity.</p> <p>For TDES keys, the KCV is computed by encrypting 8 bytes, each with value of zero, with the key to be checked and retaining the 3 highest order bytes of the encrypted result. For AES keys, the KCV is computed using a CMAC algorithm where the input data is 16 bytes of zero and retaining the 3 highest order bytes of the encrypted result.</p>", "smithy.api#suppress" => ["UnstableTrait"]}))
    CreateKeyInput.add_member(:exportable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'Exportable', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#documentation" => "<p>Specifies whether the key is exportable from the service.</p>", "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    CreateKeyInput.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'Enabled', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#documentation" => "<p>Specifies whether to enable the key. If the key is enabled, it is activated for use within the service. If the key is not enabled, then it is created but not activated. The default value is enabled.</p>", "smithy.api#suppress" => ["UnstableTrait"]}))
    CreateKeyInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#documentation" => "<p>Assigns one or more tags to the Amazon Web Services Payment Cryptography key. Use this parameter to tag a key when it is created. To tag an existing Amazon Web Services Payment Cryptography key, use the <a href=\"https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_TagResource.html\">TagResource</a> operation.</p> <p>Each tag consists of a tag key and a tag value. Both the tag key and the tag value are required, but the tag value can be an empty (null) string. You can't have more than one tag on an Amazon Web Services Payment Cryptography key with the same tag key. </p> <important> <p>Don't include personal, confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p> </important> <note> <p>Tagging or untagging an Amazon Web Services Payment Cryptography key can allow or deny permission to the key.</p> </note>", "smithy.api#suppress" => ["UnstableTrait"]}))
    CreateKeyInput.add_member(:derive_key_usage, Smithy::Schema::Shapes::ShapeRef.new(shape: DeriveKeyUsage, location_name: 'DeriveKeyUsage', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#documentation" => "<p>The intended cryptographic usage of keys derived from the ECC key pair to be created.</p> <p>After creating an ECC key pair, you cannot change the intended cryptographic usage of keys derived from it using ECDH.</p>", "smithy.api#suppress" => ["UnstableTrait"]}))
    CreateKeyInput.type = Types::CreateKeyInput
    CreateKeyOutput.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: 'Key', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The key material that contains all the key attributes.</p>", "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    CreateKeyOutput.type = Types::CreateKeyOutput
    DeleteAliasInput.add_member(:alias_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AliasName, location_name: 'AliasName', traits: {"smithy.api#documentation" => "<p>A friendly name that you can use to refer Amazon Web Services Payment Cryptography key. This value must begin with <code>alias/</code> followed by a name, such as <code>alias/ExampleAlias</code>.</p>", "smithy.api#required" => {}}))
    DeleteAliasInput.type = Types::DeleteAliasInput
    DeleteAliasOutput.type = Types::DeleteAliasOutput
    DeleteKeyInput.add_member(:key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, location_name: 'KeyIdentifier', traits: {"smithy.api#documentation" => "<p>The <code>KeyARN</code> of the key that is scheduled for deletion.</p>", "smithy.api#required" => {}}))
    DeleteKeyInput.add_member(:delete_key_in_days, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'DeleteKeyInDays', traits: {"smithy.api#documentation" => "<p>The waiting period for key deletion. The default value is seven days.</p>", "smithy.api#range" => {"min" => 3, "max" => 180}}))
    DeleteKeyInput.type = Types::DeleteKeyInput
    DeleteKeyOutput.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: 'Key', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The <code>KeyARN</code> of the key that is scheduled for deletion.</p>", "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    DeleteKeyOutput.type = Types::DeleteKeyOutput
    DiffieHellmanDerivationData.add_member(:shared_information, Types::DiffieHellmanDerivationData::SharedInformation, Smithy::Schema::Shapes::ShapeRef.new(shape: SharedInformation, location_name: 'SharedInformation', traits: {"smithy.api#documentation" => "<p>A string containing information that binds the ECDH derived key to the two parties involved or to the context of the key.</p> <p>It may include details like identities of the two parties deriving the key, context of the operation, session IDs, and optionally a nonce. It must not contain zero bytes. It is not recommended to reuse shared information for multiple ECDH key derivations, as it could result in derived key material being the same across different derivations.</p>"}))
    DiffieHellmanDerivationData.add_member(:unknown, Types::DiffieHellmanDerivationData::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    DiffieHellmanDerivationData.type = Types::DiffieHellmanDerivationData
    ExportAttributes.add_member(:export_dukpt_initial_key, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportDukptInitialKey, location_name: 'ExportDukptInitialKey', traits: {"smithy.api#documentation" => "<p>Parameter information for IPEK export.</p>"}))
    ExportAttributes.add_member(:key_check_value_algorithm, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyCheckValueAlgorithm, location_name: 'KeyCheckValueAlgorithm', traits: {"smithy.api#documentation" => "<p>The algorithm that Amazon Web Services Payment Cryptography uses to calculate the key check value (KCV). It is used to validate the key integrity. Specify KCV for IPEK export only.</p> <p>For TDES keys, the KCV is computed by encrypting 8 bytes, each with value of zero, with the key to be checked and retaining the 3 highest order bytes of the encrypted result. For AES keys, the KCV is computed using a CMAC algorithm where the input data is 16 bytes of zero and retaining the 3 highest order bytes of the encrypted result.</p>"}))
    ExportAttributes.type = Types::ExportAttributes
    ExportDiffieHellmanTr31KeyBlock.add_member(:private_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, location_name: 'PrivateKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The <code>keyARN</code> of the asymmetric ECC key created within Amazon Web Services Payment Cryptography.</p>", "smithy.api#required" => {}}))
    ExportDiffieHellmanTr31KeyBlock.add_member(:certificate_authority_public_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, location_name: 'CertificateAuthorityPublicKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The <code>keyARN</code> of the CA that signed the <code>PublicKeyCertificate</code> for the client's receiving ECC key pair.</p>", "smithy.api#required" => {}}))
    ExportDiffieHellmanTr31KeyBlock.add_member(:public_key_certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateType, location_name: 'PublicKeyCertificate', traits: {"smithy.api#documentation" => "<p>The public key certificate of the client's receiving ECC key pair, in PEM format (base64 encoded), to use for ECDH key derivation.</p>", "smithy.api#required" => {}}))
    ExportDiffieHellmanTr31KeyBlock.add_member(:derive_key_algorithm, Smithy::Schema::Shapes::ShapeRef.new(shape: SymmetricKeyAlgorithm, location_name: 'DeriveKeyAlgorithm', traits: {"smithy.api#documentation" => "<p>The key algorithm of the shared derived ECDH key.</p>", "smithy.api#required" => {}}))
    ExportDiffieHellmanTr31KeyBlock.add_member(:key_derivation_function, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyDerivationFunction, location_name: 'KeyDerivationFunction', traits: {"smithy.api#documentation" => "<p>The key derivation function to use when deriving a key using ECDH.</p>", "smithy.api#required" => {}}))
    ExportDiffieHellmanTr31KeyBlock.add_member(:key_derivation_hash_algorithm, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyDerivationHashAlgorithm, location_name: 'KeyDerivationHashAlgorithm', traits: {"smithy.api#documentation" => "<p>The hash type to use when deriving a key using ECDH.</p>", "smithy.api#required" => {}}))
    ExportDiffieHellmanTr31KeyBlock.add_member(:derivation_data, Smithy::Schema::Shapes::ShapeRef.new(shape: DiffieHellmanDerivationData, location_name: 'DerivationData', traits: {"smithy.api#documentation" => "<p>The shared information used when deriving a key using ECDH.</p>", "smithy.api#required" => {}}))
    ExportDiffieHellmanTr31KeyBlock.add_member(:key_block_headers, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyBlockHeaders, location_name: 'KeyBlockHeaders'))
    ExportDiffieHellmanTr31KeyBlock.type = Types::ExportDiffieHellmanTr31KeyBlock
    ExportDukptInitialKey.add_member(:key_serial_number, Smithy::Schema::Shapes::ShapeRef.new(shape: HexLength20Or24, location_name: 'KeySerialNumber', traits: {"smithy.api#documentation" => "<p>The KSN for IPEK generation using DUKPT. </p> <p>KSN must be padded before sending to Amazon Web Services Payment Cryptography. KSN hex length should be 20 for a TDES_2KEY key or 24 for an AES key.</p>", "smithy.api#required" => {}}))
    ExportDukptInitialKey.type = Types::ExportDukptInitialKey
    ExportKeyCryptogram.add_member(:certificate_authority_public_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, location_name: 'CertificateAuthorityPublicKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The <code>KeyARN</code> of the certificate chain that signs the wrapping key certificate during RSA wrap and unwrap key export.</p>", "smithy.api#required" => {}}))
    ExportKeyCryptogram.add_member(:wrapping_key_certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateType, location_name: 'WrappingKeyCertificate', traits: {"smithy.api#documentation" => "<p>The wrapping key certificate in PEM format (base64 encoded). Amazon Web Services Payment Cryptography uses this certificate to wrap the key under export.</p>", "smithy.api#required" => {}}))
    ExportKeyCryptogram.add_member(:wrapping_spec, Smithy::Schema::Shapes::ShapeRef.new(shape: WrappingKeySpec, location_name: 'WrappingSpec', traits: {"smithy.api#documentation" => "<p>The wrapping spec for the key under export.</p>"}))
    ExportKeyCryptogram.type = Types::ExportKeyCryptogram
    ExportKeyInput.add_member(:key_material, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportKeyMaterial, location_name: 'KeyMaterial', traits: {"smithy.api#documentation" => "<p>The key block format type, for example, TR-34 or TR-31, to use during key material export.</p>", "smithy.api#required" => {}}))
    ExportKeyInput.add_member(:export_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, location_name: 'ExportKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The <code>KeyARN</code> of the key under export from Amazon Web Services Payment Cryptography.</p>", "smithy.api#required" => {}}))
    ExportKeyInput.add_member(:export_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportAttributes, location_name: 'ExportAttributes', traits: {"smithy.api#documentation" => "<p>The attributes for IPEK generation during export.</p>"}))
    ExportKeyInput.type = Types::ExportKeyInput
    ExportKeyMaterial.add_member(:tr31_key_block, Types::ExportKeyMaterial::Tr31KeyBlock, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTr31KeyBlock, location_name: 'Tr31KeyBlock', traits: {"smithy.api#documentation" => "<p>Parameter information for key material export using symmetric TR-31 key exchange method.</p>"}))
    ExportKeyMaterial.add_member(:tr34_key_block, Types::ExportKeyMaterial::Tr34KeyBlock, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTr34KeyBlock, location_name: 'Tr34KeyBlock', traits: {"smithy.api#documentation" => "<p>Parameter information for key material export using the asymmetric TR-34 key exchange method.</p>"}))
    ExportKeyMaterial.add_member(:key_cryptogram, Types::ExportKeyMaterial::KeyCryptogram, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportKeyCryptogram, location_name: 'KeyCryptogram', traits: {"smithy.api#documentation" => "<p>Parameter information for key material export using asymmetric RSA wrap and unwrap key exchange method</p>"}))
    ExportKeyMaterial.add_member(:diffie_hellman_tr31_key_block, Types::ExportKeyMaterial::DiffieHellmanTr31KeyBlock, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportDiffieHellmanTr31KeyBlock, location_name: 'DiffieHellmanTr31KeyBlock', traits: {"smithy.api#documentation" => "<p>Key derivation parameter information for key material export using asymmetric ECDH key exchange method.</p>"}))
    ExportKeyMaterial.add_member(:unknown, Types::ExportKeyMaterial::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ExportKeyMaterial.type = Types::ExportKeyMaterial
    ExportKeyOutput.add_member(:wrapped_key, Smithy::Schema::Shapes::ShapeRef.new(shape: WrappedKey, location_name: 'WrappedKey', traits: {"smithy.api#documentation" => "<p>The key material under export as a TR-34 WrappedKeyBlock or a TR-31 WrappedKeyBlock. or a RSA WrappedKeyCryptogram.</p>"}))
    ExportKeyOutput.type = Types::ExportKeyOutput
    ExportTr31KeyBlock.add_member(:wrapping_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, location_name: 'WrappingKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The <code>KeyARN</code> of the the wrapping key. This key encrypts or wraps the key under export for TR-31 key block generation.</p>", "smithy.api#required" => {}}))
    ExportTr31KeyBlock.add_member(:key_block_headers, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyBlockHeaders, location_name: 'KeyBlockHeaders', traits: {"smithy.api#documentation" => "<p>Optional metadata for export associated with the key material. This data is signed but transmitted in clear text.</p>"}))
    ExportTr31KeyBlock.type = Types::ExportTr31KeyBlock
    ExportTr34KeyBlock.add_member(:certificate_authority_public_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, location_name: 'CertificateAuthorityPublicKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The <code>KeyARN</code> of the certificate chain that signs the wrapping key certificate during TR-34 key export.</p>", "smithy.api#required" => {}}))
    ExportTr34KeyBlock.add_member(:wrapping_key_certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateType, location_name: 'WrappingKeyCertificate', traits: {"smithy.api#documentation" => "<p>The <code>KeyARN</code> of the wrapping key certificate. Amazon Web Services Payment Cryptography uses this certificate to wrap the key under export.</p>", "smithy.api#required" => {}}))
    ExportTr34KeyBlock.add_member(:export_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTokenId, location_name: 'ExportToken', traits: {"smithy.api#documentation" => "<p>The export token to initiate key export from Amazon Web Services Payment Cryptography. It also contains the signing key certificate that will sign the wrapped key during TR-34 key block generation. Call <a href=\"https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetParametersForExport.html\">GetParametersForExport</a> to receive an export token. It expires after 30 days. You can use the same export token to export multiple keys from the same service account.</p>", "smithy.api#required" => {}}))
    ExportTr34KeyBlock.add_member(:key_block_format, Smithy::Schema::Shapes::ShapeRef.new(shape: Tr34KeyBlockFormat, location_name: 'KeyBlockFormat', traits: {"smithy.api#documentation" => "<p>The format of key block that Amazon Web Services Payment Cryptography will use during key export.</p>", "smithy.api#required" => {}}))
    ExportTr34KeyBlock.add_member(:random_nonce, Smithy::Schema::Shapes::ShapeRef.new(shape: EvenHexLengthBetween16And32, location_name: 'RandomNonce', traits: {"smithy.api#documentation" => "<p>A random number value that is unique to the TR-34 key block generated using 2 pass. The operation will fail, if a random nonce value is not provided for a TR-34 key block generated using 2 pass.</p>"}))
    ExportTr34KeyBlock.add_member(:key_block_headers, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyBlockHeaders, location_name: 'KeyBlockHeaders', traits: {"smithy.api#documentation" => "<p>Optional metadata for export associated with the key material. This data is signed but transmitted in clear text.</p>"}))
    ExportTr34KeyBlock.type = Types::ExportTr34KeyBlock
    GetAliasInput.add_member(:alias_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AliasName, location_name: 'AliasName', traits: {"smithy.api#documentation" => "<p>The alias of the Amazon Web Services Payment Cryptography key.</p>", "smithy.api#required" => {}}))
    GetAliasInput.type = Types::GetAliasInput
    GetAliasOutput.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: Alias, location_name: 'Alias', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The alias of the Amazon Web Services Payment Cryptography key.</p>", "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    GetAliasOutput.type = Types::GetAliasOutput
    GetKeyInput.add_member(:key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, location_name: 'KeyIdentifier', traits: {"smithy.api#documentation" => "<p>The <code>KeyARN</code> of the Amazon Web Services Payment Cryptography key.</p>", "smithy.api#required" => {}}))
    GetKeyInput.type = Types::GetKeyInput
    GetKeyOutput.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: 'Key', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The key material, including the immutable and mutable data for the key.</p>", "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    GetKeyOutput.type = Types::GetKeyOutput
    GetParametersForExportInput.add_member(:key_material_type, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyMaterialType, location_name: 'KeyMaterialType', traits: {"smithy.api#documentation" => "<p>The key block format type (for example, TR-34 or TR-31) to use during key material export. Export token is only required for a TR-34 key export, <code>TR34_KEY_BLOCK</code>. Export token is not required for TR-31 key export.</p>", "smithy.api#required" => {}}))
    GetParametersForExportInput.add_member(:signing_key_algorithm, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyAlgorithm, location_name: 'SigningKeyAlgorithm', traits: {"smithy.api#documentation" => "<p>The signing key algorithm to generate a signing key certificate. This certificate signs the wrapped key under export within the TR-34 key block. <code>RSA_2048</code> is the only signing key algorithm allowed.</p>", "smithy.api#required" => {}}))
    GetParametersForExportInput.type = Types::GetParametersForExportInput
    GetParametersForExportOutput.add_member(:signing_key_certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateType, location_name: 'SigningKeyCertificate', traits: {"smithy.api#documentation" => "<p>The signing key certificate in PEM format (base64 encoded) of the public key for signature within the TR-34 key block. The certificate expires after 30 days.</p>", "smithy.api#required" => {}}))
    GetParametersForExportOutput.add_member(:signing_key_certificate_chain, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateType, location_name: 'SigningKeyCertificateChain', traits: {"smithy.api#documentation" => "<p>The root certificate authority (CA) that signed the signing key certificate in PEM format (base64 encoded).</p>", "smithy.api#required" => {}}))
    GetParametersForExportOutput.add_member(:signing_key_algorithm, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyAlgorithm, location_name: 'SigningKeyAlgorithm', traits: {"smithy.api#documentation" => "<p>The algorithm of the signing key certificate for use in TR-34 key block generation. <code>RSA_2048</code> is the only signing key algorithm allowed.</p>", "smithy.api#required" => {}}))
    GetParametersForExportOutput.add_member(:export_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTokenId, location_name: 'ExportToken', traits: {"smithy.api#documentation" => "<p>The export token to initiate key export from Amazon Web Services Payment Cryptography. The export token expires after 30 days. You can use the same export token to export multiple keys from the same service account.</p>", "smithy.api#required" => {}}))
    GetParametersForExportOutput.add_member(:parameters_valid_until_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ParametersValidUntilTimestamp', traits: {"smithy.api#documentation" => "<p>The validity period of the export token.</p>", "smithy.api#required" => {}}))
    GetParametersForExportOutput.type = Types::GetParametersForExportOutput
    GetParametersForImportInput.add_member(:key_material_type, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyMaterialType, location_name: 'KeyMaterialType', traits: {"smithy.api#documentation" => "<p>The method to use for key material import. Import token is only required for TR-34 WrappedKeyBlock (<code>TR34_KEY_BLOCK</code>) and RSA WrappedKeyCryptogram (<code>KEY_CRYPTOGRAM</code>).</p> <p>Import token is not required for TR-31, root public key cerificate or trusted public key certificate.</p>", "smithy.api#required" => {}}))
    GetParametersForImportInput.add_member(:wrapping_key_algorithm, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyAlgorithm, location_name: 'WrappingKeyAlgorithm', traits: {"smithy.api#documentation" => "<p>The wrapping key algorithm to generate a wrapping key certificate. This certificate wraps the key under import.</p> <p>At this time, <code>RSA_2048</code> is the allowed algorithm for TR-34 WrappedKeyBlock import. Additionally, <code>RSA_2048</code>, <code>RSA_3072</code>, <code>RSA_4096</code> are the allowed algorithms for RSA WrappedKeyCryptogram import.</p>", "smithy.api#required" => {}}))
    GetParametersForImportInput.type = Types::GetParametersForImportInput
    GetParametersForImportOutput.add_member(:wrapping_key_certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateType, location_name: 'WrappingKeyCertificate', traits: {"smithy.api#documentation" => "<p>The wrapping key certificate in PEM format (base64 encoded) of the wrapping key for use within the TR-34 key block. The certificate expires in 30 days.</p>", "smithy.api#required" => {}}))
    GetParametersForImportOutput.add_member(:wrapping_key_certificate_chain, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateType, location_name: 'WrappingKeyCertificateChain', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Payment Cryptography root certificate authority (CA) that signed the wrapping key certificate in PEM format (base64 encoded).</p>", "smithy.api#required" => {}}))
    GetParametersForImportOutput.add_member(:wrapping_key_algorithm, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyAlgorithm, location_name: 'WrappingKeyAlgorithm', traits: {"smithy.api#documentation" => "<p>The algorithm of the wrapping key for use within TR-34 WrappedKeyBlock or RSA WrappedKeyCryptogram.</p>", "smithy.api#required" => {}}))
    GetParametersForImportOutput.add_member(:import_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTokenId, location_name: 'ImportToken', traits: {"smithy.api#documentation" => "<p>The import token to initiate key import into Amazon Web Services Payment Cryptography. The import token expires after 30 days. You can use the same import token to import multiple keys to the same service account.</p>", "smithy.api#required" => {}}))
    GetParametersForImportOutput.add_member(:parameters_valid_until_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ParametersValidUntilTimestamp', traits: {"smithy.api#documentation" => "<p>The validity period of the import token.</p>", "smithy.api#required" => {}}))
    GetParametersForImportOutput.type = Types::GetParametersForImportOutput
    GetPublicKeyCertificateInput.add_member(:key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, location_name: 'KeyIdentifier', traits: {"smithy.api#documentation" => "<p>The <code>KeyARN</code> of the asymmetric key pair.</p>", "smithy.api#required" => {}}))
    GetPublicKeyCertificateInput.type = Types::GetPublicKeyCertificateInput
    GetPublicKeyCertificateOutput.add_member(:key_certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateType, location_name: 'KeyCertificate', traits: {"smithy.api#documentation" => "<p>The public key component of the asymmetric key pair in a certificate PEM format (base64 encoded). It is signed by the root certificate authority (CA). The certificate expires in 90 days.</p>", "smithy.api#required" => {}}))
    GetPublicKeyCertificateOutput.add_member(:key_certificate_chain, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateType, location_name: 'KeyCertificateChain', traits: {"smithy.api#documentation" => "<p>The root certificate authority (CA) that signed the public key certificate in PEM format (base64 encoded) of the asymmetric key pair.</p>", "smithy.api#required" => {}}))
    GetPublicKeyCertificateOutput.type = Types::GetPublicKeyCertificateOutput
    ImportDiffieHellmanTr31KeyBlock.add_member(:private_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, location_name: 'PrivateKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The <code>keyARN</code> of the asymmetric ECC key created within Amazon Web Services Payment Cryptography.</p>", "smithy.api#required" => {}}))
    ImportDiffieHellmanTr31KeyBlock.add_member(:certificate_authority_public_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, location_name: 'CertificateAuthorityPublicKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The <code>keyARN</code> of the CA that signed the <code>PublicKeyCertificate</code> for the client's receiving ECC key pair.</p>", "smithy.api#required" => {}}))
    ImportDiffieHellmanTr31KeyBlock.add_member(:public_key_certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateType, location_name: 'PublicKeyCertificate', traits: {"smithy.api#documentation" => "<p>The public key certificate of the client's receiving ECC key pair, in PEM format (base64 encoded), to use for ECDH key derivation.</p>", "smithy.api#required" => {}}))
    ImportDiffieHellmanTr31KeyBlock.add_member(:derive_key_algorithm, Smithy::Schema::Shapes::ShapeRef.new(shape: SymmetricKeyAlgorithm, location_name: 'DeriveKeyAlgorithm', traits: {"smithy.api#documentation" => "<p>The key algorithm of the shared derived ECDH key.</p>", "smithy.api#required" => {}}))
    ImportDiffieHellmanTr31KeyBlock.add_member(:key_derivation_function, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyDerivationFunction, location_name: 'KeyDerivationFunction', traits: {"smithy.api#documentation" => "<p>The key derivation function to use when deriving a key using ECDH.</p>", "smithy.api#required" => {}}))
    ImportDiffieHellmanTr31KeyBlock.add_member(:key_derivation_hash_algorithm, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyDerivationHashAlgorithm, location_name: 'KeyDerivationHashAlgorithm', traits: {"smithy.api#documentation" => "<p>The hash type to use when deriving a key using ECDH.</p>", "smithy.api#required" => {}}))
    ImportDiffieHellmanTr31KeyBlock.add_member(:derivation_data, Smithy::Schema::Shapes::ShapeRef.new(shape: DiffieHellmanDerivationData, location_name: 'DerivationData', traits: {"smithy.api#documentation" => "<p>The shared information used when deriving a key using ECDH.</p>", "smithy.api#required" => {}}))
    ImportDiffieHellmanTr31KeyBlock.add_member(:wrapped_key_block, Smithy::Schema::Shapes::ShapeRef.new(shape: Tr31WrappedKeyBlock, location_name: 'WrappedKeyBlock', traits: {"smithy.api#documentation" => "<p>The ECDH wrapped key block to import.</p>", "smithy.api#required" => {}}))
    ImportDiffieHellmanTr31KeyBlock.type = Types::ImportDiffieHellmanTr31KeyBlock
    ImportKeyCryptogram.add_member(:key_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyAttributes, location_name: 'KeyAttributes', traits: {"smithy.api#required" => {}}))
    ImportKeyCryptogram.add_member(:exportable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'Exportable', traits: {"smithy.api#documentation" => "<p>Specifies whether the key is exportable from the service.</p>", "smithy.api#required" => {}}))
    ImportKeyCryptogram.add_member(:wrapped_key_cryptogram, Smithy::Schema::Shapes::ShapeRef.new(shape: WrappedKeyCryptogram, location_name: 'WrappedKeyCryptogram', traits: {"smithy.api#documentation" => "<p>The RSA wrapped key cryptogram under import.</p>", "smithy.api#required" => {}}))
    ImportKeyCryptogram.add_member(:import_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTokenId, location_name: 'ImportToken', traits: {"smithy.api#documentation" => "<p>The import token that initiates key import using the asymmetric RSA wrap and unwrap key exchange method into AWS Payment Cryptography. It expires after 30 days. You can use the same import token to import multiple keys to the same service account.</p>", "smithy.api#required" => {}}))
    ImportKeyCryptogram.add_member(:wrapping_spec, Smithy::Schema::Shapes::ShapeRef.new(shape: WrappingKeySpec, location_name: 'WrappingSpec', traits: {"smithy.api#documentation" => "<p>The wrapping spec for the wrapped key cryptogram.</p>"}))
    ImportKeyCryptogram.type = Types::ImportKeyCryptogram
    ImportKeyInput.add_member(:key_material, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportKeyMaterial, location_name: 'KeyMaterial', traits: {"smithy.api#documentation" => "<p>The key or public key certificate type to use during key material import, for example TR-34 or RootCertificatePublicKey.</p>", "smithy.api#required" => {}}))
    ImportKeyInput.add_member(:key_check_value_algorithm, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyCheckValueAlgorithm, location_name: 'KeyCheckValueAlgorithm', traits: {"smithy.api#documentation" => "<p>The algorithm that Amazon Web Services Payment Cryptography uses to calculate the key check value (KCV). It is used to validate the key integrity.</p> <p>For TDES keys, the KCV is computed by encrypting 8 bytes, each with value of zero, with the key to be checked and retaining the 3 highest order bytes of the encrypted result. For AES keys, the KCV is computed using a CMAC algorithm where the input data is 16 bytes of zero and retaining the 3 highest order bytes of the encrypted result.</p>"}))
    ImportKeyInput.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Specifies whether import key is enabled.</p>"}))
    ImportKeyInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Assigns one or more tags to the Amazon Web Services Payment Cryptography key. Use this parameter to tag a key when it is imported. To tag an existing Amazon Web Services Payment Cryptography key, use the <a href=\"https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_TagResource.html\">TagResource</a> operation.</p> <p>Each tag consists of a tag key and a tag value. Both the tag key and the tag value are required, but the tag value can be an empty (null) string. You can't have more than one tag on an Amazon Web Services Payment Cryptography key with the same tag key. If you specify an existing tag key with a different tag value, Amazon Web Services Payment Cryptography replaces the current tag value with the specified one.</p> <important> <p>Don't include personal, confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p> </important> <note> <p>Tagging or untagging an Amazon Web Services Payment Cryptography key can allow or deny permission to the key.</p> </note>"}))
    ImportKeyInput.type = Types::ImportKeyInput
    ImportKeyMaterial.add_member(:root_certificate_public_key, Types::ImportKeyMaterial::RootCertificatePublicKey, Smithy::Schema::Shapes::ShapeRef.new(shape: RootCertificatePublicKey, location_name: 'RootCertificatePublicKey', traits: {"smithy.api#documentation" => "<p>Parameter information for root public key certificate import.</p>"}))
    ImportKeyMaterial.add_member(:trusted_certificate_public_key, Types::ImportKeyMaterial::TrustedCertificatePublicKey, Smithy::Schema::Shapes::ShapeRef.new(shape: TrustedCertificatePublicKey, location_name: 'TrustedCertificatePublicKey', traits: {"smithy.api#documentation" => "<p>Parameter information for trusted public key certificate import.</p>"}))
    ImportKeyMaterial.add_member(:tr31_key_block, Types::ImportKeyMaterial::Tr31KeyBlock, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTr31KeyBlock, location_name: 'Tr31KeyBlock', traits: {"smithy.api#documentation" => "<p>Parameter information for key material import using symmetric TR-31 key exchange method.</p>"}))
    ImportKeyMaterial.add_member(:tr34_key_block, Types::ImportKeyMaterial::Tr34KeyBlock, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTr34KeyBlock, location_name: 'Tr34KeyBlock', traits: {"smithy.api#documentation" => "<p>Parameter information for key material import using the asymmetric TR-34 key exchange method.</p>"}))
    ImportKeyMaterial.add_member(:key_cryptogram, Types::ImportKeyMaterial::KeyCryptogram, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportKeyCryptogram, location_name: 'KeyCryptogram', traits: {"smithy.api#documentation" => "<p>Parameter information for key material import using asymmetric RSA wrap and unwrap key exchange method.</p>"}))
    ImportKeyMaterial.add_member(:diffie_hellman_tr31_key_block, Types::ImportKeyMaterial::DiffieHellmanTr31KeyBlock, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportDiffieHellmanTr31KeyBlock, location_name: 'DiffieHellmanTr31KeyBlock', traits: {"smithy.api#documentation" => "<p>Key derivation parameter information for key material import using asymmetric ECDH key exchange method.</p>"}))
    ImportKeyMaterial.add_member(:unknown, Types::ImportKeyMaterial::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ImportKeyMaterial.type = Types::ImportKeyMaterial
    ImportKeyOutput.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The <code>KeyARN</code> of the key material imported within Amazon Web Services Payment Cryptography.</p>", "smithy.api#required" => {}}))
    ImportKeyOutput.type = Types::ImportKeyOutput
    ImportTr31KeyBlock.add_member(:wrapping_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, location_name: 'WrappingKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The <code>KeyARN</code> of the key that will decrypt or unwrap a TR-31 key block during import.</p>", "smithy.api#required" => {}}))
    ImportTr31KeyBlock.add_member(:wrapped_key_block, Smithy::Schema::Shapes::ShapeRef.new(shape: Tr31WrappedKeyBlock, location_name: 'WrappedKeyBlock', traits: {"smithy.api#documentation" => "<p>The TR-31 wrapped key block to import.</p>", "smithy.api#required" => {}}))
    ImportTr31KeyBlock.type = Types::ImportTr31KeyBlock
    ImportTr34KeyBlock.add_member(:certificate_authority_public_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, location_name: 'CertificateAuthorityPublicKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The <code>KeyARN</code> of the certificate chain that signs the signing key certificate during TR-34 key import.</p>", "smithy.api#required" => {}}))
    ImportTr34KeyBlock.add_member(:signing_key_certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateType, location_name: 'SigningKeyCertificate', traits: {"smithy.api#documentation" => "<p>The public key component in PEM certificate format of the private key that signs the KDH TR-34 WrappedKeyBlock.</p>", "smithy.api#required" => {}}))
    ImportTr34KeyBlock.add_member(:import_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTokenId, location_name: 'ImportToken', traits: {"smithy.api#documentation" => "<p>The import token that initiates key import using the asymmetric TR-34 key exchange method into Amazon Web Services Payment Cryptography. It expires after 30 days. You can use the same import token to import multiple keys to the same service account.</p>", "smithy.api#required" => {}}))
    ImportTr34KeyBlock.add_member(:wrapped_key_block, Smithy::Schema::Shapes::ShapeRef.new(shape: Tr34WrappedKeyBlock, location_name: 'WrappedKeyBlock', traits: {"smithy.api#documentation" => "<p>The TR-34 wrapped key block to import.</p>", "smithy.api#required" => {}}))
    ImportTr34KeyBlock.add_member(:key_block_format, Smithy::Schema::Shapes::ShapeRef.new(shape: Tr34KeyBlockFormat, location_name: 'KeyBlockFormat', traits: {"smithy.api#documentation" => "<p>The key block format to use during key import. The only value allowed is <code>X9_TR34_2012</code>.</p>", "smithy.api#required" => {}}))
    ImportTr34KeyBlock.add_member(:random_nonce, Smithy::Schema::Shapes::ShapeRef.new(shape: EvenHexLengthBetween16And32, location_name: 'RandomNonce', traits: {"smithy.api#documentation" => "<p>A random number value that is unique to the TR-34 key block generated using 2 pass. The operation will fail, if a random nonce value is not provided for a TR-34 key block generated using 2 pass.</p>"}))
    ImportTr34KeyBlock.type = Types::ImportTr34KeyBlock
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    InternalServerException.type = Types::InternalServerException
    Key.add_member(:key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArn, location_name: 'KeyArn', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the key.</p>", "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    Key.add_member(:key_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyAttributes, location_name: 'KeyAttributes', traits: {"smithy.api#documentation" => "<p>The role of the key, the algorithm it supports, and the cryptographic operations allowed with the key. This data is immutable after the key is created.</p>", "smithy.api#required" => {}}))
    Key.add_member(:key_check_value, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyCheckValue, location_name: 'KeyCheckValue', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The key check value (KCV) is used to check if all parties holding a given key have the same key or to detect that a key has changed.</p>", "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    Key.add_member(:key_check_value_algorithm, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyCheckValueAlgorithm, location_name: 'KeyCheckValueAlgorithm', traits: {"smithy.api#documentation" => "<p>The algorithm that Amazon Web Services Payment Cryptography uses to calculate the key check value (KCV). It is used to validate the key integrity.</p> <p>For TDES keys, the KCV is computed by encrypting 8 bytes, each with value of zero, with the key to be checked and retaining the 3 highest order bytes of the encrypted result. For AES keys, the KCV is computed using a CMAC algorithm where the input data is 16 bytes of zero and retaining the 3 highest order bytes of the encrypted result.</p>", "smithy.api#required" => {}}))
    Key.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Specifies whether the key is enabled. </p>", "smithy.api#required" => {}}))
    Key.add_member(:exportable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'Exportable', traits: {"smithy.api#documentation" => "<p>Specifies whether the key is exportable. This data is immutable after the key is created.</p>", "smithy.api#required" => {}}))
    Key.add_member(:key_state, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyState, location_name: 'KeyState', traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#documentation" => "<p>The state of key that is being created or deleted.</p>", "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    Key.add_member(:key_origin, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyOrigin, location_name: 'KeyOrigin', traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#documentation" => "<p>The source of the key material. For keys created within Amazon Web Services Payment Cryptography, the value is <code>AWS_PAYMENT_CRYPTOGRAPHY</code>. For keys imported into Amazon Web Services Payment Cryptography, the value is <code>EXTERNAL</code>.</p>", "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    Key.add_member(:create_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreateTimestamp', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The date and time when the key was created.</p>", "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    Key.add_member(:usage_start_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UsageStartTimestamp', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The date and time after which Amazon Web Services Payment Cryptography will start using the key material for cryptographic operations.</p>", "smithy.api#suppress" => ["UnstableTrait"]}))
    Key.add_member(:usage_stop_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UsageStopTimestamp', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The date and time after which Amazon Web Services Payment Cryptography will stop using the key material for cryptographic operations.</p>", "smithy.api#suppress" => ["UnstableTrait"]}))
    Key.add_member(:delete_pending_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DeletePendingTimestamp', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The date and time after which Amazon Web Services Payment Cryptography will delete the key. This value is present only when <code>KeyState</code> is <code>DELETE_PENDING</code> and the key is scheduled for deletion.</p>", "smithy.api#suppress" => ["UnstableTrait"]}))
    Key.add_member(:delete_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DeleteTimestamp', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The date and time after which Amazon Web Services Payment Cryptography will delete the key. This value is present only when when the <code>KeyState</code> is <code>DELETE_COMPLETE</code> and the Amazon Web Services Payment Cryptography key is deleted.</p>", "smithy.api#suppress" => ["UnstableTrait"]}))
    Key.add_member(:derive_key_usage, Smithy::Schema::Shapes::ShapeRef.new(shape: DeriveKeyUsage, location_name: 'DeriveKeyUsage', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The cryptographic usage of an ECDH derived key as deﬁned in section A.5.2 of the TR-31 spec.</p>", "smithy.api#suppress" => ["UnstableTrait"]}))
    Key.type = Types::Key
    KeyAttributes.add_member(:key_usage, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyUsage, location_name: 'KeyUsage', traits: {"smithy.api#documentation" => "<p>The cryptographic usage of an Amazon Web Services Payment Cryptography key as deﬁned in section A.5.2 of the TR-31 spec.</p>", "smithy.api#required" => {}}))
    KeyAttributes.add_member(:key_class, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyClass, location_name: 'KeyClass', traits: {"smithy.api#documentation" => "<p>The type of Amazon Web Services Payment Cryptography key to create, which determines the classiﬁcation of the cryptographic method and whether Amazon Web Services Payment Cryptography key contains a symmetric key or an asymmetric key pair.</p>", "smithy.api#required" => {}}))
    KeyAttributes.add_member(:key_algorithm, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyAlgorithm, location_name: 'KeyAlgorithm', traits: {"smithy.api#documentation" => "<p>The key algorithm to be use during creation of an Amazon Web Services Payment Cryptography key.</p> <p>For symmetric keys, Amazon Web Services Payment Cryptography supports <code>AES</code> and <code>TDES</code> algorithms. For asymmetric keys, Amazon Web Services Payment Cryptography supports <code>RSA</code> and <code>ECC_NIST</code> algorithms.</p>", "smithy.api#required" => {}}))
    KeyAttributes.add_member(:key_modes_of_use, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyModesOfUse, location_name: 'KeyModesOfUse', traits: {"smithy.api#documentation" => "<p>The list of cryptographic operations that you can perform using the key.</p>", "smithy.api#required" => {}}))
    KeyAttributes.type = Types::KeyAttributes
    KeyBlockHeaders.add_member(:key_modes_of_use, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyModesOfUse, location_name: 'KeyModesOfUse'))
    KeyBlockHeaders.add_member(:key_exportability, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyExportability, location_name: 'KeyExportability', traits: {"smithy.api#documentation" => "<p>Specifies subsequent exportability of the key within the key block after it is received by the receiving party. It can be used to further restrict exportability of the key after export from Amazon Web Services Payment Cryptography.</p> <p>When set to <code>EXPORTABLE</code>, the key can be subsequently exported by the receiver under a KEK using TR-31 or TR-34 key block export only. When set to <code>NON_EXPORTABLE</code>, the key cannot be subsequently exported by the receiver. When set to <code>SENSITIVE</code>, the key can be exported by the receiver under a KEK using TR-31, TR-34, RSA wrap and unwrap cryptogram or using a symmetric cryptogram key export method. For further information refer to <a href=\"https://webstore.ansi.org/standards/ascx9/ansix91432022\">ANSI X9.143-2022</a>.</p>"}))
    KeyBlockHeaders.add_member(:key_version, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyVersion, location_name: 'KeyVersion', traits: {"smithy.api#documentation" => "<p>Parameter used to indicate the version of the key carried in the key block or indicate the value carried in the key block is a component of a key.</p>"}))
    KeyBlockHeaders.add_member(:optional_blocks, Smithy::Schema::Shapes::ShapeRef.new(shape: OptionalBlocks, location_name: 'OptionalBlocks', traits: {"smithy.api#documentation" => "<p>Parameter used to indicate the type of optional data in key block headers. Refer to <a href=\"https://webstore.ansi.org/standards/ascx9/ansix91432022\">ANSI X9.143-2022</a> for information on allowed data type for optional blocks.</p> <p>Optional block character limit is 112 characters. For each optional block, 2 characters are reserved for optional block ID and 2 characters reserved for optional block length. More than one optional blocks can be included as long as the combined length does not increase 112 characters.</p>"}))
    KeyBlockHeaders.type = Types::KeyBlockHeaders
    KeyDerivationFunction.add_member(:nist_sp800, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NIST_SP800', traits: {"smithy.api#enumValue" => "NIST_SP800"}))
    KeyDerivationFunction.add_member(:ansi_x963, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANSI_X963', traits: {"smithy.api#enumValue" => "ANSI_X963"}))
    KeyDerivationHashAlgorithm.add_member(:sha_256, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHA_256', traits: {"smithy.api#enumValue" => "SHA_256"}))
    KeyDerivationHashAlgorithm.add_member(:sha_384, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHA_384', traits: {"smithy.api#enumValue" => "SHA_384"}))
    KeyDerivationHashAlgorithm.add_member(:sha_512, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHA_512', traits: {"smithy.api#enumValue" => "SHA_512"}))
    KeyModesOfUse.add_member(:encrypt, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'Encrypt', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Speciﬁes whether an Amazon Web Services Payment Cryptography key can be used to encrypt data.</p>"}))
    KeyModesOfUse.add_member(:decrypt, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'Decrypt', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Speciﬁes whether an Amazon Web Services Payment Cryptography key can be used to decrypt data.</p>"}))
    KeyModesOfUse.add_member(:wrap, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'Wrap', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Speciﬁes whether an Amazon Web Services Payment Cryptography key can be used to wrap other keys.</p>"}))
    KeyModesOfUse.add_member(:unwrap, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'Unwrap', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Speciﬁes whether an Amazon Web Services Payment Cryptography key can be used to unwrap other keys.</p>"}))
    KeyModesOfUse.add_member(:generate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'Generate', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Speciﬁes whether an Amazon Web Services Payment Cryptography key can be used to generate and verify other card and PIN verification keys.</p>"}))
    KeyModesOfUse.add_member(:sign, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'Sign', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Speciﬁes whether an Amazon Web Services Payment Cryptography key can be used for signing.</p>"}))
    KeyModesOfUse.add_member(:verify, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'Verify', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Speciﬁes whether an Amazon Web Services Payment Cryptography key can be used to verify signatures.</p>"}))
    KeyModesOfUse.add_member(:derive_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'DeriveKey', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Speciﬁes whether an Amazon Web Services Payment Cryptography key can be used to derive new keys.</p>"}))
    KeyModesOfUse.add_member(:no_restrictions, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'NoRestrictions', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Speciﬁes whether an Amazon Web Services Payment Cryptography key has no special restrictions other than the restrictions implied by <code>KeyUsage</code>.</p>"}))
    KeyModesOfUse.type = Types::KeyModesOfUse
    KeySummary.add_member(:key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArn, location_name: 'KeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the key.</p>", "smithy.api#required" => {}}))
    KeySummary.add_member(:key_state, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyState, location_name: 'KeyState', traits: {"smithy.api#documentation" => "<p>The state of an Amazon Web Services Payment Cryptography that is being created or deleted.</p>", "smithy.api#required" => {}}))
    KeySummary.add_member(:key_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyAttributes, location_name: 'KeyAttributes', traits: {"smithy.api#documentation" => "<p>The role of the key, the algorithm it supports, and the cryptographic operations allowed with the key. This data is immutable after the key is created.</p>", "smithy.api#required" => {}}))
    KeySummary.add_member(:key_check_value, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyCheckValue, location_name: 'KeyCheckValue', traits: {"smithy.api#documentation" => "<p>The key check value (KCV) is used to check if all parties holding a given key have the same key or to detect that a key has changed.</p>", "smithy.api#required" => {}}))
    KeySummary.add_member(:exportable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'Exportable', traits: {"smithy.api#documentation" => "<p>Specifies whether the key is exportable. This data is immutable after the key is created.</p>", "smithy.api#required" => {}}))
    KeySummary.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Specifies whether the key is enabled. </p>", "smithy.api#required" => {}}))
    KeySummary.type = Types::KeySummary
    KeySummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: KeySummary)
    ListAliasesInput.add_member(:key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArn, location_name: 'KeyArn', traits: {"smithy.api#documentation" => "<p>The <code>keyARN</code> for which you want to list all aliases.</p>"}))
    ListAliasesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of <code>NextToken</code> from the truncated response you just received.</p>"}))
    ListAliasesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Use this parameter to specify the maximum number of items to return. When this value is present, Amazon Web Services Payment Cryptography does not return more than the specified number of items, but it might return fewer.</p> <p>This value is optional. If you include a value, it must be between 1 and 100, inclusive. If you do not include a value, it defaults to 50.</p>"}))
    ListAliasesInput.type = Types::ListAliasesInput
    ListAliasesOutput.add_member(:aliases, Smithy::Schema::Shapes::ShapeRef.new(shape: Aliases, location_name: 'Aliases', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The list of aliases. Each alias describes the <code>KeyArn</code> contained within.</p>", "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    ListAliasesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or an empty or null value if there are no more results.</p>"}))
    ListAliasesOutput.type = Types::ListAliasesOutput
    ListKeysInput.add_member(:key_state, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyState, location_name: 'KeyState', traits: {"smithy.api#documentation" => "<p>The key state of the keys you want to list.</p>"}))
    ListKeysInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of <code>NextToken</code> from the truncated response you just received.</p>"}))
    ListKeysInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Use this parameter to specify the maximum number of items to return. When this value is present, Amazon Web Services Payment Cryptography does not return more than the specified number of items, but it might return fewer.</p> <p>This value is optional. If you include a value, it must be between 1 and 100, inclusive. If you do not include a value, it defaults to 50.</p>"}))
    ListKeysInput.type = Types::ListKeysInput
    ListKeysOutput.add_member(:keys, Smithy::Schema::Shapes::ShapeRef.new(shape: KeySummaryList, location_name: 'Keys', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The list of keys created within the caller's Amazon Web Services account and Amazon Web Services Region.</p>", "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    ListKeysOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or an empty or null value if there are no more results.</p>"}))
    ListKeysOutput.type = Types::ListKeysOutput
    ListTagsForResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The <code>KeyARN</code> of the key whose tags you are getting.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of <code>NextToken</code> from the truncated response you just received.</p>"}))
    ListTagsForResourceInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Use this parameter to specify the maximum number of items to return. When this value is present, Amazon Web Services Payment Cryptography does not return more than the specified number of items, but it might return fewer.</p> <p>This value is optional. If you include a value, it must be between 1 and 100, inclusive. If you do not include a value, it defaults to 50.</p>"}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of tags associated with a <code>ResourceArn</code>. Each tag will list the key-value pair contained within that tag.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results, or an empty or null value if there are no more results.</p>"}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    OptionalBlocks.key = Smithy::Schema::Shapes::ShapeRef.new(shape: OptionalBlockId)
    OptionalBlocks.value = Smithy::Schema::Shapes::ShapeRef.new(shape: OptionalBlockValue)
    ResourceNotFoundException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The string for the exception.</p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RestoreKeyInput.add_member(:key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, location_name: 'KeyIdentifier', traits: {"smithy.api#documentation" => "<p>The <code>KeyARN</code> of the key to be restored within Amazon Web Services Payment Cryptography.</p>", "smithy.api#required" => {}}))
    RestoreKeyInput.type = Types::RestoreKeyInput
    RestoreKeyOutput.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: 'Key', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The key material of the restored key. The <code>KeyState</code> will change to <code>CREATE_COMPLETE</code> and value for <code>DeletePendingTimestamp</code> gets removed. </p>", "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    RestoreKeyOutput.type = Types::RestoreKeyOutput
    RootCertificatePublicKey.add_member(:key_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyAttributes, location_name: 'KeyAttributes', traits: {"smithy.api#documentation" => "<p>The role of the key, the algorithm it supports, and the cryptographic operations allowed with the key. This data is immutable after the root public key is imported.</p>", "smithy.api#required" => {}}))
    RootCertificatePublicKey.add_member(:public_key_certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateType, location_name: 'PublicKeyCertificate', traits: {"smithy.api#documentation" => "<p>Parameter information for root public key certificate import.</p>", "smithy.api#required" => {}}))
    RootCertificatePublicKey.type = Types::RootCertificatePublicKey
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ServiceUnavailableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    StartKeyUsageInput.add_member(:key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, location_name: 'KeyIdentifier', traits: {"smithy.api#documentation" => "<p>The <code>KeyArn</code> of the key.</p>", "smithy.api#required" => {}}))
    StartKeyUsageInput.type = Types::StartKeyUsageInput
    StartKeyUsageOutput.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: 'Key', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The <code>KeyARN</code> of the Amazon Web Services Payment Cryptography key activated for use.</p>", "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    StartKeyUsageOutput.type = Types::StartKeyUsageOutput
    StopKeyUsageInput.add_member(:key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, location_name: 'KeyIdentifier', traits: {"smithy.api#documentation" => "<p>The <code>KeyArn</code> of the key.</p>", "smithy.api#required" => {}}))
    StopKeyUsageInput.type = Types::StopKeyUsageInput
    StopKeyUsageOutput.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: 'Key', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The <code>KeyARN</code> of the key.</p>", "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    StopKeyUsageOutput.type = Types::StopKeyUsageOutput
    SymmetricKeyAlgorithm.add_member(:tdes_2_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TDES_2KEY', traits: {"smithy.api#enumValue" => "TDES_2KEY"}))
    SymmetricKeyAlgorithm.add_member(:tdes_3_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TDES_3KEY', traits: {"smithy.api#enumValue" => "TDES_3KEY"}))
    SymmetricKeyAlgorithm.add_member(:aes_128, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AES_128', traits: {"smithy.api#enumValue" => "AES_128"}))
    SymmetricKeyAlgorithm.add_member(:aes_192, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AES_192', traits: {"smithy.api#enumValue" => "AES_192"}))
    SymmetricKeyAlgorithm.add_member(:aes_256, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AES_256', traits: {"smithy.api#enumValue" => "AES_256"}))
    SymmetricKeyAlgorithm.add_member(:hmac_sha256, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HMAC_SHA256', traits: {"smithy.api#enumValue" => "HMAC_SHA256"}))
    SymmetricKeyAlgorithm.add_member(:hmac_sha384, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HMAC_SHA384', traits: {"smithy.api#enumValue" => "HMAC_SHA384"}))
    SymmetricKeyAlgorithm.add_member(:hmac_sha512, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HMAC_SHA512', traits: {"smithy.api#enumValue" => "HMAC_SHA512"}))
    SymmetricKeyAlgorithm.add_member(:hmac_sha224, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HMAC_SHA224', traits: {"smithy.api#enumValue" => "HMAC_SHA224"}))
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The key of the tag.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The value of the tag.</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The <code>KeyARN</code> of the key whose tags are being updated.</p>", "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>One or more tags. Each tag consists of a tag key and a tag value. The tag value can be an empty (null) string. You can't have more than one tag on an Amazon Web Services Payment Cryptography key with the same tag key. If you specify an existing tag key with a different tag value, Amazon Web Services Payment Cryptography replaces the current tag value with the new one.</p> <important> <p>Don't include personal, confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p> </important> <p>To use this parameter, you must have <a href=\"https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_TagResource.html\">TagResource</a> permission in an IAM policy.</p> <important> <p>Don't include personal, confidential or sensitive information in this field. This field may be displayed in plaintext in CloudTrail logs and other output.</p> </important>", "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    Tags.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    ThrottlingException.type = Types::ThrottlingException
    TrustedCertificatePublicKey.add_member(:key_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyAttributes, location_name: 'KeyAttributes', traits: {"smithy.api#documentation" => "<p>The role of the key, the algorithm it supports, and the cryptographic operations allowed with the key. This data is immutable after a trusted public key is imported.</p>", "smithy.api#required" => {}}))
    TrustedCertificatePublicKey.add_member(:public_key_certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateType, location_name: 'PublicKeyCertificate', traits: {"smithy.api#documentation" => "<p>Parameter information for trusted public key certificate import.</p>", "smithy.api#required" => {}}))
    TrustedCertificatePublicKey.add_member(:certificate_authority_public_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, location_name: 'CertificateAuthorityPublicKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The <code>KeyARN</code> of the root public key certificate or certificate chain that signs the trusted public key certificate import.</p>", "smithy.api#required" => {}}))
    TrustedCertificatePublicKey.type = Types::TrustedCertificatePublicKey
    UntagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The <code>KeyARN</code> of the key whose tags are being removed.</p>", "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>One or more tag keys. Don't include the tag values.</p> <p>If the Amazon Web Services Payment Cryptography key doesn't have the specified tag key, Amazon Web Services Payment Cryptography doesn't throw an exception or return a response. To confirm that the operation succeeded, use the <a href=\"https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ListTagsForResource.html\">ListTagsForResource</a> operation.</p>", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateAliasInput.add_member(:alias_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AliasName, location_name: 'AliasName', traits: {"smithy.api#documentation" => "<p>The alias whose associated key is changing.</p>", "smithy.api#required" => {}}))
    UpdateAliasInput.add_member(:key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArn, location_name: 'KeyArn', traits: {"smithy.api#documentation" => "<p>The <code>KeyARN</code> for the key that you are updating or removing from the alias.</p>"}))
    UpdateAliasInput.type = Types::UpdateAliasInput
    UpdateAliasOutput.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: Alias, location_name: 'Alias', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The alias name.</p>", "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    UpdateAliasOutput.type = Types::UpdateAliasOutput
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'Message'))
    ValidationException.type = Types::ValidationException
    WrappedKey.add_member(:wrapping_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyArn, location_name: 'WrappingKeyArn', traits: {"smithy.api#documentation" => "<p>The <code>KeyARN</code> of the wrapped key.</p>", "smithy.api#required" => {}}))
    WrappedKey.add_member(:wrapped_key_material_format, Smithy::Schema::Shapes::ShapeRef.new(shape: WrappedKeyMaterialFormat, location_name: 'WrappedKeyMaterialFormat', traits: {"smithy.api#documentation" => "<p>The key block format of a wrapped key.</p>", "smithy.api#required" => {}}))
    WrappedKey.add_member(:key_material, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyMaterial, location_name: 'KeyMaterial', traits: {"smithy.api#documentation" => "<p>Parameter information for generating a wrapped key using TR-31 or TR-34 skey exchange method.</p>", "smithy.api#required" => {}}))
    WrappedKey.add_member(:key_check_value, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyCheckValue, location_name: 'KeyCheckValue', traits: {"smithy.api#documentation" => "<p>The key check value (KCV) is used to check if all parties holding a given key have the same key or to detect that a key has changed.</p>"}))
    WrappedKey.add_member(:key_check_value_algorithm, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyCheckValueAlgorithm, location_name: 'KeyCheckValueAlgorithm', traits: {"smithy.api#documentation" => "<p>The algorithm that Amazon Web Services Payment Cryptography uses to calculate the key check value (KCV). It is used to validate the key integrity.</p> <p>For TDES keys, the KCV is computed by encrypting 8 bytes, each with value of zero, with the key to be checked and retaining the 3 highest order bytes of the encrypted result. For AES keys, the KCV is computed using a CMAC algorithm where the input data is 16 bytes of zero and retaining the 3 highest order bytes of the encrypted result.</p>"}))
    WrappedKey.type = Types::WrappedKey

    PaymentCryptographyControlPlane = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.paymentcryptography#PaymentCryptographyControlPlane"
      service.name = "PaymentCryptographyControlPlane"
      service.version = "2021-09-14"
      service.traits = {"aws.api#service" => {"sdkId" => "Payment Cryptography", "arnNamespace" => "payment-cryptography", "endpointPrefix" => "controlplane.payment-cryptography", "cloudFormationName" => "PaymentCryptography"}, "aws.auth#sigv4" => {"name" => "payment-cryptography"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#cors" => {}, "smithy.api#title" => "Payment Cryptography Control Plane"}
      service.add_operation(:create_alias, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#CreateAlias"
        operation.name = "CreateAlias"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAliasInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAliasOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_key, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#CreateKey"
        operation.name = "CreateKey"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateKeyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateKeyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}}
      end)
      service.add_operation(:delete_alias, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#DeleteAlias"
        operation.name = "DeleteAlias"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAliasInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAliasOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_key, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#DeleteKey"
        operation.name = "DeleteKey"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteKeyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteKeyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:export_key, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#ExportKey"
        operation.name = "ExportKey"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ExportKeyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ExportKeyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}}
      end)
      service.add_operation(:get_alias, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#GetAlias"
        operation.name = "GetAlias"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAliasInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAliasOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_key, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#GetKey"
        operation.name = "GetKey"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetKeyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetKeyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_parameters_for_export, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#GetParametersForExport"
        operation.name = "GetParametersForExport"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetParametersForExportInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetParametersForExportOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}}
      end)
      service.add_operation(:get_parameters_for_import, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#GetParametersForImport"
        operation.name = "GetParametersForImport"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetParametersForImportInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetParametersForImportOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}}
      end)
      service.add_operation(:get_public_key_certificate, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#GetPublicKeyCertificate"
        operation.name = "GetPublicKeyCertificate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPublicKeyCertificateInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPublicKeyCertificateOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:import_key, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#ImportKey"
        operation.name = "ImportKey"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportKeyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportKeyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}}
      end)
      service.add_operation(:list_aliases, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#ListAliases"
        operation.name = "ListAliases"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAliasesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAliasesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAliases.new
      end)
      service.add_operation(:list_keys, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#ListKeys"
        operation.name = "ListKeys"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListKeysInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListKeysOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListKeys.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:restore_key, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#RestoreKey"
        operation.name = "RestoreKey"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreKeyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreKeyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}}
      end)
      service.add_operation(:start_key_usage, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#StartKeyUsage"
        operation.name = "StartKeyUsage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartKeyUsageInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartKeyUsageOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}}
      end)
      service.add_operation(:stop_key_usage, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#StopKeyUsage"
        operation.name = "StopKeyUsage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopKeyUsageInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopKeyUsageOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}}
      end)
      service.add_operation(:update_alias, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#UpdateAlias"
        operation.name = "UpdateAlias"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAliasInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAliasOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
