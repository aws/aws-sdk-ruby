# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Route53Domains
  module Types

    # The AcceptDomainTransferFromAnotherAwsAccount request includes the
    # following elements.
    #
    # @note When making an API call, you may pass AcceptDomainTransferFromAnotherAwsAccountRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #         password: "String", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the domain that was specified when another AWS account
    #   submitted a [TransferDomainToAnotherAwsAccount][1] request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password that was returned by the
    #   [TransferDomainToAnotherAwsAccount][1] request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/AcceptDomainTransferFromAnotherAwsAccountRequest AWS API Documentation
    #
    class AcceptDomainTransferFromAnotherAwsAccountRequest < Struct.new(
      :domain_name,
      :password)
      SENSITIVE = []
      include Aws::Structure
    end

    # The AcceptDomainTransferFromAnotherAwsAccount response includes the
    # following element.
    #
    # @!attribute [rw] operation_id
    #   Identifier for tracking the progress of the request. To query the
    #   operation status, use [GetOperationDetail][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/AcceptDomainTransferFromAnotherAwsAccountResponse AWS API Documentation
    #
    class AcceptDomainTransferFromAnotherAwsAccountResponse < Struct.new(
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information for one billing record.
    #
    # @!attribute [rw] domain_name
    #   The name of the domain that the billing record applies to. If the
    #   domain name contains characters other than a-z, 0-9, and - (hyphen),
    #   such as an internationalized domain name, then this value is in
    #   Punycode. For more information, see [DNS Domain Name Format][1] in
    #   the *Amazon Route 53 Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   The operation that you were charged for.
    #   @return [String]
    #
    # @!attribute [rw] invoice_id
    #   The ID of the invoice that is associated with the billing record.
    #   @return [String]
    #
    # @!attribute [rw] bill_date
    #   The date that the operation was billed, in Unix format.
    #   @return [Time]
    #
    # @!attribute [rw] price
    #   The price that you were charged for the operation, in US dollars.
    #
    #   Example value: 12.0
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/BillingRecord AWS API Documentation
    #
    class BillingRecord < Struct.new(
      :domain_name,
      :operation,
      :invoice_id,
      :bill_date,
      :price)
      SENSITIVE = []
      include Aws::Structure
    end

    # The CancelDomainTransferToAnotherAwsAccount request includes the
    # following element.
    #
    # @note When making an API call, you may pass CancelDomainTransferToAnotherAwsAccountRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the domain for which you want to cancel the transfer to
    #   another AWS account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/CancelDomainTransferToAnotherAwsAccountRequest AWS API Documentation
    #
    class CancelDomainTransferToAnotherAwsAccountRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `CancelDomainTransferToAnotherAwsAccount` response includes the
    # following element.
    #
    # @!attribute [rw] operation_id
    #   The identifier that `TransferDomainToAnotherAwsAccount` returned to
    #   track the progress of the request. Because the transfer request was
    #   canceled, the value is no longer valid, and you can't use
    #   `GetOperationDetail` to query the operation status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/CancelDomainTransferToAnotherAwsAccountResponse AWS API Documentation
    #
    class CancelDomainTransferToAnotherAwsAccountResponse < Struct.new(
      :operation_id)
      SENSITIVE = []
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
    #   The name of the domain that you want to get availability for. The
    #   top-level domain (TLD), such as .com, must be a TLD that Route 53
    #   supports. For a list of supported TLDs, see [Domains that You Can
    #   Register with Amazon Route 53][1] in the *Amazon Route 53 Developer
    #   Guide*.
    #
    #   The domain name can contain only the following characters:
    #
    #   * Letters a through z. Domain names are not case sensitive.
    #
    #   * Numbers 0 through 9.
    #
    #   * Hyphen (-). You can't specify a hyphen at the beginning or end of
    #     a label.
    #
    #   * Period (.) to separate the labels in the name, such as the `.` in
    #     `example.com`.
    #
    #   Internationalized domain names are not supported for some top-level
    #   domains. To determine whether the TLD that you want to use supports
    #   internationalized domain names, see [Domains that You Can Register
    #   with Amazon Route 53][1]. For more information, see [Formatting
    #   Internationalized Domain Names][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html
    #   [2]: https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html#domain-name-format-idns
    #   @return [String]
    #
    # @!attribute [rw] idn_lang_code
    #   Reserved for future use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/CheckDomainAvailabilityRequest AWS API Documentation
    #
    class CheckDomainAvailabilityRequest < Struct.new(
      :domain_name,
      :idn_lang_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The CheckDomainAvailability response includes the following elements.
    #
    # @!attribute [rw] availability
    #   Whether the domain name is available for registering.
    #
    #   <note markdown="1"> You can register only domains designated as `AVAILABLE`.
    #
    #    </note>
    #
    #   Valid values:
    #
    #   AVAILABLE
    #
    #   : The domain name is available.
    #
    #   AVAILABLE\_RESERVED
    #
    #   : The domain name is reserved under specific conditions.
    #
    #   AVAILABLE\_PREORDER
    #
    #   : The domain name is available and can be preordered.
    #
    #   DONT\_KNOW
    #
    #   : The TLD registry didn't reply with a definitive answer about
    #     whether the domain name is available. Route 53 can return this
    #     response for a variety of reasons, for example, the registry is
    #     performing maintenance. Try again later.
    #
    #   PENDING
    #
    #   : The TLD registry didn't return a response in the expected amount
    #     of time. When the response is delayed, it usually takes just a few
    #     extra seconds. You can resubmit the request immediately.
    #
    #   RESERVED
    #
    #   : The domain name has been reserved for another person or
    #     organization.
    #
    #   UNAVAILABLE
    #
    #   : The domain name is not available.
    #
    #   UNAVAILABLE\_PREMIUM
    #
    #   : The domain name is not available.
    #
    #   UNAVAILABLE\_RESTRICTED
    #
    #   : The domain name is forbidden.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/CheckDomainAvailabilityResponse AWS API Documentation
    #
    class CheckDomainAvailabilityResponse < Struct.new(
      :availability)
      SENSITIVE = []
      include Aws::Structure
    end

    # The CheckDomainTransferability request contains the following
    # elements.
    #
    # @note When making an API call, you may pass CheckDomainTransferabilityRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #         auth_code: "DomainAuthCode",
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the domain that you want to transfer to Route 53. The
    #   top-level domain (TLD), such as .com, must be a TLD that Route 53
    #   supports. For a list of supported TLDs, see [Domains that You Can
    #   Register with Amazon Route 53][1] in the *Amazon Route 53 Developer
    #   Guide*.
    #
    #   The domain name can contain only the following characters:
    #
    #   * Letters a through z. Domain names are not case sensitive.
    #
    #   * Numbers 0 through 9.
    #
    #   * Hyphen (-). You can't specify a hyphen at the beginning or end of
    #     a label.
    #
    #   * Period (.) to separate the labels in the name, such as the `.` in
    #     `example.com`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html
    #   @return [String]
    #
    # @!attribute [rw] auth_code
    #   If the registrar for the top-level domain (TLD) requires an
    #   authorization code to transfer the domain, the code that you got
    #   from the current registrar for the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/CheckDomainTransferabilityRequest AWS API Documentation
    #
    class CheckDomainTransferabilityRequest < Struct.new(
      :domain_name,
      :auth_code)
      SENSITIVE = [:auth_code]
      include Aws::Structure
    end

    # The CheckDomainTransferability response includes the following
    # elements.
    #
    # @!attribute [rw] transferability
    #   A complex type that contains information about whether the specified
    #   domain can be transferred to Route 53.
    #   @return [Types::DomainTransferability]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/CheckDomainTransferabilityResponse AWS API Documentation
    #
    class CheckDomainTransferabilityResponse < Struct.new(
      :transferability)
      SENSITIVE = []
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
    #             name: "DUNS_NUMBER", # required, accepts DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, CA_LEGAL_REPRESENTATIVE, CA_LEGAL_REPRESENTATIVE_CAPACITY, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, FI_NATIONALITY, FI_ORGANIZATION_TYPE, IT_NATIONALITY, IT_PIN, IT_REGISTRANT_ENTITY_TYPE, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER, UK_CONTACT_TYPE, UK_COMPANY_NUMBER
    #             value: "ExtraParamValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] first_name
    #   First name of contact.
    #   @return [String]
    #
    # @!attribute [rw] last_name
    #   Last name of contact.
    #   @return [String]
    #
    # @!attribute [rw] contact_type
    #   Indicates whether the contact is a person, company, association, or
    #   public organization. Note the following:
    #
    #   * If you specify a value other than `PERSON`, you must also specify
    #     a value for `OrganizationName`.
    #
    #   * For some TLDs, the privacy protection available depends on the
    #     value that you specify for `Contact Type`. For the privacy
    #     protection settings for your TLD, see [Domains that You Can
    #     Register with Amazon Route 53][1] in the *Amazon Route 53
    #     Developer Guide*
    #
    #   * For .es domains, if you specify `PERSON`, you must specify
    #     `INDIVIDUAL` for the value of `ES_LEGAL_FORM`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html
    #   @return [String]
    #
    # @!attribute [rw] organization_name
    #   Name of the organization for contact types other than `PERSON`.
    #   @return [String]
    #
    # @!attribute [rw] address_line_1
    #   First line of the contact's address.
    #   @return [String]
    #
    # @!attribute [rw] address_line_2
    #   Second line of contact's address, if any.
    #   @return [String]
    #
    # @!attribute [rw] city
    #   The city of the contact's address.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state or province of the contact's city.
    #   @return [String]
    #
    # @!attribute [rw] country_code
    #   Code for the country of the contact's address.
    #   @return [String]
    #
    # @!attribute [rw] zip_code
    #   The zip or postal code of the contact's address.
    #   @return [String]
    #
    # @!attribute [rw] phone_number
    #   The phone number of the contact.
    #
    #   Constraints: Phone number must be specified in the format
    #   "+\[country dialing code\].\[number including any area
    #   code&gt;\]". For example, a US phone number might appear as
    #   `"+1.1234567890"`.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   Email address of the contact.
    #   @return [String]
    #
    # @!attribute [rw] fax
    #   Fax number of the contact.
    #
    #   Constraints: Phone number must be specified in the format
    #   "+\[country dialing code\].\[number including any area code\]".
    #   For example, a US phone number might appear as `"+1.1234567890"`.
    #   @return [String]
    #
    # @!attribute [rw] extra_params
    #   A list of name-value pairs for parameters required by certain
    #   top-level domains.
    #   @return [Array<Types::ExtraParam>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/ContactDetail AWS API Documentation
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
      SENSITIVE = []
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
    #   @return [String]
    #
    # @!attribute [rw] tags_to_delete
    #   A list of tag keys to delete.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/DeleteTagsForDomainRequest AWS API Documentation
    #
    class DeleteTagsForDomainRequest < Struct.new(
      :domain_name,
      :tags_to_delete)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/DeleteTagsForDomainResponse AWS API Documentation
    #
    class DeleteTagsForDomainResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DisableDomainAutoRenewRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the domain that you want to disable automatic renewal
    #   for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/DisableDomainAutoRenewRequest AWS API Documentation
    #
    class DisableDomainAutoRenewRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/DisableDomainAutoRenewResponse AWS API Documentation
    #
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
    #   The name of the domain that you want to remove the transfer lock
    #   for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/DisableDomainTransferLockRequest AWS API Documentation
    #
    class DisableDomainTransferLockRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The DisableDomainTransferLock response includes the following element.
    #
    # @!attribute [rw] operation_id
    #   Identifier for tracking the progress of the request. To query the
    #   operation status, use [GetOperationDetail][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/DisableDomainTransferLockResponse AWS API Documentation
    #
    class DisableDomainTransferLockResponse < Struct.new(
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of domains has exceeded the allowed threshold for the
    # account.
    #
    # @!attribute [rw] message
    #   The number of domains has exceeded the allowed threshold for the
    #   account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/DomainLimitExceeded AWS API Documentation
    #
    class DomainLimitExceeded < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about one suggested domain name.
    #
    # @!attribute [rw] domain_name
    #   A suggested domain name.
    #   @return [String]
    #
    # @!attribute [rw] availability
    #   Whether the domain name is available for registering.
    #
    #   <note markdown="1"> You can register only the domains that are designated as
    #   `AVAILABLE`.
    #
    #    </note>
    #
    #   Valid values:
    #
    #   AVAILABLE
    #
    #   : The domain name is available.
    #
    #   AVAILABLE\_RESERVED
    #
    #   : The domain name is reserved under specific conditions.
    #
    #   AVAILABLE\_PREORDER
    #
    #   : The domain name is available and can be preordered.
    #
    #   DONT\_KNOW
    #
    #   : The TLD registry didn't reply with a definitive answer about
    #     whether the domain name is available. Route 53 can return this
    #     response for a variety of reasons, for example, the registry is
    #     performing maintenance. Try again later.
    #
    #   PENDING
    #
    #   : The TLD registry didn't return a response in the expected amount
    #     of time. When the response is delayed, it usually takes just a few
    #     extra seconds. You can resubmit the request immediately.
    #
    #   RESERVED
    #
    #   : The domain name has been reserved for another person or
    #     organization.
    #
    #   UNAVAILABLE
    #
    #   : The domain name is not available.
    #
    #   UNAVAILABLE\_PREMIUM
    #
    #   : The domain name is not available.
    #
    #   UNAVAILABLE\_RESTRICTED
    #
    #   : The domain name is forbidden.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/DomainSuggestion AWS API Documentation
    #
    class DomainSuggestion < Struct.new(
      :domain_name,
      :availability)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about one domain.
    #
    # @!attribute [rw] domain_name
    #   The name of the domain that the summary information applies to.
    #   @return [String]
    #
    # @!attribute [rw] auto_renew
    #   Indicates whether the domain is automatically renewed upon
    #   expiration.
    #   @return [Boolean]
    #
    # @!attribute [rw] transfer_lock
    #   Indicates whether a domain is locked from unauthorized transfer to
    #   another party.
    #   @return [Boolean]
    #
    # @!attribute [rw] expiry
    #   Expiration date of the domain in Unix time format and Coordinated
    #   Universal Time (UTC).
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/DomainSummary AWS API Documentation
    #
    class DomainSummary < Struct.new(
      :domain_name,
      :auto_renew,
      :transfer_lock,
      :expiry)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type that contains information about whether the specified
    # domain can be transferred to Route 53.
    #
    # @!attribute [rw] transferable
    #   Whether the domain name can be transferred to Route 53.
    #
    #   <note markdown="1"> You can transfer only domains that have a value of `TRANSFERABLE`
    #   for `Transferable`.
    #
    #    </note>
    #
    #   Valid values:
    #
    #   TRANSFERABLE
    #
    #   : The domain name can be transferred to Route 53.
    #
    #   UNTRANSFERRABLE
    #
    #   : The domain name can't be transferred to Route 53.
    #
    #   DONT\_KNOW
    #
    #   : Reserved for future use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/DomainTransferability AWS API Documentation
    #
    class DomainTransferability < Struct.new(
      :transferable)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request is already in progress for the domain.
    #
    # @!attribute [rw] message
    #   The request is already in progress for the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/DuplicateRequest AWS API Documentation
    #
    class DuplicateRequest < Struct.new(
      :message)
      SENSITIVE = []
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
    #   The name of the domain that you want to enable automatic renewal
    #   for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/EnableDomainAutoRenewRequest AWS API Documentation
    #
    class EnableDomainAutoRenewRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/EnableDomainAutoRenewResponse AWS API Documentation
    #
    class EnableDomainAutoRenewResponse < Aws::EmptyStructure; end

    # A request to set the transfer lock for the specified domain.
    #
    # @note When making an API call, you may pass EnableDomainTransferLockRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the domain that you want to set the transfer lock for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/EnableDomainTransferLockRequest AWS API Documentation
    #
    class EnableDomainTransferLockRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The EnableDomainTransferLock response includes the following elements.
    #
    # @!attribute [rw] operation_id
    #   Identifier for tracking the progress of the request. To use this ID
    #   to query the operation status, use GetOperationDetail.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/EnableDomainTransferLockResponse AWS API Documentation
    #
    class EnableDomainTransferLockResponse < Struct.new(
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # ExtraParam includes the following elements.
    #
    # @note When making an API call, you may pass ExtraParam
    #   data as a hash:
    #
    #       {
    #         name: "DUNS_NUMBER", # required, accepts DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, CA_LEGAL_REPRESENTATIVE, CA_LEGAL_REPRESENTATIVE_CAPACITY, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, FI_NATIONALITY, FI_ORGANIZATION_TYPE, IT_NATIONALITY, IT_PIN, IT_REGISTRANT_ENTITY_TYPE, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER, UK_CONTACT_TYPE, UK_COMPANY_NUMBER
    #         value: "ExtraParamValue", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of an additional parameter that is required by a top-level
    #   domain. Here are the top-level domains that require additional
    #   parameters and the names of the parameters that they require:
    #
    #   .com.au and .net.au
    #   : * `AU_ID_NUMBER`
    #
    #     * `AU_ID_TYPE`
    #
    #       Valid values include the following:
    #
    #       * `ABN` (Australian business number)
    #
    #       * `ACN` (Australian company number)
    #
    #       * `TM` (Trademark number)
    #
    #   .ca
    #   : * `BRAND_NUMBER`
    #
    #     * `CA_BUSINESS_ENTITY_TYPE`
    #
    #       Valid values include the following:
    #
    #       * `BANK` (Bank)
    #
    #       * `COMMERCIAL_COMPANY` (Commercial company)
    #
    #       * `COMPANY` (Company)
    #
    #       * `COOPERATION` (Cooperation)
    #
    #       * `COOPERATIVE` (Cooperative)
    #
    #       * `COOPRIX` (Cooprix)
    #
    #       * `CORP` (Corporation)
    #
    #       * `CREDIT_UNION` (Credit union)
    #
    #       * `FOMIA` (Federation of mutual insurance associations)
    #
    #       * `INC` (Incorporated)
    #
    #       * `LTD` (Limited)
    #
    #       * `LTEE` (Limitée)
    #
    #       * `LLC` (Limited liability corporation)
    #
    #       * `LLP` (Limited liability partnership)
    #
    #       * `LTE` (Lte.)
    #
    #       * `MBA` (Mutual benefit association)
    #
    #       * `MIC` (Mutual insurance company)
    #
    #       * `NFP` (Not-for-profit corporation)
    #
    #       * `SA` (S.A.)
    #
    #       * `SAVINGS_COMPANY` (Savings company)
    #
    #       * `SAVINGS_UNION` (Savings union)
    #
    #       * `SARL` (Société à responsabilité limitée)
    #
    #       * `TRUST` (Trust)
    #
    #       * `ULC` (Unlimited liability corporation)
    #
    #     * `CA_LEGAL_TYPE`
    #
    #       When `ContactType` is `PERSON`, valid values include the
    #       following:
    #
    #       * `ABO` (Aboriginal Peoples indigenous to Canada)
    #
    #       * `CCT` (Canadian citizen)
    #
    #       * `LGR` (Legal Representative of a Canadian Citizen or Permanent
    #         Resident)
    #
    #       * `RES` (Permanent resident of Canada)
    #
    #       When `ContactType` is a value other than `PERSON`, valid values
    #       include the following:
    #
    #       * `ASS` (Canadian unincorporated association)
    #
    #       * `CCO` (Canadian corporation)
    #
    #       * `EDU` (Canadian educational institution)
    #
    #       * `GOV` (Government or government entity in Canada)
    #
    #       * `HOP` (Canadian Hospital)
    #
    #       * `INB` (Indian Band recognized by the Indian Act of Canada)
    #
    #       * `LAM` (Canadian Library, Archive, or Museum)
    #
    #       * `MAJ` (Her/His Majesty the Queen/King)
    #
    #       * `OMK` (Official mark registered in Canada)
    #
    #       * `PLT` (Canadian Political Party)
    #
    #       * `PRT` (Partnership Registered in Canada)
    #
    #       * `TDM` (Trademark registered in Canada)
    #
    #       * `TRD` (Canadian Trade Union)
    #
    #       * `TRS` (Trust established in Canada)
    #
    #   .es
    #   : * `ES_IDENTIFICATION`
    #
    #       Specify the applicable value:
    #
    #       * **For contacts inside Spain:** Enter your passport ID.
    #
    #       * **For contacts outside of Spain:** Enter the VAT
    #         identification number for the company.
    #
    #         <note markdown="1"> For .es domains, the value of `ContactType` must be `PERSON`.
    #
    #          </note>
    #
    #     * `ES_IDENTIFICATION_TYPE`
    #
    #       Valid values include the following:
    #
    #       * `DNI_AND_NIF` (For Spanish contacts)
    #
    #       * `NIE` (For foreigners with legal residence)
    #
    #       * `OTHER` (For contacts outside of Spain)
    #
    #     * `ES_LEGAL_FORM`
    #
    #       Valid values include the following:
    #
    #       * `ASSOCIATION`
    #
    #       * `CENTRAL_GOVERNMENT_BODY`
    #
    #       * `CIVIL_SOCIETY`
    #
    #       * `COMMUNITY_OF_OWNERS`
    #
    #       * `COMMUNITY_PROPERTY`
    #
    #       * `CONSULATE`
    #
    #       * `COOPERATIVE`
    #
    #       * `DESIGNATION_OF_ORIGIN_SUPERVISORY_COUNCIL`
    #
    #       * `ECONOMIC_INTEREST_GROUP`
    #
    #       * `EMBASSY`
    #
    #       * `ENTITY_MANAGING_NATURAL_AREAS`
    #
    #       * `FARM_PARTNERSHIP`
    #
    #       * `FOUNDATION`
    #
    #       * `GENERAL_AND_LIMITED_PARTNERSHIP`
    #
    #       * `GENERAL_PARTNERSHIP`
    #
    #       * `INDIVIDUAL`
    #
    #       * `LIMITED_COMPANY`
    #
    #       * `LOCAL_AUTHORITY`
    #
    #       * `LOCAL_PUBLIC_ENTITY`
    #
    #       * `MUTUAL_INSURANCE_COMPANY`
    #
    #       * `NATIONAL_PUBLIC_ENTITY`
    #
    #       * `ORDER_OR_RELIGIOUS_INSTITUTION`
    #
    #       * `OTHERS (Only for contacts outside of Spain)`
    #
    #       * `POLITICAL_PARTY`
    #
    #       * `PROFESSIONAL_ASSOCIATION`
    #
    #       * `PUBLIC_LAW_ASSOCIATION`
    #
    #       * `PUBLIC_LIMITED_COMPANY`
    #
    #       * `REGIONAL_GOVERNMENT_BODY`
    #
    #       * `REGIONAL_PUBLIC_ENTITY`
    #
    #       * `SAVINGS_BANK`
    #
    #       * `SPANISH_OFFICE`
    #
    #       * `SPORTS_ASSOCIATION`
    #
    #       * `SPORTS_FEDERATION`
    #
    #       * `SPORTS_LIMITED_COMPANY`
    #
    #       * `TEMPORARY_ALLIANCE_OF_ENTERPRISES`
    #
    #       * `TRADE_UNION`
    #
    #       * `WORKER_OWNED_COMPANY`
    #
    #       * `WORKER_OWNED_LIMITED_COMPANY`
    #
    #   .fi
    #   : * `BIRTH_DATE_IN_YYYY_MM_DD`
    #
    #     * `FI_BUSINESS_NUMBER`
    #
    #     * `FI_ID_NUMBER`
    #
    #     * `FI_NATIONALITY`
    #
    #       Valid values include the following:
    #
    #       * `FINNISH`
    #
    #       * `NOT_FINNISH`
    #
    #     * `FI_ORGANIZATION_TYPE`
    #
    #       Valid values include the following:
    #
    #       * `COMPANY`
    #
    #       * `CORPORATION`
    #
    #       * `GOVERNMENT`
    #
    #       * `INSTITUTION`
    #
    #       * `POLITICAL_PARTY`
    #
    #       * `PUBLIC_COMMUNITY`
    #
    #       * `TOWNSHIP`
    #
    #   .fr
    #   : * `BIRTH_CITY`
    #
    #     * `BIRTH_COUNTRY`
    #
    #     * `BIRTH_DATE_IN_YYYY_MM_DD`
    #
    #     * `BIRTH_DEPARTMENT`\: Specify the INSEE code that corresponds
    #       with the department where the contact was born. If the contact
    #       was born somewhere other than France or its overseas
    #       departments, specify `99`. For more information, including a
    #       list of departments and the corresponding INSEE numbers, see the
    #       Wikipedia entry [Departments of France][1].
    #
    #     * `BRAND_NUMBER`
    #
    #   .it
    #   : * `IT_NATIONALITY`
    #
    #     * `IT_PIN`
    #
    #     * `IT_REGISTRANT_ENTITY_TYPE`
    #
    #       Valid values include the following:
    #
    #       * `FOREIGNERS`
    #
    #       * `FREELANCE_WORKERS` (Freelance workers and professionals)
    #
    #       * `ITALIAN_COMPANIES` (Italian companies and one-person
    #         companies)
    #
    #       * `NON_PROFIT_ORGANIZATIONS`
    #
    #       * `OTHER_SUBJECTS`
    #
    #       * `PUBLIC_ORGANIZATIONS`
    #
    #   .ru
    #   : * `BIRTH_DATE_IN_YYYY_MM_DD`
    #
    #     * `RU_PASSPORT_DATA`
    #
    #   .se
    #   : * `BIRTH_COUNTRY`
    #
    #     * `SE_ID_NUMBER`
    #
    #   .sg
    #   : * `SG_ID_NUMBER`
    #
    #     ^
    #
    #   .co.uk, .me.uk, and .org.uk
    #   : * `UK_CONTACT_TYPE`
    #
    #       Valid values include the following:
    #
    #       * `CRC` (UK Corporation by Royal Charter)
    #
    #       * `FCORP` (Non-UK Corporation)
    #
    #       * `FIND` (Non-UK Individual, representing self)
    #
    #       * `FOTHER` (Non-UK Entity that does not fit into any other
    #         category)
    #
    #       * `GOV` (UK Government Body)
    #
    #       * `IND` (UK Individual (representing self))
    #
    #       * `IP` (UK Industrial/Provident Registered Company)
    #
    #       * `LLP` (UK Limited Liability Partnership)
    #
    #       * `LTD` (UK Limited Company)
    #
    #       * `OTHER` (UK Entity that does not fit into any other category)
    #
    #       * `PLC` (UK Public Limited Company)
    #
    #       * `PTNR` (UK Partnership)
    #
    #       * `RCHAR` (UK Registered Charity)
    #
    #       * `SCH` (UK School)
    #
    #       * `STAT` (UK Statutory Body)
    #
    #       * `STRA` (UK Sole Trader)
    #
    #     * `UK_COMPANY_NUMBER`
    #
    #   In addition, many TLDs require a `VAT_NUMBER`.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Departments_of_France
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value that corresponds with the name of an extra parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/ExtraParam AWS API Documentation
    #
    class ExtraParam < Struct.new(
      :name,
      :value)
      SENSITIVE = []
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
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/GetContactReachabilityStatusRequest AWS API Documentation
    #
    class GetContactReachabilityStatusRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The domain name for which you requested the reachability status.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Whether the registrant contact has responded. Values include the
    #   following:
    #
    #   PENDING
    #
    #   : We sent the confirmation email and haven't received a response
    #     yet.
    #
    #   DONE
    #
    #   : We sent the email and got confirmation from the registrant
    #     contact.
    #
    #   EXPIRED
    #
    #   : The time limit expired before the registrant contact responded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/GetContactReachabilityStatusResponse AWS API Documentation
    #
    class GetContactReachabilityStatusResponse < Struct.new(
      :domain_name,
      :status)
      SENSITIVE = []
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
    #   The name of the domain that you want to get detailed information
    #   about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/GetDomainDetailRequest AWS API Documentation
    #
    class GetDomainDetailRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The GetDomainDetail response includes the following elements.
    #
    # @!attribute [rw] domain_name
    #   The name of a domain.
    #   @return [String]
    #
    # @!attribute [rw] nameservers
    #   The name of the domain.
    #   @return [Array<Types::Nameserver>]
    #
    # @!attribute [rw] auto_renew
    #   Specifies whether the domain registration is set to renew
    #   automatically.
    #   @return [Boolean]
    #
    # @!attribute [rw] admin_contact
    #   Provides details about the domain administrative contact.
    #   @return [Types::ContactDetail]
    #
    # @!attribute [rw] registrant_contact
    #   Provides details about the domain registrant.
    #   @return [Types::ContactDetail]
    #
    # @!attribute [rw] tech_contact
    #   Provides details about the domain technical contact.
    #   @return [Types::ContactDetail]
    #
    # @!attribute [rw] admin_privacy
    #   Specifies whether contact information is concealed from WHOIS
    #   queries. If the value is `true`, WHOIS ("who is") queries return
    #   contact information either for Amazon Registrar (for .com, .net, and
    #   .org domains) or for our registrar associate, Gandi (for all other
    #   TLDs). If the value is `false`, WHOIS queries return the information
    #   that you entered for the admin contact.
    #   @return [Boolean]
    #
    # @!attribute [rw] registrant_privacy
    #   Specifies whether contact information is concealed from WHOIS
    #   queries. If the value is `true`, WHOIS ("who is") queries return
    #   contact information either for Amazon Registrar (for .com, .net, and
    #   .org domains) or for our registrar associate, Gandi (for all other
    #   TLDs). If the value is `false`, WHOIS queries return the information
    #   that you entered for the registrant contact (domain owner).
    #   @return [Boolean]
    #
    # @!attribute [rw] tech_privacy
    #   Specifies whether contact information is concealed from WHOIS
    #   queries. If the value is `true`, WHOIS ("who is") queries return
    #   contact information either for Amazon Registrar (for .com, .net, and
    #   .org domains) or for our registrar associate, Gandi (for all other
    #   TLDs). If the value is `false`, WHOIS queries return the information
    #   that you entered for the technical contact.
    #   @return [Boolean]
    #
    # @!attribute [rw] registrar_name
    #   Name of the registrar of the domain as identified in the registry.
    #   Domains with a .com, .net, or .org TLD are registered by Amazon
    #   Registrar. All other domains are registered by our registrar
    #   associate, Gandi. The value for domains that are registered by Gandi
    #   is `"GANDI SAS"`.
    #   @return [String]
    #
    # @!attribute [rw] who_is_server
    #   The fully qualified name of the WHOIS server that can answer the
    #   WHOIS query for the domain.
    #   @return [String]
    #
    # @!attribute [rw] registrar_url
    #   Web address of the registrar.
    #   @return [String]
    #
    # @!attribute [rw] abuse_contact_email
    #   Email address to contact to report incorrect contact information for
    #   a domain, to report that the domain is being used to send spam, to
    #   report that someone is cybersquatting on a domain name, or report
    #   some other type of abuse.
    #   @return [String]
    #
    # @!attribute [rw] abuse_contact_phone
    #   Phone number for reporting abuse.
    #   @return [String]
    #
    # @!attribute [rw] registry_domain_id
    #   Reserved for future use.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date when the domain was created as found in the response to a
    #   WHOIS query. The date and time is in Unix time format and
    #   Coordinated Universal time (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] updated_date
    #   The last updated date of the domain as found in the response to a
    #   WHOIS query. The date and time is in Unix time format and
    #   Coordinated Universal time (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] expiration_date
    #   The date when the registration for the domain is set to expire. The
    #   date and time is in Unix time format and Coordinated Universal time
    #   (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] reseller
    #   Reseller of the domain. Domains registered or transferred using
    #   Route 53 domains will have `"Amazon"` as the reseller.
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
    #
    #
    #   [1]: https://www.icann.org/
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/GetDomainDetailResponse AWS API Documentation
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
      SENSITIVE = [:admin_contact, :registrant_contact, :tech_contact]
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
    #   A domain name that you want to use as the basis for a list of
    #   possible domain names. The top-level domain (TLD), such as .com,
    #   must be a TLD that Route 53 supports. For a list of supported TLDs,
    #   see [Domains that You Can Register with Amazon Route 53][1] in the
    #   *Amazon Route 53 Developer Guide*.
    #
    #   The domain name can contain only the following characters:
    #
    #   * Letters a through z. Domain names are not case sensitive.
    #
    #   * Numbers 0 through 9.
    #
    #   * Hyphen (-). You can't specify a hyphen at the beginning or end of
    #     a label.
    #
    #   * Period (.) to separate the labels in the name, such as the `.` in
    #     `example.com`.
    #
    #   Internationalized domain names are not supported for some top-level
    #   domains. To determine whether the TLD that you want to use supports
    #   internationalized domain names, see [Domains that You Can Register
    #   with Amazon Route 53][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html
    #   @return [String]
    #
    # @!attribute [rw] suggestion_count
    #   The number of suggested domain names that you want Route 53 to
    #   return. Specify a value between 1 and 50.
    #   @return [Integer]
    #
    # @!attribute [rw] only_available
    #   If `OnlyAvailable` is `true`, Route 53 returns only domain names
    #   that are available. If `OnlyAvailable` is `false`, Route 53 returns
    #   domain names without checking whether they're available to be
    #   registered. To determine whether the domain is available, you can
    #   call `checkDomainAvailability` for each suggestion.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/GetDomainSuggestionsRequest AWS API Documentation
    #
    class GetDomainSuggestionsRequest < Struct.new(
      :domain_name,
      :suggestion_count,
      :only_available)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] suggestions_list
    #   A list of possible domain names. If you specified `true` for
    #   `OnlyAvailable` in the request, the list contains only domains that
    #   are available for registration.
    #   @return [Array<Types::DomainSuggestion>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/GetDomainSuggestionsResponse AWS API Documentation
    #
    class GetDomainSuggestionsResponse < Struct.new(
      :suggestions_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The [GetOperationDetail][1] request includes the following element.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html
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
    #   status. Route 53 returned the identifier in the response to the
    #   original request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/GetOperationDetailRequest AWS API Documentation
    #
    class GetOperationDetailRequest < Struct.new(
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The GetOperationDetail response includes the following elements.
    #
    # @!attribute [rw] operation_id
    #   The identifier for the operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the requested operation in the system.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Detailed information on the status including possible errors.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The name of a domain.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of operation that was requested.
    #   @return [String]
    #
    # @!attribute [rw] submitted_date
    #   The date when the request was submitted.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/GetOperationDetailResponse AWS API Documentation
    #
    class GetOperationDetailResponse < Struct.new(
      :operation_id,
      :status,
      :message,
      :domain_name,
      :type,
      :submitted_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested item is not acceptable. For example, for APIs that
    # accept a domain name, the request might specify a domain name that
    # doesn't belong to the account that submitted the request. For
    # `AcceptDomainTransferFromAnotherAwsAccount`, the password might be
    # invalid.
    #
    # @!attribute [rw] message
    #   The requested item is not acceptable. For example, for an
    #   OperationId it might refer to the ID of an operation that is already
    #   completed. For a domain name, it might not be a valid domain name or
    #   belong to the requester account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/InvalidInput AWS API Documentation
    #
    class InvalidInput < Struct.new(
      :message)
      SENSITIVE = []
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
    #   Constraints: The marker must match the value specified in the
    #   previous request.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Number of domains to be returned.
    #
    #   Default: 20
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/ListDomainsRequest AWS API Documentation
    #
    class ListDomainsRequest < Struct.new(
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # The ListDomains response includes the following elements.
    #
    # @!attribute [rw] domains
    #   A summary of domains.
    #   @return [Array<Types::DomainSummary>]
    #
    # @!attribute [rw] next_page_marker
    #   If there are more domains than you specified for `MaxItems` in the
    #   request, submit another request and include the value of
    #   `NextPageMarker` in the value of `Marker`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/ListDomainsResponse AWS API Documentation
    #
    class ListDomainsResponse < Struct.new(
      :domains,
      :next_page_marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # The ListOperations request includes the following elements.
    #
    # @note When making an API call, you may pass ListOperationsRequest
    #   data as a hash:
    #
    #       {
    #         submitted_since: Time.now,
    #         marker: "PageMarker",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] submitted_since
    #   An optional parameter that lets you get information about all the
    #   operations that you submitted after a specified date and time.
    #   Specify the date and time in Unix time format and Coordinated
    #   Universal time (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] marker
    #   For an initial request for a list of operations, omit this element.
    #   If the number of operations that are not yet complete is greater
    #   than the value that you specified for `MaxItems`, you can use
    #   `Marker` to return additional operations. Get the value of
    #   `NextPageMarker` from the previous response, and submit another
    #   request that includes the value of `NextPageMarker` in the `Marker`
    #   element.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Number of domains to be returned.
    #
    #   Default: 20
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/ListOperationsRequest AWS API Documentation
    #
    class ListOperationsRequest < Struct.new(
      :submitted_since,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # The ListOperations response includes the following elements.
    #
    # @!attribute [rw] operations
    #   Lists summaries of the operations.
    #   @return [Array<Types::OperationSummary>]
    #
    # @!attribute [rw] next_page_marker
    #   If there are more operations than you specified for `MaxItems` in
    #   the request, submit another request and include the value of
    #   `NextPageMarker` in the value of `Marker`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/ListOperationsResponse AWS API Documentation
    #
    class ListOperationsResponse < Struct.new(
      :operations,
      :next_page_marker)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/ListTagsForDomainRequest AWS API Documentation
    #
    class ListTagsForDomainRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The ListTagsForDomain response includes the following elements.
    #
    # @!attribute [rw] tag_list
    #   A list of the tags that are associated with the specified domain.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/ListTagsForDomainResponse AWS API Documentation
    #
    class ListTagsForDomainResponse < Struct.new(
      :tag_list)
      SENSITIVE = []
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
    #   Constraint: Maximum 255 characters
    #   @return [String]
    #
    # @!attribute [rw] glue_ips
    #   Glue IP address of a name server entry. Glue IP addresses are
    #   required only when the name of the name server is a subdomain of the
    #   domain. For example, if your domain is example.com and the name
    #   server for the domain is ns.example.com, you need to specify the IP
    #   address for ns.example.com.
    #
    #   Constraints: The list can contain only one IPv4 and one IPv6
    #   address.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/Nameserver AWS API Documentation
    #
    class Nameserver < Struct.new(
      :name,
      :glue_ips)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of operations or jobs running exceeded the allowed
    # threshold for the account.
    #
    # @!attribute [rw] message
    #   The number of operations or jobs running exceeded the allowed
    #   threshold for the account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/OperationLimitExceeded AWS API Documentation
    #
    class OperationLimitExceeded < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # OperationSummary includes the following elements.
    #
    # @!attribute [rw] operation_id
    #   Identifier returned to track the requested action.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the requested operation in the system.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Type of the action requested.
    #   @return [String]
    #
    # @!attribute [rw] submitted_date
    #   The date when the request was submitted.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/OperationSummary AWS API Documentation
    #
    class OperationSummary < Struct.new(
      :operation_id,
      :status,
      :type,
      :submitted_date)
      SENSITIVE = []
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
    #               name: "DUNS_NUMBER", # required, accepts DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, CA_LEGAL_REPRESENTATIVE, CA_LEGAL_REPRESENTATIVE_CAPACITY, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, FI_NATIONALITY, FI_ORGANIZATION_TYPE, IT_NATIONALITY, IT_PIN, IT_REGISTRANT_ENTITY_TYPE, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER, UK_CONTACT_TYPE, UK_COMPANY_NUMBER
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
    #               name: "DUNS_NUMBER", # required, accepts DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, CA_LEGAL_REPRESENTATIVE, CA_LEGAL_REPRESENTATIVE_CAPACITY, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, FI_NATIONALITY, FI_ORGANIZATION_TYPE, IT_NATIONALITY, IT_PIN, IT_REGISTRANT_ENTITY_TYPE, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER, UK_CONTACT_TYPE, UK_COMPANY_NUMBER
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
    #               name: "DUNS_NUMBER", # required, accepts DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, CA_LEGAL_REPRESENTATIVE, CA_LEGAL_REPRESENTATIVE_CAPACITY, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, FI_NATIONALITY, FI_ORGANIZATION_TYPE, IT_NATIONALITY, IT_PIN, IT_REGISTRANT_ENTITY_TYPE, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER, UK_CONTACT_TYPE, UK_COMPANY_NUMBER
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
    #   The domain name that you want to register. The top-level domain
    #   (TLD), such as .com, must be a TLD that Route 53 supports. For a
    #   list of supported TLDs, see [Domains that You Can Register with
    #   Amazon Route 53][1] in the *Amazon Route 53 Developer Guide*.
    #
    #   The domain name can contain only the following characters:
    #
    #   * Letters a through z. Domain names are not case sensitive.
    #
    #   * Numbers 0 through 9.
    #
    #   * Hyphen (-). You can't specify a hyphen at the beginning or end of
    #     a label.
    #
    #   * Period (.) to separate the labels in the name, such as the `.` in
    #     `example.com`.
    #
    #   Internationalized domain names are not supported for some top-level
    #   domains. To determine whether the TLD that you want to use supports
    #   internationalized domain names, see [Domains that You Can Register
    #   with Amazon Route 53][1]. For more information, see [Formatting
    #   Internationalized Domain Names][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html
    #   [2]: https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html#domain-name-format-idns
    #   @return [String]
    #
    # @!attribute [rw] idn_lang_code
    #   Reserved for future use.
    #   @return [String]
    #
    # @!attribute [rw] duration_in_years
    #   The number of years that you want to register the domain for.
    #   Domains are registered for a minimum of one year. The maximum period
    #   depends on the top-level domain. For the range of valid values for
    #   your domain, see [Domains that You Can Register with Amazon Route
    #   53][1] in the *Amazon Route 53 Developer Guide*.
    #
    #   Default: 1
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html
    #   @return [Integer]
    #
    # @!attribute [rw] auto_renew
    #   Indicates whether the domain will be automatically renewed (`true`)
    #   or not (`false`). Autorenewal only takes effect after the account is
    #   charged.
    #
    #   Default: `true`
    #   @return [Boolean]
    #
    # @!attribute [rw] admin_contact
    #   Provides detailed contact information. For information about the
    #   values that you specify for each element, see [ContactDetail][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ContactDetail.html
    #   @return [Types::ContactDetail]
    #
    # @!attribute [rw] registrant_contact
    #   Provides detailed contact information. For information about the
    #   values that you specify for each element, see [ContactDetail][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ContactDetail.html
    #   @return [Types::ContactDetail]
    #
    # @!attribute [rw] tech_contact
    #   Provides detailed contact information. For information about the
    #   values that you specify for each element, see [ContactDetail][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ContactDetail.html
    #   @return [Types::ContactDetail]
    #
    # @!attribute [rw] privacy_protect_admin_contact
    #   Whether you want to conceal contact information from WHOIS queries.
    #   If you specify `true`, WHOIS ("who is") queries return contact
    #   information either for Amazon Registrar (for .com, .net, and .org
    #   domains) or for our registrar associate, Gandi (for all other TLDs).
    #   If you specify `false`, WHOIS queries return the information that
    #   you entered for the admin contact.
    #
    #   Default: `true`
    #   @return [Boolean]
    #
    # @!attribute [rw] privacy_protect_registrant_contact
    #   Whether you want to conceal contact information from WHOIS queries.
    #   If you specify `true`, WHOIS ("who is") queries return contact
    #   information either for Amazon Registrar (for .com, .net, and .org
    #   domains) or for our registrar associate, Gandi (for all other TLDs).
    #   If you specify `false`, WHOIS queries return the information that
    #   you entered for the registrant contact (the domain owner).
    #
    #   Default: `true`
    #   @return [Boolean]
    #
    # @!attribute [rw] privacy_protect_tech_contact
    #   Whether you want to conceal contact information from WHOIS queries.
    #   If you specify `true`, WHOIS ("who is") queries return contact
    #   information either for Amazon Registrar (for .com, .net, and .org
    #   domains) or for our registrar associate, Gandi (for all other TLDs).
    #   If you specify `false`, WHOIS queries return the information that
    #   you entered for the technical contact.
    #
    #   Default: `true`
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/RegisterDomainRequest AWS API Documentation
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
      SENSITIVE = [:admin_contact, :registrant_contact, :tech_contact]
      include Aws::Structure
    end

    # The RegisterDomain response includes the following element.
    #
    # @!attribute [rw] operation_id
    #   Identifier for tracking the progress of the request. To query the
    #   operation status, use [GetOperationDetail][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/RegisterDomainResponse AWS API Documentation
    #
    class RegisterDomainResponse < Struct.new(
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The RejectDomainTransferFromAnotherAwsAccount request includes the
    # following element.
    #
    # @note When making an API call, you may pass RejectDomainTransferFromAnotherAwsAccountRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the domain that was specified when another AWS account
    #   submitted a [TransferDomainToAnotherAwsAccount][1] request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/RejectDomainTransferFromAnotherAwsAccountRequest AWS API Documentation
    #
    class RejectDomainTransferFromAnotherAwsAccountRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The RejectDomainTransferFromAnotherAwsAccount response includes the
    # following element.
    #
    # @!attribute [rw] operation_id
    #   The identifier that `TransferDomainToAnotherAwsAccount` returned to
    #   track the progress of the request. Because the transfer request was
    #   rejected, the value is no longer valid, and you can't use
    #   `GetOperationDetail` to query the operation status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/RejectDomainTransferFromAnotherAwsAccountResponse AWS API Documentation
    #
    class RejectDomainTransferFromAnotherAwsAccountResponse < Struct.new(
      :operation_id)
      SENSITIVE = []
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
    #   The name of the domain that you want to renew.
    #   @return [String]
    #
    # @!attribute [rw] duration_in_years
    #   The number of years that you want to renew the domain for. The
    #   maximum number of years depends on the top-level domain. For the
    #   range of valid values for your domain, see [Domains that You Can
    #   Register with Amazon Route 53][1] in the *Amazon Route 53 Developer
    #   Guide*.
    #
    #   Default: 1
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html
    #   @return [Integer]
    #
    # @!attribute [rw] current_expiry_year
    #   The year when the registration for the domain is set to expire. This
    #   value must match the current expiration date for the domain.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/RenewDomainRequest AWS API Documentation
    #
    class RenewDomainRequest < Struct.new(
      :domain_name,
      :duration_in_years,
      :current_expiry_year)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] operation_id
    #   Identifier for tracking the progress of the request. To query the
    #   operation status, use [GetOperationDetail][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/RenewDomainResponse AWS API Documentation
    #
    class RenewDomainResponse < Struct.new(
      :operation_id)
      SENSITIVE = []
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
    #   The name of the domain for which you want Route 53 to resend a
    #   confirmation email to the registrant contact.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/ResendContactReachabilityEmailRequest AWS API Documentation
    #
    class ResendContactReachabilityEmailRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
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
    #   `True` if the email address for the registrant contact has already
    #   been verified, and `false` otherwise. If the email address has
    #   already been verified, we don't send another confirmation email.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/ResendContactReachabilityEmailResponse AWS API Documentation
    #
    class ResendContactReachabilityEmailResponse < Struct.new(
      :domain_name,
      :email_address,
      :is_already_verified)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request for the authorization code for the specified domain. To
    # transfer a domain to another registrar, you provide this value to the
    # new registrar.
    #
    # @note When making an API call, you may pass RetrieveDomainAuthCodeRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the domain that you want to get an authorization code
    #   for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/RetrieveDomainAuthCodeRequest AWS API Documentation
    #
    class RetrieveDomainAuthCodeRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The RetrieveDomainAuthCode response includes the following element.
    #
    # @!attribute [rw] auth_code
    #   The authorization code for the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/RetrieveDomainAuthCodeResponse AWS API Documentation
    #
    class RetrieveDomainAuthCodeResponse < Struct.new(
      :auth_code)
      SENSITIVE = [:auth_code]
      include Aws::Structure
    end

    # The top-level domain does not support this operation.
    #
    # @!attribute [rw] message
    #   The top-level domain does not support this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/TLDRulesViolation AWS API Documentation
    #
    class TLDRulesViolation < Struct.new(
      :message)
      SENSITIVE = []
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
    #   Valid values: A-Z, a-z, 0-9, space, ".:/=+\\-@"
    #
    #   Constraints: Each key can be 1-128 characters long.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of a tag.
    #
    #   Valid values: A-Z, a-z, 0-9, space, ".:/=+\\-@"
    #
    #   Constraints: Each value can be 0-256 characters long.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
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
    #               name: "DUNS_NUMBER", # required, accepts DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, CA_LEGAL_REPRESENTATIVE, CA_LEGAL_REPRESENTATIVE_CAPACITY, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, FI_NATIONALITY, FI_ORGANIZATION_TYPE, IT_NATIONALITY, IT_PIN, IT_REGISTRANT_ENTITY_TYPE, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER, UK_CONTACT_TYPE, UK_COMPANY_NUMBER
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
    #               name: "DUNS_NUMBER", # required, accepts DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, CA_LEGAL_REPRESENTATIVE, CA_LEGAL_REPRESENTATIVE_CAPACITY, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, FI_NATIONALITY, FI_ORGANIZATION_TYPE, IT_NATIONALITY, IT_PIN, IT_REGISTRANT_ENTITY_TYPE, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER, UK_CONTACT_TYPE, UK_COMPANY_NUMBER
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
    #               name: "DUNS_NUMBER", # required, accepts DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, CA_LEGAL_REPRESENTATIVE, CA_LEGAL_REPRESENTATIVE_CAPACITY, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, FI_NATIONALITY, FI_ORGANIZATION_TYPE, IT_NATIONALITY, IT_PIN, IT_REGISTRANT_ENTITY_TYPE, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER, UK_CONTACT_TYPE, UK_COMPANY_NUMBER
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
    #   The name of the domain that you want to transfer to Route 53. The
    #   top-level domain (TLD), such as .com, must be a TLD that Route 53
    #   supports. For a list of supported TLDs, see [Domains that You Can
    #   Register with Amazon Route 53][1] in the *Amazon Route 53 Developer
    #   Guide*.
    #
    #   The domain name can contain only the following characters:
    #
    #   * Letters a through z. Domain names are not case sensitive.
    #
    #   * Numbers 0 through 9.
    #
    #   * Hyphen (-). You can't specify a hyphen at the beginning or end of
    #     a label.
    #
    #   * Period (.) to separate the labels in the name, such as the `.` in
    #     `example.com`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html
    #   @return [String]
    #
    # @!attribute [rw] idn_lang_code
    #   Reserved for future use.
    #   @return [String]
    #
    # @!attribute [rw] duration_in_years
    #   The number of years that you want to register the domain for.
    #   Domains are registered for a minimum of one year. The maximum period
    #   depends on the top-level domain.
    #
    #   Default: 1
    #   @return [Integer]
    #
    # @!attribute [rw] nameservers
    #   Contains details for the host and glue IP addresses.
    #   @return [Array<Types::Nameserver>]
    #
    # @!attribute [rw] auth_code
    #   The authorization code for the domain. You get this value from the
    #   current registrar.
    #   @return [String]
    #
    # @!attribute [rw] auto_renew
    #   Indicates whether the domain will be automatically renewed (true) or
    #   not (false). Autorenewal only takes effect after the account is
    #   charged.
    #
    #   Default: true
    #   @return [Boolean]
    #
    # @!attribute [rw] admin_contact
    #   Provides detailed contact information.
    #   @return [Types::ContactDetail]
    #
    # @!attribute [rw] registrant_contact
    #   Provides detailed contact information.
    #   @return [Types::ContactDetail]
    #
    # @!attribute [rw] tech_contact
    #   Provides detailed contact information.
    #   @return [Types::ContactDetail]
    #
    # @!attribute [rw] privacy_protect_admin_contact
    #   Whether you want to conceal contact information from WHOIS queries.
    #   If you specify `true`, WHOIS ("who is") queries return contact
    #   information either for Amazon Registrar (for .com, .net, and .org
    #   domains) or for our registrar associate, Gandi (for all other TLDs).
    #   If you specify `false`, WHOIS queries return the information that
    #   you entered for the admin contact.
    #
    #   Default: `true`
    #   @return [Boolean]
    #
    # @!attribute [rw] privacy_protect_registrant_contact
    #   Whether you want to conceal contact information from WHOIS queries.
    #   If you specify `true`, WHOIS ("who is") queries return contact
    #   information either for Amazon Registrar (for .com, .net, and .org
    #   domains) or for our registrar associate, Gandi (for all other TLDs).
    #   If you specify `false`, WHOIS queries return the information that
    #   you entered for the registrant contact (domain owner).
    #
    #   Default: `true`
    #   @return [Boolean]
    #
    # @!attribute [rw] privacy_protect_tech_contact
    #   Whether you want to conceal contact information from WHOIS queries.
    #   If you specify `true`, WHOIS ("who is") queries return contact
    #   information either for Amazon Registrar (for .com, .net, and .org
    #   domains) or for our registrar associate, Gandi (for all other TLDs).
    #   If you specify `false`, WHOIS queries return the information that
    #   you entered for the technical contact.
    #
    #   Default: `true`
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/TransferDomainRequest AWS API Documentation
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
      SENSITIVE = [:auth_code, :admin_contact, :registrant_contact, :tech_contact]
      include Aws::Structure
    end

    # The TransferDomain response includes the following element.
    #
    # @!attribute [rw] operation_id
    #   Identifier for tracking the progress of the request. To query the
    #   operation status, use [GetOperationDetail][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/TransferDomainResponse AWS API Documentation
    #
    class TransferDomainResponse < Struct.new(
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The TransferDomainToAnotherAwsAccount request includes the following
    # elements.
    #
    # @note When making an API call, you may pass TransferDomainToAnotherAwsAccountRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #         account_id: "AccountId", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the domain that you want to transfer from the current
    #   AWS account to another account.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The account ID of the AWS account that you want to transfer the
    #   domain to, for example, `111122223333`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/TransferDomainToAnotherAwsAccountRequest AWS API Documentation
    #
    class TransferDomainToAnotherAwsAccountRequest < Struct.new(
      :domain_name,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `TransferDomainToAnotherAwsAccount` response includes the
    # following elements.
    #
    # @!attribute [rw] operation_id
    #   Identifier for tracking the progress of the request. To query the
    #   operation status, use [GetOperationDetail][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html
    #   @return [String]
    #
    # @!attribute [rw] password
    #   To finish transferring a domain to another AWS account, the account
    #   that the domain is being transferred to must submit an
    #   [AcceptDomainTransferFromAnotherAwsAccount][1] request. The request
    #   must include the value of the `Password` element that was returned
    #   in the `TransferDomainToAnotherAwsAccount` response.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_AcceptDomainTransferFromAnotherAwsAccount.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/TransferDomainToAnotherAwsAccountResponse AWS API Documentation
    #
    class TransferDomainToAnotherAwsAccountResponse < Struct.new(
      :operation_id,
      :password)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon Route 53 does not support this top-level domain (TLD).
    #
    # @!attribute [rw] message
    #   Amazon Route 53 does not support this top-level domain (TLD).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/UnsupportedTLD AWS API Documentation
    #
    class UnsupportedTLD < Struct.new(
      :message)
      SENSITIVE = []
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
    #   The name of the domain that you want to update the privacy setting
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] admin_privacy
    #   Whether you want to conceal contact information from WHOIS queries.
    #   If you specify `true`, WHOIS ("who is") queries return contact
    #   information either for Amazon Registrar (for .com, .net, and .org
    #   domains) or for our registrar associate, Gandi (for all other TLDs).
    #   If you specify `false`, WHOIS queries return the information that
    #   you entered for the admin contact.
    #   @return [Boolean]
    #
    # @!attribute [rw] registrant_privacy
    #   Whether you want to conceal contact information from WHOIS queries.
    #   If you specify `true`, WHOIS ("who is") queries return contact
    #   information either for Amazon Registrar (for .com, .net, and .org
    #   domains) or for our registrar associate, Gandi (for all other TLDs).
    #   If you specify `false`, WHOIS queries return the information that
    #   you entered for the registrant contact (domain owner).
    #   @return [Boolean]
    #
    # @!attribute [rw] tech_privacy
    #   Whether you want to conceal contact information from WHOIS queries.
    #   If you specify `true`, WHOIS ("who is") queries return contact
    #   information either for Amazon Registrar (for .com, .net, and .org
    #   domains) or for our registrar associate, Gandi (for all other TLDs).
    #   If you specify `false`, WHOIS queries return the information that
    #   you entered for the technical contact.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/UpdateDomainContactPrivacyRequest AWS API Documentation
    #
    class UpdateDomainContactPrivacyRequest < Struct.new(
      :domain_name,
      :admin_privacy,
      :registrant_privacy,
      :tech_privacy)
      SENSITIVE = []
      include Aws::Structure
    end

    # The UpdateDomainContactPrivacy response includes the following
    # element.
    #
    # @!attribute [rw] operation_id
    #   Identifier for tracking the progress of the request. To use this ID
    #   to query the operation status, use GetOperationDetail.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/UpdateDomainContactPrivacyResponse AWS API Documentation
    #
    class UpdateDomainContactPrivacyResponse < Struct.new(
      :operation_id)
      SENSITIVE = []
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
    #               name: "DUNS_NUMBER", # required, accepts DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, CA_LEGAL_REPRESENTATIVE, CA_LEGAL_REPRESENTATIVE_CAPACITY, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, FI_NATIONALITY, FI_ORGANIZATION_TYPE, IT_NATIONALITY, IT_PIN, IT_REGISTRANT_ENTITY_TYPE, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER, UK_CONTACT_TYPE, UK_COMPANY_NUMBER
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
    #               name: "DUNS_NUMBER", # required, accepts DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, CA_LEGAL_REPRESENTATIVE, CA_LEGAL_REPRESENTATIVE_CAPACITY, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, FI_NATIONALITY, FI_ORGANIZATION_TYPE, IT_NATIONALITY, IT_PIN, IT_REGISTRANT_ENTITY_TYPE, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER, UK_CONTACT_TYPE, UK_COMPANY_NUMBER
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
    #               name: "DUNS_NUMBER", # required, accepts DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, CA_LEGAL_REPRESENTATIVE, CA_LEGAL_REPRESENTATIVE_CAPACITY, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, FI_NATIONALITY, FI_ORGANIZATION_TYPE, IT_NATIONALITY, IT_PIN, IT_REGISTRANT_ENTITY_TYPE, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER, UK_CONTACT_TYPE, UK_COMPANY_NUMBER
    #               value: "ExtraParamValue", # required
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the domain that you want to update contact information
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] admin_contact
    #   Provides detailed contact information.
    #   @return [Types::ContactDetail]
    #
    # @!attribute [rw] registrant_contact
    #   Provides detailed contact information.
    #   @return [Types::ContactDetail]
    #
    # @!attribute [rw] tech_contact
    #   Provides detailed contact information.
    #   @return [Types::ContactDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/UpdateDomainContactRequest AWS API Documentation
    #
    class UpdateDomainContactRequest < Struct.new(
      :domain_name,
      :admin_contact,
      :registrant_contact,
      :tech_contact)
      SENSITIVE = [:admin_contact, :registrant_contact, :tech_contact]
      include Aws::Structure
    end

    # The UpdateDomainContact response includes the following element.
    #
    # @!attribute [rw] operation_id
    #   Identifier for tracking the progress of the request. To query the
    #   operation status, use [GetOperationDetail][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/UpdateDomainContactResponse AWS API Documentation
    #
    class UpdateDomainContactResponse < Struct.new(
      :operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Replaces the current set of name servers for the domain with the
    # specified set of name servers. If you use Amazon Route 53 as your DNS
    # service, specify the four name servers in the delegation set for the
    # hosted zone for the domain.
    #
    # If successful, this operation returns an operation ID that you can use
    # to track the progress and completion of the action. If the request is
    # not completed successfully, the domain registrant will be notified by
    # email.
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
    #   The name of the domain that you want to change name servers for.
    #   @return [String]
    #
    # @!attribute [rw] fi_auth_key
    #   The authorization key for .fi domains
    #   @return [String]
    #
    # @!attribute [rw] nameservers
    #   A list of new name servers for the domain.
    #   @return [Array<Types::Nameserver>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/UpdateDomainNameserversRequest AWS API Documentation
    #
    class UpdateDomainNameserversRequest < Struct.new(
      :domain_name,
      :fi_auth_key,
      :nameservers)
      SENSITIVE = []
      include Aws::Structure
    end

    # The UpdateDomainNameservers response includes the following element.
    #
    # @!attribute [rw] operation_id
    #   Identifier for tracking the progress of the request. To query the
    #   operation status, use [GetOperationDetail][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/UpdateDomainNameserversResponse AWS API Documentation
    #
    class UpdateDomainNameserversResponse < Struct.new(
      :operation_id)
      SENSITIVE = []
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
    #   @return [String]
    #
    # @!attribute [rw] tags_to_update
    #   A list of the tag keys and values that you want to add or update. If
    #   you specify a key that already exists, the corresponding value will
    #   be replaced.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/UpdateTagsForDomainRequest AWS API Documentation
    #
    class UpdateTagsForDomainRequest < Struct.new(
      :domain_name,
      :tags_to_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/UpdateTagsForDomainResponse AWS API Documentation
    #
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
    #   list of billing records. Specify the date and time in Unix time
    #   format and Coordinated Universal time (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] end
    #   The end date and time for the time period for which you want a list
    #   of billing records. Specify the date and time in Unix time format
    #   and Coordinated Universal time (UTC).
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
    #   Constraints: The marker must match the value of `NextPageMarker`
    #   that was returned in the previous response.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The number of billing records to be returned.
    #
    #   Default: 20
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/ViewBillingRequest AWS API Documentation
    #
    class ViewBillingRequest < Struct.new(
      :start,
      :end,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # The ViewBilling response includes the following elements.
    #
    # @!attribute [rw] next_page_marker
    #   If there are more billing records than you specified for `MaxItems`
    #   in the request, submit another request and include the value of
    #   `NextPageMarker` in the value of `Marker`.
    #   @return [String]
    #
    # @!attribute [rw] billing_records
    #   A summary of billing records.
    #   @return [Array<Types::BillingRecord>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/ViewBillingResponse AWS API Documentation
    #
    class ViewBillingResponse < Struct.new(
      :next_page_marker,
      :billing_records)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
