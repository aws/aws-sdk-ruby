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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:sustainability)

module Aws::Sustainability
  # An API client for Aws::Sustainability.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AwsSustainabilityApiService
    @identifier = :sustainability

    add_plugin(::Aws::Sustainability::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Sustainability::EndpointProvider)
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

    # <p>Returns estimated carbon emission values based on customer grouping and filtering parameters. We recommend using pagination to ensure that the operation returns quickly and successfully. </p>
    # @param [Hash, Types::GetEstimatedCarbonEmissionsRequest] params
    # @option params [Types::TimePeriod] :time_period
    #   <p> The date range for fetching estimated carbon emissions. The range must include the start date of a month for that month's data to be included in the response. </p>
    # @option params [Array<String>] :group_by
    #   <p>The dimensions available for grouping estimated carbon emissions.</p>
    # @option params [Types::FilterExpression] :filter_by
    #   <p> The criteria for filtering estimated carbon emissions. To determine which dimensions are available to be filtered by, you can first call <a>GetEstimatedCarbonEmissionsDimensionValues</a> </p>
    # @option params [Array<String>] :emissions_types
    #   <p>The emission types to include in the results. If absent, returns <code>TOTAL_LBM_CARBON_EMISSIONS</code> and <code>TOTAL_MBM_CARBON_EMISSIONS</code> emissions types. </p>
    # @option params [String] :granularity
    #   <p> The time granularity for the results. If absent, uses <code>MONTHLY</code> time granularity. The smallest supported granularity for carbon emissions is <code>MONTHLY</code>. </p> <p> If requesting partial time periods, data will be returned based on the smallest supported granularity. For example, requesting <code>2025-04-01T00:00:00Z</code> to <code>2026-04-01T00:00:00Z</code> with <code>YEARLY_CALENDAR</code> granularity will return the last 9 months for 2025 and the first 3 months of 2026. </p>
    # @option params [Types::GranularityConfiguration] :granularity_configuration
    #   <p>Configuration for fiscal year calculations when using <code>YEARLY_FISCAL</code> or <code>QUARTERLY_FISCAL</code> granularity. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. Default is 1000.</p>
    # @option params [String] :next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no token is provided, the default page is the first page. </p>
    # @example GetEstimatedCarbonEmissionsSuccess
    #   # Example operation for get_estimated_carbon_emissions
    #   params = {
    #     time_period: {
    #       start: Time.parse("2025-01-01T00:00:00.000Z"),
    #       end: Time.parse("2025-12-31T23:59:59.999Z")
    #     },
    #     group_by: [
    #       SERVICE
    #     ],
    #     emissions_types: [
    #       TOTAL_LBM_CARBON_EMISSIONS,
    #       TOTAL_MBM_CARBON_EMISSIONS,
    #       TOTAL_SCOPE_1_CARBON_EMISSIONS,
    #       TOTAL_SCOPE_2_LBM_CARBON_EMISSIONS,
    #       TOTAL_SCOPE_2_MBM_CARBON_EMISSIONS,
    #       TOTAL_SCOPE_3_LBM_CARBON_EMISSIONS,
    #       TOTAL_SCOPE_3_MBM_CARBON_EMISSIONS
    #     ],
    #     granularity: MONTHLY
    #   }
    #   options = {}
    #   response = client.get_estimated_carbon_emissions(params, options)
    #   response.to_h #=>
    #   {
    #     results: [
    #       {
    #         dimensions_values: {
    #           "SERVICE" => "AmazonEC2"
    #         },
    #         emissions_values: {
    #           "TOTAL_LBM_CARBON_EMISSIONS" => {
    #             unit: MTCO2e,
    #             value: 1
    #           },
    #           "TOTAL_MBM_CARBON_EMISSIONS" => {
    #             unit: MTCO2e,
    #             value: 1
    #           },
    #           "TOTAL_SCOPE_1_CARBON_EMISSIONS" => {
    #             unit: MTCO2e,
    #             value: 1
    #           },
    #           "TOTAL_SCOPE_2_LBM_CARBON_EMISSIONS" => {
    #             unit: MTCO2e,
    #             value: 1
    #           },
    #           "TOTAL_SCOPE_2_MBM_CARBON_EMISSIONS" => {
    #             unit: MTCO2e,
    #             value: 1
    #           },
    #           "TOTAL_SCOPE_3_LBM_CARBON_EMISSIONS" => {
    #             unit: MTCO2e,
    #             value: 1
    #           },
    #           "TOTAL_SCOPE_3_MBM_CARBON_EMISSIONS" => {
    #             unit: MTCO2e,
    #             value: 1
    #           }
    #         },
    #         model_version: "v3.0.0",
    #         time_period: {
    #           start: Time.parse("2025-01-01T00:00:00Z"),
    #           end: Time.parse("2025-02-01T00:00:00Z")
    #         }
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     time_period: { # required
    #       start: Time.now, # required
    #       end: Time.now, # required
    #     },
    #     group_by: ["USAGE_ACCOUNT_ID" # One of: ["USAGE_ACCOUNT_ID", "REGION", "SERVICE"]],
    #     filter_by: {
    #       dimensions: {
    #         "Dimension" => ["DimensionValue"]
    #       }
    #     },
    #     emissions_types: ["TOTAL_LBM_CARBON_EMISSIONS" # One of: ["TOTAL_LBM_CARBON_EMISSIONS", "TOTAL_MBM_CARBON_EMISSIONS", "TOTAL_SCOPE_1_CARBON_EMISSIONS", "TOTAL_SCOPE_2_LBM_CARBON_EMISSIONS", "TOTAL_SCOPE_2_MBM_CARBON_EMISSIONS", "TOTAL_SCOPE_3_LBM_CARBON_EMISSIONS", "TOTAL_SCOPE_3_MBM_CARBON_EMISSIONS"]],
    #     granularity: "YEARLY_CALENDAR" # One of: ["YEARLY_CALENDAR", "YEARLY_FISCAL", "QUARTERLY_CALENDAR", "QUARTERLY_FISCAL", "MONTHLY"],
    #     granularity_configuration: {
    #       fiscal_year_start_month: 1
    #     },
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_estimated_carbon_emissions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     results: [ # required
    #       {
    #         time_period: { # required
    #           start: Time.now, # required
    #           end: Time.now, # required
    #         },
    #         dimensions_values: { # required
    #           "Dimension" => "DimensionValue"
    #         },
    #         model_version: "ModelVersion", # required
    #         emissions_values: { # required
    #           "EmissionsType" => {
    #             value: 1.0, # required
    #             unit: "MTCO2e" # One of: ["MTCO2e"], # required
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetEstimatedCarbonEmissionsResponse]
    def get_estimated_carbon_emissions(params = {}, options = {})
      request = build_request(:get_estimated_carbon_emissions, params)
      request.send_request(options)
    end

    # <p>Returns the possible dimension values available for a customer's account. We recommend using pagination to ensure that the operation returns quickly and successfully. </p>
    # @param [Hash, Types::GetEstimatedCarbonEmissionsDimensionValuesRequest] params
    # @option params [Types::TimePeriod] :time_period
    #   <p> The date range for fetching the dimension values. The range must include the start date of a month for that month's dimensions to be included in the response. </p>
    # @option params [Array<String>] :dimensions
    #   <p>The dimensions available for grouping estimated carbon emissions.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. Default is 1000.</p>
    # @option params [String] :next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no token is provided, the default page is the first page. </p>
    # @example GetEstimatedCarbonEmissionsDimensionValuesSuccess
    #   # Example operation for get_estimated_carbon_emissions_dimension_values
    #   params = {
    #     time_period: {
    #       start: Time.parse("2025-01-01T00:00:00.000Z"),
    #       end: Time.parse("2025-12-31T23:59:59.999Z")
    #     },
    #     dimensions: [
    #       REGION,
    #       SERVICE,
    #       USAGE_ACCOUNT_ID
    #     ]
    #   }
    #   options = {}
    #   response = client.get_estimated_carbon_emissions_dimension_values(params, options)
    #   response.to_h #=>
    #   {
    #     results: [
    #       {
    #         dimension: SERVICE,
    #         value: "AmazonEC2"
    #       },
    #       {
    #         dimension: SERVICE,
    #         value: "AmazonS3"
    #       },
    #       {
    #         dimension: SERVICE,
    #         value: "AmazonCloudFront"
    #       },
    #       {
    #         dimension: REGION,
    #         value: "global"
    #       },
    #       {
    #         dimension: REGION,
    #         value: "us-east-1"
    #       },
    #       {
    #         dimension: REGION,
    #         value: "us-west-2"
    #       },
    #       {
    #         dimension: USAGE_ACCOUNT_ID,
    #         value: "111222333444"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     time_period: { # required
    #       start: Time.now, # required
    #       end: Time.now, # required
    #     },
    #     dimensions: ["USAGE_ACCOUNT_ID" # One of: ["USAGE_ACCOUNT_ID", "REGION", "SERVICE"]], # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_estimated_carbon_emissions_dimension_values(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     results: [
    #       {
    #         dimension: "USAGE_ACCOUNT_ID" # One of: ["USAGE_ACCOUNT_ID", "REGION", "SERVICE"], # required
    #         value: "DimensionValue", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetEstimatedCarbonEmissionsDimensionValuesResponse]
    def get_estimated_carbon_emissions_dimension_values(params = {}, options = {})
      request = build_request(:get_estimated_carbon_emissions_dimension_values, params)
      request.send_request(options)
    end

    # <p>Returns estimated water allocation values based on customer grouping and filtering parameters. We recommend using pagination to ensure that the operation returns quickly and successfully. </p>
    # @param [Hash, Types::GetEstimatedWaterAllocationRequest] params
    # @option params [Types::TimePeriod] :time_period
    #   <p> The date range for fetching estimated water allocation. The range must include the start date of a year for that year's data to be included in the response. </p>
    # @option params [Array<String>] :group_by
    #   <p>The dimensions available for grouping estimated water allocation.</p>
    # @option params [Types::FilterExpression] :filter_by
    #   <p> The criteria for filtering estimated water allocation. To determine which dimensions are available to be filtered by, you can first call <a>GetEstimatedWaterAllocationDimensionValues</a> </p>
    # @option params [Array<String>] :allocation_types
    #   <p>The allocation types to include in the results. If absent, returns <code>TOTAL_WATER_WITHDRAWALS</code> allocation types. </p>
    # @option params [String] :granularity
    #   <p>The time granularity for the results. Only <code>YEARLY_CALENDAR</code> time granularity is currently supported for water allocation. Defaults to <code>YEARLY_CALENDAR</code> if absent.</p> <p> If requesting partial time periods, data will be returned based on the smallest supported granularity. For example, requesting <code>2025-04-01T00:00:00Z</code> to <code>2026-04-01T00:00:00Z</code> with <code>YEARLY_CALENDAR</code> will return all the data for 2026 only. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. Default is 1000.</p>
    # @option params [String] :next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no token is provided, the default page is the first page. </p>
    # @example GetEstimatedWaterAllocationSuccess
    #   # Example operation for get_estimated_water_allocation
    #   params = {
    #     time_period: {
    #       start: Time.parse("2025-01-01T00:00:00.00Z"),
    #       end: Time.parse("2026-01-01T00:00:00.00Z")
    #     },
    #     group_by: [
    #       SERVICE
    #     ],
    #     allocation_types: [
    #       TOTAL_WATER_WITHDRAWALS
    #     ],
    #     granularity: YEARLY_CALENDAR
    #   }
    #   options = {}
    #   response = client.get_estimated_water_allocation(params, options)
    #   response.to_h #=>
    #   {
    #     results: [
    #       {
    #         dimensions_values: {
    #           "SERVICE" => "AmazonEC2"
    #         },
    #         allocation_values: {
    #           "TOTAL_WATER_WITHDRAWALS" => {
    #             unit: m3,
    #             value: 1
    #           }
    #         },
    #         model_version: "v1.0.0",
    #         time_period: {
    #           start: Time.parse("2025-01-01T00:00:00Z"),
    #           end: Time.parse("2026-01-01T00:00:00Z")
    #         }
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     time_period: { # required
    #       start: Time.now, # required
    #       end: Time.now, # required
    #     },
    #     group_by: ["USAGE_ACCOUNT_ID" # One of: ["USAGE_ACCOUNT_ID", "REGION", "SERVICE"]],
    #     filter_by: {
    #       dimensions: {
    #         "Dimension" => ["DimensionValue"]
    #       }
    #     },
    #     allocation_types: ["TOTAL_WATER_WITHDRAWALS" # One of: ["TOTAL_WATER_WITHDRAWALS"]],
    #     granularity: "YEARLY_CALENDAR" # One of: ["YEARLY_CALENDAR", "YEARLY_FISCAL", "QUARTERLY_CALENDAR", "QUARTERLY_FISCAL", "MONTHLY"],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_estimated_water_allocation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     results: [ # required
    #       {
    #         time_period: { # required
    #           start: Time.now, # required
    #           end: Time.now, # required
    #         },
    #         dimensions_values: { # required
    #           "Dimension" => "DimensionValue"
    #         },
    #         model_version: "ModelVersion", # required
    #         allocation_values: { # required
    #           "WaterAllocationType" => {
    #             value: 1.0, # required
    #             unit: "m3" # One of: ["m3"], # required
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetEstimatedWaterAllocationResponse]
    def get_estimated_water_allocation(params = {}, options = {})
      request = build_request(:get_estimated_water_allocation, params)
      request.send_request(options)
    end

    # <p>Returns the possible dimension values available for a customer's account. We recommend using pagination to ensure that the operation returns quickly and successfully. </p>
    # @param [Hash, Types::GetEstimatedWaterAllocationDimensionValuesRequest] params
    # @option params [Types::TimePeriod] :time_period
    #   <p> The date range for fetching the dimension values. The range must include the start date of a year for that year's data to be included in the response. </p>
    # @option params [Array<String>] :dimensions
    #   <p>The dimensions available for grouping estimated water allocation.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. Default is 1000.</p>
    # @option params [String] :next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no token is provided, the default page is the first page. </p>
    # @example GetEstimatedWaterAllocationDimensionValuesSuccess
    #   # Example operation for get_estimated_water_allocation_dimension_values
    #   params = {
    #     time_period: {
    #       start: Time.parse("2025-01-01T00:00:00.00Z"),
    #       end: Time.parse("2026-01-01T00:00:00.00Z")
    #     },
    #     dimensions: [
    #       REGION,
    #       SERVICE,
    #       USAGE_ACCOUNT_ID
    #     ]
    #   }
    #   options = {}
    #   response = client.get_estimated_water_allocation_dimension_values(params, options)
    #   response.to_h #=>
    #   {
    #     results: [
    #       {
    #         dimension: SERVICE,
    #         value: "AmazonEC2"
    #       },
    #       {
    #         dimension: SERVICE,
    #         value: "AmazonS3"
    #       },
    #       {
    #         dimension: SERVICE,
    #         value: "AmazonCloudFront"
    #       },
    #       {
    #         dimension: REGION,
    #         value: "global"
    #       },
    #       {
    #         dimension: REGION,
    #         value: "us-east-1"
    #       },
    #       {
    #         dimension: REGION,
    #         value: "us-west-2"
    #       },
    #       {
    #         dimension: USAGE_ACCOUNT_ID,
    #         value: "111222333444"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     time_period: { # required
    #       start: Time.now, # required
    #       end: Time.now, # required
    #     },
    #     dimensions: ["USAGE_ACCOUNT_ID" # One of: ["USAGE_ACCOUNT_ID", "REGION", "SERVICE"]], # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_estimated_water_allocation_dimension_values(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     results: [ # required
    #       {
    #         dimension: "USAGE_ACCOUNT_ID" # One of: ["USAGE_ACCOUNT_ID", "REGION", "SERVICE"], # required
    #         value: "DimensionValue", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetEstimatedWaterAllocationDimensionValuesResponse]
    def get_estimated_water_allocation_dimension_values(params = {}, options = {})
      request = build_request(:get_estimated_water_allocation_dimension_values, params)
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
      context[:gem_name] = 'aws-sdk-sustainability'
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
