# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module Route53Domains
    module Types

      # The CheckDomainAvailability request contains the following elements.
      # @note When making an API call, pass CheckDomainAvailabilityRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "DomainName", # required
      #         idn_lang_code: "LangCode",
      #       }
      class CheckDomainAvailabilityRequest < Aws::Structure.new(
        :domain_name,
        :idn_lang_code)

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

        # @!attribute [rw] idn_lang_code
        #   Reserved for future use.
        #   @return [String]

      end

      # The CheckDomainAvailability response includes the following elements.
      class CheckDomainAvailabilityResponse < Aws::Structure.new(
        :availability)

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
        #   * `DONT_KNOW` – The TLD registry didn\'t reply with a definitive
        #     answer about whether the domain name is available. Amazon Route 53
        #     can return this response for a variety of reasons, for example,
        #     the registry is performing maintenance. Try again later.
        #   @return [String]

      end

      # ContactDetail includes the following elements.
      # @note When making an API call, pass ContactDetail
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
      class ContactDetail < Aws::Structure.new(
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

        # @!attribute [rw] phone_number
        #   The phone number of the contact.
        #
        #   Type: String
        #
        #   Default: None
        #
        #   Constraints: Phone number must be specified in the format
        #   \"+\[country dialing code\].\[number including any area code>\]\".
        #   For example, a US phone number might appear as `"+1.1234567890"`.
        #
        #   Parents: `RegistrantContact`, `AdminContact`, `TechContact`
        #
        #   Required: Yes
        #   @return [String]

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

        # @!attribute [rw] fax
        #   Fax number of the contact.
        #
        #   Type: String
        #
        #   Default: None
        #
        #   Constraints: Phone number must be specified in the format
        #   \"+\[country dialing code\].\[number including any area code\]\".
        #   For example, a US phone number might appear as `"+1.1234567890"`.
        #
        #   Parents: `RegistrantContact`, `AdminContact`, `TechContact`
        #
        #   Required: No
        #   @return [String]

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

      end

      # The DeleteTagsForDomainRequest includes the following elements.
      # @note When making an API call, pass DeleteTagsForDomainRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "DomainName", # required
      #         tags_to_delete: ["TagKey"], # required
      #       }
      class DeleteTagsForDomainRequest < Aws::Structure.new(
        :domain_name,
        :tags_to_delete)

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
        #   \'>
        #   @return [Array<String>]

      end

      class DeleteTagsForDomainResponse < Aws::EmptyStructure; end

      # @note When making an API call, pass DisableDomainAutoRenewRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "DomainName", # required
      #       }
      class DisableDomainAutoRenewRequest < Aws::Structure.new(
        :domain_name)

        # @!attribute [rw] domain_name
        #   @return [String]

      end

      class DisableDomainAutoRenewResponse < Aws::EmptyStructure; end

      # The DisableDomainTransferLock request includes the following element.
      # @note When making an API call, pass DisableDomainTransferLockRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "DomainName", # required
      #       }
      class DisableDomainTransferLockRequest < Aws::Structure.new(
        :domain_name)

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

      end

      # The DisableDomainTransferLock response includes the following element.
      class DisableDomainTransferLockResponse < Aws::Structure.new(
        :operation_id)

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

      end

      class DomainSummary < Aws::Structure.new(
        :domain_name,
        :auto_renew,
        :transfer_lock,
        :expiry)

        # @!attribute [rw] domain_name
        #   The name of a domain.
        #
        #   Type: String
        #   @return [String]

        # @!attribute [rw] auto_renew
        #   Indicates whether the domain is automatically renewed upon
        #   expiration.
        #
        #   Type: Boolean
        #
        #   Valid values: `True` \| `False`
        #   @return [Boolean]

        # @!attribute [rw] transfer_lock
        #   Indicates whether a domain is locked from unauthorized transfer to
        #   another party.
        #
        #   Type: Boolean
        #
        #   Valid values: `True` \| `False`
        #   @return [Boolean]

        # @!attribute [rw] expiry
        #   Expiration date of the domain in Coordinated Universal Time (UTC).
        #
        #   Type: Long
        #   @return [Time]

      end

      # @note When making an API call, pass EnableDomainAutoRenewRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "DomainName", # required
      #       }
      class EnableDomainAutoRenewRequest < Aws::Structure.new(
        :domain_name)

        # @!attribute [rw] domain_name
        #   @return [String]

      end

      class EnableDomainAutoRenewResponse < Aws::EmptyStructure; end

      # The EnableDomainTransferLock request includes the following element.
      # @note When making an API call, pass EnableDomainTransferLockRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "DomainName", # required
      #       }
      class EnableDomainTransferLockRequest < Aws::Structure.new(
        :domain_name)

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

      end

      # The EnableDomainTransferLock response includes the following elements.
      class EnableDomainTransferLockResponse < Aws::Structure.new(
        :operation_id)

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

      end

      # ExtraParam includes the following elements.
      # @note When making an API call, pass ExtraParam
      #   data as a hash:
      #
      #       {
      #         name: "DUNS_NUMBER", # required, accepts DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, IT_PIN, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER
      #         value: "ExtraParamValue", # required
      #       }
      class ExtraParam < Aws::Structure.new(
        :name,
        :value)

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

      end

      # @note When making an API call, pass GetContactReachabilityStatusRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "DomainName",
      #       }
      class GetContactReachabilityStatusRequest < Aws::Structure.new(
        :domain_name)

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

      end

      class GetContactReachabilityStatusResponse < Aws::Structure.new(
        :domain_name,
        :status)

        # @!attribute [rw] domain_name
        #   The domain name for which you requested the reachability status.
        #   @return [String]

        # @!attribute [rw] status
        #   Whether the registrant contact has responded. `PENDING` indicates
        #   that we sent the confirmation email and haven\'t received a response
        #   yet, `DONE` indicates that we sent the email and got confirmation
        #   from the registrant contact, and `EXPIRED` indicates that the time
        #   limit expired before the registrant contact responded.
        #
        #   Type: String
        #
        #   Valid values: `PENDING`, `DONE`, `EXPIRED`
        #   @return [String]

      end

      # The GetDomainDetail request includes the following element.
      # @note When making an API call, pass GetDomainDetailRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "DomainName", # required
      #       }
      class GetDomainDetailRequest < Aws::Structure.new(
        :domain_name)

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

      end

      # The GetDomainDetail response includes the following elements.
      class GetDomainDetailResponse < Aws::Structure.new(
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

        # @!attribute [rw] domain_name
        #   The name of a domain.
        #
        #   Type: String
        #   @return [String]

        # @!attribute [rw] nameservers
        #   The name of the domain.
        #
        #   Type: String
        #   @return [Array<Types::Nameserver>]

        # @!attribute [rw] auto_renew
        #   Specifies whether the domain registration is set to renew
        #   automatically.
        #
        #   Type: Boolean
        #   @return [Boolean]

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

        # @!attribute [rw] admin_privacy
        #   Specifies whether contact information for the admin contact is
        #   concealed from WHOIS queries. If the value is `true`, WHOIS (\"who
        #   is\") queries will return contact information for our registrar
        #   partner, Gandi, instead of the contact information that you enter.
        #
        #   Type: Boolean
        #   @return [Boolean]

        # @!attribute [rw] registrant_privacy
        #   Specifies whether contact information for the registrant contact is
        #   concealed from WHOIS queries. If the value is `true`, WHOIS (\"who
        #   is\") queries will return contact information for our registrar
        #   partner, Gandi, instead of the contact information that you enter.
        #
        #   Type: Boolean
        #   @return [Boolean]

        # @!attribute [rw] tech_privacy
        #   Specifies whether contact information for the tech contact is
        #   concealed from WHOIS queries. If the value is `true`, WHOIS (\"who
        #   is\") queries will return contact information for our registrar
        #   partner, Gandi, instead of the contact information that you enter.
        #
        #   Type: Boolean
        #   @return [Boolean]

        # @!attribute [rw] registrar_name
        #   Name of the registrar of the domain as identified in the registry.
        #   Amazon Route 53 domains are registered by registrar Gandi. The value
        #   is `"GANDI SAS"`.
        #
        #   Type: String
        #   @return [String]

        # @!attribute [rw] who_is_server
        #   The fully qualified name of the WHOIS server that can answer the
        #   WHOIS query for the domain.
        #
        #   Type: String
        #   @return [String]

        # @!attribute [rw] registrar_url
        #   Web address of the registrar.
        #
        #   Type: String
        #   @return [String]

        # @!attribute [rw] abuse_contact_email
        #   Email address to contact to report incorrect contact information for
        #   a domain, to report that the domain is being used to send spam, to
        #   report that someone is cybersquatting on a domain name, or report
        #   some other type of abuse.
        #
        #   Type: String
        #   @return [String]

        # @!attribute [rw] abuse_contact_phone
        #   Phone number for reporting abuse.
        #
        #   Type: String
        #   @return [String]

        # @!attribute [rw] registry_domain_id
        #   Reserved for future use.
        #   @return [String]

        # @!attribute [rw] creation_date
        #   The date when the domain was created as found in the response to a
        #   WHOIS query. The date format is Unix time.
        #   @return [Time]

        # @!attribute [rw] updated_date
        #   The last updated date of the domain as found in the response to a
        #   WHOIS query. The date format is Unix time.
        #   @return [Time]

        # @!attribute [rw] expiration_date
        #   The date when the registration for the domain is set to expire. The
        #   date format is Unix time.
        #   @return [Time]

        # @!attribute [rw] reseller
        #   Reseller of the domain. Domains registered or transferred using
        #   Amazon Route 53 domains will have `"Amazon"` as the reseller.
        #
        #   Type: String
        #   @return [String]

        # @!attribute [rw] dns_sec
        #   Reserved for future use.
        #   @return [String]

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

      end

      # The GetOperationDetail request includes the following element.
      # @note When making an API call, pass GetOperationDetailRequest
      #   data as a hash:
      #
      #       {
      #         operation_id: "OperationId", # required
      #       }
      class GetOperationDetailRequest < Aws::Structure.new(
        :operation_id)

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

      end

      # The GetOperationDetail response includes the following elements.
      class GetOperationDetailResponse < Aws::Structure.new(
        :operation_id,
        :status,
        :message,
        :domain_name,
        :type,
        :submitted_date)

        # @!attribute [rw] operation_id
        #   The identifier for the operation.
        #
        #   Type: String
        #   @return [String]

        # @!attribute [rw] status
        #   The current status of the requested operation in the system.
        #
        #   Type: String
        #   @return [String]

        # @!attribute [rw] message
        #   Detailed information on the status including possible errors.
        #
        #   Type: String
        #   @return [String]

        # @!attribute [rw] domain_name
        #   The name of a domain.
        #
        #   Type: String
        #   @return [String]

        # @!attribute [rw] type
        #   The type of operation that was requested.
        #
        #   Type: String
        #   @return [String]

        # @!attribute [rw] submitted_date
        #   The date when the request was submitted.
        #   @return [Time]

      end

      # The ListDomains request includes the following elements.
      # @note When making an API call, pass ListDomainsRequest
      #   data as a hash:
      #
      #       {
      #         marker: "PageMarker",
      #         max_items: 1,
      #       }
      class ListDomainsRequest < Aws::Structure.new(
        :marker,
        :max_items)

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

      end

      # The ListDomains response includes the following elements.
      class ListDomainsResponse < Aws::Structure.new(
        :domains,
        :next_page_marker)

        # @!attribute [rw] domains
        #   A summary of domains.
        #
        #   Type: Complex type containing a list of domain summaries.
        #
        #   Children: `AutoRenew`, `DomainName`, `Expiry`, `TransferLock`
        #   @return [Array<Types::DomainSummary>]

        # @!attribute [rw] next_page_marker
        #   If there are more domains than you specified for `MaxItems` in the
        #   request, submit another request and include the value of
        #   `NextPageMarker` in the value of `Marker`.
        #
        #   Type: String
        #
        #   Parent: `Operations`
        #   @return [String]

      end

      # The ListOperations request includes the following elements.
      # @note When making an API call, pass ListOperationsRequest
      #   data as a hash:
      #
      #       {
      #         marker: "PageMarker",
      #         max_items: 1,
      #       }
      class ListOperationsRequest < Aws::Structure.new(
        :marker,
        :max_items)

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

      end

      # The ListOperations response includes the following elements.
      class ListOperationsResponse < Aws::Structure.new(
        :operations,
        :next_page_marker)

        # @!attribute [rw] operations
        #   Lists summaries of the operations.
        #
        #   Type: Complex type containing a list of operation summaries
        #
        #   Children: `OperationId`, `Status`, `SubmittedDate`, `Type`
        #   @return [Array<Types::OperationSummary>]

        # @!attribute [rw] next_page_marker
        #   If there are more operations than you specified for `MaxItems` in
        #   the request, submit another request and include the value of
        #   `NextPageMarker` in the value of `Marker`.
        #
        #   Type: String
        #
        #   Parent: `Operations`
        #   @return [String]

      end

      # The ListTagsForDomainRequest includes the following elements.
      # @note When making an API call, pass ListTagsForDomainRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "DomainName", # required
      #       }
      class ListTagsForDomainRequest < Aws::Structure.new(
        :domain_name)

        # @!attribute [rw] domain_name
        #   The domain for which you want to get a list of tags.
        #   @return [String]

      end

      # The ListTagsForDomain response includes the following elements.
      class ListTagsForDomainResponse < Aws::Structure.new(
        :tag_list)

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

      end

      # Nameserver includes the following elements.
      # @note When making an API call, pass Nameserver
      #   data as a hash:
      #
      #       {
      #         name: "HostName", # required
      #         glue_ips: ["GlueIp"],
      #       }
      class Nameserver < Aws::Structure.new(
        :name,
        :glue_ips)

        # @!attribute [rw] name
        #   The fully qualified host name of the name server.
        #
        #   Type: String
        #
        #   Constraint: Maximum 255 characterss
        #
        #   Parent: `Nameservers`
        #   @return [String]

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

      end

      # OperationSummary includes the following elements.
      class OperationSummary < Aws::Structure.new(
        :operation_id,
        :status,
        :type,
        :submitted_date)

        # @!attribute [rw] operation_id
        #   Identifier returned to track the requested action.
        #
        #   Type: String
        #   @return [String]

        # @!attribute [rw] status
        #   The current status of the requested operation in the system.
        #
        #   Type: String
        #   @return [String]

        # @!attribute [rw] type
        #   Type of the action requested.
        #
        #   Type: String
        #
        #   Valid values: `REGISTER_DOMAIN` \| `DELETE_DOMAIN` \|
        #   `TRANSFER_IN_DOMAIN` \| `UPDATE_DOMAIN_CONTACT` \|
        #   `UPDATE_NAMESERVER` \| `CHANGE_PRIVACY_PROTECTION` \| `DOMAIN_LOCK`
        #   @return [String]

        # @!attribute [rw] submitted_date
        #   The date when the request was submitted.
        #   @return [Time]

      end

      # The RegisterDomain request includes the following elements.
      # @note When making an API call, pass RegisterDomainRequest
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
      class RegisterDomainRequest < Aws::Structure.new(
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

        # @!attribute [rw] idn_lang_code
        #   Reserved for future use.
        #   @return [String]

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

        # @!attribute [rw] privacy_protect_admin_contact
        #   Whether you want to conceal contact information from WHOIS queries.
        #   If you specify true, WHOIS (\"who is\") queries will return contact
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

        # @!attribute [rw] privacy_protect_registrant_contact
        #   Whether you want to conceal contact information from WHOIS queries.
        #   If you specify true, WHOIS (\"who is\") queries will return contact
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

        # @!attribute [rw] privacy_protect_tech_contact
        #   Whether you want to conceal contact information from WHOIS queries.
        #   If you specify true, WHOIS (\"who is\") queries will return contact
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

      end

      # The RegisterDomain response includes the following element.
      class RegisterDomainResponse < Aws::Structure.new(
        :operation_id)

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

      end

      # @note When making an API call, pass ResendContactReachabilityEmailRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "DomainName",
      #       }
      class ResendContactReachabilityEmailRequest < Aws::Structure.new(
        :domain_name)

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

      end

      class ResendContactReachabilityEmailResponse < Aws::Structure.new(
        :domain_name,
        :email_address,
        :is_already_verified)

        # @!attribute [rw] domain_name
        #   The domain name for which you requested a confirmation email.
        #   @return [String]

        # @!attribute [rw] email_address
        #   The email address for the registrant contact at the time that we
        #   sent the verification email.
        #   @return [String]

        # @!attribute [rw] is_already_verified
        #   True if the email address for the registrant contact has already
        #   been verified, and false otherwise. If the email address has already
        #   been verified, we don\'t send another confirmation email.
        #   @return [Boolean]

      end

      # The RetrieveDomainAuthCode request includes the following element.
      # @note When making an API call, pass RetrieveDomainAuthCodeRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "DomainName", # required
      #       }
      class RetrieveDomainAuthCodeRequest < Aws::Structure.new(
        :domain_name)

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

      end

      # The RetrieveDomainAuthCode response includes the following element.
      class RetrieveDomainAuthCodeResponse < Aws::Structure.new(
        :auth_code)

        # @!attribute [rw] auth_code
        #   The authorization code for the domain.
        #
        #   Type: String
        #   @return [String]

      end

      # Each tag includes the following elements.
      # @note When making an API call, pass Tag
      #   data as a hash:
      #
      #       {
      #         key: "TagKey",
      #         value: "TagValue",
      #       }
      class Tag < Aws::Structure.new(
        :key,
        :value)

        # @!attribute [rw] key
        #   The key (name) of a tag.
        #
        #   Type: String
        #
        #   Default: None
        #
        #   Valid values: A-Z, a-z, 0-9, space, \".:/=+\\-@\"
        #
        #   Constraints: Each key can be 1-128 characters long.
        #
        #   Required: Yes
        #   @return [String]

        # @!attribute [rw] value
        #   The value of a tag.
        #
        #   Type: String
        #
        #   Default: None
        #
        #   Valid values: A-Z, a-z, 0-9, space, \".:/=+\\-@\"
        #
        #   Constraints: Each value can be 0-256 characters long.
        #
        #   Required: Yes
        #   @return [String]

      end

      # The TransferDomain request includes the following elements.
      # @note When making an API call, pass TransferDomainRequest
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
      class TransferDomainRequest < Aws::Structure.new(
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

        # @!attribute [rw] idn_lang_code
        #   Reserved for future use.
        #   @return [String]

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

        # @!attribute [rw] nameservers
        #   Contains details for the host and glue IP addresses.
        #
        #   Type: Complex
        #
        #   Children: `GlueIps`, `Name`
        #
        #   Required: No
        #   @return [Array<Types::Nameserver>]

        # @!attribute [rw] auth_code
        #   The authorization code for the domain. You get this value from the
        #   current registrar.
        #
        #   Type: String
        #
        #   Required: Yes
        #   @return [String]

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

        # @!attribute [rw] privacy_protect_admin_contact
        #   Whether you want to conceal contact information from WHOIS queries.
        #   If you specify true, WHOIS (\"who is\") queries will return contact
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

        # @!attribute [rw] privacy_protect_registrant_contact
        #   Whether you want to conceal contact information from WHOIS queries.
        #   If you specify true, WHOIS (\"who is\") queries will return contact
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

        # @!attribute [rw] privacy_protect_tech_contact
        #   Whether you want to conceal contact information from WHOIS queries.
        #   If you specify true, WHOIS (\"who is\") queries will return contact
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

      end

      # The TranserDomain response includes the following element.
      class TransferDomainResponse < Aws::Structure.new(
        :operation_id)

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

      end

      # The UpdateDomainContactPrivacy request includes the following
      # elements.
      # @note When making an API call, pass UpdateDomainContactPrivacyRequest
      #   data as a hash:
      #
      #       {
      #         domain_name: "DomainName", # required
      #         admin_privacy: false,
      #         registrant_privacy: false,
      #         tech_privacy: false,
      #       }
      class UpdateDomainContactPrivacyRequest < Aws::Structure.new(
        :domain_name,
        :admin_privacy,
        :registrant_privacy,
        :tech_privacy)

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

        # @!attribute [rw] admin_privacy
        #   Whether you want to conceal contact information from WHOIS queries.
        #   If you specify true, WHOIS (\"who is\") queries will return contact
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

        # @!attribute [rw] registrant_privacy
        #   Whether you want to conceal contact information from WHOIS queries.
        #   If you specify true, WHOIS (\"who is\") queries will return contact
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

        # @!attribute [rw] tech_privacy
        #   Whether you want to conceal contact information from WHOIS queries.
        #   If you specify true, WHOIS (\"who is\") queries will return contact
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

      end

      # The UpdateDomainContactPrivacy response includes the following
      # element.
      class UpdateDomainContactPrivacyResponse < Aws::Structure.new(
        :operation_id)

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

      end

      # The UpdateDomainContact request includes the following elements.
      # @note When making an API call, pass UpdateDomainContactRequest
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
      class UpdateDomainContactRequest < Aws::Structure.new(
        :domain_name,
        :admin_contact,
        :registrant_contact,
        :tech_contact)

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

      end

      # The UpdateDomainContact response includes the following element.
      class UpdateDomainContactResponse < Aws::Structure.new(
        :operation_id)

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

      end

      # The UpdateDomainNameserver request includes the following elements.
      # @note When making an API call, pass UpdateDomainNameserversRequest
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
      class UpdateDomainNameserversRequest < Aws::Structure.new(
        :domain_name,
        :fi_auth_key,
        :nameservers)

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

        # @!attribute [rw] fi_auth_key
        #   The authorization key for .fi domains
        #   @return [String]

        # @!attribute [rw] nameservers
        #   A list of new name servers for the domain.
        #
        #   Type: Complex
        #
        #   Children: `Name`, `GlueIps`
        #
        #   Required: Yes
        #   @return [Array<Types::Nameserver>]

      end

      # The UpdateDomainNameservers response includes the following element.
      class UpdateDomainNameserversResponse < Aws::Structure.new(
        :operation_id)

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

      end

      # The UpdateTagsForDomainRequest includes the following elements.
      # @note When making an API call, pass UpdateTagsForDomainRequest
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
      class UpdateTagsForDomainRequest < Aws::Structure.new(
        :domain_name,
        :tags_to_update)

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
        #   \'> Each tag includes the following elements:
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
        #     and \".:/=+\\-@\"
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
        #     and \".:/=+\\-@\"
        #
        #     Constraints: Each value can be 0-256 characters long.
        #
        #     Required: Yes
        #   @return [Array<Types::Tag>]

      end

      class UpdateTagsForDomainResponse < Aws::EmptyStructure; end

    end
  end
end
