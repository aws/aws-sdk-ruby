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
require 'aws-sdk-core/json_rpc'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:computeoptimizerautomation)

module Aws::ComputeOptimizerAutomation
  # An API client for Aws::ComputeOptimizerAutomation.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::ComputeOptimizerAutomationService
    @identifier = :computeoptimizerautomation

    add_plugin(::Aws::ComputeOptimizerAutomation::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::ComputeOptimizerAutomation::EndpointProvider)
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
    #  Supported protocols: +:rpc_v2_cbor+, +:json_rpc+ (defaults to +:rpc_v2_cbor+).
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

    # <p>Associates one or more member accounts with your organization's management account, enabling centralized implementation of optimization actions across those accounts. Once associated, the management account (or a delegated administrator) can apply recommended actions to the member account. When you associate a member account, its organization rule mode is automatically set to "Any allowed," which permits the management account to create Automation rules that automatically apply actions to that account. If the member account has not previously enabled the Automation feature, the association process automatically enables it.</p> <note> <p>Only the management account or a delegated administrator can perform this action.</p> </note>
    # @param [Hash, Types::AssociateAccountsRequest] params
    # @option params [Array<String>] :account_ids
    #   <p> The IDs of the member accounts to associate. You can specify up to 50 account IDs. </p>
    # @option params [String] :client_token
    #   <p> A unique identifier to ensure idempotency of the request. Valid for 24 hours after creation. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_ids: ["AccountId"], # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.associate_accounts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_ids: ["AccountId"],
    #     errors: ["String"]
    #   }
    # @return [Types::AssociateAccountsResponse]
    def associate_accounts(params = {}, options = {})
      request = build_request(:associate_accounts, params)
      request.send_request(options)
    end

    # <p> Creates a new automation rule to apply recommended actions to resources based on specified criteria. </p>
    # @param [Hash, Types::CreateAutomationRuleRequest] params
    # @option params [String] :name
    #   <p> The name of the automation rule. </p>
    # @option params [String] :description
    #   <p> A description of the automation rule. </p>
    # @option params [String] :rule_type
    #   <p> The type of rule. </p> <note> <p>Only the management account or a delegated administrator can set the ruleType to be OrganizationRule.</p> </note>
    # @option params [Types::OrganizationConfiguration] :organization_configuration
    #   <p> Configuration for organization-level rules. Required for OrganizationRule type. </p>
    # @option params [String] :priority
    #   <p>A string representation of a decimal number between 0 and 1 (having up to 30 digits after the decimal point) that determines the priority of the rule. When multiple rules match the same recommended action, Compute Optimizer assigns the action to the rule with the lowest priority value (highest priority), even if that rule is scheduled to run later than other matching rules. </p>
    # @option params [Array<String>] :recommended_action_types
    #   <p> The types of recommended actions this rule will automate. </p>
    # @option params [Types::Criteria] :criteria
    #   <p>A set of conditions that specify which recommended action qualify for implementation. When a rule is active and a recommended action matches these criteria, Compute Optimizer implements the action at the scheduled run time. </p>
    # @option params [Types::Schedule] :schedule
    #   <p> The schedule for when the rule should run. </p>
    # @option params [String] :status
    #   <p>The status of the rule </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p> The tags to associate with the rule. </p>
    # @option params [String] :client_token
    #   <p> A unique identifier to ensure idempotency of the request. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "RuleName", # required
    #     description: "RuleDescription",
    #     rule_type: "OrganizationRule" # One of: ["OrganizationRule", "AccountRule"], # required
    #     organization_configuration: {
    #       rule_apply_order: "BeforeAccountRules" # One of: ["BeforeAccountRules", "AfterAccountRules"],
    #       account_ids: ["AccountId"]
    #     },
    #     priority: "String",
    #     recommended_action_types: ["SnapshotAndDeleteUnattachedEbsVolume" # One of: ["SnapshotAndDeleteUnattachedEbsVolume", "UpgradeEbsVolumeType"]], # required
    #     criteria: {
    #       region: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: ["StringCriteriaValue"]
    #         }
    #       ],
    #       resource_arn: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: ["StringCriteriaValue"]
    #         }
    #       ],
    #       ebs_volume_type: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: ["StringCriteriaValue"]
    #         }
    #       ],
    #       ebs_volume_size_in_gib: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: [1]
    #         }
    #       ],
    #       estimated_monthly_savings: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: [1.0]
    #         }
    #       ],
    #       resource_tag: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           key: "StringCriteriaValue",
    #           values: ["StringCriteriaValue"]
    #         }
    #       ],
    #       look_back_period_in_days: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: [1]
    #         }
    #       ],
    #       restart_needed: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: ["StringCriteriaValue"]
    #         }
    #       ]
    #     },
    #     schedule: { # required
    #       schedule_expression: "String",
    #       schedule_expression_timezone: "String",
    #       execution_window_in_minutes: 1
    #     },
    #     status: "Active" # One of: ["Active", "Inactive"], # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_automation_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_arn: "RuleArn",
    #     rule_id: "RuleId",
    #     name: "RuleName",
    #     description: "String",
    #     rule_type: "OrganizationRule" # One of: ["OrganizationRule", "AccountRule"],
    #     rule_revision: 1,
    #     organization_configuration: {
    #       rule_apply_order: "BeforeAccountRules" # One of: ["BeforeAccountRules", "AfterAccountRules"],
    #       account_ids: ["AccountId"]
    #     },
    #     priority: "String",
    #     recommended_action_types: ["SnapshotAndDeleteUnattachedEbsVolume" # One of: ["SnapshotAndDeleteUnattachedEbsVolume", "UpgradeEbsVolumeType"]],
    #     criteria: {
    #       region: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: ["StringCriteriaValue"]
    #         }
    #       ],
    #       resource_arn: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: ["StringCriteriaValue"]
    #         }
    #       ],
    #       ebs_volume_type: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: ["StringCriteriaValue"]
    #         }
    #       ],
    #       ebs_volume_size_in_gib: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: [1]
    #         }
    #       ],
    #       estimated_monthly_savings: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: [1.0]
    #         }
    #       ],
    #       resource_tag: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           key: "StringCriteriaValue",
    #           values: ["StringCriteriaValue"]
    #         }
    #       ],
    #       look_back_period_in_days: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: [1]
    #         }
    #       ],
    #       restart_needed: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: ["StringCriteriaValue"]
    #         }
    #       ]
    #     },
    #     schedule: {
    #       schedule_expression: "String",
    #       schedule_expression_timezone: "String",
    #       execution_window_in_minutes: 1
    #     },
    #     status: "Active" # One of: ["Active", "Inactive"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     created_timestamp: Time.now
    #   }
    # @return [Types::CreateAutomationRuleResponse]
    def create_automation_rule(params = {}, options = {})
      request = build_request(:create_automation_rule, params)
      request.send_request(options)
    end

    # <p> Deletes an existing automation rule. </p>
    # @param [Hash, Types::DeleteAutomationRuleRequest] params
    # @option params [String] :rule_arn
    #   <p> The ARN of the rule to delete. </p>
    # @option params [Integer] :rule_revision
    #   <p> The revision number of the rule to delete. </p>
    # @option params [String] :client_token
    #   <p> A unique identifier to ensure idempotency of the request. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_arn: "RuleArn", # required
    #     rule_revision: 1, # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_automation_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAutomationRuleResponse]
    def delete_automation_rule(params = {}, options = {})
      request = build_request(:delete_automation_rule, params)
      request.send_request(options)
    end

    # <p> Disassociates member accounts from your organization's management account, removing centralized automation capabilities. Once disassociated, organization rules no longer apply to the member account, and the management account (or delegated administrator) cannot create Automation rules for that account. </p> <note> <p>Only the management account or a delegated administrator can perform this action.</p> </note>
    # @param [Hash, Types::DisassociateAccountsRequest] params
    # @option params [Array<String>] :account_ids
    #   <p> The IDs of the member accounts to disassociate. </p>
    # @option params [String] :client_token
    #   <p> A unique identifier to ensure idempotency of the request. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_ids: ["AccountId"], # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.disassociate_accounts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_ids: ["AccountId"],
    #     errors: ["String"]
    #   }
    # @return [Types::DisassociateAccountsResponse]
    def disassociate_accounts(params = {}, options = {})
      request = build_request(:disassociate_accounts, params)
      request.send_request(options)
    end

    # <p> Retrieves details about a specific automation event. </p>
    # @param [Hash, Types::GetAutomationEventRequest] params
    # @option params [String] :event_id
    #   <p> The ID of the automation event to retrieve. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_id: "EventId", # required
    #   }
    #   options = {}
    #   response = client.get_automation_event(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_id: "EventId",
    #     event_description: "String",
    #     event_type: "SnapshotAndDeleteUnattachedEbsVolume" # One of: ["SnapshotAndDeleteUnattachedEbsVolume", "UpgradeEbsVolumeType"],
    #     event_status: "Ready" # One of: ["Ready", "InProgress", "Complete", "Failed", "Cancelled", "RollbackReady", "RollbackInProgress", "RollbackComplete", "RollbackFailed"],
    #     event_status_reason: "String",
    #     resource_arn: "ResourceArn",
    #     resource_id: "ResourceId",
    #     recommended_action_id: "RecommendedActionId",
    #     account_id: "AccountId",
    #     region: "String",
    #     rule_id: "RuleId",
    #     resource_type: "EbsVolume" # One of: ["EbsVolume"],
    #     created_timestamp: Time.now,
    #     completed_timestamp: Time.now,
    #     estimated_monthly_savings: {
    #       currency: "String", # required
    #       before_discount_savings: 1.0, # required
    #       after_discount_savings: 1.0, # required
    #       savings_estimation_mode: "BeforeDiscount" # One of: ["BeforeDiscount", "AfterDiscount"], # required
    #     }
    #   }
    # @return [Types::GetAutomationEventResponse]
    def get_automation_event(params = {}, options = {})
      request = build_request(:get_automation_event, params)
      request.send_request(options)
    end

    # <p> Retrieves details about a specific automation rule. </p>
    # @param [Hash, Types::GetAutomationRuleRequest] params
    # @option params [String] :rule_arn
    #   <p> The ARN of the rule to retrieve. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_arn: "RuleArn", # required
    #   }
    #   options = {}
    #   response = client.get_automation_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_arn: "RuleArn",
    #     rule_id: "RuleId",
    #     name: "RuleName",
    #     description: "String",
    #     rule_type: "OrganizationRule" # One of: ["OrganizationRule", "AccountRule"],
    #     rule_revision: 1,
    #     account_id: "AccountId",
    #     organization_configuration: {
    #       rule_apply_order: "BeforeAccountRules" # One of: ["BeforeAccountRules", "AfterAccountRules"],
    #       account_ids: ["AccountId"]
    #     },
    #     priority: "String",
    #     recommended_action_types: ["SnapshotAndDeleteUnattachedEbsVolume" # One of: ["SnapshotAndDeleteUnattachedEbsVolume", "UpgradeEbsVolumeType"]],
    #     criteria: {
    #       region: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: ["StringCriteriaValue"]
    #         }
    #       ],
    #       resource_arn: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: ["StringCriteriaValue"]
    #         }
    #       ],
    #       ebs_volume_type: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: ["StringCriteriaValue"]
    #         }
    #       ],
    #       ebs_volume_size_in_gib: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: [1]
    #         }
    #       ],
    #       estimated_monthly_savings: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: [1.0]
    #         }
    #       ],
    #       resource_tag: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           key: "StringCriteriaValue",
    #           values: ["StringCriteriaValue"]
    #         }
    #       ],
    #       look_back_period_in_days: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: [1]
    #         }
    #       ],
    #       restart_needed: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: ["StringCriteriaValue"]
    #         }
    #       ]
    #     },
    #     schedule: {
    #       schedule_expression: "String",
    #       schedule_expression_timezone: "String",
    #       execution_window_in_minutes: 1
    #     },
    #     status: "Active" # One of: ["Active", "Inactive"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     created_timestamp: Time.now,
    #     last_updated_timestamp: Time.now
    #   }
    # @return [Types::GetAutomationRuleResponse]
    def get_automation_rule(params = {}, options = {})
      request = build_request(:get_automation_rule, params)
      request.send_request(options)
    end

    # <p> Retrieves the current enrollment configuration for Compute Optimizer Automation. </p>
    # @param [Hash, Types::GetEnrollmentConfigurationRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_enrollment_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "Active" # One of: ["Active", "Inactive", "Pending", "Failed"], # required
    #     status_reason: "String",
    #     organization_rule_mode: "AnyAllowed" # One of: ["AnyAllowed", "NoneAllowed"],
    #     last_updated_timestamp: Time.now
    #   }
    # @return [Types::GetEnrollmentConfigurationResponse]
    def get_enrollment_configuration(params = {}, options = {})
      request = build_request(:get_enrollment_configuration, params)
      request.send_request(options)
    end

    # <p> Lists the accounts in your organization that are enrolled in Compute Optimizer and whether they have enabled Automation. </p> <note> <p>Only the management account or a delegated administrator can perform this action.</p> </note>
    # @param [Hash, Types::ListAccountsRequest] params
    # @option params [Integer] :max_results
    #   <p> The maximum number of results to return in a single call. </p>
    # @option params [String] :next_token
    #   <p> The token for the next page of results. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_accounts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     accounts: [ # required
    #       {
    #         account_id: "AccountId", # required
    #         status: "Active" # One of: ["Active", "Inactive", "Pending", "Failed"], # required
    #         organization_rule_mode: "AnyAllowed" # One of: ["AnyAllowed", "NoneAllowed"], # required
    #         status_reason: "String",
    #         last_updated_timestamp: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAccountsResponse]
    def list_accounts(params = {}, options = {})
      request = build_request(:list_accounts, params)
      request.send_request(options)
    end

    # <p>Lists the steps for a specific automation event. You can only list steps for events created within the past year. </p>
    # @param [Hash, Types::ListAutomationEventStepsRequest] params
    # @option params [String] :event_id
    #   <p> The ID of the automation event. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of automation event steps to return in a single response. Valid range is 1-1000.</p>
    # @option params [String] :next_token
    #   <p>A token used for pagination to retrieve the next set of results when the response is truncated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_id: "EventId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_automation_event_steps(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     automation_event_steps: [
    #       {
    #         event_id: "EventId",
    #         step_id: "StepId",
    #         step_type: "CreateEbsSnapshot" # One of: ["CreateEbsSnapshot", "DeleteEbsVolume", "ModifyEbsVolume", "CreateEbsVolume"],
    #         step_status: "Ready" # One of: ["Ready", "InProgress", "Complete", "Failed"],
    #         resource_id: "ResourceId",
    #         start_timestamp: Time.now,
    #         completed_timestamp: Time.now,
    #         estimated_monthly_savings: {
    #           currency: "String", # required
    #           before_discount_savings: 1.0, # required
    #           after_discount_savings: 1.0, # required
    #           savings_estimation_mode: "BeforeDiscount" # One of: ["BeforeDiscount", "AfterDiscount"], # required
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAutomationEventStepsResponse]
    def list_automation_event_steps(params = {}, options = {})
      request = build_request(:list_automation_event_steps, params)
      request.send_request(options)
    end

    # <p>Provides a summary of automation events based on specified filters. Only events created within the past year will be included in the summary. </p>
    # @param [Hash, Types::ListAutomationEventSummariesRequest] params
    # @option params [Array<Types::AutomationEventFilter>] :filters
    #   <p> The filters to apply to the list of automation event summaries. </p>
    # @option params [String] :start_date_inclusive
    #   <p>The start date for filtering automation event summaries, inclusive. Events created on or after this date will be included.</p>
    # @option params [String] :end_date_exclusive
    #   <p>The end date for filtering automation event summaries, exclusive. Events created before this date will be included.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of automation event summaries to return in a single response. Valid range is 1-1000.</p>
    # @option params [String] :next_token
    #   <p>A token used for pagination to retrieve the next set of results when the response is truncated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "AutomationEventFilterName", # required
    #         values: ["FilterValue"], # required
    #       }
    #     ],
    #     start_date_inclusive: "String",
    #     end_date_exclusive: "String",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_automation_event_summaries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     automation_event_summaries: [
    #       {
    #         key: "String",
    #         dimensions: [
    #           {
    #             key: "SummaryDimensionKey", # required
    #             value: "String", # required
    #           }
    #         ],
    #         time_period: {
    #           start_time_inclusive: Time.now,
    #           end_time_exclusive: Time.now
    #         },
    #         total: {
    #           automation_event_count: 1,
    #           estimated_monthly_savings: {
    #             currency: "String", # required
    #             before_discount_savings: 1.0, # required
    #             after_discount_savings: 1.0, # required
    #             savings_estimation_mode: "BeforeDiscount" # One of: ["BeforeDiscount", "AfterDiscount"], # required
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAutomationEventSummariesResponse]
    def list_automation_event_summaries(params = {}, options = {})
      request = build_request(:list_automation_event_summaries, params)
      request.send_request(options)
    end

    # <p>Lists automation events based on specified filters. You can retrieve events that were created within the past year. </p>
    # @param [Hash, Types::ListAutomationEventsRequest] params
    # @option params [Array<Types::AutomationEventFilter>] :filters
    #   <p> The filters to apply to the list of automation events. </p>
    # @option params [Time] :start_time_inclusive
    #   <p> The start of the time range to query for events. </p>
    # @option params [Time] :end_time_exclusive
    #   <p> The end of the time range to query for events. </p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of results to return in a single call. </p>
    # @option params [String] :next_token
    #   <p> The token for the next page of results. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "AutomationEventFilterName", # required
    #         values: ["FilterValue"], # required
    #       }
    #     ],
    #     start_time_inclusive: Time.now,
    #     end_time_exclusive: Time.now,
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_automation_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     automation_events: [
    #       {
    #         event_id: "EventId",
    #         event_description: "String",
    #         event_type: "SnapshotAndDeleteUnattachedEbsVolume" # One of: ["SnapshotAndDeleteUnattachedEbsVolume", "UpgradeEbsVolumeType"],
    #         event_status: "Ready" # One of: ["Ready", "InProgress", "Complete", "Failed", "Cancelled", "RollbackReady", "RollbackInProgress", "RollbackComplete", "RollbackFailed"],
    #         event_status_reason: "String",
    #         resource_arn: "ResourceArn",
    #         resource_id: "ResourceId",
    #         recommended_action_id: "RecommendedActionId",
    #         account_id: "AccountId",
    #         region: "String",
    #         rule_id: "RuleId",
    #         resource_type: "EbsVolume" # One of: ["EbsVolume"],
    #         created_timestamp: Time.now,
    #         completed_timestamp: Time.now,
    #         estimated_monthly_savings: {
    #           currency: "String", # required
    #           before_discount_savings: 1.0, # required
    #           after_discount_savings: 1.0, # required
    #           savings_estimation_mode: "BeforeDiscount" # One of: ["BeforeDiscount", "AfterDiscount"], # required
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAutomationEventsResponse]
    def list_automation_events(params = {}, options = {})
      request = build_request(:list_automation_events, params)
      request.send_request(options)
    end

    # <p>Returns a preview of the recommended actions that match your Automation rule's configuration and criteria. </p>
    # @param [Hash, Types::ListAutomationRulePreviewRequest] params
    # @option params [String] :rule_type
    #   <p> The type of rule. </p> <note> <p>Only the management account or a delegated administrator can set the ruleType to be OrganizationRule.</p> </note>
    # @option params [Types::OrganizationScope] :organization_scope
    #   <p> The organizational scope for the rule preview. </p>
    # @option params [Array<String>] :recommended_action_types
    #   <p> The types of recommended actions to include in the preview. </p>
    # @option params [Types::Criteria] :criteria
    #   <p>A set of conditions that specify which recommended action qualify for implementation. When a rule is active and a recommended action matches these criteria, Compute Optimizer implements the action at the scheduled run time. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of automation rule preview results to return in a single response. Valid range is 1-1000.</p>
    # @option params [String] :next_token
    #   <p>A token used for pagination to retrieve the next set of results when the response is truncated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_type: "OrganizationRule" # One of: ["OrganizationRule", "AccountRule"], # required
    #     organization_scope: {
    #       account_ids: ["AccountId"]
    #     },
    #     recommended_action_types: ["SnapshotAndDeleteUnattachedEbsVolume" # One of: ["SnapshotAndDeleteUnattachedEbsVolume", "UpgradeEbsVolumeType"]], # required
    #     criteria: {
    #       region: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: ["StringCriteriaValue"]
    #         }
    #       ],
    #       resource_arn: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: ["StringCriteriaValue"]
    #         }
    #       ],
    #       ebs_volume_type: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: ["StringCriteriaValue"]
    #         }
    #       ],
    #       ebs_volume_size_in_gib: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: [1]
    #         }
    #       ],
    #       estimated_monthly_savings: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: [1.0]
    #         }
    #       ],
    #       resource_tag: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           key: "StringCriteriaValue",
    #           values: ["StringCriteriaValue"]
    #         }
    #       ],
    #       look_back_period_in_days: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: [1]
    #         }
    #       ],
    #       restart_needed: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: ["StringCriteriaValue"]
    #         }
    #       ]
    #     },
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_automation_rule_preview(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     preview_results: [
    #       {
    #         recommended_action_id: "RecommendedActionId",
    #         resource_arn: "ResourceArn",
    #         resource_id: "ResourceId",
    #         account_id: "AccountId",
    #         region: "String",
    #         resource_type: "EbsVolume" # One of: ["EbsVolume"],
    #         look_back_period_in_days: 1,
    #         recommended_action_type: "SnapshotAndDeleteUnattachedEbsVolume" # One of: ["SnapshotAndDeleteUnattachedEbsVolume", "UpgradeEbsVolumeType"],
    #         current_resource_summary: "String",
    #         current_resource_details: {
    #           # One of:
    #           ebs_volume: {
    #             configuration: {
    #               type: "String",
    #               size_in_gib: 1,
    #               iops: 1,
    #               throughput: 1
    #             }
    #           }
    #         },
    #         recommended_resource_summary: "String",
    #         recommended_resource_details: {
    #           # One of:
    #           ebs_volume: {
    #             configuration: {
    #               type: "String",
    #               size_in_gib: 1,
    #               iops: 1,
    #               throughput: 1
    #             }
    #           }
    #         },
    #         restart_needed: false,
    #         estimated_monthly_savings: {
    #           currency: "String", # required
    #           before_discount_savings: 1.0, # required
    #           after_discount_savings: 1.0, # required
    #           savings_estimation_mode: "BeforeDiscount" # One of: ["BeforeDiscount", "AfterDiscount"], # required
    #         },
    #         resource_tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAutomationRulePreviewResponse]
    def list_automation_rule_preview(params = {}, options = {})
      request = build_request(:list_automation_rule_preview, params)
      request.send_request(options)
    end

    # <p>Returns a summary of the recommended actions that match your rule preview configuration and criteria. </p>
    # @param [Hash, Types::ListAutomationRulePreviewSummariesRequest] params
    # @option params [String] :rule_type
    #   <p>The type of rule.</p>
    # @option params [Types::OrganizationScope] :organization_scope
    #   <p>The organizational scope for the rule preview.</p>
    # @option params [Array<String>] :recommended_action_types
    #   <p>The types of recommended actions to include in the preview.</p>
    # @option params [Types::Criteria] :criteria
    #   <p> A set of conditions that specify which recommended action qualify for implementation. When a rule is active and a recommended action matches these criteria, Compute Optimizer implements the action at the scheduled run time. You can specify up to 20 conditions per filter criteria and 20 values per condition. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of automation rule preview summaries to return in a single response. Valid range is 1-1000.</p>
    # @option params [String] :next_token
    #   <p>A token used for pagination to retrieve the next set of results when the response is truncated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_type: "OrganizationRule" # One of: ["OrganizationRule", "AccountRule"], # required
    #     organization_scope: {
    #       account_ids: ["AccountId"]
    #     },
    #     recommended_action_types: ["SnapshotAndDeleteUnattachedEbsVolume" # One of: ["SnapshotAndDeleteUnattachedEbsVolume", "UpgradeEbsVolumeType"]], # required
    #     criteria: {
    #       region: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: ["StringCriteriaValue"]
    #         }
    #       ],
    #       resource_arn: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: ["StringCriteriaValue"]
    #         }
    #       ],
    #       ebs_volume_type: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: ["StringCriteriaValue"]
    #         }
    #       ],
    #       ebs_volume_size_in_gib: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: [1]
    #         }
    #       ],
    #       estimated_monthly_savings: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: [1.0]
    #         }
    #       ],
    #       resource_tag: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           key: "StringCriteriaValue",
    #           values: ["StringCriteriaValue"]
    #         }
    #       ],
    #       look_back_period_in_days: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: [1]
    #         }
    #       ],
    #       restart_needed: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: ["StringCriteriaValue"]
    #         }
    #       ]
    #     },
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_automation_rule_preview_summaries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     preview_result_summaries: [
    #       {
    #         key: "String", # required
    #         total: { # required
    #           recommended_action_count: 1, # required
    #           estimated_monthly_savings: { # required
    #             currency: "String", # required
    #             before_discount_savings: 1.0, # required
    #             after_discount_savings: 1.0, # required
    #             savings_estimation_mode: "BeforeDiscount" # One of: ["BeforeDiscount", "AfterDiscount"], # required
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAutomationRulePreviewSummariesResponse]
    def list_automation_rule_preview_summaries(params = {}, options = {})
      request = build_request(:list_automation_rule_preview_summaries, params)
      request.send_request(options)
    end

    # <p> Lists the automation rules that match specified filters. </p>
    # @param [Hash, Types::ListAutomationRulesRequest] params
    # @option params [Array<Types::Filter>] :filters
    #   <p> The filters to apply to the list of automation rules. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of automation rules to return in a single response. Valid range is 1-1000.</p>
    # @option params [String] :next_token
    #   <p>A token used for pagination to retrieve the next set of results when the response is truncated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "AutomationRuleFilterName", # required
    #         values: ["FilterValue"], # required
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_automation_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     automation_rules: [
    #       {
    #         rule_arn: "RuleArn",
    #         rule_id: "RuleId",
    #         name: "RuleName",
    #         description: "String",
    #         rule_type: "OrganizationRule" # One of: ["OrganizationRule", "AccountRule"],
    #         rule_revision: 1,
    #         account_id: "AccountId",
    #         organization_configuration: {
    #           rule_apply_order: "BeforeAccountRules" # One of: ["BeforeAccountRules", "AfterAccountRules"],
    #           account_ids: ["AccountId"]
    #         },
    #         priority: "String",
    #         recommended_action_types: ["SnapshotAndDeleteUnattachedEbsVolume" # One of: ["SnapshotAndDeleteUnattachedEbsVolume", "UpgradeEbsVolumeType"]],
    #         schedule: {
    #           schedule_expression: "String",
    #           schedule_expression_timezone: "String",
    #           execution_window_in_minutes: 1
    #         },
    #         status: "Active" # One of: ["Active", "Inactive"],
    #         created_timestamp: Time.now,
    #         last_updated_timestamp: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAutomationRulesResponse]
    def list_automation_rules(params = {}, options = {})
      request = build_request(:list_automation_rules, params)
      request.send_request(options)
    end

    # <p> Provides a summary of recommended actions based on specified filters. </p> <note> <p>Management accounts and delegated administrators can retrieve recommended actions that include associated member accounts. You can associate a member account using <code>AssociateAccounts</code>.</p> </note>
    # @param [Hash, Types::ListRecommendedActionSummariesRequest] params
    # @option params [Array<Types::RecommendedActionFilter>] :filters
    #   <p>A list of filters to apply when retrieving recommended action summaries. Filters can be based on resource type, action type, account ID, and other criteria.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of recommended action summaries to return in a single response. Valid range is 1-1000.</p>
    # @option params [String] :next_token
    #   <p>A token used for pagination to retrieve the next set of results when the response is truncated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "RecommendedActionFilterName", # required
    #         values: ["FilterValue"], # required
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_recommended_action_summaries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recommended_action_summaries: [
    #       {
    #         key: "String", # required
    #         total: { # required
    #           recommended_action_count: 1, # required
    #           estimated_monthly_savings: { # required
    #             currency: "String", # required
    #             before_discount_savings: 1.0, # required
    #             after_discount_savings: 1.0, # required
    #             savings_estimation_mode: "BeforeDiscount" # One of: ["BeforeDiscount", "AfterDiscount"], # required
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListRecommendedActionSummariesResponse]
    def list_recommended_action_summaries(params = {}, options = {})
      request = build_request(:list_recommended_action_summaries, params)
      request.send_request(options)
    end

    # <p> Lists the recommended actions based that match specified filters. </p> <note> <p>Management accounts and delegated administrators can retrieve recommended actions that include associated member accounts. You can associate a member account using <code>AssociateAccounts</code>.</p> </note>
    # @param [Hash, Types::ListRecommendedActionsRequest] params
    # @option params [Array<Types::RecommendedActionFilter>] :filters
    #   <p> The filters to apply to the list of recommended actions. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of recommended actions to return in a single response. Valid range is 1-1000.</p>
    # @option params [String] :next_token
    #   <p>A token used for pagination to retrieve the next set of results when the response is truncated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "RecommendedActionFilterName", # required
    #         values: ["FilterValue"], # required
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_recommended_actions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recommended_actions: [
    #       {
    #         recommended_action_id: "RecommendedActionId",
    #         resource_arn: "ResourceArn",
    #         resource_id: "ResourceId",
    #         account_id: "AccountId",
    #         region: "String",
    #         resource_type: "EbsVolume" # One of: ["EbsVolume"],
    #         look_back_period_in_days: 1,
    #         recommended_action_type: "SnapshotAndDeleteUnattachedEbsVolume" # One of: ["SnapshotAndDeleteUnattachedEbsVolume", "UpgradeEbsVolumeType"],
    #         current_resource_summary: "String",
    #         current_resource_details: {
    #           # One of:
    #           ebs_volume: {
    #             configuration: {
    #               type: "String",
    #               size_in_gib: 1,
    #               iops: 1,
    #               throughput: 1
    #             }
    #           }
    #         },
    #         recommended_resource_summary: "String",
    #         recommended_resource_details: {
    #           # One of:
    #           ebs_volume: {
    #             configuration: {
    #               type: "String",
    #               size_in_gib: 1,
    #               iops: 1,
    #               throughput: 1
    #             }
    #           }
    #         },
    #         restart_needed: false,
    #         estimated_monthly_savings: {
    #           currency: "String", # required
    #           before_discount_savings: 1.0, # required
    #           after_discount_savings: 1.0, # required
    #           savings_estimation_mode: "BeforeDiscount" # One of: ["BeforeDiscount", "AfterDiscount"], # required
    #         },
    #         resource_tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListRecommendedActionsResponse]
    def list_recommended_actions(params = {}, options = {})
      request = build_request(:list_recommended_actions, params)
      request.send_request(options)
    end

    # <p> Lists the tags for a specified resource. </p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p> The ARN of the resource to list tags for. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "RuleArn", # required
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

    # <p> Initiates a rollback for a completed automation event. </p> <note> <p>Management accounts and delegated administrators can only initiate a rollback for events belonging to associated member accounts. You can associate a member account using <code>AssociateAccounts</code>.</p> </note>
    # @param [Hash, Types::RollbackAutomationEventRequest] params
    # @option params [String] :event_id
    #   <p> The ID of the automation event to roll back. </p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Must be 1-64 characters long and contain only alphanumeric characters, underscores, and hyphens.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_id: "EventId", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.rollback_automation_event(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_id: "EventId",
    #     event_status: "Ready" # One of: ["Ready", "InProgress", "Complete", "Failed", "Cancelled", "RollbackReady", "RollbackInProgress", "RollbackComplete", "RollbackFailed"]
    #   }
    # @return [Types::RollbackAutomationEventResponse]
    def rollback_automation_event(params = {}, options = {})
      request = build_request(:rollback_automation_event, params)
      request.send_request(options)
    end

    # <p> Initiates a one-time, on-demand automation for the specified recommended action. </p> <note> <p>Management accounts and delegated administrators can only initiate recommended actions for associated member accounts. You can associate a member account using <code>AssociateAccounts</code>.</p> </note>
    # @param [Hash, Types::StartAutomationEventRequest] params
    # @option params [String] :recommended_action_id
    #   <p> The ID of the recommended action to automate. </p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Must be 1-64 characters long and contain only alphanumeric characters, underscores, and hyphens.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     recommended_action_id: "RecommendedActionId", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.start_automation_event(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recommended_action_id: "RecommendedActionId",
    #     event_id: "EventId",
    #     event_status: "Ready" # One of: ["Ready", "InProgress", "Complete", "Failed", "Cancelled", "RollbackReady", "RollbackInProgress", "RollbackComplete", "RollbackFailed"]
    #   }
    # @return [Types::StartAutomationEventResponse]
    def start_automation_event(params = {}, options = {})
      request = build_request(:start_automation_event, params)
      request.send_request(options)
    end

    # <p> Adds tags to the specified resource. </p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p> The ARN of the resource to tag. </p>
    # @option params [Integer] :rule_revision
    #   <p>The revision number of the automation rule to tag. This ensures you're tagging the correct version of the rule.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p> The tags to add to the resource. </p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Must be 1-64 characters long and contain only alphanumeric characters, underscores, and hyphens.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "RuleArn", # required
    #     rule_revision: 1, # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_token: "ClientToken"
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

    # <p> Removes tags from the specified resource. </p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p> The ARN of the resource to untag. </p>
    # @option params [Integer] :rule_revision
    #   <p>The revision number of the automation rule to untag. This ensures you're untagging the correct version of the rule.</p>
    # @option params [Array<String>] :tag_keys
    #   <p> The keys of the tags to remove from the resource. </p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Must be 1-64 characters long and contain only alphanumeric characters, underscores, and hyphens.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "RuleArn", # required
    #     rule_revision: 1, # required
    #     tag_keys: ["String"], # required
    #     client_token: "ClientToken"
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

    # <p> Updates an existing automation rule. </p>
    # @param [Hash, Types::UpdateAutomationRuleRequest] params
    # @option params [String] :rule_arn
    #   <p> The ARN of the rule to update. </p>
    # @option params [Integer] :rule_revision
    #   <p> The revision number of the rule to update. </p>
    # @option params [String] :name
    #   <p>The updated name of the automation rule. Must be 1-128 characters long and contain only alphanumeric characters, underscores, and hyphens.</p>
    # @option params [String] :description
    #   <p>The updated description of the automation rule. Can be up to 1024 characters long and contain alphanumeric characters, underscores, hyphens, spaces, and certain special characters.</p>
    # @option params [String] :rule_type
    #   <p>The updated type of automation rule. Can be either OrganizationRule for organization-wide rules or AccountRule for account-specific rules.</p>
    # @option params [Types::OrganizationConfiguration] :organization_configuration
    #   <p>Updated configuration settings for organization-wide rules, including rule application order and target account IDs.</p>
    # @option params [String] :priority
    #   <p>The updated priority level of the automation rule, used to determine execution order when multiple rules apply to the same resource.</p>
    # @option params [Array<String>] :recommended_action_types
    #   <p>Updated list of recommended action types that this rule can execute, such as SnapshotAndDeleteUnattachedEbsVolume or UpgradeEbsVolumeType.</p>
    # @option params [Types::Criteria] :criteria
    #   <p> A set of conditions that specify which recommended action qualify for implementation. When a rule is active and a recommended action matches these criteria, Compute Optimizer implements the action at the scheduled run time. You can specify up to 20 conditions per filter criteria and 20 values per condition. </p>
    # @option params [Types::Schedule] :schedule
    #   <p>The updated schedule configuration for when the automation rule should execute, including cron expression, timezone, and execution window.</p>
    # @option params [String] :status
    #   <p>The updated status of the automation rule. Can be Active or Inactive.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Must be 1-64 characters long and contain only alphanumeric characters, underscores, and hyphens.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_arn: "RuleArn", # required
    #     rule_revision: 1, # required
    #     name: "RuleName",
    #     description: "RuleDescription",
    #     rule_type: "OrganizationRule" # One of: ["OrganizationRule", "AccountRule"],
    #     organization_configuration: {
    #       rule_apply_order: "BeforeAccountRules" # One of: ["BeforeAccountRules", "AfterAccountRules"],
    #       account_ids: ["AccountId"]
    #     },
    #     priority: "String",
    #     recommended_action_types: ["SnapshotAndDeleteUnattachedEbsVolume" # One of: ["SnapshotAndDeleteUnattachedEbsVolume", "UpgradeEbsVolumeType"]],
    #     criteria: {
    #       region: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: ["StringCriteriaValue"]
    #         }
    #       ],
    #       resource_arn: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: ["StringCriteriaValue"]
    #         }
    #       ],
    #       ebs_volume_type: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: ["StringCriteriaValue"]
    #         }
    #       ],
    #       ebs_volume_size_in_gib: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: [1]
    #         }
    #       ],
    #       estimated_monthly_savings: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: [1.0]
    #         }
    #       ],
    #       resource_tag: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           key: "StringCriteriaValue",
    #           values: ["StringCriteriaValue"]
    #         }
    #       ],
    #       look_back_period_in_days: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: [1]
    #         }
    #       ],
    #       restart_needed: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: ["StringCriteriaValue"]
    #         }
    #       ]
    #     },
    #     schedule: {
    #       schedule_expression: "String",
    #       schedule_expression_timezone: "String",
    #       execution_window_in_minutes: 1
    #     },
    #     status: "Active" # One of: ["Active", "Inactive"],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_automation_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_arn: "RuleArn",
    #     rule_revision: 1,
    #     name: "RuleName",
    #     description: "String",
    #     rule_type: "OrganizationRule" # One of: ["OrganizationRule", "AccountRule"],
    #     organization_configuration: {
    #       rule_apply_order: "BeforeAccountRules" # One of: ["BeforeAccountRules", "AfterAccountRules"],
    #       account_ids: ["AccountId"]
    #     },
    #     priority: "String",
    #     recommended_action_types: ["SnapshotAndDeleteUnattachedEbsVolume" # One of: ["SnapshotAndDeleteUnattachedEbsVolume", "UpgradeEbsVolumeType"]],
    #     criteria: {
    #       region: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: ["StringCriteriaValue"]
    #         }
    #       ],
    #       resource_arn: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: ["StringCriteriaValue"]
    #         }
    #       ],
    #       ebs_volume_type: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: ["StringCriteriaValue"]
    #         }
    #       ],
    #       ebs_volume_size_in_gib: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: [1]
    #         }
    #       ],
    #       estimated_monthly_savings: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: [1.0]
    #         }
    #       ],
    #       resource_tag: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           key: "StringCriteriaValue",
    #           values: ["StringCriteriaValue"]
    #         }
    #       ],
    #       look_back_period_in_days: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: [1]
    #         }
    #       ],
    #       restart_needed: [
    #         {
    #           comparison: "StringEquals" # One of: ["StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals", "StringEqualsIfExists", "StringNotEqualsIfExists", "StringEqualsIgnoreCaseIfExists", "StringNotEqualsIgnoreCaseIfExists", "StringLikeIfExists", "StringNotLikeIfExists", "NumericEqualsIfExists", "NumericNotEqualsIfExists", "NumericLessThanIfExists", "NumericLessThanEqualsIfExists", "NumericGreaterThanIfExists", "NumericGreaterThanEqualsIfExists"],
    #           values: ["StringCriteriaValue"]
    #         }
    #       ]
    #     },
    #     schedule: {
    #       schedule_expression: "String",
    #       schedule_expression_timezone: "String",
    #       execution_window_in_minutes: 1
    #     },
    #     status: "Active" # One of: ["Active", "Inactive"],
    #     created_timestamp: Time.now,
    #     last_updated_timestamp: Time.now
    #   }
    # @return [Types::UpdateAutomationRuleResponse]
    def update_automation_rule(params = {}, options = {})
      request = build_request(:update_automation_rule, params)
      request.send_request(options)
    end

    # <p>Updates your account’s Compute Optimizer Automation enrollment configuration. </p>
    # @param [Hash, Types::UpdateEnrollmentConfigurationRequest] params
    # @option params [String] :status
    #   <p>The desired enrollment status. </p> <ul> <li> <p>Active - Enables the Automation feature for your account.</p> </li> <li> <p>Inactive - Disables the Automation feature for your account and stops all of your automation rules. If you opt in again later, all rules will be inactive, and you must enable the rules you want to run. You must wait at least 24 hours after opting out to opt in again.</p> </li> </ul> <note> <p>The <code>Pending</code> and <code>Failed</code> options cannot be used to update the enrollment status of an account. They are returned in the response of a request to update the enrollment status of an account.</p> <p>If you are a member account, your account must be disassociated from your organization’s management account before you can disable Automation. Contact your administrator to make this change.</p> </note>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Must be 1-64 characters long and contain only alphanumeric characters, underscores, and hyphens.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     status: "Active" # One of: ["Active", "Inactive", "Pending", "Failed"], # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_enrollment_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "Active" # One of: ["Active", "Inactive", "Pending", "Failed"], # required
    #     status_reason: "String",
    #     last_updated_timestamp: Time.now, # required
    #   }
    # @return [Types::UpdateEnrollmentConfigurationResponse]
    def update_enrollment_configuration(params = {}, options = {})
      request = build_request(:update_enrollment_configuration, params)
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
      context[:gem_name] = 'aws-sdk-computeoptimizerautomation'
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
          rpc_v2_cbor: Smithy::Client::RpcV2Cbor,
          json_rpc: Aws::Core::JsonRpc
        }
      end
    end
  end
end
