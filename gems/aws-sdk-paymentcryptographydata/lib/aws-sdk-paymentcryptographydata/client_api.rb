# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::PaymentCryptographyData
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AmexCardSecurityCodeVersion1 = Shapes::StructureShape.new(name: 'AmexCardSecurityCodeVersion1')
    AmexCardSecurityCodeVersion2 = Shapes::StructureShape.new(name: 'AmexCardSecurityCodeVersion2')
    AsymmetricEncryptionAttributes = Shapes::StructureShape.new(name: 'AsymmetricEncryptionAttributes')
    CardGenerationAttributes = Shapes::UnionShape.new(name: 'CardGenerationAttributes')
    CardHolderVerificationValue = Shapes::StructureShape.new(name: 'CardHolderVerificationValue')
    CardVerificationAttributes = Shapes::UnionShape.new(name: 'CardVerificationAttributes')
    CardVerificationValue1 = Shapes::StructureShape.new(name: 'CardVerificationValue1')
    CardVerificationValue2 = Shapes::StructureShape.new(name: 'CardVerificationValue2')
    CryptogramAuthResponse = Shapes::UnionShape.new(name: 'CryptogramAuthResponse')
    CryptogramVerificationArpcMethod1 = Shapes::StructureShape.new(name: 'CryptogramVerificationArpcMethod1')
    CryptogramVerificationArpcMethod2 = Shapes::StructureShape.new(name: 'CryptogramVerificationArpcMethod2')
    DecryptDataInput = Shapes::StructureShape.new(name: 'DecryptDataInput')
    DecryptDataOutput = Shapes::StructureShape.new(name: 'DecryptDataOutput')
    DiscoverDynamicCardVerificationCode = Shapes::StructureShape.new(name: 'DiscoverDynamicCardVerificationCode')
    DukptAttributes = Shapes::StructureShape.new(name: 'DukptAttributes')
    DukptDerivationAttributes = Shapes::StructureShape.new(name: 'DukptDerivationAttributes')
    DukptDerivationType = Shapes::StringShape.new(name: 'DukptDerivationType')
    DukptEncryptionAttributes = Shapes::StructureShape.new(name: 'DukptEncryptionAttributes')
    DukptEncryptionMode = Shapes::StringShape.new(name: 'DukptEncryptionMode')
    DukptKeyVariant = Shapes::StringShape.new(name: 'DukptKeyVariant')
    DynamicCardVerificationCode = Shapes::StructureShape.new(name: 'DynamicCardVerificationCode')
    DynamicCardVerificationValue = Shapes::StructureShape.new(name: 'DynamicCardVerificationValue')
    EncryptDataInput = Shapes::StructureShape.new(name: 'EncryptDataInput')
    EncryptDataOutput = Shapes::StructureShape.new(name: 'EncryptDataOutput')
    EncryptionDecryptionAttributes = Shapes::UnionShape.new(name: 'EncryptionDecryptionAttributes')
    EncryptionMode = Shapes::StringShape.new(name: 'EncryptionMode')
    GenerateCardValidationDataInput = Shapes::StructureShape.new(name: 'GenerateCardValidationDataInput')
    GenerateCardValidationDataOutput = Shapes::StructureShape.new(name: 'GenerateCardValidationDataOutput')
    GenerateMacInput = Shapes::StructureShape.new(name: 'GenerateMacInput')
    GenerateMacOutput = Shapes::StructureShape.new(name: 'GenerateMacOutput')
    GeneratePinDataInput = Shapes::StructureShape.new(name: 'GeneratePinDataInput')
    GeneratePinDataOutput = Shapes::StructureShape.new(name: 'GeneratePinDataOutput')
    HexEvenLengthBetween16And4064 = Shapes::StringShape.new(name: 'HexEvenLengthBetween16And4064')
    HexEvenLengthBetween16And4096 = Shapes::StringShape.new(name: 'HexEvenLengthBetween16And4096')
    HexLength16Or32 = Shapes::StringShape.new(name: 'HexLength16Or32')
    HexLengthBetween10And24 = Shapes::StringShape.new(name: 'HexLengthBetween10And24')
    HexLengthBetween16And32 = Shapes::StringShape.new(name: 'HexLengthBetween16And32')
    HexLengthBetween1And16 = Shapes::StringShape.new(name: 'HexLengthBetween1And16')
    HexLengthBetween2And1024 = Shapes::StringShape.new(name: 'HexLengthBetween2And1024')
    HexLengthBetween2And160 = Shapes::StringShape.new(name: 'HexLengthBetween2And160')
    HexLengthBetween2And4 = Shapes::StringShape.new(name: 'HexLengthBetween2And4')
    HexLengthBetween2And4096 = Shapes::StringShape.new(name: 'HexLengthBetween2And4096')
    HexLengthBetween2And8 = Shapes::StringShape.new(name: 'HexLengthBetween2And8')
    HexLengthBetween4And128 = Shapes::StringShape.new(name: 'HexLengthBetween4And128')
    HexLengthEquals1 = Shapes::StringShape.new(name: 'HexLengthEquals1')
    HexLengthEquals16 = Shapes::StringShape.new(name: 'HexLengthEquals16')
    HexLengthEquals2 = Shapes::StringShape.new(name: 'HexLengthEquals2')
    HexLengthEquals4 = Shapes::StringShape.new(name: 'HexLengthEquals4')
    HexLengthEquals8 = Shapes::StringShape.new(name: 'HexLengthEquals8')
    Ibm3624NaturalPin = Shapes::StructureShape.new(name: 'Ibm3624NaturalPin')
    Ibm3624PinFromOffset = Shapes::StructureShape.new(name: 'Ibm3624PinFromOffset')
    Ibm3624PinOffset = Shapes::StructureShape.new(name: 'Ibm3624PinOffset')
    Ibm3624PinVerification = Shapes::StructureShape.new(name: 'Ibm3624PinVerification')
    Ibm3624RandomPin = Shapes::StructureShape.new(name: 'Ibm3624RandomPin')
    IntegerRangeBetween0And9 = Shapes::IntegerShape.new(name: 'IntegerRangeBetween0And9')
    IntegerRangeBetween3And5Type = Shapes::IntegerShape.new(name: 'IntegerRangeBetween3And5Type')
    IntegerRangeBetween4And12 = Shapes::IntegerShape.new(name: 'IntegerRangeBetween4And12')
    IntegerRangeBetween4And16 = Shapes::IntegerShape.new(name: 'IntegerRangeBetween4And16')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    KeyArn = Shapes::StringShape.new(name: 'KeyArn')
    KeyArnOrKeyAliasType = Shapes::StringShape.new(name: 'KeyArnOrKeyAliasType')
    KeyCheckValue = Shapes::StringShape.new(name: 'KeyCheckValue')
    MacAlgorithm = Shapes::StringShape.new(name: 'MacAlgorithm')
    MacAlgorithmDukpt = Shapes::StructureShape.new(name: 'MacAlgorithmDukpt')
    MacAlgorithmEmv = Shapes::StructureShape.new(name: 'MacAlgorithmEmv')
    MacAttributes = Shapes::UnionShape.new(name: 'MacAttributes')
    MajorKeyDerivationMode = Shapes::StringShape.new(name: 'MajorKeyDerivationMode')
    NumberLengthBetween12And19 = Shapes::StringShape.new(name: 'NumberLengthBetween12And19')
    NumberLengthBetween3And5 = Shapes::StringShape.new(name: 'NumberLengthBetween3And5')
    NumberLengthBetween4And12 = Shapes::StringShape.new(name: 'NumberLengthBetween4And12')
    NumberLengthBetween4And16 = Shapes::StringShape.new(name: 'NumberLengthBetween4And16')
    NumberLengthEquals16 = Shapes::StringShape.new(name: 'NumberLengthEquals16')
    NumberLengthEquals3 = Shapes::StringShape.new(name: 'NumberLengthEquals3')
    NumberLengthEquals4 = Shapes::StringShape.new(name: 'NumberLengthEquals4')
    PaddingType = Shapes::StringShape.new(name: 'PaddingType')
    PinBlockFormatForPinData = Shapes::StringShape.new(name: 'PinBlockFormatForPinData')
    PinData = Shapes::UnionShape.new(name: 'PinData')
    PinGenerationAttributes = Shapes::UnionShape.new(name: 'PinGenerationAttributes')
    PinVerificationAttributes = Shapes::UnionShape.new(name: 'PinVerificationAttributes')
    ReEncryptDataInput = Shapes::StructureShape.new(name: 'ReEncryptDataInput')
    ReEncryptDataOutput = Shapes::StructureShape.new(name: 'ReEncryptDataOutput')
    ReEncryptionAttributes = Shapes::UnionShape.new(name: 'ReEncryptionAttributes')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    SessionKeyAmex = Shapes::StructureShape.new(name: 'SessionKeyAmex')
    SessionKeyDerivation = Shapes::UnionShape.new(name: 'SessionKeyDerivation')
    SessionKeyDerivationMode = Shapes::StringShape.new(name: 'SessionKeyDerivationMode')
    SessionKeyDerivationValue = Shapes::UnionShape.new(name: 'SessionKeyDerivationValue')
    SessionKeyEmv2000 = Shapes::StructureShape.new(name: 'SessionKeyEmv2000')
    SessionKeyEmvCommon = Shapes::StructureShape.new(name: 'SessionKeyEmvCommon')
    SessionKeyMastercard = Shapes::StructureShape.new(name: 'SessionKeyMastercard')
    SessionKeyVisa = Shapes::StructureShape.new(name: 'SessionKeyVisa')
    String = Shapes::StringShape.new(name: 'String')
    SymmetricEncryptionAttributes = Shapes::StructureShape.new(name: 'SymmetricEncryptionAttributes')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TranslatePinDataInput = Shapes::StructureShape.new(name: 'TranslatePinDataInput')
    TranslatePinDataOutput = Shapes::StructureShape.new(name: 'TranslatePinDataOutput')
    TranslationIsoFormats = Shapes::UnionShape.new(name: 'TranslationIsoFormats')
    TranslationPinDataIsoFormat034 = Shapes::StructureShape.new(name: 'TranslationPinDataIsoFormat034')
    TranslationPinDataIsoFormat1 = Shapes::StructureShape.new(name: 'TranslationPinDataIsoFormat1')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    VerificationFailedException = Shapes::StructureShape.new(name: 'VerificationFailedException')
    VerificationFailedReason = Shapes::StringShape.new(name: 'VerificationFailedReason')
    VerifyAuthRequestCryptogramInput = Shapes::StructureShape.new(name: 'VerifyAuthRequestCryptogramInput')
    VerifyAuthRequestCryptogramOutput = Shapes::StructureShape.new(name: 'VerifyAuthRequestCryptogramOutput')
    VerifyCardValidationDataInput = Shapes::StructureShape.new(name: 'VerifyCardValidationDataInput')
    VerifyCardValidationDataOutput = Shapes::StructureShape.new(name: 'VerifyCardValidationDataOutput')
    VerifyMacInput = Shapes::StructureShape.new(name: 'VerifyMacInput')
    VerifyMacOutput = Shapes::StructureShape.new(name: 'VerifyMacOutput')
    VerifyPinDataInput = Shapes::StructureShape.new(name: 'VerifyPinDataInput')
    VerifyPinDataOutput = Shapes::StructureShape.new(name: 'VerifyPinDataOutput')
    VisaPin = Shapes::StructureShape.new(name: 'VisaPin')
    VisaPinVerification = Shapes::StructureShape.new(name: 'VisaPinVerification')
    VisaPinVerificationValue = Shapes::StructureShape.new(name: 'VisaPinVerificationValue')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AmexCardSecurityCodeVersion1.add_member(:card_expiry_date, Shapes::ShapeRef.new(shape: NumberLengthEquals4, required: true, location_name: "CardExpiryDate"))
    AmexCardSecurityCodeVersion1.struct_class = Types::AmexCardSecurityCodeVersion1

    AmexCardSecurityCodeVersion2.add_member(:card_expiry_date, Shapes::ShapeRef.new(shape: NumberLengthEquals4, required: true, location_name: "CardExpiryDate"))
    AmexCardSecurityCodeVersion2.add_member(:service_code, Shapes::ShapeRef.new(shape: NumberLengthEquals3, required: true, location_name: "ServiceCode"))
    AmexCardSecurityCodeVersion2.struct_class = Types::AmexCardSecurityCodeVersion2

    AsymmetricEncryptionAttributes.add_member(:padding_type, Shapes::ShapeRef.new(shape: PaddingType, location_name: "PaddingType"))
    AsymmetricEncryptionAttributes.struct_class = Types::AsymmetricEncryptionAttributes

    CardGenerationAttributes.add_member(:amex_card_security_code_version_1, Shapes::ShapeRef.new(shape: AmexCardSecurityCodeVersion1, location_name: "AmexCardSecurityCodeVersion1"))
    CardGenerationAttributes.add_member(:amex_card_security_code_version_2, Shapes::ShapeRef.new(shape: AmexCardSecurityCodeVersion2, location_name: "AmexCardSecurityCodeVersion2"))
    CardGenerationAttributes.add_member(:card_holder_verification_value, Shapes::ShapeRef.new(shape: CardHolderVerificationValue, location_name: "CardHolderVerificationValue"))
    CardGenerationAttributes.add_member(:card_verification_value_1, Shapes::ShapeRef.new(shape: CardVerificationValue1, location_name: "CardVerificationValue1"))
    CardGenerationAttributes.add_member(:card_verification_value_2, Shapes::ShapeRef.new(shape: CardVerificationValue2, location_name: "CardVerificationValue2"))
    CardGenerationAttributes.add_member(:dynamic_card_verification_code, Shapes::ShapeRef.new(shape: DynamicCardVerificationCode, location_name: "DynamicCardVerificationCode"))
    CardGenerationAttributes.add_member(:dynamic_card_verification_value, Shapes::ShapeRef.new(shape: DynamicCardVerificationValue, location_name: "DynamicCardVerificationValue"))
    CardGenerationAttributes.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CardGenerationAttributes.add_member_subclass(:amex_card_security_code_version_1, Types::CardGenerationAttributes::AmexCardSecurityCodeVersion1)
    CardGenerationAttributes.add_member_subclass(:amex_card_security_code_version_2, Types::CardGenerationAttributes::AmexCardSecurityCodeVersion2)
    CardGenerationAttributes.add_member_subclass(:card_holder_verification_value, Types::CardGenerationAttributes::CardHolderVerificationValue)
    CardGenerationAttributes.add_member_subclass(:card_verification_value_1, Types::CardGenerationAttributes::CardVerificationValue1)
    CardGenerationAttributes.add_member_subclass(:card_verification_value_2, Types::CardGenerationAttributes::CardVerificationValue2)
    CardGenerationAttributes.add_member_subclass(:dynamic_card_verification_code, Types::CardGenerationAttributes::DynamicCardVerificationCode)
    CardGenerationAttributes.add_member_subclass(:dynamic_card_verification_value, Types::CardGenerationAttributes::DynamicCardVerificationValue)
    CardGenerationAttributes.add_member_subclass(:unknown, Types::CardGenerationAttributes::Unknown)
    CardGenerationAttributes.struct_class = Types::CardGenerationAttributes

    CardHolderVerificationValue.add_member(:application_transaction_counter, Shapes::ShapeRef.new(shape: HexLengthBetween2And4, required: true, location_name: "ApplicationTransactionCounter"))
    CardHolderVerificationValue.add_member(:pan_sequence_number, Shapes::ShapeRef.new(shape: HexLengthEquals2, required: true, location_name: "PanSequenceNumber"))
    CardHolderVerificationValue.add_member(:unpredictable_number, Shapes::ShapeRef.new(shape: HexLengthBetween2And8, required: true, location_name: "UnpredictableNumber"))
    CardHolderVerificationValue.struct_class = Types::CardHolderVerificationValue

    CardVerificationAttributes.add_member(:amex_card_security_code_version_1, Shapes::ShapeRef.new(shape: AmexCardSecurityCodeVersion1, location_name: "AmexCardSecurityCodeVersion1"))
    CardVerificationAttributes.add_member(:amex_card_security_code_version_2, Shapes::ShapeRef.new(shape: AmexCardSecurityCodeVersion2, location_name: "AmexCardSecurityCodeVersion2"))
    CardVerificationAttributes.add_member(:card_holder_verification_value, Shapes::ShapeRef.new(shape: CardHolderVerificationValue, location_name: "CardHolderVerificationValue"))
    CardVerificationAttributes.add_member(:card_verification_value_1, Shapes::ShapeRef.new(shape: CardVerificationValue1, location_name: "CardVerificationValue1"))
    CardVerificationAttributes.add_member(:card_verification_value_2, Shapes::ShapeRef.new(shape: CardVerificationValue2, location_name: "CardVerificationValue2"))
    CardVerificationAttributes.add_member(:discover_dynamic_card_verification_code, Shapes::ShapeRef.new(shape: DiscoverDynamicCardVerificationCode, location_name: "DiscoverDynamicCardVerificationCode"))
    CardVerificationAttributes.add_member(:dynamic_card_verification_code, Shapes::ShapeRef.new(shape: DynamicCardVerificationCode, location_name: "DynamicCardVerificationCode"))
    CardVerificationAttributes.add_member(:dynamic_card_verification_value, Shapes::ShapeRef.new(shape: DynamicCardVerificationValue, location_name: "DynamicCardVerificationValue"))
    CardVerificationAttributes.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CardVerificationAttributes.add_member_subclass(:amex_card_security_code_version_1, Types::CardVerificationAttributes::AmexCardSecurityCodeVersion1)
    CardVerificationAttributes.add_member_subclass(:amex_card_security_code_version_2, Types::CardVerificationAttributes::AmexCardSecurityCodeVersion2)
    CardVerificationAttributes.add_member_subclass(:card_holder_verification_value, Types::CardVerificationAttributes::CardHolderVerificationValue)
    CardVerificationAttributes.add_member_subclass(:card_verification_value_1, Types::CardVerificationAttributes::CardVerificationValue1)
    CardVerificationAttributes.add_member_subclass(:card_verification_value_2, Types::CardVerificationAttributes::CardVerificationValue2)
    CardVerificationAttributes.add_member_subclass(:discover_dynamic_card_verification_code, Types::CardVerificationAttributes::DiscoverDynamicCardVerificationCode)
    CardVerificationAttributes.add_member_subclass(:dynamic_card_verification_code, Types::CardVerificationAttributes::DynamicCardVerificationCode)
    CardVerificationAttributes.add_member_subclass(:dynamic_card_verification_value, Types::CardVerificationAttributes::DynamicCardVerificationValue)
    CardVerificationAttributes.add_member_subclass(:unknown, Types::CardVerificationAttributes::Unknown)
    CardVerificationAttributes.struct_class = Types::CardVerificationAttributes

    CardVerificationValue1.add_member(:card_expiry_date, Shapes::ShapeRef.new(shape: NumberLengthEquals4, required: true, location_name: "CardExpiryDate"))
    CardVerificationValue1.add_member(:service_code, Shapes::ShapeRef.new(shape: NumberLengthEquals3, required: true, location_name: "ServiceCode"))
    CardVerificationValue1.struct_class = Types::CardVerificationValue1

    CardVerificationValue2.add_member(:card_expiry_date, Shapes::ShapeRef.new(shape: NumberLengthEquals4, required: true, location_name: "CardExpiryDate"))
    CardVerificationValue2.struct_class = Types::CardVerificationValue2

    CryptogramAuthResponse.add_member(:arpc_method_1, Shapes::ShapeRef.new(shape: CryptogramVerificationArpcMethod1, location_name: "ArpcMethod1"))
    CryptogramAuthResponse.add_member(:arpc_method_2, Shapes::ShapeRef.new(shape: CryptogramVerificationArpcMethod2, location_name: "ArpcMethod2"))
    CryptogramAuthResponse.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CryptogramAuthResponse.add_member_subclass(:arpc_method_1, Types::CryptogramAuthResponse::ArpcMethod1)
    CryptogramAuthResponse.add_member_subclass(:arpc_method_2, Types::CryptogramAuthResponse::ArpcMethod2)
    CryptogramAuthResponse.add_member_subclass(:unknown, Types::CryptogramAuthResponse::Unknown)
    CryptogramAuthResponse.struct_class = Types::CryptogramAuthResponse

    CryptogramVerificationArpcMethod1.add_member(:auth_response_code, Shapes::ShapeRef.new(shape: HexLengthEquals4, required: true, location_name: "AuthResponseCode"))
    CryptogramVerificationArpcMethod1.struct_class = Types::CryptogramVerificationArpcMethod1

    CryptogramVerificationArpcMethod2.add_member(:card_status_update, Shapes::ShapeRef.new(shape: HexLengthEquals8, required: true, location_name: "CardStatusUpdate"))
    CryptogramVerificationArpcMethod2.add_member(:proprietary_authentication_data, Shapes::ShapeRef.new(shape: HexLengthBetween1And16, location_name: "ProprietaryAuthenticationData"))
    CryptogramVerificationArpcMethod2.struct_class = Types::CryptogramVerificationArpcMethod2

    DecryptDataInput.add_member(:cipher_text, Shapes::ShapeRef.new(shape: HexEvenLengthBetween16And4096, required: true, location_name: "CipherText"))
    DecryptDataInput.add_member(:decryption_attributes, Shapes::ShapeRef.new(shape: EncryptionDecryptionAttributes, required: true, location_name: "DecryptionAttributes"))
    DecryptDataInput.add_member(:key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location: "uri", location_name: "KeyIdentifier"))
    DecryptDataInput.struct_class = Types::DecryptDataInput

    DecryptDataOutput.add_member(:key_arn, Shapes::ShapeRef.new(shape: KeyArn, required: true, location_name: "KeyArn"))
    DecryptDataOutput.add_member(:key_check_value, Shapes::ShapeRef.new(shape: KeyCheckValue, required: true, location_name: "KeyCheckValue"))
    DecryptDataOutput.add_member(:plain_text, Shapes::ShapeRef.new(shape: HexEvenLengthBetween16And4096, required: true, location_name: "PlainText"))
    DecryptDataOutput.struct_class = Types::DecryptDataOutput

    DiscoverDynamicCardVerificationCode.add_member(:application_transaction_counter, Shapes::ShapeRef.new(shape: HexLengthBetween2And4, required: true, location_name: "ApplicationTransactionCounter"))
    DiscoverDynamicCardVerificationCode.add_member(:card_expiry_date, Shapes::ShapeRef.new(shape: NumberLengthEquals4, required: true, location_name: "CardExpiryDate"))
    DiscoverDynamicCardVerificationCode.add_member(:unpredictable_number, Shapes::ShapeRef.new(shape: HexLengthBetween2And8, required: true, location_name: "UnpredictableNumber"))
    DiscoverDynamicCardVerificationCode.struct_class = Types::DiscoverDynamicCardVerificationCode

    DukptAttributes.add_member(:dukpt_derivation_type, Shapes::ShapeRef.new(shape: DukptDerivationType, required: true, location_name: "DukptDerivationType"))
    DukptAttributes.add_member(:key_serial_number, Shapes::ShapeRef.new(shape: HexLengthBetween10And24, required: true, location_name: "KeySerialNumber"))
    DukptAttributes.struct_class = Types::DukptAttributes

    DukptDerivationAttributes.add_member(:dukpt_key_derivation_type, Shapes::ShapeRef.new(shape: DukptDerivationType, location_name: "DukptKeyDerivationType"))
    DukptDerivationAttributes.add_member(:dukpt_key_variant, Shapes::ShapeRef.new(shape: DukptKeyVariant, location_name: "DukptKeyVariant"))
    DukptDerivationAttributes.add_member(:key_serial_number, Shapes::ShapeRef.new(shape: HexLengthBetween10And24, required: true, location_name: "KeySerialNumber"))
    DukptDerivationAttributes.struct_class = Types::DukptDerivationAttributes

    DukptEncryptionAttributes.add_member(:dukpt_key_derivation_type, Shapes::ShapeRef.new(shape: DukptDerivationType, location_name: "DukptKeyDerivationType"))
    DukptEncryptionAttributes.add_member(:dukpt_key_variant, Shapes::ShapeRef.new(shape: DukptKeyVariant, location_name: "DukptKeyVariant"))
    DukptEncryptionAttributes.add_member(:initialization_vector, Shapes::ShapeRef.new(shape: HexLength16Or32, location_name: "InitializationVector"))
    DukptEncryptionAttributes.add_member(:key_serial_number, Shapes::ShapeRef.new(shape: HexLengthBetween10And24, required: true, location_name: "KeySerialNumber"))
    DukptEncryptionAttributes.add_member(:mode, Shapes::ShapeRef.new(shape: DukptEncryptionMode, location_name: "Mode"))
    DukptEncryptionAttributes.struct_class = Types::DukptEncryptionAttributes

    DynamicCardVerificationCode.add_member(:application_transaction_counter, Shapes::ShapeRef.new(shape: HexLengthBetween2And4, required: true, location_name: "ApplicationTransactionCounter"))
    DynamicCardVerificationCode.add_member(:pan_sequence_number, Shapes::ShapeRef.new(shape: HexLengthEquals2, required: true, location_name: "PanSequenceNumber"))
    DynamicCardVerificationCode.add_member(:track_data, Shapes::ShapeRef.new(shape: HexLengthBetween2And160, required: true, location_name: "TrackData"))
    DynamicCardVerificationCode.add_member(:unpredictable_number, Shapes::ShapeRef.new(shape: HexLengthBetween2And8, required: true, location_name: "UnpredictableNumber"))
    DynamicCardVerificationCode.struct_class = Types::DynamicCardVerificationCode

    DynamicCardVerificationValue.add_member(:application_transaction_counter, Shapes::ShapeRef.new(shape: HexLengthBetween2And4, required: true, location_name: "ApplicationTransactionCounter"))
    DynamicCardVerificationValue.add_member(:card_expiry_date, Shapes::ShapeRef.new(shape: NumberLengthEquals4, required: true, location_name: "CardExpiryDate"))
    DynamicCardVerificationValue.add_member(:pan_sequence_number, Shapes::ShapeRef.new(shape: HexLengthEquals2, required: true, location_name: "PanSequenceNumber"))
    DynamicCardVerificationValue.add_member(:service_code, Shapes::ShapeRef.new(shape: NumberLengthEquals3, required: true, location_name: "ServiceCode"))
    DynamicCardVerificationValue.struct_class = Types::DynamicCardVerificationValue

    EncryptDataInput.add_member(:encryption_attributes, Shapes::ShapeRef.new(shape: EncryptionDecryptionAttributes, required: true, location_name: "EncryptionAttributes"))
    EncryptDataInput.add_member(:key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location: "uri", location_name: "KeyIdentifier"))
    EncryptDataInput.add_member(:plain_text, Shapes::ShapeRef.new(shape: HexEvenLengthBetween16And4064, required: true, location_name: "PlainText"))
    EncryptDataInput.struct_class = Types::EncryptDataInput

    EncryptDataOutput.add_member(:cipher_text, Shapes::ShapeRef.new(shape: HexEvenLengthBetween16And4096, required: true, location_name: "CipherText"))
    EncryptDataOutput.add_member(:key_arn, Shapes::ShapeRef.new(shape: KeyArn, required: true, location_name: "KeyArn"))
    EncryptDataOutput.add_member(:key_check_value, Shapes::ShapeRef.new(shape: KeyCheckValue, required: true, location_name: "KeyCheckValue"))
    EncryptDataOutput.struct_class = Types::EncryptDataOutput

    EncryptionDecryptionAttributes.add_member(:asymmetric, Shapes::ShapeRef.new(shape: AsymmetricEncryptionAttributes, location_name: "Asymmetric"))
    EncryptionDecryptionAttributes.add_member(:dukpt, Shapes::ShapeRef.new(shape: DukptEncryptionAttributes, location_name: "Dukpt"))
    EncryptionDecryptionAttributes.add_member(:symmetric, Shapes::ShapeRef.new(shape: SymmetricEncryptionAttributes, location_name: "Symmetric"))
    EncryptionDecryptionAttributes.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EncryptionDecryptionAttributes.add_member_subclass(:asymmetric, Types::EncryptionDecryptionAttributes::Asymmetric)
    EncryptionDecryptionAttributes.add_member_subclass(:dukpt, Types::EncryptionDecryptionAttributes::Dukpt)
    EncryptionDecryptionAttributes.add_member_subclass(:symmetric, Types::EncryptionDecryptionAttributes::Symmetric)
    EncryptionDecryptionAttributes.add_member_subclass(:unknown, Types::EncryptionDecryptionAttributes::Unknown)
    EncryptionDecryptionAttributes.struct_class = Types::EncryptionDecryptionAttributes

    GenerateCardValidationDataInput.add_member(:generation_attributes, Shapes::ShapeRef.new(shape: CardGenerationAttributes, required: true, location_name: "GenerationAttributes"))
    GenerateCardValidationDataInput.add_member(:key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "KeyIdentifier"))
    GenerateCardValidationDataInput.add_member(:primary_account_number, Shapes::ShapeRef.new(shape: NumberLengthBetween12And19, required: true, location_name: "PrimaryAccountNumber"))
    GenerateCardValidationDataInput.add_member(:validation_data_length, Shapes::ShapeRef.new(shape: IntegerRangeBetween3And5Type, location_name: "ValidationDataLength"))
    GenerateCardValidationDataInput.struct_class = Types::GenerateCardValidationDataInput

    GenerateCardValidationDataOutput.add_member(:key_arn, Shapes::ShapeRef.new(shape: KeyArn, required: true, location_name: "KeyArn"))
    GenerateCardValidationDataOutput.add_member(:key_check_value, Shapes::ShapeRef.new(shape: KeyCheckValue, required: true, location_name: "KeyCheckValue"))
    GenerateCardValidationDataOutput.add_member(:validation_data, Shapes::ShapeRef.new(shape: NumberLengthBetween3And5, required: true, location_name: "ValidationData"))
    GenerateCardValidationDataOutput.struct_class = Types::GenerateCardValidationDataOutput

    GenerateMacInput.add_member(:generation_attributes, Shapes::ShapeRef.new(shape: MacAttributes, required: true, location_name: "GenerationAttributes"))
    GenerateMacInput.add_member(:key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "KeyIdentifier"))
    GenerateMacInput.add_member(:mac_length, Shapes::ShapeRef.new(shape: IntegerRangeBetween4And16, location_name: "MacLength"))
    GenerateMacInput.add_member(:message_data, Shapes::ShapeRef.new(shape: HexLengthBetween2And4096, required: true, location_name: "MessageData"))
    GenerateMacInput.struct_class = Types::GenerateMacInput

    GenerateMacOutput.add_member(:key_arn, Shapes::ShapeRef.new(shape: KeyArn, required: true, location_name: "KeyArn"))
    GenerateMacOutput.add_member(:key_check_value, Shapes::ShapeRef.new(shape: KeyCheckValue, required: true, location_name: "KeyCheckValue"))
    GenerateMacOutput.add_member(:mac, Shapes::ShapeRef.new(shape: HexLengthBetween4And128, required: true, location_name: "Mac"))
    GenerateMacOutput.struct_class = Types::GenerateMacOutput

    GeneratePinDataInput.add_member(:encryption_key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "EncryptionKeyIdentifier"))
    GeneratePinDataInput.add_member(:generation_attributes, Shapes::ShapeRef.new(shape: PinGenerationAttributes, required: true, location_name: "GenerationAttributes"))
    GeneratePinDataInput.add_member(:generation_key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "GenerationKeyIdentifier"))
    GeneratePinDataInput.add_member(:pin_block_format, Shapes::ShapeRef.new(shape: PinBlockFormatForPinData, required: true, location_name: "PinBlockFormat"))
    GeneratePinDataInput.add_member(:pin_data_length, Shapes::ShapeRef.new(shape: IntegerRangeBetween4And12, location_name: "PinDataLength", metadata: {"box"=>true}))
    GeneratePinDataInput.add_member(:primary_account_number, Shapes::ShapeRef.new(shape: NumberLengthBetween12And19, required: true, location_name: "PrimaryAccountNumber"))
    GeneratePinDataInput.struct_class = Types::GeneratePinDataInput

    GeneratePinDataOutput.add_member(:encrypted_pin_block, Shapes::ShapeRef.new(shape: HexLengthBetween16And32, required: true, location_name: "EncryptedPinBlock"))
    GeneratePinDataOutput.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: KeyArn, required: true, location_name: "EncryptionKeyArn"))
    GeneratePinDataOutput.add_member(:encryption_key_check_value, Shapes::ShapeRef.new(shape: KeyCheckValue, required: true, location_name: "EncryptionKeyCheckValue"))
    GeneratePinDataOutput.add_member(:generation_key_arn, Shapes::ShapeRef.new(shape: KeyArn, required: true, location_name: "GenerationKeyArn"))
    GeneratePinDataOutput.add_member(:generation_key_check_value, Shapes::ShapeRef.new(shape: KeyCheckValue, required: true, location_name: "GenerationKeyCheckValue"))
    GeneratePinDataOutput.add_member(:pin_data, Shapes::ShapeRef.new(shape: PinData, required: true, location_name: "PinData"))
    GeneratePinDataOutput.struct_class = Types::GeneratePinDataOutput

    Ibm3624NaturalPin.add_member(:decimalization_table, Shapes::ShapeRef.new(shape: NumberLengthEquals16, required: true, location_name: "DecimalizationTable"))
    Ibm3624NaturalPin.add_member(:pin_validation_data, Shapes::ShapeRef.new(shape: NumberLengthBetween4And16, required: true, location_name: "PinValidationData"))
    Ibm3624NaturalPin.add_member(:pin_validation_data_pad_character, Shapes::ShapeRef.new(shape: HexLengthEquals1, required: true, location_name: "PinValidationDataPadCharacter"))
    Ibm3624NaturalPin.struct_class = Types::Ibm3624NaturalPin

    Ibm3624PinFromOffset.add_member(:decimalization_table, Shapes::ShapeRef.new(shape: NumberLengthEquals16, required: true, location_name: "DecimalizationTable"))
    Ibm3624PinFromOffset.add_member(:pin_offset, Shapes::ShapeRef.new(shape: NumberLengthBetween4And12, required: true, location_name: "PinOffset"))
    Ibm3624PinFromOffset.add_member(:pin_validation_data, Shapes::ShapeRef.new(shape: NumberLengthBetween4And16, required: true, location_name: "PinValidationData"))
    Ibm3624PinFromOffset.add_member(:pin_validation_data_pad_character, Shapes::ShapeRef.new(shape: HexLengthEquals1, required: true, location_name: "PinValidationDataPadCharacter"))
    Ibm3624PinFromOffset.struct_class = Types::Ibm3624PinFromOffset

    Ibm3624PinOffset.add_member(:decimalization_table, Shapes::ShapeRef.new(shape: NumberLengthEquals16, required: true, location_name: "DecimalizationTable"))
    Ibm3624PinOffset.add_member(:encrypted_pin_block, Shapes::ShapeRef.new(shape: HexLengthBetween16And32, required: true, location_name: "EncryptedPinBlock"))
    Ibm3624PinOffset.add_member(:pin_validation_data, Shapes::ShapeRef.new(shape: NumberLengthBetween4And16, required: true, location_name: "PinValidationData"))
    Ibm3624PinOffset.add_member(:pin_validation_data_pad_character, Shapes::ShapeRef.new(shape: HexLengthEquals1, required: true, location_name: "PinValidationDataPadCharacter"))
    Ibm3624PinOffset.struct_class = Types::Ibm3624PinOffset

    Ibm3624PinVerification.add_member(:decimalization_table, Shapes::ShapeRef.new(shape: NumberLengthEquals16, required: true, location_name: "DecimalizationTable"))
    Ibm3624PinVerification.add_member(:pin_offset, Shapes::ShapeRef.new(shape: NumberLengthBetween4And12, required: true, location_name: "PinOffset"))
    Ibm3624PinVerification.add_member(:pin_validation_data, Shapes::ShapeRef.new(shape: NumberLengthBetween4And16, required: true, location_name: "PinValidationData"))
    Ibm3624PinVerification.add_member(:pin_validation_data_pad_character, Shapes::ShapeRef.new(shape: HexLengthEquals1, required: true, location_name: "PinValidationDataPadCharacter"))
    Ibm3624PinVerification.struct_class = Types::Ibm3624PinVerification

    Ibm3624RandomPin.add_member(:decimalization_table, Shapes::ShapeRef.new(shape: NumberLengthEquals16, required: true, location_name: "DecimalizationTable"))
    Ibm3624RandomPin.add_member(:pin_validation_data, Shapes::ShapeRef.new(shape: NumberLengthBetween4And16, required: true, location_name: "PinValidationData"))
    Ibm3624RandomPin.add_member(:pin_validation_data_pad_character, Shapes::ShapeRef.new(shape: HexLengthEquals1, required: true, location_name: "PinValidationDataPadCharacter"))
    Ibm3624RandomPin.struct_class = Types::Ibm3624RandomPin

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    MacAlgorithmDukpt.add_member(:dukpt_derivation_type, Shapes::ShapeRef.new(shape: DukptDerivationType, location_name: "DukptDerivationType"))
    MacAlgorithmDukpt.add_member(:dukpt_key_variant, Shapes::ShapeRef.new(shape: DukptKeyVariant, required: true, location_name: "DukptKeyVariant"))
    MacAlgorithmDukpt.add_member(:key_serial_number, Shapes::ShapeRef.new(shape: HexLengthBetween10And24, required: true, location_name: "KeySerialNumber"))
    MacAlgorithmDukpt.struct_class = Types::MacAlgorithmDukpt

    MacAlgorithmEmv.add_member(:major_key_derivation_mode, Shapes::ShapeRef.new(shape: MajorKeyDerivationMode, required: true, location_name: "MajorKeyDerivationMode"))
    MacAlgorithmEmv.add_member(:pan_sequence_number, Shapes::ShapeRef.new(shape: HexLengthEquals2, required: true, location_name: "PanSequenceNumber"))
    MacAlgorithmEmv.add_member(:primary_account_number, Shapes::ShapeRef.new(shape: NumberLengthBetween12And19, required: true, location_name: "PrimaryAccountNumber"))
    MacAlgorithmEmv.add_member(:session_key_derivation_mode, Shapes::ShapeRef.new(shape: SessionKeyDerivationMode, required: true, location_name: "SessionKeyDerivationMode"))
    MacAlgorithmEmv.add_member(:session_key_derivation_value, Shapes::ShapeRef.new(shape: SessionKeyDerivationValue, required: true, location_name: "SessionKeyDerivationValue"))
    MacAlgorithmEmv.struct_class = Types::MacAlgorithmEmv

    MacAttributes.add_member(:algorithm, Shapes::ShapeRef.new(shape: MacAlgorithm, location_name: "Algorithm"))
    MacAttributes.add_member(:dukpt_cmac, Shapes::ShapeRef.new(shape: MacAlgorithmDukpt, location_name: "DukptCmac"))
    MacAttributes.add_member(:dukpt_iso_9797_algorithm_1, Shapes::ShapeRef.new(shape: MacAlgorithmDukpt, location_name: "DukptIso9797Algorithm1"))
    MacAttributes.add_member(:dukpt_iso_9797_algorithm_3, Shapes::ShapeRef.new(shape: MacAlgorithmDukpt, location_name: "DukptIso9797Algorithm3"))
    MacAttributes.add_member(:emv_mac, Shapes::ShapeRef.new(shape: MacAlgorithmEmv, location_name: "EmvMac"))
    MacAttributes.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    MacAttributes.add_member_subclass(:algorithm, Types::MacAttributes::Algorithm)
    MacAttributes.add_member_subclass(:dukpt_cmac, Types::MacAttributes::DukptCmac)
    MacAttributes.add_member_subclass(:dukpt_iso_9797_algorithm_1, Types::MacAttributes::DukptIso9797Algorithm1)
    MacAttributes.add_member_subclass(:dukpt_iso_9797_algorithm_3, Types::MacAttributes::DukptIso9797Algorithm3)
    MacAttributes.add_member_subclass(:emv_mac, Types::MacAttributes::EmvMac)
    MacAttributes.add_member_subclass(:unknown, Types::MacAttributes::Unknown)
    MacAttributes.struct_class = Types::MacAttributes

    PinData.add_member(:pin_offset, Shapes::ShapeRef.new(shape: NumberLengthBetween4And12, location_name: "PinOffset"))
    PinData.add_member(:verification_value, Shapes::ShapeRef.new(shape: NumberLengthBetween4And12, location_name: "VerificationValue"))
    PinData.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PinData.add_member_subclass(:pin_offset, Types::PinData::PinOffset)
    PinData.add_member_subclass(:verification_value, Types::PinData::VerificationValue)
    PinData.add_member_subclass(:unknown, Types::PinData::Unknown)
    PinData.struct_class = Types::PinData

    PinGenerationAttributes.add_member(:ibm_3624_natural_pin, Shapes::ShapeRef.new(shape: Ibm3624NaturalPin, location_name: "Ibm3624NaturalPin"))
    PinGenerationAttributes.add_member(:ibm_3624_pin_from_offset, Shapes::ShapeRef.new(shape: Ibm3624PinFromOffset, location_name: "Ibm3624PinFromOffset"))
    PinGenerationAttributes.add_member(:ibm_3624_pin_offset, Shapes::ShapeRef.new(shape: Ibm3624PinOffset, location_name: "Ibm3624PinOffset"))
    PinGenerationAttributes.add_member(:ibm_3624_random_pin, Shapes::ShapeRef.new(shape: Ibm3624RandomPin, location_name: "Ibm3624RandomPin"))
    PinGenerationAttributes.add_member(:visa_pin, Shapes::ShapeRef.new(shape: VisaPin, location_name: "VisaPin"))
    PinGenerationAttributes.add_member(:visa_pin_verification_value, Shapes::ShapeRef.new(shape: VisaPinVerificationValue, location_name: "VisaPinVerificationValue"))
    PinGenerationAttributes.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PinGenerationAttributes.add_member_subclass(:ibm_3624_natural_pin, Types::PinGenerationAttributes::Ibm3624NaturalPin)
    PinGenerationAttributes.add_member_subclass(:ibm_3624_pin_from_offset, Types::PinGenerationAttributes::Ibm3624PinFromOffset)
    PinGenerationAttributes.add_member_subclass(:ibm_3624_pin_offset, Types::PinGenerationAttributes::Ibm3624PinOffset)
    PinGenerationAttributes.add_member_subclass(:ibm_3624_random_pin, Types::PinGenerationAttributes::Ibm3624RandomPin)
    PinGenerationAttributes.add_member_subclass(:visa_pin, Types::PinGenerationAttributes::VisaPin)
    PinGenerationAttributes.add_member_subclass(:visa_pin_verification_value, Types::PinGenerationAttributes::VisaPinVerificationValue)
    PinGenerationAttributes.add_member_subclass(:unknown, Types::PinGenerationAttributes::Unknown)
    PinGenerationAttributes.struct_class = Types::PinGenerationAttributes

    PinVerificationAttributes.add_member(:ibm_3624_pin, Shapes::ShapeRef.new(shape: Ibm3624PinVerification, location_name: "Ibm3624Pin"))
    PinVerificationAttributes.add_member(:visa_pin, Shapes::ShapeRef.new(shape: VisaPinVerification, location_name: "VisaPin"))
    PinVerificationAttributes.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PinVerificationAttributes.add_member_subclass(:ibm_3624_pin, Types::PinVerificationAttributes::Ibm3624Pin)
    PinVerificationAttributes.add_member_subclass(:visa_pin, Types::PinVerificationAttributes::VisaPin)
    PinVerificationAttributes.add_member_subclass(:unknown, Types::PinVerificationAttributes::Unknown)
    PinVerificationAttributes.struct_class = Types::PinVerificationAttributes

    ReEncryptDataInput.add_member(:cipher_text, Shapes::ShapeRef.new(shape: HexEvenLengthBetween16And4096, required: true, location_name: "CipherText"))
    ReEncryptDataInput.add_member(:incoming_encryption_attributes, Shapes::ShapeRef.new(shape: ReEncryptionAttributes, required: true, location_name: "IncomingEncryptionAttributes"))
    ReEncryptDataInput.add_member(:incoming_key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location: "uri", location_name: "IncomingKeyIdentifier"))
    ReEncryptDataInput.add_member(:outgoing_encryption_attributes, Shapes::ShapeRef.new(shape: ReEncryptionAttributes, required: true, location_name: "OutgoingEncryptionAttributes"))
    ReEncryptDataInput.add_member(:outgoing_key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "OutgoingKeyIdentifier"))
    ReEncryptDataInput.struct_class = Types::ReEncryptDataInput

    ReEncryptDataOutput.add_member(:cipher_text, Shapes::ShapeRef.new(shape: HexEvenLengthBetween16And4096, required: true, location_name: "CipherText"))
    ReEncryptDataOutput.add_member(:key_arn, Shapes::ShapeRef.new(shape: KeyArn, required: true, location_name: "KeyArn"))
    ReEncryptDataOutput.add_member(:key_check_value, Shapes::ShapeRef.new(shape: KeyCheckValue, required: true, location_name: "KeyCheckValue"))
    ReEncryptDataOutput.struct_class = Types::ReEncryptDataOutput

    ReEncryptionAttributes.add_member(:dukpt, Shapes::ShapeRef.new(shape: DukptEncryptionAttributes, location_name: "Dukpt"))
    ReEncryptionAttributes.add_member(:symmetric, Shapes::ShapeRef.new(shape: SymmetricEncryptionAttributes, location_name: "Symmetric"))
    ReEncryptionAttributes.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ReEncryptionAttributes.add_member_subclass(:dukpt, Types::ReEncryptionAttributes::Dukpt)
    ReEncryptionAttributes.add_member_subclass(:symmetric, Types::ReEncryptionAttributes::Symmetric)
    ReEncryptionAttributes.add_member_subclass(:unknown, Types::ReEncryptionAttributes::Unknown)
    ReEncryptionAttributes.struct_class = Types::ReEncryptionAttributes

    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "ResourceId"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    SessionKeyAmex.add_member(:pan_sequence_number, Shapes::ShapeRef.new(shape: HexLengthEquals2, required: true, location_name: "PanSequenceNumber"))
    SessionKeyAmex.add_member(:primary_account_number, Shapes::ShapeRef.new(shape: NumberLengthBetween12And19, required: true, location_name: "PrimaryAccountNumber"))
    SessionKeyAmex.struct_class = Types::SessionKeyAmex

    SessionKeyDerivation.add_member(:amex, Shapes::ShapeRef.new(shape: SessionKeyAmex, location_name: "Amex"))
    SessionKeyDerivation.add_member(:emv_2000, Shapes::ShapeRef.new(shape: SessionKeyEmv2000, location_name: "Emv2000"))
    SessionKeyDerivation.add_member(:emv_common, Shapes::ShapeRef.new(shape: SessionKeyEmvCommon, location_name: "EmvCommon"))
    SessionKeyDerivation.add_member(:mastercard, Shapes::ShapeRef.new(shape: SessionKeyMastercard, location_name: "Mastercard"))
    SessionKeyDerivation.add_member(:visa, Shapes::ShapeRef.new(shape: SessionKeyVisa, location_name: "Visa"))
    SessionKeyDerivation.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SessionKeyDerivation.add_member_subclass(:amex, Types::SessionKeyDerivation::Amex)
    SessionKeyDerivation.add_member_subclass(:emv_2000, Types::SessionKeyDerivation::Emv2000)
    SessionKeyDerivation.add_member_subclass(:emv_common, Types::SessionKeyDerivation::EmvCommon)
    SessionKeyDerivation.add_member_subclass(:mastercard, Types::SessionKeyDerivation::Mastercard)
    SessionKeyDerivation.add_member_subclass(:visa, Types::SessionKeyDerivation::Visa)
    SessionKeyDerivation.add_member_subclass(:unknown, Types::SessionKeyDerivation::Unknown)
    SessionKeyDerivation.struct_class = Types::SessionKeyDerivation

    SessionKeyDerivationValue.add_member(:application_cryptogram, Shapes::ShapeRef.new(shape: HexLengthEquals16, location_name: "ApplicationCryptogram"))
    SessionKeyDerivationValue.add_member(:application_transaction_counter, Shapes::ShapeRef.new(shape: HexLengthBetween2And4, location_name: "ApplicationTransactionCounter"))
    SessionKeyDerivationValue.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SessionKeyDerivationValue.add_member_subclass(:application_cryptogram, Types::SessionKeyDerivationValue::ApplicationCryptogram)
    SessionKeyDerivationValue.add_member_subclass(:application_transaction_counter, Types::SessionKeyDerivationValue::ApplicationTransactionCounter)
    SessionKeyDerivationValue.add_member_subclass(:unknown, Types::SessionKeyDerivationValue::Unknown)
    SessionKeyDerivationValue.struct_class = Types::SessionKeyDerivationValue

    SessionKeyEmv2000.add_member(:application_transaction_counter, Shapes::ShapeRef.new(shape: HexLengthBetween2And4, required: true, location_name: "ApplicationTransactionCounter"))
    SessionKeyEmv2000.add_member(:pan_sequence_number, Shapes::ShapeRef.new(shape: HexLengthEquals2, required: true, location_name: "PanSequenceNumber"))
    SessionKeyEmv2000.add_member(:primary_account_number, Shapes::ShapeRef.new(shape: NumberLengthBetween12And19, required: true, location_name: "PrimaryAccountNumber"))
    SessionKeyEmv2000.struct_class = Types::SessionKeyEmv2000

    SessionKeyEmvCommon.add_member(:application_transaction_counter, Shapes::ShapeRef.new(shape: HexLengthBetween2And4, required: true, location_name: "ApplicationTransactionCounter"))
    SessionKeyEmvCommon.add_member(:pan_sequence_number, Shapes::ShapeRef.new(shape: HexLengthEquals2, required: true, location_name: "PanSequenceNumber"))
    SessionKeyEmvCommon.add_member(:primary_account_number, Shapes::ShapeRef.new(shape: NumberLengthBetween12And19, required: true, location_name: "PrimaryAccountNumber"))
    SessionKeyEmvCommon.struct_class = Types::SessionKeyEmvCommon

    SessionKeyMastercard.add_member(:application_transaction_counter, Shapes::ShapeRef.new(shape: HexLengthBetween2And4, required: true, location_name: "ApplicationTransactionCounter"))
    SessionKeyMastercard.add_member(:pan_sequence_number, Shapes::ShapeRef.new(shape: HexLengthEquals2, required: true, location_name: "PanSequenceNumber"))
    SessionKeyMastercard.add_member(:primary_account_number, Shapes::ShapeRef.new(shape: NumberLengthBetween12And19, required: true, location_name: "PrimaryAccountNumber"))
    SessionKeyMastercard.add_member(:unpredictable_number, Shapes::ShapeRef.new(shape: HexLengthBetween2And8, required: true, location_name: "UnpredictableNumber"))
    SessionKeyMastercard.struct_class = Types::SessionKeyMastercard

    SessionKeyVisa.add_member(:pan_sequence_number, Shapes::ShapeRef.new(shape: HexLengthEquals2, required: true, location_name: "PanSequenceNumber"))
    SessionKeyVisa.add_member(:primary_account_number, Shapes::ShapeRef.new(shape: NumberLengthBetween12And19, required: true, location_name: "PrimaryAccountNumber"))
    SessionKeyVisa.struct_class = Types::SessionKeyVisa

    SymmetricEncryptionAttributes.add_member(:initialization_vector, Shapes::ShapeRef.new(shape: HexLength16Or32, location_name: "InitializationVector"))
    SymmetricEncryptionAttributes.add_member(:mode, Shapes::ShapeRef.new(shape: EncryptionMode, required: true, location_name: "Mode"))
    SymmetricEncryptionAttributes.add_member(:padding_type, Shapes::ShapeRef.new(shape: PaddingType, location_name: "PaddingType"))
    SymmetricEncryptionAttributes.struct_class = Types::SymmetricEncryptionAttributes

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TranslatePinDataInput.add_member(:encrypted_pin_block, Shapes::ShapeRef.new(shape: HexLengthBetween16And32, required: true, location_name: "EncryptedPinBlock"))
    TranslatePinDataInput.add_member(:incoming_dukpt_attributes, Shapes::ShapeRef.new(shape: DukptDerivationAttributes, location_name: "IncomingDukptAttributes"))
    TranslatePinDataInput.add_member(:incoming_key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "IncomingKeyIdentifier"))
    TranslatePinDataInput.add_member(:incoming_translation_attributes, Shapes::ShapeRef.new(shape: TranslationIsoFormats, required: true, location_name: "IncomingTranslationAttributes"))
    TranslatePinDataInput.add_member(:outgoing_dukpt_attributes, Shapes::ShapeRef.new(shape: DukptDerivationAttributes, location_name: "OutgoingDukptAttributes"))
    TranslatePinDataInput.add_member(:outgoing_key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "OutgoingKeyIdentifier"))
    TranslatePinDataInput.add_member(:outgoing_translation_attributes, Shapes::ShapeRef.new(shape: TranslationIsoFormats, required: true, location_name: "OutgoingTranslationAttributes"))
    TranslatePinDataInput.struct_class = Types::TranslatePinDataInput

    TranslatePinDataOutput.add_member(:key_arn, Shapes::ShapeRef.new(shape: KeyArn, required: true, location_name: "KeyArn"))
    TranslatePinDataOutput.add_member(:key_check_value, Shapes::ShapeRef.new(shape: KeyCheckValue, required: true, location_name: "KeyCheckValue"))
    TranslatePinDataOutput.add_member(:pin_block, Shapes::ShapeRef.new(shape: HexLengthBetween16And32, required: true, location_name: "PinBlock"))
    TranslatePinDataOutput.struct_class = Types::TranslatePinDataOutput

    TranslationIsoFormats.add_member(:iso_format_0, Shapes::ShapeRef.new(shape: TranslationPinDataIsoFormat034, location_name: "IsoFormat0"))
    TranslationIsoFormats.add_member(:iso_format_1, Shapes::ShapeRef.new(shape: TranslationPinDataIsoFormat1, location_name: "IsoFormat1"))
    TranslationIsoFormats.add_member(:iso_format_3, Shapes::ShapeRef.new(shape: TranslationPinDataIsoFormat034, location_name: "IsoFormat3"))
    TranslationIsoFormats.add_member(:iso_format_4, Shapes::ShapeRef.new(shape: TranslationPinDataIsoFormat034, location_name: "IsoFormat4"))
    TranslationIsoFormats.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    TranslationIsoFormats.add_member_subclass(:iso_format_0, Types::TranslationIsoFormats::IsoFormat0)
    TranslationIsoFormats.add_member_subclass(:iso_format_1, Types::TranslationIsoFormats::IsoFormat1)
    TranslationIsoFormats.add_member_subclass(:iso_format_3, Types::TranslationIsoFormats::IsoFormat3)
    TranslationIsoFormats.add_member_subclass(:iso_format_4, Types::TranslationIsoFormats::IsoFormat4)
    TranslationIsoFormats.add_member_subclass(:unknown, Types::TranslationIsoFormats::Unknown)
    TranslationIsoFormats.struct_class = Types::TranslationIsoFormats

    TranslationPinDataIsoFormat034.add_member(:primary_account_number, Shapes::ShapeRef.new(shape: NumberLengthBetween12And19, required: true, location_name: "PrimaryAccountNumber"))
    TranslationPinDataIsoFormat034.struct_class = Types::TranslationPinDataIsoFormat034

    TranslationPinDataIsoFormat1.struct_class = Types::TranslationPinDataIsoFormat1

    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.add_member(:path, Shapes::ShapeRef.new(shape: String, required: true, location_name: "path"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    VerificationFailedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    VerificationFailedException.add_member(:reason, Shapes::ShapeRef.new(shape: VerificationFailedReason, required: true, location_name: "Reason"))
    VerificationFailedException.struct_class = Types::VerificationFailedException

    VerifyAuthRequestCryptogramInput.add_member(:auth_request_cryptogram, Shapes::ShapeRef.new(shape: HexLengthEquals16, required: true, location_name: "AuthRequestCryptogram"))
    VerifyAuthRequestCryptogramInput.add_member(:auth_response_attributes, Shapes::ShapeRef.new(shape: CryptogramAuthResponse, location_name: "AuthResponseAttributes"))
    VerifyAuthRequestCryptogramInput.add_member(:key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "KeyIdentifier"))
    VerifyAuthRequestCryptogramInput.add_member(:major_key_derivation_mode, Shapes::ShapeRef.new(shape: MajorKeyDerivationMode, required: true, location_name: "MajorKeyDerivationMode"))
    VerifyAuthRequestCryptogramInput.add_member(:session_key_derivation_attributes, Shapes::ShapeRef.new(shape: SessionKeyDerivation, required: true, location_name: "SessionKeyDerivationAttributes"))
    VerifyAuthRequestCryptogramInput.add_member(:transaction_data, Shapes::ShapeRef.new(shape: HexLengthBetween2And1024, required: true, location_name: "TransactionData"))
    VerifyAuthRequestCryptogramInput.struct_class = Types::VerifyAuthRequestCryptogramInput

    VerifyAuthRequestCryptogramOutput.add_member(:auth_response_value, Shapes::ShapeRef.new(shape: HexLengthBetween1And16, location_name: "AuthResponseValue"))
    VerifyAuthRequestCryptogramOutput.add_member(:key_arn, Shapes::ShapeRef.new(shape: KeyArn, required: true, location_name: "KeyArn"))
    VerifyAuthRequestCryptogramOutput.add_member(:key_check_value, Shapes::ShapeRef.new(shape: KeyCheckValue, required: true, location_name: "KeyCheckValue"))
    VerifyAuthRequestCryptogramOutput.struct_class = Types::VerifyAuthRequestCryptogramOutput

    VerifyCardValidationDataInput.add_member(:key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "KeyIdentifier"))
    VerifyCardValidationDataInput.add_member(:primary_account_number, Shapes::ShapeRef.new(shape: NumberLengthBetween12And19, required: true, location_name: "PrimaryAccountNumber"))
    VerifyCardValidationDataInput.add_member(:validation_data, Shapes::ShapeRef.new(shape: NumberLengthBetween3And5, required: true, location_name: "ValidationData"))
    VerifyCardValidationDataInput.add_member(:verification_attributes, Shapes::ShapeRef.new(shape: CardVerificationAttributes, required: true, location_name: "VerificationAttributes"))
    VerifyCardValidationDataInput.struct_class = Types::VerifyCardValidationDataInput

    VerifyCardValidationDataOutput.add_member(:key_arn, Shapes::ShapeRef.new(shape: KeyArn, required: true, location_name: "KeyArn"))
    VerifyCardValidationDataOutput.add_member(:key_check_value, Shapes::ShapeRef.new(shape: KeyCheckValue, required: true, location_name: "KeyCheckValue"))
    VerifyCardValidationDataOutput.struct_class = Types::VerifyCardValidationDataOutput

    VerifyMacInput.add_member(:key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "KeyIdentifier"))
    VerifyMacInput.add_member(:mac, Shapes::ShapeRef.new(shape: HexLengthBetween4And128, required: true, location_name: "Mac"))
    VerifyMacInput.add_member(:mac_length, Shapes::ShapeRef.new(shape: IntegerRangeBetween4And16, location_name: "MacLength"))
    VerifyMacInput.add_member(:message_data, Shapes::ShapeRef.new(shape: HexLengthBetween2And4096, required: true, location_name: "MessageData"))
    VerifyMacInput.add_member(:verification_attributes, Shapes::ShapeRef.new(shape: MacAttributes, required: true, location_name: "VerificationAttributes"))
    VerifyMacInput.struct_class = Types::VerifyMacInput

    VerifyMacOutput.add_member(:key_arn, Shapes::ShapeRef.new(shape: KeyArn, required: true, location_name: "KeyArn"))
    VerifyMacOutput.add_member(:key_check_value, Shapes::ShapeRef.new(shape: KeyCheckValue, required: true, location_name: "KeyCheckValue"))
    VerifyMacOutput.struct_class = Types::VerifyMacOutput

    VerifyPinDataInput.add_member(:dukpt_attributes, Shapes::ShapeRef.new(shape: DukptAttributes, location_name: "DukptAttributes"))
    VerifyPinDataInput.add_member(:encrypted_pin_block, Shapes::ShapeRef.new(shape: HexLengthBetween16And32, required: true, location_name: "EncryptedPinBlock"))
    VerifyPinDataInput.add_member(:encryption_key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "EncryptionKeyIdentifier"))
    VerifyPinDataInput.add_member(:pin_block_format, Shapes::ShapeRef.new(shape: PinBlockFormatForPinData, required: true, location_name: "PinBlockFormat"))
    VerifyPinDataInput.add_member(:pin_data_length, Shapes::ShapeRef.new(shape: IntegerRangeBetween4And12, location_name: "PinDataLength", metadata: {"box"=>true}))
    VerifyPinDataInput.add_member(:primary_account_number, Shapes::ShapeRef.new(shape: NumberLengthBetween12And19, required: true, location_name: "PrimaryAccountNumber"))
    VerifyPinDataInput.add_member(:verification_attributes, Shapes::ShapeRef.new(shape: PinVerificationAttributes, required: true, location_name: "VerificationAttributes"))
    VerifyPinDataInput.add_member(:verification_key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "VerificationKeyIdentifier"))
    VerifyPinDataInput.struct_class = Types::VerifyPinDataInput

    VerifyPinDataOutput.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: KeyArn, required: true, location_name: "EncryptionKeyArn"))
    VerifyPinDataOutput.add_member(:encryption_key_check_value, Shapes::ShapeRef.new(shape: KeyCheckValue, required: true, location_name: "EncryptionKeyCheckValue"))
    VerifyPinDataOutput.add_member(:verification_key_arn, Shapes::ShapeRef.new(shape: KeyArn, required: true, location_name: "VerificationKeyArn"))
    VerifyPinDataOutput.add_member(:verification_key_check_value, Shapes::ShapeRef.new(shape: KeyCheckValue, required: true, location_name: "VerificationKeyCheckValue"))
    VerifyPinDataOutput.struct_class = Types::VerifyPinDataOutput

    VisaPin.add_member(:pin_verification_key_index, Shapes::ShapeRef.new(shape: IntegerRangeBetween0And9, required: true, location_name: "PinVerificationKeyIndex"))
    VisaPin.struct_class = Types::VisaPin

    VisaPinVerification.add_member(:pin_verification_key_index, Shapes::ShapeRef.new(shape: IntegerRangeBetween0And9, required: true, location_name: "PinVerificationKeyIndex"))
    VisaPinVerification.add_member(:verification_value, Shapes::ShapeRef.new(shape: NumberLengthBetween4And12, required: true, location_name: "VerificationValue"))
    VisaPinVerification.struct_class = Types::VisaPinVerification

    VisaPinVerificationValue.add_member(:encrypted_pin_block, Shapes::ShapeRef.new(shape: HexLengthBetween16And32, required: true, location_name: "EncryptedPinBlock"))
    VisaPinVerificationValue.add_member(:pin_verification_key_index, Shapes::ShapeRef.new(shape: IntegerRangeBetween0And9, required: true, location_name: "PinVerificationKeyIndex"))
    VisaPinVerificationValue.struct_class = Types::VisaPinVerificationValue


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2022-02-03"

      api.metadata = {
        "apiVersion" => "2022-02-03",
        "endpointPrefix" => "dataplane.payment-cryptography",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Payment Cryptography Data Plane",
        "serviceId" => "Payment Cryptography Data",
        "signatureVersion" => "v4",
        "signingName" => "payment-cryptography",
        "uid" => "payment-cryptography-data-2022-02-03",
      }

      api.add_operation(:decrypt_data, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DecryptData"
        o.http_method = "POST"
        o.http_request_uri = "/keys/{KeyIdentifier}/decrypt"
        o.input = Shapes::ShapeRef.new(shape: DecryptDataInput)
        o.output = Shapes::ShapeRef.new(shape: DecryptDataOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:encrypt_data, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EncryptData"
        o.http_method = "POST"
        o.http_request_uri = "/keys/{KeyIdentifier}/encrypt"
        o.input = Shapes::ShapeRef.new(shape: EncryptDataInput)
        o.output = Shapes::ShapeRef.new(shape: EncryptDataOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:generate_card_validation_data, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GenerateCardValidationData"
        o.http_method = "POST"
        o.http_request_uri = "/cardvalidationdata/generate"
        o.input = Shapes::ShapeRef.new(shape: GenerateCardValidationDataInput)
        o.output = Shapes::ShapeRef.new(shape: GenerateCardValidationDataOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:generate_mac, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GenerateMac"
        o.http_method = "POST"
        o.http_request_uri = "/mac/generate"
        o.input = Shapes::ShapeRef.new(shape: GenerateMacInput)
        o.output = Shapes::ShapeRef.new(shape: GenerateMacOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:generate_pin_data, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GeneratePinData"
        o.http_method = "POST"
        o.http_request_uri = "/pindata/generate"
        o.input = Shapes::ShapeRef.new(shape: GeneratePinDataInput)
        o.output = Shapes::ShapeRef.new(shape: GeneratePinDataOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:re_encrypt_data, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ReEncryptData"
        o.http_method = "POST"
        o.http_request_uri = "/keys/{IncomingKeyIdentifier}/reencrypt"
        o.input = Shapes::ShapeRef.new(shape: ReEncryptDataInput)
        o.output = Shapes::ShapeRef.new(shape: ReEncryptDataOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:translate_pin_data, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TranslatePinData"
        o.http_method = "POST"
        o.http_request_uri = "/pindata/translate"
        o.input = Shapes::ShapeRef.new(shape: TranslatePinDataInput)
        o.output = Shapes::ShapeRef.new(shape: TranslatePinDataOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:verify_auth_request_cryptogram, Seahorse::Model::Operation.new.tap do |o|
        o.name = "VerifyAuthRequestCryptogram"
        o.http_method = "POST"
        o.http_request_uri = "/cryptogram/verify"
        o.input = Shapes::ShapeRef.new(shape: VerifyAuthRequestCryptogramInput)
        o.output = Shapes::ShapeRef.new(shape: VerifyAuthRequestCryptogramOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: VerificationFailedException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:verify_card_validation_data, Seahorse::Model::Operation.new.tap do |o|
        o.name = "VerifyCardValidationData"
        o.http_method = "POST"
        o.http_request_uri = "/cardvalidationdata/verify"
        o.input = Shapes::ShapeRef.new(shape: VerifyCardValidationDataInput)
        o.output = Shapes::ShapeRef.new(shape: VerifyCardValidationDataOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: VerificationFailedException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:verify_mac, Seahorse::Model::Operation.new.tap do |o|
        o.name = "VerifyMac"
        o.http_method = "POST"
        o.http_request_uri = "/mac/verify"
        o.input = Shapes::ShapeRef.new(shape: VerifyMacInput)
        o.output = Shapes::ShapeRef.new(shape: VerifyMacOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: VerificationFailedException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:verify_pin_data, Seahorse::Model::Operation.new.tap do |o|
        o.name = "VerifyPinData"
        o.http_method = "POST"
        o.http_request_uri = "/pindata/verify"
        o.input = Shapes::ShapeRef.new(shape: VerifyPinDataInput)
        o.output = Shapes::ShapeRef.new(shape: VerifyPinDataOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: VerificationFailedException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
