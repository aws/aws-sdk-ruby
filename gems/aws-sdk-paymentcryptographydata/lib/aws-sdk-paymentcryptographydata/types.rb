# frozen_string_literal: true

# This is generated code!

module Aws::PaymentCryptographyData
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters to derive the confidentiality and integrity keys for a payment card using Amex derivation method.</p>
    # @!attribute major_key_derivation_mode
    #   <p>The method to use when deriving the master key for a payment card using Amex derivation.</p>
    #   @return [String]
    # @!attribute primary_account_number
    #   <p>The Primary Account Number (PAN) of the cardholder.</p>
    #   @return [String]
    # @!attribute pan_sequence_number
    #   <p>A number that identifies and differentiates payment cards with the same Primary Account Number (PAN). Typically 00 is used, if no value is provided by the terminal.</p>
    #   @return [String]
    # @!attribute application_transaction_counter
    #   <p>The transaction counter of the current transaction that is provided by the terminal during transaction processing.</p>
    #   @return [String]
    # @!attribute authorization_request_key_identifier
    #   <p>The <code>keyArn</code> of the issuer master key for cryptogram (IMK-AC) for the payment card.</p>
    #   @return [String]
    # @!attribute current_pin_attributes
    #   <p>The encrypted pinblock of the old pin stored on the chip card.</p>
    #   @return [Types::CurrentPinAttributes]
    class AmexAttributes < Struct.new(
      nil,
      :major_key_derivation_mode,
      :primary_account_number,
      :pan_sequence_number,
      :application_transaction_counter,
      :authorization_request_key_identifier,
      :current_pin_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Card data parameters that are required to generate a Card Security Code (CSC2) for an AMEX payment card.</p>
    # @!attribute card_expiry_date
    #   <p>The expiry date of a payment card.</p>
    #   @return [String]
    class AmexCardSecurityCodeVersion1 < Struct.new(
      nil,
      :card_expiry_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Card data parameters that are required to generate a Card Security Code (CSC2) for an AMEX payment card.</p>
    # @!attribute card_expiry_date
    #   <p>The expiry date of a payment card.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The service code of the AMEX payment card. This is different from the Card Security Code (CSC).</p>
    #   @return [String]
    class AmexCardSecurityCodeVersion2 < Struct.new(
      nil,
      :card_expiry_date,
      :service_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameter information for generating a random key for KEK validation to perform node-to-node initialization.</p>
    # @!attribute kek_validation_request
    #   <p>Parameter information for generating a KEK validation request during node-to-node initialization.</p>
    #   @return [Types::KekValidationRequest]
    # @!attribute kek_validation_response
    #   <p>Parameter information for generating a KEK validation response during node-to-node initialization.</p>
    #   @return [Types::KekValidationResponse]
    class As2805KekValidationType < Struct.new(
      :kek_validation_request,
      :kek_validation_response,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class KekValidationRequest < As2805KekValidationType; end
      class KekValidationResponse < As2805KekValidationType; end
      class Unknown < As2805KekValidationType; end
    end

    # <p>Parameter information to use a PEK derived using AS2805.</p>
    # @!attribute system_trace_audit_number
    #   <p>The system trace audit number for the transaction.</p>
    #   @return [String]
    # @!attribute transaction_amount
    #   <p>The transaction amount for the transaction.</p>
    #   @return [String]
    class As2805PekDerivationAttributes < Struct.new(
      nil,
      :system_trace_audit_number,
      :transaction_amount,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters for plaintext encryption using asymmetric keys.</p>
    # @!attribute padding_type
    #   <p>The padding to be included with the data.</p>
    #   @return [String]
    class AsymmetricEncryptionAttributes < Struct.new(
      nil,
      :padding_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Card data parameters that are required to generate Card Verification Values (CVV/CVV2), Dynamic Card Verification Values (dCVV/dCVV2), or Card Security Codes (CSC).</p>
    # @!attribute amex_card_security_code_version1
    #   <p>Card data parameters that are required to generate a Card Security Code (CSC2) for an AMEX payment card.</p>
    #   @return [Types::AmexCardSecurityCodeVersion1]
    # @!attribute amex_card_security_code_version2
    #   <p>Card data parameters that are required to generate a Card Security Code (CSC2) for an AMEX payment card.</p>
    #   @return [Types::AmexCardSecurityCodeVersion2]
    # @!attribute card_verification_value1
    #   <p>Card data parameters that are required to generate Card Verification Value (CVV) for the payment card.</p>
    #   @return [Types::CardVerificationValue1]
    # @!attribute card_verification_value2
    #   <p>Card data parameters that are required to generate Card Verification Value (CVV2) for the payment card.</p>
    #   @return [Types::CardVerificationValue2]
    # @!attribute card_holder_verification_value
    #   <p>Card data parameters that are required to generate a cardholder verification value for the payment card.</p>
    #   @return [Types::CardHolderVerificationValue]
    # @!attribute dynamic_card_verification_code
    #   <p>Card data parameters that are required to generate CDynamic Card Verification Code (dCVC) for the payment card.</p>
    #   @return [Types::DynamicCardVerificationCode]
    # @!attribute dynamic_card_verification_value
    #   <p>Card data parameters that are required to generate CDynamic Card Verification Value (dCVV) for the payment card.</p>
    #   @return [Types::DynamicCardVerificationValue]
    class CardGenerationAttributes < Struct.new(
      :amex_card_security_code_version1,
      :amex_card_security_code_version2,
      :card_verification_value1,
      :card_verification_value2,
      :card_holder_verification_value,
      :dynamic_card_verification_code,
      :dynamic_card_verification_value,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AmexCardSecurityCodeVersion1 < CardGenerationAttributes; end
      class AmexCardSecurityCodeVersion2 < CardGenerationAttributes; end
      class CardVerificationValue1 < CardGenerationAttributes; end
      class CardVerificationValue2 < CardGenerationAttributes; end
      class CardHolderVerificationValue < CardGenerationAttributes; end
      class DynamicCardVerificationCode < CardGenerationAttributes; end
      class DynamicCardVerificationValue < CardGenerationAttributes; end
      class Unknown < CardGenerationAttributes; end
    end

    # <p>Card data parameters that are required to generate a cardholder verification value for the payment card.</p>
    # @!attribute unpredictable_number
    #   <p>A random number generated by the issuer.</p>
    #   @return [String]
    # @!attribute pan_sequence_number
    #   <p>A number that identifies and differentiates payment cards with the same Primary Account Number (PAN).</p>
    #   @return [String]
    # @!attribute application_transaction_counter
    #   <p>The transaction counter value that comes from a point of sale terminal.</p>
    #   @return [String]
    class CardHolderVerificationValue < Struct.new(
      nil,
      :unpredictable_number,
      :pan_sequence_number,
      :application_transaction_counter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Card data parameters that are requried to verify Card Verification Values (CVV/CVV2), Dynamic Card Verification Values (dCVV/dCVV2), or Card Security Codes (CSC).</p>
    # @!attribute amex_card_security_code_version1
    #   <p>Card data parameters that are required to generate a Card Security Code (CSC2) for an AMEX payment card.</p>
    #   @return [Types::AmexCardSecurityCodeVersion1]
    # @!attribute amex_card_security_code_version2
    #   <p>Card data parameters that are required to verify a Card Security Code (CSC2) for an AMEX payment card.</p>
    #   @return [Types::AmexCardSecurityCodeVersion2]
    # @!attribute card_verification_value1
    #   <p>Card data parameters that are required to verify Card Verification Value (CVV) for the payment card.</p>
    #   @return [Types::CardVerificationValue1]
    # @!attribute card_verification_value2
    #   <p>Card data parameters that are required to verify Card Verification Value (CVV2) for the payment card.</p>
    #   @return [Types::CardVerificationValue2]
    # @!attribute card_holder_verification_value
    #   <p>Card data parameters that are required to verify a cardholder verification value for the payment card.</p>
    #   @return [Types::CardHolderVerificationValue]
    # @!attribute dynamic_card_verification_code
    #   <p>Card data parameters that are required to verify CDynamic Card Verification Code (dCVC) for the payment card.</p>
    #   @return [Types::DynamicCardVerificationCode]
    # @!attribute dynamic_card_verification_value
    #   <p>Card data parameters that are required to verify CDynamic Card Verification Value (dCVV) for the payment card.</p>
    #   @return [Types::DynamicCardVerificationValue]
    # @!attribute discover_dynamic_card_verification_code
    #   <p>Card data parameters that are required to verify CDynamic Card Verification Code (dCVC) for the payment card.</p>
    #   @return [Types::DiscoverDynamicCardVerificationCode]
    class CardVerificationAttributes < Struct.new(
      :amex_card_security_code_version1,
      :amex_card_security_code_version2,
      :card_verification_value1,
      :card_verification_value2,
      :card_holder_verification_value,
      :dynamic_card_verification_code,
      :dynamic_card_verification_value,
      :discover_dynamic_card_verification_code,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AmexCardSecurityCodeVersion1 < CardVerificationAttributes; end
      class AmexCardSecurityCodeVersion2 < CardVerificationAttributes; end
      class CardVerificationValue1 < CardVerificationAttributes; end
      class CardVerificationValue2 < CardVerificationAttributes; end
      class CardHolderVerificationValue < CardVerificationAttributes; end
      class DynamicCardVerificationCode < CardVerificationAttributes; end
      class DynamicCardVerificationValue < CardVerificationAttributes; end
      class DiscoverDynamicCardVerificationCode < CardVerificationAttributes; end
      class Unknown < CardVerificationAttributes; end
    end

    # <p>Card data parameters that are required to verify CVV (Card Verification Value) for the payment card.</p>
    # @!attribute card_expiry_date
    #   <p>The expiry date of a payment card.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The service code of the payment card. This is different from Card Security Code (CSC).</p>
    #   @return [String]
    class CardVerificationValue1 < Struct.new(
      nil,
      :card_expiry_date,
      :service_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Card data parameters that are required to verify Card Verification Value (CVV2) for the payment card.</p>
    # @!attribute card_expiry_date
    #   <p>The expiry date of a payment card.</p>
    #   @return [String]
    class CardVerificationValue2 < Struct.new(
      nil,
      :card_expiry_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters that are required for Authorization Response Cryptogram (ARPC) generation after Authorization Request Cryptogram (ARQC) verification is successful.</p>
    # @!attribute arpc_method1
    #   <p>Parameters that are required for ARPC response generation using method1 after ARQC verification is successful.</p>
    #   @return [Types::CryptogramVerificationArpcMethod1]
    # @!attribute arpc_method2
    #   <p>Parameters that are required for ARPC response generation using method2 after ARQC verification is successful.</p>
    #   @return [Types::CryptogramVerificationArpcMethod2]
    class CryptogramAuthResponse < Struct.new(
      :arpc_method1,
      :arpc_method2,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ArpcMethod1 < CryptogramAuthResponse; end
      class ArpcMethod2 < CryptogramAuthResponse; end
      class Unknown < CryptogramAuthResponse; end
    end

    # <p>Parameters that are required for ARPC response generation using method1 after ARQC verification is successful.</p>
    # @!attribute auth_response_code
    #   <p>The auth code used to calculate APRC after ARQC verification is successful. This is the same auth code used for ARQC generation outside of Amazon Web Services Payment Cryptography.</p>
    #   @return [String]
    class CryptogramVerificationArpcMethod1 < Struct.new(
      nil,
      :auth_response_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters that are required for ARPC response generation using method2 after ARQC verification is successful.</p>
    # @!attribute card_status_update
    #   <p>The data indicating whether the issuer approves or declines an online transaction using an EMV chip card.</p>
    #   @return [String]
    # @!attribute proprietary_authentication_data
    #   <p>The proprietary authentication data used by issuer for communication during online transaction using an EMV chip card.</p>
    #   @return [String]
    class CryptogramVerificationArpcMethod2 < Struct.new(
      nil,
      :card_status_update,
      :proprietary_authentication_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The parameter values of the current PIN to be changed on the EMV chip card.</p>
    # @!attribute current_pin_pek_identifier
    #   <p>The <code>keyArn</code> of the current PIN PEK.</p>
    #   @return [String]
    # @!attribute current_encrypted_pin_block
    #   <p>The encrypted pinblock of the current pin stored on the chip card.</p>
    #   @return [String]
    class CurrentPinAttributes < Struct.new(
      nil,
      :current_pin_pek_identifier,
      :current_encrypted_pin_block,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_identifier
    #   <p>The <code>keyARN</code> of the encryption key that Amazon Web Services Payment Cryptography uses for ciphertext decryption.</p> <p>When a WrappedKeyBlock is provided, this value will be the identifier to the key wrapping key. Otherwise, it is the key identifier used to perform the operation.</p>
    #   @return [String]
    # @!attribute cipher_text
    #   <p>The ciphertext to decrypt.</p>
    #   @return [String]
    # @!attribute decryption_attributes
    #   <p>The encryption key type and attributes for ciphertext decryption.</p>
    #   @return [Types::EncryptionDecryptionAttributes]
    # @!attribute wrapped_key
    #   <p>The WrappedKeyBlock containing the encryption key for ciphertext decryption.</p>
    #   @return [Types::WrappedKey]
    class DecryptDataInput < Struct.new(
      nil,
      :key_identifier,
      :cipher_text,
      :decryption_attributes,
      :wrapped_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_arn
    #   <p>The <code>keyARN</code> of the encryption key that Amazon Web Services Payment Cryptography uses for ciphertext decryption.</p>
    #   @return [String]
    # @!attribute key_check_value
    #   <p>The key check value (KCV) of the encryption key. The KCV is used to check if all parties holding a given key have the same key or to detect that a key has changed.</p> <p>Amazon Web Services Payment Cryptography computes the KCV according to the CMAC specification.</p>
    #   @return [String]
    # @!attribute plain_text
    #   <p>The decrypted plaintext data in hexBinary format.</p>
    #   @return [String]
    class DecryptDataOutput < Struct.new(
      nil,
      :key_arn,
      :key_check_value,
      :plain_text,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters to derive the payment card specific confidentiality and integrity keys.</p>
    # @!attribute emv_common
    #   <p>Parameters to derive the confidentiality and integrity keys for a payment card using Emv common derivation method.</p>
    #   @return [Types::EmvCommonAttributes]
    # @!attribute amex
    #   <p>Parameters to derive the confidentiality and integrity keys for a payment card using Amex derivation method.</p>
    #   @return [Types::AmexAttributes]
    # @!attribute visa
    #   <p>Parameters to derive the confidentiality and integrity keys for a a payment card using Visa derivation method.</p>
    #   @return [Types::VisaAttributes]
    # @!attribute emv2000
    #   <p>Parameters to derive the confidentiality and integrity keys for a payment card using Emv2000 derivation method.</p>
    #   @return [Types::Emv2000Attributes]
    # @!attribute mastercard
    #   <p>Parameters to derive the confidentiality and integrity keys for a payment card using Mastercard derivation method.</p>
    #   @return [Types::MasterCardAttributes]
    class DerivationMethodAttributes < Struct.new(
      :emv_common,
      :amex,
      :visa,
      :emv2000,
      :mastercard,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class EmvCommon < DerivationMethodAttributes; end
      class Amex < DerivationMethodAttributes; end
      class Visa < DerivationMethodAttributes; end
      class Emv2000 < DerivationMethodAttributes; end
      class Mastercard < DerivationMethodAttributes; end
      class Unknown < DerivationMethodAttributes; end
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

    # <p>Parameters that are required to generate or verify dCVC (Dynamic Card Verification Code).</p>
    # @!attribute card_expiry_date
    #   <p>The expiry date of a payment card.</p>
    #   @return [String]
    # @!attribute unpredictable_number
    #   <p>A random number that is generated by the issuer.</p>
    #   @return [String]
    # @!attribute application_transaction_counter
    #   <p>The transaction counter value that comes from the terminal.</p>
    #   @return [String]
    class DiscoverDynamicCardVerificationCode < Struct.new(
      nil,
      :card_expiry_date,
      :unpredictable_number,
      :application_transaction_counter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters that are used for Derived Unique Key Per Transaction (DUKPT) derivation algorithm.</p>
    # @!attribute key_serial_number
    #   <p>The unique identifier known as Key Serial Number (KSN) that comes from an encrypting device using DUKPT encryption method. The KSN is derived from the encrypting device unique identifier and an internal transaction counter.</p>
    #   @return [String]
    # @!attribute dukpt_derivation_type
    #   <p>The key type derived using DUKPT from a Base Derivation Key (BDK) and Key Serial Number (KSN). This must be less than or equal to the strength of the BDK. For example, you can't use <code>AES_128</code> as a derivation type for a BDK of <code>AES_128</code> or <code>TDES_2KEY</code>.</p>
    #   @return [String]
    class DukptAttributes < Struct.new(
      nil,
      :key_serial_number,
      :dukpt_derivation_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters required for encryption or decryption of data using DUKPT.</p>
    # @!attribute key_serial_number
    #   <p>The unique identifier known as Key Serial Number (KSN) that comes from an encrypting device using DUKPT encryption method. The KSN is derived from the encrypting device unique identifier and an internal transaction counter.</p>
    #   @return [String]
    # @!attribute dukpt_key_derivation_type
    #   <p>The key type derived using DUKPT from a Base Derivation Key (BDK) and Key Serial Number (KSN). This must be less than or equal to the strength of the BDK. For example, you can't use <code>AES_128</code> as a derivation type for a BDK of <code>AES_128</code> or <code>TDES_2KEY</code> </p>
    #   @return [String]
    # @!attribute dukpt_key_variant
    #   <p>The type of use of DUKPT, which can be for incoming data decryption, outgoing data encryption, or both.</p>
    #   @return [String]
    class DukptDerivationAttributes < Struct.new(
      nil,
      :key_serial_number,
      :dukpt_key_derivation_type,
      :dukpt_key_variant,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters that are required to encrypt plaintext data using DUKPT.</p>
    # @!attribute key_serial_number
    #   <p>The unique identifier known as Key Serial Number (KSN) that comes from an encrypting device using DUKPT encryption method. The KSN is derived from the encrypting device unique identifier and an internal transaction counter.</p>
    #   @return [String]
    # @!attribute mode
    #   <p>The block cipher method to use for encryption.</p> <p>The default is CBC.</p>
    #   @return [String]
    # @!attribute dukpt_key_derivation_type
    #   <p>The key type encrypted using DUKPT from a Base Derivation Key (BDK) and Key Serial Number (KSN). This must be less than or equal to the strength of the BDK. For example, you can't use <code>AES_128</code> as a derivation type for a BDK of <code>AES_128</code> or <code>TDES_2KEY</code> </p>
    #   @return [String]
    # @!attribute dukpt_key_variant
    #   <p>The type of use of DUKPT, which can be incoming data decryption, outgoing data encryption, or both.</p>
    #   @return [String]
    # @!attribute initialization_vector
    #   <p>An input used to provide the intial state. If no value is provided, Amazon Web Services Payment Cryptography defaults it to zero.</p>
    #   @return [String]
    class DukptEncryptionAttributes < Struct.new(
      nil,
      :key_serial_number,
      :mode,
      :dukpt_key_derivation_type,
      :dukpt_key_variant,
      :initialization_vector,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters that are required to generate or verify Dynamic Card Verification Value (dCVV).</p>
    # @!attribute unpredictable_number
    #   <p>A random number generated by the issuer.</p>
    #   @return [String]
    # @!attribute pan_sequence_number
    #   <p>A number that identifies and differentiates payment cards with the same Primary Account Number (PAN).</p>
    #   @return [String]
    # @!attribute application_transaction_counter
    #   <p>The transaction counter value that comes from the terminal.</p>
    #   @return [String]
    # @!attribute track_data
    #   <p>The data on the two tracks of magnetic cards used for financial transactions. This includes the cardholder name, PAN, expiration date, bank ID (BIN) and several other numbers the issuing bank uses to validate the data received.</p>
    #   @return [String]
    class DynamicCardVerificationCode < Struct.new(
      nil,
      :unpredictable_number,
      :pan_sequence_number,
      :application_transaction_counter,
      :track_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters that are required to generate or verify Dynamic Card Verification Value (dCVV).</p>
    # @!attribute pan_sequence_number
    #   <p>A number that identifies and differentiates payment cards with the same Primary Account Number (PAN).</p>
    #   @return [String]
    # @!attribute card_expiry_date
    #   <p>The expiry date of a payment card.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The service code of the payment card. This is different from Card Security Code (CSC).</p>
    #   @return [String]
    # @!attribute application_transaction_counter
    #   <p>The transaction counter value that comes from the terminal.</p>
    #   @return [String]
    class DynamicCardVerificationValue < Struct.new(
      nil,
      :pan_sequence_number,
      :card_expiry_date,
      :service_code,
      :application_transaction_counter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters required to establish ECDH based key exchange.</p>
    # @!attribute certificate_authority_public_key_identifier
    #   <p>The <code>keyArn</code> of the certificate that signed the client's <code>PublicKeyCertificate</code>.</p>
    #   @return [String]
    # @!attribute public_key_certificate
    #   <p>The client's public key certificate in PEM format (base64 encoded) to use for ECDH key derivation.</p>
    #   @return [String]
    # @!attribute key_algorithm
    #   <p>The key algorithm of the derived ECDH key.</p>
    #   @return [String]
    # @!attribute key_derivation_function
    #   <p>The key derivation function to use for deriving a key using ECDH.</p>
    #   @return [String]
    # @!attribute key_derivation_hash_algorithm
    #   <p>The hash type to use for deriving a key using ECDH.</p>
    #   @return [String]
    # @!attribute shared_information
    #   <p>A byte string containing information that binds the ECDH derived key to the two parties involved or to the context of the key.</p> <p>It may include details like identities of the two parties deriving the key, context of the operation, session IDs, and optionally a nonce. It must not contain zero bytes, and re-using shared information for multiple ECDH key derivations is not recommended.</p>
    #   @return [String]
    class EcdhDerivationAttributes < Struct.new(
      nil,
      :certificate_authority_public_key_identifier,
      :public_key_certificate,
      :key_algorithm,
      :key_derivation_function,
      :key_derivation_hash_algorithm,
      :shared_information,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters to derive the confidentiality and integrity keys for a payment card using EMV2000 deruv.</p>
    # @!attribute major_key_derivation_mode
    #   <p>The method to use when deriving the master key for the payment card.</p>
    #   @return [String]
    # @!attribute primary_account_number
    #   <p>The Primary Account Number (PAN) of the cardholder.</p>
    #   @return [String]
    # @!attribute pan_sequence_number
    #   <p>A number that identifies and differentiates payment cards with the same Primary Account Number (PAN). Typically 00 is used, if no value is provided by the terminal.</p>
    #   @return [String]
    # @!attribute application_transaction_counter
    #   <p>The transaction counter of the current transaction that is provided by the terminal during transaction processing.</p>
    #   @return [String]
    class Emv2000Attributes < Struct.new(
      nil,
      :major_key_derivation_mode,
      :primary_account_number,
      :pan_sequence_number,
      :application_transaction_counter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters to derive the confidentiality and integrity keys for an Emv common payment card.</p>
    # @!attribute major_key_derivation_mode
    #   <p>The method to use when deriving the master key for the payment card.</p>
    #   @return [String]
    # @!attribute primary_account_number
    #   <p>The Primary Account Number (PAN) of the cardholder.</p>
    #   @return [String]
    # @!attribute pan_sequence_number
    #   <p>A number that identifies and differentiates payment cards with the same Primary Account Number (PAN). Typically 00 is used, if no value is provided by the terminal.</p>
    #   @return [String]
    # @!attribute application_cryptogram
    #   <p>The application cryptogram for the current transaction that is provided by the terminal during transaction processing.</p>
    #   @return [String]
    # @!attribute mode
    #   <p>The block cipher method to use for encryption.</p>
    #   @return [String]
    # @!attribute pin_block_padding_type
    #   <p>The padding to be added to the PIN block prior to encryption.</p> <p>Padding type should be <code>ISO_IEC_7816_4</code>, if <code>PinBlockLengthPosition</code> is set to <code>FRONT_OF_PIN_BLOCK</code>. No padding is required, if <code>PinBlockLengthPosition</code> is set to <code>NONE</code>.</p>
    #   @return [String]
    # @!attribute pin_block_length_position
    #   <p>Specifies if PIN block length should be added to front of the pin block. </p> <p>If value is set to <code>FRONT_OF_PIN_BLOCK</code>, then PIN block padding type should be <code>ISO_IEC_7816_4</code>.</p>
    #   @return [String]
    class EmvCommonAttributes < Struct.new(
      nil,
      :major_key_derivation_mode,
      :primary_account_number,
      :pan_sequence_number,
      :application_cryptogram,
      :mode,
      :pin_block_padding_type,
      :pin_block_length_position,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters for plaintext encryption using EMV keys.</p>
    # @!attribute major_key_derivation_mode
    #   <p>The EMV derivation mode to use for ICC master key derivation as per EMV version 4.3 book 2.</p>
    #   @return [String]
    # @!attribute primary_account_number
    #   <p>The Primary Account Number (PAN), a unique identifier for a payment credit or debit card and associates the card to a specific account holder.</p>
    #   @return [String]
    # @!attribute pan_sequence_number
    #   <p>A number that identifies and differentiates payment cards with the same Primary Account Number (PAN). Typically 00 is used, if no value is provided by the terminal.</p>
    #   @return [String]
    # @!attribute session_derivation_data
    #   <p>The derivation value used to derive the ICC session key. It is typically the application transaction counter value padded with zeros or previous ARQC value padded with zeros as per EMV version 4.3 book 2.</p>
    #   @return [String]
    # @!attribute mode
    #   <p>The block cipher method to use for encryption.</p>
    #   @return [String]
    # @!attribute initialization_vector
    #   <p>An input used to provide the intial state. If no value is provided, Amazon Web Services Payment Cryptography defaults it to zero.</p>
    #   @return [String]
    class EmvEncryptionAttributes < Struct.new(
      nil,
      :major_key_derivation_mode,
      :primary_account_number,
      :pan_sequence_number,
      :session_derivation_data,
      :mode,
      :initialization_vector,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_identifier
    #   <p>The <code>keyARN</code> of the encryption key that Amazon Web Services Payment Cryptography uses for plaintext encryption.</p> <p>When a WrappedKeyBlock is provided, this value will be the identifier to the key wrapping key. Otherwise, it is the key identifier used to perform the operation.</p>
    #   @return [String]
    # @!attribute plain_text
    #   <p>The plaintext to be encrypted.</p> <note> <p>For encryption using asymmetric keys, plaintext data length is constrained by encryption key strength that you define in <code>KeyAlgorithm</code> and padding type that you define in <code>AsymmetricEncryptionAttributes</code>. For more information, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/encrypt-data.html">Encrypt data</a> in the <i>Amazon Web Services Payment Cryptography User Guide</i>.</p> </note>
    #   @return [String]
    # @!attribute encryption_attributes
    #   <p>The encryption key type and attributes for plaintext encryption.</p>
    #   @return [Types::EncryptionDecryptionAttributes]
    # @!attribute wrapped_key
    #   <p>The WrappedKeyBlock containing the encryption key for plaintext encryption.</p>
    #   @return [Types::WrappedKey]
    class EncryptDataInput < Struct.new(
      nil,
      :key_identifier,
      :plain_text,
      :encryption_attributes,
      :wrapped_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_arn
    #   <p>The <code>keyARN</code> of the encryption key that Amazon Web Services Payment Cryptography uses for plaintext encryption.</p>
    #   @return [String]
    # @!attribute key_check_value
    #   <p>The key check value (KCV) of the encryption key. The KCV is used to check if all parties holding a given key have the same key or to detect that a key has changed.</p> <p>Amazon Web Services Payment Cryptography computes the KCV according to the CMAC specification.</p>
    #   @return [String]
    # @!attribute cipher_text
    #   <p>The encrypted ciphertext.</p>
    #   @return [String]
    class EncryptDataOutput < Struct.new(
      nil,
      :key_arn,
      :key_check_value,
      :cipher_text,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters that are required to perform encryption and decryption operations.</p>
    # @!attribute symmetric
    #   <p>Parameters that are required to perform encryption and decryption using symmetric keys.</p>
    #   @return [Types::SymmetricEncryptionAttributes]
    # @!attribute asymmetric
    #   <p>Parameters for plaintext encryption using asymmetric keys.</p>
    #   @return [Types::AsymmetricEncryptionAttributes]
    # @!attribute dukpt
    #   <p>Parameters that are required to encrypt plaintext data using DUKPT.</p>
    #   @return [Types::DukptEncryptionAttributes]
    # @!attribute emv
    #   <p>Parameters for plaintext encryption using EMV keys.</p>
    #   @return [Types::EmvEncryptionAttributes]
    class EncryptionDecryptionAttributes < Struct.new(
      :symmetric,
      :asymmetric,
      :dukpt,
      :emv,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Symmetric < EncryptionDecryptionAttributes; end
      class Asymmetric < EncryptionDecryptionAttributes; end
      class Dukpt < EncryptionDecryptionAttributes; end
      class Emv < EncryptionDecryptionAttributes; end
      class Unknown < EncryptionDecryptionAttributes; end
    end

    # @!attribute key_identifier
    #   <p>The <code>keyARN</code> of sending KEK that Amazon Web Services Payment Cryptography uses for node-to-node initialization</p>
    #   @return [String]
    # @!attribute kek_validation_type
    #   <p>Defines whether to generate a KEK validation request or KEK validation response for node-to-node initialization.</p>
    #   @return [Types::As2805KekValidationType]
    # @!attribute random_key_send_variant_mask
    #   <p>The key variant to use for generating a random key for KEK validation during node-to-node initialization.</p>
    #   @return [String]
    class GenerateAs2805KekValidationInput < Struct.new(
      nil,
      :key_identifier,
      :kek_validation_type,
      :random_key_send_variant_mask,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_arn
    #   <p>The <code>keyARN</code> of sending KEK that Amazon Web Services Payment Cryptography validates for node-to-node initialization</p>
    #   @return [String]
    # @!attribute key_check_value
    #   <p>The key check value (KCV) of the sending KEK that Amazon Web Services Payment Cryptography validates for node-to-node initialization.</p>
    #   @return [String]
    # @!attribute random_key_send
    #   <p>The random key generated for sending KEK validation.</p>
    #   @return [String]
    # @!attribute random_key_receive
    #   <p>The random key generated for receiving KEK validation. The initiating node sends this key to its partner node for validation.</p>
    #   @return [String]
    class GenerateAs2805KekValidationOutput < Struct.new(
      nil,
      :key_arn,
      :key_check_value,
      :random_key_send,
      :random_key_receive,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_identifier
    #   <p>The <code>keyARN</code> of the IMK-AC (TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS) that Amazon Web Services Payment Cryptography uses to generate the ARQC.</p>
    #   @return [String]
    # @!attribute transaction_data
    #   <p>The transaction data that Amazon Web Services Payment Cryptography uses for ARQC generation. The same transaction data is used for ARQC verification by the issuer using <a>VerifyAuthRequestCryptogram</a>.</p>
    #   @return [String]
    # @!attribute major_key_derivation_mode
    #   <p>The method to use when deriving the major encryption key for ARQC generation within Amazon Web Services Payment Cryptography.</p>
    #   @return [String]
    # @!attribute session_key_derivation_attributes
    #   <p>The attributes and values to use for deriving a session key for ARQC generation within Amazon Web Services Payment Cryptography.</p>
    #   @return [Types::SessionKeyDerivation]
    class GenerateAuthRequestCryptogramInput < Struct.new(
      nil,
      :key_identifier,
      :transaction_data,
      :major_key_derivation_mode,
      :session_key_derivation_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_arn
    #   <p>The <code>keyARN</code> of the IMK-AC that Amazon Web Services Payment Cryptography uses for ARQC generation.</p>
    #   @return [String]
    # @!attribute key_check_value
    #   <p>The key check value (KCV) of the encryption key. The KCV is used to check if all parties holding a given key have the same key or to detect that a key has changed.</p> <p>Amazon Web Services Payment Cryptography computes the KCV according to the CMAC specification.</p>
    #   @return [String]
    # @!attribute auth_request_cryptogram
    #   <p>The Authorization Request Cryptogram (ARQC) generated by Amazon Web Services Payment Cryptography using the specified key and transaction data.</p>
    #   @return [String]
    class GenerateAuthRequestCryptogramOutput < Struct.new(
      nil,
      :key_arn,
      :key_check_value,
      :auth_request_cryptogram,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_identifier
    #   <p>The <code>keyARN</code> of the CVK encryption key that Amazon Web Services Payment Cryptography uses to generate card data.</p>
    #   @return [String]
    # @!attribute primary_account_number
    #   <p>The Primary Account Number (PAN), a unique identifier for a payment credit or debit card that associates the card with a specific account holder.</p>
    #   @return [String]
    # @!attribute generation_attributes
    #   <p>The algorithm for generating CVV or CSC values for the card within Amazon Web Services Payment Cryptography.</p>
    #   @return [Types::CardGenerationAttributes]
    # @!attribute validation_data_length
    #   <p>The length of the CVV or CSC to be generated. The default value is 3.</p>
    #   @return [Integer]
    class GenerateCardValidationDataInput < Struct.new(
      nil,
      :key_identifier,
      :primary_account_number,
      :generation_attributes,
      :validation_data_length,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_arn
    #   <p>The <code>keyARN</code> of the CVK encryption key that Amazon Web Services Payment Cryptography uses to generate CVV or CSC.</p>
    #   @return [String]
    # @!attribute key_check_value
    #   <p>The key check value (KCV) of the encryption key. The KCV is used to check if all parties holding a given key have the same key or to detect that a key has changed.</p> <p>Amazon Web Services Payment Cryptography computes the KCV according to the CMAC specification.</p>
    #   @return [String]
    # @!attribute validation_data
    #   <p>The CVV or CSC value that Amazon Web Services Payment Cryptography generates for the card.</p>
    #   @return [String]
    class GenerateCardValidationDataOutput < Struct.new(
      nil,
      :key_arn,
      :key_check_value,
      :validation_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute new_pin_pek_identifier
    #   <p>The <code>keyARN</code> of the PEK protecting the incoming new encrypted PIN block.</p>
    #   @return [String]
    # @!attribute new_encrypted_pin_block
    #   <p>The incoming new encrypted PIN block data for offline pin change on an EMV card.</p>
    #   @return [String]
    # @!attribute pin_block_format
    #   <p>The PIN encoding format of the incoming new encrypted PIN block as specified in ISO 9564.</p>
    #   @return [String]
    # @!attribute secure_messaging_integrity_key_identifier
    #   <p>The <code>keyARN</code> of the issuer master key (IMK-SMI) used to authenticate the issuer script response.</p>
    #   @return [String]
    # @!attribute secure_messaging_confidentiality_key_identifier
    #   <p>The <code>keyARN</code> of the issuer master key (IMK-SMC) used to protect the PIN block data in the issuer script response.</p>
    #   @return [String]
    # @!attribute message_data
    #   <p>The message data is the APDU command from the card reader or terminal. The target encrypted PIN block, after translation to ISO2 format, is appended to this message data to generate an issuer script response.</p>
    #   @return [String]
    # @!attribute derivation_method_attributes
    #   <p>The attributes and data values to derive payment card specific confidentiality and integrity keys.</p>
    #   @return [Types::DerivationMethodAttributes]
    class GenerateMacEmvPinChangeInput < Struct.new(
      nil,
      :new_pin_pek_identifier,
      :new_encrypted_pin_block,
      :pin_block_format,
      :secure_messaging_integrity_key_identifier,
      :secure_messaging_confidentiality_key_identifier,
      :message_data,
      :derivation_method_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute new_pin_pek_arn
    #   <p>Returns the <code>keyArn</code> of the PEK protecting the incoming new encrypted PIN block.</p>
    #   @return [String]
    # @!attribute secure_messaging_integrity_key_arn
    #   <p>Returns the <code>keyArn</code> of the IMK-SMI used by the operation.</p>
    #   @return [String]
    # @!attribute secure_messaging_confidentiality_key_arn
    #   <p>Returns the <code>keyArn</code> of the IMK-SMC used by the operation.</p>
    #   @return [String]
    # @!attribute mac
    #   <p>Returns the mac of the issuer script containing message data and appended target encrypted pin block in ISO2 format.</p>
    #   @return [String]
    # @!attribute encrypted_pin_block
    #   <p>Returns the incoming new encrpted PIN block.</p>
    #   @return [String]
    # @!attribute new_pin_pek_key_check_value
    #   <p>The key check value (KCV) of the PEK uprotecting the incoming new encrypted PIN block.</p>
    #   @return [String]
    # @!attribute secure_messaging_integrity_key_check_value
    #   <p>The key check value (KCV) of the SMI issuer master key used by the operation.</p>
    #   @return [String]
    # @!attribute secure_messaging_confidentiality_key_check_value
    #   <p>The key check value (KCV) of the SMC issuer master key used by the operation.</p>
    #   @return [String]
    # @!attribute visa_amex_derivation_outputs
    #   <p>The attribute values used for Amex and Visa derivation methods.</p>
    #   @return [Types::VisaAmexDerivationOutputs]
    class GenerateMacEmvPinChangeOutput < Struct.new(
      nil,
      :new_pin_pek_arn,
      :secure_messaging_integrity_key_arn,
      :secure_messaging_confidentiality_key_arn,
      :mac,
      :encrypted_pin_block,
      :new_pin_pek_key_check_value,
      :secure_messaging_integrity_key_check_value,
      :secure_messaging_confidentiality_key_check_value,
      :visa_amex_derivation_outputs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_identifier
    #   <p>The <code>keyARN</code> of the MAC generation encryption key.</p>
    #   @return [String]
    # @!attribute message_data
    #   <p>The data for which a MAC is under generation. This value must be hexBinary.</p>
    #   @return [String]
    # @!attribute generation_attributes
    #   <p>The attributes and data values to use for MAC generation within Amazon Web Services Payment Cryptography.</p>
    #   @return [Types::MacAttributes]
    # @!attribute mac_length
    #   <p>The length of a MAC under generation.</p>
    #   @return [Integer]
    class GenerateMacInput < Struct.new(
      nil,
      :key_identifier,
      :message_data,
      :generation_attributes,
      :mac_length,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_arn
    #   <p>The <code>keyARN</code> of the encryption key that Amazon Web Services Payment Cryptography uses for MAC generation.</p>
    #   @return [String]
    # @!attribute key_check_value
    #   <p>The key check value (KCV) of the encryption key. The KCV is used to check if all parties holding a given key have the same key or to detect that a key has changed.</p> <p>Amazon Web Services Payment Cryptography computes the KCV according to the CMAC specification.</p>
    #   @return [String]
    # @!attribute mac
    #   <p>The MAC cryptogram generated within Amazon Web Services Payment Cryptography.</p>
    #   @return [String]
    class GenerateMacOutput < Struct.new(
      nil,
      :key_arn,
      :key_check_value,
      :mac,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute generation_key_identifier
    #   <p>The <code>keyARN</code> of the PEK that Amazon Web Services Payment Cryptography uses for pin data generation.</p>
    #   @return [String]
    # @!attribute encryption_key_identifier
    #   <p>The <code>keyARN</code> of the PEK that Amazon Web Services Payment Cryptography uses to encrypt the PIN Block. For ECDH, it is the <code>keyARN</code> of the asymmetric ECC key.</p>
    #   @return [String]
    # @!attribute generation_attributes
    #   <p>The attributes and values to use for PIN, PVV, or PIN Offset generation.</p>
    #   @return [Types::PinGenerationAttributes]
    # @!attribute pin_data_length
    #   <p>The length of PIN under generation.</p>
    #   @return [Integer]
    # @!attribute primary_account_number
    #   <p>The Primary Account Number (PAN), a unique identifier for a payment credit or debit card that associates the card with a specific account holder.</p>
    #   @return [String]
    # @!attribute pin_block_format
    #   <p>The PIN encoding format for pin data generation as specified in ISO 9564. Amazon Web Services Payment Cryptography supports <code>ISO_Format_0</code>, <code>ISO_Format_3</code> and <code>ISO_Format_4</code>.</p> <p>The <code>ISO_Format_0</code> PIN block format is equivalent to the ANSI X9.8, VISA-1, and ECI-1 PIN block formats. It is similar to a VISA-4 PIN block format. It supports a PIN from 4 to 12 digits in length.</p> <p>The <code>ISO_Format_3</code> PIN block format is the same as <code>ISO_Format_0</code> except that the fill digits are random values from 10 to 15.</p> <p>The <code>ISO_Format_4</code> PIN block format is the only one supporting AES encryption.</p>
    #   @return [String]
    # @!attribute encryption_wrapped_key
    #   <p>Parameter information of a WrappedKeyBlock for encryption key exchange.</p>
    #   @return [Types::WrappedKey]
    class GeneratePinDataInput < Struct.new(
      nil,
      :generation_key_identifier,
      :encryption_key_identifier,
      :generation_attributes,
      :pin_data_length,
      :primary_account_number,
      :pin_block_format,
      :encryption_wrapped_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute generation_key_arn
    #   <p>The <code>keyARN</code> of the pin data generation key that Amazon Web Services Payment Cryptography uses for PIN, PVV or PIN Offset generation.</p>
    #   @return [String]
    # @!attribute generation_key_check_value
    #   <p>The key check value (KCV) of the encryption key. The KCV is used to check if all parties holding a given key have the same key or to detect that a key has changed.</p> <p>Amazon Web Services Payment Cryptography computes the KCV according to the CMAC specification.</p>
    #   @return [String]
    # @!attribute encryption_key_arn
    #   <p>The <code>keyARN</code> of the PEK that Amazon Web Services Payment Cryptography uses for encrypted pin block generation. For ECDH, it is the <code>keyARN</code> of the asymmetric ECC key.</p>
    #   @return [String]
    # @!attribute encryption_key_check_value
    #   <p>The key check value (KCV) of the encryption key. The KCV is used to check if all parties holding a given key have the same key or to detect that a key has changed.</p> <p>Amazon Web Services Payment Cryptography computes the KCV according to the CMAC specification.</p>
    #   @return [String]
    # @!attribute encrypted_pin_block
    #   <p>The PIN block encrypted under PEK from Amazon Web Services Payment Cryptography. The encrypted PIN block is a composite of PAN (Primary Account Number) and PIN (Personal Identification Number), generated in accordance with ISO 9564 standard.</p>
    #   @return [String]
    # @!attribute pin_data
    #   <p>The attributes and values Amazon Web Services Payment Cryptography uses for pin data generation.</p>
    #   @return [Types::PinData]
    class GeneratePinDataOutput < Struct.new(
      nil,
      :generation_key_arn,
      :generation_key_check_value,
      :encryption_key_arn,
      :encryption_key_check_value,
      :encrypted_pin_block,
      :pin_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters that are required to generate or verify Ibm3624 natural PIN.</p>
    # @!attribute decimalization_table
    #   <p>The decimalization table to use for IBM 3624 PIN algorithm. The table is used to convert the algorithm intermediate result from hexadecimal characters to decimal.</p>
    #   @return [String]
    # @!attribute pin_validation_data_pad_character
    #   <p>The padding character for validation data.</p>
    #   @return [String]
    # @!attribute pin_validation_data
    #   <p>The unique data for cardholder identification.</p>
    #   @return [String]
    class Ibm3624NaturalPin < Struct.new(
      nil,
      :decimalization_table,
      :pin_validation_data_pad_character,
      :pin_validation_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters that are required to generate or verify Ibm3624 PIN from offset PIN.</p>
    # @!attribute decimalization_table
    #   <p>The decimalization table to use for IBM 3624 PIN algorithm. The table is used to convert the algorithm intermediate result from hexadecimal characters to decimal.</p>
    #   @return [String]
    # @!attribute pin_validation_data_pad_character
    #   <p>The padding character for validation data.</p>
    #   @return [String]
    # @!attribute pin_validation_data
    #   <p>The unique data for cardholder identification.</p>
    #   @return [String]
    # @!attribute pin_offset
    #   <p>The PIN offset value.</p>
    #   @return [String]
    class Ibm3624PinFromOffset < Struct.new(
      nil,
      :decimalization_table,
      :pin_validation_data_pad_character,
      :pin_validation_data,
      :pin_offset,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Pparameters that are required to generate or verify Ibm3624 PIN offset PIN.</p>
    # @!attribute encrypted_pin_block
    #   <p>The encrypted PIN block data. According to ISO 9564 standard, a PIN Block is an encoded representation of a payment card Personal Account Number (PAN) and the cardholder Personal Identification Number (PIN).</p>
    #   @return [String]
    # @!attribute decimalization_table
    #   <p>The decimalization table to use for IBM 3624 PIN algorithm. The table is used to convert the algorithm intermediate result from hexadecimal characters to decimal.</p>
    #   @return [String]
    # @!attribute pin_validation_data_pad_character
    #   <p>The padding character for validation data.</p>
    #   @return [String]
    # @!attribute pin_validation_data
    #   <p>The unique data for cardholder identification.</p>
    #   @return [String]
    class Ibm3624PinOffset < Struct.new(
      nil,
      :encrypted_pin_block,
      :decimalization_table,
      :pin_validation_data_pad_character,
      :pin_validation_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters that are required to generate or verify Ibm3624 PIN verification PIN.</p>
    # @!attribute decimalization_table
    #   <p>The decimalization table to use for IBM 3624 PIN algorithm. The table is used to convert the algorithm intermediate result from hexadecimal characters to decimal.</p>
    #   @return [String]
    # @!attribute pin_validation_data_pad_character
    #   <p>The padding character for validation data.</p>
    #   @return [String]
    # @!attribute pin_validation_data
    #   <p>The unique data for cardholder identification.</p>
    #   @return [String]
    # @!attribute pin_offset
    #   <p>The PIN offset value.</p>
    #   @return [String]
    class Ibm3624PinVerification < Struct.new(
      nil,
      :decimalization_table,
      :pin_validation_data_pad_character,
      :pin_validation_data,
      :pin_offset,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters that are required to generate or verify Ibm3624 random PIN.</p>
    # @!attribute decimalization_table
    #   <p>The decimalization table to use for IBM 3624 PIN algorithm. The table is used to convert the algorithm intermediate result from hexadecimal characters to decimal.</p>
    #   @return [String]
    # @!attribute pin_validation_data_pad_character
    #   <p>The padding character for validation data.</p>
    #   @return [String]
    # @!attribute pin_validation_data
    #   <p>The unique data for cardholder identification.</p>
    #   @return [String]
    class Ibm3624RandomPin < Struct.new(
      nil,
      :decimalization_table,
      :pin_validation_data_pad_character,
      :pin_validation_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameter information of a TR31KeyBlock wrapped using an ECDH derived key.</p>
    # @!attribute private_key_identifier
    #   <p>The <code>keyARN</code> of the asymmetric ECC key pair.</p>
    #   @return [String]
    # @!attribute certificate_authority_public_key_identifier
    #   <p>The <code>keyArn</code> of the certificate that signed the client's <code>PublicKeyCertificate</code>.</p>
    #   @return [String]
    # @!attribute public_key_certificate
    #   <p>The client's public key certificate in PEM format (base64 encoded) to use for ECDH key derivation.</p>
    #   @return [String]
    # @!attribute derive_key_algorithm
    #   <p>The key algorithm of the derived ECDH key.</p>
    #   @return [String]
    # @!attribute key_derivation_function
    #   <p>The key derivation function to use for deriving a key using ECDH.</p>
    #   @return [String]
    # @!attribute key_derivation_hash_algorithm
    #   <p>The hash type to use for deriving a key using ECDH.</p>
    #   @return [String]
    # @!attribute derivation_data
    #   <p>The shared information used when deriving a key using ECDH.</p>
    #   @return [Types::DiffieHellmanDerivationData]
    # @!attribute wrapped_key_block
    #   <p>The WrappedKeyBlock containing the transaction key wrapped using an ECDH dervied key. </p>
    #   @return [String]
    class IncomingDiffieHellmanTr31KeyBlock < Struct.new(
      nil,
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

    # <p>Parameter information of the incoming WrappedKeyBlock containing the transaction key.</p>
    # @!attribute diffie_hellman_tr31_key_block
    #   <p>Parameter information of the TR31WrappedKeyBlock containing the transaction key wrapped using an ECDH dervied key.</p>
    #   @return [Types::IncomingDiffieHellmanTr31KeyBlock]
    class IncomingKeyMaterial < Struct.new(
      :diffie_hellman_tr31_key_block,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class DiffieHellmanTr31KeyBlock < IncomingKeyMaterial; end
      class Unknown < IncomingKeyMaterial; end
    end

    # <p>The request processing has failed because of an unknown error, exception, or failure.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameter information for generating a KEK validation request during node-to-node initialization.</p>
    # @!attribute derive_key_algorithm
    #   <p>The key derivation algorithm to use for generating a KEK validation request.</p>
    #   @return [String]
    # @!attribute random_key_max_length
    #   <p>The maximum length of the random key to generate for a KEK validation request.</p>
    #   @return [String]
    class KekValidationRequest < Struct.new(
      nil,
      :derive_key_algorithm,
      :random_key_max_length,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameter information for generating a KEK validation response during node-to-node initialization.</p>
    # @!attribute random_key_send
    #   <p>The random key send value received from the initiating node to generate a KEK validation response.</p>
    #   @return [String]
    class KekValidationResponse < Struct.new(
      nil,
      :random_key_send,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters required for DUKPT MAC generation and verification.</p>
    # @!attribute key_serial_number
    #   <p>The unique identifier known as Key Serial Number (KSN) that comes from an encrypting device using DUKPT encryption method. The KSN is derived from the encrypting device unique identifier and an internal transaction counter.</p>
    #   @return [String]
    # @!attribute dukpt_key_variant
    #   <p>The type of use of DUKPT, which can be MAC generation, MAC verification, or both.</p>
    #   @return [String]
    # @!attribute dukpt_derivation_type
    #   <p>The key type derived using DUKPT from a Base Derivation Key (BDK) and Key Serial Number (KSN). This must be less than or equal to the strength of the BDK. For example, you can't use <code>AES_128</code> as a derivation type for a BDK of <code>AES_128</code> or <code>TDES_2KEY</code>.</p>
    #   @return [String]
    class MacAlgorithmDukpt < Struct.new(
      nil,
      :key_serial_number,
      :dukpt_key_variant,
      :dukpt_derivation_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters that are required for EMV MAC generation and verification.</p>
    # @!attribute major_key_derivation_mode
    #   <p>The method to use when deriving the master key for EMV MAC generation or verification.</p>
    #   @return [String]
    # @!attribute primary_account_number
    #   <p>The Primary Account Number (PAN), a unique identifier for a payment credit or debit card and associates the card to a specific account holder.</p>
    #   @return [String]
    # @!attribute pan_sequence_number
    #   <p>A number that identifies and differentiates payment cards with the same Primary Account Number (PAN).</p>
    #   @return [String]
    # @!attribute session_key_derivation_mode
    #   <p>The method of deriving a session key for EMV MAC generation or verification.</p>
    #   @return [String]
    # @!attribute session_key_derivation_value
    #   <p>Parameters that are required to generate session key for EMV generation and verification.</p>
    #   @return [Types::SessionKeyDerivationValue]
    class MacAlgorithmEmv < Struct.new(
      nil,
      :major_key_derivation_mode,
      :primary_account_number,
      :pan_sequence_number,
      :session_key_derivation_mode,
      :session_key_derivation_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters that are required for DUKPT, HMAC, or EMV MAC generation or verification.</p>
    # @!attribute algorithm
    #   <p>The encryption algorithm for MAC generation or verification.</p>
    #   @return [String]
    # @!attribute emv_mac
    #   <p>Parameters that are required for MAC generation or verification using EMV MAC algorithm.</p>
    #   @return [Types::MacAlgorithmEmv]
    # @!attribute dukpt_iso9797_algorithm1
    #   <p>Parameters that are required for MAC generation or verification using DUKPT ISO 9797 algorithm1.</p>
    #   @return [Types::MacAlgorithmDukpt]
    # @!attribute dukpt_iso9797_algorithm3
    #   <p>Parameters that are required for MAC generation or verification using DUKPT ISO 9797 algorithm3.</p>
    #   @return [Types::MacAlgorithmDukpt]
    # @!attribute dukpt_cmac
    #   <p>Parameters that are required for MAC generation or verification using DUKPT CMAC algorithm.</p>
    #   @return [Types::MacAlgorithmDukpt]
    class MacAttributes < Struct.new(
      :algorithm,
      :emv_mac,
      :dukpt_iso9797_algorithm1,
      :dukpt_iso9797_algorithm3,
      :dukpt_cmac,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Algorithm < MacAttributes; end
      class EmvMac < MacAttributes; end
      class DukptIso9797Algorithm1 < MacAttributes; end
      class DukptIso9797Algorithm3 < MacAttributes; end
      class DukptCmac < MacAttributes; end
      class Unknown < MacAttributes; end
    end

    # <p>Parameters to derive the confidentiality and integrity keys for a Mastercard payment card.</p>
    # @!attribute major_key_derivation_mode
    #   <p>The method to use when deriving the master key for the payment card.</p>
    #   @return [String]
    # @!attribute primary_account_number
    #   <p>The Primary Account Number (PAN) of the cardholder.</p>
    #   @return [String]
    # @!attribute pan_sequence_number
    #   <p>A number that identifies and differentiates payment cards with the same Primary Account Number (PAN). Typically 00 is used, if no value is provided by the terminal.</p>
    #   @return [String]
    # @!attribute application_cryptogram
    #   <p>The application cryptogram for the current transaction that is provided by the terminal during transaction processing.</p>
    #   @return [String]
    class MasterCardAttributes < Struct.new(
      nil,
      :major_key_derivation_mode,
      :primary_account_number,
      :pan_sequence_number,
      :application_cryptogram,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameter information of the outgoing TR31WrappedKeyBlock containing the transaction key.</p>
    # @!attribute tr31_key_block
    #   <p>Parameter information of the TR31WrappedKeyBlock containing the transaction key wrapped using a KEK.</p>
    #   @return [Types::OutgoingTr31KeyBlock]
    class OutgoingKeyMaterial < Struct.new(
      :tr31_key_block,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Tr31KeyBlock < OutgoingKeyMaterial; end
      class Unknown < OutgoingKeyMaterial; end
    end

    # <p>Parameter information of the TR31WrappedKeyBlock containing the transaction key wrapped using a KEK.</p>
    # @!attribute wrapping_key_identifier
    #   <p>The <code>keyARN</code> of the KEK used to wrap the transaction key.</p>
    #   @return [String]
    class OutgoingTr31KeyBlock < Struct.new(
      nil,
      :wrapping_key_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters that are required to generate, translate, or verify PIN data.</p>
    # @!attribute pin_offset
    #   <p>The PIN offset value.</p>
    #   @return [String]
    # @!attribute verification_value
    #   <p>The unique data to identify a cardholder. In most cases, this is the same as cardholder's Primary Account Number (PAN). If a value is not provided, it defaults to PAN.</p>
    #   @return [String]
    class PinData < Struct.new(
      :pin_offset,
      :verification_value,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class PinOffset < PinData; end
      class VerificationValue < PinData; end
      class Unknown < PinData; end
    end

    # <p>Parameters that are required for PIN data generation.</p>
    # @!attribute visa_pin
    #   <p>Parameters that are required to generate or verify Visa PIN.</p>
    #   @return [Types::VisaPin]
    # @!attribute visa_pin_verification_value
    #   <p>Parameters that are required to generate or verify Visa PIN Verification Value (PVV).</p>
    #   @return [Types::VisaPinVerificationValue]
    # @!attribute ibm3624_pin_offset
    #   <p>Parameters that are required to generate or verify Ibm3624 PIN offset PIN.</p>
    #   @return [Types::Ibm3624PinOffset]
    # @!attribute ibm3624_natural_pin
    #   <p>Parameters that are required to generate or verify Ibm3624 natural PIN.</p>
    #   @return [Types::Ibm3624NaturalPin]
    # @!attribute ibm3624_random_pin
    #   <p>Parameters that are required to generate or verify Ibm3624 random PIN.</p>
    #   @return [Types::Ibm3624RandomPin]
    # @!attribute ibm3624_pin_from_offset
    #   <p>Parameters that are required to generate or verify Ibm3624 PIN from offset PIN.</p>
    #   @return [Types::Ibm3624PinFromOffset]
    class PinGenerationAttributes < Struct.new(
      :visa_pin,
      :visa_pin_verification_value,
      :ibm3624_pin_offset,
      :ibm3624_natural_pin,
      :ibm3624_random_pin,
      :ibm3624_pin_from_offset,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class VisaPin < PinGenerationAttributes; end
      class VisaPinVerificationValue < PinGenerationAttributes; end
      class Ibm3624PinOffset < PinGenerationAttributes; end
      class Ibm3624NaturalPin < PinGenerationAttributes; end
      class Ibm3624RandomPin < PinGenerationAttributes; end
      class Ibm3624PinFromOffset < PinGenerationAttributes; end
      class Unknown < PinGenerationAttributes; end
    end

    # <p>Parameters that are required for PIN data verification.</p>
    # @!attribute visa_pin
    #   <p>Parameters that are required to generate or verify Visa PIN.</p>
    #   @return [Types::VisaPinVerification]
    # @!attribute ibm3624_pin
    #   <p>Parameters that are required to generate or verify Ibm3624 PIN.</p>
    #   @return [Types::Ibm3624PinVerification]
    class PinVerificationAttributes < Struct.new(
      :visa_pin,
      :ibm3624_pin,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class VisaPin < PinVerificationAttributes; end
      class Ibm3624Pin < PinVerificationAttributes; end
      class Unknown < PinVerificationAttributes; end
    end

    # @!attribute incoming_key_identifier
    #   <p>The <code>keyARN</code> of the encryption key of incoming ciphertext data.</p> <p>When a WrappedKeyBlock is provided, this value will be the identifier to the key wrapping key. Otherwise, it is the key identifier used to perform the operation.</p>
    #   @return [String]
    # @!attribute outgoing_key_identifier
    #   <p>The <code>keyARN</code> of the encryption key of outgoing ciphertext data after encryption by Amazon Web Services Payment Cryptography.</p>
    #   @return [String]
    # @!attribute cipher_text
    #   <p>Ciphertext to be encrypted. The minimum allowed length is 16 bytes and maximum allowed length is 4096 bytes.</p>
    #   @return [String]
    # @!attribute incoming_encryption_attributes
    #   <p>The attributes and values for incoming ciphertext.</p>
    #   @return [Types::ReEncryptionAttributes]
    # @!attribute outgoing_encryption_attributes
    #   <p>The attributes and values for outgoing ciphertext data after encryption by Amazon Web Services Payment Cryptography.</p>
    #   @return [Types::ReEncryptionAttributes]
    # @!attribute incoming_wrapped_key
    #   <p>The WrappedKeyBlock containing the encryption key of incoming ciphertext data.</p>
    #   @return [Types::WrappedKey]
    # @!attribute outgoing_wrapped_key
    #   <p>The WrappedKeyBlock containing the encryption key of outgoing ciphertext data after encryption by Amazon Web Services Payment Cryptography.</p>
    #   @return [Types::WrappedKey]
    class ReEncryptDataInput < Struct.new(
      nil,
      :incoming_key_identifier,
      :outgoing_key_identifier,
      :cipher_text,
      :incoming_encryption_attributes,
      :outgoing_encryption_attributes,
      :incoming_wrapped_key,
      :outgoing_wrapped_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_arn
    #   <p>The keyARN (Amazon Resource Name) of the encryption key that Amazon Web Services Payment Cryptography uses for plaintext encryption.</p>
    #   @return [String]
    # @!attribute key_check_value
    #   <p>The key check value (KCV) of the encryption key. The KCV is used to check if all parties holding a given key have the same key or to detect that a key has changed.</p> <p>Amazon Web Services Payment Cryptography computes the KCV according to the CMAC specification.</p>
    #   @return [String]
    # @!attribute cipher_text
    #   <p>The encrypted ciphertext.</p>
    #   @return [String]
    class ReEncryptDataOutput < Struct.new(
      nil,
      :key_arn,
      :key_check_value,
      :cipher_text,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters that are required to perform reencryption operation.</p>
    # @!attribute symmetric
    #   <p>Specifies the parameters required to encrypt data using symmetric keys.</p>
    #   @return [Types::SymmetricEncryptionAttributes]
    # @!attribute asymmetric
    #   <p>Specifies the parameters required to encrypt data using an asymmetric key pair. You must specify a <code>PaddingType</code>.</p>
    #   @return [Types::AsymmetricEncryptionAttributes]
    # @!attribute dukpt
    #   <p>Specifies the parameters required to encrypt data using DUKPT.</p>
    #   @return [Types::DukptEncryptionAttributes]
    class ReEncryptionAttributes < Struct.new(
      :symmetric,
      :asymmetric,
      :dukpt,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Symmetric < ReEncryptionAttributes; end
      class Asymmetric < ReEncryptionAttributes; end
      class Dukpt < ReEncryptionAttributes; end
      class Unknown < ReEncryptionAttributes; end
    end

    # <p>The request was denied due to an invalid resource error.</p>
    # @!attribute resource_id
    #   <p>The resource that is missing.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :resource_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters to derive session key for an Amex payment card.</p>
    # @!attribute primary_account_number
    #   <p>The Primary Account Number (PAN) of the cardholder. A PAN is a unique identifier for a payment credit or debit card and associates the card to a specific account holder.</p>
    #   @return [String]
    # @!attribute pan_sequence_number
    #   <p>A number that identifies and differentiates payment cards with the same Primary Account Number (PAN).</p>
    #   @return [String]
    class SessionKeyAmex < Struct.new(
      nil,
      :primary_account_number,
      :pan_sequence_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters to derive a session key for Authorization Response Cryptogram (ARQC) verification.</p>
    # @!attribute emv_common
    #   <p>Parameters to derive session key for an Emv common payment card for ARQC verification.</p>
    #   @return [Types::SessionKeyEmvCommon]
    # @!attribute mastercard
    #   <p>Parameters to derive session key for a Mastercard payment card for ARQC verification.</p>
    #   @return [Types::SessionKeyMastercard]
    # @!attribute emv2000
    #   <p>Parameters to derive session key for an Emv2000 payment card for ARQC verification.</p>
    #   @return [Types::SessionKeyEmv2000]
    # @!attribute amex
    #   <p>Parameters to derive session key for an Amex payment card for ARQC verification.</p>
    #   @return [Types::SessionKeyAmex]
    # @!attribute visa
    #   <p>Parameters to derive session key for a Visa payment cardfor ARQC verification.</p>
    #   @return [Types::SessionKeyVisa]
    # @!attribute union_pay
    #   <p>Parameters to derive session key for a UnionPay payment card for Authorization Request Cryptogram (ARQC) generation and verification.</p>
    #   @return [Types::SessionKeyUnionPay]
    class SessionKeyDerivation < Struct.new(
      :emv_common,
      :mastercard,
      :emv2000,
      :amex,
      :visa,
      :union_pay,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class EmvCommon < SessionKeyDerivation; end
      class Mastercard < SessionKeyDerivation; end
      class Emv2000 < SessionKeyDerivation; end
      class Amex < SessionKeyDerivation; end
      class Visa < SessionKeyDerivation; end
      class UnionPay < SessionKeyDerivation; end
      class Unknown < SessionKeyDerivation; end
    end

    # <p>Parameters to derive session key value using a MAC EMV algorithm.</p>
    # @!attribute application_cryptogram
    #   <p>The cryptogram provided by the terminal during transaction processing.</p>
    #   @return [String]
    # @!attribute application_transaction_counter
    #   <p>The transaction counter that is provided by the terminal during transaction processing.</p>
    #   @return [String]
    class SessionKeyDerivationValue < Struct.new(
      :application_cryptogram,
      :application_transaction_counter,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ApplicationCryptogram < SessionKeyDerivationValue; end
      class ApplicationTransactionCounter < SessionKeyDerivationValue; end
      class Unknown < SessionKeyDerivationValue; end
    end

    # <p>Parameters to derive session key for an Emv2000 payment card for ARQC verification.</p>
    # @!attribute primary_account_number
    #   <p>The Primary Account Number (PAN) of the cardholder. A PAN is a unique identifier for a payment credit or debit card and associates the card to a specific account holder.</p>
    #   @return [String]
    # @!attribute pan_sequence_number
    #   <p>A number that identifies and differentiates payment cards with the same Primary Account Number (PAN).</p>
    #   @return [String]
    # @!attribute application_transaction_counter
    #   <p>The transaction counter that is provided by the terminal during transaction processing.</p>
    #   @return [String]
    class SessionKeyEmv2000 < Struct.new(
      nil,
      :primary_account_number,
      :pan_sequence_number,
      :application_transaction_counter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters to derive session key for an Emv common payment card for ARQC verification.</p>
    # @!attribute primary_account_number
    #   <p>The Primary Account Number (PAN) of the cardholder. A PAN is a unique identifier for a payment credit or debit card and associates the card to a specific account holder.</p>
    #   @return [String]
    # @!attribute pan_sequence_number
    #   <p>A number that identifies and differentiates payment cards with the same Primary Account Number (PAN).</p>
    #   @return [String]
    # @!attribute application_transaction_counter
    #   <p>The transaction counter that is provided by the terminal during transaction processing.</p>
    #   @return [String]
    class SessionKeyEmvCommon < Struct.new(
      nil,
      :primary_account_number,
      :pan_sequence_number,
      :application_transaction_counter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters to derive session key for Mastercard payment card for ARQC verification.</p>
    # @!attribute primary_account_number
    #   <p>The Primary Account Number (PAN) of the cardholder. A PAN is a unique identifier for a payment credit or debit card and associates the card to a specific account holder.</p>
    #   @return [String]
    # @!attribute pan_sequence_number
    #   <p>A number that identifies and differentiates payment cards with the same Primary Account Number (PAN).</p>
    #   @return [String]
    # @!attribute application_transaction_counter
    #   <p>The transaction counter that is provided by the terminal during transaction processing.</p>
    #   @return [String]
    # @!attribute unpredictable_number
    #   <p>A random number generated by the issuer.</p>
    #   @return [String]
    class SessionKeyMastercard < Struct.new(
      nil,
      :primary_account_number,
      :pan_sequence_number,
      :application_transaction_counter,
      :unpredictable_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters to derive session key for a UnionPay payment card for Authorization Request Cryptogram (ARQC) generation and verification.</p>
    # @!attribute primary_account_number
    #   <p>The Primary Account Number (PAN) of the cardholder. A PAN is a unique identifier for a payment credit or debit card and associates the card to a specific account holder.</p>
    #   @return [String]
    # @!attribute pan_sequence_number
    #   <p>A number that identifies and differentiates payment cards with the same Primary Account Number (PAN). If not used, enter <code>00</code>.</p>
    #   @return [String]
    # @!attribute application_transaction_counter
    #   <p>The transaction counter that the terminal provides during transaction processing. This value is in hexadecimal format. For example, enter a decimal counter of 109 as <code>006D</code>.</p>
    #   @return [String]
    class SessionKeyUnionPay < Struct.new(
      nil,
      :primary_account_number,
      :pan_sequence_number,
      :application_transaction_counter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters to derive session key for Visa payment card for ARQC verification.</p>
    # @!attribute primary_account_number
    #   <p>The Primary Account Number (PAN) of the cardholder. A PAN is a unique identifier for a payment credit or debit card and associates the card to a specific account holder.</p>
    #   @return [String]
    # @!attribute pan_sequence_number
    #   <p>A number that identifies and differentiates payment cards with the same Primary Account Number (PAN).</p>
    #   @return [String]
    class SessionKeyVisa < Struct.new(
      nil,
      :primary_account_number,
      :pan_sequence_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters requried to encrypt plaintext data using symmetric keys.</p>
    # @!attribute mode
    #   <p>The block cipher method to use for encryption.</p>
    #   @return [String]
    # @!attribute initialization_vector
    #   <p>An input used to provide the intial state. If no value is provided, Amazon Web Services Payment Cryptography defaults it to zero.</p>
    #   @return [String]
    # @!attribute padding_type
    #   <p>The padding to be included with the data.</p>
    #   @return [String]
    class SymmetricEncryptionAttributes < Struct.new(
      nil,
      :mode,
      :initialization_vector,
      :padding_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute incoming_key_material
    #   <p>Parameter information of the TR31WrappedKeyBlock containing the transaction key.</p>
    #   @return [Types::IncomingKeyMaterial]
    # @!attribute outgoing_key_material
    #   <p>Parameter information of the wrapping key used to wrap the transaction key in the outgoing TR31WrappedKeyBlock.</p>
    #   @return [Types::OutgoingKeyMaterial]
    # @!attribute key_check_value_algorithm
    #   <p>The key check value (KCV) algorithm used for calculating the KCV of the derived key.</p>
    #   @return [String]
    class TranslateKeyMaterialInput < Struct.new(
      nil,
      :incoming_key_material,
      :outgoing_key_material,
      :key_check_value_algorithm,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute wrapped_key
    #   <p>The outgoing KEK wrapped TR31WrappedKeyBlock.</p>
    #   @return [Types::WrappedWorkingKey]
    class TranslateKeyMaterialOutput < Struct.new(
      nil,
      :wrapped_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute incoming_key_identifier
    #   <p>The <code>keyARN</code> of the encryption key under which incoming PIN block data is encrypted. This key type can be PEK or BDK.</p> <p>For dynamic keys, it is the <code>keyARN</code> of KEK of the TR-31 wrapped PEK. For ECDH, it is the <code>keyARN</code> of the asymmetric ECC key.</p>
    #   @return [String]
    # @!attribute outgoing_key_identifier
    #   <p>The <code>keyARN</code> of the encryption key for encrypting outgoing PIN block data. This key type can be PEK or BDK.</p> <p>For ECDH, it is the <code>keyARN</code> of the asymmetric ECC key.</p>
    #   @return [String]
    # @!attribute incoming_translation_attributes
    #   <p>The format of the incoming PIN block data for translation within Amazon Web Services Payment Cryptography.</p>
    #   @return [Types::TranslationIsoFormats]
    # @!attribute outgoing_translation_attributes
    #   <p>The format of the outgoing PIN block data after translation by Amazon Web Services Payment Cryptography.</p>
    #   @return [Types::TranslationIsoFormats]
    # @!attribute encrypted_pin_block
    #   <p>The encrypted PIN block data that Amazon Web Services Payment Cryptography translates.</p>
    #   @return [String]
    # @!attribute incoming_dukpt_attributes
    #   <p>The attributes and values to use for incoming DUKPT encryption key for PIN block translation.</p>
    #   @return [Types::DukptDerivationAttributes]
    # @!attribute outgoing_dukpt_attributes
    #   <p>The attributes and values to use for outgoing DUKPT encryption key after PIN block translation.</p>
    #   @return [Types::DukptDerivationAttributes]
    # @!attribute incoming_wrapped_key
    #   <p>The WrappedKeyBlock containing the encryption key under which incoming PIN block data is encrypted.</p>
    #   @return [Types::WrappedKey]
    # @!attribute outgoing_wrapped_key
    #   <p>The WrappedKeyBlock containing the encryption key for encrypting outgoing PIN block data.</p>
    #   @return [Types::WrappedKey]
    # @!attribute incoming_as2805_attributes
    #   <p>The attributes and values to use for incoming AS2805 encryption key for PIN block translation.</p>
    #   @return [Types::As2805PekDerivationAttributes]
    class TranslatePinDataInput < Struct.new(
      nil,
      :incoming_key_identifier,
      :outgoing_key_identifier,
      :incoming_translation_attributes,
      :outgoing_translation_attributes,
      :encrypted_pin_block,
      :incoming_dukpt_attributes,
      :outgoing_dukpt_attributes,
      :incoming_wrapped_key,
      :outgoing_wrapped_key,
      :incoming_as2805_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pin_block
    #   <p>The outgoing encrypted PIN block data after translation.</p>
    #   @return [String]
    # @!attribute key_arn
    #   <p>The <code>keyARN</code> of the encryption key that Amazon Web Services Payment Cryptography uses to encrypt outgoing PIN block data after translation.</p>
    #   @return [String]
    # @!attribute key_check_value
    #   <p>The key check value (KCV) of the encryption key. The KCV is used to check if all parties holding a given key have the same key or to detect that a key has changed.</p> <p>Amazon Web Services Payment Cryptography computes the KCV according to the CMAC specification.</p>
    #   @return [String]
    class TranslatePinDataOutput < Struct.new(
      nil,
      :pin_block,
      :key_arn,
      :key_check_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters that are required for translation between ISO9564 PIN block formats 0,1,3,4.</p>
    # @!attribute iso_format0
    #   <p>Parameters that are required for ISO9564 PIN format 0 translation.</p>
    #   @return [Types::TranslationPinDataIsoFormat034]
    # @!attribute iso_format1
    #   <p>Parameters that are required for ISO9564 PIN format 1 translation.</p>
    #   @return [Types::TranslationPinDataIsoFormat1]
    # @!attribute iso_format3
    #   <p>Parameters that are required for ISO9564 PIN format 3 translation.</p>
    #   @return [Types::TranslationPinDataIsoFormat034]
    # @!attribute iso_format4
    #   <p>Parameters that are required for ISO9564 PIN format 4 translation.</p>
    #   @return [Types::TranslationPinDataIsoFormat034]
    # @!attribute as2805_format0
    #   <p>Parameters that are required for AS2805 PIN format 0 translation.</p>
    #   @return [Types::TranslationPinDataAs2805Format0]
    class TranslationIsoFormats < Struct.new(
      :iso_format0,
      :iso_format1,
      :iso_format3,
      :iso_format4,
      :as2805_format0,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class IsoFormat0 < TranslationIsoFormats; end
      class IsoFormat1 < TranslationIsoFormats; end
      class IsoFormat3 < TranslationIsoFormats; end
      class IsoFormat4 < TranslationIsoFormats; end
      class As2805Format0 < TranslationIsoFormats; end
      class Unknown < TranslationIsoFormats; end
    end

    # <p>Parameters that are required for translation between AS2805 PIN format 0 translation.</p>
    # @!attribute primary_account_number
    #   <p>The Primary Account Number (PAN) of the cardholder. A PAN is a unique identifier for a payment credit or debit card and associates the card to a specific account holder.</p>
    #   @return [String]
    class TranslationPinDataAs2805Format0 < Struct.new(
      nil,
      :primary_account_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters that are required for translation between ISO9564 PIN format 0,3,4 translation.</p>
    # @!attribute primary_account_number
    #   <p>The Primary Account Number (PAN) of the cardholder. A PAN is a unique identifier for a payment credit or debit card and associates the card to a specific account holder.</p>
    #   @return [String]
    class TranslationPinDataIsoFormat034 < Struct.new(
      nil,
      :primary_account_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters that are required for ISO9564 PIN format 1 translation.</p>
    class TranslationPinDataIsoFormat1 < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to an invalid request error.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute field_list
    #   <p>The request was denied due to an invalid request error.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      nil,
      :message,
      :field_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to an invalid request error.</p>
    # @!attribute path
    #   <p>The request was denied due to an invalid request error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The request was denied due to an invalid request error.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :path,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This request failed verification.</p>
    # @!attribute reason
    #   <p>The reason for the exception.</p>
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class VerificationFailedException < Struct.new(
      nil,
      :reason,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_identifier
    #   <p>The <code>keyARN</code> of the major encryption key that Amazon Web Services Payment Cryptography uses for ARQC verification.</p>
    #   @return [String]
    # @!attribute transaction_data
    #   <p>The transaction data that Amazon Web Services Payment Cryptography uses for ARQC verification. The same transaction is used for ARQC generation outside of Amazon Web Services Payment Cryptography.</p>
    #   @return [String]
    # @!attribute auth_request_cryptogram
    #   <p>The auth request cryptogram imported into Amazon Web Services Payment Cryptography for ARQC verification using a major encryption key and transaction data.</p>
    #   @return [String]
    # @!attribute major_key_derivation_mode
    #   <p>The method to use when deriving the major encryption key for ARQC verification within Amazon Web Services Payment Cryptography. The same key derivation mode was used for ARQC generation outside of Amazon Web Services Payment Cryptography.</p>
    #   @return [String]
    # @!attribute session_key_derivation_attributes
    #   <p>The attributes and values to use for deriving a session key for ARQC verification within Amazon Web Services Payment Cryptography. The same attributes were used for ARQC generation outside of Amazon Web Services Payment Cryptography.</p>
    #   @return [Types::SessionKeyDerivation]
    # @!attribute auth_response_attributes
    #   <p>The attributes and values for auth request cryptogram verification. These parameters are required in case using ARPC Method 1 or Method 2 for ARQC verification.</p>
    #   @return [Types::CryptogramAuthResponse]
    class VerifyAuthRequestCryptogramInput < Struct.new(
      nil,
      :key_identifier,
      :transaction_data,
      :auth_request_cryptogram,
      :major_key_derivation_mode,
      :session_key_derivation_attributes,
      :auth_response_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_arn
    #   <p>The <code>keyARN</code> of the major encryption key that Amazon Web Services Payment Cryptography uses for ARQC verification.</p>
    #   @return [String]
    # @!attribute key_check_value
    #   <p>The key check value (KCV) of the encryption key. The KCV is used to check if all parties holding a given key have the same key or to detect that a key has changed.</p> <p>Amazon Web Services Payment Cryptography computes the KCV according to the CMAC specification.</p>
    #   @return [String]
    # @!attribute auth_response_value
    #   <p>The result for ARQC verification or ARPC generation within Amazon Web Services Payment Cryptography.</p>
    #   @return [String]
    class VerifyAuthRequestCryptogramOutput < Struct.new(
      nil,
      :key_arn,
      :key_check_value,
      :auth_response_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_identifier
    #   <p>The <code>keyARN</code> of the CVK encryption key that Amazon Web Services Payment Cryptography uses to verify card data.</p>
    #   @return [String]
    # @!attribute primary_account_number
    #   <p>The Primary Account Number (PAN), a unique identifier for a payment credit or debit card that associates the card with a specific account holder.</p>
    #   @return [String]
    # @!attribute verification_attributes
    #   <p>The algorithm to use for verification of card data within Amazon Web Services Payment Cryptography.</p>
    #   @return [Types::CardVerificationAttributes]
    # @!attribute validation_data
    #   <p>The CVV or CSC value for use for card data verification within Amazon Web Services Payment Cryptography.</p>
    #   @return [String]
    class VerifyCardValidationDataInput < Struct.new(
      nil,
      :key_identifier,
      :primary_account_number,
      :verification_attributes,
      :validation_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_arn
    #   <p>The <code>keyARN</code> of the CVK encryption key that Amazon Web Services Payment Cryptography uses to verify CVV or CSC.</p>
    #   @return [String]
    # @!attribute key_check_value
    #   <p>The key check value (KCV) of the encryption key. The KCV is used to check if all parties holding a given key have the same key or to detect that a key has changed.</p> <p>Amazon Web Services Payment Cryptography computes the KCV according to the CMAC specification.</p>
    #   @return [String]
    class VerifyCardValidationDataOutput < Struct.new(
      nil,
      :key_arn,
      :key_check_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_identifier
    #   <p>The <code>keyARN</code> of the encryption key that Amazon Web Services Payment Cryptography uses to verify MAC data.</p>
    #   @return [String]
    # @!attribute message_data
    #   <p>The data on for which MAC is under verification. This value must be hexBinary.</p>
    #   @return [String]
    # @!attribute mac
    #   <p>The MAC being verified.</p>
    #   @return [String]
    # @!attribute verification_attributes
    #   <p>The attributes and data values to use for MAC verification within Amazon Web Services Payment Cryptography.</p>
    #   @return [Types::MacAttributes]
    # @!attribute mac_length
    #   <p>The length of the MAC.</p>
    #   @return [Integer]
    class VerifyMacInput < Struct.new(
      nil,
      :key_identifier,
      :message_data,
      :mac,
      :verification_attributes,
      :mac_length,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_arn
    #   <p>The <code>keyARN</code> of the encryption key that Amazon Web Services Payment Cryptography uses for MAC verification.</p>
    #   @return [String]
    # @!attribute key_check_value
    #   <p>The key check value (KCV) of the encryption key. The KCV is used to check if all parties holding a given key have the same key or to detect that a key has changed.</p> <p>Amazon Web Services Payment Cryptography computes the KCV according to the CMAC specification.</p>
    #   @return [String]
    class VerifyMacOutput < Struct.new(
      nil,
      :key_arn,
      :key_check_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute verification_key_identifier
    #   <p>The <code>keyARN</code> of the PIN verification key.</p>
    #   @return [String]
    # @!attribute encryption_key_identifier
    #   <p>The <code>keyARN</code> of the encryption key under which the PIN block data is encrypted. This key type can be PEK or BDK.</p>
    #   @return [String]
    # @!attribute verification_attributes
    #   <p>The attributes and values for PIN data verification.</p>
    #   @return [Types::PinVerificationAttributes]
    # @!attribute encrypted_pin_block
    #   <p>The encrypted PIN block data that Amazon Web Services Payment Cryptography verifies.</p>
    #   @return [String]
    # @!attribute primary_account_number
    #   <p>The Primary Account Number (PAN), a unique identifier for a payment credit or debit card that associates the card with a specific account holder.</p>
    #   @return [String]
    # @!attribute pin_block_format
    #   <p>The PIN encoding format for pin data generation as specified in ISO 9564. Amazon Web Services Payment Cryptography supports <code>ISO_Format_0</code> and <code>ISO_Format_3</code>.</p> <p>The <code>ISO_Format_0</code> PIN block format is equivalent to the ANSI X9.8, VISA-1, and ECI-1 PIN block formats. It is similar to a VISA-4 PIN block format. It supports a PIN from 4 to 12 digits in length.</p> <p>The <code>ISO_Format_3</code> PIN block format is the same as <code>ISO_Format_0</code> except that the fill digits are random values from 10 to 15.</p>
    #   @return [String]
    # @!attribute pin_data_length
    #   <p>The length of PIN being verified.</p>
    #   @return [Integer]
    # @!attribute dukpt_attributes
    #   <p>The attributes and values for the DUKPT encrypted PIN block data.</p>
    #   @return [Types::DukptAttributes]
    # @!attribute encryption_wrapped_key
    #   <p>Parameter information of a WrappedKeyBlock for encryption key exchange.</p>
    #   @return [Types::WrappedKey]
    class VerifyPinDataInput < Struct.new(
      nil,
      :verification_key_identifier,
      :encryption_key_identifier,
      :verification_attributes,
      :encrypted_pin_block,
      :primary_account_number,
      :pin_block_format,
      :pin_data_length,
      :dukpt_attributes,
      :encryption_wrapped_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute verification_key_arn
    #   <p>The <code>keyARN</code> of the PIN encryption key that Amazon Web Services Payment Cryptography uses for PIN or PIN Offset verification.</p>
    #   @return [String]
    # @!attribute verification_key_check_value
    #   <p>The key check value (KCV) of the encryption key. The KCV is used to check if all parties holding a given key have the same key or to detect that a key has changed.</p> <p>Amazon Web Services Payment Cryptography computes the KCV according to the CMAC specification.</p>
    #   @return [String]
    # @!attribute encryption_key_arn
    #   <p>The <code>keyARN</code> of the PEK that Amazon Web Services Payment Cryptography uses for encrypted pin block generation.</p>
    #   @return [String]
    # @!attribute encryption_key_check_value
    #   <p>The key check value (KCV) of the encryption key. The KCV is used to check if all parties holding a given key have the same key or to detect that a key has changed.</p> <p>Amazon Web Services Payment Cryptography computes the KCV according to the CMAC specification.</p>
    #   @return [String]
    class VerifyPinDataOutput < Struct.new(
      nil,
      :verification_key_arn,
      :verification_key_check_value,
      :encryption_key_arn,
      :encryption_key_check_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The attributes values used for Amex and Visa derivation methods.</p>
    # @!attribute authorization_request_key_arn
    #   <p>The <code>keyArn</code> of the issuer master key for cryptogram (IMK-AC) used by the operation.</p>
    #   @return [String]
    # @!attribute authorization_request_key_check_value
    #   <p>The key check value (KCV) of the issuer master key for cryptogram (IMK-AC) used by the operation.</p>
    #   @return [String]
    # @!attribute current_pin_pek_arn
    #   <p>The <code>keyArn</code> of the current PIN PEK.</p>
    #   @return [String]
    # @!attribute current_pin_pek_key_check_value
    #   <p>The key check value (KCV) of the current PIN PEK.</p>
    #   @return [String]
    class VisaAmexDerivationOutputs < Struct.new(
      nil,
      :authorization_request_key_arn,
      :authorization_request_key_check_value,
      :current_pin_pek_arn,
      :current_pin_pek_key_check_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters to derive the confidentiality and integrity keys for a Visa payment card.</p>
    # @!attribute major_key_derivation_mode
    #   <p>The method to use when deriving the master key for the payment card.</p>
    #   @return [String]
    # @!attribute primary_account_number
    #   <p>The Primary Account Number (PAN) of the cardholder.</p>
    #   @return [String]
    # @!attribute pan_sequence_number
    #   <p>A number that identifies and differentiates payment cards with the same Primary Account Number (PAN). Typically 00 is used, if no value is provided by the terminal.</p>
    #   @return [String]
    # @!attribute application_transaction_counter
    #   <p>The transaction counter of the current transaction that is provided by the terminal during transaction processing.</p>
    #   @return [String]
    # @!attribute authorization_request_key_identifier
    #   <p>The <code>keyArn</code> of the issuer master key for cryptogram (IMK-AC) for the payment card.</p>
    #   @return [String]
    # @!attribute current_pin_attributes
    #   <p>The encrypted pinblock of the old pin stored on the chip card.</p>
    #   @return [Types::CurrentPinAttributes]
    class VisaAttributes < Struct.new(
      nil,
      :major_key_derivation_mode,
      :primary_account_number,
      :pan_sequence_number,
      :application_transaction_counter,
      :authorization_request_key_identifier,
      :current_pin_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters that are required to generate or verify Visa PIN.</p>
    # @!attribute pin_verification_key_index
    #   <p>The value for PIN verification index. It is used in the Visa PIN algorithm to calculate the PVV (PIN Verification Value).</p>
    #   @return [Integer]
    class VisaPin < Struct.new(
      nil,
      :pin_verification_key_index,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters that are required to generate or verify Visa PIN.</p>
    # @!attribute pin_verification_key_index
    #   <p>The value for PIN verification index. It is used in the Visa PIN algorithm to calculate the PVV (PIN Verification Value).</p>
    #   @return [Integer]
    # @!attribute verification_value
    #   <p>Parameters that are required to generate or verify Visa PVV (PIN Verification Value).</p>
    #   @return [String]
    class VisaPinVerification < Struct.new(
      nil,
      :pin_verification_key_index,
      :verification_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters that are required to generate or verify Visa PVV (PIN Verification Value).</p>
    # @!attribute encrypted_pin_block
    #   <p>The encrypted PIN block data to verify.</p>
    #   @return [String]
    # @!attribute pin_verification_key_index
    #   <p>The value for PIN verification index. It is used in the Visa PIN algorithm to calculate the PVV (PIN Verification Value).</p>
    #   @return [Integer]
    class VisaPinVerificationValue < Struct.new(
      nil,
      :encrypted_pin_block,
      :pin_verification_key_index,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameter information of a WrappedKeyBlock for encryption key exchange.</p>
    # @!attribute wrapped_key_material
    #   <p>Parameter information of a WrappedKeyBlock for encryption key exchange.</p>
    #   @return [Types::WrappedKeyMaterial]
    # @!attribute key_check_value_algorithm
    #   <p>The algorithm that Amazon Web Services Payment Cryptography uses to calculate the key check value (KCV). It is used to validate the key integrity.</p> <p>For TDES keys, the KCV is computed by encrypting 8 bytes, each with value of zero, with the key to be checked and retaining the 3 highest order bytes of the encrypted result. For AES keys, the KCV is computed using a CMAC algorithm where the input data is 16 bytes of zero and retaining the 3 highest order bytes of the encrypted result.</p>
    #   @return [String]
    class WrappedKey < Struct.new(
      nil,
      :wrapped_key_material,
      :key_check_value_algorithm,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameter information of a WrappedKeyBlock for encryption key exchange.</p>
    # @!attribute tr31_key_block
    #   <p>The TR-31 wrapped key block.</p>
    #   @return [String]
    # @!attribute diffie_hellman_symmetric_key
    #   <p>The parameter information for deriving a ECDH shared key.</p>
    #   @return [Types::EcdhDerivationAttributes]
    class WrappedKeyMaterial < Struct.new(
      :tr31_key_block,
      :diffie_hellman_symmetric_key,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Tr31KeyBlock < WrappedKeyMaterial; end
      class DiffieHellmanSymmetricKey < WrappedKeyMaterial; end
      class Unknown < WrappedKeyMaterial; end
    end

    # <p>The parameter information of the outgoing wrapped key block.</p>
    # @!attribute wrapped_key_material
    #   <p>The wrapped key block of the outgoing transaction key.</p>
    #   @return [String]
    # @!attribute key_check_value
    #   <p>The key check value (KCV) of the key contained within the outgoing TR31WrappedKeyBlock.</p> <p> The KCV is used to check if all parties holding a given key have the same key or to detect that a key has changed. For more information on KCV, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/terminology.html#terms.kcv">KCV</a> in the <i>Amazon Web Services Payment Cryptography User Guide</i>.</p>
    #   @return [String]
    # @!attribute wrapped_key_material_format
    #   <p>The key block format of the wrapped key.</p>
    #   @return [String]
    class WrappedWorkingKey < Struct.new(
      nil,
      :wrapped_key_material,
      :key_check_value,
      :wrapped_key_material_format,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
