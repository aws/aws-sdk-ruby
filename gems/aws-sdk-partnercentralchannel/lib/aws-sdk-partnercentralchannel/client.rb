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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:partnercentralchannel)

module Aws::PartnerCentralChannel
  # An API client for Aws::PartnerCentralChannel.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::PartnerCentralChannel
    @identifier = :partnercentralchannel

    add_plugin(::Aws::PartnerCentralChannel::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::PartnerCentralChannel::EndpointProvider)
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

    # <p>Accepts a pending channel handshake request from another AWS account.</p>
    # @param [Hash, Types::AcceptChannelHandshakeRequest] params
    # @option params [String] :catalog
    #   <p>The catalog identifier for the handshake request.</p>
    # @option params [String] :identifier
    #   <p>The unique identifier of the channel handshake to accept.</p>
    # @example Example for AcceptChannelHandshake
    #   # Example operation for accept_channel_handshake
    #   params = {
    #     catalog: "AWS",
    #     identifier: "ch-4fj3bd2o3vb91"
    #   }
    #   options = {}
    #   response = client.accept_channel_handshake(params, options)
    #   response.to_h #=>
    #   {
    #     channel_handshake_detail: {
    #       id: "ch-4fj3bd2o3vb91",
    #       arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/channel-handshake/ch-4fj3bd2o3vb91",
    #       status: ACCEPTED
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     identifier: "ChannelHandshakeIdentifier", # required
    #   }
    #   options = {}
    #   response = client.accept_channel_handshake(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_handshake_detail: {
    #       id: "ChannelHandshakeId",
    #       arn: "Arn",
    #       status: "PENDING" # One of: ["PENDING", "ACCEPTED", "REJECTED", "CANCELED", "EXPIRED"]
    #     }
    #   }
    # @return [Types::AcceptChannelHandshakeResponse]
    def accept_channel_handshake(params = {}, options = {})
      request = build_request(:accept_channel_handshake, params)
      request.send_request(options)
    end

    # <p>Cancels a pending channel handshake request.</p>
    # @param [Hash, Types::CancelChannelHandshakeRequest] params
    # @option params [String] :catalog
    #   <p>The catalog identifier for the handshake request.</p>
    # @option params [String] :identifier
    #   <p>The unique identifier of the channel handshake to cancel.</p>
    # @example Example for CancelChannelHandshake
    #   # Example operation for cancel_channel_handshake
    #   params = {
    #     catalog: "AWS",
    #     identifier: "ch-4fj3bd2o3vb91"
    #   }
    #   options = {}
    #   response = client.cancel_channel_handshake(params, options)
    #   response.to_h #=>
    #   {
    #     channel_handshake_detail: {
    #       id: "ch-4fj3bd2o3vb91",
    #       arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/channel-handshake/ch-4fj3bd2o3vb91",
    #       status: CANCELED
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     identifier: "ChannelHandshakeIdentifier", # required
    #   }
    #   options = {}
    #   response = client.cancel_channel_handshake(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_handshake_detail: {
    #       id: "ChannelHandshakeId",
    #       arn: "Arn",
    #       status: "PENDING" # One of: ["PENDING", "ACCEPTED", "REJECTED", "CANCELED", "EXPIRED"]
    #     }
    #   }
    # @return [Types::CancelChannelHandshakeResponse]
    def cancel_channel_handshake(params = {}, options = {})
      request = build_request(:cancel_channel_handshake, params)
      request.send_request(options)
    end

    # <p>Creates a new channel handshake request to establish a partnership with another AWS account.</p>
    # @param [Hash, Types::CreateChannelHandshakeRequest] params
    # @option params [String] :handshake_type
    #   <p>The type of handshake to create (e.g., start service period, revoke service period).</p>
    # @option params [String] :catalog
    #   <p>The catalog identifier for the handshake request.</p>
    # @option params [String] :associated_resource_identifier
    #   <p>The identifier of the resource associated with this handshake.</p>
    # @option params [Types::ChannelHandshakePayload] :payload
    #   <p>The payload containing specific details for the handshake type.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Key-value pairs to associate with the channel handshake.</p>
    # @example Example for CreateChannelHandshake - START_SERVICE_PERIOD with Minimum Notice Period
    #   # Example operation for create_channel_handshake
    #   params = {
    #     handshake_type: START_SERVICE_PERIOD,
    #     catalog: "AWS",
    #     associated_resource_identifier: "rs-abc123def456g",
    #     payload: {
    #     "startServicePeriodPayload" => {
    #       "programManagementAccountIdentifier" => pma-abcdef123456g,
    #       "servicePeriodType" => MINIMUM_NOTICE_PERIOD,
    #       "minimumNoticeDays" => 14,
    #       "note" => Optional Note
    #     }
    #   },
    #     client_token: "clientToken"
    #   }
    #   options = {}
    #   response = client.create_channel_handshake(params, options)
    #   response.to_h #=>
    #   {
    #     channel_handshake_detail: {
    #       id: "ch-4fj3bd2o3vb91",
    #       arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/channel-handshake/ch-4fj3bd2o3vb91"
    #     }
    #   }
    # @example Example for CreateChannelHandshake - START_SERVICE_PERIOD with Fixed Commitment Period
    #   # Example operation for create_channel_handshake
    #   params = {
    #     handshake_type: START_SERVICE_PERIOD,
    #     catalog: "AWS",
    #     associated_resource_identifier: "rs-abc123def456g",
    #     payload: {
    #     "startServicePeriodPayload" => {
    #       "programManagementAccountIdentifier" => pma-abcdef123456g,
    #       "servicePeriodType" => FIXED_COMMITMENT_PERIOD,
    #       "endDate" => 2026-07-01T00:00:00Z,
    #       "note" => Optional Note
    #     }
    #   },
    #     client_token: "clientToken"
    #   }
    #   options = {}
    #   response = client.create_channel_handshake(params, options)
    #   response.to_h #=>
    #   {
    #     channel_handshake_detail: {
    #       id: "ch-4fj3bd2o3vb91",
    #       arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/channel-handshake/ch-4fj3bd2o3vb91"
    #     }
    #   }
    # @example Example for CreateChannelHandshake - REVOKE_SERVICE_PERIOD
    #   # Example operation for create_channel_handshake
    #   params = {
    #     handshake_type: REVOKE_SERVICE_PERIOD,
    #     catalog: "AWS",
    #     associated_resource_identifier: "rs-abc123def456g",
    #     payload: {
    #     "revokeServicePeriodPayload" => {
    #       "programManagementAccountIdentifier" => pma-abcdef123456g,
    #       "note" => Optional Note
    #     }
    #   },
    #     client_token: "clientToken"
    #   }
    #   options = {}
    #   response = client.create_channel_handshake(params, options)
    #   response.to_h #=>
    #   {
    #     channel_handshake_detail: {
    #       id: "ch-4fj3bd2o3vb91",
    #       arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/channel-handshake/ch-4fj3bd2o3vb91"
    #     }
    #   }
    # @example Example for CreateChannelHandshake - PROGRAM_MANAGEMENT_ACCOUNT
    #   # Example operation for create_channel_handshake
    #   params = {
    #     handshake_type: PROGRAM_MANAGEMENT_ACCOUNT,
    #     catalog: "AWS",
    #     associated_resource_identifier: "pma-123abc456def7",
    #     client_token: "clientToken"
    #   }
    #   options = {}
    #   response = client.create_channel_handshake(params, options)
    #   response.to_h #=>
    #   {
    #     channel_handshake_detail: {
    #       id: "ch-4fj3bd2o3vb91",
    #       arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/channel-handshake/ch-4fj3bd2o3vb91"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     handshake_type: "START_SERVICE_PERIOD" # One of: ["START_SERVICE_PERIOD", "REVOKE_SERVICE_PERIOD", "PROGRAM_MANAGEMENT_ACCOUNT"], # required
    #     catalog: "Catalog", # required
    #     associated_resource_identifier: "AssociatedResourceIdentifier", # required
    #     payload: {
    #       # One of:
    #       start_service_period_payload: {
    #         program_management_account_identifier: "ProgramManagementAccountIdentifier", # required
    #         note: "Note",
    #         service_period_type: "MINIMUM_NOTICE_PERIOD" # One of: ["MINIMUM_NOTICE_PERIOD", "FIXED_COMMITMENT_PERIOD"], # required
    #         minimum_notice_days: "MinimumNoticeDays",
    #         end_date: Time.now
    #       },
    #       revoke_service_period_payload: {
    #         program_management_account_identifier: "ProgramManagementAccountIdentifier", # required
    #         note: "Note"
    #       }
    #     },
    #     client_token: "ClientToken",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_channel_handshake(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_handshake_detail: {
    #       id: "ChannelHandshakeId",
    #       arn: "Arn"
    #     }
    #   }
    # @return [Types::CreateChannelHandshakeResponse]
    def create_channel_handshake(params = {}, options = {})
      request = build_request(:create_channel_handshake, params)
      request.send_request(options)
    end

    # <p>Creates a new program management account for managing partner relationships.</p>
    # @param [Hash, Types::CreateProgramManagementAccountRequest] params
    # @option params [String] :catalog
    #   <p>The catalog identifier for the program management account.</p>
    # @option params [String] :program
    #   <p>The program type for the management account.</p>
    # @option params [String] :display_name
    #   <p>A human-readable name for the program management account.</p>
    # @option params [String] :account_id
    #   <p>The AWS account ID to associate with the program management account.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Key-value pairs to associate with the program management account.</p>
    # @example Example for CreateProgramManagementAccount
    #   # Example operation for create_program_management_account
    #   params = {
    #     catalog: "AWS",
    #     program: SOLUTION_PROVIDER,
    #     display_name: "TestDisplayName",
    #     account_id: "111122223333",
    #     client_token: "clientToken"
    #   }
    #   options = {}
    #   response = client.create_program_management_account(params, options)
    #   response.to_h #=>
    #   {
    #     program_management_account_detail: {
    #       id: "pma-u8ic702rtzng8",
    #       arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/program-management-account/pma-u8ic702rtzng8"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     program: "SOLUTION_PROVIDER" # One of: ["SOLUTION_PROVIDER", "DISTRIBUTION", "DISTRIBUTION_SELLER"], # required
    #     display_name: "ProgramManagementAccountDisplayName", # required
    #     account_id: "AccountId", # required
    #     client_token: "ClientToken",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_program_management_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     program_management_account_detail: {
    #       id: "ProgramManagementAccountId",
    #       arn: "Arn"
    #     }
    #   }
    # @return [Types::CreateProgramManagementAccountResponse]
    def create_program_management_account(params = {}, options = {})
      request = build_request(:create_program_management_account, params)
      request.send_request(options)
    end

    # <p>Creates a new partner relationship between accounts.</p>
    # @param [Hash, Types::CreateRelationshipRequest] params
    # @option params [String] :catalog
    #   <p>The catalog identifier for the relationship.</p>
    # @option params [String] :association_type
    #   <p>The type of association for the relationship (e.g., reseller, distributor).</p>
    # @option params [String] :program_management_account_identifier
    #   <p>The identifier of the program management account for this relationship.</p>
    # @option params [String] :associated_account_id
    #   <p>The AWS account ID to associate in this relationship.</p>
    # @option params [String] :display_name
    #   <p>A human-readable name for the relationship.</p>
    # @option params [String] :resale_account_model
    #   <p>The resale account model for the relationship.</p>
    # @option params [String] :sector
    #   <p>The business sector for the relationship.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Key-value pairs to associate with the relationship.</p>
    # @option params [Types::SupportPlan] :requested_support_plan
    #   <p>The support plan requested for this relationship.</p>
    # @example Example for CreateRelationship
    #   # Example operation for create_relationship
    #   params = {
    #     catalog: "AWS",
    #     association_type: DOWNSTREAM_SELLER,
    #     program_management_account_identifier: "pma-u8ic702rtzng8",
    #     associated_account_id: "987654321012",
    #     display_name: "TestDisplayName",
    #     resale_account_model: END_CUSTOMER,
    #     sector: COMMERCIAL,
    #     client_token: "clientToken"
    #   }
    #   options = {}
    #   response = client.create_relationship(params, options)
    #   response.to_h #=>
    #   {
    #     relationship_detail: {
    #       arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/program-management-account/pma-u8ic702rtzng8/relationship/rs-l9o4fj3b5zb91",
    #       id: "rs-l9o4fj3b5zb91"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     association_type: "DOWNSTREAM_SELLER" # One of: ["DOWNSTREAM_SELLER", "END_CUSTOMER", "INTERNAL"], # required
    #     program_management_account_identifier: "ProgramManagementAccountIdentifier", # required
    #     associated_account_id: "AccountId", # required
    #     display_name: "RelationshipDisplayName", # required
    #     resale_account_model: "DISTRIBUTOR" # One of: ["DISTRIBUTOR", "END_CUSTOMER", "SOLUTION_PROVIDER"],
    #     sector: "COMMERCIAL" # One of: ["COMMERCIAL", "GOVERNMENT", "GOVERNMENT_EXCEPTION"], # required
    #     client_token: "ClientToken",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     requested_support_plan: {
    #       # One of:
    #       resold_enterprise: {
    #         coverage: "ENTIRE_ORGANIZATION" # One of: ["ENTIRE_ORGANIZATION", "MANAGEMENT_ACCOUNT_ONLY"], # required
    #         tam_location: "String", # required
    #         charge_account_id: "AccountId"
    #       },
    #       partner_led_support: {
    #         coverage: "ENTIRE_ORGANIZATION" # One of: ["ENTIRE_ORGANIZATION", "MANAGEMENT_ACCOUNT_ONLY"], # required
    #         provider: "DISTRIBUTOR" # One of: ["DISTRIBUTOR", "DISTRIBUTION_SELLER"],
    #         tam_location: "String", # required
    #       },
    #       resold_unified_operations: {
    #         coverage: "ENTIRE_ORGANIZATION" # One of: ["ENTIRE_ORGANIZATION", "MANAGEMENT_ACCOUNT_ONLY"], # required
    #         tam_location: "String", # required
    #         charge_account_id: "AccountId"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_relationship(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     relationship_detail: {
    #       arn: "Arn",
    #       id: "RelationshipId"
    #     }
    #   }
    # @return [Types::CreateRelationshipResponse]
    def create_relationship(params = {}, options = {})
      request = build_request(:create_relationship, params)
      request.send_request(options)
    end

    # <p>Deletes a program management account.</p>
    # @param [Hash, Types::DeleteProgramManagementAccountRequest] params
    # @option params [String] :catalog
    #   <p>The catalog identifier for the program management account.</p>
    # @option params [String] :identifier
    #   <p>The unique identifier of the program management account to delete.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    # @example Example for DeleteProgramManagementAccount
    #   # Example operation for delete_program_management_account
    #   params = {
    #     catalog: "AWS",
    #     identifier: "pma-u8ic702rtzng8",
    #     client_token: "clientToken"
    #   }
    #   options = {}
    #   response = client.delete_program_management_account(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     identifier: "ProgramManagementAccountIdentifier", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_program_management_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteProgramManagementAccountResponse]
    def delete_program_management_account(params = {}, options = {})
      request = build_request(:delete_program_management_account, params)
      request.send_request(options)
    end

    # <p>Deletes a partner relationship.</p>
    # @param [Hash, Types::DeleteRelationshipRequest] params
    # @option params [String] :catalog
    #   <p>The catalog identifier for the relationship.</p>
    # @option params [String] :identifier
    #   <p>The unique identifier of the relationship to delete.</p>
    # @option params [String] :program_management_account_identifier
    #   <p>The identifier of the program management account associated with the relationship.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    # @example Example for DeleteRelationship
    #   # Example operation for delete_relationship
    #   params = {
    #     catalog: "AWS",
    #     program_management_account_identifier: "pma-u8ic702rtzng8",
    #     identifier: "rs-l9o4fj3b5zb91",
    #     client_token: "clientToken"
    #   }
    #   options = {}
    #   response = client.delete_relationship(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     identifier: "RelationshipIdentifier", # required
    #     program_management_account_identifier: "ProgramManagementAccountIdentifier", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_relationship(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteRelationshipResponse]
    def delete_relationship(params = {}, options = {})
      request = build_request(:delete_relationship, params)
      request.send_request(options)
    end

    # <p>Retrieves details of a specific partner relationship.</p>
    # @param [Hash, Types::GetRelationshipRequest] params
    # @option params [String] :catalog
    #   <p>The catalog identifier for the relationship.</p>
    # @option params [String] :program_management_account_identifier
    #   <p>The identifier of the program management account associated with the relationship.</p>
    # @option params [String] :identifier
    #   <p>The unique identifier of the relationship to retrieve.</p>
    # @example Example for GetRelationship
    #   # Example operation for get_relationship
    #   params = {
    #     catalog: "AWS",
    #     program_management_account_identifier: "pma-u8ic702rtzng8",
    #     identifier: "rs-l9o4fj3b5zb91"
    #   }
    #   options = {}
    #   response = client.get_relationship(params, options)
    #   response.to_h #=>
    #   {
    #     relationship_detail: {
    #       arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/program-management-account/pma-u8ic702rtzng8/relationship/rs-l9o4fj3b5zb91",
    #       id: "rs-l9o4fj3b5zb91",
    #       revision: "3",
    #       association_type: DOWNSTREAM_SELLER,
    #       program_management_account_id: "pma-u8ic702rtzng8",
    #       associated_account_id: "987654321012",
    #       display_name: "TestDisplayName",
    #       resale_account_model: END_CUSTOMER,
    #       sector: COMMERCIAL,
    #       created_at: Time.parse("2024-04-29T16:18:16Z"),
    #       updated_at: Time.parse("2024-05-02T16:18:16Z")
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     program_management_account_identifier: "ProgramManagementAccountIdentifier", # required
    #     identifier: "RelationshipIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_relationship(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     relationship_detail: {
    #       arn: "Arn",
    #       id: "RelationshipId",
    #       revision: "Revision",
    #       catalog: "Catalog",
    #       association_type: "DOWNSTREAM_SELLER" # One of: ["DOWNSTREAM_SELLER", "END_CUSTOMER", "INTERNAL"],
    #       program_management_account_id: "ProgramManagementAccountId",
    #       associated_account_id: "AccountId",
    #       display_name: "RelationshipDisplayName",
    #       resale_account_model: "DISTRIBUTOR" # One of: ["DISTRIBUTOR", "END_CUSTOMER", "SOLUTION_PROVIDER"],
    #       sector: "COMMERCIAL" # One of: ["COMMERCIAL", "GOVERNMENT", "GOVERNMENT_EXCEPTION"],
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       start_date: Time.now
    #     }
    #   }
    # @return [Types::GetRelationshipResponse]
    def get_relationship(params = {}, options = {})
      request = build_request(:get_relationship, params)
      request.send_request(options)
    end

    # <p>Lists channel handshakes based on specified criteria.</p>
    # @param [Hash, Types::ListChannelHandshakesRequest] params
    # @option params [String] :handshake_type
    #   <p>Filter results by handshake type.</p>
    # @option params [String] :catalog
    #   <p>The catalog identifier to filter handshakes.</p>
    # @option params [String] :participant_type
    #   <p>Filter by participant type (sender or receiver).</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @option params [Array<String>] :statuses
    #   <p>Filter results by handshake status.</p>
    # @option params [Array<String>] :associated_resource_identifiers
    #   <p>Filter by associated resource identifiers.</p>
    # @option params [Types::ListChannelHandshakesTypeFilters] :handshake_type_filters
    #   <p>Type-specific filters for handshakes.</p>
    # @option params [Types::ListChannelHandshakesTypeSort] :handshake_type_sort
    #   <p>Type-specific sorting options for handshakes.</p>
    # @option params [String] :next_token
    #   <p>Token for retrieving the next page of results.</p>
    # @example Example for ListChannelHandshakes - START_SERVICE_PERIOD
    #   # Example operation for list_channel_handshakes
    #   params = {
    #     handshake_type: START_SERVICE_PERIOD,
    #     catalog: "AWS",
    #     participant_type: SENDER,
    #     statuses: [
    #       ACCEPTED
    #     ],
    #     associated_resource_identifiers: [
    #       "rs-123abc456def7"
    #     ],
    #     handshake_type_filters: {
    #     "startServicePeriodTypeFilters" => {
    #       "servicePeriodTypes" => [FIXED_COMMITMENT_PERIOD]
    #     }
    #   },
    #     handshake_type_sort: {
    #     "startServicePeriodTypeSort" => {
    #       "sortBy" => UpdatedAt,
    #       "sortOrder" => Descending
    #     }
    #   }
    #   }
    #   options = {}
    #   response = client.list_channel_handshakes(params, options)
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         id: "ch-4fj3bd2o3vb91",
    #         arn: "arn:aws:partnercentral:us-east-1:111122223333:catalog/AWS/channel-handshake/ch-4fj3bd2o3vb91",
    #         catalog: "AWS",
    #         handshake_type: START_SERVICE_PERIOD,
    #         owner_account_id: "111122223333",
    #         sender_account_id: "111122224444",
    #         receiver_account_id: "333322221111",
    #         associated_resource_id: "rs-u8ic702rtfew1",
    #         detail: {
    #     "startServicePeriodHandshakeDetail" => {
    #       "servicePeriodType" => MINIMUM_NOTICE_PERIOD,
    #       "minimumNoticeDays" => 14,
    #       "note" => Optional_Note
    #     }
    #   },
    #         created_at: Time.parse("2025-04-29T16:18:16.000Z"),
    #         updated_at: Time.parse("2025-05-02T16:18:16.000Z"),
    #         status: PENDING
    #       },
    #       {
    #         id: "ch-4fj3bd2o3vb92",
    #         arn: "arn:aws:partnercentral:us-east-1:111122223333:catalog/AWS/channel-handshake/ch-4fj3bd2o3vb92",
    #         catalog: "AWS",
    #         handshake_type: START_SERVICE_PERIOD,
    #         owner_account_id: "111122223333",
    #         sender_account_id: "111122224444",
    #         receiver_account_id: "333322221111",
    #         associated_resource_id: "rs-u8ic702rtfew1",
    #         detail: {
    #     "startServicePeriodHandshakeDetail" => {
    #       "servicePeriodType" => FIXED_COMMITMENT_PERIOD,
    #       "startDate" => 2025-02-02T00:00:00.000Z,
    #       "endDate" => 2027-03-31T00:00:00.000Z,
    #       "note" => Optional_Note
    #     }
    #   },
    #         created_at: Time.parse("2025-02-28T16:18:16.000Z"),
    #         updated_at: Time.parse("2025-03-02T16:18:16.000Z"),
    #         status: PENDING
    #       }
    #     ],
    #     next_token: "nextToken"
    #   }
    # @example Example for ListChannelHandshakes - REVOKE_SERVICE_PERIOD
    #   # Example operation for list_channel_handshakes
    #   params = {
    #     handshake_type: REVOKE_SERVICE_PERIOD,
    #     catalog: "AWS",
    #     participant_type: SENDER,
    #     statuses: [
    #       ACCEPTED
    #     ],
    #     associated_resource_identifiers: [
    #       "rs-123abc456def7"
    #     ],
    #     handshake_type_filters: {
    #     "revokeServicePeriodTypeFilters" => {
    #       "servicePeriodTypes" => [MINIMUM_NOTICE_PERIOD]
    #     }
    #   },
    #     handshake_type_sort: {
    #     "revokeServicePeriodTypeSort" => {
    #       "sortBy" => UpdatedAt,
    #       "sortOrder" => Descending
    #     }
    #   }
    #   }
    #   options = {}
    #   response = client.list_channel_handshakes(params, options)
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         id: "ch-4fj3bd2o3vb91",
    #         arn: "arn:aws:partnercentral:us-east-1:111122223333:catalog/AWS/channel-handshake/ch-4fj3bd2o3vb91",
    #         catalog: "AWS",
    #         handshake_type: REVOKE_SERVICE_PERIOD,
    #         owner_account_id: "111122223333",
    #         sender_account_id: "111122224444",
    #         receiver_account_id: "333322221111",
    #         associated_resource_id: "rs-u8ic702rtfew1",
    #         detail: {
    #     "revokeServicePeriodHandshakeDetail" => {
    #       "servicePeriodType" => MINIMUM_NOTICE_PERIOD,
    #       "minimumNoticeDays" => 14,
    #       "note" => Optional_Note
    #     }
    #   },
    #         created_at: Time.parse("2025-04-29T16:18:16.000Z"),
    #         updated_at: Time.parse("2025-05-02T16:18:16.000Z"),
    #         status: PENDING
    #       }
    #     ],
    #     next_token: "nextToken"
    #   }
    # @example Example for ListChannelHandshakes - PROGRAM_MANAGEMENT_ACCOUNT
    #   # Example operation for list_channel_handshakes
    #   params = {
    #     handshake_type: PROGRAM_MANAGEMENT_ACCOUNT,
    #     catalog: "AWS",
    #     participant_type: SENDER,
    #     statuses: [
    #       ACCEPTED
    #     ],
    #     associated_resource_identifiers: [
    #       "pma-123abc456def7"
    #     ],
    #     handshake_type_filters: {
    #     "programManagementAccountTypeFilters" => {
    #       "programs" => [SOLUTION_PROVIDER]
    #     }
    #   },
    #     handshake_type_sort: {
    #     "programManagementAccountTypeSort" => {
    #       "sortBy" => UpdatedAt,
    #       "sortOrder" => Descending
    #     }
    #   },
    #     max_results: 20,
    #     next_token: "nextToken"
    #   }
    #   options = {}
    #   response = client.list_channel_handshakes(params, options)
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         id: "ch-4fj3bd2o3vb91",
    #         arn: "arn:aws:partnercentral:us-east-1:111122223333:catalog/AWS/channel-handshake/ch-4fj3bd2o3vb91",
    #         catalog: "AWS",
    #         handshake_type: PROGRAM_MANAGEMENT_ACCOUNT,
    #         owner_account_id: "111122223333",
    #         sender_account_id: "111122223333",
    #         receiver_account_id: "333322221111",
    #         associated_resource_id: "pma-u8ic702rtfew1",
    #         detail: {
    #     "programManagementAccountHandshakeDetail" => {
    #       "program" => SOLUTION_PROVIDER
    #     }
    #   },
    #         created_at: Time.parse("2025-02-28T16:18:16.000Z"),
    #         updated_at: Time.parse("2025-03-02T16:18:16.000Z"),
    #         status: PENDING
    #       }
    #     ],
    #     next_token: "nextToken"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     handshake_type: "START_SERVICE_PERIOD" # One of: ["START_SERVICE_PERIOD", "REVOKE_SERVICE_PERIOD", "PROGRAM_MANAGEMENT_ACCOUNT"], # required
    #     catalog: "Catalog", # required
    #     participant_type: "SENDER" # One of: ["SENDER", "RECEIVER"], # required
    #     max_results: 1,
    #     statuses: ["PENDING" # One of: ["PENDING", "ACCEPTED", "REJECTED", "CANCELED", "EXPIRED"]],
    #     associated_resource_identifiers: ["AssociatedResourceIdentifier"],
    #     handshake_type_filters: {
    #       # One of:
    #       start_service_period_type_filters: {
    #         service_period_types: ["MINIMUM_NOTICE_PERIOD" # One of: ["MINIMUM_NOTICE_PERIOD", "FIXED_COMMITMENT_PERIOD"]]
    #       },
    #       revoke_service_period_type_filters: {
    #         service_period_types: ["MINIMUM_NOTICE_PERIOD" # One of: ["MINIMUM_NOTICE_PERIOD", "FIXED_COMMITMENT_PERIOD"]]
    #       },
    #       program_management_account_type_filters: {
    #         programs: ["SOLUTION_PROVIDER" # One of: ["SOLUTION_PROVIDER", "DISTRIBUTION", "DISTRIBUTION_SELLER"]]
    #       }
    #     },
    #     handshake_type_sort: {
    #       # One of:
    #       start_service_period_type_sort: {
    #         sort_order: "Ascending" # One of: ["Ascending", "Descending"], # required
    #         sort_by: "UpdatedAt" # One of: ["UpdatedAt"], # required
    #       },
    #       revoke_service_period_type_sort: {
    #         sort_order: "Ascending" # One of: ["Ascending", "Descending"], # required
    #         sort_by: "UpdatedAt" # One of: ["UpdatedAt"], # required
    #       },
    #       program_management_account_type_sort: {
    #         sort_order: "Ascending" # One of: ["Ascending", "Descending"], # required
    #         sort_by: "UpdatedAt" # One of: ["UpdatedAt"], # required
    #       }
    #     },
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_channel_handshakes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         id: "ChannelHandshakeId",
    #         arn: "Arn",
    #         catalog: "Catalog",
    #         handshake_type: "START_SERVICE_PERIOD" # One of: ["START_SERVICE_PERIOD", "REVOKE_SERVICE_PERIOD", "PROGRAM_MANAGEMENT_ACCOUNT"],
    #         owner_account_id: "AccountId",
    #         sender_account_id: "AccountId",
    #         sender_display_name: "PartnerProfileDisplayName",
    #         receiver_account_id: "AccountId",
    #         associated_resource_id: "AssociatedResourceId",
    #         detail: {
    #           # One of:
    #           start_service_period_handshake_detail: {
    #             note: "Note",
    #             service_period_type: "MINIMUM_NOTICE_PERIOD" # One of: ["MINIMUM_NOTICE_PERIOD", "FIXED_COMMITMENT_PERIOD"],
    #             minimum_notice_days: "MinimumNoticeDays",
    #             start_date: Time.now,
    #             end_date: Time.now
    #           },
    #           revoke_service_period_handshake_detail: {
    #             note: "Note",
    #             service_period_type: "MINIMUM_NOTICE_PERIOD" # One of: ["MINIMUM_NOTICE_PERIOD", "FIXED_COMMITMENT_PERIOD"],
    #             minimum_notice_days: "MinimumNoticeDays",
    #             start_date: Time.now,
    #             end_date: Time.now
    #           },
    #           program_management_account_handshake_detail: {
    #             program: "SOLUTION_PROVIDER" # One of: ["SOLUTION_PROVIDER", "DISTRIBUTION", "DISTRIBUTION_SELLER"]
    #           }
    #         },
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         status: "PENDING" # One of: ["PENDING", "ACCEPTED", "REJECTED", "CANCELED", "EXPIRED"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListChannelHandshakesResponse]
    def list_channel_handshakes(params = {}, options = {})
      request = build_request(:list_channel_handshakes, params)
      request.send_request(options)
    end

    # <p>Lists program management accounts based on specified criteria.</p>
    # @param [Hash, Types::ListProgramManagementAccountsRequest] params
    # @option params [String] :catalog
    #   <p>The catalog identifier to filter accounts.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @option params [Array<String>] :display_names
    #   <p>Filter by display names.</p>
    # @option params [Array<String>] :programs
    #   <p>Filter by program types.</p>
    # @option params [Array<String>] :account_ids
    #   <p>Filter by AWS account IDs.</p>
    # @option params [Array<String>] :statuses
    #   <p>Filter by program management account statuses.</p>
    # @option params [Types::ListProgramManagementAccountsSortBase] :sort
    #   <p>Sorting options for the results.</p>
    # @option params [String] :next_token
    #   <p>Token for retrieving the next page of results.</p>
    # @example Example for ListProgramManagementAccounts
    #   # Example operation for list_program_management_accounts
    #   params = {
    #     catalog: "AWS",
    #     max_results: 20,
    #     programs: [
    #       SOLUTION_PROVIDER
    #     ],
    #     display_names: [
    #       "TestDisplayName"
    #     ],
    #     account_ids: [
    #       "111122223333"
    #     ],
    #     statuses: [
    #       PENDING
    #     ],
    #     sort: {
    #       sort_by: UpdatedAt,
    #       sort_order: Descending
    #     }
    #   }
    #   options = {}
    #   response = client.list_program_management_accounts(params, options)
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         id: "pma-u8ic702rtzng8",
    #         revision: "4",
    #         program: SOLUTION_PROVIDER,
    #         display_name: "TestDisplayName",
    #         catalog: "AWS",
    #         account_id: "111122223333",
    #         arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/program-management-account/pma-u8ic702rtzng8",
    #         created_at: Time.parse("2024-04-29T08:52:46.397Z"),
    #         updated_at: Time.parse("2024-05-02T16:18:16.432Z"),
    #         status: PENDING
    #       }
    #     ],
    #     next_token: "nextToken"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     max_results: 1,
    #     display_names: ["ProgramManagementAccountDisplayName"],
    #     programs: ["SOLUTION_PROVIDER" # One of: ["SOLUTION_PROVIDER", "DISTRIBUTION", "DISTRIBUTION_SELLER"]],
    #     account_ids: ["AccountId"],
    #     statuses: ["PENDING" # One of: ["PENDING", "ACTIVE", "INACTIVE"]],
    #     sort: {
    #       sort_order: "Ascending" # One of: ["Ascending", "Descending"], # required
    #       sort_by: "UpdatedAt" # One of: ["UpdatedAt"], # required
    #     },
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_program_management_accounts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         id: "ProgramManagementAccountId",
    #         revision: "Revision",
    #         catalog: "Catalog",
    #         program: "SOLUTION_PROVIDER" # One of: ["SOLUTION_PROVIDER", "DISTRIBUTION", "DISTRIBUTION_SELLER"],
    #         display_name: "ProgramManagementAccountDisplayName",
    #         account_id: "AccountId",
    #         arn: "Arn",
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         start_date: Time.now,
    #         status: "PENDING" # One of: ["PENDING", "ACTIVE", "INACTIVE"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListProgramManagementAccountsResponse]
    def list_program_management_accounts(params = {}, options = {})
      request = build_request(:list_program_management_accounts, params)
      request.send_request(options)
    end

    # <p>Lists partner relationships based on specified criteria.</p>
    # @param [Hash, Types::ListRelationshipsRequest] params
    # @option params [String] :catalog
    #   <p>The catalog identifier to filter relationships.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @option params [Array<String>] :associated_account_ids
    #   <p>Filter by associated AWS account IDs.</p>
    # @option params [Array<String>] :association_types
    #   <p>Filter by association types.</p>
    # @option params [Array<String>] :display_names
    #   <p>Filter by display names.</p>
    # @option params [Array<String>] :program_management_account_identifiers
    #   <p>Filter by program management account identifiers.</p>
    # @option params [Types::ListRelationshipsSortBase] :sort
    #   <p>Sorting options for the results.</p>
    # @option params [String] :next_token
    #   <p>Token for retrieving the next page of results.</p>
    # @example Example for ListRelationships
    #   # Example operation for list_relationships
    #   params = {
    #     catalog: "AWS",
    #     max_results: 100,
    #     associated_account_ids: [
    #       "123456789012"
    #     ],
    #     association_types: [
    #       DOWNSTREAM_SELLER
    #     ],
    #     display_names: [
    #       "TestDisplayName"
    #     ],
    #     program_management_account_identifiers: [
    #       "pma-u8ic702rtzng8"
    #     ],
    #     sort: {
    #       sort_by: UpdatedAt,
    #       sort_order: Descending
    #     },
    #     next_token: "nextToken"
    #   }
    #   options = {}
    #   response = client.list_relationships(params, options)
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/program-management-account/pma-u8ic702rtzng8/relationship/rs-l9o4fj3b5zb91",
    #         id: "rs-l9o4fj3b5zb91",
    #         revision: "3",
    #         association_type: DOWNSTREAM_SELLER,
    #         program_management_account_id: "pma-u8ic702rtzng8",
    #         associated_account_id: "987654321012",
    #         display_name: "TestDisplayName",
    #         created_at: Time.parse("2024-04-29T16:18:16Z"),
    #         updated_at: Time.parse("2024-05-02T16:18:16Z")
    #       }
    #     ],
    #     next_token: "nextToken"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     max_results: 1,
    #     associated_account_ids: ["AccountId"],
    #     association_types: ["DOWNSTREAM_SELLER" # One of: ["DOWNSTREAM_SELLER", "END_CUSTOMER", "INTERNAL"]],
    #     display_names: ["RelationshipDisplayName"],
    #     program_management_account_identifiers: ["ProgramManagementAccountIdentifier"],
    #     sort: {
    #       sort_order: "Ascending" # One of: ["Ascending", "Descending"], # required
    #       sort_by: "UpdatedAt" # One of: ["UpdatedAt"], # required
    #     },
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_relationships(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         arn: "Arn",
    #         id: "RelationshipId",
    #         revision: "Revision",
    #         catalog: "Catalog",
    #         association_type: "DOWNSTREAM_SELLER" # One of: ["DOWNSTREAM_SELLER", "END_CUSTOMER", "INTERNAL"],
    #         program_management_account_id: "ProgramManagementAccountId",
    #         associated_account_id: "AccountId",
    #         display_name: "RelationshipDisplayName",
    #         sector: "COMMERCIAL" # One of: ["COMMERCIAL", "GOVERNMENT", "GOVERNMENT_EXCEPTION"],
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         start_date: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListRelationshipsResponse]
    def list_relationships(params = {}, options = {})
      request = build_request(:list_relationships, params)
      request.send_request(options)
    end

    # <p>Lists tags associated with a specific resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to list tags for.</p>
    # @example Example for ListTagsForResource
    #   # Example operation for list_tags_for_resource
    #   params = {
    #     resource_arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/program-management-account/pma-u8ic702rtzng8"
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "ExampleKey",
    #         value: "ExampleValue"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TaggableArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
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

    # <p>Rejects a pending channel handshake request.</p>
    # @param [Hash, Types::RejectChannelHandshakeRequest] params
    # @option params [String] :catalog
    #   <p>The catalog identifier for the handshake request.</p>
    # @option params [String] :identifier
    #   <p>The unique identifier of the channel handshake to reject.</p>
    # @example Example for RejectChannelHandshake
    #   # Example operation for reject_channel_handshake
    #   params = {
    #     catalog: "AWS",
    #     identifier: "ch-4fj3bd2o3vb91"
    #   }
    #   options = {}
    #   response = client.reject_channel_handshake(params, options)
    #   response.to_h #=>
    #   {
    #     channel_handshake_detail: {
    #       id: "ch-4fj3bd2o3vb91",
    #       arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/channel-handshake/ch-4fj3bd2o3vb91",
    #       status: REJECTED
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     identifier: "ChannelHandshakeIdentifier", # required
    #   }
    #   options = {}
    #   response = client.reject_channel_handshake(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_handshake_detail: {
    #       id: "ChannelHandshakeId",
    #       arn: "Arn",
    #       status: "PENDING" # One of: ["PENDING", "ACCEPTED", "REJECTED", "CANCELED", "EXPIRED"]
    #     }
    #   }
    # @return [Types::RejectChannelHandshakeResponse]
    def reject_channel_handshake(params = {}, options = {})
      request = build_request(:reject_channel_handshake, params)
      request.send_request(options)
    end

    # <p>Adds or updates tags for a specified resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to tag.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Key-value pairs to associate with the resource.</p>
    # @example Example for TagResource
    #   # Example operation for tag_resource
    #   params = {
    #     resource_arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/program-management-account/pma-u8ic702rtzng8/relationship/rs-l9o4fj3b5zb91",
    #     tags: [
    #       {
    #         key: "ExampleKey",
    #         value: "ExampleValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TaggableArn", # required
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

    # <p>Removes tags from a specified resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to remove tags from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags to remove from the resource.</p>
    # @example Example for UntagResource
    #   # Example operation for untag_resource
    #   params = {
    #     resource_arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/channel-handshake/ch-4fj3bd2o3vb91",
    #     tag_keys: [
    #       "ExampleKey"
    #     ]
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TaggableArn", # required
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

    # <p>Updates the properties of a program management account.</p>
    # @param [Hash, Types::UpdateProgramManagementAccountRequest] params
    # @option params [String] :catalog
    #   <p>The catalog identifier for the program management account.</p>
    # @option params [String] :identifier
    #   <p>The unique identifier of the program management account to update.</p>
    # @option params [String] :revision
    #   <p>The current revision number of the program management account.</p>
    # @option params [String] :display_name
    #   <p>The new display name for the program management account.</p>
    # @example Example for UpdateProgramManagementAccount
    #   # Example operation for update_program_management_account
    #   params = {
    #     catalog: "AWS",
    #     identifier: "pma-u8ic702rtzng8",
    #     revision: "3",
    #     display_name: "TestDisplayName"
    #   }
    #   options = {}
    #   response = client.update_program_management_account(params, options)
    #   response.to_h #=>
    #   {
    #     program_management_account_detail: {
    #       id: "pma-u8ic702rtzng8",
    #       arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/program-management-account/pma-u8ic702rtzng8",
    #       revision: "4",
    #       display_name: "TestDisplayName"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     identifier: "ProgramManagementAccountIdentifier", # required
    #     revision: "Revision",
    #     display_name: "ProgramManagementAccountDisplayName"
    #   }
    #   options = {}
    #   response = client.update_program_management_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     program_management_account_detail: {
    #       id: "ProgramManagementAccountId",
    #       arn: "Arn",
    #       revision: "Revision",
    #       display_name: "ProgramManagementAccountDisplayName"
    #     }
    #   }
    # @return [Types::UpdateProgramManagementAccountResponse]
    def update_program_management_account(params = {}, options = {})
      request = build_request(:update_program_management_account, params)
      request.send_request(options)
    end

    # <p>Updates the properties of a partner relationship.</p>
    # @param [Hash, Types::UpdateRelationshipRequest] params
    # @option params [String] :catalog
    #   <p>The catalog identifier for the relationship.</p>
    # @option params [String] :identifier
    #   <p>The unique identifier of the relationship to update.</p>
    # @option params [String] :program_management_account_identifier
    #   <p>The identifier of the program management account associated with the relationship.</p>
    # @option params [String] :revision
    #   <p>The current revision number of the relationship.</p>
    # @option params [String] :display_name
    #   <p>The new display name for the relationship.</p>
    # @option params [Types::SupportPlan] :requested_support_plan
    #   <p>The updated support plan for the relationship.</p>
    # @example Example for UpdateRelationship
    #   # Example operation for update_relationship
    #   params = {
    #     catalog: "AWS",
    #     program_management_account_identifier: "pma-u8ic702rtzng8",
    #     identifier: "rs-l9o4fj3b5zb91",
    #     revision: "3",
    #     display_name: "TestDisplayName"
    #   }
    #   options = {}
    #   response = client.update_relationship(params, options)
    #   response.to_h #=>
    #   {
    #     relationship_detail: {
    #       arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/program-management-account/pma-u8ic702rtzng8/relationship/rs-l9o4fj3b5zb91",
    #       id: "rs-l9o4fj3b5zb91",
    #       revision: "4",
    #       display_name: "TestDisplayName"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     catalog: "Catalog", # required
    #     identifier: "RelationshipIdentifier", # required
    #     program_management_account_identifier: "ProgramManagementAccountIdentifier", # required
    #     revision: "Revision",
    #     display_name: "RelationshipDisplayName",
    #     requested_support_plan: {
    #       # One of:
    #       resold_enterprise: {
    #         coverage: "ENTIRE_ORGANIZATION" # One of: ["ENTIRE_ORGANIZATION", "MANAGEMENT_ACCOUNT_ONLY"], # required
    #         tam_location: "String", # required
    #         charge_account_id: "AccountId"
    #       },
    #       partner_led_support: {
    #         coverage: "ENTIRE_ORGANIZATION" # One of: ["ENTIRE_ORGANIZATION", "MANAGEMENT_ACCOUNT_ONLY"], # required
    #         provider: "DISTRIBUTOR" # One of: ["DISTRIBUTOR", "DISTRIBUTION_SELLER"],
    #         tam_location: "String", # required
    #       },
    #       resold_unified_operations: {
    #         coverage: "ENTIRE_ORGANIZATION" # One of: ["ENTIRE_ORGANIZATION", "MANAGEMENT_ACCOUNT_ONLY"], # required
    #         tam_location: "String", # required
    #         charge_account_id: "AccountId"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_relationship(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     relationship_detail: {
    #       arn: "Arn",
    #       id: "RelationshipId",
    #       revision: "Revision",
    #       display_name: "RelationshipDisplayName"
    #     }
    #   }
    # @return [Types::UpdateRelationshipResponse]
    def update_relationship(params = {}, options = {})
      request = build_request(:update_relationship, params)
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
      context[:gem_name] = 'aws-sdk-partnercentralchannel'
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
