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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:savingsplans)

module Aws::Savingsplans
  # An API client for Aws::Savingsplans.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSSavingsPlan
    @identifier = :savingsplans

    add_plugin(::Aws::Savingsplans::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Savingsplans::EndpointProvider)
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

    # <p>Creates a Savings Plan.</p>
    # @param [Hash, Types::CreateSavingsPlanRequest] params
    # @option params [String] :savings_plan_offering_id
    #   <p>The ID of the offering.</p>
    # @option params [String] :commitment
    #   <p>The hourly commitment, in the same currency of the <code>savingsPlanOfferingId</code>.
    #            This is a value between 0.001 and 1 million. You cannot specify more than five digits after
    #            the decimal point.</p>
    # @option params [String] :upfront_payment_amount
    #   <p>The up-front payment amount. This is a whole number between 50 and 99 percent of the
    #            total value of the Savings Plan. This parameter is only supported if the
    #            payment option is <code>Partial Upfront</code>.</p>
    # @option params [Time] :purchase_time
    #   <p>The purchase time of the Savings Plan in UTC format
    #            (YYYY-MM-DDTHH:MM:SSZ).</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>One or more tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     savings_plan_offering_id: "SavingsPlanOfferingId", # required
    #     commitment: "Amount", # required
    #     upfront_payment_amount: "Amount",
    #     purchase_time: Time.now,
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_savings_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     savings_plan_id: "SavingsPlanId"
    #   }
    # @return [Types::CreateSavingsPlanResponse]
    def create_savings_plan(params = {}, options = {})
      request = build_request(:create_savings_plan, params)
      request.send_request(options)
    end

    # <p>Deletes the queued purchase for the specified Savings Plan.</p>
    # @param [Hash, Types::DeleteQueuedSavingsPlanRequest] params
    # @option params [String] :savings_plan_id
    #   <p>The ID of the Savings Plan.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     savings_plan_id: "SavingsPlanId", # required
    #   }
    #   options = {}
    #   response = client.delete_queued_savings_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteQueuedSavingsPlanResponse]
    def delete_queued_savings_plan(params = {}, options = {})
      request = build_request(:delete_queued_savings_plan, params)
      request.send_request(options)
    end

    # <p>Describes the rates for a specific, existing Savings Plan.</p>
    # @param [Hash, Types::DescribeSavingsPlanRatesRequest] params
    # @option params [String] :savings_plan_id
    #   <p>The ID of the Savings Plan.</p>
    # @option params [Array<Types::SavingsPlanRateFilter>] :filters
    #   <p>The filters.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call. To retrieve additional
    #            results, make another call with the returned token value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     savings_plan_id: "SavingsPlanId", # required
    #     filters: [
    #       {
    #         name: "region" # One of: ["region", "instanceType", "productDescription", "tenancy", "productType", "serviceCode", "usageType", "operation"],
    #         values: ["String"]
    #       }
    #     ],
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_savings_plan_rates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     savings_plan_id: "SavingsPlanId",
    #     search_results: [
    #       {
    #         rate: "Amount",
    #         currency: "CNY" # One of: ["CNY", "USD", "EUR"],
    #         unit: "Hrs" # One of: ["Hrs", "Lambda-GB-Second", "Request", "ACU-Hr", "ReadRequestUnits", "WriteRequestUnits", "ReadCapacityUnit-Hrs", "WriteCapacityUnit-Hrs", "ReplicatedWriteRequestUnits", "ReplicatedWriteCapacityUnit-Hrs", "GB-Hours", "DPU", "ElastiCacheProcessingUnit", "DCU-Hr", "NCU-hr", "OCU-hours", "Jobs"],
    #         product_type: "EC2" # One of: ["EC2", "Fargate", "Lambda", "SageMaker", "RDS", "DSQL", "DynamoDB", "ElastiCache", "DocDB", "Neptune", "Timestream", "Keyspaces", "DMS", "OpenSearch"],
    #         service_code: "AmazonEC2" # One of: ["AmazonEC2", "AmazonECS", "AmazonEKS", "AWSLambda", "AmazonSageMaker", "AmazonRDS", "AuroraDSQL", "AmazonDynamoDB", "AmazonElastiCache", "AmazonDocDB", "AmazonNeptune", "AmazonTimestream", "AmazonMCS", "AWSDatabaseMigrationSvc", "AmazonES"],
    #         usage_type: "SavingsPlanRateUsageType",
    #         operation: "SavingsPlanRateOperation",
    #         properties: [
    #           {
    #             name: "region" # One of: ["region", "instanceType", "instanceFamily", "productDescription", "tenancy"],
    #             value: "JsonSafeFilterValueString"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::DescribeSavingsPlanRatesResponse]
    def describe_savings_plan_rates(params = {}, options = {})
      request = build_request(:describe_savings_plan_rates, params)
      request.send_request(options)
    end

    # <p>Describes the specified Savings Plans.</p>
    # @param [Hash, Types::DescribeSavingsPlansRequest] params
    # @option params [Array<String>] :savings_plan_arns
    #   <p>The Amazon Resource Names (ARN) of the Savings Plans.</p>
    # @option params [Array<String>] :savings_plan_ids
    #   <p>The IDs of the Savings Plans.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call. To retrieve additional
    #            results, make another call with the returned token value.</p>
    # @option params [Array<String>] :states
    #   <p>The current states of the Savings Plans.</p>
    # @option params [Array<Types::SavingsPlanFilter>] :filters
    #   <p>The filters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     savings_plan_arns: ["SavingsPlanArn"],
    #     savings_plan_ids: ["SavingsPlanId"],
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     states: ["payment-pending" # One of: ["payment-pending", "payment-failed", "active", "retired", "queued", "queued-deleted", "pending-return", "returned"]],
    #     filters: [
    #       {
    #         name: "region" # One of: ["region", "ec2-instance-family", "commitment", "upfront", "term", "savings-plan-type", "payment-option", "start", "end", "instance-family"],
    #         values: ["String"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_savings_plans(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     savings_plans: [
    #       {
    #         offering_id: "SavingsPlanOfferingId",
    #         savings_plan_id: "SavingsPlanId",
    #         savings_plan_arn: "SavingsPlanArn",
    #         description: "String",
    #         start: "String",
    #         end: "String",
    #         state: "payment-pending" # One of: ["payment-pending", "payment-failed", "active", "retired", "queued", "queued-deleted", "pending-return", "returned"],
    #         region: "Region",
    #         ec2_instance_family: "EC2InstanceFamily",
    #         savings_plan_type: "Compute" # One of: ["Compute", "EC2Instance", "SageMaker", "Database"],
    #         payment_option: "All Upfront" # One of: ["All Upfront", "Partial Upfront", "No Upfront"],
    #         product_types: ["EC2" # One of: ["EC2", "Fargate", "Lambda", "SageMaker", "RDS", "DSQL", "DynamoDB", "ElastiCache", "DocDB", "Neptune", "Timestream", "Keyspaces", "DMS", "OpenSearch"]],
    #         currency: "CNY" # One of: ["CNY", "USD", "EUR"],
    #         commitment: "Amount",
    #         upfront_payment_amount: "Amount",
    #         recurring_payment_amount: "Amount",
    #         term_duration_in_seconds: 1,
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         returnable_until: "String"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::DescribeSavingsPlansResponse]
    def describe_savings_plans(params = {}, options = {})
      request = build_request(:describe_savings_plans, params)
      request.send_request(options)
    end

    # <p>Describes the offering rates for Savings Plans you might want to purchase.</p>
    # @param [Hash, Types::DescribeSavingsPlansOfferingRatesRequest] params
    # @option params [Array<String>] :savings_plan_offering_ids
    #   <p>The IDs of the offerings.</p>
    # @option params [Array<String>] :savings_plan_payment_options
    #   <p>The payment options.</p>
    # @option params [Array<String>] :savings_plan_types
    #   <p>The plan types.</p>
    # @option params [Array<String>] :products
    #   <p>The Amazon Web Services products.</p>
    # @option params [Array<String>] :service_codes
    #   <p>The services.</p>
    # @option params [Array<String>] :usage_types
    #   <p>The usage details of the line item in the billing report.</p>
    # @option params [Array<String>] :operations
    #   <p>The specific Amazon Web Services operation for the line item in the billing
    #            report.</p>
    # @option params [Array<Types::SavingsPlanOfferingRateFilterElement>] :filters
    #   <p>The filters.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call. To retrieve additional
    #            results, make another call with the returned token value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     savings_plan_offering_ids: ["UUID"],
    #     savings_plan_payment_options: ["All Upfront" # One of: ["All Upfront", "Partial Upfront", "No Upfront"]],
    #     savings_plan_types: ["Compute" # One of: ["Compute", "EC2Instance", "SageMaker", "Database"]],
    #     products: ["EC2" # One of: ["EC2", "Fargate", "Lambda", "SageMaker", "RDS", "DSQL", "DynamoDB", "ElastiCache", "DocDB", "Neptune", "Timestream", "Keyspaces", "DMS", "OpenSearch"]],
    #     service_codes: ["AmazonEC2" # One of: ["AmazonEC2", "AmazonECS", "AmazonEKS", "AWSLambda", "AmazonSageMaker", "AmazonRDS", "AuroraDSQL", "AmazonDynamoDB", "AmazonElastiCache", "AmazonDocDB", "AmazonNeptune", "AmazonTimestream", "AmazonMCS", "AWSDatabaseMigrationSvc", "AmazonES"]],
    #     usage_types: ["SavingsPlanRateUsageType"],
    #     operations: ["SavingsPlanRateOperation"],
    #     filters: [
    #       {
    #         name: "region" # One of: ["region", "instanceFamily", "instanceType", "productDescription", "tenancy", "productId"],
    #         values: ["JsonSafeFilterValueString"]
    #       }
    #     ],
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_savings_plans_offering_rates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     search_results: [
    #       {
    #         savings_plan_offering: {
    #           offering_id: "UUID",
    #           payment_option: "All Upfront" # One of: ["All Upfront", "Partial Upfront", "No Upfront"],
    #           plan_type: "Compute" # One of: ["Compute", "EC2Instance", "SageMaker", "Database"],
    #           duration_seconds: 1,
    #           currency: "CNY" # One of: ["CNY", "USD", "EUR"],
    #           plan_description: "SavingsPlanDescription"
    #         },
    #         rate: "SavingsPlanRatePricePerUnit",
    #         unit: "Hrs" # One of: ["Hrs", "Lambda-GB-Second", "Request", "ACU-Hr", "ReadRequestUnits", "WriteRequestUnits", "ReadCapacityUnit-Hrs", "WriteCapacityUnit-Hrs", "ReplicatedWriteRequestUnits", "ReplicatedWriteCapacityUnit-Hrs", "GB-Hours", "DPU", "ElastiCacheProcessingUnit", "DCU-Hr", "NCU-hr", "OCU-hours", "Jobs"],
    #         product_type: "EC2" # One of: ["EC2", "Fargate", "Lambda", "SageMaker", "RDS", "DSQL", "DynamoDB", "ElastiCache", "DocDB", "Neptune", "Timestream", "Keyspaces", "DMS", "OpenSearch"],
    #         service_code: "AmazonEC2" # One of: ["AmazonEC2", "AmazonECS", "AmazonEKS", "AWSLambda", "AmazonSageMaker", "AmazonRDS", "AuroraDSQL", "AmazonDynamoDB", "AmazonElastiCache", "AmazonDocDB", "AmazonNeptune", "AmazonTimestream", "AmazonMCS", "AWSDatabaseMigrationSvc", "AmazonES"],
    #         usage_type: "SavingsPlanRateUsageType",
    #         operation: "SavingsPlanRateOperation",
    #         properties: [
    #           {
    #             name: "JsonSafeFilterValueString",
    #             value: "JsonSafeFilterValueString"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::DescribeSavingsPlansOfferingRatesResponse]
    def describe_savings_plans_offering_rates(params = {}, options = {})
      request = build_request(:describe_savings_plans_offering_rates, params)
      request.send_request(options)
    end

    # <p>Describes the offerings for the specified Savings Plans.</p>
    # @param [Hash, Types::DescribeSavingsPlansOfferingsRequest] params
    # @option params [Array<String>] :offering_ids
    #   <p>The IDs of the offerings.</p>
    # @option params [Array<String>] :payment_options
    #   <p>The payment options.</p>
    # @option params [String] :product_type
    #   <p>The product type.</p>
    # @option params [Array<String>] :plan_types
    #   <p>The plan types.</p>
    # @option params [Array<Integer>] :durations
    #   <p>The duration, in seconds.</p>
    # @option params [Array<String>] :currencies
    #   <p>The currencies.</p>
    # @option params [Array<String>] :descriptions
    #   <p>The descriptions.</p>
    # @option params [Array<String>] :service_codes
    #   <p>The services.</p>
    # @option params [Array<String>] :usage_types
    #   <p>The usage details of the line item in the billing report.</p>
    # @option params [Array<String>] :operations
    #   <p>The specific Amazon Web Services operation for the line item in the billing
    #            report.</p>
    # @option params [Array<Types::SavingsPlanOfferingFilterElement>] :filters
    #   <p>The filters.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call. To retrieve additional
    #            results, make another call with the returned token value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     offering_ids: ["UUID"],
    #     payment_options: ["All Upfront" # One of: ["All Upfront", "Partial Upfront", "No Upfront"]],
    #     product_type: "EC2" # One of: ["EC2", "Fargate", "Lambda", "SageMaker", "RDS", "DSQL", "DynamoDB", "ElastiCache", "DocDB", "Neptune", "Timestream", "Keyspaces", "DMS", "OpenSearch"],
    #     plan_types: ["Compute" # One of: ["Compute", "EC2Instance", "SageMaker", "Database"]],
    #     durations: [1],
    #     currencies: ["CNY" # One of: ["CNY", "USD", "EUR"]],
    #     descriptions: ["SavingsPlanDescription"],
    #     service_codes: ["SavingsPlanServiceCode"],
    #     usage_types: ["SavingsPlanUsageType"],
    #     operations: ["SavingsPlanOperation"],
    #     filters: [
    #       {
    #         name: "region" # One of: ["region", "instanceFamily"],
    #         values: ["JsonSafeFilterValueString"]
    #       }
    #     ],
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_savings_plans_offerings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     search_results: [
    #       {
    #         offering_id: "UUID",
    #         product_types: ["EC2" # One of: ["EC2", "Fargate", "Lambda", "SageMaker", "RDS", "DSQL", "DynamoDB", "ElastiCache", "DocDB", "Neptune", "Timestream", "Keyspaces", "DMS", "OpenSearch"]],
    #         plan_type: "Compute" # One of: ["Compute", "EC2Instance", "SageMaker", "Database"],
    #         description: "SavingsPlanDescription",
    #         payment_option: "All Upfront" # One of: ["All Upfront", "Partial Upfront", "No Upfront"],
    #         duration_seconds: 1,
    #         currency: "CNY" # One of: ["CNY", "USD", "EUR"],
    #         service_code: "SavingsPlanServiceCode",
    #         usage_type: "SavingsPlanUsageType",
    #         operation: "SavingsPlanOperation",
    #         properties: [
    #           {
    #             name: "region" # One of: ["region", "instanceFamily"],
    #             value: "JsonSafeFilterValueString"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::DescribeSavingsPlansOfferingsResponse]
    def describe_savings_plans_offerings(params = {}, options = {})
      request = build_request(:describe_savings_plans_offerings, params)
      request.send_request(options)
    end

    # <p>Lists the tags for the specified resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "SavingsPlanArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Returns the specified Savings Plan.</p>
    # @param [Hash, Types::ReturnSavingsPlanRequest] params
    # @option params [String] :savings_plan_id
    #   <p>The ID of the Savings Plan.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     savings_plan_id: "SavingsPlanId", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.return_savings_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     savings_plan_id: "SavingsPlanId"
    #   }
    # @return [Types::ReturnSavingsPlanResponse]
    def return_savings_plan(params = {}, options = {})
      request = build_request(:return_savings_plan, params)
      request.send_request(options)
    end

    # <p>Adds the specified tags to the specified resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>One or more tags. For example, { "tags": {"key1":"value1", "key2":"value2"} }.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "SavingsPlanArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
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

    # <p>Removes the specified tags from the specified resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "SavingsPlanArn", # required
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
      context[:gem_name] = 'aws-sdk-savingsplans'
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
