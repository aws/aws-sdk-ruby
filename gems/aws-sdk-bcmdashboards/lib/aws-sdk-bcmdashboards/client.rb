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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:bcmdashboards)

module Aws::BCMDashboards
  # An API client for Aws::BCMDashboards.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSBCMDashboardsService
    @identifier = :bcmdashboards

    add_plugin(::Aws::BCMDashboards::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::BCMDashboards::EndpointProvider)
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

    # <p>Creates a new dashboard that can contain multiple widgets displaying cost and usage data. You can add custom widgets or use predefined widgets, arranging them in your preferred layout.</p>
    # @param [Hash, Types::CreateDashboardRequest] params
    # @option params [String] :name
    #   <p>The name of the dashboard. The name must be unique within your account.</p>
    # @option params [String] :description
    #   <p>A description of the dashboard's purpose or contents.</p>
    # @option params [Array<Types::Widget>] :widgets
    #   <p>An array of widget configurations that define the visualizations to be displayed in the dashboard. Each dashboard can contain up to 20 widgets.</p>
    # @option params [Array<Types::ResourceTag>] :resource_tags
    #   <p>The tags to apply to the dashboard resource for organization and management.</p>
    # @example Creating a dashboard
    #   # Example operation for create_dashboard
    #   params = {
    #     name: "cost-dashboards",
    #     description: "Dashboard for tracking costs",
    #     widgets: [
    #       {
    #         title: "Monthly Cost Trend",
    #         width: 4,
    #         height: 7,
    #         horizontal_offset: 0,
    #         configs: [
    #           {
    #             display_config: {
    #     "graph" => {
    #       "costTrend" => {
    #         "visualType" => LINE
    #       }
    #     }
    #   },
    #             query_parameters: {
    #     "costAndUsage" => {
    #       "granularity" => MONTHLY,
    #       "groupBy" => [{
    #         "key" => SERVICE,
    #         "type" => DIMENSION
    #       }],
    #       "metrics" => [UnblendedCost],
    #       "timeRange" => {
    #         "endTime" => {
    #           "type" => RELATIVE,
    #           "value" => now
    #         },
    #         "startTime" => {
    #           "type" => RELATIVE,
    #           "value" => -9M
    #         }
    #       }
    #     }
    #   }
    #           }
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_dashboard(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DashboardName", # required
    #     description: "Description",
    #     widgets: [ # required
    #       {
    #         id: "WidgetId",
    #         title: "WidgetTitle", # required
    #         description: "Description",
    #         width: 1,
    #         height: 1,
    #         horizontal_offset: 1,
    #         configs: [ # required
    #           {
    #             query_parameters: { # required
    #               # One of:
    #               cost_and_usage: {
    #                 metrics: ["AmortizedCost" # One of: ["AmortizedCost", "BlendedCost", "NetAmortizedCost", "NetUnblendedCost", "NormalizedUsageAmount", "UnblendedCost", "UsageQuantity", "SpendCoveredBySavingsPlans", "Hour", "Unit", "Cost"]], # required
    #                 time_range: { # required
    #                   start_time: { # required
    #                     type: "ABSOLUTE" # One of: ["ABSOLUTE", "RELATIVE"], # required
    #                     value: "GenericString", # required
    #                   },
    #                   end_time: { # required
    #                     type: "ABSOLUTE" # One of: ["ABSOLUTE", "RELATIVE"], # required
    #                     value: "GenericString", # required
    #                   }
    #                 },
    #                 granularity: "HOURLY" # One of: ["HOURLY", "DAILY", "MONTHLY"], # required
    #                 group_by: [
    #                   {
    #                     key: "String", # required
    #                     type: "DIMENSION" # One of: ["DIMENSION", "TAG", "COST_CATEGORY"]
    #                   }
    #                 ],
    #                 filter: {
    #                   or: [
    #                     {
    #                       # recursive Expression
    #                     }
    #                   ],
    #                   and: [
    #                     {
    #                       # recursive Expression
    #                     }
    #                   ],
    #                   not: {
    #                     # recursive Expression
    #                   },
    #                   dimensions: {
    #                     key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "RESOURCE_ID", "SUBSCRIPTION_ID", "TAG_KEY", "OPERATING_SYSTEM", "TENANCY", "BILLING_ENTITY", "RESERVATION_ID", "COST_CATEGORY_NAME", "DATABASE_ENGINE", "LEGAL_ENTITY_NAME", "SAVINGS_PLANS_TYPE", "INSTANCE_TYPE_FAMILY", "CACHE_ENGINE", "DEPLOYMENT_OPTION", "SCOPE", "PLATFORM"], # required
    #                     values: ["String"], # required
    #                     match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #                   },
    #                   tags: {
    #                     key: "String",
    #                     values: ["String"],
    #                     match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #                   },
    #                   cost_categories: {
    #                     key: "String",
    #                     values: ["String"],
    #                     match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #                   }
    #                 }
    #               },
    #               savings_plans_coverage: {
    #                 time_range: { # required
    #                   start_time: { # required
    #                     type: "ABSOLUTE" # One of: ["ABSOLUTE", "RELATIVE"], # required
    #                     value: "GenericString", # required
    #                   },
    #                   end_time: { # required
    #                     type: "ABSOLUTE" # One of: ["ABSOLUTE", "RELATIVE"], # required
    #                     value: "GenericString", # required
    #                   }
    #                 },
    #                 metrics: ["AmortizedCost" # One of: ["AmortizedCost", "BlendedCost", "NetAmortizedCost", "NetUnblendedCost", "NormalizedUsageAmount", "UnblendedCost", "UsageQuantity", "SpendCoveredBySavingsPlans", "Hour", "Unit", "Cost"]],
    #                 granularity: "HOURLY" # One of: ["HOURLY", "DAILY", "MONTHLY"],
    #                 group_by: [
    #                   {
    #                     key: "String", # required
    #                     type: "DIMENSION" # One of: ["DIMENSION", "TAG", "COST_CATEGORY"]
    #                   }
    #                 ],
    #                 filter: {
    #                   or: [
    #                     {
    #                       # recursive Expression
    #                     }
    #                   ],
    #                   and: [
    #                     {
    #                       # recursive Expression
    #                     }
    #                   ],
    #                   not: {
    #                     # recursive Expression
    #                   },
    #                   dimensions: {
    #                     key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "RESOURCE_ID", "SUBSCRIPTION_ID", "TAG_KEY", "OPERATING_SYSTEM", "TENANCY", "BILLING_ENTITY", "RESERVATION_ID", "COST_CATEGORY_NAME", "DATABASE_ENGINE", "LEGAL_ENTITY_NAME", "SAVINGS_PLANS_TYPE", "INSTANCE_TYPE_FAMILY", "CACHE_ENGINE", "DEPLOYMENT_OPTION", "SCOPE", "PLATFORM"], # required
    #                     values: ["String"], # required
    #                     match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #                   },
    #                   tags: {
    #                     key: "String",
    #                     values: ["String"],
    #                     match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #                   },
    #                   cost_categories: {
    #                     key: "String",
    #                     values: ["String"],
    #                     match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #                   }
    #                 }
    #               },
    #               savings_plans_utilization: {
    #                 time_range: { # required
    #                   start_time: { # required
    #                     type: "ABSOLUTE" # One of: ["ABSOLUTE", "RELATIVE"], # required
    #                     value: "GenericString", # required
    #                   },
    #                   end_time: { # required
    #                     type: "ABSOLUTE" # One of: ["ABSOLUTE", "RELATIVE"], # required
    #                     value: "GenericString", # required
    #                   }
    #                 },
    #                 granularity: "HOURLY" # One of: ["HOURLY", "DAILY", "MONTHLY"],
    #                 filter: {
    #                   or: [
    #                     {
    #                       # recursive Expression
    #                     }
    #                   ],
    #                   and: [
    #                     {
    #                       # recursive Expression
    #                     }
    #                   ],
    #                   not: {
    #                     # recursive Expression
    #                   },
    #                   dimensions: {
    #                     key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "RESOURCE_ID", "SUBSCRIPTION_ID", "TAG_KEY", "OPERATING_SYSTEM", "TENANCY", "BILLING_ENTITY", "RESERVATION_ID", "COST_CATEGORY_NAME", "DATABASE_ENGINE", "LEGAL_ENTITY_NAME", "SAVINGS_PLANS_TYPE", "INSTANCE_TYPE_FAMILY", "CACHE_ENGINE", "DEPLOYMENT_OPTION", "SCOPE", "PLATFORM"], # required
    #                     values: ["String"], # required
    #                     match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #                   },
    #                   tags: {
    #                     key: "String",
    #                     values: ["String"],
    #                     match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #                   },
    #                   cost_categories: {
    #                     key: "String",
    #                     values: ["String"],
    #                     match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #                   }
    #                 }
    #               },
    #               reservation_coverage: {
    #                 time_range: { # required
    #                   start_time: { # required
    #                     type: "ABSOLUTE" # One of: ["ABSOLUTE", "RELATIVE"], # required
    #                     value: "GenericString", # required
    #                   },
    #                   end_time: { # required
    #                     type: "ABSOLUTE" # One of: ["ABSOLUTE", "RELATIVE"], # required
    #                     value: "GenericString", # required
    #                   }
    #                 },
    #                 group_by: [
    #                   {
    #                     key: "String", # required
    #                     type: "DIMENSION" # One of: ["DIMENSION", "TAG", "COST_CATEGORY"]
    #                   }
    #                 ],
    #                 granularity: "HOURLY" # One of: ["HOURLY", "DAILY", "MONTHLY"],
    #                 filter: {
    #                   or: [
    #                     {
    #                       # recursive Expression
    #                     }
    #                   ],
    #                   and: [
    #                     {
    #                       # recursive Expression
    #                     }
    #                   ],
    #                   not: {
    #                     # recursive Expression
    #                   },
    #                   dimensions: {
    #                     key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "RESOURCE_ID", "SUBSCRIPTION_ID", "TAG_KEY", "OPERATING_SYSTEM", "TENANCY", "BILLING_ENTITY", "RESERVATION_ID", "COST_CATEGORY_NAME", "DATABASE_ENGINE", "LEGAL_ENTITY_NAME", "SAVINGS_PLANS_TYPE", "INSTANCE_TYPE_FAMILY", "CACHE_ENGINE", "DEPLOYMENT_OPTION", "SCOPE", "PLATFORM"], # required
    #                     values: ["String"], # required
    #                     match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #                   },
    #                   tags: {
    #                     key: "String",
    #                     values: ["String"],
    #                     match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #                   },
    #                   cost_categories: {
    #                     key: "String",
    #                     values: ["String"],
    #                     match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #                   }
    #                 },
    #                 metrics: ["AmortizedCost" # One of: ["AmortizedCost", "BlendedCost", "NetAmortizedCost", "NetUnblendedCost", "NormalizedUsageAmount", "UnblendedCost", "UsageQuantity", "SpendCoveredBySavingsPlans", "Hour", "Unit", "Cost"]]
    #               },
    #               reservation_utilization: {
    #                 time_range: { # required
    #                   start_time: { # required
    #                     type: "ABSOLUTE" # One of: ["ABSOLUTE", "RELATIVE"], # required
    #                     value: "GenericString", # required
    #                   },
    #                   end_time: { # required
    #                     type: "ABSOLUTE" # One of: ["ABSOLUTE", "RELATIVE"], # required
    #                     value: "GenericString", # required
    #                   }
    #                 },
    #                 group_by: [
    #                   {
    #                     key: "String", # required
    #                     type: "DIMENSION" # One of: ["DIMENSION", "TAG", "COST_CATEGORY"]
    #                   }
    #                 ],
    #                 granularity: "HOURLY" # One of: ["HOURLY", "DAILY", "MONTHLY"],
    #                 filter: {
    #                   or: [
    #                     {
    #                       # recursive Expression
    #                     }
    #                   ],
    #                   and: [
    #                     {
    #                       # recursive Expression
    #                     }
    #                   ],
    #                   not: {
    #                     # recursive Expression
    #                   },
    #                   dimensions: {
    #                     key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "RESOURCE_ID", "SUBSCRIPTION_ID", "TAG_KEY", "OPERATING_SYSTEM", "TENANCY", "BILLING_ENTITY", "RESERVATION_ID", "COST_CATEGORY_NAME", "DATABASE_ENGINE", "LEGAL_ENTITY_NAME", "SAVINGS_PLANS_TYPE", "INSTANCE_TYPE_FAMILY", "CACHE_ENGINE", "DEPLOYMENT_OPTION", "SCOPE", "PLATFORM"], # required
    #                     values: ["String"], # required
    #                     match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #                   },
    #                   tags: {
    #                     key: "String",
    #                     values: ["String"],
    #                     match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #                   },
    #                   cost_categories: {
    #                     key: "String",
    #                     values: ["String"],
    #                     match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #                   }
    #                 }
    #               }
    #             },
    #             display_config: { # required
    #               # One of:
    #               graph: {
    #                 "GenericString" => {
    #                   visual_type: "LINE" # One of: ["LINE", "BAR", "STACK"], # required
    #                 }
    #               },
    #               table: {
    #               }
    #             }
    #           }
    #         ]
    #       }
    #     ],
    #     resource_tags: [
    #       {
    #         key: "ResourceTagKey", # required
    #         value: "ResourceTagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_dashboard(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "DashboardArn", # required
    #   }
    # @return [Types::CreateDashboardResponse]
    def create_dashboard(params = {}, options = {})
      request = build_request(:create_dashboard, params)
      request.send_request(options)
    end

    # <p>Creates a new scheduled report for a dashboard. A scheduled report automatically generates and delivers dashboard snapshots on a recurring schedule. Reports are delivered within 15 minutes of the scheduled delivery time.</p>
    # @param [Hash, Types::CreateScheduledReportRequest] params
    # @option params [Types::ScheduledReportInput] :scheduled_report
    #   <p>The configuration for the scheduled report, including the dashboard to report on, the schedule, and the execution role that the service will use to generate the dashboard snapshot.</p>
    # @option params [Array<Types::ResourceTag>] :resource_tags
    #   <p>The tags to apply to the scheduled report resource for organization and management.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scheduled_report: { # required
    #       name: "ScheduledReportName", # required
    #       dashboard_arn: "DashboardArn", # required
    #       scheduled_report_execution_role_arn: "ServiceRoleArn", # required
    #       schedule_config: { # required
    #         schedule_expression: "GenericString",
    #         schedule_expression_time_zone: "GenericString",
    #         schedule_period: {
    #           start_time: Time.now,
    #           end_time: Time.now
    #         },
    #         state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       },
    #       description: "Description",
    #       widget_ids: ["String"],
    #       widget_date_range_override: {
    #         start_time: { # required
    #           type: "ABSOLUTE" # One of: ["ABSOLUTE", "RELATIVE"], # required
    #           value: "GenericString", # required
    #         },
    #         end_time: { # required
    #           type: "ABSOLUTE" # One of: ["ABSOLUTE", "RELATIVE"], # required
    #           value: "GenericString", # required
    #         }
    #       }
    #     },
    #     resource_tags: [
    #       {
    #         key: "ResourceTagKey", # required
    #         value: "ResourceTagValue", # required
    #       }
    #     ],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_scheduled_report(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "ScheduledReportArn", # required
    #   }
    # @return [Types::CreateScheduledReportResponse]
    def create_scheduled_report(params = {}, options = {})
      request = build_request(:create_scheduled_report, params)
      request.send_request(options)
    end

    # <p>Deletes a specified dashboard. This action cannot be undone.</p>
    # @param [Hash, Types::DeleteDashboardRequest] params
    # @option params [String] :arn
    #   <p>The ARN of the dashboard to be deleted.</p>
    # @example Deleting a dashboard
    #   # Example operation for delete_dashboard
    #   params = {
    #     arn: "arn:aws:bcm-dashboards::123456789012:dashboard/abcd1234-ab12-12ab-1ab2-abcd1234efgh"
    #   }
    #   options = {}
    #   response = client.delete_dashboard(params, options)
    #   response.to_h #=>
    #   {
    #     arn: "arn:aws:bcm-dashboards::123456789012:dashboard/abcd1234-ab12-12ab-1ab2-abcd1234efgh"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "DashboardArn", # required
    #   }
    #   options = {}
    #   response = client.delete_dashboard(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "DashboardArn", # required
    #   }
    # @return [Types::DeleteDashboardResponse]
    def delete_dashboard(params = {}, options = {})
      request = build_request(:delete_dashboard, params)
      request.send_request(options)
    end

    # <p>Deletes a specified scheduled report. This is an irreversible operation.</p>
    # @param [Hash, Types::DeleteScheduledReportRequest] params
    # @option params [String] :arn
    #   <p>The ARN of the scheduled report to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "ScheduledReportArn", # required
    #   }
    #   options = {}
    #   response = client.delete_scheduled_report(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "ScheduledReportArn", # required
    #   }
    # @return [Types::DeleteScheduledReportResponse]
    def delete_scheduled_report(params = {}, options = {})
      request = build_request(:delete_scheduled_report, params)
      request.send_request(options)
    end

    # <p>Triggers an immediate execution of a scheduled report, outside of its regular schedule. The scheduled report must be in <code>ENABLED</code> state. Calling this operation on a <code>DISABLED</code> scheduled report returns a <code>ValidationException</code>.</p> <note> <p>If a <code>clientToken</code> is provided, the service uses it for idempotency. Requests with the same client token will not trigger a new execution within the same minute.</p> </note>
    # @param [Hash, Types::ExecuteScheduledReportRequest] params
    # @option params [String] :arn
    #   <p>The ARN of the scheduled report to execute.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    # @option params [Boolean] :dry_run
    #   <p>When set to <code>true</code>, validates the scheduled report configuration without triggering an actual execution.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "ScheduledReportArn", # required
    #     client_token: "ClientToken",
    #     dry_run: false
    #   }
    #   options = {}
    #   response = client.execute_scheduled_report(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     health_status: {
    #       status_code: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY"], # required
    #       last_refreshed_at: Time.now,
    #       status_reasons: ["DATA_SOURCE_ACCESS_DENIED" # One of: ["DATA_SOURCE_ACCESS_DENIED", "EXECUTION_ROLE_ASSUME_FAILED", "EXECUTION_ROLE_INSUFFICIENT_PERMISSIONS", "DASHBOARD_NOT_FOUND", "DASHBOARD_ACCESS_DENIED", "INTERNAL_FAILURE", "WIDGET_ID_NOT_FOUND"]]
    #     },
    #     execution_triggered: false
    #   }
    # @return [Types::ExecuteScheduledReportResponse]
    def execute_scheduled_report(params = {}, options = {})
      request = build_request(:execute_scheduled_report, params)
      request.send_request(options)
    end

    # <p>Retrieves the configuration and metadata of a specified dashboard, including its widgets and layout settings.</p>
    # @param [Hash, Types::GetDashboardRequest] params
    # @option params [String] :arn
    #   <p>The ARN of the dashboard to retrieve. This is required to uniquely identify the dashboard.</p>
    # @example Getting information about a dashboard
    #   # Example operation for get_dashboard
    #   params = {
    #     arn: "arn:aws:bcm-dashboards::123456789012:dashboard/abcd1234-ab12-12ab-1ab2-abcd1234efgh"
    #   }
    #   options = {}
    #   response = client.get_dashboard(params, options)
    #   response.to_h #=>
    #   {
    #     arn: "arn:aws:bcm-dashboards::123456789012:dashboard/abcd1234-ab12-12ab-1ab2-abcd1234efgh",
    #     name: "cost-dashboards",
    #     description: "Dashboard for tracking costs",
    #     type: CUSTOM,
    #     created_at: Time.parse(1753741462.721),
    #     updated_at: Time.parse(1753741462.721),
    #     widgets: [
    #       {
    #         title: "Monthly Cost Trend",
    #         width: 4,
    #         height: 7,
    #         horizontal_offset: 0,
    #         configs: [
    #           {
    #             display_config: {
    #     "graph" => {
    #       "costTrend" => {
    #         "visualType" => LINE
    #       }
    #     }
    #   },
    #             query_parameters: {
    #     "costAndUsage" => {
    #       "granularity" => MONTHLY,
    #       "groupBy" => [{
    #         "key" => SERVICE,
    #         "type" => DIMENSION
    #       }],
    #       "metrics" => [UnblendedCost],
    #       "timeRange" => {
    #         "endTime" => {
    #           "type" => RELATIVE,
    #           "value" => now
    #         },
    #         "startTime" => {
    #           "type" => RELATIVE,
    #           "value" => -6M
    #         }
    #       }
    #     }
    #   }
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "DashboardArn", # required
    #   }
    #   options = {}
    #   response = client.get_dashboard(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "DashboardArn", # required
    #     name: "DashboardName", # required
    #     description: "Description",
    #     type: "CUSTOM" # One of: ["CUSTOM"], # required
    #     widgets: [ # required
    #       {
    #         id: "WidgetId",
    #         title: "WidgetTitle", # required
    #         description: "Description",
    #         width: 1,
    #         height: 1,
    #         horizontal_offset: 1,
    #         configs: [ # required
    #           {
    #             query_parameters: { # required
    #               # One of:
    #               cost_and_usage: {
    #                 metrics: ["AmortizedCost" # One of: ["AmortizedCost", "BlendedCost", "NetAmortizedCost", "NetUnblendedCost", "NormalizedUsageAmount", "UnblendedCost", "UsageQuantity", "SpendCoveredBySavingsPlans", "Hour", "Unit", "Cost"]], # required
    #                 time_range: { # required
    #                   start_time: { # required
    #                     type: "ABSOLUTE" # One of: ["ABSOLUTE", "RELATIVE"], # required
    #                     value: "GenericString", # required
    #                   },
    #                   end_time: { # required
    #                     type: "ABSOLUTE" # One of: ["ABSOLUTE", "RELATIVE"], # required
    #                     value: "GenericString", # required
    #                   }
    #                 },
    #                 granularity: "HOURLY" # One of: ["HOURLY", "DAILY", "MONTHLY"], # required
    #                 group_by: [
    #                   {
    #                     key: "String", # required
    #                     type: "DIMENSION" # One of: ["DIMENSION", "TAG", "COST_CATEGORY"]
    #                   }
    #                 ],
    #                 filter: {
    #                   or: [
    #                     {
    #                       # recursive Expression
    #                     }
    #                   ],
    #                   and: [
    #                     {
    #                       # recursive Expression
    #                     }
    #                   ],
    #                   not: {
    #                     # recursive Expression
    #                   },
    #                   dimensions: {
    #                     key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "RESOURCE_ID", "SUBSCRIPTION_ID", "TAG_KEY", "OPERATING_SYSTEM", "TENANCY", "BILLING_ENTITY", "RESERVATION_ID", "COST_CATEGORY_NAME", "DATABASE_ENGINE", "LEGAL_ENTITY_NAME", "SAVINGS_PLANS_TYPE", "INSTANCE_TYPE_FAMILY", "CACHE_ENGINE", "DEPLOYMENT_OPTION", "SCOPE", "PLATFORM"], # required
    #                     values: ["String"], # required
    #                     match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #                   },
    #                   tags: {
    #                     key: "String",
    #                     values: ["String"],
    #                     match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #                   },
    #                   cost_categories: {
    #                     key: "String",
    #                     values: ["String"],
    #                     match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #                   }
    #                 }
    #               },
    #               savings_plans_coverage: {
    #                 time_range: { # required
    #                   start_time: { # required
    #                     type: "ABSOLUTE" # One of: ["ABSOLUTE", "RELATIVE"], # required
    #                     value: "GenericString", # required
    #                   },
    #                   end_time: { # required
    #                     type: "ABSOLUTE" # One of: ["ABSOLUTE", "RELATIVE"], # required
    #                     value: "GenericString", # required
    #                   }
    #                 },
    #                 metrics: ["AmortizedCost" # One of: ["AmortizedCost", "BlendedCost", "NetAmortizedCost", "NetUnblendedCost", "NormalizedUsageAmount", "UnblendedCost", "UsageQuantity", "SpendCoveredBySavingsPlans", "Hour", "Unit", "Cost"]],
    #                 granularity: "HOURLY" # One of: ["HOURLY", "DAILY", "MONTHLY"],
    #                 group_by: [
    #                   {
    #                     key: "String", # required
    #                     type: "DIMENSION" # One of: ["DIMENSION", "TAG", "COST_CATEGORY"]
    #                   }
    #                 ],
    #                 filter: {
    #                   or: [
    #                     {
    #                       # recursive Expression
    #                     }
    #                   ],
    #                   and: [
    #                     {
    #                       # recursive Expression
    #                     }
    #                   ],
    #                   not: {
    #                     # recursive Expression
    #                   },
    #                   dimensions: {
    #                     key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "RESOURCE_ID", "SUBSCRIPTION_ID", "TAG_KEY", "OPERATING_SYSTEM", "TENANCY", "BILLING_ENTITY", "RESERVATION_ID", "COST_CATEGORY_NAME", "DATABASE_ENGINE", "LEGAL_ENTITY_NAME", "SAVINGS_PLANS_TYPE", "INSTANCE_TYPE_FAMILY", "CACHE_ENGINE", "DEPLOYMENT_OPTION", "SCOPE", "PLATFORM"], # required
    #                     values: ["String"], # required
    #                     match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #                   },
    #                   tags: {
    #                     key: "String",
    #                     values: ["String"],
    #                     match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #                   },
    #                   cost_categories: {
    #                     key: "String",
    #                     values: ["String"],
    #                     match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #                   }
    #                 }
    #               },
    #               savings_plans_utilization: {
    #                 time_range: { # required
    #                   start_time: { # required
    #                     type: "ABSOLUTE" # One of: ["ABSOLUTE", "RELATIVE"], # required
    #                     value: "GenericString", # required
    #                   },
    #                   end_time: { # required
    #                     type: "ABSOLUTE" # One of: ["ABSOLUTE", "RELATIVE"], # required
    #                     value: "GenericString", # required
    #                   }
    #                 },
    #                 granularity: "HOURLY" # One of: ["HOURLY", "DAILY", "MONTHLY"],
    #                 filter: {
    #                   or: [
    #                     {
    #                       # recursive Expression
    #                     }
    #                   ],
    #                   and: [
    #                     {
    #                       # recursive Expression
    #                     }
    #                   ],
    #                   not: {
    #                     # recursive Expression
    #                   },
    #                   dimensions: {
    #                     key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "RESOURCE_ID", "SUBSCRIPTION_ID", "TAG_KEY", "OPERATING_SYSTEM", "TENANCY", "BILLING_ENTITY", "RESERVATION_ID", "COST_CATEGORY_NAME", "DATABASE_ENGINE", "LEGAL_ENTITY_NAME", "SAVINGS_PLANS_TYPE", "INSTANCE_TYPE_FAMILY", "CACHE_ENGINE", "DEPLOYMENT_OPTION", "SCOPE", "PLATFORM"], # required
    #                     values: ["String"], # required
    #                     match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #                   },
    #                   tags: {
    #                     key: "String",
    #                     values: ["String"],
    #                     match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #                   },
    #                   cost_categories: {
    #                     key: "String",
    #                     values: ["String"],
    #                     match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #                   }
    #                 }
    #               },
    #               reservation_coverage: {
    #                 time_range: { # required
    #                   start_time: { # required
    #                     type: "ABSOLUTE" # One of: ["ABSOLUTE", "RELATIVE"], # required
    #                     value: "GenericString", # required
    #                   },
    #                   end_time: { # required
    #                     type: "ABSOLUTE" # One of: ["ABSOLUTE", "RELATIVE"], # required
    #                     value: "GenericString", # required
    #                   }
    #                 },
    #                 group_by: [
    #                   {
    #                     key: "String", # required
    #                     type: "DIMENSION" # One of: ["DIMENSION", "TAG", "COST_CATEGORY"]
    #                   }
    #                 ],
    #                 granularity: "HOURLY" # One of: ["HOURLY", "DAILY", "MONTHLY"],
    #                 filter: {
    #                   or: [
    #                     {
    #                       # recursive Expression
    #                     }
    #                   ],
    #                   and: [
    #                     {
    #                       # recursive Expression
    #                     }
    #                   ],
    #                   not: {
    #                     # recursive Expression
    #                   },
    #                   dimensions: {
    #                     key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "RESOURCE_ID", "SUBSCRIPTION_ID", "TAG_KEY", "OPERATING_SYSTEM", "TENANCY", "BILLING_ENTITY", "RESERVATION_ID", "COST_CATEGORY_NAME", "DATABASE_ENGINE", "LEGAL_ENTITY_NAME", "SAVINGS_PLANS_TYPE", "INSTANCE_TYPE_FAMILY", "CACHE_ENGINE", "DEPLOYMENT_OPTION", "SCOPE", "PLATFORM"], # required
    #                     values: ["String"], # required
    #                     match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #                   },
    #                   tags: {
    #                     key: "String",
    #                     values: ["String"],
    #                     match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #                   },
    #                   cost_categories: {
    #                     key: "String",
    #                     values: ["String"],
    #                     match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #                   }
    #                 },
    #                 metrics: ["AmortizedCost" # One of: ["AmortizedCost", "BlendedCost", "NetAmortizedCost", "NetUnblendedCost", "NormalizedUsageAmount", "UnblendedCost", "UsageQuantity", "SpendCoveredBySavingsPlans", "Hour", "Unit", "Cost"]]
    #               },
    #               reservation_utilization: {
    #                 time_range: { # required
    #                   start_time: { # required
    #                     type: "ABSOLUTE" # One of: ["ABSOLUTE", "RELATIVE"], # required
    #                     value: "GenericString", # required
    #                   },
    #                   end_time: { # required
    #                     type: "ABSOLUTE" # One of: ["ABSOLUTE", "RELATIVE"], # required
    #                     value: "GenericString", # required
    #                   }
    #                 },
    #                 group_by: [
    #                   {
    #                     key: "String", # required
    #                     type: "DIMENSION" # One of: ["DIMENSION", "TAG", "COST_CATEGORY"]
    #                   }
    #                 ],
    #                 granularity: "HOURLY" # One of: ["HOURLY", "DAILY", "MONTHLY"],
    #                 filter: {
    #                   or: [
    #                     {
    #                       # recursive Expression
    #                     }
    #                   ],
    #                   and: [
    #                     {
    #                       # recursive Expression
    #                     }
    #                   ],
    #                   not: {
    #                     # recursive Expression
    #                   },
    #                   dimensions: {
    #                     key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "RESOURCE_ID", "SUBSCRIPTION_ID", "TAG_KEY", "OPERATING_SYSTEM", "TENANCY", "BILLING_ENTITY", "RESERVATION_ID", "COST_CATEGORY_NAME", "DATABASE_ENGINE", "LEGAL_ENTITY_NAME", "SAVINGS_PLANS_TYPE", "INSTANCE_TYPE_FAMILY", "CACHE_ENGINE", "DEPLOYMENT_OPTION", "SCOPE", "PLATFORM"], # required
    #                     values: ["String"], # required
    #                     match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #                   },
    #                   tags: {
    #                     key: "String",
    #                     values: ["String"],
    #                     match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #                   },
    #                   cost_categories: {
    #                     key: "String",
    #                     values: ["String"],
    #                     match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #                   }
    #                 }
    #               }
    #             },
    #             display_config: { # required
    #               # One of:
    #               graph: {
    #                 "GenericString" => {
    #                   visual_type: "LINE" # One of: ["LINE", "BAR", "STACK"], # required
    #                 }
    #               },
    #               table: {
    #               }
    #             }
    #           }
    #         ]
    #       }
    #     ],
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::GetDashboardResponse]
    def get_dashboard(params = {}, options = {})
      request = build_request(:get_dashboard, params)
      request.send_request(options)
    end

    # <p>Retrieves the resource-based policy attached to a dashboard, showing sharing configurations and permissions.</p>
    # @param [Hash, Types::GetResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the dashboard whose resource-based policy you want to retrieve.</p>
    # @example Getting resource policy for a resource
    #   # Example operation for get_resource_policy
    #   params = {
    #     resource_arn: "arn:aws:bcm-dashboards::123456789012:dashboard/abcd1234-ab12-12ab-1ab2-abcd1234efgh"
    #   }
    #   options = {}
    #   response = client.get_resource_policy(params, options)
    #   response.to_h #=>
    #   {
    #     policy_document: "{}",
    #     resource_arn: "arn:aws:bcm-dashboards::123456789012:dashboard/abcd1234-ab12-12ab-1ab2-abcd1234efgh"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "DashboardArn", # required
    #   }
    #   options = {}
    #   response = client.get_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_arn: "DashboardArn", # required
    #     policy_document: "GenericString", # required
    #   }
    # @return [Types::GetResourcePolicyResponse]
    def get_resource_policy(params = {}, options = {})
      request = build_request(:get_resource_policy, params)
      request.send_request(options)
    end

    # <p>Retrieves the configuration and metadata of a specified scheduled report.</p>
    # @param [Hash, Types::GetScheduledReportRequest] params
    # @option params [String] :arn
    #   <p>The ARN of the scheduled report to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "ScheduledReportArn", # required
    #   }
    #   options = {}
    #   response = client.get_scheduled_report(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scheduled_report: { # required
    #       arn: "ScheduledReportArn",
    #       name: "ScheduledReportName", # required
    #       dashboard_arn: "DashboardArn", # required
    #       scheduled_report_execution_role_arn: "ServiceRoleArn", # required
    #       schedule_config: { # required
    #         schedule_expression: "GenericString",
    #         schedule_expression_time_zone: "GenericString",
    #         schedule_period: {
    #           start_time: Time.now,
    #           end_time: Time.now
    #         },
    #         state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       },
    #       description: "Description",
    #       widget_ids: ["String"],
    #       widget_date_range_override: {
    #         start_time: { # required
    #           type: "ABSOLUTE" # One of: ["ABSOLUTE", "RELATIVE"], # required
    #           value: "GenericString", # required
    #         },
    #         end_time: { # required
    #           type: "ABSOLUTE" # One of: ["ABSOLUTE", "RELATIVE"], # required
    #           value: "GenericString", # required
    #         }
    #       },
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       last_execution_at: Time.now,
    #       health_status: {
    #         status_code: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY"], # required
    #         last_refreshed_at: Time.now,
    #         status_reasons: ["DATA_SOURCE_ACCESS_DENIED" # One of: ["DATA_SOURCE_ACCESS_DENIED", "EXECUTION_ROLE_ASSUME_FAILED", "EXECUTION_ROLE_INSUFFICIENT_PERMISSIONS", "DASHBOARD_NOT_FOUND", "DASHBOARD_ACCESS_DENIED", "INTERNAL_FAILURE", "WIDGET_ID_NOT_FOUND"]]
    #       }
    #     }
    #   }
    # @return [Types::GetScheduledReportResponse]
    def get_scheduled_report(params = {}, options = {})
      request = build_request(:get_scheduled_report, params)
      request.send_request(options)
    end

    # <p>Returns a list of all dashboards in your account.</p>
    # @param [Hash, Types::ListDashboardsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. The default value is 20.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results. Use the value returned in the previous response.</p>
    # @example Listing dashboards for a user
    #   # Example operation for list_dashboards
    #   params = {}
    #   options = {}
    #   response = client.list_dashboards(params, options)
    #   response.to_h #=>
    #   {
    #     dashboards: [
    #       {
    #         created_at: Time.parse(1753741462.721),
    #         updated_at: Time.parse(1753741462.721),
    #         arn: "arn:aws:bcm-dashboards::123456789012:dashboard/abcd1234-ab12-12ab-1ab2-abcd1234efgh",
    #         name: "monthly-cost-dashboard",
    #         description: "Dashboard for tracking monthly cost",
    #         type: CUSTOM
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextPageToken"
    #   }
    #   options = {}
    #   response = client.list_dashboards(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dashboards: [ # required
    #       {
    #         arn: "DashboardArn", # required
    #         name: "DashboardName", # required
    #         description: "Description",
    #         type: "CUSTOM" # One of: ["CUSTOM"], # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextPageToken"
    #   }
    # @return [Types::ListDashboardsResponse]
    def list_dashboards(params = {}, options = {})
      request = build_request(:list_dashboards, params)
      request.send_request(options)
    end

    # <p>Returns a list of scheduled reports in your account.</p>
    # @param [Hash, Types::ListScheduledReportsRequest] params
    # @option params [String] :next_token
    #   <p>The token for the next page of results. Use the value returned in the previous response.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. Valid range is 1 to 100. The default value is 50.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextPageToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_scheduled_reports(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scheduled_reports: [ # required
    #       {
    #         arn: "ScheduledReportArn", # required
    #         name: "ScheduledReportName", # required
    #         dashboard_arn: "DashboardArn", # required
    #         schedule_expression: "GenericString", # required
    #         state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         health_status: { # required
    #           status_code: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY"], # required
    #           last_refreshed_at: Time.now,
    #           status_reasons: ["DATA_SOURCE_ACCESS_DENIED" # One of: ["DATA_SOURCE_ACCESS_DENIED", "EXECUTION_ROLE_ASSUME_FAILED", "EXECUTION_ROLE_INSUFFICIENT_PERMISSIONS", "DASHBOARD_NOT_FOUND", "DASHBOARD_ACCESS_DENIED", "INTERNAL_FAILURE", "WIDGET_ID_NOT_FOUND"]]
    #         },
    #         schedule_expression_time_zone: "GenericString",
    #         widget_ids: ["String"]
    #       }
    #     ],
    #     next_token: "NextPageToken"
    #   }
    # @return [Types::ListScheduledReportsResponse]
    def list_scheduled_reports(params = {}, options = {})
      request = build_request(:list_scheduled_reports, params)
      request.send_request(options)
    end

    # <p>Returns a list of all tags associated with a specified dashboard resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The unique identifier for the resource.</p>
    # @example Listing tags for a resource
    #   # Example operation for list_tags_for_resource
    #   params = {
    #     resource_arn: "arn:aws:bcm-dashboards::123456789012:dashboard/abcd1234-ab12-12ab-1ab2-abcd1234efgh"
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    #   response.to_h #=>
    #   {
    #     resource_tags: [
    #       {
    #         key: "keyOne",
    #         value: "valueOne"
    #       },
    #       {
    #         key: "keyTwo",
    #         value: "valueTwo"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_tags: [
    #       {
    #         key: "ResourceTagKey", # required
    #         value: "ResourceTagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Adds or updates tags for a specified dashboard resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The unique identifier for the resource.</p>
    # @option params [Array<Types::ResourceTag>] :resource_tags
    #   <p>The tags to add to the dashboard resource.</p>
    # @example Adding tag(s) to a resource
    #   # Example operation for tag_resource
    #   params = {
    #     resource_arn: "arn:aws:bcm-dashboards::123456789012:dashboard/abcd1234-ab12-12ab-1ab2-abcd1234efgh",
    #     resource_tags: [
    #       {
    #         key: "keyOne",
    #         value: "valueOne"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     resource_tags: [ # required
    #       {
    #         key: "ResourceTagKey", # required
    #         value: "ResourceTagValue", # required
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

    # <p>Removes specified tags from a dashboard resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The unique identifier for the resource.</p>
    # @option params [Array<String>] :resource_tag_keys
    #   <p>The keys of the tags to remove from the dashboard resource.</p>
    # @example Removing tag(s) from a resource
    #   # Example operation for untag_resource
    #   params = {
    #     resource_arn: "arn:aws:bcm-dashboards::123456789012:dashboard/abcd1234-ab12-12ab-1ab2-abcd1234efgh",
    #     resource_tag_keys: [
    #       "keyOne"
    #     ]
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     resource_tag_keys: ["ResourceTagKey"], # required
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

    # <p>Updates an existing dashboard's properties, including its name, description, and widget configurations.</p>
    # @param [Hash, Types::UpdateDashboardRequest] params
    # @option params [String] :arn
    #   <p>The ARN of the dashboard to update.</p>
    # @option params [String] :name
    #   <p>The new name for the dashboard.</p>
    # @option params [String] :description
    #   <p>The new description for the dashboard.</p>
    # @option params [Array<Types::Widget>] :widgets
    #   <p>The updated array of widget configurations for the dashboard. Replaces all existing widgets.</p>
    # @example Updating a dashboard
    #   # Example operation for update_dashboard
    #   params = {
    #     arn: "arn:aws:bcm-dashboards::123456789012:dashboard/abcd1234-ab12-12ab-1ab2-abcd1234efgh",
    #     name: "cost-dashboards-updated",
    #     description: "Dashboard for tracking costs version 2",
    #     widgets: [
    #       {
    #         title: "Monthly Cost Trend",
    #         width: 4,
    #         height: 7,
    #         horizontal_offset: 2,
    #         configs: [
    #           {
    #             display_config: {
    #     "graph" => {
    #       "costTrend" => {
    #         "visualType" => LINE
    #       }
    #     }
    #   },
    #             query_parameters: {
    #     "costAndUsage" => {
    #       "granularity" => MONTHLY,
    #       "groupBy" => [{
    #         "key" => SERVICE,
    #         "type" => DIMENSION
    #       }],
    #       "metrics" => [UnblendedCost],
    #       "timeRange" => {
    #         "endTime" => {
    #           "type" => RELATIVE,
    #           "value" => now
    #         },
    #         "startTime" => {
    #           "type" => RELATIVE,
    #           "value" => -3M
    #         }
    #       }
    #     }
    #   }
    #           }
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_dashboard(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "DashboardArn", # required
    #     name: "DashboardName", # required
    #     description: "Description",
    #     widgets: [
    #       {
    #         id: "WidgetId",
    #         title: "WidgetTitle", # required
    #         description: "Description",
    #         width: 1,
    #         height: 1,
    #         horizontal_offset: 1,
    #         configs: [ # required
    #           {
    #             query_parameters: { # required
    #               # One of:
    #               cost_and_usage: {
    #                 metrics: ["AmortizedCost" # One of: ["AmortizedCost", "BlendedCost", "NetAmortizedCost", "NetUnblendedCost", "NormalizedUsageAmount", "UnblendedCost", "UsageQuantity", "SpendCoveredBySavingsPlans", "Hour", "Unit", "Cost"]], # required
    #                 time_range: { # required
    #                   start_time: { # required
    #                     type: "ABSOLUTE" # One of: ["ABSOLUTE", "RELATIVE"], # required
    #                     value: "GenericString", # required
    #                   },
    #                   end_time: { # required
    #                     type: "ABSOLUTE" # One of: ["ABSOLUTE", "RELATIVE"], # required
    #                     value: "GenericString", # required
    #                   }
    #                 },
    #                 granularity: "HOURLY" # One of: ["HOURLY", "DAILY", "MONTHLY"], # required
    #                 group_by: [
    #                   {
    #                     key: "String", # required
    #                     type: "DIMENSION" # One of: ["DIMENSION", "TAG", "COST_CATEGORY"]
    #                   }
    #                 ],
    #                 filter: {
    #                   or: [
    #                     {
    #                       # recursive Expression
    #                     }
    #                   ],
    #                   and: [
    #                     {
    #                       # recursive Expression
    #                     }
    #                   ],
    #                   not: {
    #                     # recursive Expression
    #                   },
    #                   dimensions: {
    #                     key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "RESOURCE_ID", "SUBSCRIPTION_ID", "TAG_KEY", "OPERATING_SYSTEM", "TENANCY", "BILLING_ENTITY", "RESERVATION_ID", "COST_CATEGORY_NAME", "DATABASE_ENGINE", "LEGAL_ENTITY_NAME", "SAVINGS_PLANS_TYPE", "INSTANCE_TYPE_FAMILY", "CACHE_ENGINE", "DEPLOYMENT_OPTION", "SCOPE", "PLATFORM"], # required
    #                     values: ["String"], # required
    #                     match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #                   },
    #                   tags: {
    #                     key: "String",
    #                     values: ["String"],
    #                     match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #                   },
    #                   cost_categories: {
    #                     key: "String",
    #                     values: ["String"],
    #                     match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #                   }
    #                 }
    #               },
    #               savings_plans_coverage: {
    #                 time_range: { # required
    #                   start_time: { # required
    #                     type: "ABSOLUTE" # One of: ["ABSOLUTE", "RELATIVE"], # required
    #                     value: "GenericString", # required
    #                   },
    #                   end_time: { # required
    #                     type: "ABSOLUTE" # One of: ["ABSOLUTE", "RELATIVE"], # required
    #                     value: "GenericString", # required
    #                   }
    #                 },
    #                 metrics: ["AmortizedCost" # One of: ["AmortizedCost", "BlendedCost", "NetAmortizedCost", "NetUnblendedCost", "NormalizedUsageAmount", "UnblendedCost", "UsageQuantity", "SpendCoveredBySavingsPlans", "Hour", "Unit", "Cost"]],
    #                 granularity: "HOURLY" # One of: ["HOURLY", "DAILY", "MONTHLY"],
    #                 group_by: [
    #                   {
    #                     key: "String", # required
    #                     type: "DIMENSION" # One of: ["DIMENSION", "TAG", "COST_CATEGORY"]
    #                   }
    #                 ],
    #                 filter: {
    #                   or: [
    #                     {
    #                       # recursive Expression
    #                     }
    #                   ],
    #                   and: [
    #                     {
    #                       # recursive Expression
    #                     }
    #                   ],
    #                   not: {
    #                     # recursive Expression
    #                   },
    #                   dimensions: {
    #                     key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "RESOURCE_ID", "SUBSCRIPTION_ID", "TAG_KEY", "OPERATING_SYSTEM", "TENANCY", "BILLING_ENTITY", "RESERVATION_ID", "COST_CATEGORY_NAME", "DATABASE_ENGINE", "LEGAL_ENTITY_NAME", "SAVINGS_PLANS_TYPE", "INSTANCE_TYPE_FAMILY", "CACHE_ENGINE", "DEPLOYMENT_OPTION", "SCOPE", "PLATFORM"], # required
    #                     values: ["String"], # required
    #                     match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #                   },
    #                   tags: {
    #                     key: "String",
    #                     values: ["String"],
    #                     match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #                   },
    #                   cost_categories: {
    #                     key: "String",
    #                     values: ["String"],
    #                     match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #                   }
    #                 }
    #               },
    #               savings_plans_utilization: {
    #                 time_range: { # required
    #                   start_time: { # required
    #                     type: "ABSOLUTE" # One of: ["ABSOLUTE", "RELATIVE"], # required
    #                     value: "GenericString", # required
    #                   },
    #                   end_time: { # required
    #                     type: "ABSOLUTE" # One of: ["ABSOLUTE", "RELATIVE"], # required
    #                     value: "GenericString", # required
    #                   }
    #                 },
    #                 granularity: "HOURLY" # One of: ["HOURLY", "DAILY", "MONTHLY"],
    #                 filter: {
    #                   or: [
    #                     {
    #                       # recursive Expression
    #                     }
    #                   ],
    #                   and: [
    #                     {
    #                       # recursive Expression
    #                     }
    #                   ],
    #                   not: {
    #                     # recursive Expression
    #                   },
    #                   dimensions: {
    #                     key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "RESOURCE_ID", "SUBSCRIPTION_ID", "TAG_KEY", "OPERATING_SYSTEM", "TENANCY", "BILLING_ENTITY", "RESERVATION_ID", "COST_CATEGORY_NAME", "DATABASE_ENGINE", "LEGAL_ENTITY_NAME", "SAVINGS_PLANS_TYPE", "INSTANCE_TYPE_FAMILY", "CACHE_ENGINE", "DEPLOYMENT_OPTION", "SCOPE", "PLATFORM"], # required
    #                     values: ["String"], # required
    #                     match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #                   },
    #                   tags: {
    #                     key: "String",
    #                     values: ["String"],
    #                     match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #                   },
    #                   cost_categories: {
    #                     key: "String",
    #                     values: ["String"],
    #                     match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #                   }
    #                 }
    #               },
    #               reservation_coverage: {
    #                 time_range: { # required
    #                   start_time: { # required
    #                     type: "ABSOLUTE" # One of: ["ABSOLUTE", "RELATIVE"], # required
    #                     value: "GenericString", # required
    #                   },
    #                   end_time: { # required
    #                     type: "ABSOLUTE" # One of: ["ABSOLUTE", "RELATIVE"], # required
    #                     value: "GenericString", # required
    #                   }
    #                 },
    #                 group_by: [
    #                   {
    #                     key: "String", # required
    #                     type: "DIMENSION" # One of: ["DIMENSION", "TAG", "COST_CATEGORY"]
    #                   }
    #                 ],
    #                 granularity: "HOURLY" # One of: ["HOURLY", "DAILY", "MONTHLY"],
    #                 filter: {
    #                   or: [
    #                     {
    #                       # recursive Expression
    #                     }
    #                   ],
    #                   and: [
    #                     {
    #                       # recursive Expression
    #                     }
    #                   ],
    #                   not: {
    #                     # recursive Expression
    #                   },
    #                   dimensions: {
    #                     key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "RESOURCE_ID", "SUBSCRIPTION_ID", "TAG_KEY", "OPERATING_SYSTEM", "TENANCY", "BILLING_ENTITY", "RESERVATION_ID", "COST_CATEGORY_NAME", "DATABASE_ENGINE", "LEGAL_ENTITY_NAME", "SAVINGS_PLANS_TYPE", "INSTANCE_TYPE_FAMILY", "CACHE_ENGINE", "DEPLOYMENT_OPTION", "SCOPE", "PLATFORM"], # required
    #                     values: ["String"], # required
    #                     match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #                   },
    #                   tags: {
    #                     key: "String",
    #                     values: ["String"],
    #                     match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #                   },
    #                   cost_categories: {
    #                     key: "String",
    #                     values: ["String"],
    #                     match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #                   }
    #                 },
    #                 metrics: ["AmortizedCost" # One of: ["AmortizedCost", "BlendedCost", "NetAmortizedCost", "NetUnblendedCost", "NormalizedUsageAmount", "UnblendedCost", "UsageQuantity", "SpendCoveredBySavingsPlans", "Hour", "Unit", "Cost"]]
    #               },
    #               reservation_utilization: {
    #                 time_range: { # required
    #                   start_time: { # required
    #                     type: "ABSOLUTE" # One of: ["ABSOLUTE", "RELATIVE"], # required
    #                     value: "GenericString", # required
    #                   },
    #                   end_time: { # required
    #                     type: "ABSOLUTE" # One of: ["ABSOLUTE", "RELATIVE"], # required
    #                     value: "GenericString", # required
    #                   }
    #                 },
    #                 group_by: [
    #                   {
    #                     key: "String", # required
    #                     type: "DIMENSION" # One of: ["DIMENSION", "TAG", "COST_CATEGORY"]
    #                   }
    #                 ],
    #                 granularity: "HOURLY" # One of: ["HOURLY", "DAILY", "MONTHLY"],
    #                 filter: {
    #                   or: [
    #                     {
    #                       # recursive Expression
    #                     }
    #                   ],
    #                   and: [
    #                     {
    #                       # recursive Expression
    #                     }
    #                   ],
    #                   not: {
    #                     # recursive Expression
    #                   },
    #                   dimensions: {
    #                     key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "RESOURCE_ID", "SUBSCRIPTION_ID", "TAG_KEY", "OPERATING_SYSTEM", "TENANCY", "BILLING_ENTITY", "RESERVATION_ID", "COST_CATEGORY_NAME", "DATABASE_ENGINE", "LEGAL_ENTITY_NAME", "SAVINGS_PLANS_TYPE", "INSTANCE_TYPE_FAMILY", "CACHE_ENGINE", "DEPLOYMENT_OPTION", "SCOPE", "PLATFORM"], # required
    #                     values: ["String"], # required
    #                     match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #                   },
    #                   tags: {
    #                     key: "String",
    #                     values: ["String"],
    #                     match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #                   },
    #                   cost_categories: {
    #                     key: "String",
    #                     values: ["String"],
    #                     match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"]]
    #                   }
    #                 }
    #               }
    #             },
    #             display_config: { # required
    #               # One of:
    #               graph: {
    #                 "GenericString" => {
    #                   visual_type: "LINE" # One of: ["LINE", "BAR", "STACK"], # required
    #                 }
    #               },
    #               table: {
    #               }
    #             }
    #           }
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_dashboard(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "DashboardArn", # required
    #   }
    # @return [Types::UpdateDashboardResponse]
    def update_dashboard(params = {}, options = {})
      request = build_request(:update_dashboard, params)
      request.send_request(options)
    end

    # <p>Updates an existing scheduled report's properties, including its name, description, schedule configuration, and widget settings. Only the parameters included in the request are updated; all other properties remain unchanged.</p>
    # @param [Hash, Types::UpdateScheduledReportRequest] params
    # @option params [String] :arn
    #   <p>The ARN of the scheduled report to update.</p>
    # @option params [String] :name
    #   <p>The new name for the scheduled report.</p>
    # @option params [String] :description
    #   <p>The new description for the scheduled report.</p>
    # @option params [String] :dashboard_arn
    #   <p>The ARN of the dashboard to associate with the scheduled report.</p>
    # @option params [String] :scheduled_report_execution_role_arn
    #   <p>The ARN of the IAM role that the scheduled report uses to execute. Amazon Web Services Billing and Cost Management Dashboards will assume this IAM role while executing the scheduled report.</p>
    # @option params [Types::ScheduleConfig] :schedule_config
    #   <p>The updated schedule configuration for the report.</p>
    # @option params [Array<String>] :widget_ids
    #   <p>The list of widget identifiers to include in the scheduled report. If not specified, all widgets in the dashboard are included.</p>
    # @option params [Types::DateTimeRange] :widget_date_range_override
    #   <p>The date range override to apply to widgets in the scheduled report.</p>
    # @option params [Boolean] :clear_widget_ids
    #   Set to true to clear existing widgetIds.
    # @option params [Boolean] :clear_widget_date_range_override
    #   Set to true to clear existing widgetDateRangeOverride.
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "ScheduledReportArn", # required
    #     name: "ScheduledReportName",
    #     description: "Description",
    #     dashboard_arn: "DashboardArn",
    #     scheduled_report_execution_role_arn: "ServiceRoleArn",
    #     schedule_config: {
    #       schedule_expression: "GenericString",
    #       schedule_expression_time_zone: "GenericString",
    #       schedule_period: {
    #         start_time: Time.now,
    #         end_time: Time.now
    #       },
    #       state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     },
    #     widget_ids: ["String"],
    #     widget_date_range_override: {
    #       start_time: { # required
    #         type: "ABSOLUTE" # One of: ["ABSOLUTE", "RELATIVE"], # required
    #         value: "GenericString", # required
    #       },
    #       end_time: { # required
    #         type: "ABSOLUTE" # One of: ["ABSOLUTE", "RELATIVE"], # required
    #         value: "GenericString", # required
    #       }
    #     },
    #     clear_widget_ids: false,
    #     clear_widget_date_range_override: false
    #   }
    #   options = {}
    #   response = client.update_scheduled_report(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "ScheduledReportArn", # required
    #   }
    # @return [Types::UpdateScheduledReportResponse]
    def update_scheduled_report(params = {}, options = {})
      request = build_request(:update_scheduled_report, params)
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
      context[:gem_name] = 'aws-sdk-bcmdashboards'
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
