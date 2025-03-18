# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::TaxSettings
  module Types

    # The access is denied for the Amazon Web ServicesSupport API.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = [:message]
      include Aws::Structure
    end

    # An object with your `accountId` and TRN information.
    #
    # @!attribute [rw] account_id
    #   List of unique account identifiers.
    #   @return [String]
    #
    # @!attribute [rw] account_meta_data
    #   The meta data information associated with the account.
    #   @return [Types::AccountMetaData]
    #
    # @!attribute [rw] tax_inheritance_details
    #   Tax inheritance information associated with the account.
    #   @return [Types::TaxInheritanceDetails]
    #
    # @!attribute [rw] tax_registration
    #   Your TRN information. Instead of having full legal address, here TRN
    #   information will have jurisdiction details (for example, country
    #   code and state/region/province if applicable).
    #   @return [Types::TaxRegistrationWithJurisdiction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/AccountDetails AWS API Documentation
    #
    class AccountDetails < Struct.new(
      :account_id,
      :account_meta_data,
      :tax_inheritance_details,
      :tax_registration)
      SENSITIVE = [:account_meta_data, :tax_registration]
      include Aws::Structure
    end

    # The meta data information associated with the account.
    #
    # @!attribute [rw] account_name
    #   The Amazon Web Services accounts name.
    #   @return [String]
    #
    # @!attribute [rw] address
    #   The details of the address associated with the TRN information.
    #   @return [Types::Address]
    #
    # @!attribute [rw] address_role_map
    #   Address roles associated with the account containing country code
    #   information.
    #   @return [Hash<String,Types::Jurisdiction>]
    #
    # @!attribute [rw] address_type
    #   The type of address associated with the legal profile.
    #   @return [String]
    #
    # @!attribute [rw] seller
    #   Seller information associated with the account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/AccountMetaData AWS API Documentation
    #
    class AccountMetaData < Struct.new(
      :account_name,
      :address,
      :address_role_map,
      :address_type,
      :seller)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional tax information associated with your tax registration
    # number (TRN). Depending on the TRN for a specific country, you might
    # need to specify this information when you set your TRN.
    #
    # You can only specify one of the following parameters and the value
    # can't be empty.
    #
    # <note markdown="1"> The parameter that you specify must match the country for the TRN, if
    # available. For example, if you set a TRN in Canada for specific
    # provinces, you must also specify the `canadaAdditionalInfo` parameter.
    #
    #  </note>
    #
    # @!attribute [rw] canada_additional_info
    #   Additional tax information associated with your TRN in Canada.
    #   @return [Types::CanadaAdditionalInfo]
    #
    # @!attribute [rw] egypt_additional_info
    #   Additional tax information to specify for a TRN in Egypt.
    #   @return [Types::EgyptAdditionalInfo]
    #
    # @!attribute [rw] estonia_additional_info
    #   Additional tax information to specify for a TRN in Estonia.
    #   @return [Types::EstoniaAdditionalInfo]
    #
    # @!attribute [rw] georgia_additional_info
    #   Additional tax information to specify for a TRN in Georgia.
    #   @return [Types::GeorgiaAdditionalInfo]
    #
    # @!attribute [rw] greece_additional_info
    #   Additional tax information to specify for a TRN in Greece.
    #   @return [Types::GreeceAdditionalInfo]
    #
    # @!attribute [rw] israel_additional_info
    #   Additional tax information to specify for a TRN in Israel.
    #   @return [Types::IsraelAdditionalInfo]
    #
    # @!attribute [rw] italy_additional_info
    #   Additional tax information to specify for a TRN in Italy.
    #   @return [Types::ItalyAdditionalInfo]
    #
    # @!attribute [rw] kenya_additional_info
    #   Additional tax information to specify for a TRN in Kenya.
    #   @return [Types::KenyaAdditionalInfo]
    #
    # @!attribute [rw] malaysia_additional_info
    #   Additional tax information to specify for a TRN in Malaysia.
    #   @return [Types::MalaysiaAdditionalInfo]
    #
    # @!attribute [rw] poland_additional_info
    #   Additional tax information associated with your TRN in Poland.
    #   @return [Types::PolandAdditionalInfo]
    #
    # @!attribute [rw] romania_additional_info
    #   Additional tax information to specify for a TRN in Romania.
    #   @return [Types::RomaniaAdditionalInfo]
    #
    # @!attribute [rw] saudi_arabia_additional_info
    #   Additional tax information associated with your TRN in Saudi Arabia.
    #   @return [Types::SaudiArabiaAdditionalInfo]
    #
    # @!attribute [rw] south_korea_additional_info
    #   Additional tax information to specify for a TRN in South Korea.
    #   @return [Types::SouthKoreaAdditionalInfo]
    #
    # @!attribute [rw] spain_additional_info
    #   Additional tax information to specify for a TRN in Spain.
    #   @return [Types::SpainAdditionalInfo]
    #
    # @!attribute [rw] turkey_additional_info
    #   Additional tax information to specify for a TRN in Turkey.
    #   @return [Types::TurkeyAdditionalInfo]
    #
    # @!attribute [rw] ukraine_additional_info
    #   Additional tax information associated with your TRN in Ukraine.
    #   @return [Types::UkraineAdditionalInfo]
    #
    # @!attribute [rw] vietnam_additional_info
    #   Additional tax information to specify for a TRN in Vietnam.
    #   @return [Types::VietnamAdditionalInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/AdditionalInfoRequest AWS API Documentation
    #
    class AdditionalInfoRequest < Struct.new(
      :canada_additional_info,
      :egypt_additional_info,
      :estonia_additional_info,
      :georgia_additional_info,
      :greece_additional_info,
      :israel_additional_info,
      :italy_additional_info,
      :kenya_additional_info,
      :malaysia_additional_info,
      :poland_additional_info,
      :romania_additional_info,
      :saudi_arabia_additional_info,
      :south_korea_additional_info,
      :spain_additional_info,
      :turkey_additional_info,
      :ukraine_additional_info,
      :vietnam_additional_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional tax information associated with your TRN. The Tax Settings
    # API returns country-specific information in the response when any
    # additional information is present with your TRN for the following
    # countries.
    #
    # @!attribute [rw] brazil_additional_info
    #   Additional tax information associated with your TRN in Brazil. The
    #   Tax Settings API returns this information in your response when any
    #   additional information is present with your TRN in Brazil.
    #   @return [Types::BrazilAdditionalInfo]
    #
    # @!attribute [rw] canada_additional_info
    #   Additional tax information associated with your TRN in Canada.
    #   @return [Types::CanadaAdditionalInfo]
    #
    # @!attribute [rw] egypt_additional_info
    #   Additional tax information to specify for a TRN in Egypt.
    #   @return [Types::EgyptAdditionalInfo]
    #
    # @!attribute [rw] estonia_additional_info
    #   Additional tax information associated with your TRN in Estonia.
    #   @return [Types::EstoniaAdditionalInfo]
    #
    # @!attribute [rw] georgia_additional_info
    #   Additional tax information associated with your TRN in Georgia.
    #   @return [Types::GeorgiaAdditionalInfo]
    #
    # @!attribute [rw] greece_additional_info
    #   Additional tax information to specify for a TRN in Greece.
    #   @return [Types::GreeceAdditionalInfo]
    #
    # @!attribute [rw] india_additional_info
    #   Additional tax information in India.
    #   @return [Types::IndiaAdditionalInfo]
    #
    # @!attribute [rw] israel_additional_info
    #   Additional tax information associated with your TRN in Israel.
    #   @return [Types::IsraelAdditionalInfo]
    #
    # @!attribute [rw] italy_additional_info
    #   Additional tax information associated with your TRN in Italy.
    #   @return [Types::ItalyAdditionalInfo]
    #
    # @!attribute [rw] kenya_additional_info
    #   Additional tax information associated with your TRN in Kenya.
    #   @return [Types::KenyaAdditionalInfo]
    #
    # @!attribute [rw] malaysia_additional_info
    #   Additional tax information associated with your TRN in Malaysia.
    #   @return [Types::MalaysiaAdditionalInfo]
    #
    # @!attribute [rw] poland_additional_info
    #   Additional tax information associated with your TRN in Poland.
    #   @return [Types::PolandAdditionalInfo]
    #
    # @!attribute [rw] romania_additional_info
    #   Additional tax information to specify for a TRN in Romania.
    #   @return [Types::RomaniaAdditionalInfo]
    #
    # @!attribute [rw] saudi_arabia_additional_info
    #   Additional tax information associated with your TRN in Saudi Arabia.
    #   @return [Types::SaudiArabiaAdditionalInfo]
    #
    # @!attribute [rw] south_korea_additional_info
    #   Additional tax information associated with your TRN in South Korea.
    #   @return [Types::SouthKoreaAdditionalInfo]
    #
    # @!attribute [rw] spain_additional_info
    #   Additional tax information associated with your TRN in Spain.
    #   @return [Types::SpainAdditionalInfo]
    #
    # @!attribute [rw] turkey_additional_info
    #   Additional tax information associated with your TRN in Turkey.
    #   @return [Types::TurkeyAdditionalInfo]
    #
    # @!attribute [rw] ukraine_additional_info
    #   Additional tax information associated with your TRN in Ukraine.
    #   @return [Types::UkraineAdditionalInfo]
    #
    # @!attribute [rw] vietnam_additional_info
    #   Additional tax information to specify for a TRN in Vietnam.
    #   @return [Types::VietnamAdditionalInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/AdditionalInfoResponse AWS API Documentation
    #
    class AdditionalInfoResponse < Struct.new(
      :brazil_additional_info,
      :canada_additional_info,
      :egypt_additional_info,
      :estonia_additional_info,
      :georgia_additional_info,
      :greece_additional_info,
      :india_additional_info,
      :israel_additional_info,
      :italy_additional_info,
      :kenya_additional_info,
      :malaysia_additional_info,
      :poland_additional_info,
      :romania_additional_info,
      :saudi_arabia_additional_info,
      :south_korea_additional_info,
      :spain_additional_info,
      :turkey_additional_info,
      :ukraine_additional_info,
      :vietnam_additional_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the address associated with the TRN information.
    #
    # @!attribute [rw] address_line_1
    #   The first line of the address.
    #   @return [String]
    #
    # @!attribute [rw] address_line_2
    #   The second line of the address, if applicable.
    #   @return [String]
    #
    # @!attribute [rw] address_line_3
    #   The third line of the address, if applicable. Currently, the Tax
    #   Settings API accepts the `addressLine3` parameter only for Saudi
    #   Arabia. When you specify a TRN in Saudi Arabia, you must enter the
    #   `addressLine3` and specify the building number for the address. For
    #   example, you might enter `1234`.
    #   @return [String]
    #
    # @!attribute [rw] city
    #   The city that the address is in.
    #   @return [String]
    #
    # @!attribute [rw] country_code
    #   The country code for the country that the address is in.
    #   @return [String]
    #
    # @!attribute [rw] district_or_county
    #   The district or county the address is located.
    #
    #   <note markdown="1"> For addresses in Brazil, this parameter uses the name of the
    #   neighborhood. When you set a TRN in Brazil, use `districtOrCounty`
    #   for the neighborhood name.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] postal_code
    #   The postal code associated with the address.
    #   @return [String]
    #
    # @!attribute [rw] state_or_region
    #   The state, region, or province that the address is located. This
    #   field is only required for Canada, India, United Arab Emirates,
    #   Romania, and Brazil (CPF). It is optional for all other countries.
    #
    #   If this is required for tax settings, use the same name as shown on
    #   the **Tax Settings** page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/Address AWS API Documentation
    #
    class Address < Struct.new(
      :address_line_1,
      :address_line_2,
      :address_line_3,
      :city,
      :country_code,
      :district_or_county,
      :postal_code,
      :state_or_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # Failed to upload the tax exemption document to Amazon Web
    # ServicesSupport case.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/AttachmentUploadException AWS API Documentation
    #
    class AttachmentUploadException < Struct.new(
      :message)
      SENSITIVE = [:message]
      include Aws::Structure
    end

    # The address domain associate with the tax information.
    #
    # @!attribute [rw] country
    #   The country code for the country that the address is in.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state that the address is located.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/Authority AWS API Documentation
    #
    class Authority < Struct.new(
      :country,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # The error object for representing failures in the
    # `BatchDeleteTaxRegistration` operation.
    #
    # @!attribute [rw] account_id
    #   The unique account identifier for the account whose tax registration
    #   couldn't be deleted during the `BatchDeleteTaxRegistration`
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The error code for an individual failure in
    #   BatchDeleteTaxRegistration operation.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The error message for an individual failure in the
    #   `BatchDeleteTaxRegistration` operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/BatchDeleteTaxRegistrationError AWS API Documentation
    #
    class BatchDeleteTaxRegistrationError < Struct.new(
      :account_id,
      :code,
      :message)
      SENSITIVE = [:message]
      include Aws::Structure
    end

    # @!attribute [rw] account_ids
    #   List of unique account identifiers.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/BatchDeleteTaxRegistrationRequest AWS API Documentation
    #
    class BatchDeleteTaxRegistrationRequest < Struct.new(
      :account_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   The list of errors for the accounts the TRN information could not be
    #   deleted for.
    #   @return [Array<Types::BatchDeleteTaxRegistrationError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/BatchDeleteTaxRegistrationResponse AWS API Documentation
    #
    class BatchDeleteTaxRegistrationResponse < Struct.new(
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_ids
    #   List of unique account identifiers.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/BatchGetTaxExemptionsRequest AWS API Documentation
    #
    class BatchGetTaxExemptionsRequest < Struct.new(
      :account_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_accounts
    #   The list of accounts that failed to get tax exemptions.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tax_exemption_details_map
    #   The tax exemption details map of accountId and tax exemption
    #   details.
    #   @return [Hash<String,Types::TaxExemptionDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/BatchGetTaxExemptionsResponse AWS API Documentation
    #
    class BatchGetTaxExemptionsResponse < Struct.new(
      :failed_accounts,
      :tax_exemption_details_map)
      SENSITIVE = []
      include Aws::Structure
    end

    # The error object for representing failures in the
    # `BatchPutTaxRegistration` operation.
    #
    # @!attribute [rw] account_id
    #   The unique account identifier for the account that the tax
    #   registration couldn't be added, or updated during the
    #   `BatchPutTaxRegistration` operation.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The error code for an individual failure in the
    #   `BatchPutTaxRegistration` operation.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The error message for an individual failure in the
    #   `BatchPutTaxRegistration` operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/BatchPutTaxRegistrationError AWS API Documentation
    #
    class BatchPutTaxRegistrationError < Struct.new(
      :account_id,
      :code,
      :message)
      SENSITIVE = [:message]
      include Aws::Structure
    end

    # @!attribute [rw] account_ids
    #   List of unique account identifiers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tax_registration_entry
    #   Your TRN information that will be stored to the accounts mentioned
    #   in `putEntries`.
    #   @return [Types::TaxRegistrationEntry]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/BatchPutTaxRegistrationRequest AWS API Documentation
    #
    class BatchPutTaxRegistrationRequest < Struct.new(
      :account_ids,
      :tax_registration_entry)
      SENSITIVE = [:tax_registration_entry]
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   List of errors for the accounts the TRN information could not be
    #   added or updated to.
    #   @return [Array<Types::BatchPutTaxRegistrationError>]
    #
    # @!attribute [rw] status
    #   The status of your TRN stored in the system after processing. Based
    #   on the validation occurring on the TRN, the status can be
    #   `Verified`, `Pending` or `Rejected`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/BatchPutTaxRegistrationResponse AWS API Documentation
    #
    class BatchPutTaxRegistrationResponse < Struct.new(
      :errors,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional tax information associated with your TRN in Brazil.
    #
    # @!attribute [rw] ccm_code
    #   The Cadastro de Contribuintes Mobiliários (CCM) code for your TRN in
    #   Brazil. This only applies for a CNPJ tax type for the São Paulo
    #   municipality.
    #   @return [String]
    #
    # @!attribute [rw] legal_nature_code
    #   Legal nature of business, based on your TRN in Brazil. This only
    #   applies for a CNPJ tax type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/BrazilAdditionalInfo AWS API Documentation
    #
    class BrazilAdditionalInfo < Struct.new(
      :ccm_code,
      :legal_nature_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional tax information associated with your TRN in Canada .
    #
    # @!attribute [rw] canada_quebec_sales_tax_number
    #   The Quebec Sales Tax ID number. Leave blank if you do not have a
    #   Quebec Sales Tax ID number.
    #   @return [String]
    #
    # @!attribute [rw] canada_retail_sales_tax_number
    #   Manitoba Retail Sales Tax ID number. Customers purchasing Amazon Web
    #   Services services for resale in Manitoba must provide a valid Retail
    #   Sales Tax ID number for Manitoba. Leave this blank if you do not
    #   have a Retail Sales Tax ID number in Manitoba or are not purchasing
    #   Amazon Web Services services for resale.
    #   @return [String]
    #
    # @!attribute [rw] is_reseller_account
    #   The value for this parameter must be `true` if the
    #   `provincialSalesTaxId` value is provided for a TRN in British
    #   Columbia, Saskatchewan, or Manitoba provinces.
    #
    #   To claim a provincial sales tax (PST) and retail sales tax (RST)
    #   reseller exemption, you must confirm that purchases from this
    #   account were made for resale. Otherwise, remove the PST or RST
    #   number from the `provincialSalesTaxId` parameter from your request.
    #   @return [Boolean]
    #
    # @!attribute [rw] provincial_sales_tax_id
    #   The provincial sales tax ID for your TRN in Canada. This parameter
    #   can represent the following:
    #
    #   * Provincial sales tax ID number for British Columbia and
    #     Saskatchewan provinces
    #
    #   * Manitoba retail sales tax ID number for Manitoba province
    #
    #   * Quebec sales tax ID number for Quebec province
    #
    #   The Tax Setting API only accepts this parameter if the TRN is
    #   specified for the previous provinces. For other provinces, the Tax
    #   Settings API doesn't accept this parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/CanadaAdditionalInfo AWS API Documentation
    #
    class CanadaAdditionalInfo < Struct.new(
      :canada_quebec_sales_tax_number,
      :canada_retail_sales_tax_number,
      :is_reseller_account,
      :provincial_sales_tax_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # You've exceeded the Amazon Web ServicesSupport case creation limit
    # for your account.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/CaseCreationLimitExceededException AWS API Documentation
    #
    class CaseCreationLimitExceededException < Struct.new(
      :message)
      SENSITIVE = [:message]
      include Aws::Structure
    end

    # The exception when the input is creating conflict with the given
    # state.
    #
    # @!attribute [rw] error_code
    #   409
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :error_code,
      :message)
      SENSITIVE = [:message]
      include Aws::Structure
    end

    # @!attribute [rw] authority_id
    #   The unique authority Id for the supplemental TRN information that
    #   needs to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/DeleteSupplementalTaxRegistrationRequest AWS API Documentation
    #
    class DeleteSupplementalTaxRegistrationRequest < Struct.new(
      :authority_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/DeleteSupplementalTaxRegistrationResponse AWS API Documentation
    #
    class DeleteSupplementalTaxRegistrationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] account_id
    #   Unique account identifier for the TRN information that needs to be
    #   deleted. If this isn't passed, the account ID corresponding to the
    #   credentials of the API caller will be used for this parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/DeleteTaxRegistrationRequest AWS API Documentation
    #
    class DeleteTaxRegistrationRequest < Struct.new(
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/DeleteTaxRegistrationResponse AWS API Documentation
    #
    class DeleteTaxRegistrationResponse < Aws::EmptyStructure; end

    # The location of the Amazon S3 bucket that you specify to download your
    # tax documents to.
    #
    # @!attribute [rw] bucket
    #   The name of your Amazon S3 bucket that you specify to download your
    #   tax documents to.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The Amazon S3 object prefix that you specify for your tax document
    #   file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/DestinationS3Location AWS API Documentation
    #
    class DestinationS3Location < Struct.new(
      :bucket,
      :prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional tax information to specify for a TRN in Egypt.
    #
    # @!attribute [rw] unique_identification_number
    #   The unique identification number provided by the Egypt Tax
    #   Authority.
    #   @return [String]
    #
    # @!attribute [rw] unique_identification_number_expiration_date
    #   The expiration date of the unique identification number provided by
    #   the Egypt Tax Authority.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/EgyptAdditionalInfo AWS API Documentation
    #
    class EgyptAdditionalInfo < Struct.new(
      :unique_identification_number,
      :unique_identification_number_expiration_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional tax information associated with your TRN in Estonia.
    #
    # @!attribute [rw] registry_commercial_code
    #   Registry commercial code (RCC) for your TRN in Estonia. This value
    #   is an eight-numeric string, such as `12345678`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/EstoniaAdditionalInfo AWS API Documentation
    #
    class EstoniaAdditionalInfo < Struct.new(
      :registry_commercial_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The exemption certificate.
    #
    # @!attribute [rw] document_file
    #   The exemption certificate file content.
    #   @return [String]
    #
    # @!attribute [rw] document_name
    #   The exemption certificate file name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/ExemptionCertificate AWS API Documentation
    #
    class ExemptionCertificate < Struct.new(
      :document_file,
      :document_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional tax information associated with your TRN in Georgia.
    #
    # @!attribute [rw] person_type
    #   The legal person or physical person assigned to this TRN in Georgia.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/GeorgiaAdditionalInfo AWS API Documentation
    #
    class GeorgiaAdditionalInfo < Struct.new(
      :person_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/GetTaxExemptionTypesRequest AWS API Documentation
    #
    class GetTaxExemptionTypesRequest < Aws::EmptyStructure; end

    # @!attribute [rw] tax_exemption_types
    #   The supported types of tax exemptions.
    #   @return [Array<Types::TaxExemptionType>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/GetTaxExemptionTypesResponse AWS API Documentation
    #
    class GetTaxExemptionTypesResponse < Struct.new(
      :tax_exemption_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/GetTaxInheritanceRequest AWS API Documentation
    #
    class GetTaxInheritanceRequest < Aws::EmptyStructure; end

    # @!attribute [rw] heritage_status
    #   The tax inheritance status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/GetTaxInheritanceResponse AWS API Documentation
    #
    class GetTaxInheritanceResponse < Struct.new(
      :heritage_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] destination_s3_location
    #   The Amazon S3 bucket that you specify to download your tax documents
    #   to.
    #   @return [Types::DestinationS3Location]
    #
    # @!attribute [rw] tax_document_metadata
    #   The metadata for your tax document.
    #   @return [Types::TaxDocumentMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/GetTaxRegistrationDocumentRequest AWS API Documentation
    #
    class GetTaxRegistrationDocumentRequest < Struct.new(
      :destination_s3_location,
      :tax_document_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] destination_file_path
    #   The file path of the Amazon S3 bucket where you want to download
    #   your tax document to.
    #   @return [String]
    #
    # @!attribute [rw] presigned_s3_url
    #   The Amazon S3 presigned URL of the tax registration document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/GetTaxRegistrationDocumentResponse AWS API Documentation
    #
    class GetTaxRegistrationDocumentResponse < Struct.new(
      :destination_file_path,
      :presigned_s3_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   Your unique account identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/GetTaxRegistrationRequest AWS API Documentation
    #
    class GetTaxRegistrationRequest < Struct.new(
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tax_registration
    #   TRN information of the account mentioned in the request.
    #   @return [Types::TaxRegistration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/GetTaxRegistrationResponse AWS API Documentation
    #
    class GetTaxRegistrationResponse < Struct.new(
      :tax_registration)
      SENSITIVE = [:tax_registration]
      include Aws::Structure
    end

    # Additional tax information to specify for a TRN in Greece.
    #
    # @!attribute [rw] contracting_authority_code
    #   The code of contracting authority for e-invoicing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/GreeceAdditionalInfo AWS API Documentation
    #
    class GreeceAdditionalInfo < Struct.new(
      :contracting_authority_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional tax information in India.
    #
    # @!attribute [rw] pan
    #   India pan information associated with the account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/IndiaAdditionalInfo AWS API Documentation
    #
    class IndiaAdditionalInfo < Struct.new(
      :pan)
      SENSITIVE = []
      include Aws::Structure
    end

    # The exception thrown when an unexpected error occurs when processing a
    # request.
    #
    # @!attribute [rw] error_code
    #   500
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :error_code,
      :message)
      SENSITIVE = [:message]
      include Aws::Structure
    end

    # Additional tax information associated with your TRN in Israel.
    #
    # @!attribute [rw] customer_type
    #   Customer type for your TRN in Israel. The value can be `Business` or
    #   `Individual`. Use `Business`for entities such as not-for-profit and
    #   financial institutions.
    #   @return [String]
    #
    # @!attribute [rw] dealer_type
    #   Dealer type for your TRN in Israel. If you're not a local
    #   authorized dealer with an Israeli VAT ID, specify your tax
    #   identification number so that Amazon Web Services can send you a
    #   compliant tax invoice.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/IsraelAdditionalInfo AWS API Documentation
    #
    class IsraelAdditionalInfo < Struct.new(
      :customer_type,
      :dealer_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional tax information associated with your TRN in Italy.
    #
    # @!attribute [rw] cig_number
    #   The tender procedure identification code.
    #   @return [String]
    #
    # @!attribute [rw] cup_number
    #   Additional tax information to specify for a TRN in Italy. This is
    #   managed by the Interministerial Committee for Economic Planning
    #   (CIPE) which characterizes every public investment project
    #   (Individual Project Code).
    #   @return [String]
    #
    # @!attribute [rw] sdi_account_id
    #   Additional tax information to specify for a TRN in Italy. Use
    #   CodiceDestinatario to receive your invoices via web service (API) or
    #   FTP.
    #   @return [String]
    #
    # @!attribute [rw] tax_code
    #   List of service tax codes for your TRN in Italy. You can use your
    #   customer tax code as part of a VAT Group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/ItalyAdditionalInfo AWS API Documentation
    #
    class ItalyAdditionalInfo < Struct.new(
      :cig_number,
      :cup_number,
      :sdi_account_id,
      :tax_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The jurisdiction details of the TRN information of the customers. This
    # doesn't contain full legal address, and contains only country code
    # and state/region/province.
    #
    # @!attribute [rw] country_code
    #   The country code of the jurisdiction.
    #   @return [String]
    #
    # @!attribute [rw] state_or_region
    #   The state, region, or province associated with the country of the
    #   jurisdiction, if applicable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/Jurisdiction AWS API Documentation
    #
    class Jurisdiction < Struct.new(
      :country_code,
      :state_or_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional tax information associated with your TRN in Kenya.
    #
    # @!attribute [rw] person_type
    #   The legal person or physical person assigned to this TRN in Kenya.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/KenyaAdditionalInfo AWS API Documentation
    #
    class KenyaAdditionalInfo < Struct.new(
      :person_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The number of `taxRegistrations` results you want in one response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/ListSupplementalTaxRegistrationsRequest AWS API Documentation
    #
    class ListSupplementalTaxRegistrationsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] tax_registrations
    #   The list of supplemental tax registrations.
    #   @return [Array<Types::SupplementalTaxRegistration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/ListSupplementalTaxRegistrationsResponse AWS API Documentation
    #
    class ListSupplementalTaxRegistrationsResponse < Struct.new(
      :next_token,
      :tax_registrations)
      SENSITIVE = [:tax_registrations]
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The number of results you want in one response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/ListTaxExemptionsRequest AWS API Documentation
    #
    class ListTaxExemptionsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] tax_exemption_details_map
    #   The tax exemption details map of `accountId` and tax exemption
    #   details.
    #   @return [Hash<String,Types::TaxExemptionDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/ListTaxExemptionsResponse AWS API Documentation
    #
    class ListTaxExemptionsResponse < Struct.new(
      :next_token,
      :tax_exemption_details_map)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   Number of `accountDetails` results you want in one response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/ListTaxRegistrationsRequest AWS API Documentation
    #
    class ListTaxRegistrationsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_details
    #   The list of account details. This contains account Ids and TRN
    #   Information for each of the linked accounts.
    #   @return [Array<Types::AccountDetails>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/ListTaxRegistrationsResponse AWS API Documentation
    #
    class ListTaxRegistrationsResponse < Struct.new(
      :account_details,
      :next_token)
      SENSITIVE = [:account_details]
      include Aws::Structure
    end

    # Additional tax information associated with your TRN in Malaysia.
    #
    # @!attribute [rw] business_registration_number
    #   The tax registration number (TRN) in Malaysia.
    #
    #   For individual, you can specify the `taxInformationNumber` in
    #   `MalaysiaAdditionalInfo` with NRIC type, and a valid MyKad or NRIC
    #   number. For business, you must specify a
    #   `businessRegistrationNumber` in `MalaysiaAdditionalInfo` with a TIN
    #   type and tax identification number. For business resellers, you must
    #   specify a `businessRegistrationNumber` and `taxInformationNumber` in
    #   `MalaysiaAdditionalInfo` with a sales and service tax (SST) type and
    #   a valid SST number.
    #
    #   For business resellers with service codes, you must specify
    #   `businessRegistrationNumber`, `taxInformationNumber`, and distinct
    #   `serviceTaxCodes` in `MalaysiaAdditionalInfo` with a SST type and
    #   valid sales and service tax (SST) number. By using this API
    #   operation, Amazon Web Services registers your self-declaration that
    #   you’re an authorized business reseller registered with the Royal
    #   Malaysia Customs Department (RMCD), and have a valid SST number.
    #   @return [String]
    #
    # @!attribute [rw] service_tax_codes
    #   List of service tax codes for your TRN in Malaysia.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tax_information_number
    #   The tax information number in Malaysia.
    #
    #   For individual, you can specify the `taxInformationNumber` in
    #   `MalaysiaAdditionalInfo` with NRIC type, and a valid MyKad or NRIC
    #   number. For business resellers, you must specify a
    #   `businessRegistrationNumber` and `taxInformationNumber` in
    #   `MalaysiaAdditionalInfo` with a sales and service tax (SST) type and
    #   a valid SST number.
    #
    #   For business resellers with service codes, you must specify
    #   `businessRegistrationNumber`, `taxInformationNumber`, and distinct
    #   `serviceTaxCodes` in `MalaysiaAdditionalInfo` with a SST type and
    #   valid sales and service tax (SST) number. By using this API
    #   operation, Amazon Web Services registers your self-declaration that
    #   you’re an authorized business reseller registered with the Royal
    #   Malaysia Customs Department (RMCD), and have a valid SST number.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/MalaysiaAdditionalInfo AWS API Documentation
    #
    class MalaysiaAdditionalInfo < Struct.new(
      :business_registration_number,
      :service_tax_codes,
      :tax_information_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional tax information associated with your TRN in Poland.
    #
    # @!attribute [rw] individual_registration_number
    #   The individual tax registration number (NIP). Individual NIP is
    #   valid for other taxes excluding VAT purposes.
    #   @return [String]
    #
    # @!attribute [rw] is_group_vat_enabled
    #   True if your business is a member of a VAT group with a NIP active
    #   for VAT purposes. Otherwise, this is false.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/PolandAdditionalInfo AWS API Documentation
    #
    class PolandAdditionalInfo < Struct.new(
      :individual_registration_number,
      :is_group_vat_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tax_registration_entry
    #   The supplemental TRN information that will be stored for the caller
    #   account ID.
    #   @return [Types::SupplementalTaxRegistrationEntry]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/PutSupplementalTaxRegistrationRequest AWS API Documentation
    #
    class PutSupplementalTaxRegistrationRequest < Struct.new(
      :tax_registration_entry)
      SENSITIVE = [:tax_registration_entry]
      include Aws::Structure
    end

    # @!attribute [rw] authority_id
    #   Unique authority ID for the supplemental TRN information that was
    #   stored.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the supplemental TRN stored in the system after
    #   processing. Based on the validation occurring on the TRN, the status
    #   can be `Verified`, `Pending`, `Rejected`, or `Deleted`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/PutSupplementalTaxRegistrationResponse AWS API Documentation
    #
    class PutSupplementalTaxRegistrationResponse < Struct.new(
      :authority_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_ids
    #   The list of unique account identifiers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] authority
    #   The address domain associate with the tax information.
    #   @return [Types::Authority]
    #
    # @!attribute [rw] exemption_certificate
    #   The exemption certificate.
    #   @return [Types::ExemptionCertificate]
    #
    # @!attribute [rw] exemption_type
    #   The exemption type. Use the supported tax exemption type
    #   description.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/PutTaxExemptionRequest AWS API Documentation
    #
    class PutTaxExemptionRequest < Struct.new(
      :account_ids,
      :authority,
      :exemption_certificate,
      :exemption_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] case_id
    #   The customer support case ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/PutTaxExemptionResponse AWS API Documentation
    #
    class PutTaxExemptionResponse < Struct.new(
      :case_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] heritage_status
    #   The tax inheritance status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/PutTaxInheritanceRequest AWS API Documentation
    #
    class PutTaxInheritanceRequest < Struct.new(
      :heritage_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/PutTaxInheritanceResponse AWS API Documentation
    #
    class PutTaxInheritanceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] account_id
    #   Your unique account identifier.
    #   @return [String]
    #
    # @!attribute [rw] tax_registration_entry
    #   Your TRN information that will be stored to the account mentioned in
    #   `accountId`.
    #   @return [Types::TaxRegistrationEntry]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/PutTaxRegistrationRequest AWS API Documentation
    #
    class PutTaxRegistrationRequest < Struct.new(
      :account_id,
      :tax_registration_entry)
      SENSITIVE = [:tax_registration_entry]
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The status of your TRN stored in the system after processing. Based
    #   on the validation occurring on the TRN, the status can be
    #   `Verified`, `Pending` or `Rejected`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/PutTaxRegistrationResponse AWS API Documentation
    #
    class PutTaxRegistrationResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The exception thrown when the input doesn't have a resource
    # associated to it.
    #
    # @!attribute [rw] error_code
    #   404
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :error_code,
      :message)
      SENSITIVE = [:message]
      include Aws::Structure
    end

    # Additional tax information to specify for a TRN in Romania.
    #
    # @!attribute [rw] tax_registration_number_type
    #   The tax registration number type. The value can be
    #   `TaxRegistrationNumber` or `LocalRegistrationNumber`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/RomaniaAdditionalInfo AWS API Documentation
    #
    class RomaniaAdditionalInfo < Struct.new(
      :tax_registration_number_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional tax information associated with your TRN in Saudi Arabia.
    #
    # @!attribute [rw] tax_registration_number_type
    #   The tax registration number type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/SaudiArabiaAdditionalInfo AWS API Documentation
    #
    class SaudiArabiaAdditionalInfo < Struct.new(
      :tax_registration_number_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon S3 bucket in your account where your tax document is
    # located.
    #
    # @!attribute [rw] bucket
    #   The name of your Amazon S3 bucket that your tax document is located.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The object key of your tax document object in Amazon S3.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/SourceS3Location AWS API Documentation
    #
    class SourceS3Location < Struct.new(
      :bucket,
      :key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional tax information associated with your TRN in South Korea.
    #
    # @!attribute [rw] business_representative_name
    #   The business legal name based on the most recently uploaded tax
    #   registration certificate.
    #   @return [String]
    #
    # @!attribute [rw] item_of_business
    #   Item of business based on the most recently uploaded tax
    #   registration certificate.
    #   @return [String]
    #
    # @!attribute [rw] line_of_business
    #   Line of business based on the most recently uploaded tax
    #   registration certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/SouthKoreaAdditionalInfo AWS API Documentation
    #
    class SouthKoreaAdditionalInfo < Struct.new(
      :business_representative_name,
      :item_of_business,
      :line_of_business)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional tax information associated with your TRN in Spain.
    #
    # @!attribute [rw] registration_type
    #   The registration type in Spain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/SpainAdditionalInfo AWS API Documentation
    #
    class SpainAdditionalInfo < Struct.new(
      :registration_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Supplemental TRN details.
    #
    # @!attribute [rw] address
    #   The details of the address associated with the TRN information.
    #   @return [Types::Address]
    #
    # @!attribute [rw] authority_id
    #   Unique authority ID for the supplemental TRN.
    #   @return [String]
    #
    # @!attribute [rw] legal_name
    #   The legal name associated with your TRN registration.
    #   @return [String]
    #
    # @!attribute [rw] registration_id
    #   The supplemental TRN unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] registration_type
    #   Type of supplemental TRN. Currently, this can only be VAT.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of your TRN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/SupplementalTaxRegistration AWS API Documentation
    #
    class SupplementalTaxRegistration < Struct.new(
      :address,
      :authority_id,
      :legal_name,
      :registration_id,
      :registration_type,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The supplemental TRN information to provide when adding or updating a
    # supplemental TRN.
    #
    # @!attribute [rw] address
    #   The details of the address associated with the TRN information.
    #   @return [Types::Address]
    #
    # @!attribute [rw] legal_name
    #   The legal name associated with your TRN registration.
    #   @return [String]
    #
    # @!attribute [rw] registration_id
    #   The supplemental TRN unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] registration_type
    #   Type of supplemental TRN. Currently, this can only be VAT.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/SupplementalTaxRegistrationEntry AWS API Documentation
    #
    class SupplementalTaxRegistrationEntry < Struct.new(
      :address,
      :legal_name,
      :registration_id,
      :registration_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metadata for your tax document.
    #
    # @!attribute [rw] tax_document_access_token
    #   The tax document access token, which contains information that the
    #   Tax Settings API uses to locate the tax document.
    #
    #   <note markdown="1"> If you update your tax registration, the existing
    #   `taxDocumentAccessToken` won't be valid. To get the latest token,
    #   call the `GetTaxRegistration` or `ListTaxRegistrations` API
    #   operation. This token is valid for 24 hours.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] tax_document_name
    #   The name of your tax document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/TaxDocumentMetadata AWS API Documentation
    #
    class TaxDocumentMetadata < Struct.new(
      :tax_document_access_token,
      :tax_document_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The tax exemption.
    #
    # @!attribute [rw] authority
    #   The address domain associate with tax exemption.
    #   @return [Types::Authority]
    #
    # @!attribute [rw] effective_date
    #   The tax exemption effective date.
    #   @return [Time]
    #
    # @!attribute [rw] expiration_date
    #   The tax exemption expiration date.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The tax exemption status.
    #   @return [String]
    #
    # @!attribute [rw] system_effective_date
    #   The tax exemption recording time in the `TaxSettings` system.
    #   @return [Time]
    #
    # @!attribute [rw] tax_exemption_type
    #   The tax exemption type.
    #   @return [Types::TaxExemptionType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/TaxExemption AWS API Documentation
    #
    class TaxExemption < Struct.new(
      :authority,
      :effective_date,
      :expiration_date,
      :status,
      :system_effective_date,
      :tax_exemption_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The tax exemption details.
    #
    # @!attribute [rw] heritage_obtained_details
    #   The indicator if the tax exemption is inherited from the
    #   consolidated billing family management account.
    #   @return [Boolean]
    #
    # @!attribute [rw] heritage_obtained_parent_entity
    #   The consolidated billing family management account the tax exemption
    #   inherited from.
    #   @return [String]
    #
    # @!attribute [rw] heritage_obtained_reason
    #   The reason of the heritage inheritance.
    #   @return [String]
    #
    # @!attribute [rw] tax_exemptions
    #   Tax exemptions.
    #   @return [Array<Types::TaxExemption>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/TaxExemptionDetails AWS API Documentation
    #
    class TaxExemptionDetails < Struct.new(
      :heritage_obtained_details,
      :heritage_obtained_parent_entity,
      :heritage_obtained_reason,
      :tax_exemptions)
      SENSITIVE = []
      include Aws::Structure
    end

    # The tax exemption type.
    #
    # @!attribute [rw] applicable_jurisdictions
    #   The tax exemption's applicable jurisdictions.
    #   @return [Array<Types::Authority>]
    #
    # @!attribute [rw] description
    #   The tax exemption's type description.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The tax exemption's type display name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/TaxExemptionType AWS API Documentation
    #
    class TaxExemptionType < Struct.new(
      :applicable_jurisdictions,
      :description,
      :display_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Tax inheritance information associated with the account.
    #
    # @!attribute [rw] inheritance_obtained_reason
    #   Tax inheritance reason information associated with the account.
    #   @return [String]
    #
    # @!attribute [rw] parent_entity_id
    #   Tax inheritance parent account information associated with the
    #   account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/TaxInheritanceDetails AWS API Documentation
    #
    class TaxInheritanceDetails < Struct.new(
      :inheritance_obtained_reason,
      :parent_entity_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your TRN information.
    #
    # @!attribute [rw] additional_tax_information
    #   Additional tax information associated with your TRN.
    #   @return [Types::AdditionalInfoResponse]
    #
    # @!attribute [rw] certified_email_id
    #   The email address to receive VAT invoices.
    #   @return [String]
    #
    # @!attribute [rw] legal_address
    #   The legal address associated with your TRN registration.
    #   @return [Types::Address]
    #
    # @!attribute [rw] legal_name
    #   The legal name associated with your TRN registration.
    #   @return [String]
    #
    # @!attribute [rw] registration_id
    #   Your tax registration unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] registration_type
    #   Type of your tax registration.
    #   @return [String]
    #
    # @!attribute [rw] sector
    #   The industry that describes your business. For business-to-business
    #   (B2B) customers, specify Business. For business-to-consumer (B2C)
    #   customers, specify Individual. For business-to-government (B2G),
    #   specify Government. Note that certain values may not applicable for
    #   the request country. Please refer to country specific information in
    #   API document.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of your TRN. This can be either `Verified`, `Pending`,
    #   `Deleted`, or `Rejected`.
    #   @return [String]
    #
    # @!attribute [rw] tax_document_metadatas
    #   The metadata for your tax document.
    #   @return [Array<Types::TaxDocumentMetadata>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/TaxRegistration AWS API Documentation
    #
    class TaxRegistration < Struct.new(
      :additional_tax_information,
      :certified_email_id,
      :legal_address,
      :legal_name,
      :registration_id,
      :registration_type,
      :sector,
      :status,
      :tax_document_metadatas)
      SENSITIVE = []
      include Aws::Structure
    end

    # The tax registration document.
    #
    # @!attribute [rw] file_content
    #   The tax registration document content.
    #   @return [String]
    #
    # @!attribute [rw] file_name
    #   The tax registration document name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/TaxRegistrationDocFile AWS API Documentation
    #
    class TaxRegistrationDocFile < Struct.new(
      :file_content,
      :file_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Tax registration document information.
    #
    # @!attribute [rw] file
    #   The tax registration document.
    #   @return [Types::TaxRegistrationDocFile]
    #
    # @!attribute [rw] s3_location
    #   The Amazon S3 location where your tax registration document is
    #   stored.
    #   @return [Types::SourceS3Location]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/TaxRegistrationDocument AWS API Documentation
    #
    class TaxRegistrationDocument < Struct.new(
      :file,
      :s3_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # The TRN information you provide when you add a new TRN, or update.
    #
    # @!attribute [rw] additional_tax_information
    #   Additional tax information associated with your TRN. You only need
    #   to specify this parameter if Amazon Web Services collects any
    #   additional information for your country within
    #   AdditionalInfoRequest.
    #   @return [Types::AdditionalInfoRequest]
    #
    # @!attribute [rw] certified_email_id
    #   The email address to receive VAT invoices.
    #   @return [String]
    #
    # @!attribute [rw] legal_address
    #   The legal address associated with your TRN.
    #
    #   <note markdown="1"> If you're setting a TRN in Brazil for the CNPJ tax type, you don't
    #   need to specify the legal address.
    #
    #    For TRNs in other countries and for CPF tax types Brazil, you must
    #   specify the legal address.
    #
    #    </note>
    #   @return [Types::Address]
    #
    # @!attribute [rw] legal_name
    #   The legal name associated with your TRN.
    #
    #   <note markdown="1"> If you're setting a TRN in Brazil, you don't need to specify the
    #   legal name. For TRNs in other countries, you must specify the legal
    #   name.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] registration_id
    #   Your tax registration unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] registration_type
    #   Your tax registration type. This can be either `VAT` or `GST`.
    #   @return [String]
    #
    # @!attribute [rw] sector
    #   The industry that describes your business. For business-to-business
    #   (B2B) customers, specify Business. For business-to-consumer (B2C)
    #   customers, specify Individual. For business-to-government (B2G),
    #   specify Government.Note that certain values may not applicable for
    #   the request country. Please refer to country specific information in
    #   API document.
    #   @return [String]
    #
    # @!attribute [rw] verification_details
    #   Additional details needed to verify your TRN information in Brazil.
    #   You only need to specify this parameter when you set a TRN in Brazil
    #   that is the CPF tax type.
    #
    #   <note markdown="1"> Don't specify this parameter to set a TRN in Brazil of the CNPJ tax
    #   type or to set a TRN for another country.
    #
    #    </note>
    #   @return [Types::VerificationDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/TaxRegistrationEntry AWS API Documentation
    #
    class TaxRegistrationEntry < Struct.new(
      :additional_tax_information,
      :certified_email_id,
      :legal_address,
      :legal_name,
      :registration_id,
      :registration_type,
      :sector,
      :verification_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your TRN information with jurisdiction details. This doesn't contain
    # the full legal address associated with the TRN information.
    #
    # @!attribute [rw] additional_tax_information
    #   Additional tax information associated with your TRN.
    #   @return [Types::AdditionalInfoResponse]
    #
    # @!attribute [rw] certified_email_id
    #   The email address to receive VAT invoices.
    #   @return [String]
    #
    # @!attribute [rw] jurisdiction
    #   The jurisdiction associated with your TRN information.
    #   @return [Types::Jurisdiction]
    #
    # @!attribute [rw] legal_name
    #   The legal name associated with your TRN information.
    #   @return [String]
    #
    # @!attribute [rw] registration_id
    #   Your tax registration unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] registration_type
    #   The type of your tax registration. This can be either `VAT` or
    #   `GST`.
    #   @return [String]
    #
    # @!attribute [rw] sector
    #   The industry that describes your business. For business-to-business
    #   (B2B) customers, specify Business. For business-to-consumer (B2C)
    #   customers, specify Individual. For business-to-government (B2G),
    #   specify Government.Note that certain values may not applicable for
    #   the request country. Please refer to country specific information in
    #   API document.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of your TRN. This can be either `Verified`, `Pending`,
    #   `Deleted`, or `Rejected`.
    #   @return [String]
    #
    # @!attribute [rw] tax_document_metadatas
    #   The metadata for your tax document.
    #   @return [Array<Types::TaxDocumentMetadata>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/TaxRegistrationWithJurisdiction AWS API Documentation
    #
    class TaxRegistrationWithJurisdiction < Struct.new(
      :additional_tax_information,
      :certified_email_id,
      :jurisdiction,
      :legal_name,
      :registration_id,
      :registration_type,
      :sector,
      :status,
      :tax_document_metadatas)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional tax information associated with your TRN in Turkey.
    #
    # @!attribute [rw] industries
    #   The industry information that tells the Tax Settings API if you're
    #   subject to additional withholding taxes. This information required
    #   for business-to-business (B2B) customers. This information is
    #   conditionally mandatory for B2B customers who are subject to KDV
    #   tax.
    #   @return [String]
    #
    # @!attribute [rw] kep_email_id
    #   The Registered Electronic Mail (REM) that is used to send notarized
    #   communication. This parameter is optional for business-to-business
    #   (B2B) and business-to-government (B2G) customers. It's not required
    #   for business-to-consumer (B2C) customers.
    #   @return [String]
    #
    # @!attribute [rw] secondary_tax_id
    #   Secondary tax ID (“harcama birimi VKN”si”). If one isn't provided,
    #   we will use your VKN as the secondary ID.
    #   @return [String]
    #
    # @!attribute [rw] tax_office
    #   The tax office where you're registered. You can enter this
    #   information as a string. The Tax Settings API will add this
    #   information to your invoice. This parameter is required for
    #   business-to-business (B2B) and business-to-government customers.
    #   It's not required for business-to-consumer (B2C) customers.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/TurkeyAdditionalInfo AWS API Documentation
    #
    class TurkeyAdditionalInfo < Struct.new(
      :industries,
      :kep_email_id,
      :secondary_tax_id,
      :tax_office)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional tax information associated with your TRN in Ukraine.
    #
    # @!attribute [rw] ukraine_trn_type
    #   The tax registration type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/UkraineAdditionalInfo AWS API Documentation
    #
    class UkraineAdditionalInfo < Struct.new(
      :ukraine_trn_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The exception when the input doesn't pass validation for at least one
    # of the input parameters.
    #
    # @!attribute [rw] error_code
    #   400
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   400
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :error_code,
      :field_list,
      :message)
      SENSITIVE = [:message]
      include Aws::Structure
    end

    # The information about the specified parameter in the request that
    # caused an error.
    #
    # @!attribute [rw] name
    #   The name of the parameter that caused a `ValidationException` error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Required information to verify your TRN.
    #
    # @!attribute [rw] date_of_birth
    #   Date of birth to verify your submitted TRN. Use the `YYYY-MM-DD`
    #   format.
    #   @return [String]
    #
    # @!attribute [rw] tax_registration_documents
    #   The tax registration document, which is required for specific
    #   countries such as Bangladesh, Kenya, South Korea and Spain.
    #   @return [Array<Types::TaxRegistrationDocument>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/VerificationDetails AWS API Documentation
    #
    class VerificationDetails < Struct.new(
      :date_of_birth,
      :tax_registration_documents)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional tax information to specify for a TRN in Vietnam.
    #
    # @!attribute [rw] electronic_transaction_code_number
    #   The electronic transaction code number on the tax return document.
    #   This field must be provided for successful API operation.
    #   @return [String]
    #
    # @!attribute [rw] enterprise_identification_number
    #   The enterprise identification number for tax registration. This
    #   field must be provided for successful API operation.
    #   @return [String]
    #
    # @!attribute [rw] payment_voucher_number
    #   The payment voucher number on the tax return payment document. This
    #   field must be provided for successful API operation.
    #   @return [String]
    #
    # @!attribute [rw] payment_voucher_number_date
    #   The date on the tax return payment document. This field must be
    #   provided for successful API operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/taxsettings-2018-05-10/VietnamAdditionalInfo AWS API Documentation
    #
    class VietnamAdditionalInfo < Struct.new(
      :electronic_transaction_code_number,
      :enterprise_identification_number,
      :payment_voucher_number,
      :payment_voucher_number_date)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

