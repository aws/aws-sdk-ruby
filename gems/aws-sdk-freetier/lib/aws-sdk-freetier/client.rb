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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:freetier)

module Aws::FreeTier
  # An API client for Aws::FreeTier.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSFreeTierService
    @identifier = :freetier

    add_plugin(::Aws::FreeTier::Plugins::Endpoint)
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
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::FreeTier::EndpointProvider)
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
    #  `#transmit(request)` (returning a stream) to swap the transport, or a
    #  directly-constructed `NetHTTP::Transport` to set Net::HTTP-specific knobs. A
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

    # <p> Returns a specific activity record that is available to the customer. </p>
    # @param [Hash, Types::GetAccountActivityRequest] params
    # @option params [String] :activity_id
    #   <p> A unique identifier that identifies the activity. </p>
    # @option params [String] :language_code
    #   <p> The language code used to return translated title and description fields. </p>
    # @example Fetching an Account activity by id
    #   # Example operation for get_account_activity
    #   params = {
    #     activity_id: "d622f48bf4014286a2686ab10cacfb2e",
    #     language_code: en-US
    #   }
    #   options = {}
    #   response = client.get_account_activity(params, options)
    #   response.to_h #=>
    #   {
    #     activity_id: "d622f48bf4014286a2686ab10cacfb2e",
    #     title: "Configure Your Access in the AWS Identity and Access Management (IAM) center",
    #     description: "Set up three notifications: one for your costs reach ...",
    #     status: COMPLETED,
    #     instructions_url: "https://catalog.us-east-1.prod.workshops.aws/workshops/2a5fc82d-2b5f-4105-83c2-91a1b4d7abfe/en-US/2-foundation/lab1-create",
    #     reward: {
    #     "credit" => {
    #       "amount" => 20.0,
    #       "unit" => USD
    #     }
    #   },
    #     estimated_time_to_complete_in_minutes: 15,
    #     expires_at: Time.parse("1985-10-12T23:20:50.520Z"),
    #     started_at: Time.parse("1985-04-12T23:20:50.520Z"),
    #     completed_at: Time.parse("1985-06-12T23:20:50.520Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     activity_id: "ActivityId", # required
    #     language_code: "en-US" # One of: ["en-US", "en-GB", "id-ID", "de-DE", "es-ES", "fr-FR", "ja-JP", "it-IT", "pt-PT", "ko-KR", "zh-CN", "zh-TW", "tr-TR"]
    #   }
    #   options = {}
    #   response = client.get_account_activity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     activity_id: "ActivityId", # required
    #     title: "GenericString", # required
    #     description: "GenericString", # required
    #     status: "NOT_STARTED" # One of: ["NOT_STARTED", "IN_PROGRESS", "COMPLETED", "EXPIRING"], # required
    #     instructions_url: "GenericString", # required
    #     reward: { # required
    #       # One of:
    #       credit: {
    #         amount: 1.0, # required
    #         unit: "USD" # One of: ["USD"], # required
    #       }
    #     },
    #     estimated_time_to_complete_in_minutes: 1,
    #     expires_at: Time.now,
    #     started_at: Time.now,
    #     completed_at: Time.now
    #   }
    # @return [Types::GetAccountActivityResponse]
    def get_account_activity(params = {}, options = {})
      request = build_request(:get_account_activity, params)
      request.send_request(options)
    end

    # <p> This returns all of the information related to the state of the account plan related to Free Tier. </p>
    # @param [Hash, Types::GetAccountPlanStateRequest] params
    # @example Fetching account plan state by id
    #   # Example operation for get_account_plan_state
    #   params = {}
    #   options = {}
    #   response = client.get_account_plan_state(params, options)
    #   response.to_h #=>
    #   {
    #     account_id: "111122223333",
    #     account_plan_type: FREE,
    #     account_plan_status: ACTIVE,
    #     account_plan_expiration_date: Time.parse("2025-06-30T23:59:59Z"),
    #     account_plan_remaining_credits: {
    #       amount: 25.0,
    #       unit: USD
    #     }
    #   }
    # @example Attempt to fetch account plan state by id with insufficient permissions
    #   # Example operation for get_account_plan_state
    #   params = {}
    #   options = {}
    #   begin
    #     response = client.get_account_plan_state(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> AccessDeniedException
    #     puts e.data.to_h #=>
    #     {
    #       message: "Access denied"
    #     }
    #   end
    # @example Internal service error
    #   # Example operation for get_account_plan_state
    #   params = {}
    #   options = {}
    #   begin
    #     response = client.get_account_plan_state(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> InternalServerException
    #     puts e.data.to_h #=>
    #     {
    #       message: "An internal error occurred while processing your request"
    #     }
    #   end
    # @example Attempt to fetch plan state by id for an account without account plan
    #   # Example operation for get_account_plan_state
    #   params = {}
    #   options = {}
    #   begin
    #     response = client.get_account_plan_state(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> ResourceNotFoundException
    #     puts e.data.to_h #=>
    #     {
    #       message: "Account plan state could not be found"
    #     }
    #   end
    # @example Request rate exceeds limits
    #   # Example operation for get_account_plan_state
    #   params = {}
    #   options = {}
    #   begin
    #     response = client.get_account_plan_state(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> ThrottlingException
    #     puts e.data.to_h #=>
    #     {
    #       message: "Request rate limit exceeded"
    #     }
    #   end
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_account_plan_state(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_id: "AccountId", # required
    #     account_plan_type: "FREE" # One of: ["FREE", "PAID"], # required
    #     account_plan_status: "NOT_STARTED" # One of: ["NOT_STARTED", "ACTIVE", "EXPIRED"], # required
    #     account_plan_remaining_credits: {
    #       amount: 1.0, # required
    #       unit: "USD" # One of: ["USD"], # required
    #     },
    #     account_plan_expiration_date: Time.now
    #   }
    # @return [Types::GetAccountPlanStateResponse]
    def get_account_plan_state(params = {}, options = {})
      request = build_request(:get_account_plan_state, params)
      request.send_request(options)
    end

    # <p>Returns a list of all Free Tier usage objects that match your filters.</p>
    # @param [Hash, Types::GetFreeTierUsageRequest] params
    # @option params [Types::Expression] :filter
    #   <p>An expression that specifies the conditions that you want each <code>FreeTierUsage</code> object to meet.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. <code>MaxResults</code> means that there can be up to the specified number of values, but there might be fewer results based on your filters.</p>
    # @option params [String] :next_token
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: {
    #       or: [
    #         {
    #           # recursive Expression
    #         }
    #       ],
    #       and: [
    #         {
    #           # recursive Expression
    #         }
    #       ],
    #       not: {
    #         # recursive Expression
    #       },
    #       dimensions: {
    #         key: "SERVICE" # One of: ["SERVICE", "OPERATION", "USAGE_TYPE", "REGION", "FREE_TIER_TYPE", "DESCRIPTION", "USAGE_PERCENTAGE"], # required
    #         values: ["Value"], # required
    #         match_options: ["EQUALS" # One of: ["EQUALS", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL"]], # required
    #       }
    #     },
    #     max_results: 1,
    #     next_token: "NextPageToken"
    #   }
    #   options = {}
    #   response = client.get_free_tier_usage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     free_tier_usages: [ # required
    #       {
    #         service: "GenericString",
    #         operation: "GenericString",
    #         usage_type: "GenericString",
    #         region: "GenericString",
    #         actual_usage_amount: 1.0,
    #         forecasted_usage_amount: 1.0,
    #         limit: 1.0,
    #         unit: "GenericString",
    #         description: "GenericString",
    #         free_tier_type: "GenericString"
    #       }
    #     ],
    #     next_token: "NextPageToken"
    #   }
    # @return [Types::GetFreeTierUsageResponse]
    def get_free_tier_usage(params = {}, options = {})
      request = build_request(:get_free_tier_usage, params)
      request.send_request(options)
    end

    # <p> Returns a list of activities that are available. This operation supports pagination and filtering by status. </p>
    # @param [Hash, Types::ListAccountActivitiesRequest] params
    # @option params [Array<String>] :filter_activity_statuses
    #   <p> The activity status filter. This field can be used to filter the response by activities status. </p>
    # @option params [String] :next_token
    #   <p> A token from a previous paginated response. If this is specified, the response includes records beginning from this token (inclusive), up to the number specified by <code>maxResults</code>. </p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output. </p>
    # @option params [String] :language_code
    #   <p> The language code used to return translated titles. </p>
    # @example Fetching a page of completed activities
    #   # Example operation for list_account_activities
    #   params = {
    #     filter_activity_statuses: [
    #       COMPLETED
    #     ],
    #     max_results: 1,
    #     language_code: en-US
    #   }
    #   options = {}
    #   response = client.list_account_activities(params, options)
    #   response.to_h #=>
    #   {
    #     activities: [
    #       {
    #         activity_id: "d622f48bf4014286a2686ab10cacfb2e",
    #         title: "Configure Your Access in the AWS Identity and Access Management (IAM) center",
    #         status: COMPLETED,
    #         reward: {
    #     "credit" => {
    #       "amount" => 20.0,
    #       "unit" => USD
    #     }
    #   }
    #       }
    #     ],
    #     next_token: "a95f3d9e7710c6ca8ba4f640b40bbc40"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     filter_activity_statuses: ["NOT_STARTED" # One of: ["NOT_STARTED", "IN_PROGRESS", "COMPLETED", "EXPIRING"]],
    #     next_token: "NextPageToken",
    #     max_results: 1,
    #     language_code: "en-US" # One of: ["en-US", "en-GB", "id-ID", "de-DE", "es-ES", "fr-FR", "ja-JP", "it-IT", "pt-PT", "ko-KR", "zh-CN", "zh-TW", "tr-TR"]
    #   }
    #   options = {}
    #   response = client.list_account_activities(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     activities: [ # required
    #       {
    #         activity_id: "ActivityId", # required
    #         title: "GenericString", # required
    #         reward: { # required
    #           # One of:
    #           credit: {
    #             amount: 1.0, # required
    #             unit: "USD" # One of: ["USD"], # required
    #           }
    #         },
    #         status: "NOT_STARTED" # One of: ["NOT_STARTED", "IN_PROGRESS", "COMPLETED", "EXPIRING"], # required
    #       }
    #     ],
    #     next_token: "NextPageToken"
    #   }
    # @return [Types::ListAccountActivitiesResponse]
    def list_account_activities(params = {}, options = {})
      request = build_request(:list_account_activities, params)
      request.send_request(options)
    end

    # <p> The account plan type for the Amazon Web Services account. </p>
    # @param [Hash, Types::UpgradeAccountPlanRequest] params
    # @option params [String] :account_plan_type
    #   <p> The target account plan type. This makes it explicit about the change and latest value of the <code>accountPlanType</code>. </p>
    # @example Upgrading an account plan to PAID
    #   # Example operation for upgrade_account_plan
    #   params = {
    #     account_plan_type: PAID
    #   }
    #   options = {}
    #   response = client.upgrade_account_plan(params, options)
    #   response.to_h #=>
    #   {
    #     account_id: "111122223333",
    #     account_plan_type: PAID,
    #     account_plan_status: NOT_STARTED
    #   }
    # @example Attempt to upgrade an account with insufficient permissions
    #   # Example operation for upgrade_account_plan
    #   params = {
    #     account_plan_type: PAID
    #   }
    #   options = {}
    #   begin
    #     response = client.upgrade_account_plan(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> AccessDeniedException
    #     puts e.data.to_h #=>
    #     {
    #       message: "Access denied"
    #     }
    #   end
    # @example Attempt to downgrade an account from PAID to FREE
    #   # Example operation for upgrade_account_plan
    #   params = {
    #     account_plan_type: FREE
    #   }
    #   options = {}
    #   begin
    #     response = client.upgrade_account_plan(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> ValidationException
    #     puts e.data.to_h #=>
    #     {
    #       message: "The Account Plan can not be updated from to PAID to FREE"
    #     }
    #   end
    # @example Internal service error
    #   # Example operation for upgrade_account_plan
    #   params = {
    #     account_plan_type: PAID
    #   }
    #   options = {}
    #   begin
    #     response = client.upgrade_account_plan(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> InternalServerException
    #     puts e.data.to_h #=>
    #     {
    #       message: "An internal error occurred while processing your request"
    #     }
    #   end
    # @example Attempt to upgrade a non-existent account plan
    #   # Example operation for upgrade_account_plan
    #   params = {
    #     account_plan_type: PAID
    #   }
    #   options = {}
    #   begin
    #     response = client.upgrade_account_plan(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> ResourceNotFoundException
    #     puts e.data.to_h #=>
    #     {
    #       message: "Unable to upgrade account plan: account plan state could not be found"
    #     }
    #   end
    # @example Request rate exceeds limits
    #   # Example operation for upgrade_account_plan
    #   params = {
    #     account_plan_type: PAID
    #   }
    #   options = {}
    #   begin
    #     response = client.upgrade_account_plan(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> ThrottlingException
    #     puts e.data.to_h #=>
    #     {
    #       message: "Request rate limit exceeded"
    #     }
    #   end
    # @example Request syntax with placeholder values
    #   params = {
    #     account_plan_type: "FREE" # One of: ["FREE", "PAID"], # required
    #   }
    #   options = {}
    #   response = client.upgrade_account_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_id: "AccountId", # required
    #     account_plan_type: "FREE" # One of: ["FREE", "PAID"], # required
    #     account_plan_status: "NOT_STARTED" # One of: ["NOT_STARTED", "ACTIVE", "EXPIRED"], # required
    #   }
    # @return [Types::UpgradeAccountPlanResponse]
    def upgrade_account_plan(params = {}, options = {})
      request = build_request(:upgrade_account_plan, params)
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
      context[:gem_name] = 'aws-sdk-freetier'
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
