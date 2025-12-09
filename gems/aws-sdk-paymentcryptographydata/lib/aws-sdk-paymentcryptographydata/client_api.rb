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
    AmexAttributes = Shapes::StructureShape.new(name: 'AmexAttributes')
    AmexCardSecurityCodeVersion1 = Shapes::StructureShape.new(name: 'AmexCardSecurityCodeVersion1')
    AmexCardSecurityCodeVersion2 = Shapes::StructureShape.new(name: 'AmexCardSecurityCodeVersion2')
    ApplicationCryptogramType = Shapes::StringShape.new(name: 'ApplicationCryptogramType')
    AsymmetricEncryptionAttributes = Shapes::StructureShape.new(name: 'AsymmetricEncryptionAttributes')
    AuthRequestCryptogramType = Shapes::StringShape.new(name: 'AuthRequestCryptogramType')
    AuthResponseValueType = Shapes::StringShape.new(name: 'AuthResponseValueType')
    CardExpiryDateType = Shapes::StringShape.new(name: 'CardExpiryDateType')
    CardGenerationAttributes = Shapes::UnionShape.new(name: 'CardGenerationAttributes')
    CardHolderVerificationValue = Shapes::StructureShape.new(name: 'CardHolderVerificationValue')
    CardVerificationAttributes = Shapes::UnionShape.new(name: 'CardVerificationAttributes')
    CardVerificationValue1 = Shapes::StructureShape.new(name: 'CardVerificationValue1')
    CardVerificationValue2 = Shapes::StructureShape.new(name: 'CardVerificationValue2')
    CertificateType = Shapes::StringShape.new(name: 'CertificateType')
    CipherTextType = Shapes::StringShape.new(name: 'CipherTextType')
    CommandMessageDataType = Shapes::StringShape.new(name: 'CommandMessageDataType')
    CryptogramAuthResponse = Shapes::UnionShape.new(name: 'CryptogramAuthResponse')
    CryptogramVerificationArpcMethod1 = Shapes::StructureShape.new(name: 'CryptogramVerificationArpcMethod1')
    CryptogramVerificationArpcMethod2 = Shapes::StructureShape.new(name: 'CryptogramVerificationArpcMethod2')
    CurrentPinAttributes = Shapes::StructureShape.new(name: 'CurrentPinAttributes')
    DecimalizationTableType = Shapes::StringShape.new(name: 'DecimalizationTableType')
    DecryptDataInput = Shapes::StructureShape.new(name: 'DecryptDataInput')
    DecryptDataOutput = Shapes::StructureShape.new(name: 'DecryptDataOutput')
    DerivationMethodAttributes = Shapes::UnionShape.new(name: 'DerivationMethodAttributes')
    DiffieHellmanDerivationData = Shapes::UnionShape.new(name: 'DiffieHellmanDerivationData')
    DiscoverDynamicCardVerificationCode = Shapes::StructureShape.new(name: 'DiscoverDynamicCardVerificationCode')
    DukptAttributes = Shapes::StructureShape.new(name: 'DukptAttributes')
    DukptDerivationAttributes = Shapes::StructureShape.new(name: 'DukptDerivationAttributes')
    DukptDerivationType = Shapes::StringShape.new(name: 'DukptDerivationType')
    DukptEncryptionAttributes = Shapes::StructureShape.new(name: 'DukptEncryptionAttributes')
    DukptEncryptionMode = Shapes::StringShape.new(name: 'DukptEncryptionMode')
    DukptKeyVariant = Shapes::StringShape.new(name: 'DukptKeyVariant')
    DynamicCardVerificationCode = Shapes::StructureShape.new(name: 'DynamicCardVerificationCode')
    DynamicCardVerificationValue = Shapes::StructureShape.new(name: 'DynamicCardVerificationValue')
    EcdhDerivationAttributes = Shapes::StructureShape.new(name: 'EcdhDerivationAttributes')
    Emv2000Attributes = Shapes::StructureShape.new(name: 'Emv2000Attributes')
    EmvCommonAttributes = Shapes::StructureShape.new(name: 'EmvCommonAttributes')
    EmvEncryptionAttributes = Shapes::StructureShape.new(name: 'EmvEncryptionAttributes')
    EmvEncryptionMode = Shapes::StringShape.new(name: 'EmvEncryptionMode')
    EmvMajorKeyDerivationMode = Shapes::StringShape.new(name: 'EmvMajorKeyDerivationMode')
    EncryptDataInput = Shapes::StructureShape.new(name: 'EncryptDataInput')
    EncryptDataOutput = Shapes::StructureShape.new(name: 'EncryptDataOutput')
    EncryptedPinBlockType = Shapes::StringShape.new(name: 'EncryptedPinBlockType')
    EncryptionDecryptionAttributes = Shapes::UnionShape.new(name: 'EncryptionDecryptionAttributes')
    EncryptionMode = Shapes::StringShape.new(name: 'EncryptionMode')
    GenerateCardValidationDataInput = Shapes::StructureShape.new(name: 'GenerateCardValidationDataInput')
    GenerateCardValidationDataOutput = Shapes::StructureShape.new(name: 'GenerateCardValidationDataOutput')
    GenerateMacEmvPinChangeInput = Shapes::StructureShape.new(name: 'GenerateMacEmvPinChangeInput')
    GenerateMacEmvPinChangeOutput = Shapes::StructureShape.new(name: 'GenerateMacEmvPinChangeOutput')
    GenerateMacInput = Shapes::StructureShape.new(name: 'GenerateMacInput')
    GenerateMacOutput = Shapes::StructureShape.new(name: 'GenerateMacOutput')
    GeneratePinDataInput = Shapes::StructureShape.new(name: 'GeneratePinDataInput')
    GeneratePinDataOutput = Shapes::StructureShape.new(name: 'GeneratePinDataOutput')
    HexEvenLengthBetween16And32 = Shapes::StringShape.new(name: 'HexEvenLengthBetween16And32')
    HexLength16Or20Or24 = Shapes::StringShape.new(name: 'HexLength16Or20Or24')
    HexLengthBetween2And4 = Shapes::StringShape.new(name: 'HexLengthBetween2And4')
    HexLengthBetween2And8 = Shapes::StringShape.new(name: 'HexLengthBetween2And8')
    HexLengthEquals1 = Shapes::StringShape.new(name: 'HexLengthEquals1')
    HexLengthEquals4 = Shapes::StringShape.new(name: 'HexLengthEquals4')
    HexLengthEquals8 = Shapes::StringShape.new(name: 'HexLengthEquals8')
    Ibm3624NaturalPin = Shapes::StructureShape.new(name: 'Ibm3624NaturalPin')
    Ibm3624PinFromOffset = Shapes::StructureShape.new(name: 'Ibm3624PinFromOffset')
    Ibm3624PinOffset = Shapes::StructureShape.new(name: 'Ibm3624PinOffset')
    Ibm3624PinVerification = Shapes::StructureShape.new(name: 'Ibm3624PinVerification')
    Ibm3624RandomPin = Shapes::StructureShape.new(name: 'Ibm3624RandomPin')
    IncomingDiffieHellmanTr31KeyBlock = Shapes::StructureShape.new(name: 'IncomingDiffieHellmanTr31KeyBlock')
    IncomingKeyMaterial = Shapes::UnionShape.new(name: 'IncomingKeyMaterial')
    InitializationVectorType = Shapes::StringShape.new(name: 'InitializationVectorType')
    IntegerRangeBetween0And6 = Shapes::IntegerShape.new(name: 'IntegerRangeBetween0And6')
    IntegerRangeBetween3And5Type = Shapes::IntegerShape.new(name: 'IntegerRangeBetween3And5Type')
    IntegerRangeBetween4And12 = Shapes::IntegerShape.new(name: 'IntegerRangeBetween4And12')
    IntegerRangeBetween4And16 = Shapes::IntegerShape.new(name: 'IntegerRangeBetween4And16')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    KeyArn = Shapes::StringShape.new(name: 'KeyArn')
    KeyArnOrKeyAliasType = Shapes::StringShape.new(name: 'KeyArnOrKeyAliasType')
    KeyCheckValue = Shapes::StringShape.new(name: 'KeyCheckValue')
    KeyCheckValueAlgorithm = Shapes::StringShape.new(name: 'KeyCheckValueAlgorithm')
    KeyDerivationFunction = Shapes::StringShape.new(name: 'KeyDerivationFunction')
    KeyDerivationHashAlgorithm = Shapes::StringShape.new(name: 'KeyDerivationHashAlgorithm')
    KeyMaterial = Shapes::StringShape.new(name: 'KeyMaterial')
    MacAlgorithm = Shapes::StringShape.new(name: 'MacAlgorithm')
    MacAlgorithmDukpt = Shapes::StructureShape.new(name: 'MacAlgorithmDukpt')
    MacAlgorithmEmv = Shapes::StructureShape.new(name: 'MacAlgorithmEmv')
    MacAttributes = Shapes::UnionShape.new(name: 'MacAttributes')
    MacOutputType = Shapes::StringShape.new(name: 'MacOutputType')
    MacType = Shapes::StringShape.new(name: 'MacType')
    MajorKeyDerivationMode = Shapes::StringShape.new(name: 'MajorKeyDerivationMode')
    MasterCardAttributes = Shapes::StructureShape.new(name: 'MasterCardAttributes')
    MessageDataType = Shapes::StringShape.new(name: 'MessageDataType')
    NumberLengthEquals2 = Shapes::StringShape.new(name: 'NumberLengthEquals2')
    OutgoingKeyMaterial = Shapes::UnionShape.new(name: 'OutgoingKeyMaterial')
    OutgoingTr31KeyBlock = Shapes::StructureShape.new(name: 'OutgoingTr31KeyBlock')
    PaddingType = Shapes::StringShape.new(name: 'PaddingType')
    PinBlockFormatForEmvPinChange = Shapes::StringShape.new(name: 'PinBlockFormatForEmvPinChange')
    PinBlockFormatForPinData = Shapes::StringShape.new(name: 'PinBlockFormatForPinData')
    PinBlockLengthEquals16 = Shapes::StringShape.new(name: 'PinBlockLengthEquals16')
    PinBlockLengthPosition = Shapes::StringShape.new(name: 'PinBlockLengthPosition')
    PinBlockPaddingType = Shapes::StringShape.new(name: 'PinBlockPaddingType')
    PinChangeMacOutputType = Shapes::StringShape.new(name: 'PinChangeMacOutputType')
    PinData = Shapes::UnionShape.new(name: 'PinData')
    PinGenerationAttributes = Shapes::UnionShape.new(name: 'PinGenerationAttributes')
    PinOffsetType = Shapes::StringShape.new(name: 'PinOffsetType')
    PinValidationDataType = Shapes::StringShape.new(name: 'PinValidationDataType')
    PinVerificationAttributes = Shapes::UnionShape.new(name: 'PinVerificationAttributes')
    PlainTextOutputType = Shapes::StringShape.new(name: 'PlainTextOutputType')
    PlainTextType = Shapes::StringShape.new(name: 'PlainTextType')
    PrimaryAccountNumberType = Shapes::StringShape.new(name: 'PrimaryAccountNumberType')
    ProprietaryAuthenticationDataType = Shapes::StringShape.new(name: 'ProprietaryAuthenticationDataType')
    ReEncryptDataInput = Shapes::StructureShape.new(name: 'ReEncryptDataInput')
    ReEncryptDataOutput = Shapes::StructureShape.new(name: 'ReEncryptDataOutput')
    ReEncryptionAttributes = Shapes::UnionShape.new(name: 'ReEncryptionAttributes')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ServiceCodeType = Shapes::StringShape.new(name: 'ServiceCodeType')
    SessionDerivationDataType = Shapes::StringShape.new(name: 'SessionDerivationDataType')
    SessionKeyAmex = Shapes::StructureShape.new(name: 'SessionKeyAmex')
    SessionKeyDerivation = Shapes::UnionShape.new(name: 'SessionKeyDerivation')
    SessionKeyDerivationMode = Shapes::StringShape.new(name: 'SessionKeyDerivationMode')
    SessionKeyDerivationValue = Shapes::UnionShape.new(name: 'SessionKeyDerivationValue')
    SessionKeyEmv2000 = Shapes::StructureShape.new(name: 'SessionKeyEmv2000')
    SessionKeyEmvCommon = Shapes::StructureShape.new(name: 'SessionKeyEmvCommon')
    SessionKeyMastercard = Shapes::StructureShape.new(name: 'SessionKeyMastercard')
    SessionKeyVisa = Shapes::StructureShape.new(name: 'SessionKeyVisa')
    SharedInformation = Shapes::StringShape.new(name: 'SharedInformation')
    String = Shapes::StringShape.new(name: 'String')
    SymmetricEncryptionAttributes = Shapes::StructureShape.new(name: 'SymmetricEncryptionAttributes')
    SymmetricKeyAlgorithm = Shapes::StringShape.new(name: 'SymmetricKeyAlgorithm')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Tr31WrappedKeyBlock = Shapes::StringShape.new(name: 'Tr31WrappedKeyBlock')
    TrackDataType = Shapes::StringShape.new(name: 'TrackDataType')
    TransactionDataType = Shapes::StringShape.new(name: 'TransactionDataType')
    TranslateKeyMaterialInput = Shapes::StructureShape.new(name: 'TranslateKeyMaterialInput')
    TranslateKeyMaterialOutput = Shapes::StructureShape.new(name: 'TranslateKeyMaterialOutput')
    TranslatePinDataInput = Shapes::StructureShape.new(name: 'TranslatePinDataInput')
    TranslatePinDataOutput = Shapes::StructureShape.new(name: 'TranslatePinDataOutput')
    TranslationIsoFormats = Shapes::UnionShape.new(name: 'TranslationIsoFormats')
    TranslationPinDataIsoFormat034 = Shapes::StructureShape.new(name: 'TranslationPinDataIsoFormat034')
    TranslationPinDataIsoFormat1 = Shapes::StructureShape.new(name: 'TranslationPinDataIsoFormat1')
    ValidationDataType = Shapes::StringShape.new(name: 'ValidationDataType')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    VerificationFailedException = Shapes::StructureShape.new(name: 'VerificationFailedException')
    VerificationFailedReason = Shapes::StringShape.new(name: 'VerificationFailedReason')
    VerificationValueType = Shapes::StringShape.new(name: 'VerificationValueType')
    VerifyAuthRequestCryptogramInput = Shapes::StructureShape.new(name: 'VerifyAuthRequestCryptogramInput')
    VerifyAuthRequestCryptogramOutput = Shapes::StructureShape.new(name: 'VerifyAuthRequestCryptogramOutput')
    VerifyCardValidationDataInput = Shapes::StructureShape.new(name: 'VerifyCardValidationDataInput')
    VerifyCardValidationDataOutput = Shapes::StructureShape.new(name: 'VerifyCardValidationDataOutput')
    VerifyMacInput = Shapes::StructureShape.new(name: 'VerifyMacInput')
    VerifyMacOutput = Shapes::StructureShape.new(name: 'VerifyMacOutput')
    VerifyPinDataInput = Shapes::StructureShape.new(name: 'VerifyPinDataInput')
    VerifyPinDataOutput = Shapes::StructureShape.new(name: 'VerifyPinDataOutput')
    VisaAmexDerivationOutputs = Shapes::StructureShape.new(name: 'VisaAmexDerivationOutputs')
    VisaAttributes = Shapes::StructureShape.new(name: 'VisaAttributes')
    VisaPin = Shapes::StructureShape.new(name: 'VisaPin')
    VisaPinVerification = Shapes::StructureShape.new(name: 'VisaPinVerification')
    VisaPinVerificationValue = Shapes::StructureShape.new(name: 'VisaPinVerificationValue')
    WrappedKey = Shapes::StructureShape.new(name: 'WrappedKey')
    WrappedKeyMaterial = Shapes::UnionShape.new(name: 'WrappedKeyMaterial')
    WrappedKeyMaterialFormat = Shapes::StringShape.new(name: 'WrappedKeyMaterialFormat')
    WrappedWorkingKey = Shapes::StructureShape.new(name: 'WrappedWorkingKey')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AmexAttributes.add_member(:major_key_derivation_mode, Shapes::ShapeRef.new(shape: MajorKeyDerivationMode, required: true, location_name: "MajorKeyDerivationMode"))
    AmexAttributes.add_member(:primary_account_number, Shapes::ShapeRef.new(shape: PrimaryAccountNumberType, required: true, location_name: "PrimaryAccountNumber"))
    AmexAttributes.add_member(:pan_sequence_number, Shapes::ShapeRef.new(shape: NumberLengthEquals2, required: true, location_name: "PanSequenceNumber"))
    AmexAttributes.add_member(:application_transaction_counter, Shapes::ShapeRef.new(shape: HexLengthEquals4, required: true, location_name: "ApplicationTransactionCounter"))
    AmexAttributes.add_member(:authorization_request_key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "AuthorizationRequestKeyIdentifier"))
    AmexAttributes.add_member(:current_pin_attributes, Shapes::ShapeRef.new(shape: CurrentPinAttributes, location_name: "CurrentPinAttributes"))
    AmexAttributes.struct_class = Types::AmexAttributes

    AmexCardSecurityCodeVersion1.add_member(:card_expiry_date, Shapes::ShapeRef.new(shape: CardExpiryDateType, required: true, location_name: "CardExpiryDate"))
    AmexCardSecurityCodeVersion1.struct_class = Types::AmexCardSecurityCodeVersion1

    AmexCardSecurityCodeVersion2.add_member(:card_expiry_date, Shapes::ShapeRef.new(shape: CardExpiryDateType, required: true, location_name: "CardExpiryDate"))
    AmexCardSecurityCodeVersion2.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCodeType, required: true, location_name: "ServiceCode"))
    AmexCardSecurityCodeVersion2.struct_class = Types::AmexCardSecurityCodeVersion2

    AsymmetricEncryptionAttributes.add_member(:padding_type, Shapes::ShapeRef.new(shape: PaddingType, location_name: "PaddingType"))
    AsymmetricEncryptionAttributes.struct_class = Types::AsymmetricEncryptionAttributes

    CardGenerationAttributes.add_member(:amex_card_security_code_version_1, Shapes::ShapeRef.new(shape: AmexCardSecurityCodeVersion1, location_name: "AmexCardSecurityCodeVersion1"))
    CardGenerationAttributes.add_member(:amex_card_security_code_version_2, Shapes::ShapeRef.new(shape: AmexCardSecurityCodeVersion2, location_name: "AmexCardSecurityCodeVersion2"))
    CardGenerationAttributes.add_member(:card_verification_value_1, Shapes::ShapeRef.new(shape: CardVerificationValue1, location_name: "CardVerificationValue1"))
    CardGenerationAttributes.add_member(:card_verification_value_2, Shapes::ShapeRef.new(shape: CardVerificationValue2, location_name: "CardVerificationValue2"))
    CardGenerationAttributes.add_member(:card_holder_verification_value, Shapes::ShapeRef.new(shape: CardHolderVerificationValue, location_name: "CardHolderVerificationValue"))
    CardGenerationAttributes.add_member(:dynamic_card_verification_code, Shapes::ShapeRef.new(shape: DynamicCardVerificationCode, location_name: "DynamicCardVerificationCode"))
    CardGenerationAttributes.add_member(:dynamic_card_verification_value, Shapes::ShapeRef.new(shape: DynamicCardVerificationValue, location_name: "DynamicCardVerificationValue"))
    CardGenerationAttributes.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CardGenerationAttributes.add_member_subclass(:amex_card_security_code_version_1, Types::CardGenerationAttributes::AmexCardSecurityCodeVersion1)
    CardGenerationAttributes.add_member_subclass(:amex_card_security_code_version_2, Types::CardGenerationAttributes::AmexCardSecurityCodeVersion2)
    CardGenerationAttributes.add_member_subclass(:card_verification_value_1, Types::CardGenerationAttributes::CardVerificationValue1)
    CardGenerationAttributes.add_member_subclass(:card_verification_value_2, Types::CardGenerationAttributes::CardVerificationValue2)
    CardGenerationAttributes.add_member_subclass(:card_holder_verification_value, Types::CardGenerationAttributes::CardHolderVerificationValue)
    CardGenerationAttributes.add_member_subclass(:dynamic_card_verification_code, Types::CardGenerationAttributes::DynamicCardVerificationCode)
    CardGenerationAttributes.add_member_subclass(:dynamic_card_verification_value, Types::CardGenerationAttributes::DynamicCardVerificationValue)
    CardGenerationAttributes.add_member_subclass(:unknown, Types::CardGenerationAttributes::Unknown)
    CardGenerationAttributes.struct_class = Types::CardGenerationAttributes

    CardHolderVerificationValue.add_member(:unpredictable_number, Shapes::ShapeRef.new(shape: HexLengthBetween2And8, required: true, location_name: "UnpredictableNumber"))
    CardHolderVerificationValue.add_member(:pan_sequence_number, Shapes::ShapeRef.new(shape: NumberLengthEquals2, required: true, location_name: "PanSequenceNumber"))
    CardHolderVerificationValue.add_member(:application_transaction_counter, Shapes::ShapeRef.new(shape: HexLengthBetween2And4, required: true, location_name: "ApplicationTransactionCounter"))
    CardHolderVerificationValue.struct_class = Types::CardHolderVerificationValue

    CardVerificationAttributes.add_member(:amex_card_security_code_version_1, Shapes::ShapeRef.new(shape: AmexCardSecurityCodeVersion1, location_name: "AmexCardSecurityCodeVersion1"))
    CardVerificationAttributes.add_member(:amex_card_security_code_version_2, Shapes::ShapeRef.new(shape: AmexCardSecurityCodeVersion2, location_name: "AmexCardSecurityCodeVersion2"))
    CardVerificationAttributes.add_member(:card_verification_value_1, Shapes::ShapeRef.new(shape: CardVerificationValue1, location_name: "CardVerificationValue1"))
    CardVerificationAttributes.add_member(:card_verification_value_2, Shapes::ShapeRef.new(shape: CardVerificationValue2, location_name: "CardVerificationValue2"))
    CardVerificationAttributes.add_member(:card_holder_verification_value, Shapes::ShapeRef.new(shape: CardHolderVerificationValue, location_name: "CardHolderVerificationValue"))
    CardVerificationAttributes.add_member(:dynamic_card_verification_code, Shapes::ShapeRef.new(shape: DynamicCardVerificationCode, location_name: "DynamicCardVerificationCode"))
    CardVerificationAttributes.add_member(:dynamic_card_verification_value, Shapes::ShapeRef.new(shape: DynamicCardVerificationValue, location_name: "DynamicCardVerificationValue"))
    CardVerificationAttributes.add_member(:discover_dynamic_card_verification_code, Shapes::ShapeRef.new(shape: DiscoverDynamicCardVerificationCode, location_name: "DiscoverDynamicCardVerificationCode"))
    CardVerificationAttributes.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CardVerificationAttributes.add_member_subclass(:amex_card_security_code_version_1, Types::CardVerificationAttributes::AmexCardSecurityCodeVersion1)
    CardVerificationAttributes.add_member_subclass(:amex_card_security_code_version_2, Types::CardVerificationAttributes::AmexCardSecurityCodeVersion2)
    CardVerificationAttributes.add_member_subclass(:card_verification_value_1, Types::CardVerificationAttributes::CardVerificationValue1)
    CardVerificationAttributes.add_member_subclass(:card_verification_value_2, Types::CardVerificationAttributes::CardVerificationValue2)
    CardVerificationAttributes.add_member_subclass(:card_holder_verification_value, Types::CardVerificationAttributes::CardHolderVerificationValue)
    CardVerificationAttributes.add_member_subclass(:dynamic_card_verification_code, Types::CardVerificationAttributes::DynamicCardVerificationCode)
    CardVerificationAttributes.add_member_subclass(:dynamic_card_verification_value, Types::CardVerificationAttributes::DynamicCardVerificationValue)
    CardVerificationAttributes.add_member_subclass(:discover_dynamic_card_verification_code, Types::CardVerificationAttributes::DiscoverDynamicCardVerificationCode)
    CardVerificationAttributes.add_member_subclass(:unknown, Types::CardVerificationAttributes::Unknown)
    CardVerificationAttributes.struct_class = Types::CardVerificationAttributes

    CardVerificationValue1.add_member(:card_expiry_date, Shapes::ShapeRef.new(shape: CardExpiryDateType, required: true, location_name: "CardExpiryDate"))
    CardVerificationValue1.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCodeType, required: true, location_name: "ServiceCode"))
    CardVerificationValue1.struct_class = Types::CardVerificationValue1

    CardVerificationValue2.add_member(:card_expiry_date, Shapes::ShapeRef.new(shape: CardExpiryDateType, required: true, location_name: "CardExpiryDate"))
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
    CryptogramVerificationArpcMethod2.add_member(:proprietary_authentication_data, Shapes::ShapeRef.new(shape: ProprietaryAuthenticationDataType, location_name: "ProprietaryAuthenticationData"))
    CryptogramVerificationArpcMethod2.struct_class = Types::CryptogramVerificationArpcMethod2

    CurrentPinAttributes.add_member(:current_pin_pek_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "CurrentPinPekIdentifier"))
    CurrentPinAttributes.add_member(:current_encrypted_pin_block, Shapes::ShapeRef.new(shape: PinBlockLengthEquals16, required: true, location_name: "CurrentEncryptedPinBlock"))
    CurrentPinAttributes.struct_class = Types::CurrentPinAttributes

    DecryptDataInput.add_member(:key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location: "uri", location_name: "KeyIdentifier"))
    DecryptDataInput.add_member(:cipher_text, Shapes::ShapeRef.new(shape: CipherTextType, required: true, location_name: "CipherText"))
    DecryptDataInput.add_member(:decryption_attributes, Shapes::ShapeRef.new(shape: EncryptionDecryptionAttributes, required: true, location_name: "DecryptionAttributes"))
    DecryptDataInput.add_member(:wrapped_key, Shapes::ShapeRef.new(shape: WrappedKey, location_name: "WrappedKey"))
    DecryptDataInput.struct_class = Types::DecryptDataInput

    DecryptDataOutput.add_member(:key_arn, Shapes::ShapeRef.new(shape: KeyArn, required: true, location_name: "KeyArn"))
    DecryptDataOutput.add_member(:key_check_value, Shapes::ShapeRef.new(shape: KeyCheckValue, required: true, location_name: "KeyCheckValue"))
    DecryptDataOutput.add_member(:plain_text, Shapes::ShapeRef.new(shape: PlainTextOutputType, required: true, location_name: "PlainText"))
    DecryptDataOutput.struct_class = Types::DecryptDataOutput

    DerivationMethodAttributes.add_member(:emv_common, Shapes::ShapeRef.new(shape: EmvCommonAttributes, location_name: "EmvCommon"))
    DerivationMethodAttributes.add_member(:amex, Shapes::ShapeRef.new(shape: AmexAttributes, location_name: "Amex"))
    DerivationMethodAttributes.add_member(:visa, Shapes::ShapeRef.new(shape: VisaAttributes, location_name: "Visa"))
    DerivationMethodAttributes.add_member(:emv_2000, Shapes::ShapeRef.new(shape: Emv2000Attributes, location_name: "Emv2000"))
    DerivationMethodAttributes.add_member(:mastercard, Shapes::ShapeRef.new(shape: MasterCardAttributes, location_name: "Mastercard"))
    DerivationMethodAttributes.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    DerivationMethodAttributes.add_member_subclass(:emv_common, Types::DerivationMethodAttributes::EmvCommon)
    DerivationMethodAttributes.add_member_subclass(:amex, Types::DerivationMethodAttributes::Amex)
    DerivationMethodAttributes.add_member_subclass(:visa, Types::DerivationMethodAttributes::Visa)
    DerivationMethodAttributes.add_member_subclass(:emv_2000, Types::DerivationMethodAttributes::Emv2000)
    DerivationMethodAttributes.add_member_subclass(:mastercard, Types::DerivationMethodAttributes::Mastercard)
    DerivationMethodAttributes.add_member_subclass(:unknown, Types::DerivationMethodAttributes::Unknown)
    DerivationMethodAttributes.struct_class = Types::DerivationMethodAttributes

    DiffieHellmanDerivationData.add_member(:shared_information, Shapes::ShapeRef.new(shape: SharedInformation, location_name: "SharedInformation"))
    DiffieHellmanDerivationData.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    DiffieHellmanDerivationData.add_member_subclass(:shared_information, Types::DiffieHellmanDerivationData::SharedInformation)
    DiffieHellmanDerivationData.add_member_subclass(:unknown, Types::DiffieHellmanDerivationData::Unknown)
    DiffieHellmanDerivationData.struct_class = Types::DiffieHellmanDerivationData

    DiscoverDynamicCardVerificationCode.add_member(:card_expiry_date, Shapes::ShapeRef.new(shape: CardExpiryDateType, required: true, location_name: "CardExpiryDate"))
    DiscoverDynamicCardVerificationCode.add_member(:unpredictable_number, Shapes::ShapeRef.new(shape: HexLengthBetween2And8, required: true, location_name: "UnpredictableNumber"))
    DiscoverDynamicCardVerificationCode.add_member(:application_transaction_counter, Shapes::ShapeRef.new(shape: HexLengthBetween2And4, required: true, location_name: "ApplicationTransactionCounter"))
    DiscoverDynamicCardVerificationCode.struct_class = Types::DiscoverDynamicCardVerificationCode

    DukptAttributes.add_member(:key_serial_number, Shapes::ShapeRef.new(shape: HexLength16Or20Or24, required: true, location_name: "KeySerialNumber"))
    DukptAttributes.add_member(:dukpt_derivation_type, Shapes::ShapeRef.new(shape: DukptDerivationType, required: true, location_name: "DukptDerivationType"))
    DukptAttributes.struct_class = Types::DukptAttributes

    DukptDerivationAttributes.add_member(:key_serial_number, Shapes::ShapeRef.new(shape: HexLength16Or20Or24, required: true, location_name: "KeySerialNumber"))
    DukptDerivationAttributes.add_member(:dukpt_key_derivation_type, Shapes::ShapeRef.new(shape: DukptDerivationType, location_name: "DukptKeyDerivationType"))
    DukptDerivationAttributes.add_member(:dukpt_key_variant, Shapes::ShapeRef.new(shape: DukptKeyVariant, location_name: "DukptKeyVariant"))
    DukptDerivationAttributes.struct_class = Types::DukptDerivationAttributes

    DukptEncryptionAttributes.add_member(:key_serial_number, Shapes::ShapeRef.new(shape: HexLength16Or20Or24, required: true, location_name: "KeySerialNumber"))
    DukptEncryptionAttributes.add_member(:mode, Shapes::ShapeRef.new(shape: DukptEncryptionMode, location_name: "Mode"))
    DukptEncryptionAttributes.add_member(:dukpt_key_derivation_type, Shapes::ShapeRef.new(shape: DukptDerivationType, location_name: "DukptKeyDerivationType"))
    DukptEncryptionAttributes.add_member(:dukpt_key_variant, Shapes::ShapeRef.new(shape: DukptKeyVariant, location_name: "DukptKeyVariant"))
    DukptEncryptionAttributes.add_member(:initialization_vector, Shapes::ShapeRef.new(shape: InitializationVectorType, location_name: "InitializationVector"))
    DukptEncryptionAttributes.struct_class = Types::DukptEncryptionAttributes

    DynamicCardVerificationCode.add_member(:unpredictable_number, Shapes::ShapeRef.new(shape: HexLengthBetween2And8, required: true, location_name: "UnpredictableNumber"))
    DynamicCardVerificationCode.add_member(:pan_sequence_number, Shapes::ShapeRef.new(shape: NumberLengthEquals2, required: true, location_name: "PanSequenceNumber"))
    DynamicCardVerificationCode.add_member(:application_transaction_counter, Shapes::ShapeRef.new(shape: HexLengthBetween2And4, required: true, location_name: "ApplicationTransactionCounter"))
    DynamicCardVerificationCode.add_member(:track_data, Shapes::ShapeRef.new(shape: TrackDataType, required: true, location_name: "TrackData"))
    DynamicCardVerificationCode.struct_class = Types::DynamicCardVerificationCode

    DynamicCardVerificationValue.add_member(:pan_sequence_number, Shapes::ShapeRef.new(shape: NumberLengthEquals2, required: true, location_name: "PanSequenceNumber"))
    DynamicCardVerificationValue.add_member(:card_expiry_date, Shapes::ShapeRef.new(shape: CardExpiryDateType, required: true, location_name: "CardExpiryDate"))
    DynamicCardVerificationValue.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCodeType, required: true, location_name: "ServiceCode"))
    DynamicCardVerificationValue.add_member(:application_transaction_counter, Shapes::ShapeRef.new(shape: HexLengthBetween2And4, required: true, location_name: "ApplicationTransactionCounter"))
    DynamicCardVerificationValue.struct_class = Types::DynamicCardVerificationValue

    EcdhDerivationAttributes.add_member(:certificate_authority_public_key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "CertificateAuthorityPublicKeyIdentifier"))
    EcdhDerivationAttributes.add_member(:public_key_certificate, Shapes::ShapeRef.new(shape: CertificateType, required: true, location_name: "PublicKeyCertificate"))
    EcdhDerivationAttributes.add_member(:key_algorithm, Shapes::ShapeRef.new(shape: SymmetricKeyAlgorithm, required: true, location_name: "KeyAlgorithm"))
    EcdhDerivationAttributes.add_member(:key_derivation_function, Shapes::ShapeRef.new(shape: KeyDerivationFunction, required: true, location_name: "KeyDerivationFunction"))
    EcdhDerivationAttributes.add_member(:key_derivation_hash_algorithm, Shapes::ShapeRef.new(shape: KeyDerivationHashAlgorithm, required: true, location_name: "KeyDerivationHashAlgorithm"))
    EcdhDerivationAttributes.add_member(:shared_information, Shapes::ShapeRef.new(shape: SharedInformation, required: true, location_name: "SharedInformation"))
    EcdhDerivationAttributes.struct_class = Types::EcdhDerivationAttributes

    Emv2000Attributes.add_member(:major_key_derivation_mode, Shapes::ShapeRef.new(shape: MajorKeyDerivationMode, required: true, location_name: "MajorKeyDerivationMode"))
    Emv2000Attributes.add_member(:primary_account_number, Shapes::ShapeRef.new(shape: PrimaryAccountNumberType, required: true, location_name: "PrimaryAccountNumber"))
    Emv2000Attributes.add_member(:pan_sequence_number, Shapes::ShapeRef.new(shape: NumberLengthEquals2, required: true, location_name: "PanSequenceNumber"))
    Emv2000Attributes.add_member(:application_transaction_counter, Shapes::ShapeRef.new(shape: HexLengthEquals4, required: true, location_name: "ApplicationTransactionCounter"))
    Emv2000Attributes.struct_class = Types::Emv2000Attributes

    EmvCommonAttributes.add_member(:major_key_derivation_mode, Shapes::ShapeRef.new(shape: MajorKeyDerivationMode, required: true, location_name: "MajorKeyDerivationMode"))
    EmvCommonAttributes.add_member(:primary_account_number, Shapes::ShapeRef.new(shape: PrimaryAccountNumberType, required: true, location_name: "PrimaryAccountNumber"))
    EmvCommonAttributes.add_member(:pan_sequence_number, Shapes::ShapeRef.new(shape: NumberLengthEquals2, required: true, location_name: "PanSequenceNumber"))
    EmvCommonAttributes.add_member(:application_cryptogram, Shapes::ShapeRef.new(shape: ApplicationCryptogramType, required: true, location_name: "ApplicationCryptogram"))
    EmvCommonAttributes.add_member(:mode, Shapes::ShapeRef.new(shape: EmvEncryptionMode, required: true, location_name: "Mode"))
    EmvCommonAttributes.add_member(:pin_block_padding_type, Shapes::ShapeRef.new(shape: PinBlockPaddingType, required: true, location_name: "PinBlockPaddingType"))
    EmvCommonAttributes.add_member(:pin_block_length_position, Shapes::ShapeRef.new(shape: PinBlockLengthPosition, required: true, location_name: "PinBlockLengthPosition"))
    EmvCommonAttributes.struct_class = Types::EmvCommonAttributes

    EmvEncryptionAttributes.add_member(:major_key_derivation_mode, Shapes::ShapeRef.new(shape: EmvMajorKeyDerivationMode, required: true, location_name: "MajorKeyDerivationMode"))
    EmvEncryptionAttributes.add_member(:primary_account_number, Shapes::ShapeRef.new(shape: PrimaryAccountNumberType, required: true, location_name: "PrimaryAccountNumber"))
    EmvEncryptionAttributes.add_member(:pan_sequence_number, Shapes::ShapeRef.new(shape: NumberLengthEquals2, required: true, location_name: "PanSequenceNumber"))
    EmvEncryptionAttributes.add_member(:session_derivation_data, Shapes::ShapeRef.new(shape: SessionDerivationDataType, required: true, location_name: "SessionDerivationData"))
    EmvEncryptionAttributes.add_member(:mode, Shapes::ShapeRef.new(shape: EmvEncryptionMode, location_name: "Mode"))
    EmvEncryptionAttributes.add_member(:initialization_vector, Shapes::ShapeRef.new(shape: InitializationVectorType, location_name: "InitializationVector"))
    EmvEncryptionAttributes.struct_class = Types::EmvEncryptionAttributes

    EncryptDataInput.add_member(:key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location: "uri", location_name: "KeyIdentifier"))
    EncryptDataInput.add_member(:plain_text, Shapes::ShapeRef.new(shape: PlainTextType, required: true, location_name: "PlainText"))
    EncryptDataInput.add_member(:encryption_attributes, Shapes::ShapeRef.new(shape: EncryptionDecryptionAttributes, required: true, location_name: "EncryptionAttributes"))
    EncryptDataInput.add_member(:wrapped_key, Shapes::ShapeRef.new(shape: WrappedKey, location_name: "WrappedKey"))
    EncryptDataInput.struct_class = Types::EncryptDataInput

    EncryptDataOutput.add_member(:key_arn, Shapes::ShapeRef.new(shape: KeyArn, required: true, location_name: "KeyArn"))
    EncryptDataOutput.add_member(:key_check_value, Shapes::ShapeRef.new(shape: KeyCheckValue, location_name: "KeyCheckValue"))
    EncryptDataOutput.add_member(:cipher_text, Shapes::ShapeRef.new(shape: CipherTextType, required: true, location_name: "CipherText"))
    EncryptDataOutput.struct_class = Types::EncryptDataOutput

    EncryptionDecryptionAttributes.add_member(:symmetric, Shapes::ShapeRef.new(shape: SymmetricEncryptionAttributes, location_name: "Symmetric"))
    EncryptionDecryptionAttributes.add_member(:asymmetric, Shapes::ShapeRef.new(shape: AsymmetricEncryptionAttributes, location_name: "Asymmetric"))
    EncryptionDecryptionAttributes.add_member(:dukpt, Shapes::ShapeRef.new(shape: DukptEncryptionAttributes, location_name: "Dukpt"))
    EncryptionDecryptionAttributes.add_member(:emv, Shapes::ShapeRef.new(shape: EmvEncryptionAttributes, location_name: "Emv"))
    EncryptionDecryptionAttributes.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EncryptionDecryptionAttributes.add_member_subclass(:symmetric, Types::EncryptionDecryptionAttributes::Symmetric)
    EncryptionDecryptionAttributes.add_member_subclass(:asymmetric, Types::EncryptionDecryptionAttributes::Asymmetric)
    EncryptionDecryptionAttributes.add_member_subclass(:dukpt, Types::EncryptionDecryptionAttributes::Dukpt)
    EncryptionDecryptionAttributes.add_member_subclass(:emv, Types::EncryptionDecryptionAttributes::Emv)
    EncryptionDecryptionAttributes.add_member_subclass(:unknown, Types::EncryptionDecryptionAttributes::Unknown)
    EncryptionDecryptionAttributes.struct_class = Types::EncryptionDecryptionAttributes

    GenerateCardValidationDataInput.add_member(:key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "KeyIdentifier"))
    GenerateCardValidationDataInput.add_member(:primary_account_number, Shapes::ShapeRef.new(shape: PrimaryAccountNumberType, required: true, location_name: "PrimaryAccountNumber"))
    GenerateCardValidationDataInput.add_member(:generation_attributes, Shapes::ShapeRef.new(shape: CardGenerationAttributes, required: true, location_name: "GenerationAttributes"))
    GenerateCardValidationDataInput.add_member(:validation_data_length, Shapes::ShapeRef.new(shape: IntegerRangeBetween3And5Type, location_name: "ValidationDataLength"))
    GenerateCardValidationDataInput.struct_class = Types::GenerateCardValidationDataInput

    GenerateCardValidationDataOutput.add_member(:key_arn, Shapes::ShapeRef.new(shape: KeyArn, required: true, location_name: "KeyArn"))
    GenerateCardValidationDataOutput.add_member(:key_check_value, Shapes::ShapeRef.new(shape: KeyCheckValue, required: true, location_name: "KeyCheckValue"))
    GenerateCardValidationDataOutput.add_member(:validation_data, Shapes::ShapeRef.new(shape: ValidationDataType, required: true, location_name: "ValidationData"))
    GenerateCardValidationDataOutput.struct_class = Types::GenerateCardValidationDataOutput

    GenerateMacEmvPinChangeInput.add_member(:new_pin_pek_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "NewPinPekIdentifier"))
    GenerateMacEmvPinChangeInput.add_member(:new_encrypted_pin_block, Shapes::ShapeRef.new(shape: PinBlockLengthEquals16, required: true, location_name: "NewEncryptedPinBlock"))
    GenerateMacEmvPinChangeInput.add_member(:pin_block_format, Shapes::ShapeRef.new(shape: PinBlockFormatForEmvPinChange, required: true, location_name: "PinBlockFormat"))
    GenerateMacEmvPinChangeInput.add_member(:secure_messaging_integrity_key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "SecureMessagingIntegrityKeyIdentifier"))
    GenerateMacEmvPinChangeInput.add_member(:secure_messaging_confidentiality_key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "SecureMessagingConfidentialityKeyIdentifier"))
    GenerateMacEmvPinChangeInput.add_member(:message_data, Shapes::ShapeRef.new(shape: CommandMessageDataType, required: true, location_name: "MessageData"))
    GenerateMacEmvPinChangeInput.add_member(:derivation_method_attributes, Shapes::ShapeRef.new(shape: DerivationMethodAttributes, required: true, location_name: "DerivationMethodAttributes"))
    GenerateMacEmvPinChangeInput.struct_class = Types::GenerateMacEmvPinChangeInput

    GenerateMacEmvPinChangeOutput.add_member(:new_pin_pek_arn, Shapes::ShapeRef.new(shape: KeyArn, required: true, location_name: "NewPinPekArn"))
    GenerateMacEmvPinChangeOutput.add_member(:secure_messaging_integrity_key_arn, Shapes::ShapeRef.new(shape: KeyArn, required: true, location_name: "SecureMessagingIntegrityKeyArn"))
    GenerateMacEmvPinChangeOutput.add_member(:secure_messaging_confidentiality_key_arn, Shapes::ShapeRef.new(shape: KeyArn, required: true, location_name: "SecureMessagingConfidentialityKeyArn"))
    GenerateMacEmvPinChangeOutput.add_member(:mac, Shapes::ShapeRef.new(shape: PinChangeMacOutputType, required: true, location_name: "Mac"))
    GenerateMacEmvPinChangeOutput.add_member(:encrypted_pin_block, Shapes::ShapeRef.new(shape: EncryptedPinBlockType, required: true, location_name: "EncryptedPinBlock"))
    GenerateMacEmvPinChangeOutput.add_member(:new_pin_pek_key_check_value, Shapes::ShapeRef.new(shape: KeyCheckValue, required: true, location_name: "NewPinPekKeyCheckValue"))
    GenerateMacEmvPinChangeOutput.add_member(:secure_messaging_integrity_key_check_value, Shapes::ShapeRef.new(shape: KeyCheckValue, required: true, location_name: "SecureMessagingIntegrityKeyCheckValue"))
    GenerateMacEmvPinChangeOutput.add_member(:secure_messaging_confidentiality_key_check_value, Shapes::ShapeRef.new(shape: KeyCheckValue, required: true, location_name: "SecureMessagingConfidentialityKeyCheckValue"))
    GenerateMacEmvPinChangeOutput.add_member(:visa_amex_derivation_outputs, Shapes::ShapeRef.new(shape: VisaAmexDerivationOutputs, location_name: "VisaAmexDerivationOutputs"))
    GenerateMacEmvPinChangeOutput.struct_class = Types::GenerateMacEmvPinChangeOutput

    GenerateMacInput.add_member(:key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "KeyIdentifier"))
    GenerateMacInput.add_member(:message_data, Shapes::ShapeRef.new(shape: MessageDataType, required: true, location_name: "MessageData"))
    GenerateMacInput.add_member(:generation_attributes, Shapes::ShapeRef.new(shape: MacAttributes, required: true, location_name: "GenerationAttributes"))
    GenerateMacInput.add_member(:mac_length, Shapes::ShapeRef.new(shape: IntegerRangeBetween4And16, location_name: "MacLength"))
    GenerateMacInput.struct_class = Types::GenerateMacInput

    GenerateMacOutput.add_member(:key_arn, Shapes::ShapeRef.new(shape: KeyArn, required: true, location_name: "KeyArn"))
    GenerateMacOutput.add_member(:key_check_value, Shapes::ShapeRef.new(shape: KeyCheckValue, required: true, location_name: "KeyCheckValue"))
    GenerateMacOutput.add_member(:mac, Shapes::ShapeRef.new(shape: MacOutputType, required: true, location_name: "Mac"))
    GenerateMacOutput.struct_class = Types::GenerateMacOutput

    GeneratePinDataInput.add_member(:generation_key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "GenerationKeyIdentifier"))
    GeneratePinDataInput.add_member(:encryption_key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "EncryptionKeyIdentifier"))
    GeneratePinDataInput.add_member(:generation_attributes, Shapes::ShapeRef.new(shape: PinGenerationAttributes, required: true, location_name: "GenerationAttributes"))
    GeneratePinDataInput.add_member(:pin_data_length, Shapes::ShapeRef.new(shape: IntegerRangeBetween4And12, location_name: "PinDataLength"))
    GeneratePinDataInput.add_member(:primary_account_number, Shapes::ShapeRef.new(shape: PrimaryAccountNumberType, location_name: "PrimaryAccountNumber"))
    GeneratePinDataInput.add_member(:pin_block_format, Shapes::ShapeRef.new(shape: PinBlockFormatForPinData, required: true, location_name: "PinBlockFormat"))
    GeneratePinDataInput.add_member(:encryption_wrapped_key, Shapes::ShapeRef.new(shape: WrappedKey, location_name: "EncryptionWrappedKey"))
    GeneratePinDataInput.struct_class = Types::GeneratePinDataInput

    GeneratePinDataOutput.add_member(:generation_key_arn, Shapes::ShapeRef.new(shape: KeyArn, required: true, location_name: "GenerationKeyArn"))
    GeneratePinDataOutput.add_member(:generation_key_check_value, Shapes::ShapeRef.new(shape: KeyCheckValue, required: true, location_name: "GenerationKeyCheckValue"))
    GeneratePinDataOutput.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: KeyArn, required: true, location_name: "EncryptionKeyArn"))
    GeneratePinDataOutput.add_member(:encryption_key_check_value, Shapes::ShapeRef.new(shape: KeyCheckValue, required: true, location_name: "EncryptionKeyCheckValue"))
    GeneratePinDataOutput.add_member(:encrypted_pin_block, Shapes::ShapeRef.new(shape: EncryptedPinBlockType, required: true, location_name: "EncryptedPinBlock"))
    GeneratePinDataOutput.add_member(:pin_data, Shapes::ShapeRef.new(shape: PinData, required: true, location_name: "PinData"))
    GeneratePinDataOutput.struct_class = Types::GeneratePinDataOutput

    Ibm3624NaturalPin.add_member(:decimalization_table, Shapes::ShapeRef.new(shape: DecimalizationTableType, required: true, location_name: "DecimalizationTable"))
    Ibm3624NaturalPin.add_member(:pin_validation_data_pad_character, Shapes::ShapeRef.new(shape: HexLengthEquals1, required: true, location_name: "PinValidationDataPadCharacter"))
    Ibm3624NaturalPin.add_member(:pin_validation_data, Shapes::ShapeRef.new(shape: PinValidationDataType, required: true, location_name: "PinValidationData"))
    Ibm3624NaturalPin.struct_class = Types::Ibm3624NaturalPin

    Ibm3624PinFromOffset.add_member(:decimalization_table, Shapes::ShapeRef.new(shape: DecimalizationTableType, required: true, location_name: "DecimalizationTable"))
    Ibm3624PinFromOffset.add_member(:pin_validation_data_pad_character, Shapes::ShapeRef.new(shape: HexLengthEquals1, required: true, location_name: "PinValidationDataPadCharacter"))
    Ibm3624PinFromOffset.add_member(:pin_validation_data, Shapes::ShapeRef.new(shape: PinValidationDataType, required: true, location_name: "PinValidationData"))
    Ibm3624PinFromOffset.add_member(:pin_offset, Shapes::ShapeRef.new(shape: PinOffsetType, required: true, location_name: "PinOffset"))
    Ibm3624PinFromOffset.struct_class = Types::Ibm3624PinFromOffset

    Ibm3624PinOffset.add_member(:encrypted_pin_block, Shapes::ShapeRef.new(shape: EncryptedPinBlockType, required: true, location_name: "EncryptedPinBlock"))
    Ibm3624PinOffset.add_member(:decimalization_table, Shapes::ShapeRef.new(shape: DecimalizationTableType, required: true, location_name: "DecimalizationTable"))
    Ibm3624PinOffset.add_member(:pin_validation_data_pad_character, Shapes::ShapeRef.new(shape: HexLengthEquals1, required: true, location_name: "PinValidationDataPadCharacter"))
    Ibm3624PinOffset.add_member(:pin_validation_data, Shapes::ShapeRef.new(shape: PinValidationDataType, required: true, location_name: "PinValidationData"))
    Ibm3624PinOffset.struct_class = Types::Ibm3624PinOffset

    Ibm3624PinVerification.add_member(:decimalization_table, Shapes::ShapeRef.new(shape: DecimalizationTableType, required: true, location_name: "DecimalizationTable"))
    Ibm3624PinVerification.add_member(:pin_validation_data_pad_character, Shapes::ShapeRef.new(shape: HexLengthEquals1, required: true, location_name: "PinValidationDataPadCharacter"))
    Ibm3624PinVerification.add_member(:pin_validation_data, Shapes::ShapeRef.new(shape: PinValidationDataType, required: true, location_name: "PinValidationData"))
    Ibm3624PinVerification.add_member(:pin_offset, Shapes::ShapeRef.new(shape: PinOffsetType, required: true, location_name: "PinOffset"))
    Ibm3624PinVerification.struct_class = Types::Ibm3624PinVerification

    Ibm3624RandomPin.add_member(:decimalization_table, Shapes::ShapeRef.new(shape: DecimalizationTableType, required: true, location_name: "DecimalizationTable"))
    Ibm3624RandomPin.add_member(:pin_validation_data_pad_character, Shapes::ShapeRef.new(shape: HexLengthEquals1, required: true, location_name: "PinValidationDataPadCharacter"))
    Ibm3624RandomPin.add_member(:pin_validation_data, Shapes::ShapeRef.new(shape: PinValidationDataType, required: true, location_name: "PinValidationData"))
    Ibm3624RandomPin.struct_class = Types::Ibm3624RandomPin

    IncomingDiffieHellmanTr31KeyBlock.add_member(:private_key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "PrivateKeyIdentifier"))
    IncomingDiffieHellmanTr31KeyBlock.add_member(:certificate_authority_public_key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "CertificateAuthorityPublicKeyIdentifier"))
    IncomingDiffieHellmanTr31KeyBlock.add_member(:public_key_certificate, Shapes::ShapeRef.new(shape: CertificateType, required: true, location_name: "PublicKeyCertificate"))
    IncomingDiffieHellmanTr31KeyBlock.add_member(:derive_key_algorithm, Shapes::ShapeRef.new(shape: SymmetricKeyAlgorithm, required: true, location_name: "DeriveKeyAlgorithm"))
    IncomingDiffieHellmanTr31KeyBlock.add_member(:key_derivation_function, Shapes::ShapeRef.new(shape: KeyDerivationFunction, required: true, location_name: "KeyDerivationFunction"))
    IncomingDiffieHellmanTr31KeyBlock.add_member(:key_derivation_hash_algorithm, Shapes::ShapeRef.new(shape: KeyDerivationHashAlgorithm, required: true, location_name: "KeyDerivationHashAlgorithm"))
    IncomingDiffieHellmanTr31KeyBlock.add_member(:derivation_data, Shapes::ShapeRef.new(shape: DiffieHellmanDerivationData, required: true, location_name: "DerivationData"))
    IncomingDiffieHellmanTr31KeyBlock.add_member(:wrapped_key_block, Shapes::ShapeRef.new(shape: Tr31WrappedKeyBlock, required: true, location_name: "WrappedKeyBlock"))
    IncomingDiffieHellmanTr31KeyBlock.struct_class = Types::IncomingDiffieHellmanTr31KeyBlock

    IncomingKeyMaterial.add_member(:diffie_hellman_tr_31_key_block, Shapes::ShapeRef.new(shape: IncomingDiffieHellmanTr31KeyBlock, location_name: "DiffieHellmanTr31KeyBlock"))
    IncomingKeyMaterial.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    IncomingKeyMaterial.add_member_subclass(:diffie_hellman_tr_31_key_block, Types::IncomingKeyMaterial::DiffieHellmanTr31KeyBlock)
    IncomingKeyMaterial.add_member_subclass(:unknown, Types::IncomingKeyMaterial::Unknown)
    IncomingKeyMaterial.struct_class = Types::IncomingKeyMaterial

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    MacAlgorithmDukpt.add_member(:key_serial_number, Shapes::ShapeRef.new(shape: HexLength16Or20Or24, required: true, location_name: "KeySerialNumber"))
    MacAlgorithmDukpt.add_member(:dukpt_key_variant, Shapes::ShapeRef.new(shape: DukptKeyVariant, required: true, location_name: "DukptKeyVariant"))
    MacAlgorithmDukpt.add_member(:dukpt_derivation_type, Shapes::ShapeRef.new(shape: DukptDerivationType, location_name: "DukptDerivationType"))
    MacAlgorithmDukpt.struct_class = Types::MacAlgorithmDukpt

    MacAlgorithmEmv.add_member(:major_key_derivation_mode, Shapes::ShapeRef.new(shape: MajorKeyDerivationMode, required: true, location_name: "MajorKeyDerivationMode"))
    MacAlgorithmEmv.add_member(:primary_account_number, Shapes::ShapeRef.new(shape: PrimaryAccountNumberType, required: true, location_name: "PrimaryAccountNumber"))
    MacAlgorithmEmv.add_member(:pan_sequence_number, Shapes::ShapeRef.new(shape: NumberLengthEquals2, required: true, location_name: "PanSequenceNumber"))
    MacAlgorithmEmv.add_member(:session_key_derivation_mode, Shapes::ShapeRef.new(shape: SessionKeyDerivationMode, required: true, location_name: "SessionKeyDerivationMode"))
    MacAlgorithmEmv.add_member(:session_key_derivation_value, Shapes::ShapeRef.new(shape: SessionKeyDerivationValue, required: true, location_name: "SessionKeyDerivationValue"))
    MacAlgorithmEmv.struct_class = Types::MacAlgorithmEmv

    MacAttributes.add_member(:algorithm, Shapes::ShapeRef.new(shape: MacAlgorithm, location_name: "Algorithm"))
    MacAttributes.add_member(:emv_mac, Shapes::ShapeRef.new(shape: MacAlgorithmEmv, location_name: "EmvMac"))
    MacAttributes.add_member(:dukpt_iso_9797_algorithm_1, Shapes::ShapeRef.new(shape: MacAlgorithmDukpt, location_name: "DukptIso9797Algorithm1"))
    MacAttributes.add_member(:dukpt_iso_9797_algorithm_3, Shapes::ShapeRef.new(shape: MacAlgorithmDukpt, location_name: "DukptIso9797Algorithm3"))
    MacAttributes.add_member(:dukpt_cmac, Shapes::ShapeRef.new(shape: MacAlgorithmDukpt, location_name: "DukptCmac"))
    MacAttributes.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    MacAttributes.add_member_subclass(:algorithm, Types::MacAttributes::Algorithm)
    MacAttributes.add_member_subclass(:emv_mac, Types::MacAttributes::EmvMac)
    MacAttributes.add_member_subclass(:dukpt_iso_9797_algorithm_1, Types::MacAttributes::DukptIso9797Algorithm1)
    MacAttributes.add_member_subclass(:dukpt_iso_9797_algorithm_3, Types::MacAttributes::DukptIso9797Algorithm3)
    MacAttributes.add_member_subclass(:dukpt_cmac, Types::MacAttributes::DukptCmac)
    MacAttributes.add_member_subclass(:unknown, Types::MacAttributes::Unknown)
    MacAttributes.struct_class = Types::MacAttributes

    MasterCardAttributes.add_member(:major_key_derivation_mode, Shapes::ShapeRef.new(shape: MajorKeyDerivationMode, required: true, location_name: "MajorKeyDerivationMode"))
    MasterCardAttributes.add_member(:primary_account_number, Shapes::ShapeRef.new(shape: PrimaryAccountNumberType, required: true, location_name: "PrimaryAccountNumber"))
    MasterCardAttributes.add_member(:pan_sequence_number, Shapes::ShapeRef.new(shape: NumberLengthEquals2, required: true, location_name: "PanSequenceNumber"))
    MasterCardAttributes.add_member(:application_cryptogram, Shapes::ShapeRef.new(shape: ApplicationCryptogramType, required: true, location_name: "ApplicationCryptogram"))
    MasterCardAttributes.struct_class = Types::MasterCardAttributes

    OutgoingKeyMaterial.add_member(:tr_31_key_block, Shapes::ShapeRef.new(shape: OutgoingTr31KeyBlock, location_name: "Tr31KeyBlock"))
    OutgoingKeyMaterial.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    OutgoingKeyMaterial.add_member_subclass(:tr_31_key_block, Types::OutgoingKeyMaterial::Tr31KeyBlock)
    OutgoingKeyMaterial.add_member_subclass(:unknown, Types::OutgoingKeyMaterial::Unknown)
    OutgoingKeyMaterial.struct_class = Types::OutgoingKeyMaterial

    OutgoingTr31KeyBlock.add_member(:wrapping_key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "WrappingKeyIdentifier"))
    OutgoingTr31KeyBlock.struct_class = Types::OutgoingTr31KeyBlock

    PinData.add_member(:pin_offset, Shapes::ShapeRef.new(shape: PinOffsetType, location_name: "PinOffset"))
    PinData.add_member(:verification_value, Shapes::ShapeRef.new(shape: VerificationValueType, location_name: "VerificationValue"))
    PinData.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PinData.add_member_subclass(:pin_offset, Types::PinData::PinOffset)
    PinData.add_member_subclass(:verification_value, Types::PinData::VerificationValue)
    PinData.add_member_subclass(:unknown, Types::PinData::Unknown)
    PinData.struct_class = Types::PinData

    PinGenerationAttributes.add_member(:visa_pin, Shapes::ShapeRef.new(shape: VisaPin, location_name: "VisaPin"))
    PinGenerationAttributes.add_member(:visa_pin_verification_value, Shapes::ShapeRef.new(shape: VisaPinVerificationValue, location_name: "VisaPinVerificationValue"))
    PinGenerationAttributes.add_member(:ibm_3624_pin_offset, Shapes::ShapeRef.new(shape: Ibm3624PinOffset, location_name: "Ibm3624PinOffset"))
    PinGenerationAttributes.add_member(:ibm_3624_natural_pin, Shapes::ShapeRef.new(shape: Ibm3624NaturalPin, location_name: "Ibm3624NaturalPin"))
    PinGenerationAttributes.add_member(:ibm_3624_random_pin, Shapes::ShapeRef.new(shape: Ibm3624RandomPin, location_name: "Ibm3624RandomPin"))
    PinGenerationAttributes.add_member(:ibm_3624_pin_from_offset, Shapes::ShapeRef.new(shape: Ibm3624PinFromOffset, location_name: "Ibm3624PinFromOffset"))
    PinGenerationAttributes.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PinGenerationAttributes.add_member_subclass(:visa_pin, Types::PinGenerationAttributes::VisaPin)
    PinGenerationAttributes.add_member_subclass(:visa_pin_verification_value, Types::PinGenerationAttributes::VisaPinVerificationValue)
    PinGenerationAttributes.add_member_subclass(:ibm_3624_pin_offset, Types::PinGenerationAttributes::Ibm3624PinOffset)
    PinGenerationAttributes.add_member_subclass(:ibm_3624_natural_pin, Types::PinGenerationAttributes::Ibm3624NaturalPin)
    PinGenerationAttributes.add_member_subclass(:ibm_3624_random_pin, Types::PinGenerationAttributes::Ibm3624RandomPin)
    PinGenerationAttributes.add_member_subclass(:ibm_3624_pin_from_offset, Types::PinGenerationAttributes::Ibm3624PinFromOffset)
    PinGenerationAttributes.add_member_subclass(:unknown, Types::PinGenerationAttributes::Unknown)
    PinGenerationAttributes.struct_class = Types::PinGenerationAttributes

    PinVerificationAttributes.add_member(:visa_pin, Shapes::ShapeRef.new(shape: VisaPinVerification, location_name: "VisaPin"))
    PinVerificationAttributes.add_member(:ibm_3624_pin, Shapes::ShapeRef.new(shape: Ibm3624PinVerification, location_name: "Ibm3624Pin"))
    PinVerificationAttributes.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PinVerificationAttributes.add_member_subclass(:visa_pin, Types::PinVerificationAttributes::VisaPin)
    PinVerificationAttributes.add_member_subclass(:ibm_3624_pin, Types::PinVerificationAttributes::Ibm3624Pin)
    PinVerificationAttributes.add_member_subclass(:unknown, Types::PinVerificationAttributes::Unknown)
    PinVerificationAttributes.struct_class = Types::PinVerificationAttributes

    ReEncryptDataInput.add_member(:incoming_key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location: "uri", location_name: "IncomingKeyIdentifier"))
    ReEncryptDataInput.add_member(:outgoing_key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "OutgoingKeyIdentifier"))
    ReEncryptDataInput.add_member(:cipher_text, Shapes::ShapeRef.new(shape: CipherTextType, required: true, location_name: "CipherText"))
    ReEncryptDataInput.add_member(:incoming_encryption_attributes, Shapes::ShapeRef.new(shape: ReEncryptionAttributes, required: true, location_name: "IncomingEncryptionAttributes"))
    ReEncryptDataInput.add_member(:outgoing_encryption_attributes, Shapes::ShapeRef.new(shape: ReEncryptionAttributes, required: true, location_name: "OutgoingEncryptionAttributes"))
    ReEncryptDataInput.add_member(:incoming_wrapped_key, Shapes::ShapeRef.new(shape: WrappedKey, location_name: "IncomingWrappedKey"))
    ReEncryptDataInput.add_member(:outgoing_wrapped_key, Shapes::ShapeRef.new(shape: WrappedKey, location_name: "OutgoingWrappedKey"))
    ReEncryptDataInput.struct_class = Types::ReEncryptDataInput

    ReEncryptDataOutput.add_member(:key_arn, Shapes::ShapeRef.new(shape: KeyArn, required: true, location_name: "KeyArn"))
    ReEncryptDataOutput.add_member(:key_check_value, Shapes::ShapeRef.new(shape: KeyCheckValue, required: true, location_name: "KeyCheckValue"))
    ReEncryptDataOutput.add_member(:cipher_text, Shapes::ShapeRef.new(shape: CipherTextType, required: true, location_name: "CipherText"))
    ReEncryptDataOutput.struct_class = Types::ReEncryptDataOutput

    ReEncryptionAttributes.add_member(:symmetric, Shapes::ShapeRef.new(shape: SymmetricEncryptionAttributes, location_name: "Symmetric"))
    ReEncryptionAttributes.add_member(:dukpt, Shapes::ShapeRef.new(shape: DukptEncryptionAttributes, location_name: "Dukpt"))
    ReEncryptionAttributes.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ReEncryptionAttributes.add_member_subclass(:symmetric, Types::ReEncryptionAttributes::Symmetric)
    ReEncryptionAttributes.add_member_subclass(:dukpt, Types::ReEncryptionAttributes::Dukpt)
    ReEncryptionAttributes.add_member_subclass(:unknown, Types::ReEncryptionAttributes::Unknown)
    ReEncryptionAttributes.struct_class = Types::ReEncryptionAttributes

    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "ResourceId"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    SessionKeyAmex.add_member(:primary_account_number, Shapes::ShapeRef.new(shape: PrimaryAccountNumberType, required: true, location_name: "PrimaryAccountNumber"))
    SessionKeyAmex.add_member(:pan_sequence_number, Shapes::ShapeRef.new(shape: NumberLengthEquals2, required: true, location_name: "PanSequenceNumber"))
    SessionKeyAmex.struct_class = Types::SessionKeyAmex

    SessionKeyDerivation.add_member(:emv_common, Shapes::ShapeRef.new(shape: SessionKeyEmvCommon, location_name: "EmvCommon"))
    SessionKeyDerivation.add_member(:mastercard, Shapes::ShapeRef.new(shape: SessionKeyMastercard, location_name: "Mastercard"))
    SessionKeyDerivation.add_member(:emv_2000, Shapes::ShapeRef.new(shape: SessionKeyEmv2000, location_name: "Emv2000"))
    SessionKeyDerivation.add_member(:amex, Shapes::ShapeRef.new(shape: SessionKeyAmex, location_name: "Amex"))
    SessionKeyDerivation.add_member(:visa, Shapes::ShapeRef.new(shape: SessionKeyVisa, location_name: "Visa"))
    SessionKeyDerivation.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SessionKeyDerivation.add_member_subclass(:emv_common, Types::SessionKeyDerivation::EmvCommon)
    SessionKeyDerivation.add_member_subclass(:mastercard, Types::SessionKeyDerivation::Mastercard)
    SessionKeyDerivation.add_member_subclass(:emv_2000, Types::SessionKeyDerivation::Emv2000)
    SessionKeyDerivation.add_member_subclass(:amex, Types::SessionKeyDerivation::Amex)
    SessionKeyDerivation.add_member_subclass(:visa, Types::SessionKeyDerivation::Visa)
    SessionKeyDerivation.add_member_subclass(:unknown, Types::SessionKeyDerivation::Unknown)
    SessionKeyDerivation.struct_class = Types::SessionKeyDerivation

    SessionKeyDerivationValue.add_member(:application_cryptogram, Shapes::ShapeRef.new(shape: ApplicationCryptogramType, location_name: "ApplicationCryptogram"))
    SessionKeyDerivationValue.add_member(:application_transaction_counter, Shapes::ShapeRef.new(shape: HexLengthEquals4, location_name: "ApplicationTransactionCounter"))
    SessionKeyDerivationValue.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SessionKeyDerivationValue.add_member_subclass(:application_cryptogram, Types::SessionKeyDerivationValue::ApplicationCryptogram)
    SessionKeyDerivationValue.add_member_subclass(:application_transaction_counter, Types::SessionKeyDerivationValue::ApplicationTransactionCounter)
    SessionKeyDerivationValue.add_member_subclass(:unknown, Types::SessionKeyDerivationValue::Unknown)
    SessionKeyDerivationValue.struct_class = Types::SessionKeyDerivationValue

    SessionKeyEmv2000.add_member(:primary_account_number, Shapes::ShapeRef.new(shape: PrimaryAccountNumberType, required: true, location_name: "PrimaryAccountNumber"))
    SessionKeyEmv2000.add_member(:pan_sequence_number, Shapes::ShapeRef.new(shape: NumberLengthEquals2, required: true, location_name: "PanSequenceNumber"))
    SessionKeyEmv2000.add_member(:application_transaction_counter, Shapes::ShapeRef.new(shape: HexLengthEquals4, required: true, location_name: "ApplicationTransactionCounter"))
    SessionKeyEmv2000.struct_class = Types::SessionKeyEmv2000

    SessionKeyEmvCommon.add_member(:primary_account_number, Shapes::ShapeRef.new(shape: PrimaryAccountNumberType, required: true, location_name: "PrimaryAccountNumber"))
    SessionKeyEmvCommon.add_member(:pan_sequence_number, Shapes::ShapeRef.new(shape: NumberLengthEquals2, required: true, location_name: "PanSequenceNumber"))
    SessionKeyEmvCommon.add_member(:application_transaction_counter, Shapes::ShapeRef.new(shape: HexLengthEquals4, required: true, location_name: "ApplicationTransactionCounter"))
    SessionKeyEmvCommon.struct_class = Types::SessionKeyEmvCommon

    SessionKeyMastercard.add_member(:primary_account_number, Shapes::ShapeRef.new(shape: PrimaryAccountNumberType, required: true, location_name: "PrimaryAccountNumber"))
    SessionKeyMastercard.add_member(:pan_sequence_number, Shapes::ShapeRef.new(shape: NumberLengthEquals2, required: true, location_name: "PanSequenceNumber"))
    SessionKeyMastercard.add_member(:application_transaction_counter, Shapes::ShapeRef.new(shape: HexLengthEquals4, required: true, location_name: "ApplicationTransactionCounter"))
    SessionKeyMastercard.add_member(:unpredictable_number, Shapes::ShapeRef.new(shape: HexLengthBetween2And8, required: true, location_name: "UnpredictableNumber"))
    SessionKeyMastercard.struct_class = Types::SessionKeyMastercard

    SessionKeyVisa.add_member(:primary_account_number, Shapes::ShapeRef.new(shape: PrimaryAccountNumberType, required: true, location_name: "PrimaryAccountNumber"))
    SessionKeyVisa.add_member(:pan_sequence_number, Shapes::ShapeRef.new(shape: NumberLengthEquals2, required: true, location_name: "PanSequenceNumber"))
    SessionKeyVisa.struct_class = Types::SessionKeyVisa

    SymmetricEncryptionAttributes.add_member(:mode, Shapes::ShapeRef.new(shape: EncryptionMode, required: true, location_name: "Mode"))
    SymmetricEncryptionAttributes.add_member(:initialization_vector, Shapes::ShapeRef.new(shape: InitializationVectorType, location_name: "InitializationVector"))
    SymmetricEncryptionAttributes.add_member(:padding_type, Shapes::ShapeRef.new(shape: PaddingType, location_name: "PaddingType"))
    SymmetricEncryptionAttributes.struct_class = Types::SymmetricEncryptionAttributes

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TranslateKeyMaterialInput.add_member(:incoming_key_material, Shapes::ShapeRef.new(shape: IncomingKeyMaterial, required: true, location_name: "IncomingKeyMaterial"))
    TranslateKeyMaterialInput.add_member(:outgoing_key_material, Shapes::ShapeRef.new(shape: OutgoingKeyMaterial, required: true, location_name: "OutgoingKeyMaterial"))
    TranslateKeyMaterialInput.add_member(:key_check_value_algorithm, Shapes::ShapeRef.new(shape: KeyCheckValueAlgorithm, location_name: "KeyCheckValueAlgorithm"))
    TranslateKeyMaterialInput.struct_class = Types::TranslateKeyMaterialInput

    TranslateKeyMaterialOutput.add_member(:wrapped_key, Shapes::ShapeRef.new(shape: WrappedWorkingKey, required: true, location_name: "WrappedKey"))
    TranslateKeyMaterialOutput.struct_class = Types::TranslateKeyMaterialOutput

    TranslatePinDataInput.add_member(:incoming_key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "IncomingKeyIdentifier"))
    TranslatePinDataInput.add_member(:outgoing_key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "OutgoingKeyIdentifier"))
    TranslatePinDataInput.add_member(:incoming_translation_attributes, Shapes::ShapeRef.new(shape: TranslationIsoFormats, required: true, location_name: "IncomingTranslationAttributes"))
    TranslatePinDataInput.add_member(:outgoing_translation_attributes, Shapes::ShapeRef.new(shape: TranslationIsoFormats, required: true, location_name: "OutgoingTranslationAttributes"))
    TranslatePinDataInput.add_member(:encrypted_pin_block, Shapes::ShapeRef.new(shape: HexEvenLengthBetween16And32, required: true, location_name: "EncryptedPinBlock"))
    TranslatePinDataInput.add_member(:incoming_dukpt_attributes, Shapes::ShapeRef.new(shape: DukptDerivationAttributes, location_name: "IncomingDukptAttributes"))
    TranslatePinDataInput.add_member(:outgoing_dukpt_attributes, Shapes::ShapeRef.new(shape: DukptDerivationAttributes, location_name: "OutgoingDukptAttributes"))
    TranslatePinDataInput.add_member(:incoming_wrapped_key, Shapes::ShapeRef.new(shape: WrappedKey, location_name: "IncomingWrappedKey"))
    TranslatePinDataInput.add_member(:outgoing_wrapped_key, Shapes::ShapeRef.new(shape: WrappedKey, location_name: "OutgoingWrappedKey"))
    TranslatePinDataInput.struct_class = Types::TranslatePinDataInput

    TranslatePinDataOutput.add_member(:pin_block, Shapes::ShapeRef.new(shape: EncryptedPinBlockType, required: true, location_name: "PinBlock"))
    TranslatePinDataOutput.add_member(:key_arn, Shapes::ShapeRef.new(shape: KeyArn, required: true, location_name: "KeyArn"))
    TranslatePinDataOutput.add_member(:key_check_value, Shapes::ShapeRef.new(shape: KeyCheckValue, required: true, location_name: "KeyCheckValue"))
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

    TranslationPinDataIsoFormat034.add_member(:primary_account_number, Shapes::ShapeRef.new(shape: PrimaryAccountNumberType, required: true, location_name: "PrimaryAccountNumber"))
    TranslationPinDataIsoFormat034.struct_class = Types::TranslationPinDataIsoFormat034

    TranslationPinDataIsoFormat1.struct_class = Types::TranslationPinDataIsoFormat1

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:path, Shapes::ShapeRef.new(shape: String, required: true, location_name: "path"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    VerificationFailedException.add_member(:reason, Shapes::ShapeRef.new(shape: VerificationFailedReason, required: true, location_name: "Reason"))
    VerificationFailedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    VerificationFailedException.struct_class = Types::VerificationFailedException

    VerifyAuthRequestCryptogramInput.add_member(:key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "KeyIdentifier"))
    VerifyAuthRequestCryptogramInput.add_member(:transaction_data, Shapes::ShapeRef.new(shape: TransactionDataType, required: true, location_name: "TransactionData"))
    VerifyAuthRequestCryptogramInput.add_member(:auth_request_cryptogram, Shapes::ShapeRef.new(shape: AuthRequestCryptogramType, required: true, location_name: "AuthRequestCryptogram"))
    VerifyAuthRequestCryptogramInput.add_member(:major_key_derivation_mode, Shapes::ShapeRef.new(shape: MajorKeyDerivationMode, required: true, location_name: "MajorKeyDerivationMode"))
    VerifyAuthRequestCryptogramInput.add_member(:session_key_derivation_attributes, Shapes::ShapeRef.new(shape: SessionKeyDerivation, required: true, location_name: "SessionKeyDerivationAttributes"))
    VerifyAuthRequestCryptogramInput.add_member(:auth_response_attributes, Shapes::ShapeRef.new(shape: CryptogramAuthResponse, location_name: "AuthResponseAttributes"))
    VerifyAuthRequestCryptogramInput.struct_class = Types::VerifyAuthRequestCryptogramInput

    VerifyAuthRequestCryptogramOutput.add_member(:key_arn, Shapes::ShapeRef.new(shape: KeyArn, required: true, location_name: "KeyArn"))
    VerifyAuthRequestCryptogramOutput.add_member(:key_check_value, Shapes::ShapeRef.new(shape: KeyCheckValue, required: true, location_name: "KeyCheckValue"))
    VerifyAuthRequestCryptogramOutput.add_member(:auth_response_value, Shapes::ShapeRef.new(shape: AuthResponseValueType, location_name: "AuthResponseValue"))
    VerifyAuthRequestCryptogramOutput.struct_class = Types::VerifyAuthRequestCryptogramOutput

    VerifyCardValidationDataInput.add_member(:key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "KeyIdentifier"))
    VerifyCardValidationDataInput.add_member(:primary_account_number, Shapes::ShapeRef.new(shape: PrimaryAccountNumberType, required: true, location_name: "PrimaryAccountNumber"))
    VerifyCardValidationDataInput.add_member(:verification_attributes, Shapes::ShapeRef.new(shape: CardVerificationAttributes, required: true, location_name: "VerificationAttributes"))
    VerifyCardValidationDataInput.add_member(:validation_data, Shapes::ShapeRef.new(shape: ValidationDataType, required: true, location_name: "ValidationData"))
    VerifyCardValidationDataInput.struct_class = Types::VerifyCardValidationDataInput

    VerifyCardValidationDataOutput.add_member(:key_arn, Shapes::ShapeRef.new(shape: KeyArn, required: true, location_name: "KeyArn"))
    VerifyCardValidationDataOutput.add_member(:key_check_value, Shapes::ShapeRef.new(shape: KeyCheckValue, required: true, location_name: "KeyCheckValue"))
    VerifyCardValidationDataOutput.struct_class = Types::VerifyCardValidationDataOutput

    VerifyMacInput.add_member(:key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "KeyIdentifier"))
    VerifyMacInput.add_member(:message_data, Shapes::ShapeRef.new(shape: MessageDataType, required: true, location_name: "MessageData"))
    VerifyMacInput.add_member(:mac, Shapes::ShapeRef.new(shape: MacType, required: true, location_name: "Mac"))
    VerifyMacInput.add_member(:verification_attributes, Shapes::ShapeRef.new(shape: MacAttributes, required: true, location_name: "VerificationAttributes"))
    VerifyMacInput.add_member(:mac_length, Shapes::ShapeRef.new(shape: IntegerRangeBetween4And16, location_name: "MacLength"))
    VerifyMacInput.struct_class = Types::VerifyMacInput

    VerifyMacOutput.add_member(:key_arn, Shapes::ShapeRef.new(shape: KeyArn, required: true, location_name: "KeyArn"))
    VerifyMacOutput.add_member(:key_check_value, Shapes::ShapeRef.new(shape: KeyCheckValue, required: true, location_name: "KeyCheckValue"))
    VerifyMacOutput.struct_class = Types::VerifyMacOutput

    VerifyPinDataInput.add_member(:verification_key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "VerificationKeyIdentifier"))
    VerifyPinDataInput.add_member(:encryption_key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "EncryptionKeyIdentifier"))
    VerifyPinDataInput.add_member(:verification_attributes, Shapes::ShapeRef.new(shape: PinVerificationAttributes, required: true, location_name: "VerificationAttributes"))
    VerifyPinDataInput.add_member(:encrypted_pin_block, Shapes::ShapeRef.new(shape: EncryptedPinBlockType, required: true, location_name: "EncryptedPinBlock"))
    VerifyPinDataInput.add_member(:primary_account_number, Shapes::ShapeRef.new(shape: PrimaryAccountNumberType, location_name: "PrimaryAccountNumber"))
    VerifyPinDataInput.add_member(:pin_block_format, Shapes::ShapeRef.new(shape: PinBlockFormatForPinData, required: true, location_name: "PinBlockFormat"))
    VerifyPinDataInput.add_member(:pin_data_length, Shapes::ShapeRef.new(shape: IntegerRangeBetween4And12, location_name: "PinDataLength"))
    VerifyPinDataInput.add_member(:dukpt_attributes, Shapes::ShapeRef.new(shape: DukptAttributes, location_name: "DukptAttributes"))
    VerifyPinDataInput.add_member(:encryption_wrapped_key, Shapes::ShapeRef.new(shape: WrappedKey, location_name: "EncryptionWrappedKey"))
    VerifyPinDataInput.struct_class = Types::VerifyPinDataInput

    VerifyPinDataOutput.add_member(:verification_key_arn, Shapes::ShapeRef.new(shape: KeyArn, required: true, location_name: "VerificationKeyArn"))
    VerifyPinDataOutput.add_member(:verification_key_check_value, Shapes::ShapeRef.new(shape: KeyCheckValue, required: true, location_name: "VerificationKeyCheckValue"))
    VerifyPinDataOutput.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: KeyArn, required: true, location_name: "EncryptionKeyArn"))
    VerifyPinDataOutput.add_member(:encryption_key_check_value, Shapes::ShapeRef.new(shape: KeyCheckValue, required: true, location_name: "EncryptionKeyCheckValue"))
    VerifyPinDataOutput.struct_class = Types::VerifyPinDataOutput

    VisaAmexDerivationOutputs.add_member(:authorization_request_key_arn, Shapes::ShapeRef.new(shape: KeyArn, required: true, location_name: "AuthorizationRequestKeyArn"))
    VisaAmexDerivationOutputs.add_member(:authorization_request_key_check_value, Shapes::ShapeRef.new(shape: KeyCheckValue, required: true, location_name: "AuthorizationRequestKeyCheckValue"))
    VisaAmexDerivationOutputs.add_member(:current_pin_pek_arn, Shapes::ShapeRef.new(shape: KeyArn, location_name: "CurrentPinPekArn"))
    VisaAmexDerivationOutputs.add_member(:current_pin_pek_key_check_value, Shapes::ShapeRef.new(shape: KeyCheckValue, location_name: "CurrentPinPekKeyCheckValue"))
    VisaAmexDerivationOutputs.struct_class = Types::VisaAmexDerivationOutputs

    VisaAttributes.add_member(:major_key_derivation_mode, Shapes::ShapeRef.new(shape: MajorKeyDerivationMode, required: true, location_name: "MajorKeyDerivationMode"))
    VisaAttributes.add_member(:primary_account_number, Shapes::ShapeRef.new(shape: PrimaryAccountNumberType, required: true, location_name: "PrimaryAccountNumber"))
    VisaAttributes.add_member(:pan_sequence_number, Shapes::ShapeRef.new(shape: NumberLengthEquals2, required: true, location_name: "PanSequenceNumber"))
    VisaAttributes.add_member(:application_transaction_counter, Shapes::ShapeRef.new(shape: HexLengthEquals4, required: true, location_name: "ApplicationTransactionCounter"))
    VisaAttributes.add_member(:authorization_request_key_identifier, Shapes::ShapeRef.new(shape: KeyArnOrKeyAliasType, required: true, location_name: "AuthorizationRequestKeyIdentifier"))
    VisaAttributes.add_member(:current_pin_attributes, Shapes::ShapeRef.new(shape: CurrentPinAttributes, location_name: "CurrentPinAttributes"))
    VisaAttributes.struct_class = Types::VisaAttributes

    VisaPin.add_member(:pin_verification_key_index, Shapes::ShapeRef.new(shape: IntegerRangeBetween0And6, required: true, location_name: "PinVerificationKeyIndex"))
    VisaPin.struct_class = Types::VisaPin

    VisaPinVerification.add_member(:pin_verification_key_index, Shapes::ShapeRef.new(shape: IntegerRangeBetween0And6, required: true, location_name: "PinVerificationKeyIndex"))
    VisaPinVerification.add_member(:verification_value, Shapes::ShapeRef.new(shape: VerificationValueType, required: true, location_name: "VerificationValue"))
    VisaPinVerification.struct_class = Types::VisaPinVerification

    VisaPinVerificationValue.add_member(:encrypted_pin_block, Shapes::ShapeRef.new(shape: EncryptedPinBlockType, required: true, location_name: "EncryptedPinBlock"))
    VisaPinVerificationValue.add_member(:pin_verification_key_index, Shapes::ShapeRef.new(shape: IntegerRangeBetween0And6, required: true, location_name: "PinVerificationKeyIndex"))
    VisaPinVerificationValue.struct_class = Types::VisaPinVerificationValue

    WrappedKey.add_member(:wrapped_key_material, Shapes::ShapeRef.new(shape: WrappedKeyMaterial, required: true, location_name: "WrappedKeyMaterial"))
    WrappedKey.add_member(:key_check_value_algorithm, Shapes::ShapeRef.new(shape: KeyCheckValueAlgorithm, location_name: "KeyCheckValueAlgorithm"))
    WrappedKey.struct_class = Types::WrappedKey

    WrappedKeyMaterial.add_member(:tr_31_key_block, Shapes::ShapeRef.new(shape: Tr31WrappedKeyBlock, location_name: "Tr31KeyBlock"))
    WrappedKeyMaterial.add_member(:diffie_hellman_symmetric_key, Shapes::ShapeRef.new(shape: EcdhDerivationAttributes, location_name: "DiffieHellmanSymmetricKey"))
    WrappedKeyMaterial.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    WrappedKeyMaterial.add_member_subclass(:tr_31_key_block, Types::WrappedKeyMaterial::Tr31KeyBlock)
    WrappedKeyMaterial.add_member_subclass(:diffie_hellman_symmetric_key, Types::WrappedKeyMaterial::DiffieHellmanSymmetricKey)
    WrappedKeyMaterial.add_member_subclass(:unknown, Types::WrappedKeyMaterial::Unknown)
    WrappedKeyMaterial.struct_class = Types::WrappedKeyMaterial

    WrappedWorkingKey.add_member(:wrapped_key_material, Shapes::ShapeRef.new(shape: KeyMaterial, required: true, location_name: "WrappedKeyMaterial"))
    WrappedWorkingKey.add_member(:key_check_value, Shapes::ShapeRef.new(shape: KeyCheckValue, required: true, location_name: "KeyCheckValue"))
    WrappedWorkingKey.add_member(:wrapped_key_material_format, Shapes::ShapeRef.new(shape: WrappedKeyMaterialFormat, required: true, location_name: "WrappedKeyMaterialFormat"))
    WrappedWorkingKey.struct_class = Types::WrappedWorkingKey


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2022-02-03"

      api.metadata = {
        "apiVersion" => "2022-02-03",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "dataplane.payment-cryptography",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
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

      api.add_operation(:generate_mac_emv_pin_change, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GenerateMacEmvPinChange"
        o.http_method = "POST"
        o.http_request_uri = "/macemvpinchange/generate"
        o.input = Shapes::ShapeRef.new(shape: GenerateMacEmvPinChangeInput)
        o.output = Shapes::ShapeRef.new(shape: GenerateMacEmvPinChangeOutput)
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

      api.add_operation(:translate_key_material, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TranslateKeyMaterial"
        o.http_method = "POST"
        o.http_request_uri = "/keymaterial/translate"
        o.input = Shapes::ShapeRef.new(shape: TranslateKeyMaterialInput)
        o.output = Shapes::ShapeRef.new(shape: TranslateKeyMaterialOutput)
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
