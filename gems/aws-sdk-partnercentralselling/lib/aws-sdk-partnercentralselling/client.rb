# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/net_http'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/protocol'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/json_rpc'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:partnercentralselling)

module Aws::PartnerCentralSelling
  # An API client for Aws::PartnerCentralSelling.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSPartnerCentralSelling
    @identifier = :partnercentralselling

    add_plugin(::Aws::PartnerCentralSelling::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::NetHTTP)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::Protocol)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::TransferEncoding)
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::InvocationId)
    add_plugin(Aws::Core::Plugins::RecursionDetection)
    add_plugin(Aws::Core::Plugins::RetryErrors)
    add_plugin(Aws::Core::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SigV4)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [String] :account_id_endpoint_mode
    #  The account ID endpoint mode to use. This can be one of the following values:
    #  * `preferred` - (default) Use the account ID endpoint if available, otherwise use the standard endpoint.
    #  * `disabled` - Never use the account ID endpoint, only use the standard endpoint.
    #  * `required` - Always use the account ID endpoint. If the account ID cannot be retrieved from credentials, an error is raised.
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing.
    # @option options [Array<String>] :auth_scheme_preference
    #  An ordered list of preferred authentication schemes to use when making a request.
    #  The items in the list must be a fully qualified scheme IDs, such as `smithy.api#httpBearerAuth`.
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::PartnerCentralSelling::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [String] :http_ca_file
    #  The path to a CA certification file in PEM format. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_file Net::HTTP#ca_file}.
    # @option options [String] :http_ca_path
    #  The path of to CA directory containing certification files in PEM format. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_path Net::HTTP#ca_path}.
    # @option options [OpenSSL::X509::Certificate] :http_cert
    #  Sets the OpenSSL::X509::Certificate object to be used for client certification. Defaults
    #  to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert Net::HTTP#cert}.
    # @option options [OpenSSL::X509::Store] :http_cert_store
    #  Sets the OpenSSL::X509::Store to be used for verifying peer certificate. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert_store Net::HTTP#cert_store}.
    # @option options [Numeric] :http_continue_timeout
    #  Sets the continue timeout value, which is the number of seconds to wait for an
    #  expected 100 Continue response. If the HTTP object does not receive a response
    #  in this many seconds it sends the request body. Defaults to `nil` which uses the
    #  Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-continue_timeout Net::HTTP#continue_timeout}.
    # @option options [Boolean] :http_debug_output
    #  When `true`, Net::HTTP debug output will be sent to the configured logger.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#method-i-set_debug_output Net::HTTP#set_debug_output}.
    # @option options [Numeric] :http_keep_alive_timeout
    #  The number of seconds to keep the connection open after a request is sent. If a
    #  new request is made during the given interval, the still-open connection is used;
    #  otherwise the connection will have been closed and a new connection is opened.
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-keep_alive_timeout Net::HTTP#keep_alive_timeout}.
    # @option options [OpenSSL::PKey::RSA, OpenSSL::PKey::DSA] :http_key
    #  Sets the OpenSSL::PKey object to be used for client private key. Defaults to `nil` which
    #  uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-key Net::HTTP#key}.
    # @option options [Numeric] :http_open_timeout
    #  The number of seconds to wait for a connection to open. If the connection is not
    #  made in the given interval, an exception is raised. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-open_timeout Net::HTTP#open_timeout}.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Numeric] :http_read_timeout
    #  The number of seconds to wait for one block to be read (via one read(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-read_timeout Net::HTTP#read_timeout}.
    # @option options [Numeric] :http_ssl_timeout
    #  Sets the SSL timeout seconds. Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ssl_timeout Net::HTTP#ssl_timeout}.
    # @option options [Integer] :http_verify_mode (OpenSSL::SSL::VERIFY_PEER)
    #  Sets the verify mode for SSL. Defaults to `OpenSSL::SSL::VERIFY_PEER`.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-verify_mode Net::HTTP#verify_mode}.
    # @option options [Numeric] :http_write_timeout
    #  The number of seconds to wait for one block to be written (via one write(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-write_timeout Net::HTTP#write_timeout}.
    # @option options [Smithy::Client::LogFormatter] :log_formatter (Aws::Log::Formatter.default)
    #  The log formatter used by the logger.
    # @option options [Symbol] :log_level (:info)
    #  The log level to send messages to the logger at.
    # @option options [Logger] :logger
    #  The Logger instance to send log messages to. If this option is not set, logging is disabled.
    # @option options [Integer] :max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Symbol, Object] :protocol
    #  The protocol used for request serialization and response deserialization. Defaults to the service default protocol. May be a Symbol naming a supported protocol, or a custom object implementing the protocol interface.
    #  Supported protocols: +:json_rpc+ (defaults to +:json_rpc+).
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [String] :region
    #  The AWS region to connect to. The configured `:region` is used to determine the service `:endpoint`.
    #  When not provided, a default region is searched for in the following locations:
    #  * `Aws.config[:region]`
    #  * `ENV['AWS_REGION']`
    #  * `ENV['AWS_DEFAULT_REGION']`
    #  * `~/.aws/credentials` as `region` under a profile
    #  * `~/.aws/config` as `region` under a profile
    # @option options [Integer] :request_min_compression_size_bytes (10240)
    #  The minimum size in bytes that triggers compression for request bodies.
    #  The value must be non-negative integer value between 0 and 10,485,780 bytes inclusive.
    # @option options [String] :retry_mode (standard)
    #  Specifies which retry algorithm to use. Values are:
    #  
    #  * `standard` - A standardized set of retry rules across the AWS SDKs.
    #    This includes support for retry quotas, which limit the number of
    #    unsuccessful retries a client can make. This is the default
    #    value if no retry mode is provided.
    #  
    #  * `adaptive` - A retry mode that includes all the functionality of
    #    `standard` mode along with automatic client side throttling.
    # @option options [Object] :retry_strategy
    #  The retry strategy used by the client. If not provided, a default strategy is built
    #  based on `:retry_mode` — either `Standard` or `Adaptive`.
    #  
    #  A custom strategy must respond to:
    #  * `#acquire_initial_retry_token` - returns a token
    #  * `#refresh_retry_token(token, error_info)` - returns a token or nil
    #  * `#record_success(token)` - records a successful request
    #  * `#request_bookkeeping(error_info = nil)` - updates internal state
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
    # @option options [Boolean] :use_dualstack_endpoint
    #  When set to `true`, dualstack enabled endpoints (with `.aws` TLD) will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_DUALSTACK_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_dualstack_endpoint` under a profile
    #  * `~/.aws/config` as `use_dualstack_endpoint` under a profile
    # @option options [Boolean] :use_fips_endpoint
    #  When set to `true`, FIPS compatible endpoints will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_FIPS_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_fips_endpoint` under a profile
    #  * `~/.aws/config` as `use_fips_endpoint` under a profile
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Use the <code>AcceptEngagementInvitation</code> action to accept an engagement invitation shared by AWS. Accepting the invitation indicates your willingness to participate in the engagement, granting you access to all engagement-related data.</p>
    # @param [Hash, Types::AcceptEngagementInvitationRequest] params
    # @option params [String] :catalog
    #   <p>The <code>CatalogType</code> parameter specifies the catalog associated with the engagement invitation. Accepted values are <code>AWS</code> and <code>Sandbox</code>, which determine the environment in which the engagement invitation is managed.</p>
    # @option params [String] :identifier
    #   <p> The <code>Identifier</code> parameter in the <code>AcceptEngagementInvitationRequest</code> specifies the unique identifier of the <code>EngagementInvitation</code> to be accepted. Providing the correct identifier ensures that the intended invitation is accepted. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogIdentifier", # required
    #     identifier: "EngagementInvitationArnOrIdentifier", # required
    #   }
    #   options = {}
    #   response = client.accept_engagement_invitation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def accept_engagement_invitation(params = {}, options = {})
      request = build_request(:accept_engagement_invitation, params)
      request.send_request(options)
    end

    # <p>Enables you to reassign an existing <code>Opportunity</code> to another user within your Partner Central account. The specified user receives the opportunity, and it appears on their Partner Central dashboard, allowing them to take necessary actions or proceed with the opportunity.</p> <p>This is useful for distributing opportunities to the appropriate team members or departments within your organization, ensuring that each opportunity is handled by the right person. By default, the opportunity owner is the one who creates it. Currently, there's no API to enumerate the list of available users.</p>
    # @param [Hash, Types::AssignOpportunityRequest] params
    # @option params [String] :catalog
    #   <p>Specifies the catalog associated with the request. This field takes a string value from a predefined list: <code>AWS</code> or <code>Sandbox</code>. The catalog determines which environment the opportunity is assigned in. Use <code>AWS</code> to assign real opportunities in the Amazon Web Services catalog, and <code>Sandbox</code> for testing in secure, isolated environments.</p>
    # @option params [String] :identifier
    #   <p>Requires the <code>Opportunity</code>'s unique identifier when you want to assign it to another user. Provide the correct identifier so the intended opportunity is reassigned.</p>
    # @option params [Types::AssigneeContact] :assignee
    #   <p>Specifies the user or team member responsible for managing the assigned opportunity. This field identifies the <i>Assignee</i> based on the partner's internal team structure. Ensure that the email address is associated with a registered user in your Partner Central account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogIdentifier", # required
    #     identifier: "OpportunityIdentifier", # required
    #     assignee: { # required
    #       email: "Email", # required
    #       first_name: "Name", # required
    #       last_name: "Name", # required
    #       business_title: "JobTitle", # required
    #     }
    #   }
    #   options = {}
    #   response = client.assign_opportunity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def assign_opportunity(params = {}, options = {})
      request = build_request(:assign_opportunity, params)
      request.send_request(options)
    end

    # <p>Enables you to create a formal association between an <code>Opportunity</code> and various related entities, enriching the context and details of the opportunity for better collaboration and decision making. You can associate an opportunity with the following entity types:</p> <ul> <li> <p>Partner Solution: A software product or consulting practice created and delivered by Partners. Partner Solutions help customers address business challenges using Amazon Web Services services.</p> </li> <li> <p>Amazon Web Services Products: Amazon Web Services offers many products and services that provide scalable, reliable, and cost-effective infrastructure solutions. For the latest list of Amazon Web Services products, see <a href="https://github.com/aws-samples/partner-crm-integration-samples/blob/main/resources/aws_products.json">Amazon Web Services products</a>.</p> </li> <li> <p>Amazon Web Services Marketplace private offer: Allows Amazon Web Services Marketplace sellers to extend custom pricing and terms to individual Amazon Web Services customers. Sellers can negotiate custom prices, payment schedules, and end user license terms through private offers, enabling Amazon Web Services customers to acquire software solutions tailored to their specific needs. For more information, see <a href="https://docs.aws.amazon.com/marketplace/latest/buyerguide/buyer-private-offers.html">Private offers in Amazon Web Services Marketplace</a>.</p> </li> </ul> <p>To obtain identifiers for these entities, use the following methods:</p> <ul> <li> <p>Solution: Use the <code>ListSolutions</code> operation.</p> </li> <li> <p>AWS Products: For the latest list of Amazon Web Services products, see <a href="https://github.com/aws-samples/partner-crm-integration-samples/blob/main/resources/aws_products.json">Amazon Web Services products</a>.</p> </li> <li> <p>Amazon Web Services Marketplace private offer: Use the <a href="https://docs.aws.amazon.com/marketplace/latest/APIReference/catalog-apis.html">Using the Amazon Web Services Marketplace Catalog API</a> to list entities. Specifically, use the <code>ListEntities</code> operation to retrieve a list of private offers. The request returns the details of available private offers. For more information, see <a href="https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/API_ListEntities.html">ListEntities</a>.</p> </li> </ul>
    # @param [Hash, Types::AssociateOpportunityRequest] params
    # @option params [String] :catalog
    #   <p>Specifies the catalog associated with the request. This field takes a string value from a predefined list: <code>AWS</code> or <code>Sandbox</code>. The catalog determines which environment the opportunity association is made in. Use <code>AWS</code> to associate opportunities in the Amazon Web Services catalog, and <code>Sandbox</code> for testing in secure, isolated environments.</p>
    # @option params [String] :opportunity_identifier
    #   <p>Requires the <code>Opportunity</code>'s unique identifier when you want to associate it with a related entity. Provide the correct identifier so the intended opportunity is updated with the association.</p>
    # @option params [String] :related_entity_type
    #   <p>Specifies the entity type that you're associating with the <code> Opportunity</code>. This helps to categorize and properly process the association.</p>
    # @option params [String] :related_entity_identifier
    #   <p>Requires the related entity's unique identifier when you want to associate it with the <code> Opportunity</code>. For Amazon Web Services Marketplace entities, provide the Amazon Resource Name (ARN). Use the <a href="https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html"> Amazon Web Services Marketplace API</a> to obtain the ARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogIdentifier", # required
    #     opportunity_identifier: "OpportunityIdentifier", # required
    #     related_entity_type: "Solutions" # One of: ["Solutions", "AwsProducts", "AwsMarketplaceOffers"], # required
    #     related_entity_identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.associate_opportunity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def associate_opportunity(params = {}, options = {})
      request = build_request(:associate_opportunity, params)
      request.send_request(options)
    end

    # <p>The <code>CreateEngagement</code> action allows you to create an <code>Engagement</code>, which serves as a collaborative space between different parties such as AWS Partners and AWS Sellers. This action automatically adds the caller's AWS account as an active member of the newly created <code>Engagement</code>.</p>
    # @param [Hash, Types::CreateEngagementRequest] params
    # @option params [String] :catalog
    #   <p>The <code>CreateEngagementRequest$Catalog</code> parameter specifies the catalog related to the engagement. Accepted values are <code>AWS</code> and <code>Sandbox</code>, which determine the environment in which the engagement is managed.</p>
    # @option params [String] :client_token
    #   <p>The <code>CreateEngagementRequest$ClientToken</code> parameter specifies a unique, case-sensitive identifier to ensure that the request is handled exactly once. The value must not exceed sixty-four alphanumeric characters.</p>
    # @option params [String] :title
    #   <p>Specifies the title of the <code>Engagement</code>.</p>
    # @option params [String] :description
    #   <p>Provides a description of the <code>Engagement</code>.</p>
    # @option params [Array<Types::EngagementContextDetails>] :contexts
    #   <p>The <code>Contexts</code> field is a required array of objects, with a maximum of 5 contexts allowed, specifying detailed information about customer projects associated with the Engagement. Each context object contains a <code>Type</code> field indicating the context type, which must be <code>CustomerProject</code> in this version, and a <code>Payload</code> field containing the <code>CustomerProject</code> details. The <code>CustomerProject</code> object is composed of two main components: <code>Customer</code> and <code>Project</code>. The <code>Customer</code> object includes information such as <code>CompanyName</code>, <code>WebsiteUrl</code>, <code>Industry</code>, and <code>CountryCode</code>, providing essential details about the customer. The <code>Project</code> object contains <code>Title</code>, <code>BusinessProblem</code>, and <code>TargetCompletionDate</code>, offering insights into the specific project associated with the customer. This structure allows comprehensive context to be included within the Engagement, facilitating effective collaboration between parties by providing relevant customer and project information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogIdentifier", # required
    #     client_token: "String", # required
    #     title: "EngagementTitle", # required
    #     description: "EngagementDescription", # required
    #     contexts: [
    #       {
    #         type: "CustomerProject" # One of: ["CustomerProject"], # required
    #         payload: {
    #           # One of:
    #           customer_project: {
    #             customer: {
    #               industry: "Aerospace" # One of: ["Aerospace", "Agriculture", "Automotive", "Computers and Electronics", "Consumer Goods", "Education", "Energy - Oil and Gas", "Energy - Power and Utilities", "Financial Services", "Gaming", "Government", "Healthcare", "Hospitality", "Life Sciences", "Manufacturing", "Marketing and Advertising", "Media and Entertainment", "Mining", "Non-Profit Organization", "Professional Services", "Real Estate and Construction", "Retail", "Software and Internet", "Telecommunications", "Transportation and Logistics", "Travel", "Wholesale and Distribution", "Other"], # required
    #               company_name: "CompanyName", # required
    #               website_url: "CompanyWebsiteUrl", # required
    #               country_code: "US" # One of: ["US", "AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "CD", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW"], # required
    #             },
    #             project: {
    #               title: "EngagementCustomerProjectTitle", # required
    #               business_problem: "EngagementCustomerBusinessProblem", # required
    #               target_completion_date: "String", # required
    #             }
    #           }
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_engagement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "EngagementIdentifier",
    #     arn: "EngagementArn"
    #   }
    # @return [Types::CreateEngagementResponse]
    def create_engagement(params = {}, options = {})
      request = build_request(:create_engagement, params)
      request.send_request(options)
    end

    # <p> This action creates an invitation from a sender to a single receiver to join an engagement. </p>
    # @param [Hash, Types::CreateEngagementInvitationRequest] params
    # @option params [String] :catalog
    #   <p> Specifies the catalog related to the engagement. Accepted values are <code>AWS</code> and <code>Sandbox</code>, which determine the environment in which the engagement is managed. </p>
    # @option params [String] :client_token
    #   <p> Specifies a unique, client-generated UUID to ensure that the request is handled exactly once. This token helps prevent duplicate invitation creations. </p>
    # @option params [String] :engagement_identifier
    #   <p> The unique identifier of the <code>Engagement</code> associated with the invitation. This parameter ensures the invitation is created within the correct <code>Engagement</code> context. </p>
    # @option params [Types::Invitation] :invitation
    #   <p> The <code>Invitation</code> object all information necessary to initiate an engagement invitation to a partner. It contains a personalized message from the sender, the invitation's receiver, and a payload. The <code>Payload</code> can be the <code>OpportunityInvitation</code>, which includes detailed structures for sender contacts, partner responsibilities, customer information, and project details. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogIdentifier", # required
    #     client_token: "ClientToken", # required
    #     engagement_identifier: "EngagementIdentifier", # required
    #     invitation: { # required
    #       message: "InvitationMessage", # required
    #       receiver: { # required
    #         # One of:
    #         account: {
    #           alias: "Alias",
    #           aws_account_id: "AwsAccount", # required
    #         }
    #       },
    #       payload: { # required
    #         # One of:
    #         opportunity_invitation: {
    #           sender_contacts: [
    #             {
    #               email: "SenderContactEmail", # required
    #               first_name: "Name",
    #               last_name: "Name",
    #               business_title: "JobTitle",
    #               phone: "PhoneNumber"
    #             }
    #           ],
    #           receiver_responsibilities: ["Distributor" # One of: ["Distributor", "Reseller", "Hardware Partner", "Managed Service Provider", "Software Partner", "Services Partner", "Training Partner", "Co-Sell Facilitator", "Facilitator"]], # required
    #           customer: { # required
    #             industry: "Aerospace" # One of: ["Aerospace", "Agriculture", "Automotive", "Computers and Electronics", "Consumer Goods", "Education", "Energy - Oil and Gas", "Energy - Power and Utilities", "Financial Services", "Gaming", "Government", "Healthcare", "Hospitality", "Life Sciences", "Manufacturing", "Marketing and Advertising", "Media and Entertainment", "Mining", "Non-Profit Organization", "Professional Services", "Real Estate and Construction", "Retail", "Software and Internet", "Telecommunications", "Transportation and Logistics", "Travel", "Wholesale and Distribution", "Other"], # required
    #             company_name: "CompanyName", # required
    #             website_url: "CompanyWebsiteUrl", # required
    #             country_code: "US" # One of: ["US", "AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "CD", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW"], # required
    #           },
    #           project: { # required
    #             business_problem: "EngagementCustomerBusinessProblem", # required
    #             title: "String", # required
    #             target_completion_date: "Date", # required
    #             expected_customer_spend: [ # required
    #               {
    #                 amount: "Amount", # required
    #                 currency_code: "USD" # One of: ["USD", "EUR", "GBP", "AUD", "CAD", "CNY", "NZD", "INR", "JPY", "CHF", "SEK", "AED", "AFN", "ALL", "AMD", "ANG", "AOA", "ARS", "AWG", "AZN", "BAM", "BBD", "BDT", "BGN", "BHD", "BIF", "BMD", "BND", "BOB", "BOV", "BRL", "BSD", "BTN", "BWP", "BYN", "BZD", "CDF", "CHE", "CHW", "CLF", "CLP", "COP", "COU", "CRC", "CUC", "CUP", "CVE", "CZK", "DJF", "DKK", "DOP", "DZD", "EGP", "ERN", "ETB", "FJD", "FKP", "GEL", "GHS", "GIP", "GMD", "GNF", "GTQ", "GYD", "HKD", "HNL", "HRK", "HTG", "HUF", "IDR", "ILS", "IQD", "IRR", "ISK", "JMD", "JOD", "KES", "KGS", "KHR", "KMF", "KPW", "KRW", "KWD", "KYD", "KZT", "LAK", "LBP", "LKR", "LRD", "LSL", "LYD", "MAD", "MDL", "MGA", "MKD", "MMK", "MNT", "MOP", "MRU", "MUR", "MVR", "MWK", "MXN", "MXV", "MYR", "MZN", "NAD", "NGN", "NIO", "NOK", "NPR", "OMR", "PAB", "PEN", "PGK", "PHP", "PKR", "PLN", "PYG", "QAR", "RON", "RSD", "RUB", "RWF", "SAR", "SBD", "SCR", "SDG", "SGD", "SHP", "SLL", "SOS", "SRD", "SSP", "STN", "SVC", "SYP", "SZL", "THB", "TJS", "TMT", "TND", "TOP", "TRY", "TTD", "TWD", "TZS", "UAH", "UGX", "USN", "UYI", "UYU", "UZS", "VEF", "VND", "VUV", "WST", "XAF", "XCD", "XDR", "XOF", "XPF", "XSU", "XUA", "YER", "ZAR", "ZMW", "ZWL"], # required
    #                 frequency: "Monthly" # One of: ["Monthly"], # required
    #                 target_company: "String", # required
    #                 estimation_url: "WebsiteUrl"
    #               }
    #             ]
    #           }
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_engagement_invitation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "EngagementInvitationIdentifier", # required
    #     arn: "EngagementInvitationArn", # required
    #   }
    # @return [Types::CreateEngagementInvitationResponse]
    def create_engagement_invitation(params = {}, options = {})
      request = build_request(:create_engagement_invitation, params)
      request.send_request(options)
    end

    # <p>Creates an <code>Opportunity</code> record in Partner Central. Use this operation to create a potential business opportunity for submission to Amazon Web Services. Creating an opportunity sets <code>Lifecycle.ReviewStatus</code> to <code>Pending Submission</code>.</p> <p>To submit an opportunity, follow these steps:</p> <ol> <li> <p>To create the opportunity, use <code>CreateOpportunity</code>.</p> </li> <li> <p>To associate a solution with the opportunity, use <code>AssociateOpportunity</code>.</p> </li> <li> <p>To start the engagement with AWS, use <code>StartEngagementFromOpportunity</code>.</p> </li> </ol> <p>After submission, you can't edit the opportunity until the review is complete. But opportunities in the <code>Pending Submission</code> state must have complete details. You can update the opportunity while it's in the <code>Pending Submission</code> state.</p> <p>There's a set of mandatory fields to create opportunities, but consider providing optional fields to enrich the opportunity record.</p>
    # @param [Hash, Types::CreateOpportunityRequest] params
    # @option params [String] :catalog
    #   <p>Specifies the catalog associated with the request. This field takes a string value from a predefined list: <code>AWS</code> or <code>Sandbox</code>. The catalog determines which environment the opportunity is created in. Use <code>AWS</code> to create opportunities in the Amazon Web Services catalog, and <code>Sandbox</code> for testing in secure, isolated environments.</p>
    # @option params [Array<String>] :primary_needs_from_aws
    #   <p>Identifies the type of support the partner needs from Amazon Web Services.</p> <p>Valid values:</p> <ul> <li> <p>Cosell—Architectural Validation: Confirmation from Amazon Web Services that the partner's proposed solution architecture is aligned with Amazon Web Services best practices and poses minimal architectural risks.</p> </li> <li> <p>Cosell—Business Presentation: Request Amazon Web Services seller's participation in a joint customer presentation.</p> </li> <li> <p>Cosell—Competitive Information: Access to Amazon Web Services competitive resources and support for the partner's proposed solution.</p> </li> <li> <p>Cosell—Pricing Assistance: Connect with an Amazon Web Services seller for support situations where a partner may be receiving an upfront discount on a service (for example: EDP deals).</p> </li> <li> <p>Cosell—Technical Consultation: Connect with an Amazon Web Services Solutions Architect to address the partner's questions about the proposed solution.</p> </li> <li> <p>Cosell—Total Cost of Ownership Evaluation: Assistance with quoting different cost savings of proposed solutions on Amazon Web Services versus on-premises or a traditional hosting environment.</p> </li> <li> <p>Cosell—Deal Support: Request Amazon Web Services seller's support to progress the opportunity (for example: joint customer call, strategic positioning).</p> </li> <li> <p>Cosell—Support for Public Tender/RFx: Opportunity related to the public sector where the partner needs Amazon Web Services RFx support.</p> </li> </ul>
    # @option params [String] :national_security
    #   <p>Indicates whether the <code>Opportunity</code> pertains to a national security project. This field must be set to <code>true</code> only when the customer's industry is <i>Government</i>. Additional privacy and security measures apply during the review and management process for opportunities marked as <code>NationalSecurity</code>.</p>
    # @option params [String] :partner_opportunity_identifier
    #   <p>Specifies the opportunity's unique identifier in the partner's CRM system. This value is essential to track and reconcile because it's included in the outbound payload to the partner.</p> <p>This field allows partners to link an opportunity to their CRM, which helps to ensure seamless integration and accurate synchronization between the Partner Central API and the partner's internal systems.</p>
    # @option params [Types::Customer] :customer
    #   <p>Specifies customer details associated with the <code>Opportunity</code>.</p>
    # @option params [Types::Project] :project
    #   <p>An object that contains project details for the <code>Opportunity</code>.</p>
    # @option params [String] :opportunity_type
    #   <p>Specifies the opportunity type as a renewal, new, or expansion.</p> <p>Opportunity types:</p> <ul> <li> <p>New opportunity: Represents a new business opportunity with a potential customer that's not previously engaged with your solutions or services.</p> </li> <li> <p>Renewal opportunity: Represents an opportunity to renew an existing contract or subscription with a current customer, ensuring continuity of service.</p> </li> <li> <p>Expansion opportunity: Represents an opportunity to expand the scope of an existing contract or subscription, either by adding new services or increasing the volume of existing services for a current customer.</p> </li> </ul>
    # @option params [Types::Marketing] :marketing
    #   <p>This object contains marketing details and is optional for an opportunity.</p>
    # @option params [Types::SoftwareRevenue] :software_revenue
    #   <p>Specifies details of a customer's procurement terms. This is required only for partners in eligible programs.</p>
    # @option params [String] :client_token
    #   <p>Required to be unique, and should be unchanging, it can be randomly generated or a meaningful string.</p> <p>Default: None</p> <p>Best practice: To help ensure uniqueness and avoid conflicts, use a Universally Unique Identifier (UUID) as the <code>ClientToken</code>. You can use standard libraries from most programming languages to generate this. If you use the same client token, the API returns the following error: "Conflicting client token submitted for a new request body."</p>
    # @option params [Types::LifeCycle] :life_cycle
    #   <p>An object that contains lifecycle details for the <code>Opportunity</code>.</p>
    # @option params [String] :origin
    #   <p>Specifies the origin of the opportunity, indicating if it was sourced from Amazon Web Services or the partner. For all opportunities created with <code>Catalog: AWS</code>, this field must only be <code>Partner Referral</code>. However, when using <code>Catalog: Sandbox</code>, you can set this field to <code>AWS Referral</code> to simulate Amazon Web Services referral creation. This allows Amazon Web Services-originated flows testing in the sandbox catalog.</p>
    # @option params [Array<Types::Contact>] :opportunity_team
    #   <p>Represents the internal team handling the opportunity. Specify collaborating members of this opportunity who are within the partner's organization.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A map of the key-value pairs of the tag or tags to assign.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogIdentifier", # required
    #     primary_needs_from_aws: ["Co-Sell - Architectural Validation" # One of: ["Co-Sell - Architectural Validation", "Co-Sell - Business Presentation", "Co-Sell - Competitive Information", "Co-Sell - Pricing Assistance", "Co-Sell - Technical Consultation", "Co-Sell - Total Cost of Ownership Evaluation", "Co-Sell - Deal Support", "Co-Sell - Support for Public Tender / RFx"]],
    #     national_security: "Yes" # One of: ["Yes", "No"],
    #     partner_opportunity_identifier: "String",
    #     customer: {
    #       account: {
    #         industry: "Aerospace" # One of: ["Aerospace", "Agriculture", "Automotive", "Computers and Electronics", "Consumer Goods", "Education", "Energy - Oil and Gas", "Energy - Power and Utilities", "Financial Services", "Gaming", "Government", "Healthcare", "Hospitality", "Life Sciences", "Manufacturing", "Marketing and Advertising", "Media and Entertainment", "Mining", "Non-Profit Organization", "Professional Services", "Real Estate and Construction", "Retail", "Software and Internet", "Telecommunications", "Transportation and Logistics", "Travel", "Wholesale and Distribution", "Other"],
    #         other_industry: "String",
    #         company_name: "Name", # required
    #         website_url: "WebsiteUrl",
    #         aws_account_id: "AwsAccount",
    #         address: {
    #           city: "AddressPart",
    #           postal_code: "AddressPart",
    #           state_or_region: "AddressPart",
    #           country_code: "US" # One of: ["US", "AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "CD", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW"],
    #           street_address: "AddressPart"
    #         },
    #         duns: "DunsNumber"
    #       },
    #       contacts: [
    #         {
    #           email: "Email",
    #           first_name: "Name",
    #           last_name: "Name",
    #           business_title: "JobTitle",
    #           phone: "PhoneNumber"
    #         }
    #       ]
    #     },
    #     project: {
    #       delivery_models: ["SaaS or PaaS" # One of: ["SaaS or PaaS", "BYOL or AMI", "Managed Services", "Professional Services", "Resell", "Other"]],
    #       expected_customer_spend: [
    #         {
    #           amount: "Amount", # required
    #           currency_code: "USD" # One of: ["USD", "EUR", "GBP", "AUD", "CAD", "CNY", "NZD", "INR", "JPY", "CHF", "SEK", "AED", "AFN", "ALL", "AMD", "ANG", "AOA", "ARS", "AWG", "AZN", "BAM", "BBD", "BDT", "BGN", "BHD", "BIF", "BMD", "BND", "BOB", "BOV", "BRL", "BSD", "BTN", "BWP", "BYN", "BZD", "CDF", "CHE", "CHW", "CLF", "CLP", "COP", "COU", "CRC", "CUC", "CUP", "CVE", "CZK", "DJF", "DKK", "DOP", "DZD", "EGP", "ERN", "ETB", "FJD", "FKP", "GEL", "GHS", "GIP", "GMD", "GNF", "GTQ", "GYD", "HKD", "HNL", "HRK", "HTG", "HUF", "IDR", "ILS", "IQD", "IRR", "ISK", "JMD", "JOD", "KES", "KGS", "KHR", "KMF", "KPW", "KRW", "KWD", "KYD", "KZT", "LAK", "LBP", "LKR", "LRD", "LSL", "LYD", "MAD", "MDL", "MGA", "MKD", "MMK", "MNT", "MOP", "MRU", "MUR", "MVR", "MWK", "MXN", "MXV", "MYR", "MZN", "NAD", "NGN", "NIO", "NOK", "NPR", "OMR", "PAB", "PEN", "PGK", "PHP", "PKR", "PLN", "PYG", "QAR", "RON", "RSD", "RUB", "RWF", "SAR", "SBD", "SCR", "SDG", "SGD", "SHP", "SLL", "SOS", "SRD", "SSP", "STN", "SVC", "SYP", "SZL", "THB", "TJS", "TMT", "TND", "TOP", "TRY", "TTD", "TWD", "TZS", "UAH", "UGX", "USN", "UYI", "UYU", "UZS", "VEF", "VND", "VUV", "WST", "XAF", "XCD", "XDR", "XOF", "XPF", "XSU", "XUA", "YER", "ZAR", "ZMW", "ZWL"], # required
    #           frequency: "Monthly" # One of: ["Monthly"], # required
    #           target_company: "String", # required
    #           estimation_url: "WebsiteUrl"
    #         }
    #       ],
    #       title: "PiiString",
    #       apn_programs: ["String"],
    #       customer_business_problem: "PiiString",
    #       customer_use_case: "String",
    #       related_opportunity_identifier: "OpportunityIdentifier",
    #       sales_activities: ["Initialized discussions with customer" # One of: ["Initialized discussions with customer", "Customer has shown interest in solution", "Conducted POC / Demo", "In evaluation / planning stage", "Agreed on solution to Business Problem", "Completed Action Plan", "Finalized Deployment Need", "SOW Signed"]],
    #       competitor_name: "Oracle Cloud" # One of: ["Oracle Cloud", "On-Prem", "Co-location", "Akamai", "AliCloud", "Google Cloud Platform", "IBM Softlayer", "Microsoft Azure", "Other- Cost Optimization", "No Competition", "*Other"],
    #       other_competitor_names: "String",
    #       other_solution_description: "PiiString",
    #       additional_comments: "String"
    #     },
    #     opportunity_type: "Net New Business" # One of: ["Net New Business", "Flat Renewal", "Expansion"],
    #     marketing: {
    #       campaign_name: "String",
    #       source: "Marketing Activity" # One of: ["Marketing Activity", "None"],
    #       use_cases: ["String"],
    #       channels: ["AWS Marketing Central" # One of: ["AWS Marketing Central", "Content Syndication", "Display", "Email", "Live Event", "Out Of Home (OOH)", "Print", "Search", "Social", "Telemarketing", "TV", "Video", "Virtual Event"]],
    #       aws_funding_used: "Yes" # One of: ["Yes", "No"]
    #     },
    #     software_revenue: {
    #       delivery_model: "Contract" # One of: ["Contract", "Pay-as-you-go", "Subscription"],
    #       value: {
    #         amount: "String", # required
    #         currency_code: "USD" # One of: ["USD", "EUR", "GBP", "AUD", "CAD", "CNY", "NZD", "INR", "JPY", "CHF", "SEK", "AED", "AFN", "ALL", "AMD", "ANG", "AOA", "ARS", "AWG", "AZN", "BAM", "BBD", "BDT", "BGN", "BHD", "BIF", "BMD", "BND", "BOB", "BOV", "BRL", "BSD", "BTN", "BWP", "BYN", "BZD", "CDF", "CHE", "CHW", "CLF", "CLP", "COP", "COU", "CRC", "CUC", "CUP", "CVE", "CZK", "DJF", "DKK", "DOP", "DZD", "EGP", "ERN", "ETB", "FJD", "FKP", "GEL", "GHS", "GIP", "GMD", "GNF", "GTQ", "GYD", "HKD", "HNL", "HRK", "HTG", "HUF", "IDR", "ILS", "IQD", "IRR", "ISK", "JMD", "JOD", "KES", "KGS", "KHR", "KMF", "KPW", "KRW", "KWD", "KYD", "KZT", "LAK", "LBP", "LKR", "LRD", "LSL", "LYD", "MAD", "MDL", "MGA", "MKD", "MMK", "MNT", "MOP", "MRU", "MUR", "MVR", "MWK", "MXN", "MXV", "MYR", "MZN", "NAD", "NGN", "NIO", "NOK", "NPR", "OMR", "PAB", "PEN", "PGK", "PHP", "PKR", "PLN", "PYG", "QAR", "RON", "RSD", "RUB", "RWF", "SAR", "SBD", "SCR", "SDG", "SGD", "SHP", "SLL", "SOS", "SRD", "SSP", "STN", "SVC", "SYP", "SZL", "THB", "TJS", "TMT", "TND", "TOP", "TRY", "TTD", "TWD", "TZS", "UAH", "UGX", "USN", "UYI", "UYU", "UZS", "VEF", "VND", "VUV", "WST", "XAF", "XCD", "XDR", "XOF", "XPF", "XSU", "XUA", "YER", "ZAR", "ZMW", "ZWL"], # required
    #       },
    #       effective_date: "Date",
    #       expiration_date: "Date"
    #     },
    #     client_token: "String", # required
    #     life_cycle: {
    #       stage: "Prospect" # One of: ["Prospect", "Qualified", "Technical Validation", "Business Validation", "Committed", "Launched", "Closed Lost"],
    #       closed_lost_reason: "Customer Deficiency" # One of: ["Customer Deficiency", "Delay / Cancellation of Project", "Legal / Tax / Regulatory", "Lost to Competitor - Google", "Lost to Competitor - Microsoft", "Lost to Competitor - SoftLayer", "Lost to Competitor - VMWare", "Lost to Competitor - Other", "No Opportunity", "On Premises Deployment", "Partner Gap", "Price", "Security / Compliance", "Technical Limitations", "Customer Experience", "Other", "People/Relationship/Governance", "Product/Technology", "Financial/Commercial"],
    #       next_steps: "PiiString",
    #       target_close_date: "Date",
    #       review_status: "Pending Submission" # One of: ["Pending Submission", "Submitted", "In review", "Approved", "Rejected", "Action Required"],
    #       review_comments: "String",
    #       review_status_reason: "String",
    #       next_steps_history: [
    #         {
    #           value: "String", # required
    #           time: Time.now, # required
    #         }
    #       ]
    #     },
    #     origin: "AWS Referral" # One of: ["AWS Referral", "Partner Referral"],
    #     opportunity_team: [
    #       {
    #         email: "Email",
    #         first_name: "Name",
    #         last_name: "Name",
    #         business_title: "JobTitle",
    #         phone: "PhoneNumber"
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_opportunity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "OpportunityIdentifier", # required
    #     partner_opportunity_identifier: "String",
    #     last_modified_date: Time.now
    #   }
    # @return [Types::CreateOpportunityResponse]
    def create_opportunity(params = {}, options = {})
      request = build_request(:create_opportunity, params)
      request.send_request(options)
    end

    # <p> This action allows you to create an immutable snapshot of a specific resource, such as an opportunity, within the context of an engagement. The snapshot captures a subset of the resource's data based on the schema defined by the provided template.</p>
    # @param [Hash, Types::CreateResourceSnapshotRequest] params
    # @option params [String] :catalog
    #   <p> Specifies the catalog where the snapshot is created. Valid values are <code>AWS</code> and <code>Sandbox</code>. </p>
    # @option params [String] :engagement_identifier
    #   <p> The unique identifier of the engagement associated with this snapshot. This field links the snapshot to a specific engagement context. </p>
    # @option params [String] :resource_type
    #   <p> Specifies the type of resource for which the snapshot is being created. This field determines the structure and content of the snapshot. Must be one of the supported resource types, such as: <code>Opportunity</code>. </p>
    # @option params [String] :resource_identifier
    #   <p> The unique identifier of the specific resource to be snapshotted. The format and constraints of this identifier depend on the <code>ResourceType</code> specified. For example: For <code>Opportunity</code> type, it will be an opportunity ID. </p>
    # @option params [String] :resource_snapshot_template_identifier
    #   <p> The name of the template that defines the schema for the snapshot. This template determines which subset of the resource data will be included in the snapshot. Must correspond to an existing and valid template for the specified <code>ResourceType</code>. </p>
    # @option params [String] :client_token
    #   <p> Specifies a unique, client-generated UUID to ensure that the request is handled exactly once. This token helps prevent duplicate snapshot creations. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogIdentifier", # required
    #     engagement_identifier: "EngagementIdentifier", # required
    #     resource_type: "Opportunity" # One of: ["Opportunity"], # required
    #     resource_identifier: "ResourceIdentifier", # required
    #     resource_snapshot_template_identifier: "ResourceTemplateName", # required
    #     client_token: "ClientToken", # required
    #   }
    #   options = {}
    #   response = client.create_resource_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "ResourceArn",
    #     revision: 1
    #   }
    # @return [Types::CreateResourceSnapshotResponse]
    def create_resource_snapshot(params = {}, options = {})
      request = build_request(:create_resource_snapshot, params)
      request.send_request(options)
    end

    # <p>Use this action to create a job to generate a snapshot of the specified resource within an engagement. It initiates an asynchronous process to create a resource snapshot. The job creates a new snapshot only if the resource state has changed, adhering to the same access control and immutability rules as direct snapshot creation.</p>
    # @param [Hash, Types::CreateResourceSnapshotJobRequest] params
    # @option params [String] :catalog
    #   <p>Specifies the catalog in which to create the snapshot job. Valid values are <code>AWS</code> and <code> Sandbox</code>.</p>
    # @option params [String] :client_token
    #   <p>A client-generated UUID used for idempotency check. The token helps prevent duplicate job creations.</p>
    # @option params [String] :engagement_identifier
    #   <p>Specifies the identifier of the engagement associated with the resource to be snapshotted.</p>
    # @option params [String] :resource_type
    #   <p>The type of resource for which the snapshot job is being created. Must be one of the supported resource types i.e. <code>Opportunity</code> </p>
    # @option params [String] :resource_identifier
    #   <p>Specifies the identifier of the specific resource to be snapshotted. The format depends on the <code> ResourceType</code>.</p>
    # @option params [String] :resource_snapshot_template_identifier
    #   <p>Specifies the name of the template that defines the schema for the snapshot.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A map of the key-value pairs of the tag or tags to assign.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogIdentifier", # required
    #     client_token: "ClientToken", # required
    #     engagement_identifier: "EngagementIdentifier", # required
    #     resource_type: "Opportunity" # One of: ["Opportunity"], # required
    #     resource_identifier: "ResourceIdentifier", # required
    #     resource_snapshot_template_identifier: "ResourceTemplateName", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_resource_snapshot_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceSnapshotJobIdentifier",
    #     arn: "ResourceSnapshotJobArn"
    #   }
    # @return [Types::CreateResourceSnapshotJobResponse]
    def create_resource_snapshot_job(params = {}, options = {})
      request = build_request(:create_resource_snapshot_job, params)
      request.send_request(options)
    end

    # <p> Use this action to deletes a previously created resource snapshot job. The job must be in a stopped state before it can be deleted. </p>
    # @param [Hash, Types::DeleteResourceSnapshotJobRequest] params
    # @option params [String] :catalog
    #   <p> Specifies the catalog from which to delete the snapshot job. Valid values are <code>AWS</code> and <code>Sandbox</code>. </p>
    # @option params [String] :resource_snapshot_job_identifier
    #   <p> The unique identifier of the resource snapshot job to be deleted. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogIdentifier", # required
    #     resource_snapshot_job_identifier: "ResourceSnapshotJobIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_resource_snapshot_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_resource_snapshot_job(params = {}, options = {})
      request = build_request(:delete_resource_snapshot_job, params)
      request.send_request(options)
    end

    # <p>Allows you to remove an existing association between an <code>Opportunity</code> and related entities, such as a Partner Solution, Amazon Web Services product, or an Amazon Web Services Marketplace offer. This operation is the counterpart to <code>AssociateOpportunity</code>, and it provides flexibility to manage associations as business needs change.</p> <p>Use this operation to update the associations of an <code>Opportunity</code> due to changes in the related entities, or if an association was made in error. Ensuring accurate associations helps maintain clarity and accuracy to track and manage business opportunities. When you replace an entity, first attach the new entity and then disassociate the one to be removed, especially if it's the last remaining entity that's required.</p>
    # @param [Hash, Types::DisassociateOpportunityRequest] params
    # @option params [String] :catalog
    #   <p>Specifies the catalog associated with the request. This field takes a string value from a predefined list: <code>AWS</code> or <code>Sandbox</code>. The catalog determines which environment the opportunity disassociation is made in. Use <code>AWS</code> to disassociate opportunities in the Amazon Web Services catalog, and <code>Sandbox</code> for testing in secure, isolated environments.</p>
    # @option params [String] :opportunity_identifier
    #   <p>The opportunity's unique identifier for when you want to disassociate it from related entities. This identifier helps to ensure that the correct opportunity is updated.</p> <p>Validation: Ensure that the provided identifier corresponds to an existing opportunity in the Amazon Web Services system because incorrect identifiers result in an error and no changes are made.</p>
    # @option params [String] :related_entity_type
    #   <p>The type of the entity that you're disassociating from the opportunity. When you specify the entity type, it helps the system correctly process the disassociation request to ensure that the right connections are removed.</p> <p>Examples of entity types include Partner Solution, Amazon Web Services product, and Amazon Web Services Marketplaceoffer. Ensure that the value matches one of the expected entity types.</p> <p>Validation: Provide a valid entity type to help ensure successful disassociation. An invalid or incorrect entity type results in an error.</p>
    # @option params [String] :related_entity_identifier
    #   <p>The related entity's identifier that you want to disassociate from the opportunity. Depending on the type of entity, this could be a simple identifier or an Amazon Resource Name (ARN) for entities managed through Amazon Web Services Marketplace.</p> <p>For Amazon Web Services Marketplace entities, use the Amazon Web Services Marketplace API to obtain the necessary ARNs. For guidance on retrieving these ARNs, see <a href="https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html"> Amazon Web Services MarketplaceUsing the Amazon Web Services Marketplace Catalog API</a>.</p> <p>Validation: Ensure the identifier or ARN is valid and corresponds to an existing entity. An incorrect or invalid identifier results in an error.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogIdentifier", # required
    #     opportunity_identifier: "OpportunityIdentifier", # required
    #     related_entity_type: "Solutions" # One of: ["Solutions", "AwsProducts", "AwsMarketplaceOffers"], # required
    #     related_entity_identifier: "String", # required
    #   }
    #   options = {}
    #   response = client.disassociate_opportunity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def disassociate_opportunity(params = {}, options = {})
      request = build_request(:disassociate_opportunity, params)
      request.send_request(options)
    end

    # <p>Retrieves a summary of an AWS Opportunity. This summary includes high-level details about the opportunity sourced from AWS, such as lifecycle information, customer details, and involvement type. It is useful for tracking updates on the AWS opportunity corresponding to an opportunity in the partner's account.</p>
    # @param [Hash, Types::GetAwsOpportunitySummaryRequest] params
    # @option params [String] :catalog
    #   <p>Specifies the catalog in which the AWS Opportunity is located. Accepted values include <code>AWS</code> for production opportunities or <code>Sandbox</code> for testing purposes. The catalog determines which environment the opportunity data is pulled from.</p>
    # @option params [String] :related_opportunity_identifier
    #   <p>The unique identifier for the related partner opportunity. Use this field to correlate an AWS opportunity with its corresponding partner opportunity.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogIdentifier", # required
    #     related_opportunity_identifier: "OpportunityIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_aws_opportunity_summary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     catalog: "CatalogIdentifier", # required
    #     related_opportunity_id: "OpportunityIdentifier",
    #     origin: "AWS Referral" # One of: ["AWS Referral", "Partner Referral"],
    #     involvement_type: "For Visibility Only" # One of: ["For Visibility Only", "Co-Sell"],
    #     visibility: "Full" # One of: ["Full", "Limited"],
    #     life_cycle: {
    #       target_close_date: "Date",
    #       closed_lost_reason: "Administrative" # One of: ["Administrative", "Business Associate Agreement", "Company Acquired/Dissolved", "Competitive Offering", "Customer Data Requirement", "Customer Deficiency", "Customer Experience", "Delay / Cancellation of Project", "Duplicate", "Duplicate Opportunity", "Executive Blocker", "Failed Vetting", "Feature Limitation", "Financial/Commercial", "Insufficient Amazon Value", "Insufficient AWS Value", "International Constraints", "Legal / Tax / Regulatory", "Legal Terms and Conditions", "Lost to Competitor", "Lost to Competitor - Google", "Lost to Competitor - Microsoft", "Lost to Competitor - Other", "Lost to Competitor - Rackspace", "Lost to Competitor - SoftLayer", "Lost to Competitor - VMWare", "No Customer Reference", "No Integration Resources", "No Opportunity", "No Perceived Value of MP", "No Response", "Not Committed to AWS", "No Update", "On Premises Deployment", "Other", "Other (Details in Description)", "Partner Gap", "Past Due", "People/Relationship/Governance", "Platform Technology Limitation", "Preference for Competitor", "Price", "Product/Technology", "Product Not on AWS", "Security / Compliance", "Self-Service", "Technical Limitations", "Term Sheet Impasse"],
    #       stage: "Not Started" # One of: ["Not Started", "In Progress", "Prospect", "Engaged", "Identified", "Qualify", "Research", "Seller Engaged", "Evaluating", "Seller Registered", "Term Sheet Negotiation", "Contract Negotiation", "Onboarding", "Building Integration", "Qualified", "On-hold", "Technical Validation", "Business Validation", "Committed", "Launched", "Deferred to Partner", "Closed Lost", "Completed", "Closed Incomplete"],
    #       next_steps: "PiiString",
    #       next_steps_history: [
    #         {
    #           value: "String", # required
    #           time: Time.now, # required
    #         }
    #       ]
    #     },
    #     opportunity_team: [
    #       {
    #         email: "Email",
    #         first_name: "Name",
    #         last_name: "Name",
    #         business_title: "AWSSalesRep" # One of: ["AWSSalesRep", "AWSAccountOwner", "WWPSPDM", "PDM", "PSM", "ISVSM"]
    #       }
    #     ],
    #     insights: {
    #       next_best_actions: "String",
    #       engagement_score: "High" # One of: ["High", "Medium", "Low"]
    #     },
    #     involvement_type_change_reason: "Expansion Opportunity" # One of: ["Expansion Opportunity", "Change in Deal Information", "Customer Requested", "Technical Complexity", "Risk Mitigation"],
    #     related_entity_ids: {
    #       aws_products: ["AwsProductIdentifier"],
    #       solutions: ["SolutionIdentifier"]
    #     },
    #     customer: {
    #       contacts: [
    #         {
    #           email: "Email",
    #           first_name: "Name",
    #           last_name: "Name",
    #           business_title: "JobTitle",
    #           phone: "PhoneNumber"
    #         }
    #       ]
    #     },
    #     project: {
    #       expected_customer_spend: [
    #         {
    #           amount: "Amount", # required
    #           currency_code: "USD" # One of: ["USD", "EUR", "GBP", "AUD", "CAD", "CNY", "NZD", "INR", "JPY", "CHF", "SEK", "AED", "AFN", "ALL", "AMD", "ANG", "AOA", "ARS", "AWG", "AZN", "BAM", "BBD", "BDT", "BGN", "BHD", "BIF", "BMD", "BND", "BOB", "BOV", "BRL", "BSD", "BTN", "BWP", "BYN", "BZD", "CDF", "CHE", "CHW", "CLF", "CLP", "COP", "COU", "CRC", "CUC", "CUP", "CVE", "CZK", "DJF", "DKK", "DOP", "DZD", "EGP", "ERN", "ETB", "FJD", "FKP", "GEL", "GHS", "GIP", "GMD", "GNF", "GTQ", "GYD", "HKD", "HNL", "HRK", "HTG", "HUF", "IDR", "ILS", "IQD", "IRR", "ISK", "JMD", "JOD", "KES", "KGS", "KHR", "KMF", "KPW", "KRW", "KWD", "KYD", "KZT", "LAK", "LBP", "LKR", "LRD", "LSL", "LYD", "MAD", "MDL", "MGA", "MKD", "MMK", "MNT", "MOP", "MRU", "MUR", "MVR", "MWK", "MXN", "MXV", "MYR", "MZN", "NAD", "NGN", "NIO", "NOK", "NPR", "OMR", "PAB", "PEN", "PGK", "PHP", "PKR", "PLN", "PYG", "QAR", "RON", "RSD", "RUB", "RWF", "SAR", "SBD", "SCR", "SDG", "SGD", "SHP", "SLL", "SOS", "SRD", "SSP", "STN", "SVC", "SYP", "SZL", "THB", "TJS", "TMT", "TND", "TOP", "TRY", "TTD", "TWD", "TZS", "UAH", "UGX", "USN", "UYI", "UYU", "UZS", "VEF", "VND", "VUV", "WST", "XAF", "XCD", "XDR", "XOF", "XPF", "XSU", "XUA", "YER", "ZAR", "ZMW", "ZWL"], # required
    #           frequency: "Monthly" # One of: ["Monthly"], # required
    #           target_company: "String", # required
    #           estimation_url: "WebsiteUrl"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetAwsOpportunitySummaryResponse]
    def get_aws_opportunity_summary(params = {}, options = {})
      request = build_request(:get_aws_opportunity_summary, params)
      request.send_request(options)
    end

    # <p>Use this action to retrieve the engagement record for a given <code>EngagementIdentifier</code>.</p>
    # @param [Hash, Types::GetEngagementRequest] params
    # @option params [String] :catalog
    #   <p>Specifies the catalog related to the engagement request. Valid values are <code>AWS</code> and <code>Sandbox</code>.</p>
    # @option params [String] :identifier
    #   <p>Specifies the identifier of the Engagement record to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogIdentifier", # required
    #     identifier: "EngagementArnOrIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_engagement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "EngagementIdentifier",
    #     arn: "EngagementArn",
    #     title: "EngagementTitle",
    #     description: "EngagementDescription",
    #     created_at: Time.now,
    #     created_by: "AwsAccount",
    #     member_count: 1,
    #     contexts: [
    #       {
    #         type: "CustomerProject" # One of: ["CustomerProject"], # required
    #         payload: {
    #           # One of:
    #           customer_project: {
    #             customer: {
    #               industry: "Aerospace" # One of: ["Aerospace", "Agriculture", "Automotive", "Computers and Electronics", "Consumer Goods", "Education", "Energy - Oil and Gas", "Energy - Power and Utilities", "Financial Services", "Gaming", "Government", "Healthcare", "Hospitality", "Life Sciences", "Manufacturing", "Marketing and Advertising", "Media and Entertainment", "Mining", "Non-Profit Organization", "Professional Services", "Real Estate and Construction", "Retail", "Software and Internet", "Telecommunications", "Transportation and Logistics", "Travel", "Wholesale and Distribution", "Other"], # required
    #               company_name: "CompanyName", # required
    #               website_url: "CompanyWebsiteUrl", # required
    #               country_code: "US" # One of: ["US", "AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "CD", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW"], # required
    #             },
    #             project: {
    #               title: "EngagementCustomerProjectTitle", # required
    #               business_problem: "EngagementCustomerBusinessProblem", # required
    #               target_completion_date: "String", # required
    #             }
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::GetEngagementResponse]
    def get_engagement(params = {}, options = {})
      request = build_request(:get_engagement, params)
      request.send_request(options)
    end

    # <p>Retrieves the details of an engagement invitation shared by AWS with a partner. The information includes aspects such as customer, project details, and lifecycle information. To connect an engagement invitation with an opportunity, match the invitation’s <code>Payload.Project.Title</code> with opportunity <code>Project.Title</code>.</p>
    # @param [Hash, Types::GetEngagementInvitationRequest] params
    # @option params [String] :catalog
    #   <p>Specifies the catalog associated with the request. The field accepts values from the predefined set: <code>AWS</code> for live operations or <code>Sandbox</code> for testing environments.</p>
    # @option params [String] :identifier
    #   <p>Specifies the unique identifier for the retrieved engagement invitation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogIdentifier", # required
    #     identifier: "EngagementInvitationArnOrIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_engagement_invitation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "String",
    #     payload_type: "OpportunityInvitation" # One of: ["OpportunityInvitation"],
    #     id: "EngagementInvitationArnOrIdentifier", # required
    #     engagement_id: "EngagementIdentifier",
    #     engagement_title: "EngagementTitle",
    #     status: "ACCEPTED" # One of: ["ACCEPTED", "PENDING", "REJECTED", "EXPIRED"],
    #     invitation_date: Time.now,
    #     expiration_date: Time.now,
    #     sender_aws_account_id: "AwsAccount",
    #     sender_company_name: "String",
    #     receiver: {
    #       # One of:
    #       account: {
    #         alias: "Alias",
    #         aws_account_id: "AwsAccount", # required
    #       }
    #     },
    #     catalog: "CatalogIdentifier", # required
    #     rejection_reason: "RejectionReasonString",
    #     payload: {
    #       # One of:
    #       opportunity_invitation: {
    #         sender_contacts: [
    #           {
    #             email: "SenderContactEmail", # required
    #             first_name: "Name",
    #             last_name: "Name",
    #             business_title: "JobTitle",
    #             phone: "PhoneNumber"
    #           }
    #         ],
    #         receiver_responsibilities: ["Distributor" # One of: ["Distributor", "Reseller", "Hardware Partner", "Managed Service Provider", "Software Partner", "Services Partner", "Training Partner", "Co-Sell Facilitator", "Facilitator"]], # required
    #         customer: { # required
    #           industry: "Aerospace" # One of: ["Aerospace", "Agriculture", "Automotive", "Computers and Electronics", "Consumer Goods", "Education", "Energy - Oil and Gas", "Energy - Power and Utilities", "Financial Services", "Gaming", "Government", "Healthcare", "Hospitality", "Life Sciences", "Manufacturing", "Marketing and Advertising", "Media and Entertainment", "Mining", "Non-Profit Organization", "Professional Services", "Real Estate and Construction", "Retail", "Software and Internet", "Telecommunications", "Transportation and Logistics", "Travel", "Wholesale and Distribution", "Other"], # required
    #           company_name: "CompanyName", # required
    #           website_url: "CompanyWebsiteUrl", # required
    #           country_code: "US" # One of: ["US", "AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "CD", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW"], # required
    #         },
    #         project: { # required
    #           business_problem: "EngagementCustomerBusinessProblem", # required
    #           title: "String", # required
    #           target_completion_date: "Date", # required
    #           expected_customer_spend: [ # required
    #             {
    #               amount: "Amount", # required
    #               currency_code: "USD" # One of: ["USD", "EUR", "GBP", "AUD", "CAD", "CNY", "NZD", "INR", "JPY", "CHF", "SEK", "AED", "AFN", "ALL", "AMD", "ANG", "AOA", "ARS", "AWG", "AZN", "BAM", "BBD", "BDT", "BGN", "BHD", "BIF", "BMD", "BND", "BOB", "BOV", "BRL", "BSD", "BTN", "BWP", "BYN", "BZD", "CDF", "CHE", "CHW", "CLF", "CLP", "COP", "COU", "CRC", "CUC", "CUP", "CVE", "CZK", "DJF", "DKK", "DOP", "DZD", "EGP", "ERN", "ETB", "FJD", "FKP", "GEL", "GHS", "GIP", "GMD", "GNF", "GTQ", "GYD", "HKD", "HNL", "HRK", "HTG", "HUF", "IDR", "ILS", "IQD", "IRR", "ISK", "JMD", "JOD", "KES", "KGS", "KHR", "KMF", "KPW", "KRW", "KWD", "KYD", "KZT", "LAK", "LBP", "LKR", "LRD", "LSL", "LYD", "MAD", "MDL", "MGA", "MKD", "MMK", "MNT", "MOP", "MRU", "MUR", "MVR", "MWK", "MXN", "MXV", "MYR", "MZN", "NAD", "NGN", "NIO", "NOK", "NPR", "OMR", "PAB", "PEN", "PGK", "PHP", "PKR", "PLN", "PYG", "QAR", "RON", "RSD", "RUB", "RWF", "SAR", "SBD", "SCR", "SDG", "SGD", "SHP", "SLL", "SOS", "SRD", "SSP", "STN", "SVC", "SYP", "SZL", "THB", "TJS", "TMT", "TND", "TOP", "TRY", "TTD", "TWD", "TZS", "UAH", "UGX", "USN", "UYI", "UYU", "UZS", "VEF", "VND", "VUV", "WST", "XAF", "XCD", "XDR", "XOF", "XPF", "XSU", "XUA", "YER", "ZAR", "ZMW", "ZWL"], # required
    #               frequency: "Monthly" # One of: ["Monthly"], # required
    #               target_company: "String", # required
    #               estimation_url: "WebsiteUrl"
    #             }
    #           ]
    #         }
    #       }
    #     },
    #     invitation_message: "InvitationMessage",
    #     engagement_description: "EngagementDescription",
    #     existing_members: [
    #       {
    #         company_name: "MemberCompanyName",
    #         website_url: "String"
    #       }
    #     ]
    #   }
    # @return [Types::GetEngagementInvitationResponse]
    def get_engagement_invitation(params = {}, options = {})
      request = build_request(:get_engagement_invitation, params)
      request.send_request(options)
    end

    # <p>Fetches the <code>Opportunity</code> record from Partner Central by a given <code>Identifier</code>.</p> <p>Use the <code>ListOpportunities</code> action or the event notification (from Amazon EventBridge) to obtain this identifier.</p>
    # @param [Hash, Types::GetOpportunityRequest] params
    # @option params [String] :catalog
    #   <p>Specifies the catalog associated with the request. This field takes a string value from a predefined list: <code>AWS</code> or <code>Sandbox</code>. The catalog determines which environment the opportunity is fetched from. Use <code>AWS</code> to retrieve opportunities in the Amazon Web Services catalog, and <code>Sandbox</code> to retrieve opportunities in a secure, isolated testing environment.</p>
    # @option params [String] :identifier
    #   <p>Read-only, system generated <code>Opportunity</code> unique identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogIdentifier", # required
    #     identifier: "OpportunityIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_opportunity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     catalog: "CatalogIdentifier", # required
    #     primary_needs_from_aws: ["Co-Sell - Architectural Validation" # One of: ["Co-Sell - Architectural Validation", "Co-Sell - Business Presentation", "Co-Sell - Competitive Information", "Co-Sell - Pricing Assistance", "Co-Sell - Technical Consultation", "Co-Sell - Total Cost of Ownership Evaluation", "Co-Sell - Deal Support", "Co-Sell - Support for Public Tender / RFx"]],
    #     national_security: "Yes" # One of: ["Yes", "No"],
    #     partner_opportunity_identifier: "String",
    #     customer: {
    #       account: {
    #         industry: "Aerospace" # One of: ["Aerospace", "Agriculture", "Automotive", "Computers and Electronics", "Consumer Goods", "Education", "Energy - Oil and Gas", "Energy - Power and Utilities", "Financial Services", "Gaming", "Government", "Healthcare", "Hospitality", "Life Sciences", "Manufacturing", "Marketing and Advertising", "Media and Entertainment", "Mining", "Non-Profit Organization", "Professional Services", "Real Estate and Construction", "Retail", "Software and Internet", "Telecommunications", "Transportation and Logistics", "Travel", "Wholesale and Distribution", "Other"],
    #         other_industry: "String",
    #         company_name: "Name", # required
    #         website_url: "WebsiteUrl",
    #         aws_account_id: "AwsAccount",
    #         address: {
    #           city: "AddressPart",
    #           postal_code: "AddressPart",
    #           state_or_region: "AddressPart",
    #           country_code: "US" # One of: ["US", "AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "CD", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW"],
    #           street_address: "AddressPart"
    #         },
    #         duns: "DunsNumber"
    #       },
    #       contacts: [
    #         {
    #           email: "Email",
    #           first_name: "Name",
    #           last_name: "Name",
    #           business_title: "JobTitle",
    #           phone: "PhoneNumber"
    #         }
    #       ]
    #     },
    #     project: {
    #       delivery_models: ["SaaS or PaaS" # One of: ["SaaS or PaaS", "BYOL or AMI", "Managed Services", "Professional Services", "Resell", "Other"]],
    #       expected_customer_spend: [
    #         {
    #           amount: "Amount", # required
    #           currency_code: "USD" # One of: ["USD", "EUR", "GBP", "AUD", "CAD", "CNY", "NZD", "INR", "JPY", "CHF", "SEK", "AED", "AFN", "ALL", "AMD", "ANG", "AOA", "ARS", "AWG", "AZN", "BAM", "BBD", "BDT", "BGN", "BHD", "BIF", "BMD", "BND", "BOB", "BOV", "BRL", "BSD", "BTN", "BWP", "BYN", "BZD", "CDF", "CHE", "CHW", "CLF", "CLP", "COP", "COU", "CRC", "CUC", "CUP", "CVE", "CZK", "DJF", "DKK", "DOP", "DZD", "EGP", "ERN", "ETB", "FJD", "FKP", "GEL", "GHS", "GIP", "GMD", "GNF", "GTQ", "GYD", "HKD", "HNL", "HRK", "HTG", "HUF", "IDR", "ILS", "IQD", "IRR", "ISK", "JMD", "JOD", "KES", "KGS", "KHR", "KMF", "KPW", "KRW", "KWD", "KYD", "KZT", "LAK", "LBP", "LKR", "LRD", "LSL", "LYD", "MAD", "MDL", "MGA", "MKD", "MMK", "MNT", "MOP", "MRU", "MUR", "MVR", "MWK", "MXN", "MXV", "MYR", "MZN", "NAD", "NGN", "NIO", "NOK", "NPR", "OMR", "PAB", "PEN", "PGK", "PHP", "PKR", "PLN", "PYG", "QAR", "RON", "RSD", "RUB", "RWF", "SAR", "SBD", "SCR", "SDG", "SGD", "SHP", "SLL", "SOS", "SRD", "SSP", "STN", "SVC", "SYP", "SZL", "THB", "TJS", "TMT", "TND", "TOP", "TRY", "TTD", "TWD", "TZS", "UAH", "UGX", "USN", "UYI", "UYU", "UZS", "VEF", "VND", "VUV", "WST", "XAF", "XCD", "XDR", "XOF", "XPF", "XSU", "XUA", "YER", "ZAR", "ZMW", "ZWL"], # required
    #           frequency: "Monthly" # One of: ["Monthly"], # required
    #           target_company: "String", # required
    #           estimation_url: "WebsiteUrl"
    #         }
    #       ],
    #       title: "PiiString",
    #       apn_programs: ["String"],
    #       customer_business_problem: "PiiString",
    #       customer_use_case: "String",
    #       related_opportunity_identifier: "OpportunityIdentifier",
    #       sales_activities: ["Initialized discussions with customer" # One of: ["Initialized discussions with customer", "Customer has shown interest in solution", "Conducted POC / Demo", "In evaluation / planning stage", "Agreed on solution to Business Problem", "Completed Action Plan", "Finalized Deployment Need", "SOW Signed"]],
    #       competitor_name: "Oracle Cloud" # One of: ["Oracle Cloud", "On-Prem", "Co-location", "Akamai", "AliCloud", "Google Cloud Platform", "IBM Softlayer", "Microsoft Azure", "Other- Cost Optimization", "No Competition", "*Other"],
    #       other_competitor_names: "String",
    #       other_solution_description: "PiiString",
    #       additional_comments: "String"
    #     },
    #     opportunity_type: "Net New Business" # One of: ["Net New Business", "Flat Renewal", "Expansion"],
    #     marketing: {
    #       campaign_name: "String",
    #       source: "Marketing Activity" # One of: ["Marketing Activity", "None"],
    #       use_cases: ["String"],
    #       channels: ["AWS Marketing Central" # One of: ["AWS Marketing Central", "Content Syndication", "Display", "Email", "Live Event", "Out Of Home (OOH)", "Print", "Search", "Social", "Telemarketing", "TV", "Video", "Virtual Event"]],
    #       aws_funding_used: "Yes" # One of: ["Yes", "No"]
    #     },
    #     software_revenue: {
    #       delivery_model: "Contract" # One of: ["Contract", "Pay-as-you-go", "Subscription"],
    #       value: {
    #         amount: "String", # required
    #         currency_code: "USD" # One of: ["USD", "EUR", "GBP", "AUD", "CAD", "CNY", "NZD", "INR", "JPY", "CHF", "SEK", "AED", "AFN", "ALL", "AMD", "ANG", "AOA", "ARS", "AWG", "AZN", "BAM", "BBD", "BDT", "BGN", "BHD", "BIF", "BMD", "BND", "BOB", "BOV", "BRL", "BSD", "BTN", "BWP", "BYN", "BZD", "CDF", "CHE", "CHW", "CLF", "CLP", "COP", "COU", "CRC", "CUC", "CUP", "CVE", "CZK", "DJF", "DKK", "DOP", "DZD", "EGP", "ERN", "ETB", "FJD", "FKP", "GEL", "GHS", "GIP", "GMD", "GNF", "GTQ", "GYD", "HKD", "HNL", "HRK", "HTG", "HUF", "IDR", "ILS", "IQD", "IRR", "ISK", "JMD", "JOD", "KES", "KGS", "KHR", "KMF", "KPW", "KRW", "KWD", "KYD", "KZT", "LAK", "LBP", "LKR", "LRD", "LSL", "LYD", "MAD", "MDL", "MGA", "MKD", "MMK", "MNT", "MOP", "MRU", "MUR", "MVR", "MWK", "MXN", "MXV", "MYR", "MZN", "NAD", "NGN", "NIO", "NOK", "NPR", "OMR", "PAB", "PEN", "PGK", "PHP", "PKR", "PLN", "PYG", "QAR", "RON", "RSD", "RUB", "RWF", "SAR", "SBD", "SCR", "SDG", "SGD", "SHP", "SLL", "SOS", "SRD", "SSP", "STN", "SVC", "SYP", "SZL", "THB", "TJS", "TMT", "TND", "TOP", "TRY", "TTD", "TWD", "TZS", "UAH", "UGX", "USN", "UYI", "UYU", "UZS", "VEF", "VND", "VUV", "WST", "XAF", "XCD", "XDR", "XOF", "XPF", "XSU", "XUA", "YER", "ZAR", "ZMW", "ZWL"], # required
    #       },
    #       effective_date: "Date",
    #       expiration_date: "Date"
    #     },
    #     id: "OpportunityIdentifier", # required
    #     arn: "OpportunityArn",
    #     last_modified_date: Time.now, # required
    #     created_date: Time.now, # required
    #     related_entity_identifiers: { # required
    #       aws_marketplace_offers: ["AwsMarketplaceOfferIdentifier"],
    #       solutions: ["SolutionIdentifier"],
    #       aws_products: ["AwsProductIdentifier"]
    #     },
    #     life_cycle: {
    #       stage: "Prospect" # One of: ["Prospect", "Qualified", "Technical Validation", "Business Validation", "Committed", "Launched", "Closed Lost"],
    #       closed_lost_reason: "Customer Deficiency" # One of: ["Customer Deficiency", "Delay / Cancellation of Project", "Legal / Tax / Regulatory", "Lost to Competitor - Google", "Lost to Competitor - Microsoft", "Lost to Competitor - SoftLayer", "Lost to Competitor - VMWare", "Lost to Competitor - Other", "No Opportunity", "On Premises Deployment", "Partner Gap", "Price", "Security / Compliance", "Technical Limitations", "Customer Experience", "Other", "People/Relationship/Governance", "Product/Technology", "Financial/Commercial"],
    #       next_steps: "PiiString",
    #       target_close_date: "Date",
    #       review_status: "Pending Submission" # One of: ["Pending Submission", "Submitted", "In review", "Approved", "Rejected", "Action Required"],
    #       review_comments: "String",
    #       review_status_reason: "String",
    #       next_steps_history: [
    #         {
    #           value: "String", # required
    #           time: Time.now, # required
    #         }
    #       ]
    #     },
    #     opportunity_team: [
    #       {
    #         email: "Email",
    #         first_name: "Name",
    #         last_name: "Name",
    #         business_title: "JobTitle",
    #         phone: "PhoneNumber"
    #       }
    #     ]
    #   }
    # @return [Types::GetOpportunityResponse]
    def get_opportunity(params = {}, options = {})
      request = build_request(:get_opportunity, params)
      request.send_request(options)
    end

    # <p>Use this action to retrieve a specific snapshot record.</p>
    # @param [Hash, Types::GetResourceSnapshotRequest] params
    # @option params [String] :catalog
    #   <p>Specifies the catalog related to the request. Valid values are:</p> <ul> <li> <p>AWS: Retrieves the snapshot from the production AWS environment.</p> </li> <li> <p>Sandbox: Retrieves the snapshot from a sandbox environment used for testing or development purposes.</p> </li> </ul>
    # @option params [String] :engagement_identifier
    #   <p>The unique identifier of the engagement associated with the snapshot. This field links the snapshot to a specific engagement context.</p>
    # @option params [String] :resource_type
    #   <p>Specifies the type of resource that was snapshotted. This field determines the structure and content of the snapshot payload. Valid value includes:<code>Opportunity</code>: For opportunity-related data. </p>
    # @option params [String] :resource_identifier
    #   <p>The unique identifier of the specific resource that was snapshotted. The format and constraints of this identifier depend on the ResourceType specified. For <code>Opportunity</code> type, it will be an <code>opportunity ID</code> </p>
    # @option params [String] :resource_snapshot_template_identifier
    #   <p>he name of the template that defines the schema for the snapshot. This template determines which subset of the resource data is included in the snapshot and must correspond to an existing and valid template for the specified <code>ResourceType</code>.</p>
    # @option params [Integer] :revision
    #   <p>Specifies which revision of the snapshot to retrieve. If omitted returns the latest revision.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogIdentifier", # required
    #     engagement_identifier: "EngagementIdentifier", # required
    #     resource_type: "Opportunity" # One of: ["Opportunity"], # required
    #     resource_identifier: "ResourceIdentifier", # required
    #     resource_snapshot_template_identifier: "ResourceTemplateName", # required
    #     revision: 1
    #   }
    #   options = {}
    #   response = client.get_resource_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     catalog: "CatalogIdentifier", # required
    #     arn: "ResourceArn",
    #     created_by: "AwsAccount",
    #     created_at: Time.now,
    #     engagement_id: "EngagementIdentifier",
    #     resource_type: "Opportunity" # One of: ["Opportunity"],
    #     resource_id: "ResourceIdentifier",
    #     resource_snapshot_template_name: "ResourceTemplateName",
    #     revision: 1,
    #     payload: {
    #       # One of:
    #       opportunity_summary: {
    #         opportunity_type: "Net New Business" # One of: ["Net New Business", "Flat Renewal", "Expansion"],
    #         lifecycle: {
    #           target_close_date: "Date",
    #           review_status: "Pending Submission" # One of: ["Pending Submission", "Submitted", "In review", "Approved", "Rejected", "Action Required"],
    #           stage: "Prospect" # One of: ["Prospect", "Qualified", "Technical Validation", "Business Validation", "Committed", "Launched", "Closed Lost"],
    #           next_steps: "PiiString"
    #         },
    #         opportunity_team: [
    #           {
    #             email: "Email",
    #             first_name: "Name",
    #             last_name: "Name",
    #             business_title: "JobTitle",
    #             phone: "PhoneNumber"
    #           }
    #         ],
    #         primary_needs_from_aws: ["Co-Sell - Architectural Validation" # One of: ["Co-Sell - Architectural Validation", "Co-Sell - Business Presentation", "Co-Sell - Competitive Information", "Co-Sell - Pricing Assistance", "Co-Sell - Technical Consultation", "Co-Sell - Total Cost of Ownership Evaluation", "Co-Sell - Deal Support", "Co-Sell - Support for Public Tender / RFx"]],
    #         customer: {
    #           account: {
    #             industry: "Aerospace" # One of: ["Aerospace", "Agriculture", "Automotive", "Computers and Electronics", "Consumer Goods", "Education", "Energy - Oil and Gas", "Energy - Power and Utilities", "Financial Services", "Gaming", "Government", "Healthcare", "Hospitality", "Life Sciences", "Manufacturing", "Marketing and Advertising", "Media and Entertainment", "Mining", "Non-Profit Organization", "Professional Services", "Real Estate and Construction", "Retail", "Software and Internet", "Telecommunications", "Transportation and Logistics", "Travel", "Wholesale and Distribution", "Other"],
    #             other_industry: "String",
    #             company_name: "Name", # required
    #             website_url: "WebsiteUrl",
    #             aws_account_id: "AwsAccount",
    #             address: {
    #               city: "AddressPart",
    #               postal_code: "AddressPart",
    #               state_or_region: "AddressPart",
    #               country_code: "US" # One of: ["US", "AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "CD", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW"],
    #               street_address: "AddressPart"
    #             },
    #             duns: "DunsNumber"
    #           },
    #           contacts: [
    #             {
    #               email: "Email",
    #               first_name: "Name",
    #               last_name: "Name",
    #               business_title: "JobTitle",
    #               phone: "PhoneNumber"
    #             }
    #           ]
    #         },
    #         project: {
    #           delivery_models: ["SaaS or PaaS" # One of: ["SaaS or PaaS", "BYOL or AMI", "Managed Services", "Professional Services", "Resell", "Other"]],
    #           expected_customer_spend: [
    #             {
    #               amount: "Amount", # required
    #               currency_code: "USD" # One of: ["USD", "EUR", "GBP", "AUD", "CAD", "CNY", "NZD", "INR", "JPY", "CHF", "SEK", "AED", "AFN", "ALL", "AMD", "ANG", "AOA", "ARS", "AWG", "AZN", "BAM", "BBD", "BDT", "BGN", "BHD", "BIF", "BMD", "BND", "BOB", "BOV", "BRL", "BSD", "BTN", "BWP", "BYN", "BZD", "CDF", "CHE", "CHW", "CLF", "CLP", "COP", "COU", "CRC", "CUC", "CUP", "CVE", "CZK", "DJF", "DKK", "DOP", "DZD", "EGP", "ERN", "ETB", "FJD", "FKP", "GEL", "GHS", "GIP", "GMD", "GNF", "GTQ", "GYD", "HKD", "HNL", "HRK", "HTG", "HUF", "IDR", "ILS", "IQD", "IRR", "ISK", "JMD", "JOD", "KES", "KGS", "KHR", "KMF", "KPW", "KRW", "KWD", "KYD", "KZT", "LAK", "LBP", "LKR", "LRD", "LSL", "LYD", "MAD", "MDL", "MGA", "MKD", "MMK", "MNT", "MOP", "MRU", "MUR", "MVR", "MWK", "MXN", "MXV", "MYR", "MZN", "NAD", "NGN", "NIO", "NOK", "NPR", "OMR", "PAB", "PEN", "PGK", "PHP", "PKR", "PLN", "PYG", "QAR", "RON", "RSD", "RUB", "RWF", "SAR", "SBD", "SCR", "SDG", "SGD", "SHP", "SLL", "SOS", "SRD", "SSP", "STN", "SVC", "SYP", "SZL", "THB", "TJS", "TMT", "TND", "TOP", "TRY", "TTD", "TWD", "TZS", "UAH", "UGX", "USN", "UYI", "UYU", "UZS", "VEF", "VND", "VUV", "WST", "XAF", "XCD", "XDR", "XOF", "XPF", "XSU", "XUA", "YER", "ZAR", "ZMW", "ZWL"], # required
    #               frequency: "Monthly" # One of: ["Monthly"], # required
    #               target_company: "String", # required
    #               estimation_url: "WebsiteUrl"
    #             }
    #           ],
    #           customer_use_case: "String",
    #           sales_activities: ["Initialized discussions with customer" # One of: ["Initialized discussions with customer", "Customer has shown interest in solution", "Conducted POC / Demo", "In evaluation / planning stage", "Agreed on solution to Business Problem", "Completed Action Plan", "Finalized Deployment Need", "SOW Signed"]],
    #           other_solution_description: "PiiString"
    #         },
    #         related_entity_identifiers: {
    #           aws_marketplace_offers: ["AwsMarketplaceOfferIdentifier"],
    #           solutions: ["SolutionIdentifier"],
    #           aws_products: ["AwsProductIdentifier"]
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetResourceSnapshotResponse]
    def get_resource_snapshot(params = {}, options = {})
      request = build_request(:get_resource_snapshot, params)
      request.send_request(options)
    end

    # <p>Use this action to retrieves information about a specific resource snapshot job.</p>
    # @param [Hash, Types::GetResourceSnapshotJobRequest] params
    # @option params [String] :catalog
    #   <p>Specifies the catalog related to the request. Valid values are:</p> <ul> <li> <p> AWS: Retrieves the snapshot job from the production AWS environment. </p> </li> <li> <p> Sandbox: Retrieves the snapshot job from a sandbox environment used for testing or development purposes. </p> </li> </ul>
    # @option params [String] :resource_snapshot_job_identifier
    #   <p>The unique identifier of the resource snapshot job to be retrieved. This identifier is crucial for pinpointing the specific job you want to query. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogIdentifier", # required
    #     resource_snapshot_job_identifier: "ResourceSnapshotJobIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_resource_snapshot_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     catalog: "CatalogIdentifier", # required
    #     id: "ResourceSnapshotJobIdentifier",
    #     arn: "ResourceSnapshotJobArn",
    #     engagement_id: "EngagementIdentifier",
    #     resource_type: "Opportunity" # One of: ["Opportunity"],
    #     resource_id: "ResourceIdentifier",
    #     resource_arn: "ResourceArn",
    #     resource_snapshot_template_name: "ResourceTemplateName",
    #     created_at: Time.now,
    #     status: "Running" # One of: ["Running", "Stopped"],
    #     last_successful_execution_date: Time.now,
    #     last_failure: "String"
    #   }
    # @return [Types::GetResourceSnapshotJobResponse]
    def get_resource_snapshot_job(params = {}, options = {})
      request = build_request(:get_resource_snapshot_job, params)
      request.send_request(options)
    end

    # <p>Retrieves the currently set system settings, which include the IAM Role used for resource snapshot jobs.</p>
    # @param [Hash, Types::GetSellingSystemSettingsRequest] params
    # @option params [String] :catalog
    #   <p>Specifies the catalog in which the settings are defined. Acceptable values include <code>AWS</code> for production and <code>Sandbox</code> for testing environments.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_selling_system_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     catalog: "CatalogIdentifier", # required
    #     resource_snapshot_job_role_arn: "ResourceSnapshotJobRoleArn"
    #   }
    # @return [Types::GetSellingSystemSettingsResponse]
    def get_selling_system_settings(params = {}, options = {})
      request = build_request(:get_selling_system_settings, params)
      request.send_request(options)
    end

    # <p> Lists all in-progress, completed, or failed StartEngagementByAcceptingInvitationTask tasks that were initiated by the caller's account. </p>
    # @param [Hash, Types::ListEngagementByAcceptingInvitationTasksRequest] params
    # @option params [Integer] :max_results
    #   <p> Use this parameter to control the number of items returned in each request, which can be useful for performance tuning and managing large result sets. </p>
    # @option params [String] :next_token
    #   <p> Use this parameter for pagination when the result set spans multiple pages. This value is obtained from the NextToken field in the response of a previous call to this API. </p>
    # @option params [Types::ListTasksSortBase] :sort
    #   <p> Specifies the sorting criteria for the returned results. This allows you to order the tasks based on specific attributes. </p>
    # @option params [String] :catalog
    #   <p> Specifies the catalog related to the request. Valid values are: </p> <ul> <li> <p> AWS: Retrieves the request from the production AWS environment. </p> </li> <li> <p> Sandbox: Retrieves the request from a sandbox environment used for testing or development purposes. </p> </li> </ul>
    # @option params [Array<String>] :task_status
    #   <p> Filters the tasks based on their current status. This allows you to focus on tasks in specific states. </p>
    # @option params [Array<String>] :opportunity_identifier
    #   <p> Filters tasks by the identifiers of the opportunities they created or are associated with. </p>
    # @option params [Array<String>] :engagement_invitation_identifier
    #   <p> Filters tasks by the identifiers of the engagement invitations they are processing. </p>
    # @option params [Array<String>] :task_identifier
    #   <p> Filters tasks by their unique identifiers. Use this when you want to retrieve information about specific tasks. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     sort: {
    #       sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"], # required
    #       sort_by: "StartTime" # One of: ["StartTime"], # required
    #     },
    #     catalog: "CatalogIdentifier", # required
    #     task_status: ["IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETE", "FAILED"]],
    #     opportunity_identifier: ["OpportunityIdentifier"],
    #     engagement_invitation_identifier: ["EngagementInvitationArnOrIdentifier"],
    #     task_identifier: ["TaskArnOrIdentifier"]
    #   }
    #   options = {}
    #   response = client.list_engagement_by_accepting_invitation_tasks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_summaries: [
    #       {
    #         task_id: "TaskIdentifier",
    #         task_arn: "TaskArn",
    #         start_time: Time.now,
    #         task_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETE", "FAILED"],
    #         message: "String",
    #         reason_code: "InvitationAccessDenied" # One of: ["InvitationAccessDenied", "InvitationValidationFailed", "EngagementAccessDenied", "OpportunityAccessDenied", "ResourceSnapshotJobAccessDenied", "ResourceSnapshotJobValidationFailed", "ResourceSnapshotJobConflict", "EngagementValidationFailed", "EngagementConflict", "OpportunitySubmissionFailed", "EngagementInvitationConflict", "InternalError", "OpportunityValidationFailed", "OpportunityConflict", "ResourceSnapshotAccessDenied", "ResourceSnapshotValidationFailed", "ResourceSnapshotConflict", "ServiceQuotaExceeded", "RequestThrottled"],
    #         opportunity_id: "OpportunityIdentifier",
    #         resource_snapshot_job_id: "ResourceSnapshotJobIdentifier",
    #         engagement_invitation_id: "EngagementInvitationIdentifier"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListEngagementByAcceptingInvitationTasksResponse]
    def list_engagement_by_accepting_invitation_tasks(params = {}, options = {})
      request = build_request(:list_engagement_by_accepting_invitation_tasks, params)
      request.send_request(options)
    end

    # <p> Lists all in-progress, completed, or failed <code>EngagementFromOpportunity</code> tasks that were initiated by the caller's account. </p>
    # @param [Hash, Types::ListEngagementFromOpportunityTasksRequest] params
    # @option params [Integer] :max_results
    #   <p> Specifies the maximum number of results to return in a single page of the response.Use this parameter to control the number of items returned in each request, which can be useful for performance tuning and managing large result sets. </p>
    # @option params [String] :next_token
    #   <p> The token for requesting the next page of results. This value is obtained from the NextToken field in the response of a previous call to this API. Use this parameter for pagination when the result set spans multiple pages. </p>
    # @option params [Types::ListTasksSortBase] :sort
    #   <p> Specifies the sorting criteria for the returned results. This allows you to order the tasks based on specific attributes. </p>
    # @option params [String] :catalog
    #   <p> Specifies the catalog related to the request. Valid values are: </p> <ul> <li> <p> AWS: Retrieves the request from the production AWS environment. </p> </li> <li> <p> Sandbox: Retrieves the request from a sandbox environment used for testing or development purposes. </p> </li> </ul>
    # @option params [Array<String>] :task_status
    #   <p> Filters the tasks based on their current status. This allows you to focus on tasks in specific states. </p>
    # @option params [Array<String>] :task_identifier
    #   <p> Filters tasks by their unique identifiers. Use this when you want to retrieve information about specific tasks. </p>
    # @option params [Array<String>] :opportunity_identifier
    #   <p> The identifier of the original opportunity associated with this task. </p>
    # @option params [Array<String>] :engagement_identifier
    #   <p> Filters tasks by the identifiers of the engagements they created or are associated with. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     sort: {
    #       sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"], # required
    #       sort_by: "StartTime" # One of: ["StartTime"], # required
    #     },
    #     catalog: "CatalogIdentifier", # required
    #     task_status: ["IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETE", "FAILED"]],
    #     task_identifier: ["TaskArnOrIdentifier"],
    #     opportunity_identifier: ["OpportunityIdentifier"],
    #     engagement_identifier: ["EngagementArnOrIdentifier"]
    #   }
    #   options = {}
    #   response = client.list_engagement_from_opportunity_tasks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_summaries: [
    #       {
    #         task_id: "TaskIdentifier",
    #         task_arn: "TaskArn",
    #         start_time: Time.now,
    #         task_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETE", "FAILED"],
    #         message: "String",
    #         reason_code: "InvitationAccessDenied" # One of: ["InvitationAccessDenied", "InvitationValidationFailed", "EngagementAccessDenied", "OpportunityAccessDenied", "ResourceSnapshotJobAccessDenied", "ResourceSnapshotJobValidationFailed", "ResourceSnapshotJobConflict", "EngagementValidationFailed", "EngagementConflict", "OpportunitySubmissionFailed", "EngagementInvitationConflict", "InternalError", "OpportunityValidationFailed", "OpportunityConflict", "ResourceSnapshotAccessDenied", "ResourceSnapshotValidationFailed", "ResourceSnapshotConflict", "ServiceQuotaExceeded", "RequestThrottled"],
    #         opportunity_id: "OpportunityIdentifier",
    #         resource_snapshot_job_id: "ResourceSnapshotJobIdentifier",
    #         engagement_id: "EngagementIdentifier",
    #         engagement_invitation_id: "EngagementInvitationIdentifier"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListEngagementFromOpportunityTasksResponse]
    def list_engagement_from_opportunity_tasks(params = {}, options = {})
      request = build_request(:list_engagement_from_opportunity_tasks, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of engagement invitations sent to the partner. This allows partners to view all pending or past engagement invitations, helping them track opportunities shared by AWS.</p>
    # @param [Hash, Types::ListEngagementInvitationsRequest] params
    # @option params [String] :catalog
    #   <p>Specifies the catalog from which to list the engagement invitations. Use <code>AWS</code> for production invitations or <code>Sandbox</code> for testing environments.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the maximum number of engagement invitations to return in the response. If more results are available, a pagination token will be provided.</p>
    # @option params [String] :next_token
    #   <p>A pagination token used to retrieve additional pages of results when the response to a previous request was truncated. Pass this token to continue listing invitations from where the previous call left off.</p>
    # @option params [Types::OpportunityEngagementInvitationSort] :sort
    #   <p>Specifies the sorting options for listing engagement invitations. Invitations can be sorted by fields such as <code>InvitationDate</code> or <code>Status</code> to help partners view results in their preferred order.</p>
    # @option params [Array<String>] :payload_type
    #   <p>Defines the type of payload associated with the engagement invitations to be listed. The attributes in this payload help decide on acceptance or rejection of the invitation.</p>
    # @option params [String] :participant_type
    #   <p>Specifies the type of participant for which to list engagement invitations. Identifies the role of the participant.</p>
    # @option params [Array<String>] :status
    #   <p> Status values to filter the invitations. </p>
    # @option params [Array<String>] :engagement_identifier
    #   <p> Retrieves a list of engagement invitation summaries based on specified filters. The ListEngagementInvitations operation allows you to view all invitations that you have sent or received. You must specify the ParticipantType to filter invitations where you are either the SENDER or the RECEIVER. Invitations will automatically expire if not accepted within 15 days. </p>
    # @option params [Array<String>] :sender_aws_account_id
    #   <p> List of sender AWS account IDs to filter the invitations. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogIdentifier", # required
    #     max_results: 1,
    #     next_token: "String",
    #     sort: {
    #       sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"], # required
    #       sort_by: "InvitationDate" # One of: ["InvitationDate"], # required
    #     },
    #     payload_type: ["OpportunityInvitation" # One of: ["OpportunityInvitation"]],
    #     participant_type: "SENDER" # One of: ["SENDER", "RECEIVER"], # required
    #     status: ["ACCEPTED" # One of: ["ACCEPTED", "PENDING", "REJECTED", "EXPIRED"]],
    #     engagement_identifier: ["EngagementArnOrIdentifier"],
    #     sender_aws_account_id: ["AwsAccount"]
    #   }
    #   options = {}
    #   response = client.list_engagement_invitations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     engagement_invitation_summaries: [
    #       {
    #         arn: "String",
    #         payload_type: "OpportunityInvitation" # One of: ["OpportunityInvitation"],
    #         id: "EngagementInvitationArnOrIdentifier", # required
    #         engagement_id: "EngagementIdentifier",
    #         engagement_title: "EngagementTitle",
    #         status: "ACCEPTED" # One of: ["ACCEPTED", "PENDING", "REJECTED", "EXPIRED"],
    #         invitation_date: Time.now,
    #         expiration_date: Time.now,
    #         sender_aws_account_id: "AwsAccount",
    #         sender_company_name: "String",
    #         receiver: {
    #           # One of:
    #           account: {
    #             alias: "Alias",
    #             aws_account_id: "AwsAccount", # required
    #           }
    #         },
    #         catalog: "CatalogIdentifier", # required
    #         participant_type: "SENDER" # One of: ["SENDER", "RECEIVER"]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListEngagementInvitationsResponse]
    def list_engagement_invitations(params = {}, options = {})
      request = build_request(:list_engagement_invitations, params)
      request.send_request(options)
    end

    # <p>Retrieves the details of member partners in an Engagement. This operation can only be invoked by members of the Engagement. The <code>ListEngagementMembers</code> operation allows you to fetch information about the members of a specific Engagement. This action is restricted to members of the Engagement being queried. </p>
    # @param [Hash, Types::ListEngagementMembersRequest] params
    # @option params [String] :catalog
    #   <p>The catalog related to the request.</p>
    # @option params [String] :identifier
    #   <p>Identifier of the Engagement record to retrieve members from.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogIdentifier", # required
    #     identifier: "EngagementArnOrIdentifier", # required
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_engagement_members(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     engagement_member_list: [ # required
    #       {
    #         company_name: "MemberCompanyName",
    #         website_url: "String",
    #         account_id: "AwsAccount"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListEngagementMembersResponse]
    def list_engagement_members(params = {}, options = {})
      request = build_request(:list_engagement_members, params)
      request.send_request(options)
    end

    # <p>Lists the associations between resources and engagements where the caller is a member and has at least one snapshot in the engagement.</p>
    # @param [Hash, Types::ListEngagementResourceAssociationsRequest] params
    # @option params [String] :catalog
    #   <p>Specifies the catalog in which to search for engagement-resource associations. Valid Values: "AWS" or "Sandbox"</p> <ul> <li> <p> <code>AWS</code> for production environments.</p> </li> <li> <p> <code>Sandbox</code> for testing and development purposes.</p> </li> </ul>
    # @option params [Integer] :max_results
    #   <p>Limits the number of results returned in a single call. Use this to control the number of results returned, especially useful for pagination.</p>
    # @option params [String] :next_token
    #   <p>A token used for pagination of results. Include this token in subsequent requests to retrieve the next set of results.</p>
    # @option params [String] :engagement_identifier
    #   <p>Filters the results to include only associations related to the specified engagement. Use this when you want to find all resources associated with a specific engagement.</p>
    # @option params [String] :resource_type
    #   <p> Filters the results to include only associations with resources of the specified type. </p>
    # @option params [String] :resource_identifier
    #   <p>Filters the results to include only associations with the specified resource. Varies depending on the resource type. Use this when you want to find all engagements associated with a specific resource.</p>
    # @option params [String] :created_by
    #   <p>Filters the response to include only snapshots of resources owned by the specified AWS account ID. Use this when you want to find associations related to resources owned by a particular account. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogIdentifier", # required
    #     max_results: 1,
    #     next_token: "String",
    #     engagement_identifier: "EngagementIdentifier",
    #     resource_type: "Opportunity" # One of: ["Opportunity"],
    #     resource_identifier: "ResourceIdentifier",
    #     created_by: "AwsAccount"
    #   }
    #   options = {}
    #   response = client.list_engagement_resource_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     engagement_resource_association_summaries: [ # required
    #       {
    #         catalog: "CatalogIdentifier", # required
    #         engagement_id: "EngagementIdentifier",
    #         resource_type: "Opportunity" # One of: ["Opportunity"],
    #         resource_id: "ResourceIdentifier",
    #         created_by: "AwsAccount"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListEngagementResourceAssociationsResponse]
    def list_engagement_resource_associations(params = {}, options = {})
      request = build_request(:list_engagement_resource_associations, params)
      request.send_request(options)
    end

    # <p>This action allows users to retrieve a list of Engagement records from Partner Central. This action can be used to manage and track various engagements across different stages of the partner selling process. </p>
    # @param [Hash, Types::ListEngagementsRequest] params
    # @option params [String] :catalog
    #   <p> Specifies the catalog related to the request. </p>
    # @option params [Array<String>] :created_by
    #   <p> A list of AWS account IDs. When specified, the response includes engagements created by these accounts. This filter is useful for finding engagements created by specific team members. </p>
    # @option params [Array<String>] :exclude_created_by
    #   <p>An array of strings representing AWS Account IDs. Use this to exclude engagements created by specific users. </p>
    # @option params [Types::EngagementSort] :sort
    #   <p>Specifies the sorting parameters for listing Engagements.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. This value is returned from a previous call.</p>
    # @option params [Array<String>] :engagement_identifier
    #   <p>An array of strings representing engagement identifiers to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogIdentifier", # required
    #     created_by: ["AwsAccount"],
    #     exclude_created_by: ["AwsAccount"],
    #     sort: {
    #       sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"], # required
    #       sort_by: "CreatedDate" # One of: ["CreatedDate"], # required
    #     },
    #     max_results: 1,
    #     next_token: "String",
    #     engagement_identifier: ["EngagementArnOrIdentifier"]
    #   }
    #   options = {}
    #   response = client.list_engagements(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     engagement_summary_list: [ # required
    #       {
    #         arn: "EngagementArn",
    #         id: "EngagementIdentifier",
    #         title: "EngagementTitle",
    #         created_at: Time.now,
    #         created_by: "AwsAccount",
    #         member_count: 1
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListEngagementsResponse]
    def list_engagements(params = {}, options = {})
      request = build_request(:list_engagements, params)
      request.send_request(options)
    end

    # <p>This request accepts a list of filters that retrieve opportunity subsets as well as sort options. This feature is available to partners from <a href="https://partnercentral.awspartner.com/">Partner Central</a> using the <code>ListOpportunities</code> API action.</p> <p>To synchronize your system with Amazon Web Services, list only the opportunities that were newly created or updated. We recommend you rely on events emitted by the service into your Amazon Web Services account’s Amazon EventBridge default event bus. You can also use the <code>ListOpportunities</code> action.</p> <p>We recommend the following approach:</p> <ol> <li> <p>Find the latest <code>LastModifiedDate</code> that you stored, and only use the values that came from Amazon Web Services. Don’t use values generated by your system.</p> </li> <li> <p>When you send a <code>ListOpportunities</code> request, submit the date in ISO 8601 format in the <code>AfterLastModifiedDate</code> filter.</p> </li> <li> <p>Amazon Web Services only returns opportunities created or updated on or after that date and time. Use <code>NextToken</code> to iterate over all pages.</p> </li> </ol>
    # @param [Hash, Types::ListOpportunitiesRequest] params
    # @option params [String] :catalog
    #   <p>Specifies the catalog associated with the request. This field takes a string value from a predefined list: <code>AWS</code> or <code>Sandbox</code>. The catalog determines which environment the opportunities are listed in. Use <code>AWS</code> for listing real opportunities in the Amazon Web Services catalog, and <code>Sandbox</code> for testing in secure, isolated environments.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the maximum number of results to return in a single call. This limits the number of opportunities returned in the response to avoid providing too many results at once.</p> <p>Default: 20</p>
    # @option params [String] :next_token
    #   <p>A pagination token used to retrieve the next set of results in subsequent calls. This token is included in the response only if there are additional result pages available.</p>
    # @option params [Types::OpportunitySort] :sort
    #   <p>An object that specifies how the response is sorted. The default <code>Sort.SortBy</code> value is <code>LastModifiedDate</code>.</p>
    # @option params [Types::LastModifiedDate] :last_modified_date
    #   <p>Filters the opportunities based on their last modified date. This filter helps retrieve opportunities that were updated after the specified date, allowing partners to track recent changes or updates.</p>
    # @option params [Array<String>] :identifier
    #   <p>Filters the opportunities based on the opportunity identifier. This allows partners to retrieve specific opportunities by providing their unique identifiers, ensuring precise results.</p>
    # @option params [Array<String>] :life_cycle_stage
    #   <p>Filters the opportunities based on their lifecycle stage. This filter allows partners to retrieve opportunities at various stages in the sales cycle, such as <code>Qualified</code>, <code>Technical Validation</code>, <code>Business Validation</code>, or <code>Closed Won</code>.</p>
    # @option params [Array<String>] :life_cycle_review_status
    #   <p>Filters the opportunities based on their current lifecycle approval status. Use this filter to retrieve opportunities with statuses such as <code>Pending Submission</code>, <code>In Review</code>, <code>Action Required</code>, or <code>Approved</code>.</p>
    # @option params [Array<String>] :customer_company_name
    #   <p>Filters the opportunities based on the customer's company name. This allows partners to search for opportunities associated with a specific customer by matching the provided company name string.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogIdentifier", # required
    #     max_results: 1,
    #     next_token: "String",
    #     sort: {
    #       sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"], # required
    #       sort_by: "LastModifiedDate" # One of: ["LastModifiedDate", "Identifier", "CustomerCompanyName"], # required
    #     },
    #     last_modified_date: {
    #       after_last_modified_date: Time.now,
    #       before_last_modified_date: Time.now
    #     },
    #     identifier: ["OpportunityIdentifier"],
    #     life_cycle_stage: ["Prospect" # One of: ["Prospect", "Qualified", "Technical Validation", "Business Validation", "Committed", "Launched", "Closed Lost"]],
    #     life_cycle_review_status: ["Pending Submission" # One of: ["Pending Submission", "Submitted", "In review", "Approved", "Rejected", "Action Required"]],
    #     customer_company_name: ["String"]
    #   }
    #   options = {}
    #   response = client.list_opportunities(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     opportunity_summaries: [ # required
    #       {
    #         catalog: "CatalogIdentifier", # required
    #         id: "OpportunityIdentifier",
    #         arn: "OpportunityArn",
    #         partner_opportunity_identifier: "String",
    #         opportunity_type: "Net New Business" # One of: ["Net New Business", "Flat Renewal", "Expansion"],
    #         last_modified_date: Time.now,
    #         created_date: Time.now,
    #         life_cycle: {
    #           stage: "Prospect" # One of: ["Prospect", "Qualified", "Technical Validation", "Business Validation", "Committed", "Launched", "Closed Lost"],
    #           closed_lost_reason: "Customer Deficiency" # One of: ["Customer Deficiency", "Delay / Cancellation of Project", "Legal / Tax / Regulatory", "Lost to Competitor - Google", "Lost to Competitor - Microsoft", "Lost to Competitor - SoftLayer", "Lost to Competitor - VMWare", "Lost to Competitor - Other", "No Opportunity", "On Premises Deployment", "Partner Gap", "Price", "Security / Compliance", "Technical Limitations", "Customer Experience", "Other", "People/Relationship/Governance", "Product/Technology", "Financial/Commercial"],
    #           next_steps: "PiiString",
    #           target_close_date: "Date",
    #           review_status: "Pending Submission" # One of: ["Pending Submission", "Submitted", "In review", "Approved", "Rejected", "Action Required"],
    #           review_comments: "String",
    #           review_status_reason: "String"
    #         },
    #         customer: {
    #           account: {
    #             industry: "Aerospace" # One of: ["Aerospace", "Agriculture", "Automotive", "Computers and Electronics", "Consumer Goods", "Education", "Energy - Oil and Gas", "Energy - Power and Utilities", "Financial Services", "Gaming", "Government", "Healthcare", "Hospitality", "Life Sciences", "Manufacturing", "Marketing and Advertising", "Media and Entertainment", "Mining", "Non-Profit Organization", "Professional Services", "Real Estate and Construction", "Retail", "Software and Internet", "Telecommunications", "Transportation and Logistics", "Travel", "Wholesale and Distribution", "Other"],
    #             other_industry: "String",
    #             company_name: "Name", # required
    #             website_url: "WebsiteUrl",
    #             address: {
    #               city: "AddressPart",
    #               postal_code: "AddressPart",
    #               state_or_region: "AddressPart",
    #               country_code: "US" # One of: ["US", "AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "CD", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW"]
    #             }
    #           }
    #         },
    #         project: {
    #           delivery_models: ["SaaS or PaaS" # One of: ["SaaS or PaaS", "BYOL or AMI", "Managed Services", "Professional Services", "Resell", "Other"]],
    #           expected_customer_spend: [
    #             {
    #               amount: "Amount", # required
    #               currency_code: "USD" # One of: ["USD", "EUR", "GBP", "AUD", "CAD", "CNY", "NZD", "INR", "JPY", "CHF", "SEK", "AED", "AFN", "ALL", "AMD", "ANG", "AOA", "ARS", "AWG", "AZN", "BAM", "BBD", "BDT", "BGN", "BHD", "BIF", "BMD", "BND", "BOB", "BOV", "BRL", "BSD", "BTN", "BWP", "BYN", "BZD", "CDF", "CHE", "CHW", "CLF", "CLP", "COP", "COU", "CRC", "CUC", "CUP", "CVE", "CZK", "DJF", "DKK", "DOP", "DZD", "EGP", "ERN", "ETB", "FJD", "FKP", "GEL", "GHS", "GIP", "GMD", "GNF", "GTQ", "GYD", "HKD", "HNL", "HRK", "HTG", "HUF", "IDR", "ILS", "IQD", "IRR", "ISK", "JMD", "JOD", "KES", "KGS", "KHR", "KMF", "KPW", "KRW", "KWD", "KYD", "KZT", "LAK", "LBP", "LKR", "LRD", "LSL", "LYD", "MAD", "MDL", "MGA", "MKD", "MMK", "MNT", "MOP", "MRU", "MUR", "MVR", "MWK", "MXN", "MXV", "MYR", "MZN", "NAD", "NGN", "NIO", "NOK", "NPR", "OMR", "PAB", "PEN", "PGK", "PHP", "PKR", "PLN", "PYG", "QAR", "RON", "RSD", "RUB", "RWF", "SAR", "SBD", "SCR", "SDG", "SGD", "SHP", "SLL", "SOS", "SRD", "SSP", "STN", "SVC", "SYP", "SZL", "THB", "TJS", "TMT", "TND", "TOP", "TRY", "TTD", "TWD", "TZS", "UAH", "UGX", "USN", "UYI", "UYU", "UZS", "VEF", "VND", "VUV", "WST", "XAF", "XCD", "XDR", "XOF", "XPF", "XSU", "XUA", "YER", "ZAR", "ZMW", "ZWL"], # required
    #               frequency: "Monthly" # One of: ["Monthly"], # required
    #               target_company: "String", # required
    #               estimation_url: "WebsiteUrl"
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListOpportunitiesResponse]
    def list_opportunities(params = {}, options = {})
      request = build_request(:list_opportunities, params)
      request.send_request(options)
    end

    # <p> Lists resource snapshot jobs owned by the customer. This operation supports various filtering scenarios, including listing all jobs owned by the caller, jobs for a specific engagement, jobs with a specific status, or any combination of these filters. </p>
    # @param [Hash, Types::ListResourceSnapshotJobsRequest] params
    # @option params [String] :catalog
    #   <p> Specifies the catalog related to the request. </p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of results to return in a single call. If omitted, defaults to 50. </p>
    # @option params [String] :next_token
    #   <p> The token for the next set of results. </p>
    # @option params [String] :engagement_identifier
    #   <p> The identifier of the engagement to filter the response. </p>
    # @option params [String] :status
    #   <p> The status of the jobs to filter the response. </p>
    # @option params [Types::SortObject] :sort
    #   <p> Configures the sorting of the response. If omitted, results are sorted by <code>CreatedDate</code> in descending order. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogIdentifier", # required
    #     max_results: 1,
    #     next_token: "String",
    #     engagement_identifier: "EngagementIdentifier",
    #     status: "Running" # One of: ["Running", "Stopped"],
    #     sort: {
    #       sort_by: "CreatedDate" # One of: ["CreatedDate"],
    #       sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"]
    #     }
    #   }
    #   options = {}
    #   response = client.list_resource_snapshot_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_snapshot_job_summaries: [ # required
    #       {
    #         id: "ResourceSnapshotJobIdentifier",
    #         arn: "ResourceSnapshotJobArn",
    #         engagement_id: "EngagementIdentifier",
    #         status: "Running" # One of: ["Running", "Stopped"]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListResourceSnapshotJobsResponse]
    def list_resource_snapshot_jobs(params = {}, options = {})
      request = build_request(:list_resource_snapshot_jobs, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of resource view snapshots based on specified criteria. This operation supports various use cases, including: </p> <ul> <li> <p>Fetching all snapshots associated with an engagement.</p> </li> <li> <p>Retrieving snapshots of a specific resource type within an engagement.</p> </li> <li> <p>Obtaining snapshots for a particular resource using a specified template.</p> </li> <li> <p>Accessing the latest snapshot of a resource within an engagement.</p> </li> <li> <p>Filtering snapshots by resource owner.</p> </li> </ul>
    # @param [Hash, Types::ListResourceSnapshotsRequest] params
    # @option params [String] :catalog
    #   <p> Specifies the catalog related to the request. </p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of results to return in a single call. </p>
    # @option params [String] :next_token
    #   <p> The token for the next set of results. </p>
    # @option params [String] :engagement_identifier
    #   <p> The unique identifier of the engagement associated with the snapshots. </p>
    # @option params [String] :resource_type
    #   <p> Filters the response to include only snapshots of the specified resource type. </p>
    # @option params [String] :resource_identifier
    #   <p> Filters the response to include only snapshots of the specified resource. </p>
    # @option params [String] :resource_snapshot_template_identifier
    #   <p>Filters the response to include only snapshots created using the specified template.</p>
    # @option params [String] :created_by
    #   <p>Filters the response to include only snapshots of resources owned by the specified AWS account. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogIdentifier", # required
    #     max_results: 1,
    #     next_token: "String",
    #     engagement_identifier: "EngagementIdentifier", # required
    #     resource_type: "Opportunity" # One of: ["Opportunity"],
    #     resource_identifier: "ResourceIdentifier",
    #     resource_snapshot_template_identifier: "ResourceTemplateName",
    #     created_by: "AwsAccount"
    #   }
    #   options = {}
    #   response = client.list_resource_snapshots(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_snapshot_summaries: [ # required
    #       {
    #         arn: "ResourceSnapshotArn",
    #         revision: 1,
    #         resource_type: "Opportunity" # One of: ["Opportunity"],
    #         resource_id: "ResourceIdentifier",
    #         resource_snapshot_template_name: "ResourceTemplateName",
    #         created_by: "AwsAccount"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListResourceSnapshotsResponse]
    def list_resource_snapshots(params = {}, options = {})
      request = build_request(:list_resource_snapshots, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of Partner Solutions that the partner registered on Partner Central. This API is used to generate a list of solutions that an end user selects from for association with an opportunity.</p>
    # @param [Hash, Types::ListSolutionsRequest] params
    # @option params [String] :catalog
    #   <p>Specifies the catalog associated with the request. This field takes a string value from a predefined list: <code>AWS</code> or <code>Sandbox</code>. The catalog determines which environment the solutions are listed in. Use <code>AWS</code> to list solutions in the Amazon Web Services catalog, and <code>Sandbox</code> to list solutions in a secure and isolated testing environment.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results returned by a single call. This value must be provided in the next call to retrieve the next set of results.</p> <p>Default: 20</p>
    # @option params [String] :next_token
    #   <p>A pagination token used to retrieve the next set of results in subsequent calls. This token is included in the response only if there are additional result pages available.</p>
    # @option params [Types::SolutionSort] :sort
    #   <p>Object that configures sorting done on the response. Default <code>Sort.SortBy</code> is <code>Identifier</code>.</p>
    # @option params [Array<String>] :status
    #   <p>Filters solutions based on their status. This filter helps partners manage their solution portfolios effectively.</p>
    # @option params [Array<String>] :identifier
    #   <p>Filters the solutions based on their unique identifier. Use this filter to retrieve specific solutions by providing the solution's identifier for accurate results.</p>
    # @option params [Array<String>] :category
    #   <p>Filters the solutions based on the category to which they belong. This allows partners to search for solutions within specific categories, such as <code>Software</code>, <code>Consulting</code>, or <code>Managed Services</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogIdentifier", # required
    #     max_results: 1,
    #     next_token: "String",
    #     sort: {
    #       sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"], # required
    #       sort_by: "Identifier" # One of: ["Identifier", "Name", "Status", "Category", "CreatedDate"], # required
    #     },
    #     status: ["Active" # One of: ["Active", "Inactive", "Draft"]],
    #     identifier: ["SolutionIdentifier"],
    #     category: ["String"]
    #   }
    #   options = {}
    #   response = client.list_solutions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     solution_summaries: [ # required
    #       {
    #         catalog: "CatalogIdentifier", # required
    #         id: "SolutionIdentifier", # required
    #         arn: "SolutionArn",
    #         name: "String", # required
    #         status: "Active" # One of: ["Active", "Inactive", "Draft"], # required
    #         category: "String", # required
    #         created_date: Time.now, # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListSolutionsResponse]
    def list_solutions(params = {}, options = {})
      request = build_request(:list_solutions, params)
      request.send_request(options)
    end

    # <p>Returns a list of tags for a resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which you want to retrieve tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TaggableResourceArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Updates the currently set system settings, which include the IAM Role used for resource snapshot jobs.</p>
    # @param [Hash, Types::PutSellingSystemSettingsRequest] params
    # @option params [String] :catalog
    #   <p>Specifies the catalog in which the settings will be updated. Acceptable values include <code>AWS</code> for production and <code>Sandbox</code> for testing environments.</p>
    # @option params [String] :resource_snapshot_job_role_identifier
    #   <p>Specifies the ARN of the IAM Role used for resource snapshot job executions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogIdentifier", # required
    #     resource_snapshot_job_role_identifier: "ResourceSnapshotJobRoleIdentifier"
    #   }
    #   options = {}
    #   response = client.put_selling_system_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     catalog: "CatalogIdentifier", # required
    #     resource_snapshot_job_role_arn: "ResourceSnapshotJobRoleArn"
    #   }
    # @return [Types::PutSellingSystemSettingsResponse]
    def put_selling_system_settings(params = {}, options = {})
      request = build_request(:put_selling_system_settings, params)
      request.send_request(options)
    end

    # <p>This action rejects an <code>EngagementInvitation</code> that AWS shared. Rejecting an invitation indicates that the partner doesn't want to pursue the opportunity, and all related data will become inaccessible thereafter.</p>
    # @param [Hash, Types::RejectEngagementInvitationRequest] params
    # @option params [String] :catalog
    #   <p>This is the catalog that's associated with the engagement invitation. Acceptable values are <code>AWS</code> or <code>Sandbox</code>, and these values determine the environment in which the opportunity is managed.</p>
    # @option params [String] :identifier
    #   <p>This is the unique identifier of the rejected <code>EngagementInvitation</code>. Providing the correct identifier helps to ensure that the intended invitation is rejected.</p>
    # @option params [String] :rejection_reason
    #   <p>This describes the reason for rejecting the engagement invitation, which helps AWS track usage patterns. Acceptable values include the following:</p> <ul> <li> <p> <i>Customer problem unclear:</i> The customer's problem isn't understood.</p> </li> <li> <p> <i>Next steps unclear:</i> The next steps required to proceed aren't understood.</p> </li> <li> <p> <i>Unable to support:</i> The partner is unable to provide support due to resource or capability constraints.</p> </li> <li> <p> <i>Duplicate of partner referral:</i> The opportunity is a duplicate of an existing referral.</p> </li> <li> <p> <i>Other:</i> Any reason not covered by other values.</p> </li> </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogIdentifier", # required
    #     identifier: "EngagementInvitationArnOrIdentifier", # required
    #     rejection_reason: "RejectionReasonString"
    #   }
    #   options = {}
    #   response = client.reject_engagement_invitation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def reject_engagement_invitation(params = {}, options = {})
      request = build_request(:reject_engagement_invitation, params)
      request.send_request(options)
    end

    # <p>This action starts the engagement by accepting an <code>EngagementInvitation</code>. The task is asynchronous and involves the following steps: accepting the invitation, creating an opportunity in the partner’s account from the AWS opportunity, and copying details for tracking. When completed, an <code>Opportunity Created</code> event is generated, indicating that the opportunity has been successfully created in the partner's account.</p>
    # @param [Hash, Types::StartEngagementByAcceptingInvitationTaskRequest] params
    # @option params [String] :catalog
    #   <p>Specifies the catalog related to the task. Use <code>AWS</code> for production engagements and <code>Sandbox</code> for testing scenarios.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier provided by the client that helps to ensure the idempotency of the request. This can be a random or meaningful string but must be unique for each request.</p>
    # @option params [String] :identifier
    #   <p>Specifies the unique identifier of the <code>EngagementInvitation</code> to be accepted. Providing the correct identifier helps ensure that the correct engagement is processed.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A map of the key-value pairs of the tag or tags to assign.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogIdentifier", # required
    #     client_token: "ClientToken", # required
    #     identifier: "EngagementInvitationArnOrIdentifier", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.start_engagement_by_accepting_invitation_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_id: "TaskIdentifier",
    #     task_arn: "TaskArn",
    #     start_time: Time.now,
    #     task_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETE", "FAILED"],
    #     message: "String",
    #     reason_code: "InvitationAccessDenied" # One of: ["InvitationAccessDenied", "InvitationValidationFailed", "EngagementAccessDenied", "OpportunityAccessDenied", "ResourceSnapshotJobAccessDenied", "ResourceSnapshotJobValidationFailed", "ResourceSnapshotJobConflict", "EngagementValidationFailed", "EngagementConflict", "OpportunitySubmissionFailed", "EngagementInvitationConflict", "InternalError", "OpportunityValidationFailed", "OpportunityConflict", "ResourceSnapshotAccessDenied", "ResourceSnapshotValidationFailed", "ResourceSnapshotConflict", "ServiceQuotaExceeded", "RequestThrottled"],
    #     opportunity_id: "OpportunityIdentifier",
    #     resource_snapshot_job_id: "ResourceSnapshotJobIdentifier",
    #     engagement_invitation_id: "EngagementInvitationIdentifier"
    #   }
    # @return [Types::StartEngagementByAcceptingInvitationTaskResponse]
    def start_engagement_by_accepting_invitation_task(params = {}, options = {})
      request = build_request(:start_engagement_by_accepting_invitation_task, params)
      request.send_request(options)
    end

    # <p>Similar to <code>StartEngagementByAcceptingInvitationTask</code>, this action is asynchronous and performs multiple steps before completion. This action orchestrates a comprehensive workflow that combines multiple API operations into a single task to create and initiate an engagement from an existing opportunity. It automatically executes a sequence of operations including <code>GetOpportunity</code>, <code>CreateEngagement</code> (if it doesn't exist), <code>CreateResourceSnapshot</code>, <code>CreateResourceSnapshotJob</code>, <code>CreateEngagementInvitation</code> (if not already invited/accepted), and <code>SubmitOpportunity</code>. </p>
    # @param [Hash, Types::StartEngagementFromOpportunityTaskRequest] params
    # @option params [String] :catalog
    #   <p>Specifies the catalog in which the engagement is tracked. Acceptable values include <code>AWS</code> for production and <code>Sandbox</code> for testing environments.</p>
    # @option params [String] :client_token
    #   <p>A unique token provided by the client to help ensure the idempotency of the request. It helps prevent the same task from being performed multiple times.</p>
    # @option params [String] :identifier
    #   <p>The unique identifier of the opportunity from which the engagement task is to be initiated. This helps ensure that the task is applied to the correct opportunity.</p>
    # @option params [Types::AwsSubmission] :aws_submission
    #   <p>Indicates the level of AWS involvement in the opportunity. This field helps track AWS participation throughout the engagement, such as providing technical support, deal assistance, and sales support.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A map of the key-value pairs of the tag or tags to assign.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogIdentifier", # required
    #     client_token: "ClientToken", # required
    #     identifier: "OpportunityIdentifier", # required
    #     aws_submission: { # required
    #       involvement_type: "For Visibility Only" # One of: ["For Visibility Only", "Co-Sell"], # required
    #       visibility: "Full" # One of: ["Full", "Limited"]
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.start_engagement_from_opportunity_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_id: "TaskIdentifier",
    #     task_arn: "TaskArn",
    #     start_time: Time.now,
    #     task_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETE", "FAILED"],
    #     message: "String",
    #     reason_code: "InvitationAccessDenied" # One of: ["InvitationAccessDenied", "InvitationValidationFailed", "EngagementAccessDenied", "OpportunityAccessDenied", "ResourceSnapshotJobAccessDenied", "ResourceSnapshotJobValidationFailed", "ResourceSnapshotJobConflict", "EngagementValidationFailed", "EngagementConflict", "OpportunitySubmissionFailed", "EngagementInvitationConflict", "InternalError", "OpportunityValidationFailed", "OpportunityConflict", "ResourceSnapshotAccessDenied", "ResourceSnapshotValidationFailed", "ResourceSnapshotConflict", "ServiceQuotaExceeded", "RequestThrottled"],
    #     opportunity_id: "OpportunityIdentifier",
    #     resource_snapshot_job_id: "ResourceSnapshotJobIdentifier",
    #     engagement_id: "EngagementIdentifier",
    #     engagement_invitation_id: "EngagementInvitationIdentifier"
    #   }
    # @return [Types::StartEngagementFromOpportunityTaskResponse]
    def start_engagement_from_opportunity_task(params = {}, options = {})
      request = build_request(:start_engagement_from_opportunity_task, params)
      request.send_request(options)
    end

    # <p>Starts a resource snapshot job that has been previously created.</p>
    # @param [Hash, Types::StartResourceSnapshotJobRequest] params
    # @option params [String] :catalog
    #   <p>Specifies the catalog related to the request. Valid values are:</p> <ul> <li> <p>AWS: Starts the request from the production AWS environment.</p> </li> <li> <p>Sandbox: Starts the request from a sandbox environment used for testing or development purposes.</p> </li> </ul>
    # @option params [String] :resource_snapshot_job_identifier
    #   <p>The identifier of the resource snapshot job to start.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogIdentifier", # required
    #     resource_snapshot_job_identifier: "ResourceSnapshotJobIdentifier", # required
    #   }
    #   options = {}
    #   response = client.start_resource_snapshot_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def start_resource_snapshot_job(params = {}, options = {})
      request = build_request(:start_resource_snapshot_job, params)
      request.send_request(options)
    end

    # <p>Stops a resource snapshot job. The job must be started prior to being stopped.</p>
    # @param [Hash, Types::StopResourceSnapshotJobRequest] params
    # @option params [String] :catalog
    #   <p>Specifies the catalog related to the request. Valid values are:</p> <ul> <li> <p>AWS: Stops the request from the production AWS environment.</p> </li> <li> <p>Sandbox: Stops the request from a sandbox environment used for testing or development purposes.</p> </li> </ul>
    # @option params [String] :resource_snapshot_job_identifier
    #   <p>The identifier of the job to stop.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogIdentifier", # required
    #     resource_snapshot_job_identifier: "ResourceSnapshotJobIdentifier", # required
    #   }
    #   options = {}
    #   response = client.stop_resource_snapshot_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def stop_resource_snapshot_job(params = {}, options = {})
      request = build_request(:stop_resource_snapshot_job, params)
      request.send_request(options)
    end

    # <p>Use this action to submit an Opportunity that was previously created by partner for AWS review. After you perform this action, the Opportunity becomes non-editable until it is reviewed by AWS and has <code> LifeCycle.ReviewStatus </code> as either <code>Approved</code> or <code>Action Required</code>. </p>
    # @param [Hash, Types::SubmitOpportunityRequest] params
    # @option params [String] :catalog
    #   <p>Specifies the catalog related to the request. Valid values are:</p> <ul> <li> <p>AWS: Submits the opportunity request from the production AWS environment.</p> </li> <li> <p>Sandbox: Submits the opportunity request from a sandbox environment used for testing or development purposes.</p> </li> </ul>
    # @option params [String] :identifier
    #   <p>The identifier of the Opportunity previously created by partner and needs to be submitted.</p>
    # @option params [String] :involvement_type
    #   <p>Specifies the level of AWS sellers' involvement on the opportunity. Valid values:</p> <ul> <li> <p> <code>Co-sell</code>: Indicates the user wants to co-sell with AWS. Share the opportunity with AWS to receive deal assistance and support.</p> </li> <li> <p> <code>For Visibility Only</code>: Indicates that the user does not need support from AWS Sales Rep. Share this opportunity with AWS for visibility only, you will not receive deal assistance and support.</p> </li> </ul>
    # @option params [String] :visibility
    #   <p>Determines whether to restrict visibility of the opportunity from AWS sales. Default value is Full. Valid values:</p> <ul> <li> <p> <code>Full</code>: The opportunity is fully visible to AWS sales.</p> </li> <li> <p> <code>Limited</code>: The opportunity has restricted visibility to AWS sales.</p> </li> </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogIdentifier", # required
    #     identifier: "OpportunityIdentifier", # required
    #     involvement_type: "For Visibility Only" # One of: ["For Visibility Only", "Co-Sell"], # required
    #     visibility: "Full" # One of: ["Full", "Limited"]
    #   }
    #   options = {}
    #   response = client.submit_opportunity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def submit_opportunity(params = {}, options = {})
      request = build_request(:submit_opportunity, params)
      request.send_request(options)
    end

    # <p>Assigns one or more tags (key-value pairs) to the specified resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to tag.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A map of the key-value pairs of the tag or tags to assign.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TaggableResourceArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceResponse]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes a tag or tags from a resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to untag.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the key-value pairs for the tag or tags you want to remove from the specified resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TaggableResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceResponse]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates the <code>Opportunity</code> record identified by a given <code>Identifier</code>. This operation allows you to modify the details of an existing opportunity to reflect the latest information and progress. Use this action to keep the opportunity record up-to-date and accurate.</p> <p>When you perform updates, include the entire payload with each request. If any field is omitted, the API assumes that the field is set to <code>null</code>. The best practice is to always perform a <code>GetOpportunity</code> to retrieve the latest values, then send the complete payload with the updated values to be changed.</p>
    # @param [Hash, Types::UpdateOpportunityRequest] params
    # @option params [String] :catalog
    #   <p>Specifies the catalog associated with the request. This field takes a string value from a predefined list: <code>AWS</code> or <code>Sandbox</code>. The catalog determines which environment the opportunity is updated in. Use <code>AWS</code> to update real opportunities in the production environment, and <code>Sandbox</code> for testing in secure, isolated environments. When you use the <code>Sandbox</code> catalog, it allows you to simulate and validate your interactions with Amazon Web Services services without affecting live data or operations.</p>
    # @option params [Array<String>] :primary_needs_from_aws
    #   <p>Identifies the type of support the partner needs from Amazon Web Services.</p> <p>Valid values:</p> <ul> <li> <p>Cosell—Architectural Validation: Confirmation from Amazon Web Services that the partner's proposed solution architecture is aligned with Amazon Web Services best practices and poses minimal architectural risks.</p> </li> <li> <p>Cosell—Business Presentation: Request Amazon Web Services seller's participation in a joint customer presentation.</p> </li> <li> <p>Cosell—Competitive Information: Access to Amazon Web Services competitive resources and support for the partner's proposed solution.</p> </li> <li> <p>Cosell—Pricing Assistance: Connect with an AWS seller for support situations where a partner may be receiving an upfront discount on a service (for example: EDP deals).</p> </li> <li> <p>Cosell—Technical Consultation: Connection with an Amazon Web Services Solutions Architect to address the partner's questions about the proposed solution.</p> </li> <li> <p>Cosell—Total Cost of Ownership Evaluation: Assistance with quoting different cost savings of proposed solutions on Amazon Web Services versus on-premises or a traditional hosting environment.</p> </li> <li> <p>Cosell—Deal Support: Request Amazon Web Services seller's support to progress the opportunity (for example: joint customer call, strategic positioning).</p> </li> <li> <p>Cosell—Support for Public Tender/RFx: Opportunity related to the public sector where the partner needs RFx support from Amazon Web Services.</p> </li> </ul>
    # @option params [String] :national_security
    #   <p>Specifies if the opportunity is associated with national security concerns. This flag is only applicable when the industry is <code>Government</code>. For national-security-related opportunities, validation and compliance rules may apply, impacting the opportunity's visibility and processing.</p>
    # @option params [String] :partner_opportunity_identifier
    #   <p>Specifies the opportunity's unique identifier in the partner's CRM system. This value is essential to track and reconcile because it's included in the outbound payload sent back to the partner.</p>
    # @option params [Types::Customer] :customer
    #   <p>Specifies details of the customer associated with the <code>Opportunity</code>.</p>
    # @option params [Types::Project] :project
    #   <p>An object that contains project details summary for the <code>Opportunity</code>.</p>
    # @option params [String] :opportunity_type
    #   <p>Specifies the opportunity type as a renewal, new, or expansion.</p> <p>Opportunity types:</p> <ul> <li> <p>New opportunity: Represents a new business opportunity with a potential customer that's not previously engaged with your solutions or services.</p> </li> <li> <p>Renewal opportunity: Represents an opportunity to renew an existing contract or subscription with a current customer, ensuring continuity of service.</p> </li> <li> <p>Expansion opportunity: Represents an opportunity to expand the scope of an existing contract or subscription, either by adding new services or increasing the volume of existing services for a current customer.</p> </li> </ul>
    # @option params [Types::Marketing] :marketing
    #   <p>An object that contains marketing details for the <code>Opportunity</code>.</p>
    # @option params [Types::SoftwareRevenue] :software_revenue
    #   <p>Specifies details of a customer's procurement terms. Required only for partners in eligible programs.</p>
    # @option params [Time] :last_modified_date
    #   <p> <code>DateTime</code> when the opportunity was last modified.</p>
    # @option params [String] :identifier
    #   <p>Read-only, system generated <code>Opportunity</code> unique identifier.</p>
    # @option params [Types::LifeCycle] :life_cycle
    #   <p>An object that contains lifecycle details for the <code>Opportunity</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "CatalogIdentifier", # required
    #     primary_needs_from_aws: ["Co-Sell - Architectural Validation" # One of: ["Co-Sell - Architectural Validation", "Co-Sell - Business Presentation", "Co-Sell - Competitive Information", "Co-Sell - Pricing Assistance", "Co-Sell - Technical Consultation", "Co-Sell - Total Cost of Ownership Evaluation", "Co-Sell - Deal Support", "Co-Sell - Support for Public Tender / RFx"]],
    #     national_security: "Yes" # One of: ["Yes", "No"],
    #     partner_opportunity_identifier: "String",
    #     customer: {
    #       account: {
    #         industry: "Aerospace" # One of: ["Aerospace", "Agriculture", "Automotive", "Computers and Electronics", "Consumer Goods", "Education", "Energy - Oil and Gas", "Energy - Power and Utilities", "Financial Services", "Gaming", "Government", "Healthcare", "Hospitality", "Life Sciences", "Manufacturing", "Marketing and Advertising", "Media and Entertainment", "Mining", "Non-Profit Organization", "Professional Services", "Real Estate and Construction", "Retail", "Software and Internet", "Telecommunications", "Transportation and Logistics", "Travel", "Wholesale and Distribution", "Other"],
    #         other_industry: "String",
    #         company_name: "Name", # required
    #         website_url: "WebsiteUrl",
    #         aws_account_id: "AwsAccount",
    #         address: {
    #           city: "AddressPart",
    #           postal_code: "AddressPart",
    #           state_or_region: "AddressPart",
    #           country_code: "US" # One of: ["US", "AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "CD", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW"],
    #           street_address: "AddressPart"
    #         },
    #         duns: "DunsNumber"
    #       },
    #       contacts: [
    #         {
    #           email: "Email",
    #           first_name: "Name",
    #           last_name: "Name",
    #           business_title: "JobTitle",
    #           phone: "PhoneNumber"
    #         }
    #       ]
    #     },
    #     project: {
    #       delivery_models: ["SaaS or PaaS" # One of: ["SaaS or PaaS", "BYOL or AMI", "Managed Services", "Professional Services", "Resell", "Other"]],
    #       expected_customer_spend: [
    #         {
    #           amount: "Amount", # required
    #           currency_code: "USD" # One of: ["USD", "EUR", "GBP", "AUD", "CAD", "CNY", "NZD", "INR", "JPY", "CHF", "SEK", "AED", "AFN", "ALL", "AMD", "ANG", "AOA", "ARS", "AWG", "AZN", "BAM", "BBD", "BDT", "BGN", "BHD", "BIF", "BMD", "BND", "BOB", "BOV", "BRL", "BSD", "BTN", "BWP", "BYN", "BZD", "CDF", "CHE", "CHW", "CLF", "CLP", "COP", "COU", "CRC", "CUC", "CUP", "CVE", "CZK", "DJF", "DKK", "DOP", "DZD", "EGP", "ERN", "ETB", "FJD", "FKP", "GEL", "GHS", "GIP", "GMD", "GNF", "GTQ", "GYD", "HKD", "HNL", "HRK", "HTG", "HUF", "IDR", "ILS", "IQD", "IRR", "ISK", "JMD", "JOD", "KES", "KGS", "KHR", "KMF", "KPW", "KRW", "KWD", "KYD", "KZT", "LAK", "LBP", "LKR", "LRD", "LSL", "LYD", "MAD", "MDL", "MGA", "MKD", "MMK", "MNT", "MOP", "MRU", "MUR", "MVR", "MWK", "MXN", "MXV", "MYR", "MZN", "NAD", "NGN", "NIO", "NOK", "NPR", "OMR", "PAB", "PEN", "PGK", "PHP", "PKR", "PLN", "PYG", "QAR", "RON", "RSD", "RUB", "RWF", "SAR", "SBD", "SCR", "SDG", "SGD", "SHP", "SLL", "SOS", "SRD", "SSP", "STN", "SVC", "SYP", "SZL", "THB", "TJS", "TMT", "TND", "TOP", "TRY", "TTD", "TWD", "TZS", "UAH", "UGX", "USN", "UYI", "UYU", "UZS", "VEF", "VND", "VUV", "WST", "XAF", "XCD", "XDR", "XOF", "XPF", "XSU", "XUA", "YER", "ZAR", "ZMW", "ZWL"], # required
    #           frequency: "Monthly" # One of: ["Monthly"], # required
    #           target_company: "String", # required
    #           estimation_url: "WebsiteUrl"
    #         }
    #       ],
    #       title: "PiiString",
    #       apn_programs: ["String"],
    #       customer_business_problem: "PiiString",
    #       customer_use_case: "String",
    #       related_opportunity_identifier: "OpportunityIdentifier",
    #       sales_activities: ["Initialized discussions with customer" # One of: ["Initialized discussions with customer", "Customer has shown interest in solution", "Conducted POC / Demo", "In evaluation / planning stage", "Agreed on solution to Business Problem", "Completed Action Plan", "Finalized Deployment Need", "SOW Signed"]],
    #       competitor_name: "Oracle Cloud" # One of: ["Oracle Cloud", "On-Prem", "Co-location", "Akamai", "AliCloud", "Google Cloud Platform", "IBM Softlayer", "Microsoft Azure", "Other- Cost Optimization", "No Competition", "*Other"],
    #       other_competitor_names: "String",
    #       other_solution_description: "PiiString",
    #       additional_comments: "String"
    #     },
    #     opportunity_type: "Net New Business" # One of: ["Net New Business", "Flat Renewal", "Expansion"],
    #     marketing: {
    #       campaign_name: "String",
    #       source: "Marketing Activity" # One of: ["Marketing Activity", "None"],
    #       use_cases: ["String"],
    #       channels: ["AWS Marketing Central" # One of: ["AWS Marketing Central", "Content Syndication", "Display", "Email", "Live Event", "Out Of Home (OOH)", "Print", "Search", "Social", "Telemarketing", "TV", "Video", "Virtual Event"]],
    #       aws_funding_used: "Yes" # One of: ["Yes", "No"]
    #     },
    #     software_revenue: {
    #       delivery_model: "Contract" # One of: ["Contract", "Pay-as-you-go", "Subscription"],
    #       value: {
    #         amount: "String", # required
    #         currency_code: "USD" # One of: ["USD", "EUR", "GBP", "AUD", "CAD", "CNY", "NZD", "INR", "JPY", "CHF", "SEK", "AED", "AFN", "ALL", "AMD", "ANG", "AOA", "ARS", "AWG", "AZN", "BAM", "BBD", "BDT", "BGN", "BHD", "BIF", "BMD", "BND", "BOB", "BOV", "BRL", "BSD", "BTN", "BWP", "BYN", "BZD", "CDF", "CHE", "CHW", "CLF", "CLP", "COP", "COU", "CRC", "CUC", "CUP", "CVE", "CZK", "DJF", "DKK", "DOP", "DZD", "EGP", "ERN", "ETB", "FJD", "FKP", "GEL", "GHS", "GIP", "GMD", "GNF", "GTQ", "GYD", "HKD", "HNL", "HRK", "HTG", "HUF", "IDR", "ILS", "IQD", "IRR", "ISK", "JMD", "JOD", "KES", "KGS", "KHR", "KMF", "KPW", "KRW", "KWD", "KYD", "KZT", "LAK", "LBP", "LKR", "LRD", "LSL", "LYD", "MAD", "MDL", "MGA", "MKD", "MMK", "MNT", "MOP", "MRU", "MUR", "MVR", "MWK", "MXN", "MXV", "MYR", "MZN", "NAD", "NGN", "NIO", "NOK", "NPR", "OMR", "PAB", "PEN", "PGK", "PHP", "PKR", "PLN", "PYG", "QAR", "RON", "RSD", "RUB", "RWF", "SAR", "SBD", "SCR", "SDG", "SGD", "SHP", "SLL", "SOS", "SRD", "SSP", "STN", "SVC", "SYP", "SZL", "THB", "TJS", "TMT", "TND", "TOP", "TRY", "TTD", "TWD", "TZS", "UAH", "UGX", "USN", "UYI", "UYU", "UZS", "VEF", "VND", "VUV", "WST", "XAF", "XCD", "XDR", "XOF", "XPF", "XSU", "XUA", "YER", "ZAR", "ZMW", "ZWL"], # required
    #       },
    #       effective_date: "Date",
    #       expiration_date: "Date"
    #     },
    #     last_modified_date: Time.now, # required
    #     identifier: "OpportunityIdentifier", # required
    #     life_cycle: {
    #       stage: "Prospect" # One of: ["Prospect", "Qualified", "Technical Validation", "Business Validation", "Committed", "Launched", "Closed Lost"],
    #       closed_lost_reason: "Customer Deficiency" # One of: ["Customer Deficiency", "Delay / Cancellation of Project", "Legal / Tax / Regulatory", "Lost to Competitor - Google", "Lost to Competitor - Microsoft", "Lost to Competitor - SoftLayer", "Lost to Competitor - VMWare", "Lost to Competitor - Other", "No Opportunity", "On Premises Deployment", "Partner Gap", "Price", "Security / Compliance", "Technical Limitations", "Customer Experience", "Other", "People/Relationship/Governance", "Product/Technology", "Financial/Commercial"],
    #       next_steps: "PiiString",
    #       target_close_date: "Date",
    #       review_status: "Pending Submission" # One of: ["Pending Submission", "Submitted", "In review", "Approved", "Rejected", "Action Required"],
    #       review_comments: "String",
    #       review_status_reason: "String",
    #       next_steps_history: [
    #         {
    #           value: "String", # required
    #           time: Time.now, # required
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.update_opportunity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "OpportunityIdentifier", # required
    #     last_modified_date: Time.now, # required
    #   }
    # @return [Types::UpdateOpportunityResponse]
    def update_opportunity(params = {}, options = {})
      request = build_request(:update_opportunity, params)
      request.send_request(options)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It reaches the maximum wait time allowed
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params, options)
    #
    # ## Configuration
    #
    # You must configure the maximum amount of time in seconds a
    # waiter should wait for. You may also configure the minimum
    # and maximum amount of time in seconds to delay between
    # retries. You can pass these configuration as the final
    # arguments hash.
    #
    #     weather = Weather::Client.new
    #
    #     # poll for a maximum of 25 seconds
    #     weather.wait_until(:forecast_exists, { forecast_id: '1' }, {
    #       max_wait_time: 25,
    #       min_delay: 2,
    #       max_delay: 10
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All the failure errors extend from
    # {Smithy::Client::Waiters::WaiterFailed}.
    #
    #     weather = Weather::Client.new
    #     begin
    #       weather.wait_until(:forecast_exists, { forecast_id: '1' }, max_wait_time: 60)
    #     rescue Smithy::Client::Waiters::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_wait_time
    # @option options [Integer] :min_delay
    # @option options [Integer] :max_delay
    # @return [nil] Returns `nil` if the waiter was successful.
    # @raise [FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    # @raise [MaxWaitTimeExceededError] Raised when the configured
    #   maximum wait time is reached and the waiter is not yet successful.
    # @raise [UnexpectedError] Raised when an error that is not
    #   expected is encountered while polling for a resource.
    # @raise [NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    def wait_until(waiter_name, params = {}, options = {})
      waiter(waiter_name, options).wait(params)
    end

    # @api private
    def build_request(operation_name, params)
      handlers = @handlers.for(operation_name)
      context = Smithy::Client::HandlerContext.new(
        operation_name: operation_name,
        operation: config.service.operation(operation_name),
        client: self,
        config: config,
        params: params
      )
      context[:gem_name] = 'aws-sdk-partnercentralselling'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {}
    end

    class << self
      # @api private
      attr_reader :identifier

      # @api private
      def auth_parameters
        AuthParameters
      end

      # @api private
      def auth_resolver
        AuthResolver
      end

      # @api private
      def errors_module
        Errors
      end

      # @api private
      def protocols
        {
          json_rpc: Aws::Core::JsonRpc
        }
      end
    end
  end
end
