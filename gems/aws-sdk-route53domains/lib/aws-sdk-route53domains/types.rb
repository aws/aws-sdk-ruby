# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Route53Domains
  module Types

    # @!attribute [rw] domain_name
    #   The name of a domain.
    #
    #   Type: String
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   The operation that you were charged for.
    #
    #   Type: String
    #
    #   Valid values: * `REGISTER_DOMAIN`
    #   * `TRANSFER_IN_DOMAIN`
    #   * `RENEW_DOMAIN`
    #   * `CHANGE_DOMAIN_OWNER`
    #   @return [String]
    #
    # @!attribute [rw] invoice_id
    #   The ID of the invoice that is associated with the billing record.
    #
    #   Type: String
    #   @return [String]
    #
    # @!attribute [rw] bill_date
    #   The date that the operation was billed, in Unix format.
    #
    #   Type: Double
    #   @return [Time]
    #
    # @!attribute [rw] price
    #   The price that you were charged for the operation, in US dollars.
    #
    #   Type: Double
    #
    #   Example value: 12.0
    #   @return [Float]
    #
    class BillingRecord < Struct.new(
      :domain_name,
      :operation,
      :invoice_id,
      :bill_date,
      :price)
      include Aws::Structure
    end

    # The CheckDomainAvailability request contains the following elements.
    #
    # @note When making an API call, you may pass CheckDomainAvailabilityRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #         idn_lang_code: "LangCode",
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of a domain.
    #
    #   Type: String
    #
    #   Default: None
    #
    #   Constraints: The domain name can contain only the letters a through
    #   z, the numbers 0 through 9, and hyphen (-). Internationalized Domain
    #   Names are not supported.
    #
    #   Required: Yes
    #   @return [String]
    #
    # @!attribute [rw] idn_lang_code
    #   Reserved for future use.
    #   @return [String]
    #
    class CheckDomainAvailabilityRequest < Struct.new(
      :domain_name,
      :idn_lang_code)
      include Aws::Structure
    end

    # The CheckDomainAvailability response includes the following elements.
    #
    # @!attribute [rw] availability
    #   Whether the domain name is available for registering.
    #
    #   <note markdown="1"> You can only register domains designated as `AVAILABLE`.
    #
    #    </note>
    #
    #   Type: String
    #
    #   Valid values:
    #
    #   * `AVAILABLE` – The domain name is available.
    #   * `AVAILABLE_RESERVED` – The domain name is reserved under specific
    #     conditions.
    #   * `AVAILABLE_PREORDER` – The domain name is available and can be
    #     preordered.
    #   * `UNAVAILABLE` – The domain name is not available.
    #   * `UNAVAILABLE_PREMIUM` – The domain name is not available.
    #   * `UNAVAILABLE_RESTRICTED` – The domain name is forbidden.
    #   * `RESERVED` – The domain name has been reserved for another person
    #     or organization.
    #   * `DONT_KNOW` – The TLD registry didn't reply with a definitive
    #     answer about whether the domain name is available. Amazon Route 53
    #     can return this response for a variety of reasons, for example,
    #     the registry is performing maintenance. Try again later.
    #   @return [String]
    #
    class CheckDomainAvailabilityResponse < Struct.new(
      :availability)
      include Aws::Structure
    end

    # ContactDetail includes the following elements.
    #
    # @note When making an API call, you may pass ContactDetail
    #   data as a hash:
    #
    #       {
    #         first_name: "ContactName",
    #         last_name: "ContactName",
    #         contact_type: "PERSON", # accepts PERSON, COMPANY, ASSOCIATION, PUBLIC_BODY, RESELLER
    #         organization_name: "ContactName",
    #         address_line_1: "AddressLine",
    #         address_line_2: "AddressLine",
    #         city: "City",
    #         state: "State",
    #         country_code: "AD", # accepts AD, AE, AF, AG, AI, AL, AM, AN, AO, AQ, AR, AS, AT, AU, AW, AZ, BA, BB, BD, BE, BF, BG, BH, BI, BJ, BL, BM, BN, BO, BR, BS, BT, BW, BY, BZ, CA, CC, CD, CF, CG, CH, CI, CK, CL, CM, CN, CO, CR, CU, CV, CX, CY, CZ, DE, DJ, DK, DM, DO, DZ, EC, EE, EG, ER, ES, ET, FI, FJ, FK, FM, FO, FR, GA, GB, GD, GE, GH, GI, GL, GM, GN, GQ, GR, GT, GU, GW, GY, HK, HN, HR, HT, HU, ID, IE, IL, IM, IN, IQ, IR, IS, IT, JM, JO, JP, KE, KG, KH, KI, KM, KN, KP, KR, KW, KY, KZ, LA, LB, LC, LI, LK, LR, LS, LT, LU, LV, LY, MA, MC, MD, ME, MF, MG, MH, MK, ML, MM, MN, MO, MP, MR, MS, MT, MU, MV, MW, MX, MY, MZ, NA, NC, NE, NG, NI, NL, NO, NP, NR, NU, NZ, OM, PA, PE, PF, PG, PH, PK, PL, PM, PN, PR, PT, PW, PY, QA, RO, RS, RU, RW, SA, SB, SC, SD, SE, SG, SH, SI, SK, SL, SM, SN, SO, SR, ST, SV, SY, SZ, TC, TD, TG, TH, TJ, TK, TL, TM, TN, TO, TR, TT, TV, TW, TZ, UA, UG, US, UY, UZ, VA, VC, VE, VG, VI, VN, VU, WF, WS, YE, YT, ZA, ZM, ZW
    #         zip_code: "ZipCode",
    #         phone_number: "ContactNumber",
    #         email: "Email",
    #         fax: "ContactNumber",
    #         extra_params: [
    #           {
    #             name: "DUNS_NUMBER", # required, accepts DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, IT_PIN, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER
    #             value: "ExtraParamValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] first_name
    #   First name of contact.
    #
    #   Type: String
    #
    #   Default: None
    #
    #   Constraints: Maximum 255 characters.
    #
    #   Parents: `RegistrantContact`, `AdminContact`, `TechContact`
    #
    #   Required: Yes
    #   @return [String]
    #
    # @!attribute [rw] last_name
    #   Last name of contact.
    #
    #   Type: String
    #
    #   Default: None
    #
    #   Constraints: Maximum 255 characters.
    #
    #   Parents: `RegistrantContact`, `AdminContact`, `TechContact`
    #
    #   Required: Yes
    #   @return [String]
    #
    # @!attribute [rw] contact_type
    #   Indicates whether the contact is a person, company, association, or
    #   public organization. If you choose an option other than `PERSON`,
    #   you must enter an organization name, and you can't enable privacy
    #   protection for the contact.
    #
    #   Type: String
    #
    #   Default: None
    #
    #   Constraints: Maximum 255 characters.
    #
    #   Valid values: `PERSON` \| `COMPANY` \| `ASSOCIATION` \|
    #   `PUBLIC_BODY`
    #
    #   Parents: `RegistrantContact`, `AdminContact`, `TechContact`
    #
    #   Required: Yes
    #   @return [String]
    #
    # @!attribute [rw] organization_name
    #   Name of the organization for contact types other than `PERSON`.
    #
    #   Type: String
    #
    #   Default: None
    #
    #   Constraints: Maximum 255 characters. Contact type must not be
    #   `PERSON`.
    #
    #   Parents: `RegistrantContact`, `AdminContact`, `TechContact`
    #
    #   Required: No
    #   @return [String]
    #
    # @!attribute [rw] address_line_1
    #   First line of the contact's address.
    #
    #   Type: String
    #
    #   Default: None
    #
    #   Constraints: Maximum 255 characters.
    #
    #   Parents: `RegistrantContact`, `AdminContact`, `TechContact`
    #
    #   Required: Yes
    #   @return [String]
    #
    # @!attribute [rw] address_line_2
    #   Second line of contact's address, if any.
    #
    #   Type: String
    #
    #   Default: None
    #
    #   Constraints: Maximum 255 characters.
    #
    #   Parents: `RegistrantContact`, `AdminContact`, `TechContact`
    #
    #   Required: No
    #   @return [String]
    #
    # @!attribute [rw] city
    #   The city of the contact's address.
    #
    #   Type: String
    #
    #   Default: None
    #
    #   Constraints: Maximum 255 characters.
    #
    #   Parents: `RegistrantContact`, `AdminContact`, `TechContact`
    #
    #   Required: Yes
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state or province of the contact's city.
    #
    #   Type: String
    #
    #   Default: None
    #
    #   Constraints: Maximum 255 characters.
    #
    #   Parents: `RegistrantContact`, `AdminContact`, `TechContact`
    #
    #   Required: No
    #   @return [String]
    #
    # @!attribute [rw] country_code
    #   Code for the country of the contact's address.
    #
    #   Type: String
    #
    #   Default: None
    #
    #   Constraints: Maximum 255 characters.
    #
    #   Parents: `RegistrantContact`, `AdminContact`, `TechContact`
    #
    #   Required: Yes
    #   @return [String]
    #
    # @!attribute [rw] zip_code
    #   The zip or postal code of the contact's address.
    #
    #   Type: String
    #
    #   Default: None
    #
    #   Constraints: Maximum 255 characters.
    #
    #   Parents: `RegistrantContact`, `AdminContact`, `TechContact`
    #
    #   Required: No
    #   @return [String]
    #
    # @!attribute [rw] phone_number
    #   The phone number of the contact.
    #
    #   Type: String
    #
    #   Default: None
    #
    #   Constraints: Phone number must be specified in the format
    #   "+\[country dialing code\].\[number including any area code>\]".
    #   For example, a US phone number might appear as `"+1.1234567890"`.
    #
    #   Parents: `RegistrantContact`, `AdminContact`, `TechContact`
    #
    #   Required: Yes
    #   @return [String]
    #
    # @!attribute [rw] email
    #   Email address of the contact.
    #
    #   Type: String
    #
    #   Default: None
    #
    #   Constraints: Maximum 254 characters.
    #
    #   Parents: `RegistrantContact`, `AdminContact`, `TechContact`
    #
    #   Required: Yes
    #   @return [String]
    #
    # @!attribute [rw] fax
    #   Fax number of the contact.
    #
    #   Type: String
    #
    #   Default: None
    #
    #   Constraints: Phone number must be specified in the format
    #   "+\[country dialing code\].\[number including any area code\]".
    #   For example, a US phone number might appear as `"+1.1234567890"`.
    #
    #   Parents: `RegistrantContact`, `AdminContact`, `TechContact`
    #
    #   Required: No
    #   @return [String]
    #
    # @!attribute [rw] extra_params
    #   A list of name-value pairs for parameters required by certain
    #   top-level domains.
    #
    #   Type: Complex
    #
    #   Default: None
    #
    #   Parents: `RegistrantContact`, `AdminContact`, `TechContact`
    #
    #   Children: `Name`, `Value`
    #
    #   Required: No
    #   @return [Array<Types::ExtraParam>]
    #
    class ContactDetail < Struct.new(
      :first_name,
      :last_name,
      :contact_type,
      :organization_name,
      :address_line_1,
      :address_line_2,
      :city,
      :state,
      :country_code,
      :zip_code,
      :phone_number,
      :email,
      :fax,
      :extra_params)
      include Aws::Structure
    end

    # The DeleteTagsForDomainRequest includes the following elements.
    #
    # @note When making an API call, you may pass DeleteTagsForDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #         tags_to_delete: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The domain for which you want to delete one or more tags.
    #
    #   The name of a domain.
    #
    #   Type: String
    #
    #   Default: None
    #
    #   Constraints: The domain name can contain only the letters a through
    #   z, the numbers 0 through 9, and hyphen (-). Hyphens are allowed only
    #   when they're surrounded by letters, numbers, or other hyphens. You
    #   can't specify a hyphen at the beginning or end of a label. To
    #   specify an Internationalized Domain Name, you must convert the name
    #   to Punycode.
    #
    #   Required: Yes
    #   @return [String]
    #
    # @!attribute [rw] tags_to_delete
    #   A list of tag keys to delete.
    #
    #   Type: A list that contains the keys of the tags that you want to
    #   delete.
    #
    #   Default: None
    #
    #   Required: No
    #
    #   '>
    #   @return [Array<String>]
    #
    class DeleteTagsForDomainRequest < Struct.new(
      :domain_name,
      :tags_to_delete)
      include Aws::Structure
    end

    class DeleteTagsForDomainResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DisableDomainAutoRenewRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   @return [String]
    #
    class DisableDomainAutoRenewRequest < Struct.new(
      :domain_name)
      include Aws::Structure
    end

    class DisableDomainAutoRenewResponse < Aws::EmptyStructure; end

    # The DisableDomainTransferLock request includes the following element.
    #
    # @note When making an API call, you may pass DisableDomainTransferLockRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of a domain.
    #
    #   Type: String
    #
    #   Default: None
    #
    #   Constraints: The domain name can contain only the letters a through
    #   z, the numbers 0 through 9, and hyphen (-). Internationalized Domain
    #   Names are not supported.
    #
    #   Required: Yes
    #   @return [String]
    #
    class DisableDomainTransferLockRequest < Struct.new(
      :domain_name)
      include Aws::Structure
    end

    # The DisableDomainTransferLock response includes the following element.
    #
    # @!attribute [rw] operation_id
    #   Identifier for tracking the progress of the request. To use this ID
    #   to query the operation status, use GetOperationDetail.
    #
    #   Type: String
    #
    #   Default: None
    #
    #   Constraints: Maximum 255 characters.
    #   @return [String]
    #
    class DisableDomainTransferLockResponse < Struct.new(
      :operation_id)
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   @return [String]
    #
    # @!attribute [rw] availability
    #   @return [String]
    #
    class DomainSuggestion < Struct.new(
      :domain_name,
      :availability)
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The name of a domain.
    #
    #   Type: String
    #   @return [String]
    #
    # @!attribute [rw] auto_renew
    #   Indicates whether the domain is automatically renewed upon
    #   expiration.
    #
    #   Type: Boolean
    #
    #   Valid values: `True` \| `False`
    #   @return [Boolean]
    #
    # @!attribute [rw] transfer_lock
    #   Indicates whether a domain is locked from unauthorized transfer to
    #   another party.
    #
    #   Type: Boolean
    #
    #   Valid values: `True` \| `False`
    #   @return [Boolean]
    #
    # @!attribute [rw] expiry
    #   Expiration date of the domain in Coordinated Universal Time (UTC).
    #
    #   Type: Long
    #   @return [Time]
    #
    class DomainSummary < Struct.new(
      :domain_name,
      :auto_renew,
      :transfer_lock,
      :expiry)
      include Aws::Structure
    end

    # @note When making an API call, you may pass EnableDomainAutoRenewRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   @return [String]
    #
    class EnableDomainAutoRenewRequest < Struct.new(
      :domain_name)
      include Aws::Structure
    end

    class EnableDomainAutoRenewResponse < Aws::EmptyStructure; end

    # The EnableDomainTransferLock request includes the following element.
    #
    # @note When making an API call, you may pass EnableDomainTransferLockRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of a domain.
    #
    #   Type: String
    #
    #   Default: None
    #
    #   Constraints: The domain name can contain only the letters a through
    #   z, the numbers 0 through 9, and hyphen (-). Internationalized Domain
    #   Names are not supported.
    #
    #   Required: Yes
    #   @return [String]
    #
    class EnableDomainTransferLockRequest < Struct.new(
      :domain_name)
      include Aws::Structure
    end

    # The EnableDomainTransferLock response includes the following elements.
    #
    # @!attribute [rw] operation_id
    #   Identifier for tracking the progress of the request. To use this ID
    #   to query the operation status, use GetOperationDetail.
    #
    #   Type: String
    #
    #   Default: None
    #
    #   Constraints: Maximum 255 characters.
    #   @return [String]
    #
    class EnableDomainTransferLockResponse < Struct.new(
      :operation_id)
      include Aws::Structure
    end

    # ExtraParam includes the following elements.
    #
    # @note When making an API call, you may pass ExtraParam
    #   data as a hash:
    #
    #       {
    #         name: "DUNS_NUMBER", # required, accepts DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, IT_PIN, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER
    #         value: "ExtraParamValue", # required
    #       }
    #
    # @!attribute [rw] name
    #   Name of the additional parameter required by the top-level domain.
    #
    #   Type: String
    #
    #   Default: None
    #
    #   Valid values: `DUNS_NUMBER` \| `BRAND_NUMBER` \| `BIRTH_DEPARTMENT`
    #   \| `BIRTH_DATE_IN_YYYY_MM_DD` \| `BIRTH_COUNTRY` \| `BIRTH_CITY` \|
    #   `DOCUMENT_NUMBER` \| `AU_ID_NUMBER` \| `AU_ID_TYPE` \|
    #   `CA_LEGAL_TYPE` \| `CA_BUSINESS_ENTITY_TYPE` \|`ES_IDENTIFICATION`
    #   \| `ES_IDENTIFICATION_TYPE` \| `ES_LEGAL_FORM` \|
    #   `FI_BUSINESS_NUMBER` \| `FI_ID_NUMBER` \| `IT_PIN` \|
    #   `RU_PASSPORT_DATA` \| `SE_ID_NUMBER` \| `SG_ID_NUMBER` \|
    #   `VAT_NUMBER`
    #
    #   Parent: `ExtraParams`
    #
    #   Required: Yes
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Values corresponding to the additional parameter names required by
    #   some top-level domains.
    #
    #   Type: String
    #
    #   Default: None
    #
    #   Constraints: Maximum 2048 characters.
    #
    #   Parent: `ExtraParams`
    #
    #   Required: Yes
    #   @return [String]
    #
    class ExtraParam < Struct.new(
      :name,
      :value)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetContactReachabilityStatusRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName",
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the domain for which you want to know whether the
    #   registrant contact has confirmed that the email address is valid.
    #
    #   Type: String
    #
    #   Default: None
    #
    #   Required: Yes
    #   @return [String]
    #
    class GetContactReachabilityStatusRequest < Struct.new(
      :domain_name)
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The domain name for which you requested the reachability status.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Whether the registrant contact has responded. `PENDING` indicates
    #   that we sent the confirmation email and haven't received a response
    #   yet, `DONE` indicates that we sent the email and got confirmation
    #   from the registrant contact, and `EXPIRED` indicates that the time
    #   limit expired before the registrant contact responded.
    #
    #   Type: String
    #
    #   Valid values: `PENDING`, `DONE`, `EXPIRED`
    #   @return [String]
    #
    class GetContactReachabilityStatusResponse < Struct.new(
      :domain_name,
      :status)
      include Aws::Structure
    end

    # The GetDomainDetail request includes the following element.
    #
    # @note When making an API call, you may pass GetDomainDetailRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of a domain.
    #
    #   Type: String
    #
    #   Default: None
    #
    #   Constraints: The domain name can contain only the letters a through
    #   z, the numbers 0 through 9, and hyphen (-). Internationalized Domain
    #   Names are not supported.
    #
    #   Required: Yes
    #   @return [String]
    #
    class GetDomainDetailRequest < Struct.new(
      :domain_name)
      include Aws::Structure
    end

    # The GetDomainDetail response includes the following elements.
    #
    # @!attribute [rw] domain_name
    #   The name of a domain.
    #
    #   Type: String
    #   @return [String]
    #
    # @!attribute [rw] nameservers
    #   The name of the domain.
    #
    #   Type: String
    #   @return [Array<Types::Nameserver>]
    #
    # @!attribute [rw] auto_renew
    #   Specifies whether the domain registration is set to renew
    #   automatically.
    #
    #   Type: Boolean
    #   @return [Boolean]
    #
    # @!attribute [rw] admin_contact
    #   Provides details about the domain administrative contact.
    #
    #   Type: Complex
    #
    #   Children: `FirstName`, `MiddleName`, `LastName`, `ContactType`,
    #   `OrganizationName`, `AddressLine1`, `AddressLine2`, `City`, `State`,
    #   `CountryCode`, `ZipCode`, `PhoneNumber`, `Email`, `Fax`,
    #   `ExtraParams`
    #   @return [Types::ContactDetail]
    #
    # @!attribute [rw] registrant_contact
    #   Provides details about the domain registrant.
    #
    #   Type: Complex
    #
    #   Children: `FirstName`, `MiddleName`, `LastName`, `ContactType`,
    #   `OrganizationName`, `AddressLine1`, `AddressLine2`, `City`, `State`,
    #   `CountryCode`, `ZipCode`, `PhoneNumber`, `Email`, `Fax`,
    #   `ExtraParams`
    #   @return [Types::ContactDetail]
    #
    # @!attribute [rw] tech_contact
    #   Provides details about the domain technical contact.
    #
    #   Type: Complex
    #
    #   Children: `FirstName`, `MiddleName`, `LastName`, `ContactType`,
    #   `OrganizationName`, `AddressLine1`, `AddressLine2`, `City`, `State`,
    #   `CountryCode`, `ZipCode`, `PhoneNumber`, `Email`, `Fax`,
    #   `ExtraParams`
    #   @return [Types::ContactDetail]
    #
    # @!attribute [rw] admin_privacy
    #   Specifies whether contact information for the admin contact is
    #   concealed from WHOIS queries. If the value is `true`, WHOIS ("who
    #   is") queries will return contact information for our registrar
    #   partner, Gandi, instead of the contact information that you enter.
    #
    #   Type: Boolean
    #   @return [Boolean]
    #
    # @!attribute [rw] registrant_privacy
    #   Specifies whether contact information for the registrant contact is
    #   concealed from WHOIS queries. If the value is `true`, WHOIS ("who
    #   is") queries will return contact information for our registrar
    #   partner, Gandi, instead of the contact information that you enter.
    #
    #   Type: Boolean
    #   @return [Boolean]
    #
    # @!attribute [rw] tech_privacy
    #   Specifies whether contact information for the tech contact is
    #   concealed from WHOIS queries. If the value is `true`, WHOIS ("who
    #   is") queries will return contact information for our registrar
    #   partner, Gandi, instead of the contact information that you enter.
    #
    #   Type: Boolean
    #   @return [Boolean]
    #
    # @!attribute [rw] registrar_name
    #   Name of the registrar of the domain as identified in the registry.
    #   Amazon Route 53 domains are registered by registrar Gandi. The value
    #   is `"GANDI SAS"`.
    #
    #   Type: String
    #   @return [String]
    #
    # @!attribute [rw] who_is_server
    #   The fully qualified name of the WHOIS server that can answer the
    #   WHOIS query for the domain.
    #
    #   Type: String
    #   @return [String]
    #
    # @!attribute [rw] registrar_url
    #   Web address of the registrar.
    #
    #   Type: String
    #   @return [String]
    #
    # @!attribute [rw] abuse_contact_email
    #   Email address to contact to report incorrect contact information for
    #   a domain, to report that the domain is being used to send spam, to
    #   report that someone is cybersquatting on a domain name, or report
    #   some other type of abuse.
    #
    #   Type: String
    #   @return [String]
    #
    # @!attribute [rw] abuse_contact_phone
    #   Phone number for reporting abuse.
    #
    #   Type: String
    #   @return [String]
    #
    # @!attribute [rw] registry_domain_id
    #   Reserved for future use.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date when the domain was created as found in the response to a
    #   WHOIS query. The date format is Unix time.
    #   @return [Time]
    #
    # @!attribute [rw] updated_date
    #   The last updated date of the domain as found in the response to a
    #   WHOIS query. The date format is Unix time.
    #   @return [Time]
    #
    # @!attribute [rw] expiration_date
    #   The date when the registration for the domain is set to expire. The
    #   date format is Unix time.
    #   @return [Time]
    #
    # @!attribute [rw] reseller
    #   Reseller of the domain. Domains registered or transferred using
    #   Amazon Route 53 domains will have `"Amazon"` as the reseller.
    #
    #   Type: String
    #   @return [String]
    #
    # @!attribute [rw] dns_sec
    #   Reserved for future use.
    #   @return [String]
    #
    # @!attribute [rw] status_list
    #   An array of domain name status codes, also known as Extensible
    #   Provisioning Protocol (EPP) status codes.
    #
    #   ICANN, the organization that maintains a central database of domain
    #   names, has developed a set of domain name status codes that tell you
    #   the status of a variety of operations on a domain name, for example,
    #   registering a domain name, transferring a domain name to another
    #   registrar, renewing the registration for a domain name, and so on.
    #   All registrars use this same set of status codes.
    #
    #   For a current list of domain name status codes and an explanation of
    #   what each code means, go to the [ICANN website][1] and search for
    #   `epp status codes`. (Search on the ICANN website; web searches
    #   sometimes return an old version of the document.)
    #
    #   Type: Array of String
    #
    #
    #
    #   [1]: https://www.icann.org/
    #   @return [Array<String>]
    #
    class GetDomainDetailResponse < Struct.new(
      :domain_name,
      :nameservers,
      :auto_renew,
      :admin_contact,
      :registrant_contact,
      :tech_contact,
      :admin_privacy,
      :registrant_privacy,
      :tech_privacy,
      :registrar_name,
      :who_is_server,
      :registrar_url,
      :abuse_contact_email,
      :abuse_contact_phone,
      :registry_domain_id,
      :creation_date,
      :updated_date,
      :expiration_date,
      :reseller,
      :dns_sec,
      :status_list)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDomainSuggestionsRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #         suggestion_count: 1, # required
    #         only_available: false, # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   @return [String]
    #
    # @!attribute [rw] suggestion_count
    #   @return [Integer]
    #
    # @!attribute [rw] only_available
    #   @return [Boolean]
    #
    class GetDomainSuggestionsRequest < Struct.new(
      :domain_name,
      :suggestion_count,
      :only_available)
      include Aws::Structure
    end

    # @!attribute [rw] suggestions_list
    #   @return [Array<Types::DomainSuggestion>]
    #
    class GetDomainSuggestionsResponse < Struct.new(
      :suggestions_list)
      include Aws::Structure
    end

    # The GetOperationDetail request includes the following element.
    #
    # @note When making an API call, you may pass GetOperationDetailRequest
    #   data as a hash:
    #
    #       {
    #         operation_id: "OperationId", # required
    #       }
    #
    # @!attribute [rw] operation_id
    #   The identifier for the operation for which you want to get the
    #   status. Amazon Route 53 returned the identifier in the response to
    #   the original request.
    #
    #   Type: String
    #
    #   Default: None
    #
    #   Required: Yes
    #   @return [String]
    #
    class GetOperationDetailRequest < Struct.new(
      :operation_id)
      include Aws::Structure
    end

    # The GetOperationDetail response includes the following elements.
    #
    # @!attribute [rw] operation_id
    #   The identifier for the operation.
    #
    #   Type: String
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the requested operation in the system.
    #
    #   Type: String
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Detailed information on the status including possible errors.
    #
    #   Type: String
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The name of a domain.
    #
    #   Type: String
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of operation that was requested.
    #
    #   Type: String
    #   @return [String]
    #
    # @!attribute [rw] submitted_date
    #   The date when the request was submitted.
    #   @return [Time]
    #
    class GetOperationDetailResponse < Struct.new(
      :operation_id,
      :status,
      :message,
      :domain_name,
      :type,
      :submitted_date)
      include Aws::Structure
    end

    # The ListDomains request includes the following elements.
    #
    # @note When making an API call, you may pass ListDomainsRequest
    #   data as a hash:
    #
    #       {
    #         marker: "PageMarker",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] marker
    #   For an initial request for a list of domains, omit this element. If
    #   the number of domains that are associated with the current AWS
    #   account is greater than the value that you specified for `MaxItems`,
    #   you can use `Marker` to return additional domains. Get the value of
    #   `NextPageMarker` from the previous response, and submit another
    #   request that includes the value of `NextPageMarker` in the `Marker`
    #   element.
    #
    #   Type: String
    #
    #   Default: None
    #
    #   Constraints: The marker must match the value specified in the
    #   previous request.
    #
    #   Required: No
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Number of domains to be returned.
    #
    #   Type: Integer
    #
    #   Default: 20
    #
    #   Constraints: A numeral between 1 and 100.
    #
    #   Required: No
    #   @return [Integer]
    #
    class ListDomainsRequest < Struct.new(
      :marker,
      :max_items)
      include Aws::Structure
    end

    # The ListDomains response includes the following elements.
    #
    # @!attribute [rw] domains
    #   A summary of domains.
    #
    #   Type: Complex type containing a list of domain summaries.
    #
    #   Children: `AutoRenew`, `DomainName`, `Expiry`, `TransferLock`
    #   @return [Array<Types::DomainSummary>]
    #
    # @!attribute [rw] next_page_marker
    #   If there are more domains than you specified for `MaxItems` in the
    #   request, submit another request and include the value of
    #   `NextPageMarker` in the value of `Marker`.
    #
    #   Type: String
    #
    #   Parent: `Operations`
    #   @return [String]
    #
    class ListDomainsResponse < Struct.new(
      :domains,
      :next_page_marker)
      include Aws::Structure
    end

    # The ListOperations request includes the following elements.
    #
    # @note When making an API call, you may pass ListOperationsRequest
    #   data as a hash:
    #
    #       {
    #         marker: "PageMarker",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] marker
    #   For an initial request for a list of operations, omit this element.
    #   If the number of operations that are not yet complete is greater
    #   than the value that you specified for `MaxItems`, you can use
    #   `Marker` to return additional operations. Get the value of
    #   `NextPageMarker` from the previous response, and submit another
    #   request that includes the value of `NextPageMarker` in the `Marker`
    #   element.
    #
    #   Type: String
    #
    #   Default: None
    #
    #   Required: No
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Number of domains to be returned.
    #
    #   Type: Integer
    #
    #   Default: 20
    #
    #   Constraints: A value between 1 and 100.
    #
    #   Required: No
    #   @return [Integer]
    #
    class ListOperationsRequest < Struct.new(
      :marker,
      :max_items)
      include Aws::Structure
    end

    # The ListOperations response includes the following elements.
    #
    # @!attribute [rw] operations
    #   Lists summaries of the operations.
    #
    #   Type: Complex type containing a list of operation summaries
    #
    #   Children: `OperationId`, `Status`, `SubmittedDate`, `Type`
    #   @return [Array<Types::OperationSummary>]
    #
    # @!attribute [rw] next_page_marker
    #   If there are more operations than you specified for `MaxItems` in
    #   the request, submit another request and include the value of
    #   `NextPageMarker` in the value of `Marker`.
    #
    #   Type: String
    #
    #   Parent: `Operations`
    #   @return [String]
    #
    class ListOperationsResponse < Struct.new(
      :operations,
      :next_page_marker)
      include Aws::Structure
    end

    # The ListTagsForDomainRequest includes the following elements.
    #
    # @note When making an API call, you may pass ListTagsForDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The domain for which you want to get a list of tags.
    #   @return [String]
    #
    class ListTagsForDomainRequest < Struct.new(
      :domain_name)
      include Aws::Structure
    end

    # The ListTagsForDomain response includes the following elements.
    #
    # @!attribute [rw] tag_list
    #   A list of the tags that are associated with the specified domain.
    #
    #   Type: A complex type containing a list of tags
    #
    #   Each tag includes the following elements.
    #
    #   * Key
    #
    #     The key (name) of a tag.
    #
    #     Type: String
    #
    #   * Value
    #
    #     The value of a tag.
    #
    #     Type: String
    #   @return [Array<Types::Tag>]
    #
    class ListTagsForDomainResponse < Struct.new(
      :tag_list)
      include Aws::Structure
    end

    # Nameserver includes the following elements.
    #
    # @note When making an API call, you may pass Nameserver
    #   data as a hash:
    #
    #       {
    #         name: "HostName", # required
    #         glue_ips: ["GlueIp"],
    #       }
    #
    # @!attribute [rw] name
    #   The fully qualified host name of the name server.
    #
    #   Type: String
    #
    #   Constraint: Maximum 255 characterss
    #
    #   Parent: `Nameservers`
    #   @return [String]
    #
    # @!attribute [rw] glue_ips
    #   Glue IP address of a name server entry. Glue IP addresses are
    #   required only when the name of the name server is a subdomain of the
    #   domain. For example, if your domain is example.com and the name
    #   server for the domain is ns.example.com, you need to specify the IP
    #   address for ns.example.com.
    #
    #   Type: List of IP addresses.
    #
    #   Constraints: The list can contain only one IPv4 and one IPv6
    #   address.
    #
    #   Parent: `Nameservers`
    #   @return [Array<String>]
    #
    class Nameserver < Struct.new(
      :name,
      :glue_ips)
      include Aws::Structure
    end

    # OperationSummary includes the following elements.
    #
    # @!attribute [rw] operation_id
    #   Identifier returned to track the requested action.
    #
    #   Type: String
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the requested operation in the system.
    #
    #   Type: String
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Type of the action requested.
    #
    #   Type: String
    #
    #   Valid values: `REGISTER_DOMAIN` \| `DELETE_DOMAIN` \|
    #   `TRANSFER_IN_DOMAIN` \| `UPDATE_DOMAIN_CONTACT` \|
    #   `UPDATE_NAMESERVER` \| `CHANGE_PRIVACY_PROTECTION` \| `DOMAIN_LOCK`
    #   @return [String]
    #
    # @!attribute [rw] submitted_date
    #   The date when the request was submitted.
    #   @return [Time]
    #
    class OperationSummary < Struct.new(
      :operation_id,
      :status,
      :type,
      :submitted_date)
      include Aws::Structure
    end

    # The RegisterDomain request includes the following elements.
    #
    # @note When making an API call, you may pass RegisterDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #         idn_lang_code: "LangCode",
    #         duration_in_years: 1, # required
    #         auto_renew: false,
    #         admin_contact: { # required
    #           first_name: "ContactName",
    #           last_name: "ContactName",
    #           contact_type: "PERSON", # accepts PERSON, COMPANY, ASSOCIATION, PUBLIC_BODY, RESELLER
    #           organization_name: "ContactName",
    #           address_line_1: "AddressLine",
    #           address_line_2: "AddressLine",
    #           city: "City",
    #           state: "State",
    #           country_code: "AD", # accepts AD, AE, AF, AG, AI, AL, AM, AN, AO, AQ, AR, AS, AT, AU, AW, AZ, BA, BB, BD, BE, BF, BG, BH, BI, BJ, BL, BM, BN, BO, BR, BS, BT, BW, BY, BZ, CA, CC, CD, CF, CG, CH, CI, CK, CL, CM, CN, CO, CR, CU, CV, CX, CY, CZ, DE, DJ, DK, DM, DO, DZ, EC, EE, EG, ER, ES, ET, FI, FJ, FK, FM, FO, FR, GA, GB, GD, GE, GH, GI, GL, GM, GN, GQ, GR, GT, GU, GW, GY, HK, HN, HR, HT, HU, ID, IE, IL, IM, IN, IQ, IR, IS, IT, JM, JO, JP, KE, KG, KH, KI, KM, KN, KP, KR, KW, KY, KZ, LA, LB, LC, LI, LK, LR, LS, LT, LU, LV, LY, MA, MC, MD, ME, MF, MG, MH, MK, ML, MM, MN, MO, MP, MR, MS, MT, MU, MV, MW, MX, MY, MZ, NA, NC, NE, NG, NI, NL, NO, NP, NR, NU, NZ, OM, PA, PE, PF, PG, PH, PK, PL, PM, PN, PR, PT, PW, PY, QA, RO, RS, RU, RW, SA, SB, SC, SD, SE, SG, SH, SI, SK, SL, SM, SN, SO, SR, ST, SV, SY, SZ, TC, TD, TG, TH, TJ, TK, TL, TM, TN, TO, TR, TT, TV, TW, TZ, UA, UG, US, UY, UZ, VA, VC, VE, VG, VI, VN, VU, WF, WS, YE, YT, ZA, ZM, ZW
    #           zip_code: "ZipCode",
    #           phone_number: "ContactNumber",
    #           email: "Email",
    #           fax: "ContactNumber",
    #           extra_params: [
    #             {
    #               name: "DUNS_NUMBER", # required, accepts DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, IT_PIN, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER
    #               value: "ExtraParamValue", # required
    #             },
    #           ],
    #         },
    #         registrant_contact: { # required
    #           first_name: "ContactName",
    #           last_name: "ContactName",
    #           contact_type: "PERSON", # accepts PERSON, COMPANY, ASSOCIATION, PUBLIC_BODY, RESELLER
    #           organization_name: "ContactName",
    #           address_line_1: "AddressLine",
    #           address_line_2: "AddressLine",
    #           city: "City",
    #           state: "State",
    #           country_code: "AD", # accepts AD, AE, AF, AG, AI, AL, AM, AN, AO, AQ, AR, AS, AT, AU, AW, AZ, BA, BB, BD, BE, BF, BG, BH, BI, BJ, BL, BM, BN, BO, BR, BS, BT, BW, BY, BZ, CA, CC, CD, CF, CG, CH, CI, CK, CL, CM, CN, CO, CR, CU, CV, CX, CY, CZ, DE, DJ, DK, DM, DO, DZ, EC, EE, EG, ER, ES, ET, FI, FJ, FK, FM, FO, FR, GA, GB, GD, GE, GH, GI, GL, GM, GN, GQ, GR, GT, GU, GW, GY, HK, HN, HR, HT, HU, ID, IE, IL, IM, IN, IQ, IR, IS, IT, JM, JO, JP, KE, KG, KH, KI, KM, KN, KP, KR, KW, KY, KZ, LA, LB, LC, LI, LK, LR, LS, LT, LU, LV, LY, MA, MC, MD, ME, MF, MG, MH, MK, ML, MM, MN, MO, MP, MR, MS, MT, MU, MV, MW, MX, MY, MZ, NA, NC, NE, NG, NI, NL, NO, NP, NR, NU, NZ, OM, PA, PE, PF, PG, PH, PK, PL, PM, PN, PR, PT, PW, PY, QA, RO, RS, RU, RW, SA, SB, SC, SD, SE, SG, SH, SI, SK, SL, SM, SN, SO, SR, ST, SV, SY, SZ, TC, TD, TG, TH, TJ, TK, TL, TM, TN, TO, TR, TT, TV, TW, TZ, UA, UG, US, UY, UZ, VA, VC, VE, VG, VI, VN, VU, WF, WS, YE, YT, ZA, ZM, ZW
    #           zip_code: "ZipCode",
    #           phone_number: "ContactNumber",
    #           email: "Email",
    #           fax: "ContactNumber",
    #           extra_params: [
    #             {
    #               name: "DUNS_NUMBER", # required, accepts DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, IT_PIN, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER
    #               value: "ExtraParamValue", # required
    #             },
    #           ],
    #         },
    #         tech_contact: { # required
    #           first_name: "ContactName",
    #           last_name: "ContactName",
    #           contact_type: "PERSON", # accepts PERSON, COMPANY, ASSOCIATION, PUBLIC_BODY, RESELLER
    #           organization_name: "ContactName",
    #           address_line_1: "AddressLine",
    #           address_line_2: "AddressLine",
    #           city: "City",
    #           state: "State",
    #           country_code: "AD", # accepts AD, AE, AF, AG, AI, AL, AM, AN, AO, AQ, AR, AS, AT, AU, AW, AZ, BA, BB, BD, BE, BF, BG, BH, BI, BJ, BL, BM, BN, BO, BR, BS, BT, BW, BY, BZ, CA, CC, CD, CF, CG, CH, CI, CK, CL, CM, CN, CO, CR, CU, CV, CX, CY, CZ, DE, DJ, DK, DM, DO, DZ, EC, EE, EG, ER, ES, ET, FI, FJ, FK, FM, FO, FR, GA, GB, GD, GE, GH, GI, GL, GM, GN, GQ, GR, GT, GU, GW, GY, HK, HN, HR, HT, HU, ID, IE, IL, IM, IN, IQ, IR, IS, IT, JM, JO, JP, KE, KG, KH, KI, KM, KN, KP, KR, KW, KY, KZ, LA, LB, LC, LI, LK, LR, LS, LT, LU, LV, LY, MA, MC, MD, ME, MF, MG, MH, MK, ML, MM, MN, MO, MP, MR, MS, MT, MU, MV, MW, MX, MY, MZ, NA, NC, NE, NG, NI, NL, NO, NP, NR, NU, NZ, OM, PA, PE, PF, PG, PH, PK, PL, PM, PN, PR, PT, PW, PY, QA, RO, RS, RU, RW, SA, SB, SC, SD, SE, SG, SH, SI, SK, SL, SM, SN, SO, SR, ST, SV, SY, SZ, TC, TD, TG, TH, TJ, TK, TL, TM, TN, TO, TR, TT, TV, TW, TZ, UA, UG, US, UY, UZ, VA, VC, VE, VG, VI, VN, VU, WF, WS, YE, YT, ZA, ZM, ZW
    #           zip_code: "ZipCode",
    #           phone_number: "ContactNumber",
    #           email: "Email",
    #           fax: "ContactNumber",
    #           extra_params: [
    #             {
    #               name: "DUNS_NUMBER", # required, accepts DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, IT_PIN, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER
    #               value: "ExtraParamValue", # required
    #             },
    #           ],
    #         },
    #         privacy_protect_admin_contact: false,
    #         privacy_protect_registrant_contact: false,
    #         privacy_protect_tech_contact: false,
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of a domain.
    #
    #   Type: String
    #
    #   Default: None
    #
    #   Constraints: The domain name can contain only the letters a through
    #   z, the numbers 0 through 9, and hyphen (-). Internationalized Domain
    #   Names are not supported.
    #
    #   Required: Yes
    #   @return [String]
    #
    # @!attribute [rw] idn_lang_code
    #   Reserved for future use.
    #   @return [String]
    #
    # @!attribute [rw] duration_in_years
    #   The number of years the domain will be registered. Domains are
    #   registered for a minimum of one year. The maximum period depends on
    #   the top-level domain.
    #
    #   Type: Integer
    #
    #   Default: 1
    #
    #   Valid values: Integer from 1 to 10
    #
    #   Required: Yes
    #   @return [Integer]
    #
    # @!attribute [rw] auto_renew
    #   Indicates whether the domain will be automatically renewed (`true`)
    #   or not (`false`). Autorenewal only takes effect after the account is
    #   charged.
    #
    #   Type: Boolean
    #
    #   Valid values: `true` \| `false`
    #
    #   Default: `true`
    #
    #   Required: No
    #   @return [Boolean]
    #
    # @!attribute [rw] admin_contact
    #   Provides detailed contact information.
    #
    #   Type: Complex
    #
    #   Children: `FirstName`, `MiddleName`, `LastName`, `ContactType`,
    #   `OrganizationName`, `AddressLine1`, `AddressLine2`, `City`, `State`,
    #   `CountryCode`, `ZipCode`, `PhoneNumber`, `Email`, `Fax`,
    #   `ExtraParams`
    #
    #   Required: Yes
    #   @return [Types::ContactDetail]
    #
    # @!attribute [rw] registrant_contact
    #   Provides detailed contact information.
    #
    #   Type: Complex
    #
    #   Children: `FirstName`, `MiddleName`, `LastName`, `ContactType`,
    #   `OrganizationName`, `AddressLine1`, `AddressLine2`, `City`, `State`,
    #   `CountryCode`, `ZipCode`, `PhoneNumber`, `Email`, `Fax`,
    #   `ExtraParams`
    #
    #   Required: Yes
    #   @return [Types::ContactDetail]
    #
    # @!attribute [rw] tech_contact
    #   Provides detailed contact information.
    #
    #   Type: Complex
    #
    #   Children: `FirstName`, `MiddleName`, `LastName`, `ContactType`,
    #   `OrganizationName`, `AddressLine1`, `AddressLine2`, `City`, `State`,
    #   `CountryCode`, `ZipCode`, `PhoneNumber`, `Email`, `Fax`,
    #   `ExtraParams`
    #
    #   Required: Yes
    #   @return [Types::ContactDetail]
    #
    # @!attribute [rw] privacy_protect_admin_contact
    #   Whether you want to conceal contact information from WHOIS queries.
    #   If you specify true, WHOIS ("who is") queries will return contact
    #   information for our registrar partner, Gandi, instead of the contact
    #   information that you enter.
    #
    #   Type: Boolean
    #
    #   Default: `true`
    #
    #   Valid values: `true` \| `false`
    #
    #   Required: No
    #   @return [Boolean]
    #
    # @!attribute [rw] privacy_protect_registrant_contact
    #   Whether you want to conceal contact information from WHOIS queries.
    #   If you specify true, WHOIS ("who is") queries will return contact
    #   information for our registrar partner, Gandi, instead of the contact
    #   information that you enter.
    #
    #   Type: Boolean
    #
    #   Default: `true`
    #
    #   Valid values: `true` \| `false`
    #
    #   Required: No
    #   @return [Boolean]
    #
    # @!attribute [rw] privacy_protect_tech_contact
    #   Whether you want to conceal contact information from WHOIS queries.
    #   If you specify true, WHOIS ("who is") queries will return contact
    #   information for our registrar partner, Gandi, instead of the contact
    #   information that you enter.
    #
    #   Type: Boolean
    #
    #   Default: `true`
    #
    #   Valid values: `true` \| `false`
    #
    #   Required: No
    #   @return [Boolean]
    #
    class RegisterDomainRequest < Struct.new(
      :domain_name,
      :idn_lang_code,
      :duration_in_years,
      :auto_renew,
      :admin_contact,
      :registrant_contact,
      :tech_contact,
      :privacy_protect_admin_contact,
      :privacy_protect_registrant_contact,
      :privacy_protect_tech_contact)
      include Aws::Structure
    end

    # The RegisterDomain response includes the following element.
    #
    # @!attribute [rw] operation_id
    #   Identifier for tracking the progress of the request. To use this ID
    #   to query the operation status, use GetOperationDetail.
    #
    #   Type: String
    #
    #   Default: None
    #
    #   Constraints: Maximum 255 characters.
    #   @return [String]
    #
    class RegisterDomainResponse < Struct.new(
      :operation_id)
      include Aws::Structure
    end

    # A `RenewDomain` request includes the number of years that you want to
    # renew for and the current expiration year.
    #
    # @note When making an API call, you may pass RenewDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #         duration_in_years: 1,
    #         current_expiry_year: 1, # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   @return [String]
    #
    # @!attribute [rw] duration_in_years
    #   The number of years that you want to renew the domain for. The
    #   maximum number of years depends on the top-level domain. For the
    #   range of valid values for your domain, see [Domains that You Can
    #   Register with Amazon Route 53][1] in the Amazon Route 53
    #   documentation.
    #
    #   Type: Integer
    #
    #   Default: 1
    #
    #   Valid values: Integer from 1 to 10
    #
    #   Required: No
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/console/route53/domain-tld-list
    #   @return [Integer]
    #
    # @!attribute [rw] current_expiry_year
    #   The year when the registration for the domain is set to expire. This
    #   value must match the current expiration date for the domain.
    #
    #   Type: Integer
    #
    #   Default: None
    #
    #   Valid values: Integer
    #
    #   Required: Yes
    #   @return [Integer]
    #
    class RenewDomainRequest < Struct.new(
      :domain_name,
      :duration_in_years,
      :current_expiry_year)
      include Aws::Structure
    end

    # @!attribute [rw] operation_id
    #   @return [String]
    #
    class RenewDomainResponse < Struct.new(
      :operation_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ResendContactReachabilityEmailRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName",
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the domain for which you want Amazon Route 53 to resend
    #   a confirmation email to the registrant contact.
    #
    #   Type: String
    #
    #   Default: None
    #
    #   Required: Yes
    #   @return [String]
    #
    class ResendContactReachabilityEmailRequest < Struct.new(
      :domain_name)
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The domain name for which you requested a confirmation email.
    #   @return [String]
    #
    # @!attribute [rw] email_address
    #   The email address for the registrant contact at the time that we
    #   sent the verification email.
    #   @return [String]
    #
    # @!attribute [rw] is_already_verified
    #   True if the email address for the registrant contact has already
    #   been verified, and false otherwise. If the email address has already
    #   been verified, we don't send another confirmation email.
    #   @return [Boolean]
    #
    class ResendContactReachabilityEmailResponse < Struct.new(
      :domain_name,
      :email_address,
      :is_already_verified)
      include Aws::Structure
    end

    # The RetrieveDomainAuthCode request includes the following element.
    #
    # @note When making an API call, you may pass RetrieveDomainAuthCodeRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of a domain.
    #
    #   Type: String
    #
    #   Default: None
    #
    #   Constraints: The domain name can contain only the letters a through
    #   z, the numbers 0 through 9, and hyphen (-). Internationalized Domain
    #   Names are not supported.
    #
    #   Required: Yes
    #   @return [String]
    #
    class RetrieveDomainAuthCodeRequest < Struct.new(
      :domain_name)
      include Aws::Structure
    end

    # The RetrieveDomainAuthCode response includes the following element.
    #
    # @!attribute [rw] auth_code
    #   The authorization code for the domain.
    #
    #   Type: String
    #   @return [String]
    #
    class RetrieveDomainAuthCodeResponse < Struct.new(
      :auth_code)
      include Aws::Structure
    end

    # Each tag includes the following elements.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       }
    #
    # @!attribute [rw] key
    #   The key (name) of a tag.
    #
    #   Type: String
    #
    #   Default: None
    #
    #   Valid values: A-Z, a-z, 0-9, space, ".:/=+\\-@"
    #
    #   Constraints: Each key can be 1-128 characters long.
    #
    #   Required: Yes
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of a tag.
    #
    #   Type: String
    #
    #   Default: None
    #
    #   Valid values: A-Z, a-z, 0-9, space, ".:/=+\\-@"
    #
    #   Constraints: Each value can be 0-256 characters long.
    #
    #   Required: Yes
    #   @return [String]
    #
    class Tag < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # The TransferDomain request includes the following elements.
    #
    # @note When making an API call, you may pass TransferDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #         idn_lang_code: "LangCode",
    #         duration_in_years: 1, # required
    #         nameservers: [
    #           {
    #             name: "HostName", # required
    #             glue_ips: ["GlueIp"],
    #           },
    #         ],
    #         auth_code: "DomainAuthCode",
    #         auto_renew: false,
    #         admin_contact: { # required
    #           first_name: "ContactName",
    #           last_name: "ContactName",
    #           contact_type: "PERSON", # accepts PERSON, COMPANY, ASSOCIATION, PUBLIC_BODY, RESELLER
    #           organization_name: "ContactName",
    #           address_line_1: "AddressLine",
    #           address_line_2: "AddressLine",
    #           city: "City",
    #           state: "State",
    #           country_code: "AD", # accepts AD, AE, AF, AG, AI, AL, AM, AN, AO, AQ, AR, AS, AT, AU, AW, AZ, BA, BB, BD, BE, BF, BG, BH, BI, BJ, BL, BM, BN, BO, BR, BS, BT, BW, BY, BZ, CA, CC, CD, CF, CG, CH, CI, CK, CL, CM, CN, CO, CR, CU, CV, CX, CY, CZ, DE, DJ, DK, DM, DO, DZ, EC, EE, EG, ER, ES, ET, FI, FJ, FK, FM, FO, FR, GA, GB, GD, GE, GH, GI, GL, GM, GN, GQ, GR, GT, GU, GW, GY, HK, HN, HR, HT, HU, ID, IE, IL, IM, IN, IQ, IR, IS, IT, JM, JO, JP, KE, KG, KH, KI, KM, KN, KP, KR, KW, KY, KZ, LA, LB, LC, LI, LK, LR, LS, LT, LU, LV, LY, MA, MC, MD, ME, MF, MG, MH, MK, ML, MM, MN, MO, MP, MR, MS, MT, MU, MV, MW, MX, MY, MZ, NA, NC, NE, NG, NI, NL, NO, NP, NR, NU, NZ, OM, PA, PE, PF, PG, PH, PK, PL, PM, PN, PR, PT, PW, PY, QA, RO, RS, RU, RW, SA, SB, SC, SD, SE, SG, SH, SI, SK, SL, SM, SN, SO, SR, ST, SV, SY, SZ, TC, TD, TG, TH, TJ, TK, TL, TM, TN, TO, TR, TT, TV, TW, TZ, UA, UG, US, UY, UZ, VA, VC, VE, VG, VI, VN, VU, WF, WS, YE, YT, ZA, ZM, ZW
    #           zip_code: "ZipCode",
    #           phone_number: "ContactNumber",
    #           email: "Email",
    #           fax: "ContactNumber",
    #           extra_params: [
    #             {
    #               name: "DUNS_NUMBER", # required, accepts DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, IT_PIN, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER
    #               value: "ExtraParamValue", # required
    #             },
    #           ],
    #         },
    #         registrant_contact: { # required
    #           first_name: "ContactName",
    #           last_name: "ContactName",
    #           contact_type: "PERSON", # accepts PERSON, COMPANY, ASSOCIATION, PUBLIC_BODY, RESELLER
    #           organization_name: "ContactName",
    #           address_line_1: "AddressLine",
    #           address_line_2: "AddressLine",
    #           city: "City",
    #           state: "State",
    #           country_code: "AD", # accepts AD, AE, AF, AG, AI, AL, AM, AN, AO, AQ, AR, AS, AT, AU, AW, AZ, BA, BB, BD, BE, BF, BG, BH, BI, BJ, BL, BM, BN, BO, BR, BS, BT, BW, BY, BZ, CA, CC, CD, CF, CG, CH, CI, CK, CL, CM, CN, CO, CR, CU, CV, CX, CY, CZ, DE, DJ, DK, DM, DO, DZ, EC, EE, EG, ER, ES, ET, FI, FJ, FK, FM, FO, FR, GA, GB, GD, GE, GH, GI, GL, GM, GN, GQ, GR, GT, GU, GW, GY, HK, HN, HR, HT, HU, ID, IE, IL, IM, IN, IQ, IR, IS, IT, JM, JO, JP, KE, KG, KH, KI, KM, KN, KP, KR, KW, KY, KZ, LA, LB, LC, LI, LK, LR, LS, LT, LU, LV, LY, MA, MC, MD, ME, MF, MG, MH, MK, ML, MM, MN, MO, MP, MR, MS, MT, MU, MV, MW, MX, MY, MZ, NA, NC, NE, NG, NI, NL, NO, NP, NR, NU, NZ, OM, PA, PE, PF, PG, PH, PK, PL, PM, PN, PR, PT, PW, PY, QA, RO, RS, RU, RW, SA, SB, SC, SD, SE, SG, SH, SI, SK, SL, SM, SN, SO, SR, ST, SV, SY, SZ, TC, TD, TG, TH, TJ, TK, TL, TM, TN, TO, TR, TT, TV, TW, TZ, UA, UG, US, UY, UZ, VA, VC, VE, VG, VI, VN, VU, WF, WS, YE, YT, ZA, ZM, ZW
    #           zip_code: "ZipCode",
    #           phone_number: "ContactNumber",
    #           email: "Email",
    #           fax: "ContactNumber",
    #           extra_params: [
    #             {
    #               name: "DUNS_NUMBER", # required, accepts DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, IT_PIN, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER
    #               value: "ExtraParamValue", # required
    #             },
    #           ],
    #         },
    #         tech_contact: { # required
    #           first_name: "ContactName",
    #           last_name: "ContactName",
    #           contact_type: "PERSON", # accepts PERSON, COMPANY, ASSOCIATION, PUBLIC_BODY, RESELLER
    #           organization_name: "ContactName",
    #           address_line_1: "AddressLine",
    #           address_line_2: "AddressLine",
    #           city: "City",
    #           state: "State",
    #           country_code: "AD", # accepts AD, AE, AF, AG, AI, AL, AM, AN, AO, AQ, AR, AS, AT, AU, AW, AZ, BA, BB, BD, BE, BF, BG, BH, BI, BJ, BL, BM, BN, BO, BR, BS, BT, BW, BY, BZ, CA, CC, CD, CF, CG, CH, CI, CK, CL, CM, CN, CO, CR, CU, CV, CX, CY, CZ, DE, DJ, DK, DM, DO, DZ, EC, EE, EG, ER, ES, ET, FI, FJ, FK, FM, FO, FR, GA, GB, GD, GE, GH, GI, GL, GM, GN, GQ, GR, GT, GU, GW, GY, HK, HN, HR, HT, HU, ID, IE, IL, IM, IN, IQ, IR, IS, IT, JM, JO, JP, KE, KG, KH, KI, KM, KN, KP, KR, KW, KY, KZ, LA, LB, LC, LI, LK, LR, LS, LT, LU, LV, LY, MA, MC, MD, ME, MF, MG, MH, MK, ML, MM, MN, MO, MP, MR, MS, MT, MU, MV, MW, MX, MY, MZ, NA, NC, NE, NG, NI, NL, NO, NP, NR, NU, NZ, OM, PA, PE, PF, PG, PH, PK, PL, PM, PN, PR, PT, PW, PY, QA, RO, RS, RU, RW, SA, SB, SC, SD, SE, SG, SH, SI, SK, SL, SM, SN, SO, SR, ST, SV, SY, SZ, TC, TD, TG, TH, TJ, TK, TL, TM, TN, TO, TR, TT, TV, TW, TZ, UA, UG, US, UY, UZ, VA, VC, VE, VG, VI, VN, VU, WF, WS, YE, YT, ZA, ZM, ZW
    #           zip_code: "ZipCode",
    #           phone_number: "ContactNumber",
    #           email: "Email",
    #           fax: "ContactNumber",
    #           extra_params: [
    #             {
    #               name: "DUNS_NUMBER", # required, accepts DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, IT_PIN, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER
    #               value: "ExtraParamValue", # required
    #             },
    #           ],
    #         },
    #         privacy_protect_admin_contact: false,
    #         privacy_protect_registrant_contact: false,
    #         privacy_protect_tech_contact: false,
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of a domain.
    #
    #   Type: String
    #
    #   Default: None
    #
    #   Constraints: The domain name can contain only the letters a through
    #   z, the numbers 0 through 9, and hyphen (-). Internationalized Domain
    #   Names are not supported.
    #
    #   Required: Yes
    #   @return [String]
    #
    # @!attribute [rw] idn_lang_code
    #   Reserved for future use.
    #   @return [String]
    #
    # @!attribute [rw] duration_in_years
    #   The number of years the domain will be registered. Domains are
    #   registered for a minimum of one year. The maximum period depends on
    #   the top-level domain.
    #
    #   Type: Integer
    #
    #   Default: 1
    #
    #   Valid values: Integer from 1 to 10
    #
    #   Required: Yes
    #   @return [Integer]
    #
    # @!attribute [rw] nameservers
    #   Contains details for the host and glue IP addresses.
    #
    #   Type: Complex
    #
    #   Children: `GlueIps`, `Name`
    #
    #   Required: No
    #   @return [Array<Types::Nameserver>]
    #
    # @!attribute [rw] auth_code
    #   The authorization code for the domain. You get this value from the
    #   current registrar.
    #
    #   Type: String
    #
    #   Required: Yes
    #   @return [String]
    #
    # @!attribute [rw] auto_renew
    #   Indicates whether the domain will be automatically renewed (true) or
    #   not (false). Autorenewal only takes effect after the account is
    #   charged.
    #
    #   Type: Boolean
    #
    #   Valid values: `true` \| `false`
    #
    #   Default: true
    #
    #   Required: No
    #   @return [Boolean]
    #
    # @!attribute [rw] admin_contact
    #   Provides detailed contact information.
    #
    #   Type: Complex
    #
    #   Children: `FirstName`, `MiddleName`, `LastName`, `ContactType`,
    #   `OrganizationName`, `AddressLine1`, `AddressLine2`, `City`, `State`,
    #   `CountryCode`, `ZipCode`, `PhoneNumber`, `Email`, `Fax`,
    #   `ExtraParams`
    #
    #   Required: Yes
    #   @return [Types::ContactDetail]
    #
    # @!attribute [rw] registrant_contact
    #   Provides detailed contact information.
    #
    #   Type: Complex
    #
    #   Children: `FirstName`, `MiddleName`, `LastName`, `ContactType`,
    #   `OrganizationName`, `AddressLine1`, `AddressLine2`, `City`, `State`,
    #   `CountryCode`, `ZipCode`, `PhoneNumber`, `Email`, `Fax`,
    #   `ExtraParams`
    #
    #   Required: Yes
    #   @return [Types::ContactDetail]
    #
    # @!attribute [rw] tech_contact
    #   Provides detailed contact information.
    #
    #   Type: Complex
    #
    #   Children: `FirstName`, `MiddleName`, `LastName`, `ContactType`,
    #   `OrganizationName`, `AddressLine1`, `AddressLine2`, `City`, `State`,
    #   `CountryCode`, `ZipCode`, `PhoneNumber`, `Email`, `Fax`,
    #   `ExtraParams`
    #
    #   Required: Yes
    #   @return [Types::ContactDetail]
    #
    # @!attribute [rw] privacy_protect_admin_contact
    #   Whether you want to conceal contact information from WHOIS queries.
    #   If you specify true, WHOIS ("who is") queries will return contact
    #   information for our registrar partner, Gandi, instead of the contact
    #   information that you enter.
    #
    #   Type: Boolean
    #
    #   Default: `true`
    #
    #   Valid values: `true` \| `false`
    #
    #   Required: No
    #   @return [Boolean]
    #
    # @!attribute [rw] privacy_protect_registrant_contact
    #   Whether you want to conceal contact information from WHOIS queries.
    #   If you specify true, WHOIS ("who is") queries will return contact
    #   information for our registrar partner, Gandi, instead of the contact
    #   information that you enter.
    #
    #   Type: Boolean
    #
    #   Default: `true`
    #
    #   Valid values: `true` \| `false`
    #
    #   Required: No
    #   @return [Boolean]
    #
    # @!attribute [rw] privacy_protect_tech_contact
    #   Whether you want to conceal contact information from WHOIS queries.
    #   If you specify true, WHOIS ("who is") queries will return contact
    #   information for our registrar partner, Gandi, instead of the contact
    #   information that you enter.
    #
    #   Type: Boolean
    #
    #   Default: `true`
    #
    #   Valid values: `true` \| `false`
    #
    #   Required: No
    #   @return [Boolean]
    #
    class TransferDomainRequest < Struct.new(
      :domain_name,
      :idn_lang_code,
      :duration_in_years,
      :nameservers,
      :auth_code,
      :auto_renew,
      :admin_contact,
      :registrant_contact,
      :tech_contact,
      :privacy_protect_admin_contact,
      :privacy_protect_registrant_contact,
      :privacy_protect_tech_contact)
      include Aws::Structure
    end

    # The TranserDomain response includes the following element.
    #
    # @!attribute [rw] operation_id
    #   Identifier for tracking the progress of the request. To use this ID
    #   to query the operation status, use GetOperationDetail.
    #
    #   Type: String
    #
    #   Default: None
    #
    #   Constraints: Maximum 255 characters.
    #   @return [String]
    #
    class TransferDomainResponse < Struct.new(
      :operation_id)
      include Aws::Structure
    end

    # The UpdateDomainContactPrivacy request includes the following
    # elements.
    #
    # @note When making an API call, you may pass UpdateDomainContactPrivacyRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #         admin_privacy: false,
    #         registrant_privacy: false,
    #         tech_privacy: false,
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of a domain.
    #
    #   Type: String
    #
    #   Default: None
    #
    #   Constraints: The domain name can contain only the letters a through
    #   z, the numbers 0 through 9, and hyphen (-). Internationalized Domain
    #   Names are not supported.
    #
    #   Required: Yes
    #   @return [String]
    #
    # @!attribute [rw] admin_privacy
    #   Whether you want to conceal contact information from WHOIS queries.
    #   If you specify true, WHOIS ("who is") queries will return contact
    #   information for our registrar partner, Gandi, instead of the contact
    #   information that you enter.
    #
    #   Type: Boolean
    #
    #   Default: None
    #
    #   Valid values: `true` \| `false`
    #
    #   Required: No
    #   @return [Boolean]
    #
    # @!attribute [rw] registrant_privacy
    #   Whether you want to conceal contact information from WHOIS queries.
    #   If you specify true, WHOIS ("who is") queries will return contact
    #   information for our registrar partner, Gandi, instead of the contact
    #   information that you enter.
    #
    #   Type: Boolean
    #
    #   Default: None
    #
    #   Valid values: `true` \| `false`
    #
    #   Required: No
    #   @return [Boolean]
    #
    # @!attribute [rw] tech_privacy
    #   Whether you want to conceal contact information from WHOIS queries.
    #   If you specify true, WHOIS ("who is") queries will return contact
    #   information for our registrar partner, Gandi, instead of the contact
    #   information that you enter.
    #
    #   Type: Boolean
    #
    #   Default: None
    #
    #   Valid values: `true` \| `false`
    #
    #   Required: No
    #   @return [Boolean]
    #
    class UpdateDomainContactPrivacyRequest < Struct.new(
      :domain_name,
      :admin_privacy,
      :registrant_privacy,
      :tech_privacy)
      include Aws::Structure
    end

    # The UpdateDomainContactPrivacy response includes the following
    # element.
    #
    # @!attribute [rw] operation_id
    #   Identifier for tracking the progress of the request. To use this ID
    #   to query the operation status, use GetOperationDetail.
    #
    #   Type: String
    #
    #   Default: None
    #
    #   Constraints: Maximum 255 characters.
    #   @return [String]
    #
    class UpdateDomainContactPrivacyResponse < Struct.new(
      :operation_id)
      include Aws::Structure
    end

    # The UpdateDomainContact request includes the following elements.
    #
    # @note When making an API call, you may pass UpdateDomainContactRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #         admin_contact: {
    #           first_name: "ContactName",
    #           last_name: "ContactName",
    #           contact_type: "PERSON", # accepts PERSON, COMPANY, ASSOCIATION, PUBLIC_BODY, RESELLER
    #           organization_name: "ContactName",
    #           address_line_1: "AddressLine",
    #           address_line_2: "AddressLine",
    #           city: "City",
    #           state: "State",
    #           country_code: "AD", # accepts AD, AE, AF, AG, AI, AL, AM, AN, AO, AQ, AR, AS, AT, AU, AW, AZ, BA, BB, BD, BE, BF, BG, BH, BI, BJ, BL, BM, BN, BO, BR, BS, BT, BW, BY, BZ, CA, CC, CD, CF, CG, CH, CI, CK, CL, CM, CN, CO, CR, CU, CV, CX, CY, CZ, DE, DJ, DK, DM, DO, DZ, EC, EE, EG, ER, ES, ET, FI, FJ, FK, FM, FO, FR, GA, GB, GD, GE, GH, GI, GL, GM, GN, GQ, GR, GT, GU, GW, GY, HK, HN, HR, HT, HU, ID, IE, IL, IM, IN, IQ, IR, IS, IT, JM, JO, JP, KE, KG, KH, KI, KM, KN, KP, KR, KW, KY, KZ, LA, LB, LC, LI, LK, LR, LS, LT, LU, LV, LY, MA, MC, MD, ME, MF, MG, MH, MK, ML, MM, MN, MO, MP, MR, MS, MT, MU, MV, MW, MX, MY, MZ, NA, NC, NE, NG, NI, NL, NO, NP, NR, NU, NZ, OM, PA, PE, PF, PG, PH, PK, PL, PM, PN, PR, PT, PW, PY, QA, RO, RS, RU, RW, SA, SB, SC, SD, SE, SG, SH, SI, SK, SL, SM, SN, SO, SR, ST, SV, SY, SZ, TC, TD, TG, TH, TJ, TK, TL, TM, TN, TO, TR, TT, TV, TW, TZ, UA, UG, US, UY, UZ, VA, VC, VE, VG, VI, VN, VU, WF, WS, YE, YT, ZA, ZM, ZW
    #           zip_code: "ZipCode",
    #           phone_number: "ContactNumber",
    #           email: "Email",
    #           fax: "ContactNumber",
    #           extra_params: [
    #             {
    #               name: "DUNS_NUMBER", # required, accepts DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, IT_PIN, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER
    #               value: "ExtraParamValue", # required
    #             },
    #           ],
    #         },
    #         registrant_contact: {
    #           first_name: "ContactName",
    #           last_name: "ContactName",
    #           contact_type: "PERSON", # accepts PERSON, COMPANY, ASSOCIATION, PUBLIC_BODY, RESELLER
    #           organization_name: "ContactName",
    #           address_line_1: "AddressLine",
    #           address_line_2: "AddressLine",
    #           city: "City",
    #           state: "State",
    #           country_code: "AD", # accepts AD, AE, AF, AG, AI, AL, AM, AN, AO, AQ, AR, AS, AT, AU, AW, AZ, BA, BB, BD, BE, BF, BG, BH, BI, BJ, BL, BM, BN, BO, BR, BS, BT, BW, BY, BZ, CA, CC, CD, CF, CG, CH, CI, CK, CL, CM, CN, CO, CR, CU, CV, CX, CY, CZ, DE, DJ, DK, DM, DO, DZ, EC, EE, EG, ER, ES, ET, FI, FJ, FK, FM, FO, FR, GA, GB, GD, GE, GH, GI, GL, GM, GN, GQ, GR, GT, GU, GW, GY, HK, HN, HR, HT, HU, ID, IE, IL, IM, IN, IQ, IR, IS, IT, JM, JO, JP, KE, KG, KH, KI, KM, KN, KP, KR, KW, KY, KZ, LA, LB, LC, LI, LK, LR, LS, LT, LU, LV, LY, MA, MC, MD, ME, MF, MG, MH, MK, ML, MM, MN, MO, MP, MR, MS, MT, MU, MV, MW, MX, MY, MZ, NA, NC, NE, NG, NI, NL, NO, NP, NR, NU, NZ, OM, PA, PE, PF, PG, PH, PK, PL, PM, PN, PR, PT, PW, PY, QA, RO, RS, RU, RW, SA, SB, SC, SD, SE, SG, SH, SI, SK, SL, SM, SN, SO, SR, ST, SV, SY, SZ, TC, TD, TG, TH, TJ, TK, TL, TM, TN, TO, TR, TT, TV, TW, TZ, UA, UG, US, UY, UZ, VA, VC, VE, VG, VI, VN, VU, WF, WS, YE, YT, ZA, ZM, ZW
    #           zip_code: "ZipCode",
    #           phone_number: "ContactNumber",
    #           email: "Email",
    #           fax: "ContactNumber",
    #           extra_params: [
    #             {
    #               name: "DUNS_NUMBER", # required, accepts DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, IT_PIN, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER
    #               value: "ExtraParamValue", # required
    #             },
    #           ],
    #         },
    #         tech_contact: {
    #           first_name: "ContactName",
    #           last_name: "ContactName",
    #           contact_type: "PERSON", # accepts PERSON, COMPANY, ASSOCIATION, PUBLIC_BODY, RESELLER
    #           organization_name: "ContactName",
    #           address_line_1: "AddressLine",
    #           address_line_2: "AddressLine",
    #           city: "City",
    #           state: "State",
    #           country_code: "AD", # accepts AD, AE, AF, AG, AI, AL, AM, AN, AO, AQ, AR, AS, AT, AU, AW, AZ, BA, BB, BD, BE, BF, BG, BH, BI, BJ, BL, BM, BN, BO, BR, BS, BT, BW, BY, BZ, CA, CC, CD, CF, CG, CH, CI, CK, CL, CM, CN, CO, CR, CU, CV, CX, CY, CZ, DE, DJ, DK, DM, DO, DZ, EC, EE, EG, ER, ES, ET, FI, FJ, FK, FM, FO, FR, GA, GB, GD, GE, GH, GI, GL, GM, GN, GQ, GR, GT, GU, GW, GY, HK, HN, HR, HT, HU, ID, IE, IL, IM, IN, IQ, IR, IS, IT, JM, JO, JP, KE, KG, KH, KI, KM, KN, KP, KR, KW, KY, KZ, LA, LB, LC, LI, LK, LR, LS, LT, LU, LV, LY, MA, MC, MD, ME, MF, MG, MH, MK, ML, MM, MN, MO, MP, MR, MS, MT, MU, MV, MW, MX, MY, MZ, NA, NC, NE, NG, NI, NL, NO, NP, NR, NU, NZ, OM, PA, PE, PF, PG, PH, PK, PL, PM, PN, PR, PT, PW, PY, QA, RO, RS, RU, RW, SA, SB, SC, SD, SE, SG, SH, SI, SK, SL, SM, SN, SO, SR, ST, SV, SY, SZ, TC, TD, TG, TH, TJ, TK, TL, TM, TN, TO, TR, TT, TV, TW, TZ, UA, UG, US, UY, UZ, VA, VC, VE, VG, VI, VN, VU, WF, WS, YE, YT, ZA, ZM, ZW
    #           zip_code: "ZipCode",
    #           phone_number: "ContactNumber",
    #           email: "Email",
    #           fax: "ContactNumber",
    #           extra_params: [
    #             {
    #               name: "DUNS_NUMBER", # required, accepts DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, IT_PIN, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER
    #               value: "ExtraParamValue", # required
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of a domain.
    #
    #   Type: String
    #
    #   Default: None
    #
    #   Constraints: The domain name can contain only the letters a through
    #   z, the numbers 0 through 9, and hyphen (-). Internationalized Domain
    #   Names are not supported.
    #
    #   Required: Yes
    #   @return [String]
    #
    # @!attribute [rw] admin_contact
    #   Provides detailed contact information.
    #
    #   Type: Complex
    #
    #   Children: `FirstName`, `MiddleName`, `LastName`, `ContactType`,
    #   `OrganizationName`, `AddressLine1`, `AddressLine2`, `City`, `State`,
    #   `CountryCode`, `ZipCode`, `PhoneNumber`, `Email`, `Fax`,
    #   `ExtraParams`
    #
    #   Required: Yes
    #   @return [Types::ContactDetail]
    #
    # @!attribute [rw] registrant_contact
    #   Provides detailed contact information.
    #
    #   Type: Complex
    #
    #   Children: `FirstName`, `MiddleName`, `LastName`, `ContactType`,
    #   `OrganizationName`, `AddressLine1`, `AddressLine2`, `City`, `State`,
    #   `CountryCode`, `ZipCode`, `PhoneNumber`, `Email`, `Fax`,
    #   `ExtraParams`
    #
    #   Required: Yes
    #   @return [Types::ContactDetail]
    #
    # @!attribute [rw] tech_contact
    #   Provides detailed contact information.
    #
    #   Type: Complex
    #
    #   Children: `FirstName`, `MiddleName`, `LastName`, `ContactType`,
    #   `OrganizationName`, `AddressLine1`, `AddressLine2`, `City`, `State`,
    #   `CountryCode`, `ZipCode`, `PhoneNumber`, `Email`, `Fax`,
    #   `ExtraParams`
    #
    #   Required: Yes
    #   @return [Types::ContactDetail]
    #
    class UpdateDomainContactRequest < Struct.new(
      :domain_name,
      :admin_contact,
      :registrant_contact,
      :tech_contact)
      include Aws::Structure
    end

    # The UpdateDomainContact response includes the following element.
    #
    # @!attribute [rw] operation_id
    #   Identifier for tracking the progress of the request. To use this ID
    #   to query the operation status, use GetOperationDetail.
    #
    #   Type: String
    #
    #   Default: None
    #
    #   Constraints: Maximum 255 characters.
    #   @return [String]
    #
    class UpdateDomainContactResponse < Struct.new(
      :operation_id)
      include Aws::Structure
    end

    # The UpdateDomainNameserver request includes the following elements.
    #
    # @note When making an API call, you may pass UpdateDomainNameserversRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #         fi_auth_key: "FIAuthKey",
    #         nameservers: [ # required
    #           {
    #             name: "HostName", # required
    #             glue_ips: ["GlueIp"],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of a domain.
    #
    #   Type: String
    #
    #   Default: None
    #
    #   Constraints: The domain name can contain only the letters a through
    #   z, the numbers 0 through 9, and hyphen (-). Internationalized Domain
    #   Names are not supported.
    #
    #   Required: Yes
    #   @return [String]
    #
    # @!attribute [rw] fi_auth_key
    #   The authorization key for .fi domains
    #   @return [String]
    #
    # @!attribute [rw] nameservers
    #   A list of new name servers for the domain.
    #
    #   Type: Complex
    #
    #   Children: `Name`, `GlueIps`
    #
    #   Required: Yes
    #   @return [Array<Types::Nameserver>]
    #
    class UpdateDomainNameserversRequest < Struct.new(
      :domain_name,
      :fi_auth_key,
      :nameservers)
      include Aws::Structure
    end

    # The UpdateDomainNameservers response includes the following element.
    #
    # @!attribute [rw] operation_id
    #   Identifier for tracking the progress of the request. To use this ID
    #   to query the operation status, use GetOperationDetail.
    #
    #   Type: String
    #
    #   Default: None
    #
    #   Constraints: Maximum 255 characters.
    #   @return [String]
    #
    class UpdateDomainNameserversResponse < Struct.new(
      :operation_id)
      include Aws::Structure
    end

    # The UpdateTagsForDomainRequest includes the following elements.
    #
    # @note When making an API call, you may pass UpdateTagsForDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #         tags_to_update: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] domain_name
    #   The domain for which you want to add or update tags.
    #
    #   The name of a domain.
    #
    #   Type: String
    #
    #   Default: None
    #
    #   Constraints: The domain name can contain only the letters a through
    #   z, the numbers 0 through 9, and hyphen (-). Hyphens are allowed only
    #   when they're surrounded by letters, numbers, or other hyphens. You
    #   can't specify a hyphen at the beginning or end of a label. To
    #   specify an Internationalized Domain Name, you must convert the name
    #   to Punycode.
    #
    #   Required: Yes
    #   @return [String]
    #
    # @!attribute [rw] tags_to_update
    #   A list of the tag keys and values that you want to add or update. If
    #   you specify a key that already exists, the corresponding value will
    #   be replaced.
    #
    #   Type: A complex type containing a list of tags
    #
    #   Default: None
    #
    #   Required: No
    #
    #   '> Each tag includes the following elements:
    #
    #   * Key
    #
    #     The key (name) of a tag.
    #
    #     Type: String
    #
    #     Default: None
    #
    #     Valid values: Unicode characters including alphanumeric, space,
    #     and ".:/=+\\-@"
    #
    #     Constraints: Each key can be 1-128 characters long.
    #
    #     Required: Yes
    #
    #   * Value
    #
    #     The value of a tag.
    #
    #     Type: String
    #
    #     Default: None
    #
    #     Valid values: Unicode characters including alphanumeric, space,
    #     and ".:/=+\\-@"
    #
    #     Constraints: Each value can be 0-256 characters long.
    #
    #     Required: Yes
    #   @return [Array<Types::Tag>]
    #
    class UpdateTagsForDomainRequest < Struct.new(
      :domain_name,
      :tags_to_update)
      include Aws::Structure
    end

    class UpdateTagsForDomainResponse < Aws::EmptyStructure; end

    # The ViewBilling request includes the following elements.
    #
    # @note When making an API call, you may pass ViewBillingRequest
    #   data as a hash:
    #
    #       {
    #         start: Time.now,
    #         end: Time.now,
    #         marker: "PageMarker",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] start
    #   The beginning date and time for the time period for which you want a
    #   list of billing records. Specify the date in Unix time format.
    #
    #   Type: Double
    #
    #   Default: None
    #
    #   Required: Yes
    #   @return [Time]
    #
    # @!attribute [rw] end
    #   The end date and time for the time period for which you want a list
    #   of billing records. Specify the date in Unix time format.
    #
    #   Type: Double
    #
    #   Default: None
    #
    #   Required: Yes
    #   @return [Time]
    #
    # @!attribute [rw] marker
    #   For an initial request for a list of billing records, omit this
    #   element. If the number of billing records that are associated with
    #   the current AWS account during the specified period is greater than
    #   the value that you specified for `MaxItems`, you can use `Marker` to
    #   return additional billing records. Get the value of `NextPageMarker`
    #   from the previous response, and submit another request that includes
    #   the value of `NextPageMarker` in the `Marker` element.
    #
    #   Type: String
    #
    #   Default: None
    #
    #   Constraints: The marker must match the value of `NextPageMarker`
    #   that was returned in the previous response.
    #
    #   Required: No
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The number of billing records to be returned.
    #
    #   Type: Integer
    #
    #   Default: 20
    #
    #   Constraints: A value between 1 and 100.
    #
    #   Required: No
    #   @return [Integer]
    #
    class ViewBillingRequest < Struct.new(
      :start,
      :end,
      :marker,
      :max_items)
      include Aws::Structure
    end

    # The ViewBilling response includes the following elements.
    #
    # @!attribute [rw] next_page_marker
    #   If there are more billing records than you specified for `MaxItems`
    #   in the request, submit another request and include the value of
    #   `NextPageMarker` in the value of `Marker`.
    #
    #   Type: String
    #
    #   Parent: `BillingRecords`
    #   @return [String]
    #
    # @!attribute [rw] billing_records
    #   A summary of billing records.
    #
    #   Type: Complex type containing a list of billing record summaries.
    #
    #   Children: `DomainName`, `Operation`, `InvoiceId`, `BillDate` and
    #   `Price`
    #   @return [Array<Types::BillingRecord>]
    #
    class ViewBillingResponse < Struct.new(
      :next_page_marker,
      :billing_records)
      include Aws::Structure
    end

  end
end
