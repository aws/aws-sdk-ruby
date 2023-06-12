# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::PaymentCryptographyData
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Card data parameters that are required to generate a Card Security
    # Code (CSC2) for an AMEX payment card.
    #
    # @!attribute [rw] card_expiry_date
    #   The expiry date of a payment card.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/AmexCardSecurityCodeVersion1 AWS API Documentation
    #
    class AmexCardSecurityCodeVersion1 < Struct.new(
      :card_expiry_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Card data parameters that are required to generate a Card Security
    # Code (CSC2) for an AMEX payment card.
    #
    # @!attribute [rw] card_expiry_date
    #   The expiry date of a payment card.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The service code of the AMEX payment card. This is different from
    #   the Card Security Code (CSC).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/AmexCardSecurityCodeVersion2 AWS API Documentation
    #
    class AmexCardSecurityCodeVersion2 < Struct.new(
      :card_expiry_date,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameters for plaintext encryption using asymmetric keys.
    #
    # @!attribute [rw] padding_type
    #   The padding to be included with the data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/AsymmetricEncryptionAttributes AWS API Documentation
    #
    class AsymmetricEncryptionAttributes < Struct.new(
      :padding_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Card data parameters that are required to generate Card Verification
    # Values (CVV/CVV2), Dynamic Card Verification Values (dCVV/dCVV2), or
    # Card Security Codes (CSC).
    #
    # @note CardGenerationAttributes is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] amex_card_security_code_version_1
    #   Card data parameters that are required to generate a Card Security
    #   Code (CSC2) for an AMEX payment card.
    #   @return [Types::AmexCardSecurityCodeVersion1]
    #
    # @!attribute [rw] amex_card_security_code_version_2
    #   Card data parameters that are required to generate a Card Security
    #   Code (CSC2) for an AMEX payment card.
    #   @return [Types::AmexCardSecurityCodeVersion2]
    #
    # @!attribute [rw] card_holder_verification_value
    #   Card data parameters that are required to generate a cardholder
    #   verification value for the payment card.
    #   @return [Types::CardHolderVerificationValue]
    #
    # @!attribute [rw] card_verification_value_1
    #   Card data parameters that are required to generate Card Verification
    #   Value (CVV) for the payment card.
    #   @return [Types::CardVerificationValue1]
    #
    # @!attribute [rw] card_verification_value_2
    #   Card data parameters that are required to generate Card Verification
    #   Value (CVV2) for the payment card.
    #   @return [Types::CardVerificationValue2]
    #
    # @!attribute [rw] dynamic_card_verification_code
    #   Card data parameters that are required to generate CDynamic Card
    #   Verification Code (dCVC) for the payment card.
    #   @return [Types::DynamicCardVerificationCode]
    #
    # @!attribute [rw] dynamic_card_verification_value
    #   Card data parameters that are required to generate CDynamic Card
    #   Verification Value (dCVV) for the payment card.
    #   @return [Types::DynamicCardVerificationValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/CardGenerationAttributes AWS API Documentation
    #
    class CardGenerationAttributes < Struct.new(
      :amex_card_security_code_version_1,
      :amex_card_security_code_version_2,
      :card_holder_verification_value,
      :card_verification_value_1,
      :card_verification_value_2,
      :dynamic_card_verification_code,
      :dynamic_card_verification_value,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AmexCardSecurityCodeVersion1 < CardGenerationAttributes; end
      class AmexCardSecurityCodeVersion2 < CardGenerationAttributes; end
      class CardHolderVerificationValue < CardGenerationAttributes; end
      class CardVerificationValue1 < CardGenerationAttributes; end
      class CardVerificationValue2 < CardGenerationAttributes; end
      class DynamicCardVerificationCode < CardGenerationAttributes; end
      class DynamicCardVerificationValue < CardGenerationAttributes; end
      class Unknown < CardGenerationAttributes; end
    end

    # Card data parameters that are required to generate a cardholder
    # verification value for the payment card.
    #
    # @!attribute [rw] application_transaction_counter
    #   The transaction counter value that comes from a point of sale
    #   terminal.
    #   @return [String]
    #
    # @!attribute [rw] pan_sequence_number
    #   A number that identifies and differentiates payment cards with the
    #   same Primary Account Number (PAN).
    #   @return [String]
    #
    # @!attribute [rw] unpredictable_number
    #   A random number generated by the issuer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/CardHolderVerificationValue AWS API Documentation
    #
    class CardHolderVerificationValue < Struct.new(
      :application_transaction_counter,
      :pan_sequence_number,
      :unpredictable_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # Card data parameters that are requried to verify Card Verification
    # Values (CVV/CVV2), Dynamic Card Verification Values (dCVV/dCVV2), or
    # Card Security Codes (CSC).
    #
    # @note CardVerificationAttributes is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] amex_card_security_code_version_1
    #   Card data parameters that are required to generate a Card Security
    #   Code (CSC2) for an AMEX payment card.
    #   @return [Types::AmexCardSecurityCodeVersion1]
    #
    # @!attribute [rw] amex_card_security_code_version_2
    #   Card data parameters that are required to verify a Card Security
    #   Code (CSC2) for an AMEX payment card.
    #   @return [Types::AmexCardSecurityCodeVersion2]
    #
    # @!attribute [rw] card_holder_verification_value
    #   Card data parameters that are required to verify a cardholder
    #   verification value for the payment card.
    #   @return [Types::CardHolderVerificationValue]
    #
    # @!attribute [rw] card_verification_value_1
    #   Card data parameters that are required to verify Card Verification
    #   Value (CVV) for the payment card.
    #   @return [Types::CardVerificationValue1]
    #
    # @!attribute [rw] card_verification_value_2
    #   Card data parameters that are required to verify Card Verification
    #   Value (CVV2) for the payment card.
    #   @return [Types::CardVerificationValue2]
    #
    # @!attribute [rw] discover_dynamic_card_verification_code
    #   Card data parameters that are required to verify CDynamic Card
    #   Verification Code (dCVC) for the payment card.
    #   @return [Types::DiscoverDynamicCardVerificationCode]
    #
    # @!attribute [rw] dynamic_card_verification_code
    #   Card data parameters that are required to verify CDynamic Card
    #   Verification Code (dCVC) for the payment card.
    #   @return [Types::DynamicCardVerificationCode]
    #
    # @!attribute [rw] dynamic_card_verification_value
    #   Card data parameters that are required to verify CDynamic Card
    #   Verification Value (dCVV) for the payment card.
    #   @return [Types::DynamicCardVerificationValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/CardVerificationAttributes AWS API Documentation
    #
    class CardVerificationAttributes < Struct.new(
      :amex_card_security_code_version_1,
      :amex_card_security_code_version_2,
      :card_holder_verification_value,
      :card_verification_value_1,
      :card_verification_value_2,
      :discover_dynamic_card_verification_code,
      :dynamic_card_verification_code,
      :dynamic_card_verification_value,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AmexCardSecurityCodeVersion1 < CardVerificationAttributes; end
      class AmexCardSecurityCodeVersion2 < CardVerificationAttributes; end
      class CardHolderVerificationValue < CardVerificationAttributes; end
      class CardVerificationValue1 < CardVerificationAttributes; end
      class CardVerificationValue2 < CardVerificationAttributes; end
      class DiscoverDynamicCardVerificationCode < CardVerificationAttributes; end
      class DynamicCardVerificationCode < CardVerificationAttributes; end
      class DynamicCardVerificationValue < CardVerificationAttributes; end
      class Unknown < CardVerificationAttributes; end
    end

    # Card data parameters that are required to verify CVV (Card
    # Verification Value) for the payment card.
    #
    # @!attribute [rw] card_expiry_date
    #   The expiry date of a payment card.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The service code of the payment card. This is different from Card
    #   Security Code (CSC).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/CardVerificationValue1 AWS API Documentation
    #
    class CardVerificationValue1 < Struct.new(
      :card_expiry_date,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Card data parameters that are required to verify Card Verification
    # Value (CVV2) for the payment card.
    #
    # @!attribute [rw] card_expiry_date
    #   The expiry date of a payment card.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/CardVerificationValue2 AWS API Documentation
    #
    class CardVerificationValue2 < Struct.new(
      :card_expiry_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameters that are required for Authorization Response Cryptogram
    # (ARPC) generation after Authorization Request Cryptogram (ARQC)
    # verification is successful.
    #
    # @note CryptogramAuthResponse is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] arpc_method_1
    #   Parameters that are required for ARPC response generation using
    #   method1 after ARQC verification is successful.
    #   @return [Types::CryptogramVerificationArpcMethod1]
    #
    # @!attribute [rw] arpc_method_2
    #   Parameters that are required for ARPC response generation using
    #   method2 after ARQC verification is successful.
    #   @return [Types::CryptogramVerificationArpcMethod2]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/CryptogramAuthResponse AWS API Documentation
    #
    class CryptogramAuthResponse < Struct.new(
      :arpc_method_1,
      :arpc_method_2,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ArpcMethod1 < CryptogramAuthResponse; end
      class ArpcMethod2 < CryptogramAuthResponse; end
      class Unknown < CryptogramAuthResponse; end
    end

    # Parameters that are required for ARPC response generation using
    # method1 after ARQC verification is successful.
    #
    # @!attribute [rw] auth_response_code
    #   The auth code used to calculate APRC after ARQC verification is
    #   successful. This is the same auth code used for ARQC generation
    #   outside of Amazon Web Services Payment Cryptography.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/CryptogramVerificationArpcMethod1 AWS API Documentation
    #
    class CryptogramVerificationArpcMethod1 < Struct.new(
      :auth_response_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameters that are required for ARPC response generation using
    # method2 after ARQC verification is successful.
    #
    # @!attribute [rw] card_status_update
    #   The data indicating whether the issuer approves or declines an
    #   online transaction using an EMV chip card.
    #   @return [String]
    #
    # @!attribute [rw] proprietary_authentication_data
    #   The proprietary authentication data used by issuer for communication
    #   during online transaction using an EMV chip card.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/CryptogramVerificationArpcMethod2 AWS API Documentation
    #
    class CryptogramVerificationArpcMethod2 < Struct.new(
      :card_status_update,
      :proprietary_authentication_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cipher_text
    #   The ciphertext to decrypt.
    #   @return [String]
    #
    # @!attribute [rw] decryption_attributes
    #   The encryption key type and attributes for ciphertext decryption.
    #   @return [Types::EncryptionDecryptionAttributes]
    #
    # @!attribute [rw] key_identifier
    #   The `keyARN` of the encryption key that Amazon Web Services Payment
    #   Cryptography uses for ciphertext decryption.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/DecryptDataInput AWS API Documentation
    #
    class DecryptDataInput < Struct.new(
      :cipher_text,
      :decryption_attributes,
      :key_identifier)
      SENSITIVE = [:cipher_text]
      include Aws::Structure
    end

    # @!attribute [rw] key_arn
    #   The `keyARN` of the encryption key that Amazon Web Services Payment
    #   Cryptography uses for ciphertext decryption.
    #   @return [String]
    #
    # @!attribute [rw] key_check_value
    #   The key check value (KCV) of the encryption key. The KCV is used to
    #   check if all parties holding a given key have the same key or to
    #   detect that a key has changed. Amazon Web Services Payment
    #   Cryptography calculates the KCV by using standard algorithms,
    #   typically by encrypting 8 or 16 bytes or "00" or "01" and then
    #   truncating the result to the first 3 bytes, or 6 hex digits, of the
    #   resulting cryptogram.
    #   @return [String]
    #
    # @!attribute [rw] plain_text
    #   The decrypted plaintext data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/DecryptDataOutput AWS API Documentation
    #
    class DecryptDataOutput < Struct.new(
      :key_arn,
      :key_check_value,
      :plain_text)
      SENSITIVE = [:plain_text]
      include Aws::Structure
    end

    # Parameters that are required to generate or verify dCVC (Dynamic Card
    # Verification Code).
    #
    # @!attribute [rw] application_transaction_counter
    #   The transaction counter value that comes from the terminal.
    #   @return [String]
    #
    # @!attribute [rw] card_expiry_date
    #   The expiry date of a payment card.
    #   @return [String]
    #
    # @!attribute [rw] unpredictable_number
    #   A random number that is generated by the issuer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/DiscoverDynamicCardVerificationCode AWS API Documentation
    #
    class DiscoverDynamicCardVerificationCode < Struct.new(
      :application_transaction_counter,
      :card_expiry_date,
      :unpredictable_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameters that are used for Derived Unique Key Per Transaction
    # (DUKPT) derivation algorithm.
    #
    # @!attribute [rw] dukpt_derivation_type
    #   The key type derived using DUKPT from a Base Derivation Key (BDK)
    #   and Key Serial Number (KSN). This must be less than or equal to the
    #   strength of the BDK. For example, you can't use `AES_128` as a
    #   derivation type for a BDK of `AES_128` or `TDES_2KEY`.
    #   @return [String]
    #
    # @!attribute [rw] key_serial_number
    #   The unique identifier known as Key Serial Number (KSN) that comes
    #   from an encrypting device using DUKPT encryption method. The KSN is
    #   derived from the encrypting device unique identifier and an internal
    #   transaction counter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/DukptAttributes AWS API Documentation
    #
    class DukptAttributes < Struct.new(
      :dukpt_derivation_type,
      :key_serial_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameters required for encryption or decryption of data using DUKPT.
    #
    # @!attribute [rw] dukpt_key_derivation_type
    #   The key type derived using DUKPT from a Base Derivation Key (BDK)
    #   and Key Serial Number (KSN). This must be less than or equal to the
    #   strength of the BDK. For example, you can't use `AES_128` as a
    #   derivation type for a BDK of `AES_128` or `TDES_2KEY`
    #   @return [String]
    #
    # @!attribute [rw] dukpt_key_variant
    #   The type of use of DUKPT, which can be for incoming data decryption,
    #   outgoing data encryption, or both.
    #   @return [String]
    #
    # @!attribute [rw] key_serial_number
    #   The unique identifier known as Key Serial Number (KSN) that comes
    #   from an encrypting device using DUKPT encryption method. The KSN is
    #   derived from the encrypting device unique identifier and an internal
    #   transaction counter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/DukptDerivationAttributes AWS API Documentation
    #
    class DukptDerivationAttributes < Struct.new(
      :dukpt_key_derivation_type,
      :dukpt_key_variant,
      :key_serial_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameters that are required to encrypt plaintext data using DUKPT.
    #
    # @!attribute [rw] dukpt_key_derivation_type
    #   The key type encrypted using DUKPT from a Base Derivation Key (BDK)
    #   and Key Serial Number (KSN). This must be less than or equal to the
    #   strength of the BDK. For example, you can't use `AES_128` as a
    #   derivation type for a BDK of `AES_128` or `TDES_2KEY`
    #   @return [String]
    #
    # @!attribute [rw] dukpt_key_variant
    #   The type of use of DUKPT, which can be incoming data decryption,
    #   outgoing data encryption, or both.
    #   @return [String]
    #
    # @!attribute [rw] initialization_vector
    #   An input to cryptographic primitive used to provide the intial
    #   state. Typically the `InitializationVector` must have a random or
    #   psuedo-random value, but sometimes it only needs to be unpredictable
    #   or unique. If you don't provide a value, Amazon Web Services
    #   Payment Cryptography generates a random value.
    #   @return [String]
    #
    # @!attribute [rw] key_serial_number
    #   The unique identifier known as Key Serial Number (KSN) that comes
    #   from an encrypting device using DUKPT encryption method. The KSN is
    #   derived from the encrypting device unique identifier and an internal
    #   transaction counter.
    #   @return [String]
    #
    # @!attribute [rw] mode
    #   The block cipher mode of operation. Block ciphers are designed to
    #   encrypt a block of data of fixed size, for example, 128 bits. The
    #   size of the input block is usually same as the size of the encrypted
    #   output block, while the key length can be different. A mode of
    #   operation describes how to repeatedly apply a cipher's single-block
    #   operation to securely transform amounts of data larger than a block.
    #
    #   The default is CBC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/DukptEncryptionAttributes AWS API Documentation
    #
    class DukptEncryptionAttributes < Struct.new(
      :dukpt_key_derivation_type,
      :dukpt_key_variant,
      :initialization_vector,
      :key_serial_number,
      :mode)
      SENSITIVE = [:initialization_vector]
      include Aws::Structure
    end

    # Parameters that are required to generate or verify Dynamic Card
    # Verification Value (dCVV).
    #
    # @!attribute [rw] application_transaction_counter
    #   The transaction counter value that comes from the terminal.
    #   @return [String]
    #
    # @!attribute [rw] pan_sequence_number
    #   A number that identifies and differentiates payment cards with the
    #   same Primary Account Number (PAN).
    #   @return [String]
    #
    # @!attribute [rw] track_data
    #   The data on the two tracks of magnetic cards used for financial
    #   transactions. This includes the cardholder name, PAN, expiration
    #   date, bank ID (BIN) and several other numbers the issuing bank uses
    #   to validate the data received.
    #   @return [String]
    #
    # @!attribute [rw] unpredictable_number
    #   A random number generated by the issuer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/DynamicCardVerificationCode AWS API Documentation
    #
    class DynamicCardVerificationCode < Struct.new(
      :application_transaction_counter,
      :pan_sequence_number,
      :track_data,
      :unpredictable_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameters that are required to generate or verify Dynamic Card
    # Verification Value (dCVV).
    #
    # @!attribute [rw] application_transaction_counter
    #   The transaction counter value that comes from the terminal.
    #   @return [String]
    #
    # @!attribute [rw] card_expiry_date
    #   The expiry date of a payment card.
    #   @return [String]
    #
    # @!attribute [rw] pan_sequence_number
    #   A number that identifies and differentiates payment cards with the
    #   same Primary Account Number (PAN).
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The service code of the payment card. This is different from Card
    #   Security Code (CSC).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/DynamicCardVerificationValue AWS API Documentation
    #
    class DynamicCardVerificationValue < Struct.new(
      :application_transaction_counter,
      :card_expiry_date,
      :pan_sequence_number,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] encryption_attributes
    #   The encryption key type and attributes for plaintext encryption.
    #   @return [Types::EncryptionDecryptionAttributes]
    #
    # @!attribute [rw] key_identifier
    #   The `keyARN` of the encryption key that Amazon Web Services Payment
    #   Cryptography uses for plaintext encryption.
    #   @return [String]
    #
    # @!attribute [rw] plain_text
    #   The plaintext to be encrypted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/EncryptDataInput AWS API Documentation
    #
    class EncryptDataInput < Struct.new(
      :encryption_attributes,
      :key_identifier,
      :plain_text)
      SENSITIVE = [:plain_text]
      include Aws::Structure
    end

    # @!attribute [rw] cipher_text
    #   The encrypted ciphertext.
    #   @return [String]
    #
    # @!attribute [rw] key_arn
    #   The `keyARN` of the encryption key that Amazon Web Services Payment
    #   Cryptography uses for plaintext encryption.
    #   @return [String]
    #
    # @!attribute [rw] key_check_value
    #   The key check value (KCV) of the encryption key. The KCV is used to
    #   check if all parties holding a given key have the same key or to
    #   detect that a key has changed. Amazon Web Services Payment
    #   Cryptography calculates the KCV by using standard algorithms,
    #   typically by encrypting 8 or 16 bytes or "00" or "01" and then
    #   truncating the result to the first 3 bytes, or 6 hex digits, of the
    #   resulting cryptogram.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/EncryptDataOutput AWS API Documentation
    #
    class EncryptDataOutput < Struct.new(
      :cipher_text,
      :key_arn,
      :key_check_value)
      SENSITIVE = [:cipher_text]
      include Aws::Structure
    end

    # Parameters that are required to perform encryption and decryption
    # operations.
    #
    # @note EncryptionDecryptionAttributes is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] asymmetric
    #   Parameters for plaintext encryption using asymmetric keys.
    #   @return [Types::AsymmetricEncryptionAttributes]
    #
    # @!attribute [rw] dukpt
    #   Parameters that are required to encrypt plaintext data using DUKPT.
    #   @return [Types::DukptEncryptionAttributes]
    #
    # @!attribute [rw] symmetric
    #   Parameters that are required to perform encryption and decryption
    #   using symmetric keys.
    #   @return [Types::SymmetricEncryptionAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/EncryptionDecryptionAttributes AWS API Documentation
    #
    class EncryptionDecryptionAttributes < Struct.new(
      :asymmetric,
      :dukpt,
      :symmetric,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Asymmetric < EncryptionDecryptionAttributes; end
      class Dukpt < EncryptionDecryptionAttributes; end
      class Symmetric < EncryptionDecryptionAttributes; end
      class Unknown < EncryptionDecryptionAttributes; end
    end

    # @!attribute [rw] generation_attributes
    #   The algorithm for generating CVV or CSC values for the card within
    #   Amazon Web Services Payment Cryptography.
    #   @return [Types::CardGenerationAttributes]
    #
    # @!attribute [rw] key_identifier
    #   The `keyARN` of the CVK encryption key that Amazon Web Services
    #   Payment Cryptography uses to generate card data.
    #   @return [String]
    #
    # @!attribute [rw] primary_account_number
    #   The Primary Account Number (PAN), a unique identifier for a payment
    #   credit or debit card that associates the card with a specific
    #   account holder.
    #   @return [String]
    #
    # @!attribute [rw] validation_data_length
    #   The length of the CVV or CSC to be generated. The default value is
    #   3.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/GenerateCardValidationDataInput AWS API Documentation
    #
    class GenerateCardValidationDataInput < Struct.new(
      :generation_attributes,
      :key_identifier,
      :primary_account_number,
      :validation_data_length)
      SENSITIVE = [:primary_account_number]
      include Aws::Structure
    end

    # @!attribute [rw] key_arn
    #   The `keyARN` of the CVK encryption key that Amazon Web Services
    #   Payment Cryptography uses to generate CVV or CSC.
    #   @return [String]
    #
    # @!attribute [rw] key_check_value
    #   The key check value (KCV) of the encryption key. The KCV is used to
    #   check if all parties holding a given key have the same key or to
    #   detect that a key has changed. Amazon Web Services Payment
    #   Cryptography calculates the KCV by using standard algorithms,
    #   typically by encrypting 8 or 16 bytes or "00" or "01" and then
    #   truncating the result to the first 3 bytes, or 6 hex digits, of the
    #   resulting cryptogram.
    #   @return [String]
    #
    # @!attribute [rw] validation_data
    #   The CVV or CSC value that Amazon Web Services Payment Cryptography
    #   generates for the card.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/GenerateCardValidationDataOutput AWS API Documentation
    #
    class GenerateCardValidationDataOutput < Struct.new(
      :key_arn,
      :key_check_value,
      :validation_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] generation_attributes
    #   The attributes and data values to use for MAC generation within
    #   Amazon Web Services Payment Cryptography.
    #   @return [Types::MacAttributes]
    #
    # @!attribute [rw] key_identifier
    #   The `keyARN` of the MAC generation encryption key.
    #   @return [String]
    #
    # @!attribute [rw] mac_length
    #   The length of a MAC under generation.
    #   @return [Integer]
    #
    # @!attribute [rw] message_data
    #   The data for which a MAC is under generation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/GenerateMacInput AWS API Documentation
    #
    class GenerateMacInput < Struct.new(
      :generation_attributes,
      :key_identifier,
      :mac_length,
      :message_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_arn
    #   The `keyARN` of the encryption key that Amazon Web Services Payment
    #   Cryptography uses for MAC generation.
    #   @return [String]
    #
    # @!attribute [rw] key_check_value
    #   The key check value (KCV) of the encryption key. The KCV is used to
    #   check if all parties holding a given key have the same key or to
    #   detect that a key has changed. Amazon Web Services Payment
    #   Cryptography calculates the KCV by using standard algorithms,
    #   typically by encrypting 8 or 16 bytes or "00" or "01" and then
    #   truncating the result to the first 3 bytes, or 6 hex digits, of the
    #   resulting cryptogram.
    #   @return [String]
    #
    # @!attribute [rw] mac
    #   The MAC cryptogram generated within Amazon Web Services Payment
    #   Cryptography.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/GenerateMacOutput AWS API Documentation
    #
    class GenerateMacOutput < Struct.new(
      :key_arn,
      :key_check_value,
      :mac)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] encryption_key_identifier
    #   The `keyARN` of the PEK that Amazon Web Services Payment
    #   Cryptography uses to encrypt the PIN Block.
    #   @return [String]
    #
    # @!attribute [rw] generation_attributes
    #   The attributes and values to use for PIN, PVV, or PIN Offset
    #   generation.
    #   @return [Types::PinGenerationAttributes]
    #
    # @!attribute [rw] generation_key_identifier
    #   The `keyARN` of the PEK that Amazon Web Services Payment
    #   Cryptography uses for pin data generation.
    #   @return [String]
    #
    # @!attribute [rw] pin_block_format
    #   The PIN encoding format for pin data generation as specified in ISO
    #   9564. Amazon Web Services Payment Cryptography supports
    #   `ISO_Format_0` and `ISO_Format_3`.
    #
    #   The `ISO_Format_0` PIN block format is equivalent to the ANSI X9.8,
    #   VISA-1, and ECI-1 PIN block formats. It is similar to a VISA-4 PIN
    #   block format. It supports a PIN from 4 to 12 digits in length.
    #
    #   The `ISO_Format_3` PIN block format is the same as `ISO_Format_0`
    #   except that the fill digits are random values from 10 to 15.
    #   @return [String]
    #
    # @!attribute [rw] pin_data_length
    #   The length of PIN under generation.
    #   @return [Integer]
    #
    # @!attribute [rw] primary_account_number
    #   The Primary Account Number (PAN), a unique identifier for a payment
    #   credit or debit card that associates the card with a specific
    #   account holder.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/GeneratePinDataInput AWS API Documentation
    #
    class GeneratePinDataInput < Struct.new(
      :encryption_key_identifier,
      :generation_attributes,
      :generation_key_identifier,
      :pin_block_format,
      :pin_data_length,
      :primary_account_number)
      SENSITIVE = [:primary_account_number]
      include Aws::Structure
    end

    # @!attribute [rw] encrypted_pin_block
    #   The PIN block encrypted under PEK from Amazon Web Services Payment
    #   Cryptography. The encrypted PIN block is a composite of PAN (Primary
    #   Account Number) and PIN (Personal Identification Number), generated
    #   in accordance with ISO 9564 standard.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key_arn
    #   The `keyARN` of the PEK that Amazon Web Services Payment
    #   Cryptography uses for encrypted pin block generation.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key_check_value
    #   The key check value (KCV) of the encryption key. The KCV is used to
    #   check if all parties holding a given key have the same key or to
    #   detect that a key has changed. Amazon Web Services Payment
    #   Cryptography calculates the KCV by using standard algorithms,
    #   typically by encrypting 8 or 16 bytes or "00" or "01" and then
    #   truncating the result to the first 3 bytes, or 6 hex digits, of the
    #   resulting cryptogram.
    #   @return [String]
    #
    # @!attribute [rw] generation_key_arn
    #   The `keyARN` of the pin data generation key that Amazon Web Services
    #   Payment Cryptography uses for PIN, PVV or PIN Offset generation.
    #   @return [String]
    #
    # @!attribute [rw] generation_key_check_value
    #   The key check value (KCV) of the encryption key. The KCV is used to
    #   check if all parties holding a given key have the same key or to
    #   detect that a key has changed. Amazon Web Services Payment
    #   Cryptography calculates the KCV by using standard algorithms,
    #   typically by encrypting 8 or 16 bytes or "00" or "01" and then
    #   truncating the result to the first 3 bytes, or 6 hex digits, of the
    #   resulting cryptogram.
    #   @return [String]
    #
    # @!attribute [rw] pin_data
    #   The attributes and values Amazon Web Services Payment Cryptography
    #   uses for pin data generation.
    #   @return [Types::PinData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/GeneratePinDataOutput AWS API Documentation
    #
    class GeneratePinDataOutput < Struct.new(
      :encrypted_pin_block,
      :encryption_key_arn,
      :encryption_key_check_value,
      :generation_key_arn,
      :generation_key_check_value,
      :pin_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameters that are required to generate or verify Ibm3624 natural
    # PIN.
    #
    # @!attribute [rw] decimalization_table
    #   The decimalization table to use for IBM 3624 PIN algorithm. The
    #   table is used to convert the algorithm intermediate result from
    #   hexadecimal characters to decimal.
    #   @return [String]
    #
    # @!attribute [rw] pin_validation_data
    #   The unique data for cardholder identification.
    #   @return [String]
    #
    # @!attribute [rw] pin_validation_data_pad_character
    #   The padding character for validation data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/Ibm3624NaturalPin AWS API Documentation
    #
    class Ibm3624NaturalPin < Struct.new(
      :decimalization_table,
      :pin_validation_data,
      :pin_validation_data_pad_character)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameters that are required to generate or verify Ibm3624 PIN from
    # offset PIN.
    #
    # @!attribute [rw] decimalization_table
    #   The decimalization table to use for IBM 3624 PIN algorithm. The
    #   table is used to convert the algorithm intermediate result from
    #   hexadecimal characters to decimal.
    #   @return [String]
    #
    # @!attribute [rw] pin_offset
    #   The PIN offset value.
    #   @return [String]
    #
    # @!attribute [rw] pin_validation_data
    #   The unique data for cardholder identification.
    #   @return [String]
    #
    # @!attribute [rw] pin_validation_data_pad_character
    #   The padding character for validation data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/Ibm3624PinFromOffset AWS API Documentation
    #
    class Ibm3624PinFromOffset < Struct.new(
      :decimalization_table,
      :pin_offset,
      :pin_validation_data,
      :pin_validation_data_pad_character)
      SENSITIVE = []
      include Aws::Structure
    end

    # Pparameters that are required to generate or verify Ibm3624 PIN offset
    # PIN.
    #
    # @!attribute [rw] decimalization_table
    #   The decimalization table to use for IBM 3624 PIN algorithm. The
    #   table is used to convert the algorithm intermediate result from
    #   hexadecimal characters to decimal.
    #   @return [String]
    #
    # @!attribute [rw] encrypted_pin_block
    #   The encrypted PIN block data. According to ISO 9564 standard, a PIN
    #   Block is an encoded representation of a payment card Personal
    #   Account Number (PAN) and the cardholder Personal Identification
    #   Number (PIN).
    #   @return [String]
    #
    # @!attribute [rw] pin_validation_data
    #   The unique data for cardholder identification.
    #   @return [String]
    #
    # @!attribute [rw] pin_validation_data_pad_character
    #   The padding character for validation data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/Ibm3624PinOffset AWS API Documentation
    #
    class Ibm3624PinOffset < Struct.new(
      :decimalization_table,
      :encrypted_pin_block,
      :pin_validation_data,
      :pin_validation_data_pad_character)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameters that are required to generate or verify Ibm3624 PIN
    # verification PIN.
    #
    # @!attribute [rw] decimalization_table
    #   The decimalization table to use for IBM 3624 PIN algorithm. The
    #   table is used to convert the algorithm intermediate result from
    #   hexadecimal characters to decimal.
    #   @return [String]
    #
    # @!attribute [rw] pin_offset
    #   The PIN offset value.
    #   @return [String]
    #
    # @!attribute [rw] pin_validation_data
    #   The unique data for cardholder identification.
    #   @return [String]
    #
    # @!attribute [rw] pin_validation_data_pad_character
    #   The padding character for validation data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/Ibm3624PinVerification AWS API Documentation
    #
    class Ibm3624PinVerification < Struct.new(
      :decimalization_table,
      :pin_offset,
      :pin_validation_data,
      :pin_validation_data_pad_character)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameters that are required to generate or verify Ibm3624 random PIN.
    #
    # @!attribute [rw] decimalization_table
    #   The decimalization table to use for IBM 3624 PIN algorithm. The
    #   table is used to convert the algorithm intermediate result from
    #   hexadecimal characters to decimal.
    #   @return [String]
    #
    # @!attribute [rw] pin_validation_data
    #   The unique data for cardholder identification.
    #   @return [String]
    #
    # @!attribute [rw] pin_validation_data_pad_character
    #   The padding character for validation data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/Ibm3624RandomPin AWS API Documentation
    #
    class Ibm3624RandomPin < Struct.new(
      :decimalization_table,
      :pin_validation_data,
      :pin_validation_data_pad_character)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request processing has failed because of an unknown error,
    # exception, or failure.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameters required for DUKPT MAC generation and verification.
    #
    # @!attribute [rw] dukpt_derivation_type
    #   The key type derived using DUKPT from a Base Derivation Key (BDK)
    #   and Key Serial Number (KSN). This must be less than or equal to the
    #   strength of the BDK. For example, you can't use `AES_128` as a
    #   derivation type for a BDK of `AES_128` or `TDES_2KEY`.
    #   @return [String]
    #
    # @!attribute [rw] dukpt_key_variant
    #   The type of use of DUKPT, which can be MAC generation, MAC
    #   verification, or both.
    #   @return [String]
    #
    # @!attribute [rw] key_serial_number
    #   The unique identifier known as Key Serial Number (KSN) that comes
    #   from an encrypting device using DUKPT encryption method. The KSN is
    #   derived from the encrypting device unique identifier and an internal
    #   transaction counter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/MacAlgorithmDukpt AWS API Documentation
    #
    class MacAlgorithmDukpt < Struct.new(
      :dukpt_derivation_type,
      :dukpt_key_variant,
      :key_serial_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameters that are required for EMV MAC generation and verification.
    #
    # @!attribute [rw] major_key_derivation_mode
    #   The method to use when deriving the master key for EMV MAC
    #   generation or verification.
    #   @return [String]
    #
    # @!attribute [rw] pan_sequence_number
    #   A number that identifies and differentiates payment cards with the
    #   same Primary Account Number (PAN).
    #   @return [String]
    #
    # @!attribute [rw] primary_account_number
    #   The Primary Account Number (PAN), a unique identifier for a payment
    #   credit or debit card and associates the card to a specific account
    #   holder.
    #   @return [String]
    #
    # @!attribute [rw] session_key_derivation_mode
    #   The method of deriving a session key for EMV MAC generation or
    #   verification.
    #   @return [String]
    #
    # @!attribute [rw] session_key_derivation_value
    #   Parameters that are required to generate session key for EMV
    #   generation and verification.
    #   @return [Types::SessionKeyDerivationValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/MacAlgorithmEmv AWS API Documentation
    #
    class MacAlgorithmEmv < Struct.new(
      :major_key_derivation_mode,
      :pan_sequence_number,
      :primary_account_number,
      :session_key_derivation_mode,
      :session_key_derivation_value)
      SENSITIVE = [:primary_account_number]
      include Aws::Structure
    end

    # Parameters that are required for DUKPT, HMAC, or EMV MAC generation or
    # verification.
    #
    # @note MacAttributes is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] algorithm
    #   The encryption algorithm for MAC generation or verification.
    #   @return [String]
    #
    # @!attribute [rw] dukpt_cmac
    #   Parameters that are required for MAC generation or verification
    #   using DUKPT CMAC algorithm.
    #   @return [Types::MacAlgorithmDukpt]
    #
    # @!attribute [rw] dukpt_iso_9797_algorithm_1
    #   Parameters that are required for MAC generation or verification
    #   using DUKPT ISO 9797 algorithm1.
    #   @return [Types::MacAlgorithmDukpt]
    #
    # @!attribute [rw] dukpt_iso_9797_algorithm_3
    #   Parameters that are required for MAC generation or verification
    #   using DUKPT ISO 9797 algorithm2.
    #   @return [Types::MacAlgorithmDukpt]
    #
    # @!attribute [rw] emv_mac
    #   Parameters that are required for MAC generation or verification
    #   using EMV MAC algorithm.
    #   @return [Types::MacAlgorithmEmv]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/MacAttributes AWS API Documentation
    #
    class MacAttributes < Struct.new(
      :algorithm,
      :dukpt_cmac,
      :dukpt_iso_9797_algorithm_1,
      :dukpt_iso_9797_algorithm_3,
      :emv_mac,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Algorithm < MacAttributes; end
      class DukptCmac < MacAttributes; end
      class DukptIso9797Algorithm1 < MacAttributes; end
      class DukptIso9797Algorithm3 < MacAttributes; end
      class EmvMac < MacAttributes; end
      class Unknown < MacAttributes; end
    end

    # Parameters that are required to generate, translate, or verify PIN
    # data.
    #
    # @note PinData is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of PinData corresponding to the set member.
    #
    # @!attribute [rw] pin_offset
    #   The PIN offset value.
    #   @return [String]
    #
    # @!attribute [rw] verification_value
    #   The unique data to identify a cardholder. In most cases, this is the
    #   same as cardholder's Primary Account Number (PAN). If a value is
    #   not provided, it defaults to PAN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/PinData AWS API Documentation
    #
    class PinData < Struct.new(
      :pin_offset,
      :verification_value,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class PinOffset < PinData; end
      class VerificationValue < PinData; end
      class Unknown < PinData; end
    end

    # Parameters that are required for PIN data generation.
    #
    # @note PinGenerationAttributes is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] ibm_3624_natural_pin
    #   Parameters that are required to generate or verify Ibm3624 natural
    #   PIN.
    #   @return [Types::Ibm3624NaturalPin]
    #
    # @!attribute [rw] ibm_3624_pin_from_offset
    #   Parameters that are required to generate or verify Ibm3624 PIN from
    #   offset PIN.
    #   @return [Types::Ibm3624PinFromOffset]
    #
    # @!attribute [rw] ibm_3624_pin_offset
    #   Parameters that are required to generate or verify Ibm3624 PIN
    #   offset PIN.
    #   @return [Types::Ibm3624PinOffset]
    #
    # @!attribute [rw] ibm_3624_random_pin
    #   Parameters that are required to generate or verify Ibm3624 random
    #   PIN.
    #   @return [Types::Ibm3624RandomPin]
    #
    # @!attribute [rw] visa_pin
    #   Parameters that are required to generate or verify Visa PIN.
    #   @return [Types::VisaPin]
    #
    # @!attribute [rw] visa_pin_verification_value
    #   Parameters that are required to generate or verify Visa PIN
    #   Verification Value (PVV).
    #   @return [Types::VisaPinVerificationValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/PinGenerationAttributes AWS API Documentation
    #
    class PinGenerationAttributes < Struct.new(
      :ibm_3624_natural_pin,
      :ibm_3624_pin_from_offset,
      :ibm_3624_pin_offset,
      :ibm_3624_random_pin,
      :visa_pin,
      :visa_pin_verification_value,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Ibm3624NaturalPin < PinGenerationAttributes; end
      class Ibm3624PinFromOffset < PinGenerationAttributes; end
      class Ibm3624PinOffset < PinGenerationAttributes; end
      class Ibm3624RandomPin < PinGenerationAttributes; end
      class VisaPin < PinGenerationAttributes; end
      class VisaPinVerificationValue < PinGenerationAttributes; end
      class Unknown < PinGenerationAttributes; end
    end

    # Parameters that are required for PIN data verification.
    #
    # @note PinVerificationAttributes is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] ibm_3624_pin
    #   Parameters that are required to generate or verify Ibm3624 PIN.
    #   @return [Types::Ibm3624PinVerification]
    #
    # @!attribute [rw] visa_pin
    #   Parameters that are required to generate or verify Visa PIN.
    #   @return [Types::VisaPinVerification]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/PinVerificationAttributes AWS API Documentation
    #
    class PinVerificationAttributes < Struct.new(
      :ibm_3624_pin,
      :visa_pin,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Ibm3624Pin < PinVerificationAttributes; end
      class VisaPin < PinVerificationAttributes; end
      class Unknown < PinVerificationAttributes; end
    end

    # @!attribute [rw] cipher_text
    #   Ciphertext to be encrypted. The minimum allowed length is 16 bytes
    #   and maximum allowed length is 4096 bytes.
    #   @return [String]
    #
    # @!attribute [rw] incoming_encryption_attributes
    #   The attributes and values for incoming ciphertext.
    #   @return [Types::ReEncryptionAttributes]
    #
    # @!attribute [rw] incoming_key_identifier
    #   The `keyARN` of the encryption key of incoming ciphertext data.
    #   @return [String]
    #
    # @!attribute [rw] outgoing_encryption_attributes
    #   The attributes and values for outgoing ciphertext data after
    #   encryption by Amazon Web Services Payment Cryptography.
    #   @return [Types::ReEncryptionAttributes]
    #
    # @!attribute [rw] outgoing_key_identifier
    #   The `keyARN` of the encryption key of outgoing ciphertext data after
    #   encryption by Amazon Web Services Payment Cryptography.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/ReEncryptDataInput AWS API Documentation
    #
    class ReEncryptDataInput < Struct.new(
      :cipher_text,
      :incoming_encryption_attributes,
      :incoming_key_identifier,
      :outgoing_encryption_attributes,
      :outgoing_key_identifier)
      SENSITIVE = [:cipher_text]
      include Aws::Structure
    end

    # @!attribute [rw] cipher_text
    #   The encrypted ciphertext.
    #   @return [String]
    #
    # @!attribute [rw] key_arn
    #   The keyARN (Amazon Resource Name) of the encryption key that Amazon
    #   Web Services Payment Cryptography uses for plaintext encryption.
    #   @return [String]
    #
    # @!attribute [rw] key_check_value
    #   The key check value (KCV) of the encryption key. The KCV is used to
    #   check if all parties holding a given key have the same key or to
    #   detect that a key has changed. Amazon Web Services Payment
    #   Cryptography calculates the KCV by using standard algorithms,
    #   typically by encrypting 8 or 16 bytes or "00" or "01" and then
    #   truncating the result to the first 3 bytes, or 6 hex digits, of the
    #   resulting cryptogram.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/ReEncryptDataOutput AWS API Documentation
    #
    class ReEncryptDataOutput < Struct.new(
      :cipher_text,
      :key_arn,
      :key_check_value)
      SENSITIVE = [:cipher_text]
      include Aws::Structure
    end

    # Parameters that are required to perform reencryption operation.
    #
    # @note ReEncryptionAttributes is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] dukpt
    #   Parameters that are required to encrypt plaintext data using DUKPT.
    #   @return [Types::DukptEncryptionAttributes]
    #
    # @!attribute [rw] symmetric
    #   Parameters that are required to encrypt data using symmetric keys.
    #   @return [Types::SymmetricEncryptionAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/ReEncryptionAttributes AWS API Documentation
    #
    class ReEncryptionAttributes < Struct.new(
      :dukpt,
      :symmetric,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Dukpt < ReEncryptionAttributes; end
      class Symmetric < ReEncryptionAttributes; end
      class Unknown < ReEncryptionAttributes; end
    end

    # The request was denied due to an invalid resource error.
    #
    # @!attribute [rw] resource_id
    #   The resource that is missing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameters to derive session key for an Amex payment card.
    #
    # @!attribute [rw] pan_sequence_number
    #   A number that identifies and differentiates payment cards with the
    #   same Primary Account Number (PAN).
    #   @return [String]
    #
    # @!attribute [rw] primary_account_number
    #   The Primary Account Number (PAN) of the cardholder. A PAN is a
    #   unique identifier for a payment credit or debit card and associates
    #   the card to a specific account holder.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/SessionKeyAmex AWS API Documentation
    #
    class SessionKeyAmex < Struct.new(
      :pan_sequence_number,
      :primary_account_number)
      SENSITIVE = [:primary_account_number]
      include Aws::Structure
    end

    # Parameters to derive a session key for Authorization Response
    # Cryptogram (ARQC) verification.
    #
    # @note SessionKeyDerivation is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] amex
    #   Parameters to derive session key for an Amex payment card for ARQC
    #   verification.
    #   @return [Types::SessionKeyAmex]
    #
    # @!attribute [rw] emv_2000
    #   Parameters to derive session key for an Emv2000 payment card for
    #   ARQC verification.
    #   @return [Types::SessionKeyEmv2000]
    #
    # @!attribute [rw] emv_common
    #   Parameters to derive session key for an Emv common payment card for
    #   ARQC verification.
    #   @return [Types::SessionKeyEmvCommon]
    #
    # @!attribute [rw] mastercard
    #   Parameters to derive session key for a Mastercard payment card for
    #   ARQC verification.
    #   @return [Types::SessionKeyMastercard]
    #
    # @!attribute [rw] visa
    #   Parameters to derive session key for a Visa payment cardfor ARQC
    #   verification.
    #   @return [Types::SessionKeyVisa]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/SessionKeyDerivation AWS API Documentation
    #
    class SessionKeyDerivation < Struct.new(
      :amex,
      :emv_2000,
      :emv_common,
      :mastercard,
      :visa,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Amex < SessionKeyDerivation; end
      class Emv2000 < SessionKeyDerivation; end
      class EmvCommon < SessionKeyDerivation; end
      class Mastercard < SessionKeyDerivation; end
      class Visa < SessionKeyDerivation; end
      class Unknown < SessionKeyDerivation; end
    end

    # Parameters to derive session key value using a MAC EMV algorithm.
    #
    # @note SessionKeyDerivationValue is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] application_cryptogram
    #   The cryptogram provided by the terminal during transaction
    #   processing.
    #   @return [String]
    #
    # @!attribute [rw] application_transaction_counter
    #   The transaction counter that is provided by the terminal during
    #   transaction processing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/SessionKeyDerivationValue AWS API Documentation
    #
    class SessionKeyDerivationValue < Struct.new(
      :application_cryptogram,
      :application_transaction_counter,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ApplicationCryptogram < SessionKeyDerivationValue; end
      class ApplicationTransactionCounter < SessionKeyDerivationValue; end
      class Unknown < SessionKeyDerivationValue; end
    end

    # Parameters to derive session key for an Emv2000 payment card for ARQC
    # verification.
    #
    # @!attribute [rw] application_transaction_counter
    #   The transaction counter that is provided by the terminal during
    #   transaction processing.
    #   @return [String]
    #
    # @!attribute [rw] pan_sequence_number
    #   A number that identifies and differentiates payment cards with the
    #   same Primary Account Number (PAN).
    #   @return [String]
    #
    # @!attribute [rw] primary_account_number
    #   The Primary Account Number (PAN) of the cardholder. A PAN is a
    #   unique identifier for a payment credit or debit card and associates
    #   the card to a specific account holder.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/SessionKeyEmv2000 AWS API Documentation
    #
    class SessionKeyEmv2000 < Struct.new(
      :application_transaction_counter,
      :pan_sequence_number,
      :primary_account_number)
      SENSITIVE = [:primary_account_number]
      include Aws::Structure
    end

    # Parameters to derive session key for an Emv common payment card for
    # ARQC verification.
    #
    # @!attribute [rw] application_transaction_counter
    #   The transaction counter that is provided by the terminal during
    #   transaction processing.
    #   @return [String]
    #
    # @!attribute [rw] pan_sequence_number
    #   A number that identifies and differentiates payment cards with the
    #   same Primary Account Number (PAN).
    #   @return [String]
    #
    # @!attribute [rw] primary_account_number
    #   The Primary Account Number (PAN) of the cardholder. A PAN is a
    #   unique identifier for a payment credit or debit card and associates
    #   the card to a specific account holder.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/SessionKeyEmvCommon AWS API Documentation
    #
    class SessionKeyEmvCommon < Struct.new(
      :application_transaction_counter,
      :pan_sequence_number,
      :primary_account_number)
      SENSITIVE = [:primary_account_number]
      include Aws::Structure
    end

    # Parameters to derive session key for Mastercard payment card for ARQC
    # verification.
    #
    # @!attribute [rw] application_transaction_counter
    #   The transaction counter that is provided by the terminal during
    #   transaction processing.
    #   @return [String]
    #
    # @!attribute [rw] pan_sequence_number
    #   A number that identifies and differentiates payment cards with the
    #   same Primary Account Number (PAN).
    #   @return [String]
    #
    # @!attribute [rw] primary_account_number
    #   The Primary Account Number (PAN) of the cardholder. A PAN is a
    #   unique identifier for a payment credit or debit card and associates
    #   the card to a specific account holder.
    #   @return [String]
    #
    # @!attribute [rw] unpredictable_number
    #   A random number generated by the issuer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/SessionKeyMastercard AWS API Documentation
    #
    class SessionKeyMastercard < Struct.new(
      :application_transaction_counter,
      :pan_sequence_number,
      :primary_account_number,
      :unpredictable_number)
      SENSITIVE = [:primary_account_number]
      include Aws::Structure
    end

    # Parameters to derive session key for Visa payment card for ARQC
    # verification.
    #
    # @!attribute [rw] pan_sequence_number
    #   A number that identifies and differentiates payment cards with the
    #   same Primary Account Number (PAN).
    #   @return [String]
    #
    # @!attribute [rw] primary_account_number
    #   The Primary Account Number (PAN) of the cardholder. A PAN is a
    #   unique identifier for a payment credit or debit card and associates
    #   the card to a specific account holder.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/SessionKeyVisa AWS API Documentation
    #
    class SessionKeyVisa < Struct.new(
      :pan_sequence_number,
      :primary_account_number)
      SENSITIVE = [:primary_account_number]
      include Aws::Structure
    end

    # Parameters requried to encrypt plaintext data using symmetric keys.
    #
    # @!attribute [rw] initialization_vector
    #   An input to cryptographic primitive used to provide the intial
    #   state. The `InitializationVector` is typically required have a
    #   random or psuedo-random value, but sometimes it only needs to be
    #   unpredictable or unique. If a value is not provided, Amazon Web
    #   Services Payment Cryptography generates a random value.
    #   @return [String]
    #
    # @!attribute [rw] mode
    #   The block cipher mode of operation. Block ciphers are designed to
    #   encrypt a block of data of fixed size (for example, 128 bits). The
    #   size of the input block is usually same as the size of the encrypted
    #   output block, while the key length can be different. A mode of
    #   operation describes how to repeatedly apply a cipher's single-block
    #   operation to securely transform amounts of data larger than a block.
    #   @return [String]
    #
    # @!attribute [rw] padding_type
    #   The padding to be included with the data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/SymmetricEncryptionAttributes AWS API Documentation
    #
    class SymmetricEncryptionAttributes < Struct.new(
      :initialization_vector,
      :mode,
      :padding_type)
      SENSITIVE = [:initialization_vector]
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] encrypted_pin_block
    #   The encrypted PIN block data that Amazon Web Services Payment
    #   Cryptography translates.
    #   @return [String]
    #
    # @!attribute [rw] incoming_dukpt_attributes
    #   The attributes and values to use for incoming DUKPT encryption key
    #   for PIN block tranlation.
    #   @return [Types::DukptDerivationAttributes]
    #
    # @!attribute [rw] incoming_key_identifier
    #   The `keyARN` of the encryption key under which incoming PIN block
    #   data is encrypted. This key type can be PEK or BDK.
    #   @return [String]
    #
    # @!attribute [rw] incoming_translation_attributes
    #   The format of the incoming PIN block data for tranlation within
    #   Amazon Web Services Payment Cryptography.
    #   @return [Types::TranslationIsoFormats]
    #
    # @!attribute [rw] outgoing_dukpt_attributes
    #   The attributes and values to use for outgoing DUKPT encryption key
    #   after PIN block translation.
    #   @return [Types::DukptDerivationAttributes]
    #
    # @!attribute [rw] outgoing_key_identifier
    #   The `keyARN` of the encryption key for encrypting outgoing PIN block
    #   data. This key type can be PEK or BDK.
    #   @return [String]
    #
    # @!attribute [rw] outgoing_translation_attributes
    #   The format of the outgoing PIN block data after tranlation by Amazon
    #   Web Services Payment Cryptography.
    #   @return [Types::TranslationIsoFormats]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/TranslatePinDataInput AWS API Documentation
    #
    class TranslatePinDataInput < Struct.new(
      :encrypted_pin_block,
      :incoming_dukpt_attributes,
      :incoming_key_identifier,
      :incoming_translation_attributes,
      :outgoing_dukpt_attributes,
      :outgoing_key_identifier,
      :outgoing_translation_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_arn
    #   The `keyARN` of the encryption key that Amazon Web Services Payment
    #   Cryptography uses to encrypt outgoing PIN block data after
    #   translation.
    #   @return [String]
    #
    # @!attribute [rw] key_check_value
    #   The key check value (KCV) of the encryption key. The KCV is used to
    #   check if all parties holding a given key have the same key or to
    #   detect that a key has changed. Amazon Web Services Payment
    #   Cryptography calculates the KCV by using standard algorithms,
    #   typically by encrypting 8 or 16 bytes or "00" or "01" and then
    #   truncating the result to the first 3 bytes, or 6 hex digits, of the
    #   resulting cryptogram.
    #   @return [String]
    #
    # @!attribute [rw] pin_block
    #   The ougoing encrypted PIN block data after tranlation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/TranslatePinDataOutput AWS API Documentation
    #
    class TranslatePinDataOutput < Struct.new(
      :key_arn,
      :key_check_value,
      :pin_block)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameters that are required for translation between ISO9564 PIN block
    # formats 0,1,3,4.
    #
    # @note TranslationIsoFormats is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] iso_format_0
    #   Parameters that are required for ISO9564 PIN format 0 tranlation.
    #   @return [Types::TranslationPinDataIsoFormat034]
    #
    # @!attribute [rw] iso_format_1
    #   Parameters that are required for ISO9564 PIN format 1 tranlation.
    #   @return [Types::TranslationPinDataIsoFormat1]
    #
    # @!attribute [rw] iso_format_3
    #   Parameters that are required for ISO9564 PIN format 3 tranlation.
    #   @return [Types::TranslationPinDataIsoFormat034]
    #
    # @!attribute [rw] iso_format_4
    #   Parameters that are required for ISO9564 PIN format 4 tranlation.
    #   @return [Types::TranslationPinDataIsoFormat034]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/TranslationIsoFormats AWS API Documentation
    #
    class TranslationIsoFormats < Struct.new(
      :iso_format_0,
      :iso_format_1,
      :iso_format_3,
      :iso_format_4,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class IsoFormat0 < TranslationIsoFormats; end
      class IsoFormat1 < TranslationIsoFormats; end
      class IsoFormat3 < TranslationIsoFormats; end
      class IsoFormat4 < TranslationIsoFormats; end
      class Unknown < TranslationIsoFormats; end
    end

    # Parameters that are required for tranlation between ISO9564 PIN format
    # 0,3,4 tranlation.
    #
    # @!attribute [rw] primary_account_number
    #   The Primary Account Number (PAN) of the cardholder. A PAN is a
    #   unique identifier for a payment credit or debit card and associates
    #   the card to a specific account holder.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/TranslationPinDataIsoFormat034 AWS API Documentation
    #
    class TranslationPinDataIsoFormat034 < Struct.new(
      :primary_account_number)
      SENSITIVE = [:primary_account_number]
      include Aws::Structure
    end

    # Parameters that are required for ISO9564 PIN format 1 tranlation.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/TranslationPinDataIsoFormat1 AWS API Documentation
    #
    class TranslationPinDataIsoFormat1 < Aws::EmptyStructure; end

    # The request was denied due to an invalid request error.
    #
    # @!attribute [rw] field_list
    #   The request was denied due to an invalid request error.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :field_list,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to an invalid request error.
    #
    # @!attribute [rw] message
    #   The request was denied due to an invalid request error.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The request was denied due to an invalid request error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :message,
      :path)
      SENSITIVE = []
      include Aws::Structure
    end

    # This request failed verification.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/VerificationFailedException AWS API Documentation
    #
    class VerificationFailedException < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auth_request_cryptogram
    #   The auth request cryptogram imported into Amazon Web Services
    #   Payment Cryptography for ARQC verification using a major encryption
    #   key and transaction data.
    #   @return [String]
    #
    # @!attribute [rw] auth_response_attributes
    #   The attributes and values for auth request cryptogram verification.
    #   These parameters are required in case using ARPC Method 1 or Method
    #   2 for ARQC verification.
    #   @return [Types::CryptogramAuthResponse]
    #
    # @!attribute [rw] key_identifier
    #   The `keyARN` of the major encryption key that Amazon Web Services
    #   Payment Cryptography uses for ARQC verification.
    #   @return [String]
    #
    # @!attribute [rw] major_key_derivation_mode
    #   The method to use when deriving the major encryption key for ARQC
    #   verification within Amazon Web Services Payment Cryptography. The
    #   same key derivation mode was used for ARQC generation outside of
    #   Amazon Web Services Payment Cryptography.
    #   @return [String]
    #
    # @!attribute [rw] session_key_derivation_attributes
    #   The attributes and values to use for deriving a session key for ARQC
    #   verification within Amazon Web Services Payment Cryptography. The
    #   same attributes were used for ARQC generation outside of Amazon Web
    #   Services Payment Cryptography.
    #   @return [Types::SessionKeyDerivation]
    #
    # @!attribute [rw] transaction_data
    #   The transaction data that Amazon Web Services Payment Cryptography
    #   uses for ARQC verification. The same transaction is used for ARQC
    #   generation outside of Amazon Web Services Payment Cryptography.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/VerifyAuthRequestCryptogramInput AWS API Documentation
    #
    class VerifyAuthRequestCryptogramInput < Struct.new(
      :auth_request_cryptogram,
      :auth_response_attributes,
      :key_identifier,
      :major_key_derivation_mode,
      :session_key_derivation_attributes,
      :transaction_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auth_response_value
    #   The result for ARQC verification or ARPC generation within Amazon
    #   Web Services Payment Cryptography.
    #   @return [String]
    #
    # @!attribute [rw] key_arn
    #   The `keyARN` of the major encryption key that Amazon Web Services
    #   Payment Cryptography uses for ARQC verification.
    #   @return [String]
    #
    # @!attribute [rw] key_check_value
    #   The key check value (KCV) of the encryption key. The KCV is used to
    #   check if all parties holding a given key have the same key or to
    #   detect that a key has changed. Amazon Web Services Payment
    #   Cryptography calculates the KCV by using standard algorithms,
    #   typically by encrypting 8 or 16 bytes or "00" or "01" and then
    #   truncating the result to the first 3 bytes, or 6 hex digits, of the
    #   resulting cryptogram.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/VerifyAuthRequestCryptogramOutput AWS API Documentation
    #
    class VerifyAuthRequestCryptogramOutput < Struct.new(
      :auth_response_value,
      :key_arn,
      :key_check_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_identifier
    #   The `keyARN` of the CVK encryption key that Amazon Web Services
    #   Payment Cryptography uses to verify card data.
    #   @return [String]
    #
    # @!attribute [rw] primary_account_number
    #   The Primary Account Number (PAN), a unique identifier for a payment
    #   credit or debit card that associates the card with a specific
    #   account holder.
    #   @return [String]
    #
    # @!attribute [rw] validation_data
    #   The CVV or CSC value for use for card data verification within
    #   Amazon Web Services Payment Cryptography.
    #   @return [String]
    #
    # @!attribute [rw] verification_attributes
    #   The algorithm to use for verification of card data within Amazon Web
    #   Services Payment Cryptography.
    #   @return [Types::CardVerificationAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/VerifyCardValidationDataInput AWS API Documentation
    #
    class VerifyCardValidationDataInput < Struct.new(
      :key_identifier,
      :primary_account_number,
      :validation_data,
      :verification_attributes)
      SENSITIVE = [:primary_account_number]
      include Aws::Structure
    end

    # @!attribute [rw] key_arn
    #   The `keyARN` of the CVK encryption key that Amazon Web Services
    #   Payment Cryptography uses to verify CVV or CSC.
    #   @return [String]
    #
    # @!attribute [rw] key_check_value
    #   The key check value (KCV) of the encryption key. The KCV is used to
    #   check if all parties holding a given key have the same key or to
    #   detect that a key has changed. Amazon Web Services Payment
    #   Cryptography calculates the KCV by using standard algorithms,
    #   typically by encrypting 8 or 16 bytes or "00" or "01" and then
    #   truncating the result to the first 3 bytes, or 6 hex digits, of the
    #   resulting cryptogram.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/VerifyCardValidationDataOutput AWS API Documentation
    #
    class VerifyCardValidationDataOutput < Struct.new(
      :key_arn,
      :key_check_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_identifier
    #   The `keyARN` of the encryption key that Amazon Web Services Payment
    #   Cryptography uses to verify MAC data.
    #   @return [String]
    #
    # @!attribute [rw] mac
    #   The MAC being verified.
    #   @return [String]
    #
    # @!attribute [rw] mac_length
    #   The length of the MAC.
    #   @return [Integer]
    #
    # @!attribute [rw] message_data
    #   The data on for which MAC is under verification.
    #   @return [String]
    #
    # @!attribute [rw] verification_attributes
    #   The attributes and data values to use for MAC verification within
    #   Amazon Web Services Payment Cryptography.
    #   @return [Types::MacAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/VerifyMacInput AWS API Documentation
    #
    class VerifyMacInput < Struct.new(
      :key_identifier,
      :mac,
      :mac_length,
      :message_data,
      :verification_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_arn
    #   The `keyARN` of the encryption key that Amazon Web Services Payment
    #   Cryptography uses for MAC verification.
    #   @return [String]
    #
    # @!attribute [rw] key_check_value
    #   The key check value (KCV) of the encryption key. The KCV is used to
    #   check if all parties holding a given key have the same key or to
    #   detect that a key has changed. Amazon Web Services Payment
    #   Cryptography calculates the KCV by using standard algorithms,
    #   typically by encrypting 8 or 16 bytes or "00" or "01" and then
    #   truncating the result to the first 3 bytes, or 6 hex digits, of the
    #   resulting cryptogram.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/VerifyMacOutput AWS API Documentation
    #
    class VerifyMacOutput < Struct.new(
      :key_arn,
      :key_check_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dukpt_attributes
    #   The attributes and values for the DUKPT encrypted PIN block data.
    #   @return [Types::DukptAttributes]
    #
    # @!attribute [rw] encrypted_pin_block
    #   The encrypted PIN block data that Amazon Web Services Payment
    #   Cryptography verifies.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key_identifier
    #   The `keyARN` of the encryption key under which the PIN block data is
    #   encrypted. This key type can be PEK or BDK.
    #   @return [String]
    #
    # @!attribute [rw] pin_block_format
    #   The PIN encoding format for pin data generation as specified in ISO
    #   9564. Amazon Web Services Payment Cryptography supports
    #   `ISO_Format_0` and `ISO_Format_3`.
    #
    #   The `ISO_Format_0` PIN block format is equivalent to the ANSI X9.8,
    #   VISA-1, and ECI-1 PIN block formats. It is similar to a VISA-4 PIN
    #   block format. It supports a PIN from 4 to 12 digits in length.
    #
    #   The `ISO_Format_3` PIN block format is the same as `ISO_Format_0`
    #   except that the fill digits are random values from 10 to 15.
    #   @return [String]
    #
    # @!attribute [rw] pin_data_length
    #   The length of PIN being verified.
    #   @return [Integer]
    #
    # @!attribute [rw] primary_account_number
    #   The Primary Account Number (PAN), a unique identifier for a payment
    #   credit or debit card that associates the card with a specific
    #   account holder.
    #   @return [String]
    #
    # @!attribute [rw] verification_attributes
    #   The attributes and values for PIN data verification.
    #   @return [Types::PinVerificationAttributes]
    #
    # @!attribute [rw] verification_key_identifier
    #   The `keyARN` of the PIN verification key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/VerifyPinDataInput AWS API Documentation
    #
    class VerifyPinDataInput < Struct.new(
      :dukpt_attributes,
      :encrypted_pin_block,
      :encryption_key_identifier,
      :pin_block_format,
      :pin_data_length,
      :primary_account_number,
      :verification_attributes,
      :verification_key_identifier)
      SENSITIVE = [:primary_account_number]
      include Aws::Structure
    end

    # @!attribute [rw] encryption_key_arn
    #   The `keyARN` of the PEK that Amazon Web Services Payment
    #   Cryptography uses for encrypted pin block generation.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key_check_value
    #   The key check value (KCV) of the encryption key. The KCV is used to
    #   check if all parties holding a given key have the same key or to
    #   detect that a key has changed. Amazon Web Services Payment
    #   Cryptography calculates the KCV by using standard algorithms,
    #   typically by encrypting 8 or 16 bytes or "00" or "01" and then
    #   truncating the result to the first 3 bytes, or 6 hex digits, of the
    #   resulting cryptogram.
    #   @return [String]
    #
    # @!attribute [rw] verification_key_arn
    #   The `keyARN` of the PIN encryption key that Amazon Web Services
    #   Payment Cryptography uses for PIN or PIN Offset verification.
    #   @return [String]
    #
    # @!attribute [rw] verification_key_check_value
    #   The key check value (KCV) of the encryption key. The KCV is used to
    #   check if all parties holding a given key have the same key or to
    #   detect that a key has changed. Amazon Web Services Payment
    #   Cryptography calculates the KCV by using standard algorithms,
    #   typically by encrypting 8 or 16 bytes or "00" or "01" and then
    #   truncating the result to the first 3 bytes, or 6 hex digits, of the
    #   resulting cryptogram.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/VerifyPinDataOutput AWS API Documentation
    #
    class VerifyPinDataOutput < Struct.new(
      :encryption_key_arn,
      :encryption_key_check_value,
      :verification_key_arn,
      :verification_key_check_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameters that are required to generate or verify Visa PIN.
    #
    # @!attribute [rw] pin_verification_key_index
    #   The value for PIN verification index. It is used in the Visa PIN
    #   algorithm to calculate the PVV (PIN Verification Value).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/VisaPin AWS API Documentation
    #
    class VisaPin < Struct.new(
      :pin_verification_key_index)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameters that are required to generate or verify Visa PIN.
    #
    # @!attribute [rw] pin_verification_key_index
    #   The value for PIN verification index. It is used in the Visa PIN
    #   algorithm to calculate the PVV (PIN Verification Value).
    #   @return [Integer]
    #
    # @!attribute [rw] verification_value
    #   Parameters that are required to generate or verify Visa PVV (PIN
    #   Verification Value).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/VisaPinVerification AWS API Documentation
    #
    class VisaPinVerification < Struct.new(
      :pin_verification_key_index,
      :verification_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameters that are required to generate or verify Visa PVV (PIN
    # Verification Value).
    #
    # @!attribute [rw] encrypted_pin_block
    #   The encrypted PIN block data to verify.
    #   @return [String]
    #
    # @!attribute [rw] pin_verification_key_index
    #   The value for PIN verification index. It is used in the Visa PIN
    #   algorithm to calculate the PVV (PIN Verification Value).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-data-2022-02-03/VisaPinVerificationValue AWS API Documentation
    #
    class VisaPinVerificationValue < Struct.new(
      :encrypted_pin_block,
      :pin_verification_key_index)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
