# frozen_string_literal: true

# This is generated code!

module Aws::PaymentCryptography
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AddKeyReplicationRegionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#AddKeyReplicationRegionsInput", name: "AddKeyReplicationRegionsInput")
    AddKeyReplicationRegionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#AddKeyReplicationRegionsOutput", name: "AddKeyReplicationRegionsOutput")
    Alias = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#Alias", name: "Alias")
    AliasName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#AliasName", name: "AliasName", traits: {"smithy.api#length" => {"min" => 7, "max" => 256}, "smithy.api#pattern" => "^alias/[a-zA-Z0-9/_-]+$"})
    Aliases = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.paymentcryptography#Aliases", name: "Aliases")
    As2805KeyVariant = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.paymentcryptography#As2805KeyVariant", name: "As2805KeyVariant")
    AssociateMpaTeamInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#AssociateMpaTeamInput", name: "AssociateMpaTeamInput")
    AssociateMpaTeamOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#AssociateMpaTeamOutput", name: "AssociateMpaTeamOutput")
    AssociationState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#AssociationState", name: "AssociationState", traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "UPDATE_PENDING", "name" => "UPDATE_PENDING"}, {"value" => "DELETE_PENDING", "name" => "DELETE_PENDING"}]})
    CertificateSigningRequestType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#CertificateSigningRequestType", name: "CertificateSigningRequestType", traits: {"smithy.api#length" => {"min" => 1, "max" => 32768}, "smithy.api#pattern" => "^[^\\[;\\]<>]+$", "smithy.api#sensitive" => {}})
    CertificateSubjectType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#CertificateSubjectType", name: "CertificateSubjectType")
    CertificateType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#CertificateType", name: "CertificateType", traits: {"smithy.api#length" => {"min" => 1, "max" => 32768}, "smithy.api#pattern" => "^[^\\[;\\]<>]+$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateAliasInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#CreateAliasInput", name: "CreateAliasInput")
    CreateAliasOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#CreateAliasOutput", name: "CreateAliasOutput")
    CreateKeyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#CreateKeyInput", name: "CreateKeyInput")
    CreateKeyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#CreateKeyOutput", name: "CreateKeyOutput")
    DeleteAliasInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#DeleteAliasInput", name: "DeleteAliasInput")
    DeleteAliasOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#DeleteAliasOutput", name: "DeleteAliasOutput")
    DeleteKeyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#DeleteKeyInput", name: "DeleteKeyInput")
    DeleteKeyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#DeleteKeyOutput", name: "DeleteKeyOutput")
    DeleteResourcePolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#DeleteResourcePolicyInput", name: "DeleteResourcePolicyInput")
    DeleteResourcePolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#DeleteResourcePolicyOutput", name: "DeleteResourcePolicyOutput")
    DeriveKeyUsage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#DeriveKeyUsage", name: "DeriveKeyUsage", traits: {"smithy.api#enum" => [{"value" => "TR31_B0_BASE_DERIVATION_KEY", "name" => "TR31_B0_BASE_DERIVATION_KEY"}, {"value" => "TR31_C0_CARD_VERIFICATION_KEY", "name" => "TR31_C0_CARD_VERIFICATION_KEY"}, {"value" => "TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY", "name" => "TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY"}, {"value" => "TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS", "name" => "TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS"}, {"value" => "TR31_E1_EMV_MKEY_CONFIDENTIALITY", "name" => "TR31_E1_EMV_MKEY_CONFIDENTIALITY"}, {"value" => "TR31_E2_EMV_MKEY_INTEGRITY", "name" => "TR31_E2_EMV_MKEY_INTEGRITY"}, {"value" => "TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS", "name" => "TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS"}, {"value" => "TR31_E5_EMV_MKEY_CARD_PERSONALIZATION", "name" => "TR31_E5_EMV_MKEY_CARD_PERSONALIZATION"}, {"value" => "TR31_E6_EMV_MKEY_OTHER", "name" => "TR31_E6_EMV_MKEY_OTHER"}, {"value" => "TR31_K0_KEY_ENCRYPTION_KEY", "name" => "TR31_K0_KEY_ENCRYPTION_KEY"}, {"value" => "TR31_K1_KEY_BLOCK_PROTECTION_KEY", "name" => "TR31_K1_KEY_BLOCK_PROTECTION_KEY"}, {"value" => "TR31_M3_ISO_9797_3_MAC_KEY", "name" => "TR31_M3_ISO_9797_3_MAC_KEY"}, {"value" => "TR31_M1_ISO_9797_1_MAC_KEY", "name" => "TR31_M1_ISO_9797_1_MAC_KEY"}, {"value" => "TR31_M6_ISO_9797_5_CMAC_KEY", "name" => "TR31_M6_ISO_9797_5_CMAC_KEY"}, {"value" => "TR31_M7_HMAC_KEY", "name" => "TR31_M7_HMAC_KEY"}, {"value" => "TR31_P0_PIN_ENCRYPTION_KEY", "name" => "TR31_P0_PIN_ENCRYPTION_KEY"}, {"value" => "TR31_P1_PIN_GENERATION_KEY", "name" => "TR31_P1_PIN_GENERATION_KEY"}, {"value" => "TR31_V1_IBM3624_PIN_VERIFICATION_KEY", "name" => "TR31_V1_IBM3624_PIN_VERIFICATION_KEY"}, {"value" => "TR31_V2_VISA_PIN_VERIFICATION_KEY", "name" => "TR31_V2_VISA_PIN_VERIFICATION_KEY"}]})
    DiffieHellmanDerivationData = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.paymentcryptography#DiffieHellmanDerivationData", name: "DiffieHellmanDerivationData")
    DisableDefaultKeyReplicationRegionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#DisableDefaultKeyReplicationRegionsInput", name: "DisableDefaultKeyReplicationRegionsInput")
    DisableDefaultKeyReplicationRegionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#DisableDefaultKeyReplicationRegionsOutput", name: "DisableDefaultKeyReplicationRegionsOutput")
    DisassociateMpaTeamInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#DisassociateMpaTeamInput", name: "DisassociateMpaTeamInput")
    DisassociateMpaTeamOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#DisassociateMpaTeamOutput", name: "DisassociateMpaTeamOutput")
    EnableDefaultKeyReplicationRegionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#EnableDefaultKeyReplicationRegionsInput", name: "EnableDefaultKeyReplicationRegionsInput")
    EnableDefaultKeyReplicationRegionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#EnableDefaultKeyReplicationRegionsOutput", name: "EnableDefaultKeyReplicationRegionsOutput")
    EvenHexLengthBetween16And32 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#EvenHexLengthBetween16And32", name: "EvenHexLengthBetween16And32", traits: {"smithy.api#length" => {"min" => 16, "max" => 32}, "smithy.api#pattern" => "^(?:[0-9a-fA-F][0-9a-fA-F])+$"})
    ExportAs2805KeyCryptogram = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#ExportAs2805KeyCryptogram", name: "ExportAs2805KeyCryptogram")
    ExportAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#ExportAttributes", name: "ExportAttributes")
    ExportDiffieHellmanTr31KeyBlock = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#ExportDiffieHellmanTr31KeyBlock", name: "ExportDiffieHellmanTr31KeyBlock")
    ExportDukptInitialKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#ExportDukptInitialKey", name: "ExportDukptInitialKey")
    ExportKeyCryptogram = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#ExportKeyCryptogram", name: "ExportKeyCryptogram")
    ExportKeyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#ExportKeyInput", name: "ExportKeyInput")
    ExportKeyMaterial = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.paymentcryptography#ExportKeyMaterial", name: "ExportKeyMaterial")
    ExportKeyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#ExportKeyOutput", name: "ExportKeyOutput")
    ExportTokenId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#ExportTokenId", name: "ExportTokenId", traits: {"smithy.api#pattern" => "^(export-token-[0-9a-zA-Z]{16,64})?$"})
    ExportTr31KeyBlock = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#ExportTr31KeyBlock", name: "ExportTr31KeyBlock")
    ExportTr34KeyBlock = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#ExportTr34KeyBlock", name: "ExportTr34KeyBlock")
    GetAliasInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#GetAliasInput", name: "GetAliasInput")
    GetAliasOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#GetAliasOutput", name: "GetAliasOutput")
    GetCertificateSigningRequestInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#GetCertificateSigningRequestInput", name: "GetCertificateSigningRequestInput")
    GetCertificateSigningRequestOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#GetCertificateSigningRequestOutput", name: "GetCertificateSigningRequestOutput")
    GetDefaultKeyReplicationRegionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#GetDefaultKeyReplicationRegionsInput", name: "GetDefaultKeyReplicationRegionsInput")
    GetDefaultKeyReplicationRegionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#GetDefaultKeyReplicationRegionsOutput", name: "GetDefaultKeyReplicationRegionsOutput")
    GetKeyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#GetKeyInput", name: "GetKeyInput")
    GetKeyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#GetKeyOutput", name: "GetKeyOutput")
    GetMpaTeamAssociationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#GetMpaTeamAssociationInput", name: "GetMpaTeamAssociationInput")
    GetMpaTeamAssociationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#GetMpaTeamAssociationOutput", name: "GetMpaTeamAssociationOutput")
    GetParametersForExportInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#GetParametersForExportInput", name: "GetParametersForExportInput")
    GetParametersForExportOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#GetParametersForExportOutput", name: "GetParametersForExportOutput")
    GetParametersForImportInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#GetParametersForImportInput", name: "GetParametersForImportInput")
    GetParametersForImportOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#GetParametersForImportOutput", name: "GetParametersForImportOutput")
    GetPublicKeyCertificateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#GetPublicKeyCertificateInput", name: "GetPublicKeyCertificateInput")
    GetPublicKeyCertificateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#GetPublicKeyCertificateOutput", name: "GetPublicKeyCertificateOutput")
    GetResourcePolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#GetResourcePolicyInput", name: "GetResourcePolicyInput")
    GetResourcePolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#GetResourcePolicyOutput", name: "GetResourcePolicyOutput")
    HexLength20Or24 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#HexLength20Or24", name: "HexLength20Or24", traits: {"smithy.api#length" => {"min" => 20, "max" => 24}, "smithy.api#pattern" => "^[0-9A-F]{20}$|^[0-9A-F]{24}$"})
    ImportAs2805KeyCryptogram = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#ImportAs2805KeyCryptogram", name: "ImportAs2805KeyCryptogram")
    ImportDiffieHellmanTr31KeyBlock = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#ImportDiffieHellmanTr31KeyBlock", name: "ImportDiffieHellmanTr31KeyBlock")
    ImportKeyCryptogram = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#ImportKeyCryptogram", name: "ImportKeyCryptogram")
    ImportKeyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#ImportKeyInput", name: "ImportKeyInput")
    ImportKeyMaterial = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.paymentcryptography#ImportKeyMaterial", name: "ImportKeyMaterial")
    ImportKeyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#ImportKeyOutput", name: "ImportKeyOutput")
    ImportTokenId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#ImportTokenId", name: "ImportTokenId", traits: {"smithy.api#pattern" => "^(import-token-[0-9a-zA-Z]{16,64})?$"})
    ImportTr31KeyBlock = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#ImportTr31KeyBlock", name: "ImportTr31KeyBlock")
    ImportTr34KeyBlock = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#ImportTr34KeyBlock", name: "ImportTr34KeyBlock")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    Key = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#Key", name: "Key", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.paymentcryptography#KeyResource", "service" => "com.amazonaws.paymentcryptography#PaymentCryptographyControlPlane", "ids" => {"KeyIdentifier" => "KeyArn"}}]})
    KeyAlgorithm = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#KeyAlgorithm", name: "KeyAlgorithm", traits: {"smithy.api#enum" => [{"value" => "TDES_2KEY", "name" => "TDES_2KEY"}, {"value" => "TDES_3KEY", "name" => "TDES_3KEY"}, {"value" => "AES_128", "name" => "AES_128"}, {"value" => "AES_192", "name" => "AES_192"}, {"value" => "AES_256", "name" => "AES_256"}, {"value" => "HMAC_SHA256", "name" => "HMAC_SHA256"}, {"value" => "HMAC_SHA384", "name" => "HMAC_SHA384"}, {"value" => "HMAC_SHA512", "name" => "HMAC_SHA512"}, {"value" => "HMAC_SHA224", "name" => "HMAC_SHA224"}, {"value" => "RSA_2048", "name" => "RSA_2048"}, {"value" => "RSA_3072", "name" => "RSA_3072"}, {"value" => "RSA_4096", "name" => "RSA_4096"}, {"value" => "ECC_NIST_P256", "name" => "ECC_NIST_P256"}, {"value" => "ECC_NIST_P384", "name" => "ECC_NIST_P384"}, {"value" => "ECC_NIST_P521", "name" => "ECC_NIST_P521"}]})
    KeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#KeyArn", name: "KeyArn", traits: {"smithy.api#length" => {"min" => 70, "max" => 150}, "smithy.api#pattern" => "^arn:aws:payment-cryptography:[a-z]{2}-[a-z]{1,16}-[0-9]+:[0-9]{12}:key/[0-9a-zA-Z]{16,64}$"})
    KeyArnOrKeyAliasType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#KeyArnOrKeyAliasType", name: "KeyArnOrKeyAliasType", traits: {"smithy.api#length" => {"min" => 7, "max" => 322}, "smithy.api#pattern" => "^arn:aws:payment-cryptography:[a-z]{2}-[a-z]{1,16}-[0-9]+:[0-9]{12}:(key/[0-9a-zA-Z]{16,64}|alias/[a-zA-Z0-9/_-]+)$|^alias/[a-zA-Z0-9/_-]+$"})
    KeyAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#KeyAttributes", name: "KeyAttributes")
    KeyBlockHeaders = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#KeyBlockHeaders", name: "KeyBlockHeaders")
    KeyCheckValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#KeyCheckValue", name: "KeyCheckValue", traits: {"smithy.api#length" => {"min" => 4, "max" => 16}, "smithy.api#pattern" => "^[0-9a-fA-F]+$"})
    KeyCheckValueAlgorithm = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#KeyCheckValueAlgorithm", name: "KeyCheckValueAlgorithm", traits: {"smithy.api#enum" => [{"value" => "CMAC", "name" => "CMAC"}, {"value" => "ANSI_X9_24", "name" => "ANSI_X9_24"}, {"value" => "HMAC", "name" => "HMAC"}, {"value" => "SHA_1", "name" => "SHA_1"}]})
    KeyClass = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#KeyClass", name: "KeyClass", traits: {"smithy.api#enum" => [{"value" => "SYMMETRIC_KEY", "name" => "SYMMETRIC_KEY"}, {"value" => "ASYMMETRIC_KEY_PAIR", "name" => "ASYMMETRIC_KEY_PAIR"}, {"value" => "PRIVATE_KEY", "name" => "PRIVATE_KEY"}, {"value" => "PUBLIC_KEY", "name" => "PUBLIC_KEY"}]})
    KeyDerivationFunction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.paymentcryptography#KeyDerivationFunction", name: "KeyDerivationFunction")
    KeyDerivationHashAlgorithm = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.paymentcryptography#KeyDerivationHashAlgorithm", name: "KeyDerivationHashAlgorithm")
    KeyExportability = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#KeyExportability", name: "KeyExportability", traits: {"smithy.api#enum" => [{"value" => "EXPORTABLE", "name" => "EXPORTABLE"}, {"value" => "NON_EXPORTABLE", "name" => "NON_EXPORTABLE"}, {"value" => "SENSITIVE", "name" => "SENSITIVE"}]})
    KeyMaterial = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#KeyMaterial", name: "KeyMaterial", traits: {"smithy.api#length" => {"min" => 32, "max" => 16384}, "smithy.api#sensitive" => {}})
    KeyMaterialType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#KeyMaterialType", name: "KeyMaterialType", traits: {"smithy.api#enum" => [{"value" => "TR34_KEY_BLOCK", "name" => "TR34_KEY_BLOCK"}, {"value" => "TR31_KEY_BLOCK", "name" => "TR31_KEY_BLOCK"}, {"value" => "ROOT_PUBLIC_KEY_CERTIFICATE", "name" => "ROOT_PUBLIC_KEY_CERTIFICATE"}, {"value" => "TRUSTED_PUBLIC_KEY_CERTIFICATE", "name" => "TRUSTED_PUBLIC_KEY_CERTIFICATE"}, {"value" => "KEY_CRYPTOGRAM", "name" => "KEY_CRYPTOGRAM"}]})
    KeyModesOfUse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#KeyModesOfUse", name: "KeyModesOfUse")
    KeyOrigin = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#KeyOrigin", name: "KeyOrigin", traits: {"smithy.api#enum" => [{"value" => "EXTERNAL", "name" => "EXTERNAL"}, {"value" => "AWS_PAYMENT_CRYPTOGRAPHY", "name" => "AWS_PAYMENT_CRYPTOGRAPHY"}]})
    KeyReplicationState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#KeyReplicationState", name: "KeyReplicationState", traits: {"smithy.api#enum" => [{"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "DELETE_IN_PROGRESS", "name" => "DELETE_IN_PROGRESS"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "SYNCHRONIZED", "name" => "SYNCHRONIZED"}]})
    KeyState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#KeyState", name: "KeyState", traits: {"smithy.api#enum" => [{"value" => "CREATE_IN_PROGRESS", "name" => "CREATE_IN_PROGRESS"}, {"value" => "CREATE_COMPLETE", "name" => "CREATE_COMPLETE"}, {"value" => "DELETE_PENDING", "name" => "DELETE_PENDING"}, {"value" => "DELETE_COMPLETE", "name" => "DELETE_COMPLETE"}]})
    KeySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#KeySummary", name: "KeySummary")
    KeySummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.paymentcryptography#KeySummaryList", name: "KeySummaryList")
    KeyUsage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#KeyUsage", name: "KeyUsage", traits: {"smithy.api#enum" => [{"value" => "TR31_B0_BASE_DERIVATION_KEY", "name" => "TR31_B0_BASE_DERIVATION_KEY"}, {"value" => "TR31_C0_CARD_VERIFICATION_KEY", "name" => "TR31_C0_CARD_VERIFICATION_KEY"}, {"value" => "TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY", "name" => "TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY"}, {"value" => "TR31_D1_ASYMMETRIC_KEY_FOR_DATA_ENCRYPTION", "name" => "TR31_D1_ASYMMETRIC_KEY_FOR_DATA_ENCRYPTION"}, {"value" => "TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS", "name" => "TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS"}, {"value" => "TR31_E1_EMV_MKEY_CONFIDENTIALITY", "name" => "TR31_E1_EMV_MKEY_CONFIDENTIALITY"}, {"value" => "TR31_E2_EMV_MKEY_INTEGRITY", "name" => "TR31_E2_EMV_MKEY_INTEGRITY"}, {"value" => "TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS", "name" => "TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS"}, {"value" => "TR31_E5_EMV_MKEY_CARD_PERSONALIZATION", "name" => "TR31_E5_EMV_MKEY_CARD_PERSONALIZATION"}, {"value" => "TR31_E6_EMV_MKEY_OTHER", "name" => "TR31_E6_EMV_MKEY_OTHER"}, {"value" => "TR31_K0_KEY_ENCRYPTION_KEY", "name" => "TR31_K0_KEY_ENCRYPTION_KEY"}, {"value" => "TR31_K1_KEY_BLOCK_PROTECTION_KEY", "name" => "TR31_K1_KEY_BLOCK_PROTECTION_KEY"}, {"value" => "TR31_K3_ASYMMETRIC_KEY_FOR_KEY_AGREEMENT", "name" => "TR31_K3_ASYMMETRIC_KEY_FOR_KEY_AGREEMENT"}, {"value" => "TR31_M0_ISO_16609_MAC_KEY", "name" => "TR31_M0_ISO_16609_MAC_KEY"}, {"value" => "TR31_M3_ISO_9797_3_MAC_KEY", "name" => "TR31_M3_ISO_9797_3_MAC_KEY"}, {"value" => "TR31_M1_ISO_9797_1_MAC_KEY", "name" => "TR31_M1_ISO_9797_1_MAC_KEY"}, {"value" => "TR31_M6_ISO_9797_5_CMAC_KEY", "name" => "TR31_M6_ISO_9797_5_CMAC_KEY"}, {"value" => "TR31_M7_HMAC_KEY", "name" => "TR31_M7_HMAC_KEY"}, {"value" => "TR31_P0_PIN_ENCRYPTION_KEY", "name" => "TR31_P0_PIN_ENCRYPTION_KEY"}, {"value" => "TR31_P1_PIN_GENERATION_KEY", "name" => "TR31_P1_PIN_GENERATION_KEY"}, {"value" => "TR31_S0_ASYMMETRIC_KEY_FOR_DIGITAL_SIGNATURE", "name" => "TR31_S0_ASYMMETRIC_KEY_FOR_DIGITAL_SIGNATURE"}, {"value" => "TR31_V1_IBM3624_PIN_VERIFICATION_KEY", "name" => "TR31_V1_IBM3624_PIN_VERIFICATION_KEY"}, {"value" => "TR31_V2_VISA_PIN_VERIFICATION_KEY", "name" => "TR31_V2_VISA_PIN_VERIFICATION_KEY"}, {"value" => "TR31_K2_TR34_ASYMMETRIC_KEY", "name" => "TR31_K2_TR34_ASYMMETRIC_KEY"}]})
    KeyVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#KeyVersion", name: "KeyVersion", traits: {"smithy.api#length" => {"min" => 2, "max" => 2}, "smithy.api#pattern" => "^[0-9A-Z]{2}+$"})
    ListAliasesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#ListAliasesInput", name: "ListAliasesInput")
    ListAliasesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#ListAliasesOutput", name: "ListAliasesOutput")
    ListKeysInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#ListKeysInput", name: "ListKeysInput")
    ListKeysOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#ListKeysOutput", name: "ListKeysOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.paymentcryptography#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MpaOperation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#MpaOperation", name: "MpaOperation", traits: {"smithy.api#enum" => [{"value" => "IMPORT_ROOT_PUBLIC_KEY_CERTIFICATE", "name" => "IMPORT_ROOT_PUBLIC_KEY_CERTIFICATE"}]})
    MpaRequesterComment = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#MpaRequesterComment", name: "MpaRequesterComment", traits: {"smithy.api#length" => {"max" => 200}, "smithy.api#sensitive" => {}})
    MpaSessionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#MpaSessionArn", name: "MpaSessionArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:mpa:[a-z0-9-]{1,20}:[0-9]{12}:session/[a-zA-Z0-9._-]+/[a-zA-Z0-9_-]+$"})
    MpaStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#MpaStatus", name: "MpaStatus")
    MpaStatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#MpaStatusMessage", name: "MpaStatusMessage", traits: {"smithy.api#length" => {"max" => 1000}})
    MpaTeamArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#MpaTeamArn", name: "MpaTeamArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:mpa:[a-z0-9-]{1,20}:[0-9]{12}:approval-team/[a-zA-Z0-9._-]+$"})
    MpaTeamAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#MpaTeamAssociation", name: "MpaTeamAssociation")
    MultiRegionKeyType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#MultiRegionKeyType", name: "MultiRegionKeyType", traits: {"smithy.api#enum" => [{"value" => "PRIMARY", "name" => "PRIMARY"}, {"value" => "REPLICA", "name" => "REPLICA"}]})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 8192}})
    OptionalBlockId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#OptionalBlockId", name: "OptionalBlockId", traits: {"smithy.api#length" => {"min" => 2, "max" => 2}, "smithy.api#pattern" => "^[0-9A-Z]{2}+$", "smithy.api#sensitive" => {}})
    OptionalBlockValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#OptionalBlockValue", name: "OptionalBlockValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 108}, "smithy.api#pattern" => "^[0-9a-zA-Z]+$", "smithy.api#sensitive" => {}})
    OptionalBlocks = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.paymentcryptography#OptionalBlocks", name: "OptionalBlocks")
    PublicPolicyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#PublicPolicyException", name: "PublicPolicyException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    PutResourcePolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#PutResourcePolicyInput", name: "PutResourcePolicyInput")
    PutResourcePolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#PutResourcePolicyOutput", name: "PutResourcePolicyOutput")
    Region = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#Region", name: "Region", traits: {"smithy.api#pattern" => "^[a-z]{2}-[a-z]{1,16}-[0-9]+$"})
    Regions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.paymentcryptography#Regions", name: "Regions")
    RemoveKeyReplicationRegionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#RemoveKeyReplicationRegionsInput", name: "RemoveKeyReplicationRegionsInput")
    RemoveKeyReplicationRegionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#RemoveKeyReplicationRegionsOutput", name: "RemoveKeyReplicationRegionsOutput")
    ReplicationStatus = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.paymentcryptography#ReplicationStatus", name: "ReplicationStatus")
    ReplicationStatusType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#ReplicationStatusType", name: "ReplicationStatusType")
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 70, "max" => 150}, "smithy.api#pattern" => "^arn:aws:payment-cryptography:[a-z]{2}-[a-z]{1,16}-[0-9]+:[0-9]{12}:key/[0-9a-zA-Z]{16,64}$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourcePolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#ResourcePolicy", name: "ResourcePolicy", traits: {"smithy.api#length" => {"min" => 1, "max" => 20480}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+$"})
    RestoreKeyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#RestoreKeyInput", name: "RestoreKeyInput")
    RestoreKeyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#RestoreKeyOutput", name: "RestoreKeyOutput")
    RootCertificatePublicKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#RootCertificatePublicKey", name: "RootCertificatePublicKey")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#ServiceUnavailableException", name: "ServiceUnavailableException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    SessionStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#SessionStatus", name: "SessionStatus", traits: {"smithy.api#enum" => [{"value" => "PENDING", "name" => "PENDING"}, {"value" => "APPROVED", "name" => "APPROVED"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "CANCELLED", "name" => "CANCELLED"}]})
    SharedInformation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#SharedInformation", name: "SharedInformation", traits: {"smithy.api#length" => {"min" => 2, "max" => 2048}, "smithy.api#pattern" => "^(?:[0-9a-fA-F][0-9a-fA-F])+$"})
    SigningAlgorithmType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#SigningAlgorithmType", name: "SigningAlgorithmType", traits: {"smithy.api#enum" => [{"value" => "SHA224", "name" => "SHA224"}, {"value" => "SHA256", "name" => "SHA256"}, {"value" => "SHA384", "name" => "SHA384"}, {"value" => "SHA512", "name" => "SHA512"}]})
    StartKeyUsageInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#StartKeyUsageInput", name: "StartKeyUsageInput")
    StartKeyUsageOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#StartKeyUsageOutput", name: "StartKeyUsageOutput")
    StopKeyUsageInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#StopKeyUsageInput", name: "StopKeyUsageInput")
    StopKeyUsageOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#StopKeyUsageOutput", name: "StopKeyUsageOutput")
    SymmetricKeyAlgorithm = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.paymentcryptography#SymmetricKeyAlgorithm", name: "SymmetricKeyAlgorithm")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.paymentcryptography#TagKeys", name: "TagKeys", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#TagResourceInput", name: "TagResourceInput")
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#TagResourceOutput", name: "TagResourceOutput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Tags = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.paymentcryptography#Tags", name: "Tags", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.paymentcryptography#Timestamp", name: "Timestamp")
    Tr31WrappedKeyBlock = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#Tr31WrappedKeyBlock", name: "Tr31WrappedKeyBlock", traits: {"smithy.api#length" => {"min" => 56, "max" => 9984}, "smithy.api#pattern" => "^[0-9a-zA-Z]+$", "smithy.api#sensitive" => {}})
    Tr34KeyBlockFormat = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#Tr34KeyBlockFormat", name: "Tr34KeyBlockFormat", traits: {"smithy.api#enum" => [{"value" => "X9_TR34_2012", "name" => "X9_TR34_2012"}]})
    Tr34WrappedKeyBlock = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#Tr34WrappedKeyBlock", name: "Tr34WrappedKeyBlock", traits: {"smithy.api#length" => {"min" => 2, "max" => 4096}, "smithy.api#pattern" => "^[0-9A-F]+$", "smithy.api#sensitive" => {}})
    TrustedCertificatePublicKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#TrustedCertificatePublicKey", name: "TrustedCertificatePublicKey")
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#UntagResourceInput", name: "UntagResourceInput")
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#UntagResourceOutput", name: "UntagResourceOutput")
    UpdateAliasInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#UpdateAliasInput", name: "UpdateAliasInput")
    UpdateAliasOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#UpdateAliasOutput", name: "UpdateAliasOutput")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    WrappedKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptography#WrappedKey", name: "WrappedKey")
    WrappedKeyCryptogram = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#WrappedKeyCryptogram", name: "WrappedKeyCryptogram", traits: {"smithy.api#length" => {"min" => 16, "max" => 4096}, "smithy.api#pattern" => "^[0-9A-F]+$", "smithy.api#sensitive" => {}})
    WrappedKeyMaterialFormat = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#WrappedKeyMaterialFormat", name: "WrappedKeyMaterialFormat", traits: {"smithy.api#enum" => [{"value" => "KEY_CRYPTOGRAM", "name" => "KEY_CRYPTOGRAM"}, {"value" => "TR31_KEY_BLOCK", "name" => "TR31_KEY_BLOCK"}, {"value" => "TR34_KEY_BLOCK", "name" => "TR34_KEY_BLOCK"}]})
    WrappingKeySpec = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptography#WrappingKeySpec", name: "WrappingKeySpec", traits: {"smithy.api#enum" => [{"value" => "RSA_OAEP_SHA_256", "name" => "RSA_OAEP_SHA_256"}, {"value" => "RSA_OAEP_SHA_512", "name" => "RSA_OAEP_SHA_512"}]})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AddKeyReplicationRegionsInput.add_member(:key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "KeyIdentifier", traits: {"smithy.api#required" => {}}))
    AddKeyReplicationRegionsInput.add_member(:replication_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: Regions, name: "ReplicationRegions", traits: {"smithy.api#required" => {}}))
    AddKeyReplicationRegionsInput.type = Types::AddKeyReplicationRegionsInput
    AddKeyReplicationRegionsOutput.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Key, name: "Key", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    AddKeyReplicationRegionsOutput.type = Types::AddKeyReplicationRegionsOutput
    Alias.add_member(:alias_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasName, name: "AliasName", traits: {"smithy.api#required" => {}}))
    Alias.add_member(:key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArn, name: "KeyArn"))
    Alias.type = Types::Alias
    Aliases.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Alias, name: "member"))
    As2805KeyVariant.add_member(:terminal_major_key_variant_00, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINAL_MAJOR_KEY_VARIANT_00", traits: {"smithy.api#enumValue" => "TERMINAL_MAJOR_KEY_VARIANT_00"}))
    As2805KeyVariant.add_member(:pin_encryption_key_variant_28, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PIN_ENCRYPTION_KEY_VARIANT_28", traits: {"smithy.api#enumValue" => "PIN_ENCRYPTION_KEY_VARIANT_28"}))
    As2805KeyVariant.add_member(:message_authentication_key_variant_24, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MESSAGE_AUTHENTICATION_KEY_VARIANT_24", traits: {"smithy.api#enumValue" => "MESSAGE_AUTHENTICATION_KEY_VARIANT_24"}))
    As2805KeyVariant.add_member(:data_encryption_key_variant_22, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATA_ENCRYPTION_KEY_VARIANT_22", traits: {"smithy.api#enumValue" => "DATA_ENCRYPTION_KEY_VARIANT_22"}))
    AssociateMpaTeamInput.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: MpaOperation, name: "Action", traits: {"smithy.api#required" => {}}))
    AssociateMpaTeamInput.add_member(:mpa_team_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MpaTeamArn, name: "MpaTeamArn", traits: {"smithy.api#required" => {}}))
    AssociateMpaTeamInput.add_member(:requester_comment, ::Smithy::Schema::Shapes::MemberShape.new(target: MpaRequesterComment, name: "RequesterComment"))
    AssociateMpaTeamInput.type = Types::AssociateMpaTeamInput
    AssociateMpaTeamOutput.add_member(:mpa_team_association, ::Smithy::Schema::Shapes::MemberShape.new(target: MpaTeamAssociation, name: "MpaTeamAssociation", traits: {"smithy.api#required" => {}}))
    AssociateMpaTeamOutput.type = Types::AssociateMpaTeamOutput
    CertificateSubjectType.add_member(:common_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "CommonName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[^\\[;\\]<>]+$", "smithy.api#required" => {}}))
    CertificateSubjectType.add_member(:organization_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "OrganizationUnit", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[^\\[;\\]<>]+$"}))
    CertificateSubjectType.add_member(:organization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Organization", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[^\\[;\\]<>]+$"}))
    CertificateSubjectType.add_member(:city, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "City", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[^\\[;\\]<>]+$"}))
    CertificateSubjectType.add_member(:country, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Country", traits: {"smithy.api#length" => {"min" => 2, "max" => 2}, "smithy.api#pattern" => "^[A-Za-z]+$"}))
    CertificateSubjectType.add_member(:state_or_province, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "StateOrProvince", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[^\\[;\\]<>]+$"}))
    CertificateSubjectType.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "EmailAddress", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9.!\#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\\.[a-zA-Z0-9-]+)*$"}))
    CertificateSubjectType.type = Types::CertificateSubjectType
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ConflictException.type = Types::ConflictException
    CreateAliasInput.add_member(:alias_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasName, name: "AliasName", traits: {"aws.cloudformation#cfnMutability" => "create", "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    CreateAliasInput.add_member(:key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArn, name: "KeyArn", traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#suppress" => ["UnstableTrait"]}))
    CreateAliasInput.type = Types::CreateAliasInput
    CreateAliasOutput.add_member(:alias, ::Smithy::Schema::Shapes::MemberShape.new(target: Alias, name: "Alias", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    CreateAliasOutput.type = Types::CreateAliasOutput
    CreateKeyInput.add_member(:key_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyAttributes, name: "KeyAttributes", traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    CreateKeyInput.add_member(:key_check_value_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyCheckValueAlgorithm, name: "KeyCheckValueAlgorithm", traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#suppress" => ["UnstableTrait"]}))
    CreateKeyInput.add_member(:exportable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "Exportable", traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    CreateKeyInput.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "Enabled", traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#suppress" => ["UnstableTrait"]}))
    CreateKeyInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#suppress" => ["UnstableTrait"]}))
    CreateKeyInput.add_member(:derive_key_usage, ::Smithy::Schema::Shapes::MemberShape.new(target: DeriveKeyUsage, name: "DeriveKeyUsage", traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#suppress" => ["UnstableTrait"]}))
    CreateKeyInput.add_member(:replication_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: Regions, name: "ReplicationRegions", traits: {"aws.cloudformation#cfnMutability" => "write", "smithy.api#suppress" => ["UnstableTrait"]}))
    CreateKeyInput.type = Types::CreateKeyInput
    CreateKeyOutput.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Key, name: "Key", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    CreateKeyOutput.type = Types::CreateKeyOutput
    DeleteAliasInput.add_member(:alias_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasName, name: "AliasName", traits: {"smithy.api#required" => {}}))
    DeleteAliasInput.type = Types::DeleteAliasInput
    DeleteAliasOutput.type = Types::DeleteAliasOutput
    DeleteKeyInput.add_member(:key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "KeyIdentifier", traits: {"smithy.api#required" => {}}))
    DeleteKeyInput.add_member(:delete_key_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "DeleteKeyInDays", traits: {"smithy.api#range" => {"min" => 3, "max" => 180}}))
    DeleteKeyInput.type = Types::DeleteKeyInput
    DeleteKeyOutput.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Key, name: "Key", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    DeleteKeyOutput.type = Types::DeleteKeyOutput
    DeleteResourcePolicyInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    DeleteResourcePolicyInput.type = Types::DeleteResourcePolicyInput
    DeleteResourcePolicyOutput.type = Types::DeleteResourcePolicyOutput
    DiffieHellmanDerivationData.add_member(:shared_information, Types::DiffieHellmanDerivationData::SharedInformation, ::Smithy::Schema::Shapes::MemberShape.new(target: SharedInformation, name: "SharedInformation"))
    DiffieHellmanDerivationData.add_member(:unknown, Types::DiffieHellmanDerivationData::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    DiffieHellmanDerivationData.type = Types::DiffieHellmanDerivationData
    DisableDefaultKeyReplicationRegionsInput.add_member(:replication_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: Regions, name: "ReplicationRegions", traits: {"smithy.api#required" => {}}))
    DisableDefaultKeyReplicationRegionsInput.type = Types::DisableDefaultKeyReplicationRegionsInput
    DisableDefaultKeyReplicationRegionsOutput.add_member(:enabled_replication_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: Regions, name: "EnabledReplicationRegions", traits: {"smithy.api#required" => {}}))
    DisableDefaultKeyReplicationRegionsOutput.type = Types::DisableDefaultKeyReplicationRegionsOutput
    DisassociateMpaTeamInput.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: MpaOperation, name: "Action", traits: {"smithy.api#required" => {}}))
    DisassociateMpaTeamInput.add_member(:requester_comment, ::Smithy::Schema::Shapes::MemberShape.new(target: MpaRequesterComment, name: "RequesterComment"))
    DisassociateMpaTeamInput.type = Types::DisassociateMpaTeamInput
    DisassociateMpaTeamOutput.add_member(:mpa_team_association, ::Smithy::Schema::Shapes::MemberShape.new(target: MpaTeamAssociation, name: "MpaTeamAssociation", traits: {"smithy.api#required" => {}}))
    DisassociateMpaTeamOutput.type = Types::DisassociateMpaTeamOutput
    EnableDefaultKeyReplicationRegionsInput.add_member(:replication_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: Regions, name: "ReplicationRegions", traits: {"smithy.api#required" => {}}))
    EnableDefaultKeyReplicationRegionsInput.type = Types::EnableDefaultKeyReplicationRegionsInput
    EnableDefaultKeyReplicationRegionsOutput.add_member(:enabled_replication_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: Regions, name: "EnabledReplicationRegions", traits: {"smithy.api#required" => {}}))
    EnableDefaultKeyReplicationRegionsOutput.type = Types::EnableDefaultKeyReplicationRegionsOutput
    ExportAs2805KeyCryptogram.add_member(:wrapping_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "WrappingKeyIdentifier", traits: {"smithy.api#required" => {}}))
    ExportAs2805KeyCryptogram.add_member(:as2805_key_variant, ::Smithy::Schema::Shapes::MemberShape.new(target: As2805KeyVariant, name: "As2805KeyVariant", traits: {"smithy.api#required" => {}}))
    ExportAs2805KeyCryptogram.type = Types::ExportAs2805KeyCryptogram
    ExportAttributes.add_member(:export_dukpt_initial_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportDukptInitialKey, name: "ExportDukptInitialKey"))
    ExportAttributes.add_member(:key_check_value_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyCheckValueAlgorithm, name: "KeyCheckValueAlgorithm"))
    ExportAttributes.type = Types::ExportAttributes
    ExportDiffieHellmanTr31KeyBlock.add_member(:private_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "PrivateKeyIdentifier", traits: {"smithy.api#required" => {}}))
    ExportDiffieHellmanTr31KeyBlock.add_member(:certificate_authority_public_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "CertificateAuthorityPublicKeyIdentifier", traits: {"smithy.api#required" => {}}))
    ExportDiffieHellmanTr31KeyBlock.add_member(:public_key_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateType, name: "PublicKeyCertificate", traits: {"smithy.api#required" => {}}))
    ExportDiffieHellmanTr31KeyBlock.add_member(:derive_key_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: SymmetricKeyAlgorithm, name: "DeriveKeyAlgorithm", traits: {"smithy.api#required" => {}}))
    ExportDiffieHellmanTr31KeyBlock.add_member(:key_derivation_function, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyDerivationFunction, name: "KeyDerivationFunction", traits: {"smithy.api#required" => {}}))
    ExportDiffieHellmanTr31KeyBlock.add_member(:key_derivation_hash_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyDerivationHashAlgorithm, name: "KeyDerivationHashAlgorithm", traits: {"smithy.api#required" => {}}))
    ExportDiffieHellmanTr31KeyBlock.add_member(:derivation_data, ::Smithy::Schema::Shapes::MemberShape.new(target: DiffieHellmanDerivationData, name: "DerivationData", traits: {"smithy.api#required" => {}}))
    ExportDiffieHellmanTr31KeyBlock.add_member(:key_block_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyBlockHeaders, name: "KeyBlockHeaders"))
    ExportDiffieHellmanTr31KeyBlock.type = Types::ExportDiffieHellmanTr31KeyBlock
    ExportDukptInitialKey.add_member(:key_serial_number, ::Smithy::Schema::Shapes::MemberShape.new(target: HexLength20Or24, name: "KeySerialNumber", traits: {"smithy.api#required" => {}}))
    ExportDukptInitialKey.type = Types::ExportDukptInitialKey
    ExportKeyCryptogram.add_member(:certificate_authority_public_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "CertificateAuthorityPublicKeyIdentifier", traits: {"smithy.api#required" => {}}))
    ExportKeyCryptogram.add_member(:wrapping_key_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateType, name: "WrappingKeyCertificate", traits: {"smithy.api#required" => {}}))
    ExportKeyCryptogram.add_member(:wrapping_spec, ::Smithy::Schema::Shapes::MemberShape.new(target: WrappingKeySpec, name: "WrappingSpec"))
    ExportKeyCryptogram.type = Types::ExportKeyCryptogram
    ExportKeyInput.add_member(:key_material, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportKeyMaterial, name: "KeyMaterial", traits: {"smithy.api#required" => {}}))
    ExportKeyInput.add_member(:export_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "ExportKeyIdentifier", traits: {"smithy.api#required" => {}}))
    ExportKeyInput.add_member(:export_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportAttributes, name: "ExportAttributes"))
    ExportKeyInput.type = Types::ExportKeyInput
    ExportKeyMaterial.add_member(:tr31_key_block, Types::ExportKeyMaterial::Tr31KeyBlock, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportTr31KeyBlock, name: "Tr31KeyBlock"))
    ExportKeyMaterial.add_member(:tr34_key_block, Types::ExportKeyMaterial::Tr34KeyBlock, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportTr34KeyBlock, name: "Tr34KeyBlock"))
    ExportKeyMaterial.add_member(:key_cryptogram, Types::ExportKeyMaterial::KeyCryptogram, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportKeyCryptogram, name: "KeyCryptogram"))
    ExportKeyMaterial.add_member(:diffie_hellman_tr31_key_block, Types::ExportKeyMaterial::DiffieHellmanTr31KeyBlock, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportDiffieHellmanTr31KeyBlock, name: "DiffieHellmanTr31KeyBlock"))
    ExportKeyMaterial.add_member(:as2805_key_cryptogram, Types::ExportKeyMaterial::As2805KeyCryptogram, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportAs2805KeyCryptogram, name: "As2805KeyCryptogram"))
    ExportKeyMaterial.add_member(:unknown, Types::ExportKeyMaterial::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ExportKeyMaterial.type = Types::ExportKeyMaterial
    ExportKeyOutput.add_member(:wrapped_key, ::Smithy::Schema::Shapes::MemberShape.new(target: WrappedKey, name: "WrappedKey"))
    ExportKeyOutput.type = Types::ExportKeyOutput
    ExportTr31KeyBlock.add_member(:wrapping_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "WrappingKeyIdentifier", traits: {"smithy.api#required" => {}}))
    ExportTr31KeyBlock.add_member(:key_block_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyBlockHeaders, name: "KeyBlockHeaders"))
    ExportTr31KeyBlock.type = Types::ExportTr31KeyBlock
    ExportTr34KeyBlock.add_member(:certificate_authority_public_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "CertificateAuthorityPublicKeyIdentifier", traits: {"smithy.api#required" => {}}))
    ExportTr34KeyBlock.add_member(:wrapping_key_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateType, name: "WrappingKeyCertificate", traits: {"smithy.api#required" => {}}))
    ExportTr34KeyBlock.add_member(:export_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportTokenId, name: "ExportToken", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => ""}))
    ExportTr34KeyBlock.add_member(:signing_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "SigningKeyIdentifier"))
    ExportTr34KeyBlock.add_member(:signing_key_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateType, name: "SigningKeyCertificate"))
    ExportTr34KeyBlock.add_member(:key_block_format, ::Smithy::Schema::Shapes::MemberShape.new(target: Tr34KeyBlockFormat, name: "KeyBlockFormat", traits: {"smithy.api#required" => {}}))
    ExportTr34KeyBlock.add_member(:random_nonce, ::Smithy::Schema::Shapes::MemberShape.new(target: EvenHexLengthBetween16And32, name: "RandomNonce"))
    ExportTr34KeyBlock.add_member(:key_block_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyBlockHeaders, name: "KeyBlockHeaders"))
    ExportTr34KeyBlock.type = Types::ExportTr34KeyBlock
    GetAliasInput.add_member(:alias_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasName, name: "AliasName", traits: {"smithy.api#required" => {}}))
    GetAliasInput.type = Types::GetAliasInput
    GetAliasOutput.add_member(:alias, ::Smithy::Schema::Shapes::MemberShape.new(target: Alias, name: "Alias", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    GetAliasOutput.type = Types::GetAliasOutput
    GetCertificateSigningRequestInput.add_member(:key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "KeyIdentifier", traits: {"smithy.api#required" => {}}))
    GetCertificateSigningRequestInput.add_member(:signing_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningAlgorithmType, name: "SigningAlgorithm", traits: {"smithy.api#required" => {}}))
    GetCertificateSigningRequestInput.add_member(:certificate_subject, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateSubjectType, name: "CertificateSubject", traits: {"smithy.api#required" => {}}))
    GetCertificateSigningRequestInput.type = Types::GetCertificateSigningRequestInput
    GetCertificateSigningRequestOutput.add_member(:certificate_signing_request, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateSigningRequestType, name: "CertificateSigningRequest", traits: {"smithy.api#required" => {}}))
    GetCertificateSigningRequestOutput.type = Types::GetCertificateSigningRequestOutput
    GetDefaultKeyReplicationRegionsInput.type = Types::GetDefaultKeyReplicationRegionsInput
    GetDefaultKeyReplicationRegionsOutput.add_member(:enabled_replication_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: Regions, name: "EnabledReplicationRegions", traits: {"smithy.api#required" => {}}))
    GetDefaultKeyReplicationRegionsOutput.type = Types::GetDefaultKeyReplicationRegionsOutput
    GetKeyInput.add_member(:key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "KeyIdentifier", traits: {"smithy.api#required" => {}}))
    GetKeyInput.type = Types::GetKeyInput
    GetKeyOutput.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Key, name: "Key", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    GetKeyOutput.type = Types::GetKeyOutput
    GetMpaTeamAssociationInput.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: MpaOperation, name: "Action", traits: {"smithy.api#required" => {}}))
    GetMpaTeamAssociationInput.type = Types::GetMpaTeamAssociationInput
    GetMpaTeamAssociationOutput.add_member(:mpa_team_association, ::Smithy::Schema::Shapes::MemberShape.new(target: MpaTeamAssociation, name: "MpaTeamAssociation", traits: {"smithy.api#required" => {}}))
    GetMpaTeamAssociationOutput.type = Types::GetMpaTeamAssociationOutput
    GetParametersForExportInput.add_member(:key_material_type, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyMaterialType, name: "KeyMaterialType", traits: {"smithy.api#required" => {}}))
    GetParametersForExportInput.add_member(:signing_key_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyAlgorithm, name: "SigningKeyAlgorithm", traits: {"smithy.api#required" => {}}))
    GetParametersForExportInput.add_member(:reuse_last_generated_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "ReuseLastGeneratedToken"))
    GetParametersForExportInput.type = Types::GetParametersForExportInput
    GetParametersForExportOutput.add_member(:signing_key_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateType, name: "SigningKeyCertificate", traits: {"smithy.api#required" => {}}))
    GetParametersForExportOutput.add_member(:signing_key_certificate_chain, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateType, name: "SigningKeyCertificateChain", traits: {"smithy.api#required" => {}}))
    GetParametersForExportOutput.add_member(:signing_key_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyAlgorithm, name: "SigningKeyAlgorithm", traits: {"smithy.api#required" => {}}))
    GetParametersForExportOutput.add_member(:export_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportTokenId, name: "ExportToken", traits: {"smithy.api#required" => {}}))
    GetParametersForExportOutput.add_member(:parameters_valid_until_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ParametersValidUntilTimestamp", traits: {"smithy.api#required" => {}}))
    GetParametersForExportOutput.type = Types::GetParametersForExportOutput
    GetParametersForImportInput.add_member(:key_material_type, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyMaterialType, name: "KeyMaterialType", traits: {"smithy.api#required" => {}}))
    GetParametersForImportInput.add_member(:wrapping_key_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyAlgorithm, name: "WrappingKeyAlgorithm", traits: {"smithy.api#required" => {}}))
    GetParametersForImportInput.add_member(:reuse_last_generated_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "ReuseLastGeneratedToken"))
    GetParametersForImportInput.type = Types::GetParametersForImportInput
    GetParametersForImportOutput.add_member(:wrapping_key_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateType, name: "WrappingKeyCertificate", traits: {"smithy.api#required" => {}}))
    GetParametersForImportOutput.add_member(:wrapping_key_certificate_chain, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateType, name: "WrappingKeyCertificateChain", traits: {"smithy.api#required" => {}}))
    GetParametersForImportOutput.add_member(:wrapping_key_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyAlgorithm, name: "WrappingKeyAlgorithm", traits: {"smithy.api#required" => {}}))
    GetParametersForImportOutput.add_member(:import_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTokenId, name: "ImportToken", traits: {"smithy.api#required" => {}}))
    GetParametersForImportOutput.add_member(:parameters_valid_until_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ParametersValidUntilTimestamp", traits: {"smithy.api#required" => {}}))
    GetParametersForImportOutput.type = Types::GetParametersForImportOutput
    GetPublicKeyCertificateInput.add_member(:key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "KeyIdentifier", traits: {"smithy.api#required" => {}}))
    GetPublicKeyCertificateInput.type = Types::GetPublicKeyCertificateInput
    GetPublicKeyCertificateOutput.add_member(:key_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateType, name: "KeyCertificate", traits: {"smithy.api#required" => {}}))
    GetPublicKeyCertificateOutput.add_member(:key_certificate_chain, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateType, name: "KeyCertificateChain", traits: {"smithy.api#required" => {}}))
    GetPublicKeyCertificateOutput.type = Types::GetPublicKeyCertificateOutput
    GetResourcePolicyInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    GetResourcePolicyInput.type = Types::GetResourcePolicyInput
    GetResourcePolicyOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    GetResourcePolicyOutput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicy, name: "Policy", traits: {"smithy.api#required" => {}}))
    GetResourcePolicyOutput.type = Types::GetResourcePolicyOutput
    ImportAs2805KeyCryptogram.add_member(:as2805_key_variant, ::Smithy::Schema::Shapes::MemberShape.new(target: As2805KeyVariant, name: "As2805KeyVariant", traits: {"smithy.api#required" => {}}))
    ImportAs2805KeyCryptogram.add_member(:key_modes_of_use, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyModesOfUse, name: "KeyModesOfUse", traits: {"smithy.api#required" => {}}))
    ImportAs2805KeyCryptogram.add_member(:key_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyAlgorithm, name: "KeyAlgorithm", traits: {"smithy.api#required" => {}}))
    ImportAs2805KeyCryptogram.add_member(:exportable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "Exportable", traits: {"smithy.api#required" => {}}))
    ImportAs2805KeyCryptogram.add_member(:wrapping_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "WrappingKeyIdentifier", traits: {"smithy.api#required" => {}}))
    ImportAs2805KeyCryptogram.add_member(:wrapped_key_cryptogram, ::Smithy::Schema::Shapes::MemberShape.new(target: WrappedKeyCryptogram, name: "WrappedKeyCryptogram", traits: {"smithy.api#required" => {}}))
    ImportAs2805KeyCryptogram.type = Types::ImportAs2805KeyCryptogram
    ImportDiffieHellmanTr31KeyBlock.add_member(:private_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "PrivateKeyIdentifier", traits: {"smithy.api#required" => {}}))
    ImportDiffieHellmanTr31KeyBlock.add_member(:certificate_authority_public_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "CertificateAuthorityPublicKeyIdentifier", traits: {"smithy.api#required" => {}}))
    ImportDiffieHellmanTr31KeyBlock.add_member(:public_key_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateType, name: "PublicKeyCertificate", traits: {"smithy.api#required" => {}}))
    ImportDiffieHellmanTr31KeyBlock.add_member(:derive_key_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: SymmetricKeyAlgorithm, name: "DeriveKeyAlgorithm", traits: {"smithy.api#required" => {}}))
    ImportDiffieHellmanTr31KeyBlock.add_member(:key_derivation_function, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyDerivationFunction, name: "KeyDerivationFunction", traits: {"smithy.api#required" => {}}))
    ImportDiffieHellmanTr31KeyBlock.add_member(:key_derivation_hash_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyDerivationHashAlgorithm, name: "KeyDerivationHashAlgorithm", traits: {"smithy.api#required" => {}}))
    ImportDiffieHellmanTr31KeyBlock.add_member(:derivation_data, ::Smithy::Schema::Shapes::MemberShape.new(target: DiffieHellmanDerivationData, name: "DerivationData", traits: {"smithy.api#required" => {}}))
    ImportDiffieHellmanTr31KeyBlock.add_member(:wrapped_key_block, ::Smithy::Schema::Shapes::MemberShape.new(target: Tr31WrappedKeyBlock, name: "WrappedKeyBlock", traits: {"smithy.api#required" => {}}))
    ImportDiffieHellmanTr31KeyBlock.type = Types::ImportDiffieHellmanTr31KeyBlock
    ImportKeyCryptogram.add_member(:key_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyAttributes, name: "KeyAttributes", traits: {"smithy.api#required" => {}}))
    ImportKeyCryptogram.add_member(:exportable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "Exportable", traits: {"smithy.api#required" => {}}))
    ImportKeyCryptogram.add_member(:wrapped_key_cryptogram, ::Smithy::Schema::Shapes::MemberShape.new(target: WrappedKeyCryptogram, name: "WrappedKeyCryptogram", traits: {"smithy.api#required" => {}}))
    ImportKeyCryptogram.add_member(:import_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTokenId, name: "ImportToken", traits: {"smithy.api#required" => {}}))
    ImportKeyCryptogram.add_member(:wrapping_spec, ::Smithy::Schema::Shapes::MemberShape.new(target: WrappingKeySpec, name: "WrappingSpec"))
    ImportKeyCryptogram.type = Types::ImportKeyCryptogram
    ImportKeyInput.add_member(:key_material, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportKeyMaterial, name: "KeyMaterial", traits: {"smithy.api#required" => {}}))
    ImportKeyInput.add_member(:key_check_value_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyCheckValueAlgorithm, name: "KeyCheckValueAlgorithm"))
    ImportKeyInput.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "Enabled"))
    ImportKeyInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    ImportKeyInput.add_member(:replication_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: Regions, name: "ReplicationRegions"))
    ImportKeyInput.add_member(:requester_comment, ::Smithy::Schema::Shapes::MemberShape.new(target: MpaRequesterComment, name: "RequesterComment"))
    ImportKeyInput.type = Types::ImportKeyInput
    ImportKeyMaterial.add_member(:root_certificate_public_key, Types::ImportKeyMaterial::RootCertificatePublicKey, ::Smithy::Schema::Shapes::MemberShape.new(target: RootCertificatePublicKey, name: "RootCertificatePublicKey"))
    ImportKeyMaterial.add_member(:trusted_certificate_public_key, Types::ImportKeyMaterial::TrustedCertificatePublicKey, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedCertificatePublicKey, name: "TrustedCertificatePublicKey"))
    ImportKeyMaterial.add_member(:tr31_key_block, Types::ImportKeyMaterial::Tr31KeyBlock, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTr31KeyBlock, name: "Tr31KeyBlock"))
    ImportKeyMaterial.add_member(:tr34_key_block, Types::ImportKeyMaterial::Tr34KeyBlock, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTr34KeyBlock, name: "Tr34KeyBlock"))
    ImportKeyMaterial.add_member(:key_cryptogram, Types::ImportKeyMaterial::KeyCryptogram, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportKeyCryptogram, name: "KeyCryptogram"))
    ImportKeyMaterial.add_member(:diffie_hellman_tr31_key_block, Types::ImportKeyMaterial::DiffieHellmanTr31KeyBlock, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportDiffieHellmanTr31KeyBlock, name: "DiffieHellmanTr31KeyBlock"))
    ImportKeyMaterial.add_member(:as2805_key_cryptogram, Types::ImportKeyMaterial::As2805KeyCryptogram, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportAs2805KeyCryptogram, name: "As2805KeyCryptogram"))
    ImportKeyMaterial.add_member(:unknown, Types::ImportKeyMaterial::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ImportKeyMaterial.type = Types::ImportKeyMaterial
    ImportKeyOutput.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Key, name: "Key", traits: {"smithy.api#required" => {}}))
    ImportKeyOutput.type = Types::ImportKeyOutput
    ImportTr31KeyBlock.add_member(:wrapping_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "WrappingKeyIdentifier", traits: {"smithy.api#required" => {}}))
    ImportTr31KeyBlock.add_member(:wrapped_key_block, ::Smithy::Schema::Shapes::MemberShape.new(target: Tr31WrappedKeyBlock, name: "WrappedKeyBlock", traits: {"smithy.api#required" => {}}))
    ImportTr31KeyBlock.type = Types::ImportTr31KeyBlock
    ImportTr34KeyBlock.add_member(:certificate_authority_public_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "CertificateAuthorityPublicKeyIdentifier", traits: {"smithy.api#required" => {}}))
    ImportTr34KeyBlock.add_member(:signing_key_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateType, name: "SigningKeyCertificate", traits: {"smithy.api#required" => {}}))
    ImportTr34KeyBlock.add_member(:import_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTokenId, name: "ImportToken", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => ""}))
    ImportTr34KeyBlock.add_member(:wrapping_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "WrappingKeyIdentifier"))
    ImportTr34KeyBlock.add_member(:wrapping_key_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateType, name: "WrappingKeyCertificate"))
    ImportTr34KeyBlock.add_member(:wrapped_key_block, ::Smithy::Schema::Shapes::MemberShape.new(target: Tr34WrappedKeyBlock, name: "WrappedKeyBlock", traits: {"smithy.api#required" => {}}))
    ImportTr34KeyBlock.add_member(:key_block_format, ::Smithy::Schema::Shapes::MemberShape.new(target: Tr34KeyBlockFormat, name: "KeyBlockFormat", traits: {"smithy.api#required" => {}}))
    ImportTr34KeyBlock.add_member(:random_nonce, ::Smithy::Schema::Shapes::MemberShape.new(target: EvenHexLengthBetween16And32, name: "RandomNonce"))
    ImportTr34KeyBlock.type = Types::ImportTr34KeyBlock
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    InternalServerException.type = Types::InternalServerException
    Key.add_member(:key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArn, name: "KeyArn", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    Key.add_member(:key_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyAttributes, name: "KeyAttributes", traits: {"smithy.api#required" => {}}))
    Key.add_member(:key_check_value, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyCheckValue, name: "KeyCheckValue", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    Key.add_member(:key_check_value_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyCheckValueAlgorithm, name: "KeyCheckValueAlgorithm", traits: {"smithy.api#required" => {}}))
    Key.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "Enabled", traits: {"smithy.api#required" => {}}))
    Key.add_member(:exportable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "Exportable", traits: {"smithy.api#required" => {}}))
    Key.add_member(:key_state, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyState, name: "KeyState", traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    Key.add_member(:key_origin, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyOrigin, name: "KeyOrigin", traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    Key.add_member(:create_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreateTimestamp", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    Key.add_member(:usage_start_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UsageStartTimestamp", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    Key.add_member(:usage_stop_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UsageStopTimestamp", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    Key.add_member(:delete_pending_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "DeletePendingTimestamp", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    Key.add_member(:delete_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "DeleteTimestamp", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    Key.add_member(:derive_key_usage, ::Smithy::Schema::Shapes::MemberShape.new(target: DeriveKeyUsage, name: "DeriveKeyUsage", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    Key.add_member(:multi_region_key_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionKeyType, name: "MultiRegionKeyType", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    Key.add_member(:primary_region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "PrimaryRegion", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    Key.add_member(:replication_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationStatus, name: "ReplicationStatus", traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#suppress" => ["UnstableTrait"]}))
    Key.add_member(:using_default_replication_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "UsingDefaultReplicationRegions", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    Key.add_member(:mpa_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MpaStatus, name: "MpaStatus", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    Key.type = Types::Key
    KeyAttributes.add_member(:key_usage, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyUsage, name: "KeyUsage", traits: {"smithy.api#required" => {}}))
    KeyAttributes.add_member(:key_class, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyClass, name: "KeyClass", traits: {"smithy.api#required" => {}}))
    KeyAttributes.add_member(:key_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyAlgorithm, name: "KeyAlgorithm", traits: {"smithy.api#required" => {}}))
    KeyAttributes.add_member(:key_modes_of_use, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyModesOfUse, name: "KeyModesOfUse", traits: {"smithy.api#required" => {}}))
    KeyAttributes.type = Types::KeyAttributes
    KeyBlockHeaders.add_member(:key_modes_of_use, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyModesOfUse, name: "KeyModesOfUse"))
    KeyBlockHeaders.add_member(:key_exportability, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyExportability, name: "KeyExportability"))
    KeyBlockHeaders.add_member(:key_version, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyVersion, name: "KeyVersion"))
    KeyBlockHeaders.add_member(:optional_blocks, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalBlocks, name: "OptionalBlocks"))
    KeyBlockHeaders.type = Types::KeyBlockHeaders
    KeyDerivationFunction.add_member(:nist_sp800, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NIST_SP800", traits: {"smithy.api#enumValue" => "NIST_SP800"}))
    KeyDerivationFunction.add_member(:ansi_x963, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ANSI_X963", traits: {"smithy.api#enumValue" => "ANSI_X963"}))
    KeyDerivationHashAlgorithm.add_member(:sha_256, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHA_256", traits: {"smithy.api#enumValue" => "SHA_256"}))
    KeyDerivationHashAlgorithm.add_member(:sha_384, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHA_384", traits: {"smithy.api#enumValue" => "SHA_384"}))
    KeyDerivationHashAlgorithm.add_member(:sha_512, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHA_512", traits: {"smithy.api#enumValue" => "SHA_512"}))
    KeyModesOfUse.add_member(:encrypt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "Encrypt", traits: {"smithy.api#default" => false}))
    KeyModesOfUse.add_member(:decrypt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "Decrypt", traits: {"smithy.api#default" => false}))
    KeyModesOfUse.add_member(:wrap, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "Wrap", traits: {"smithy.api#default" => false}))
    KeyModesOfUse.add_member(:unwrap, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "Unwrap", traits: {"smithy.api#default" => false}))
    KeyModesOfUse.add_member(:generate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "Generate", traits: {"smithy.api#default" => false}))
    KeyModesOfUse.add_member(:sign, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "Sign", traits: {"smithy.api#default" => false}))
    KeyModesOfUse.add_member(:verify, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "Verify", traits: {"smithy.api#default" => false}))
    KeyModesOfUse.add_member(:derive_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "DeriveKey", traits: {"smithy.api#default" => false}))
    KeyModesOfUse.add_member(:no_restrictions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "NoRestrictions", traits: {"smithy.api#default" => false}))
    KeyModesOfUse.type = Types::KeyModesOfUse
    KeySummary.add_member(:key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArn, name: "KeyArn", traits: {"smithy.api#required" => {}}))
    KeySummary.add_member(:key_state, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyState, name: "KeyState", traits: {"smithy.api#required" => {}}))
    KeySummary.add_member(:key_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyAttributes, name: "KeyAttributes", traits: {"smithy.api#required" => {}}))
    KeySummary.add_member(:key_check_value, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyCheckValue, name: "KeyCheckValue", traits: {"smithy.api#required" => {}}))
    KeySummary.add_member(:exportable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "Exportable", traits: {"smithy.api#required" => {}}))
    KeySummary.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "Enabled", traits: {"smithy.api#required" => {}}))
    KeySummary.add_member(:multi_region_key_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionKeyType, name: "MultiRegionKeyType"))
    KeySummary.add_member(:primary_region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "PrimaryRegion"))
    KeySummary.type = Types::KeySummary
    KeySummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: KeySummary, name: "member"))
    ListAliasesInput.add_member(:key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArn, name: "KeyArn"))
    ListAliasesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListAliasesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListAliasesInput.type = Types::ListAliasesInput
    ListAliasesOutput.add_member(:aliases, ::Smithy::Schema::Shapes::MemberShape.new(target: Aliases, name: "Aliases", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    ListAliasesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListAliasesOutput.type = Types::ListAliasesOutput
    ListKeysInput.add_member(:key_state, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyState, name: "KeyState"))
    ListKeysInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListKeysInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListKeysInput.type = Types::ListKeysInput
    ListKeysOutput.add_member(:keys, ::Smithy::Schema::Shapes::MemberShape.new(target: KeySummaryList, name: "Keys", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    ListKeysOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListKeysOutput.type = Types::ListKeysOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTagsForResourceInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    MpaStatus.add_member(:mpa_session_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MpaSessionArn, name: "MpaSessionArn", traits: {"smithy.api#required" => {}}))
    MpaStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    MpaStatus.add_member(:initiation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "InitiationDate", traits: {"smithy.api#required" => {}}))
    MpaStatus.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: MpaStatusMessage, name: "StatusMessage"))
    MpaStatus.type = Types::MpaStatus
    MpaTeamAssociation.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: MpaOperation, name: "Action", traits: {"smithy.api#required" => {}}))
    MpaTeamAssociation.add_member(:mpa_team_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MpaTeamArn, name: "MpaTeamArn", traits: {"smithy.api#required" => {}}))
    MpaTeamAssociation.add_member(:association_state, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationState, name: "AssociationState", traits: {"smithy.api#required" => {}}))
    MpaTeamAssociation.add_member(:mpa_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MpaStatus, name: "MpaStatus"))
    MpaTeamAssociation.type = Types::MpaTeamAssociation
    OptionalBlocks.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalBlockId, name: "key"))
    OptionalBlocks.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalBlockValue, name: "value"))
    PublicPolicyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    PublicPolicyException.type = Types::PublicPolicyException
    PutResourcePolicyInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    PutResourcePolicyInput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicy, name: "Policy", traits: {"smithy.api#required" => {}}))
    PutResourcePolicyInput.type = Types::PutResourcePolicyInput
    PutResourcePolicyOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    PutResourcePolicyOutput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicy, name: "Policy", traits: {"smithy.api#required" => {}}))
    PutResourcePolicyOutput.type = Types::PutResourcePolicyOutput
    Regions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "member"))
    RemoveKeyReplicationRegionsInput.add_member(:key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "KeyIdentifier", traits: {"smithy.api#required" => {}}))
    RemoveKeyReplicationRegionsInput.add_member(:replication_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: Regions, name: "ReplicationRegions", traits: {"smithy.api#required" => {}}))
    RemoveKeyReplicationRegionsInput.type = Types::RemoveKeyReplicationRegionsInput
    RemoveKeyReplicationRegionsOutput.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Key, name: "Key", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    RemoveKeyReplicationRegionsOutput.type = Types::RemoveKeyReplicationRegionsOutput
    ReplicationStatus.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "key"))
    ReplicationStatus.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationStatusType, name: "value"))
    ReplicationStatusType.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyReplicationState, name: "Status", traits: {"smithy.api#required" => {}}))
    ReplicationStatusType.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "StatusMessage"))
    ReplicationStatusType.type = Types::ReplicationStatusType
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceId"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RestoreKeyInput.add_member(:key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "KeyIdentifier", traits: {"smithy.api#required" => {}}))
    RestoreKeyInput.type = Types::RestoreKeyInput
    RestoreKeyOutput.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Key, name: "Key", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    RestoreKeyOutput.type = Types::RestoreKeyOutput
    RootCertificatePublicKey.add_member(:key_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyAttributes, name: "KeyAttributes", traits: {"smithy.api#required" => {}}))
    RootCertificatePublicKey.add_member(:public_key_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateType, name: "PublicKeyCertificate", traits: {"smithy.api#required" => {}}))
    RootCertificatePublicKey.type = Types::RootCertificatePublicKey
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    StartKeyUsageInput.add_member(:key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "KeyIdentifier", traits: {"smithy.api#required" => {}}))
    StartKeyUsageInput.type = Types::StartKeyUsageInput
    StartKeyUsageOutput.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Key, name: "Key", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    StartKeyUsageOutput.type = Types::StartKeyUsageOutput
    StopKeyUsageInput.add_member(:key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "KeyIdentifier", traits: {"smithy.api#required" => {}}))
    StopKeyUsageInput.type = Types::StopKeyUsageInput
    StopKeyUsageOutput.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Key, name: "Key", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    StopKeyUsageOutput.type = Types::StopKeyUsageOutput
    SymmetricKeyAlgorithm.add_member(:tdes_2_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TDES_2KEY", traits: {"smithy.api#enumValue" => "TDES_2KEY"}))
    SymmetricKeyAlgorithm.add_member(:tdes_3_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TDES_3KEY", traits: {"smithy.api#enumValue" => "TDES_3KEY"}))
    SymmetricKeyAlgorithm.add_member(:aes_128, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AES_128", traits: {"smithy.api#enumValue" => "AES_128"}))
    SymmetricKeyAlgorithm.add_member(:aes_192, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AES_192", traits: {"smithy.api#enumValue" => "AES_192"}))
    SymmetricKeyAlgorithm.add_member(:aes_256, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AES_256", traits: {"smithy.api#enumValue" => "AES_256"}))
    SymmetricKeyAlgorithm.add_member(:hmac_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HMAC_SHA256", traits: {"smithy.api#enumValue" => "HMAC_SHA256"}))
    SymmetricKeyAlgorithm.add_member(:hmac_sha384, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HMAC_SHA384", traits: {"smithy.api#enumValue" => "HMAC_SHA384"}))
    SymmetricKeyAlgorithm.add_member(:hmac_sha512, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HMAC_SHA512", traits: {"smithy.api#enumValue" => "HMAC_SHA512"}))
    SymmetricKeyAlgorithm.add_member(:hmac_sha224, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HMAC_SHA224", traits: {"smithy.api#enumValue" => "HMAC_SHA224"}))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeys.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    Tags.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ThrottlingException.type = Types::ThrottlingException
    TrustedCertificatePublicKey.add_member(:key_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyAttributes, name: "KeyAttributes", traits: {"smithy.api#required" => {}}))
    TrustedCertificatePublicKey.add_member(:public_key_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateType, name: "PublicKeyCertificate", traits: {"smithy.api#required" => {}}))
    TrustedCertificatePublicKey.add_member(:certificate_authority_public_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "CertificateAuthorityPublicKeyIdentifier", traits: {"smithy.api#required" => {}}))
    TrustedCertificatePublicKey.type = Types::TrustedCertificatePublicKey
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateAliasInput.add_member(:alias_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasName, name: "AliasName", traits: {"smithy.api#required" => {}}))
    UpdateAliasInput.add_member(:key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArn, name: "KeyArn"))
    UpdateAliasInput.type = Types::UpdateAliasInput
    UpdateAliasOutput.add_member(:alias, ::Smithy::Schema::Shapes::MemberShape.new(target: Alias, name: "Alias", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    UpdateAliasOutput.type = Types::UpdateAliasOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ValidationException.type = Types::ValidationException
    WrappedKey.add_member(:wrapping_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArn, name: "WrappingKeyArn", traits: {"smithy.api#required" => {}}))
    WrappedKey.add_member(:wrapped_key_material_format, ::Smithy::Schema::Shapes::MemberShape.new(target: WrappedKeyMaterialFormat, name: "WrappedKeyMaterialFormat", traits: {"smithy.api#required" => {}}))
    WrappedKey.add_member(:key_material, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyMaterial, name: "KeyMaterial", traits: {"smithy.api#required" => {}}))
    WrappedKey.add_member(:key_check_value, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyCheckValue, name: "KeyCheckValue"))
    WrappedKey.add_member(:key_check_value_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyCheckValueAlgorithm, name: "KeyCheckValueAlgorithm"))
    WrappedKey.type = Types::WrappedKey

    PaymentCryptographyControlPlane = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.paymentcryptography#PaymentCryptographyControlPlane"
      service.name = "PaymentCryptographyControlPlane"
      service.version = "2021-09-14"
      service.traits = {"aws.api#service" => {"sdkId" => "Payment Cryptography", "arnNamespace" => "payment-cryptography", "endpointPrefix" => "controlplane.payment-cryptography", "cloudFormationName" => "PaymentCryptography"}, "aws.auth#sigv4" => {"name" => "payment-cryptography"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#cors" => {}, "smithy.api#title" => "Payment Cryptography Control Plane", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://controlplane.payment-cryptography-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://controlplane.payment-cryptography-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://controlplane.payment-cryptography.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://controlplane.payment-cryptography.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:add_key_replication_regions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#AddKeyReplicationRegions"
        operation.name = "AddKeyReplicationRegions"
        operation.input = AddKeyReplicationRegionsInput
        operation.output = AddKeyReplicationRegionsOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}}
      end)
      service.add_operation(:associate_mpa_team, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#AssociateMpaTeam"
        operation.name = "AssociateMpaTeam"
        operation.input = AssociateMpaTeamInput
        operation.output = AssociateMpaTeamOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}}
      end)
      service.add_operation(:create_alias, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#CreateAlias"
        operation.name = "CreateAlias"
        operation.input = CreateAliasInput
        operation.output = CreateAliasOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#CreateKey"
        operation.name = "CreateKey"
        operation.input = CreateKeyInput
        operation.output = CreateKeyOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}}
      end)
      service.add_operation(:delete_alias, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#DeleteAlias"
        operation.name = "DeleteAlias"
        operation.input = DeleteAliasInput
        operation.output = DeleteAliasOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#DeleteKey"
        operation.name = "DeleteKey"
        operation.input = DeleteKeyInput
        operation.output = DeleteKeyOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = DeleteResourcePolicyInput
        operation.output = DeleteResourcePolicyOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disable_default_key_replication_regions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#DisableDefaultKeyReplicationRegions"
        operation.name = "DisableDefaultKeyReplicationRegions"
        operation.input = DisableDefaultKeyReplicationRegionsInput
        operation.output = DisableDefaultKeyReplicationRegionsOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}}
      end)
      service.add_operation(:disassociate_mpa_team, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#DisassociateMpaTeam"
        operation.name = "DisassociateMpaTeam"
        operation.input = DisassociateMpaTeamInput
        operation.output = DisassociateMpaTeamOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}}
      end)
      service.add_operation(:enable_default_key_replication_regions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#EnableDefaultKeyReplicationRegions"
        operation.name = "EnableDefaultKeyReplicationRegions"
        operation.input = EnableDefaultKeyReplicationRegionsInput
        operation.output = EnableDefaultKeyReplicationRegionsOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}}
      end)
      service.add_operation(:export_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#ExportKey"
        operation.name = "ExportKey"
        operation.input = ExportKeyInput
        operation.output = ExportKeyOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}}
      end)
      service.add_operation(:get_alias, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#GetAlias"
        operation.name = "GetAlias"
        operation.input = GetAliasInput
        operation.output = GetAliasOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_certificate_signing_request, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#GetCertificateSigningRequest"
        operation.name = "GetCertificateSigningRequest"
        operation.input = GetCertificateSigningRequestInput
        operation.output = GetCertificateSigningRequestOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}}
      end)
      service.add_operation(:get_default_key_replication_regions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#GetDefaultKeyReplicationRegions"
        operation.name = "GetDefaultKeyReplicationRegions"
        operation.input = GetDefaultKeyReplicationRegionsInput
        operation.output = GetDefaultKeyReplicationRegionsOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}}
      end)
      service.add_operation(:get_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#GetKey"
        operation.name = "GetKey"
        operation.input = GetKeyInput
        operation.output = GetKeyOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_mpa_team_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#GetMpaTeamAssociation"
        operation.name = "GetMpaTeamAssociation"
        operation.input = GetMpaTeamAssociationInput
        operation.output = GetMpaTeamAssociationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_parameters_for_export, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#GetParametersForExport"
        operation.name = "GetParametersForExport"
        operation.input = GetParametersForExportInput
        operation.output = GetParametersForExportOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}}
      end)
      service.add_operation(:get_parameters_for_import, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#GetParametersForImport"
        operation.name = "GetParametersForImport"
        operation.input = GetParametersForImportInput
        operation.output = GetParametersForImportOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}}
      end)
      service.add_operation(:get_public_key_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#GetPublicKeyCertificate"
        operation.name = "GetPublicKeyCertificate"
        operation.input = GetPublicKeyCertificateInput
        operation.output = GetPublicKeyCertificateOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#GetResourcePolicy"
        operation.name = "GetResourcePolicy"
        operation.input = GetResourcePolicyInput
        operation.output = GetResourcePolicyOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:import_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#ImportKey"
        operation.name = "ImportKey"
        operation.input = ImportKeyInput
        operation.output = ImportKeyOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}}
      end)
      service.add_operation(:list_aliases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#ListAliases"
        operation.name = "ListAliases"
        operation.input = ListAliasesInput
        operation.output = ListAliasesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAliases.new
      end)
      service.add_operation(:list_keys, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#ListKeys"
        operation.name = "ListKeys"
        operation.input = ListKeysInput
        operation.output = ListKeysOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListKeys.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:put_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = PutResourcePolicyInput
        operation.output = PutResourcePolicyOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << PublicPolicyException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:remove_key_replication_regions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#RemoveKeyReplicationRegions"
        operation.name = "RemoveKeyReplicationRegions"
        operation.input = RemoveKeyReplicationRegionsInput
        operation.output = RemoveKeyReplicationRegionsOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}}
      end)
      service.add_operation(:restore_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#RestoreKey"
        operation.name = "RestoreKey"
        operation.input = RestoreKeyInput
        operation.output = RestoreKeyOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}}
      end)
      service.add_operation(:start_key_usage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#StartKeyUsage"
        operation.name = "StartKeyUsage"
        operation.input = StartKeyUsageInput
        operation.output = StartKeyUsageOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}}
      end)
      service.add_operation(:stop_key_usage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#StopKeyUsage"
        operation.name = "StopKeyUsage"
        operation.input = StopKeyUsageInput
        operation.output = StopKeyUsageOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = TagResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = UntagResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#controlPlane" => {}}
      end)
      service.add_operation(:update_alias, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptography#UpdateAlias"
        operation.name = "UpdateAlias"
        operation.input = UpdateAliasInput
        operation.output = UpdateAliasOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
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
