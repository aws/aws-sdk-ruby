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
require 'aws-sdk-core/rest_json'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:pricingplanmanager)

module Aws::PricingPlanManager
  # An API client for Aws::PricingPlanManager.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSPricingPlanManager
    @identifier = :pricingplanmanager

    add_plugin(::Aws::PricingPlanManager::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::PricingPlanManager::EndpointProvider)
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
    #  Supported protocols: +:rest_json+ (defaults to +:rest_json+).
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

    # <p>Approves a subscription that is in <code>PENDING_APPROVAL</code> status, activating it and starting billing.</p> <note> <p>This operation requires the current <code>ETag</code> value for concurrency control. Retrieve it from a previous <code>GetSubscription</code> or <code>ListSubscriptions</code> response.</p> </note>
    # @param [Hash, Types::ApprovePaidSubscriptionInput] params
    # @option params [String] :arn
    #   <p>The ARN of the subscription to approve.</p>
    # @option params [String] :if_match
    #   <p>The <code>ETag</code> value from a previous <code>GetSubscription</code> or <code>ListSubscriptions</code> response. This ensures you are approving the expected version of the subscription.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the request is handled only once.</p>
    # @example Approve a pending paid subscription
    #   # Example operation for approve_paid_subscription
    #   params = {
    #     arn: "arn:aws:pricingplanmanager::123456789012:subscription/sub-1234567890",
    #     if_match: "1"
    #   }
    #   options = {}
    #   response = client.approve_paid_subscription(params, options)
    #   response.to_h #=>
    #   {
    #     subscription: {
    #       arn: "arn:aws:pricingplanmanager::123456789012:subscription/sub-1234567890",
    #       plan_family: "CloudFront",
    #       plan_tier: "PRO",
    #       status: SYNC_IN_PROGRESS,
    #       resource_arns: [
    #         "arn:aws:cloudfront::123456789012:distribution/EDFDVBD6EXAMPLE",
    #         "arn:aws:wafv2:us-east-1:123456789012:global/webacl/ExampleWebACL/a1b2c3d4"
    #       ],
    #       created_at: Time.parse("2025-01-15T10:30:00Z"),
    #       updated_at: Time.parse("2025-01-15T10:35:00Z")
    #     },
    #     e_tag: "2"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "SubscriptionArn", # required
    #     if_match: "String", # required
    #     client_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.approve_paid_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscription: { # required
    #       arn: "SubscriptionArn", # required
    #       plan_family: "String", # required
    #       plan_tier: "String", # required
    #       usage_level: "String",
    #       scheduled_change: {
    #         change_type: "DOWNGRADE" # One of: ["DOWNGRADE", "CANCELLATION"], # required
    #         effective_date: Time.now,
    #         plan_tier: "String",
    #         usage_level: "String"
    #       },
    #       status: "PENDING_APPROVAL" # One of: ["PENDING_APPROVAL", "ACTIVE", "SYNC_IN_PROGRESS", "FAILED"], # required
    #       status_reason: "String",
    #       resource_arns: ["String"], # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #     },
    #     e_tag: "String", # required
    #   }
    # @return [Types::ApprovePaidSubscriptionOutput]
    def approve_paid_subscription(params = {}, options = {})
      request = build_request(:approve_paid_subscription, params)
      request.send_request(options)
    end

    # <p>Adds one or more resources to an existing subscription. The subscription must be in an active state that is not pending other changes.</p> <note> <p>For subscriptions in the CloudFront plan family, the associated resources must include exactly one Amazon CloudFront distribution and one WAF web ACL. You can also include other supported resources, such as Amazon Route 53 hosted zones, and CloudFront KeyValueStores.</p> </note>
    # @param [Hash, Types::AssociateResourcesToSubscriptionInput] params
    # @option params [String] :arn
    #   <p>The ARN of the subscription to add resources to.</p>
    # @option params [Array<String>] :resource_arns
    #   <p>The ARNs of the resources to add to the subscription.</p>
    # @option params [String] :if_match
    #   <p>The <code>ETag</code> value from a previous <code>GetSubscription</code> or <code>ListSubscriptions</code> response.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the request is handled only once.</p>
    # @example Associate additional resources to a subscription
    #   # Example operation for associate_resources_to_subscription
    #   params = {
    #     arn: "arn:aws:pricingplanmanager::123456789012:subscription/sub-1234567890",
    #     resource_arns: [
    #       "arn:aws:route53:::hostedzone/Z0123456789EXAMPLE"
    #     ],
    #     if_match: "1"
    #   }
    #   options = {}
    #   response = client.associate_resources_to_subscription(params, options)
    #   response.to_h #=>
    #   {
    #     subscription: {
    #       arn: "arn:aws:pricingplanmanager::123456789012:subscription/sub-1234567890",
    #       plan_family: "CloudFront",
    #       plan_tier: "PRO",
    #       status: SYNC_IN_PROGRESS,
    #       resource_arns: [
    #         "arn:aws:cloudfront::123456789012:distribution/EDFDVBD6EXAMPLE",
    #         "arn:aws:wafv2:us-east-1:123456789012:global/webacl/ExampleWebACL/a1b2c3d4",
    #         "arn:aws:route53:::hostedzone/Z0123456789EXAMPLE"
    #       ],
    #       created_at: Time.parse("2025-01-15T10:30:00Z"),
    #       updated_at: Time.parse("2025-01-18T11:00:00Z")
    #     },
    #     e_tag: "2"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "SubscriptionArn", # required
    #     resource_arns: ["String"], # required
    #     if_match: "String", # required
    #     client_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.associate_resources_to_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscription: { # required
    #       arn: "SubscriptionArn", # required
    #       plan_family: "String", # required
    #       plan_tier: "String", # required
    #       usage_level: "String",
    #       scheduled_change: {
    #         change_type: "DOWNGRADE" # One of: ["DOWNGRADE", "CANCELLATION"], # required
    #         effective_date: Time.now,
    #         plan_tier: "String",
    #         usage_level: "String"
    #       },
    #       status: "PENDING_APPROVAL" # One of: ["PENDING_APPROVAL", "ACTIVE", "SYNC_IN_PROGRESS", "FAILED"], # required
    #       status_reason: "String",
    #       resource_arns: ["String"], # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #     },
    #     e_tag: "String", # required
    #   }
    # @return [Types::AssociateResourcesToSubscriptionOutput]
    def associate_resources_to_subscription(params = {}, options = {})
      request = build_request(:associate_resources_to_subscription, params)
      request.send_request(options)
    end

    # <p>Cancels a flat-rate pricing subscription.</p> <note> <p>For active subscriptions, the cancellation is scheduled to take effect at the end of the current billing period. The subscription remains active until that date. To revert a pending cancellation, use <code>CancelSubscriptionChange</code>.</p> <p>For subscriptions in <code>PENDING_APPROVAL</code> status, the subscription is deleted immediately without scheduling.</p> </note>
    # @param [Hash, Types::CancelSubscriptionInput] params
    # @option params [String] :arn
    #   <p>The ARN of the subscription to cancel.</p>
    # @option params [String] :if_match
    #   <p>The <code>ETag</code> value from a previous <code>GetSubscription</code> or <code>ListSubscriptions</code> response.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the request is handled only once.</p>
    # @example Cancel a subscription
    #   # Example operation for cancel_subscription
    #   params = {
    #     arn: "arn:aws:pricingplanmanager::123456789012:subscription/sub-1234567890",
    #     if_match: "2"
    #   }
    #   options = {}
    #   response = client.cancel_subscription(params, options)
    #   response.to_h #=>
    #   {
    #     subscription: {
    #       arn: "arn:aws:pricingplanmanager::123456789012:subscription/sub-1234567890",
    #       plan_family: "CloudFront",
    #       plan_tier: "BUSINESS",
    #       status: ACTIVE,
    #       scheduled_change: {
    #         change_type: CANCELLATION,
    #         effective_date: Time.parse("2025-02-01T00:00:00Z")
    #       },
    #       resource_arns: [
    #         "arn:aws:cloudfront::123456789012:distribution/EDFDVBD6EXAMPLE",
    #         "arn:aws:wafv2:us-east-1:123456789012:global/webacl/ExampleWebACL/a1b2c3d4"
    #       ],
    #       created_at: Time.parse("2025-01-15T10:30:00Z"),
    #       updated_at: Time.parse("2025-01-16T12:00:00Z")
    #     },
    #     e_tag: "3"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "SubscriptionArn", # required
    #     if_match: "String", # required
    #     client_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.cancel_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscription: { # required
    #       arn: "SubscriptionArn", # required
    #       plan_family: "String", # required
    #       plan_tier: "String", # required
    #       usage_level: "String",
    #       scheduled_change: {
    #         change_type: "DOWNGRADE" # One of: ["DOWNGRADE", "CANCELLATION"], # required
    #         effective_date: Time.now,
    #         plan_tier: "String",
    #         usage_level: "String"
    #       },
    #       status: "PENDING_APPROVAL" # One of: ["PENDING_APPROVAL", "ACTIVE", "SYNC_IN_PROGRESS", "FAILED"], # required
    #       status_reason: "String",
    #       resource_arns: ["String"], # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #     },
    #     e_tag: "String", # required
    #   }
    # @return [Types::CancelSubscriptionOutput]
    def cancel_subscription(params = {}, options = {})
      request = build_request(:cancel_subscription, params)
      request.send_request(options)
    end

    # <p>Cancels a pending scheduled change on a subscription, such as a pending downgrade or cancellation. The subscription returns to its state before the change was scheduled.</p> <note> <p>You cannot cancel a scheduled change close to its effective date. If the change is within the processing window, this operation returns an error.</p> </note>
    # @param [Hash, Types::CancelSubscriptionChangeInput] params
    # @option params [String] :arn
    #   <p>The ARN of the subscription whose pending change you want to cancel.</p>
    # @option params [String] :if_match
    #   <p>The <code>ETag</code> value from a previous <code>GetSubscription</code> or <code>ListSubscriptions</code> response.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the request is handled only once.</p>
    # @example Cancel a pending subscription change
    #   # Example operation for cancel_subscription_change
    #   params = {
    #     arn: "arn:aws:pricingplanmanager::123456789012:subscription/sub-1234567890",
    #     if_match: "3"
    #   }
    #   options = {}
    #   response = client.cancel_subscription_change(params, options)
    #   response.to_h #=>
    #   {
    #     subscription: {
    #       arn: "arn:aws:pricingplanmanager::123456789012:subscription/sub-1234567890",
    #       plan_family: "CloudFront",
    #       plan_tier: "BUSINESS",
    #       status: ACTIVE,
    #       resource_arns: [
    #         "arn:aws:cloudfront::123456789012:distribution/EDFDVBD6EXAMPLE",
    #         "arn:aws:wafv2:us-east-1:123456789012:global/webacl/ExampleWebACL/a1b2c3d4"
    #       ],
    #       created_at: Time.parse("2025-01-15T10:30:00Z"),
    #       updated_at: Time.parse("2025-01-17T09:00:00Z")
    #     },
    #     e_tag: "4"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "SubscriptionArn", # required
    #     if_match: "String", # required
    #     client_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.cancel_subscription_change(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscription: { # required
    #       arn: "SubscriptionArn", # required
    #       plan_family: "String", # required
    #       plan_tier: "String", # required
    #       usage_level: "String",
    #       scheduled_change: {
    #         change_type: "DOWNGRADE" # One of: ["DOWNGRADE", "CANCELLATION"], # required
    #         effective_date: Time.now,
    #         plan_tier: "String",
    #         usage_level: "String"
    #       },
    #       status: "PENDING_APPROVAL" # One of: ["PENDING_APPROVAL", "ACTIVE", "SYNC_IN_PROGRESS", "FAILED"], # required
    #       status_reason: "String",
    #       resource_arns: ["String"], # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #     },
    #     e_tag: "String", # required
    #   }
    # @return [Types::CancelSubscriptionChangeOutput]
    def cancel_subscription_change(params = {}, options = {})
      request = build_request(:cancel_subscription_change, params)
      request.send_request(options)
    end

    # <p>Creates a flat-rate pricing subscription for the specified resources.</p> <note> <p>When <code>approvalMode</code> is set to <code>MANUAL</code>, paid-tier subscriptions are created in <code>PENDING_APPROVAL</code> status and require a separate <code>ApprovePaidSubscription</code> call before billing starts. Free-tier subscriptions are always activated immediately regardless of approval mode.</p> <p>When <code>approvalMode</code> is set to <code>IMMEDIATE</code> or is not specified, the subscription is activated immediately.</p> </note>
    # @param [Hash, Types::CreateSubscriptionInput] params
    # @option params [String] :plan_family
    #   <p>The pricing plan family to subscribe to, such as <code>CloudFront</code>.</p>
    # @option params [String] :plan_tier
    #   <p>The tier level for the subscription, such as <code>FREE</code>, <code>PRO</code>, <code>BUSINESS</code>, or <code>PREMIUM</code>.</p>
    # @option params [String] :usage_level
    #   <p>The usage level within the plan tier. Specify <code>DEFAULT</code> for the base configuration, or a higher level if your plan tier supports it.</p>
    # @option params [Array<String>] :resource_arns
    #   <p>The ARNs of the resources to include in the subscription. Specify one or more supported resources.</p> <note> <p>For subscriptions in the CloudFront plan family, the resources must include exactly one Amazon CloudFront distribution and exactly one WAF web ACL. You can also include other supported resources, such as Amazon Route 53 hosted zones and CloudFront KeyValueStores.</p> </note>
    # @option params [String] :approval_mode
    #   <p>Determines whether the subscription requires explicit approval before billing starts. Set to <code>MANUAL</code> to require a separate <code>ApprovePaidSubscription</code> call, or <code>IMMEDIATE</code> to activate the subscription right away. For paid tier plans, this defaults to <code>MANUAL</code> if not specified. For the <code>FREE</code> plan tier, only <code>IMMEDIATE</code> is supported, and it is the default.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure that the request is handled only once. If you send the same request with the same client token, the API returns the original response without creating a duplicate subscription.</p>
    # @example Create a flat-rate pricing subscription (deferred approval)
    #   # Example operation for create_subscription
    #   params = {
    #     plan_family: "CloudFront",
    #     plan_tier: "PRO",
    #     resource_arns: [
    #       "arn:aws:cloudfront::123456789012:distribution/EDFDVBD6EXAMPLE",
    #       "arn:aws:wafv2:us-east-1:123456789012:global/webacl/ExampleWebACL/a1b2c3d4"
    #     ],
    #     approval_mode: MANUAL
    #   }
    #   options = {}
    #   response = client.create_subscription(params, options)
    #   response.to_h #=>
    #   {
    #     subscription: {
    #       arn: "arn:aws:pricingplanmanager::123456789012:subscription/sub-1234567890",
    #       plan_family: "CloudFront",
    #       plan_tier: "PRO",
    #       status: PENDING_APPROVAL,
    #       resource_arns: [
    #         "arn:aws:cloudfront::123456789012:distribution/EDFDVBD6EXAMPLE",
    #         "arn:aws:wafv2:us-east-1:123456789012:global/webacl/ExampleWebACL/a1b2c3d4"
    #       ],
    #       created_at: Time.parse("2025-01-15T10:30:00Z"),
    #       updated_at: Time.parse("2025-01-15T10:30:00Z")
    #     },
    #     e_tag: "1"
    #   }
    # @example Create a subscription with approval mode
    #   # Example operation for create_subscription
    #   params = {
    #     plan_family: "CloudFront",
    #     plan_tier: "PRO",
    #     resource_arns: [
    #       "arn:aws:cloudfront::123456789012:distribution/EDFDVBD6EXAMPLE",
    #       "arn:aws:wafv2:us-east-1:123456789012:global/webacl/ExampleWebACL/a1b2c3d4"
    #     ],
    #     approval_mode: IMMEDIATE
    #   }
    #   options = {}
    #   response = client.create_subscription(params, options)
    #   response.to_h #=>
    #   {
    #     subscription: {
    #       arn: "arn:aws:pricingplanmanager::123456789012:subscription/sub-1234567890",
    #       plan_family: "CloudFront",
    #       plan_tier: "PRO",
    #       status: SYNC_IN_PROGRESS,
    #       resource_arns: [
    #         "arn:aws:cloudfront::123456789012:distribution/EDFDVBD6EXAMPLE",
    #         "arn:aws:wafv2:us-east-1:123456789012:global/webacl/ExampleWebACL/a1b2c3d4"
    #       ],
    #       created_at: Time.parse("2025-01-15T10:30:00Z"),
    #       updated_at: Time.parse("2025-01-15T10:30:00Z")
    #     },
    #     e_tag: "1"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     plan_family: "String", # required
    #     plan_tier: "String", # required
    #     usage_level: "String",
    #     resource_arns: ["String"], # required
    #     approval_mode: "MANUAL" # One of: ["MANUAL", "IMMEDIATE"],
    #     client_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.create_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscription: { # required
    #       arn: "SubscriptionArn", # required
    #       plan_family: "String", # required
    #       plan_tier: "String", # required
    #       usage_level: "String",
    #       scheduled_change: {
    #         change_type: "DOWNGRADE" # One of: ["DOWNGRADE", "CANCELLATION"], # required
    #         effective_date: Time.now,
    #         plan_tier: "String",
    #         usage_level: "String"
    #       },
    #       status: "PENDING_APPROVAL" # One of: ["PENDING_APPROVAL", "ACTIVE", "SYNC_IN_PROGRESS", "FAILED"], # required
    #       status_reason: "String",
    #       resource_arns: ["String"], # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #     },
    #     e_tag: "String", # required
    #   }
    # @return [Types::CreateSubscriptionOutput]
    def create_subscription(params = {}, options = {})
      request = build_request(:create_subscription, params)
      request.send_request(options)
    end

    # <p>Removes one or more resources from an existing subscription.</p> <note> <p>For subscriptions in the CloudFront plan family, the associated resources must always include exactly one Amazon CloudFront distribution and exactly one WAF web ACL. You cannot remove these required resources.</p> </note>
    # @param [Hash, Types::DisassociateResourcesFromSubscriptionInput] params
    # @option params [String] :arn
    #   <p>The ARN of the subscription to remove resources from.</p>
    # @option params [Array<String>] :resource_arns
    #   <p>The ARNs of the resources to remove from the subscription. For subscriptions in the CloudFront plan family, you cannot remove the required CloudFront distribution or WAF web ACL.</p>
    # @option params [String] :if_match
    #   <p>The <code>ETag</code> value from a previous <code>GetSubscription</code> or <code>ListSubscriptions</code> response.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the request is handled only once.</p>
    # @example Remove a resource from a subscription
    #   # Example operation for disassociate_resources_from_subscription
    #   params = {
    #     arn: "arn:aws:pricingplanmanager::123456789012:subscription/sub-1234567890",
    #     resource_arns: [
    #       "arn:aws:route53:::hostedzone/Z0123456789EXAMPLE"
    #     ],
    #     if_match: "2"
    #   }
    #   options = {}
    #   response = client.disassociate_resources_from_subscription(params, options)
    #   response.to_h #=>
    #   {
    #     subscription: {
    #       arn: "arn:aws:pricingplanmanager::123456789012:subscription/sub-1234567890",
    #       plan_family: "CloudFront",
    #       plan_tier: "PRO",
    #       status: SYNC_IN_PROGRESS,
    #       resource_arns: [
    #         "arn:aws:cloudfront::123456789012:distribution/EDFDVBD6EXAMPLE",
    #         "arn:aws:wafv2:us-east-1:123456789012:global/webacl/ExampleWebACL/a1b2c3d4"
    #       ],
    #       created_at: Time.parse("2025-01-15T10:30:00Z"),
    #       updated_at: Time.parse("2025-01-18T15:00:00Z")
    #     },
    #     e_tag: "3"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "SubscriptionArn", # required
    #     resource_arns: ["String"], # required
    #     if_match: "String", # required
    #     client_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.disassociate_resources_from_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscription: { # required
    #       arn: "SubscriptionArn", # required
    #       plan_family: "String", # required
    #       plan_tier: "String", # required
    #       usage_level: "String",
    #       scheduled_change: {
    #         change_type: "DOWNGRADE" # One of: ["DOWNGRADE", "CANCELLATION"], # required
    #         effective_date: Time.now,
    #         plan_tier: "String",
    #         usage_level: "String"
    #       },
    #       status: "PENDING_APPROVAL" # One of: ["PENDING_APPROVAL", "ACTIVE", "SYNC_IN_PROGRESS", "FAILED"], # required
    #       status_reason: "String",
    #       resource_arns: ["String"], # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #     },
    #     e_tag: "String", # required
    #   }
    # @return [Types::DisassociateResourcesFromSubscriptionOutput]
    def disassociate_resources_from_subscription(params = {}, options = {})
      request = build_request(:disassociate_resources_from_subscription, params)
      request.send_request(options)
    end

    # <p>Returns the details of a flat-rate pricing subscription, including its current status, associated resources, and any pending scheduled changes.</p>
    # @param [Hash, Types::GetSubscriptionInput] params
    # @option params [String] :arn
    #   <p>The ARN of the subscription to retrieve.</p>
    # @example Get subscription details
    #   # Example operation for get_subscription
    #   params = {
    #     arn: "arn:aws:pricingplanmanager::123456789012:subscription/sub-1234567890"
    #   }
    #   options = {}
    #   response = client.get_subscription(params, options)
    #   response.to_h #=>
    #   {
    #     subscription: {
    #       arn: "arn:aws:pricingplanmanager::123456789012:subscription/sub-1234567890",
    #       plan_family: "CloudFront",
    #       plan_tier: "PRO",
    #       status: ACTIVE,
    #       resource_arns: [
    #         "arn:aws:cloudfront::123456789012:distribution/EDFDVBD6EXAMPLE",
    #         "arn:aws:wafv2:us-east-1:123456789012:global/webacl/ExampleWebACL/a1b2c3d4"
    #       ],
    #       created_at: Time.parse("2025-01-15T10:30:00Z"),
    #       updated_at: Time.parse("2025-01-15T10:30:00Z")
    #     },
    #     e_tag: "1"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "SubscriptionArn", # required
    #   }
    #   options = {}
    #   response = client.get_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscription: { # required
    #       arn: "SubscriptionArn", # required
    #       plan_family: "String", # required
    #       plan_tier: "String", # required
    #       usage_level: "String",
    #       scheduled_change: {
    #         change_type: "DOWNGRADE" # One of: ["DOWNGRADE", "CANCELLATION"], # required
    #         effective_date: Time.now,
    #         plan_tier: "String",
    #         usage_level: "String"
    #       },
    #       status: "PENDING_APPROVAL" # One of: ["PENDING_APPROVAL", "ACTIVE", "SYNC_IN_PROGRESS", "FAILED"], # required
    #       status_reason: "String",
    #       resource_arns: ["String"], # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #     },
    #     e_tag: "String", # required
    #   }
    # @return [Types::GetSubscriptionOutput]
    def get_subscription(params = {}, options = {})
      request = build_request(:get_subscription, params)
      request.send_request(options)
    end

    # <p>Returns a summary of all flat-rate pricing subscriptions in the calling account.</p>
    # @param [Hash, Types::ListSubscriptionsInput] params
    # @option params [String] :next_token
    #   <p>A token from a previous <code>ListSubscriptions</code> response. If the response included a <code>nextToken</code>, there are more results available. Pass this value to retrieve the next page of results.</p>
    # @example List all subscriptions
    #   # Example operation for list_subscriptions
    #   params = {}
    #   options = {}
    #   response = client.list_subscriptions(params, options)
    #   response.to_h #=>
    #   {
    #     subscription_summaries: [
    #       {
    #         arn: "arn:aws:pricingplanmanager::123456789012:subscription/sub-1234567890",
    #         plan_family: "CloudFront",
    #         plan_tier: "PRO",
    #         status: ACTIVE,
    #         resource_arns: [
    #           "arn:aws:cloudfront::123456789012:distribution/EDFDVBD6EXAMPLE",
    #           "arn:aws:wafv2:us-east-1:123456789012:global/webacl/ExampleWebACL/a1b2c3d4"
    #         ],
    #         created_at: Time.parse("2025-01-15T10:30:00Z"),
    #         updated_at: Time.parse("2025-01-15T10:30:00Z"),
    #         e_tag: "1"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_subscriptions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscription_summaries: [ # required
    #       {
    #         arn: "SubscriptionArn", # required
    #         plan_family: "String", # required
    #         plan_tier: "String", # required
    #         usage_level: "String",
    #         scheduled_change: {
    #           change_type: "DOWNGRADE" # One of: ["DOWNGRADE", "CANCELLATION"], # required
    #           effective_date: Time.now,
    #           plan_tier: "String",
    #           usage_level: "String"
    #         },
    #         status: "PENDING_APPROVAL" # One of: ["PENDING_APPROVAL", "ACTIVE", "SYNC_IN_PROGRESS", "FAILED"], # required
    #         status_reason: "String",
    #         resource_arns: ["String"], # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         e_tag: "String", # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListSubscriptionsOutput]
    def list_subscriptions(params = {}, options = {})
      request = build_request(:list_subscriptions, params)
      request.send_request(options)
    end

    # <p>Changes the plan tier of an existing subscription.</p> <note> <p>Upgrades take effect immediately. Downgrades are scheduled and the current tier remains unchanged until the end of the billing cycle (calendar month). You cannot update a subscription while a scheduled change is pending. To make a new change, first cancel the pending change using <code>CancelSubscriptionChange</code>.</p> <p>This operation replaces the plan tier value. If you omit the optional <code>usageLevel</code> field, it is reset to the default.</p> </note>
    # @param [Hash, Types::UpdateSubscriptionInput] params
    # @option params [String] :arn
    #   <p>The ARN of the subscription to update.</p>
    # @option params [String] :plan_tier
    #   <p>The new tier level for the subscription.</p>
    # @option params [String] :usage_level
    #   <p>The usage level within the plan tier. Specify <code>DEFAULT</code> for the base configuration. If omitted, the usage level is reset to the default.</p>
    # @option params [String] :if_match
    #   <p>The <code>ETag</code> value from a previous <code>GetSubscription</code> or <code>ListSubscriptions</code> response. This ensures you are updating the expected version of the subscription.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the request is handled only once.</p>
    # @example Update a subscription plan tier
    #   # Example operation for update_subscription
    #   params = {
    #     arn: "arn:aws:pricingplanmanager::123456789012:subscription/sub-1234567890",
    #     plan_tier: "BUSINESS",
    #     if_match: "1"
    #   }
    #   options = {}
    #   response = client.update_subscription(params, options)
    #   response.to_h #=>
    #   {
    #     subscription: {
    #       arn: "arn:aws:pricingplanmanager::123456789012:subscription/sub-1234567890",
    #       plan_family: "CloudFront",
    #       plan_tier: "BUSINESS",
    #       status: SYNC_IN_PROGRESS,
    #       resource_arns: [
    #         "arn:aws:cloudfront::123456789012:distribution/EDFDVBD6EXAMPLE",
    #         "arn:aws:wafv2:us-east-1:123456789012:global/webacl/ExampleWebACL/a1b2c3d4"
    #       ],
    #       created_at: Time.parse("2025-01-15T10:30:00Z"),
    #       updated_at: Time.parse("2025-01-16T08:00:00Z")
    #     },
    #     e_tag: "2"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "SubscriptionArn", # required
    #     plan_tier: "String", # required
    #     usage_level: "String",
    #     if_match: "String", # required
    #     client_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.update_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscription: { # required
    #       arn: "SubscriptionArn", # required
    #       plan_family: "String", # required
    #       plan_tier: "String", # required
    #       usage_level: "String",
    #       scheduled_change: {
    #         change_type: "DOWNGRADE" # One of: ["DOWNGRADE", "CANCELLATION"], # required
    #         effective_date: Time.now,
    #         plan_tier: "String",
    #         usage_level: "String"
    #       },
    #       status: "PENDING_APPROVAL" # One of: ["PENDING_APPROVAL", "ACTIVE", "SYNC_IN_PROGRESS", "FAILED"], # required
    #       status_reason: "String",
    #       resource_arns: ["String"], # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #     },
    #     e_tag: "String", # required
    #   }
    # @return [Types::UpdateSubscriptionOutput]
    def update_subscription(params = {}, options = {})
      request = build_request(:update_subscription, params)
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
      context[:gem_name] = 'aws-sdk-pricingplanmanager'
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
          rest_json: Aws::Core::RestJson
        }
      end
    end
  end
end
