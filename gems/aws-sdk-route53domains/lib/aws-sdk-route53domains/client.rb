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
    class Client < Seahorse::Client::Base

      include Aws::ClientStubs
      include Aws::ClientWaiters

      @identifier = :route53domains

      set_api(ClientApi::API)

      add_plugin(Seahorse::Client::Plugins::ContentLength)
      add_plugin(Aws::Plugins::Logging)
      add_plugin(Aws::Plugins::ParamConverter)
      add_plugin(Aws::Plugins::ParamValidator)
      add_plugin(Aws::Plugins::UserAgent)
      add_plugin(Aws::Plugins::RetryErrors)
      add_plugin(Aws::Plugins::GlobalConfiguration)
      add_plugin(Aws::Plugins::RegionalEndpoint)
      add_plugin(Aws::Plugins::RequestSigner)
      add_plugin(Aws::Plugins::ResponsePaging)
      add_plugin(Aws::Plugins::StubResponses)
      add_plugin(Aws::Plugins::Protocols::JsonRpc)

      # @!group API Operations

      # This operation checks the availability of one domain name. Note that
      # if the availability status of a domain is pending, you must submit
      # another request to determine the availability of the domain name.
      # @option params [required, String] :domain_name
      #   The name of a domain.
      #
      #   Type: String
      #
      #   Default: None
      #
      #   Constraints: The domain name can contain only the letters a through z,
      #   the numbers 0 through 9, and hyphen (-). Internationalized Domain
      #   Names are not supported.
      #
      #   Required: Yes
      # @option params [String] :idn_lang_code
      #   Reserved for future use.
      # @return [Types::CheckDomainAvailabilityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CheckDomainAvailabilityResponse#availability #Availability} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.check_domain_availability({
      #     domain_name: "DomainName", # required
      #     idn_lang_code: "LangCode",
      #   })
      #
      # @example Response structure
      #   resp.availability #=> String, one of "AVAILABLE", "AVAILABLE_RESERVED", "AVAILABLE_PREORDER", "UNAVAILABLE", "UNAVAILABLE_PREMIUM", "UNAVAILABLE_RESTRICTED", "RESERVED", "DONT_KNOW"
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def check_domain_availability(params = {}, options = {})
        req = build_request(:check_domain_availability, params)
        req.send_request(options)
      end

      # This operation deletes the specified tags for a domain.
      #
      # All tag operations are eventually consistent; subsequent operations
      # may not immediately represent all issued operations.
      # @option params [required, String] :domain_name
      #   The domain for which you want to delete one or more tags.
      #
      #   The name of a domain.
      #
      #   Type: String
      #
      #   Default: None
      #
      #   Constraints: The domain name can contain only the letters a through z,
      #   the numbers 0 through 9, and hyphen (-). Hyphens are allowed only when
      #   they're surrounded by letters, numbers, or other hyphens. You can't
      #   specify a hyphen at the beginning or end of a label. To specify an
      #   Internationalized Domain Name, you must convert the name to Punycode.
      #
      #   Required: Yes
      # @option params [required, Array<String>] :tags_to_delete
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
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_tags_for_domain({
      #     domain_name: "DomainName", # required
      #     tags_to_delete: ["TagKey"], # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_tags_for_domain(params = {}, options = {})
        req = build_request(:delete_tags_for_domain, params)
        req.send_request(options)
      end

      # This operation disables automatic renewal of domain registration for
      # the specified domain.
      #
      # <note>Caution! Amazon Route 53 doesn't have a manual renewal process, so if you disable automatic renewal, registration for the domain will not be renewed when the expiration date passes, and you will lose control of the domain name.</note>
      # @option params [required, String] :domain_name
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.disable_domain_auto_renew({
      #     domain_name: "DomainName", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def disable_domain_auto_renew(params = {}, options = {})
        req = build_request(:disable_domain_auto_renew, params)
        req.send_request(options)
      end

      # This operation removes the transfer lock on the domain (specifically
      # the `clientTransferProhibited` status) to allow domain transfers. We
      # recommend you refrain from performing this action unless you intend to
      # transfer the domain to a different registrar. Successful submission
      # returns an operation ID that you can use to track the progress and
      # completion of the action. If the request is not completed
      # successfully, the domain registrant will be notified by email.
      # @option params [required, String] :domain_name
      #   The name of a domain.
      #
      #   Type: String
      #
      #   Default: None
      #
      #   Constraints: The domain name can contain only the letters a through z,
      #   the numbers 0 through 9, and hyphen (-). Internationalized Domain
      #   Names are not supported.
      #
      #   Required: Yes
      # @return [Types::DisableDomainTransferLockResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DisableDomainTransferLockResponse#operation_id #OperationId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.disable_domain_transfer_lock({
      #     domain_name: "DomainName", # required
      #   })
      #
      # @example Response structure
      #   resp.operation_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def disable_domain_transfer_lock(params = {}, options = {})
        req = build_request(:disable_domain_transfer_lock, params)
        req.send_request(options)
      end

      # This operation configures Amazon Route 53 to automatically renew the
      # specified domain before the domain registration expires. The cost of
      # renewing your domain registration is billed to your AWS account.
      #
      # The period during which you can renew a domain name varies by TLD. For
      # a list of TLDs and their renewal policies, see [\"Renewal,
      # restoration, and deletion times\"][1] on the website for our registrar
      # partner, Gandi. Route 53 requires that you renew before the end of the
      # renewal period that is listed on the Gandi website so we can complete
      # processing before the deadline.
      #
      #
      #
      # [1]: http://wiki.gandi.net/en/domains/renew#renewal_restoration_and_deletion_times
      # @option params [required, String] :domain_name
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.enable_domain_auto_renew({
      #     domain_name: "DomainName", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def enable_domain_auto_renew(params = {}, options = {})
        req = build_request(:enable_domain_auto_renew, params)
        req.send_request(options)
      end

      # This operation sets the transfer lock on the domain (specifically the
      # `clientTransferProhibited` status) to prevent domain transfers.
      # Successful submission returns an operation ID that you can use to
      # track the progress and completion of the action. If the request is not
      # completed successfully, the domain registrant will be notified by
      # email.
      # @option params [required, String] :domain_name
      #   The name of a domain.
      #
      #   Type: String
      #
      #   Default: None
      #
      #   Constraints: The domain name can contain only the letters a through z,
      #   the numbers 0 through 9, and hyphen (-). Internationalized Domain
      #   Names are not supported.
      #
      #   Required: Yes
      # @return [Types::EnableDomainTransferLockResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::EnableDomainTransferLockResponse#operation_id #OperationId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.enable_domain_transfer_lock({
      #     domain_name: "DomainName", # required
      #   })
      #
      # @example Response structure
      #   resp.operation_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def enable_domain_transfer_lock(params = {}, options = {})
        req = build_request(:enable_domain_transfer_lock, params)
        req.send_request(options)
      end

      # For operations that require confirmation that the email address for
      # the registrant contact is valid, such as registering a new domain,
      # this operation returns information about whether the registrant
      # contact has responded.
      #
      # If you want us to resend the email, use the
      # `ResendContactReachabilityEmail` operation.
      # @option params [String] :domain_name
      #   The name of the domain for which you want to know whether the
      #   registrant contact has confirmed that the email address is valid.
      #
      #   Type: String
      #
      #   Default: None
      #
      #   Required: Yes
      # @return [Types::GetContactReachabilityStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetContactReachabilityStatusResponse#domain_name #domainName} => String
      #   * {Types::GetContactReachabilityStatusResponse#status #status} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_contact_reachability_status({
      #     domain_name: "DomainName",
      #   })
      #
      # @example Response structure
      #   resp.domain_name #=> String
      #   resp.status #=> String, one of "PENDING", "DONE", "EXPIRED"
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_contact_reachability_status(params = {}, options = {})
        req = build_request(:get_contact_reachability_status, params)
        req.send_request(options)
      end

      # This operation returns detailed information about the domain. The
      # domain\'s contact information is also returned as part of the output.
      # @option params [required, String] :domain_name
      #   The name of a domain.
      #
      #   Type: String
      #
      #   Default: None
      #
      #   Constraints: The domain name can contain only the letters a through z,
      #   the numbers 0 through 9, and hyphen (-). Internationalized Domain
      #   Names are not supported.
      #
      #   Required: Yes
      # @return [Types::GetDomainDetailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetDomainDetailResponse#domain_name #DomainName} => String
      #   * {Types::GetDomainDetailResponse#nameservers #Nameservers} => Array&lt;Types::Nameserver&gt;
      #   * {Types::GetDomainDetailResponse#auto_renew #AutoRenew} => Boolean
      #   * {Types::GetDomainDetailResponse#admin_contact #AdminContact} => Types::ContactDetail
      #   * {Types::GetDomainDetailResponse#registrant_contact #RegistrantContact} => Types::ContactDetail
      #   * {Types::GetDomainDetailResponse#tech_contact #TechContact} => Types::ContactDetail
      #   * {Types::GetDomainDetailResponse#admin_privacy #AdminPrivacy} => Boolean
      #   * {Types::GetDomainDetailResponse#registrant_privacy #RegistrantPrivacy} => Boolean
      #   * {Types::GetDomainDetailResponse#tech_privacy #TechPrivacy} => Boolean
      #   * {Types::GetDomainDetailResponse#registrar_name #RegistrarName} => String
      #   * {Types::GetDomainDetailResponse#who_is_server #WhoIsServer} => String
      #   * {Types::GetDomainDetailResponse#registrar_url #RegistrarUrl} => String
      #   * {Types::GetDomainDetailResponse#abuse_contact_email #AbuseContactEmail} => String
      #   * {Types::GetDomainDetailResponse#abuse_contact_phone #AbuseContactPhone} => String
      #   * {Types::GetDomainDetailResponse#registry_domain_id #RegistryDomainId} => String
      #   * {Types::GetDomainDetailResponse#creation_date #CreationDate} => Time
      #   * {Types::GetDomainDetailResponse#updated_date #UpdatedDate} => Time
      #   * {Types::GetDomainDetailResponse#expiration_date #ExpirationDate} => Time
      #   * {Types::GetDomainDetailResponse#reseller #Reseller} => String
      #   * {Types::GetDomainDetailResponse#dns_sec #DnsSec} => String
      #   * {Types::GetDomainDetailResponse#status_list #StatusList} => Array&lt;String&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_domain_detail({
      #     domain_name: "DomainName", # required
      #   })
      #
      # @example Response structure
      #   resp.domain_name #=> String
      #   resp.nameservers #=> Array
      #   resp.nameservers[0].name #=> String
      #   resp.nameservers[0].glue_ips #=> Array
      #   resp.nameservers[0].glue_ips[0] #=> String
      #   resp.auto_renew #=> Boolean
      #   resp.admin_contact.first_name #=> String
      #   resp.admin_contact.last_name #=> String
      #   resp.admin_contact.contact_type #=> String, one of "PERSON", "COMPANY", "ASSOCIATION", "PUBLIC_BODY", "RESELLER"
      #   resp.admin_contact.organization_name #=> String
      #   resp.admin_contact.address_line_1 #=> String
      #   resp.admin_contact.address_line_2 #=> String
      #   resp.admin_contact.city #=> String
      #   resp.admin_contact.state #=> String
      #   resp.admin_contact.country_code #=> String, one of "AD", "AE", "AF", "AG", "AI", "AL", "AM", "AN", "AO", "AQ", "AR", "AS", "AT", "AU", "AW", "AZ", "BA", "BB", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BL", "BM", "BN", "BO", "BR", "BS", "BT", "BW", "BY", "BZ", "CA", "CC", "CD", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN", "CO", "CR", "CU", "CV", "CX", "CY", "CZ", "DE", "DJ", "DK", "DM", "DO", "DZ", "EC", "EE", "EG", "ER", "ES", "ET", "FI", "FJ", "FK", "FM", "FO", "FR", "GA", "GB", "GD", "GE", "GH", "GI", "GL", "GM", "GN", "GQ", "GR", "GT", "GU", "GW", "GY", "HK", "HN", "HR", "HT", "HU", "ID", "IE", "IL", "IM", "IN", "IQ", "IR", "IS", "IT", "JM", "JO", "JP", "KE", "KG", "KH", "KI", "KM", "KN", "KP", "KR", "KW", "KY", "KZ", "LA", "LB", "LC", "LI", "LK", "LR", "LS", "LT", "LU", "LV", "LY", "MA", "MC", "MD", "ME", "MF", "MG", "MH", "MK", "ML", "MM", "MN", "MO", "MP", "MR", "MS", "MT", "MU", "MV", "MW", "MX", "MY", "MZ", "NA", "NC", "NE", "NG", "NI", "NL", "NO", "NP", "NR", "NU", "NZ", "OM", "PA", "PE", "PF", "PG", "PH", "PK", "PL", "PM", "PN", "PR", "PT", "PW", "PY", "QA", "RO", "RS", "RU", "RW", "SA", "SB", "SC", "SD", "SE", "SG", "SH", "SI", "SK", "SL", "SM", "SN", "SO", "SR", "ST", "SV", "SY", "SZ", "TC", "TD", "TG", "TH", "TJ", "TK", "TL", "TM", "TN", "TO", "TR", "TT", "TV", "TW", "TZ", "UA", "UG", "US", "UY", "UZ", "VA", "VC", "VE", "VG", "VI", "VN", "VU", "WF", "WS", "YE", "YT", "ZA", "ZM", "ZW"
      #   resp.admin_contact.zip_code #=> String
      #   resp.admin_contact.phone_number #=> String
      #   resp.admin_contact.email #=> String
      #   resp.admin_contact.fax #=> String
      #   resp.admin_contact.extra_params #=> Array
      #   resp.admin_contact.extra_params[0].name #=> String, one of "DUNS_NUMBER", "BRAND_NUMBER", "BIRTH_DEPARTMENT", "BIRTH_DATE_IN_YYYY_MM_DD", "BIRTH_COUNTRY", "BIRTH_CITY", "DOCUMENT_NUMBER", "AU_ID_NUMBER", "AU_ID_TYPE", "CA_LEGAL_TYPE", "CA_BUSINESS_ENTITY_TYPE", "ES_IDENTIFICATION", "ES_IDENTIFICATION_TYPE", "ES_LEGAL_FORM", "FI_BUSINESS_NUMBER", "FI_ID_NUMBER", "IT_PIN", "RU_PASSPORT_DATA", "SE_ID_NUMBER", "SG_ID_NUMBER", "VAT_NUMBER"
      #   resp.admin_contact.extra_params[0].value #=> String
      #   resp.registrant_contact.first_name #=> String
      #   resp.registrant_contact.last_name #=> String
      #   resp.registrant_contact.contact_type #=> String, one of "PERSON", "COMPANY", "ASSOCIATION", "PUBLIC_BODY", "RESELLER"
      #   resp.registrant_contact.organization_name #=> String
      #   resp.registrant_contact.address_line_1 #=> String
      #   resp.registrant_contact.address_line_2 #=> String
      #   resp.registrant_contact.city #=> String
      #   resp.registrant_contact.state #=> String
      #   resp.registrant_contact.country_code #=> String, one of "AD", "AE", "AF", "AG", "AI", "AL", "AM", "AN", "AO", "AQ", "AR", "AS", "AT", "AU", "AW", "AZ", "BA", "BB", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BL", "BM", "BN", "BO", "BR", "BS", "BT", "BW", "BY", "BZ", "CA", "CC", "CD", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN", "CO", "CR", "CU", "CV", "CX", "CY", "CZ", "DE", "DJ", "DK", "DM", "DO", "DZ", "EC", "EE", "EG", "ER", "ES", "ET", "FI", "FJ", "FK", "FM", "FO", "FR", "GA", "GB", "GD", "GE", "GH", "GI", "GL", "GM", "GN", "GQ", "GR", "GT", "GU", "GW", "GY", "HK", "HN", "HR", "HT", "HU", "ID", "IE", "IL", "IM", "IN", "IQ", "IR", "IS", "IT", "JM", "JO", "JP", "KE", "KG", "KH", "KI", "KM", "KN", "KP", "KR", "KW", "KY", "KZ", "LA", "LB", "LC", "LI", "LK", "LR", "LS", "LT", "LU", "LV", "LY", "MA", "MC", "MD", "ME", "MF", "MG", "MH", "MK", "ML", "MM", "MN", "MO", "MP", "MR", "MS", "MT", "MU", "MV", "MW", "MX", "MY", "MZ", "NA", "NC", "NE", "NG", "NI", "NL", "NO", "NP", "NR", "NU", "NZ", "OM", "PA", "PE", "PF", "PG", "PH", "PK", "PL", "PM", "PN", "PR", "PT", "PW", "PY", "QA", "RO", "RS", "RU", "RW", "SA", "SB", "SC", "SD", "SE", "SG", "SH", "SI", "SK", "SL", "SM", "SN", "SO", "SR", "ST", "SV", "SY", "SZ", "TC", "TD", "TG", "TH", "TJ", "TK", "TL", "TM", "TN", "TO", "TR", "TT", "TV", "TW", "TZ", "UA", "UG", "US", "UY", "UZ", "VA", "VC", "VE", "VG", "VI", "VN", "VU", "WF", "WS", "YE", "YT", "ZA", "ZM", "ZW"
      #   resp.registrant_contact.zip_code #=> String
      #   resp.registrant_contact.phone_number #=> String
      #   resp.registrant_contact.email #=> String
      #   resp.registrant_contact.fax #=> String
      #   resp.registrant_contact.extra_params #=> Array
      #   resp.registrant_contact.extra_params[0].name #=> String, one of "DUNS_NUMBER", "BRAND_NUMBER", "BIRTH_DEPARTMENT", "BIRTH_DATE_IN_YYYY_MM_DD", "BIRTH_COUNTRY", "BIRTH_CITY", "DOCUMENT_NUMBER", "AU_ID_NUMBER", "AU_ID_TYPE", "CA_LEGAL_TYPE", "CA_BUSINESS_ENTITY_TYPE", "ES_IDENTIFICATION", "ES_IDENTIFICATION_TYPE", "ES_LEGAL_FORM", "FI_BUSINESS_NUMBER", "FI_ID_NUMBER", "IT_PIN", "RU_PASSPORT_DATA", "SE_ID_NUMBER", "SG_ID_NUMBER", "VAT_NUMBER"
      #   resp.registrant_contact.extra_params[0].value #=> String
      #   resp.tech_contact.first_name #=> String
      #   resp.tech_contact.last_name #=> String
      #   resp.tech_contact.contact_type #=> String, one of "PERSON", "COMPANY", "ASSOCIATION", "PUBLIC_BODY", "RESELLER"
      #   resp.tech_contact.organization_name #=> String
      #   resp.tech_contact.address_line_1 #=> String
      #   resp.tech_contact.address_line_2 #=> String
      #   resp.tech_contact.city #=> String
      #   resp.tech_contact.state #=> String
      #   resp.tech_contact.country_code #=> String, one of "AD", "AE", "AF", "AG", "AI", "AL", "AM", "AN", "AO", "AQ", "AR", "AS", "AT", "AU", "AW", "AZ", "BA", "BB", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BL", "BM", "BN", "BO", "BR", "BS", "BT", "BW", "BY", "BZ", "CA", "CC", "CD", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN", "CO", "CR", "CU", "CV", "CX", "CY", "CZ", "DE", "DJ", "DK", "DM", "DO", "DZ", "EC", "EE", "EG", "ER", "ES", "ET", "FI", "FJ", "FK", "FM", "FO", "FR", "GA", "GB", "GD", "GE", "GH", "GI", "GL", "GM", "GN", "GQ", "GR", "GT", "GU", "GW", "GY", "HK", "HN", "HR", "HT", "HU", "ID", "IE", "IL", "IM", "IN", "IQ", "IR", "IS", "IT", "JM", "JO", "JP", "KE", "KG", "KH", "KI", "KM", "KN", "KP", "KR", "KW", "KY", "KZ", "LA", "LB", "LC", "LI", "LK", "LR", "LS", "LT", "LU", "LV", "LY", "MA", "MC", "MD", "ME", "MF", "MG", "MH", "MK", "ML", "MM", "MN", "MO", "MP", "MR", "MS", "MT", "MU", "MV", "MW", "MX", "MY", "MZ", "NA", "NC", "NE", "NG", "NI", "NL", "NO", "NP", "NR", "NU", "NZ", "OM", "PA", "PE", "PF", "PG", "PH", "PK", "PL", "PM", "PN", "PR", "PT", "PW", "PY", "QA", "RO", "RS", "RU", "RW", "SA", "SB", "SC", "SD", "SE", "SG", "SH", "SI", "SK", "SL", "SM", "SN", "SO", "SR", "ST", "SV", "SY", "SZ", "TC", "TD", "TG", "TH", "TJ", "TK", "TL", "TM", "TN", "TO", "TR", "TT", "TV", "TW", "TZ", "UA", "UG", "US", "UY", "UZ", "VA", "VC", "VE", "VG", "VI", "VN", "VU", "WF", "WS", "YE", "YT", "ZA", "ZM", "ZW"
      #   resp.tech_contact.zip_code #=> String
      #   resp.tech_contact.phone_number #=> String
      #   resp.tech_contact.email #=> String
      #   resp.tech_contact.fax #=> String
      #   resp.tech_contact.extra_params #=> Array
      #   resp.tech_contact.extra_params[0].name #=> String, one of "DUNS_NUMBER", "BRAND_NUMBER", "BIRTH_DEPARTMENT", "BIRTH_DATE_IN_YYYY_MM_DD", "BIRTH_COUNTRY", "BIRTH_CITY", "DOCUMENT_NUMBER", "AU_ID_NUMBER", "AU_ID_TYPE", "CA_LEGAL_TYPE", "CA_BUSINESS_ENTITY_TYPE", "ES_IDENTIFICATION", "ES_IDENTIFICATION_TYPE", "ES_LEGAL_FORM", "FI_BUSINESS_NUMBER", "FI_ID_NUMBER", "IT_PIN", "RU_PASSPORT_DATA", "SE_ID_NUMBER", "SG_ID_NUMBER", "VAT_NUMBER"
      #   resp.tech_contact.extra_params[0].value #=> String
      #   resp.admin_privacy #=> Boolean
      #   resp.registrant_privacy #=> Boolean
      #   resp.tech_privacy #=> Boolean
      #   resp.registrar_name #=> String
      #   resp.who_is_server #=> String
      #   resp.registrar_url #=> String
      #   resp.abuse_contact_email #=> String
      #   resp.abuse_contact_phone #=> String
      #   resp.registry_domain_id #=> String
      #   resp.creation_date #=> Time
      #   resp.updated_date #=> Time
      #   resp.expiration_date #=> Time
      #   resp.reseller #=> String
      #   resp.dns_sec #=> String
      #   resp.status_list #=> Array
      #   resp.status_list[0] #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_domain_detail(params = {}, options = {})
        req = build_request(:get_domain_detail, params)
        req.send_request(options)
      end

      # This operation returns the current status of an operation that is not
      # completed.
      # @option params [required, String] :operation_id
      #   The identifier for the operation for which you want to get the status.
      #   Amazon Route 53 returned the identifier in the response to the
      #   original request.
      #
      #   Type: String
      #
      #   Default: None
      #
      #   Required: Yes
      # @return [Types::GetOperationDetailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetOperationDetailResponse#operation_id #OperationId} => String
      #   * {Types::GetOperationDetailResponse#status #Status} => String
      #   * {Types::GetOperationDetailResponse#message #Message} => String
      #   * {Types::GetOperationDetailResponse#domain_name #DomainName} => String
      #   * {Types::GetOperationDetailResponse#type #Type} => String
      #   * {Types::GetOperationDetailResponse#submitted_date #SubmittedDate} => Time
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_operation_detail({
      #     operation_id: "OperationId", # required
      #   })
      #
      # @example Response structure
      #   resp.operation_id #=> String
      #   resp.status #=> String, one of "SUBMITTED", "IN_PROGRESS", "ERROR", "SUCCESSFUL", "FAILED"
      #   resp.message #=> String
      #   resp.domain_name #=> String
      #   resp.type #=> String, one of "REGISTER_DOMAIN", "DELETE_DOMAIN", "TRANSFER_IN_DOMAIN", "UPDATE_DOMAIN_CONTACT", "UPDATE_NAMESERVER", "CHANGE_PRIVACY_PROTECTION", "DOMAIN_LOCK"
      #   resp.submitted_date #=> Time
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_operation_detail(params = {}, options = {})
        req = build_request(:get_operation_detail, params)
        req.send_request(options)
      end

      # This operation returns all the domain names registered with Amazon
      # Route 53 for the current AWS account.
      # @option params [String] :marker
      #   For an initial request for a list of domains, omit this element. If
      #   the number of domains that are associated with the current AWS account
      #   is greater than the value that you specified for `MaxItems`, you can
      #   use `Marker` to return additional domains. Get the value of
      #   `NextPageMarker` from the previous response, and submit another
      #   request that includes the value of `NextPageMarker` in the `Marker`
      #   element.
      #
      #   Type: String
      #
      #   Default: None
      #
      #   Constraints: The marker must match the value specified in the previous
      #   request.
      #
      #   Required: No
      # @option params [Integer] :max_items
      #   Number of domains to be returned.
      #
      #   Type: Integer
      #
      #   Default: 20
      #
      #   Constraints: A numeral between 1 and 100.
      #
      #   Required: No
      # @return [Types::ListDomainsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListDomainsResponse#domains #Domains} => Array&lt;Types::DomainSummary&gt;
      #   * {Types::ListDomainsResponse#next_page_marker #NextPageMarker} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_domains({
      #     marker: "PageMarker",
      #     max_items: 1,
      #   })
      #
      # @example Response structure
      #   resp.domains #=> Array
      #   resp.domains[0].domain_name #=> String
      #   resp.domains[0].auto_renew #=> Boolean
      #   resp.domains[0].transfer_lock #=> Boolean
      #   resp.domains[0].expiry #=> Time
      #   resp.next_page_marker #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_domains(params = {}, options = {})
        req = build_request(:list_domains, params)
        req.send_request(options)
      end

      # This operation returns the operation IDs of operations that are not
      # yet complete.
      # @option params [String] :marker
      #   For an initial request for a list of operations, omit this element. If
      #   the number of operations that are not yet complete is greater than the
      #   value that you specified for `MaxItems`, you can use `Marker` to
      #   return additional operations. Get the value of `NextPageMarker` from
      #   the previous response, and submit another request that includes the
      #   value of `NextPageMarker` in the `Marker` element.
      #
      #   Type: String
      #
      #   Default: None
      #
      #   Required: No
      # @option params [Integer] :max_items
      #   Number of domains to be returned.
      #
      #   Type: Integer
      #
      #   Default: 20
      #
      #   Constraints: A value between 1 and 100.
      #
      #   Required: No
      # @return [Types::ListOperationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListOperationsResponse#operations #Operations} => Array&lt;Types::OperationSummary&gt;
      #   * {Types::ListOperationsResponse#next_page_marker #NextPageMarker} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_operations({
      #     marker: "PageMarker",
      #     max_items: 1,
      #   })
      #
      # @example Response structure
      #   resp.operations #=> Array
      #   resp.operations[0].operation_id #=> String
      #   resp.operations[0].status #=> String, one of "SUBMITTED", "IN_PROGRESS", "ERROR", "SUCCESSFUL", "FAILED"
      #   resp.operations[0].type #=> String, one of "REGISTER_DOMAIN", "DELETE_DOMAIN", "TRANSFER_IN_DOMAIN", "UPDATE_DOMAIN_CONTACT", "UPDATE_NAMESERVER", "CHANGE_PRIVACY_PROTECTION", "DOMAIN_LOCK"
      #   resp.operations[0].submitted_date #=> Time
      #   resp.next_page_marker #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_operations(params = {}, options = {})
        req = build_request(:list_operations, params)
        req.send_request(options)
      end

      # This operation returns all of the tags that are associated with the
      # specified domain.
      #
      # All tag operations are eventually consistent; subsequent operations
      # may not immediately represent all issued operations.
      # @option params [required, String] :domain_name
      #   The domain for which you want to get a list of tags.
      # @return [Types::ListTagsForDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListTagsForDomainResponse#tag_list #TagList} => Array&lt;Types::Tag&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_tags_for_domain({
      #     domain_name: "DomainName", # required
      #   })
      #
      # @example Response structure
      #   resp.tag_list #=> Array
      #   resp.tag_list[0].key #=> String
      #   resp.tag_list[0].value #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_tags_for_domain(params = {}, options = {})
        req = build_request(:list_tags_for_domain, params)
        req.send_request(options)
      end

      # This operation registers a domain. Domains are registered by the AWS
      # registrar partner, Gandi. For some top-level domains (TLDs), this
      # operation requires extra parameters.
      #
      # When you register a domain, Amazon Route 53 does the following:
      #
      # * Creates a Amazon Route 53 hosted zone that has the same name as the
      #   domain. Amazon Route 53 assigns four name servers to your hosted
      #   zone and automatically updates your domain registration with the
      #   names of these name servers.
      # * Enables autorenew, so your domain registration will renew
      #   automatically each year. We\'ll notify you in advance of the renewal
      #   date so you can choose whether to renew the registration.
      # * Optionally enables privacy protection, so WHOIS queries return
      #   contact information for our registrar partner, Gandi, instead of the
      #   information you entered for registrant, admin, and tech contacts.
      # * If registration is successful, returns an operation ID that you can
      #   use to track the progress and completion of the action. If the
      #   request is not completed successfully, the domain registrant is
      #   notified by email.
      # * Charges your AWS account an amount based on the top-level domain.
      #   For more information, see [Amazon Route 53 Pricing][1].
      #
      #
      #
      # [1]: http://aws.amazon.com/route53/pricing/
      # @option params [required, String] :domain_name
      #   The name of a domain.
      #
      #   Type: String
      #
      #   Default: None
      #
      #   Constraints: The domain name can contain only the letters a through z,
      #   the numbers 0 through 9, and hyphen (-). Internationalized Domain
      #   Names are not supported.
      #
      #   Required: Yes
      # @option params [String] :idn_lang_code
      #   Reserved for future use.
      # @option params [required, Integer] :duration_in_years
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
      # @option params [Boolean] :auto_renew
      #   Indicates whether the domain will be automatically renewed (`true`) or
      #   not (`false`). Autorenewal only takes effect after the account is
      #   charged.
      #
      #   Type: Boolean
      #
      #   Valid values: `true` \| `false`
      #
      #   Default: `true`
      #
      #   Required: No
      # @option params [required, Types::ContactDetail] :admin_contact
      #   Provides detailed contact information.
      #
      #   Type: Complex
      #
      #   Children: `FirstName`, `MiddleName`, `LastName`, `ContactType`,
      #   `OrganizationName`, `AddressLine1`, `AddressLine2`, `City`, `State`,
      #   `CountryCode`, `ZipCode`, `PhoneNumber`, `Email`, `Fax`, `ExtraParams`
      #
      #   Required: Yes
      # @option params [required, Types::ContactDetail] :registrant_contact
      #   Provides detailed contact information.
      #
      #   Type: Complex
      #
      #   Children: `FirstName`, `MiddleName`, `LastName`, `ContactType`,
      #   `OrganizationName`, `AddressLine1`, `AddressLine2`, `City`, `State`,
      #   `CountryCode`, `ZipCode`, `PhoneNumber`, `Email`, `Fax`, `ExtraParams`
      #
      #   Required: Yes
      # @option params [required, Types::ContactDetail] :tech_contact
      #   Provides detailed contact information.
      #
      #   Type: Complex
      #
      #   Children: `FirstName`, `MiddleName`, `LastName`, `ContactType`,
      #   `OrganizationName`, `AddressLine1`, `AddressLine2`, `City`, `State`,
      #   `CountryCode`, `ZipCode`, `PhoneNumber`, `Email`, `Fax`, `ExtraParams`
      #
      #   Required: Yes
      # @option params [Boolean] :privacy_protect_admin_contact
      #   Whether you want to conceal contact information from WHOIS queries. If
      #   you specify true, WHOIS (\"who is\") queries will return contact
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
      # @option params [Boolean] :privacy_protect_registrant_contact
      #   Whether you want to conceal contact information from WHOIS queries. If
      #   you specify true, WHOIS (\"who is\") queries will return contact
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
      # @option params [Boolean] :privacy_protect_tech_contact
      #   Whether you want to conceal contact information from WHOIS queries. If
      #   you specify true, WHOIS (\"who is\") queries will return contact
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
      # @return [Types::RegisterDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::RegisterDomainResponse#operation_id #OperationId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.register_domain({
      #     domain_name: "DomainName", # required
      #     idn_lang_code: "LangCode",
      #     duration_in_years: 1, # required
      #     auto_renew: false,
      #     admin_contact: { # required
      #       first_name: "ContactName",
      #       last_name: "ContactName",
      #       contact_type: "PERSON", # accepts PERSON, COMPANY, ASSOCIATION, PUBLIC_BODY, RESELLER
      #       organization_name: "ContactName",
      #       address_line_1: "AddressLine",
      #       address_line_2: "AddressLine",
      #       city: "City",
      #       state: "State",
      #       country_code: "AD", # accepts AD, AE, AF, AG, AI, AL, AM, AN, AO, AQ, AR, AS, AT, AU, AW, AZ, BA, BB, BD, BE, BF, BG, BH, BI, BJ, BL, BM, BN, BO, BR, BS, BT, BW, BY, BZ, CA, CC, CD, CF, CG, CH, CI, CK, CL, CM, CN, CO, CR, CU, CV, CX, CY, CZ, DE, DJ, DK, DM, DO, DZ, EC, EE, EG, ER, ES, ET, FI, FJ, FK, FM, FO, FR, GA, GB, GD, GE, GH, GI, GL, GM, GN, GQ, GR, GT, GU, GW, GY, HK, HN, HR, HT, HU, ID, IE, IL, IM, IN, IQ, IR, IS, IT, JM, JO, JP, KE, KG, KH, KI, KM, KN, KP, KR, KW, KY, KZ, LA, LB, LC, LI, LK, LR, LS, LT, LU, LV, LY, MA, MC, MD, ME, MF, MG, MH, MK, ML, MM, MN, MO, MP, MR, MS, MT, MU, MV, MW, MX, MY, MZ, NA, NC, NE, NG, NI, NL, NO, NP, NR, NU, NZ, OM, PA, PE, PF, PG, PH, PK, PL, PM, PN, PR, PT, PW, PY, QA, RO, RS, RU, RW, SA, SB, SC, SD, SE, SG, SH, SI, SK, SL, SM, SN, SO, SR, ST, SV, SY, SZ, TC, TD, TG, TH, TJ, TK, TL, TM, TN, TO, TR, TT, TV, TW, TZ, UA, UG, US, UY, UZ, VA, VC, VE, VG, VI, VN, VU, WF, WS, YE, YT, ZA, ZM, ZW
      #       zip_code: "ZipCode",
      #       phone_number: "ContactNumber",
      #       email: "Email",
      #       fax: "ContactNumber",
      #       extra_params: [
      #         {
      #           name: "DUNS_NUMBER", # required, accepts DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, IT_PIN, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER
      #           value: "ExtraParamValue", # required
      #         },
      #       ],
      #     },
      #     registrant_contact: { # required
      #       first_name: "ContactName",
      #       last_name: "ContactName",
      #       contact_type: "PERSON", # accepts PERSON, COMPANY, ASSOCIATION, PUBLIC_BODY, RESELLER
      #       organization_name: "ContactName",
      #       address_line_1: "AddressLine",
      #       address_line_2: "AddressLine",
      #       city: "City",
      #       state: "State",
      #       country_code: "AD", # accepts AD, AE, AF, AG, AI, AL, AM, AN, AO, AQ, AR, AS, AT, AU, AW, AZ, BA, BB, BD, BE, BF, BG, BH, BI, BJ, BL, BM, BN, BO, BR, BS, BT, BW, BY, BZ, CA, CC, CD, CF, CG, CH, CI, CK, CL, CM, CN, CO, CR, CU, CV, CX, CY, CZ, DE, DJ, DK, DM, DO, DZ, EC, EE, EG, ER, ES, ET, FI, FJ, FK, FM, FO, FR, GA, GB, GD, GE, GH, GI, GL, GM, GN, GQ, GR, GT, GU, GW, GY, HK, HN, HR, HT, HU, ID, IE, IL, IM, IN, IQ, IR, IS, IT, JM, JO, JP, KE, KG, KH, KI, KM, KN, KP, KR, KW, KY, KZ, LA, LB, LC, LI, LK, LR, LS, LT, LU, LV, LY, MA, MC, MD, ME, MF, MG, MH, MK, ML, MM, MN, MO, MP, MR, MS, MT, MU, MV, MW, MX, MY, MZ, NA, NC, NE, NG, NI, NL, NO, NP, NR, NU, NZ, OM, PA, PE, PF, PG, PH, PK, PL, PM, PN, PR, PT, PW, PY, QA, RO, RS, RU, RW, SA, SB, SC, SD, SE, SG, SH, SI, SK, SL, SM, SN, SO, SR, ST, SV, SY, SZ, TC, TD, TG, TH, TJ, TK, TL, TM, TN, TO, TR, TT, TV, TW, TZ, UA, UG, US, UY, UZ, VA, VC, VE, VG, VI, VN, VU, WF, WS, YE, YT, ZA, ZM, ZW
      #       zip_code: "ZipCode",
      #       phone_number: "ContactNumber",
      #       email: "Email",
      #       fax: "ContactNumber",
      #       extra_params: [
      #         {
      #           name: "DUNS_NUMBER", # required, accepts DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, IT_PIN, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER
      #           value: "ExtraParamValue", # required
      #         },
      #       ],
      #     },
      #     tech_contact: { # required
      #       first_name: "ContactName",
      #       last_name: "ContactName",
      #       contact_type: "PERSON", # accepts PERSON, COMPANY, ASSOCIATION, PUBLIC_BODY, RESELLER
      #       organization_name: "ContactName",
      #       address_line_1: "AddressLine",
      #       address_line_2: "AddressLine",
      #       city: "City",
      #       state: "State",
      #       country_code: "AD", # accepts AD, AE, AF, AG, AI, AL, AM, AN, AO, AQ, AR, AS, AT, AU, AW, AZ, BA, BB, BD, BE, BF, BG, BH, BI, BJ, BL, BM, BN, BO, BR, BS, BT, BW, BY, BZ, CA, CC, CD, CF, CG, CH, CI, CK, CL, CM, CN, CO, CR, CU, CV, CX, CY, CZ, DE, DJ, DK, DM, DO, DZ, EC, EE, EG, ER, ES, ET, FI, FJ, FK, FM, FO, FR, GA, GB, GD, GE, GH, GI, GL, GM, GN, GQ, GR, GT, GU, GW, GY, HK, HN, HR, HT, HU, ID, IE, IL, IM, IN, IQ, IR, IS, IT, JM, JO, JP, KE, KG, KH, KI, KM, KN, KP, KR, KW, KY, KZ, LA, LB, LC, LI, LK, LR, LS, LT, LU, LV, LY, MA, MC, MD, ME, MF, MG, MH, MK, ML, MM, MN, MO, MP, MR, MS, MT, MU, MV, MW, MX, MY, MZ, NA, NC, NE, NG, NI, NL, NO, NP, NR, NU, NZ, OM, PA, PE, PF, PG, PH, PK, PL, PM, PN, PR, PT, PW, PY, QA, RO, RS, RU, RW, SA, SB, SC, SD, SE, SG, SH, SI, SK, SL, SM, SN, SO, SR, ST, SV, SY, SZ, TC, TD, TG, TH, TJ, TK, TL, TM, TN, TO, TR, TT, TV, TW, TZ, UA, UG, US, UY, UZ, VA, VC, VE, VG, VI, VN, VU, WF, WS, YE, YT, ZA, ZM, ZW
      #       zip_code: "ZipCode",
      #       phone_number: "ContactNumber",
      #       email: "Email",
      #       fax: "ContactNumber",
      #       extra_params: [
      #         {
      #           name: "DUNS_NUMBER", # required, accepts DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, IT_PIN, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER
      #           value: "ExtraParamValue", # required
      #         },
      #       ],
      #     },
      #     privacy_protect_admin_contact: false,
      #     privacy_protect_registrant_contact: false,
      #     privacy_protect_tech_contact: false,
      #   })
      #
      # @example Response structure
      #   resp.operation_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def register_domain(params = {}, options = {})
        req = build_request(:register_domain, params)
        req.send_request(options)
      end

      # For operations that require confirmation that the email address for
      # the registrant contact is valid, such as registering a new domain,
      # this operation resends the confirmation email to the current email
      # address for the registrant contact.
      # @option params [String] :domain_name
      #   The name of the domain for which you want Amazon Route 53 to resend a
      #   confirmation email to the registrant contact.
      #
      #   Type: String
      #
      #   Default: None
      #
      #   Required: Yes
      # @return [Types::ResendContactReachabilityEmailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ResendContactReachabilityEmailResponse#domain_name #domainName} => String
      #   * {Types::ResendContactReachabilityEmailResponse#email_address #emailAddress} => String
      #   * {Types::ResendContactReachabilityEmailResponse#is_already_verified #isAlreadyVerified} => Boolean
      #
      # @example Request syntax with placeholder values
      #   resp = client.resend_contact_reachability_email({
      #     domain_name: "DomainName",
      #   })
      #
      # @example Response structure
      #   resp.domain_name #=> String
      #   resp.email_address #=> String
      #   resp.is_already_verified #=> Boolean
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def resend_contact_reachability_email(params = {}, options = {})
        req = build_request(:resend_contact_reachability_email, params)
        req.send_request(options)
      end

      # This operation returns the AuthCode for the domain. To transfer a
      # domain to another registrar, you provide this value to the new
      # registrar.
      # @option params [required, String] :domain_name
      #   The name of a domain.
      #
      #   Type: String
      #
      #   Default: None
      #
      #   Constraints: The domain name can contain only the letters a through z,
      #   the numbers 0 through 9, and hyphen (-). Internationalized Domain
      #   Names are not supported.
      #
      #   Required: Yes
      # @return [Types::RetrieveDomainAuthCodeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::RetrieveDomainAuthCodeResponse#auth_code #AuthCode} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.retrieve_domain_auth_code({
      #     domain_name: "DomainName", # required
      #   })
      #
      # @example Response structure
      #   resp.auth_code #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def retrieve_domain_auth_code(params = {}, options = {})
        req = build_request(:retrieve_domain_auth_code, params)
        req.send_request(options)
      end

      # This operation transfers a domain from another registrar to Amazon
      # Route 53. When the transfer is complete, the domain is registered with
      # the AWS registrar partner, Gandi.
      #
      # For transfer requirements, a detailed procedure, and information about
      # viewing the status of a domain transfer, see [Transferring
      # Registration for a Domain to Amazon Route 53][1] in the Amazon Route
      # 53 Developer Guide.
      #
      # If the registrar for your domain is also the DNS service provider for
      # the domain, we highly recommend that you consider transferring your
      # DNS service to Amazon Route 53 or to another DNS service provider
      # before you transfer your registration. Some registrars provide free
      # DNS service when you purchase a domain registration. When you transfer
      # the registration, the previous registrar will not renew your domain
      # registration and could end your DNS service at any time.
      #
      # <note>Caution! If the registrar for your domain is also the DNS service provider for the domain and you don't transfer DNS service to another provider, your website, email, and the web applications associated with the domain might become unavailable.</note>
      #
      # If the transfer is successful, this method returns an operation ID
      # that you can use to track the progress and completion of the action.
      # If the transfer doesn\'t complete successfully, the domain registrant
      # will be notified by email.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-transfer-to-route-53.html
      # @option params [required, String] :domain_name
      #   The name of a domain.
      #
      #   Type: String
      #
      #   Default: None
      #
      #   Constraints: The domain name can contain only the letters a through z,
      #   the numbers 0 through 9, and hyphen (-). Internationalized Domain
      #   Names are not supported.
      #
      #   Required: Yes
      # @option params [String] :idn_lang_code
      #   Reserved for future use.
      # @option params [required, Integer] :duration_in_years
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
      # @option params [Array<Types::Nameserver>] :nameservers
      #   Contains details for the host and glue IP addresses.
      #
      #   Type: Complex
      #
      #   Children: `GlueIps`, `Name`
      #
      #   Required: No
      # @option params [String] :auth_code
      #   The authorization code for the domain. You get this value from the
      #   current registrar.
      #
      #   Type: String
      #
      #   Required: Yes
      # @option params [Boolean] :auto_renew
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
      # @option params [required, Types::ContactDetail] :admin_contact
      #   Provides detailed contact information.
      #
      #   Type: Complex
      #
      #   Children: `FirstName`, `MiddleName`, `LastName`, `ContactType`,
      #   `OrganizationName`, `AddressLine1`, `AddressLine2`, `City`, `State`,
      #   `CountryCode`, `ZipCode`, `PhoneNumber`, `Email`, `Fax`, `ExtraParams`
      #
      #   Required: Yes
      # @option params [required, Types::ContactDetail] :registrant_contact
      #   Provides detailed contact information.
      #
      #   Type: Complex
      #
      #   Children: `FirstName`, `MiddleName`, `LastName`, `ContactType`,
      #   `OrganizationName`, `AddressLine1`, `AddressLine2`, `City`, `State`,
      #   `CountryCode`, `ZipCode`, `PhoneNumber`, `Email`, `Fax`, `ExtraParams`
      #
      #   Required: Yes
      # @option params [required, Types::ContactDetail] :tech_contact
      #   Provides detailed contact information.
      #
      #   Type: Complex
      #
      #   Children: `FirstName`, `MiddleName`, `LastName`, `ContactType`,
      #   `OrganizationName`, `AddressLine1`, `AddressLine2`, `City`, `State`,
      #   `CountryCode`, `ZipCode`, `PhoneNumber`, `Email`, `Fax`, `ExtraParams`
      #
      #   Required: Yes
      # @option params [Boolean] :privacy_protect_admin_contact
      #   Whether you want to conceal contact information from WHOIS queries. If
      #   you specify true, WHOIS (\"who is\") queries will return contact
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
      # @option params [Boolean] :privacy_protect_registrant_contact
      #   Whether you want to conceal contact information from WHOIS queries. If
      #   you specify true, WHOIS (\"who is\") queries will return contact
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
      # @option params [Boolean] :privacy_protect_tech_contact
      #   Whether you want to conceal contact information from WHOIS queries. If
      #   you specify true, WHOIS (\"who is\") queries will return contact
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
      # @return [Types::TransferDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::TransferDomainResponse#operation_id #OperationId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.transfer_domain({
      #     domain_name: "DomainName", # required
      #     idn_lang_code: "LangCode",
      #     duration_in_years: 1, # required
      #     nameservers: [
      #       {
      #         name: "HostName", # required
      #         glue_ips: ["GlueIp"],
      #       },
      #     ],
      #     auth_code: "DomainAuthCode",
      #     auto_renew: false,
      #     admin_contact: { # required
      #       first_name: "ContactName",
      #       last_name: "ContactName",
      #       contact_type: "PERSON", # accepts PERSON, COMPANY, ASSOCIATION, PUBLIC_BODY, RESELLER
      #       organization_name: "ContactName",
      #       address_line_1: "AddressLine",
      #       address_line_2: "AddressLine",
      #       city: "City",
      #       state: "State",
      #       country_code: "AD", # accepts AD, AE, AF, AG, AI, AL, AM, AN, AO, AQ, AR, AS, AT, AU, AW, AZ, BA, BB, BD, BE, BF, BG, BH, BI, BJ, BL, BM, BN, BO, BR, BS, BT, BW, BY, BZ, CA, CC, CD, CF, CG, CH, CI, CK, CL, CM, CN, CO, CR, CU, CV, CX, CY, CZ, DE, DJ, DK, DM, DO, DZ, EC, EE, EG, ER, ES, ET, FI, FJ, FK, FM, FO, FR, GA, GB, GD, GE, GH, GI, GL, GM, GN, GQ, GR, GT, GU, GW, GY, HK, HN, HR, HT, HU, ID, IE, IL, IM, IN, IQ, IR, IS, IT, JM, JO, JP, KE, KG, KH, KI, KM, KN, KP, KR, KW, KY, KZ, LA, LB, LC, LI, LK, LR, LS, LT, LU, LV, LY, MA, MC, MD, ME, MF, MG, MH, MK, ML, MM, MN, MO, MP, MR, MS, MT, MU, MV, MW, MX, MY, MZ, NA, NC, NE, NG, NI, NL, NO, NP, NR, NU, NZ, OM, PA, PE, PF, PG, PH, PK, PL, PM, PN, PR, PT, PW, PY, QA, RO, RS, RU, RW, SA, SB, SC, SD, SE, SG, SH, SI, SK, SL, SM, SN, SO, SR, ST, SV, SY, SZ, TC, TD, TG, TH, TJ, TK, TL, TM, TN, TO, TR, TT, TV, TW, TZ, UA, UG, US, UY, UZ, VA, VC, VE, VG, VI, VN, VU, WF, WS, YE, YT, ZA, ZM, ZW
      #       zip_code: "ZipCode",
      #       phone_number: "ContactNumber",
      #       email: "Email",
      #       fax: "ContactNumber",
      #       extra_params: [
      #         {
      #           name: "DUNS_NUMBER", # required, accepts DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, IT_PIN, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER
      #           value: "ExtraParamValue", # required
      #         },
      #       ],
      #     },
      #     registrant_contact: { # required
      #       first_name: "ContactName",
      #       last_name: "ContactName",
      #       contact_type: "PERSON", # accepts PERSON, COMPANY, ASSOCIATION, PUBLIC_BODY, RESELLER
      #       organization_name: "ContactName",
      #       address_line_1: "AddressLine",
      #       address_line_2: "AddressLine",
      #       city: "City",
      #       state: "State",
      #       country_code: "AD", # accepts AD, AE, AF, AG, AI, AL, AM, AN, AO, AQ, AR, AS, AT, AU, AW, AZ, BA, BB, BD, BE, BF, BG, BH, BI, BJ, BL, BM, BN, BO, BR, BS, BT, BW, BY, BZ, CA, CC, CD, CF, CG, CH, CI, CK, CL, CM, CN, CO, CR, CU, CV, CX, CY, CZ, DE, DJ, DK, DM, DO, DZ, EC, EE, EG, ER, ES, ET, FI, FJ, FK, FM, FO, FR, GA, GB, GD, GE, GH, GI, GL, GM, GN, GQ, GR, GT, GU, GW, GY, HK, HN, HR, HT, HU, ID, IE, IL, IM, IN, IQ, IR, IS, IT, JM, JO, JP, KE, KG, KH, KI, KM, KN, KP, KR, KW, KY, KZ, LA, LB, LC, LI, LK, LR, LS, LT, LU, LV, LY, MA, MC, MD, ME, MF, MG, MH, MK, ML, MM, MN, MO, MP, MR, MS, MT, MU, MV, MW, MX, MY, MZ, NA, NC, NE, NG, NI, NL, NO, NP, NR, NU, NZ, OM, PA, PE, PF, PG, PH, PK, PL, PM, PN, PR, PT, PW, PY, QA, RO, RS, RU, RW, SA, SB, SC, SD, SE, SG, SH, SI, SK, SL, SM, SN, SO, SR, ST, SV, SY, SZ, TC, TD, TG, TH, TJ, TK, TL, TM, TN, TO, TR, TT, TV, TW, TZ, UA, UG, US, UY, UZ, VA, VC, VE, VG, VI, VN, VU, WF, WS, YE, YT, ZA, ZM, ZW
      #       zip_code: "ZipCode",
      #       phone_number: "ContactNumber",
      #       email: "Email",
      #       fax: "ContactNumber",
      #       extra_params: [
      #         {
      #           name: "DUNS_NUMBER", # required, accepts DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, IT_PIN, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER
      #           value: "ExtraParamValue", # required
      #         },
      #       ],
      #     },
      #     tech_contact: { # required
      #       first_name: "ContactName",
      #       last_name: "ContactName",
      #       contact_type: "PERSON", # accepts PERSON, COMPANY, ASSOCIATION, PUBLIC_BODY, RESELLER
      #       organization_name: "ContactName",
      #       address_line_1: "AddressLine",
      #       address_line_2: "AddressLine",
      #       city: "City",
      #       state: "State",
      #       country_code: "AD", # accepts AD, AE, AF, AG, AI, AL, AM, AN, AO, AQ, AR, AS, AT, AU, AW, AZ, BA, BB, BD, BE, BF, BG, BH, BI, BJ, BL, BM, BN, BO, BR, BS, BT, BW, BY, BZ, CA, CC, CD, CF, CG, CH, CI, CK, CL, CM, CN, CO, CR, CU, CV, CX, CY, CZ, DE, DJ, DK, DM, DO, DZ, EC, EE, EG, ER, ES, ET, FI, FJ, FK, FM, FO, FR, GA, GB, GD, GE, GH, GI, GL, GM, GN, GQ, GR, GT, GU, GW, GY, HK, HN, HR, HT, HU, ID, IE, IL, IM, IN, IQ, IR, IS, IT, JM, JO, JP, KE, KG, KH, KI, KM, KN, KP, KR, KW, KY, KZ, LA, LB, LC, LI, LK, LR, LS, LT, LU, LV, LY, MA, MC, MD, ME, MF, MG, MH, MK, ML, MM, MN, MO, MP, MR, MS, MT, MU, MV, MW, MX, MY, MZ, NA, NC, NE, NG, NI, NL, NO, NP, NR, NU, NZ, OM, PA, PE, PF, PG, PH, PK, PL, PM, PN, PR, PT, PW, PY, QA, RO, RS, RU, RW, SA, SB, SC, SD, SE, SG, SH, SI, SK, SL, SM, SN, SO, SR, ST, SV, SY, SZ, TC, TD, TG, TH, TJ, TK, TL, TM, TN, TO, TR, TT, TV, TW, TZ, UA, UG, US, UY, UZ, VA, VC, VE, VG, VI, VN, VU, WF, WS, YE, YT, ZA, ZM, ZW
      #       zip_code: "ZipCode",
      #       phone_number: "ContactNumber",
      #       email: "Email",
      #       fax: "ContactNumber",
      #       extra_params: [
      #         {
      #           name: "DUNS_NUMBER", # required, accepts DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, IT_PIN, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER
      #           value: "ExtraParamValue", # required
      #         },
      #       ],
      #     },
      #     privacy_protect_admin_contact: false,
      #     privacy_protect_registrant_contact: false,
      #     privacy_protect_tech_contact: false,
      #   })
      #
      # @example Response structure
      #   resp.operation_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def transfer_domain(params = {}, options = {})
        req = build_request(:transfer_domain, params)
        req.send_request(options)
      end

      # This operation updates the contact information for a particular
      # domain. Information for at least one contact (registrant,
      # administrator, or technical) must be supplied for update.
      #
      # If the update is successful, this method returns an operation ID that
      # you can use to track the progress and completion of the action. If the
      # request is not completed successfully, the domain registrant will be
      # notified by email.
      # @option params [required, String] :domain_name
      #   The name of a domain.
      #
      #   Type: String
      #
      #   Default: None
      #
      #   Constraints: The domain name can contain only the letters a through z,
      #   the numbers 0 through 9, and hyphen (-). Internationalized Domain
      #   Names are not supported.
      #
      #   Required: Yes
      # @option params [Types::ContactDetail] :admin_contact
      #   Provides detailed contact information.
      #
      #   Type: Complex
      #
      #   Children: `FirstName`, `MiddleName`, `LastName`, `ContactType`,
      #   `OrganizationName`, `AddressLine1`, `AddressLine2`, `City`, `State`,
      #   `CountryCode`, `ZipCode`, `PhoneNumber`, `Email`, `Fax`, `ExtraParams`
      #
      #   Required: Yes
      # @option params [Types::ContactDetail] :registrant_contact
      #   Provides detailed contact information.
      #
      #   Type: Complex
      #
      #   Children: `FirstName`, `MiddleName`, `LastName`, `ContactType`,
      #   `OrganizationName`, `AddressLine1`, `AddressLine2`, `City`, `State`,
      #   `CountryCode`, `ZipCode`, `PhoneNumber`, `Email`, `Fax`, `ExtraParams`
      #
      #   Required: Yes
      # @option params [Types::ContactDetail] :tech_contact
      #   Provides detailed contact information.
      #
      #   Type: Complex
      #
      #   Children: `FirstName`, `MiddleName`, `LastName`, `ContactType`,
      #   `OrganizationName`, `AddressLine1`, `AddressLine2`, `City`, `State`,
      #   `CountryCode`, `ZipCode`, `PhoneNumber`, `Email`, `Fax`, `ExtraParams`
      #
      #   Required: Yes
      # @return [Types::UpdateDomainContactResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::UpdateDomainContactResponse#operation_id #OperationId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_domain_contact({
      #     domain_name: "DomainName", # required
      #     admin_contact: {
      #       first_name: "ContactName",
      #       last_name: "ContactName",
      #       contact_type: "PERSON", # accepts PERSON, COMPANY, ASSOCIATION, PUBLIC_BODY, RESELLER
      #       organization_name: "ContactName",
      #       address_line_1: "AddressLine",
      #       address_line_2: "AddressLine",
      #       city: "City",
      #       state: "State",
      #       country_code: "AD", # accepts AD, AE, AF, AG, AI, AL, AM, AN, AO, AQ, AR, AS, AT, AU, AW, AZ, BA, BB, BD, BE, BF, BG, BH, BI, BJ, BL, BM, BN, BO, BR, BS, BT, BW, BY, BZ, CA, CC, CD, CF, CG, CH, CI, CK, CL, CM, CN, CO, CR, CU, CV, CX, CY, CZ, DE, DJ, DK, DM, DO, DZ, EC, EE, EG, ER, ES, ET, FI, FJ, FK, FM, FO, FR, GA, GB, GD, GE, GH, GI, GL, GM, GN, GQ, GR, GT, GU, GW, GY, HK, HN, HR, HT, HU, ID, IE, IL, IM, IN, IQ, IR, IS, IT, JM, JO, JP, KE, KG, KH, KI, KM, KN, KP, KR, KW, KY, KZ, LA, LB, LC, LI, LK, LR, LS, LT, LU, LV, LY, MA, MC, MD, ME, MF, MG, MH, MK, ML, MM, MN, MO, MP, MR, MS, MT, MU, MV, MW, MX, MY, MZ, NA, NC, NE, NG, NI, NL, NO, NP, NR, NU, NZ, OM, PA, PE, PF, PG, PH, PK, PL, PM, PN, PR, PT, PW, PY, QA, RO, RS, RU, RW, SA, SB, SC, SD, SE, SG, SH, SI, SK, SL, SM, SN, SO, SR, ST, SV, SY, SZ, TC, TD, TG, TH, TJ, TK, TL, TM, TN, TO, TR, TT, TV, TW, TZ, UA, UG, US, UY, UZ, VA, VC, VE, VG, VI, VN, VU, WF, WS, YE, YT, ZA, ZM, ZW
      #       zip_code: "ZipCode",
      #       phone_number: "ContactNumber",
      #       email: "Email",
      #       fax: "ContactNumber",
      #       extra_params: [
      #         {
      #           name: "DUNS_NUMBER", # required, accepts DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, IT_PIN, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER
      #           value: "ExtraParamValue", # required
      #         },
      #       ],
      #     },
      #     registrant_contact: {
      #       first_name: "ContactName",
      #       last_name: "ContactName",
      #       contact_type: "PERSON", # accepts PERSON, COMPANY, ASSOCIATION, PUBLIC_BODY, RESELLER
      #       organization_name: "ContactName",
      #       address_line_1: "AddressLine",
      #       address_line_2: "AddressLine",
      #       city: "City",
      #       state: "State",
      #       country_code: "AD", # accepts AD, AE, AF, AG, AI, AL, AM, AN, AO, AQ, AR, AS, AT, AU, AW, AZ, BA, BB, BD, BE, BF, BG, BH, BI, BJ, BL, BM, BN, BO, BR, BS, BT, BW, BY, BZ, CA, CC, CD, CF, CG, CH, CI, CK, CL, CM, CN, CO, CR, CU, CV, CX, CY, CZ, DE, DJ, DK, DM, DO, DZ, EC, EE, EG, ER, ES, ET, FI, FJ, FK, FM, FO, FR, GA, GB, GD, GE, GH, GI, GL, GM, GN, GQ, GR, GT, GU, GW, GY, HK, HN, HR, HT, HU, ID, IE, IL, IM, IN, IQ, IR, IS, IT, JM, JO, JP, KE, KG, KH, KI, KM, KN, KP, KR, KW, KY, KZ, LA, LB, LC, LI, LK, LR, LS, LT, LU, LV, LY, MA, MC, MD, ME, MF, MG, MH, MK, ML, MM, MN, MO, MP, MR, MS, MT, MU, MV, MW, MX, MY, MZ, NA, NC, NE, NG, NI, NL, NO, NP, NR, NU, NZ, OM, PA, PE, PF, PG, PH, PK, PL, PM, PN, PR, PT, PW, PY, QA, RO, RS, RU, RW, SA, SB, SC, SD, SE, SG, SH, SI, SK, SL, SM, SN, SO, SR, ST, SV, SY, SZ, TC, TD, TG, TH, TJ, TK, TL, TM, TN, TO, TR, TT, TV, TW, TZ, UA, UG, US, UY, UZ, VA, VC, VE, VG, VI, VN, VU, WF, WS, YE, YT, ZA, ZM, ZW
      #       zip_code: "ZipCode",
      #       phone_number: "ContactNumber",
      #       email: "Email",
      #       fax: "ContactNumber",
      #       extra_params: [
      #         {
      #           name: "DUNS_NUMBER", # required, accepts DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, IT_PIN, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER
      #           value: "ExtraParamValue", # required
      #         },
      #       ],
      #     },
      #     tech_contact: {
      #       first_name: "ContactName",
      #       last_name: "ContactName",
      #       contact_type: "PERSON", # accepts PERSON, COMPANY, ASSOCIATION, PUBLIC_BODY, RESELLER
      #       organization_name: "ContactName",
      #       address_line_1: "AddressLine",
      #       address_line_2: "AddressLine",
      #       city: "City",
      #       state: "State",
      #       country_code: "AD", # accepts AD, AE, AF, AG, AI, AL, AM, AN, AO, AQ, AR, AS, AT, AU, AW, AZ, BA, BB, BD, BE, BF, BG, BH, BI, BJ, BL, BM, BN, BO, BR, BS, BT, BW, BY, BZ, CA, CC, CD, CF, CG, CH, CI, CK, CL, CM, CN, CO, CR, CU, CV, CX, CY, CZ, DE, DJ, DK, DM, DO, DZ, EC, EE, EG, ER, ES, ET, FI, FJ, FK, FM, FO, FR, GA, GB, GD, GE, GH, GI, GL, GM, GN, GQ, GR, GT, GU, GW, GY, HK, HN, HR, HT, HU, ID, IE, IL, IM, IN, IQ, IR, IS, IT, JM, JO, JP, KE, KG, KH, KI, KM, KN, KP, KR, KW, KY, KZ, LA, LB, LC, LI, LK, LR, LS, LT, LU, LV, LY, MA, MC, MD, ME, MF, MG, MH, MK, ML, MM, MN, MO, MP, MR, MS, MT, MU, MV, MW, MX, MY, MZ, NA, NC, NE, NG, NI, NL, NO, NP, NR, NU, NZ, OM, PA, PE, PF, PG, PH, PK, PL, PM, PN, PR, PT, PW, PY, QA, RO, RS, RU, RW, SA, SB, SC, SD, SE, SG, SH, SI, SK, SL, SM, SN, SO, SR, ST, SV, SY, SZ, TC, TD, TG, TH, TJ, TK, TL, TM, TN, TO, TR, TT, TV, TW, TZ, UA, UG, US, UY, UZ, VA, VC, VE, VG, VI, VN, VU, WF, WS, YE, YT, ZA, ZM, ZW
      #       zip_code: "ZipCode",
      #       phone_number: "ContactNumber",
      #       email: "Email",
      #       fax: "ContactNumber",
      #       extra_params: [
      #         {
      #           name: "DUNS_NUMBER", # required, accepts DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, IT_PIN, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER
      #           value: "ExtraParamValue", # required
      #         },
      #       ],
      #     },
      #   })
      #
      # @example Response structure
      #   resp.operation_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_domain_contact(params = {}, options = {})
        req = build_request(:update_domain_contact, params)
        req.send_request(options)
      end

      # This operation updates the specified domain contact\'s privacy
      # setting. When the privacy option is enabled, personal information such
      # as postal or email address is hidden from the results of a public
      # WHOIS query. The privacy services are provided by the AWS registrar,
      # Gandi. For more information, see the [Gandi privacy features][1].
      #
      # This operation only affects the privacy of the specified contact type
      # (registrant, administrator, or tech). Successful acceptance returns an
      # operation ID that you can use with GetOperationDetail to track the
      # progress and completion of the action. If the request is not completed
      # successfully, the domain registrant will be notified by email.
      #
      #
      #
      # [1]: http://www.gandi.net/domain/whois/?currency=USD&amp;amp;lang=en
      # @option params [required, String] :domain_name
      #   The name of a domain.
      #
      #   Type: String
      #
      #   Default: None
      #
      #   Constraints: The domain name can contain only the letters a through z,
      #   the numbers 0 through 9, and hyphen (-). Internationalized Domain
      #   Names are not supported.
      #
      #   Required: Yes
      # @option params [Boolean] :admin_privacy
      #   Whether you want to conceal contact information from WHOIS queries. If
      #   you specify true, WHOIS (\"who is\") queries will return contact
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
      # @option params [Boolean] :registrant_privacy
      #   Whether you want to conceal contact information from WHOIS queries. If
      #   you specify true, WHOIS (\"who is\") queries will return contact
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
      # @option params [Boolean] :tech_privacy
      #   Whether you want to conceal contact information from WHOIS queries. If
      #   you specify true, WHOIS (\"who is\") queries will return contact
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
      # @return [Types::UpdateDomainContactPrivacyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::UpdateDomainContactPrivacyResponse#operation_id #OperationId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_domain_contact_privacy({
      #     domain_name: "DomainName", # required
      #     admin_privacy: false,
      #     registrant_privacy: false,
      #     tech_privacy: false,
      #   })
      #
      # @example Response structure
      #   resp.operation_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_domain_contact_privacy(params = {}, options = {})
        req = build_request(:update_domain_contact_privacy, params)
        req.send_request(options)
      end

      # This operation replaces the current set of name servers for the domain
      # with the specified set of name servers. If you use Amazon Route 53 as
      # your DNS service, specify the four name servers in the delegation set
      # for the hosted zone for the domain.
      #
      # If successful, this operation returns an operation ID that you can use
      # to track the progress and completion of the action. If the request is
      # not completed successfully, the domain registrant will be notified by
      # email.
      # @option params [required, String] :domain_name
      #   The name of a domain.
      #
      #   Type: String
      #
      #   Default: None
      #
      #   Constraints: The domain name can contain only the letters a through z,
      #   the numbers 0 through 9, and hyphen (-). Internationalized Domain
      #   Names are not supported.
      #
      #   Required: Yes
      # @option params [String] :fi_auth_key
      #   The authorization key for .fi domains
      # @option params [required, Array<Types::Nameserver>] :nameservers
      #   A list of new name servers for the domain.
      #
      #   Type: Complex
      #
      #   Children: `Name`, `GlueIps`
      #
      #   Required: Yes
      # @return [Types::UpdateDomainNameserversResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::UpdateDomainNameserversResponse#operation_id #OperationId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_domain_nameservers({
      #     domain_name: "DomainName", # required
      #     fi_auth_key: "FIAuthKey",
      #     nameservers: [ # required
      #       {
      #         name: "HostName", # required
      #         glue_ips: ["GlueIp"],
      #       },
      #     ],
      #   })
      #
      # @example Response structure
      #   resp.operation_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_domain_nameservers(params = {}, options = {})
        req = build_request(:update_domain_nameservers, params)
        req.send_request(options)
      end

      # This operation adds or updates tags for a specified domain.
      #
      # All tag operations are eventually consistent; subsequent operations
      # may not immediately represent all issued operations.
      # @option params [required, String] :domain_name
      #   The domain for which you want to add or update tags.
      #
      #   The name of a domain.
      #
      #   Type: String
      #
      #   Default: None
      #
      #   Constraints: The domain name can contain only the letters a through z,
      #   the numbers 0 through 9, and hyphen (-). Hyphens are allowed only when
      #   they're surrounded by letters, numbers, or other hyphens. You can't
      #   specify a hyphen at the beginning or end of a label. To specify an
      #   Internationalized Domain Name, you must convert the name to Punycode.
      #
      #   Required: Yes
      # @option params [Array<Types::Tag>] :tags_to_update
      #   A list of the tag keys and values that you want to add or update. If
      #   you specify a key that already exists, the corresponding value will be
      #   replaced.
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
      #     Valid values: Unicode characters including alphanumeric, space, and
      #     \".:/=+\\-@\"
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
      #     Valid values: Unicode characters including alphanumeric, space, and
      #     \".:/=+\\-@\"
      #
      #     Constraints: Each value can be 0-256 characters long.
      #
      #     Required: Yes
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_tags_for_domain({
      #     domain_name: "DomainName", # required
      #     tags_to_update: [
      #       {
      #         key: "TagKey",
      #         value: "TagValue",
      #       },
      #     ],
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_tags_for_domain(params = {}, options = {})
        req = build_request(:update_tags_for_domain, params)
        req.send_request(options)
      end

      # @!endgroup

      # @param [Symbol] waiter_name
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      # @option options [Integer] :max_attempts
      # @option options [Integer] :delay
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def wait_until(waiter_name, params = {}, options = {})
        w = waiter(waiter_name, options)
        yield(w.waiter) if block_given? # deprecated
        w.wait(params)
      end

      def waiter_names
        waiters.keys
      end

      private

      # @param [Symbol] waiter_name
      # @param [Hash] options ({})
      def waiter(waiter_name, options = {})
        waiter_class = waiters[waiter_name]
        if waiter_class
          waiter_class.new(options.merge(client: self))
        else
          raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
        end
      end

      def waiters
        {}
      end

      # @api private
      class << self

        attr_reader :identifier

        def errors_module
          Errors
        end

      end
    end
  end
end
