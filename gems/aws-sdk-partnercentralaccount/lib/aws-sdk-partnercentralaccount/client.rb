# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/transport'
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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:partnercentralaccount)

module Aws::PartnerCentralAccount
  # An API client for Aws::PartnerCentralAccount.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::PartnerCentralAccount
    @identifier = :partnercentralaccount

    add_plugin(::Aws::PartnerCentralAccount::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::Transport)
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
    # @option options [Numeric] :connect_timeout
    #  The number of seconds to wait when opening a connection before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::PartnerCentralAccount::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Boolean] :http_wire_trace
    #  When `true`, HTTP wire trace output is sent to the configured logger.
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
    # @option options [Numeric] :read_timeout
    #  The number of seconds to wait for data to be read before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
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
    # @option options [String] :ssl_ca_bundle
    #  The path to a CA certificate bundle file in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [String] :ssl_ca_directory
    #  The path to a directory of CA certificates in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [OpenSSL::X509::Store] :ssl_ca_store
    #  An in-memory TLS trust store used to verify peer certificates. Defaults to `nil`,
    #  which uses the transport's default trust store.
    # @option options [Boolean] :ssl_verify_peer (true)
    #  When `true` (default), the peer's TLS certificate is verified. Disable only
    #  for debugging, as it is insecure.
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
    # @option options [Smithy::Client::NetHTTP::Transport] :transport
    #  The transport used to send requests. Defaults to an HTTP/1.1 transport based on
    #  Net::HTTP ({Smithy::Client::NetHTTP::Transport}), constructed with the resolved
    #  common client transport options. Supply a custom object responding to
    #  `#transmit(request, sink)` and `#transmit_background(request, sink)` (both push
    #  the response into the sink; see {Smithy::Client::Transport}) to swap the transport,
    #  or a directly-constructed `NetHTTP::Transport` to set Net::HTTP-specific knobs. A
    #  caller-supplied transport instance is used as-is.
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

    # <p>Accepts a connection invitation from another partner, establishing a formal partnership connection between the two parties.</p>
    # @param [Hash, Types::AcceptConnectionInvitationRequest] params
    # @option params [String] :catalog
    #   <p>The catalog identifier where the connection invitation exists.</p>
    # @option params [String] :identifier
    #   <p>The unique identifier of the connection invitation to accept.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     identifier: "ConnectionInvitationId", # required
    #     client_token: "ClientToken", # required
    #   }
    #   options = {}
    #   response = client.accept_connection_invitation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connection: { # required
    #       catalog: "Catalog", # required
    #       id: "ConnectionId", # required
    #       arn: "ConnectionArn", # required
    #       other_participant_account_id: "AwsAccountId", # required
    #       updated_at: Time.now, # required
    #       connection_types: { # required
    #         "ConnectionType" => {
    #           created_at: Time.now, # required
    #           inviter_email: "Email", # required
    #           inviter_name: "SensitiveUnicodeString", # required
    #           status: "ACTIVE" # One of: ["ACTIVE", "CANCELED"], # required
    #           canceled_at: Time.now,
    #           canceled_by: "AwsAccountId",
    #           other_participant: { # required
    #             # One of:
    #             partner_profile: {
    #               id: "PartnerProfileId", # required
    #               name: "UnicodeString", # required
    #             },
    #             seller_profile: {
    #               id: "SellerProfileId", # required
    #               name: "UnicodeString", # required
    #             },
    #             account: {
    #               name: "UnicodeString", # required
    #             }
    #           }
    #         }
    #       }
    #     }
    #   }
    # @return [Types::AcceptConnectionInvitationResponse]
    def accept_connection_invitation(params = {}, options = {})
      request = build_request(:accept_connection_invitation, params)
      request.send_request(options)
    end

    # <p>Associates an email domain with AWS training and certification for the partner account, enabling automatic verification of employee certifications.</p>
    # @param [Hash, Types::AssociateAwsTrainingCertificationEmailDomainRequest] params
    # @option params [String] :catalog
    #   <p>The catalog identifier for the partner account.</p>
    # @option params [String] :identifier
    #   <p>The unique identifier of the partner account.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    # @option params [String] :email
    #   <p>The email address used to verify domain ownership for AWS training and certification association.</p>
    # @option params [String] :email_verification_code
    #   <p>The verification code sent to the email address to confirm domain ownership.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     identifier: "PartnerIdentifier", # required
    #     client_token: "ClientToken",
    #     email: "Email", # required
    #     email_verification_code: "EmailVerificationCode", # required
    #   }
    #   options = {}
    #   response = client.associate_aws_training_certification_email_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateAwsTrainingCertificationEmailDomainResponse]
    def associate_aws_training_certification_email_domain(params = {}, options = {})
      request = build_request(:associate_aws_training_certification_email_domain, params)
      request.send_request(options)
    end

    # <p>Cancels an existing connection between partners, terminating the partnership relationship.</p>
    # @param [Hash, Types::CancelConnectionRequest] params
    # @option params [String] :catalog
    #   <p>The catalog identifier where the connection exists.</p>
    # @option params [String] :identifier
    #   <p>The unique identifier of the connection to cancel.</p>
    # @option params [String] :connection_type
    #   <p>The type of connection to cancel (e.g., reseller, distributor, technology partner).</p>
    # @option params [String] :reason
    #   <p>The reason for canceling the connection, providing context for the termination.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     identifier: "ConnectionId", # required
    #     connection_type: "OPPORTUNITY_COLLABORATION" # One of: ["OPPORTUNITY_COLLABORATION", "SUBSIDIARY"], # required
    #     reason: "String", # required
    #     client_token: "ClientToken", # required
    #   }
    #   options = {}
    #   response = client.cancel_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     catalog: "Catalog", # required
    #     id: "ConnectionId", # required
    #     arn: "ConnectionArn", # required
    #     other_participant_account_id: "AwsAccountId", # required
    #     updated_at: Time.now, # required
    #     connection_types: { # required
    #       "ConnectionType" => {
    #         created_at: Time.now, # required
    #         inviter_email: "Email", # required
    #         inviter_name: "SensitiveUnicodeString", # required
    #         status: "ACTIVE" # One of: ["ACTIVE", "CANCELED"], # required
    #         canceled_at: Time.now,
    #         canceled_by: "AwsAccountId",
    #         other_participant: { # required
    #           # One of:
    #           partner_profile: {
    #             id: "PartnerProfileId", # required
    #             name: "UnicodeString", # required
    #           },
    #           seller_profile: {
    #             id: "SellerProfileId", # required
    #             name: "UnicodeString", # required
    #           },
    #           account: {
    #             name: "UnicodeString", # required
    #           }
    #         }
    #       }
    #     }
    #   }
    # @return [Types::CancelConnectionResponse]
    def cancel_connection(params = {}, options = {})
      request = build_request(:cancel_connection, params)
      request.send_request(options)
    end

    # <p>Cancels a pending connection invitation before it has been accepted or rejected.</p>
    # @param [Hash, Types::CancelConnectionInvitationRequest] params
    # @option params [String] :catalog
    #   <p>The catalog identifier where the connection invitation exists.</p>
    # @option params [String] :identifier
    #   <p>The unique identifier of the connection invitation to cancel.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     identifier: "ConnectionInvitationId", # required
    #     client_token: "ClientToken", # required
    #   }
    #   options = {}
    #   response = client.cancel_connection_invitation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     catalog: "Catalog", # required
    #     id: "ConnectionInvitationId", # required
    #     arn: "ConnectionInvitationArn", # required
    #     connection_id: "ConnectionId",
    #     connection_type: "OPPORTUNITY_COLLABORATION" # One of: ["OPPORTUNITY_COLLABORATION", "SUBSIDIARY"], # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     expires_at: Time.now,
    #     other_participant_identifier: "ParticipantIdentifier", # required
    #     participant_type: "SENDER" # One of: ["SENDER", "RECEIVER"], # required
    #     status: "PENDING" # One of: ["PENDING", "ACCEPTED", "REJECTED", "CANCELED", "EXPIRED"], # required
    #     invitation_message: "UnicodeStringIncludingNewLine", # required
    #     inviter_email: "Email", # required
    #     inviter_name: "SensitiveUnicodeString", # required
    #   }
    # @return [Types::CancelConnectionInvitationResponse]
    def cancel_connection_invitation(params = {}, options = {})
      request = build_request(:cancel_connection_invitation, params)
      request.send_request(options)
    end

    # <p>Cancels an in-progress profile update task, stopping any pending changes to the partner profile.</p>
    # @param [Hash, Types::CancelProfileUpdateTaskRequest] params
    # @option params [String] :catalog
    #   <p>The catalog identifier for the partner account.</p>
    # @option params [String] :identifier
    #   <p>The unique identifier of the partner account.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    # @option params [String] :task_id
    #   <p>The unique identifier of the profile update task to cancel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     identifier: "PartnerIdentifier", # required
    #     client_token: "ClientToken",
    #     task_id: "ProfileTaskId", # required
    #   }
    #   options = {}
    #   response = client.cancel_profile_update_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     catalog: "Catalog", # required
    #     arn: "PartnerArn", # required
    #     id: "PartnerId", # required
    #     task_id: "ProfileTaskId", # required
    #     task_details: { # required
    #       display_name: "UnicodeString", # required
    #       description: "UnicodeString", # required
    #       website_url: "Url", # required
    #       logo_url: "Url", # required
    #       primary_solution_type: "SOFTWARE_PRODUCTS" # One of: ["SOFTWARE_PRODUCTS", "CONSULTING_SERVICES", "PROFESSIONAL_SERVICES", "MANAGED_SERVICES", "HARDWARE_PRODUCTS", "COMMUNICATION_SERVICES", "VALUE_ADDED_RESALE_AWS_SERVICES", "TRAINING_SERVICES"], # required
    #       industry_segments: ["AGRICULTURE_MINING" # One of: ["AGRICULTURE_MINING", "BIOTECHNOLOGY", "BUSINESS_CONSUMER_SERVICES", "BUSINESS_SERV", "COMMUNICATIONS", "COMPUTER_HARDWARE", "COMPUTERS_ELECTRONICS", "COMPUTER_SOFTWARE", "CONSUMER_GOODS", "CONSUMER_RELATED", "EDUCATION", "ENERGY_UTILITIES", "FINANCIAL_SERVICES", "GAMING", "GOVERNMENT", "GOVERNMENT_EDUCATION_PUBLIC_SERVICES", "HEALTHCARE", "HEALTHCARE_PHARMACEUTICALS_BIOTECH", "INDUSTRIAL_ENERGY", "INTERNET_SPECIFIC", "LIFE_SCIENCES", "MANUFACTURING", "MEDIA_ENTERTAINMENT_LEISURE", "MEDIA_ENTERTAINMENT", "MEDICAL_HEALTH", "NON_PROFIT_ORGANIZATION", "OTHER", "PROFESSIONAL_SERVICES", "REAL_ESTATE_CONSTRUCTION", "RETAIL", "RETAIL_WHOLESALE_DISTRIBUTION", "SEMICONDUCTOR_ELECTR", "SOFTWARE_INTERNET", "TELECOMMUNICATIONS", "TRANSPORTATION_LOGISTICS", "TRAVEL_HOSPITALITY", "WHOLESALE_DISTRIBUTION"]], # required
    #       translation_source_locale: "Locale", # required
    #       localized_contents: [
    #         {
    #           display_name: "UnicodeString", # required
    #           description: "UnicodeString", # required
    #           website_url: "Url", # required
    #           logo_url: "Url", # required
    #           locale: "Locale", # required
    #         }
    #       ],
    #       headquarters: {
    #         country_code: "CountryCode", # required
    #         subdivision_code: "SubdivisionCode", # required
    #       }
    #     },
    #     started_at: Time.now, # required
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "CANCELED", "SUCCEEDED", "FAILED"], # required
    #     ended_at: Time.now,
    #     error_detail_list: [
    #       {
    #         locale: "String", # required
    #         message: "String", # required
    #         reason: "INVALID_CONTENT" # One of: ["INVALID_CONTENT", "DUPLICATE_PROFILE", "INVALID_LOGO", "INVALID_LOGO_URL", "INVALID_LOGO_FILE", "INVALID_LOGO_SIZE", "INVALID_WEBSITE_URL"], # required
    #       }
    #     ]
    #   }
    # @return [Types::CancelProfileUpdateTaskResponse]
    def cancel_profile_update_task(params = {}, options = {})
      request = build_request(:cancel_profile_update_task, params)
      request.send_request(options)
    end

    # <p>Creates a new connection invitation to establish a partnership with another organization.</p>
    # @param [Hash, Types::CreateConnectionInvitationRequest] params
    # @option params [String] :catalog
    #   <p>The catalog identifier where the connection invitation will be created.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    # @option params [String] :connection_type
    #   <p>The type of connection being requested (e.g., reseller, distributor, technology partner).</p>
    # @option params [String] :email
    #   <p>The email address of the person to send the connection invitation to.</p>
    # @option params [String] :message
    #   <p>A custom message to include with the connection invitation.</p>
    # @option params [String] :name
    #   <p>The name of the person sending the connection invitation.</p>
    # @option params [String] :receiver_identifier
    #   <p>The identifier of the organization or partner to invite for connection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     client_token: "ClientToken", # required
    #     connection_type: "OPPORTUNITY_COLLABORATION" # One of: ["OPPORTUNITY_COLLABORATION", "SUBSIDIARY"], # required
    #     email: "Email", # required
    #     message: "UnicodeStringIncludingNewLine", # required
    #     name: "SensitiveUnicodeString", # required
    #     receiver_identifier: "ParticipantIdentifier", # required
    #   }
    #   options = {}
    #   response = client.create_connection_invitation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     catalog: "Catalog", # required
    #     id: "ConnectionInvitationId", # required
    #     arn: "ConnectionInvitationArn", # required
    #     connection_id: "ConnectionId",
    #     connection_type: "OPPORTUNITY_COLLABORATION" # One of: ["OPPORTUNITY_COLLABORATION", "SUBSIDIARY"], # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     expires_at: Time.now,
    #     other_participant_identifier: "ParticipantIdentifier", # required
    #     participant_type: "SENDER" # One of: ["SENDER", "RECEIVER"], # required
    #     status: "PENDING" # One of: ["PENDING", "ACCEPTED", "REJECTED", "CANCELED", "EXPIRED"], # required
    #     invitation_message: "UnicodeStringIncludingNewLine", # required
    #     inviter_email: "Email", # required
    #     inviter_name: "SensitiveUnicodeString", # required
    #   }
    # @return [Types::CreateConnectionInvitationResponse]
    def create_connection_invitation(params = {}, options = {})
      request = build_request(:create_connection_invitation, params)
      request.send_request(options)
    end

    # <p>Creates a new partner account in the AWS Partner Network with the specified details and configuration.</p>
    # @param [Hash, Types::CreatePartnerRequest] params
    # @option params [String] :catalog
    #   <p>The catalog identifier where the partner account will be created.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    # @option params [String] :legal_name
    #   <p>The legal name of the organization becoming a partner.</p>
    # @option params [String] :primary_solution_type
    #   <p>The primary type of solution or service the partner provides (e.g., consulting, software, managed services).</p>
    # @option params [Types::AllianceLeadContact] :alliance_lead_contact
    #   <p>The primary contact person for alliance and partnership matters.</p>
    # @option params [String] :email_verification_code
    #   <p>The verification code sent to the alliance lead contact's email to confirm account creation.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags to associate with the partner account for organization and billing purposes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     client_token: "ClientToken",
    #     legal_name: "SensitiveUnicodeString", # required
    #     primary_solution_type: "SOFTWARE_PRODUCTS" # One of: ["SOFTWARE_PRODUCTS", "CONSULTING_SERVICES", "PROFESSIONAL_SERVICES", "MANAGED_SERVICES", "HARDWARE_PRODUCTS", "COMMUNICATION_SERVICES", "VALUE_ADDED_RESALE_AWS_SERVICES", "TRAINING_SERVICES"], # required
    #     alliance_lead_contact: { # required
    #       first_name: "SensitiveUnicodeString", # required
    #       last_name: "SensitiveUnicodeString", # required
    #       email: "Email", # required
    #       business_title: "SensitiveUnicodeString", # required
    #     },
    #     email_verification_code: "EmailVerificationCode", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_partner(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     catalog: "Catalog", # required
    #     arn: "PartnerArn", # required
    #     id: "PartnerId", # required
    #     legal_name: "SensitiveUnicodeString", # required
    #     created_at: Time.now, # required
    #     profile: { # required
    #       display_name: "UnicodeString", # required
    #       description: "UnicodeString", # required
    #       website_url: "Url", # required
    #       logo_url: "Url", # required
    #       primary_solution_type: "SOFTWARE_PRODUCTS" # One of: ["SOFTWARE_PRODUCTS", "CONSULTING_SERVICES", "PROFESSIONAL_SERVICES", "MANAGED_SERVICES", "HARDWARE_PRODUCTS", "COMMUNICATION_SERVICES", "VALUE_ADDED_RESALE_AWS_SERVICES", "TRAINING_SERVICES"], # required
    #       industry_segments: ["AGRICULTURE_MINING" # One of: ["AGRICULTURE_MINING", "BIOTECHNOLOGY", "BUSINESS_CONSUMER_SERVICES", "BUSINESS_SERV", "COMMUNICATIONS", "COMPUTER_HARDWARE", "COMPUTERS_ELECTRONICS", "COMPUTER_SOFTWARE", "CONSUMER_GOODS", "CONSUMER_RELATED", "EDUCATION", "ENERGY_UTILITIES", "FINANCIAL_SERVICES", "GAMING", "GOVERNMENT", "GOVERNMENT_EDUCATION_PUBLIC_SERVICES", "HEALTHCARE", "HEALTHCARE_PHARMACEUTICALS_BIOTECH", "INDUSTRIAL_ENERGY", "INTERNET_SPECIFIC", "LIFE_SCIENCES", "MANUFACTURING", "MEDIA_ENTERTAINMENT_LEISURE", "MEDIA_ENTERTAINMENT", "MEDICAL_HEALTH", "NON_PROFIT_ORGANIZATION", "OTHER", "PROFESSIONAL_SERVICES", "REAL_ESTATE_CONSTRUCTION", "RETAIL", "RETAIL_WHOLESALE_DISTRIBUTION", "SEMICONDUCTOR_ELECTR", "SOFTWARE_INTERNET", "TELECOMMUNICATIONS", "TRANSPORTATION_LOGISTICS", "TRAVEL_HOSPITALITY", "WHOLESALE_DISTRIBUTION"]], # required
    #       translation_source_locale: "Locale", # required
    #       localized_contents: [
    #         {
    #           display_name: "UnicodeString", # required
    #           description: "UnicodeString", # required
    #           website_url: "Url", # required
    #           logo_url: "Url", # required
    #           locale: "Locale", # required
    #         }
    #       ],
    #       headquarters: {
    #         country_code: "CountryCode", # required
    #         subdivision_code: "SubdivisionCode", # required
    #       },
    #       profile_id: "PartnerProfileId"
    #     },
    #     aws_training_certification_email_domains: [
    #       {
    #         domain_name: "DomainName", # required
    #         registered_at: Time.now, # required
    #       }
    #     ],
    #     alliance_lead_contact: { # required
    #       first_name: "SensitiveUnicodeString", # required
    #       last_name: "SensitiveUnicodeString", # required
    #       email: "Email", # required
    #       business_title: "SensitiveUnicodeString", # required
    #     }
    #   }
    # @return [Types::CreatePartnerResponse]
    def create_partner(params = {}, options = {})
      request = build_request(:create_partner, params)
      request.send_request(options)
    end

    # <p>Removes the association between an email domain and AWS training and certification for the partner account.</p>
    # @param [Hash, Types::DisassociateAwsTrainingCertificationEmailDomainRequest] params
    # @option params [String] :catalog
    #   <p>The catalog identifier for the partner account.</p>
    # @option params [String] :identifier
    #   <p>The unique identifier of the partner account.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    # @option params [String] :domain_name
    #   <p>The domain name to disassociate from AWS training and certification.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     identifier: "PartnerIdentifier", # required
    #     client_token: "ClientToken",
    #     domain_name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.disassociate_aws_training_certification_email_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateAwsTrainingCertificationEmailDomainResponse]
    def disassociate_aws_training_certification_email_domain(params = {}, options = {})
      request = build_request(:disassociate_aws_training_certification_email_domain, params)
      request.send_request(options)
    end

    # <p>Retrieves the alliance lead contact information for a partner account.</p>
    # @param [Hash, Types::GetAllianceLeadContactRequest] params
    # @option params [String] :catalog
    #   <p>The catalog identifier for the partner account.</p>
    # @option params [String] :identifier
    #   <p>The unique identifier of the partner account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     identifier: "PartnerIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_alliance_lead_contact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     catalog: "Catalog", # required
    #     arn: "PartnerArn", # required
    #     id: "PartnerId", # required
    #     alliance_lead_contact: { # required
    #       first_name: "SensitiveUnicodeString", # required
    #       last_name: "SensitiveUnicodeString", # required
    #       email: "Email", # required
    #       business_title: "SensitiveUnicodeString", # required
    #     }
    #   }
    # @return [Types::GetAllianceLeadContactResponse]
    def get_alliance_lead_contact(params = {}, options = {})
      request = build_request(:get_alliance_lead_contact, params)
      request.send_request(options)
    end

    # <p>Retrieves detailed information about a specific connection between partners.</p>
    # @param [Hash, Types::GetConnectionRequest] params
    # @option params [String] :catalog
    #   <p>The catalog identifier where the connection exists.</p>
    # @option params [String] :identifier
    #   <p>The unique identifier of the connection to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     identifier: "ConnectionId", # required
    #   }
    #   options = {}
    #   response = client.get_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     catalog: "Catalog", # required
    #     id: "ConnectionId", # required
    #     arn: "ConnectionArn", # required
    #     other_participant_account_id: "AwsAccountId", # required
    #     updated_at: Time.now, # required
    #     connection_types: { # required
    #       "ConnectionType" => {
    #         created_at: Time.now, # required
    #         inviter_email: "Email", # required
    #         inviter_name: "SensitiveUnicodeString", # required
    #         status: "ACTIVE" # One of: ["ACTIVE", "CANCELED"], # required
    #         canceled_at: Time.now,
    #         canceled_by: "AwsAccountId",
    #         other_participant: { # required
    #           # One of:
    #           partner_profile: {
    #             id: "PartnerProfileId", # required
    #             name: "UnicodeString", # required
    #           },
    #           seller_profile: {
    #             id: "SellerProfileId", # required
    #             name: "UnicodeString", # required
    #           },
    #           account: {
    #             name: "UnicodeString", # required
    #           }
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetConnectionResponse]
    def get_connection(params = {}, options = {})
      request = build_request(:get_connection, params)
      request.send_request(options)
    end

    # <p>Retrieves detailed information about a specific connection invitation.</p>
    # @param [Hash, Types::GetConnectionInvitationRequest] params
    # @option params [String] :catalog
    #   <p>The catalog identifier where the connection invitation exists.</p>
    # @option params [String] :identifier
    #   <p>The unique identifier of the connection invitation to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     identifier: "ConnectionInvitationId", # required
    #   }
    #   options = {}
    #   response = client.get_connection_invitation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     catalog: "Catalog", # required
    #     id: "ConnectionInvitationId", # required
    #     arn: "ConnectionInvitationArn", # required
    #     connection_id: "ConnectionId",
    #     connection_type: "OPPORTUNITY_COLLABORATION" # One of: ["OPPORTUNITY_COLLABORATION", "SUBSIDIARY"], # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     expires_at: Time.now,
    #     other_participant_identifier: "ParticipantIdentifier", # required
    #     participant_type: "SENDER" # One of: ["SENDER", "RECEIVER"], # required
    #     status: "PENDING" # One of: ["PENDING", "ACCEPTED", "REJECTED", "CANCELED", "EXPIRED"], # required
    #     invitation_message: "UnicodeStringIncludingNewLine", # required
    #     inviter_email: "Email", # required
    #     inviter_name: "SensitiveUnicodeString", # required
    #   }
    # @return [Types::GetConnectionInvitationResponse]
    def get_connection_invitation(params = {}, options = {})
      request = build_request(:get_connection_invitation, params)
      request.send_request(options)
    end

    # <p>Retrieves the connection preferences for a partner account, including access settings and exclusions.</p>
    # @param [Hash, Types::GetConnectionPreferencesRequest] params
    # @option params [String] :catalog
    #   <p>The catalog identifier for the partner account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #   }
    #   options = {}
    #   response = client.get_connection_preferences(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     catalog: "Catalog", # required
    #     arn: "ConnectionPreferencesArn", # required
    #     access_type: "ALLOW_ALL" # One of: ["ALLOW_ALL", "DENY_ALL", "ALLOW_BY_DEFAULT_DENY_SOME"], # required
    #     excluded_participant_ids: ["ParticipantIdentifier"],
    #     updated_at: Time.now, # required
    #     revision: 1, # required
    #   }
    # @return [Types::GetConnectionPreferencesResponse]
    def get_connection_preferences(params = {}, options = {})
      request = build_request(:get_connection_preferences, params)
      request.send_request(options)
    end

    # <p>Retrieves detailed information about a specific partner account.</p>
    # @param [Hash, Types::GetPartnerRequest] params
    # @option params [String] :catalog
    #   <p>The catalog identifier for the partner account.</p>
    # @option params [String] :identifier
    #   <p>The unique identifier of the partner account to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     identifier: "PartnerIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_partner(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     catalog: "Catalog", # required
    #     arn: "PartnerArn", # required
    #     id: "PartnerId", # required
    #     legal_name: "SensitiveUnicodeString", # required
    #     created_at: Time.now, # required
    #     profile: { # required
    #       display_name: "UnicodeString", # required
    #       description: "UnicodeString", # required
    #       website_url: "Url", # required
    #       logo_url: "Url", # required
    #       primary_solution_type: "SOFTWARE_PRODUCTS" # One of: ["SOFTWARE_PRODUCTS", "CONSULTING_SERVICES", "PROFESSIONAL_SERVICES", "MANAGED_SERVICES", "HARDWARE_PRODUCTS", "COMMUNICATION_SERVICES", "VALUE_ADDED_RESALE_AWS_SERVICES", "TRAINING_SERVICES"], # required
    #       industry_segments: ["AGRICULTURE_MINING" # One of: ["AGRICULTURE_MINING", "BIOTECHNOLOGY", "BUSINESS_CONSUMER_SERVICES", "BUSINESS_SERV", "COMMUNICATIONS", "COMPUTER_HARDWARE", "COMPUTERS_ELECTRONICS", "COMPUTER_SOFTWARE", "CONSUMER_GOODS", "CONSUMER_RELATED", "EDUCATION", "ENERGY_UTILITIES", "FINANCIAL_SERVICES", "GAMING", "GOVERNMENT", "GOVERNMENT_EDUCATION_PUBLIC_SERVICES", "HEALTHCARE", "HEALTHCARE_PHARMACEUTICALS_BIOTECH", "INDUSTRIAL_ENERGY", "INTERNET_SPECIFIC", "LIFE_SCIENCES", "MANUFACTURING", "MEDIA_ENTERTAINMENT_LEISURE", "MEDIA_ENTERTAINMENT", "MEDICAL_HEALTH", "NON_PROFIT_ORGANIZATION", "OTHER", "PROFESSIONAL_SERVICES", "REAL_ESTATE_CONSTRUCTION", "RETAIL", "RETAIL_WHOLESALE_DISTRIBUTION", "SEMICONDUCTOR_ELECTR", "SOFTWARE_INTERNET", "TELECOMMUNICATIONS", "TRANSPORTATION_LOGISTICS", "TRAVEL_HOSPITALITY", "WHOLESALE_DISTRIBUTION"]], # required
    #       translation_source_locale: "Locale", # required
    #       localized_contents: [
    #         {
    #           display_name: "UnicodeString", # required
    #           description: "UnicodeString", # required
    #           website_url: "Url", # required
    #           logo_url: "Url", # required
    #           locale: "Locale", # required
    #         }
    #       ],
    #       headquarters: {
    #         country_code: "CountryCode", # required
    #         subdivision_code: "SubdivisionCode", # required
    #       },
    #       profile_id: "PartnerProfileId"
    #     },
    #     aws_training_certification_email_domains: [
    #       {
    #         domain_name: "DomainName", # required
    #         registered_at: Time.now, # required
    #       }
    #     ]
    #   }
    # @return [Types::GetPartnerResponse]
    def get_partner(params = {}, options = {})
      request = build_request(:get_partner, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a specific profile update task.</p>
    # @param [Hash, Types::GetProfileUpdateTaskRequest] params
    # @option params [String] :catalog
    #   <p>The catalog identifier for the partner account.</p>
    # @option params [String] :identifier
    #   <p>The unique identifier of the partner account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     identifier: "PartnerIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_profile_update_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     catalog: "Catalog", # required
    #     arn: "PartnerArn", # required
    #     id: "PartnerId", # required
    #     task_id: "ProfileTaskId", # required
    #     task_details: { # required
    #       display_name: "UnicodeString", # required
    #       description: "UnicodeString", # required
    #       website_url: "Url", # required
    #       logo_url: "Url", # required
    #       primary_solution_type: "SOFTWARE_PRODUCTS" # One of: ["SOFTWARE_PRODUCTS", "CONSULTING_SERVICES", "PROFESSIONAL_SERVICES", "MANAGED_SERVICES", "HARDWARE_PRODUCTS", "COMMUNICATION_SERVICES", "VALUE_ADDED_RESALE_AWS_SERVICES", "TRAINING_SERVICES"], # required
    #       industry_segments: ["AGRICULTURE_MINING" # One of: ["AGRICULTURE_MINING", "BIOTECHNOLOGY", "BUSINESS_CONSUMER_SERVICES", "BUSINESS_SERV", "COMMUNICATIONS", "COMPUTER_HARDWARE", "COMPUTERS_ELECTRONICS", "COMPUTER_SOFTWARE", "CONSUMER_GOODS", "CONSUMER_RELATED", "EDUCATION", "ENERGY_UTILITIES", "FINANCIAL_SERVICES", "GAMING", "GOVERNMENT", "GOVERNMENT_EDUCATION_PUBLIC_SERVICES", "HEALTHCARE", "HEALTHCARE_PHARMACEUTICALS_BIOTECH", "INDUSTRIAL_ENERGY", "INTERNET_SPECIFIC", "LIFE_SCIENCES", "MANUFACTURING", "MEDIA_ENTERTAINMENT_LEISURE", "MEDIA_ENTERTAINMENT", "MEDICAL_HEALTH", "NON_PROFIT_ORGANIZATION", "OTHER", "PROFESSIONAL_SERVICES", "REAL_ESTATE_CONSTRUCTION", "RETAIL", "RETAIL_WHOLESALE_DISTRIBUTION", "SEMICONDUCTOR_ELECTR", "SOFTWARE_INTERNET", "TELECOMMUNICATIONS", "TRANSPORTATION_LOGISTICS", "TRAVEL_HOSPITALITY", "WHOLESALE_DISTRIBUTION"]], # required
    #       translation_source_locale: "Locale", # required
    #       localized_contents: [
    #         {
    #           display_name: "UnicodeString", # required
    #           description: "UnicodeString", # required
    #           website_url: "Url", # required
    #           logo_url: "Url", # required
    #           locale: "Locale", # required
    #         }
    #       ],
    #       headquarters: {
    #         country_code: "CountryCode", # required
    #         subdivision_code: "SubdivisionCode", # required
    #       }
    #     },
    #     started_at: Time.now, # required
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "CANCELED", "SUCCEEDED", "FAILED"], # required
    #     ended_at: Time.now,
    #     error_detail_list: [
    #       {
    #         locale: "String", # required
    #         message: "String", # required
    #         reason: "INVALID_CONTENT" # One of: ["INVALID_CONTENT", "DUPLICATE_PROFILE", "INVALID_LOGO", "INVALID_LOGO_URL", "INVALID_LOGO_FILE", "INVALID_LOGO_SIZE", "INVALID_WEBSITE_URL"], # required
    #       }
    #     ]
    #   }
    # @return [Types::GetProfileUpdateTaskResponse]
    def get_profile_update_task(params = {}, options = {})
      request = build_request(:get_profile_update_task, params)
      request.send_request(options)
    end

    # <p>Retrieves the visibility settings for a partner profile, determining who can see the profile information.</p>
    # @param [Hash, Types::GetProfileVisibilityRequest] params
    # @option params [String] :catalog
    #   <p>The catalog identifier for the partner account.</p>
    # @option params [String] :identifier
    #   <p>The unique identifier of the partner account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     identifier: "PartnerIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_profile_visibility(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     catalog: "Catalog", # required
    #     arn: "PartnerArn", # required
    #     id: "PartnerId", # required
    #     visibility: "PRIVATE" # One of: ["PRIVATE", "PUBLIC"], # required
    #     profile_id: "PartnerProfileId", # required
    #   }
    # @return [Types::GetProfileVisibilityResponse]
    def get_profile_visibility(params = {}, options = {})
      request = build_request(:get_profile_visibility, params)
      request.send_request(options)
    end

    # <p>Returns your current qualifications association status, the primary partner, and the full list of partners associated under the primary partner.</p>
    # @param [Hash, Types::GetQualificationsAssociationDetailsRequest] params
    # @option params [String] :catalog
    #   <p>The catalog in which to look up the qualifications association. Valid values: <code>AWS</code>, <code>Sandbox</code>.</p>
    # @option params [String] :identifier
    #   <p>Your partner identifier. You can provide either a partner ID (for example, <code>partner-abc123</code>) or a partner ARN. You must own this identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     identifier: "PartnerIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_qualifications_association_details(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     catalog: "Catalog", # required
    #     arn: "PartnerArn", # required
    #     id: "PartnerId", # required
    #     status: "ASSOCIATED" # One of: ["ASSOCIATED", "NOT_ASSOCIATED"], # required
    #     primary_partner: {
    #       profile_id: "PartnerProfileId",
    #       account_id: "AwsAccountId"
    #     },
    #     associated_partners: [
    #       {
    #         profile_id: "PartnerProfileId",
    #         account_id: "AwsAccountId"
    #       }
    #     ],
    #     updated_at: Time.now
    #   }
    # @return [Types::GetQualificationsAssociationDetailsResponse]
    def get_qualifications_association_details(params = {}, options = {})
      request = build_request(:get_qualifications_association_details, params)
      request.send_request(options)
    end

    # <p>Retrieves the status and details of the most recent qualifications association task for your partner account. Use this operation to poll the progress of an association task initiated by <code>StartQualificationsAssociationTask</code>.</p>
    # @param [Hash, Types::GetQualificationsAssociationTaskRequest] params
    # @option params [String] :catalog
    #   <p>The catalog in which to look up the qualifications association task. Valid values: <code>AWS</code>, <code>Sandbox</code>.</p>
    # @option params [String] :identifier
    #   <p>Your partner identifier. You can provide either a partner ID (for example, <code>partner-abc123</code>) or a partner ARN. You must own this identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     identifier: "PartnerIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_qualifications_association_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     catalog: "Catalog", # required
    #     arn: "PartnerArn", # required
    #     id: "PartnerId", # required
    #     task_id: "QualificationsAssociationTaskId", # required
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCEEDED"], # required
    #     primary_partner: { # required
    #       profile_id: "PartnerProfileId",
    #       account_id: "AwsAccountId"
    #     },
    #     started_at: Time.now, # required
    #     ended_at: Time.now
    #   }
    # @return [Types::GetQualificationsAssociationTaskResponse]
    def get_qualifications_association_task(params = {}, options = {})
      request = build_request(:get_qualifications_association_task, params)
      request.send_request(options)
    end

    # <p>Retrieves the status and details of the most recent qualifications disassociation task for your partner account. Use this operation to poll the progress of a disassociation task initiated by <code>StartQualificationsDisassociationTask</code>.</p>
    # @param [Hash, Types::GetQualificationsDisassociationTaskRequest] params
    # @option params [String] :catalog
    #   <p>The catalog in which to look up the qualifications disassociation task. Valid values: <code>AWS</code>, <code>Sandbox</code>.</p>
    # @option params [String] :identifier
    #   <p>Your partner identifier. You can provide either a partner ID (for example, <code>partner-abc123</code>) or a partner ARN. You must own this identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     identifier: "PartnerIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_qualifications_disassociation_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     catalog: "Catalog", # required
    #     arn: "PartnerArn", # required
    #     id: "PartnerId", # required
    #     task_id: "QualificationsDisassociationTaskId", # required
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCEEDED"], # required
    #     associated_partner: { # required
    #       profile_id: "PartnerProfileId",
    #       account_id: "AwsAccountId"
    #     },
    #     started_at: Time.now, # required
    #     ended_at: Time.now
    #   }
    # @return [Types::GetQualificationsDisassociationTaskResponse]
    def get_qualifications_disassociation_task(params = {}, options = {})
      request = build_request(:get_qualifications_disassociation_task, params)
      request.send_request(options)
    end

    # <p>Retrieves the current status and details of a verification process for a partner account. This operation allows partners to check the progress and results of business or registrant verification processes.</p>
    # @param [Hash, Types::GetVerificationRequest] params
    # @option params [String] :verification_type
    #   <p>The type of verification to retrieve information for. Valid values include business verification for company registration details and registrant verification for individual identity confirmation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     verification_type: "BUSINESS_VERIFICATION" # One of: ["BUSINESS_VERIFICATION", "REGISTRANT_VERIFICATION"], # required
    #   }
    #   options = {}
    #   response = client.get_verification(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     verification_type: "BUSINESS_VERIFICATION" # One of: ["BUSINESS_VERIFICATION", "REGISTRANT_VERIFICATION"], # required
    #     verification_status: "PENDING_CUSTOMER_ACTION" # One of: ["PENDING_CUSTOMER_ACTION", "IN_PROGRESS", "FAILED", "SUCCEEDED", "REJECTED"], # required
    #     verification_status_reason: "VerificationStatusReason",
    #     verification_response_details: { # required
    #       # One of:
    #       business_verification_response: {
    #         business_verification_details: { # required
    #           legal_name: "LegalName", # required
    #           registration_id: "RegistrationId", # required
    #           country_code: "CountryCode", # required
    #           jurisdiction_of_incorporation: "JurisdictionCode"
    #         },
    #         completion_url: "CompletionUrl",
    #         completion_url_expires_at: Time.now
    #       },
    #       registrant_verification_response: {
    #         completion_url: "CompletionUrl", # required
    #         completion_url_expires_at: Time.now, # required
    #       }
    #     },
    #     started_at: Time.now, # required
    #     completed_at: Time.now
    #   }
    # @return [Types::GetVerificationResponse]
    def get_verification(params = {}, options = {})
      request = build_request(:get_verification, params)
      request.send_request(options)
    end

    # <p>Lists connection invitations for the partner account, with optional filtering by status, type, and other criteria.</p>
    # @param [Hash, Types::ListConnectionInvitationsRequest] params
    # @option params [String] :catalog
    #   <p>The catalog identifier for the partner account.</p>
    # @option params [String] :next_token
    #   <p>The token for retrieving the next page of results in paginated responses.</p>
    # @option params [String] :connection_type
    #   <p>Filter results by connection type (e.g., reseller, distributor, technology partner).</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of connection invitations to return in a single response.</p>
    # @option params [Array<String>] :other_participant_identifiers
    #   <p>Filter results by specific participant identifiers.</p>
    # @option params [String] :participant_type
    #   <p>Filter results by participant type (inviter or invitee).</p>
    # @option params [String] :status
    #   <p>Filter results by invitation status (pending, accepted, rejected, canceled, expired).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     next_token: "NextToken",
    #     connection_type: "OPPORTUNITY_COLLABORATION" # One of: ["OPPORTUNITY_COLLABORATION", "SUBSIDIARY"],
    #     max_results: 1,
    #     other_participant_identifiers: ["ParticipantIdentifier"],
    #     participant_type: "SENDER" # One of: ["SENDER", "RECEIVER"],
    #     status: "PENDING" # One of: ["PENDING", "ACCEPTED", "REJECTED", "CANCELED", "EXPIRED"]
    #   }
    #   options = {}
    #   response = client.list_connection_invitations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connection_invitation_summaries: [ # required
    #       {
    #         catalog: "Catalog", # required
    #         id: "ConnectionInvitationId", # required
    #         arn: "ConnectionInvitationArn", # required
    #         connection_id: "ConnectionId",
    #         connection_type: "OPPORTUNITY_COLLABORATION" # One of: ["OPPORTUNITY_COLLABORATION", "SUBSIDIARY"], # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         expires_at: Time.now,
    #         other_participant_identifier: "ParticipantIdentifier", # required
    #         participant_type: "SENDER" # One of: ["SENDER", "RECEIVER"], # required
    #         status: "PENDING" # One of: ["PENDING", "ACCEPTED", "REJECTED", "CANCELED", "EXPIRED"], # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListConnectionInvitationsResponse]
    def list_connection_invitations(params = {}, options = {})
      request = build_request(:list_connection_invitations, params)
      request.send_request(options)
    end

    # <p>Lists active connections for the partner account, with optional filtering by connection type and participant.</p>
    # @param [Hash, Types::ListConnectionsRequest] params
    # @option params [String] :catalog
    #   <p>The catalog identifier for the partner account.</p>
    # @option params [String] :next_token
    #   <p>The token for retrieving the next page of results in paginated responses.</p>
    # @option params [String] :connection_type
    #   <p>Filter results by connection type (e.g., reseller, distributor, technology partner).</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of connections to return in a single response.</p>
    # @option params [Array<String>] :other_participant_identifiers
    #   <p>Filter results by specific participant identifiers.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     next_token: "NextToken",
    #     connection_type: "ConnectionTypeFilter",
    #     max_results: 1,
    #     other_participant_identifiers: ["ParticipantIdentifier"]
    #   }
    #   options = {}
    #   response = client.list_connections(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connection_summaries: [ # required
    #       {
    #         catalog: "Catalog", # required
    #         id: "ConnectionId", # required
    #         arn: "ConnectionArn", # required
    #         other_participant_account_id: "AwsAccountId", # required
    #         updated_at: Time.now, # required
    #         connection_types: { # required
    #           "ConnectionType" => {
    #             status: "ACTIVE" # One of: ["ACTIVE", "CANCELED"], # required
    #             other_participant: { # required
    #               # One of:
    #               partner_profile: {
    #                 id: "PartnerProfileId", # required
    #                 name: "UnicodeString", # required
    #               },
    #               seller_profile: {
    #                 id: "SellerProfileId", # required
    #                 name: "UnicodeString", # required
    #               },
    #               account: {
    #                 name: "UnicodeString", # required
    #               }
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListConnectionsResponse]
    def list_connections(params = {}, options = {})
      request = build_request(:list_connections, params)
      request.send_request(options)
    end

    # <p>Lists partner accounts in the catalog, providing a summary view of all partners.</p>
    # @param [Hash, Types::ListPartnersRequest] params
    # @option params [String] :catalog
    #   <p>The catalog identifier to list partners from.</p>
    # @option params [String] :next_token
    #   <p>The token for retrieving the next page of results in paginated responses.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_partners(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     partner_summary_list: [ # required
    #       {
    #         catalog: "Catalog", # required
    #         arn: "PartnerArn", # required
    #         id: "PartnerId", # required
    #         legal_name: "SensitiveUnicodeString", # required
    #         created_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPartnersResponse]
    def list_partners(params = {}, options = {})
      request = build_request(:list_partners, params)
      request.send_request(options)
    end

    # <p>Lists all tags associated with a specific AWS Partner Central Account resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to list tags for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TaggableResourceArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_arn: "TaggableResourceArn", # required
    #     tags: [
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

    # <p>Creates or updates the alliance lead contact information for a partner account.</p>
    # @param [Hash, Types::PutAllianceLeadContactRequest] params
    # @option params [String] :catalog
    #   <p>The catalog identifier for the partner account.</p>
    # @option params [String] :identifier
    #   <p>The unique identifier of the partner account.</p>
    # @option params [Types::AllianceLeadContact] :alliance_lead_contact
    #   <p>The alliance lead contact information to set for the partner account.</p>
    # @option params [String] :email_verification_code
    #   <p>The verification code sent to the alliance lead contact's email to confirm the update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     identifier: "PartnerIdentifier", # required
    #     alliance_lead_contact: { # required
    #       first_name: "SensitiveUnicodeString", # required
    #       last_name: "SensitiveUnicodeString", # required
    #       email: "Email", # required
    #       business_title: "SensitiveUnicodeString", # required
    #     },
    #     email_verification_code: "EmailVerificationCode"
    #   }
    #   options = {}
    #   response = client.put_alliance_lead_contact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     catalog: "Catalog", # required
    #     arn: "PartnerArn", # required
    #     id: "PartnerId", # required
    #     alliance_lead_contact: { # required
    #       first_name: "SensitiveUnicodeString", # required
    #       last_name: "SensitiveUnicodeString", # required
    #       email: "Email", # required
    #       business_title: "SensitiveUnicodeString", # required
    #     }
    #   }
    # @return [Types::PutAllianceLeadContactResponse]
    def put_alliance_lead_contact(params = {}, options = {})
      request = build_request(:put_alliance_lead_contact, params)
      request.send_request(options)
    end

    # <p>Sets the visibility level for a partner profile, controlling who can view the profile information.</p>
    # @param [Hash, Types::PutProfileVisibilityRequest] params
    # @option params [String] :catalog
    #   <p>The catalog identifier for the partner account.</p>
    # @option params [String] :identifier
    #   <p>The unique identifier of the partner account.</p>
    # @option params [String] :visibility
    #   <p>The visibility setting to apply to the partner profile.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     identifier: "PartnerIdentifier", # required
    #     visibility: "PRIVATE" # One of: ["PRIVATE", "PUBLIC"], # required
    #   }
    #   options = {}
    #   response = client.put_profile_visibility(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     catalog: "Catalog", # required
    #     arn: "PartnerArn", # required
    #     id: "PartnerId", # required
    #     visibility: "PRIVATE" # One of: ["PRIVATE", "PUBLIC"], # required
    #     profile_id: "PartnerProfileId", # required
    #   }
    # @return [Types::PutProfileVisibilityResponse]
    def put_profile_visibility(params = {}, options = {})
      request = build_request(:put_profile_visibility, params)
      request.send_request(options)
    end

    # <p>Rejects a connection invitation from another partner, declining the partnership request.</p>
    # @param [Hash, Types::RejectConnectionInvitationRequest] params
    # @option params [String] :catalog
    #   <p>The catalog identifier where the connection invitation exists.</p>
    # @option params [String] :identifier
    #   <p>The unique identifier of the connection invitation to reject.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    # @option params [String] :reason
    #   <p>The reason for rejecting the connection invitation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     identifier: "ConnectionInvitationId", # required
    #     client_token: "ClientToken", # required
    #     reason: "String"
    #   }
    #   options = {}
    #   response = client.reject_connection_invitation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     catalog: "Catalog", # required
    #     id: "ConnectionInvitationId", # required
    #     arn: "ConnectionInvitationArn", # required
    #     connection_id: "ConnectionId",
    #     connection_type: "OPPORTUNITY_COLLABORATION" # One of: ["OPPORTUNITY_COLLABORATION", "SUBSIDIARY"], # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     expires_at: Time.now,
    #     other_participant_identifier: "ParticipantIdentifier", # required
    #     participant_type: "SENDER" # One of: ["SENDER", "RECEIVER"], # required
    #     status: "PENDING" # One of: ["PENDING", "ACCEPTED", "REJECTED", "CANCELED", "EXPIRED"], # required
    #     invitation_message: "UnicodeStringIncludingNewLine", # required
    #     inviter_email: "Email", # required
    #     inviter_name: "SensitiveUnicodeString", # required
    #   }
    # @return [Types::RejectConnectionInvitationResponse]
    def reject_connection_invitation(params = {}, options = {})
      request = build_request(:reject_connection_invitation, params)
      request.send_request(options)
    end

    # <p>Sends an email verification code to the specified email address for account verification purposes.</p>
    # @param [Hash, Types::SendEmailVerificationCodeRequest] params
    # @option params [String] :catalog
    #   <p>The catalog identifier for the partner account.</p>
    # @option params [String] :email
    #   <p>The email address to send the verification code to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     email: "Email", # required
    #   }
    #   options = {}
    #   response = client.send_email_verification_code(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::SendEmailVerificationCodeResponse]
    def send_email_verification_code(params = {}, options = {})
      request = build_request(:send_email_verification_code, params)
      request.send_request(options)
    end

    # <p>Initiates a profile update task to modify partner profile information asynchronously.</p>
    # @param [Hash, Types::StartProfileUpdateTaskRequest] params
    # @option params [String] :catalog
    #   <p>The catalog identifier for the partner account.</p>
    # @option params [String] :identifier
    #   <p>The unique identifier of the partner account.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    # @option params [Types::TaskDetails] :task_details
    #   <p>The details of the profile updates to be performed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     identifier: "PartnerIdentifier", # required
    #     client_token: "ClientToken",
    #     task_details: { # required
    #       display_name: "UnicodeString", # required
    #       description: "UnicodeString", # required
    #       website_url: "Url", # required
    #       logo_url: "Url", # required
    #       primary_solution_type: "SOFTWARE_PRODUCTS" # One of: ["SOFTWARE_PRODUCTS", "CONSULTING_SERVICES", "PROFESSIONAL_SERVICES", "MANAGED_SERVICES", "HARDWARE_PRODUCTS", "COMMUNICATION_SERVICES", "VALUE_ADDED_RESALE_AWS_SERVICES", "TRAINING_SERVICES"], # required
    #       industry_segments: ["AGRICULTURE_MINING" # One of: ["AGRICULTURE_MINING", "BIOTECHNOLOGY", "BUSINESS_CONSUMER_SERVICES", "BUSINESS_SERV", "COMMUNICATIONS", "COMPUTER_HARDWARE", "COMPUTERS_ELECTRONICS", "COMPUTER_SOFTWARE", "CONSUMER_GOODS", "CONSUMER_RELATED", "EDUCATION", "ENERGY_UTILITIES", "FINANCIAL_SERVICES", "GAMING", "GOVERNMENT", "GOVERNMENT_EDUCATION_PUBLIC_SERVICES", "HEALTHCARE", "HEALTHCARE_PHARMACEUTICALS_BIOTECH", "INDUSTRIAL_ENERGY", "INTERNET_SPECIFIC", "LIFE_SCIENCES", "MANUFACTURING", "MEDIA_ENTERTAINMENT_LEISURE", "MEDIA_ENTERTAINMENT", "MEDICAL_HEALTH", "NON_PROFIT_ORGANIZATION", "OTHER", "PROFESSIONAL_SERVICES", "REAL_ESTATE_CONSTRUCTION", "RETAIL", "RETAIL_WHOLESALE_DISTRIBUTION", "SEMICONDUCTOR_ELECTR", "SOFTWARE_INTERNET", "TELECOMMUNICATIONS", "TRANSPORTATION_LOGISTICS", "TRAVEL_HOSPITALITY", "WHOLESALE_DISTRIBUTION"]], # required
    #       translation_source_locale: "Locale", # required
    #       localized_contents: [
    #         {
    #           display_name: "UnicodeString", # required
    #           description: "UnicodeString", # required
    #           website_url: "Url", # required
    #           logo_url: "Url", # required
    #           locale: "Locale", # required
    #         }
    #       ],
    #       headquarters: {
    #         country_code: "CountryCode", # required
    #         subdivision_code: "SubdivisionCode", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.start_profile_update_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     catalog: "Catalog", # required
    #     arn: "PartnerArn", # required
    #     id: "PartnerId", # required
    #     task_id: "ProfileTaskId", # required
    #     task_details: { # required
    #       display_name: "UnicodeString", # required
    #       description: "UnicodeString", # required
    #       website_url: "Url", # required
    #       logo_url: "Url", # required
    #       primary_solution_type: "SOFTWARE_PRODUCTS" # One of: ["SOFTWARE_PRODUCTS", "CONSULTING_SERVICES", "PROFESSIONAL_SERVICES", "MANAGED_SERVICES", "HARDWARE_PRODUCTS", "COMMUNICATION_SERVICES", "VALUE_ADDED_RESALE_AWS_SERVICES", "TRAINING_SERVICES"], # required
    #       industry_segments: ["AGRICULTURE_MINING" # One of: ["AGRICULTURE_MINING", "BIOTECHNOLOGY", "BUSINESS_CONSUMER_SERVICES", "BUSINESS_SERV", "COMMUNICATIONS", "COMPUTER_HARDWARE", "COMPUTERS_ELECTRONICS", "COMPUTER_SOFTWARE", "CONSUMER_GOODS", "CONSUMER_RELATED", "EDUCATION", "ENERGY_UTILITIES", "FINANCIAL_SERVICES", "GAMING", "GOVERNMENT", "GOVERNMENT_EDUCATION_PUBLIC_SERVICES", "HEALTHCARE", "HEALTHCARE_PHARMACEUTICALS_BIOTECH", "INDUSTRIAL_ENERGY", "INTERNET_SPECIFIC", "LIFE_SCIENCES", "MANUFACTURING", "MEDIA_ENTERTAINMENT_LEISURE", "MEDIA_ENTERTAINMENT", "MEDICAL_HEALTH", "NON_PROFIT_ORGANIZATION", "OTHER", "PROFESSIONAL_SERVICES", "REAL_ESTATE_CONSTRUCTION", "RETAIL", "RETAIL_WHOLESALE_DISTRIBUTION", "SEMICONDUCTOR_ELECTR", "SOFTWARE_INTERNET", "TELECOMMUNICATIONS", "TRANSPORTATION_LOGISTICS", "TRAVEL_HOSPITALITY", "WHOLESALE_DISTRIBUTION"]], # required
    #       translation_source_locale: "Locale", # required
    #       localized_contents: [
    #         {
    #           display_name: "UnicodeString", # required
    #           description: "UnicodeString", # required
    #           website_url: "Url", # required
    #           logo_url: "Url", # required
    #           locale: "Locale", # required
    #         }
    #       ],
    #       headquarters: {
    #         country_code: "CountryCode", # required
    #         subdivision_code: "SubdivisionCode", # required
    #       }
    #     },
    #     started_at: Time.now, # required
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "CANCELED", "SUCCEEDED", "FAILED"], # required
    #     ended_at: Time.now,
    #     error_detail_list: [
    #       {
    #         locale: "String", # required
    #         message: "String", # required
    #         reason: "INVALID_CONTENT" # One of: ["INVALID_CONTENT", "DUPLICATE_PROFILE", "INVALID_LOGO", "INVALID_LOGO_URL", "INVALID_LOGO_FILE", "INVALID_LOGO_SIZE", "INVALID_WEBSITE_URL"], # required
    #       }
    #     ]
    #   }
    # @return [Types::StartProfileUpdateTaskResponse]
    def start_profile_update_task(params = {}, options = {})
      request = build_request(:start_profile_update_task, params)
      request.send_request(options)
    end

    # <p>Initiates an asynchronous task to associate your partner qualifications with a primary account. You must be a subsidiary of the primary account with an active subsidiary connection. Use <code>GetQualificationsAssociationTask</code> to monitor task progress.</p>
    # @param [Hash, Types::StartQualificationsAssociationTaskRequest] params
    # @option params [String] :catalog
    #   <p>The catalog in which to perform the qualifications association. Valid values: <code>AWS</code>, <code>Sandbox</code>.</p>
    # @option params [String] :identifier
    #   <p>Your partner identifier. You can provide either a partner ID (for example, <code>partner-abc123</code>) or a partner ARN. You must own this identifier.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    # @option params [Types::QualificationsAssociationPartner] :primary_partner
    #   <p>The primary (acquiring) partner's profile and account identifier to associate qualifications with. You must provide at least one of <code>ProfileId</code> or <code>AccountId</code>. You cannot specify yourself as the primary partner.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     identifier: "PartnerIdentifier", # required
    #     client_token: "ClientToken",
    #     primary_partner: { # required
    #       profile_id: "PartnerProfileId",
    #       account_id: "AwsAccountId"
    #     }
    #   }
    #   options = {}
    #   response = client.start_qualifications_association_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     catalog: "Catalog", # required
    #     arn: "PartnerArn", # required
    #     id: "PartnerId", # required
    #     task_id: "QualificationsAssociationTaskId", # required
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCEEDED"], # required
    #     primary_partner: { # required
    #       profile_id: "PartnerProfileId",
    #       account_id: "AwsAccountId"
    #     },
    #     started_at: Time.now, # required
    #   }
    # @return [Types::StartQualificationsAssociationTaskResponse]
    def start_qualifications_association_task(params = {}, options = {})
      request = build_request(:start_qualifications_association_task, params)
      request.send_request(options)
    end

    # <p>Initiates an asynchronous task to disassociate your partner qualifications from a primary account. You must currently be associated and cannot disassociate if you are the primary partner. Use <code>GetQualificationsDisassociationTask</code> to monitor task progress.</p>
    # @param [Hash, Types::StartQualificationsDisassociationTaskRequest] params
    # @option params [String] :catalog
    #   <p>The catalog in which to perform the qualifications disassociation. Valid values: <code>AWS</code>, <code>Sandbox</code>.</p>
    # @option params [String] :identifier
    #   <p>Your partner identifier. You can provide either a partner ID (for example, <code>partner-abc123</code>) or a partner ARN. You must own this identifier.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    # @option params [Types::QualificationsAssociationPartner] :associated_partner
    #   <p>The primary partner's profile and account identifier that you are currently associated with and will disassociate from. You must provide at least one of <code>ProfileId</code> or <code>AccountId</code>. The specified partner must match your current primary association.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     identifier: "PartnerIdentifier", # required
    #     client_token: "ClientToken",
    #     associated_partner: { # required
    #       profile_id: "PartnerProfileId",
    #       account_id: "AwsAccountId"
    #     }
    #   }
    #   options = {}
    #   response = client.start_qualifications_disassociation_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     catalog: "Catalog", # required
    #     arn: "PartnerArn", # required
    #     id: "PartnerId", # required
    #     task_id: "QualificationsDisassociationTaskId", # required
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCEEDED"], # required
    #     associated_partner: { # required
    #       profile_id: "PartnerProfileId",
    #       account_id: "AwsAccountId"
    #     },
    #     started_at: Time.now, # required
    #   }
    # @return [Types::StartQualificationsDisassociationTaskResponse]
    def start_qualifications_disassociation_task(params = {}, options = {})
      request = build_request(:start_qualifications_disassociation_task, params)
      request.send_request(options)
    end

    # <p>Initiates a new verification process for a partner account. This operation begins the verification workflow for either business registration or individual registrant identity verification as required by AWS Partner Central.</p>
    # @param [Hash, Types::StartVerificationRequest] params
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. This prevents duplicate verification processes from being started accidentally.</p>
    # @option params [Types::VerificationDetails] :verification_details
    #   <p>The specific details required for the verification process, including business information for business verification or personal information for registrant verification.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     verification_details: {
    #       # One of:
    #       business_verification_details: {
    #         legal_name: "LegalName", # required
    #         registration_id: "RegistrationId", # required
    #         country_code: "CountryCode", # required
    #         jurisdiction_of_incorporation: "JurisdictionCode"
    #       },
    #       registrant_verification_details: {
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.start_verification(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     verification_type: "BUSINESS_VERIFICATION" # One of: ["BUSINESS_VERIFICATION", "REGISTRANT_VERIFICATION"], # required
    #     verification_status: "PENDING_CUSTOMER_ACTION" # One of: ["PENDING_CUSTOMER_ACTION", "IN_PROGRESS", "FAILED", "SUCCEEDED", "REJECTED"], # required
    #     verification_status_reason: "VerificationStatusReason",
    #     verification_response_details: { # required
    #       # One of:
    #       business_verification_response: {
    #         business_verification_details: { # required
    #           legal_name: "LegalName", # required
    #           registration_id: "RegistrationId", # required
    #           country_code: "CountryCode", # required
    #           jurisdiction_of_incorporation: "JurisdictionCode"
    #         },
    #         completion_url: "CompletionUrl",
    #         completion_url_expires_at: Time.now
    #       },
    #       registrant_verification_response: {
    #         completion_url: "CompletionUrl", # required
    #         completion_url_expires_at: Time.now, # required
    #       }
    #     },
    #     started_at: Time.now, # required
    #     completed_at: Time.now
    #   }
    # @return [Types::StartVerificationResponse]
    def start_verification(params = {}, options = {})
      request = build_request(:start_verification, params)
      request.send_request(options)
    end

    # <p>Adds or updates tags for a specified AWS Partner Central Account resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to tag.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags to add or update for the specified resource.</p>
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

    # <p>Removes specified tags from an AWS Partner Central Account resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to remove tags from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tag keys to remove from the specified resource.</p>
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

    # <p>Updates the connection preferences for a partner account, modifying access settings and exclusions.</p>
    # @param [Hash, Types::UpdateConnectionPreferencesRequest] params
    # @option params [String] :catalog
    #   <p>The catalog identifier for the partner account.</p>
    # @option params [Integer] :revision
    #   <p>The revision number of the connection preferences for optimistic locking.</p>
    # @option params [String] :access_type
    #   <p>The access type setting for connections (e.g., open, restricted, invitation-only).</p>
    # @option params [Array<String>] :excluded_participant_identifiers
    #   <p>The updated list of participant identifiers to exclude from connections.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     revision: 1, # required
    #     access_type: "ALLOW_ALL" # One of: ["ALLOW_ALL", "DENY_ALL", "ALLOW_BY_DEFAULT_DENY_SOME"], # required
    #     excluded_participant_identifiers: ["ParticipantIdentifier"]
    #   }
    #   options = {}
    #   response = client.update_connection_preferences(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     catalog: "Catalog", # required
    #     arn: "ConnectionPreferencesArn", # required
    #     access_type: "ALLOW_ALL" # One of: ["ALLOW_ALL", "DENY_ALL", "ALLOW_BY_DEFAULT_DENY_SOME"], # required
    #     excluded_participant_ids: ["ParticipantIdentifier"],
    #     updated_at: Time.now, # required
    #     revision: 1, # required
    #   }
    # @return [Types::UpdateConnectionPreferencesResponse]
    def update_connection_preferences(params = {}, options = {})
      request = build_request(:update_connection_preferences, params)
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
      context[:gem_name] = 'aws-sdk-partnercentralaccount'
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
