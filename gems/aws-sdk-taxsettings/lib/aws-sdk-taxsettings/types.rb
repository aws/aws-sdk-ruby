# frozen_string_literal: true

# This is generated code!

module Aws::TaxSettings
  # This module contains the types returned by client operations.
  module Types

    # <p>The access is denied for the Amazon Web ServicesSupport API.
    #     </p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> An object with your <code>accountId</code> and TRN information. </p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute account_id
    #   <p>List of unique account identifiers. </p>
    #   @return [String]
    # @!attribute tax_registration
    #   <p>Your TRN information. Instead of having full legal address, here TRN information will have
    #         jurisdiction details (for example, country code and state/region/province if applicable). </p>
    #   @return [Types::TaxRegistrationWithJurisdiction]
    # @!attribute tax_inheritance_details
    #   <p>
    #         Tax inheritance information associated with the account.
    #       </p>
    #   @return [Types::TaxInheritanceDetails]
    # @!attribute account_meta_data
    #   <p>
    #         The meta data information associated with the account.
    #       </p>
    #   @return [Types::AccountMetaData]
    class AccountDetails < Struct.new(
      :account_id,
      :tax_registration,
      :tax_inheritance_details,
      :account_meta_data,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       The meta data information associated with the account.
    #     </p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute account_name
    #   <p>
    #         The Amazon Web Services accounts name.
    #       </p>
    #   @return [String]
    # @!attribute seller
    #   <p>
    #         Seller information associated with the account.
    #       </p>
    #   @return [String]
    # @!attribute address
    #   <p> The details of the address associated with the TRN information. </p>
    #   @return [Types::Address]
    # @!attribute address_type
    #   <p>
    #         The type of address associated with the legal profile.
    #       </p>
    #   @return [String]
    # @!attribute address_role_map
    #   <p>
    #         Address roles associated with the account containing country code information.
    #       </p>
    #   @return [Hash<String, Types::Jurisdiction>]
    class AccountMetaData < Struct.new(
      :account_name,
      :seller,
      :address,
      :address_type,
      :address_role_map,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Additional tax information associated with your tax registration number (TRN). Depending
    #       on the TRN for a specific country, you might need to specify this information when you set
    #       your TRN. </p>
    #          <p>You can only specify one of the following parameters and the value can't be empty. </p>
    #          <note>
    #             <p>The parameter that you specify must match the country for the TRN, if available. For
    #         example, if you set a TRN in Canada for specific provinces, you must also specify the
    #           <code>canadaAdditionalInfo</code> parameter.</p>
    #          </note>
    # @!attribute malaysia_additional_info
    #   <p> Additional tax information to specify for a TRN in Malaysia.</p>
    #   @return [Types::MalaysiaAdditionalInfo]
    # @!attribute israel_additional_info
    #   <p> Additional tax information to specify for a TRN in Israel.</p>
    #   @return [Types::IsraelAdditionalInfo]
    # @!attribute estonia_additional_info
    #   <p> Additional tax information to specify for a TRN in Estonia.</p>
    #   @return [Types::EstoniaAdditionalInfo]
    # @!attribute canada_additional_info
    #   <p> Additional tax information associated with your TRN in Canada.</p>
    #   @return [Types::CanadaAdditionalInfo]
    # @!attribute spain_additional_info
    #   <p>Additional tax information to specify for a TRN in Spain.</p>
    #   @return [Types::SpainAdditionalInfo]
    # @!attribute kenya_additional_info
    #   <p>Additional tax information to specify for a TRN in Kenya.</p>
    #   @return [Types::KenyaAdditionalInfo]
    # @!attribute south_korea_additional_info
    #   <p>Additional tax information to specify for a TRN in South Korea.</p>
    #   @return [Types::SouthKoreaAdditionalInfo]
    # @!attribute turkey_additional_info
    #   <p>Additional tax information to specify for a TRN in Turkey.</p>
    #   @return [Types::TurkeyAdditionalInfo]
    # @!attribute georgia_additional_info
    #   <p>
    #         Additional tax information to specify for a TRN in Georgia.
    #       </p>
    #   @return [Types::GeorgiaAdditionalInfo]
    # @!attribute italy_additional_info
    #   <p>
    #         Additional tax information to specify for a TRN in Italy.
    #       </p>
    #   @return [Types::ItalyAdditionalInfo]
    # @!attribute romania_additional_info
    #   <p>Additional tax information to specify for a TRN in Romania.</p>
    #   @return [Types::RomaniaAdditionalInfo]
    # @!attribute ukraine_additional_info
    #   <p>
    #         Additional tax information associated with your TRN in Ukraine.
    #       </p>
    #   @return [Types::UkraineAdditionalInfo]
    # @!attribute poland_additional_info
    #   <p>
    #         Additional tax information associated with your TRN in Poland.
    #       </p>
    #   @return [Types::PolandAdditionalInfo]
    # @!attribute saudi_arabia_additional_info
    #   <p>
    #         Additional tax information associated with your TRN in Saudi Arabia.
    #       </p>
    #   @return [Types::SaudiArabiaAdditionalInfo]
    # @!attribute indonesia_additional_info
    #   <p>
    #       </p>
    #   @return [Types::IndonesiaAdditionalInfo]
    # @!attribute vietnam_additional_info
    #   <p>Additional tax information to specify for a TRN in Vietnam.
    #       </p>
    #   @return [Types::VietnamAdditionalInfo]
    # @!attribute egypt_additional_info
    #   <p>Additional tax information to specify for a TRN in Egypt.
    #       </p>
    #   @return [Types::EgyptAdditionalInfo]
    # @!attribute greece_additional_info
    #   <p>Additional tax information to specify for a TRN in Greece.</p>
    #   @return [Types::GreeceAdditionalInfo]
    # @!attribute uzbekistan_additional_info
    #   <p>
    #         Additional tax information to specify for a TRN in Uzbekistan.
    #       </p>
    #   @return [Types::UzbekistanAdditionalInfo]
    class AdditionalInfoRequest < Struct.new(
      :malaysia_additional_info,
      :israel_additional_info,
      :estonia_additional_info,
      :canada_additional_info,
      :spain_additional_info,
      :kenya_additional_info,
      :south_korea_additional_info,
      :turkey_additional_info,
      :georgia_additional_info,
      :italy_additional_info,
      :romania_additional_info,
      :ukraine_additional_info,
      :poland_additional_info,
      :saudi_arabia_additional_info,
      :indonesia_additional_info,
      :vietnam_additional_info,
      :egypt_additional_info,
      :greece_additional_info,
      :uzbekistan_additional_info,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> Additional tax information associated with your TRN. The Tax Settings API returns
    #       country-specific information in the response when any additional information is present with
    #       your TRN for the following countries.</p>
    # @!attribute malaysia_additional_info
    #   <p> Additional tax information associated with your  TRN in Malaysia. </p>
    #   @return [Types::MalaysiaAdditionalInfo]
    # @!attribute israel_additional_info
    #   <p> Additional tax information associated with your TRN in Israel.</p>
    #   @return [Types::IsraelAdditionalInfo]
    # @!attribute estonia_additional_info
    #   <p> Additional tax information associated with your  TRN in Estonia. </p>
    #   @return [Types::EstoniaAdditionalInfo]
    # @!attribute canada_additional_info
    #   <p>Additional tax information associated with your TRN in Canada. </p>
    #   @return [Types::CanadaAdditionalInfo]
    # @!attribute brazil_additional_info
    #   <p>Additional tax information associated with your TRN in Brazil. The Tax Settings API
    #         returns this information in your response when any additional information is present with your
    #         TRN in Brazil.</p>
    #   @return [Types::BrazilAdditionalInfo]
    # @!attribute spain_additional_info
    #   <p>Additional tax information associated with your TRN in Spain.</p>
    #   @return [Types::SpainAdditionalInfo]
    # @!attribute kenya_additional_info
    #   <p>Additional tax information associated with your TRN in Kenya.</p>
    #   @return [Types::KenyaAdditionalInfo]
    # @!attribute south_korea_additional_info
    #   <p>Additional tax information associated with your TRN in South Korea.</p>
    #   @return [Types::SouthKoreaAdditionalInfo]
    # @!attribute turkey_additional_info
    #   <p>Additional tax information associated with your TRN in Turkey.</p>
    #   @return [Types::TurkeyAdditionalInfo]
    # @!attribute georgia_additional_info
    #   <p>
    #         Additional tax information associated with your TRN in Georgia.
    #       </p>
    #   @return [Types::GeorgiaAdditionalInfo]
    # @!attribute italy_additional_info
    #   <p>
    #         Additional tax information associated with your TRN in Italy.
    #       </p>
    #   @return [Types::ItalyAdditionalInfo]
    # @!attribute romania_additional_info
    #   <p>Additional tax information to specify for a TRN in Romania.</p>
    #   @return [Types::RomaniaAdditionalInfo]
    # @!attribute ukraine_additional_info
    #   <p>
    #         Additional tax information associated with your TRN in Ukraine.
    #       </p>
    #   @return [Types::UkraineAdditionalInfo]
    # @!attribute poland_additional_info
    #   <p>
    #         Additional tax information associated with your TRN in Poland. 
    #       </p>
    #   @return [Types::PolandAdditionalInfo]
    # @!attribute saudi_arabia_additional_info
    #   <p>
    #         Additional tax information associated with your TRN in Saudi Arabia.
    #       </p>
    #   @return [Types::SaudiArabiaAdditionalInfo]
    # @!attribute india_additional_info
    #   <p>
    #         Additional tax information in India. 
    #       </p>
    #   @return [Types::IndiaAdditionalInfo]
    # @!attribute indonesia_additional_info
    #   <p>Additional tax information associated with your TRN in Indonesia.</p>
    #   @return [Types::IndonesiaAdditionalInfo]
    # @!attribute vietnam_additional_info
    #   <p>Additional tax information to specify for a TRN in Vietnam.
    #       </p>
    #   @return [Types::VietnamAdditionalInfo]
    # @!attribute egypt_additional_info
    #   <p>Additional tax information to specify for a TRN in Egypt.
    #       </p>
    #   @return [Types::EgyptAdditionalInfo]
    # @!attribute greece_additional_info
    #   <p>Additional tax information to specify for a TRN in Greece.
    #       </p>
    #   @return [Types::GreeceAdditionalInfo]
    # @!attribute uzbekistan_additional_info
    #   <p>
    #         Additional tax information associated with your TRN in Uzbekistan.
    #       </p>
    #   @return [Types::UzbekistanAdditionalInfo]
    class AdditionalInfoResponse < Struct.new(
      :malaysia_additional_info,
      :israel_additional_info,
      :estonia_additional_info,
      :canada_additional_info,
      :brazil_additional_info,
      :spain_additional_info,
      :kenya_additional_info,
      :south_korea_additional_info,
      :turkey_additional_info,
      :georgia_additional_info,
      :italy_additional_info,
      :romania_additional_info,
      :ukraine_additional_info,
      :poland_additional_info,
      :saudi_arabia_additional_info,
      :india_additional_info,
      :indonesia_additional_info,
      :vietnam_additional_info,
      :egypt_additional_info,
      :greece_additional_info,
      :uzbekistan_additional_info,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The details of the address associated with the TRN information. </p>
    # @!attribute address_line1
    #   <p>The first line of the address. </p>
    #   @return [String]
    # @!attribute address_line2
    #   <p>The second line of the address, if applicable. </p>
    #   @return [String]
    # @!attribute address_line3
    #   <p> The third line of the address, if applicable. Currently, the Tax Settings API accepts the
    #           <code>addressLine3</code> parameter only for Saudi Arabia. When you specify a TRN in Saudi
    #         Arabia, you must enter the <code>addressLine3</code> and specify the building number for the
    #         address. For example, you might enter <code>1234</code>.</p>
    #   @return [String]
    # @!attribute district_or_county
    #   <p>The district or county the address is located. </p>
    #            <note>
    #               <p>For addresses in Brazil, this parameter uses the name of the neighborhood. When you set
    #           a TRN in Brazil, use <code>districtOrCounty</code> for the neighborhood name.</p>
    #            </note>
    #   @return [String]
    # @!attribute city
    #   <p>The city that the address is in. </p>
    #   @return [String]
    # @!attribute state_or_region
    #   <p>The state, region, or province that the address is located. This field is only required for Canada, India, United Arab Emirates, Romania, and Brazil (CPF). It is optional for all other countries.</p>
    #            <p>If this is required for tax settings, use the same name as shown on the <b>Tax Settings</b> page.</p>
    #   @return [String]
    # @!attribute postal_code
    #   <p> The postal code associated with the address. </p>
    #   @return [String]
    # @!attribute country_code
    #   <p>The country code for the country that the address is in. </p>
    #   @return [String]
    class Address < Struct.new(
      :address_line1,
      :address_line2,
      :address_line3,
      :district_or_county,
      :city,
      :state_or_region,
      :postal_code,
      :country_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Failed to upload the tax exemption document to Amazon Web ServicesSupport case.
    #     </p>
    # @!attribute message
    #   @return [String]
    class AttachmentUploadException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The address domain associate with the tax information.
    #     </p>
    # @!attribute country
    #   <p>
    #         The country code for the country that the address is in.
    #       </p>
    #   @return [String]
    # @!attribute state
    #   <p>
    #         The state that the address is located. 
    #       </p>
    #   @return [String]
    class Authority < Struct.new(
      :country,
      :state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The error object for representing failures in the <code>BatchDeleteTaxRegistration</code>
    #       operation. </p>
    # @!attribute account_id
    #   <p> The unique account identifier for the account whose tax registration couldn't be deleted
    #         during the <code>BatchDeleteTaxRegistration</code> operation. </p>
    #   @return [String]
    # @!attribute message
    #   <p> The error message for an individual failure in the
    #           <code>BatchDeleteTaxRegistration</code> operation. </p>
    #   @return [String]
    # @!attribute code
    #   <p> The error code for an individual failure in BatchDeleteTaxRegistration operation. </p>
    #   @return [String]
    class BatchDeleteTaxRegistrationError < Struct.new(
      :account_id,
      :message,
      :code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_ids
    #   <p>List of unique account identifiers. </p>
    #   @return [Array<String>]
    class BatchDeleteTaxRegistrationRequest < Struct.new(
      :account_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute errors
    #   <p>The list of errors for the accounts the TRN information could not be deleted for. </p>
    #   @return [Array<Types::BatchDeleteTaxRegistrationError>]
    class BatchDeleteTaxRegistrationResponse < Struct.new(
      :errors,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_ids
    #   <p>
    #         List of unique account identifiers.
    #       </p>
    #   @return [Array<String>]
    class BatchGetTaxExemptionsRequest < Struct.new(
      :account_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tax_exemption_details_map
    #   <p>The tax exemption details map of accountId and tax exemption details.
    #       </p>
    #   @return [Hash<String, Types::TaxExemptionDetails>]
    # @!attribute failed_accounts
    #   <p>The list of accounts that failed to get tax exemptions.
    #       </p>
    #   @return [Array<String>]
    class BatchGetTaxExemptionsResponse < Struct.new(
      :tax_exemption_details_map,
      :failed_accounts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The error object for representing failures in the <code>BatchPutTaxRegistration</code>
    #       operation. </p>
    # @!attribute account_id
    #   <p> The unique account identifier for the account that the tax registration couldn't be
    #         added, or updated during the <code>BatchPutTaxRegistration</code> operation. </p>
    #   @return [String]
    # @!attribute message
    #   <p> The error message for an individual failure in the <code>BatchPutTaxRegistration</code>
    #         operation. </p>
    #   @return [String]
    # @!attribute code
    #   <p> The error code for an individual failure in the <code>BatchPutTaxRegistration</code>
    #         operation. </p>
    #   @return [String]
    class BatchPutTaxRegistrationError < Struct.new(
      :account_id,
      :message,
      :code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_ids
    #   <p> List of unique account identifiers.</p>
    #   @return [Array<String>]
    # @!attribute tax_registration_entry
    #   <p>Your TRN information that will be stored to the accounts mentioned in
    #           <code>putEntries</code>. </p>
    #   @return [Types::TaxRegistrationEntry]
    class BatchPutTaxRegistrationRequest < Struct.new(
      :account_ids,
      :tax_registration_entry,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The status of your TRN stored in the system after processing. Based on the validation
    #         occurring on the TRN, the status can be <code>Verified</code>, <code>Pending</code> or
    #           <code>Rejected</code>. </p>
    #   @return [String]
    # @!attribute errors
    #   <p>List of errors for the accounts the TRN information could not be added or updated to.
    #       </p>
    #   @return [Array<Types::BatchPutTaxRegistrationError>]
    class BatchPutTaxRegistrationResponse < Struct.new(
      :status,
      :errors,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Additional tax information associated with your TRN in Brazil.</p>
    # @!attribute ccm_code
    #   <p>The Cadastro de Contribuintes Mobiliários (CCM) code for your TRN in Brazil. This only applies for a CNPJ tax type for the São Paulo municipality.</p>
    #   @return [String]
    # @!attribute legal_nature_code
    #   <p>Legal nature of business, based on your TRN in Brazil. This only applies for a CNPJ tax
    #         type.</p>
    #   @return [String]
    class BrazilAdditionalInfo < Struct.new(
      :ccm_code,
      :legal_nature_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> Additional tax information associated with your TRN in Canada .</p>
    # @!attribute provincial_sales_tax_id
    #   <p> The provincial sales tax ID for your TRN in Canada. This parameter can represent the
    #         following: </p>
    #            <ul>
    #               <li>
    #                  <p>Provincial sales tax ID number for British Columbia and Saskatchewan provinces</p>
    #               </li>
    #               <li>
    #                  <p>Manitoba retail sales tax ID number for Manitoba province</p>
    #               </li>
    #               <li>
    #                  <p>Quebec sales tax ID number for Quebec province</p>
    #               </li>
    #            </ul>
    #            <p>The Tax Setting API only accepts this parameter if the TRN is specified  for the previous
    #         provinces. For other provinces, the Tax Settings API doesn't accept this parameter. </p>
    #   @return [String]
    # @!attribute canada_quebec_sales_tax_number
    #   <p>
    #         The Quebec Sales Tax ID number. Leave blank if you do not have a Quebec Sales Tax ID number.
    #       </p>
    #   @return [String]
    # @!attribute canada_retail_sales_tax_number
    #   <p>
    #         Manitoba Retail Sales Tax ID number. Customers purchasing Amazon Web Services services for resale in Manitoba must provide a valid Retail Sales Tax ID number for Manitoba. Leave this blank if you do not have a Retail Sales Tax ID number in Manitoba or are not purchasing Amazon Web Services services for resale.
    #       </p>
    #   @return [String]
    # @!attribute is_reseller_account
    #   <p> The value for this parameter must be <code>true</code> if the
    #           <code>provincialSalesTaxId</code> value is provided for a TRN in British Columbia,
    #         Saskatchewan, or Manitoba provinces. </p>
    #            <p>To claim a provincial sales tax (PST) and retail sales tax (RST) reseller exemption, you
    #         must confirm that purchases  from this account were made for resale. Otherwise, remove the PST
    #         or RST number from the <code>provincialSalesTaxId</code> parameter from your request.</p>
    #   @return [Boolean]
    class CanadaAdditionalInfo < Struct.new(
      :provincial_sales_tax_id,
      :canada_quebec_sales_tax_number,
      :canada_retail_sales_tax_number,
      :is_reseller_account,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You've exceeded the Amazon Web ServicesSupport case creation limit for your account.
    #     </p>
    # @!attribute message
    #   @return [String]
    class CaseCreationLimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The exception when the input is creating conflict with the given state.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute error_code
    #   <p>409</p>
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      :error_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute authority_id
    #   <p>
    #         The unique authority Id for the supplemental TRN information that needs to be deleted.
    #       </p>
    #   @return [String]
    class DeleteSupplementalTaxRegistrationRequest < Struct.new(
      :authority_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteSupplementalTaxRegistrationResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>Unique account identifier for the TRN information that needs to be deleted. If this isn't
    #         passed, the account ID corresponding to the credentials of the API caller will be used for
    #         this parameter.</p>
    #   @return [String]
    class DeleteTaxRegistrationRequest < Struct.new(
      :account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteTaxRegistrationResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The location of the Amazon S3 bucket that you specify to download your tax documents to.</p>
    # @!attribute bucket
    #   <p>The name of your Amazon S3 bucket that you specify to download your tax documents to.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>The Amazon S3 object prefix that you specify for your tax document file.</p>
    #   @return [String]
    class DestinationS3Location < Struct.new(
      :bucket,
      :prefix,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Additional tax information to specify for a TRN in Egypt.</p>
    # @!attribute unique_identification_number
    #   <p>The unique identification number provided by the Egypt Tax Authority.</p>
    #   @return [String]
    # @!attribute unique_identification_number_expiration_date
    #   <p>The expiration date of the unique identification number provided by the Egypt Tax Authority.</p>
    #   @return [String]
    class EgyptAdditionalInfo < Struct.new(
      :unique_identification_number,
      :unique_identification_number_expiration_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> Additional tax information associated with your TRN in Estonia.</p>
    # @!attribute registry_commercial_code
    #   <p> Registry commercial code (RCC) for your TRN in Estonia. This value is an eight-numeric
    #         string, such as <code>12345678</code>.</p>
    #   @return [String]
    class EstoniaAdditionalInfo < Struct.new(
      :registry_commercial_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The exemption certificate.
    #     </p>
    # @!attribute document_name
    #   <p>The exemption certificate file name.
    #       </p>
    #   @return [String]
    # @!attribute document_file
    #   <p>The exemption certificate file content.
    #       </p>
    #   @return [String]
    class ExemptionCertificate < Struct.new(
      :document_name,
      :document_file,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Additional tax information associated with your TRN in Georgia.
    #     </p>
    # @!attribute person_type
    #   <p>
    #         The legal person or physical person assigned to this TRN in Georgia.
    #       </p>
    #   @return [String]
    class GeorgiaAdditionalInfo < Struct.new(
      :person_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class GetTaxExemptionTypesRequest < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tax_exemption_types
    #   <p>The supported types of tax exemptions.
    #       </p>
    #   @return [Array<Types::TaxExemptionType>]
    class GetTaxExemptionTypesResponse < Struct.new(
      :tax_exemption_types,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class GetTaxInheritanceRequest < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute heritage_status
    #   <p>The tax inheritance status.
    #       </p>
    #   @return [String]
    class GetTaxInheritanceResponse < Struct.new(
      :heritage_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute destination_s3_location
    #   <p>The Amazon S3 bucket that you specify to download your tax documents to.</p>
    #   @return [Types::DestinationS3Location]
    # @!attribute tax_document_metadata
    #   <p>The metadata for your tax document.</p>
    #   @return [Types::TaxDocumentMetadata]
    class GetTaxRegistrationDocumentRequest < Struct.new(
      :destination_s3_location,
      :tax_document_metadata,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute destination_file_path
    #   <p>The file path of the Amazon S3 bucket where you want to download your tax document to.</p>
    #   @return [String]
    # @!attribute presigned_s3_url
    #   <p>The Amazon S3 presigned URL of the tax registration document.
    #       </p>
    #   @return [String]
    class GetTaxRegistrationDocumentResponse < Struct.new(
      :destination_file_path,
      :presigned_s3_url,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>Your unique account identifier.</p>
    #   @return [String]
    class GetTaxRegistrationRequest < Struct.new(
      :account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tax_registration
    #   <p>TRN information of the account mentioned in the request. </p>
    #   @return [Types::TaxRegistration]
    class GetTaxRegistrationResponse < Struct.new(
      :tax_registration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Additional tax information to specify for a TRN in Greece.
    #     </p>
    # @!attribute contracting_authority_code
    #   <p>The code of contracting authority for e-invoicing.</p>
    #   @return [String]
    class GreeceAdditionalInfo < Struct.new(
      :contracting_authority_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Additional tax information in India.
    #     </p>
    # @!attribute pan
    #   <p>
    #         India pan information associated with the account.
    #       </p>
    #   @return [String]
    class IndiaAdditionalInfo < Struct.new(
      :pan,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Additional tax information associated with your TRN in Indonesia.</p>
    # @!attribute tax_registration_number_type
    #   <p>The tax registration number type.</p>
    #   @return [String]
    # @!attribute ppn_exception_designation_code
    #   <p>Exception code if you are designated by Directorate General of Taxation (DGT) as a VAT collector, non-collected VAT, or VAT-exempt customer.</p>
    #   @return [String]
    # @!attribute decision_number
    #   <p>VAT-exempt customers have a Directorate General of Taxation (DGT) exemption letter or certificate (Surat Keterangan Bebas) decision number. Non-collected VAT have a DGT letter or certificate (Surat Keterangan Tidak Dipungut).</p>
    #   @return [String]
    class IndonesiaAdditionalInfo < Struct.new(
      :tax_registration_number_type,
      :ppn_exception_designation_code,
      :decision_number,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The exception thrown when an unexpected error occurs when processing a request.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute error_code
    #   <p>500</p>
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      :error_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> Additional tax information associated with your TRN in Israel.</p>
    # @!attribute dealer_type
    #   <p> Dealer type for your TRN in Israel. If you're not a local authorized dealer with an
    #         Israeli VAT ID, specify your tax identification number so that Amazon Web Services can send you
    #         a compliant tax invoice.</p>
    #   @return [String]
    # @!attribute customer_type
    #   <p> Customer type for your TRN in Israel. The value can be <code>Business</code> or
    #           <code>Individual</code>. Use <code>Business</code>for entities such as not-for-profit and
    #         financial institutions.</p>
    #   @return [String]
    class IsraelAdditionalInfo < Struct.new(
      :dealer_type,
      :customer_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Additional tax information associated with your TRN in Italy.
    #     </p>
    # @!attribute sdi_account_id
    #   <p>
    #         Additional tax information to specify for a TRN in Italy. Use CodiceDestinatario to receive your invoices via web service (API) or FTP.
    #       </p>
    #   @return [String]
    # @!attribute cig_number
    #   <p>
    #         The tender procedure identification code.
    #       </p>
    #   @return [String]
    # @!attribute cup_number
    #   <p>
    #         Additional tax information to specify for a TRN in Italy. This is managed by the Interministerial Committee for Economic Planning (CIPE) which characterizes every public investment project (Individual Project Code).
    #       </p>
    #   @return [String]
    # @!attribute tax_code
    #   <p>List of service tax codes for your TRN in Italy. You can use your customer tax code as part of a VAT Group.
    #       </p>
    #   @return [String]
    class ItalyAdditionalInfo < Struct.new(
      :sdi_account_id,
      :cig_number,
      :cup_number,
      :tax_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The jurisdiction details of the TRN information of the customers. This doesn't contain
    #       full legal address, and contains only country code and state/region/province. </p>
    # @!attribute state_or_region
    #   <p> The state, region, or province associated with the country of the jurisdiction, if
    #         applicable. </p>
    #   @return [String]
    # @!attribute country_code
    #   <p> The country code of the jurisdiction. </p>
    #   @return [String]
    class Jurisdiction < Struct.new(
      :state_or_region,
      :country_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Additional tax information associated with your TRN in Kenya.</p>
    # @!attribute person_type
    #   <p>The legal person or physical person assigned to this TRN in Kenya.</p>
    #   @return [String]
    class KenyaAdditionalInfo < Struct.new(
      :person_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>
    #         The number of <code>taxRegistrations</code> results you want in one response.
    #       </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>
    #         The token to retrieve the next set of results. 
    #       </p>
    #   @return [String]
    class ListSupplementalTaxRegistrationsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tax_registrations
    #   <p>
    #         The list of supplemental tax registrations. 
    #       </p>
    #   @return [Array<Types::SupplementalTaxRegistration>]
    # @!attribute next_token
    #   <p>
    #         The token to retrieve the next set of results. 
    #       </p>
    #   @return [String]
    class ListSupplementalTaxRegistrationsResponse < Struct.new(
      :tax_registrations,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The number of results you want in one response.
    #       </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results. </p>
    #   @return [String]
    class ListTaxExemptionsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to retrieve the next set of results. </p>
    #   @return [String]
    # @!attribute tax_exemption_details_map
    #   <p>The tax exemption details map of <code>accountId</code> and tax exemption details.
    #       </p>
    #   @return [Hash<String, Types::TaxExemptionDetails>]
    class ListTaxExemptionsResponse < Struct.new(
      :next_token,
      :tax_exemption_details_map,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>Number of <code>accountDetails</code> results you want in one response. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results. </p>
    #   @return [String]
    class ListTaxRegistrationsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_details
    #   <p>The list of account details. This contains account Ids and TRN Information for each of the
    #         linked accounts. </p>
    #   @return [Array<Types::AccountDetails>]
    # @!attribute next_token
    #   <p> The token to retrieve the next set of results. </p>
    #   @return [String]
    class ListTaxRegistrationsResponse < Struct.new(
      :account_details,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> Additional tax information associated with your TRN in Malaysia.</p>
    # @!attribute service_tax_codes
    #   <p>List of service tax codes for your TRN in Malaysia.</p>
    #   @return [Array<String>]
    # @!attribute tax_information_number
    #   <p>The tax information number in Malaysia. 
    #       </p>
    #            <p>For individual, you can specify the <code>taxInformationNumber</code> in <code>MalaysiaAdditionalInfo</code> with NRIC type, and a valid MyKad or NRIC number. For business resellers, you must specify a <code>businessRegistrationNumber</code> and <code>taxInformationNumber</code> in <code>MalaysiaAdditionalInfo</code> with a sales and service tax (SST) type and a valid SST number.
    #       </p>
    #            <p>For business resellers with service codes, you must specify <code>businessRegistrationNumber</code>, <code>taxInformationNumber</code>, and distinct <code>serviceTaxCodes</code> in <code>MalaysiaAdditionalInfo</code> with a SST type and valid sales and service tax (SST) number. By using this API operation, Amazon Web Services registers your self-declaration that you’re an authorized business reseller registered with the Royal Malaysia Customs Department (RMCD), and have a valid SST number.</p>
    #   @return [String]
    # @!attribute business_registration_number
    #   <p>The tax registration number (TRN) in Malaysia. </p>
    #            <p>For individual, you can specify the <code>taxInformationNumber</code> in <code>MalaysiaAdditionalInfo</code> with NRIC type, and a valid MyKad or NRIC number. For business, you must specify a <code>businessRegistrationNumber</code> in <code>MalaysiaAdditionalInfo</code> with a TIN type and tax identification number. For business resellers, you must specify a <code>businessRegistrationNumber</code> and <code>taxInformationNumber</code> in <code>MalaysiaAdditionalInfo</code> with a sales and service tax (SST) type and a valid SST number.
    #       </p>
    #            <p>For business resellers with service codes, you must specify <code>businessRegistrationNumber</code>, <code>taxInformationNumber</code>, and distinct <code>serviceTaxCodes</code> in <code>MalaysiaAdditionalInfo</code> with a SST type and valid sales and service tax (SST) number. By using this API operation, Amazon Web Services registers your self-declaration that you’re an authorized business reseller registered with the Royal Malaysia Customs Department (RMCD), and have a valid SST number.</p>
    #   @return [String]
    class MalaysiaAdditionalInfo < Struct.new(
      :service_tax_codes,
      :tax_information_number,
      :business_registration_number,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:service_tax_codes] = [] unless options.key?(:service_tax_codes)
        super
      end
    end

    # <p>
    #       Additional tax information associated with your TRN in Poland.
    #     </p>
    # @!attribute individual_registration_number
    #   <p>
    #         The individual tax registration number (NIP). Individual NIP is valid for other taxes excluding VAT purposes.
    #       </p>
    #   @return [String]
    # @!attribute is_group_vat_enabled
    #   <p>
    #         True if your business is a member of a VAT group with a NIP active for VAT purposes. Otherwise, this is false.
    #       </p>
    #   @return [Boolean]
    class PolandAdditionalInfo < Struct.new(
      :individual_registration_number,
      :is_group_vat_enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tax_registration_entry
    #   <p>
    #         The supplemental TRN information that will be stored for the caller account ID.
    #       </p>
    #   @return [Types::SupplementalTaxRegistrationEntry]
    class PutSupplementalTaxRegistrationRequest < Struct.new(
      :tax_registration_entry,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute authority_id
    #   <p>
    #         Unique authority ID for the supplemental TRN information that was stored.
    #       </p>
    #   @return [String]
    # @!attribute status
    #   <p>
    #         The status of the supplemental TRN stored in the system after processing. Based on the validation occurring on the TRN, the status can be <code>Verified</code>, <code>Pending</code>, <code>Rejected</code>, or <code>Deleted</code>.
    #       </p>
    #   @return [String]
    class PutSupplementalTaxRegistrationResponse < Struct.new(
      :authority_id,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_ids
    #   <p>
    #         The list of unique account identifiers.
    #       </p>
    #   @return [Array<String>]
    # @!attribute authority
    #   <p>The address domain associate with the tax information.
    #       </p>
    #   @return [Types::Authority]
    # @!attribute exemption_type
    #   <p>The exemption type. Use the supported tax exemption type description.
    #       </p>
    #   @return [String]
    # @!attribute exemption_certificate
    #   <p>The exemption certificate.
    #       </p>
    #   @return [Types::ExemptionCertificate]
    class PutTaxExemptionRequest < Struct.new(
      :account_ids,
      :authority,
      :exemption_type,
      :exemption_certificate,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute case_id
    #   <p>The customer support case ID.
    #       </p>
    #   @return [String]
    class PutTaxExemptionResponse < Struct.new(
      :case_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute heritage_status
    #   <p>The tax inheritance status.
    #       </p>
    #   @return [String]
    class PutTaxInheritanceRequest < Struct.new(
      :heritage_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class PutTaxInheritanceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>Your unique account identifier. </p>
    #   @return [String]
    # @!attribute tax_registration_entry
    #   <p> Your TRN information that will be stored to the account mentioned in
    #           <code>accountId</code>. </p>
    #   @return [Types::TaxRegistrationEntry]
    class PutTaxRegistrationRequest < Struct.new(
      :account_id,
      :tax_registration_entry,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The status of your TRN stored in the system after processing. Based on the validation
    #         occurring on the TRN, the status can be <code>Verified</code>, <code>Pending</code> or
    #           <code>Rejected</code>. </p>
    #   @return [String]
    class PutTaxRegistrationResponse < Struct.new(
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The exception thrown when the input doesn't have a resource associated to it.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute error_code
    #   <p>404</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :error_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Additional tax information to specify for a TRN in Romania.
    #     </p>
    # @!attribute tax_registration_number_type
    #   <p>
    #         The tax registration number type. The value can be <code>TaxRegistrationNumber</code> or <code>LocalRegistrationNumber</code>.
    #       </p>
    #   @return [String]
    class RomaniaAdditionalInfo < Struct.new(
      :tax_registration_number_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Additional tax information associated with your TRN in Saudi Arabia.
    #     </p>
    # @!attribute tax_registration_number_type
    #   <p>
    #         The tax registration number type.
    #       </p>
    #   @return [String]
    class SaudiArabiaAdditionalInfo < Struct.new(
      :tax_registration_number_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon S3 bucket in your account where your tax document is located.</p>
    # @!attribute bucket
    #   <p>The name of your Amazon S3 bucket that your tax document is located.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The object key of your tax document object in Amazon S3.</p>
    #   @return [String]
    class SourceS3Location < Struct.new(
      :bucket,
      :key,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Additional tax information associated with your TRN in South Korea.</p>
    # @!attribute business_representative_name
    #   <p>The business legal name based on the most recently uploaded tax registration certificate.</p>
    #   @return [String]
    # @!attribute line_of_business
    #   <p>Line of business based on the most recently uploaded tax registration certificate.</p>
    #   @return [String]
    # @!attribute item_of_business
    #   <p>Item of business based on the most recently uploaded tax registration certificate.</p>
    #   @return [String]
    class SouthKoreaAdditionalInfo < Struct.new(
      :business_representative_name,
      :line_of_business,
      :item_of_business,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Additional tax information associated with your TRN in Spain.</p>
    # @!attribute registration_type
    #   <p>The registration type in Spain.</p>
    #   @return [String]
    class SpainAdditionalInfo < Struct.new(
      :registration_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Supplemental TRN details.
    #     </p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute registration_id
    #   <p>
    #         The supplemental TRN unique identifier.
    #       </p>
    #   @return [String]
    # @!attribute registration_type
    #   <p>
    #         Type of supplemental TRN. Currently, this can only be VAT.
    #       </p>
    #   @return [String]
    # @!attribute legal_name
    #   <p>
    #         The legal name associated with your TRN registration.
    #       </p>
    #   @return [String]
    # @!attribute address
    #   <p> The details of the address associated with the TRN information. </p>
    #   @return [Types::Address]
    # @!attribute authority_id
    #   <p>
    #         Unique authority ID for the supplemental TRN.
    #       </p>
    #   @return [String]
    # @!attribute status
    #   <p>
    #         The status of your TRN.
    #       </p>
    #   @return [String]
    class SupplementalTaxRegistration < Struct.new(
      :registration_id,
      :registration_type,
      :legal_name,
      :address,
      :authority_id,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       The supplemental TRN information to provide when adding or updating a supplemental TRN.
    #     </p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute registration_id
    #   <p>
    #         The supplemental TRN unique identifier.
    #       </p>
    #   @return [String]
    # @!attribute registration_type
    #   <p>
    #         Type of supplemental TRN. Currently, this can only be VAT.
    #       </p>
    #   @return [String]
    # @!attribute legal_name
    #   <p>
    #         The legal name associated with your TRN registration.
    #       </p>
    #   @return [String]
    # @!attribute address
    #   <p> The details of the address associated with the TRN information. </p>
    #   @return [Types::Address]
    class SupplementalTaxRegistrationEntry < Struct.new(
      :registration_id,
      :registration_type,
      :legal_name,
      :address,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The metadata for your tax document.</p>
    # @!attribute tax_document_access_token
    #   <p>The tax document access token, which contains information that the Tax Settings API uses to locate the tax document.</p>
    #            <note>
    #               <p>If you update your tax registration, the existing <code>taxDocumentAccessToken</code> won't be valid. To get the latest token, call the <code>GetTaxRegistration</code> or <code>ListTaxRegistrations</code> API operation. This token is valid for 24 hours.</p>
    #            </note>
    #   @return [String]
    # @!attribute tax_document_name
    #   <p>The name of your tax document.</p>
    #   @return [String]
    class TaxDocumentMetadata < Struct.new(
      :tax_document_access_token,
      :tax_document_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The tax exemption.
    #     </p>
    # @!attribute authority
    #   <p>The address domain associate with tax exemption.
    #       </p>
    #   @return [Types::Authority]
    # @!attribute tax_exemption_type
    #   <p>The tax exemption type.
    #       </p>
    #   @return [Types::TaxExemptionType]
    # @!attribute effective_date
    #   <p>The tax exemption effective date.
    #       </p>
    #   @return [Time]
    # @!attribute expiration_date
    #   <p>The tax exemption expiration date.
    #       </p>
    #   @return [Time]
    # @!attribute system_effective_date
    #   <p>The tax exemption recording time in the <code>TaxSettings</code> system.
    #       </p>
    #   @return [Time]
    # @!attribute status
    #   <p>The tax exemption status.
    #       </p>
    #   @return [String]
    class TaxExemption < Struct.new(
      :authority,
      :tax_exemption_type,
      :effective_date,
      :expiration_date,
      :system_effective_date,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The tax exemption details.
    #     </p>
    # @!attribute tax_exemptions
    #   <p>Tax exemptions.
    #       </p>
    #   @return [Array<Types::TaxExemption>]
    # @!attribute heritage_obtained_details
    #   <p>The indicator if the tax exemption is inherited from the consolidated billing family management account.
    #       </p>
    #   @return [Boolean]
    # @!attribute heritage_obtained_parent_entity
    #   <p>The consolidated billing family management account the tax exemption inherited from.
    #       </p>
    #   @return [String]
    # @!attribute heritage_obtained_reason
    #   <p>The reason of the heritage inheritance.
    #       </p>
    #   @return [String]
    class TaxExemptionDetails < Struct.new(
      :tax_exemptions,
      :heritage_obtained_details,
      :heritage_obtained_parent_entity,
      :heritage_obtained_reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The tax exemption type.
    #     </p>
    # @!attribute display_name
    #   <p>The tax exemption's type display name.
    #       </p>
    #   @return [String]
    # @!attribute description
    #   <p>The tax exemption's type description.
    #       </p>
    #   @return [String]
    # @!attribute applicable_jurisdictions
    #   <p>The tax exemption's applicable jurisdictions.
    #       </p>
    #   @return [Array<Types::Authority>]
    class TaxExemptionType < Struct.new(
      :display_name,
      :description,
      :applicable_jurisdictions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Tax inheritance information associated with the account.
    #     </p>
    # @!attribute parent_entity_id
    #   <p>
    #         Tax inheritance parent account information associated with the account.
    #       </p>
    #   @return [String]
    # @!attribute inheritance_obtained_reason
    #   <p>
    #         Tax inheritance reason information associated with the account.
    #       </p>
    #   @return [String]
    class TaxInheritanceDetails < Struct.new(
      :parent_entity_id,
      :inheritance_obtained_reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Your TRN information. </p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute registration_id
    #   <p> Your tax registration unique identifier. </p>
    #   @return [String]
    # @!attribute registration_type
    #   <p>Type of your tax registration.
    #       </p>
    #   @return [String]
    # @!attribute legal_name
    #   <p> The legal name associated with your TRN registration. </p>
    #   @return [String]
    # @!attribute status
    #   <p> The status of your TRN. This can be either <code>Verified</code>, <code>Pending</code>,
    #           <code>Deleted</code>, or <code>Rejected</code>. </p>
    #   @return [String]
    # @!attribute sector
    #   <p>The industry that describes your business. For business-to-business (B2B) customers, specify Business. For business-to-consumer (B2C) customers, specify Individual. For business-to-government (B2G), specify Government. Note that certain values may not applicable for the request country. Please refer to country specific information in API document.
    #       </p>
    #   @return [String]
    # @!attribute tax_document_metadatas
    #   <p>The metadata for your tax document.</p>
    #   @return [Array<Types::TaxDocumentMetadata>]
    # @!attribute certified_email_id
    #   <p>The email address to receive VAT invoices.</p>
    #   @return [String]
    # @!attribute additional_tax_information
    #   <p> Additional tax information associated with your TRN. </p>
    #   @return [Types::AdditionalInfoResponse]
    # @!attribute legal_address
    #   <p> The legal address associated with your TRN registration. </p>
    #   @return [Types::Address]
    class TaxRegistration < Struct.new(
      :registration_id,
      :registration_type,
      :legal_name,
      :status,
      :sector,
      :tax_document_metadatas,
      :certified_email_id,
      :additional_tax_information,
      :legal_address,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The tax registration document.
    #     </p>
    # @!attribute file_name
    #   <p>The tax registration document name.
    #       </p>
    #   @return [String]
    # @!attribute file_content
    #   <p>The tax registration document content.
    #       </p>
    #   @return [String]
    class TaxRegistrationDocFile < Struct.new(
      :file_name,
      :file_content,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Tax registration document information.</p>
    # @!attribute s3_location
    #   <p>The Amazon S3 location where your tax registration document is stored.</p>
    #   @return [Types::SourceS3Location]
    # @!attribute file
    #   <p>The tax registration document.
    #       </p>
    #   @return [Types::TaxRegistrationDocFile]
    class TaxRegistrationDocument < Struct.new(
      :s3_location,
      :file,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The TRN information you provide when you add a new TRN, or update. </p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute registration_id
    #   <p>Your tax registration unique identifier. </p>
    #   @return [String]
    # @!attribute registration_type
    #   <p> Your tax registration type. This can be either <code>VAT</code> or <code>GST</code>.
    #       </p>
    #   @return [String]
    # @!attribute legal_name
    #   <p>The legal name associated with your TRN. </p>
    #            <note>
    #               <p>If you're setting a TRN in Brazil, you don't need to specify the legal name. For TRNs in
    #           other countries, you must specify the legal name.</p>
    #            </note>
    #   @return [String]
    # @!attribute legal_address
    #   <p>The legal address associated with your TRN.</p>
    #            <note>
    #               <p>If you're setting a TRN in Brazil for the CNPJ tax type, you don't need to specify the
    #           legal address. </p>
    #               <p>For TRNs in other countries and for CPF tax types Brazil, you must specify the legal
    #           address.</p>
    #            </note>
    #   @return [Types::Address]
    # @!attribute sector
    #   <p>The industry that describes your business. For business-to-business (B2B) customers, specify Business. For business-to-consumer (B2C) customers, specify Individual. For business-to-government (B2G), specify Government.Note that certain values may not applicable for the request country. Please refer to country specific information in API document.
    #       </p>
    #   @return [String]
    # @!attribute additional_tax_information
    #   <p> Additional tax information associated with your TRN. You only need to specify this
    #         parameter if Amazon Web Services collects any additional information for your country within
    #           <a>AdditionalInfoRequest</a>.</p>
    #   @return [Types::AdditionalInfoRequest]
    # @!attribute verification_details
    #   <p>Additional details needed to verify your TRN information in Brazil. You only need to specify this
    #         parameter when you set a TRN in Brazil that is the CPF tax type.</p>
    #            <note>
    #               <p>Don't specify this parameter to set a TRN in Brazil of the CNPJ tax type or to set a TRN
    #           for another country. </p>
    #            </note>
    #   @return [Types::VerificationDetails]
    # @!attribute certified_email_id
    #   <p>The email address to receive VAT invoices.</p>
    #   @return [String]
    class TaxRegistrationEntry < Struct.new(
      :registration_id,
      :registration_type,
      :legal_name,
      :legal_address,
      :sector,
      :additional_tax_information,
      :verification_details,
      :certified_email_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Your TRN information with jurisdiction details. This doesn't contain the full legal
    #       address associated with the TRN information.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute registration_id
    #   <p>Your tax registration unique identifier. </p>
    #   @return [String]
    # @!attribute registration_type
    #   <p> The type of your tax registration. This can be either <code>VAT</code> or
    #           <code>GST</code>. </p>
    #   @return [String]
    # @!attribute legal_name
    #   <p>The legal name associated with your TRN information. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of your TRN. This can be either <code>Verified</code>, <code>Pending</code>,
    #           <code>Deleted</code>, or <code>Rejected</code>. </p>
    #   @return [String]
    # @!attribute sector
    #   <p>The industry that describes your business. For business-to-business (B2B) customers, specify Business. For business-to-consumer (B2C) customers, specify Individual. For business-to-government (B2G), specify Government.Note that certain values may not applicable for the request country. Please refer to country specific information in API document.
    #       </p>
    #   @return [String]
    # @!attribute tax_document_metadatas
    #   <p>The metadata for your tax document.</p>
    #   @return [Array<Types::TaxDocumentMetadata>]
    # @!attribute certified_email_id
    #   <p>The email address to receive VAT invoices.</p>
    #   @return [String]
    # @!attribute additional_tax_information
    #   <p>Additional tax information associated with your TRN. </p>
    #   @return [Types::AdditionalInfoResponse]
    # @!attribute jurisdiction
    #   <p> The jurisdiction associated with your TRN information. </p>
    #   @return [Types::Jurisdiction]
    class TaxRegistrationWithJurisdiction < Struct.new(
      :registration_id,
      :registration_type,
      :legal_name,
      :status,
      :sector,
      :tax_document_metadatas,
      :certified_email_id,
      :additional_tax_information,
      :jurisdiction,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Additional tax information associated with your TRN in Turkey.</p>
    # @!attribute tax_office
    #   <p>The tax office where you're registered. You can enter this information as a string. The Tax Settings API will add this information to your invoice. This parameter is required for business-to-business (B2B) and business-to-government customers. It's not required for business-to-consumer (B2C) customers.</p>
    #   @return [String]
    # @!attribute kep_email_id
    #   <p>The Registered Electronic Mail (REM) that is used to send notarized communication. This parameter is optional for business-to-business (B2B) and business-to-government (B2G) customers. It's not required for business-to-consumer (B2C) customers.</p>
    #   @return [String]
    # @!attribute secondary_tax_id
    #   <p>
    #         Secondary tax ID (“harcama birimi VKN”si”). If one isn't provided, we will use your VKN as the secondary ID.
    #       </p>
    #   @return [String]
    # @!attribute industries
    #   <p>The industry information that tells the Tax Settings API if you're subject to additional
    #         withholding taxes. This information required for business-to-business (B2B) customers. This
    #         information is conditionally mandatory for B2B customers who are subject to KDV tax.</p>
    #   @return [String]
    class TurkeyAdditionalInfo < Struct.new(
      :tax_office,
      :kep_email_id,
      :secondary_tax_id,
      :industries,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Additional tax information associated with your TRN in Ukraine.
    #     </p>
    # @!attribute ukraine_trn_type
    #   <p>
    #         The tax registration type.
    #       </p>
    #   @return [String]
    class UkraineAdditionalInfo < Struct.new(
      :ukraine_trn_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Additional tax information to specify for a TRN in Uzbekistan.
    #     </p>
    # @!attribute tax_registration_number_type
    #   <p>
    #         The tax registration number type. The tax registration number type valid values are <code>Business</code> and <code>Individual</code>.
    #       </p>
    #   @return [String]
    # @!attribute vat_registration_number
    #   <p>
    #         The unique 12-digit number issued to identify VAT-registered identities in Uzbekistan.
    #       </p>
    #   @return [String]
    class UzbekistanAdditionalInfo < Struct.new(
      :tax_registration_number_type,
      :vat_registration_number,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The exception when the input doesn't pass validation for at least one of the input
    #       parameters. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute error_code
    #   <p>400</p>
    #   @return [String]
    # @!attribute field_list
    #   <p>400</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      :message,
      :error_code,
      :field_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The information about the specified parameter in the request that caused an error.</p>
    # @!attribute name
    #   <p>The name of the parameter that caused a <code>ValidationException</code> error.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Required information to verify your TRN.</p>
    # @!attribute date_of_birth
    #   <p>Date of birth to verify your submitted TRN. Use the <code>YYYY-MM-DD</code> format.</p>
    #   @return [String]
    # @!attribute tax_registration_documents
    #   <p>The tax registration document, which is required for specific countries such as Bangladesh, Kenya, South Korea and Spain.</p>
    #   @return [Array<Types::TaxRegistrationDocument>]
    class VerificationDetails < Struct.new(
      :date_of_birth,
      :tax_registration_documents,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Additional tax information to specify for a TRN in Vietnam.</p>
    # @!attribute enterprise_identification_number
    #   <p>The enterprise identification number for tax registration. This field must be provided for successful API operation.</p>
    #   @return [String]
    # @!attribute electronic_transaction_code_number
    #   <p>The electronic transaction code number on the tax return document. This field must be provided for successful API operation.</p>
    #   @return [String]
    # @!attribute payment_voucher_number
    #   <p>The payment voucher number on the tax return payment document. This field must be provided for successful API operation.</p>
    #   @return [String]
    # @!attribute payment_voucher_number_date
    #   <p>The date on the tax return payment document. This field must be provided for successful API operation.</p>
    #   @return [String]
    class VietnamAdditionalInfo < Struct.new(
      :enterprise_identification_number,
      :electronic_transaction_code_number,
      :payment_voucher_number,
      :payment_voucher_number_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
