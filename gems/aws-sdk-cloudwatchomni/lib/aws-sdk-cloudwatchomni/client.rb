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
require 'smithy-client/rpc_v2_cbor'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:cloudwatchomni)

module Aws::CloudWatchOmni
  # An API client for Aws::CloudWatchOmni.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::CloudWatchOmniFrontend
    @identifier = :cloudwatchomni

    add_plugin(::Aws::CloudWatchOmni::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::CloudWatchOmni::EndpointProvider)
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
    #  Supported protocols: +:rpc_v2_cbor+ (defaults to +:rpc_v2_cbor+).
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

    # Creates an AccessGrant that authorizes a principal to perform a set of
    # actions on resources in a space.
    #
    # Optionally narrow the grant with scoped actions that limit it to specific
    # resources and fields. Use ListAccessGrants and GetAccessGrant to retrieve
    # grants, and DeleteAccessGrant to remove them.
    # @param [Hash, Types::CreateAccessGrantInput] params
    # @option params [String] :domain_id
    #   The ID of the domain that contains the space.
    # @option params [String] :space_id
    #   The ID of the space to scope the grant to.
    # @option params [String] :name
    #   A name that identifies the access grant.
    # @option params [Types::AccessGrantPrincipal] :principal
    #   The principal receiving the grant.
    # @option params [String] :permission
    #   The permission to grant. Exactly one permission is granted per request.
    # @option params [Array<Types::ScopedActions>] :scoped_actions
    #   Groups of actions to allow, each with the resource scopes and conditions
    #   that limit those actions.
    # @option params [Hash<String, String>] :tags
    #   The tags to associate with the access grant.
    # @option params [String] :client_token
    #   Idempotency token for safe retries. Repeated requests with the same
    #   token return the original result instead of creating a duplicate.
    # @example Create an access grant
    #   # The following example creates a custom access grant that authorizes an Identity Center user to read and update a specific dashboard in a space. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     domain_id: "d-1a2b3c4d5e",
    #     space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #     name: "analyst-read-access",
    #     principal: {
    #       principal_type: IDC_USER,
    #       principal_id: "94b6c7d8-1a2b-4c3d-9e4f-5a6b7c8d9e0f"
    #     },
    #     permission: CUSTOM,
    #     scoped_actions: [
    #       {
    #         actions: [
    #           "cloudwatch:GetOmniDashboard",
    #           "cloudwatch:UpdateOmniDashboard"
    #         ],
    #         resources: [
    #           {
    #             resource_type: "OmniDashboard",
    #             resource_arns: [
    #               "arn:aws:cloudwatch:us-east-1:123456789012:omni-dashboard/c3d4e5f6-7a8b-4c9d-8e0f-1a2b3c4d5e6f"
    #             ]
    #           }
    #         ]
    #       }
    #     ],
    #     tags: {
    #       "Team" => "observability"
    #     },
    #     client_token: "3f2a9c1e-7b04-4d8a-9e15-6c2b8d0f4a73"
    #   }
    #   options = {}
    #   response = client.create_access_grant(params, options)
    #   response.to_h #=>
    #   {
    #     access_grant: {
    #       grant_id: "7f3e9d21-4c8b-4f6a-b1d2-3e4f5a6b7c8d",
    #       grant_arn: "arn:aws:cloudwatch:us-east-1:123456789012:access-grant/7f3e9d21-4c8b-4f6a-b1d2-3e4f5a6b7c8d",
    #       name: "analyst-read-access",
    #       account_id: "123456789012",
    #       domain_id: "d-1a2b3c4d5e",
    #       principal: {
    #         principal_type: IDC_USER,
    #         principal_id: "94b6c7d8-1a2b-4c3d-9e4f-5a6b7c8d9e0f"
    #       },
    #       permission: CUSTOM,
    #       grant_type: CUSTOMER_MANAGED,
    #       created_by: "arn:aws:iam::123456789012:role/ObservabilityAdmin",
    #       created_at: Time.parse("2026-09-16T14:22:31Z"),
    #       updated_at: Time.parse("2026-09-16T14:22:31Z"),
    #       space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #       scoped_actions: [
    #         {
    #           actions: [
    #             "cloudwatch:GetOmniDashboard",
    #             "cloudwatch:UpdateOmniDashboard"
    #           ],
    #           resources: [
    #             {
    #               resource_type: "OmniDashboard",
    #               resource_arns: [
    #                 "arn:aws:cloudwatch:us-east-1:123456789012:omni-dashboard/c3d4e5f6-7a8b-4c9d-8e0f-1a2b3c4d5e6f"
    #               ]
    #             }
    #           ]
    #         }
    #       ]
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     space_id: "SpaceId", # required
    #     name: "String", # required
    #     principal: { # required
    #       principal_type: "IDC_USER" # One of: ["IDC_USER", "IDC_GROUP", "IAM_USER", "IAM_ROLE", "IAM_ROOT", "ACCESS_PROFILE", "ALERT", "AGENT"], # required
    #       principal_id: "PrincipalId",
    #       principal_attributes: [
    #         {
    #           key: "String", # required
    #           value: "String", # required
    #         }
    #       ]
    #     },
    #     permission: "SPACE_ADMIN" # One of: ["SPACE_ADMIN", "READ", "READ_WRITE_DELETE", "CUSTOM"], # required
    #     scoped_actions: [
    #       {
    #         actions: ["ScopedActionName"], # required
    #         resources: [
    #           {
    #             resource_type: "String", # required
    #             resource_arns: ["String"],
    #             tags: {
    #               "String" => "String"
    #             },
    #             signal_types: ["LOGS" # One of: ["LOGS", "TRACES"]],
    #             row_scope_groups: [
    #               [
    #                 {
    #                   field: "String", # required
    #                   operator: "IN" # One of: ["IN"], # required
    #                   values: ["RowScopeValue"], # required
    #                 }
    #               ]
    #             ]
    #           }
    #         ],
    #         context_conditions: {
    #           "String" => ["String"]
    #         }
    #       }
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_access_grant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_grant: { # required
    #       grant_id: "GrantId", # required
    #       grant_arn: "Arn", # required
    #       name: "String",
    #       account_id: "AccountId", # required
    #       domain_id: "DomainId", # required
    #       principal: { # required
    #         principal_type: "IDC_USER" # One of: ["IDC_USER", "IDC_GROUP", "IAM_USER", "IAM_ROLE", "IAM_ROOT", "ACCESS_PROFILE", "ALERT", "AGENT"], # required
    #         principal_id: "PrincipalId",
    #         principal_attributes: [
    #           {
    #             key: "String", # required
    #             value: "String", # required
    #           }
    #         ]
    #       },
    #       permission: "SPACE_ADMIN" # One of: ["SPACE_ADMIN", "READ", "READ_WRITE_DELETE", "CUSTOM"], # required
    #       grant_type: "SERVICE_MANAGED" # One of: ["SERVICE_MANAGED", "CUSTOMER_MANAGED"], # required
    #       created_by: "String", # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       space_id: "SpaceId", # required
    #       scoped_actions: [
    #         {
    #           actions: ["ScopedActionName"], # required
    #           resources: [
    #             {
    #               resource_type: "String", # required
    #               resource_arns: ["String"],
    #               tags: {
    #                 "String" => "String"
    #               },
    #               signal_types: ["LOGS" # One of: ["LOGS", "TRACES"]],
    #               row_scope_groups: [
    #                 [
    #                   {
    #                     field: "String", # required
    #                     operator: "IN" # One of: ["IN"], # required
    #                     values: ["RowScopeValue"], # required
    #                   }
    #                 ]
    #               ]
    #             }
    #           ],
    #           context_conditions: {
    #             "String" => ["String"]
    #           }
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateAccessGrantOutput]
    def create_access_grant(params = {}, options = {})
      request = build_request(:create_access_grant, params)
      request.send_request(options)
    end

    # Creates an access profile in a space.
    #
    # Use GetAccessProfile and ListAccessProfiles to retrieve profiles,
    # and UpdateAccessProfile to modify one.
    # @param [Hash, Types::CreateAccessProfileInput] params
    # @option params [String] :space_id
    #   The unique ID of the space to create the profile in.
    # @option params [String] :name
    #   A name that identifies the access profile.
    # @option params [String] :description
    #   An optional description of the access profile.
    # @option params [Hash<String, String>] :tags
    #   The tags to associate with the access profile.
    # @option params [String] :client_token
    #   Idempotency token for safe retries. Repeated requests with the same
    #   token return the original result instead of creating a duplicate.
    # @example Create an access profile
    #   # The following example creates a customer-managed access profile in a space. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #     name: "Analyst read-only profile",
    #     description: "Read-only access for analysts.",
    #     tags: {
    #       "Team" => "observability"
    #     },
    #     client_token: "3f2a9c1e-7b04-4d8a-9e15-6c2b8d0f4a73"
    #   }
    #   options = {}
    #   response = client.create_access_profile(params, options)
    #   response.to_h #=>
    #   {
    #     access_profile: {
    #       profile_id: "analyst-readonly",
    #       space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #       arn: "arn:aws:cloudwatch:us-east-1:123456789012:access-profile/analyst-readonly",
    #       name: "Analyst read-only profile",
    #       description: "Read-only access for analysts.",
    #       created_at: Time.parse("2026-09-16T14:22:31Z"),
    #       updated_at: Time.parse("2026-09-16T14:22:31Z"),
    #       assume_status: ALLOWED,
    #       profile_type: CUSTOMER_MANAGED
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     space_id: "SpaceId", # required
    #     name: "AccessProfileName", # required
    #     description: "String",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_access_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_profile: { # required
    #       profile_id: "ProfileId", # required
    #       space_id: "SpaceId", # required
    #       arn: "Arn", # required
    #       name: "String", # required
    #       description: "String",
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       assume_status: "ALLOWED" # One of: ["ALLOWED", "DENIED"],
    #       profile_type: "SERVICE_MANAGED" # One of: ["SERVICE_MANAGED", "CUSTOMER_MANAGED"]
    #     }
    #   }
    # @return [Types::CreateAccessProfileOutput]
    def create_access_profile(params = {}, options = {})
      request = build_request(:create_access_profile, params)
      request.send_request(options)
    end

    # Creates a new alert within a space.
    #
    # Use GetAlert and ListAlerts to retrieve alerts, UpdateAlert to modify one,
    # and DeleteAlert to remove it.
    # @param [Hash, Types::CreateAlertInput] params
    # @option params [String] :space_id
    #   The unique ID of the space to create the alert in.
    # @option params [String] :profile_id
    #   The ID of the access profile the alert uses to evaluate its query and
    #   execute notifications. The caller supplies it: there is no managed
    #   alert profile, and the service does not pick one on the caller's behalf.
    # @option params [String] :name
    #   Alert name, for display. Max 256 (the AlarmName budget). Not the alert's
    #   identity: the backend mints a separate uuid as the {@link AlertId}, so the
    #   name need not be unique within a space and addressing an alert never
    #   depends on it. UpdateAlert accepts a new name to rename the alert.
    # @option params [String] :description
    #   An optional description of the alert.
    # @option params [Types::Rule] :rule
    #   The rule that defines how the alert is evaluated.
    # @option params [Boolean] :notifications_enabled
    #   Whether actions (notifications) are enabled for this alert.
    #   Defaults to true when omitted.
    # @option params [Hash<String, String>] :tags
    #   The tags to associate with the alert.
    # @option params [Array<Types::NotificationRule>] :notification_rules
    #   The notification rules that determine when and where notifications are sent.
    # @option params [String] :client_token
    #   Idempotency token for safe retries. Retrying with the same token
    #   within the idempotency window returns the original alert instead
    #   of creating a duplicate.
    # @example Create an alert on a field value
    #   # The following example creates an alert whose threshold is compared against a named field of each result row, so every service the query groups by is tracked as its own contributor. FIELD_VALUE requires thresholdField. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #     profile_id: "analyst-readonly",
    #     name: "service-error-count-elevated",
    #     description: "Alerts when a service logs more errors than its accepted rate.",
    #     rule: {
    #     "telemetryRule" => {
    #       "query" => {
    #         "language" => SQL,
    #         "expression" => SELECT resource['attributes']['service.name'] AS service, COUNT(*) AS error_count FROM "logs.default" WHERE severityText = 'ERROR' GROUP BY service
    #       },
    #       "condition" => {
    #         "thresholdMode" => FIELD_VALUE,
    #         "thresholdField" => error_count,
    #         "comparator" => GT,
    #         "warningThreshold" => 50.0,
    #         "criticalThreshold" => 200.0
    #       },
    #       "evaluation" => {
    #         "intervalSeconds" => 300,
    #         "pendingDurationSeconds" => 600,
    #         "recoveryDurationSeconds" => 300
    #       },
    #       "noData" => {
    #         "treatAs" => NODATA
    #       }
    #     }
    #   },
    #     notifications_enabled: true,
    #     notification_rules: [
    #       {
    #         trigger: {
    #           state_values: [
    #             CRITICAL
    #           ]
    #         },
    #         target: {
    #           type: slack,
    #           arn: "arn:aws:cloudwatch:us-east-1:123456789012:integration/a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #           metadata: {
    #             "channel" => "oncall-alerts"
    #           }
    #         }
    #       }
    #     ],
    #     tags: {
    #       "Team" => "observability"
    #     },
    #     client_token: "3f2a9c1e-7b04-4d8a-9e15-6c2b8d0f4a73"
    #   }
    #   options = {}
    #   response = client.create_alert(params, options)
    #   response.to_h #=>
    #   {
    #     alert: {
    #       name: "service-error-count-elevated",
    #       alert_id: "c3d4e5f67a8b4c9d8e0f1a2b3c4d5e6f",
    #       description: "Alerts when a service logs more errors than its accepted rate.",
    #       account_id: "123456789012",
    #       space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #       profile_id: "analyst-readonly",
    #       rule: {
    #     "telemetryRule" => {
    #       "query" => {
    #         "language" => SQL,
    #         "expression" => SELECT resource['attributes']['service.name'] AS service, COUNT(*) AS error_count FROM "logs.default" WHERE severityText = 'ERROR' GROUP BY service
    #       },
    #       "condition" => {
    #         "thresholdMode" => FIELD_VALUE,
    #         "thresholdField" => error_count,
    #         "comparator" => GT,
    #         "warningThreshold" => 50.0,
    #         "criticalThreshold" => 200.0
    #       },
    #       "evaluation" => {
    #         "intervalSeconds" => 300,
    #         "pendingDurationSeconds" => 600,
    #         "recoveryDurationSeconds" => 300
    #       },
    #       "noData" => {
    #         "treatAs" => NODATA
    #       }
    #     }
    #   },
    #       notification_status: ENABLED,
    #       notification_rules: [
    #         {
    #           trigger: {
    #             state_values: [
    #               CRITICAL
    #             ]
    #           },
    #           target: {
    #             type: slack,
    #             arn: "arn:aws:cloudwatch:us-east-1:123456789012:integration/a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #             metadata: {
    #               "channel" => "oncall-alerts"
    #             }
    #           }
    #         }
    #       ],
    #       created_at: Time.parse("2026-09-16T14:22:31Z"),
    #       updated_at: Time.parse("2026-09-16T14:22:31Z"),
    #       alert_arn: "arn:aws:cloudwatch:us-east-1:123456789012:alert/c3d4e5f67a8b4c9d8e0f1a2b3c4d5e6f"
    #     }
    #   }
    # @example Create an alert on the number of matching rows
    #   # The following example creates an alert whose threshold is compared against how many rows the query returns, rather than a value within them. COUNT_OF_RESULTS takes no thresholdField. Notifications are created disabled, so the alert evaluates and records state without sending anything, and an empty result set is treated as OK rather than as missing data. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #     profile_id: "analyst-readonly",
    #     name: "service-checkout-5xx-responses",
    #     description: "Counts checkout responses that returned a server error.",
    #     rule: {
    #     "telemetryRule" => {
    #       "query" => {
    #         "language" => SQL,
    #         "expression" => SELECT * FROM "logs.default" WHERE resource['attributes']['service.name'] = 'checkout' AND attributes['http.response.status_code'] >= 500
    #       },
    #       "condition" => {
    #         "thresholdMode" => COUNT_OF_RESULTS,
    #         "comparator" => GT,
    #         "warningThreshold" => 10.0,
    #         "criticalThreshold" => 50.0
    #       },
    #       "evaluation" => {
    #         "intervalSeconds" => 60,
    #         "pendingDurationSeconds" => 120
    #       },
    #       "noData" => {
    #         "treatAs" => OK
    #       }
    #     }
    #   },
    #     notifications_enabled: false
    #   }
    #   options = {}
    #   response = client.create_alert(params, options)
    #   response.to_h #=>
    #   {
    #     alert: {
    #       name: "service-checkout-5xx-responses",
    #       alert_id: "d4e5f6a78b9c4d0e9f1a2b3c4d5e6f70",
    #       description: "Counts checkout responses that returned a server error.",
    #       account_id: "123456789012",
    #       space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #       profile_id: "analyst-readonly",
    #       rule: {
    #     "telemetryRule" => {
    #       "query" => {
    #         "language" => SQL,
    #         "expression" => SELECT * FROM "logs.default" WHERE resource['attributes']['service.name'] = 'checkout' AND attributes['http.response.status_code'] >= 500
    #       },
    #       "condition" => {
    #         "thresholdMode" => COUNT_OF_RESULTS,
    #         "comparator" => GT,
    #         "warningThreshold" => 10.0,
    #         "criticalThreshold" => 50.0
    #       },
    #       "evaluation" => {
    #         "intervalSeconds" => 60,
    #         "pendingDurationSeconds" => 120
    #       },
    #       "noData" => {
    #         "treatAs" => OK
    #       }
    #     }
    #   },
    #       notification_status: DISABLED,
    #       created_at: Time.parse("2026-09-16T14:22:31Z"),
    #       updated_at: Time.parse("2026-09-16T14:22:31Z"),
    #       alert_arn: "arn:aws:cloudwatch:us-east-1:123456789012:alert/d4e5f6a78b9c4d0e9f1a2b3c4d5e6f70"
    #     }
    #   }
    # @example Create an alert from a PromQL query
    #   # The following example creates an alert from a PromQL expression instead of SQL. A PromQL rule compares against the series value, which is carried as the `value` field, so the condition is FIELD_VALUE with thresholdField set to `value`. Notifications go to an Amazon SNS topic, whose ARN is the topic itself rather than an integration. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #     profile_id: "analyst-readonly",
    #     name: "checkout-error-rate-promql",
    #     description: "Alerts on the checkout server error rate over a five-minute window.",
    #     rule: {
    #     "telemetryRule" => {
    #       "query" => {
    #         "language" => PROMQL,
    #         "expression" => sum by (service_name) (rate(http_server_errors_total{service_name="checkout"}[5m]))
    #       },
    #       "condition" => {
    #         "thresholdMode" => FIELD_VALUE,
    #         "thresholdField" => value,
    #         "comparator" => GT,
    #         "warningThreshold" => 0.05,
    #         "criticalThreshold" => 0.1
    #       },
    #       "evaluation" => {
    #         "intervalSeconds" => 300,
    #         "pendingDurationSeconds" => 300
    #       },
    #       "noData" => {
    #         "treatAs" => NODATA
    #       }
    #     }
    #   },
    #     notification_rules: [
    #       {
    #         trigger: {
    #           state_values: [
    #             WARNING,
    #             CRITICAL
    #           ]
    #         },
    #         target: {
    #           type: sns,
    #           arn: "arn:aws:sns:us-east-1:123456789012:checkout-oncall"
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_alert(params, options)
    #   response.to_h #=>
    #   {
    #     alert: {
    #       name: "checkout-error-rate-promql",
    #       alert_id: "e5f6a78b9c0d4e1f8a2b3c4d5e6f7081",
    #       description: "Alerts on the checkout server error rate over a five-minute window.",
    #       account_id: "123456789012",
    #       space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #       profile_id: "analyst-readonly",
    #       rule: {
    #     "telemetryRule" => {
    #       "query" => {
    #         "language" => PROMQL,
    #         "expression" => sum by (service_name) (rate(http_server_errors_total{service_name="checkout"}[5m]))
    #       },
    #       "condition" => {
    #         "thresholdMode" => FIELD_VALUE,
    #         "thresholdField" => value,
    #         "comparator" => GT,
    #         "warningThreshold" => 0.05,
    #         "criticalThreshold" => 0.1
    #       },
    #       "evaluation" => {
    #         "intervalSeconds" => 300,
    #         "pendingDurationSeconds" => 300
    #       },
    #       "noData" => {
    #         "treatAs" => NODATA
    #       }
    #     }
    #   },
    #       notification_status: ENABLED,
    #       notification_rules: [
    #         {
    #           trigger: {
    #             state_values: [
    #               WARNING,
    #               CRITICAL
    #             ]
    #           },
    #           target: {
    #             type: sns,
    #             arn: "arn:aws:sns:us-east-1:123456789012:checkout-oncall"
    #           }
    #         }
    #       ],
    #       created_at: Time.parse("2026-09-16T14:22:31Z"),
    #       updated_at: Time.parse("2026-09-16T14:22:31Z"),
    #       alert_arn: "arn:aws:cloudwatch:us-east-1:123456789012:alert/e5f6a78b9c0d4e1f8a2b3c4d5e6f7081"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     space_id: "SpaceId", # required
    #     profile_id: "ProfileId", # required
    #     name: "String", # required
    #     description: "String",
    #     rule: { # required
    #       # One of:
    #       telemetry_rule: {
    #         query: {
    #           language: "SQL" # One of: ["SQL", "PROMQL"], # required
    #           expression: "String", # required
    #         },
    #         condition: {
    #           threshold_mode: "COUNT_OF_RESULTS" # One of: ["COUNT_OF_RESULTS", "FIELD_VALUE"],
    #           threshold_field: "String",
    #           comparator: "GT" # One of: ["GT", "LT", "GTE", "LTE"],
    #           warning_threshold: 1.0,
    #           critical_threshold: 1.0
    #         },
    #         evaluation: {
    #           interval_seconds: 1, # required
    #           pending_duration_seconds: 1,
    #           recovery_duration_seconds: 1
    #         },
    #         no_data: {
    #           treat_as: "OK" # One of: ["OK", "WARNING", "CRITICAL", "NODATA"], # required
    #         }
    #       }
    #     },
    #     notifications_enabled: false,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     notification_rules: [
    #       {
    #         trigger: { # required
    #           state_values: ["OK" # One of: ["OK", "WARNING", "CRITICAL", "NODATA"]]
    #         },
    #         target: { # required
    #           type: "sns" # One of: ["sns", "slack", "pagerduty"], # required
    #           arn: "Arn", # required
    #           metadata: {
    #             "String" => "String"
    #           }
    #         }
    #       }
    #     ],
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.create_alert(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     alert_arn: "Arn",
    #     alert: { # required
    #       name: "String", # required
    #       alert_id: "AlertId",
    #       description: "String",
    #       account_id: "AccountId", # required
    #       space_id: "SpaceId",
    #       profile_id: "ProfileId",
    #       rule: { # required
    #         # One of:
    #         telemetry_rule: {
    #           query: {
    #             language: "SQL" # One of: ["SQL", "PROMQL"], # required
    #             expression: "String", # required
    #           },
    #           condition: {
    #             threshold_mode: "COUNT_OF_RESULTS" # One of: ["COUNT_OF_RESULTS", "FIELD_VALUE"],
    #             threshold_field: "String",
    #             comparator: "GT" # One of: ["GT", "LT", "GTE", "LTE"],
    #             warning_threshold: 1.0,
    #             critical_threshold: 1.0
    #           },
    #           evaluation: {
    #             interval_seconds: 1, # required
    #             pending_duration_seconds: 1,
    #             recovery_duration_seconds: 1
    #           },
    #           no_data: {
    #             treat_as: "OK" # One of: ["OK", "WARNING", "CRITICAL", "NODATA"], # required
    #           }
    #         }
    #       },
    #       notification_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       state: {
    #         value: "OK" # One of: ["OK", "WARNING", "CRITICAL", "NODATA"], # required
    #         transitioned_at: Time.now,
    #         contributor_summary: {
    #           warning_count: 1,
    #           critical_count: 1
    #         },
    #         data: {
    #           threshold_breached: 1.0
    #         }
    #       },
    #       notification_rules: [
    #         {
    #           trigger: { # required
    #             state_values: ["OK" # One of: ["OK", "WARNING", "CRITICAL", "NODATA"]]
    #           },
    #           target: { # required
    #             type: "sns" # One of: ["sns", "slack", "pagerduty"], # required
    #             arn: "Arn", # required
    #             metadata: {
    #               "String" => "String"
    #             }
    #           }
    #         }
    #       ],
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       alert_arn: "Arn", # required
    #     }
    #   }
    # @return [Types::CreateAlertOutput]
    def create_alert(params = {}, options = {})
      request = build_request(:create_alert, params)
      request.send_request(options)
    end

    # Creates a domain with identity provider configuration.
    #
    # Use GetDomain to retrieve the domain, UpdateDomain to change its
    # configuration, and CreateSpace to add spaces within it.
    # @param [Hash, Types::CreateDomainInput] params
    # @option params [String] :name
    #   A name that identifies the domain. Must be 3-63 characters: lowercase letters,
    #   numbers, and hyphens. It must begin and end with a letter or number and cannot
    #   contain consecutive hyphens.
    # @option params [Array<String>] :identity_providers
    #   The identity providers to configure for the domain.
    # @option params [Types::IdentityProviderConfiguration] :identity_provider_configuration
    #   Identity provider configuration for the domain.
    # @option params [Hash<String, String>] :tags
    #   The tags to associate with the domain.
    # @option params [String] :client_token
    #   Idempotency token for safe retries. Repeated requests with the same
    #   token return the original result instead of creating a duplicate.
    # @example Create a domain
    #   # The following example creates an Identity Center domain and configures it with an Identity Center instance. The name must be 3-63 characters of lowercase letters, numbers, and hyphens, and the endpoint URLs are derived from it. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     name: "prod-observability",
    #     identity_providers: [
    #       IDC
    #     ],
    #     identity_provider_configuration: {
    #       identity_center_configuration: {
    #         identity_center_instance_arn: "arn:aws:sso:::instance/ssoins-1234567890abcdef"
    #       }
    #     },
    #     tags: {
    #       "Team" => "observability"
    #     },
    #     client_token: "3f2a9c1e-7b04-4d8a-9e15-6c2b8d0f4a73"
    #   }
    #   options = {}
    #   response = client.create_domain(params, options)
    #   response.to_h #=>
    #   {
    #     domain: {
    #       domain_id: "d-1a2b3c4d5e",
    #       domain_arn: "arn:aws:cloudwatch:us-east-1:123456789012:domain/d-1a2b3c4d5e",
    #       name: "prod-observability",
    #       identity_providers: [
    #         IDC
    #       ],
    #       identity_provider_configuration: {
    #         identity_center_configuration: {
    #           identity_center_instance_arn: "arn:aws:sso:::instance/ssoins-1234567890abcdef"
    #         }
    #       },
    #       domain_endpoint_url: "https://d-1a2b3c4d5e.cloudwatch-omni.global.app.aws",
    #       custom_endpoint_urls: [
    #         "https://prod-observability.cloudwatch-omni.global.app.aws"
    #       ],
    #       identity_center_application_arn: "arn:aws:sso::123456789012:application/ssoins-1234567890abcdef/apl-0f9e8d7c6b5a4938",
    #       region: "us-east-1",
    #       created_at: Time.parse("2026-09-16T14:22:31Z"),
    #       updated_at: Time.parse("2026-09-16T14:22:31Z"),
    #       status: ACTIVE
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #     identity_providers: ["IAM" # One of: ["IAM", "IDC"]], # required
    #     identity_provider_configuration: {
    #       identity_center_configuration: {
    #         identity_center_instance_arn: "IdentityCenterInstanceArn"
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain: { # required
    #       domain_id: "DomainId", # required
    #       domain_arn: "Arn", # required
    #       name: "String",
    #       identity_providers: ["IAM" # One of: ["IAM", "IDC"]], # required
    #       identity_provider_configuration: {
    #         identity_center_configuration: {
    #           identity_center_instance_arn: "IdentityCenterInstanceArn"
    #         }
    #       },
    #       domain_endpoint_url: "String", # required
    #       custom_endpoint_urls: ["String"],
    #       identity_center_application_arn: "Arn",
    #       region: "String", # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       status: "ACTIVE" # One of: ["ACTIVE"], # required
    #     }
    #   }
    # @return [Types::CreateDomainOutput]
    def create_domain(params = {}, options = {})
      request = build_request(:create_domain, params)
      request.send_request(options)
    end

    # Creates an AccessGrant that authorizes a principal to administer an
    # organization domain.
    # @param [Hash, Types::CreateDomainAccessGrantForOrganizationInput] params
    # @option params [String] :domain_id
    #   The ID of the organization domain to create the grant on.
    # @option params [String] :name
    #   A name that identifies the access grant.
    # @option params [Types::OrganizationAccessGrantPrincipal] :principal
    #   The principal receiving the grant.
    # @option params [String] :permission
    #   The permission to grant.
    # @option params [Hash<String, String>] :tags
    #   The tags to associate with the access grant.
    # @option params [String] :client_token
    #   Idempotency token for safe retries. Repeated requests with the same
    #   token return the original result instead of creating a duplicate.
    # @example Create an organization domain access grant
    #   # The following example grants an Identity Center user administrative access to an organization domain. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     domain_id: "d-1a2b3c4d5e",
    #     name: "org-domain-admin",
    #     principal: {
    #       principal_type: IDC_USER,
    #       principal_id: "94b6c7d8-1a2b-4c3d-9e4f-5a6b7c8d9e0f"
    #     },
    #     permission: ADMIN,
    #     tags: {
    #       "Team" => "observability"
    #     },
    #     client_token: "3f2a9c1e-7b04-4d8a-9e15-6c2b8d0f4a73"
    #   }
    #   options = {}
    #   response = client.create_domain_access_grant_for_organization(params, options)
    #   response.to_h #=>
    #   {
    #     access_grant: {
    #       grant_id: "7f3e9d21-4c8b-4f6a-b1d2-3e4f5a6b7c8d",
    #       grant_arn: "arn:aws:cloudwatch:us-east-1:123456789012:organization-access-grant/7f3e9d21-4c8b-4f6a-b1d2-3e4f5a6b7c8d",
    #       name: "org-domain-admin",
    #       domain_id: "d-1a2b3c4d5e",
    #       principal: {
    #         principal_type: IDC_USER,
    #         principal_id: "94b6c7d8-1a2b-4c3d-9e4f-5a6b7c8d9e0f"
    #       },
    #       permission: ADMIN,
    #       grant_type: CUSTOMER_MANAGED,
    #       created_by: "arn:aws:iam::123456789012:role/ObservabilityAdmin",
    #       created_at: Time.parse("2026-09-16T14:22:31Z"),
    #       updated_at: Time.parse("2026-09-16T14:22:31Z")
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     name: "String", # required
    #     principal: { # required
    #       principal_type: "IDC_USER" # One of: ["IDC_USER", "IDC_GROUP", "IAM_USER", "IAM_ROLE", "IAM_ROOT"], # required
    #       principal_id: "OrganizationPrincipalId",
    #       principal_attributes: [
    #         {
    #           key: "String", # required
    #           value: "String", # required
    #         }
    #       ]
    #     },
    #     permission: "ADMIN" # One of: ["ADMIN"], # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_domain_access_grant_for_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_grant: { # required
    #       grant_id: "GrantId", # required
    #       grant_arn: "Arn", # required
    #       name: "String",
    #       domain_id: "DomainId", # required
    #       principal: { # required
    #         principal_type: "IDC_USER" # One of: ["IDC_USER", "IDC_GROUP", "IAM_USER", "IAM_ROLE", "IAM_ROOT"], # required
    #         principal_id: "OrganizationPrincipalId",
    #         principal_attributes: [
    #           {
    #             key: "String", # required
    #             value: "String", # required
    #           }
    #         ]
    #       },
    #       permission: "ADMIN" # One of: ["ADMIN"], # required
    #       grant_type: "SERVICE_MANAGED" # One of: ["SERVICE_MANAGED", "CUSTOMER_MANAGED"], # required
    #       created_by: "String", # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #     }
    #   }
    # @return [Types::CreateDomainAccessGrantForOrganizationOutput]
    def create_domain_access_grant_for_organization(params = {}, options = {})
      request = build_request(:create_domain_access_grant_for_organization, params)
      request.send_request(options)
    end

    # Creates an organization-scoped domain for the caller's AWS Organization.
    # Only the organization's management account can call this operation.
    # @param [Hash, Types::CreateDomainForOrganizationInput] params
    # @option params [String] :name
    #   A name that identifies the organization domain. Must be 3-63 characters:
    #   lowercase letters, numbers, and hyphens. It must begin and end with a letter or
    #   number and cannot contain consecutive hyphens.
    # @option params [Array<String>] :identity_providers
    #   The identity providers to configure for the domain.
    # @option params [Types::IdentityProviderConfiguration] :identity_provider_configuration
    #   Identity provider configuration for the domain.
    # @option params [String] :domain_access_role_arn
    #   The ARN of an IAM role in the management account used for domain access. You must
    #   create this role, and its trust policy must allow the service principal to assume it.
    # @option params [Hash<String, String>] :tags
    #   The tags to associate with the domain.
    # @option params [String] :client_token
    #   Idempotency token for safe retries. Repeated requests with the same
    #   token return the original result instead of creating a duplicate.
    # @example Create an organization domain
    #   # The following example creates an organization-scoped domain from the organization's management account, configures it with an Identity Center instance, and supplies an IAM role in the management account for domain access. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     name: "prod-observability-org",
    #     identity_providers: [
    #       IDC
    #     ],
    #     identity_provider_configuration: {
    #       identity_center_configuration: {
    #         identity_center_instance_arn: "arn:aws:sso:::instance/ssoins-1234567890abcdef"
    #       }
    #     },
    #     domain_access_role_arn: "arn:aws:iam::123456789012:role/CloudWatchOrganizationDomainAccessRole",
    #     tags: {
    #       "Team" => "observability"
    #     },
    #     client_token: "3f2a9c1e-7b04-4d8a-9e15-6c2b8d0f4a73"
    #   }
    #   options = {}
    #   response = client.create_domain_for_organization(params, options)
    #   response.to_h #=>
    #   {
    #     organization_domain: {
    #       domain_id: "d-9z8y7x6w5v",
    #       domain_arn: "arn:aws:cloudwatch:us-east-1:123456789012:organization-domain/d-9z8y7x6w5v",
    #       name: "prod-observability-org",
    #       domain_endpoint_url: "https://d-9z8y7x6w5v.cloudwatch-omni.global.app.aws",
    #       custom_endpoint_urls: [
    #         "https://prod-observability-org.cloudwatch-omni.global.app.aws"
    #       ],
    #       organization_id: "o-a1b2c3d4e5",
    #       owner_account_id: "123456789012",
    #       identity_providers: [
    #         IDC
    #       ],
    #       identity_provider_configuration: {
    #         identity_center_configuration: {
    #           identity_center_instance_arn: "arn:aws:sso:::instance/ssoins-1234567890abcdef"
    #         }
    #       },
    #       identity_center_application_arn: "arn:aws:sso::123456789012:application/ssoins-1234567890abcdef/apl-0f9e8d7c6b5a4938",
    #       region: "us-east-1",
    #       status: ACTIVE,
    #       domain_access_role_arn: "arn:aws:iam::123456789012:role/CloudWatchOrganizationDomainAccessRole",
    #       created_at: Time.parse("2026-09-16T14:22:31Z"),
    #       updated_at: Time.parse("2026-09-16T14:22:31Z")
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #     identity_providers: ["IAM" # One of: ["IAM", "IDC"]], # required
    #     identity_provider_configuration: {
    #       identity_center_configuration: {
    #         identity_center_instance_arn: "IdentityCenterInstanceArn"
    #       }
    #     },
    #     domain_access_role_arn: "IamRoleArn", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_domain_for_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     organization_domain: { # required
    #       domain_id: "DomainId", # required
    #       domain_arn: "Arn", # required
    #       name: "String",
    #       domain_endpoint_url: "String", # required
    #       custom_endpoint_urls: ["String"],
    #       organization_id: "String", # required
    #       owner_account_id: "AccountId", # required
    #       identity_providers: ["IAM" # One of: ["IAM", "IDC"]], # required
    #       identity_provider_configuration: {
    #         identity_center_configuration: {
    #           identity_center_instance_arn: "IdentityCenterInstanceArn"
    #         }
    #       },
    #       identity_center_application_arn: "Arn",
    #       region: "String", # required
    #       status: "ACTIVE" # One of: ["ACTIVE"], # required
    #       domain_access_role_arn: "IamRoleArn",
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #     }
    #   }
    # @return [Types::CreateDomainForOrganizationOutput]
    def create_domain_for_organization(params = {}, options = {})
      request = build_request(:create_domain_for_organization, params)
      request.send_request(options)
    end

    # Creates an integration with a third-party provider. Returns the integration
    # identifier and its initial status; when the provider requires interactive
    # consent, an authorization URL is returned for the user to complete setup.
    # @param [Hash, Types::CreateIntegrationInput] params
    # @option params [String] :integration_type
    #   The type of third-party provider to integrate with.
    # @option params [String] :name
    #   The name for the new integration; unique within the account.
    # @option params [Types::IntegrationCredential] :credential
    #   The credential used to authenticate with the third-party provider.
    # @option params [Hash<String, String>] :integration_attributes
    #   Provider-specific attributes to associate with the integration.
    # @option params [String] :role_arn
    #   The Amazon Resource Name of the IAM role assumed to access the integration.
    # @option params [Hash<String, String>] :tags
    #   Tags to apply to the integration at creation time (Tagris tag-on-create).
    # @option params [String] :client_token
    #   Idempotency token for safe retries. Retrying with the same token
    #   returns the original integration instead of creating a duplicate.
    # @example Create an AWS integration
    #   # The following example creates an AWS_INTEGRATION named my-aws-integration, authorized by an IAM role. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     integration_type: AWS_INTEGRATION,
    #     name: "my-aws-integration",
    #     role_arn: "arn:aws:iam::123456789012:role/service-role/CloudWatchIntegrationRole",
    #     client_token: "b3f8c7d6-5b4a-4c3d-9e2f-1a0b2c3d4e5f"
    #   }
    #   options = {}
    #   response = client.create_integration(params, options)
    #   response.to_h #=>
    #   {
    #     integration: {
    #       integration_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #       integration_arn: "arn:aws:cloudwatch:us-east-1:123456789012:integration/a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #       integration_type: AWS_INTEGRATION,
    #       name: "my-aws-integration",
    #       status: ACTIVE,
    #       role_arn: "arn:aws:iam::123456789012:role/service-role/CloudWatchIntegrationRole",
    #       created_at: Time.parse("2026-09-16T00:03:00Z"),
    #       updated_at: Time.parse("2026-09-16T00:03:00Z")
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     integration_type: "AWS_CONFIG_SLREC" # One of: ["AWS_CONFIG_SLREC", "SLACK", "EXTERNAL_AGENT", "AWS_INTEGRATION"], # required
    #     name: "String", # required
    #     credential: {
    #       # One of:
    #       oauth_code_credential: {
    #         auth_code: "String", # required
    #       },
    #       oauth_client_credential: {
    #         client_id: "String", # required
    #         client_secret: "SensitiveString", # required
    #         provider_id: "String"
    #       },
    #       api_key_credential: {
    #         api_key_value: "SensitiveString", # required
    #       }
    #     },
    #     integration_attributes: {
    #       "String" => "String"
    #     },
    #     role_arn: "String",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.create_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     integration: { # required
    #       integration_id: "String", # required
    #       integration_arn: "IntegrationArn",
    #       integration_type: "AWS_CONFIG_SLREC" # One of: ["AWS_CONFIG_SLREC", "SLACK", "EXTERNAL_AGENT", "AWS_INTEGRATION"], # required
    #       name: "String", # required
    #       status: "ACTIVE" # One of: ["ACTIVE", "DELETED", "PENDING", "PENDING_OAUTH", "ERROR", "FAILED"], # required
    #       auth_type: "NONE" # One of: ["NONE", "OAUTH2", "API_KEY"],
    #       credential_arn: "String",
    #       role_arn: "String",
    #       integration_attributes: {
    #         "String" => "String"
    #       },
    #       authorization_url: "String",
    #       error_message: "String",
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       scope: "ACCOUNT" # One of: ["ACCOUNT", "ORGANIZATION"]
    #     }
    #   }
    # @return [Types::CreateIntegrationOutput]
    def create_integration(params = {}, options = {})
      request = build_request(:create_integration, params)
      request.send_request(options)
    end

    # Creates a new dashboard within a space.
    #
    # Use GetOmniDashboard and ListOmniDashboards to retrieve dashboards,
    # UpdateOmniDashboard to modify one, and DeleteOmniDashboard to remove it.
    # @param [Hash, Types::CreateOmniDashboardInput] params
    # @option params [String] :space_id
    #   The unique ID of the space to create the dashboard in.
    # @option params [String] :name
    #   A name that identifies the dashboard.
    # @option params [String] :body
    #   The dashboard definition, as a JSON document. Maximum 1 MiB.
    # @option params [String] :description
    #   An optional description of the dashboard.
    # @option params [Hash<String, String>] :tags
    #   The tags to associate with the dashboard.
    # @option params [String] :client_token
    #   Idempotency token for safe retries. Repeated requests with the same
    #   token return the original result instead of creating a duplicate.
    # @example Create a dashboard
    #   # The following example creates a dashboard in a space from a JSON dashboard definition. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #     name: "service-health-overview",
    #     body: "{\"widgets\":[{\"type\":\"metric\",\"x\":0,\"y\":0,\"width\":12,\"height\":6,\"properties\":{\"metrics\":[[\"AWS/Lambda\",\"Errors\",\"FunctionName\",\"OrderProcessor\"]],\"region\":\"us-east-1\",\"title\":\"Lambda Errors\"}}]}",
    #     description: "Overview of service health metrics.",
    #     tags: {
    #       "Team" => "observability"
    #     },
    #     client_token: "3f2a9c1e-7b04-4d8a-9e15-6c2b8d0f4a73"
    #   }
    #   options = {}
    #   response = client.create_omni_dashboard(params, options)
    #   response.to_h #=>
    #   {
    #     omni_dashboard: {
    #       dashboard_id: "c3d4e5f6-7a8b-4c9d-8e0f-1a2b3c4d5e6f",
    #       arn: "arn:aws:cloudwatch:us-east-1:123456789012:omni-dashboard/c3d4e5f6-7a8b-4c9d-8e0f-1a2b3c4d5e6f",
    #       name: "service-health-overview",
    #       body: "{\"widgets\":[{\"type\":\"metric\",\"x\":0,\"y\":0,\"width\":12,\"height\":6,\"properties\":{\"metrics\":[[\"AWS/Lambda\",\"Errors\",\"FunctionName\",\"OrderProcessor\"]],\"region\":\"us-east-1\",\"title\":\"Lambda Errors\"}}]}",
    #       created_by: "arn:aws:iam::123456789012:role/ObservabilityAdmin",
    #       description: "Overview of service health metrics.",
    #       tags: {
    #         "Team" => "observability"
    #       },
    #       created_at: Time.parse("2026-09-16T14:22:31Z"),
    #       updated_at: Time.parse("2026-09-16T14:22:31Z")
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     space_id: "SpaceId", # required
    #     name: "String", # required
    #     body: "String", # required
    #     description: "String",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_omni_dashboard(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     omni_dashboard: { # required
    #       dashboard_id: "DashboardId", # required
    #       arn: "Arn", # required
    #       name: "String", # required
    #       body: "String", # required
    #       created_by: "String", # required
    #       description: "String",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #     }
    #   }
    # @return [Types::CreateOmniDashboardOutput]
    def create_omni_dashboard(params = {}, options = {})
      request = build_request(:create_omni_dashboard, params)
      request.send_request(options)
    end

    # Generates a one-time code for deep-link authentication.
    #
    # Direct the user's browser to the returned deepLinkUrl before it expires. The code is
    # exchanged for an authenticated, domain-scoped session and can be used only once.
    # @param [Hash, Types::CreateOneTimeDeepLinkCodeInput] params
    # @option params [String] :domain_id
    #   The ID of the domain to generate the code for.
    # @option params [Integer] :ttl_seconds
    #   How long the code remains valid, in seconds. Defaults to 300.
    # @option params [String] :redirect_url
    #   The URL to redirect to after the deep-link code is used. Must be an HTTPS URL in the
    #   domain with a path of /auth/callback, and cannot include a query
    #   string or fragment. If omitted, no redirect is applied.
    # @example Create a one-time deep-link code
    #   # The following example creates a one-time deep-link code for a domain that remains valid for 300 seconds and, once used, redirects the browser to the domain's /auth/callback path. Direct the user's browser to the returned deepLinkUrl before it expires; the code can be used only once. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     domain_id: "d-1a2b3c4d5e",
    #     ttl_seconds: 300,
    #     redirect_url: "https://d-1a2b3c4d5e.cloudwatch-omni.global.app.aws/auth/callback"
    #   }
    #   options = {}
    #   response = client.create_one_time_deep_link_code(params, options)
    #   response.to_h #=>
    #   {
    #     code: "dlc-EXAMPLE1234567890",
    #     deep_link_url: "https://d-1a2b3c4d5e.cloudwatch-omni.global.app.aws/deeplink?code=EXAMPLE1234567890",
    #     expires_at: Time.parse("2026-09-16T14:27:31Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     ttl_seconds: 1,
    #     redirect_url: "String"
    #   }
    #   options = {}
    #   response = client.create_one_time_deep_link_code(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     code: "DeepLinkCode", # required
    #     deep_link_url: "DeepLinkUrl", # required
    #     expires_at: Time.now, # required
    #   }
    # @return [Types::CreateOneTimeDeepLinkCodeOutput]
    def create_one_time_deep_link_code(params = {}, options = {})
      request = build_request(:create_one_time_deep_link_code, params)
      request.send_request(options)
    end

    # Creates a space in a domain.
    #
    # Use GetSpace to retrieve the space, ListSpaces to enumerate spaces,
    # UpdateSpace to modify it, and DeleteSpace to remove it.
    # @param [Hash, Types::CreateSpaceInput] params
    # @option params [String] :name
    #   A name that identifies the space. Must be 3-64 characters: lowercase letters,
    #   numbers, and hyphens. It must begin and end with a letter or number and cannot
    #   contain consecutive hyphens.
    # @option params [String] :domain_id
    #   The ID of the domain to create the space in.
    # @option params [String] :data_access_role_arn
    #   The ARN of the IAM role used for data access. The role must be in the caller's
    #   account.
    # @option params [String] :agent_core_evaluation_role_arn
    #   The ARN of the IAM role used by AgentCore online evaluation. Must be in the
    #   caller's account. Omit if the space does not use AgentCore online evaluation.
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   How to encrypt the space's data at rest. Omit for service owned encryption,
    #   which is equivalent to passing `encryptionStrategy` AWS_OWNED.
    # @option params [Hash<String, String>] :tags
    #   The tags to associate with the space.
    # @option params [String] :client_token
    #   Idempotency token for safe retries. Repeated requests with the same
    #   token return the original result instead of creating a duplicate.
    # @example Create a space
    #   # The following example creates a space in a domain and encrypts its data at rest with a customer managed KMS key. The name must be 3-64 characters of lowercase letters, numbers, and hyphens. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     name: "prod-observability",
    #     domain_id: "d-1a2b3c4d5e",
    #     data_access_role_arn: "arn:aws:iam::123456789012:role/CloudWatchSpaceDataAccessRole",
    #     agent_core_evaluation_role_arn: "arn:aws:iam::123456789012:role/CloudWatchAgentCoreEvaluationRole",
    #     encryption_configuration: {
    #       encryption_strategy: CUSTOMER_MANAGED,
    #       kms_key_arn: "arn:aws:kms:us-east-1:123456789012:key/1a2b3c4d-5e6f-4a3b-8c9d-0e1f2a3b4c5d"
    #     },
    #     tags: {
    #       "Team" => "observability"
    #     },
    #     client_token: "3f2a9c1e-7b04-4d8a-9e15-6c2b8d0f4a73"
    #   }
    #   options = {}
    #   response = client.create_space(params, options)
    #   response.to_h #=>
    #   {
    #     space: {
    #       space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #       name: "prod-observability",
    #       space_arn: "arn:aws:cloudwatch:us-east-1:123456789012:space/a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #       domain_arn: "arn:aws:cloudwatch:us-east-1:123456789012:domain/d-1a2b3c4d5e",
    #       region: "us-east-1",
    #       owner_account_id: "123456789012",
    #       data_access_role_arn: "arn:aws:iam::123456789012:role/CloudWatchSpaceDataAccessRole",
    #       agent_core_evaluation_role_arn: "arn:aws:iam::123456789012:role/CloudWatchAgentCoreEvaluationRole",
    #       created_at: Time.parse("2026-09-16T14:22:31Z"),
    #       updated_at: Time.parse("2026-09-16T14:22:31Z"),
    #       status: ACTIVE,
    #       encryption_configuration: {
    #         encryption_strategy: CUSTOMER_MANAGED,
    #         kms_key_arn: "arn:aws:kms:us-east-1:123456789012:key/1a2b3c4d-5e6f-4a3b-8c9d-0e1f2a3b4c5d"
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #     domain_id: "DomainId", # required
    #     data_access_role_arn: "Arn", # required
    #     agent_core_evaluation_role_arn: "Arn",
    #     encryption_configuration: {
    #       encryption_strategy: "AWS_OWNED" # One of: ["AWS_OWNED", "CUSTOMER_MANAGED"], # required
    #       kms_key_arn: "KmsKeyArn"
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_space(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     space: { # required
    #       space_id: "SpaceId", # required
    #       name: "String", # required
    #       space_arn: "Arn", # required
    #       domain_arn: "Arn",
    #       region: "String", # required
    #       owner_account_id: "AccountId", # required
    #       data_access_role_arn: "Arn", # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       agent_core_evaluation_role_arn: "Arn",
    #       status: "ACTIVE" # One of: ["ACTIVE", "SUSPENDED", "MOVING"], # required
    #       status_reason: "String",
    #       encryption_configuration: {
    #         encryption_strategy: "AWS_OWNED" # One of: ["AWS_OWNED", "CUSTOMER_MANAGED"], # required
    #         kms_key_arn: "KmsKeyArn"
    #       }
    #     }
    #   }
    # @return [Types::CreateSpaceOutput]
    def create_space(params = {}, options = {})
      request = build_request(:create_space, params)
      request.send_request(options)
    end

    # Creates a new SQL view.
    #
    # A view is a named, reusable SQL query that can be referenced from
    # telemetry queries. View names must be unique within the account and
    # region. Only USER views can be created — MANAGED views are provisioned
    # by AWS.
    # @param [Hash, Types::CreateViewRequest] params
    # @option params [String] :name
    #   The name of the view. Must begin with the "view." prefix. View names
    #   must be unique within the account and region.
    # @option params [String] :definition
    #   The SQL query that defines the view.
    # @option params [String] :description
    #   A description of the view.
    # @option params [Hash<String, String>] :tags
    #   Resource tags.
    # @option params [String] :client_token
    #   Idempotency token for safe retries. Retrying with the same token
    #   returns the original view instead of creating a duplicate.
    # @example Create a view
    #   # The following example creates a user view that saves an error-count-by-service query. View names must begin with the view. prefix and be unique within the account and Region. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     name: "view.service_errors",
    #     definition: "SELECT resource['attributes']['service.name'] AS service, COUNT(*) AS error_count FROM \"logs.default\" WHERE severityText = 'ERROR' GROUP BY service",
    #     description: "Error counts by service",
    #     tags: {
    #       "Team" => "observability"
    #     },
    #     client_token: "3f2a9c1e-7b04-4d8a-9e15-6c2b8d0f4a73"
    #   }
    #   options = {}
    #   response = client.create_view(params, options)
    #   response.to_h #=>
    #   {
    #     name: "view.service_errors",
    #     type: USER,
    #     description: "Error counts by service",
    #     definition: "SELECT resource['attributes']['service.name'] AS service, COUNT(*) AS error_count FROM \"logs.default\" WHERE severityText = 'ERROR' GROUP BY service",
    #     created_at: Time.parse("2026-09-16T14:22:31Z"),
    #     updated_at: Time.parse("2026-09-16T14:22:31Z"),
    #     arn: "arn:aws:cloudwatch:us-east-1:123456789012:view/view.service_errors"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ViewName", # required
    #     definition: "ViewDefinition", # required
    #     description: "ViewDescription",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.create_view(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "String", # required
    #     type: "USER" # One of: ["USER", "MANAGED"], # required
    #     description: "String",
    #     definition: "String", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     arn: "String", # required
    #   }
    # @return [Types::CreateViewResponse]
    def create_view(params = {}, options = {})
      request = build_request(:create_view, params)
      request.send_request(options)
    end

    # Removes an existing AccessGrant, revoking the access it granted.
    #
    # A service-managed grant cannot be deleted.
    # @param [Hash, Types::DeleteAccessGrantInput] params
    # @option params [String] :grant_id
    #   The ID of the access grant to delete.
    # @example Delete an access grant
    #   # The following example deletes an access grant by ID, revoking the access it granted. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     grant_id: "7f3e9d21-4c8b-4f6a-b1d2-3e4f5a6b7c8d"
    #   }
    #   options = {}
    #   response = client.delete_access_grant(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     grant_id: "GrantId", # required
    #   }
    #   options = {}
    #   response = client.delete_access_grant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAccessGrantOutput]
    def delete_access_grant(params = {}, options = {})
      request = build_request(:delete_access_grant, params)
      request.send_request(options)
    end

    # Removes an access profile.
    #
    # An access profile cannot be deleted while access grants reference it.
    # @param [Hash, Types::DeleteAccessProfileInput] params
    # @option params [String] :space_id
    #   The unique ID of the space.
    # @option params [String] :profile_id
    #   The unique ID of the access profile to delete.
    # @example Delete an access profile
    #   # The following example deletes an access profile from a space. An access profile cannot be deleted while access grants reference it. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #     profile_id: "analyst-readonly"
    #   }
    #   options = {}
    #   response = client.delete_access_profile(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     space_id: "SpaceId", # required
    #     profile_id: "ProfileId", # required
    #   }
    #   options = {}
    #   response = client.delete_access_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAccessProfileOutput]
    def delete_access_profile(params = {}, options = {})
      request = build_request(:delete_access_profile, params)
      request.send_request(options)
    end

    # Deletes an alert by its identifier.
    #
    # Idempotent: deleting an alert that has already been removed succeeds without error.
    # @param [Hash, Types::DeleteAlertInput] params
    # @option params [String] :space_id
    #   The unique ID of the space.
    # @option params [String] :alert_id
    #   The alert to delete.
    # @example Delete an alert
    #   # The following example removes an alert from a space. Deleting an alert that has already been removed succeeds without error. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #     alert_id: "c3d4e5f67a8b4c9d8e0f1a2b3c4d5e6f"
    #   }
    #   options = {}
    #   response = client.delete_alert(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     space_id: "SpaceId", # required
    #     alert_id: "AlertId", # required
    #   }
    #   options = {}
    #   response = client.delete_alert(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAlertOutput]
    def delete_alert(params = {}, options = {})
      request = build_request(:delete_alert, params)
      request.send_request(options)
    end

    # Removes a domain and all of its resources. Call this operation in the Region
    # where the domain was created.
    #
    # A domain cannot be deleted while it contains spaces.
    # @param [Hash, Types::DeleteDomainInput] params
    # @option params [String] :domain_id
    #   The unique ID of the domain to delete.
    # @example Delete a domain
    #   # The following example deletes a domain in the Region where it was created. The domain must not contain any spaces. A successful response returns an empty body. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     domain_id: "d-1a2b3c4d5e"
    #   }
    #   options = {}
    #   response = client.delete_domain(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #   }
    #   options = {}
    #   response = client.delete_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteDomainOutput]
    def delete_domain(params = {}, options = {})
      request = build_request(:delete_domain, params)
      request.send_request(options)
    end

    # Removes an existing organization access grant, revoking the access it
    # granted.
    #
    # A service-managed grant cannot be deleted.
    # @param [Hash, Types::DeleteDomainAccessGrantForOrganizationInput] params
    # @option params [String] :grant_id
    #   The ID of the access grant to delete.
    # @example Delete an organization domain access grant
    #   # The following example deletes an organization domain access grant by ID, revoking the access it granted. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     grant_id: "7f3e9d21-4c8b-4f6a-b1d2-3e4f5a6b7c8d"
    #   }
    #   options = {}
    #   response = client.delete_domain_access_grant_for_organization(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     grant_id: "GrantId", # required
    #   }
    #   options = {}
    #   response = client.delete_domain_access_grant_for_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteDomainAccessGrantForOrganizationOutput]
    def delete_domain_access_grant_for_organization(params = {}, options = {})
      request = build_request(:delete_domain_access_grant_for_organization, params)
      request.send_request(options)
    end

    # Removes an organization domain and all of its resources. Call this operation in the
    # Region where the domain was created.
    #
    # A domain cannot be deleted while it contains spaces.
    # @param [Hash, Types::DeleteDomainForOrganizationInput] params
    # @option params [String] :domain_id
    #   The ID of the organization domain to delete.
    # @example Delete an organization domain
    #   # The following example deletes an organization domain in the Region where it was created. The domain must not contain any spaces. A successful response returns an empty body. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     domain_id: "d-9z8y7x6w5v"
    #   }
    #   options = {}
    #   response = client.delete_domain_for_organization(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #   }
    #   options = {}
    #   response = client.delete_domain_for_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteDomainForOrganizationOutput]
    def delete_domain_for_organization(params = {}, options = {})
      request = build_request(:delete_domain_for_organization, params)
      request.send_request(options)
    end

    # Deletes an integration. Returns the resulting status.
    # @param [Hash, Types::DeleteIntegrationInput] params
    # @option params [Types::IntegrationIdentifier] :identifier
    #   Identifies the integration to delete — exactly one of integrationId,
    #   integrationArn, or integrationName.
    # @example Delete an integration by id
    #   # The following example deletes the integration identified by its id. DeleteIntegration is idempotent and returns an empty response. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     identifier: {
    #     "integrationId" => a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d
    #   }
    #   }
    #   options = {}
    #   response = client.delete_integration(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: { # required
    #       # One of:
    #       integration_id: "String",
    #       integration_arn: "IntegrationArn",
    #       integration_name: "String"
    #     }
    #   }
    #   options = {}
    #   response = client.delete_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteIntegrationOutput]
    def delete_integration(params = {}, options = {})
      request = build_request(:delete_integration, params)
      request.send_request(options)
    end

    # Removes a dashboard from a space.
    # @param [Hash, Types::DeleteOmniDashboardInput] params
    # @option params [String] :space_id
    #   The unique ID of the space.
    # @option params [String] :dashboard_id
    #   The unique ID of the dashboard.
    # @example Delete a dashboard
    #   # The following example removes a dashboard from a space. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #     dashboard_id: "c3d4e5f6-7a8b-4c9d-8e0f-1a2b3c4d5e6f"
    #   }
    #   options = {}
    #   response = client.delete_omni_dashboard(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     space_id: "SpaceId", # required
    #     dashboard_id: "DashboardId", # required
    #   }
    #   options = {}
    #   response = client.delete_omni_dashboard(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteOmniDashboardOutput]
    def delete_omni_dashboard(params = {}, options = {})
      request = build_request(:delete_omni_dashboard, params)
      request.send_request(options)
    end

    # Removes a space and all of its resources.
    # @param [Hash, Types::DeleteSpaceInput] params
    # @option params [String] :space_id
    #   The unique ID of the space to delete.
    # @example Delete a space
    #   # The following example removes a space and all of its resources. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d"
    #   }
    #   options = {}
    #   response = client.delete_space(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     space_id: "SpaceId", # required
    #   }
    #   options = {}
    #   response = client.delete_space(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteSpaceOutput]
    def delete_space(params = {}, options = {})
      request = build_request(:delete_space, params)
      request.send_request(options)
    end

    # Deletes the specified view.
    #
    # Queries that reference the view fail after it is deleted. Managed views
    # cannot be deleted.
    # @param [Hash, Types::DeleteViewRequest] params
    # @option params [String] :name
    #   The name of the view to delete.
    # @example Delete a view
    #   # The following example deletes a view. The response body is empty. Queries that reference the view fail after it is deleted. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     name: "view.service_errors"
    #   }
    #   options = {}
    #   response = client.delete_view(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ViewName", # required
    #   }
    #   options = {}
    #   response = client.delete_view(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteViewResponse]
    def delete_view(params = {}, options = {})
      request = build_request(:delete_view, params)
      request.send_request(options)
    end

    # Retrieves the full detail of a single AccessGrant by ID.
    # @param [Hash, Types::GetAccessGrantInput] params
    # @option params [String] :grant_id
    #   The ID of the access grant to retrieve.
    # @example Get an access grant
    #   # The following example retrieves the full detail of a single access grant by ID. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     grant_id: "7f3e9d21-4c8b-4f6a-b1d2-3e4f5a6b7c8d"
    #   }
    #   options = {}
    #   response = client.get_access_grant(params, options)
    #   response.to_h #=>
    #   {
    #     access_grant: {
    #       grant_id: "7f3e9d21-4c8b-4f6a-b1d2-3e4f5a6b7c8d",
    #       grant_arn: "arn:aws:cloudwatch:us-east-1:123456789012:access-grant/7f3e9d21-4c8b-4f6a-b1d2-3e4f5a6b7c8d",
    #       name: "analyst-read-access",
    #       account_id: "123456789012",
    #       domain_id: "d-1a2b3c4d5e",
    #       principal: {
    #         principal_type: IDC_USER,
    #         principal_id: "94b6c7d8-1a2b-4c3d-9e4f-5a6b7c8d9e0f"
    #       },
    #       permission: CUSTOM,
    #       grant_type: CUSTOMER_MANAGED,
    #       created_by: "arn:aws:iam::123456789012:role/ObservabilityAdmin",
    #       created_at: Time.parse("2026-09-16T14:22:31Z"),
    #       updated_at: Time.parse("2026-09-16T14:22:31Z"),
    #       space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #       scoped_actions: [
    #         {
    #           actions: [
    #             "cloudwatch:GetOmniDashboard",
    #             "cloudwatch:UpdateOmniDashboard"
    #           ],
    #           resources: [
    #             {
    #               resource_type: "OmniDashboard",
    #               resource_arns: [
    #                 "arn:aws:cloudwatch:us-east-1:123456789012:omni-dashboard/c3d4e5f6-7a8b-4c9d-8e0f-1a2b3c4d5e6f"
    #               ]
    #             }
    #           ]
    #         }
    #       ]
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     grant_id: "GrantId", # required
    #   }
    #   options = {}
    #   response = client.get_access_grant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_grant: { # required
    #       grant_id: "GrantId", # required
    #       grant_arn: "Arn", # required
    #       name: "String",
    #       account_id: "AccountId", # required
    #       domain_id: "DomainId", # required
    #       principal: { # required
    #         principal_type: "IDC_USER" # One of: ["IDC_USER", "IDC_GROUP", "IAM_USER", "IAM_ROLE", "IAM_ROOT", "ACCESS_PROFILE", "ALERT", "AGENT"], # required
    #         principal_id: "PrincipalId",
    #         principal_attributes: [
    #           {
    #             key: "String", # required
    #             value: "String", # required
    #           }
    #         ]
    #       },
    #       permission: "SPACE_ADMIN" # One of: ["SPACE_ADMIN", "READ", "READ_WRITE_DELETE", "CUSTOM"], # required
    #       grant_type: "SERVICE_MANAGED" # One of: ["SERVICE_MANAGED", "CUSTOMER_MANAGED"], # required
    #       created_by: "String", # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       space_id: "SpaceId", # required
    #       scoped_actions: [
    #         {
    #           actions: ["ScopedActionName"], # required
    #           resources: [
    #             {
    #               resource_type: "String", # required
    #               resource_arns: ["String"],
    #               tags: {
    #                 "String" => "String"
    #               },
    #               signal_types: ["LOGS" # One of: ["LOGS", "TRACES"]],
    #               row_scope_groups: [
    #                 [
    #                   {
    #                     field: "String", # required
    #                     operator: "IN" # One of: ["IN"], # required
    #                     values: ["RowScopeValue"], # required
    #                   }
    #                 ]
    #               ]
    #             }
    #           ],
    #           context_conditions: {
    #             "String" => ["String"]
    #           }
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetAccessGrantOutput]
    def get_access_grant(params = {}, options = {})
      request = build_request(:get_access_grant, params)
      request.send_request(options)
    end

    # Retrieves an access profile by ID.
    #
    # The response indicates whether the calling principal is currently allowed to
    # assume the profile.
    # @param [Hash, Types::GetAccessProfileInput] params
    # @option params [String] :space_id
    #   The unique ID of the space.
    # @option params [String] :profile_id
    #   The unique ID of the access profile.
    # @example Get an access profile
    #   # The following example retrieves an access profile by ID, including whether the calling principal is currently allowed to assume it. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #     profile_id: "analyst-readonly"
    #   }
    #   options = {}
    #   response = client.get_access_profile(params, options)
    #   response.to_h #=>
    #   {
    #     access_profile: {
    #       profile_id: "analyst-readonly",
    #       space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #       arn: "arn:aws:cloudwatch:us-east-1:123456789012:access-profile/analyst-readonly",
    #       name: "Analyst read-only profile",
    #       description: "Read-only access for analysts.",
    #       created_at: Time.parse("2026-09-16T14:22:31Z"),
    #       updated_at: Time.parse("2026-09-16T14:22:31Z"),
    #       assume_status: ALLOWED,
    #       profile_type: CUSTOMER_MANAGED
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     space_id: "SpaceId", # required
    #     profile_id: "ProfileId", # required
    #   }
    #   options = {}
    #   response = client.get_access_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_profile: { # required
    #       profile_id: "ProfileId", # required
    #       space_id: "SpaceId", # required
    #       arn: "Arn", # required
    #       name: "String", # required
    #       description: "String",
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       assume_status: "ALLOWED" # One of: ["ALLOWED", "DENIED"],
    #       profile_type: "SERVICE_MANAGED" # One of: ["SERVICE_MANAGED", "CUSTOMER_MANAGED"]
    #     }
    #   }
    # @return [Types::GetAccessProfileOutput]
    def get_access_profile(params = {}, options = {})
      request = build_request(:get_access_profile, params)
      request.send_request(options)
    end

    # Retrieves a single alert by its identifier.
    #
    # Use ListAlerts to enumerate alerts in the space.
    # @param [Hash, Types::GetAlertInput] params
    # @option params [String] :space_id
    #   The unique ID of the space.
    # @option params [String] :alert_id
    #   The alert to retrieve.
    # @example Retrieve an alert
    #   # The following example retrieves an alert by its identifier, including the live evaluation state that CreateAlert does not report. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #     alert_id: "c3d4e5f67a8b4c9d8e0f1a2b3c4d5e6f"
    #   }
    #   options = {}
    #   response = client.get_alert(params, options)
    #   response.to_h #=>
    #   {
    #     alert: {
    #       name: "service-error-count-elevated",
    #       alert_id: "c3d4e5f67a8b4c9d8e0f1a2b3c4d5e6f",
    #       description: "Alerts when a service logs more errors than its accepted rate.",
    #       account_id: "123456789012",
    #       space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #       profile_id: "analyst-readonly",
    #       rule: {
    #     "telemetryRule" => {
    #       "query" => {
    #         "language" => SQL,
    #         "expression" => SELECT resource['attributes']['service.name'] AS service, COUNT(*) AS error_count FROM "logs.default" WHERE severityText = 'ERROR' GROUP BY service
    #       },
    #       "condition" => {
    #         "thresholdMode" => FIELD_VALUE,
    #         "thresholdField" => error_count,
    #         "comparator" => GT,
    #         "warningThreshold" => 50.0,
    #         "criticalThreshold" => 200.0
    #       },
    #       "evaluation" => {
    #         "intervalSeconds" => 300,
    #         "pendingDurationSeconds" => 600,
    #         "recoveryDurationSeconds" => 300
    #       },
    #       "noData" => {
    #         "treatAs" => NODATA
    #       }
    #     }
    #   },
    #       notification_status: ENABLED,
    #       state: {
    #         value: CRITICAL,
    #         transitioned_at: Time.parse("2026-09-17T09:11:52Z"),
    #         contributor_summary: {
    #           warning_count: 3,
    #           critical_count: 1
    #         }
    #       },
    #       notification_rules: [
    #         {
    #           trigger: {
    #             state_values: [
    #               CRITICAL
    #             ]
    #           },
    #           target: {
    #             type: slack,
    #             arn: "arn:aws:cloudwatch:us-east-1:123456789012:integration/a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #             metadata: {
    #               "channel" => "oncall-alerts"
    #             }
    #           }
    #         }
    #       ],
    #       created_at: Time.parse("2026-09-16T14:22:31Z"),
    #       updated_at: Time.parse("2026-09-17T09:11:52Z"),
    #       alert_arn: "arn:aws:cloudwatch:us-east-1:123456789012:alert/c3d4e5f67a8b4c9d8e0f1a2b3c4d5e6f"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     space_id: "SpaceId", # required
    #     alert_id: "AlertId", # required
    #   }
    #   options = {}
    #   response = client.get_alert(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     alert: { # required
    #       name: "String", # required
    #       alert_id: "AlertId",
    #       description: "String",
    #       account_id: "AccountId", # required
    #       space_id: "SpaceId",
    #       profile_id: "ProfileId",
    #       rule: { # required
    #         # One of:
    #         telemetry_rule: {
    #           query: {
    #             language: "SQL" # One of: ["SQL", "PROMQL"], # required
    #             expression: "String", # required
    #           },
    #           condition: {
    #             threshold_mode: "COUNT_OF_RESULTS" # One of: ["COUNT_OF_RESULTS", "FIELD_VALUE"],
    #             threshold_field: "String",
    #             comparator: "GT" # One of: ["GT", "LT", "GTE", "LTE"],
    #             warning_threshold: 1.0,
    #             critical_threshold: 1.0
    #           },
    #           evaluation: {
    #             interval_seconds: 1, # required
    #             pending_duration_seconds: 1,
    #             recovery_duration_seconds: 1
    #           },
    #           no_data: {
    #             treat_as: "OK" # One of: ["OK", "WARNING", "CRITICAL", "NODATA"], # required
    #           }
    #         }
    #       },
    #       notification_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       state: {
    #         value: "OK" # One of: ["OK", "WARNING", "CRITICAL", "NODATA"], # required
    #         transitioned_at: Time.now,
    #         contributor_summary: {
    #           warning_count: 1,
    #           critical_count: 1
    #         },
    #         data: {
    #           threshold_breached: 1.0
    #         }
    #       },
    #       notification_rules: [
    #         {
    #           trigger: { # required
    #             state_values: ["OK" # One of: ["OK", "WARNING", "CRITICAL", "NODATA"]]
    #           },
    #           target: { # required
    #             type: "sns" # One of: ["sns", "slack", "pagerduty"], # required
    #             arn: "Arn", # required
    #             metadata: {
    #               "String" => "String"
    #             }
    #           }
    #         }
    #       ],
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       alert_arn: "Arn", # required
    #     }
    #   }
    # @return [Types::GetAlertOutput]
    def get_alert(params = {}, options = {})
      request = build_request(:get_alert, params)
      request.send_request(options)
    end

    # Queries the context graph with filtering, traversal, and pagination support.
    #
    # Pagination note: nodes and edges are returned together as a coherent
    # subgraph. Pagination cursors advance over nodes (the primary collection);
    # each page includes all edges connecting nodes within that page. Callers
    # should treat nodes as the paginated collection and edges as supplementary
    # relationship data attached to those nodes.
    # @param [Hash, Types::GetContextGraphInput] params
    # @option params [Types::NodeFilters] :node_filters
    #   Criteria restricting which nodes are returned.
    # @option params [Types::EdgeFilters] :edge_filters
    #   Criteria restricting which edges are returned.
    # @option params [Time] :start_time
    #   Start of the time range (UTC), inclusive.
    # @option params [Time] :end_time
    #   End of the time range (UTC), inclusive.
    # @option params [Integer] :depth
    #   How many hops to traverse out from the nodes matched by nodeFilters. 0 returns
    #   only the matched nodes themselves.
    # @option params [Integer] :max_results
    #   The maximum number of nodes to return in a single page.
    # @option params [Integer] :max_edges_per_node
    #   The maximum number of edges to return per node, bounding the fan-out of a
    #   densely connected node.
    # @option params [Boolean] :include_metadata
    #   Whether to return the metadata block, semantics included, on each node and
    #   edge. Off by default because it costs an extra lookup per returned node.
    # @option params [String] :next_token
    #   Pagination token from a previous response, to retrieve the next page.
    # @example Query a service and its immediate dependencies
    #   # The following example returns context graph nodes matching the filter and traverses one hop out to their direct dependencies, over a one-hour window. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     node_filters: {
    #       node_type: SERVICE,
    #       namespace: [
    #         "ecommerce"
    #       ]
    #     },
    #     start_time: Time.parse("2026-09-16T00:00:00Z"),
    #     end_time: Time.parse("2026-09-16T01:00:00Z"),
    #     depth: 1,
    #     max_results: 100,
    #     include_metadata: false
    #   }
    #   options = {}
    #   response = client.get_context_graph(params, options)
    #   response.to_h #=>
    #   {
    #     nodes: [
    #       {
    #         node_id: "svc:checkout-service",
    #         node_type: SERVICE,
    #         name: "checkout-service",
    #         node_properties: {
    #           region: "us-east-1",
    #           cloud_provider: "aws",
    #           source_account_id: "123456789012",
    #           namespace: "ecommerce"
    #         },
    #         signal_types: [
    #           TRACES
    #         ],
    #         sources: [
    #           TELEMETRY
    #         ],
    #         first_observed_at: Time.parse("2026-09-16T00:03:00Z"),
    #         last_observed_at: Time.parse("2026-09-16T00:58:00Z"),
    #         edges: [
    #           {
    #             edge_id: "edge:checkout-service->payments-service",
    #             from: "svc:checkout-service",
    #             to: "svc:payments-service",
    #             edge_type: CALLS,
    #             operations: [
    #               "POST /charges"
    #             ],
    #             signal_types: [
    #               TRACES
    #             ],
    #             sources: [
    #               TELEMETRY
    #             ],
    #             first_observed_at: Time.parse("2026-09-16T00:03:00Z"),
    #             last_observed_at: Time.parse("2026-09-16T00:58:00Z")
    #           }
    #         ]
    #       },
    #       {
    #         node_id: "svc:payments-service",
    #         node_type: SERVICE,
    #         name: "payments-service",
    #         node_properties: {
    #           region: "us-east-1",
    #           cloud_provider: "aws",
    #           source_account_id: "123456789012",
    #           namespace: "ecommerce"
    #         },
    #         signal_types: [
    #           TRACES
    #         ],
    #         sources: [
    #           TELEMETRY
    #         ],
    #         first_observed_at: Time.parse("2026-09-16T00:01:00Z"),
    #         last_observed_at: Time.parse("2026-09-16T00:59:00Z")
    #       }
    #     ],
    #     next_token: "eyJvZmZzZXQiOjEwMH0="
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     node_filters: {
    #       node_id: "ContextGraphId",
    #       node_type: "SERVICE" # One of: ["SERVICE", "RESOURCE", "REMOTE_SERVICE"],
    #       name: "ContextGraphName",
    #       tags: [
    #         {
    #           key: "KeyFilterKey", # required
    #           values: ["KeyFilterValue"]
    #         }
    #       ],
    #       telemetry_attributes: [
    #         {
    #           key: "KeyFilterKey", # required
    #           values: ["KeyFilterValue"]
    #         }
    #       ],
    #       region: ["String"],
    #       cloud_provider: ["String"],
    #       source_account_id: ["String"],
    #       namespace: ["String"],
    #       category: ["GEN_AI_AGENT" # One of: ["GEN_AI_AGENT", "GEN_AI_MODEL", "DATABASE", "MESSAGING_QUEUE", "COMPUTE", "STORAGE", "NETWORK"]],
    #       stage: ["String"],
    #       sources: ["VPC_FLOW_LOG" # One of: ["VPC_FLOW_LOG", "CLOUDTRAIL", "IAM_POLICY", "CODE_SEMANTICS", "TELEMETRY", "AZURE_VNET_FLOW_LOG", "ELB_ACCESS_LOG", "CLOUDFRONT_ACCESS_LOG", "S3_ACCESS_LOG", "WAF_ACCESS_LOG", "AWS_INTEGRATION", "CONFIG"]]
    #     },
    #     edge_filters: {
    #       edge_id: "ContextGraphId",
    #       from: "ContextGraphId",
    #       to: "ContextGraphId",
    #       edge_type: "CALLS" # One of: ["CALLS", "ACCESSES", "RUNS_ON"],
    #       operations: ["String"],
    #       telemetry_attributes: [
    #         {
    #           key: "KeyFilterKey", # required
    #           values: ["KeyFilterValue"]
    #         }
    #       ],
    #       sources: ["VPC_FLOW_LOG" # One of: ["VPC_FLOW_LOG", "CLOUDTRAIL", "IAM_POLICY", "CODE_SEMANTICS", "TELEMETRY", "AZURE_VNET_FLOW_LOG", "ELB_ACCESS_LOG", "CLOUDFRONT_ACCESS_LOG", "S3_ACCESS_LOG", "WAF_ACCESS_LOG", "AWS_INTEGRATION", "CONFIG"]]
    #     },
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     depth: 1,
    #     max_results: 1,
    #     max_edges_per_node: 1,
    #     include_metadata: false,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.get_context_graph(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     nodes: [ # required
    #       {
    #         node_id: "ContextGraphId",
    #         node_type: "SERVICE" # One of: ["SERVICE", "RESOURCE", "REMOTE_SERVICE"],
    #         name: "ContextGraphName",
    #         alternate_names: ["String"],
    #         tags: {
    #           "String" => "String"
    #         },
    #         node_properties: {
    #           region: "String",
    #           cloud_provider: "String",
    #           source_account_id: "String",
    #           namespace: "String",
    #           category: "GEN_AI_AGENT" # One of: ["GEN_AI_AGENT", "GEN_AI_MODEL", "DATABASE", "MESSAGING_QUEUE", "COMPUTE", "STORAGE", "NETWORK"],
    #           stage: "String"
    #         },
    #         telemetry_attributes: {
    #           "String" => "String"
    #         },
    #         operation_details: {
    #           "OperationName" => [
    #             {
    #               "OperationIdentifierKey" => "OperationIdentifierValue"
    #             }
    #           ]
    #         },
    #         signal_types: ["LOGS" # One of: ["LOGS", "METRICS", "TRACES", "CONFIG", "UNKNOWN"]],
    #         sources: ["VPC_FLOW_LOG" # One of: ["VPC_FLOW_LOG", "CLOUDTRAIL", "IAM_POLICY", "CODE_SEMANTICS", "TELEMETRY", "AZURE_VNET_FLOW_LOG", "ELB_ACCESS_LOG", "CLOUDFRONT_ACCESS_LOG", "S3_ACCESS_LOG", "WAF_ACCESS_LOG", "AWS_INTEGRATION", "CONFIG"]],
    #         metadata: {
    #           metrics: [
    #             {
    #               name: "String",
    #               preferred_stat: "String",
    #               metric_type: "String",
    #               attributes: {
    #                 "String" => "String"
    #               },
    #               semantics: {
    #                 description: "String",
    #                 unit: "String"
    #               }
    #             }
    #           ],
    #           semantics: {
    #             purpose: "String",
    #             language: "String",
    #             framework: "String",
    #             kind: "String",
    #             repository: "String"
    #           },
    #           logs: [
    #             {
    #               attributes: {
    #                 "String" => "String"
    #               }
    #             }
    #           ],
    #           traces: [
    #             {
    #               attributes: {
    #                 "String" => "String"
    #               }
    #             }
    #           ]
    #         },
    #         first_observed_at: Time.now,
    #         last_observed_at: Time.now,
    #         edges: [
    #           {
    #             edge_id: "ContextGraphId",
    #             from: "ContextGraphId",
    #             to: "ContextGraphId",
    #             edge_type: "CALLS" # One of: ["CALLS", "ACCESSES", "RUNS_ON"],
    #             operations: ["String"],
    #             edge_properties: {
    #               protocol: "String",
    #               source_port: "String",
    #               destination_port: "String",
    #               blocked: false,
    #               error_code: "String",
    #               http_status_code: "String",
    #               http_method: "String",
    #               service_initiated: false,
    #               traffic_stats: {
    #                 bytes: 1,
    #                 packets: 1,
    #                 flows: 1,
    #                 sent_bytes: 1,
    #                 received_bytes: 1
    #               }
    #             },
    #             telemetry_attributes: {
    #               "String" => "String"
    #             },
    #             signal_types: ["LOGS" # One of: ["LOGS", "METRICS", "TRACES", "CONFIG", "UNKNOWN"]],
    #             sources: ["VPC_FLOW_LOG" # One of: ["VPC_FLOW_LOG", "CLOUDTRAIL", "IAM_POLICY", "CODE_SEMANTICS", "TELEMETRY", "AZURE_VNET_FLOW_LOG", "ELB_ACCESS_LOG", "CLOUDFRONT_ACCESS_LOG", "S3_ACCESS_LOG", "WAF_ACCESS_LOG", "AWS_INTEGRATION", "CONFIG"]],
    #             metadata: {
    #               metrics: [
    #                 {
    #                   name: "String",
    #                   preferred_stat: "String",
    #                   metric_type: "String",
    #                   attributes: {
    #                     "String" => "String"
    #                   },
    #                   semantics: {
    #                     description: "String",
    #                     unit: "String"
    #                   }
    #                 }
    #               ],
    #               semantics: {
    #                 purpose: "String",
    #                 language: "String",
    #                 framework: "String",
    #                 kind: "String",
    #                 repository: "String"
    #               },
    #               logs: [
    #                 {
    #                   attributes: {
    #                     "String" => "String"
    #                   }
    #                 }
    #               ],
    #               traces: [
    #                 {
    #                   attributes: {
    #                     "String" => "String"
    #                   }
    #                 }
    #               ]
    #             },
    #             first_observed_at: Time.now,
    #             last_observed_at: Time.now
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::GetContextGraphOutput]
    def get_context_graph(params = {}, options = {})
      request = build_request(:get_context_graph, params)
      request.send_request(options)
    end

    # Retrieves the details of a domain by ID.
    # @param [Hash, Types::GetDomainInput] params
    # @option params [String] :domain_id
    #   The unique ID of the domain.
    # @example Get a domain
    #   # The following example retrieves the configuration and status of an Identity Center domain by its ID. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     domain_id: "d-1a2b3c4d5e"
    #   }
    #   options = {}
    #   response = client.get_domain(params, options)
    #   response.to_h #=>
    #   {
    #     domain: {
    #       domain_id: "d-1a2b3c4d5e",
    #       domain_arn: "arn:aws:cloudwatch:us-east-1:123456789012:domain/d-1a2b3c4d5e",
    #       name: "prod-observability",
    #       identity_providers: [
    #         IDC
    #       ],
    #       identity_provider_configuration: {
    #         identity_center_configuration: {
    #           identity_center_instance_arn: "arn:aws:sso:::instance/ssoins-1234567890abcdef"
    #         }
    #       },
    #       domain_endpoint_url: "https://d-1a2b3c4d5e.cloudwatch-omni.global.app.aws",
    #       custom_endpoint_urls: [
    #         "https://prod-observability.cloudwatch-omni.global.app.aws"
    #       ],
    #       identity_center_application_arn: "arn:aws:sso::123456789012:application/ssoins-1234567890abcdef/apl-0f9e8d7c6b5a4938",
    #       region: "us-east-1",
    #       created_at: Time.parse("2026-09-16T14:22:31Z"),
    #       updated_at: Time.parse("2026-09-16T14:22:31Z"),
    #       status: ACTIVE
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #   }
    #   options = {}
    #   response = client.get_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain: { # required
    #       domain_id: "DomainId", # required
    #       domain_arn: "Arn", # required
    #       name: "String",
    #       identity_providers: ["IAM" # One of: ["IAM", "IDC"]], # required
    #       identity_provider_configuration: {
    #         identity_center_configuration: {
    #           identity_center_instance_arn: "IdentityCenterInstanceArn"
    #         }
    #       },
    #       domain_endpoint_url: "String", # required
    #       custom_endpoint_urls: ["String"],
    #       identity_center_application_arn: "Arn",
    #       region: "String", # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       status: "ACTIVE" # One of: ["ACTIVE"], # required
    #     }
    #   }
    # @return [Types::GetDomainOutput]
    def get_domain(params = {}, options = {})
      request = build_request(:get_domain, params)
      request.send_request(options)
    end

    # Retrieves the full detail of a single organization access grant by ID.
    # @param [Hash, Types::GetDomainAccessGrantForOrganizationInput] params
    # @option params [String] :grant_id
    #   The ID of the access grant to retrieve.
    # @example Get an organization domain access grant
    #   # The following example retrieves the full detail of a single organization domain access grant by ID. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     grant_id: "7f3e9d21-4c8b-4f6a-b1d2-3e4f5a6b7c8d"
    #   }
    #   options = {}
    #   response = client.get_domain_access_grant_for_organization(params, options)
    #   response.to_h #=>
    #   {
    #     access_grant: {
    #       grant_id: "7f3e9d21-4c8b-4f6a-b1d2-3e4f5a6b7c8d",
    #       grant_arn: "arn:aws:cloudwatch:us-east-1:123456789012:organization-access-grant/7f3e9d21-4c8b-4f6a-b1d2-3e4f5a6b7c8d",
    #       name: "org-domain-admin",
    #       domain_id: "d-1a2b3c4d5e",
    #       principal: {
    #         principal_type: IDC_USER,
    #         principal_id: "94b6c7d8-1a2b-4c3d-9e4f-5a6b7c8d9e0f"
    #       },
    #       permission: ADMIN,
    #       grant_type: CUSTOMER_MANAGED,
    #       created_by: "arn:aws:iam::123456789012:role/ObservabilityAdmin",
    #       created_at: Time.parse("2026-09-16T14:22:31Z"),
    #       updated_at: Time.parse("2026-09-16T14:22:31Z")
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     grant_id: "GrantId", # required
    #   }
    #   options = {}
    #   response = client.get_domain_access_grant_for_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_grant: { # required
    #       grant_id: "GrantId", # required
    #       grant_arn: "Arn", # required
    #       name: "String",
    #       domain_id: "DomainId", # required
    #       principal: { # required
    #         principal_type: "IDC_USER" # One of: ["IDC_USER", "IDC_GROUP", "IAM_USER", "IAM_ROLE", "IAM_ROOT"], # required
    #         principal_id: "OrganizationPrincipalId",
    #         principal_attributes: [
    #           {
    #             key: "String", # required
    #             value: "String", # required
    #           }
    #         ]
    #       },
    #       permission: "ADMIN" # One of: ["ADMIN"], # required
    #       grant_type: "SERVICE_MANAGED" # One of: ["SERVICE_MANAGED", "CUSTOMER_MANAGED"], # required
    #       created_by: "String", # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #     }
    #   }
    # @return [Types::GetDomainAccessGrantForOrganizationOutput]
    def get_domain_access_grant_for_organization(params = {}, options = {})
      request = build_request(:get_domain_access_grant_for_organization, params)
      request.send_request(options)
    end

    # Retrieves the details of an organization domain by ID.
    # @param [Hash, Types::GetDomainForOrganizationInput] params
    # @option params [String] :domain_id
    #   The ID of the organization domain.
    # @example Get an organization domain
    #   # The following example retrieves the configuration and status of an organization-scoped domain by its ID. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     domain_id: "d-9z8y7x6w5v"
    #   }
    #   options = {}
    #   response = client.get_domain_for_organization(params, options)
    #   response.to_h #=>
    #   {
    #     organization_domain: {
    #       domain_id: "d-9z8y7x6w5v",
    #       domain_arn: "arn:aws:cloudwatch:us-east-1:123456789012:organization-domain/d-9z8y7x6w5v",
    #       name: "prod-observability-org",
    #       domain_endpoint_url: "https://d-9z8y7x6w5v.cloudwatch-omni.global.app.aws",
    #       custom_endpoint_urls: [
    #         "https://prod-observability-org.cloudwatch-omni.global.app.aws"
    #       ],
    #       organization_id: "o-a1b2c3d4e5",
    #       owner_account_id: "123456789012",
    #       identity_providers: [
    #         IDC
    #       ],
    #       identity_provider_configuration: {
    #         identity_center_configuration: {
    #           identity_center_instance_arn: "arn:aws:sso:::instance/ssoins-1234567890abcdef"
    #         }
    #       },
    #       identity_center_application_arn: "arn:aws:sso::123456789012:application/ssoins-1234567890abcdef/apl-0f9e8d7c6b5a4938",
    #       region: "us-east-1",
    #       status: ACTIVE,
    #       domain_access_role_arn: "arn:aws:iam::123456789012:role/CloudWatchOrganizationDomainAccessRole",
    #       created_at: Time.parse("2026-09-16T14:22:31Z"),
    #       updated_at: Time.parse("2026-09-16T14:22:31Z")
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #   }
    #   options = {}
    #   response = client.get_domain_for_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     organization_domain: { # required
    #       domain_id: "DomainId", # required
    #       domain_arn: "Arn", # required
    #       name: "String",
    #       domain_endpoint_url: "String", # required
    #       custom_endpoint_urls: ["String"],
    #       organization_id: "String", # required
    #       owner_account_id: "AccountId", # required
    #       identity_providers: ["IAM" # One of: ["IAM", "IDC"]], # required
    #       identity_provider_configuration: {
    #         identity_center_configuration: {
    #           identity_center_instance_arn: "IdentityCenterInstanceArn"
    #         }
    #       },
    #       identity_center_application_arn: "Arn",
    #       region: "String", # required
    #       status: "ACTIVE" # One of: ["ACTIVE"], # required
    #       domain_access_role_arn: "IamRoleArn",
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #     }
    #   }
    # @return [Types::GetDomainForOrganizationOutput]
    def get_domain_for_organization(params = {}, options = {})
      request = build_request(:get_domain_for_organization, params)
      request.send_request(options)
    end

    # Returns the details of a single integration, identified by its identifier,
    # Amazon Resource Name, or name.
    # @param [Hash, Types::GetIntegrationInput] params
    # @option params [Types::IntegrationIdentifier] :identifier
    #   Identifies the integration to return — exactly one of integrationId,
    #   integrationArn, or integrationName.
    # @example Get an integration by id
    #   # The following example returns the integration with the given id. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     identifier: {
    #     "integrationId" => a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d
    #   }
    #   }
    #   options = {}
    #   response = client.get_integration(params, options)
    #   response.to_h #=>
    #   {
    #     integration: {
    #       integration_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #       integration_arn: "arn:aws:cloudwatch:us-east-1:123456789012:integration/a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #       integration_type: AWS_INTEGRATION,
    #       name: "my-aws-integration",
    #       status: ACTIVE,
    #       role_arn: "arn:aws:iam::123456789012:role/service-role/CloudWatchIntegrationRole",
    #       created_at: Time.parse("2026-09-16T00:03:00Z"),
    #       updated_at: Time.parse("2026-09-16T00:03:00Z")
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: { # required
    #       # One of:
    #       integration_id: "String",
    #       integration_arn: "IntegrationArn",
    #       integration_name: "String"
    #     }
    #   }
    #   options = {}
    #   response = client.get_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     integration: { # required
    #       integration_id: "String", # required
    #       integration_arn: "IntegrationArn",
    #       integration_type: "AWS_CONFIG_SLREC" # One of: ["AWS_CONFIG_SLREC", "SLACK", "EXTERNAL_AGENT", "AWS_INTEGRATION"], # required
    #       name: "String", # required
    #       status: "ACTIVE" # One of: ["ACTIVE", "DELETED", "PENDING", "PENDING_OAUTH", "ERROR", "FAILED"], # required
    #       auth_type: "NONE" # One of: ["NONE", "OAUTH2", "API_KEY"],
    #       credential_arn: "String",
    #       role_arn: "String",
    #       integration_attributes: {
    #         "String" => "String"
    #       },
    #       authorization_url: "String",
    #       error_message: "String",
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       scope: "ACCOUNT" # One of: ["ACCOUNT", "ORGANIZATION"]
    #     }
    #   }
    # @return [Types::GetIntegrationOutput]
    def get_integration(params = {}, options = {})
      request = build_request(:get_integration, params)
      request.send_request(options)
    end

    # Retrieves the intelligence configuration for the calling account.
    # Account is identified via FAS (caller identity).
    # Returns the default configuration if none exists yet.
    # @param [Hash, Types::GetIntelligenceConfigurationInput] params
    # @example Retrieve the intelligence configuration
    #   # The following example retrieves the intelligence configuration for the calling account. The request carries no parameters; the account is taken from the caller identity. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {}
    #   options = {}
    #   response = client.get_intelligence_configuration(params, options)
    #   response.to_h #=>
    #   {
    #     account_id: "123456789012",
    #     kms_key_arn: "arn:aws:kms:us-east-1:123456789012:key/1a2b3c4d-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #     created_at: Time.parse("2026-01-15T08:30:00Z"),
    #     updated_at: Time.parse("2026-09-16T12:00:00Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_intelligence_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_id: "AccountId", # required
    #     kms_key_arn: "IntelligenceKmsKeyArn",
    #     updated_at: Time.now, # required
    #     created_at: Time.now, # required
    #   }
    # @return [Types::GetIntelligenceConfigurationOutput]
    def get_intelligence_configuration(params = {}, options = {})
      request = build_request(:get_intelligence_configuration, params)
      request.send_request(options)
    end

    # Retrieves a dashboard by ID within a space.
    # @param [Hash, Types::GetOmniDashboardInput] params
    # @option params [String] :space_id
    #   The unique ID of the space.
    # @option params [String] :dashboard_id
    #   The unique ID of the dashboard.
    # @example Get a dashboard
    #   # The following example retrieves a dashboard by ID within a space, including its full body. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #     dashboard_id: "c3d4e5f6-7a8b-4c9d-8e0f-1a2b3c4d5e6f"
    #   }
    #   options = {}
    #   response = client.get_omni_dashboard(params, options)
    #   response.to_h #=>
    #   {
    #     omni_dashboard: {
    #       dashboard_id: "c3d4e5f6-7a8b-4c9d-8e0f-1a2b3c4d5e6f",
    #       arn: "arn:aws:cloudwatch:us-east-1:123456789012:omni-dashboard/c3d4e5f6-7a8b-4c9d-8e0f-1a2b3c4d5e6f",
    #       name: "service-health-overview",
    #       body: "{\"widgets\":[{\"type\":\"metric\",\"x\":0,\"y\":0,\"width\":12,\"height\":6,\"properties\":{\"metrics\":[[\"AWS/Lambda\",\"Errors\",\"FunctionName\",\"OrderProcessor\"]],\"region\":\"us-east-1\",\"title\":\"Lambda Errors\"}}]}",
    #       created_by: "arn:aws:iam::123456789012:role/ObservabilityAdmin",
    #       description: "Overview of service health metrics.",
    #       tags: {
    #         "Team" => "observability"
    #       },
    #       created_at: Time.parse("2026-09-16T14:22:31Z"),
    #       updated_at: Time.parse("2026-09-16T14:22:31Z")
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     space_id: "SpaceId", # required
    #     dashboard_id: "DashboardId", # required
    #   }
    #   options = {}
    #   response = client.get_omni_dashboard(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     omni_dashboard: { # required
    #       dashboard_id: "DashboardId", # required
    #       arn: "Arn", # required
    #       name: "String", # required
    #       body: "String", # required
    #       created_by: "String", # required
    #       description: "String",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #     }
    #   }
    # @return [Types::GetOmniDashboardOutput]
    def get_omni_dashboard(params = {}, options = {})
      request = build_request(:get_omni_dashboard, params)
      request.send_request(options)
    end

    # Retrieves the details of a space by ID.
    # @param [Hash, Types::GetSpaceInput] params
    # @option params [String] :space_id
    #   The unique ID of the space.
    # @example Get a space
    #   # The following example retrieves the details of a space by ID. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d"
    #   }
    #   options = {}
    #   response = client.get_space(params, options)
    #   response.to_h #=>
    #   {
    #     space: {
    #       space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #       name: "prod-observability",
    #       space_arn: "arn:aws:cloudwatch:us-east-1:123456789012:space/a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #       domain_arn: "arn:aws:cloudwatch:us-east-1:123456789012:domain/d-1a2b3c4d5e",
    #       region: "us-east-1",
    #       owner_account_id: "123456789012",
    #       data_access_role_arn: "arn:aws:iam::123456789012:role/CloudWatchSpaceDataAccessRole",
    #       agent_core_evaluation_role_arn: "arn:aws:iam::123456789012:role/CloudWatchAgentCoreEvaluationRole",
    #       created_at: Time.parse("2026-09-16T14:22:31Z"),
    #       updated_at: Time.parse("2026-09-16T14:22:31Z"),
    #       status: ACTIVE,
    #       encryption_configuration: {
    #         encryption_strategy: CUSTOMER_MANAGED,
    #         kms_key_arn: "arn:aws:kms:us-east-1:123456789012:key/1a2b3c4d-5e6f-4a3b-8c9d-0e1f2a3b4c5d"
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     space_id: "SpaceId", # required
    #   }
    #   options = {}
    #   response = client.get_space(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     space: { # required
    #       space_id: "SpaceId", # required
    #       name: "String", # required
    #       space_arn: "Arn", # required
    #       domain_arn: "Arn",
    #       region: "String", # required
    #       owner_account_id: "AccountId", # required
    #       data_access_role_arn: "Arn", # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       agent_core_evaluation_role_arn: "Arn",
    #       status: "ACTIVE" # One of: ["ACTIVE", "SUSPENDED", "MOVING"], # required
    #       status_reason: "String",
    #       encryption_configuration: {
    #         encryption_strategy: "AWS_OWNED" # One of: ["AWS_OWNED", "CUSTOMER_MANAGED"], # required
    #         kms_key_arn: "KmsKeyArn"
    #       }
    #     }
    #   }
    # @return [Types::GetSpaceOutput]
    def get_space(params = {}, options = {})
      request = build_request(:get_space, params)
      request.send_request(options)
    end

    # Returns temporary credentials for a space in an organization member account.
    # The credentials are valid for one hour.
    #
    # The caller must be the organization's management account or a delegated
    # administrator with access to the target space. The target account must be an
    # active member of the same organization as the domain, and the space must
    # already exist.
    # @param [Hash, Types::GetSpaceCredentialsForOrganizationInput] params
    # @option params [Types::SpaceCredentialRequestContext] :context
    #   Context for credential resolution.
    # @option params [String] :credential_type
    #   Selects which member-account credential to return. Set this to SPACE_OPERATION.
    # @example Get space credentials for an organization member account
    #   # The following example returns temporary, space-scoped AWS credentials for an existing space in an organization member account, selected by spaceId. The credentials are valid for one hour, as reflected by the expiration timestamp. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     context: {
    #       space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d"
    #     },
    #     credential_type: SPACE_OPERATION
    #   }
    #   options = {}
    #   response = client.get_space_credentials_for_organization(params, options)
    #   response.to_h #=>
    #   {
    #     credentials: {
    #       access_key_id: "ASIAIOSFODNN7EXAMPLE",
    #       secret_access_key: "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY",
    #       session_token: "IQoJb3JpZ2luX2VjEXAMPLESESSIONTOKEN1234567890",
    #       expiration: Time.parse("2026-09-16T15:22:31Z")
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     context: { # required
    #       space_id: "SpaceId",
    #       domain_id: "DomainId",
    #       target_account_id: "AccountId"
    #     },
    #     credential_type: "SPACE_OPERATION" # One of: ["SPACE_OPERATION"], # required
    #   }
    #   options = {}
    #   response = client.get_space_credentials_for_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     credentials: { # required
    #       access_key_id: "AccessKeyId", # required
    #       secret_access_key: "SecretAccessKey", # required
    #       session_token: "SessionToken", # required
    #       expiration: Time.now, # required
    #     }
    #   }
    # @return [Types::GetSpaceCredentialsForOrganizationOutput]
    def get_space_credentials_for_organization(params = {}, options = {})
      request = build_request(:get_space_credentials_for_organization, params)
      request.send_request(options)
    end

    # Returns the results for the specified query.
    # @param [Hash, Types::GetTelemetryQueryResultsRequest] params
    # @option params [String] :query_id
    #   The unique ID of the query.
    # @option params [String] :next_token
    #   A token to retrieve the next page of results.
    # @option params [Integer] :max_results
    #   The maximum number of result rows to return per page.
    # @example Get telemetry query results
    #   # The following example retrieves a page of results for a completed query, along with execution statistics. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     query_id: "3b2a1c0d-7e6f-4a5b-8c9d-0e1f2a3b4c5d",
    #     max_results: 100
    #   }
    #   options = {}
    #   response = client.get_telemetry_query_results(params, options)
    #   response.to_h #=>
    #   {
    #     status: Complete,
    #     rows: [
    #       {
    #         "service.name" => "checkout-service",
    #         "error_count" => "42"
    #       },
    #       {
    #         "service.name" => "payments-service",
    #         "error_count" => "7"
    #       }
    #     ],
    #     statistics: {
    #       bytes_scanned: 1048576.0,
    #       records_scanned: 20000,
    #       records_matched: 49,
    #       percent_complete: 100,
    #       partial_results: {
    #         partial_results_detected: false
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     query_id: "String", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_telemetry_query_results(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "Running" # One of: ["Running", "Failed", "Complete", "Cancelled"], # required
    #     rows: [
    #       {
    #         "String" => "String"
    #       }
    #     ],
    #     next_token: "String",
    #     statistics: {
    #       bytes_scanned: 1.0,
    #       percent_complete: 1,
    #       records_scanned: 1,
    #       records_matched: 1,
    #       partial_results: {
    #         partial_results_detected: false
    #       }
    #     }
    #   }
    # @return [Types::GetTelemetryQueryResultsResponse]
    def get_telemetry_query_results(params = {}, options = {})
      request = build_request(:get_telemetry_query_results, params)
      request.send_request(options)
    end

    # Returns the definition and metadata of the specified view.
    # @param [Hash, Types::GetViewRequest] params
    # @option params [String] :name
    #   The name of the view.
    # @example Get a view
    #   # The following example returns the definition and metadata of a view. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     name: "view.service_errors"
    #   }
    #   options = {}
    #   response = client.get_view(params, options)
    #   response.to_h #=>
    #   {
    #     name: "view.service_errors",
    #     type: USER,
    #     description: "Error counts by service",
    #     definition: "SELECT resource['attributes']['service.name'] AS service, COUNT(*) AS error_count FROM \"logs.default\" WHERE severityText = 'ERROR' GROUP BY service",
    #     created_at: Time.parse("2026-09-16T14:22:31Z"),
    #     updated_at: Time.parse("2026-09-16T14:22:31Z"),
    #     arn: "arn:aws:cloudwatch:us-east-1:123456789012:view/view.service_errors"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ViewName", # required
    #   }
    #   options = {}
    #   response = client.get_view(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "String", # required
    #     type: "USER" # One of: ["USER", "MANAGED"], # required
    #     description: "String",
    #     definition: "String", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     arn: "String", # required
    #   }
    # @return [Types::GetViewResponse]
    def get_view(params = {}, options = {})
      request = build_request(:get_view, params)
      request.send_request(options)
    end

    # Returns AccessGrants, with optional filtering by domain, space, principal, or
    # permission. A grant is returned only when it matches every filter supplied.
    # With no filters, returns the grants for the current account and Region.
    # @param [Hash, Types::ListAccessGrantsInput] params
    # @option params [String] :domain_id
    #   Filter by domain ID.
    # @option params [String] :space_id
    #   Filter by space ID.
    # @option params [String] :principal_id
    #   Filter by principal ID.
    # @option params [String] :principal_type
    #   Filter by principal type.
    # @option params [String] :permission
    #   Filter by permission level.
    # @option params [String] :next_token
    #   A token to retrieve the next page of results. Supply the same filters used
    #   on the request that returned it. Tokens expire after 24 hours.
    # @option params [Integer] :max_results
    #   The maximum number of access grants to return per page. Defaults to 100.
    #   A page can contain fewer results than this value even when more results
    #   remain; continue while nextToken is present.
    # @example List access grants in a space
    #   # The following example lists the first page of access grants in a space and returns a nextToken to retrieve the next page. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     domain_id: "d-1a2b3c4d5e",
    #     space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #     max_results: 50
    #   }
    #   options = {}
    #   response = client.list_access_grants(params, options)
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         grant_id: "7f3e9d21-4c8b-4f6a-b1d2-3e4f5a6b7c8d",
    #         grant_arn: "arn:aws:cloudwatch:us-east-1:123456789012:access-grant/7f3e9d21-4c8b-4f6a-b1d2-3e4f5a6b7c8d",
    #         name: "analyst-read-access",
    #         domain_id: "d-1a2b3c4d5e",
    #         principal: {
    #           principal_type: IDC_USER,
    #           principal_id: "94b6c7d8-1a2b-4c3d-9e4f-5a6b7c8d9e0f"
    #         },
    #         permission: CUSTOM,
    #         grant_type: CUSTOMER_MANAGED,
    #         space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d"
    #       },
    #       {
    #         grant_id: "8a1b2c3d-4e5f-4a6b-8c7d-9e0f1a2b3c4d",
    #         grant_arn: "arn:aws:cloudwatch:us-east-1:123456789012:access-grant/8a1b2c3d-4e5f-4a6b-8c7d-9e0f1a2b3c4d",
    #         name: "oncall-read-write",
    #         domain_id: "d-1a2b3c4d5e",
    #         principal: {
    #           principal_type: IDC_GROUP,
    #           principal_id: "2f5a8c1b-6d3e-4f7a-8b9c-0d1e2f3a4b5c"
    #         },
    #         permission: READ_WRITE_DELETE,
    #         grant_type: CUSTOMER_MANAGED,
    #         space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d"
    #       }
    #     ],
    #     next_token: "eyJvZmZzZXQiOjIwfQ=="
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId",
    #     space_id: "SpaceId",
    #     principal_id: "PrincipalId",
    #     principal_type: "IDC_USER" # One of: ["IDC_USER", "IDC_GROUP", "IAM_USER", "IAM_ROLE", "IAM_ROOT", "ACCESS_PROFILE", "ALERT", "AGENT"],
    #     permission: "SPACE_ADMIN" # One of: ["SPACE_ADMIN", "READ", "READ_WRITE_DELETE", "CUSTOM"],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_access_grants(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         grant_id: "GrantId", # required
    #         grant_arn: "Arn", # required
    #         name: "String",
    #         domain_id: "DomainId", # required
    #         principal: { # required
    #           principal_type: "IDC_USER" # One of: ["IDC_USER", "IDC_GROUP", "IAM_USER", "IAM_ROLE", "IAM_ROOT", "ACCESS_PROFILE", "ALERT", "AGENT"], # required
    #           principal_id: "PrincipalId",
    #           principal_attributes: [
    #             {
    #               key: "String", # required
    #               value: "String", # required
    #             }
    #           ]
    #         },
    #         permission: "SPACE_ADMIN" # One of: ["SPACE_ADMIN", "READ", "READ_WRITE_DELETE", "CUSTOM"], # required
    #         grant_type: "SERVICE_MANAGED" # One of: ["SERVICE_MANAGED", "CUSTOMER_MANAGED"], # required
    #         space_id: "SpaceId", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAccessGrantsOutput]
    def list_access_grants(params = {}, options = {})
      request = build_request(:list_access_grants, params)
      request.send_request(options)
    end

    # Returns the access profiles in a space.
    # @param [Hash, Types::ListAccessProfilesInput] params
    # @option params [String] :space_id
    #   The unique ID of the space.
    # @option params [String] :next_token
    #   A token to retrieve the next page of results.
    # @option params [Integer] :max_results
    #   The maximum number of access profiles to return per page. Defaults to 100.
    # @example List access profiles in a space
    #   # The following example lists the first page of access profiles in a space and returns a nextToken to retrieve the next page. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #     max_results: 50
    #   }
    #   options = {}
    #   response = client.list_access_profiles(params, options)
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         profile_id: "analyst-readonly",
    #         arn: "arn:aws:cloudwatch:us-east-1:123456789012:access-profile/analyst-readonly",
    #         name: "Analyst read-only profile",
    #         description: "Read-only access for analysts.",
    #         profile_type: CUSTOMER_MANAGED
    #       },
    #       {
    #         profile_id: "oncall-admin",
    #         arn: "arn:aws:cloudwatch:us-east-1:123456789012:access-profile/oncall-admin",
    #         name: "On-call admin profile",
    #         description: "Full access for on-call responders.",
    #         profile_type: CUSTOMER_MANAGED
    #       }
    #     ],
    #     next_token: "eyJvZmZzZXQiOjIwfQ=="
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     space_id: "SpaceId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_access_profiles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         profile_id: "ProfileId", # required
    #         arn: "Arn", # required
    #         name: "String", # required
    #         description: "String",
    #         profile_type: "SERVICE_MANAGED" # One of: ["SERVICE_MANAGED", "CUSTOMER_MANAGED"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAccessProfilesOutput]
    def list_access_profiles(params = {}, options = {})
      request = build_request(:list_access_profiles, params)
      request.send_request(options)
    end

    # Lists alerts within a space, optionally filtered by exact name(s),
    # a single name prefix, or exact alertId(s), with pagination.
    #
    # Use GetAlert to retrieve a single alert's full detail.
    # @param [Hash, Types::ListAlertsInput] params
    # @option params [String] :space_id
    #   The unique ID of the space.
    # @option params [Types::AlertFilterCriteria] :filter_criteria
    #   Filter criteria narrowing which alerts are returned. All members are
    #   optional; the three name/id filters are mutually exclusive.
    # @option params [String] :sort_by
    #   The field to sort results by.
    # @option params [String] :sort_order
    #   The order in which to sort results.
    # @option params [String] :next_token
    #   A token to retrieve the next page of results.
    # @option params [Integer] :max_results
    #   The maximum number of alerts to return per page.
    # @example List alerts in a space
    #   # The following example lists the first page of alerts in a space, sorted by state, and returns a nextToken to retrieve the next page. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #     filter_criteria: {
    #       name_prefix: "service-",
    #       state_value: [
    #         WARNING,
    #         CRITICAL
    #       ]
    #     },
    #     sort_by: STATE,
    #     sort_order: DESC,
    #     max_results: 50
    #   }
    #   options = {}
    #   response = client.list_alerts(params, options)
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         name: "service-error-count-elevated",
    #         alert_id: "c3d4e5f67a8b4c9d8e0f1a2b3c4d5e6f",
    #         space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #         profile_id: "analyst-readonly",
    #         notification_status: ENABLED,
    #         state: {
    #           value: CRITICAL,
    #           transitioned_at: Time.parse("2026-09-17T09:11:52Z"),
    #           contributor_summary: {
    #             warning_count: 3,
    #             critical_count: 1
    #           }
    #         },
    #         created_at: Time.parse("2026-09-16T14:22:31Z"),
    #         updated_at: Time.parse("2026-09-17T09:11:52Z"),
    #         alert_arn: "arn:aws:cloudwatch:us-east-1:123456789012:alert/c3d4e5f67a8b4c9d8e0f1a2b3c4d5e6f"
    #       },
    #       {
    #         name: "service-checkout-5xx-responses",
    #         alert_id: "d4e5f6a78b9c4d0e9f1a2b3c4d5e6f70",
    #         space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #         profile_id: "analyst-readonly",
    #         notification_status: DISABLED,
    #         state: {
    #           value: WARNING,
    #           transitioned_at: Time.parse("2026-09-17T09:11:52Z"),
    #           data: {
    #             threshold_breached: 14.0
    #           }
    #         },
    #         created_at: Time.parse("2026-09-16T14:22:31Z"),
    #         updated_at: Time.parse("2026-09-16T14:22:31Z"),
    #         alert_arn: "arn:aws:cloudwatch:us-east-1:123456789012:alert/d4e5f6a78b9c4d0e9f1a2b3c4d5e6f70"
    #       }
    #     ],
    #     next_token: "eyJvZmZzZXQiOjIwfQ=="
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     space_id: "SpaceId", # required
    #     filter_criteria: {
    #       names: ["String"],
    #       name_prefix: "String",
    #       ids: ["AlertId"],
    #       state_value: ["OK" # One of: ["OK", "WARNING", "CRITICAL", "NODATA"]],
    #       notifications_enabled: false
    #     },
    #     sort_by: "NAME" # One of: ["NAME", "STATE"],
    #     sort_order: "ASC" # One of: ["ASC", "DESC"],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_alerts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         name: "String", # required
    #         alert_id: "AlertId",
    #         space_id: "SpaceId",
    #         profile_id: "ProfileId",
    #         notification_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         state: { # required
    #           value: "OK" # One of: ["OK", "WARNING", "CRITICAL", "NODATA"], # required
    #           transitioned_at: Time.now,
    #           contributor_summary: {
    #             warning_count: 1,
    #             critical_count: 1
    #           },
    #           data: {
    #             threshold_breached: 1.0
    #           }
    #         },
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         alert_arn: "Arn", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAlertsOutput]
    def list_alerts(params = {}, options = {})
      request = build_request(:list_alerts, params)
      request.send_request(options)
    end

    # Returns organization-level domain access grants, with optional filtering by
    # domain, principal, or permission. A grant is returned only when it matches
    # every filter supplied. With no filters, returns the grants for the caller's
    # organization.
    # @param [Hash, Types::ListDomainAccessGrantsForOrganizationInput] params
    # @option params [String] :domain_id
    #   Filter by domain ID.
    # @option params [String] :principal_id
    #   Filter by principal ID.
    # @option params [String] :principal_type
    #   Filter by principal type.
    # @option params [String] :permission
    #   Filter by permission level.
    # @option params [String] :next_token
    #   A token to retrieve the next page of results. Supply the same filters used
    #   on the request that returned it. Tokens expire after 24 hours.
    # @option params [Integer] :max_results
    #   The maximum number of access grants to return per page. Defaults to 100.
    #   A page can contain fewer results than this value even when more results
    #   remain; continue while nextToken is present.
    # @example List organization domain access grants
    #   # The following example lists the first page of organization domain access grants and returns a nextToken to retrieve the next page. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     domain_id: "d-1a2b3c4d5e",
    #     max_results: 50
    #   }
    #   options = {}
    #   response = client.list_domain_access_grants_for_organization(params, options)
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         grant_id: "7f3e9d21-4c8b-4f6a-b1d2-3e4f5a6b7c8d",
    #         grant_arn: "arn:aws:cloudwatch:us-east-1:123456789012:organization-access-grant/7f3e9d21-4c8b-4f6a-b1d2-3e4f5a6b7c8d",
    #         name: "org-domain-admin",
    #         domain_id: "d-1a2b3c4d5e",
    #         principal: {
    #           principal_type: IDC_USER,
    #           principal_id: "94b6c7d8-1a2b-4c3d-9e4f-5a6b7c8d9e0f"
    #         },
    #         permission: ADMIN,
    #         grant_type: CUSTOMER_MANAGED,
    #         created_at: Time.parse("2026-09-16T14:22:31Z"),
    #         updated_at: Time.parse("2026-09-16T14:22:31Z")
    #       },
    #       {
    #         grant_id: "8a1b2c3d-4e5f-4a6b-8c7d-9e0f1a2b3c4d",
    #         grant_arn: "arn:aws:cloudwatch:us-east-1:123456789012:organization-access-grant/8a1b2c3d-4e5f-4a6b-8c7d-9e0f1a2b3c4d",
    #         name: "org-domain-admin-group",
    #         domain_id: "d-1a2b3c4d5e",
    #         principal: {
    #           principal_type: IDC_GROUP,
    #           principal_id: "2f5a8c1b-6d3e-4f7a-8b9c-0d1e2f3a4b5c"
    #         },
    #         permission: ADMIN,
    #         grant_type: CUSTOMER_MANAGED,
    #         created_at: Time.parse("2026-09-16T14:22:31Z"),
    #         updated_at: Time.parse("2026-09-16T14:22:31Z")
    #       }
    #     ],
    #     next_token: "eyJvZmZzZXQiOjIwfQ=="
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId",
    #     principal_id: "PrincipalId",
    #     principal_type: "IDC_USER" # One of: ["IDC_USER", "IDC_GROUP", "IAM_USER", "IAM_ROLE", "IAM_ROOT"],
    #     permission: "ADMIN" # One of: ["ADMIN"],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_domain_access_grants_for_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         grant_id: "GrantId", # required
    #         grant_arn: "Arn", # required
    #         name: "String",
    #         domain_id: "DomainId", # required
    #         principal: { # required
    #           principal_type: "IDC_USER" # One of: ["IDC_USER", "IDC_GROUP", "IAM_USER", "IAM_ROLE", "IAM_ROOT"], # required
    #           principal_id: "OrganizationPrincipalId",
    #           principal_attributes: [
    #             {
    #               key: "String", # required
    #               value: "String", # required
    #             }
    #           ]
    #         },
    #         permission: "ADMIN" # One of: ["ADMIN"], # required
    #         grant_type: "SERVICE_MANAGED" # One of: ["SERVICE_MANAGED", "CUSTOMER_MANAGED"], # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDomainAccessGrantsForOrganizationOutput]
    def list_domain_access_grants_for_organization(params = {}, options = {})
      request = build_request(:list_domain_access_grants_for_organization, params)
      request.send_request(options)
    end

    # Returns the caller's domains: the account-scoped domain and the
    # organization-scoped domain, if either exists. At most two domains are returned.
    # @param [Hash, Types::ListDomainsInput] params
    # @option params [String] :next_token
    #   A token to retrieve the next page of results. Tokens expire after 24 hours.
    # @option params [Integer] :max_results
    #   The maximum number of domains to return per page. Defaults to 100.
    # @example List domains
    #   # The following example lists the caller's domains. At most two are returned — the account-scoped domain and the organization-scoped domain — so there is no nextToken. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {}
    #   options = {}
    #   response = client.list_domains(params, options)
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         domain_id: "d-1a2b3c4d5e",
    #         domain_arn: "arn:aws:cloudwatch:us-east-1:123456789012:domain/d-1a2b3c4d5e",
    #         name: "prod-observability",
    #         identity_center_instance_arn: "arn:aws:sso:::instance/ssoins-1234567890abcdef",
    #         region: "us-east-1",
    #         created_at: Time.parse("2026-09-16T14:22:31Z"),
    #         updated_at: Time.parse("2026-09-16T14:22:31Z"),
    #         status: ACTIVE
    #       },
    #       {
    #         domain_id: "d-9z8y7x6w5v",
    #         domain_arn: "arn:aws:cloudwatch:us-east-1:123456789012:organization-domain/d-9z8y7x6w5v",
    #         name: "prod-observability-org",
    #         identity_center_instance_arn: "arn:aws:sso:::instance/ssoins-1234567890abcdef",
    #         region: "us-east-1",
    #         created_at: Time.parse("2026-09-16T14:22:31Z"),
    #         updated_at: Time.parse("2026-09-16T14:22:31Z"),
    #         status: ACTIVE
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_domains(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         domain_id: "DomainId", # required
    #         domain_arn: "Arn",
    #         name: "String",
    #         identity_center_instance_arn: "IdentityCenterInstanceArn",
    #         region: "String",
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         status: "ACTIVE" # One of: ["ACTIVE"], # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDomainsOutput]
    def list_domains(params = {}, options = {})
      request = build_request(:list_domains, params)
      request.send_request(options)
    end

    # Lists the integrations in the account, optionally filtered by type, status,
    # or name. Results are paginated.
    # @param [Hash, Types::ListIntegrationsInput] params
    # @option params [String] :integration_type
    #   Returns only integrations of this provider type.
    # @option params [String] :status
    #   Returns only integrations in this status.
    # @option params [String] :name
    #   Returns only the integration with this exact name.
    # @option params [String] :next_token
    #   Pagination token from a previous response; omit for the first page.
    # @option params [Integer] :max_results
    #   Maximum number of integrations to return in one page.
    # @example List integrations of a type
    #   # The following example lists up to 20 AWS_INTEGRATION integrations in the account. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     integration_type: AWS_INTEGRATION,
    #     max_results: 20
    #   }
    #   options = {}
    #   response = client.list_integrations(params, options)
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         integration_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #         integration_arn: "arn:aws:cloudwatch:us-east-1:123456789012:integration/a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #         integration_type: AWS_INTEGRATION,
    #         name: "my-aws-integration",
    #         status: ACTIVE,
    #         created_at: Time.parse("2026-09-16T00:03:00Z"),
    #         updated_at: Time.parse("2026-09-16T00:03:00Z")
    #       }
    #     ],
    #     next_token: "eyJvZmZzZXQiOjIwfQ=="
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     integration_type: "AWS_CONFIG_SLREC" # One of: ["AWS_CONFIG_SLREC", "SLACK", "EXTERNAL_AGENT", "AWS_INTEGRATION"],
    #     status: "ACTIVE" # One of: ["ACTIVE", "DELETED", "PENDING", "PENDING_OAUTH", "ERROR", "FAILED"],
    #     name: "String",
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_integrations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         integration_id: "String", # required
    #         integration_arn: "IntegrationArn",
    #         integration_type: "AWS_CONFIG_SLREC" # One of: ["AWS_CONFIG_SLREC", "SLACK", "EXTERNAL_AGENT", "AWS_INTEGRATION"], # required
    #         name: "String", # required
    #         status: "ACTIVE" # One of: ["ACTIVE", "DELETED", "PENDING", "PENDING_OAUTH", "ERROR", "FAILED"], # required
    #         auth_type: "NONE" # One of: ["NONE", "OAUTH2", "API_KEY"],
    #         credential_arn: "String",
    #         role_arn: "String",
    #         integration_attributes: {
    #           "String" => "String"
    #         },
    #         authorization_url: "String",
    #         error_message: "String",
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         scope: "ACCOUNT" # One of: ["ACCOUNT", "ORGANIZATION"]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListIntegrationsOutput]
    def list_integrations(params = {}, options = {})
      request = build_request(:list_integrations, params)
      request.send_request(options)
    end

    # Returns the dashboards in a space, optionally filtered by name prefix.
    # @param [Hash, Types::ListOmniDashboardsInput] params
    # @option params [String] :space_id
    #   The unique ID of the space.
    # @option params [String] :name_prefix
    #   Filter to dashboards whose name starts with this prefix.
    # @option params [String] :next_token
    #   A token to retrieve the next page of results.
    # @option params [Integer] :max_results
    #   The maximum number of dashboards to return per page. Defaults to 100.
    #   A page can contain fewer results than this value even when more results
    #   remain; continue while nextToken is present.
    # @example List dashboards in a space
    #   # The following example lists the first page of dashboards in a space and returns a nextToken to retrieve the next page. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #     max_results: 50
    #   }
    #   options = {}
    #   response = client.list_omni_dashboards(params, options)
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         dashboard_id: "c3d4e5f6-7a8b-4c9d-8e0f-1a2b3c4d5e6f",
    #         arn: "arn:aws:cloudwatch:us-east-1:123456789012:omni-dashboard/c3d4e5f6-7a8b-4c9d-8e0f-1a2b3c4d5e6f",
    #         name: "service-health-overview",
    #         created_by: "arn:aws:iam::123456789012:role/ObservabilityAdmin",
    #         description: "Overview of service health metrics.",
    #         created_at: Time.parse("2026-09-16T14:22:31Z"),
    #         updated_at: Time.parse("2026-09-16T14:22:31Z")
    #       },
    #       {
    #         dashboard_id: "d4e5f6a7-8b9c-4d0e-9f1a-2b3c4d5e6f70",
    #         arn: "arn:aws:cloudwatch:us-east-1:123456789012:omni-dashboard/d4e5f6a7-8b9c-4d0e-9f1a-2b3c4d5e6f70",
    #         name: "cost-explorer-dashboard",
    #         created_by: "arn:aws:iam::123456789012:role/ObservabilityAdmin",
    #         description: "Monthly cost breakdown by service.",
    #         created_at: Time.parse("2026-09-16T14:22:31Z"),
    #         updated_at: Time.parse("2026-09-16T14:22:31Z")
    #       }
    #     ],
    #     next_token: "eyJvZmZzZXQiOjIwfQ=="
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     space_id: "SpaceId", # required
    #     name_prefix: "String",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_omni_dashboards(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         dashboard_id: "DashboardId", # required
    #         arn: "Arn", # required
    #         name: "String", # required
    #         created_by: "String", # required
    #         description: "String",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListOmniDashboardsOutput]
    def list_omni_dashboards(params = {}, options = {})
      request = build_request(:list_omni_dashboards, params)
      request.send_request(options)
    end

    # Returns the spaces in the account, optionally filtered by domain.
    # @param [Hash, Types::ListSpacesInput] params
    # @option params [String] :domain_id
    #   Filter by domain ID.
    # @option params [String] :next_token
    #   A token to retrieve the next page of results. Supply the same filters used
    #   on the request that returned it. Tokens expire after 24 hours.
    # @option params [Integer] :max_results
    #   The maximum number of spaces to return per page. Defaults to 100.
    #   A page can contain fewer results than this value even when more results
    #   remain; continue while nextToken is present.
    # @example List spaces in a domain
    #   # The following example lists the first page of spaces in a domain and returns a nextToken to retrieve the next page. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     domain_id: "d-1a2b3c4d5e",
    #     max_results: 50
    #   }
    #   options = {}
    #   response = client.list_spaces(params, options)
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #         name: "prod-observability",
    #         space_arn: "arn:aws:cloudwatch:us-east-1:123456789012:space/a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #         domain_arn: "arn:aws:cloudwatch:us-east-1:123456789012:domain/d-1a2b3c4d5e",
    #         region: "us-east-1",
    #         owner_account_id: "123456789012",
    #         status: ACTIVE,
    #         created_at: Time.parse("2026-09-16T14:22:31Z"),
    #         updated_at: Time.parse("2026-09-16T14:22:31Z")
    #       },
    #       {
    #         space_id: "b2c3d4e5-6f7a-4b8c-9d0e-1f2a3b4c5d6e",
    #         name: "staging-observability",
    #         space_arn: "arn:aws:cloudwatch:us-east-1:123456789012:space/b2c3d4e5-6f7a-4b8c-9d0e-1f2a3b4c5d6e",
    #         domain_arn: "arn:aws:cloudwatch:us-east-1:123456789012:domain/d-1a2b3c4d5e",
    #         region: "us-east-1",
    #         owner_account_id: "123456789012",
    #         status: ACTIVE,
    #         created_at: Time.parse("2026-09-16T14:22:31Z"),
    #         updated_at: Time.parse("2026-09-16T14:22:31Z")
    #       }
    #     ],
    #     next_token: "eyJvZmZzZXQiOjIwfQ=="
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_spaces(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         space_id: "SpaceId", # required
    #         name: "String", # required
    #         space_arn: "Arn", # required
    #         domain_arn: "Arn",
    #         region: "String", # required
    #         owner_account_id: "AccountId", # required
    #         status: "ACTIVE" # One of: ["ACTIVE", "SUSPENDED", "MOVING"], # required
    #         status_reason: "String",
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListSpacesOutput]
    def list_spaces(params = {}, options = {})
      request = build_request(:list_spaces, params)
      request.send_request(options)
    end

    # Returns the spaces across all member accounts in the organization.
    # @param [Hash, Types::ListSpacesForOrganizationInput] params
    # @option params [String] :next_token
    #   A token to retrieve the next page of results. Tokens expire after 24 hours.
    # @option params [Integer] :max_results
    #   The maximum number of spaces to return per page. Defaults to 100.
    # @example List spaces across the organization
    #   # The following example lists the first page of spaces across all member accounts in the organization. The results include spaces owned by different accounts, along with a nextToken to retrieve the next page. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     max_results: 50
    #   }
    #   options = {}
    #   response = client.list_spaces_for_organization(params, options)
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         space_id: "c1d2e3f4-5a6b-4c7d-8e9f-0a1b2c3d4e5f",
    #         name: "prod-observability",
    #         space_arn: "arn:aws:cloudwatch:us-east-1:111122223333:space/c1d2e3f4-5a6b-4c7d-8e9f-0a1b2c3d4e5f",
    #         region: "us-east-1",
    #         owner_account_id: "111122223333",
    #         status: ACTIVE,
    #         created_at: Time.parse("2026-09-16T14:22:31Z"),
    #         updated_at: Time.parse("2026-09-16T14:22:31Z")
    #       },
    #       {
    #         space_id: "d4e5f6a7-8b9c-4d0e-8f1a-2b3c4d5e6f7a",
    #         name: "prod-observability",
    #         space_arn: "arn:aws:cloudwatch:us-east-1:444455556666:space/d4e5f6a7-8b9c-4d0e-8f1a-2b3c4d5e6f7a",
    #         region: "us-east-1",
    #         owner_account_id: "444455556666",
    #         status: ACTIVE,
    #         created_at: Time.parse("2026-09-16T14:22:31Z"),
    #         updated_at: Time.parse("2026-09-16T14:22:31Z")
    #       }
    #     ],
    #     next_token: "eyJvZmZzZXQiOjIwfQ=="
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_spaces_for_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         space_id: "SpaceId", # required
    #         name: "String", # required
    #         space_arn: "Arn", # required
    #         domain_arn: "Arn",
    #         region: "String", # required
    #         owner_account_id: "AccountId", # required
    #         status: "ACTIVE" # One of: ["ACTIVE", "SUSPENDED", "MOVING"], # required
    #         status_reason: "String",
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListSpacesForOrganizationOutput]
    def list_spaces_for_organization(params = {}, options = {})
      request = build_request(:list_spaces_for_organization, params)
      request.send_request(options)
    end

    # Lists fields available for telemetry queries.
    #
    # Returns a list of fields included in the specified dataset, granular
    # to telemetry type. Returned field names reflect the exact stored casing
    # and are case-sensitive when referenced in query expressions; the query
    # engine does not normalize identifier case.
    # @param [Hash, Types::ListTelemetryFieldsRequest] params
    # @option params [String] :data_set_name
    #   The name of the dataset to list fields for.
    # @option params [String] :telemetry_type
    #   The type of telemetry to filter fields by.
    # @option params [Time] :start_time
    #   Inclusive start of the lookback window. When omitted, the service
    #   defaults to the configured lookback before endTime.
    # @option params [Time] :end_time
    #   Inclusive end of the lookback window. When omitted, the service
    #   defaults to the current time.
    # @option params [String] :next_token
    #   A token to retrieve the next page of results. Reserved for future
    #   pagination; the service does not paginate at this time and returns null.
    # @example List fields for a dataset
    #   # The following example lists the log fields available in the specified dataset. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     data_set_name: "default",
    #     telemetry_type: LOGS
    #   }
    #   options = {}
    #   response = client.list_telemetry_fields(params, options)
    #   response.to_h #=>
    #   {
    #     fields: [
    #       {
    #         name: "@timestamp"
    #       },
    #       {
    #         name: "@message"
    #       },
    #       {
    #         name: "attributes",
    #         children: [
    #           {
    #             name: "http.method"
    #           },
    #           {
    #             name: "http.status_code"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     data_set_name: "String", # required
    #     telemetry_type: "LOGS" # One of: ["LOGS", "TRACES"],
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_telemetry_fields(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fields: [ # required
    #       {
    #         name: "String", # required
    #         children: {
    #           # recursive FieldList
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListTelemetryFieldsResponse]
    def list_telemetry_fields(params = {}, options = {})
      request = build_request(:list_telemetry_fields, params)
      request.send_request(options)
    end

    # Lists telemetry query sessions.
    #
    # Returns a list of telemetry query sessions owned by the caller.
    # @param [Hash, Types::ListTelemetryQuerySessionsRequest] params
    # @option params [String] :next_token
    #   A token to retrieve the next page of results.
    # @option params [Integer] :max_results
    #   The maximum number of sessions to return per page.
    # @example List telemetry query sessions
    #   # The following example lists the query sessions owned by the caller. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     max_results: 10
    #   }
    #   options = {}
    #   response = client.list_telemetry_query_sessions(params, options)
    #   response.to_h #=>
    #   {
    #     sessions: [
    #       {
    #         session_id: "9f8c7d6e-5b4a-4c3d-9e2f-1a0b2c3d4e5f",
    #         session_name: "prod-latency-investigation",
    #         created_at: Time.parse("2026-09-16T00:00:00Z"),
    #         last_activity_at: Time.parse("2026-09-16T00:05:00Z")
    #       }
    #     ],
    #     next_token: "eyJvZmZzZXQiOjEwfQ=="
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_telemetry_query_sessions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sessions: [ # required
    #       {
    #         session_id: "String", # required
    #         created_at: Time.now,
    #         last_activity_at: Time.now,
    #         session_name: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListTelemetryQuerySessionsResponse]
    def list_telemetry_query_sessions(params = {}, options = {})
      request = build_request(:list_telemetry_query_sessions, params)
      request.send_request(options)
    end

    # Lists the views in the caller's account and region.
    #
    # Returns a summary for each view, optionally filtered by view type. View
    # definitions are not included — use GetView to retrieve them.
    # @param [Hash, Types::ListViewsRequest] params
    # @option params [String] :type
    #   Return only views of this ownership category.
    # @option params [Integer] :max_results
    #   The maximum number of views to return per page.
    # @option params [String] :next_token
    #   A token to retrieve the next page of results.
    # @example List the views in an account and Region
    #   # The following example returns a page of view summaries, filtered to user-created views. Definitions are not included — call GetView to retrieve them. A nextToken is returned when more results are available. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     type: USER,
    #     max_results: 10
    #   }
    #   options = {}
    #   response = client.list_views(params, options)
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         name: "view.service_errors",
    #         type: USER,
    #         description: "Error counts by service",
    #         created_at: Time.parse("2026-09-16T14:22:31Z"),
    #         updated_at: Time.parse("2026-09-16T14:22:31Z")
    #       }
    #     ],
    #     next_token: "eyJvZmZzZXQiOjEwfQ=="
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     type: "USER" # One of: ["USER", "MANAGED"],
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_views(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         name: "String", # required
    #         type: "USER" # One of: ["USER", "MANAGED"], # required
    #         description: "String",
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListViewsResponse]
    def list_views(params = {}, options = {})
      request = build_request(:list_views, params)
      request.send_request(options)
    end

    # Creates or updates the intelligence configuration for the calling account.
    # Account is identified via FAS (caller identity).
    # @param [Hash, Types::PutIntelligenceConfigurationInput] params
    # @option params [String] :kms_key_arn
    #   Optional KMS key ARN to configure customer-managed encryption for anomaly data.
    # @option params [Boolean] :remove_kms_key
    #   Set to true to disassociate the configured KMS key. Mutually exclusive with
    #   kmsKeyArn; the service returns ValidationException if both are provided.
    # @option params [String] :client_token
    #   Idempotency token for safe retries. Repeating a request with the same token
    #   applies the update at most once instead of reprocessing it.
    # @example Configure a customer-managed KMS key
    #   # The following example sets the customer-managed KMS key used to encrypt the account's intelligence data. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     kms_key_arn: "arn:aws:kms:us-east-1:123456789012:key/1a2b3c4d-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #     client_token: "b3f8c7d6-5b4a-4c3d-9e2f-1a0b2c3d4e5f"
    #   }
    #   options = {}
    #   response = client.put_intelligence_configuration(params, options)
    #   response.to_h #=>
    #   {
    #     account_id: "123456789012",
    #     kms_key_arn: "arn:aws:kms:us-east-1:123456789012:key/1a2b3c4d-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #     created_at: Time.parse("2026-01-15T08:30:00Z"),
    #     updated_at: Time.parse("2026-09-16T12:00:00Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     kms_key_arn: "IntelligenceKmsKeyArn",
    #     remove_kms_key: false,
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.put_intelligence_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_id: "AccountId", # required
    #     kms_key_arn: "IntelligenceKmsKeyArn",
    #     updated_at: Time.now, # required
    #     created_at: Time.now, # required
    #   }
    # @return [Types::PutIntelligenceConfigurationOutput]
    def put_intelligence_configuration(params = {}, options = {})
      request = build_request(:put_intelligence_configuration, params)
      request.send_request(options)
    end

    # Searches Identity Center for users and groups in a domain. The domain must be
    # configured with Identity Center.
    #
    # To grant access to a result, pass its principalId to CreateAccessGrant with a
    # principalType of IDC_USER for a user or IDC_GROUP for a group.
    # @param [Hash, Types::SearchPrincipalsInput] params
    # @option params [String] :domain_id
    #   The ID of the domain to search within.
    # @option params [String] :search_query
    #   A search term to match against user names, display names, and IDs. Pass * to list
    #   all principals. Maximum 128 characters.
    # @option params [Integer] :max_results
    #   The maximum number of results to return. Defaults to 10. Valid only when searchQuery
    #   is *; other searches reject this parameter and return at most 10 results.
    # @option params [String] :next_token
    #   A token to retrieve the next page of results. Valid only when searchQuery is *;
    #   other searches do not paginate and reject this parameter. Tokens expire after
    #   24 hours.
    # @example Search principals by name
    #   # The following example searches a domain for principals whose name matches a text query. A text search (any searchQuery other than *) returns at most 10 results and does not paginate, so maxResults and nextToken are not supplied and no nextToken is returned. To grant access to a result, pass its principalId to CreateAccessGrant with a principalType of IDC_USER for a user or IDC_GROUP for a group. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     domain_id: "d-1a2b3c4d5e",
    #     search_query: "jane"
    #   }
    #   options = {}
    #   response = client.search_principals(params, options)
    #   response.to_h #=>
    #   {
    #     results: [
    #       {
    #         principal_id: "94b6c7d8-1a2b-4c3d-9e4f-5a6b7c8d9e0f",
    #         principal_type: USER,
    #         display_name: "Jane Doe",
    #         user_name: "jane.doe"
    #       },
    #       {
    #         principal_id: "2f5a8c1b-6d3e-4f7a-8b9c-0d1e2f3a4b5c",
    #         principal_type: GROUP,
    #         display_name: "Jane's Analysts"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     search_query: "String", # required
    #     max_results: 1,
    #     next_token: "SearchPrincipalsNextToken"
    #   }
    #   options = {}
    #   response = client.search_principals(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     results: [ # required
    #       {
    #         principal_id: "PrincipalId", # required
    #         principal_type: "USER" # One of: ["USER", "GROUP"], # required
    #         display_name: "String", # required
    #         user_name: "String",
    #         description: "String"
    #       }
    #     ],
    #     next_token: "SearchPrincipalsNextToken"
    #   }
    # @return [Types::SearchPrincipalsOutput]
    def search_principals(params = {}, options = {})
      request = build_request(:search_principals, params)
      request.send_request(options)
    end

    # Starts a telemetry query within a session.
    #
    # Submits the provided query string for execution in the specified
    # session. Use GetTelemetryQueryResults to poll for results and check
    # query status.
    # @param [Hash, Types::StartTelemetryQueryRequest] params
    # @option params [String] :query_string
    #   The query string to execute.
    # @option params [String] :session_id
    #   The unique ID of the session.
    # @example Start a telemetry query
    #   # The following example submits a SQL query within a session and returns the query ID used to poll for results. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     session_id: "9f8c7d6e-5b4a-4c3d-9e2f-1a0b2c3d4e5f",
    #     query_string: "SELECT `@timestamp`, `@message` FROM \"logs.default\" WHERE `@timestamp` BETWEEN NOW() - INTERVAL '1 HOUR' AND NOW() ORDER BY `@timestamp` DESC LIMIT 100"
    #   }
    #   options = {}
    #   response = client.start_telemetry_query(params, options)
    #   response.to_h #=>
    #   {
    #     query_id: "3b2a1c0d-7e6f-4a5b-8c9d-0e1f2a3b4c5d",
    #     session_id: "9f8c7d6e-5b4a-4c3d-9e2f-1a0b2c3d4e5f"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     query_string: "String", # required
    #     session_id: "String", # required
    #   }
    #   options = {}
    #   response = client.start_telemetry_query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     query_id: "String", # required
    #     session_id: "String", # required
    #   }
    # @return [Types::StartTelemetryQueryResponse]
    def start_telemetry_query(params = {}, options = {})
      request = build_request(:start_telemetry_query, params)
      request.send_request(options)
    end

    # Starts a new telemetry query session.
    #
    # A session provides a logical grouping for one or more telemetry queries.
    # The returned session ID is required when starting queries via
    # StartTelemetryQuery.
    # @param [Hash, Types::StartTelemetryQuerySessionRequest] params
    # @option params [String] :session_name
    #   A human-readable name for the session. Names under `/aws/` are reserved
    #   for service integrations.
    # @example Start a telemetry query session
    #   # The following example starts a session for grouping telemetry queries and returns its session ID. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     session_name: "prod-latency-investigation"
    #   }
    #   options = {}
    #   response = client.start_telemetry_query_session(params, options)
    #   response.to_h #=>
    #   {
    #     session_id: "9f8c7d6e-5b4a-4c3d-9e2f-1a0b2c3d4e5f"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     session_name: "String"
    #   }
    #   options = {}
    #   response = client.start_telemetry_query_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session_id: "String", # required
    #   }
    # @return [Types::StartTelemetryQuerySessionResponse]
    def start_telemetry_query_session(params = {}, options = {})
      request = build_request(:start_telemetry_query_session, params)
      request.send_request(options)
    end

    # Stops a running telemetry query.
    # @param [Hash, Types::StopTelemetryQueryRequest] params
    # @option params [String] :query_id
    #   The unique ID of the query.
    # @example Stop a running telemetry query
    #   # The following example stops a running query by its ID. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     query_id: "3b2a1c0d-7e6f-4a5b-8c9d-0e1f2a3b4c5d"
    #   }
    #   options = {}
    #   response = client.stop_telemetry_query(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     query_id: "String", # required
    #   }
    #   options = {}
    #   response = client.stop_telemetry_query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopTelemetryQueryResponse]
    def stop_telemetry_query(params = {}, options = {})
      request = build_request(:stop_telemetry_query, params)
      request.send_request(options)
    end

    # Stops a telemetry query session.
    #
    # Terminates the specified session. After a session is stopped it cannot
    # be reused.
    # @param [Hash, Types::StopTelemetryQuerySessionRequest] params
    # @option params [String] :session_id
    #   The unique ID of the session.
    # @example Stop a telemetry query session
    #   # The following example terminates the specified session. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     session_id: "9f8c7d6e-5b4a-4c3d-9e2f-1a0b2c3d4e5f"
    #   }
    #   options = {}
    #   response = client.stop_telemetry_query_session(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     session_id: "String", # required
    #   }
    #   options = {}
    #   response = client.stop_telemetry_query_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopTelemetryQuerySessionResponse]
    def stop_telemetry_query_session(params = {}, options = {})
      request = build_request(:stop_telemetry_query_session, params)
      request.send_request(options)
    end

    # Updates the name or description of an access profile.
    #
    # Only the provided fields are changed; omitted fields are left unchanged.
    # @param [Hash, Types::UpdateAccessProfileInput] params
    # @option params [String] :space_id
    #   The unique ID of the space.
    # @option params [String] :profile_id
    #   The unique ID of the access profile to update.
    # @option params [String] :name
    #   A new name for the access profile. Omit to leave unchanged.
    # @option params [String] :description
    #   A new description of the access profile. Omit to leave unchanged.
    # @example Update an access profile description
    #   # The following example updates only the description of an access profile; the name is left unchanged. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #     profile_id: "analyst-readonly",
    #     description: "Read-only access for analysts and on-call responders."
    #   }
    #   options = {}
    #   response = client.update_access_profile(params, options)
    #   response.to_h #=>
    #   {
    #     access_profile: {
    #       profile_id: "analyst-readonly",
    #       space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #       arn: "arn:aws:cloudwatch:us-east-1:123456789012:access-profile/analyst-readonly",
    #       name: "Analyst read-only profile",
    #       description: "Read-only access for analysts and on-call responders.",
    #       created_at: Time.parse("2026-09-16T14:22:31Z"),
    #       updated_at: Time.parse("2026-09-17T09:11:52Z"),
    #       profile_type: CUSTOMER_MANAGED
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     space_id: "SpaceId", # required
    #     profile_id: "ProfileId", # required
    #     name: "AccessProfileName",
    #     description: "String"
    #   }
    #   options = {}
    #   response = client.update_access_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_profile: { # required
    #       profile_id: "ProfileId", # required
    #       space_id: "SpaceId", # required
    #       arn: "Arn", # required
    #       name: "String", # required
    #       description: "String",
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       assume_status: "ALLOWED" # One of: ["ALLOWED", "DENIED"],
    #       profile_type: "SERVICE_MANAGED" # One of: ["SERVICE_MANAGED", "CUSTOMER_MANAGED"]
    #     }
    #   }
    # @return [Types::UpdateAccessProfileOutput]
    def update_access_profile(params = {}, options = {})
      request = build_request(:update_access_profile, params)
      request.send_request(options)
    end

    # Updates an existing alert.
    #
    # Only non-null fields overwrite existing values.
    # @param [Hash, Types::UpdateAlertInput] params
    # @option params [String] :space_id
    #   The unique ID of the space.
    # @option params [String] :alert_id
    #   The alert to update.
    # @option params [String] :profile_id
    #   The ID of the access profile associated with the alert.
    # @option params [String] :name
    #   A new display name for the alert. Omit to leave the name unchanged
    #   (apply-if-present / PATCH). Same constraints as CreateAlert.name; the
    #   name is not the alert's identity, so a rename never changes the alertId.
    # @option params [String] :description
    #   A new description of the alert. Omit to leave unchanged.
    # @option params [Types::Rule] :rule
    #   The rule that defines how the alert is evaluated. Omit to leave unchanged.
    #   Each sub-block is replaced whole when present: {@code query}, {@code condition},
    #   {@code evaluation} and {@code noData} are applied only when supplied, and within a
    #   supplied block an omitted optional member is cleared to unset (null/absent) rather
    #   than preserved from the stored alert or defaulted. See {@link AlertCondition} and
    #   {@link AlertEvaluation}.
    # @option params [Boolean] :notifications_enabled
    #   Whether actions (notifications) are enabled for this alert.
    #   Omitted = leave existing value unchanged.
    # @option params [Array<Types::NotificationRule>] :notification_rules
    #   Replaces the entire notification rule list when present; full-replace,
    #   not merge. Omitted = leave existing rules unchanged. An empty list
    #   clears all rules (the alert keeps evaluating; only notifications stop).
    # @example Raise an alert's thresholds
    #   # The following example replaces only the condition of an alert's rule; the query, the evaluation cadence and the notification rules are left unchanged. A supplied condition is replaced whole rather than merged, so every threshold to keep is sent again. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #     alert_id: "c3d4e5f67a8b4c9d8e0f1a2b3c4d5e6f",
    #     rule: {
    #     "telemetryRule" => {
    #       "condition" => {
    #         "thresholdMode" => FIELD_VALUE,
    #         "thresholdField" => error_count,
    #         "comparator" => GT,
    #         "warningThreshold" => 100.0,
    #         "criticalThreshold" => 400.0
    #       }
    #     }
    #   }
    #   }
    #   options = {}
    #   response = client.update_alert(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     space_id: "SpaceId", # required
    #     alert_id: "AlertId", # required
    #     profile_id: "ProfileId",
    #     name: "String",
    #     description: "String",
    #     rule: {
    #       # One of:
    #       telemetry_rule: {
    #         query: {
    #           language: "SQL" # One of: ["SQL", "PROMQL"], # required
    #           expression: "String", # required
    #         },
    #         condition: {
    #           threshold_mode: "COUNT_OF_RESULTS" # One of: ["COUNT_OF_RESULTS", "FIELD_VALUE"],
    #           threshold_field: "String",
    #           comparator: "GT" # One of: ["GT", "LT", "GTE", "LTE"],
    #           warning_threshold: 1.0,
    #           critical_threshold: 1.0
    #         },
    #         evaluation: {
    #           interval_seconds: 1, # required
    #           pending_duration_seconds: 1,
    #           recovery_duration_seconds: 1
    #         },
    #         no_data: {
    #           treat_as: "OK" # One of: ["OK", "WARNING", "CRITICAL", "NODATA"], # required
    #         }
    #       }
    #     },
    #     notifications_enabled: false,
    #     notification_rules: [
    #       {
    #         trigger: { # required
    #           state_values: ["OK" # One of: ["OK", "WARNING", "CRITICAL", "NODATA"]]
    #         },
    #         target: { # required
    #           type: "sns" # One of: ["sns", "slack", "pagerduty"], # required
    #           arn: "Arn", # required
    #           metadata: {
    #             "String" => "String"
    #           }
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_alert(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateAlertOutput]
    def update_alert(params = {}, options = {})
      request = build_request(:update_alert, params)
      request.send_request(options)
    end

    # Updates a domain's name or identity provider configuration.
    #
    # Only the provided fields are changed; omitted fields are left unchanged.
    # Renaming a domain also changes the endpoint URLs derived from its name.
    # @param [Hash, Types::UpdateDomainInput] params
    # @option params [String] :domain_id
    #   The unique ID of the domain to update.
    # @option params [String] :name
    #   A new name for the domain. Omit to leave unchanged. Must be 3-63 characters:
    #   lowercase letters, numbers, and hyphens. It must begin and end with a letter or
    #   number and cannot contain consecutive hyphens.
    # @option params [Array<String>] :identity_providers
    #   The identity providers to configure for the domain.
    # @option params [Types::IdentityProviderConfiguration] :identity_provider_configuration
    #   Identity provider configuration for the domain.
    # @example Rename a domain
    #   # The following example performs a partial update that changes only the domain name; the omitted fields are left unchanged. Renaming the domain also updates the endpoint URLs derived from its name, and updatedAt advances past createdAt. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     domain_id: "d-1a2b3c4d5e",
    #     name: "prod-observability-metrics"
    #   }
    #   options = {}
    #   response = client.update_domain(params, options)
    #   response.to_h #=>
    #   {
    #     domain: {
    #       domain_id: "d-1a2b3c4d5e",
    #       domain_arn: "arn:aws:cloudwatch:us-east-1:123456789012:domain/d-1a2b3c4d5e",
    #       name: "prod-observability-metrics",
    #       identity_providers: [
    #         IDC
    #       ],
    #       identity_provider_configuration: {
    #         identity_center_configuration: {
    #           identity_center_instance_arn: "arn:aws:sso:::instance/ssoins-1234567890abcdef"
    #         }
    #       },
    #       domain_endpoint_url: "https://d-1a2b3c4d5e.cloudwatch-omni.global.app.aws",
    #       custom_endpoint_urls: [
    #         "https://prod-observability-metrics.cloudwatch-omni.global.app.aws"
    #       ],
    #       identity_center_application_arn: "arn:aws:sso::123456789012:application/ssoins-1234567890abcdef/apl-0f9e8d7c6b5a4938",
    #       region: "us-east-1",
    #       created_at: Time.parse("2026-09-16T14:22:31Z"),
    #       updated_at: Time.parse("2026-09-17T09:11:52Z"),
    #       status: ACTIVE
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     name: "String",
    #     identity_providers: ["IAM" # One of: ["IAM", "IDC"]],
    #     identity_provider_configuration: {
    #       identity_center_configuration: {
    #         identity_center_instance_arn: "IdentityCenterInstanceArn"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain: { # required
    #       domain_id: "DomainId", # required
    #       domain_arn: "Arn", # required
    #       name: "String",
    #       identity_providers: ["IAM" # One of: ["IAM", "IDC"]], # required
    #       identity_provider_configuration: {
    #         identity_center_configuration: {
    #           identity_center_instance_arn: "IdentityCenterInstanceArn"
    #         }
    #       },
    #       domain_endpoint_url: "String", # required
    #       custom_endpoint_urls: ["String"],
    #       identity_center_application_arn: "Arn",
    #       region: "String", # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       status: "ACTIVE" # One of: ["ACTIVE"], # required
    #     }
    #   }
    # @return [Types::UpdateDomainOutput]
    def update_domain(params = {}, options = {})
      request = build_request(:update_domain, params)
      request.send_request(options)
    end

    # Updates an organization domain's name or identity provider configuration. Call this
    # operation in the Region where the domain was created.
    #
    # Only the provided fields are changed; omitted fields are left unchanged.
    # Renaming a domain also changes the endpoint URLs derived from its name.
    # @param [Hash, Types::UpdateDomainForOrganizationInput] params
    # @option params [String] :domain_id
    #   The ID of the organization domain to update.
    # @option params [String] :name
    #   A new name for the organization domain. Omit to leave unchanged. Must be 3-63
    #   characters: lowercase letters, numbers, and hyphens. It must begin and end with a
    #   letter or number and cannot contain consecutive hyphens.
    # @option params [Array<String>] :identity_providers
    #   The identity providers to configure for the domain. Omit to leave unchanged.
    # @option params [Types::IdentityProviderConfiguration] :identity_provider_configuration
    #   Identity provider configuration for the domain. Omit to leave unchanged.
    # @example Rename an organization domain
    #   # The following example performs a partial update that changes only the organization domain name; the omitted fields are left unchanged. The endpoint URLs derived from the name are updated, and updatedAt advances past createdAt. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     domain_id: "d-9z8y7x6w5v",
    #     name: "prod-observability-org-metrics"
    #   }
    #   options = {}
    #   response = client.update_domain_for_organization(params, options)
    #   response.to_h #=>
    #   {
    #     organization_domain: {
    #       domain_id: "d-9z8y7x6w5v",
    #       domain_arn: "arn:aws:cloudwatch:us-east-1:123456789012:organization-domain/d-9z8y7x6w5v",
    #       name: "prod-observability-org-metrics",
    #       domain_endpoint_url: "https://d-9z8y7x6w5v.cloudwatch-omni.global.app.aws",
    #       custom_endpoint_urls: [
    #         "https://prod-observability-org-metrics.cloudwatch-omni.global.app.aws"
    #       ],
    #       organization_id: "o-a1b2c3d4e5",
    #       owner_account_id: "123456789012",
    #       identity_providers: [
    #         IDC
    #       ],
    #       identity_provider_configuration: {
    #         identity_center_configuration: {
    #           identity_center_instance_arn: "arn:aws:sso:::instance/ssoins-1234567890abcdef"
    #         }
    #       },
    #       identity_center_application_arn: "arn:aws:sso::123456789012:application/ssoins-1234567890abcdef/apl-0f9e8d7c6b5a4938",
    #       region: "us-east-1",
    #       status: ACTIVE,
    #       domain_access_role_arn: "arn:aws:iam::123456789012:role/CloudWatchOrganizationDomainAccessRole",
    #       created_at: Time.parse("2026-09-16T14:22:31Z"),
    #       updated_at: Time.parse("2026-09-17T09:11:52Z")
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     name: "String",
    #     identity_providers: ["IAM" # One of: ["IAM", "IDC"]],
    #     identity_provider_configuration: {
    #       identity_center_configuration: {
    #         identity_center_instance_arn: "IdentityCenterInstanceArn"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_domain_for_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     organization_domain: { # required
    #       domain_id: "DomainId", # required
    #       domain_arn: "Arn", # required
    #       name: "String",
    #       domain_endpoint_url: "String", # required
    #       custom_endpoint_urls: ["String"],
    #       organization_id: "String", # required
    #       owner_account_id: "AccountId", # required
    #       identity_providers: ["IAM" # One of: ["IAM", "IDC"]], # required
    #       identity_provider_configuration: {
    #         identity_center_configuration: {
    #           identity_center_instance_arn: "IdentityCenterInstanceArn"
    #         }
    #       },
    #       identity_center_application_arn: "Arn",
    #       region: "String", # required
    #       status: "ACTIVE" # One of: ["ACTIVE"], # required
    #       domain_access_role_arn: "IamRoleArn",
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #     }
    #   }
    # @return [Types::UpdateDomainForOrganizationOutput]
    def update_domain_for_organization(params = {}, options = {})
      request = build_request(:update_domain_for_organization, params)
      request.send_request(options)
    end

    # Updates an existing integration, identified by its id, ARN, or name. Only the
    # fields you provide are changed.
    # @param [Hash, Types::UpdateIntegrationInput] params
    # @option params [Types::IntegrationIdentifier] :identifier
    #   Identifies the integration to update — exactly one of integrationId,
    #   integrationArn, or integrationName.
    # @option params [Types::IntegrationCredential] :credential
    #   The replacement credential used to authenticate with the provider.
    # @option params [Hash<String, String>] :integration_attributes
    #   The provider-specific attributes to associate with the integration.
    # @option params [String] :role_arn
    #   The Amazon Resource Name of the IAM role assumed to access the integration.
    # @example Update an integration's attributes
    #   # The following example replaces the provider-specific attributes of the integration identified by its id. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     identifier: {
    #     "integrationId" => a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d
    #   },
    #     integration_attributes: {
    #       "notificationChannel" => "ops-oncall"
    #     }
    #   }
    #   options = {}
    #   response = client.update_integration(params, options)
    #   response.to_h #=>
    #   {
    #     integration: {
    #       integration_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #       integration_arn: "arn:aws:cloudwatch:us-east-1:123456789012:integration/a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #       integration_type: AWS_INTEGRATION,
    #       name: "my-aws-integration",
    #       status: ACTIVE,
    #       integration_attributes: {
    #         "notificationChannel" => "ops-oncall"
    #       },
    #       created_at: Time.parse("2026-09-16T00:03:00Z"),
    #       updated_at: Time.parse("2026-09-16T12:00:00Z")
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: { # required
    #       # One of:
    #       integration_id: "String",
    #       integration_arn: "IntegrationArn",
    #       integration_name: "String"
    #     },
    #     credential: {
    #       # One of:
    #       oauth_code_credential: {
    #         auth_code: "String", # required
    #       },
    #       oauth_client_credential: {
    #         client_id: "String", # required
    #         client_secret: "SensitiveString", # required
    #         provider_id: "String"
    #       },
    #       api_key_credential: {
    #         api_key_value: "SensitiveString", # required
    #       }
    #     },
    #     integration_attributes: {
    #       "String" => "String"
    #     },
    #     role_arn: "String"
    #   }
    #   options = {}
    #   response = client.update_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     integration: {
    #       integration_id: "String", # required
    #       integration_arn: "IntegrationArn",
    #       integration_type: "AWS_CONFIG_SLREC" # One of: ["AWS_CONFIG_SLREC", "SLACK", "EXTERNAL_AGENT", "AWS_INTEGRATION"], # required
    #       name: "String", # required
    #       status: "ACTIVE" # One of: ["ACTIVE", "DELETED", "PENDING", "PENDING_OAUTH", "ERROR", "FAILED"], # required
    #       auth_type: "NONE" # One of: ["NONE", "OAUTH2", "API_KEY"],
    #       credential_arn: "String",
    #       role_arn: "String",
    #       integration_attributes: {
    #         "String" => "String"
    #       },
    #       authorization_url: "String",
    #       error_message: "String",
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       scope: "ACCOUNT" # One of: ["ACCOUNT", "ORGANIZATION"]
    #     }
    #   }
    # @return [Types::UpdateIntegrationOutput]
    def update_integration(params = {}, options = {})
      request = build_request(:update_integration, params)
      request.send_request(options)
    end

    # Updates an existing dashboard within a space.
    #
    # Only the provided fields are changed; omitted fields are left unchanged.
    # @param [Hash, Types::UpdateOmniDashboardInput] params
    # @option params [String] :space_id
    #   The unique ID of the space.
    # @option params [String] :dashboard_id
    #   The unique ID of the dashboard.
    # @option params [String] :body
    #   The new dashboard definition, as a JSON document. Maximum 1 MiB. Omit to
    #   leave unchanged.
    # @option params [String] :name
    #   A new name for the dashboard. Omit to leave unchanged.
    # @option params [String] :description
    #   A new description of the dashboard. Omit to leave unchanged.
    # @example Update a dashboard body
    #   # The following example updates only the body of a dashboard; the name and description are left unchanged. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #     dashboard_id: "c3d4e5f6-7a8b-4c9d-8e0f-1a2b3c4d5e6f",
    #     body: "{\"widgets\":[{\"type\":\"metric\",\"x\":0,\"y\":0,\"width\":24,\"height\":6,\"properties\":{\"metrics\":[[\"AWS/Lambda\",\"Errors\",\"FunctionName\",\"OrderProcessor\"],[\"AWS/Lambda\",\"Throttles\",\"FunctionName\",\"OrderProcessor\"]],\"region\":\"us-east-1\",\"title\":\"Lambda Errors and Throttles\"}}]}"
    #   }
    #   options = {}
    #   response = client.update_omni_dashboard(params, options)
    #   response.to_h #=>
    #   {
    #     omni_dashboard: {
    #       dashboard_id: "c3d4e5f6-7a8b-4c9d-8e0f-1a2b3c4d5e6f",
    #       arn: "arn:aws:cloudwatch:us-east-1:123456789012:omni-dashboard/c3d4e5f6-7a8b-4c9d-8e0f-1a2b3c4d5e6f",
    #       name: "service-health-overview",
    #       body: "{\"widgets\":[{\"type\":\"metric\",\"x\":0,\"y\":0,\"width\":24,\"height\":6,\"properties\":{\"metrics\":[[\"AWS/Lambda\",\"Errors\",\"FunctionName\",\"OrderProcessor\"],[\"AWS/Lambda\",\"Throttles\",\"FunctionName\",\"OrderProcessor\"]],\"region\":\"us-east-1\",\"title\":\"Lambda Errors and Throttles\"}}]}",
    #       created_by: "arn:aws:iam::123456789012:role/ObservabilityAdmin",
    #       description: "Overview of service health metrics.",
    #       tags: {
    #         "Team" => "observability"
    #       },
    #       created_at: Time.parse("2026-09-16T14:22:31Z"),
    #       updated_at: Time.parse("2026-09-17T09:11:52Z")
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     space_id: "SpaceId", # required
    #     dashboard_id: "DashboardId", # required
    #     body: "String",
    #     name: "String",
    #     description: "String"
    #   }
    #   options = {}
    #   response = client.update_omni_dashboard(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     omni_dashboard: { # required
    #       dashboard_id: "DashboardId", # required
    #       arn: "Arn", # required
    #       name: "String", # required
    #       body: "String", # required
    #       created_by: "String", # required
    #       description: "String",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #     }
    #   }
    # @return [Types::UpdateOmniDashboardOutput]
    def update_omni_dashboard(params = {}, options = {})
      request = build_request(:update_omni_dashboard, params)
      request.send_request(options)
    end

    # Updates a space.
    #
    # Only the provided fields are changed; omitted fields are left unchanged.
    # @param [Hash, Types::UpdateSpaceInput] params
    # @option params [String] :space_id
    #   The unique ID of the space to update.
    # @option params [String] :name
    #   A new name for the space. Omit to leave unchanged. Must be 3-64 characters:
    #   lowercase letters, numbers, and hyphens. It must begin and end with a letter or
    #   number and cannot contain consecutive hyphens.
    # @option params [String] :agent_core_evaluation_role_arn
    #   The ARN of the IAM role used by AgentCore online evaluation. Must be in the
    #   caller's account. Omit if the space does not use AgentCore online evaluation.
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   How to encrypt the space's data at rest. Omit to leave encryption unchanged.
    #   Pass `encryptionStrategy` AWS_OWNED to stop using a customer managed key and
    #   revert to service owned encryption.
    # @example Rename a space
    #   # The following example updates only the name of a space; omitted fields are left unchanged. The response returns the full space with a later updatedAt timestamp. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #     name: "prod-observability-team"
    #   }
    #   options = {}
    #   response = client.update_space(params, options)
    #   response.to_h #=>
    #   {
    #     space: {
    #       space_id: "a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #       name: "prod-observability-team",
    #       space_arn: "arn:aws:cloudwatch:us-east-1:123456789012:space/a1b2c3d4-5e6f-4a3b-8c9d-0e1f2a3b4c5d",
    #       domain_arn: "arn:aws:cloudwatch:us-east-1:123456789012:domain/d-1a2b3c4d5e",
    #       region: "us-east-1",
    #       owner_account_id: "123456789012",
    #       data_access_role_arn: "arn:aws:iam::123456789012:role/CloudWatchSpaceDataAccessRole",
    #       agent_core_evaluation_role_arn: "arn:aws:iam::123456789012:role/CloudWatchAgentCoreEvaluationRole",
    #       created_at: Time.parse("2026-09-16T14:22:31Z"),
    #       updated_at: Time.parse("2026-09-17T09:11:52Z"),
    #       status: ACTIVE,
    #       encryption_configuration: {
    #         encryption_strategy: CUSTOMER_MANAGED,
    #         kms_key_arn: "arn:aws:kms:us-east-1:123456789012:key/1a2b3c4d-5e6f-4a3b-8c9d-0e1f2a3b4c5d"
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     space_id: "SpaceId", # required
    #     name: "String",
    #     agent_core_evaluation_role_arn: "Arn",
    #     encryption_configuration: {
    #       encryption_strategy: "AWS_OWNED" # One of: ["AWS_OWNED", "CUSTOMER_MANAGED"], # required
    #       kms_key_arn: "KmsKeyArn"
    #     }
    #   }
    #   options = {}
    #   response = client.update_space(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     space: { # required
    #       space_id: "SpaceId", # required
    #       name: "String", # required
    #       space_arn: "Arn", # required
    #       domain_arn: "Arn",
    #       region: "String", # required
    #       owner_account_id: "AccountId", # required
    #       data_access_role_arn: "Arn", # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       agent_core_evaluation_role_arn: "Arn",
    #       status: "ACTIVE" # One of: ["ACTIVE", "SUSPENDED", "MOVING"], # required
    #       status_reason: "String",
    #       encryption_configuration: {
    #         encryption_strategy: "AWS_OWNED" # One of: ["AWS_OWNED", "CUSTOMER_MANAGED"], # required
    #         kms_key_arn: "KmsKeyArn"
    #       }
    #     }
    #   }
    # @return [Types::UpdateSpaceOutput]
    def update_space(params = {}, options = {})
      request = build_request(:update_space, params)
      request.send_request(options)
    end

    # Updates an existing view's definition and/or description.
    #
    # Only the fields you provide are changed. Managed views cannot be
    # updated.
    # @param [Hash, Types::UpdateViewRequest] params
    # @option params [String] :name
    #   The name of the view to update.
    # @option params [String] :definition
    #   The new SQL query that defines the view. Omit to leave unchanged.
    # @option params [String] :description
    #   The new description of the view. Omit to leave unchanged.
    # @example Update a view's definition
    #   # The following example changes only the definition; the omitted description is left unchanged. Managed views cannot be updated. The response carries the view's effective configuration. Payloads are shown as JSON; on the wire they are CBOR-encoded.
    #   params = {
    #     name: "view.service_errors",
    #     definition: "SELECT resource['attributes']['service.name'] AS service, COUNT(*) AS error_count FROM \"logs.default\" WHERE status['code'] IN ('2', 'ERROR') GROUP BY service"
    #   }
    #   options = {}
    #   response = client.update_view(params, options)
    #   response.to_h #=>
    #   {
    #     name: "view.service_errors",
    #     type: USER,
    #     description: "Error counts by service",
    #     definition: "SELECT resource['attributes']['service.name'] AS service, COUNT(*) AS error_count FROM \"logs.default\" WHERE status['code'] IN ('2', 'ERROR') GROUP BY service",
    #     created_at: Time.parse("2026-09-16T14:22:31Z"),
    #     updated_at: Time.parse("2026-09-17T09:11:52Z"),
    #     arn: "arn:aws:cloudwatch:us-east-1:123456789012:view/view.service_errors"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ViewName", # required
    #     definition: "ViewDefinition",
    #     description: "ViewDescription"
    #   }
    #   options = {}
    #   response = client.update_view(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "String", # required
    #     type: "USER" # One of: ["USER", "MANAGED"], # required
    #     description: "String",
    #     definition: "String", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     arn: "String", # required
    #   }
    # @return [Types::UpdateViewResponse]
    def update_view(params = {}, options = {})
      request = build_request(:update_view, params)
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
      context[:gem_name] = 'aws-sdk-cloudwatchomni'
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
          rpc_v2_cbor: Smithy::Client::RpcV2Cbor
        }
      end
    end
  end
end
