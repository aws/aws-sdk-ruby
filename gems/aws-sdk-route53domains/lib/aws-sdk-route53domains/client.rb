# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:route53domains)

module Aws::Route53Domains
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :route53domains

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [] :client_side_monitoring (false)
    #   When `true`, client-side metrics will be collected for all API requests from
    #   this client.
    #
    # @option options [] :client_side_monitoring_client_id ("")
    #   Allows you to provide an identifier for this client which will be attached to
    #   all generated client side metrics. Defaults to an empty string.
    #
    # @option options [] :client_side_monitoring_port (31000)
    #   Required for publishing client metrics. The port that the client side monitoring
    #   agent is running on, where client metrics will be published via UDP.
    #
    # @option options [] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #   Allows you to provide a custom client-side monitoring publisher class. By default,
    #   will use the Client Side Monitoring Agent Publisher.
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Float] :retry_base_delay (0.3)
    #   The base delay in seconds used by the default backoff function.
    #
    # @option options [Symbol] :retry_jitter (:none)
    #   A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #   @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [Integer] :retry_max_delay (0)
    #   The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :simple_json (false)
    #   Disables request parameter conversion, validation, and formatting.
    #   Also disable response data type conversions. This option is useful
    #   when you want to ensure the highest level of performance by
    #   avoiding overhead of walking request parameters and response data
    #   structures.
    #
    #   When `:simple_json` is enabled, the request parameters hash must
    #   be formatted exactly as the DynamoDB API expects.
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # This operation checks the availability of one domain name. Note that
    # if the availability status of a domain is pending, you must submit
    # another request to determine the availability of the domain name.
    #
    # @option params [required, String] :domain_name
    #   The name of the domain that you want to get availability for.
    #
    #   Constraints: The domain name can contain only the letters a through z,
    #   the numbers 0 through 9, and hyphen (-). Internationalized Domain
    #   Names are not supported.
    #
    # @option params [String] :idn_lang_code
    #   Reserved for future use.
    #
    # @return [Types::CheckDomainAvailabilityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CheckDomainAvailabilityResponse#availability #availability} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.check_domain_availability({
    #     domain_name: "DomainName", # required
    #     idn_lang_code: "LangCode",
    #   })
    #
    # @example Response structure
    #
    #   resp.availability #=> String, one of "AVAILABLE", "AVAILABLE_RESERVED", "AVAILABLE_PREORDER", "UNAVAILABLE", "UNAVAILABLE_PREMIUM", "UNAVAILABLE_RESTRICTED", "RESERVED", "DONT_KNOW"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/CheckDomainAvailability AWS API Documentation
    #
    # @overload check_domain_availability(params = {})
    # @param [Hash] params ({})
    def check_domain_availability(params = {}, options = {})
      req = build_request(:check_domain_availability, params)
      req.send_request(options)
    end

    # Checks whether a domain name can be transferred to Amazon Route 53.
    #
    # @option params [required, String] :domain_name
    #   The name of the domain that you want to transfer to Amazon Route 53.
    #
    #   Constraints: The domain name can contain only the letters a through z,
    #   the numbers 0 through 9, and hyphen (-). Internationalized Domain
    #   Names are not supported.
    #
    # @option params [String] :auth_code
    #   If the registrar for the top-level domain (TLD) requires an
    #   authorization code to transfer the domain, the code that you got from
    #   the current registrar for the domain.
    #
    # @return [Types::CheckDomainTransferabilityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CheckDomainTransferabilityResponse#transferability #transferability} => Types::DomainTransferability
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.check_domain_transferability({
    #     domain_name: "DomainName", # required
    #     auth_code: "DomainAuthCode",
    #   })
    #
    # @example Response structure
    #
    #   resp.transferability.transferable #=> String, one of "TRANSFERABLE", "UNTRANSFERABLE", "DONT_KNOW"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/CheckDomainTransferability AWS API Documentation
    #
    # @overload check_domain_transferability(params = {})
    # @param [Hash] params ({})
    def check_domain_transferability(params = {}, options = {})
      req = build_request(:check_domain_transferability, params)
      req.send_request(options)
    end

    # This operation deletes the specified tags for a domain.
    #
    # All tag operations are eventually consistent; subsequent operations
    # might not immediately represent all issued operations.
    #
    # @option params [required, String] :domain_name
    #   The domain for which you want to delete one or more tags.
    #
    # @option params [required, Array<String>] :tags_to_delete
    #   A list of tag keys to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_tags_for_domain({
    #     domain_name: "DomainName", # required
    #     tags_to_delete: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/DeleteTagsForDomain AWS API Documentation
    #
    # @overload delete_tags_for_domain(params = {})
    # @param [Hash] params ({})
    def delete_tags_for_domain(params = {}, options = {})
      req = build_request(:delete_tags_for_domain, params)
      req.send_request(options)
    end

    # This operation disables automatic renewal of domain registration for
    # the specified domain.
    #
    # @option params [required, String] :domain_name
    #   The name of the domain that you want to disable automatic renewal for.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_domain_auto_renew({
    #     domain_name: "DomainName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/DisableDomainAutoRenew AWS API Documentation
    #
    # @overload disable_domain_auto_renew(params = {})
    # @param [Hash] params ({})
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
    #
    # @option params [required, String] :domain_name
    #   The name of the domain that you want to remove the transfer lock for.
    #
    # @return [Types::DisableDomainTransferLockResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisableDomainTransferLockResponse#operation_id #operation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_domain_transfer_lock({
    #     domain_name: "DomainName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/DisableDomainTransferLock AWS API Documentation
    #
    # @overload disable_domain_transfer_lock(params = {})
    # @param [Hash] params ({})
    def disable_domain_transfer_lock(params = {}, options = {})
      req = build_request(:disable_domain_transfer_lock, params)
      req.send_request(options)
    end

    # This operation configures Amazon Route 53 to automatically renew the
    # specified domain before the domain registration expires. The cost of
    # renewing your domain registration is billed to your AWS account.
    #
    # The period during which you can renew a domain name varies by TLD. For
    # a list of TLDs and their renewal policies, see ["Renewal,
    # restoration, and deletion times"][1] on the website for our registrar
    # associate, Gandi. Amazon Route 53 requires that you renew before the
    # end of the renewal period that is listed on the Gandi website so we
    # can complete processing before the deadline.
    #
    #
    #
    # [1]: http://wiki.gandi.net/en/domains/renew#renewal_restoration_and_deletion_times
    #
    # @option params [required, String] :domain_name
    #   The name of the domain that you want to enable automatic renewal for.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_domain_auto_renew({
    #     domain_name: "DomainName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/EnableDomainAutoRenew AWS API Documentation
    #
    # @overload enable_domain_auto_renew(params = {})
    # @param [Hash] params ({})
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
    #
    # @option params [required, String] :domain_name
    #   The name of the domain that you want to set the transfer lock for.
    #
    # @return [Types::EnableDomainTransferLockResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EnableDomainTransferLockResponse#operation_id #operation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_domain_transfer_lock({
    #     domain_name: "DomainName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/EnableDomainTransferLock AWS API Documentation
    #
    # @overload enable_domain_transfer_lock(params = {})
    # @param [Hash] params ({})
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
    #
    # @option params [String] :domain_name
    #   The name of the domain for which you want to know whether the
    #   registrant contact has confirmed that the email address is valid.
    #
    # @return [Types::GetContactReachabilityStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetContactReachabilityStatusResponse#domain_name #domain_name} => String
    #   * {Types::GetContactReachabilityStatusResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_contact_reachability_status({
    #     domain_name: "DomainName",
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_name #=> String
    #   resp.status #=> String, one of "PENDING", "DONE", "EXPIRED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/GetContactReachabilityStatus AWS API Documentation
    #
    # @overload get_contact_reachability_status(params = {})
    # @param [Hash] params ({})
    def get_contact_reachability_status(params = {}, options = {})
      req = build_request(:get_contact_reachability_status, params)
      req.send_request(options)
    end

    # This operation returns detailed information about a specified domain
    # that is associated with the current AWS account. Contact information
    # for the domain is also returned as part of the output.
    #
    # @option params [required, String] :domain_name
    #   The name of the domain that you want to get detailed information
    #   about.
    #
    # @return [Types::GetDomainDetailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDomainDetailResponse#domain_name #domain_name} => String
    #   * {Types::GetDomainDetailResponse#nameservers #nameservers} => Array&lt;Types::Nameserver&gt;
    #   * {Types::GetDomainDetailResponse#auto_renew #auto_renew} => Boolean
    #   * {Types::GetDomainDetailResponse#admin_contact #admin_contact} => Types::ContactDetail
    #   * {Types::GetDomainDetailResponse#registrant_contact #registrant_contact} => Types::ContactDetail
    #   * {Types::GetDomainDetailResponse#tech_contact #tech_contact} => Types::ContactDetail
    #   * {Types::GetDomainDetailResponse#admin_privacy #admin_privacy} => Boolean
    #   * {Types::GetDomainDetailResponse#registrant_privacy #registrant_privacy} => Boolean
    #   * {Types::GetDomainDetailResponse#tech_privacy #tech_privacy} => Boolean
    #   * {Types::GetDomainDetailResponse#registrar_name #registrar_name} => String
    #   * {Types::GetDomainDetailResponse#who_is_server #who_is_server} => String
    #   * {Types::GetDomainDetailResponse#registrar_url #registrar_url} => String
    #   * {Types::GetDomainDetailResponse#abuse_contact_email #abuse_contact_email} => String
    #   * {Types::GetDomainDetailResponse#abuse_contact_phone #abuse_contact_phone} => String
    #   * {Types::GetDomainDetailResponse#registry_domain_id #registry_domain_id} => String
    #   * {Types::GetDomainDetailResponse#creation_date #creation_date} => Time
    #   * {Types::GetDomainDetailResponse#updated_date #updated_date} => Time
    #   * {Types::GetDomainDetailResponse#expiration_date #expiration_date} => Time
    #   * {Types::GetDomainDetailResponse#reseller #reseller} => String
    #   * {Types::GetDomainDetailResponse#dns_sec #dns_sec} => String
    #   * {Types::GetDomainDetailResponse#status_list #status_list} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_domain_detail({
    #     domain_name: "DomainName", # required
    #   })
    #
    # @example Response structure
    #
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
    #   resp.admin_contact.extra_params[0].name #=> String, one of "DUNS_NUMBER", "BRAND_NUMBER", "BIRTH_DEPARTMENT", "BIRTH_DATE_IN_YYYY_MM_DD", "BIRTH_COUNTRY", "BIRTH_CITY", "DOCUMENT_NUMBER", "AU_ID_NUMBER", "AU_ID_TYPE", "CA_LEGAL_TYPE", "CA_BUSINESS_ENTITY_TYPE", "ES_IDENTIFICATION", "ES_IDENTIFICATION_TYPE", "ES_LEGAL_FORM", "FI_BUSINESS_NUMBER", "FI_ID_NUMBER", "FI_NATIONALITY", "FI_ORGANIZATION_TYPE", "IT_PIN", "IT_REGISTRANT_ENTITY_TYPE", "RU_PASSPORT_DATA", "SE_ID_NUMBER", "SG_ID_NUMBER", "VAT_NUMBER", "UK_CONTACT_TYPE", "UK_COMPANY_NUMBER"
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
    #   resp.registrant_contact.extra_params[0].name #=> String, one of "DUNS_NUMBER", "BRAND_NUMBER", "BIRTH_DEPARTMENT", "BIRTH_DATE_IN_YYYY_MM_DD", "BIRTH_COUNTRY", "BIRTH_CITY", "DOCUMENT_NUMBER", "AU_ID_NUMBER", "AU_ID_TYPE", "CA_LEGAL_TYPE", "CA_BUSINESS_ENTITY_TYPE", "ES_IDENTIFICATION", "ES_IDENTIFICATION_TYPE", "ES_LEGAL_FORM", "FI_BUSINESS_NUMBER", "FI_ID_NUMBER", "FI_NATIONALITY", "FI_ORGANIZATION_TYPE", "IT_PIN", "IT_REGISTRANT_ENTITY_TYPE", "RU_PASSPORT_DATA", "SE_ID_NUMBER", "SG_ID_NUMBER", "VAT_NUMBER", "UK_CONTACT_TYPE", "UK_COMPANY_NUMBER"
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
    #   resp.tech_contact.extra_params[0].name #=> String, one of "DUNS_NUMBER", "BRAND_NUMBER", "BIRTH_DEPARTMENT", "BIRTH_DATE_IN_YYYY_MM_DD", "BIRTH_COUNTRY", "BIRTH_CITY", "DOCUMENT_NUMBER", "AU_ID_NUMBER", "AU_ID_TYPE", "CA_LEGAL_TYPE", "CA_BUSINESS_ENTITY_TYPE", "ES_IDENTIFICATION", "ES_IDENTIFICATION_TYPE", "ES_LEGAL_FORM", "FI_BUSINESS_NUMBER", "FI_ID_NUMBER", "FI_NATIONALITY", "FI_ORGANIZATION_TYPE", "IT_PIN", "IT_REGISTRANT_ENTITY_TYPE", "RU_PASSPORT_DATA", "SE_ID_NUMBER", "SG_ID_NUMBER", "VAT_NUMBER", "UK_CONTACT_TYPE", "UK_COMPANY_NUMBER"
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/GetDomainDetail AWS API Documentation
    #
    # @overload get_domain_detail(params = {})
    # @param [Hash] params ({})
    def get_domain_detail(params = {}, options = {})
      req = build_request(:get_domain_detail, params)
      req.send_request(options)
    end

    # The GetDomainSuggestions operation returns a list of suggested domain
    # names given a string, which can either be a domain name or simply a
    # word or phrase (without spaces).
    #
    # @option params [required, String] :domain_name
    #   A domain name that you want to use as the basis for a list of possible
    #   domain names. The domain name must contain a top-level domain (TLD),
    #   such as .com, that Amazon Route 53 supports. For a list of TLDs, see
    #   [Domains that You Can Register with Amazon Route 53][1] in the *Amazon
    #   Route 53 Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html
    #
    # @option params [required, Integer] :suggestion_count
    #   The number of suggested domain names that you want Amazon Route 53 to
    #   return.
    #
    # @option params [required, Boolean] :only_available
    #   If `OnlyAvailable` is `true`, Amazon Route 53 returns only domain
    #   names that are available. If `OnlyAvailable` is `false`, Amazon Route
    #   53 returns domain names without checking whether they're available to
    #   be registered. To determine whether the domain is available, you can
    #   call `checkDomainAvailability` for each suggestion.
    #
    # @return [Types::GetDomainSuggestionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDomainSuggestionsResponse#suggestions_list #suggestions_list} => Array&lt;Types::DomainSuggestion&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_domain_suggestions({
    #     domain_name: "DomainName", # required
    #     suggestion_count: 1, # required
    #     only_available: false, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.suggestions_list #=> Array
    #   resp.suggestions_list[0].domain_name #=> String
    #   resp.suggestions_list[0].availability #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/GetDomainSuggestions AWS API Documentation
    #
    # @overload get_domain_suggestions(params = {})
    # @param [Hash] params ({})
    def get_domain_suggestions(params = {}, options = {})
      req = build_request(:get_domain_suggestions, params)
      req.send_request(options)
    end

    # This operation returns the current status of an operation that is not
    # completed.
    #
    # @option params [required, String] :operation_id
    #   The identifier for the operation for which you want to get the status.
    #   Amazon Route 53 returned the identifier in the response to the
    #   original request.
    #
    # @return [Types::GetOperationDetailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOperationDetailResponse#operation_id #operation_id} => String
    #   * {Types::GetOperationDetailResponse#status #status} => String
    #   * {Types::GetOperationDetailResponse#message #message} => String
    #   * {Types::GetOperationDetailResponse#domain_name #domain_name} => String
    #   * {Types::GetOperationDetailResponse#type #type} => String
    #   * {Types::GetOperationDetailResponse#submitted_date #submitted_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_operation_detail({
    #     operation_id: "OperationId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_id #=> String
    #   resp.status #=> String, one of "SUBMITTED", "IN_PROGRESS", "ERROR", "SUCCESSFUL", "FAILED"
    #   resp.message #=> String
    #   resp.domain_name #=> String
    #   resp.type #=> String, one of "REGISTER_DOMAIN", "DELETE_DOMAIN", "TRANSFER_IN_DOMAIN", "UPDATE_DOMAIN_CONTACT", "UPDATE_NAMESERVER", "CHANGE_PRIVACY_PROTECTION", "DOMAIN_LOCK", "ENABLE_AUTORENEW", "DISABLE_AUTORENEW", "ADD_DNSSEC", "REMOVE_DNSSEC", "EXPIRE_DOMAIN", "TRANSFER_OUT_DOMAIN", "CHANGE_DOMAIN_OWNER", "RENEW_DOMAIN", "PUSH_DOMAIN"
    #   resp.submitted_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/GetOperationDetail AWS API Documentation
    #
    # @overload get_operation_detail(params = {})
    # @param [Hash] params ({})
    def get_operation_detail(params = {}, options = {})
      req = build_request(:get_operation_detail, params)
      req.send_request(options)
    end

    # This operation returns all the domain names registered with Amazon
    # Route 53 for the current AWS account.
    #
    # @option params [String] :marker
    #   For an initial request for a list of domains, omit this element. If
    #   the number of domains that are associated with the current AWS account
    #   is greater than the value that you specified for `MaxItems`, you can
    #   use `Marker` to return additional domains. Get the value of
    #   `NextPageMarker` from the previous response, and submit another
    #   request that includes the value of `NextPageMarker` in the `Marker`
    #   element.
    #
    #   Constraints: The marker must match the value specified in the previous
    #   request.
    #
    # @option params [Integer] :max_items
    #   Number of domains to be returned.
    #
    #   Default: 20
    #
    # @return [Types::ListDomainsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDomainsResponse#domains #domains} => Array&lt;Types::DomainSummary&gt;
    #   * {Types::ListDomainsResponse#next_page_marker #next_page_marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_domains({
    #     marker: "PageMarker",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.domains #=> Array
    #   resp.domains[0].domain_name #=> String
    #   resp.domains[0].auto_renew #=> Boolean
    #   resp.domains[0].transfer_lock #=> Boolean
    #   resp.domains[0].expiry #=> Time
    #   resp.next_page_marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/ListDomains AWS API Documentation
    #
    # @overload list_domains(params = {})
    # @param [Hash] params ({})
    def list_domains(params = {}, options = {})
      req = build_request(:list_domains, params)
      req.send_request(options)
    end

    # This operation returns the operation IDs of operations that are not
    # yet complete.
    #
    # @option params [Time,DateTime,Date,Integer,String] :submitted_since
    #   An optional parameter that lets you get information about all the
    #   operations that you submitted after a specified date and time. Specify
    #   the date and time in Coordinated Universal time (UTC).
    #
    # @option params [String] :marker
    #   For an initial request for a list of operations, omit this element. If
    #   the number of operations that are not yet complete is greater than the
    #   value that you specified for `MaxItems`, you can use `Marker` to
    #   return additional operations. Get the value of `NextPageMarker` from
    #   the previous response, and submit another request that includes the
    #   value of `NextPageMarker` in the `Marker` element.
    #
    # @option params [Integer] :max_items
    #   Number of domains to be returned.
    #
    #   Default: 20
    #
    # @return [Types::ListOperationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOperationsResponse#operations #operations} => Array&lt;Types::OperationSummary&gt;
    #   * {Types::ListOperationsResponse#next_page_marker #next_page_marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_operations({
    #     submitted_since: Time.now,
    #     marker: "PageMarker",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].operation_id #=> String
    #   resp.operations[0].status #=> String, one of "SUBMITTED", "IN_PROGRESS", "ERROR", "SUCCESSFUL", "FAILED"
    #   resp.operations[0].type #=> String, one of "REGISTER_DOMAIN", "DELETE_DOMAIN", "TRANSFER_IN_DOMAIN", "UPDATE_DOMAIN_CONTACT", "UPDATE_NAMESERVER", "CHANGE_PRIVACY_PROTECTION", "DOMAIN_LOCK", "ENABLE_AUTORENEW", "DISABLE_AUTORENEW", "ADD_DNSSEC", "REMOVE_DNSSEC", "EXPIRE_DOMAIN", "TRANSFER_OUT_DOMAIN", "CHANGE_DOMAIN_OWNER", "RENEW_DOMAIN", "PUSH_DOMAIN"
    #   resp.operations[0].submitted_date #=> Time
    #   resp.next_page_marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/ListOperations AWS API Documentation
    #
    # @overload list_operations(params = {})
    # @param [Hash] params ({})
    def list_operations(params = {}, options = {})
      req = build_request(:list_operations, params)
      req.send_request(options)
    end

    # This operation returns all of the tags that are associated with the
    # specified domain.
    #
    # All tag operations are eventually consistent; subsequent operations
    # might not immediately represent all issued operations.
    #
    # @option params [required, String] :domain_name
    #   The domain for which you want to get a list of tags.
    #
    # @return [Types::ListTagsForDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForDomainResponse#tag_list #tag_list} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_domain({
    #     domain_name: "DomainName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tag_list #=> Array
    #   resp.tag_list[0].key #=> String
    #   resp.tag_list[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/ListTagsForDomain AWS API Documentation
    #
    # @overload list_tags_for_domain(params = {})
    # @param [Hash] params ({})
    def list_tags_for_domain(params = {}, options = {})
      req = build_request(:list_tags_for_domain, params)
      req.send_request(options)
    end

    # This operation registers a domain. Domains are registered either by
    # Amazon Registrar (for .com, .net, and .org domains) or by our
    # registrar associate, Gandi (for all other domains). For some top-level
    # domains (TLDs), this operation requires extra parameters.
    #
    # When you register a domain, Amazon Route 53 does the following:
    #
    # * Creates a Amazon Route 53 hosted zone that has the same name as the
    #   domain. Amazon Route 53 assigns four name servers to your hosted
    #   zone and automatically updates your domain registration with the
    #   names of these name servers.
    #
    # * Enables autorenew, so your domain registration will renew
    #   automatically each year. We'll notify you in advance of the renewal
    #   date so you can choose whether to renew the registration.
    #
    # * Optionally enables privacy protection, so WHOIS queries return
    #   contact information either for Amazon Registrar (for .com, .net, and
    #   .org domains) or for our registrar associate, Gandi (for all other
    #   TLDs). If you don't enable privacy protection, WHOIS queries return
    #   the information that you entered for the registrant, admin, and tech
    #   contacts.
    #
    # * If registration is successful, returns an operation ID that you can
    #   use to track the progress and completion of the action. If the
    #   request is not completed successfully, the domain registrant is
    #   notified by email.
    #
    # * Charges your AWS account an amount based on the top-level domain.
    #   For more information, see [Amazon Route 53 Pricing][1].
    #
    #
    #
    # [1]: http://aws.amazon.com/route53/pricing/
    #
    # @option params [required, String] :domain_name
    #   The domain name that you want to register.
    #
    #   Constraints: The domain name can contain only the letters a through z,
    #   the numbers 0 through 9, and hyphen (-). Internationalized Domain
    #   Names are not supported.
    #
    # @option params [String] :idn_lang_code
    #   Reserved for future use.
    #
    # @option params [required, Integer] :duration_in_years
    #   The number of years that you want to register the domain for. Domains
    #   are registered for a minimum of one year. The maximum period depends
    #   on the top-level domain. For the range of valid values for your
    #   domain, see [Domains that You Can Register with Amazon Route 53][1] in
    #   the *Amazon Route 53 Developer Guide*.
    #
    #   Default: 1
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html
    #
    # @option params [Boolean] :auto_renew
    #   Indicates whether the domain will be automatically renewed (`true`) or
    #   not (`false`). Autorenewal only takes effect after the account is
    #   charged.
    #
    #   Default: `true`
    #
    # @option params [required, Types::ContactDetail] :admin_contact
    #   Provides detailed contact information.
    #
    # @option params [required, Types::ContactDetail] :registrant_contact
    #   Provides detailed contact information.
    #
    # @option params [required, Types::ContactDetail] :tech_contact
    #   Provides detailed contact information.
    #
    # @option params [Boolean] :privacy_protect_admin_contact
    #   Whether you want to conceal contact information from WHOIS queries. If
    #   you specify `true`, WHOIS ("who is") queries return contact
    #   information either for Amazon Registrar (for .com, .net, and .org
    #   domains) or for our registrar associate, Gandi (for all other TLDs).
    #   If you specify `false`, WHOIS queries return the information that you
    #   entered for the admin contact.
    #
    #   Default: `true`
    #
    # @option params [Boolean] :privacy_protect_registrant_contact
    #   Whether you want to conceal contact information from WHOIS queries. If
    #   you specify `true`, WHOIS ("who is") queries return contact
    #   information either for Amazon Registrar (for .com, .net, and .org
    #   domains) or for our registrar associate, Gandi (for all other TLDs).
    #   If you specify `false`, WHOIS queries return the information that you
    #   entered for the registrant contact (the domain owner).
    #
    #   Default: `true`
    #
    # @option params [Boolean] :privacy_protect_tech_contact
    #   Whether you want to conceal contact information from WHOIS queries. If
    #   you specify `true`, WHOIS ("who is") queries return contact
    #   information either for Amazon Registrar (for .com, .net, and .org
    #   domains) or for our registrar associate, Gandi (for all other TLDs).
    #   If you specify `false`, WHOIS queries return the information that you
    #   entered for the technical contact.
    #
    #   Default: `true`
    #
    # @return [Types::RegisterDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterDomainResponse#operation_id #operation_id} => String
    #
    # @example Request syntax with placeholder values
    #
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
    #           name: "DUNS_NUMBER", # required, accepts DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, FI_NATIONALITY, FI_ORGANIZATION_TYPE, IT_PIN, IT_REGISTRANT_ENTITY_TYPE, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER, UK_CONTACT_TYPE, UK_COMPANY_NUMBER
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
    #           name: "DUNS_NUMBER", # required, accepts DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, FI_NATIONALITY, FI_ORGANIZATION_TYPE, IT_PIN, IT_REGISTRANT_ENTITY_TYPE, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER, UK_CONTACT_TYPE, UK_COMPANY_NUMBER
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
    #           name: "DUNS_NUMBER", # required, accepts DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, FI_NATIONALITY, FI_ORGANIZATION_TYPE, IT_PIN, IT_REGISTRANT_ENTITY_TYPE, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER, UK_CONTACT_TYPE, UK_COMPANY_NUMBER
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
    #
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/RegisterDomain AWS API Documentation
    #
    # @overload register_domain(params = {})
    # @param [Hash] params ({})
    def register_domain(params = {}, options = {})
      req = build_request(:register_domain, params)
      req.send_request(options)
    end

    # This operation renews a domain for the specified number of years. The
    # cost of renewing your domain is billed to your AWS account.
    #
    # We recommend that you renew your domain several weeks before the
    # expiration date. Some TLD registries delete domains before the
    # expiration date if you haven't renewed far enough in advance. For
    # more information about renewing domain registration, see [Renewing
    # Registration for a Domain][1] in the Amazon Route 53 Developer Guide.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-renew.html
    #
    # @option params [required, String] :domain_name
    #   The name of the domain that you want to renew.
    #
    # @option params [Integer] :duration_in_years
    #   The number of years that you want to renew the domain for. The maximum
    #   number of years depends on the top-level domain. For the range of
    #   valid values for your domain, see [Domains that You Can Register with
    #   Amazon Route 53][1] in the *Amazon Route 53 Developer Guide*.
    #
    #   Default: 1
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html
    #
    # @option params [required, Integer] :current_expiry_year
    #   The year when the registration for the domain is set to expire. This
    #   value must match the current expiration date for the domain.
    #
    # @return [Types::RenewDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RenewDomainResponse#operation_id #operation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.renew_domain({
    #     domain_name: "DomainName", # required
    #     duration_in_years: 1,
    #     current_expiry_year: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/RenewDomain AWS API Documentation
    #
    # @overload renew_domain(params = {})
    # @param [Hash] params ({})
    def renew_domain(params = {}, options = {})
      req = build_request(:renew_domain, params)
      req.send_request(options)
    end

    # For operations that require confirmation that the email address for
    # the registrant contact is valid, such as registering a new domain,
    # this operation resends the confirmation email to the current email
    # address for the registrant contact.
    #
    # @option params [String] :domain_name
    #   The name of the domain for which you want Amazon Route 53 to resend a
    #   confirmation email to the registrant contact.
    #
    # @return [Types::ResendContactReachabilityEmailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResendContactReachabilityEmailResponse#domain_name #domain_name} => String
    #   * {Types::ResendContactReachabilityEmailResponse#email_address #email_address} => String
    #   * {Types::ResendContactReachabilityEmailResponse#is_already_verified #is_already_verified} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resend_contact_reachability_email({
    #     domain_name: "DomainName",
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_name #=> String
    #   resp.email_address #=> String
    #   resp.is_already_verified #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/ResendContactReachabilityEmail AWS API Documentation
    #
    # @overload resend_contact_reachability_email(params = {})
    # @param [Hash] params ({})
    def resend_contact_reachability_email(params = {}, options = {})
      req = build_request(:resend_contact_reachability_email, params)
      req.send_request(options)
    end

    # This operation returns the AuthCode for the domain. To transfer a
    # domain to another registrar, you provide this value to the new
    # registrar.
    #
    # @option params [required, String] :domain_name
    #   The name of the domain that you want to get an authorization code for.
    #
    # @return [Types::RetrieveDomainAuthCodeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RetrieveDomainAuthCodeResponse#auth_code #auth_code} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.retrieve_domain_auth_code({
    #     domain_name: "DomainName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.auth_code #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/RetrieveDomainAuthCode AWS API Documentation
    #
    # @overload retrieve_domain_auth_code(params = {})
    # @param [Hash] params ({})
    def retrieve_domain_auth_code(params = {}, options = {})
      req = build_request(:retrieve_domain_auth_code, params)
      req.send_request(options)
    end

    # This operation transfers a domain from another registrar to Amazon
    # Route 53. When the transfer is complete, the domain is registered
    # either with Amazon Registrar (for .com, .net, and .org domains) or
    # with our registrar associate, Gandi (for all other TLDs).
    #
    # For transfer requirements, a detailed procedure, and information about
    # viewing the status of a domain transfer, see [Transferring
    # Registration for a Domain to Amazon Route 53][1] in the *Amazon Route
    # 53 Developer Guide*.
    #
    # If the registrar for your domain is also the DNS service provider for
    # the domain, we highly recommend that you consider transferring your
    # DNS service to Amazon Route 53 or to another DNS service provider
    # before you transfer your registration. Some registrars provide free
    # DNS service when you purchase a domain registration. When you transfer
    # the registration, the previous registrar will not renew your domain
    # registration and could end your DNS service at any time.
    #
    # If the registrar for your domain is also the DNS service provider for
    # the domain and you don't transfer DNS service to another provider,
    # your website, email, and the web applications associated with the
    # domain might become unavailable.
    #
    # If the transfer is successful, this method returns an operation ID
    # that you can use to track the progress and completion of the action.
    # If the transfer doesn't complete successfully, the domain registrant
    # will be notified by email.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-transfer-to-route-53.html
    #
    # @option params [required, String] :domain_name
    #   The name of the domain that you want to transfer to Amazon Route 53.
    #
    #   Constraints: The domain name can contain only the letters a through z,
    #   the numbers 0 through 9, and hyphen (-). Internationalized Domain
    #   Names are not supported.
    #
    # @option params [String] :idn_lang_code
    #   Reserved for future use.
    #
    # @option params [required, Integer] :duration_in_years
    #   The number of years that you want to register the domain for. Domains
    #   are registered for a minimum of one year. The maximum period depends
    #   on the top-level domain.
    #
    #   Default: 1
    #
    # @option params [Array<Types::Nameserver>] :nameservers
    #   Contains details for the host and glue IP addresses.
    #
    # @option params [String] :auth_code
    #   The authorization code for the domain. You get this value from the
    #   current registrar.
    #
    # @option params [Boolean] :auto_renew
    #   Indicates whether the domain will be automatically renewed (true) or
    #   not (false). Autorenewal only takes effect after the account is
    #   charged.
    #
    #   Default: true
    #
    # @option params [required, Types::ContactDetail] :admin_contact
    #   Provides detailed contact information.
    #
    # @option params [required, Types::ContactDetail] :registrant_contact
    #   Provides detailed contact information.
    #
    # @option params [required, Types::ContactDetail] :tech_contact
    #   Provides detailed contact information.
    #
    # @option params [Boolean] :privacy_protect_admin_contact
    #   Whether you want to conceal contact information from WHOIS queries. If
    #   you specify `true`, WHOIS ("who is") queries return contact
    #   information either for Amazon Registrar (for .com, .net, and .org
    #   domains) or for our registrar associate, Gandi (for all other TLDs).
    #   If you specify `false`, WHOIS queries return the information that you
    #   entered for the admin contact.
    #
    #   Default: `true`
    #
    # @option params [Boolean] :privacy_protect_registrant_contact
    #   Whether you want to conceal contact information from WHOIS queries. If
    #   you specify `true`, WHOIS ("who is") queries return contact
    #   information either for Amazon Registrar (for .com, .net, and .org
    #   domains) or for our registrar associate, Gandi (for all other TLDs).
    #   If you specify `false`, WHOIS queries return the information that you
    #   entered for the registrant contact (domain owner).
    #
    #   Default: `true`
    #
    # @option params [Boolean] :privacy_protect_tech_contact
    #   Whether you want to conceal contact information from WHOIS queries. If
    #   you specify `true`, WHOIS ("who is") queries return contact
    #   information either for Amazon Registrar (for .com, .net, and .org
    #   domains) or for our registrar associate, Gandi (for all other TLDs).
    #   If you specify `false`, WHOIS queries return the information that you
    #   entered for the technical contact.
    #
    #   Default: `true`
    #
    # @return [Types::TransferDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TransferDomainResponse#operation_id #operation_id} => String
    #
    # @example Request syntax with placeholder values
    #
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
    #           name: "DUNS_NUMBER", # required, accepts DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, FI_NATIONALITY, FI_ORGANIZATION_TYPE, IT_PIN, IT_REGISTRANT_ENTITY_TYPE, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER, UK_CONTACT_TYPE, UK_COMPANY_NUMBER
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
    #           name: "DUNS_NUMBER", # required, accepts DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, FI_NATIONALITY, FI_ORGANIZATION_TYPE, IT_PIN, IT_REGISTRANT_ENTITY_TYPE, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER, UK_CONTACT_TYPE, UK_COMPANY_NUMBER
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
    #           name: "DUNS_NUMBER", # required, accepts DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, FI_NATIONALITY, FI_ORGANIZATION_TYPE, IT_PIN, IT_REGISTRANT_ENTITY_TYPE, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER, UK_CONTACT_TYPE, UK_COMPANY_NUMBER
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
    #
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/TransferDomain AWS API Documentation
    #
    # @overload transfer_domain(params = {})
    # @param [Hash] params ({})
    def transfer_domain(params = {}, options = {})
      req = build_request(:transfer_domain, params)
      req.send_request(options)
    end

    # This operation updates the contact information for a particular
    # domain. You must specify information for at least one contact:
    # registrant, administrator, or technical.
    #
    # If the update is successful, this method returns an operation ID that
    # you can use to track the progress and completion of the action. If the
    # request is not completed successfully, the domain registrant will be
    # notified by email.
    #
    # @option params [required, String] :domain_name
    #   The name of the domain that you want to update contact information
    #   for.
    #
    # @option params [Types::ContactDetail] :admin_contact
    #   Provides detailed contact information.
    #
    # @option params [Types::ContactDetail] :registrant_contact
    #   Provides detailed contact information.
    #
    # @option params [Types::ContactDetail] :tech_contact
    #   Provides detailed contact information.
    #
    # @return [Types::UpdateDomainContactResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDomainContactResponse#operation_id #operation_id} => String
    #
    # @example Request syntax with placeholder values
    #
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
    #           name: "DUNS_NUMBER", # required, accepts DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, FI_NATIONALITY, FI_ORGANIZATION_TYPE, IT_PIN, IT_REGISTRANT_ENTITY_TYPE, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER, UK_CONTACT_TYPE, UK_COMPANY_NUMBER
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
    #           name: "DUNS_NUMBER", # required, accepts DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, FI_NATIONALITY, FI_ORGANIZATION_TYPE, IT_PIN, IT_REGISTRANT_ENTITY_TYPE, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER, UK_CONTACT_TYPE, UK_COMPANY_NUMBER
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
    #           name: "DUNS_NUMBER", # required, accepts DUNS_NUMBER, BRAND_NUMBER, BIRTH_DEPARTMENT, BIRTH_DATE_IN_YYYY_MM_DD, BIRTH_COUNTRY, BIRTH_CITY, DOCUMENT_NUMBER, AU_ID_NUMBER, AU_ID_TYPE, CA_LEGAL_TYPE, CA_BUSINESS_ENTITY_TYPE, ES_IDENTIFICATION, ES_IDENTIFICATION_TYPE, ES_LEGAL_FORM, FI_BUSINESS_NUMBER, FI_ID_NUMBER, FI_NATIONALITY, FI_ORGANIZATION_TYPE, IT_PIN, IT_REGISTRANT_ENTITY_TYPE, RU_PASSPORT_DATA, SE_ID_NUMBER, SG_ID_NUMBER, VAT_NUMBER, UK_CONTACT_TYPE, UK_COMPANY_NUMBER
    #           value: "ExtraParamValue", # required
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/UpdateDomainContact AWS API Documentation
    #
    # @overload update_domain_contact(params = {})
    # @param [Hash] params ({})
    def update_domain_contact(params = {}, options = {})
      req = build_request(:update_domain_contact, params)
      req.send_request(options)
    end

    # This operation updates the specified domain contact's privacy
    # setting. When privacy protection is enabled, contact information such
    # as email address is replaced either with contact information for
    # Amazon Registrar (for .com, .net, and .org domains) or with contact
    # information for our registrar associate, Gandi.
    #
    # This operation affects only the contact information for the specified
    # contact type (registrant, administrator, or tech). If the request
    # succeeds, Amazon Route 53 returns an operation ID that you can use
    # with GetOperationDetail to track the progress and completion of the
    # action. If the request doesn't complete successfully, the domain
    # registrant will be notified by email.
    #
    # @option params [required, String] :domain_name
    #   The name of the domain that you want to update the privacy setting
    #   for.
    #
    # @option params [Boolean] :admin_privacy
    #   Whether you want to conceal contact information from WHOIS queries. If
    #   you specify `true`, WHOIS ("who is") queries return contact
    #   information either for Amazon Registrar (for .com, .net, and .org
    #   domains) or for our registrar associate, Gandi (for all other TLDs).
    #   If you specify `false`, WHOIS queries return the information that you
    #   entered for the admin contact.
    #
    # @option params [Boolean] :registrant_privacy
    #   Whether you want to conceal contact information from WHOIS queries. If
    #   you specify `true`, WHOIS ("who is") queries return contact
    #   information either for Amazon Registrar (for .com, .net, and .org
    #   domains) or for our registrar associate, Gandi (for all other TLDs).
    #   If you specify `false`, WHOIS queries return the information that you
    #   entered for the registrant contact (domain owner).
    #
    # @option params [Boolean] :tech_privacy
    #   Whether you want to conceal contact information from WHOIS queries. If
    #   you specify `true`, WHOIS ("who is") queries return contact
    #   information either for Amazon Registrar (for .com, .net, and .org
    #   domains) or for our registrar associate, Gandi (for all other TLDs).
    #   If you specify `false`, WHOIS queries return the information that you
    #   entered for the technical contact.
    #
    # @return [Types::UpdateDomainContactPrivacyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDomainContactPrivacyResponse#operation_id #operation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_domain_contact_privacy({
    #     domain_name: "DomainName", # required
    #     admin_privacy: false,
    #     registrant_privacy: false,
    #     tech_privacy: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/UpdateDomainContactPrivacy AWS API Documentation
    #
    # @overload update_domain_contact_privacy(params = {})
    # @param [Hash] params ({})
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
    #
    # @option params [required, String] :domain_name
    #   The name of the domain that you want to change name servers for.
    #
    # @option params [String] :fi_auth_key
    #   The authorization key for .fi domains
    #
    # @option params [required, Array<Types::Nameserver>] :nameservers
    #   A list of new name servers for the domain.
    #
    # @return [Types::UpdateDomainNameserversResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDomainNameserversResponse#operation_id #operation_id} => String
    #
    # @example Request syntax with placeholder values
    #
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
    #
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/UpdateDomainNameservers AWS API Documentation
    #
    # @overload update_domain_nameservers(params = {})
    # @param [Hash] params ({})
    def update_domain_nameservers(params = {}, options = {})
      req = build_request(:update_domain_nameservers, params)
      req.send_request(options)
    end

    # This operation adds or updates tags for a specified domain.
    #
    # All tag operations are eventually consistent; subsequent operations
    # might not immediately represent all issued operations.
    #
    # @option params [required, String] :domain_name
    #   The domain for which you want to add or update tags.
    #
    # @option params [Array<Types::Tag>] :tags_to_update
    #   A list of the tag keys and values that you want to add or update. If
    #   you specify a key that already exists, the corresponding value will be
    #   replaced.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_tags_for_domain({
    #     domain_name: "DomainName", # required
    #     tags_to_update: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/UpdateTagsForDomain AWS API Documentation
    #
    # @overload update_tags_for_domain(params = {})
    # @param [Hash] params ({})
    def update_tags_for_domain(params = {}, options = {})
      req = build_request(:update_tags_for_domain, params)
      req.send_request(options)
    end

    # Returns all the domain-related billing records for the current AWS
    # account for a specified period
    #
    # @option params [Time,DateTime,Date,Integer,String] :start
    #   The beginning date and time for the time period for which you want a
    #   list of billing records. Specify the date and time in Coordinated
    #   Universal time (UTC).
    #
    # @option params [Time,DateTime,Date,Integer,String] :end
    #   The end date and time for the time period for which you want a list of
    #   billing records. Specify the date and time in Coordinated Universal
    #   time (UTC).
    #
    # @option params [String] :marker
    #   For an initial request for a list of billing records, omit this
    #   element. If the number of billing records that are associated with the
    #   current AWS account during the specified period is greater than the
    #   value that you specified for `MaxItems`, you can use `Marker` to
    #   return additional billing records. Get the value of `NextPageMarker`
    #   from the previous response, and submit another request that includes
    #   the value of `NextPageMarker` in the `Marker` element.
    #
    #   Constraints: The marker must match the value of `NextPageMarker` that
    #   was returned in the previous response.
    #
    # @option params [Integer] :max_items
    #   The number of billing records to be returned.
    #
    #   Default: 20
    #
    # @return [Types::ViewBillingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ViewBillingResponse#next_page_marker #next_page_marker} => String
    #   * {Types::ViewBillingResponse#billing_records #billing_records} => Array&lt;Types::BillingRecord&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.view_billing({
    #     start: Time.now,
    #     end: Time.now,
    #     marker: "PageMarker",
    #     max_items: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_page_marker #=> String
    #   resp.billing_records #=> Array
    #   resp.billing_records[0].domain_name #=> String
    #   resp.billing_records[0].operation #=> String, one of "REGISTER_DOMAIN", "DELETE_DOMAIN", "TRANSFER_IN_DOMAIN", "UPDATE_DOMAIN_CONTACT", "UPDATE_NAMESERVER", "CHANGE_PRIVACY_PROTECTION", "DOMAIN_LOCK", "ENABLE_AUTORENEW", "DISABLE_AUTORENEW", "ADD_DNSSEC", "REMOVE_DNSSEC", "EXPIRE_DOMAIN", "TRANSFER_OUT_DOMAIN", "CHANGE_DOMAIN_OWNER", "RENEW_DOMAIN", "PUSH_DOMAIN"
    #   resp.billing_records[0].invoice_id #=> String
    #   resp.billing_records[0].bill_date #=> Time
    #   resp.billing_records[0].price #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53domains-2014-05-15/ViewBilling AWS API Documentation
    #
    # @overload view_billing(params = {})
    # @param [Hash] params ({})
    def view_billing(params = {}, options = {})
      req = build_request(:view_billing, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-route53domains'
      context[:gem_version] = '1.5.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end
