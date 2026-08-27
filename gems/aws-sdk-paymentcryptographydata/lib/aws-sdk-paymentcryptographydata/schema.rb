# frozen_string_literal: true

# This is generated code!

module Aws::PaymentCryptographyData
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AmexAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#AmexAttributes", name: "AmexAttributes")
    AmexCardSecurityCodeVersion1 = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#AmexCardSecurityCodeVersion1", name: "AmexCardSecurityCodeVersion1")
    AmexCardSecurityCodeVersion2 = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#AmexCardSecurityCodeVersion2", name: "AmexCardSecurityCodeVersion2")
    ApplicationCryptogramType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptographydata#ApplicationCryptogramType", name: "ApplicationCryptogramType", traits: {"smithy.api#length" => {"min" => 16, "max" => 16}, "smithy.api#pattern" => "^[0-9a-fA-F]+$", "smithy.api#sensitive" => {}})
    AsymmetricEncryptionAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#AsymmetricEncryptionAttributes", name: "AsymmetricEncryptionAttributes")
    AuthRequestCryptogramType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptographydata#AuthRequestCryptogramType", name: "AuthRequestCryptogramType", traits: {"smithy.api#length" => {"min" => 16, "max" => 16}, "smithy.api#pattern" => "^[0-9a-fA-F]+$", "smithy.api#sensitive" => {}})
    AuthResponseValueType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptographydata#AuthResponseValueType", name: "AuthResponseValueType", traits: {"smithy.api#length" => {"min" => 1, "max" => 16}, "smithy.api#pattern" => "^[0-9a-fA-F]+$", "smithy.api#sensitive" => {}})
    CardExpiryDateType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptographydata#CardExpiryDateType", name: "CardExpiryDateType", traits: {"smithy.api#length" => {"min" => 4, "max" => 4}, "smithy.api#pattern" => "^[0-9]+$", "smithy.api#sensitive" => {}})
    CardGenerationAttributes = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.paymentcryptographydata#CardGenerationAttributes", name: "CardGenerationAttributes")
    CardHolderVerificationValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#CardHolderVerificationValue", name: "CardHolderVerificationValue")
    CardVerificationAttributes = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.paymentcryptographydata#CardVerificationAttributes", name: "CardVerificationAttributes")
    CardVerificationValue1 = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#CardVerificationValue1", name: "CardVerificationValue1")
    CardVerificationValue2 = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#CardVerificationValue2", name: "CardVerificationValue2")
    CertificateType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptographydata#CertificateType", name: "CertificateType", traits: {"smithy.api#length" => {"min" => 1, "max" => 32768}, "smithy.api#pattern" => "^[^\\[;\\]<>]+$"})
    CipherTextType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptographydata#CipherTextType", name: "CipherTextType", traits: {"smithy.api#length" => {"min" => 2, "max" => 4224}, "smithy.api#pattern" => "^(?:[0-9a-fA-F][0-9a-fA-F])+$", "smithy.api#sensitive" => {}})
    CommandMessageDataType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptographydata#CommandMessageDataType", name: "CommandMessageDataType", traits: {"smithy.api#length" => {"min" => 16, "max" => 1024}, "smithy.api#pattern" => "^(?:[0-9a-fA-F][0-9a-fA-F])+$", "smithy.api#sensitive" => {}})
    CryptogramAuthResponse = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.paymentcryptographydata#CryptogramAuthResponse", name: "CryptogramAuthResponse")
    CryptogramVerificationArpcMethod1 = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#CryptogramVerificationArpcMethod1", name: "CryptogramVerificationArpcMethod1")
    CryptogramVerificationArpcMethod2 = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#CryptogramVerificationArpcMethod2", name: "CryptogramVerificationArpcMethod2")
    CurrentPinAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#CurrentPinAttributes", name: "CurrentPinAttributes")
    DecimalizationTableType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptographydata#DecimalizationTableType", name: "DecimalizationTableType", traits: {"smithy.api#length" => {"min" => 16, "max" => 16}, "smithy.api#pattern" => "^[0-9]+$", "smithy.api#sensitive" => {}})
    DecryptDataInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#DecryptDataInput", name: "DecryptDataInput")
    DecryptDataOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#DecryptDataOutput", name: "DecryptDataOutput")
    DerivationMethodAttributes = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.paymentcryptographydata#DerivationMethodAttributes", name: "DerivationMethodAttributes")
    DiffieHellmanDerivationData = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.paymentcryptographydata#DiffieHellmanDerivationData", name: "DiffieHellmanDerivationData")
    DiscoverDynamicCardVerificationCode = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#DiscoverDynamicCardVerificationCode", name: "DiscoverDynamicCardVerificationCode")
    DukptAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#DukptAttributes", name: "DukptAttributes")
    DukptDerivationAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#DukptDerivationAttributes", name: "DukptDerivationAttributes")
    DukptDerivationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.paymentcryptographydata#DukptDerivationType", name: "DukptDerivationType")
    DukptEncryptionAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#DukptEncryptionAttributes", name: "DukptEncryptionAttributes")
    DukptEncryptionMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.paymentcryptographydata#DukptEncryptionMode", name: "DukptEncryptionMode")
    DukptKeyVariant = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.paymentcryptographydata#DukptKeyVariant", name: "DukptKeyVariant")
    DynamicCardVerificationCode = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#DynamicCardVerificationCode", name: "DynamicCardVerificationCode")
    DynamicCardVerificationValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#DynamicCardVerificationValue", name: "DynamicCardVerificationValue")
    EcdhDerivationAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#EcdhDerivationAttributes", name: "EcdhDerivationAttributes")
    Emv2000Attributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#Emv2000Attributes", name: "Emv2000Attributes")
    EmvCommonAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#EmvCommonAttributes", name: "EmvCommonAttributes")
    EmvEncryptionAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#EmvEncryptionAttributes", name: "EmvEncryptionAttributes")
    EmvEncryptionMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.paymentcryptographydata#EmvEncryptionMode", name: "EmvEncryptionMode")
    EmvMajorKeyDerivationMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.paymentcryptographydata#EmvMajorKeyDerivationMode", name: "EmvMajorKeyDerivationMode")
    EncryptDataInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#EncryptDataInput", name: "EncryptDataInput")
    EncryptDataOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#EncryptDataOutput", name: "EncryptDataOutput")
    EncryptedPinBlockType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptographydata#EncryptedPinBlockType", name: "EncryptedPinBlockType", traits: {"smithy.api#length" => {"min" => 16, "max" => 32}, "smithy.api#pattern" => "^[0-9a-fA-F]+$", "smithy.api#sensitive" => {}})
    EncryptionDecryptionAttributes = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.paymentcryptographydata#EncryptionDecryptionAttributes", name: "EncryptionDecryptionAttributes")
    EncryptionMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.paymentcryptographydata#EncryptionMode", name: "EncryptionMode")
    GenerateCardValidationDataInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#GenerateCardValidationDataInput", name: "GenerateCardValidationDataInput")
    GenerateCardValidationDataOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#GenerateCardValidationDataOutput", name: "GenerateCardValidationDataOutput")
    GenerateMacEmvPinChangeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#GenerateMacEmvPinChangeInput", name: "GenerateMacEmvPinChangeInput")
    GenerateMacEmvPinChangeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#GenerateMacEmvPinChangeOutput", name: "GenerateMacEmvPinChangeOutput")
    GenerateMacInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#GenerateMacInput", name: "GenerateMacInput")
    GenerateMacOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#GenerateMacOutput", name: "GenerateMacOutput")
    GeneratePinDataInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#GeneratePinDataInput", name: "GeneratePinDataInput")
    GeneratePinDataOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#GeneratePinDataOutput", name: "GeneratePinDataOutput")
    HexEvenLengthBetween16And32 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptographydata#HexEvenLengthBetween16And32", name: "HexEvenLengthBetween16And32", traits: {"smithy.api#length" => {"min" => 16, "max" => 32}, "smithy.api#pattern" => "^(?:[0-9a-fA-F][0-9a-fA-F])+$", "smithy.api#sensitive" => {}})
    HexLength16Or20Or24 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptographydata#HexLength16Or20Or24", name: "HexLength16Or20Or24", traits: {"smithy.api#length" => {"min" => 16, "max" => 24}, "smithy.api#pattern" => "^(?:[0-9a-fA-F]{16}|[0-9a-fA-F]{20}|[0-9a-fA-F]{24})$"})
    HexLengthBetween2And4 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptographydata#HexLengthBetween2And4", name: "HexLengthBetween2And4", traits: {"smithy.api#length" => {"min" => 2, "max" => 4}, "smithy.api#pattern" => "^[0-9a-fA-F]+$"})
    HexLengthBetween2And8 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptographydata#HexLengthBetween2And8", name: "HexLengthBetween2And8", traits: {"smithy.api#length" => {"min" => 2, "max" => 8}, "smithy.api#pattern" => "^[0-9a-fA-F]+$"})
    HexLengthEquals1 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptographydata#HexLengthEquals1", name: "HexLengthEquals1", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}, "smithy.api#pattern" => "^[0-9A-F]+$"})
    HexLengthEquals4 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptographydata#HexLengthEquals4", name: "HexLengthEquals4", traits: {"smithy.api#length" => {"min" => 4, "max" => 4}, "smithy.api#pattern" => "^[0-9a-fA-F]+$"})
    HexLengthEquals8 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptographydata#HexLengthEquals8", name: "HexLengthEquals8", traits: {"smithy.api#length" => {"min" => 8, "max" => 8}, "smithy.api#pattern" => "^[0-9a-fA-F]+$"})
    Ibm3624NaturalPin = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#Ibm3624NaturalPin", name: "Ibm3624NaturalPin")
    Ibm3624PinFromOffset = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#Ibm3624PinFromOffset", name: "Ibm3624PinFromOffset")
    Ibm3624PinOffset = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#Ibm3624PinOffset", name: "Ibm3624PinOffset")
    Ibm3624PinVerification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#Ibm3624PinVerification", name: "Ibm3624PinVerification")
    Ibm3624RandomPin = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#Ibm3624RandomPin", name: "Ibm3624RandomPin")
    IncomingDiffieHellmanTr31KeyBlock = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#IncomingDiffieHellmanTr31KeyBlock", name: "IncomingDiffieHellmanTr31KeyBlock")
    IncomingKeyMaterial = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.paymentcryptographydata#IncomingKeyMaterial", name: "IncomingKeyMaterial")
    InitializationVectorType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptographydata#InitializationVectorType", name: "InitializationVectorType", traits: {"smithy.api#length" => {"min" => 16, "max" => 32}, "smithy.api#pattern" => "^(?:[0-9a-fA-F]{16}|[0-9a-fA-F]{32})$", "smithy.api#sensitive" => {}})
    IntegerRangeBetween0And6 = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.paymentcryptographydata#IntegerRangeBetween0And6", name: "IntegerRangeBetween0And6", traits: {"smithy.api#range" => {"min" => 0, "max" => 6}})
    IntegerRangeBetween3And5Type = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.paymentcryptographydata#IntegerRangeBetween3And5Type", name: "IntegerRangeBetween3And5Type", traits: {"smithy.api#range" => {"min" => 3, "max" => 5}})
    IntegerRangeBetween4And12 = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.paymentcryptographydata#IntegerRangeBetween4And12", name: "IntegerRangeBetween4And12", traits: {"smithy.api#range" => {"min" => 4, "max" => 12}})
    IntegerRangeBetween4And16 = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.paymentcryptographydata#IntegerRangeBetween4And16", name: "IntegerRangeBetween4And16", traits: {"smithy.api#range" => {"min" => 4, "max" => 16}})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    KeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptographydata#KeyArn", name: "KeyArn", traits: {"smithy.api#length" => {"min" => 70, "max" => 150}, "smithy.api#pattern" => "^arn:aws:payment-cryptography:[a-z]{2}-[a-z]{1,16}-[0-9]+:[0-9]{12}:key/[0-9a-zA-Z]{16,64}$"})
    KeyArnOrKeyAliasType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptographydata#KeyArnOrKeyAliasType", name: "KeyArnOrKeyAliasType", traits: {"smithy.api#length" => {"min" => 7, "max" => 322}, "smithy.api#pattern" => "^arn:aws:payment-cryptography:[a-z]{2}-[a-z]{1,16}-[0-9]+:[0-9]{12}:(key/[0-9a-zA-Z]{16,64}|alias/[a-zA-Z0-9/_-]+)$|^alias/[a-zA-Z0-9/_-]+$"})
    KeyCheckValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptographydata#KeyCheckValue", name: "KeyCheckValue", traits: {"smithy.api#length" => {"min" => 4, "max" => 16}, "smithy.api#pattern" => "^[0-9a-fA-F]+$"})
    KeyCheckValueAlgorithm = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptographydata#KeyCheckValueAlgorithm", name: "KeyCheckValueAlgorithm", traits: {"smithy.api#enum" => [{"value" => "CMAC", "name" => "CMAC"}, {"value" => "ANSI_X9_24", "name" => "ANSI_X9_24"}, {"value" => "HMAC", "name" => "HMAC"}, {"value" => "SHA_1", "name" => "SHA_1"}]})
    KeyDerivationFunction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.paymentcryptographydata#KeyDerivationFunction", name: "KeyDerivationFunction")
    KeyDerivationHashAlgorithm = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.paymentcryptographydata#KeyDerivationHashAlgorithm", name: "KeyDerivationHashAlgorithm")
    KeyMaterial = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptographydata#KeyMaterial", name: "KeyMaterial", traits: {"smithy.api#length" => {"min" => 48, "max" => 16384}, "smithy.api#sensitive" => {}})
    MacAlgorithm = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.paymentcryptographydata#MacAlgorithm", name: "MacAlgorithm")
    MacAlgorithmDukpt = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#MacAlgorithmDukpt", name: "MacAlgorithmDukpt")
    MacAlgorithmEmv = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#MacAlgorithmEmv", name: "MacAlgorithmEmv")
    MacAttributes = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.paymentcryptographydata#MacAttributes", name: "MacAttributes")
    MacOutputType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptographydata#MacOutputType", name: "MacOutputType", traits: {"smithy.api#length" => {"min" => 4, "max" => 128}, "smithy.api#pattern" => "^[0-9a-fA-F]+$", "smithy.api#sensitive" => {}})
    MacType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptographydata#MacType", name: "MacType", traits: {"smithy.api#length" => {"min" => 4, "max" => 128}, "smithy.api#pattern" => "^(?:[0-9a-fA-F][0-9a-fA-F])+$", "smithy.api#sensitive" => {}})
    MajorKeyDerivationMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.paymentcryptographydata#MajorKeyDerivationMode", name: "MajorKeyDerivationMode")
    MasterCardAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#MasterCardAttributes", name: "MasterCardAttributes")
    MessageDataType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptographydata#MessageDataType", name: "MessageDataType", traits: {"smithy.api#length" => {"min" => 2, "max" => 8192}, "smithy.api#pattern" => "^(?:[0-9a-fA-F][0-9a-fA-F])+$", "smithy.api#sensitive" => {}})
    NumberLengthEquals2 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptographydata#NumberLengthEquals2", name: "NumberLengthEquals2", traits: {"smithy.api#length" => {"min" => 2, "max" => 2}, "smithy.api#pattern" => "^[0-9]+$"})
    OutgoingKeyMaterial = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.paymentcryptographydata#OutgoingKeyMaterial", name: "OutgoingKeyMaterial")
    OutgoingTr31KeyBlock = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#OutgoingTr31KeyBlock", name: "OutgoingTr31KeyBlock")
    PaddingType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.paymentcryptographydata#PaddingType", name: "PaddingType")
    PinBlockFormatForEmvPinChange = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.paymentcryptographydata#PinBlockFormatForEmvPinChange", name: "PinBlockFormatForEmvPinChange")
    PinBlockFormatForPinData = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.paymentcryptographydata#PinBlockFormatForPinData", name: "PinBlockFormatForPinData")
    PinBlockLengthEquals16 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptographydata#PinBlockLengthEquals16", name: "PinBlockLengthEquals16", traits: {"smithy.api#length" => {"min" => 16, "max" => 16}, "smithy.api#pattern" => "^[0-9a-fA-F]+$", "smithy.api#sensitive" => {}})
    PinBlockLengthPosition = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.paymentcryptographydata#PinBlockLengthPosition", name: "PinBlockLengthPosition")
    PinBlockPaddingType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.paymentcryptographydata#PinBlockPaddingType", name: "PinBlockPaddingType")
    PinChangeMacOutputType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptographydata#PinChangeMacOutputType", name: "PinChangeMacOutputType", traits: {"smithy.api#length" => {"min" => 8, "max" => 16}, "smithy.api#pattern" => "^[0-9a-fA-F]+$", "smithy.api#sensitive" => {}})
    PinData = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.paymentcryptographydata#PinData", name: "PinData")
    PinGenerationAttributes = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.paymentcryptographydata#PinGenerationAttributes", name: "PinGenerationAttributes")
    PinOffsetType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptographydata#PinOffsetType", name: "PinOffsetType", traits: {"smithy.api#length" => {"min" => 4, "max" => 12}, "smithy.api#pattern" => "^[0-9]+$", "smithy.api#sensitive" => {}})
    PinValidationDataType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptographydata#PinValidationDataType", name: "PinValidationDataType", traits: {"smithy.api#length" => {"min" => 4, "max" => 16}, "smithy.api#pattern" => "^[0-9]+$", "smithy.api#sensitive" => {}})
    PinVerificationAttributes = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.paymentcryptographydata#PinVerificationAttributes", name: "PinVerificationAttributes")
    PlainTextOutputType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptographydata#PlainTextOutputType", name: "PlainTextOutputType", traits: {"smithy.api#length" => {"min" => 2, "max" => 4224}, "smithy.api#pattern" => "^(?:[0-9a-fA-F][0-9a-fA-F])+$", "smithy.api#sensitive" => {}})
    PlainTextType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptographydata#PlainTextType", name: "PlainTextType", traits: {"smithy.api#length" => {"min" => 2, "max" => 4096}, "smithy.api#pattern" => "^(?:[0-9a-fA-F][0-9a-fA-F])+$", "smithy.api#sensitive" => {}})
    PrimaryAccountNumberType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptographydata#PrimaryAccountNumberType", name: "PrimaryAccountNumberType", traits: {"smithy.api#length" => {"min" => 12, "max" => 19}, "smithy.api#pattern" => "^[0-9]+$", "smithy.api#sensitive" => {}})
    ProprietaryAuthenticationDataType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptographydata#ProprietaryAuthenticationDataType", name: "ProprietaryAuthenticationDataType", traits: {"smithy.api#length" => {"min" => 1, "max" => 16}, "smithy.api#pattern" => "^[0-9a-fA-F]+$", "smithy.api#sensitive" => {}})
    ReEncryptDataInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#ReEncryptDataInput", name: "ReEncryptDataInput")
    ReEncryptDataOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#ReEncryptDataOutput", name: "ReEncryptDataOutput")
    ReEncryptionAttributes = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.paymentcryptographydata#ReEncryptionAttributes", name: "ReEncryptionAttributes")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ServiceCodeType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptographydata#ServiceCodeType", name: "ServiceCodeType", traits: {"smithy.api#length" => {"min" => 3, "max" => 3}, "smithy.api#pattern" => "^[0-9]+$", "smithy.api#sensitive" => {}})
    SessionDerivationDataType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptographydata#SessionDerivationDataType", name: "SessionDerivationDataType", traits: {"smithy.api#length" => {"min" => 16, "max" => 16}, "smithy.api#pattern" => "^[0-9a-fA-F]+$", "smithy.api#sensitive" => {}})
    SessionKeyAmex = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#SessionKeyAmex", name: "SessionKeyAmex")
    SessionKeyDerivation = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.paymentcryptographydata#SessionKeyDerivation", name: "SessionKeyDerivation")
    SessionKeyDerivationMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.paymentcryptographydata#SessionKeyDerivationMode", name: "SessionKeyDerivationMode")
    SessionKeyDerivationValue = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.paymentcryptographydata#SessionKeyDerivationValue", name: "SessionKeyDerivationValue")
    SessionKeyEmv2000 = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#SessionKeyEmv2000", name: "SessionKeyEmv2000")
    SessionKeyEmvCommon = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#SessionKeyEmvCommon", name: "SessionKeyEmvCommon")
    SessionKeyMastercard = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#SessionKeyMastercard", name: "SessionKeyMastercard")
    SessionKeyVisa = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#SessionKeyVisa", name: "SessionKeyVisa")
    SharedInformation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptographydata#SharedInformation", name: "SharedInformation", traits: {"smithy.api#length" => {"min" => 2, "max" => 2048}, "smithy.api#pattern" => "^(?:[0-9a-fA-F][0-9a-fA-F])+$"})
    SymmetricEncryptionAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#SymmetricEncryptionAttributes", name: "SymmetricEncryptionAttributes")
    SymmetricKeyAlgorithm = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.paymentcryptographydata#SymmetricKeyAlgorithm", name: "SymmetricKeyAlgorithm")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Tr31WrappedKeyBlock = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptographydata#Tr31WrappedKeyBlock", name: "Tr31WrappedKeyBlock", traits: {"smithy.api#length" => {"min" => 56, "max" => 9984}, "smithy.api#pattern" => "^[0-9a-zA-Z]+$", "smithy.api#sensitive" => {}})
    TrackDataType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptographydata#TrackDataType", name: "TrackDataType", traits: {"smithy.api#length" => {"min" => 2, "max" => 160}, "smithy.api#pattern" => "^[0-9a-fA-F]+$", "smithy.api#sensitive" => {}})
    TransactionDataType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptographydata#TransactionDataType", name: "TransactionDataType", traits: {"smithy.api#length" => {"min" => 2, "max" => 1024}, "smithy.api#pattern" => "^[0-9a-fA-F]+$", "smithy.api#sensitive" => {}})
    TranslateKeyMaterialInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#TranslateKeyMaterialInput", name: "TranslateKeyMaterialInput")
    TranslateKeyMaterialOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#TranslateKeyMaterialOutput", name: "TranslateKeyMaterialOutput")
    TranslatePinDataInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#TranslatePinDataInput", name: "TranslatePinDataInput")
    TranslatePinDataOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#TranslatePinDataOutput", name: "TranslatePinDataOutput")
    TranslationIsoFormats = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.paymentcryptographydata#TranslationIsoFormats", name: "TranslationIsoFormats")
    TranslationPinDataIsoFormat034 = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#TranslationPinDataIsoFormat034", name: "TranslationPinDataIsoFormat034")
    TranslationPinDataIsoFormat1 = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#TranslationPinDataIsoFormat1", name: "TranslationPinDataIsoFormat1")
    ValidationDataType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptographydata#ValidationDataType", name: "ValidationDataType", traits: {"smithy.api#length" => {"min" => 3, "max" => 5}, "smithy.api#pattern" => "^[0-9]+$", "smithy.api#sensitive" => {}})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client"})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.paymentcryptographydata#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    VerificationFailedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#VerificationFailedException", name: "VerificationFailedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VerificationFailedReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptographydata#VerificationFailedReason", name: "VerificationFailedReason", traits: {"smithy.api#enum" => [{"value" => "INVALID_MAC", "name" => "INVALID_MAC"}, {"value" => "INVALID_PIN", "name" => "INVALID_PIN"}, {"value" => "INVALID_VALIDATION_DATA", "name" => "INVALID_VALIDATION_DATA"}, {"value" => "INVALID_AUTH_REQUEST_CRYPTOGRAM", "name" => "INVALID_AUTH_REQUEST_CRYPTOGRAM"}]})
    VerificationValueType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptographydata#VerificationValueType", name: "VerificationValueType", traits: {"smithy.api#length" => {"min" => 4, "max" => 12}, "smithy.api#pattern" => "^[0-9]+$", "smithy.api#sensitive" => {}})
    VerifyAuthRequestCryptogramInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#VerifyAuthRequestCryptogramInput", name: "VerifyAuthRequestCryptogramInput")
    VerifyAuthRequestCryptogramOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#VerifyAuthRequestCryptogramOutput", name: "VerifyAuthRequestCryptogramOutput")
    VerifyCardValidationDataInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#VerifyCardValidationDataInput", name: "VerifyCardValidationDataInput")
    VerifyCardValidationDataOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#VerifyCardValidationDataOutput", name: "VerifyCardValidationDataOutput")
    VerifyMacInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#VerifyMacInput", name: "VerifyMacInput")
    VerifyMacOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#VerifyMacOutput", name: "VerifyMacOutput")
    VerifyPinDataInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#VerifyPinDataInput", name: "VerifyPinDataInput")
    VerifyPinDataOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#VerifyPinDataOutput", name: "VerifyPinDataOutput")
    VisaAmexDerivationOutputs = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#VisaAmexDerivationOutputs", name: "VisaAmexDerivationOutputs")
    VisaAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#VisaAttributes", name: "VisaAttributes")
    VisaPin = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#VisaPin", name: "VisaPin")
    VisaPinVerification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#VisaPinVerification", name: "VisaPinVerification")
    VisaPinVerificationValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#VisaPinVerificationValue", name: "VisaPinVerificationValue")
    WrappedKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#WrappedKey", name: "WrappedKey")
    WrappedKeyMaterial = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.paymentcryptographydata#WrappedKeyMaterial", name: "WrappedKeyMaterial")
    WrappedKeyMaterialFormat = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.paymentcryptographydata#WrappedKeyMaterialFormat", name: "WrappedKeyMaterialFormat", traits: {"smithy.api#enum" => [{"value" => "KEY_CRYPTOGRAM", "name" => "KEY_CRYPTOGRAM"}, {"value" => "TR31_KEY_BLOCK", "name" => "TR31_KEY_BLOCK"}, {"value" => "TR34_KEY_BLOCK", "name" => "TR34_KEY_BLOCK"}]})
    WrappedWorkingKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.paymentcryptographydata#WrappedWorkingKey", name: "WrappedWorkingKey")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AmexAttributes.add_member(:major_key_derivation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: MajorKeyDerivationMode, name: "MajorKeyDerivationMode", traits: {"smithy.api#required" => {}}))
    AmexAttributes.add_member(:primary_account_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PrimaryAccountNumberType, name: "PrimaryAccountNumber", traits: {"smithy.api#required" => {}}))
    AmexAttributes.add_member(:pan_sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberLengthEquals2, name: "PanSequenceNumber", traits: {"smithy.api#required" => {}}))
    AmexAttributes.add_member(:application_transaction_counter, ::Smithy::Schema::Shapes::MemberShape.new(target: HexLengthEquals4, name: "ApplicationTransactionCounter", traits: {"smithy.api#required" => {}}))
    AmexAttributes.add_member(:authorization_request_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "AuthorizationRequestKeyIdentifier", traits: {"smithy.api#required" => {}}))
    AmexAttributes.add_member(:current_pin_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrentPinAttributes, name: "CurrentPinAttributes"))
    AmexAttributes.type = Types::AmexAttributes
    AmexCardSecurityCodeVersion1.add_member(:card_expiry_date, ::Smithy::Schema::Shapes::MemberShape.new(target: CardExpiryDateType, name: "CardExpiryDate", traits: {"smithy.api#required" => {}}))
    AmexCardSecurityCodeVersion1.type = Types::AmexCardSecurityCodeVersion1
    AmexCardSecurityCodeVersion2.add_member(:card_expiry_date, ::Smithy::Schema::Shapes::MemberShape.new(target: CardExpiryDateType, name: "CardExpiryDate", traits: {"smithy.api#required" => {}}))
    AmexCardSecurityCodeVersion2.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceCodeType, name: "ServiceCode", traits: {"smithy.api#required" => {}}))
    AmexCardSecurityCodeVersion2.type = Types::AmexCardSecurityCodeVersion2
    AsymmetricEncryptionAttributes.add_member(:padding_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PaddingType, name: "PaddingType"))
    AsymmetricEncryptionAttributes.type = Types::AsymmetricEncryptionAttributes
    CardGenerationAttributes.add_member(:amex_card_security_code_version1, Types::CardGenerationAttributes::AmexCardSecurityCodeVersion1, ::Smithy::Schema::Shapes::MemberShape.new(target: AmexCardSecurityCodeVersion1, name: "AmexCardSecurityCodeVersion1"))
    CardGenerationAttributes.add_member(:amex_card_security_code_version2, Types::CardGenerationAttributes::AmexCardSecurityCodeVersion2, ::Smithy::Schema::Shapes::MemberShape.new(target: AmexCardSecurityCodeVersion2, name: "AmexCardSecurityCodeVersion2"))
    CardGenerationAttributes.add_member(:card_verification_value1, Types::CardGenerationAttributes::CardVerificationValue1, ::Smithy::Schema::Shapes::MemberShape.new(target: CardVerificationValue1, name: "CardVerificationValue1"))
    CardGenerationAttributes.add_member(:card_verification_value2, Types::CardGenerationAttributes::CardVerificationValue2, ::Smithy::Schema::Shapes::MemberShape.new(target: CardVerificationValue2, name: "CardVerificationValue2"))
    CardGenerationAttributes.add_member(:card_holder_verification_value, Types::CardGenerationAttributes::CardHolderVerificationValue, ::Smithy::Schema::Shapes::MemberShape.new(target: CardHolderVerificationValue, name: "CardHolderVerificationValue"))
    CardGenerationAttributes.add_member(:dynamic_card_verification_code, Types::CardGenerationAttributes::DynamicCardVerificationCode, ::Smithy::Schema::Shapes::MemberShape.new(target: DynamicCardVerificationCode, name: "DynamicCardVerificationCode"))
    CardGenerationAttributes.add_member(:dynamic_card_verification_value, Types::CardGenerationAttributes::DynamicCardVerificationValue, ::Smithy::Schema::Shapes::MemberShape.new(target: DynamicCardVerificationValue, name: "DynamicCardVerificationValue"))
    CardGenerationAttributes.add_member(:unknown, Types::CardGenerationAttributes::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    CardGenerationAttributes.type = Types::CardGenerationAttributes
    CardHolderVerificationValue.add_member(:unpredictable_number, ::Smithy::Schema::Shapes::MemberShape.new(target: HexLengthBetween2And8, name: "UnpredictableNumber", traits: {"smithy.api#required" => {}}))
    CardHolderVerificationValue.add_member(:pan_sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberLengthEquals2, name: "PanSequenceNumber", traits: {"smithy.api#required" => {}}))
    CardHolderVerificationValue.add_member(:application_transaction_counter, ::Smithy::Schema::Shapes::MemberShape.new(target: HexLengthBetween2And4, name: "ApplicationTransactionCounter", traits: {"smithy.api#required" => {}}))
    CardHolderVerificationValue.type = Types::CardHolderVerificationValue
    CardVerificationAttributes.add_member(:amex_card_security_code_version1, Types::CardVerificationAttributes::AmexCardSecurityCodeVersion1, ::Smithy::Schema::Shapes::MemberShape.new(target: AmexCardSecurityCodeVersion1, name: "AmexCardSecurityCodeVersion1"))
    CardVerificationAttributes.add_member(:amex_card_security_code_version2, Types::CardVerificationAttributes::AmexCardSecurityCodeVersion2, ::Smithy::Schema::Shapes::MemberShape.new(target: AmexCardSecurityCodeVersion2, name: "AmexCardSecurityCodeVersion2"))
    CardVerificationAttributes.add_member(:card_verification_value1, Types::CardVerificationAttributes::CardVerificationValue1, ::Smithy::Schema::Shapes::MemberShape.new(target: CardVerificationValue1, name: "CardVerificationValue1"))
    CardVerificationAttributes.add_member(:card_verification_value2, Types::CardVerificationAttributes::CardVerificationValue2, ::Smithy::Schema::Shapes::MemberShape.new(target: CardVerificationValue2, name: "CardVerificationValue2"))
    CardVerificationAttributes.add_member(:card_holder_verification_value, Types::CardVerificationAttributes::CardHolderVerificationValue, ::Smithy::Schema::Shapes::MemberShape.new(target: CardHolderVerificationValue, name: "CardHolderVerificationValue"))
    CardVerificationAttributes.add_member(:dynamic_card_verification_code, Types::CardVerificationAttributes::DynamicCardVerificationCode, ::Smithy::Schema::Shapes::MemberShape.new(target: DynamicCardVerificationCode, name: "DynamicCardVerificationCode"))
    CardVerificationAttributes.add_member(:dynamic_card_verification_value, Types::CardVerificationAttributes::DynamicCardVerificationValue, ::Smithy::Schema::Shapes::MemberShape.new(target: DynamicCardVerificationValue, name: "DynamicCardVerificationValue"))
    CardVerificationAttributes.add_member(:discover_dynamic_card_verification_code, Types::CardVerificationAttributes::DiscoverDynamicCardVerificationCode, ::Smithy::Schema::Shapes::MemberShape.new(target: DiscoverDynamicCardVerificationCode, name: "DiscoverDynamicCardVerificationCode"))
    CardVerificationAttributes.add_member(:unknown, Types::CardVerificationAttributes::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    CardVerificationAttributes.type = Types::CardVerificationAttributes
    CardVerificationValue1.add_member(:card_expiry_date, ::Smithy::Schema::Shapes::MemberShape.new(target: CardExpiryDateType, name: "CardExpiryDate", traits: {"smithy.api#required" => {}}))
    CardVerificationValue1.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceCodeType, name: "ServiceCode", traits: {"smithy.api#required" => {}}))
    CardVerificationValue1.type = Types::CardVerificationValue1
    CardVerificationValue2.add_member(:card_expiry_date, ::Smithy::Schema::Shapes::MemberShape.new(target: CardExpiryDateType, name: "CardExpiryDate", traits: {"smithy.api#required" => {}}))
    CardVerificationValue2.type = Types::CardVerificationValue2
    CryptogramAuthResponse.add_member(:arpc_method1, Types::CryptogramAuthResponse::ArpcMethod1, ::Smithy::Schema::Shapes::MemberShape.new(target: CryptogramVerificationArpcMethod1, name: "ArpcMethod1"))
    CryptogramAuthResponse.add_member(:arpc_method2, Types::CryptogramAuthResponse::ArpcMethod2, ::Smithy::Schema::Shapes::MemberShape.new(target: CryptogramVerificationArpcMethod2, name: "ArpcMethod2"))
    CryptogramAuthResponse.add_member(:unknown, Types::CryptogramAuthResponse::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    CryptogramAuthResponse.type = Types::CryptogramAuthResponse
    CryptogramVerificationArpcMethod1.add_member(:auth_response_code, ::Smithy::Schema::Shapes::MemberShape.new(target: HexLengthEquals4, name: "AuthResponseCode", traits: {"smithy.api#required" => {}}))
    CryptogramVerificationArpcMethod1.type = Types::CryptogramVerificationArpcMethod1
    CryptogramVerificationArpcMethod2.add_member(:card_status_update, ::Smithy::Schema::Shapes::MemberShape.new(target: HexLengthEquals8, name: "CardStatusUpdate", traits: {"smithy.api#required" => {}}))
    CryptogramVerificationArpcMethod2.add_member(:proprietary_authentication_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ProprietaryAuthenticationDataType, name: "ProprietaryAuthenticationData"))
    CryptogramVerificationArpcMethod2.type = Types::CryptogramVerificationArpcMethod2
    CurrentPinAttributes.add_member(:current_pin_pek_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "CurrentPinPekIdentifier", traits: {"smithy.api#required" => {}}))
    CurrentPinAttributes.add_member(:current_encrypted_pin_block, ::Smithy::Schema::Shapes::MemberShape.new(target: PinBlockLengthEquals16, name: "CurrentEncryptedPinBlock", traits: {"smithy.api#required" => {}}))
    CurrentPinAttributes.type = Types::CurrentPinAttributes
    DecryptDataInput.add_member(:key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "KeyIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DecryptDataInput.add_member(:cipher_text, ::Smithy::Schema::Shapes::MemberShape.new(target: CipherTextType, name: "CipherText", traits: {"smithy.api#required" => {}}))
    DecryptDataInput.add_member(:decryption_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionDecryptionAttributes, name: "DecryptionAttributes", traits: {"smithy.api#required" => {}}))
    DecryptDataInput.add_member(:wrapped_key, ::Smithy::Schema::Shapes::MemberShape.new(target: WrappedKey, name: "WrappedKey"))
    DecryptDataInput.type = Types::DecryptDataInput
    DecryptDataOutput.add_member(:key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArn, name: "KeyArn", traits: {"smithy.api#required" => {}}))
    DecryptDataOutput.add_member(:key_check_value, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyCheckValue, name: "KeyCheckValue", traits: {"smithy.api#required" => {}}))
    DecryptDataOutput.add_member(:plain_text, ::Smithy::Schema::Shapes::MemberShape.new(target: PlainTextOutputType, name: "PlainText", traits: {"smithy.api#required" => {}}))
    DecryptDataOutput.type = Types::DecryptDataOutput
    DerivationMethodAttributes.add_member(:emv_common, Types::DerivationMethodAttributes::EmvCommon, ::Smithy::Schema::Shapes::MemberShape.new(target: EmvCommonAttributes, name: "EmvCommon"))
    DerivationMethodAttributes.add_member(:amex, Types::DerivationMethodAttributes::Amex, ::Smithy::Schema::Shapes::MemberShape.new(target: AmexAttributes, name: "Amex"))
    DerivationMethodAttributes.add_member(:visa, Types::DerivationMethodAttributes::Visa, ::Smithy::Schema::Shapes::MemberShape.new(target: VisaAttributes, name: "Visa"))
    DerivationMethodAttributes.add_member(:emv2000, Types::DerivationMethodAttributes::Emv2000, ::Smithy::Schema::Shapes::MemberShape.new(target: Emv2000Attributes, name: "Emv2000"))
    DerivationMethodAttributes.add_member(:mastercard, Types::DerivationMethodAttributes::Mastercard, ::Smithy::Schema::Shapes::MemberShape.new(target: MasterCardAttributes, name: "Mastercard"))
    DerivationMethodAttributes.add_member(:unknown, Types::DerivationMethodAttributes::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    DerivationMethodAttributes.type = Types::DerivationMethodAttributes
    DiffieHellmanDerivationData.add_member(:shared_information, Types::DiffieHellmanDerivationData::SharedInformation, ::Smithy::Schema::Shapes::MemberShape.new(target: SharedInformation, name: "SharedInformation"))
    DiffieHellmanDerivationData.add_member(:unknown, Types::DiffieHellmanDerivationData::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    DiffieHellmanDerivationData.type = Types::DiffieHellmanDerivationData
    DiscoverDynamicCardVerificationCode.add_member(:card_expiry_date, ::Smithy::Schema::Shapes::MemberShape.new(target: CardExpiryDateType, name: "CardExpiryDate", traits: {"smithy.api#required" => {}}))
    DiscoverDynamicCardVerificationCode.add_member(:unpredictable_number, ::Smithy::Schema::Shapes::MemberShape.new(target: HexLengthBetween2And8, name: "UnpredictableNumber", traits: {"smithy.api#required" => {}}))
    DiscoverDynamicCardVerificationCode.add_member(:application_transaction_counter, ::Smithy::Schema::Shapes::MemberShape.new(target: HexLengthBetween2And4, name: "ApplicationTransactionCounter", traits: {"smithy.api#required" => {}}))
    DiscoverDynamicCardVerificationCode.type = Types::DiscoverDynamicCardVerificationCode
    DukptAttributes.add_member(:key_serial_number, ::Smithy::Schema::Shapes::MemberShape.new(target: HexLength16Or20Or24, name: "KeySerialNumber", traits: {"smithy.api#required" => {}}))
    DukptAttributes.add_member(:dukpt_derivation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DukptDerivationType, name: "DukptDerivationType", traits: {"smithy.api#required" => {}}))
    DukptAttributes.type = Types::DukptAttributes
    DukptDerivationAttributes.add_member(:key_serial_number, ::Smithy::Schema::Shapes::MemberShape.new(target: HexLength16Or20Or24, name: "KeySerialNumber", traits: {"smithy.api#required" => {}}))
    DukptDerivationAttributes.add_member(:dukpt_key_derivation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DukptDerivationType, name: "DukptKeyDerivationType"))
    DukptDerivationAttributes.add_member(:dukpt_key_variant, ::Smithy::Schema::Shapes::MemberShape.new(target: DukptKeyVariant, name: "DukptKeyVariant"))
    DukptDerivationAttributes.type = Types::DukptDerivationAttributes
    DukptDerivationType.add_member(:tdes_2_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TDES_2KEY", traits: {"smithy.api#enumValue" => "TDES_2KEY"}))
    DukptDerivationType.add_member(:tdes_3_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TDES_3KEY", traits: {"smithy.api#enumValue" => "TDES_3KEY"}))
    DukptDerivationType.add_member(:aes_128, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AES_128", traits: {"smithy.api#enumValue" => "AES_128"}))
    DukptDerivationType.add_member(:aes_192, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AES_192", traits: {"smithy.api#enumValue" => "AES_192"}))
    DukptDerivationType.add_member(:aes_256, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AES_256", traits: {"smithy.api#enumValue" => "AES_256"}))
    DukptEncryptionAttributes.add_member(:key_serial_number, ::Smithy::Schema::Shapes::MemberShape.new(target: HexLength16Or20Or24, name: "KeySerialNumber", traits: {"smithy.api#required" => {}}))
    DukptEncryptionAttributes.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: DukptEncryptionMode, name: "Mode"))
    DukptEncryptionAttributes.add_member(:dukpt_key_derivation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DukptDerivationType, name: "DukptKeyDerivationType"))
    DukptEncryptionAttributes.add_member(:dukpt_key_variant, ::Smithy::Schema::Shapes::MemberShape.new(target: DukptKeyVariant, name: "DukptKeyVariant"))
    DukptEncryptionAttributes.add_member(:initialization_vector, ::Smithy::Schema::Shapes::MemberShape.new(target: InitializationVectorType, name: "InitializationVector"))
    DukptEncryptionAttributes.type = Types::DukptEncryptionAttributes
    DukptEncryptionMode.add_member(:ecb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECB", traits: {"smithy.api#enumValue" => "ECB"}))
    DukptEncryptionMode.add_member(:cbc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CBC", traits: {"smithy.api#enumValue" => "CBC"}))
    DukptKeyVariant.add_member(:bidirectional, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BIDIRECTIONAL", traits: {"smithy.api#enumValue" => "BIDIRECTIONAL"}))
    DukptKeyVariant.add_member(:request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUEST", traits: {"smithy.api#enumValue" => "REQUEST"}))
    DukptKeyVariant.add_member(:response, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESPONSE", traits: {"smithy.api#enumValue" => "RESPONSE"}))
    DynamicCardVerificationCode.add_member(:unpredictable_number, ::Smithy::Schema::Shapes::MemberShape.new(target: HexLengthBetween2And8, name: "UnpredictableNumber", traits: {"smithy.api#required" => {}}))
    DynamicCardVerificationCode.add_member(:pan_sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberLengthEquals2, name: "PanSequenceNumber", traits: {"smithy.api#required" => {}}))
    DynamicCardVerificationCode.add_member(:application_transaction_counter, ::Smithy::Schema::Shapes::MemberShape.new(target: HexLengthBetween2And4, name: "ApplicationTransactionCounter", traits: {"smithy.api#required" => {}}))
    DynamicCardVerificationCode.add_member(:track_data, ::Smithy::Schema::Shapes::MemberShape.new(target: TrackDataType, name: "TrackData", traits: {"smithy.api#required" => {}}))
    DynamicCardVerificationCode.type = Types::DynamicCardVerificationCode
    DynamicCardVerificationValue.add_member(:pan_sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberLengthEquals2, name: "PanSequenceNumber", traits: {"smithy.api#required" => {}}))
    DynamicCardVerificationValue.add_member(:card_expiry_date, ::Smithy::Schema::Shapes::MemberShape.new(target: CardExpiryDateType, name: "CardExpiryDate", traits: {"smithy.api#required" => {}}))
    DynamicCardVerificationValue.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceCodeType, name: "ServiceCode", traits: {"smithy.api#required" => {}}))
    DynamicCardVerificationValue.add_member(:application_transaction_counter, ::Smithy::Schema::Shapes::MemberShape.new(target: HexLengthBetween2And4, name: "ApplicationTransactionCounter", traits: {"smithy.api#required" => {}}))
    DynamicCardVerificationValue.type = Types::DynamicCardVerificationValue
    EcdhDerivationAttributes.add_member(:certificate_authority_public_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "CertificateAuthorityPublicKeyIdentifier", traits: {"smithy.api#required" => {}}))
    EcdhDerivationAttributes.add_member(:public_key_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateType, name: "PublicKeyCertificate", traits: {"smithy.api#required" => {}}))
    EcdhDerivationAttributes.add_member(:key_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: SymmetricKeyAlgorithm, name: "KeyAlgorithm", traits: {"smithy.api#required" => {}}))
    EcdhDerivationAttributes.add_member(:key_derivation_function, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyDerivationFunction, name: "KeyDerivationFunction", traits: {"smithy.api#required" => {}}))
    EcdhDerivationAttributes.add_member(:key_derivation_hash_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyDerivationHashAlgorithm, name: "KeyDerivationHashAlgorithm", traits: {"smithy.api#required" => {}}))
    EcdhDerivationAttributes.add_member(:shared_information, ::Smithy::Schema::Shapes::MemberShape.new(target: SharedInformation, name: "SharedInformation", traits: {"smithy.api#required" => {}}))
    EcdhDerivationAttributes.type = Types::EcdhDerivationAttributes
    Emv2000Attributes.add_member(:major_key_derivation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: MajorKeyDerivationMode, name: "MajorKeyDerivationMode", traits: {"smithy.api#required" => {}}))
    Emv2000Attributes.add_member(:primary_account_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PrimaryAccountNumberType, name: "PrimaryAccountNumber", traits: {"smithy.api#required" => {}}))
    Emv2000Attributes.add_member(:pan_sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberLengthEquals2, name: "PanSequenceNumber", traits: {"smithy.api#required" => {}}))
    Emv2000Attributes.add_member(:application_transaction_counter, ::Smithy::Schema::Shapes::MemberShape.new(target: HexLengthEquals4, name: "ApplicationTransactionCounter", traits: {"smithy.api#required" => {}}))
    Emv2000Attributes.type = Types::Emv2000Attributes
    EmvCommonAttributes.add_member(:major_key_derivation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: MajorKeyDerivationMode, name: "MajorKeyDerivationMode", traits: {"smithy.api#required" => {}}))
    EmvCommonAttributes.add_member(:primary_account_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PrimaryAccountNumberType, name: "PrimaryAccountNumber", traits: {"smithy.api#required" => {}}))
    EmvCommonAttributes.add_member(:pan_sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberLengthEquals2, name: "PanSequenceNumber", traits: {"smithy.api#required" => {}}))
    EmvCommonAttributes.add_member(:application_cryptogram, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationCryptogramType, name: "ApplicationCryptogram", traits: {"smithy.api#required" => {}}))
    EmvCommonAttributes.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: EmvEncryptionMode, name: "Mode", traits: {"smithy.api#required" => {}}))
    EmvCommonAttributes.add_member(:pin_block_padding_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PinBlockPaddingType, name: "PinBlockPaddingType", traits: {"smithy.api#required" => {}}))
    EmvCommonAttributes.add_member(:pin_block_length_position, ::Smithy::Schema::Shapes::MemberShape.new(target: PinBlockLengthPosition, name: "PinBlockLengthPosition", traits: {"smithy.api#required" => {}}))
    EmvCommonAttributes.type = Types::EmvCommonAttributes
    EmvEncryptionAttributes.add_member(:major_key_derivation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: EmvMajorKeyDerivationMode, name: "MajorKeyDerivationMode", traits: {"smithy.api#required" => {}}))
    EmvEncryptionAttributes.add_member(:primary_account_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PrimaryAccountNumberType, name: "PrimaryAccountNumber", traits: {"smithy.api#required" => {}}))
    EmvEncryptionAttributes.add_member(:pan_sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberLengthEquals2, name: "PanSequenceNumber", traits: {"smithy.api#required" => {}}))
    EmvEncryptionAttributes.add_member(:session_derivation_data, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionDerivationDataType, name: "SessionDerivationData", traits: {"smithy.api#required" => {}}))
    EmvEncryptionAttributes.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: EmvEncryptionMode, name: "Mode"))
    EmvEncryptionAttributes.add_member(:initialization_vector, ::Smithy::Schema::Shapes::MemberShape.new(target: InitializationVectorType, name: "InitializationVector"))
    EmvEncryptionAttributes.type = Types::EmvEncryptionAttributes
    EmvEncryptionMode.add_member(:ecb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECB", traits: {"smithy.api#enumValue" => "ECB"}))
    EmvEncryptionMode.add_member(:cbc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CBC", traits: {"smithy.api#enumValue" => "CBC"}))
    EmvMajorKeyDerivationMode.add_member(:emv_option_a, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMV_OPTION_A", traits: {"smithy.api#enumValue" => "EMV_OPTION_A"}))
    EmvMajorKeyDerivationMode.add_member(:emv_option_b, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMV_OPTION_B", traits: {"smithy.api#enumValue" => "EMV_OPTION_B"}))
    EncryptDataInput.add_member(:key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "KeyIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    EncryptDataInput.add_member(:plain_text, ::Smithy::Schema::Shapes::MemberShape.new(target: PlainTextType, name: "PlainText", traits: {"smithy.api#required" => {}}))
    EncryptDataInput.add_member(:encryption_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionDecryptionAttributes, name: "EncryptionAttributes", traits: {"smithy.api#required" => {}}))
    EncryptDataInput.add_member(:wrapped_key, ::Smithy::Schema::Shapes::MemberShape.new(target: WrappedKey, name: "WrappedKey"))
    EncryptDataInput.type = Types::EncryptDataInput
    EncryptDataOutput.add_member(:key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArn, name: "KeyArn", traits: {"smithy.api#required" => {}}))
    EncryptDataOutput.add_member(:key_check_value, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyCheckValue, name: "KeyCheckValue"))
    EncryptDataOutput.add_member(:cipher_text, ::Smithy::Schema::Shapes::MemberShape.new(target: CipherTextType, name: "CipherText", traits: {"smithy.api#required" => {}}))
    EncryptDataOutput.type = Types::EncryptDataOutput
    EncryptionDecryptionAttributes.add_member(:symmetric, Types::EncryptionDecryptionAttributes::Symmetric, ::Smithy::Schema::Shapes::MemberShape.new(target: SymmetricEncryptionAttributes, name: "Symmetric"))
    EncryptionDecryptionAttributes.add_member(:asymmetric, Types::EncryptionDecryptionAttributes::Asymmetric, ::Smithy::Schema::Shapes::MemberShape.new(target: AsymmetricEncryptionAttributes, name: "Asymmetric"))
    EncryptionDecryptionAttributes.add_member(:dukpt, Types::EncryptionDecryptionAttributes::Dukpt, ::Smithy::Schema::Shapes::MemberShape.new(target: DukptEncryptionAttributes, name: "Dukpt"))
    EncryptionDecryptionAttributes.add_member(:emv, Types::EncryptionDecryptionAttributes::Emv, ::Smithy::Schema::Shapes::MemberShape.new(target: EmvEncryptionAttributes, name: "Emv"))
    EncryptionDecryptionAttributes.add_member(:unknown, Types::EncryptionDecryptionAttributes::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    EncryptionDecryptionAttributes.type = Types::EncryptionDecryptionAttributes
    EncryptionMode.add_member(:ecb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECB", traits: {"smithy.api#enumValue" => "ECB"}))
    EncryptionMode.add_member(:cbc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CBC", traits: {"smithy.api#enumValue" => "CBC"}))
    EncryptionMode.add_member(:cfb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CFB", traits: {"smithy.api#enumValue" => "CFB"}))
    EncryptionMode.add_member(:cfb1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CFB1", traits: {"smithy.api#enumValue" => "CFB1"}))
    EncryptionMode.add_member(:cfb8, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CFB8", traits: {"smithy.api#enumValue" => "CFB8"}))
    EncryptionMode.add_member(:cfb64, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CFB64", traits: {"smithy.api#enumValue" => "CFB64"}))
    EncryptionMode.add_member(:cfb128, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CFB128", traits: {"smithy.api#enumValue" => "CFB128"}))
    EncryptionMode.add_member(:ofb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OFB", traits: {"smithy.api#enumValue" => "OFB"}))
    GenerateCardValidationDataInput.add_member(:key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "KeyIdentifier", traits: {"smithy.api#required" => {}}))
    GenerateCardValidationDataInput.add_member(:primary_account_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PrimaryAccountNumberType, name: "PrimaryAccountNumber", traits: {"smithy.api#required" => {}}))
    GenerateCardValidationDataInput.add_member(:generation_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: CardGenerationAttributes, name: "GenerationAttributes", traits: {"smithy.api#required" => {}}))
    GenerateCardValidationDataInput.add_member(:validation_data_length, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerRangeBetween3And5Type, name: "ValidationDataLength"))
    GenerateCardValidationDataInput.type = Types::GenerateCardValidationDataInput
    GenerateCardValidationDataOutput.add_member(:key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArn, name: "KeyArn", traits: {"smithy.api#required" => {}}))
    GenerateCardValidationDataOutput.add_member(:key_check_value, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyCheckValue, name: "KeyCheckValue", traits: {"smithy.api#required" => {}}))
    GenerateCardValidationDataOutput.add_member(:validation_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationDataType, name: "ValidationData", traits: {"smithy.api#required" => {}}))
    GenerateCardValidationDataOutput.type = Types::GenerateCardValidationDataOutput
    GenerateMacEmvPinChangeInput.add_member(:new_pin_pek_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "NewPinPekIdentifier", traits: {"smithy.api#required" => {}}))
    GenerateMacEmvPinChangeInput.add_member(:new_encrypted_pin_block, ::Smithy::Schema::Shapes::MemberShape.new(target: PinBlockLengthEquals16, name: "NewEncryptedPinBlock", traits: {"smithy.api#required" => {}}))
    GenerateMacEmvPinChangeInput.add_member(:pin_block_format, ::Smithy::Schema::Shapes::MemberShape.new(target: PinBlockFormatForEmvPinChange, name: "PinBlockFormat", traits: {"smithy.api#required" => {}}))
    GenerateMacEmvPinChangeInput.add_member(:secure_messaging_integrity_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "SecureMessagingIntegrityKeyIdentifier", traits: {"smithy.api#required" => {}}))
    GenerateMacEmvPinChangeInput.add_member(:secure_messaging_confidentiality_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "SecureMessagingConfidentialityKeyIdentifier", traits: {"smithy.api#required" => {}}))
    GenerateMacEmvPinChangeInput.add_member(:message_data, ::Smithy::Schema::Shapes::MemberShape.new(target: CommandMessageDataType, name: "MessageData", traits: {"smithy.api#required" => {}}))
    GenerateMacEmvPinChangeInput.add_member(:derivation_method_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: DerivationMethodAttributes, name: "DerivationMethodAttributes", traits: {"smithy.api#required" => {}}))
    GenerateMacEmvPinChangeInput.type = Types::GenerateMacEmvPinChangeInput
    GenerateMacEmvPinChangeOutput.add_member(:new_pin_pek_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArn, name: "NewPinPekArn", traits: {"smithy.api#required" => {}}))
    GenerateMacEmvPinChangeOutput.add_member(:secure_messaging_integrity_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArn, name: "SecureMessagingIntegrityKeyArn", traits: {"smithy.api#required" => {}}))
    GenerateMacEmvPinChangeOutput.add_member(:secure_messaging_confidentiality_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArn, name: "SecureMessagingConfidentialityKeyArn", traits: {"smithy.api#required" => {}}))
    GenerateMacEmvPinChangeOutput.add_member(:mac, ::Smithy::Schema::Shapes::MemberShape.new(target: PinChangeMacOutputType, name: "Mac", traits: {"smithy.api#required" => {}}))
    GenerateMacEmvPinChangeOutput.add_member(:encrypted_pin_block, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptedPinBlockType, name: "EncryptedPinBlock", traits: {"smithy.api#required" => {}}))
    GenerateMacEmvPinChangeOutput.add_member(:new_pin_pek_key_check_value, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyCheckValue, name: "NewPinPekKeyCheckValue", traits: {"smithy.api#required" => {}}))
    GenerateMacEmvPinChangeOutput.add_member(:secure_messaging_integrity_key_check_value, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyCheckValue, name: "SecureMessagingIntegrityKeyCheckValue", traits: {"smithy.api#required" => {}}))
    GenerateMacEmvPinChangeOutput.add_member(:secure_messaging_confidentiality_key_check_value, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyCheckValue, name: "SecureMessagingConfidentialityKeyCheckValue", traits: {"smithy.api#required" => {}}))
    GenerateMacEmvPinChangeOutput.add_member(:visa_amex_derivation_outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: VisaAmexDerivationOutputs, name: "VisaAmexDerivationOutputs"))
    GenerateMacEmvPinChangeOutput.type = Types::GenerateMacEmvPinChangeOutput
    GenerateMacInput.add_member(:key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "KeyIdentifier", traits: {"smithy.api#required" => {}}))
    GenerateMacInput.add_member(:message_data, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageDataType, name: "MessageData", traits: {"smithy.api#required" => {}}))
    GenerateMacInput.add_member(:generation_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: MacAttributes, name: "GenerationAttributes", traits: {"smithy.api#required" => {}}))
    GenerateMacInput.add_member(:mac_length, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerRangeBetween4And16, name: "MacLength"))
    GenerateMacInput.type = Types::GenerateMacInput
    GenerateMacOutput.add_member(:key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArn, name: "KeyArn", traits: {"smithy.api#required" => {}}))
    GenerateMacOutput.add_member(:key_check_value, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyCheckValue, name: "KeyCheckValue", traits: {"smithy.api#required" => {}}))
    GenerateMacOutput.add_member(:mac, ::Smithy::Schema::Shapes::MemberShape.new(target: MacOutputType, name: "Mac", traits: {"smithy.api#required" => {}}))
    GenerateMacOutput.type = Types::GenerateMacOutput
    GeneratePinDataInput.add_member(:generation_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "GenerationKeyIdentifier", traits: {"smithy.api#required" => {}}))
    GeneratePinDataInput.add_member(:encryption_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "EncryptionKeyIdentifier", traits: {"smithy.api#required" => {}}))
    GeneratePinDataInput.add_member(:generation_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: PinGenerationAttributes, name: "GenerationAttributes", traits: {"smithy.api#required" => {}}))
    GeneratePinDataInput.add_member(:pin_data_length, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerRangeBetween4And12, name: "PinDataLength"))
    GeneratePinDataInput.add_member(:primary_account_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PrimaryAccountNumberType, name: "PrimaryAccountNumber"))
    GeneratePinDataInput.add_member(:pin_block_format, ::Smithy::Schema::Shapes::MemberShape.new(target: PinBlockFormatForPinData, name: "PinBlockFormat", traits: {"smithy.api#required" => {}}))
    GeneratePinDataInput.add_member(:encryption_wrapped_key, ::Smithy::Schema::Shapes::MemberShape.new(target: WrappedKey, name: "EncryptionWrappedKey"))
    GeneratePinDataInput.type = Types::GeneratePinDataInput
    GeneratePinDataOutput.add_member(:generation_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArn, name: "GenerationKeyArn", traits: {"smithy.api#required" => {}}))
    GeneratePinDataOutput.add_member(:generation_key_check_value, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyCheckValue, name: "GenerationKeyCheckValue", traits: {"smithy.api#required" => {}}))
    GeneratePinDataOutput.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArn, name: "EncryptionKeyArn", traits: {"smithy.api#required" => {}}))
    GeneratePinDataOutput.add_member(:encryption_key_check_value, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyCheckValue, name: "EncryptionKeyCheckValue", traits: {"smithy.api#required" => {}}))
    GeneratePinDataOutput.add_member(:encrypted_pin_block, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptedPinBlockType, name: "EncryptedPinBlock", traits: {"smithy.api#required" => {}}))
    GeneratePinDataOutput.add_member(:pin_data, ::Smithy::Schema::Shapes::MemberShape.new(target: PinData, name: "PinData", traits: {"smithy.api#required" => {}}))
    GeneratePinDataOutput.type = Types::GeneratePinDataOutput
    Ibm3624NaturalPin.add_member(:decimalization_table, ::Smithy::Schema::Shapes::MemberShape.new(target: DecimalizationTableType, name: "DecimalizationTable", traits: {"smithy.api#required" => {}}))
    Ibm3624NaturalPin.add_member(:pin_validation_data_pad_character, ::Smithy::Schema::Shapes::MemberShape.new(target: HexLengthEquals1, name: "PinValidationDataPadCharacter", traits: {"smithy.api#required" => {}}))
    Ibm3624NaturalPin.add_member(:pin_validation_data, ::Smithy::Schema::Shapes::MemberShape.new(target: PinValidationDataType, name: "PinValidationData", traits: {"smithy.api#required" => {}}))
    Ibm3624NaturalPin.type = Types::Ibm3624NaturalPin
    Ibm3624PinFromOffset.add_member(:decimalization_table, ::Smithy::Schema::Shapes::MemberShape.new(target: DecimalizationTableType, name: "DecimalizationTable", traits: {"smithy.api#required" => {}}))
    Ibm3624PinFromOffset.add_member(:pin_validation_data_pad_character, ::Smithy::Schema::Shapes::MemberShape.new(target: HexLengthEquals1, name: "PinValidationDataPadCharacter", traits: {"smithy.api#required" => {}}))
    Ibm3624PinFromOffset.add_member(:pin_validation_data, ::Smithy::Schema::Shapes::MemberShape.new(target: PinValidationDataType, name: "PinValidationData", traits: {"smithy.api#required" => {}}))
    Ibm3624PinFromOffset.add_member(:pin_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: PinOffsetType, name: "PinOffset", traits: {"smithy.api#required" => {}}))
    Ibm3624PinFromOffset.type = Types::Ibm3624PinFromOffset
    Ibm3624PinOffset.add_member(:encrypted_pin_block, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptedPinBlockType, name: "EncryptedPinBlock", traits: {"smithy.api#required" => {}}))
    Ibm3624PinOffset.add_member(:decimalization_table, ::Smithy::Schema::Shapes::MemberShape.new(target: DecimalizationTableType, name: "DecimalizationTable", traits: {"smithy.api#required" => {}}))
    Ibm3624PinOffset.add_member(:pin_validation_data_pad_character, ::Smithy::Schema::Shapes::MemberShape.new(target: HexLengthEquals1, name: "PinValidationDataPadCharacter", traits: {"smithy.api#required" => {}}))
    Ibm3624PinOffset.add_member(:pin_validation_data, ::Smithy::Schema::Shapes::MemberShape.new(target: PinValidationDataType, name: "PinValidationData", traits: {"smithy.api#required" => {}}))
    Ibm3624PinOffset.type = Types::Ibm3624PinOffset
    Ibm3624PinVerification.add_member(:decimalization_table, ::Smithy::Schema::Shapes::MemberShape.new(target: DecimalizationTableType, name: "DecimalizationTable", traits: {"smithy.api#required" => {}}))
    Ibm3624PinVerification.add_member(:pin_validation_data_pad_character, ::Smithy::Schema::Shapes::MemberShape.new(target: HexLengthEquals1, name: "PinValidationDataPadCharacter", traits: {"smithy.api#required" => {}}))
    Ibm3624PinVerification.add_member(:pin_validation_data, ::Smithy::Schema::Shapes::MemberShape.new(target: PinValidationDataType, name: "PinValidationData", traits: {"smithy.api#required" => {}}))
    Ibm3624PinVerification.add_member(:pin_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: PinOffsetType, name: "PinOffset", traits: {"smithy.api#required" => {}}))
    Ibm3624PinVerification.type = Types::Ibm3624PinVerification
    Ibm3624RandomPin.add_member(:decimalization_table, ::Smithy::Schema::Shapes::MemberShape.new(target: DecimalizationTableType, name: "DecimalizationTable", traits: {"smithy.api#required" => {}}))
    Ibm3624RandomPin.add_member(:pin_validation_data_pad_character, ::Smithy::Schema::Shapes::MemberShape.new(target: HexLengthEquals1, name: "PinValidationDataPadCharacter", traits: {"smithy.api#required" => {}}))
    Ibm3624RandomPin.add_member(:pin_validation_data, ::Smithy::Schema::Shapes::MemberShape.new(target: PinValidationDataType, name: "PinValidationData", traits: {"smithy.api#required" => {}}))
    Ibm3624RandomPin.type = Types::Ibm3624RandomPin
    IncomingDiffieHellmanTr31KeyBlock.add_member(:private_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "PrivateKeyIdentifier", traits: {"smithy.api#required" => {}}))
    IncomingDiffieHellmanTr31KeyBlock.add_member(:certificate_authority_public_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "CertificateAuthorityPublicKeyIdentifier", traits: {"smithy.api#required" => {}}))
    IncomingDiffieHellmanTr31KeyBlock.add_member(:public_key_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateType, name: "PublicKeyCertificate", traits: {"smithy.api#required" => {}}))
    IncomingDiffieHellmanTr31KeyBlock.add_member(:derive_key_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: SymmetricKeyAlgorithm, name: "DeriveKeyAlgorithm", traits: {"smithy.api#required" => {}}))
    IncomingDiffieHellmanTr31KeyBlock.add_member(:key_derivation_function, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyDerivationFunction, name: "KeyDerivationFunction", traits: {"smithy.api#required" => {}}))
    IncomingDiffieHellmanTr31KeyBlock.add_member(:key_derivation_hash_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyDerivationHashAlgorithm, name: "KeyDerivationHashAlgorithm", traits: {"smithy.api#required" => {}}))
    IncomingDiffieHellmanTr31KeyBlock.add_member(:derivation_data, ::Smithy::Schema::Shapes::MemberShape.new(target: DiffieHellmanDerivationData, name: "DerivationData", traits: {"smithy.api#required" => {}}))
    IncomingDiffieHellmanTr31KeyBlock.add_member(:wrapped_key_block, ::Smithy::Schema::Shapes::MemberShape.new(target: Tr31WrappedKeyBlock, name: "WrappedKeyBlock", traits: {"smithy.api#required" => {}}))
    IncomingDiffieHellmanTr31KeyBlock.type = Types::IncomingDiffieHellmanTr31KeyBlock
    IncomingKeyMaterial.add_member(:diffie_hellman_tr31_key_block, Types::IncomingKeyMaterial::DiffieHellmanTr31KeyBlock, ::Smithy::Schema::Shapes::MemberShape.new(target: IncomingDiffieHellmanTr31KeyBlock, name: "DiffieHellmanTr31KeyBlock"))
    IncomingKeyMaterial.add_member(:unknown, Types::IncomingKeyMaterial::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    IncomingKeyMaterial.type = Types::IncomingKeyMaterial
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    InternalServerException.type = Types::InternalServerException
    KeyDerivationFunction.add_member(:nist_sp800, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NIST_SP800", traits: {"smithy.api#enumValue" => "NIST_SP800"}))
    KeyDerivationFunction.add_member(:ansi_x963, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ANSI_X963", traits: {"smithy.api#enumValue" => "ANSI_X963"}))
    KeyDerivationHashAlgorithm.add_member(:sha_256, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHA_256", traits: {"smithy.api#enumValue" => "SHA_256"}))
    KeyDerivationHashAlgorithm.add_member(:sha_384, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHA_384", traits: {"smithy.api#enumValue" => "SHA_384"}))
    KeyDerivationHashAlgorithm.add_member(:sha_512, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHA_512", traits: {"smithy.api#enumValue" => "SHA_512"}))
    MacAlgorithm.add_member(:iso9797_algorithm1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ISO9797_ALGORITHM1", traits: {"smithy.api#enumValue" => "ISO9797_ALGORITHM1"}))
    MacAlgorithm.add_member(:iso9797_algorithm3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ISO9797_ALGORITHM3", traits: {"smithy.api#enumValue" => "ISO9797_ALGORITHM3"}))
    MacAlgorithm.add_member(:cmac, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CMAC", traits: {"smithy.api#enumValue" => "CMAC"}))
    MacAlgorithm.add_member(:hmac, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HMAC", traits: {"smithy.api#enumValue" => "HMAC"}))
    MacAlgorithm.add_member(:hmac_sha224, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HMAC_SHA224", traits: {"smithy.api#enumValue" => "HMAC_SHA224"}))
    MacAlgorithm.add_member(:hmac_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HMAC_SHA256", traits: {"smithy.api#enumValue" => "HMAC_SHA256"}))
    MacAlgorithm.add_member(:hmac_sha384, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HMAC_SHA384", traits: {"smithy.api#enumValue" => "HMAC_SHA384"}))
    MacAlgorithm.add_member(:hmac_sha512, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HMAC_SHA512", traits: {"smithy.api#enumValue" => "HMAC_SHA512"}))
    MacAlgorithmDukpt.add_member(:key_serial_number, ::Smithy::Schema::Shapes::MemberShape.new(target: HexLength16Or20Or24, name: "KeySerialNumber", traits: {"smithy.api#required" => {}}))
    MacAlgorithmDukpt.add_member(:dukpt_key_variant, ::Smithy::Schema::Shapes::MemberShape.new(target: DukptKeyVariant, name: "DukptKeyVariant", traits: {"smithy.api#required" => {}}))
    MacAlgorithmDukpt.add_member(:dukpt_derivation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DukptDerivationType, name: "DukptDerivationType"))
    MacAlgorithmDukpt.type = Types::MacAlgorithmDukpt
    MacAlgorithmEmv.add_member(:major_key_derivation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: MajorKeyDerivationMode, name: "MajorKeyDerivationMode", traits: {"smithy.api#required" => {}}))
    MacAlgorithmEmv.add_member(:primary_account_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PrimaryAccountNumberType, name: "PrimaryAccountNumber", traits: {"smithy.api#required" => {}}))
    MacAlgorithmEmv.add_member(:pan_sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberLengthEquals2, name: "PanSequenceNumber", traits: {"smithy.api#required" => {}}))
    MacAlgorithmEmv.add_member(:session_key_derivation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionKeyDerivationMode, name: "SessionKeyDerivationMode", traits: {"smithy.api#required" => {}}))
    MacAlgorithmEmv.add_member(:session_key_derivation_value, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionKeyDerivationValue, name: "SessionKeyDerivationValue", traits: {"smithy.api#required" => {}}))
    MacAlgorithmEmv.type = Types::MacAlgorithmEmv
    MacAttributes.add_member(:algorithm, Types::MacAttributes::Algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: MacAlgorithm, name: "Algorithm"))
    MacAttributes.add_member(:emv_mac, Types::MacAttributes::EmvMac, ::Smithy::Schema::Shapes::MemberShape.new(target: MacAlgorithmEmv, name: "EmvMac"))
    MacAttributes.add_member(:dukpt_iso9797_algorithm1, Types::MacAttributes::DukptIso9797Algorithm1, ::Smithy::Schema::Shapes::MemberShape.new(target: MacAlgorithmDukpt, name: "DukptIso9797Algorithm1"))
    MacAttributes.add_member(:dukpt_iso9797_algorithm3, Types::MacAttributes::DukptIso9797Algorithm3, ::Smithy::Schema::Shapes::MemberShape.new(target: MacAlgorithmDukpt, name: "DukptIso9797Algorithm3"))
    MacAttributes.add_member(:dukpt_cmac, Types::MacAttributes::DukptCmac, ::Smithy::Schema::Shapes::MemberShape.new(target: MacAlgorithmDukpt, name: "DukptCmac"))
    MacAttributes.add_member(:unknown, Types::MacAttributes::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    MacAttributes.type = Types::MacAttributes
    MajorKeyDerivationMode.add_member(:emv_option_a, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMV_OPTION_A", traits: {"smithy.api#enumValue" => "EMV_OPTION_A"}))
    MajorKeyDerivationMode.add_member(:emv_option_b, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMV_OPTION_B", traits: {"smithy.api#enumValue" => "EMV_OPTION_B"}))
    MasterCardAttributes.add_member(:major_key_derivation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: MajorKeyDerivationMode, name: "MajorKeyDerivationMode", traits: {"smithy.api#required" => {}}))
    MasterCardAttributes.add_member(:primary_account_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PrimaryAccountNumberType, name: "PrimaryAccountNumber", traits: {"smithy.api#required" => {}}))
    MasterCardAttributes.add_member(:pan_sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberLengthEquals2, name: "PanSequenceNumber", traits: {"smithy.api#required" => {}}))
    MasterCardAttributes.add_member(:application_cryptogram, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationCryptogramType, name: "ApplicationCryptogram", traits: {"smithy.api#required" => {}}))
    MasterCardAttributes.type = Types::MasterCardAttributes
    OutgoingKeyMaterial.add_member(:tr31_key_block, Types::OutgoingKeyMaterial::Tr31KeyBlock, ::Smithy::Schema::Shapes::MemberShape.new(target: OutgoingTr31KeyBlock, name: "Tr31KeyBlock"))
    OutgoingKeyMaterial.add_member(:unknown, Types::OutgoingKeyMaterial::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    OutgoingKeyMaterial.type = Types::OutgoingKeyMaterial
    OutgoingTr31KeyBlock.add_member(:wrapping_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "WrappingKeyIdentifier", traits: {"smithy.api#required" => {}}))
    OutgoingTr31KeyBlock.type = Types::OutgoingTr31KeyBlock
    PaddingType.add_member(:pkcs1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PKCS1", traits: {"smithy.api#enumValue" => "PKCS1"}))
    PaddingType.add_member(:oaep_sha1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OAEP_SHA1", traits: {"smithy.api#enumValue" => "OAEP_SHA1"}))
    PaddingType.add_member(:oaep_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OAEP_SHA256", traits: {"smithy.api#enumValue" => "OAEP_SHA256"}))
    PaddingType.add_member(:oaep_sha512, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OAEP_SHA512", traits: {"smithy.api#enumValue" => "OAEP_SHA512"}))
    PinBlockFormatForEmvPinChange.add_member(:iso_format_0, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ISO_FORMAT_0", traits: {"smithy.api#enumValue" => "ISO_FORMAT_0"}))
    PinBlockFormatForEmvPinChange.add_member(:iso_format_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ISO_FORMAT_1", traits: {"smithy.api#enumValue" => "ISO_FORMAT_1"}))
    PinBlockFormatForEmvPinChange.add_member(:iso_format_3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ISO_FORMAT_3", traits: {"smithy.api#enumValue" => "ISO_FORMAT_3"}))
    PinBlockFormatForPinData.add_member(:iso_format_0, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ISO_FORMAT_0", traits: {"smithy.api#enumValue" => "ISO_FORMAT_0"}))
    PinBlockFormatForPinData.add_member(:iso_format_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ISO_FORMAT_1", traits: {"smithy.api#enumValue" => "ISO_FORMAT_1"}))
    PinBlockFormatForPinData.add_member(:iso_format_3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ISO_FORMAT_3", traits: {"smithy.api#enumValue" => "ISO_FORMAT_3"}))
    PinBlockFormatForPinData.add_member(:iso_format_4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ISO_FORMAT_4", traits: {"smithy.api#enumValue" => "ISO_FORMAT_4"}))
    PinBlockLengthPosition.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    PinBlockLengthPosition.add_member(:front_of_pin_block, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FRONT_OF_PIN_BLOCK", traits: {"smithy.api#enumValue" => "FRONT_OF_PIN_BLOCK"}))
    PinBlockPaddingType.add_member(:no_padding, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_PADDING", traits: {"smithy.api#enumValue" => "NO_PADDING"}))
    PinBlockPaddingType.add_member(:iso_iec_7816_4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ISO_IEC_7816_4", traits: {"smithy.api#enumValue" => "ISO_IEC_7816_4"}))
    PinData.add_member(:pin_offset, Types::PinData::PinOffset, ::Smithy::Schema::Shapes::MemberShape.new(target: PinOffsetType, name: "PinOffset"))
    PinData.add_member(:verification_value, Types::PinData::VerificationValue, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationValueType, name: "VerificationValue"))
    PinData.add_member(:unknown, Types::PinData::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    PinData.type = Types::PinData
    PinGenerationAttributes.add_member(:visa_pin, Types::PinGenerationAttributes::VisaPin, ::Smithy::Schema::Shapes::MemberShape.new(target: VisaPin, name: "VisaPin"))
    PinGenerationAttributes.add_member(:visa_pin_verification_value, Types::PinGenerationAttributes::VisaPinVerificationValue, ::Smithy::Schema::Shapes::MemberShape.new(target: VisaPinVerificationValue, name: "VisaPinVerificationValue"))
    PinGenerationAttributes.add_member(:ibm3624_pin_offset, Types::PinGenerationAttributes::Ibm3624PinOffset, ::Smithy::Schema::Shapes::MemberShape.new(target: Ibm3624PinOffset, name: "Ibm3624PinOffset"))
    PinGenerationAttributes.add_member(:ibm3624_natural_pin, Types::PinGenerationAttributes::Ibm3624NaturalPin, ::Smithy::Schema::Shapes::MemberShape.new(target: Ibm3624NaturalPin, name: "Ibm3624NaturalPin"))
    PinGenerationAttributes.add_member(:ibm3624_random_pin, Types::PinGenerationAttributes::Ibm3624RandomPin, ::Smithy::Schema::Shapes::MemberShape.new(target: Ibm3624RandomPin, name: "Ibm3624RandomPin"))
    PinGenerationAttributes.add_member(:ibm3624_pin_from_offset, Types::PinGenerationAttributes::Ibm3624PinFromOffset, ::Smithy::Schema::Shapes::MemberShape.new(target: Ibm3624PinFromOffset, name: "Ibm3624PinFromOffset"))
    PinGenerationAttributes.add_member(:unknown, Types::PinGenerationAttributes::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    PinGenerationAttributes.type = Types::PinGenerationAttributes
    PinVerificationAttributes.add_member(:visa_pin, Types::PinVerificationAttributes::VisaPin, ::Smithy::Schema::Shapes::MemberShape.new(target: VisaPinVerification, name: "VisaPin"))
    PinVerificationAttributes.add_member(:ibm3624_pin, Types::PinVerificationAttributes::Ibm3624Pin, ::Smithy::Schema::Shapes::MemberShape.new(target: Ibm3624PinVerification, name: "Ibm3624Pin"))
    PinVerificationAttributes.add_member(:unknown, Types::PinVerificationAttributes::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    PinVerificationAttributes.type = Types::PinVerificationAttributes
    ReEncryptDataInput.add_member(:incoming_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "IncomingKeyIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ReEncryptDataInput.add_member(:outgoing_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "OutgoingKeyIdentifier", traits: {"smithy.api#required" => {}}))
    ReEncryptDataInput.add_member(:cipher_text, ::Smithy::Schema::Shapes::MemberShape.new(target: CipherTextType, name: "CipherText", traits: {"smithy.api#required" => {}}))
    ReEncryptDataInput.add_member(:incoming_encryption_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ReEncryptionAttributes, name: "IncomingEncryptionAttributes", traits: {"smithy.api#required" => {}}))
    ReEncryptDataInput.add_member(:outgoing_encryption_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ReEncryptionAttributes, name: "OutgoingEncryptionAttributes", traits: {"smithy.api#required" => {}}))
    ReEncryptDataInput.add_member(:incoming_wrapped_key, ::Smithy::Schema::Shapes::MemberShape.new(target: WrappedKey, name: "IncomingWrappedKey"))
    ReEncryptDataInput.add_member(:outgoing_wrapped_key, ::Smithy::Schema::Shapes::MemberShape.new(target: WrappedKey, name: "OutgoingWrappedKey"))
    ReEncryptDataInput.type = Types::ReEncryptDataInput
    ReEncryptDataOutput.add_member(:key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArn, name: "KeyArn", traits: {"smithy.api#required" => {}}))
    ReEncryptDataOutput.add_member(:key_check_value, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyCheckValue, name: "KeyCheckValue", traits: {"smithy.api#required" => {}}))
    ReEncryptDataOutput.add_member(:cipher_text, ::Smithy::Schema::Shapes::MemberShape.new(target: CipherTextType, name: "CipherText", traits: {"smithy.api#required" => {}}))
    ReEncryptDataOutput.type = Types::ReEncryptDataOutput
    ReEncryptionAttributes.add_member(:symmetric, Types::ReEncryptionAttributes::Symmetric, ::Smithy::Schema::Shapes::MemberShape.new(target: SymmetricEncryptionAttributes, name: "Symmetric"))
    ReEncryptionAttributes.add_member(:dukpt, Types::ReEncryptionAttributes::Dukpt, ::Smithy::Schema::Shapes::MemberShape.new(target: DukptEncryptionAttributes, name: "Dukpt"))
    ReEncryptionAttributes.add_member(:unknown, Types::ReEncryptionAttributes::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ReEncryptionAttributes.type = Types::ReEncryptionAttributes
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceId"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SessionKeyAmex.add_member(:primary_account_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PrimaryAccountNumberType, name: "PrimaryAccountNumber", traits: {"smithy.api#required" => {}}))
    SessionKeyAmex.add_member(:pan_sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberLengthEquals2, name: "PanSequenceNumber", traits: {"smithy.api#required" => {}}))
    SessionKeyAmex.type = Types::SessionKeyAmex
    SessionKeyDerivation.add_member(:emv_common, Types::SessionKeyDerivation::EmvCommon, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionKeyEmvCommon, name: "EmvCommon"))
    SessionKeyDerivation.add_member(:mastercard, Types::SessionKeyDerivation::Mastercard, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionKeyMastercard, name: "Mastercard"))
    SessionKeyDerivation.add_member(:emv2000, Types::SessionKeyDerivation::Emv2000, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionKeyEmv2000, name: "Emv2000"))
    SessionKeyDerivation.add_member(:amex, Types::SessionKeyDerivation::Amex, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionKeyAmex, name: "Amex"))
    SessionKeyDerivation.add_member(:visa, Types::SessionKeyDerivation::Visa, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionKeyVisa, name: "Visa"))
    SessionKeyDerivation.add_member(:unknown, Types::SessionKeyDerivation::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    SessionKeyDerivation.type = Types::SessionKeyDerivation
    SessionKeyDerivationMode.add_member(:emv_common_session_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMV_COMMON_SESSION_KEY", traits: {"smithy.api#enumValue" => "EMV_COMMON_SESSION_KEY"}))
    SessionKeyDerivationMode.add_member(:emv2000, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMV2000", traits: {"smithy.api#enumValue" => "EMV2000"}))
    SessionKeyDerivationMode.add_member(:amex, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AMEX", traits: {"smithy.api#enumValue" => "AMEX"}))
    SessionKeyDerivationMode.add_member(:mastercard_session_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MASTERCARD_SESSION_KEY", traits: {"smithy.api#enumValue" => "MASTERCARD_SESSION_KEY"}))
    SessionKeyDerivationMode.add_member(:visa, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VISA", traits: {"smithy.api#enumValue" => "VISA"}))
    SessionKeyDerivationValue.add_member(:application_cryptogram, Types::SessionKeyDerivationValue::ApplicationCryptogram, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationCryptogramType, name: "ApplicationCryptogram"))
    SessionKeyDerivationValue.add_member(:application_transaction_counter, Types::SessionKeyDerivationValue::ApplicationTransactionCounter, ::Smithy::Schema::Shapes::MemberShape.new(target: HexLengthEquals4, name: "ApplicationTransactionCounter"))
    SessionKeyDerivationValue.add_member(:unknown, Types::SessionKeyDerivationValue::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    SessionKeyDerivationValue.type = Types::SessionKeyDerivationValue
    SessionKeyEmv2000.add_member(:primary_account_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PrimaryAccountNumberType, name: "PrimaryAccountNumber", traits: {"smithy.api#required" => {}}))
    SessionKeyEmv2000.add_member(:pan_sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberLengthEquals2, name: "PanSequenceNumber", traits: {"smithy.api#required" => {}}))
    SessionKeyEmv2000.add_member(:application_transaction_counter, ::Smithy::Schema::Shapes::MemberShape.new(target: HexLengthEquals4, name: "ApplicationTransactionCounter", traits: {"smithy.api#required" => {}}))
    SessionKeyEmv2000.type = Types::SessionKeyEmv2000
    SessionKeyEmvCommon.add_member(:primary_account_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PrimaryAccountNumberType, name: "PrimaryAccountNumber", traits: {"smithy.api#required" => {}}))
    SessionKeyEmvCommon.add_member(:pan_sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberLengthEquals2, name: "PanSequenceNumber", traits: {"smithy.api#required" => {}}))
    SessionKeyEmvCommon.add_member(:application_transaction_counter, ::Smithy::Schema::Shapes::MemberShape.new(target: HexLengthEquals4, name: "ApplicationTransactionCounter", traits: {"smithy.api#required" => {}}))
    SessionKeyEmvCommon.type = Types::SessionKeyEmvCommon
    SessionKeyMastercard.add_member(:primary_account_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PrimaryAccountNumberType, name: "PrimaryAccountNumber", traits: {"smithy.api#required" => {}}))
    SessionKeyMastercard.add_member(:pan_sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberLengthEquals2, name: "PanSequenceNumber", traits: {"smithy.api#required" => {}}))
    SessionKeyMastercard.add_member(:application_transaction_counter, ::Smithy::Schema::Shapes::MemberShape.new(target: HexLengthEquals4, name: "ApplicationTransactionCounter", traits: {"smithy.api#required" => {}}))
    SessionKeyMastercard.add_member(:unpredictable_number, ::Smithy::Schema::Shapes::MemberShape.new(target: HexLengthBetween2And8, name: "UnpredictableNumber", traits: {"smithy.api#required" => {}}))
    SessionKeyMastercard.type = Types::SessionKeyMastercard
    SessionKeyVisa.add_member(:primary_account_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PrimaryAccountNumberType, name: "PrimaryAccountNumber", traits: {"smithy.api#required" => {}}))
    SessionKeyVisa.add_member(:pan_sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberLengthEquals2, name: "PanSequenceNumber", traits: {"smithy.api#required" => {}}))
    SessionKeyVisa.type = Types::SessionKeyVisa
    SymmetricEncryptionAttributes.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionMode, name: "Mode", traits: {"smithy.api#required" => {}}))
    SymmetricEncryptionAttributes.add_member(:initialization_vector, ::Smithy::Schema::Shapes::MemberShape.new(target: InitializationVectorType, name: "InitializationVector"))
    SymmetricEncryptionAttributes.add_member(:padding_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PaddingType, name: "PaddingType"))
    SymmetricEncryptionAttributes.type = Types::SymmetricEncryptionAttributes
    SymmetricKeyAlgorithm.add_member(:tdes_2_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TDES_2KEY", traits: {"smithy.api#enumValue" => "TDES_2KEY"}))
    SymmetricKeyAlgorithm.add_member(:tdes_3_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TDES_3KEY", traits: {"smithy.api#enumValue" => "TDES_3KEY"}))
    SymmetricKeyAlgorithm.add_member(:aes_128, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AES_128", traits: {"smithy.api#enumValue" => "AES_128"}))
    SymmetricKeyAlgorithm.add_member(:aes_192, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AES_192", traits: {"smithy.api#enumValue" => "AES_192"}))
    SymmetricKeyAlgorithm.add_member(:aes_256, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AES_256", traits: {"smithy.api#enumValue" => "AES_256"}))
    SymmetricKeyAlgorithm.add_member(:hmac_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HMAC_SHA256", traits: {"smithy.api#enumValue" => "HMAC_SHA256"}))
    SymmetricKeyAlgorithm.add_member(:hmac_sha384, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HMAC_SHA384", traits: {"smithy.api#enumValue" => "HMAC_SHA384"}))
    SymmetricKeyAlgorithm.add_member(:hmac_sha512, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HMAC_SHA512", traits: {"smithy.api#enumValue" => "HMAC_SHA512"}))
    SymmetricKeyAlgorithm.add_member(:hmac_sha224, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HMAC_SHA224", traits: {"smithy.api#enumValue" => "HMAC_SHA224"}))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ThrottlingException.type = Types::ThrottlingException
    TranslateKeyMaterialInput.add_member(:incoming_key_material, ::Smithy::Schema::Shapes::MemberShape.new(target: IncomingKeyMaterial, name: "IncomingKeyMaterial", traits: {"smithy.api#required" => {}}))
    TranslateKeyMaterialInput.add_member(:outgoing_key_material, ::Smithy::Schema::Shapes::MemberShape.new(target: OutgoingKeyMaterial, name: "OutgoingKeyMaterial", traits: {"smithy.api#required" => {}}))
    TranslateKeyMaterialInput.add_member(:key_check_value_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyCheckValueAlgorithm, name: "KeyCheckValueAlgorithm"))
    TranslateKeyMaterialInput.type = Types::TranslateKeyMaterialInput
    TranslateKeyMaterialOutput.add_member(:wrapped_key, ::Smithy::Schema::Shapes::MemberShape.new(target: WrappedWorkingKey, name: "WrappedKey", traits: {"smithy.api#required" => {}}))
    TranslateKeyMaterialOutput.type = Types::TranslateKeyMaterialOutput
    TranslatePinDataInput.add_member(:incoming_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "IncomingKeyIdentifier", traits: {"smithy.api#required" => {}}))
    TranslatePinDataInput.add_member(:outgoing_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "OutgoingKeyIdentifier", traits: {"smithy.api#required" => {}}))
    TranslatePinDataInput.add_member(:incoming_translation_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: TranslationIsoFormats, name: "IncomingTranslationAttributes", traits: {"smithy.api#required" => {}}))
    TranslatePinDataInput.add_member(:outgoing_translation_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: TranslationIsoFormats, name: "OutgoingTranslationAttributes", traits: {"smithy.api#required" => {}}))
    TranslatePinDataInput.add_member(:encrypted_pin_block, ::Smithy::Schema::Shapes::MemberShape.new(target: HexEvenLengthBetween16And32, name: "EncryptedPinBlock", traits: {"smithy.api#required" => {}}))
    TranslatePinDataInput.add_member(:incoming_dukpt_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: DukptDerivationAttributes, name: "IncomingDukptAttributes"))
    TranslatePinDataInput.add_member(:outgoing_dukpt_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: DukptDerivationAttributes, name: "OutgoingDukptAttributes"))
    TranslatePinDataInput.add_member(:incoming_wrapped_key, ::Smithy::Schema::Shapes::MemberShape.new(target: WrappedKey, name: "IncomingWrappedKey"))
    TranslatePinDataInput.add_member(:outgoing_wrapped_key, ::Smithy::Schema::Shapes::MemberShape.new(target: WrappedKey, name: "OutgoingWrappedKey"))
    TranslatePinDataInput.type = Types::TranslatePinDataInput
    TranslatePinDataOutput.add_member(:pin_block, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptedPinBlockType, name: "PinBlock", traits: {"smithy.api#required" => {}}))
    TranslatePinDataOutput.add_member(:key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArn, name: "KeyArn", traits: {"smithy.api#required" => {}}))
    TranslatePinDataOutput.add_member(:key_check_value, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyCheckValue, name: "KeyCheckValue", traits: {"smithy.api#required" => {}}))
    TranslatePinDataOutput.type = Types::TranslatePinDataOutput
    TranslationIsoFormats.add_member(:iso_format0, Types::TranslationIsoFormats::IsoFormat0, ::Smithy::Schema::Shapes::MemberShape.new(target: TranslationPinDataIsoFormat034, name: "IsoFormat0"))
    TranslationIsoFormats.add_member(:iso_format1, Types::TranslationIsoFormats::IsoFormat1, ::Smithy::Schema::Shapes::MemberShape.new(target: TranslationPinDataIsoFormat1, name: "IsoFormat1"))
    TranslationIsoFormats.add_member(:iso_format3, Types::TranslationIsoFormats::IsoFormat3, ::Smithy::Schema::Shapes::MemberShape.new(target: TranslationPinDataIsoFormat034, name: "IsoFormat3"))
    TranslationIsoFormats.add_member(:iso_format4, Types::TranslationIsoFormats::IsoFormat4, ::Smithy::Schema::Shapes::MemberShape.new(target: TranslationPinDataIsoFormat034, name: "IsoFormat4"))
    TranslationIsoFormats.add_member(:unknown, Types::TranslationIsoFormats::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    TranslationIsoFormats.type = Types::TranslationIsoFormats
    TranslationPinDataIsoFormat034.add_member(:primary_account_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PrimaryAccountNumberType, name: "PrimaryAccountNumber", traits: {"smithy.api#required" => {}}))
    TranslationPinDataIsoFormat034.type = Types::TranslationPinDataIsoFormat034
    TranslationPinDataIsoFormat1.type = Types::TranslationPinDataIsoFormat1
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "path", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member")
    VerificationFailedException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationFailedReason, name: "Reason", traits: {"smithy.api#required" => {}}))
    VerificationFailedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    VerificationFailedException.type = Types::VerificationFailedException
    VerifyAuthRequestCryptogramInput.add_member(:key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "KeyIdentifier", traits: {"smithy.api#required" => {}}))
    VerifyAuthRequestCryptogramInput.add_member(:transaction_data, ::Smithy::Schema::Shapes::MemberShape.new(target: TransactionDataType, name: "TransactionData", traits: {"smithy.api#required" => {}}))
    VerifyAuthRequestCryptogramInput.add_member(:auth_request_cryptogram, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthRequestCryptogramType, name: "AuthRequestCryptogram", traits: {"smithy.api#required" => {}}))
    VerifyAuthRequestCryptogramInput.add_member(:major_key_derivation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: MajorKeyDerivationMode, name: "MajorKeyDerivationMode", traits: {"smithy.api#required" => {}}))
    VerifyAuthRequestCryptogramInput.add_member(:session_key_derivation_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionKeyDerivation, name: "SessionKeyDerivationAttributes", traits: {"smithy.api#required" => {}}))
    VerifyAuthRequestCryptogramInput.add_member(:auth_response_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: CryptogramAuthResponse, name: "AuthResponseAttributes"))
    VerifyAuthRequestCryptogramInput.type = Types::VerifyAuthRequestCryptogramInput
    VerifyAuthRequestCryptogramOutput.add_member(:key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArn, name: "KeyArn", traits: {"smithy.api#required" => {}}))
    VerifyAuthRequestCryptogramOutput.add_member(:key_check_value, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyCheckValue, name: "KeyCheckValue", traits: {"smithy.api#required" => {}}))
    VerifyAuthRequestCryptogramOutput.add_member(:auth_response_value, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthResponseValueType, name: "AuthResponseValue"))
    VerifyAuthRequestCryptogramOutput.type = Types::VerifyAuthRequestCryptogramOutput
    VerifyCardValidationDataInput.add_member(:key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "KeyIdentifier", traits: {"smithy.api#required" => {}}))
    VerifyCardValidationDataInput.add_member(:primary_account_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PrimaryAccountNumberType, name: "PrimaryAccountNumber", traits: {"smithy.api#required" => {}}))
    VerifyCardValidationDataInput.add_member(:verification_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: CardVerificationAttributes, name: "VerificationAttributes", traits: {"smithy.api#required" => {}}))
    VerifyCardValidationDataInput.add_member(:validation_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationDataType, name: "ValidationData", traits: {"smithy.api#required" => {}}))
    VerifyCardValidationDataInput.type = Types::VerifyCardValidationDataInput
    VerifyCardValidationDataOutput.add_member(:key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArn, name: "KeyArn", traits: {"smithy.api#required" => {}}))
    VerifyCardValidationDataOutput.add_member(:key_check_value, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyCheckValue, name: "KeyCheckValue", traits: {"smithy.api#required" => {}}))
    VerifyCardValidationDataOutput.type = Types::VerifyCardValidationDataOutput
    VerifyMacInput.add_member(:key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "KeyIdentifier", traits: {"smithy.api#required" => {}}))
    VerifyMacInput.add_member(:message_data, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageDataType, name: "MessageData", traits: {"smithy.api#required" => {}}))
    VerifyMacInput.add_member(:mac, ::Smithy::Schema::Shapes::MemberShape.new(target: MacType, name: "Mac", traits: {"smithy.api#required" => {}}))
    VerifyMacInput.add_member(:verification_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: MacAttributes, name: "VerificationAttributes", traits: {"smithy.api#required" => {}}))
    VerifyMacInput.add_member(:mac_length, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerRangeBetween4And16, name: "MacLength"))
    VerifyMacInput.type = Types::VerifyMacInput
    VerifyMacOutput.add_member(:key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArn, name: "KeyArn", traits: {"smithy.api#required" => {}}))
    VerifyMacOutput.add_member(:key_check_value, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyCheckValue, name: "KeyCheckValue", traits: {"smithy.api#required" => {}}))
    VerifyMacOutput.type = Types::VerifyMacOutput
    VerifyPinDataInput.add_member(:verification_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "VerificationKeyIdentifier", traits: {"smithy.api#required" => {}}))
    VerifyPinDataInput.add_member(:encryption_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "EncryptionKeyIdentifier", traits: {"smithy.api#required" => {}}))
    VerifyPinDataInput.add_member(:verification_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: PinVerificationAttributes, name: "VerificationAttributes", traits: {"smithy.api#required" => {}}))
    VerifyPinDataInput.add_member(:encrypted_pin_block, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptedPinBlockType, name: "EncryptedPinBlock", traits: {"smithy.api#required" => {}}))
    VerifyPinDataInput.add_member(:primary_account_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PrimaryAccountNumberType, name: "PrimaryAccountNumber"))
    VerifyPinDataInput.add_member(:pin_block_format, ::Smithy::Schema::Shapes::MemberShape.new(target: PinBlockFormatForPinData, name: "PinBlockFormat", traits: {"smithy.api#required" => {}}))
    VerifyPinDataInput.add_member(:pin_data_length, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerRangeBetween4And12, name: "PinDataLength"))
    VerifyPinDataInput.add_member(:dukpt_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: DukptAttributes, name: "DukptAttributes"))
    VerifyPinDataInput.add_member(:encryption_wrapped_key, ::Smithy::Schema::Shapes::MemberShape.new(target: WrappedKey, name: "EncryptionWrappedKey"))
    VerifyPinDataInput.type = Types::VerifyPinDataInput
    VerifyPinDataOutput.add_member(:verification_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArn, name: "VerificationKeyArn", traits: {"smithy.api#required" => {}}))
    VerifyPinDataOutput.add_member(:verification_key_check_value, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyCheckValue, name: "VerificationKeyCheckValue", traits: {"smithy.api#required" => {}}))
    VerifyPinDataOutput.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArn, name: "EncryptionKeyArn", traits: {"smithy.api#required" => {}}))
    VerifyPinDataOutput.add_member(:encryption_key_check_value, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyCheckValue, name: "EncryptionKeyCheckValue", traits: {"smithy.api#required" => {}}))
    VerifyPinDataOutput.type = Types::VerifyPinDataOutput
    VisaAmexDerivationOutputs.add_member(:authorization_request_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArn, name: "AuthorizationRequestKeyArn", traits: {"smithy.api#required" => {}}))
    VisaAmexDerivationOutputs.add_member(:authorization_request_key_check_value, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyCheckValue, name: "AuthorizationRequestKeyCheckValue", traits: {"smithy.api#required" => {}}))
    VisaAmexDerivationOutputs.add_member(:current_pin_pek_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArn, name: "CurrentPinPekArn"))
    VisaAmexDerivationOutputs.add_member(:current_pin_pek_key_check_value, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyCheckValue, name: "CurrentPinPekKeyCheckValue"))
    VisaAmexDerivationOutputs.type = Types::VisaAmexDerivationOutputs
    VisaAttributes.add_member(:major_key_derivation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: MajorKeyDerivationMode, name: "MajorKeyDerivationMode", traits: {"smithy.api#required" => {}}))
    VisaAttributes.add_member(:primary_account_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PrimaryAccountNumberType, name: "PrimaryAccountNumber", traits: {"smithy.api#required" => {}}))
    VisaAttributes.add_member(:pan_sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberLengthEquals2, name: "PanSequenceNumber", traits: {"smithy.api#required" => {}}))
    VisaAttributes.add_member(:application_transaction_counter, ::Smithy::Schema::Shapes::MemberShape.new(target: HexLengthEquals4, name: "ApplicationTransactionCounter", traits: {"smithy.api#required" => {}}))
    VisaAttributes.add_member(:authorization_request_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyArnOrKeyAliasType, name: "AuthorizationRequestKeyIdentifier", traits: {"smithy.api#required" => {}}))
    VisaAttributes.add_member(:current_pin_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrentPinAttributes, name: "CurrentPinAttributes"))
    VisaAttributes.type = Types::VisaAttributes
    VisaPin.add_member(:pin_verification_key_index, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerRangeBetween0And6, name: "PinVerificationKeyIndex", traits: {"smithy.api#required" => {}}))
    VisaPin.type = Types::VisaPin
    VisaPinVerification.add_member(:pin_verification_key_index, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerRangeBetween0And6, name: "PinVerificationKeyIndex", traits: {"smithy.api#required" => {}}))
    VisaPinVerification.add_member(:verification_value, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationValueType, name: "VerificationValue", traits: {"smithy.api#required" => {}}))
    VisaPinVerification.type = Types::VisaPinVerification
    VisaPinVerificationValue.add_member(:encrypted_pin_block, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptedPinBlockType, name: "EncryptedPinBlock", traits: {"smithy.api#required" => {}}))
    VisaPinVerificationValue.add_member(:pin_verification_key_index, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerRangeBetween0And6, name: "PinVerificationKeyIndex", traits: {"smithy.api#required" => {}}))
    VisaPinVerificationValue.type = Types::VisaPinVerificationValue
    WrappedKey.add_member(:wrapped_key_material, ::Smithy::Schema::Shapes::MemberShape.new(target: WrappedKeyMaterial, name: "WrappedKeyMaterial", traits: {"smithy.api#required" => {}}))
    WrappedKey.add_member(:key_check_value_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyCheckValueAlgorithm, name: "KeyCheckValueAlgorithm"))
    WrappedKey.type = Types::WrappedKey
    WrappedKeyMaterial.add_member(:tr31_key_block, Types::WrappedKeyMaterial::Tr31KeyBlock, ::Smithy::Schema::Shapes::MemberShape.new(target: Tr31WrappedKeyBlock, name: "Tr31KeyBlock"))
    WrappedKeyMaterial.add_member(:diffie_hellman_symmetric_key, Types::WrappedKeyMaterial::DiffieHellmanSymmetricKey, ::Smithy::Schema::Shapes::MemberShape.new(target: EcdhDerivationAttributes, name: "DiffieHellmanSymmetricKey"))
    WrappedKeyMaterial.add_member(:unknown, Types::WrappedKeyMaterial::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    WrappedKeyMaterial.type = Types::WrappedKeyMaterial
    WrappedWorkingKey.add_member(:wrapped_key_material, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyMaterial, name: "WrappedKeyMaterial", traits: {"smithy.api#required" => {}}))
    WrappedWorkingKey.add_member(:key_check_value, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyCheckValue, name: "KeyCheckValue", traits: {"smithy.api#required" => {}}))
    WrappedWorkingKey.add_member(:wrapped_key_material_format, ::Smithy::Schema::Shapes::MemberShape.new(target: WrappedKeyMaterialFormat, name: "WrappedKeyMaterialFormat", traits: {"smithy.api#required" => {}}))
    WrappedWorkingKey.type = Types::WrappedWorkingKey

    PaymentCryptographyDataPlane = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.paymentcryptographydata#PaymentCryptographyDataPlane"
      service.name = "PaymentCryptographyDataPlane"
      service.version = "2022-02-03"
      service.traits = {"aws.api#dataPlane" => {}, "aws.api#service" => {"sdkId" => "Payment Cryptography Data", "endpointPrefix" => "dataplane.payment-cryptography"}, "aws.auth#sigv4" => {"name" => "payment-cryptography"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {}, "smithy.api#title" => "Payment Cryptography Data Plane"}
      service.add_operation(:decrypt_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptographydata#DecryptData"
        operation.name = "DecryptData"
        operation.input = DecryptDataInput
        operation.output = DecryptDataOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/keys/{KeyIdentifier}/decrypt", "code" => 200}}
      end)
      service.add_operation(:encrypt_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptographydata#EncryptData"
        operation.name = "EncryptData"
        operation.input = EncryptDataInput
        operation.output = EncryptDataOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/keys/{KeyIdentifier}/encrypt", "code" => 200}}
      end)
      service.add_operation(:generate_card_validation_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptographydata#GenerateCardValidationData"
        operation.name = "GenerateCardValidationData"
        operation.input = GenerateCardValidationDataInput
        operation.output = GenerateCardValidationDataOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/cardvalidationdata/generate", "code" => 200}}
      end)
      service.add_operation(:generate_mac, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptographydata#GenerateMac"
        operation.name = "GenerateMac"
        operation.input = GenerateMacInput
        operation.output = GenerateMacOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/mac/generate", "code" => 200}}
      end)
      service.add_operation(:generate_mac_emv_pin_change, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptographydata#GenerateMacEmvPinChange"
        operation.name = "GenerateMacEmvPinChange"
        operation.input = GenerateMacEmvPinChangeInput
        operation.output = GenerateMacEmvPinChangeOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/macemvpinchange/generate", "code" => 200}}
      end)
      service.add_operation(:generate_pin_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptographydata#GeneratePinData"
        operation.name = "GeneratePinData"
        operation.input = GeneratePinDataInput
        operation.output = GeneratePinDataOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/pindata/generate", "code" => 200}}
      end)
      service.add_operation(:re_encrypt_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptographydata#ReEncryptData"
        operation.name = "ReEncryptData"
        operation.input = ReEncryptDataInput
        operation.output = ReEncryptDataOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/keys/{IncomingKeyIdentifier}/reencrypt", "code" => 200}}
      end)
      service.add_operation(:translate_key_material, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptographydata#TranslateKeyMaterial"
        operation.name = "TranslateKeyMaterial"
        operation.input = TranslateKeyMaterialInput
        operation.output = TranslateKeyMaterialOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/keymaterial/translate", "code" => 200}}
      end)
      service.add_operation(:translate_pin_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptographydata#TranslatePinData"
        operation.name = "TranslatePinData"
        operation.input = TranslatePinDataInput
        operation.output = TranslatePinDataOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/pindata/translate", "code" => 200}}
      end)
      service.add_operation(:verify_auth_request_cryptogram, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptographydata#VerifyAuthRequestCryptogram"
        operation.name = "VerifyAuthRequestCryptogram"
        operation.input = VerifyAuthRequestCryptogramInput
        operation.output = VerifyAuthRequestCryptogramOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << VerificationFailedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/cryptogram/verify", "code" => 200}}
      end)
      service.add_operation(:verify_card_validation_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptographydata#VerifyCardValidationData"
        operation.name = "VerifyCardValidationData"
        operation.input = VerifyCardValidationDataInput
        operation.output = VerifyCardValidationDataOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << VerificationFailedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/cardvalidationdata/verify", "code" => 200}}
      end)
      service.add_operation(:verify_mac, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptographydata#VerifyMac"
        operation.name = "VerifyMac"
        operation.input = VerifyMacInput
        operation.output = VerifyMacOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << VerificationFailedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/mac/verify", "code" => 200}}
      end)
      service.add_operation(:verify_pin_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.paymentcryptographydata#VerifyPinData"
        operation.name = "VerifyPinData"
        operation.input = VerifyPinDataInput
        operation.output = VerifyPinDataOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << VerificationFailedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/pindata/verify", "code" => 200}}
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
